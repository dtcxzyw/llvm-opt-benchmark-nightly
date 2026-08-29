Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_small_kernel_nn?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@sgemm_small_kernel_nn:bb.a
  %i.acy = shufflevector <4 x float> %i.acx, <4 x float> poison, <16 x i32> zeroinitializer
  %i.acz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.acv, <16 x float> %i.acy, <16 x float> %i.acs) ; 3 uses
  %i.ada = add nuw nsw i64 %.828983396.us, 8      ; 2 uses
  %niter4548.next.7 = add nuw nsw i64 %niter4548, 8 ; 2 uses
  %niter4548.ncmp.7 = icmp eq i64 %niter4548.next.7, %unroll_iter4547
  br i1 %niter4548.ncmp.7, label %._crit_edge3398.us.unr-lcssa, label %.preheader3158.us.new, !llvm.loop !82

._crit_edge3398.us.unr-lcssa:                     ; preds = %.preheader3158.us.new
  br i1 %lcmp.mod4544.not, label %._crit_edge3398.us, label %.epil.preheader4541

.epil.preheader4541:                              ; preds = %._crit_edge3398.us.unr-lcssa, %.preheader3158.us
  %.828983396.us.epil.init = phi i64 [ 0, %.preheader3158.us ], [ %i.ada, %._crit_edge3398.us.unr-lcssa ]
  %.029913395.us.epil.init = phi <16 x float> [ zeroinitializer, %.preheader3158.us ], [ %i.acz, %._crit_edge3398.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4546)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader4541
  %.828983396.us.epil = phi i64 [ %.828983396.us.epil.init, %.epil.preheader4541 ], [ %i.adh, %bb.g ] ; 3 uses
  %.029913395.us.epil = phi <16 x float> [ %.029913395.us.epil.init, %.epil.preheader4541 ], [ %i.adg, %bb.g ]
  %epil.iter4543 = phi i64 [ 0, %.epil.preheader4541 ], [ %epil.iter4543.next, %bb.g ]
  %i.adb = mul nsw i64 %.828983396.us.epil, %4
  %gep3394.us.epil = getelementptr [4 x i8], ptr %invariant.gep3393, i64 %i.adb
  %i.adc = load <16 x float>, ptr %gep3394.us.epil, align 1, !tbaa !8
  %gep3401.us.epil = getelementptr [4 x i8], ptr %invariant.gep3400.us, i64 %.828983396.us.epil
  %i.add = load float, ptr %gep3401.us.epil, align 1, !tbaa !8
  %i.ade = insertelement <4 x float> poison, float %i.add, i64 0
  %i.adf = shufflevector <4 x float> %i.ade, <4 x float> poison, <16 x i32> zeroinitializer
  %i.adg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.adc, <16 x float> %i.adf, <16 x float> %.029913395.us.epil) ; 2 uses
  %i.adh = add nuw nsw i64 %.828983396.us.epil, 1
  %epil.iter4543.next = add i64 %epil.iter4543, 1 ; 2 uses
  %epil.iter4543.cmp.not = icmp eq i64 %epil.iter4543.next, %xtraiter4542
  br i1 %epil.iter4543.cmp.not, label %._crit_edge3398.us, label %bb.g, !llvm.loop !83

._crit_edge3398.us:                               ; preds = %bb.g, %._crit_edge3398.us.unr-lcssa
  %.lcssa4426 = phi <16 x float> [ %i.acz, %._crit_edge3398.us.unr-lcssa ], [ %i.adg, %bb.g ]
  %i.adi = fmul <16 x float> %i.k, %.lcssa4426
  %i.adj = mul nsw i64 %.83404.us, %10
  %gep3403.us = getelementptr [4 x i8], ptr %invariant.gep3364, i64 %i.adj ; 2 uses
  %i.adk = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3403.us, <16 x float> %i.m, <16 x float> %i.adi) #9, !srcloc !84
  store <16 x float> %i.adk, ptr %gep3403.us, align 1, !tbaa !8
  %i.adl = add i64 %.83404.us, 1                  ; 2 uses
  %exitcond3848.not = icmp eq i64 %i.adl, %1
  br i1 %exitcond3848.not, label %._crit_edge3405, label %.preheader3158.us, !llvm.loop !85

.preheader3159:                                   ; preds = %.preheader3159.lr.ph, %._crit_edge3384
  %.73391 = phi i64 [ %.6.lcssa, %.preheader3159.lr.ph ], [ %i.agl, %._crit_edge3384 ] ; 5 uses
  br i1 %i.ls, label %.lr.ph3383, label %.preheader3159.._crit_edge3384_crit_edge

.preheader3159.._crit_edge3384_crit_edge:         ; preds = %.preheader3159
  %.pre3913 = add nuw nsw i64 %.73391, 1
  br label %._crit_edge3384

.lr.ph3383:                                       ; preds = %.preheader3159
  %i.adm = mul nsw i64 %.73391, %7                ; 5 uses
  %i.adn = add nuw nsw i64 %.73391, 1             ; 2 uses
  %i.ado = mul nsw i64 %i.adn, %7                 ; 5 uses
  br i1 %i.lw, label %.epil.preheader4532, label %.lr.ph3383.new

.lr.ph3383.new:                                   ; preds = %.lr.ph3383, %.lr.ph3383.new
  %.728973382 = phi i64 [ %i.afs, %.lr.ph3383.new ], [ 0, %.lr.ph3383 ] ; 6 uses
  %.029893381 = phi <16 x float> [ %i.afq, %.lr.ph3383.new ], [ zeroinitializer, %.lr.ph3383 ]
  %.029903380 = phi <16 x float> [ %i.afr, %.lr.ph3383.new ], [ zeroinitializer, %.lr.ph3383 ]
  %niter4540 = phi i64 [ %niter4540.next.3, %.lr.ph3383.new ], [ 0, %.lr.ph3383 ]
  %i.adp = mul nsw i64 %.728973382, %4
  %gep3379 = getelementptr [4 x i8], ptr %invariant.gep3378, i64 %i.adp
  %i.adq = load <16 x float>, ptr %gep3379, align 1, !tbaa !8 ; 2 uses
  %i.adr = getelementptr [4 x i8], ptr %6, i64 %.728973382 ; 2 uses
  %i.ads = getelementptr [4 x i8], ptr %i.adr, i64 %i.adm
  %i.adt = load float, ptr %i.ads, align 1, !tbaa !8
  %i.adu = insertelement <4 x float> poison, float %i.adt, i64 0
  %i.adv = shufflevector <4 x float> %i.adu, <4 x float> poison, <16 x i32> zeroinitializer
  %i.adw = getelementptr [4 x i8], ptr %i.adr, i64 %i.ado
  %i.adx = load float, ptr %i.adw, align 1, !tbaa !8
  %i.ady = insertelement <4 x float> poison, float %i.adx, i64 0
  %i.adz = shufflevector <4 x float> %i.ady, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aea = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.adq, <16 x float> %i.adv, <16 x float> %.029893381)
  %i.aeb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.adq, <16 x float> %i.adz, <16 x float> %.029903380)
  %i.aec = or disjoint i64 %.728973382, 1         ; 2 uses
  %i.aed = mul nsw i64 %i.aec, %4
  %gep3379.1 = getelementptr [4 x i8], ptr %invariant.gep3378, i64 %i.aed
  %i.aee = load <16 x float>, ptr %gep3379.1, align 1, !tbaa !8 ; 2 uses
  %i.aef = getelementptr [4 x i8], ptr %6, i64 %i.aec ; 2 uses
  %i.aeg = getelementptr [4 x i8], ptr %i.aef, i64 %i.adm
  %i.aeh = load float, ptr %i.aeg, align 1, !tbaa !8
  %i.aei = insertelement <4 x float> poison, float %i.aeh, i64 0
  %i.aej = shufflevector <4 x float> %i.aei, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aek = getelementptr [4 x i8], ptr %i.aef, i64 %i.ado
  %i.ael = load float, ptr %i.aek, align 1, !tbaa !8
  %i.aem = insertelement <4 x float> poison, float %i.ael, i64 0
  %i.aen = shufflevector <4 x float> %i.aem, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aeo = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aee, <16 x float> %i.aej, <16 x float> %i.aea)
  %i.aep = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aee, <16 x float> %i.aen, <16 x float> %i.aeb)
  %i.aeq = or disjoint i64 %.728973382, 2         ; 2 uses
  %i.aer = mul nsw i64 %i.aeq, %4
  %gep3379.2 = getelementptr [4 x i8], ptr %invariant.gep3378, i64 %i.aer
  %i.aes = load <16 x float>, ptr %gep3379.2, align 1, !tbaa !8 ; 2 uses
  %i.aet = getelementptr [4 x i8], ptr %6, i64 %i.aeq ; 2 uses
  %i.aeu = getelementptr [4 x i8], ptr %i.aet, i64 %i.adm
  %i.aev = load float, ptr %i.aeu, align 1, !tbaa !8
  %i.aew = insertelement <4 x float> poison, float %i.aev, i64 0
  %i.aex = shufflevector <4 x float> %i.aew, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aey = getelementptr [4 x i8], ptr %i.aet, i64 %i.ado
  %i.aez = load float, ptr %i.aey, align 1, !tbaa !8
  %i.afa = insertelement <4 x float> poison, float %i.aez, i64 0
  %i.afb = shufflevector <4 x float> %i.afa, <4 x float> poison, <16 x i32> zeroinitializer
  %i.afc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aes, <16 x float> %i.aex, <16 x float> %i.aeo)
  %i.afd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aes, <16 x float> %i.afb, <16 x float> %i.aep)
  %i.afe = or disjoint i64 %.728973382, 3         ; 2 uses
  %i.aff = mul nsw i64 %i.afe, %4
  %gep3379.3 = getelementptr [4 x i8], ptr %invariant.gep3378, i64 %i.aff
  %i.afg = load <16 x float>, ptr %gep3379.3, align 1, !tbaa !8 ; 2 uses
  %i.afh = getelementptr [4 x i8], ptr %6, i64 %i.afe ; 2 uses
  %i.afi = getelementptr [4 x i8], ptr %i.afh, i64 %i.adm
  %i.afj = load float, ptr %i.afi, align 1, !tbaa !8
  %i.afk = insertelement <4 x float> poison, float %i.afj, i64 0
  %i.afl = shufflevector <4 x float> %i.afk, <4 x float> poison, <16 x i32> zeroinitializer
  %i.afm = getelementptr [4 x i8], ptr %i.afh, i64 %i.ado
  %i.afn = load float, ptr %i.afm, align 1, !tbaa !8
  %i.afo = insertelement <4 x float> poison, float %i.afn, i64 0
  %i.afp = shufflevector <4 x float> %i.afo, <4 x float> poison, <16 x i32> zeroinitializer
  %i.afq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.afg, <16 x float> %i.afl, <16 x float> %i.afc) ; 3 uses
  %i.afr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.afg, <16 x float> %i.afp, <16 x float> %i.afd) ; 3 uses
  %i.afs = add nuw nsw i64 %.728973382, 4         ; 2 uses
  %niter4540.next.3 = add nuw nsw i64 %niter4540, 4 ; 2 uses
  %niter4540.ncmp.3 = icmp eq i64 %niter4540.next.3, %unroll_iter4539
  br i1 %niter4540.ncmp.3, label %._crit_edge3384.loopexit.unr-lcssa, label %.lr.ph3383.new, !llvm.loop !86

._crit_edge3384.loopexit.unr-lcssa:               ; preds = %.lr.ph3383.new
  br i1 %lcmp.mod4535.not, label %._crit_edge3384.loopexit, label %.epil.preheader4532

.epil.preheader4532:                              ; preds = %._crit_edge3384.loopexit.unr-lcssa, %.lr.ph3383
  %.728973382.epil.init = phi i64 [ 0, %.lr.ph3383 ], [ %i.afs, %._crit_edge3384.loopexit.unr-lcssa ]
  %.029893381.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3383 ], [ %i.afq, %._crit_edge3384.loopexit.unr-lcssa ]
  %.029903380.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3383 ], [ %i.afr, %._crit_edge3384.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4538)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader4532
  %.728973382.epil = phi i64 [ %.728973382.epil.init, %.epil.preheader4532 ], [ %i.agg, %bb.h ] ; 3 uses
  %.029893381.epil = phi <16 x float> [ %.029893381.epil.init, %.epil.preheader4532 ], [ %i.age, %bb.h ]
  %.029903380.epil = phi <16 x float> [ %.029903380.epil.init, %.epil.preheader4532 ], [ %i.agf, %bb.h ]
  %epil.iter4534 = phi i64 [ 0, %.epil.preheader4532 ], [ %epil.iter4534.next, %bb.h ]
  %i.aft = mul nsw i64 %.728973382.epil, %4
  %gep3379.epil = getelementptr [4 x i8], ptr %invariant.gep3378, i64 %i.aft
  %i.afu = load <16 x float>, ptr %gep3379.epil, align 1, !tbaa !8 ; 2 uses
  %i.afv = getelementptr [4 x i8], ptr %6, i64 %.728973382.epil ; 2 uses
  %i.afw = getelementptr [4 x i8], ptr %i.afv, i64 %i.adm
  %i.afx = load float, ptr %i.afw, align 1, !tbaa !8
  %i.afy = insertelement <4 x float> poison, float %i.afx, i64 0
  %i.afz = shufflevector <4 x float> %i.afy, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aga = getelementptr [4 x i8], ptr %i.afv, i64 %i.ado
  %i.agb = load float, ptr %i.aga, align 1, !tbaa !8
  %i.agc = insertelement <4 x float> poison, float %i.agb, i64 0
  %i.agd = shufflevector <4 x float> %i.agc, <4 x float> poison, <16 x i32> zeroinitializer
  %i.age = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.afu, <16 x float> %i.afz, <16 x float> %.029893381.epil) ; 2 uses
  %i.agf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.afu, <16 x float> %i.agd, <16 x float> %.029903380.epil) ; 2 uses
  %i.agg = add nuw nsw i64 %.728973382.epil, 1
  %epil.iter4534.next = add i64 %epil.iter4534, 1 ; 2 uses
  %epil.iter4534.cmp.not = icmp eq i64 %epil.iter4534.next, %xtraiter4533
  br i1 %epil.iter4534.cmp.not, label %._crit_edge3384.loopexit, label %bb.h, !llvm.loop !87

._crit_edge3384.loopexit:                         ; preds = %bb.h, %._crit_edge3384.loopexit.unr-lcssa
  %.lcssa4424 = phi <16 x float> [ %i.afq, %._crit_edge3384.loopexit.unr-lcssa ], [ %i.age, %bb.h ]
  %.lcssa4423 = phi <16 x float> [ %i.afr, %._crit_edge3384.loopexit.unr-lcssa ], [ %i.agf, %bb.h ]
  %.pre3879 = fmul <16 x float> %i.k, %.lcssa4424
  %.pre3881 = fmul <16 x float> %i.k, %.lcssa4423
  br label %._crit_edge3384

._crit_edge3384:                                  ; preds = %.preheader3159.._crit_edge3384_crit_edge, %._crit_edge3384.loopexit
  %.pre-phi3914 = phi i64 [ %.pre3913, %.preheader3159.._crit_edge3384_crit_edge ], [ %i.adn, %._crit_edge3384.loopexit ]
  %.pre-phi3882 = phi <16 x float> [ %i.lt, %.preheader3159.._crit_edge3384_crit_edge ], [ %.pre3881, %._crit_edge3384.loopexit ]
  %.pre-phi3880 = phi <16 x float> [ %i.lt, %.preheader3159.._crit_edge3384_crit_edge ], [ %.pre3879, %._crit_edge3384.loopexit ]
  %i.agh = mul nsw i64 %.73391, %10
  %gep3388 = getelementptr [4 x i8], ptr %invariant.gep3364, i64 %i.agh ; 2 uses
  %i.agi = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3388, <16 x float> %i.m, <16 x float> %.pre-phi3880) #9, !srcloc !88
  store <16 x float> %i.agi, ptr %gep3388, align 1, !tbaa !8
  %i.agj = mul nsw i64 %.pre-phi3914, %10
  %gep3390 = getelementptr [4 x i8], ptr %invariant.gep3364, i64 %i.agj ; 2 uses
  %i.agk = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3390, <16 x float> %i.m, <16 x float> %.pre-phi3882) #9, !srcloc !89
  store <16 x float> %i.agk, ptr %gep3390, align 1, !tbaa !8
  %i.agl = add nuw nsw i64 %.73391, 2             ; 3 uses
  %i.agm = icmp slt i64 %i.agl, %i.i
  br i1 %i.agm, label %.preheader3159, label %.preheader3161, !llvm.loop !90

.preheader3158:                                   ; preds = %.preheader3158.lr.ph, %.preheader3158
  %.83404 = phi i64 [ %i.agp, %.preheader3158 ], [ %.7.lcssa, %.preheader3158.lr.ph ] ; 2 uses
  %i.agn = mul nsw i64 %.83404, %10
  %gep3403 = getelementptr [4 x i8], ptr %invariant.gep3364, i64 %i.agn ; 2 uses
  %i.ago = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3403, <16 x float> %i.m, <16 x float> %i.lt) #9, !srcloc !84
  store <16 x float> %i.ago, ptr %gep3403, align 1, !tbaa !8
  %i.agp = add i64 %.83404, 1                     ; 2 uses
  %exitcond3846.not = icmp eq i64 %i.agp, %1
  br i1 %exitcond3846.not, label %._crit_edge3405, label %.preheader3158, !llvm.loop !85

._crit_edge3405:                                  ; preds = %.preheader3158, %._crit_edge3398.us, %.preheader3161
  %i.agq = add nuw nsw i64 %.23406, 16            ; 3 uses
  %i.agr = icmp slt i64 %i.agq, %i.c
  br i1 %i.agr, label %.preheader3163, label %._crit_edge3407, !llvm.loop !91

._crit_edge3407:                                  ; preds = %._crit_edge3405, %.preheader3164
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader3164 ], [ %i.agq, %._crit_edge3405 ] ; 10 uses
  %i.ags = sub nsw i64 %0, %.2.lcssa              ; 7 uses
  %i.agt = trunc i64 %i.ags to i32                ; 4 uses
  %.not = icmp eq i32 %i.agt, 0
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %._crit_edge3407
  %i.agu = icmp sgt i32 %i.agt, 8
  %i.agv = icmp slt i64 %2, 32
  %or.cond = or i1 %i.agv, %i.agu
  br i1 %or.cond, label %bb.j, label %.lr.ph3413

bb.j:                                             ; preds = %bb.i
  %i.agw = and i64 %i.ags, 4294967295
  %notmask3110 = shl nsw i64 -1, %i.agw
  %i.agx = trunc i64 %notmask3110 to i16
  %i.agy = xor i16 %i.agx, -1                     ; 12 uses
  %invariant.gep3642 = getelementptr [4 x i8], ptr %9, i64 %.2.lcssa ; 9 uses
  %i.agz = icmp sgt i64 %i.g, 0
  br i1 %i.agz, label %.preheader3135.lr.ph, label %.preheader3134

.preheader3135.lr.ph:                             ; preds = %bb.j
  %invariant.gep3625 = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa ; 3 uses
  %i.aha = icmp sgt i64 %2, 0
  %i.ahb = bitcast i16 %i.agy to <16 x i1>        ; 9 uses
  %xtraiter4557 = and i64 %2, 1
  %i.ahc = icmp eq i64 %2, 1
  %unroll_iter4567 = and i64 %2, 9223372036854775806
  %lcmp.mod4559.not = icmp eq i64 %xtraiter4557, 0
  %lcmp.mod4566 = trunc i64 %2 to i1
  br label %.preheader3135

.preheader3135:                                   ; preds = %.preheader3135.lr.ph, %._crit_edge3635
  %.93654 = phi i64 [ 0, %.preheader3135.lr.ph ], [ %i.ami, %._crit_edge3635 ] ; 13 uses
  br i1 %i.aha, label %.lr.ph3634, label %.preheader3135.._crit_edge3635_crit_edge

.preheader3135.._crit_edge3635_crit_edge:         ; preds = %.preheader3135
  %.pre3915 = or disjoint i64 %.93654, 1
  %.pre3917 = add nuw nsw i64 %.93654, 2
  %.pre3919 = add nuw nsw i64 %.93654, 3
  %.pre3921 = add nuw nsw i64 %.93654, 4
  %.pre3923 = add nuw nsw i64 %.93654, 5
  br label %._crit_edge3635

.lr.ph3634:                                       ; preds = %.preheader3135
  %i.ahd = mul nsw i64 %.93654, %7                ; 3 uses
  %i.ahe = or disjoint i64 %.93654, 1             ; 3 uses
  %i.ahf = mul nsw i64 %i.ahe, %7                 ; 3 uses
  %i.ahg = add nuw nsw i64 %.93654, 2             ; 3 uses
  %i.ahh = mul nsw i64 %i.ahg, %7                 ; 3 uses
  %i.ahi = add nuw nsw i64 %.93654, 3             ; 3 uses
  %i.ahj = mul nsw i64 %i.ahi, %7                 ; 3 uses
  %i.ahk = add nuw nsw i64 %.93654, 4             ; 3 uses
  %i.ahl = mul nsw i64 %i.ahk, %7                 ; 3 uses
  %i.ahm = add nuw nsw i64 %.93654, 5             ; 3 uses
  %i.ahn = mul nsw i64 %i.ahm, %7                 ; 3 uses
  br i1 %i.ahc, label %.epil.preheader4556, label %.lr.ph3634.new

.preheader3134:                                   ; preds = %._crit_edge3635, %bb.j
  %.9.lcssa = phi i64 [ 0, %bb.j ], [ %i.ami, %._crit_edge3635 ] ; 3 uses
  %i.aho = icmp slt i64 %.9.lcssa, %i.i
  br i1 %i.aho, label %.preheader3133.lr.ph, label %.preheader3132

.preheader3133.lr.ph:                             ; preds = %.preheader3134
  %invariant.gep3656 = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa ; 5 uses
  %i.ahp = icmp sgt i64 %2, 0
  %i.ahq = bitcast i16 %i.agy to <16 x i1>        ; 7 uses
  %i.ahr = add i64 %2, -1
  %xtraiter4570 = and i64 %2, 3                   ; 3 uses
  %i.ahs = icmp ult i64 %i.ahr, 3
  %unroll_iter4576 = and i64 %2, 9223372036854775804
  %lcmp.mod4572.not = icmp eq i64 %xtraiter4570, 0
  %lcmp.mod4575 = icmp ne i64 %xtraiter4570, 0
  br label %.preheader3133

.lr.ph3634.new:                                   ; preds = %.lr.ph3634, %.lr.ph3634.new
  %.928993633 = phi i64 [ %i.aki, %.lr.ph3634.new ], [ 0, %.lr.ph3634 ] ; 4 uses
  %.029923632 = phi <16 x float> [ %i.akc, %.lr.ph3634.new ], [ zeroinitializer, %.lr.ph3634 ]
  %.029933631 = phi <16 x float> [ %i.akd, %.lr.ph3634.new ], [ zeroinitializer, %.lr.ph3634 ]
  %.029943630 = phi <16 x float> [ %i.ake, %.lr.ph3634.new ], [ zeroinitializer, %.lr.ph3634 ]
  %.029953629 = phi <16 x float> [ %i.akf, %.lr.ph3634.new ], [ zeroinitializer, %.lr.ph3634 ]
  %.029963628 = phi <16 x float> [ %i.akg, %.lr.ph3634.new ], [ zeroinitializer, %.lr.ph3634 ]
  %.029973627 = phi <16 x float> [ %i.akh, %.lr.ph3634.new ], [ zeroinitializer, %.lr.ph3634 ]
  %niter4568 = phi i64 [ %niter4568.next.1, %.lr.ph3634.new ], [ 0, %.lr.ph3634 ]
  %i.aht = mul nsw i64 %.928993633, %4
  %gep3626 = getelementptr [4 x i8], ptr %invariant.gep3625, i64 %i.aht
  %i.ahu = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3626, <16 x i1> %i.ahb, <16 x float> zeroinitializer) ; 6 uses
  %i.ahv = getelementptr [4 x i8], ptr %6, i64 %.928993633 ; 6 uses
  %i.ahw = getelementptr [4 x i8], ptr %i.ahv, i64 %i.ahd
  %i.ahx = load float, ptr %i.ahw, align 1, !tbaa !8
  %i.ahy = insertelement <4 x float> poison, float %i.ahx, i64 0
  %i.ahz = shufflevector <4 x float> %i.ahy, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aia = getelementptr [4 x i8], ptr %i.ahv, i64 %i.ahf
  %i.aib = load float, ptr %i.aia, align 1, !tbaa !8
  %i.aic = insertelement <4 x float> poison, float %i.aib, i64 0
  %i.aid = shufflevector <4 x float> %i.aic, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aie = getelementptr [4 x i8], ptr %i.ahv, i64 %i.ahh
  %i.aif = load float, ptr %i.aie, align 1, !tbaa !8
  %i.aig = insertelement <4 x float> poison, float %i.aif, i64 0
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aii = getelementptr [4 x i8], ptr %i.ahv, i64 %i.ahj
  %i.aij = load float, ptr %i.aii, align 1, !tbaa !8
  %i.aik = insertelement <4 x float> poison, float %i.aij, i64 0
  %i.ail = shufflevector <4 x float> %i.aik, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aim = getelementptr [4 x i8], ptr %i.ahv, i64 %i.ahl
  %i.ain = load float, ptr %i.aim, align 1, !tbaa !8
  %i.aio = insertelement <4 x float> poison, float %i.ain, i64 0
  %i.aip = shufflevector <4 x float> %i.aio, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aiq = getelementptr [4 x i8], ptr %i.ahv, i64 %i.ahn
  %i.air = load float, ptr %i.aiq, align 1, !tbaa !8
  %i.ais = insertelement <4 x float> poison, float %i.air, i64 0
  %i.ait = shufflevector <4 x float> %i.ais, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aiu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahu, <16 x float> %i.ahz, <16 x float> %.029923632)
  %i.aiv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahu, <16 x float> %i.aid, <16 x float> %.029933631)
  %i.aiw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahu, <16 x float> %i.aih, <16 x float> %.029943630)
  %i.aix = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahu, <16 x float> %i.ail, <16 x float> %.029953629)
  %i.aiy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahu, <16 x float> %i.aip, <16 x float> %.029963628)
  %i.aiz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahu, <16 x float> %i.ait, <16 x float> %.029973627)
  %i.aja = or disjoint i64 %.928993633, 1         ; 2 uses
  %i.ajb = mul nsw i64 %i.aja, %4
  %gep3626.1 = getelementptr [4 x i8], ptr %invariant.gep3625, i64 %i.ajb
  %i.ajc = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3626.1, <16 x i1> %i.ahb, <16 x float> zeroinitializer) ; 6 uses
  %i.ajd = getelementptr [4 x i8], ptr %6, i64 %i.aja ; 6 uses
  %i.aje = getelementptr [4 x i8], ptr %i.ajd, i64 %i.ahd
  %i.ajf = load float, ptr %i.aje, align 1, !tbaa !8
  %i.ajg = insertelement <4 x float> poison, float %i.ajf, i64 0
  %i.ajh = shufflevector <4 x float> %i.ajg, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aji = getelementptr [4 x i8], ptr %i.ajd, i64 %i.ahf
  %i.ajj = load float, ptr %i.aji, align 1, !tbaa !8
  %i.ajk = insertelement <4 x float> poison, float %i.ajj, i64 0
  %i.ajl = shufflevector <4 x float> %i.ajk, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ajm = getelementptr [4 x i8], ptr %i.ajd, i64 %i.ahh
  %i.ajn = load float, ptr %i.ajm, align 1, !tbaa !8
  %i.ajo = insertelement <4 x float> poison, float %i.ajn, i64 0
  %i.ajp = shufflevector <4 x float> %i.ajo, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ajq = getelementptr [4 x i8], ptr %i.ajd, i64 %i.ahj
  %i.ajr = load float, ptr %i.ajq, align 1, !tbaa !8
  %i.ajs = insertelement <4 x float> poison, float %i.ajr, i64 0
  %i.ajt = shufflevector <4 x float> %i.ajs, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aju = getelementptr [4 x i8], ptr %i.ajd, i64 %i.ahl
  %i.ajv = load float, ptr %i.aju, align 1, !tbaa !8
  %i.ajw = insertelement <4 x float> poison, float %i.ajv, i64 0
  %i.ajx = shufflevector <4 x float> %i.ajw, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ajy = getelementptr [4 x i8], ptr %i.ajd, i64 %i.ahn
  %i.ajz = load float, ptr %i.ajy, align 1, !tbaa !8
  %i.aka = insertelement <4 x float> poison, float %i.ajz, i64 0
  %i.akb = shufflevector <4 x float> %i.aka, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajc, <16 x float> %i.ajh, <16 x float> %i.aiu) ; 3 uses
  %i.akd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajc, <16 x float> %i.ajl, <16 x float> %i.aiv) ; 3 uses
  %i.ake = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajc, <16 x float> %i.ajp, <16 x float> %i.aiw) ; 3 uses
  %i.akf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajc, <16 x float> %i.ajt, <16 x float> %i.aix) ; 3 uses
  %i.akg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajc, <16 x float> %i.ajx, <16 x float> %i.aiy) ; 3 uses
  %i.akh = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajc, <16 x float> %i.akb, <16 x float> %i.aiz) ; 3 uses
  %i.aki = add nuw nsw i64 %.928993633, 2         ; 2 uses
  %niter4568.next.1 = add nuw nsw i64 %niter4568, 2 ; 2 uses
  %niter4568.ncmp.1 = icmp eq i64 %niter4568.next.1, %unroll_iter4567
  br i1 %niter4568.ncmp.1, label %._crit_edge3635.loopexit.unr-lcssa, label %.lr.ph3634.new, !llvm.loop !92

._crit_edge3635.loopexit.unr-lcssa:               ; preds = %.lr.ph3634.new
  br i1 %lcmp.mod4559.not, label %._crit_edge3635, label %.epil.preheader4556

.epil.preheader4556:                              ; preds = %._crit_edge3635.loopexit.unr-lcssa, %.lr.ph3634
  %.928993633.epil.init = phi i64 [ 0, %.lr.ph3634 ], [ %i.aki, %._crit_edge3635.loopexit.unr-lcssa ] ; 2 uses
  %.029923632.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3634 ], [ %i.akc, %._crit_edge3635.loopexit.unr-lcssa ]
  %.029933631.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3634 ], [ %i.akd, %._crit_edge3635.loopexit.unr-lcssa ]
  %.029943630.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3634 ], [ %i.ake, %._crit_edge3635.loopexit.unr-lcssa ]
  %.029953629.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3634 ], [ %i.akf, %._crit_edge3635.loopexit.unr-lcssa ]
  %.029963628.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3634 ], [ %i.akg, %._crit_edge3635.loopexit.unr-lcssa ]
  %.029973627.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3634 ], [ %i.akh, %._crit_edge3635.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4566)
  %i.akj = mul nsw i64 %.928993633.epil.init, %4
  %gep3626.epil = getelementptr [4 x i8], ptr %invariant.gep3625, i64 %i.akj
  %i.akk = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3626.epil, <16 x i1> %i.ahb, <16 x float> zeroinitializer) ; 6 uses
  %i.akl = getelementptr [4 x i8], ptr %6, i64 %.928993633.epil.init ; 6 uses
  %i.akm = getelementptr [4 x i8], ptr %i.akl, i64 %i.ahd
  %i.akn = load float, ptr %i.akm, align 1, !tbaa !8
  %i.ako = insertelement <4 x float> poison, float %i.akn, i64 0
  %i.akp = shufflevector <4 x float> %i.ako, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akq = getelementptr [4 x i8], ptr %i.akl, i64 %i.ahf
  %i.akr = load float, ptr %i.akq, align 1, !tbaa !8
  %i.aks = insertelement <4 x float> poison, float %i.akr, i64 0
  %i.akt = shufflevector <4 x float> %i.aks, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aku = getelementptr [4 x i8], ptr %i.akl, i64 %i.ahh
  %i.akv = load float, ptr %i.aku, align 1, !tbaa !8
  %i.akw = insertelement <4 x float> poison, float %i.akv, i64 0
  %i.akx = shufflevector <4 x float> %i.akw, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aky = getelementptr [4 x i8], ptr %i.akl, i64 %i.ahj
  %i.akz = load float, ptr %i.aky, align 1, !tbaa !8
  %i.ala = insertelement <4 x float> poison, float %i.akz, i64 0
  %i.alb = shufflevector <4 x float> %i.ala, <4 x float> poison, <16 x i32> zeroinitializer
  %i.alc = getelementptr [4 x i8], ptr %i.akl, i64 %i.ahl
  %i.ald = load float, ptr %i.alc, align 1, !tbaa !8
  %i.ale = insertelement <4 x float> poison, float %i.ald, i64 0
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> poison, <16 x i32> zeroinitializer
  %i.alg = getelementptr [4 x i8], ptr %i.akl, i64 %i.ahn
  %i.alh = load float, ptr %i.alg, align 1, !tbaa !8
  %i.ali = insertelement <4 x float> poison, float %i.alh, i64 0
  %i.alj = shufflevector <4 x float> %i.ali, <4 x float> poison, <16 x i32> zeroinitializer
  %i.alk = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.akk, <16 x float> %i.akp, <16 x float> %.029923632.epil.init)
  %i.all = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.akk, <16 x float> %i.akt, <16 x float> %.029933631.epil.init)
  %i.alm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.akk, <16 x float> %i.akx, <16 x float> %.029943630.epil.init)
end_hunk_0
begin_hunk_1_@sgemm_small_kernel_nn:bb.a
  %i.aoj = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3657.3, <16 x i1> %i.ahq, <16 x float> zeroinitializer) ; 2 uses
  %i.aok = getelementptr [4 x i8], ptr %6, i64 %i.aoh ; 2 uses
  %i.aol = getelementptr [4 x i8], ptr %i.aok, i64 %i.amk
  %i.aom = load float, ptr %i.aol, align 1, !tbaa !8
  %i.aon = insertelement <4 x float> poison, float %i.aom, i64 0
  %i.aoo = shufflevector <4 x float> %i.aon, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aop = getelementptr [4 x i8], ptr %i.aok, i64 %i.amm
  %i.aoq = load float, ptr %i.aop, align 1, !tbaa !8
  %i.aor = insertelement <4 x float> poison, float %i.aoq, i64 0
  %i.aos = shufflevector <4 x float> %i.aor, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aot = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoj, <16 x float> %i.aoo, <16 x float> %i.aof) ; 3 uses
  %i.aou = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoj, <16 x float> %i.aos, <16 x float> %i.aog) ; 3 uses
  %i.aov = add nuw nsw i64 %.1029003660, 4        ; 2 uses
  %niter4577.next.3 = add nuw nsw i64 %niter4577, 4 ; 2 uses
  %niter4577.ncmp.3 = icmp eq i64 %niter4577.next.3, %unroll_iter4576
  br i1 %niter4577.ncmp.3, label %._crit_edge3662.loopexit.unr-lcssa, label %.lr.ph3661.new, !llvm.loop !100

._crit_edge3662.loopexit.unr-lcssa:               ; preds = %.lr.ph3661.new
  br i1 %lcmp.mod4572.not, label %._crit_edge3662, label %.epil.preheader4569

.epil.preheader4569:                              ; preds = %._crit_edge3662.loopexit.unr-lcssa, %.lr.ph3661
  %.1029003660.epil.init = phi i64 [ 0, %.lr.ph3661 ], [ %i.aov, %._crit_edge3662.loopexit.unr-lcssa ]
  %.029983659.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3661 ], [ %i.aot, %._crit_edge3662.loopexit.unr-lcssa ]
  %.029993658.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3661 ], [ %i.aou, %._crit_edge3662.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4575)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader4569
  %.1029003660.epil = phi i64 [ %.1029003660.epil.init, %.epil.preheader4569 ], [ %i.apj, %bb.k ] ; 3 uses
  %.029983659.epil = phi <16 x float> [ %.029983659.epil.init, %.epil.preheader4569 ], [ %i.aph, %bb.k ]
  %.029993658.epil = phi <16 x float> [ %.029993658.epil.init, %.epil.preheader4569 ], [ %i.api, %bb.k ]
  %epil.iter4571 = phi i64 [ 0, %.epil.preheader4569 ], [ %epil.iter4571.next, %bb.k ]
  %i.aow = mul nsw i64 %.1029003660.epil, %4
  %gep3657.epil = getelementptr [4 x i8], ptr %invariant.gep3656, i64 %i.aow
  %i.aox = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3657.epil, <16 x i1> %i.ahq, <16 x float> zeroinitializer) ; 2 uses
  %i.aoy = getelementptr [4 x i8], ptr %6, i64 %.1029003660.epil ; 2 uses
  %i.aoz = getelementptr [4 x i8], ptr %i.aoy, i64 %i.amk
  %i.apa = load float, ptr %i.aoz, align 1, !tbaa !8
  %i.apb = insertelement <4 x float> poison, float %i.apa, i64 0
  %i.apc = shufflevector <4 x float> %i.apb, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apd = getelementptr [4 x i8], ptr %i.aoy, i64 %i.amm
  %i.ape = load float, ptr %i.apd, align 1, !tbaa !8
  %i.apf = insertelement <4 x float> poison, float %i.ape, i64 0
  %i.apg = shufflevector <4 x float> %i.apf, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aph = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.apc, <16 x float> %.029983659.epil) ; 2 uses
  %i.api = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.apg, <16 x float> %.029993658.epil) ; 2 uses
  %i.apj = add nuw nsw i64 %.1029003660.epil, 1
  %epil.iter4571.next = add i64 %epil.iter4571, 1 ; 2 uses
  %epil.iter4571.cmp.not = icmp eq i64 %epil.iter4571.next, %xtraiter4570
  br i1 %epil.iter4571.cmp.not, label %._crit_edge3662, label %bb.k, !llvm.loop !101

._crit_edge3662:                                  ; preds = %._crit_edge3662.loopexit.unr-lcssa, %bb.k, %.preheader3133.._crit_edge3662_crit_edge
  %.pre-phi3926 = phi i64 [ %.pre3925, %.preheader3133.._crit_edge3662_crit_edge ], [ %i.aml, %bb.k ], [ %i.aml, %._crit_edge3662.loopexit.unr-lcssa ]
  %.02999.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3133.._crit_edge3662_crit_edge ], [ %i.aou, %._crit_edge3662.loopexit.unr-lcssa ], [ %i.api, %bb.k ]
  %.02998.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3133.._crit_edge3662_crit_edge ], [ %i.aot, %._crit_edge3662.loopexit.unr-lcssa ], [ %i.aph, %bb.k ]
  %i.apk = fmul <16 x float> %i.k, %.02998.lcssa
  %i.apl = mul nsw i64 %.103669, %10
  %gep3666 = getelementptr [4 x i8], ptr %invariant.gep3642, i64 %i.apl ; 2 uses
  %i.apm = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3666, <16 x float> %i.m, i16 %i.agy, <16 x float> %i.apk) #9, !srcloc !102
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.apm, ptr align 1 %gep3666, <16 x i1> %i.ahq)
  %i.apn = fmul <16 x float> %i.k, %.02999.lcssa
  %i.apo = mul nsw i64 %.pre-phi3926, %10
  %gep3668 = getelementptr [4 x i8], ptr %invariant.gep3642, i64 %i.apo ; 2 uses
  %i.app = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3668, <16 x float> %i.m, i16 %i.agy, <16 x float> %i.apn) #9, !srcloc !103
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.app, ptr align 1 %gep3668, <16 x i1> %i.ahq)
  %i.apq = add nuw nsw i64 %.103669, 2            ; 3 uses
  %i.apr = icmp slt i64 %i.apq, %i.i
  br i1 %i.apr, label %.preheader3133, label %.preheader3132, !llvm.loop !104

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge3676
  %.113682 = phi i64 [ %.10.lcssa, %.preheader.lr.ph ], [ %i.ash, %._crit_edge3676 ] ; 3 uses
  br i1 %i.amo, label %.lr.ph3675, label %._crit_edge3676

.lr.ph3675:                                       ; preds = %.preheader
  %i.aps = mul nsw i64 %.113682, %7
  %invariant.gep3678 = getelementptr [4 x i8], ptr %6, i64 %i.aps ; 9 uses
  br i1 %i.amr, label %.epil.preheader4578, label %.lr.ph3675.new

.lr.ph3675.new:                                   ; preds = %.lr.ph3675, %.lr.ph3675.new
  %.1129013674 = phi i64 [ %i.arw, %.lr.ph3675.new ], [ 0, %.lr.ph3675 ] ; 10 uses
  %.030003673 = phi <16 x float> [ %i.arv, %.lr.ph3675.new ], [ zeroinitializer, %.lr.ph3675 ]
  %niter4585 = phi i64 [ %niter4585.next.7, %.lr.ph3675.new ], [ 0, %.lr.ph3675 ]
  %i.apt = mul nsw i64 %.1129013674, %4
  %gep3672 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.apt
  %i.apu = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %.1129013674
  %i.apv = load float, ptr %gep3679, align 1, !tbaa !8
  %i.apw = insertelement <4 x float> poison, float %i.apv, i64 0
  %i.apx = shufflevector <4 x float> %i.apw, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apu, <16 x float> %i.apx, <16 x float> %.030003673)
  %i.apz = or disjoint i64 %.1129013674, 1        ; 2 uses
  %i.aqa = mul nsw i64 %i.apz, %4
  %gep3672.1 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.aqa
  %i.aqb = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.1, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.1 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.apz
  %i.aqc = load float, ptr %gep3679.1, align 1, !tbaa !8
  %i.aqd = insertelement <4 x float> poison, float %i.aqc, i64 0
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqb, <16 x float> %i.aqe, <16 x float> %i.apy)
  %i.aqg = or disjoint i64 %.1129013674, 2        ; 2 uses
  %i.aqh = mul nsw i64 %i.aqg, %4
  %gep3672.2 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.aqh
  %i.aqi = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.2, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.2 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.aqg
  %i.aqj = load float, ptr %gep3679.2, align 1, !tbaa !8
  %i.aqk = insertelement <4 x float> poison, float %i.aqj, i64 0
  %i.aql = shufflevector <4 x float> %i.aqk, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqi, <16 x float> %i.aql, <16 x float> %i.aqf)
  %i.aqn = or disjoint i64 %.1129013674, 3        ; 2 uses
  %i.aqo = mul nsw i64 %i.aqn, %4
  %gep3672.3 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.aqo
  %i.aqp = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.3, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.3 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.aqn
  %i.aqq = load float, ptr %gep3679.3, align 1, !tbaa !8
  %i.aqr = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqs = shufflevector <4 x float> %i.aqr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqp, <16 x float> %i.aqs, <16 x float> %i.aqm)
  %i.aqu = or disjoint i64 %.1129013674, 4        ; 2 uses
  %i.aqv = mul nsw i64 %i.aqu, %4
  %gep3672.4 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.aqv
  %i.aqw = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.4, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.4 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.aqu
  %i.aqx = load float, ptr %gep3679.4, align 1, !tbaa !8
  %i.aqy = insertelement <4 x float> poison, float %i.aqx, i64 0
  %i.aqz = shufflevector <4 x float> %i.aqy, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ara = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqw, <16 x float> %i.aqz, <16 x float> %i.aqt)
  %i.arb = or disjoint i64 %.1129013674, 5        ; 2 uses
  %i.arc = mul nsw i64 %i.arb, %4
  %gep3672.5 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.arc
  %i.ard = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.5, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.5 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.arb
  %i.are = load float, ptr %gep3679.5, align 1, !tbaa !8
  %i.arf = insertelement <4 x float> poison, float %i.are, i64 0
  %i.arg = shufflevector <4 x float> %i.arf, <4 x float> poison, <16 x i32> zeroinitializer
  %i.arh = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ard, <16 x float> %i.arg, <16 x float> %i.ara)
  %i.ari = or disjoint i64 %.1129013674, 6        ; 2 uses
  %i.arj = mul nsw i64 %i.ari, %4
  %gep3672.6 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.arj
  %i.ark = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.6, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.6 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.ari
  %i.arl = load float, ptr %gep3679.6, align 1, !tbaa !8
  %i.arm = insertelement <4 x float> poison, float %i.arl, i64 0
  %i.arn = shufflevector <4 x float> %i.arm, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aro = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ark, <16 x float> %i.arn, <16 x float> %i.arh)
  %i.arp = or disjoint i64 %.1129013674, 7        ; 2 uses
  %i.arq = mul nsw i64 %i.arp, %4
  %gep3672.7 = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.arq
  %i.arr = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.7, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.7 = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %i.arp
  %i.ars = load float, ptr %gep3679.7, align 1, !tbaa !8
  %i.art = insertelement <4 x float> poison, float %i.ars, i64 0
  %i.aru = shufflevector <4 x float> %i.art, <4 x float> poison, <16 x i32> zeroinitializer
  %i.arv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.arr, <16 x float> %i.aru, <16 x float> %i.aro) ; 3 uses
  %i.arw = add nuw nsw i64 %.1129013674, 8        ; 2 uses
  %niter4585.next.7 = add nuw nsw i64 %niter4585, 8 ; 2 uses
  %niter4585.ncmp.7 = icmp eq i64 %niter4585.next.7, %unroll_iter4584
  br i1 %niter4585.ncmp.7, label %._crit_edge3676.loopexit.unr-lcssa, label %.lr.ph3675.new, !llvm.loop !105

._crit_edge3676.loopexit.unr-lcssa:               ; preds = %.lr.ph3675.new
  br i1 %lcmp.mod4581.not, label %._crit_edge3676, label %.epil.preheader4578

.epil.preheader4578:                              ; preds = %._crit_edge3676.loopexit.unr-lcssa, %.lr.ph3675
  %.1129013674.epil.init = phi i64 [ 0, %.lr.ph3675 ], [ %i.arw, %._crit_edge3676.loopexit.unr-lcssa ]
  %.030003673.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3675 ], [ %i.arv, %._crit_edge3676.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4583)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader4578
  %.1129013674.epil = phi i64 [ %.1129013674.epil.init, %.epil.preheader4578 ], [ %i.asd, %bb.l ] ; 3 uses
  %.030003673.epil = phi <16 x float> [ %.030003673.epil.init, %.epil.preheader4578 ], [ %i.asc, %bb.l ]
  %epil.iter4580 = phi i64 [ 0, %.epil.preheader4578 ], [ %epil.iter4580.next, %bb.l ]
  %i.arx = mul nsw i64 %.1129013674.epil, %4
  %gep3672.epil = getelementptr [4 x i8], ptr %invariant.gep3671, i64 %i.arx
  %i.ary = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3672.epil, <16 x i1> %i.amp, <16 x float> zeroinitializer)
  %gep3679.epil = getelementptr [4 x i8], ptr %invariant.gep3678, i64 %.1129013674.epil
  %i.arz = load float, ptr %gep3679.epil, align 1, !tbaa !8
  %i.asa = insertelement <4 x float> poison, float %i.arz, i64 0
  %i.asb = shufflevector <4 x float> %i.asa, <4 x float> poison, <16 x i32> zeroinitializer
  %i.asc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ary, <16 x float> %i.asb, <16 x float> %.030003673.epil) ; 2 uses
  %i.asd = add nuw nsw i64 %.1129013674.epil, 1
  %epil.iter4580.next = add i64 %epil.iter4580, 1 ; 2 uses
  %epil.iter4580.cmp.not = icmp eq i64 %epil.iter4580.next, %xtraiter4579
  br i1 %epil.iter4580.cmp.not, label %._crit_edge3676, label %bb.l, !llvm.loop !106

._crit_edge3676:                                  ; preds = %._crit_edge3676.loopexit.unr-lcssa, %bb.l, %.preheader
  %.03000.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %i.arv, %._crit_edge3676.loopexit.unr-lcssa ], [ %i.asc, %bb.l ]
  %i.ase = fmul <16 x float> %i.k, %.03000.lcssa
  %i.asf = mul nsw i64 %.113682, %10
  %gep3681 = getelementptr [4 x i8], ptr %invariant.gep3642, i64 %i.asf ; 2 uses
  %i.asg = tail call <16 x float> asm "vfmadd231ps ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3681, <16 x float> %i.m, i16 %i.agy, <16 x float> %i.ase) #9, !srcloc !107
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.asg, ptr align 1 %gep3681, <16 x i1> %i.amp)
  %i.ash = add i64 %.113682, 1                    ; 2 uses
  %exitcond3868.not = icmp eq i64 %i.ash, %1
  br i1 %exitcond3868.not, label %.loopexit, label %.preheader, !llvm.loop !108

.lr.ph3413:                                       ; preds = %bb.i
  %sext = shl i64 %i.ags, 32
  %i.asi = ashr exact i64 %sext, 30
  %i.asj = mul i64 %i.asi, %2
  %i.ask = tail call noalias ptr @malloc(i64 noundef %i.asj) #10 ; 31 uses
  %11 = and i64 %2, 9223372036854775792           ; 9 uses
  %i.asl = and i64 %2, 9223372036854775800
  %invariant.gep3409 = getelementptr [4 x i8], ptr %i.ask, i64 %2
  %12 = and i64 %i.ags, 4294967295
  %notmask = shl nsw i64 -1, %12
  %13 = trunc i64 %notmask to i8
  %14 = xor i8 %13, -1
  %i.asm = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa ; 8 uses
  %i.asn = bitcast i8 %14 to <8 x i1>             ; 8 uses
  %.idx = mul nuw nsw i64 %2, 28
  %invariant.gep3415 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx
  %.idx3105 = mul nuw nsw i64 %2, 24
  %invariant.gep3417 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3105
  %.idx3106 = mul nuw nsw i64 %2, 20
  %invariant.gep3419 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3106
  %.idx3107 = shl nsw i64 %2, 4
  %invariant.gep3421 = getelementptr i8, ptr %i.ask, i64 %.idx3107
  %.idx3108 = mul nuw nsw i64 %2, 12
  %invariant.gep3423 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3108
  %.idx3109 = shl nuw nsw i64 %2, 3
  %invariant.gep3425 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx3109
  br label %bb.m

.preheader3157:                                   ; preds = %bb.v
  %15 = icmp slt i64 %i.auv, %2
  br i1 %15, label %.preheader3156.lr.ph, label %._crit_edge3431.split

.preheader3156.lr.ph:                             ; preds = %.preheader3157
  %i.aso = icmp sgt i32 %i.agt, 0
  %16 = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa
  br i1 %i.aso, label %.preheader3156.preheader, label %._crit_edge3431.split

.preheader3156.preheader:                         ; preds = %.preheader3156.lr.ph
  %wide.trip.count = and i64 %i.ags, 2147483647
  %i.asp = add nsw i64 %wide.trip.count, -1
  %xtraiter4550 = and i64 %i.ags, 7               ; 3 uses
  %i.asq = icmp ult i64 %i.asp, 7
  %unroll_iter4554 = and i64 %i.ags, 2147483640
  %lcmp.mod4552.not = icmp eq i64 %xtraiter4550, 0
  %lcmp.mod4553 = icmp ne i64 %xtraiter4550, 0
  br label %iter.check

bb.m:                                             ; preds = %.lr.ph3413, %bb.v
  %.1229023411 = phi i64 [ 0, %.lr.ph3413 ], [ %i.auv, %bb.v ] ; 17 uses
  %i.asr = mul nsw i64 %.1229023411, %4
  %i.ass = getelementptr [4 x i8], ptr %i.asm, i64 %i.asr
  %i.ast = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ass, <8 x i1> %i.asn, <8 x float> zeroinitializer) ; 2 uses
  %i.asu = or disjoint i64 %.1229023411, 1
  %i.asv = mul nsw i64 %i.asu, %4
  %i.asw = getelementptr [4 x i8], ptr %i.asm, i64 %i.asv
  %i.asx = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.asw, <8 x i1> %i.asn, <8 x float> zeroinitializer) ; 2 uses
  %i.asy = or disjoint i64 %.1229023411, 2
  %i.asz = mul nsw i64 %i.asy, %4
  %i.ata = getelementptr [4 x i8], ptr %i.asm, i64 %i.asz
  %i.atb = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ata, <8 x i1> %i.asn, <8 x float> zeroinitializer) ; 2 uses
  %i.atc = or disjoint i64 %.1229023411, 3
  %i.atd = mul nsw i64 %i.atc, %4
  %i.ate = getelementptr [4 x i8], ptr %i.asm, i64 %i.atd
  %i.atf = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ate, <8 x i1> %i.asn, <8 x float> zeroinitializer) ; 2 uses
  %i.atg = or disjoint i64 %.1229023411, 4
  %i.ath = mul nsw i64 %i.atg, %4
  %i.ati = getelementptr [4 x i8], ptr %i.asm, i64 %i.ath
  %i.atj = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ati, <8 x i1> %i.asn, <8 x float> zeroinitializer) ; 2 uses
  %i.atk = or disjoint i64 %.1229023411, 5
  %i.atl = mul nsw i64 %i.atk, %4
  %i.atm = getelementptr [4 x i8], ptr %i.asm, i64 %i.atl
  %i.atn = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atm, <8 x i1> %i.asn, <8 x float> zeroinitializer) ; 2 uses
  %i.ato = or disjoint i64 %.1229023411, 6
  %i.atp = mul nsw i64 %i.ato, %4
  %i.atq = getelementptr [4 x i8], ptr %i.asm, i64 %i.atp
  %i.atr = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atq, <8 x i1> %i.asn, <8 x float> zeroinitializer) ; 2 uses
  %i.ats = or disjoint i64 %.1229023411, 7
  %i.att = mul nsw i64 %i.ats, %4
  %i.atu = getelementptr [4 x i8], ptr %i.asm, i64 %i.att
  %i.atv = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atu, <8 x i1> %i.asn, <8 x float> zeroinitializer) ; 2 uses
  %i.atw = shufflevector <8 x float> %i.ast, <8 x float> %i.asx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atx = shufflevector <8 x float> %i.ast, <8 x float> %i.asx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aty = shufflevector <8 x float> %i.atb, <8 x float> %i.atf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atz = shufflevector <8 x float> %i.atb, <8 x float> %i.atf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aua = shufflevector <8 x float> %i.atj, <8 x float> %i.atn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aub = shufflevector <8 x float> %i.atj, <8 x float> %i.atn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.auc = shufflevector <8 x float> %i.atr, <8 x float> %i.atv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aud = shufflevector <8 x float> %i.atr, <8 x float> %i.atv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aue = shufflevector <8 x float> %i.atw, <8 x float> %i.aty, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.auf = shufflevector <8 x float> %i.atw, <8 x float> %i.aty, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aug = shufflevector <8 x float> %i.atx, <8 x float> %i.atz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.auh = shufflevector <8 x float> %i.atx, <8 x float> %i.atz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aui = shufflevector <8 x float> %i.aua, <8 x float> %i.auc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.auj = shufflevector <8 x float> %i.aua, <8 x float> %i.auc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.auk = shufflevector <8 x float> %i.aub, <8 x float> %i.aud, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aul = shufflevector <8 x float> %i.aub, <8 x float> %i.aud, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aum = shufflevector <8 x float> %i.aue, <8 x float> %i.aui, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aun = shufflevector <8 x float> %i.auf, <8 x float> %i.auj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auo = shufflevector <8 x float> %i.aug, <8 x float> %i.auk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aup = shufflevector <8 x float> %i.auh, <8 x float> %i.aul, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auq = shufflevector <8 x float> %i.aue, <8 x float> %i.aui, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aur = shufflevector <8 x float> %i.auf, <8 x float> %i.auj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aus = shufflevector <8 x float> %i.aug, <8 x float> %i.auk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  switch i32 %i.agt, label %bb.v [
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
  %i.aut = shufflevector <8 x float> %i.auh, <8 x float> %i.aul, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %gep3416 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3415, i64 %.1229023411
  store <8 x float> %i.aut, ptr %gep3416, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %gep3418 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3417, i64 %.1229023411
  store <8 x float> %i.aus, ptr %gep3418, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %gep3420 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3419, i64 %.1229023411
  store <8 x float> %i.aur, ptr %gep3420, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %gep3422 = getelementptr [4 x i8], ptr %invariant.gep3421, i64 %.1229023411
  store <8 x float> %i.auq, ptr %gep3422, align 1, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %gep3424 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3423, i64 %.1229023411
  store <8 x float> %i.aup, ptr %gep3424, align 1, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %gep3426 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3425, i64 %.1229023411
  store <8 x float> %i.auo, ptr %gep3426, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %gep3410 = getelementptr [4 x i8], ptr %invariant.gep3409, i64 %.1229023411
  store <8 x float> %i.aun, ptr %gep3410, align 1, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %.1229023411
  store <8 x float> %i.aum, ptr %i.auu, align 1, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m
  %i.auv = add nuw nsw i64 %.1229023411, 8        ; 4 uses
  %i.auw = icmp samesign ult i64 %i.auv, %i.asl
  br i1 %i.auw, label %bb.m, label %.preheader3157, !llvm.loop !109

iter.check:                                       ; preds = %.preheader3156.preheader, %._crit_edge3429
  %.1329033430 = phi i64 [ %i.ave, %._crit_edge3429 ], [ %i.auv, %.preheader3156.preheader ] ; 3 uses
  %i.aux = mul nsw i64 %.1329033430, %4
  %i.auy = getelementptr [4 x i8], ptr %16, i64 %i.aux ; 9 uses
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %.1329033430 ; 9 uses
  br i1 %i.asq, label %.epil.preheader4549, label %iter.check.new

._crit_edge3429.unr-lcssa:                        ; preds = %iter.check.new
  br i1 %lcmp.mod4552.not, label %._crit_edge3429, label %.epil.preheader4549

.epil.preheader4549:                              ; preds = %._crit_edge3429.unr-lcssa, %iter.check
  %indvars.iv.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.7, %._crit_edge3429.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4553)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader4549
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader4549 ], [ %indvars.iv.next.epil, %bb.w ] ; 3 uses
  %epil.iter4551 = phi i64 [ 0, %.epil.preheader4549 ], [ %epil.iter4551.next, %bb.w ]
  %i.ava = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv.epil
  %i.avb = load float, ptr %i.ava, align 4, !tbaa !110
  %i.avc = mul nuw nsw i64 %2, %indvars.iv.epil
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.avc
  store float %i.avb, ptr %i.avd, align 4, !tbaa !110
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter4551.next = add i64 %epil.iter4551, 1 ; 2 uses
  %epil.iter4551.cmp.not = icmp eq i64 %epil.iter4551.next, %xtraiter4550
  br i1 %epil.iter4551.cmp.not, label %._crit_edge3429, label %bb.w, !llvm.loop !112

._crit_edge3429:                                  ; preds = %bb.w, %._crit_edge3429.unr-lcssa
  %i.ave = add nuw nsw i64 %.1329033430, 1        ; 2 uses
  %exitcond3851.not = icmp eq i64 %i.ave, %2
  br i1 %exitcond3851.not, label %._crit_edge3431.split, label %iter.check, !llvm.loop !113

iter.check.new:                                   ; preds = %iter.check, %iter.check.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %iter.check.new ], [ 0, %iter.check ] ; 10 uses
  %niter4555 = phi i64 [ %niter4555.next.7, %iter.check.new ], [ 0, %iter.check ]
  %i.avf = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !110
  %i.avh = mul nuw nsw i64 %2, %indvars.iv
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.avh
  store float %i.avg, ptr %i.avi, align 4, !tbaa !110
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.avj = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv.next
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !110
  %i.avl = mul nuw nsw i64 %2, %indvars.iv.next
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.avl
  store float %i.avk, ptr %i.avm, align 4, !tbaa !110
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.avn = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv.next.1
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !110
  %i.avp = mul nuw nsw i64 %2, %indvars.iv.next.1
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.avp
  store float %i.avo, ptr %i.avq, align 4, !tbaa !110
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.avr = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv.next.2
  %i.avs = load float, ptr %i.avr, align 4, !tbaa !110
  %i.avt = mul nuw nsw i64 %2, %indvars.iv.next.2
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.avt
  store float %i.avs, ptr %i.avu, align 4, !tbaa !110
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.avv = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv.next.3
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !110
  %i.avx = mul nuw nsw i64 %2, %indvars.iv.next.3
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.avx
  store float %i.avw, ptr %i.avy, align 4, !tbaa !110
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.avz = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv.next.4
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !110
  %i.awb = mul nuw nsw i64 %2, %indvars.iv.next.4
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.awb
  store float %i.awa, ptr %i.awc, align 4, !tbaa !110
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.awd = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv.next.5
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !110
  %i.awf = mul nuw nsw i64 %2, %indvars.iv.next.5
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.awf
  store float %i.awe, ptr %i.awg, align 4, !tbaa !110
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.awh = getelementptr [4 x i8], ptr %i.auy, i64 %indvars.iv.next.6
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !110
  %i.awj = mul nuw nsw i64 %2, %indvars.iv.next.6
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.awj
  store float %i.awi, ptr %i.awk, align 4, !tbaa !110
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter4555.next.7 = add i64 %niter4555, 8       ; 2 uses
  %niter4555.ncmp.7 = icmp eq i64 %niter4555.next.7, %unroll_iter4554
  br i1 %niter4555.ncmp.7, label %._crit_edge3429.unr-lcssa, label %iter.check.new, !llvm.loop !114

._crit_edge3431.split:                            ; preds = %._crit_edge3429, %.preheader3156.lr.ph, %.preheader3157
  %i.awl = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.awm = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.awn = trunc i64 %10 to i32                   ; 3 uses
  %i.awo = mul i32 %i.awn, 3
  %i.awp = shl i32 %i.awn, 1
  %i.awq = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.awn, i64 1
  %i.awr = insertelement <4 x i32> %i.awq, i32 %i.awp, i64 2
  %i.aws = insertelement <4 x i32> %i.awr, i32 %i.awo, i64 3 ; 6 uses
  %i.awt = icmp slt i64 %.2.lcssa, %i.d
  br i1 %i.awt, label %.preheader3155.lr.ph, label %.preheader3149

.preheader3155.lr.ph:                             ; preds = %._crit_edge3431.split
  %i.awu = icmp sgt i64 %1, 3
  %i.awv = and i64 %2, 9223372036854775792        ; 19 uses
  %i.aww = and i64 %2, 15                         ; 2 uses
  %.not3103 = icmp eq i64 %i.aww, 0
  %notmask3104 = shl nsw i64 -1, %i.aww
  %i.awx = trunc nsw i64 %notmask3104 to i16
  %i.awy = xor i16 %i.awx, -1
  %i.awz = bitcast i16 %i.awy to <16 x i1>        ; 8 uses
  %invariant.gep4163.a = getelementptr [4 x i8], ptr %6, i64 %i.awv
  %invariant.gep4165.a = getelementptr [4 x i8], ptr %6, i64 %i.awv
  %invariant.gep4167.a = getelementptr [4 x i8], ptr %6, i64 %i.awv
  %invariant.gep4169.a = getelementptr [4 x i8], ptr %6, i64 %i.awv
  %i.axa = and i64 %2, 15                         ; 2 uses
  %.not3101 = icmp eq i64 %i.axa, 0
  %notmask3102 = shl nsw i64 -1, %i.axa
  %i.axb = trunc nsw i64 %notmask3102 to i16
  %i.axc = xor i16 %i.axb, -1
  %i.axd = bitcast i16 %i.axc to <16 x i1>        ; 6 uses
  %invariant.gep4171.a = getelementptr [4 x i8], ptr %6, i64 %i.awv
  %invariant.gep4173.a = getelementptr [4 x i8], ptr %6, i64 %i.awv
  %i.axe = and i64 %2, 15                         ; 2 uses
  %.not3099 = icmp eq i64 %i.axe, 0
  %notmask3100 = shl nsw i64 -1, %i.axe
  %i.axf = trunc nsw i64 %notmask3100 to i16
  %i.axg = xor i16 %i.axf, -1
  %i.axh = bitcast i16 %i.axg to <16 x i1>        ; 5 uses
  %invariant.gep4175.a = getelementptr [4 x i8], ptr %6, i64 %i.awv
  br label %.preheader3155

.preheader3155:                                   ; preds = %.preheader3155.lr.ph, %._crit_edge3519
  %indvars.iv3853 = phi i64 [ 0, %.preheader3155.lr.ph ], [ %indvars.iv.next3854, %._crit_edge3519 ] ; 13 uses
  %.33521 = phi i64 [ %.2.lcssa, %.preheader3155.lr.ph ], [ %i.blq, %._crit_edge3519 ] ; 2 uses
  %invariant.gep3468 = getelementptr [4 x i8], ptr %9, i64 %.33521 ; 7 uses
  br i1 %i.awu, label %.preheader3152.lr.ph, label %.preheader3154

.preheader3152.lr.ph:                             ; preds = %.preheader3155
  %i.axi = mul nuw nsw i64 %2, %indvars.iv3853
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.axi ; 2 uses
  %i.axk = or disjoint i64 %indvars.iv3853, 1
  %i.axl = mul nuw nsw i64 %2, %i.axk
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.axl ; 2 uses
  %i.axn = or disjoint i64 %indvars.iv3853, 2
  %i.axo = mul nuw nsw i64 %2, %i.axn
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.axo ; 2 uses
  %i.axq = or disjoint i64 %indvars.iv3853, 3
  %i.axr = mul nuw nsw i64 %2, %i.axq
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.axr ; 2 uses
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.axj, i64 %i.awv
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %i.awv
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axp, i64 %i.awv
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.awv
  br label %.lr.ph3449

.preheader3149.loopexit:                          ; preds = %._crit_edge3519
  %i.axx = trunc nuw i64 %indvars.iv.next3854 to i32
  br label %.preheader3149

.preheader3149:                                   ; preds = %.preheader3149.loopexit, %._crit_edge3431.split
  %.03018.lcssa = phi i32 [ 0, %._crit_edge3431.split ], [ %i.axx, %.preheader3149.loopexit ] ; 2 uses
  %.3.lcssa = phi i64 [ %.2.lcssa, %._crit_edge3431.split ], [ %i.blq, %.preheader3149.loopexit ] ; 3 uses
  %i.axy = icmp slt i64 %.3.lcssa, %i.e
  br i1 %i.axy, label %.preheader3148.lr.ph, label %.preheader3142

.preheader3148.lr.ph:                             ; preds = %.preheader3149
  %i.axz = icmp sgt i64 %1, 3
  %i.aya = and i64 %2, 9223372036854775792        ; 13 uses
  %i.ayb = zext i32 %.03018.lcssa to i64
  %i.ayc = and i64 %2, 15                         ; 2 uses
  %.not3097 = icmp eq i64 %i.ayc, 0
  %notmask3098 = shl nsw i64 -1, %i.ayc
  %i.ayd = trunc nsw i64 %notmask3098 to i16
  %i.aye = xor i16 %i.ayd, -1
  %i.ayf = bitcast i16 %i.aye to <16 x i1>        ; 6 uses
  %invariant.gep4177.a = getelementptr [4 x i8], ptr %6, i64 %i.aya
  %invariant.gep4179.a = getelementptr [4 x i8], ptr %6, i64 %i.aya
  %invariant.gep4181.a = getelementptr [4 x i8], ptr %6, i64 %i.aya
  %invariant.gep4183.a = getelementptr [4 x i8], ptr %6, i64 %i.aya
  %i.ayg = and i64 %2, 15                         ; 2 uses
  %.not3095 = icmp eq i64 %i.ayg, 0
  %notmask3096 = shl nsw i64 -1, %i.ayg
  %i.ayh = trunc nsw i64 %notmask3096 to i16
  %i.ayi = xor i16 %i.ayh, -1
  %i.ayj = bitcast i16 %i.ayi to <16 x i1>        ; 4 uses
  %invariant.gep4185.a = getelementptr [4 x i8], ptr %6, i64 %i.aya
  %invariant.gep4187.a = getelementptr [4 x i8], ptr %6, i64 %i.aya
  %i.ayk = and i64 %2, 15                         ; 2 uses
  %.not3093 = icmp eq i64 %i.ayk, 0
  %notmask3094 = shl nsw i64 -1, %i.ayk
  %i.ayl = trunc nsw i64 %notmask3094 to i16
  %i.aym = xor i16 %i.ayl, -1
  %i.ayn = bitcast i16 %i.aym to <16 x i1>        ; 3 uses
  %invariant.gep4189.a = getelementptr [4 x i8], ptr %6, i64 %i.aya
  %i.ayo = insertelement <2 x float> poison, float %5, i64 0
  %i.ayp = shufflevector <2 x float> %i.ayo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ayq = insertelement <2 x float> poison, float %8, i64 0
  %i.ayr = shufflevector <2 x float> %i.ayq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ays = insertelement <2 x float> poison, float %5, i64 0
  %i.ayt = shufflevector <2 x float> %i.ays, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayu = insertelement <2 x float> poison, float %8, i64 0
  %i.ayv = shufflevector <2 x float> %i.ayu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader3148

.preheader3154:                                   ; preds = %bb.z, %.preheader3155
  %.12.lcssa = phi i64 [ 0, %.preheader3155 ], [ %i.bfq, %bb.z ] ; 3 uses
  %i.ayw = icmp slt i64 %.12.lcssa, %i.i
  br i1 %i.ayw, label %.preheader3151.lr.ph, label %.preheader3153

.preheader3151.lr.ph:                             ; preds = %.preheader3154
  %i.ayx = mul nuw nsw i64 %2, %indvars.iv3853
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.ayx ; 2 uses
  %i.ayz = or disjoint i64 %indvars.iv3853, 1
  %i.aza = mul nuw nsw i64 %2, %i.ayz
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.aza ; 2 uses
  %i.azc = or disjoint i64 %indvars.iv3853, 2
  %i.azd = mul nuw nsw i64 %2, %i.azc
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.azd ; 2 uses
  %i.azf = or disjoint i64 %indvars.iv3853, 3
  %i.azg = mul nuw nsw i64 %2, %i.azf
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.azg ; 2 uses
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %i.awv
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %i.awv
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.aze, i64 %i.awv
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.azh, i64 %i.awv
  br label %.lr.ph3487

.lr.ph3449:                                       ; preds = %bb.z, %.preheader3152.lr.ph
  %.123476 = phi i64 [ 0, %.preheader3152.lr.ph ], [ %i.bfq, %bb.z ] ; 13 uses
  %i.azm = mul nsw i64 %.123476, %7
  %i.azn = getelementptr [4 x i8], ptr %6, i64 %i.azm
  %i.azo = or disjoint i64 %.123476, 1
  %i.azp = mul nsw i64 %i.azo, %7
  %i.azq = getelementptr [4 x i8], ptr %6, i64 %i.azp
  %i.azr = or disjoint i64 %.123476, 2
  %i.azs = mul nsw i64 %i.azr, %7
  %i.azt = getelementptr [4 x i8], ptr %6, i64 %i.azs
  %i.azu = or disjoint i64 %.123476, 3
  %i.azv = mul nsw i64 %i.azu, %7
  %i.azw = getelementptr [4 x i8], ptr %6, i64 %i.azv
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph3449, %bb.x
  %.1429043448 = phi i64 [ 0, %.lr.ph3449 ], [ %i.bbd, %bb.x ] ; 9 uses
  %.030293447 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.ban, %bb.x ]
  %.030313446 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bao, %bb.x ]
  %.030333445 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bap, %bb.x ]
  %.030353444 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.baq, %bb.x ]
  %.030373443 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bar, %bb.x ]
  %.030393442 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bas, %bb.x ]
  %.030413441 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bat, %bb.x ]
  %.030433440 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bau, %bb.x ]
  %.030453439 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bav, %bb.x ]
  %.030473438 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.baw, %bb.x ]
  %.030493437 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bax, %bb.x ]
  %.030513436 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bay, %bb.x ]
  %.030533435 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.baz, %bb.x ]
  %.030553434 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bba, %bb.x ]
  %.030573433 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bbb, %bb.x ]
  %.030593432 = phi <16 x float> [ zeroinitializer, %.lr.ph3449 ], [ %i.bbc, %bb.x ]
  %i.azx = getelementptr inbounds nuw [4 x i8], ptr %i.axj, i64 %.1429043448
  %i.azy = load <16 x float>, ptr %i.azx, align 1, !tbaa !8 ; 4 uses
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %.1429043448
  %i.baa = load <16 x float>, ptr %i.azz, align 1, !tbaa !8 ; 4 uses
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.axp, i64 %.1429043448
  %i.bac = load <16 x float>, ptr %i.bab, align 1, !tbaa !8 ; 4 uses
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %.1429043448
  %i.bae = load <16 x float>, ptr %i.bad, align 1, !tbaa !8 ; 4 uses
  %i.baf = getelementptr [4 x i8], ptr %i.azn, i64 %.1429043448
  %i.bag = load <16 x float>, ptr %i.baf, align 1, !tbaa !8 ; 4 uses
  %i.bah = getelementptr [4 x i8], ptr %i.azq, i64 %.1429043448
  %i.bai = load <16 x float>, ptr %i.bah, align 1, !tbaa !8 ; 4 uses
  %i.baj = getelementptr [4 x i8], ptr %i.azt, i64 %.1429043448
  %i.bak = load <16 x float>, ptr %i.baj, align 1, !tbaa !8 ; 4 uses
  %i.bal = getelementptr [4 x i8], ptr %i.azw, i64 %.1429043448
  %i.bam = load <16 x float>, ptr %i.bal, align 1, !tbaa !8 ; 4 uses
  %i.ban = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azy, <16 x float> %i.bag, <16 x float> %.030293447) ; 3 uses
  %i.bao = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.baa, <16 x float> %i.bag, <16 x float> %.030313446) ; 3 uses
  %i.bap = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bac, <16 x float> %i.bag, <16 x float> %.030333445) ; 3 uses
  %i.baq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bae, <16 x float> %i.bag, <16 x float> %.030353444) ; 3 uses
  %i.bar = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azy, <16 x float> %i.bai, <16 x float> %.030373443) ; 3 uses
  %i.bas = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.baa, <16 x float> %i.bai, <16 x float> %.030393442) ; 3 uses
  %i.bat = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bac, <16 x float> %i.bai, <16 x float> %.030413441) ; 3 uses
  %i.bau = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bae, <16 x float> %i.bai, <16 x float> %.030433440) ; 3 uses
  %i.bav = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azy, <16 x float> %i.bak, <16 x float> %.030453439) ; 3 uses
  %i.baw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.baa, <16 x float> %i.bak, <16 x float> %.030473438) ; 3 uses
  %i.bax = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bac, <16 x float> %i.bak, <16 x float> %.030493437) ; 3 uses
  %i.bay = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bae, <16 x float> %i.bak, <16 x float> %.030513436) ; 3 uses
  %i.baz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azy, <16 x float> %i.bam, <16 x float> %.030533435) ; 3 uses
  %i.bba = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.baa, <16 x float> %i.bam, <16 x float> %.030553434) ; 3 uses
  %i.bbb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bac, <16 x float> %i.bam, <16 x float> %.030573433) ; 3 uses
  %i.bbc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bae, <16 x float> %i.bam, <16 x float> %.030593432) ; 3 uses
  %i.bbd = add nuw nsw i64 %.1429043448, 16       ; 2 uses
  %i.bbe = icmp samesign ult i64 %i.bbd, %11
  br i1 %i.bbe, label %bb.x, label %._crit_edge3450, !llvm.loop !116

._crit_edge3450:                                  ; preds = %bb.x
  br i1 %.not3103, label %._crit_edge3450._crit_edge, label %bb.y

._crit_edge3450._crit_edge:                       ; preds = %._crit_edge3450
  %.pre3927 = or disjoint i64 %.123476, 1
  %.pre3929 = or disjoint i64 %.123476, 2
  %.pre3931 = or disjoint i64 %.123476, 3
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge3450
  %i.bbf = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.axt, <16 x i1> %i.awz, <16 x float> zeroinitializer) ; 4 uses
  %i.bbg = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.axu, <16 x i1> %i.awz, <16 x float> zeroinitializer) ; 4 uses
  %i.bbh = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.axv, <16 x i1> %i.awz, <16 x float> zeroinitializer) ; 4 uses
  %i.bbi = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.axw, <16 x i1> %i.awz, <16 x float> zeroinitializer) ; 4 uses
  %i.bbj = mul nsw i64 %.123476, %7
  %gep4164.a = getelementptr [4 x i8], ptr %invariant.gep4163.a, i64 %i.bbj
  %i.bbk = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4164.a, <16 x i1> %i.awz, <16 x float> zeroinitializer) ; 4 uses
  %i.bbl = or disjoint i64 %.123476, 1            ; 2 uses
  %i.bbm = mul nsw i64 %i.bbl, %7
  %gep4166.a = getelementptr [4 x i8], ptr %invariant.gep4165.a, i64 %i.bbm
  %i.bbn = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4166.a, <16 x i1> %i.awz, <16 x float> zeroinitializer) ; 4 uses
  %i.bbo = or disjoint i64 %.123476, 2            ; 2 uses
  %i.bbp = mul nsw i64 %i.bbo, %7
  %gep4168.a = getelementptr [4 x i8], ptr %invariant.gep4167.a, i64 %i.bbp
  %i.bbq = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4168.a, <16 x i1> %i.awz, <16 x float> zeroinitializer) ; 4 uses
  %i.bbr = or disjoint i64 %.123476, 3            ; 2 uses
  %i.bbs = mul nsw i64 %i.bbr, %7
  %gep4170.a = getelementptr [4 x i8], ptr %invariant.gep4169.a, i64 %i.bbs
  %i.bbt = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4170.a, <16 x i1> %i.awz, <16 x float> zeroinitializer) ; 4 uses
  %i.bbu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbk, <16 x float> %i.ban)
  %i.bbv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbg, <16 x float> %i.bbk, <16 x float> %i.bao)
  %i.bbw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbh, <16 x float> %i.bbk, <16 x float> %i.bap)
  %i.bbx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbi, <16 x float> %i.bbk, <16 x float> %i.baq)
  %i.bby = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbn, <16 x float> %i.bar)
  %i.bbz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbg, <16 x float> %i.bbn, <16 x float> %i.bas)
  %i.bca = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbh, <16 x float> %i.bbn, <16 x float> %i.bat)
  %i.bcb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbi, <16 x float> %i.bbn, <16 x float> %i.bau)
  %i.bcc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbq, <16 x float> %i.bav)
  %i.bcd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbg, <16 x float> %i.bbq, <16 x float> %i.baw)
  %i.bce = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbh, <16 x float> %i.bbq, <16 x float> %i.bax)
  %i.bcf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbi, <16 x float> %i.bbq, <16 x float> %i.bay)
  %i.bcg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbt, <16 x float> %i.baz)
  %i.bch = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbg, <16 x float> %i.bbt, <16 x float> %i.bba)
  %i.bci = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbh, <16 x float> %i.bbt, <16 x float> %i.bbb)
  %i.bcj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbi, <16 x float> %i.bbt, <16 x float> %i.bbc)
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge3450._crit_edge, %bb.y
  %.pre-phi3932 = phi i64 [ %.pre3931, %._crit_edge3450._crit_edge ], [ %i.bbr, %bb.y ]
  %.pre-phi3930 = phi i64 [ %.pre3929, %._crit_edge3450._crit_edge ], [ %i.bbo, %bb.y ]
  %.pre-phi3928 = phi i64 [ %.pre3927, %._crit_edge3450._crit_edge ], [ %i.bbl, %bb.y ]
  %.13060 = phi <16 x float> [ %i.bbc, %._crit_edge3450._crit_edge ], [ %i.bcj, %bb.y ] ; 2 uses
  %.13058 = phi <16 x float> [ %i.bbb, %._crit_edge3450._crit_edge ], [ %i.bci, %bb.y ] ; 2 uses
  %.13056 = phi <16 x float> [ %i.bba, %._crit_edge3450._crit_edge ], [ %i.bch, %bb.y ] ; 2 uses
  %.13054 = phi <16 x float> [ %i.baz, %._crit_edge3450._crit_edge ], [ %i.bcg, %bb.y ] ; 2 uses
  %.13052 = phi <16 x float> [ %i.bay, %._crit_edge3450._crit_edge ], [ %i.bcf, %bb.y ] ; 2 uses
  %.13050 = phi <16 x float> [ %i.bax, %._crit_edge3450._crit_edge ], [ %i.bce, %bb.y ] ; 2 uses
  %.13048 = phi <16 x float> [ %i.baw, %._crit_edge3450._crit_edge ], [ %i.bcd, %bb.y ] ; 2 uses
  %.13046 = phi <16 x float> [ %i.bav, %._crit_edge3450._crit_edge ], [ %i.bcc, %bb.y ] ; 2 uses
  %.13044 = phi <16 x float> [ %i.bau, %._crit_edge3450._crit_edge ], [ %i.bcb, %bb.y ] ; 2 uses
  %.13042 = phi <16 x float> [ %i.bat, %._crit_edge3450._crit_edge ], [ %i.bca, %bb.y ] ; 2 uses
  %.13040 = phi <16 x float> [ %i.bas, %._crit_edge3450._crit_edge ], [ %i.bbz, %bb.y ] ; 2 uses
  %.13038 = phi <16 x float> [ %i.bar, %._crit_edge3450._crit_edge ], [ %i.bby, %bb.y ] ; 2 uses
  %.13036 = phi <16 x float> [ %i.baq, %._crit_edge3450._crit_edge ], [ %i.bbx, %bb.y ] ; 2 uses
  %.13034 = phi <16 x float> [ %i.bap, %._crit_edge3450._crit_edge ], [ %i.bbw, %bb.y ] ; 2 uses
  %.13032 = phi <16 x float> [ %i.bao, %._crit_edge3450._crit_edge ], [ %i.bbv, %bb.y ] ; 2 uses
  %.13030 = phi <16 x float> [ %i.ban, %._crit_edge3450._crit_edge ], [ %i.bbu, %bb.y ] ; 2 uses
  %i.bck = shufflevector <16 x float> %.13030, <16 x float> %.13032, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bcl = shufflevector <16 x float> %.13030, <16 x float> %.13032, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bcm = shufflevector <16 x float> %.13034, <16 x float> %.13036, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bcn = shufflevector <16 x float> %.13034, <16 x float> %.13036, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bco = shufflevector <16 x float> %i.bck, <16 x float> %i.bcm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bcp = shufflevector <16 x float> %i.bck, <16 x float> %i.bcm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bcq = shufflevector <16 x float> %i.bcl, <16 x float> %i.bcn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bcr = shufflevector <16 x float> %i.bcl, <16 x float> %i.bcn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bcs = fadd <16 x float> %i.bco, %i.bcp
  %i.bct = fadd <16 x float> %i.bcq, %i.bcr
  %i.bcu = fadd <16 x float> %i.bcs, %i.bct       ; 4 uses
  %i.bcv = shufflevector <16 x float> %i.bcu, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bcw = shufflevector <16 x float> %i.bcu, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bcx = shufflevector <16 x float> %i.bcu, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bcy = shufflevector <16 x float> %i.bcu, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bcz = fadd <4 x float> %i.bcv, %i.bcw
  %i.bda = fadd <4 x float> %i.bcx, %i.bcy
  %i.bdb = fadd <4 x float> %i.bcz, %i.bda
  %i.bdc = fmul <4 x float> %i.awl, %i.bdb
  %i.bdd = mul nsw i64 %.123476, %10
  %gep3469 = getelementptr [4 x i8], ptr %invariant.gep3468, i64 %i.bdd ; 2 uses
  %i.bde = tail call <4 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3469, <4 x float> %i.awm, <4 x float> %i.bdc) #9, !srcloc !117
  store <4 x float> %i.bde, ptr %gep3469, align 1
  %i.bdf = shufflevector <16 x float> %.13038, <16 x float> %.13040, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bdg = shufflevector <16 x float> %.13038, <16 x float> %.13040, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bdh = shufflevector <16 x float> %.13042, <16 x float> %.13044, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bdi = shufflevector <16 x float> %.13042, <16 x float> %.13044, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bdj = shufflevector <16 x float> %i.bdf, <16 x float> %i.bdh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bdk = shufflevector <16 x float> %i.bdf, <16 x float> %i.bdh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bdl = shufflevector <16 x float> %i.bdg, <16 x float> %i.bdi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bdm = shufflevector <16 x float> %i.bdg, <16 x float> %i.bdi, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bdn = fadd <16 x float> %i.bdj, %i.bdk
  %i.bdo = fadd <16 x float> %i.bdl, %i.bdm
  %i.bdp = fadd <16 x float> %i.bdn, %i.bdo       ; 4 uses
  %i.bdq = shufflevector <16 x float> %i.bdp, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdr = shufflevector <16 x float> %i.bdp, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bds = shufflevector <16 x float> %i.bdp, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bdt = shufflevector <16 x float> %i.bdp, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bdu = fadd <4 x float> %i.bdq, %i.bdr
  %i.bdv = fadd <4 x float> %i.bds, %i.bdt
  %i.bdw = fadd <4 x float> %i.bdu, %i.bdv
  %i.bdx = fmul <4 x float> %i.awl, %i.bdw
  %i.bdy = mul nsw i64 %.pre-phi3928, %10
  %gep3471 = getelementptr [4 x i8], ptr %invariant.gep3468, i64 %i.bdy ; 2 uses
  %i.bdz = tail call <4 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3471, <4 x float> %i.awm, <4 x float> %i.bdx) #9, !srcloc !118
  store <4 x float> %i.bdz, ptr %gep3471, align 1
  %i.bea = shufflevector <16 x float> %.13046, <16 x float> %.13048, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.beb = shufflevector <16 x float> %.13046, <16 x float> %.13048, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bec = shufflevector <16 x float> %.13050, <16 x float> %.13052, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bed = shufflevector <16 x float> %.13050, <16 x float> %.13052, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bee = shufflevector <16 x float> %i.bea, <16 x float> %i.bec, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bef = shufflevector <16 x float> %i.bea, <16 x float> %i.bec, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.beg = shufflevector <16 x float> %i.beb, <16 x float> %i.bed, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.beh = shufflevector <16 x float> %i.beb, <16 x float> %i.bed, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bei = fadd <16 x float> %i.bee, %i.bef
  %i.bej = fadd <16 x float> %i.beg, %i.beh
  %i.bek = fadd <16 x float> %i.bei, %i.bej       ; 4 uses
  %i.bel = shufflevector <16 x float> %i.bek, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bem = shufflevector <16 x float> %i.bek, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ben = shufflevector <16 x float> %i.bek, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.beo = shufflevector <16 x float> %i.bek, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bep = fadd <4 x float> %i.bel, %i.bem
  %i.beq = fadd <4 x float> %i.ben, %i.beo
  %i.ber = fadd <4 x float> %i.bep, %i.beq
  %i.bes = fmul <4 x float> %i.awl, %i.ber
  %i.bet = mul nsw i64 %.pre-phi3930, %10
  %gep3473 = getelementptr [4 x i8], ptr %invariant.gep3468, i64 %i.bet ; 2 uses
  %i.beu = tail call <4 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3473, <4 x float> %i.awm, <4 x float> %i.bes) #9, !srcloc !119
  store <4 x float> %i.beu, ptr %gep3473, align 1
  %i.bev = shufflevector <16 x float> %.13054, <16 x float> %.13056, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bew = shufflevector <16 x float> %.13054, <16 x float> %.13056, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bex = shufflevector <16 x float> %.13058, <16 x float> %.13060, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bey = shufflevector <16 x float> %.13058, <16 x float> %.13060, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bez = shufflevector <16 x float> %i.bev, <16 x float> %i.bex, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bfa = shufflevector <16 x float> %i.bev, <16 x float> %i.bex, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bfb = shufflevector <16 x float> %i.bew, <16 x float> %i.bey, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bfc = shufflevector <16 x float> %i.bew, <16 x float> %i.bey, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bfd = fadd <16 x float> %i.bez, %i.bfa
  %i.bfe = fadd <16 x float> %i.bfb, %i.bfc
  %i.bff = fadd <16 x float> %i.bfd, %i.bfe       ; 4 uses
  %i.bfg = shufflevector <16 x float> %i.bff, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bfh = shufflevector <16 x float> %i.bff, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bfi = shufflevector <16 x float> %i.bff, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bfj = shufflevector <16 x float> %i.bff, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bfk = fadd <4 x float> %i.bfg, %i.bfh
  %i.bfl = fadd <4 x float> %i.bfi, %i.bfj
  %i.bfm = fadd <4 x float> %i.bfk, %i.bfl
  %i.bfn = fmul <4 x float> %i.awl, %i.bfm
  %i.bfo = mul nsw i64 %.pre-phi3932, %10
  %gep3475 = getelementptr [4 x i8], ptr %invariant.gep3468, i64 %i.bfo ; 2 uses
  %i.bfp = tail call <4 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3475, <4 x float> %i.awm, <4 x float> %i.bfn) #9, !srcloc !120
  store <4 x float> %i.bfp, ptr %gep3475, align 1
  %i.bfq = add nuw nsw i64 %.123476, 4            ; 3 uses
  %i.bfr = icmp slt i64 %i.bfq, %i.h
  br i1 %i.bfr, label %.lr.ph3449, label %.preheader3154, !llvm.loop !121

.preheader3153:                                   ; preds = %bb.ac, %.preheader3154
  %.13.lcssa = phi i64 [ %.12.lcssa, %.preheader3154 ], [ %i.bjq, %bb.ac ] ; 2 uses
  %i.bfs = icmp slt i64 %.13.lcssa, %1
  br i1 %i.bfs, label %.preheader3150.lr.ph, label %._crit_edge3519

.preheader3150.lr.ph:                             ; preds = %.preheader3153
  %i.bft = mul nuw nsw i64 %2, %indvars.iv3853
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bft ; 2 uses
  %i.bfv = or disjoint i64 %indvars.iv3853, 1
  %i.bfw = mul nuw nsw i64 %2, %i.bfv
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bfw ; 2 uses
  %i.bfy = or disjoint i64 %indvars.iv3853, 2
  %i.bfz = mul nuw nsw i64 %2, %i.bfy
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bfz ; 2 uses
  %i.bgb = or disjoint i64 %indvars.iv3853, 3
  %i.bgc = mul nuw nsw i64 %2, %i.bgb
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bgc ; 2 uses
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.bfu, i64 %i.awv
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %i.awv
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.bga, i64 %i.awv
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.bgd, i64 %i.awv
  br label %.lr.ph3509

.lr.ph3487:                                       ; preds = %bb.ac, %.preheader3151.lr.ph
  %.133502 = phi i64 [ %.12.lcssa, %.preheader3151.lr.ph ], [ %i.bjq, %bb.ac ] ; 7 uses
  %i.bgi = mul nsw i64 %.133502, %7
  %i.bgj = getelementptr [4 x i8], ptr %6, i64 %i.bgi
  %i.bgk = add nuw nsw i64 %.133502, 1
  %i.bgl = mul nsw i64 %i.bgk, %7
  %i.bgm = getelementptr [4 x i8], ptr %6, i64 %i.bgl
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph3487, %bb.aa
  %.1529053486 = phi i64 [ 0, %.lr.ph3487 ], [ %i.bhh, %bb.aa ] ; 7 uses
  %.030613485 = phi <16 x float> [ zeroinitializer, %.lr.ph3487 ], [ %i.bgz, %bb.aa ]
  %.030633484 = phi <16 x float> [ zeroinitializer, %.lr.ph3487 ], [ %i.bha, %bb.aa ]
  %.030653483 = phi <16 x float> [ zeroinitializer, %.lr.ph3487 ], [ %i.bhb, %bb.aa ]
  %.030673482 = phi <16 x float> [ zeroinitializer, %.lr.ph3487 ], [ %i.bhc, %bb.aa ]
  %.030693481 = phi <16 x float> [ zeroinitializer, %.lr.ph3487 ], [ %i.bhd, %bb.aa ]
  %.030713480 = phi <16 x float> [ zeroinitializer, %.lr.ph3487 ], [ %i.bhe, %bb.aa ]
  %.030733479 = phi <16 x float> [ zeroinitializer, %.lr.ph3487 ], [ %i.bhf, %bb.aa ]
  %.030753478 = phi <16 x float> [ zeroinitializer, %.lr.ph3487 ], [ %i.bhg, %bb.aa ]
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %.1529053486
  %i.bgo = load <16 x float>, ptr %i.bgn, align 1, !tbaa !8 ; 2 uses
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %.1529053486
  %i.bgq = load <16 x float>, ptr %i.bgp, align 1, !tbaa !8 ; 2 uses
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.aze, i64 %.1529053486
  %i.bgs = load <16 x float>, ptr %i.bgr, align 1, !tbaa !8 ; 2 uses
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %i.azh, i64 %.1529053486
  %i.bgu = load <16 x float>, ptr %i.bgt, align 1, !tbaa !8 ; 2 uses
  %i.bgv = getelementptr [4 x i8], ptr %i.bgj, i64 %.1529053486
  %i.bgw = load <16 x float>, ptr %i.bgv, align 1, !tbaa !8 ; 4 uses
  %i.bgx = getelementptr [4 x i8], ptr %i.bgm, i64 %.1529053486
  %i.bgy = load <16 x float>, ptr %i.bgx, align 1, !tbaa !8 ; 4 uses
  %i.bgz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgo, <16 x float> %i.bgw, <16 x float> %.030613485) ; 3 uses
  %i.bha = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgq, <16 x float> %i.bgw, <16 x float> %.030633484) ; 3 uses
  %i.bhb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgs, <16 x float> %i.bgw, <16 x float> %.030653483) ; 3 uses
  %i.bhc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgu, <16 x float> %i.bgw, <16 x float> %.030673482) ; 3 uses
  %i.bhd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgo, <16 x float> %i.bgy, <16 x float> %.030693481) ; 3 uses
  %i.bhe = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgq, <16 x float> %i.bgy, <16 x float> %.030713480) ; 3 uses
  %i.bhf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgs, <16 x float> %i.bgy, <16 x float> %.030733479) ; 3 uses
  %i.bhg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgu, <16 x float> %i.bgy, <16 x float> %.030753478) ; 3 uses
  %i.bhh = add nuw nsw i64 %.1529053486, 16       ; 2 uses
  %i.bhi = icmp samesign ult i64 %i.bhh, %11
  br i1 %i.bhi, label %bb.aa, label %._crit_edge3488, !llvm.loop !122

._crit_edge3488:                                  ; preds = %bb.aa
  br i1 %.not3101, label %._crit_edge3488._crit_edge, label %bb.ab

._crit_edge3488._crit_edge:                       ; preds = %._crit_edge3488
  %.pre3933 = add nuw nsw i64 %.133502, 1
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge3488
  %i.bhj = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.azi, <16 x i1> %i.axd, <16 x float> zeroinitializer) ; 2 uses
  %i.bhk = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.azj, <16 x i1> %i.axd, <16 x float> zeroinitializer) ; 2 uses
  %i.bhl = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.azk, <16 x i1> %i.axd, <16 x float> zeroinitializer) ; 2 uses
  %i.bhm = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.azl, <16 x i1> %i.axd, <16 x float> zeroinitializer) ; 2 uses
  %i.bhn = mul nsw i64 %.133502, %7
  %gep4172.a = getelementptr [4 x i8], ptr %invariant.gep4171.a, i64 %i.bhn
  %i.bho = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4172.a, <16 x i1> %i.axd, <16 x float> zeroinitializer) ; 4 uses
  %i.bhp = add nuw nsw i64 %.133502, 1            ; 2 uses
  %i.bhq = mul nsw i64 %i.bhp, %7
  %gep4174.a = getelementptr [4 x i8], ptr %invariant.gep4173.a, i64 %i.bhq
  %i.bhr = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4174.a, <16 x i1> %i.axd, <16 x float> zeroinitializer) ; 4 uses
  %i.bhs = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhj, <16 x float> %i.bho, <16 x float> %i.bgz)
  %i.bht = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhk, <16 x float> %i.bho, <16 x float> %i.bha)
  %i.bhu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhl, <16 x float> %i.bho, <16 x float> %i.bhb)
  %i.bhv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhm, <16 x float> %i.bho, <16 x float> %i.bhc)
  %i.bhw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhj, <16 x float> %i.bhr, <16 x float> %i.bhd)
  %i.bhx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhk, <16 x float> %i.bhr, <16 x float> %i.bhe)
  %i.bhy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhl, <16 x float> %i.bhr, <16 x float> %i.bhf)
  %i.bhz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhm, <16 x float> %i.bhr, <16 x float> %i.bhg)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge3488._crit_edge, %bb.ab
  %.pre-phi3934 = phi i64 [ %.pre3933, %._crit_edge3488._crit_edge ], [ %i.bhp, %bb.ab ]
  %.13076 = phi <16 x float> [ %i.bhg, %._crit_edge3488._crit_edge ], [ %i.bhz, %bb.ab ] ; 2 uses
  %.13074 = phi <16 x float> [ %i.bhf, %._crit_edge3488._crit_edge ], [ %i.bhy, %bb.ab ] ; 2 uses
  %.13072 = phi <16 x float> [ %i.bhe, %._crit_edge3488._crit_edge ], [ %i.bhx, %bb.ab ] ; 2 uses
  %.13070 = phi <16 x float> [ %i.bhd, %._crit_edge3488._crit_edge ], [ %i.bhw, %bb.ab ] ; 2 uses
  %.13068 = phi <16 x float> [ %i.bhc, %._crit_edge3488._crit_edge ], [ %i.bhv, %bb.ab ] ; 2 uses
  %.13066 = phi <16 x float> [ %i.bhb, %._crit_edge3488._crit_edge ], [ %i.bhu, %bb.ab ] ; 2 uses
  %.13064 = phi <16 x float> [ %i.bha, %._crit_edge3488._crit_edge ], [ %i.bht, %bb.ab ] ; 2 uses
  %.13062 = phi <16 x float> [ %i.bgz, %._crit_edge3488._crit_edge ], [ %i.bhs, %bb.ab ] ; 2 uses
  %i.bia = shufflevector <16 x float> %.13062, <16 x float> %.13064, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bib = shufflevector <16 x float> %.13062, <16 x float> %.13064, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bic = shufflevector <16 x float> %.13066, <16 x float> %.13068, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bid = shufflevector <16 x float> %.13066, <16 x float> %.13068, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bie = shufflevector <16 x float> %i.bia, <16 x float> %i.bic, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bif = shufflevector <16 x float> %i.bia, <16 x float> %i.bic, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.big = shufflevector <16 x float> %i.bib, <16 x float> %i.bid, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bih = shufflevector <16 x float> %i.bib, <16 x float> %i.bid, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bii = fadd <16 x float> %i.bie, %i.bif
  %i.bij = fadd <16 x float> %i.big, %i.bih
  %i.bik = fadd <16 x float> %i.bii, %i.bij       ; 4 uses
  %i.bil = shufflevector <16 x float> %i.bik, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bim = shufflevector <16 x float> %i.bik, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bin = shufflevector <16 x float> %i.bik, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bio = shufflevector <16 x float> %i.bik, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bip = fadd <4 x float> %i.bil, %i.bim
  %i.biq = fadd <4 x float> %i.bin, %i.bio
  %i.bir = fadd <4 x float> %i.bip, %i.biq
  %i.bis = fmul <4 x float> %i.awl, %i.bir
  %i.bit = mul nsw i64 %.133502, %10
  %gep3499 = getelementptr [4 x i8], ptr %invariant.gep3468, i64 %i.bit ; 2 uses
  %i.biu = tail call <4 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3499, <4 x float> %i.awm, <4 x float> %i.bis) #9, !srcloc !123
  store <4 x float> %i.biu, ptr %gep3499, align 1
  %i.biv = shufflevector <16 x float> %.13070, <16 x float> %.13072, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.biw = shufflevector <16 x float> %.13070, <16 x float> %.13072, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bix = shufflevector <16 x float> %.13074, <16 x float> %.13076, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.biy = shufflevector <16 x float> %.13074, <16 x float> %.13076, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.biz = shufflevector <16 x float> %i.biv, <16 x float> %i.bix, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bja = shufflevector <16 x float> %i.biv, <16 x float> %i.bix, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bjb = shufflevector <16 x float> %i.biw, <16 x float> %i.biy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bjc = shufflevector <16 x float> %i.biw, <16 x float> %i.biy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bjd = fadd <16 x float> %i.biz, %i.bja
  %i.bje = fadd <16 x float> %i.bjb, %i.bjc
  %i.bjf = fadd <16 x float> %i.bjd, %i.bje       ; 4 uses
  %i.bjg = shufflevector <16 x float> %i.bjf, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bjh = shufflevector <16 x float> %i.bjf, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bji = shufflevector <16 x float> %i.bjf, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bjj = shufflevector <16 x float> %i.bjf, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bjk = fadd <4 x float> %i.bjg, %i.bjh
  %i.bjl = fadd <4 x float> %i.bji, %i.bjj
  %i.bjm = fadd <4 x float> %i.bjk, %i.bjl
  %i.bjn = fmul <4 x float> %i.awl, %i.bjm
  %i.bjo = mul nsw i64 %.pre-phi3934, %10
  %gep3501 = getelementptr [4 x i8], ptr %invariant.gep3468, i64 %i.bjo ; 2 uses
  %i.bjp = tail call <4 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3501, <4 x float> %i.awm, <4 x float> %i.bjn) #9, !srcloc !124
  store <4 x float> %i.bjp, ptr %gep3501, align 1
  %i.bjq = add nuw nsw i64 %.133502, 2            ; 3 uses
  %i.bjr = icmp slt i64 %i.bjq, %i.i
  br i1 %i.bjr, label %.lr.ph3487, label %.preheader3153, !llvm.loop !125

.lr.ph3509:                                       ; preds = %bb.af, %.preheader3150.lr.ph
  %.143518 = phi i64 [ %.13.lcssa, %.preheader3150.lr.ph ], [ %i.blp, %bb.af ] ; 4 uses
  %i.bjs = mul nsw i64 %.143518, %7
  %i.bjt = getelementptr [4 x i8], ptr %6, i64 %i.bjs
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph3509, %bb.ad
  %.1629063508 = phi i64 [ 0, %.lr.ph3509 ], [ %i.bki, %bb.ad ] ; 6 uses
  %.030213507 = phi <16 x float> [ zeroinitializer, %.lr.ph3509 ], [ %i.bkh, %bb.ad ]
  %.030233506 = phi <16 x float> [ zeroinitializer, %.lr.ph3509 ], [ %i.bkg, %bb.ad ]
  %.030253505 = phi <16 x float> [ zeroinitializer, %.lr.ph3509 ], [ %i.bkf, %bb.ad ]
  %.030273504 = phi <16 x float> [ zeroinitializer, %.lr.ph3509 ], [ %i.bke, %bb.ad ]
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bfu, i64 %.1629063508
  %i.bjv = load <16 x float>, ptr %i.bju, align 1, !tbaa !8
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %.1629063508
  %i.bjx = load <16 x float>, ptr %i.bjw, align 1, !tbaa !8
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bga, i64 %.1629063508
  %i.bjz = load <16 x float>, ptr %i.bjy, align 1, !tbaa !8
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bgd, i64 %.1629063508
  %i.bkb = load <16 x float>, ptr %i.bka, align 1, !tbaa !8
  %i.bkc = getelementptr [4 x i8], ptr %i.bjt, i64 %.1629063508
  %i.bkd = load <16 x float>, ptr %i.bkc, align 1, !tbaa !8 ; 4 uses
  %i.bke = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjv, <16 x float> %i.bkd, <16 x float> %.030273504) ; 3 uses
  %i.bkf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjx, <16 x float> %i.bkd, <16 x float> %.030253505) ; 3 uses
  %i.bkg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjz, <16 x float> %i.bkd, <16 x float> %.030233506) ; 3 uses
  %i.bkh = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkb, <16 x float> %i.bkd, <16 x float> %.030213507) ; 3 uses
  %i.bki = add nuw nsw i64 %.1629063508, 16       ; 2 uses
  %i.bkj = icmp samesign ult i64 %i.bki, %11
  br i1 %i.bkj, label %bb.ad, label %._crit_edge3510, !llvm.loop !126

._crit_edge3510:                                  ; preds = %bb.ad
  br i1 %.not3099, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge3510
  %i.bkk = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bge, <16 x i1> %i.axh, <16 x float> zeroinitializer)
  %i.bkl = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bgf, <16 x i1> %i.axh, <16 x float> zeroinitializer)
  %i.bkm = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bgg, <16 x i1> %i.axh, <16 x float> zeroinitializer)
  %i.bkn = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bgh, <16 x i1> %i.axh, <16 x float> zeroinitializer)
  %i.bko = mul nsw i64 %.143518, %7
  %gep4176.a = getelementptr [4 x i8], ptr %invariant.gep4175.a, i64 %i.bko
  %i.bkp = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4176.a, <16 x i1> %i.axh, <16 x float> zeroinitializer) ; 4 uses
  %i.bkq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkk, <16 x float> %i.bkp, <16 x float> %i.bke)
  %i.bkr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkl, <16 x float> %i.bkp, <16 x float> %i.bkf)
  %i.bks = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkm, <16 x float> %i.bkp, <16 x float> %i.bkg)
  %i.bkt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkn, <16 x float> %i.bkp, <16 x float> %i.bkh)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge3510
  %.13028 = phi <16 x float> [ %i.bkq, %bb.ae ], [ %i.bke, %._crit_edge3510 ] ; 2 uses
  %.13026 = phi <16 x float> [ %i.bkr, %bb.ae ], [ %i.bkf, %._crit_edge3510 ] ; 2 uses
  %.13024 = phi <16 x float> [ %i.bks, %bb.ae ], [ %i.bkg, %._crit_edge3510 ] ; 2 uses
  %.13022 = phi <16 x float> [ %i.bkt, %bb.ae ], [ %i.bkh, %._crit_edge3510 ] ; 2 uses
  %i.bku = shufflevector <16 x float> %.13028, <16 x float> %.13026, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bkv = shufflevector <16 x float> %.13028, <16 x float> %.13026, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bkw = shufflevector <16 x float> %.13024, <16 x float> %.13022, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bkx = shufflevector <16 x float> %.13024, <16 x float> %.13022, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bky = shufflevector <16 x float> %i.bku, <16 x float> %i.bkw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bkz = shufflevector <16 x float> %i.bku, <16 x float> %i.bkw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bla = shufflevector <16 x float> %i.bkv, <16 x float> %i.bkx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.blb = shufflevector <16 x float> %i.bkv, <16 x float> %i.bkx, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.blc = fadd <16 x float> %i.bky, %i.bkz
  %i.bld = fadd <16 x float> %i.bla, %i.blb
  %i.ble = fadd <16 x float> %i.blc, %i.bld       ; 4 uses
  %i.blf = shufflevector <16 x float> %i.ble, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.blg = shufflevector <16 x float> %i.ble, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.blh = shufflevector <16 x float> %i.ble, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bli = shufflevector <16 x float> %i.ble, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.blj = fadd <4 x float> %i.blf, %i.blg
  %i.blk = fadd <4 x float> %i.blh, %i.bli
  %i.bll = fadd <4 x float> %i.blj, %i.blk
  %i.blm = fmul <4 x float> %i.awl, %i.bll
  %i.bln = mul nsw i64 %.143518, %10
  %gep3517 = getelementptr [4 x i8], ptr %invariant.gep3468, i64 %i.bln ; 2 uses
  %i.blo = tail call <4 x float> asm "vfmadd231ps ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3517, <4 x float> %i.awm, <4 x float> %i.blm) #9, !srcloc !127
  store <4 x float> %i.blo, ptr %gep3517, align 1
  %i.blp = add i64 %.143518, 1                    ; 2 uses
  %exitcond3852.not = icmp eq i64 %i.blp, %1
  br i1 %exitcond3852.not, label %._crit_edge3519, label %.lr.ph3509, !llvm.loop !128

._crit_edge3519:                                  ; preds = %bb.af, %.preheader3153
  %i.blq = add nuw nsw i64 %.33521, 4             ; 3 uses
  %indvars.iv.next3854 = add nuw nsw i64 %indvars.iv3853, 4 ; 2 uses
  %i.blr = icmp slt i64 %i.blq, %i.d
  br i1 %i.blr, label %.preheader3155, label %.preheader3149.loopexit, !llvm.loop !129

.preheader3148:                                   ; preds = %.preheader3148.lr.ph, %._crit_edge3577
  %indvars.iv3857 = phi i64 [ %i.ayb, %.preheader3148.lr.ph ], [ %indvars.iv.next3858, %._crit_edge3577 ] ; 7 uses
  %.43579 = phi i64 [ %.3.lcssa, %.preheader3148.lr.ph ], [ %i.btz, %._crit_edge3577 ] ; 2 uses
  %invariant.gep3544 = getelementptr [4 x i8], ptr %9, i64 %.43579 ; 4 uses
  br i1 %i.axz, label %.preheader3145.lr.ph, label %.preheader3147

.preheader3145.lr.ph:                             ; preds = %.preheader3148
  %i.bls = mul nuw nsw i64 %2, %indvars.iv3857
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bls ; 2 uses
  %i.blu = or disjoint i64 %indvars.iv3857, 1
  %i.blv = mul nuw nsw i64 %2, %i.blu
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.blv ; 2 uses
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.blt, i64 %i.aya
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.blw, i64 %i.aya
  br label %.lr.ph3533

.preheader3142.loopexit:                          ; preds = %._crit_edge3577
  %i.blz = trunc nuw i64 %indvars.iv.next3858 to i32
  br label %.preheader3142

.preheader3142:                                   ; preds = %.preheader3142.loopexit, %.preheader3149
  %.13019.lcssa = phi i32 [ %.03018.lcssa, %.preheader3149 ], [ %i.blz, %.preheader3142.loopexit ]
  %.4.lcssa = phi i64 [ %.3.lcssa, %.preheader3149 ], [ %i.btz, %.preheader3142.loopexit ] ; 2 uses
  %i.bma = icmp slt i64 %.4.lcssa, %0
  br i1 %i.bma, label %.preheader3141.lr.ph, label %._crit_edge3624

.preheader3141.lr.ph:                             ; preds = %.preheader3142
  %i.bmb = icmp sgt i64 %1, 3
  %i.bmc = and i64 %2, 9223372036854775792        ; 10 uses
  %i.bmd = zext i32 %.13019.lcssa to i64
  %i.bme = and i64 %2, 15                         ; 2 uses
  %.not3091 = icmp eq i64 %i.bme, 0
  %notmask3092 = shl nsw i64 -1, %i.bme
  %i.bmf = trunc nsw i64 %notmask3092 to i16
  %i.bmg = xor i16 %i.bmf, -1
  %i.bmh = bitcast i16 %i.bmg to <16 x i1>        ; 5 uses
  %invariant.gep4191.a = getelementptr [4 x i8], ptr %6, i64 %i.bmc
  %invariant.gep4193.a = getelementptr [4 x i8], ptr %6, i64 %i.bmc
  %invariant.gep4195.a = getelementptr [4 x i8], ptr %6, i64 %i.bmc
  %invariant.gep4197.a = getelementptr [4 x i8], ptr %6, i64 %i.bmc
  %i.bmi = and i64 %2, 15                         ; 2 uses
  %.not3089 = icmp eq i64 %i.bmi, 0
  %notmask3090 = shl nsw i64 -1, %i.bmi
  %i.bmj = trunc nsw i64 %notmask3090 to i16
  %i.bmk = xor i16 %i.bmj, -1
  %i.bml = bitcast i16 %i.bmk to <16 x i1>        ; 3 uses
  %invariant.gep4199 = getelementptr [4 x i8], ptr %6, i64 %i.bmc
  %invariant.gep4201 = getelementptr [4 x i8], ptr %6, i64 %i.bmc
  %i.bmm = and i64 %2, 15                         ; 2 uses
  %.not3087 = icmp eq i64 %i.bmm, 0
  %notmask3088 = shl nsw i64 -1, %i.bmm
  %i.bmn = trunc nsw i64 %notmask3088 to i16
  %i.bmo = xor i16 %i.bmn, -1
  %i.bmp = bitcast i16 %i.bmo to <16 x i1>        ; 2 uses
  %invariant.gep4203 = getelementptr [4 x i8], ptr %6, i64 %i.bmc
  br label %.preheader3141

.preheader3147:                                   ; preds = %bb.ai, %.preheader3148
  %.15.lcssa = phi i64 [ 0, %.preheader3148 ], [ %i.bqs, %bb.ai ] ; 3 uses
  %i.bmq = icmp slt i64 %.15.lcssa, %i.i
  br i1 %i.bmq, label %.preheader3144.lr.ph, label %.preheader3146

.preheader3144.lr.ph:                             ; preds = %.preheader3147
  %i.bmr = mul nuw nsw i64 %2, %indvars.iv3857
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bmr ; 2 uses
  %i.bmt = or disjoint i64 %indvars.iv3857, 1
  %i.bmu = mul nuw nsw i64 %2, %i.bmt
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bmu ; 2 uses
  %i.bmw = getelementptr inbounds nuw [4 x i8], ptr %i.bms, i64 %i.aya
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.bmv, i64 %i.aya
  br label %.lr.ph3553

.lr.ph3533:                                       ; preds = %bb.ai, %.preheader3145.lr.ph
  %.153546 = phi i64 [ 0, %.preheader3145.lr.ph ], [ %i.bqs, %bb.ai ] ; 10 uses
  %i.bmy = mul nsw i64 %.153546, %7
  %i.bmz = getelementptr [4 x i8], ptr %6, i64 %i.bmy
  %i.bna = or disjoint i64 %.153546, 1
  %i.bnb = mul nsw i64 %i.bna, %7
  %i.bnc = getelementptr [4 x i8], ptr %6, i64 %i.bnb
  %i.bnd = or disjoint i64 %.153546, 2
  %i.bne = mul nsw i64 %i.bnd, %7
  %i.bnf = getelementptr [4 x i8], ptr %6, i64 %i.bne
  %i.bng = or disjoint i64 %.153546, 3
  %i.bnh = mul nsw i64 %i.bng, %7
  %i.bni = getelementptr [4 x i8], ptr %6, i64 %i.bnh
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph3533, %bb.ag
  %.1729073532 = phi i64 [ 0, %.lr.ph3533 ], [ %i.bod, %bb.ag ] ; 7 uses
  %.030013531 = phi <16 x float> [ zeroinitializer, %.lr.ph3533 ], [ %i.boc, %bb.ag ]
  %.030033530 = phi <16 x float> [ zeroinitializer, %.lr.ph3533 ], [ %i.bob, %bb.ag ]
  %.030053529 = phi <16 x float> [ zeroinitializer, %.lr.ph3533 ], [ %i.boa, %bb.ag ]
  %.030073528 = phi <16 x float> [ zeroinitializer, %.lr.ph3533 ], [ %i.bnz, %bb.ag ]
  %.030093527 = phi <16 x float> [ zeroinitializer, %.lr.ph3533 ], [ %i.bny, %bb.ag ]
  %.030113526 = phi <16 x float> [ zeroinitializer, %.lr.ph3533 ], [ %i.bnx, %bb.ag ]
  %.030133525 = phi <16 x float> [ zeroinitializer, %.lr.ph3533 ], [ %i.bnw, %bb.ag ]
  %.030153524 = phi <16 x float> [ zeroinitializer, %.lr.ph3533 ], [ %i.bnv, %bb.ag ]
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %i.blt, i64 %.1729073532
  %i.bnk = load <16 x float>, ptr %i.bnj, align 1, !tbaa !8 ; 4 uses
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %i.blw, i64 %.1729073532
  %i.bnm = load <16 x float>, ptr %i.bnl, align 1, !tbaa !8 ; 4 uses
  %i.bnn = getelementptr [4 x i8], ptr %i.bmz, i64 %.1729073532
  %i.bno = load <16 x float>, ptr %i.bnn, align 1, !tbaa !8 ; 2 uses
  %i.bnp = getelementptr [4 x i8], ptr %i.bnc, i64 %.1729073532
  %i.bnq = load <16 x float>, ptr %i.bnp, align 1, !tbaa !8 ; 2 uses
  %i.bnr = getelementptr [4 x i8], ptr %i.bnf, i64 %.1729073532
  %i.bns = load <16 x float>, ptr %i.bnr, align 1, !tbaa !8 ; 2 uses
  %i.bnt = getelementptr [4 x i8], ptr %i.bni, i64 %.1729073532
  %i.bnu = load <16 x float>, ptr %i.bnt, align 1, !tbaa !8 ; 2 uses
  %i.bnv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnk, <16 x float> %i.bno, <16 x float> %.030153524) ; 3 uses
  %i.bnw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnm, <16 x float> %i.bno, <16 x float> %.030133525) ; 3 uses
  %i.bnx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnk, <16 x float> %i.bnq, <16 x float> %.030113526) ; 3 uses
  %i.bny = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnm, <16 x float> %i.bnq, <16 x float> %.030093527) ; 3 uses
  %i.bnz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnk, <16 x float> %i.bns, <16 x float> %.030073528) ; 3 uses
  %i.boa = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnm, <16 x float> %i.bns, <16 x float> %.030053529) ; 3 uses
  %i.bob = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnk, <16 x float> %i.bnu, <16 x float> %.030033530) ; 3 uses
  %i.boc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnm, <16 x float> %i.bnu, <16 x float> %.030013531) ; 3 uses
  %i.bod = add nuw nsw i64 %.1729073532, 16       ; 2 uses
  %i.boe = icmp samesign ult i64 %i.bod, %11
  br i1 %i.boe, label %bb.ag, label %._crit_edge3534, !llvm.loop !130

._crit_edge3534:                                  ; preds = %bb.ag
  br i1 %.not3097, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge3534
  %i.bof = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.blx, <16 x i1> %i.ayf, <16 x float> zeroinitializer) ; 4 uses
  %i.bog = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bly, <16 x i1> %i.ayf, <16 x float> zeroinitializer) ; 4 uses
  %i.boh = mul nsw i64 %.153546, %7
  %gep4178.a = getelementptr [4 x i8], ptr %invariant.gep4177.a, i64 %i.boh
  %i.boi = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4178.a, <16 x i1> %i.ayf, <16 x float> zeroinitializer) ; 2 uses
  %i.boj = or disjoint i64 %.153546, 1
  %i.bok = mul nsw i64 %i.boj, %7
  %gep4180.a = getelementptr [4 x i8], ptr %invariant.gep4179.a, i64 %i.bok
  %i.bol = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4180.a, <16 x i1> %i.ayf, <16 x float> zeroinitializer) ; 2 uses
  %i.bom = or disjoint i64 %.153546, 2
  %i.bon = mul nsw i64 %i.bom, %7
  %gep4182.a = getelementptr [4 x i8], ptr %invariant.gep4181.a, i64 %i.bon
  %i.boo = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4182.a, <16 x i1> %i.ayf, <16 x float> zeroinitializer) ; 2 uses
  %i.bop = or disjoint i64 %.153546, 3
  %i.boq = mul nsw i64 %i.bop, %7
  %gep4184.a = getelementptr [4 x i8], ptr %invariant.gep4183.a, i64 %i.boq
  %i.bor = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4184.a, <16 x i1> %i.ayf, <16 x float> zeroinitializer) ; 2 uses
  %i.bos = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bof, <16 x float> %i.boi, <16 x float> %i.bnv)
  %i.bot = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bog, <16 x float> %i.boi, <16 x float> %i.bnw)
  %i.bou = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bof, <16 x float> %i.bol, <16 x float> %i.bnx)
  %i.bov = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bog, <16 x float> %i.bol, <16 x float> %i.bny)
  %i.bow = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bof, <16 x float> %i.boo, <16 x float> %i.bnz)
  %i.box = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bog, <16 x float> %i.boo, <16 x float> %i.boa)
  %i.boy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bof, <16 x float> %i.bor, <16 x float> %i.bob)
  %i.boz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bog, <16 x float> %i.bor, <16 x float> %i.boc)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge3534
  %.13016 = phi <16 x float> [ %i.bos, %bb.ah ], [ %i.bnv, %._crit_edge3534 ] ; 2 uses
  %.13014 = phi <16 x float> [ %i.bot, %bb.ah ], [ %i.bnw, %._crit_edge3534 ] ; 2 uses
  %.13012 = phi <16 x float> [ %i.bou, %bb.ah ], [ %i.bnx, %._crit_edge3534 ] ; 2 uses
  %.13010 = phi <16 x float> [ %i.bov, %bb.ah ], [ %i.bny, %._crit_edge3534 ] ; 2 uses
  %.13008 = phi <16 x float> [ %i.bow, %bb.ah ], [ %i.bnz, %._crit_edge3534 ] ; 2 uses
  %.13006 = phi <16 x float> [ %i.box, %bb.ah ], [ %i.boa, %._crit_edge3534 ] ; 2 uses
  %.13004 = phi <16 x float> [ %i.boy, %bb.ah ], [ %i.bob, %._crit_edge3534 ] ; 2 uses
  %.13002 = phi <16 x float> [ %i.boz, %bb.ah ], [ %i.boc, %._crit_edge3534 ] ; 2 uses
  %i.bpa = shufflevector <16 x float> %.13016, <16 x float> %.13012, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bpb = shufflevector <16 x float> %.13016, <16 x float> %.13012, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bpc = shufflevector <16 x float> %.13008, <16 x float> %.13004, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bpd = shufflevector <16 x float> %.13008, <16 x float> %.13004, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bpe = shufflevector <16 x float> %i.bpa, <16 x float> %i.bpc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bpf = shufflevector <16 x float> %i.bpa, <16 x float> %i.bpc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bpg = shufflevector <16 x float> %i.bpb, <16 x float> %i.bpd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bph = shufflevector <16 x float> %i.bpb, <16 x float> %i.bpd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bpi = fadd <16 x float> %i.bpe, %i.bpf
  %i.bpj = fadd <16 x float> %i.bpg, %i.bph
  %i.bpk = fadd <16 x float> %i.bpi, %i.bpj       ; 4 uses
  %i.bpl = shufflevector <16 x float> %i.bpk, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bpm = shufflevector <16 x float> %i.bpk, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bpn = shufflevector <16 x float> %i.bpk, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bpo = shufflevector <16 x float> %i.bpk, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bpp = fadd <4 x float> %i.bpl, %i.bpm
  %i.bpq = fadd <4 x float> %i.bpn, %i.bpo
  %i.bpr = fadd <4 x float> %i.bpp, %i.bpq
  %i.bps = fmul <4 x float> %i.awl, %i.bpr
  %i.bpt = mul nsw i64 %.153546, %10
  %gep3545 = getelementptr [4 x i8], ptr %invariant.gep3544, i64 %i.bpt ; 3 uses
  %i.bpu = tail call <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %gep3545, <4 x i32> %i.aws, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bpv = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bpu, <4 x float> %i.awm, <4 x float> %i.bps)
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr %gep3545, <4 x i1> splat (i1 true), <4 x i32> %i.aws, <4 x float> %i.bpv, i32 4)
  %i.bpw = shufflevector <16 x float> %.13014, <16 x float> %.13010, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bpx = shufflevector <16 x float> %.13014, <16 x float> %.13010, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bpy = shufflevector <16 x float> %.13006, <16 x float> %.13002, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bpz = shufflevector <16 x float> %.13006, <16 x float> %.13002, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bqa = shufflevector <16 x float> %i.bpw, <16 x float> %i.bpy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bqb = shufflevector <16 x float> %i.bpw, <16 x float> %i.bpy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bqc = shufflevector <16 x float> %i.bpx, <16 x float> %i.bpz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bqd = shufflevector <16 x float> %i.bpx, <16 x float> %i.bpz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bqe = fadd <16 x float> %i.bqa, %i.bqb
  %i.bqf = fadd <16 x float> %i.bqc, %i.bqd
  %i.bqg = fadd <16 x float> %i.bqe, %i.bqf       ; 4 uses
  %i.bqh = shufflevector <16 x float> %i.bqg, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bqi = shufflevector <16 x float> %i.bqg, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bqj = shufflevector <16 x float> %i.bqg, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bqk = shufflevector <16 x float> %i.bqg, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bql = fadd <4 x float> %i.bqh, %i.bqi
  %i.bqm = fadd <4 x float> %i.bqj, %i.bqk
  %i.bqn = fadd <4 x float> %i.bql, %i.bqm
  %i.bqo = fmul <4 x float> %i.awl, %i.bqn
  %i.bqp = getelementptr i8, ptr %gep3545, i64 4  ; 2 uses
  %i.bqq = tail call <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bqp, <4 x i32> %i.aws, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bqr = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bqq, <4 x float> %i.awm, <4 x float> %i.bqo)
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr %i.bqp, <4 x i1> splat (i1 true), <4 x i32> %i.aws, <4 x float> %i.bqr, i32 4)
  %i.bqs = add nuw nsw i64 %.153546, 4            ; 3 uses
  %i.bqt = icmp slt i64 %i.bqs, %i.h
  br i1 %i.bqt, label %.lr.ph3533, label %.preheader3147, !llvm.loop !131

.preheader3146:                                   ; preds = %bb.al, %.preheader3147
  %.16.lcssa = phi i64 [ %.15.lcssa, %.preheader3147 ], [ %i.bsw, %bb.al ] ; 2 uses
  %i.bqu = icmp slt i64 %.16.lcssa, %1
  br i1 %i.bqu, label %.preheader3143.lr.ph, label %._crit_edge3577

.preheader3143.lr.ph:                             ; preds = %.preheader3146
  %i.bqv = mul nuw nsw i64 %2, %indvars.iv3857
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bqv ; 2 uses
  %i.bqx = or disjoint i64 %indvars.iv3857, 1
  %i.bqy = mul nuw nsw i64 %2, %i.bqx
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bqy ; 2 uses
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.bqw, i64 %i.aya
  %i.brb = getelementptr inbounds nuw [4 x i8], ptr %i.bqz, i64 %i.aya
  br label %.lr.ph3569

.lr.ph3553:                                       ; preds = %bb.al, %.preheader3144.lr.ph
  %.163564 = phi i64 [ %.15.lcssa, %.preheader3144.lr.ph ], [ %i.bsw, %bb.al ] ; 7 uses
  %i.brc = mul nsw i64 %.163564, %7
  %i.brd = getelementptr [4 x i8], ptr %6, i64 %i.brc
  %i.bre = add nuw nsw i64 %.163564, 1
  %i.brf = mul nsw i64 %i.bre, %7
  %i.brg = getelementptr [4 x i8], ptr %6, i64 %i.brf
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph3553, %bb.aj
  %.1829083552 = phi i64 [ 0, %.lr.ph3553 ], [ %i.brt, %bb.aj ] ; 5 uses
  %.029613551 = phi <16 x float> [ zeroinitializer, %.lr.ph3553 ], [ %i.brs, %bb.aj ]
  %.029633550 = phi <16 x float> [ zeroinitializer, %.lr.ph3553 ], [ %i.brr, %bb.aj ]
  %.029653549 = phi <16 x float> [ zeroinitializer, %.lr.ph3553 ], [ %i.brq, %bb.aj ]
  %.029673548 = phi <16 x float> [ zeroinitializer, %.lr.ph3553 ], [ %i.brp, %bb.aj ]
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %i.bms, i64 %.1829083552
  %i.bri = load <16 x float>, ptr %i.brh, align 1, !tbaa !8 ; 2 uses
  %i.brj = getelementptr inbounds nuw [4 x i8], ptr %i.bmv, i64 %.1829083552
  %i.brk = load <16 x float>, ptr %i.brj, align 1, !tbaa !8 ; 2 uses
  %i.brl = getelementptr [4 x i8], ptr %i.brd, i64 %.1829083552
  %i.brm = load <16 x float>, ptr %i.brl, align 1, !tbaa !8 ; 2 uses
  %i.brn = getelementptr [4 x i8], ptr %i.brg, i64 %.1829083552
  %i.bro = load <16 x float>, ptr %i.brn, align 1, !tbaa !8 ; 2 uses
  %i.brp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bri, <16 x float> %i.brm, <16 x float> %.029673548) ; 3 uses
  %i.brq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.brk, <16 x float> %i.brm, <16 x float> %.029653549) ; 3 uses
  %i.brr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bri, <16 x float> %i.bro, <16 x float> %.029633550) ; 3 uses
  %i.brs = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.brk, <16 x float> %i.bro, <16 x float> %.029613551) ; 3 uses
  %i.brt = add nuw nsw i64 %.1829083552, 16       ; 2 uses
  %i.bru = icmp samesign ult i64 %i.brt, %11
  br i1 %i.bru, label %bb.aj, label %._crit_edge3554, !llvm.loop !132

._crit_edge3554:                                  ; preds = %bb.aj
  br i1 %.not3095, label %._crit_edge3554._crit_edge, label %bb.ak

._crit_edge3554._crit_edge:                       ; preds = %._crit_edge3554
  %.pre3935 = add nuw nsw i64 %.163564, 1
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge3554
  %i.brv = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bmw, <16 x i1> %i.ayj, <16 x float> zeroinitializer) ; 2 uses
  %i.brw = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bmx, <16 x i1> %i.ayj, <16 x float> zeroinitializer) ; 2 uses
  %i.brx = mul nsw i64 %.163564, %7
  %gep4186.a = getelementptr [4 x i8], ptr %invariant.gep4185.a, i64 %i.brx
  %i.bry = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4186.a, <16 x i1> %i.ayj, <16 x float> zeroinitializer) ; 2 uses
  %i.brz = add nuw nsw i64 %.163564, 1            ; 2 uses
  %i.bsa = mul nsw i64 %i.brz, %7
  %gep4188.a = getelementptr [4 x i8], ptr %invariant.gep4187.a, i64 %i.bsa
  %i.bsb = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4188.a, <16 x i1> %i.ayj, <16 x float> zeroinitializer) ; 2 uses
  %i.bsc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.brv, <16 x float> %i.bry, <16 x float> %i.brp)
  %i.bsd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.brw, <16 x float> %i.bry, <16 x float> %i.brq)
  %i.bse = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.brv, <16 x float> %i.bsb, <16 x float> %i.brr)
  %i.bsf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.brw, <16 x float> %i.bsb, <16 x float> %i.brs)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge3554._crit_edge, %bb.ak
  %.pre-phi3936 = phi i64 [ %.pre3935, %._crit_edge3554._crit_edge ], [ %i.brz, %bb.ak ]
  %.12968 = phi <16 x float> [ %i.brp, %._crit_edge3554._crit_edge ], [ %i.bsc, %bb.ak ]
  %.12966 = phi <16 x float> [ %i.brq, %._crit_edge3554._crit_edge ], [ %i.bsd, %bb.ak ]
  %.12964 = phi <16 x float> [ %i.brr, %._crit_edge3554._crit_edge ], [ %i.bse, %bb.ak ]
  %.12962 = phi <16 x float> [ %i.brs, %._crit_edge3554._crit_edge ], [ %i.bsf, %bb.ak ]
  %i.bsg = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12968)
  %i.bsh = mul nsw i64 %.163564, %10
  %gep3561 = getelementptr [4 x i8], ptr %invariant.gep3544, i64 %i.bsh ; 2 uses
  %i.bsi = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12966)
  %i.bsj = load <2 x float>, ptr %gep3561, align 4, !tbaa !110
  %i.bsk = fmul <2 x float> %i.ayr, %i.bsj
  %i.bsl = insertelement <2 x float> poison, float %i.bsg, i64 0
  %i.bsm = insertelement <2 x float> %i.bsl, float %i.bsi, i64 1
  %i.bsn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.bsm, <2 x float> %i.bsk)
  store <2 x float> %i.bsn, ptr %gep3561, align 4, !tbaa !110
  %i.bso = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12964)
  %i.bsp = mul nsw i64 %.pre-phi3936, %10
  %gep3563 = getelementptr [4 x i8], ptr %invariant.gep3544, i64 %i.bsp ; 2 uses
  %i.bsq = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12962)
  %i.bsr = load <2 x float>, ptr %gep3563, align 4, !tbaa !110
  %i.bss = fmul <2 x float> %i.ayr, %i.bsr
  %i.bst = insertelement <2 x float> poison, float %i.bso, i64 0
  %i.bsu = insertelement <2 x float> %i.bst, float %i.bsq, i64 1
  %i.bsv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayp, <2 x float> %i.bsu, <2 x float> %i.bss)
  store <2 x float> %i.bsv, ptr %gep3563, align 4, !tbaa !110
  %i.bsw = add nuw nsw i64 %.163564, 2            ; 3 uses
  %i.bsx = icmp slt i64 %i.bsw, %i.i
  br i1 %i.bsx, label %.lr.ph3553, label %.preheader3146, !llvm.loop !133

.lr.ph3569:                                       ; preds = %bb.ao, %.preheader3143.lr.ph
  %.173576 = phi i64 [ %.16.lcssa, %.preheader3143.lr.ph ], [ %i.bty, %bb.ao ] ; 4 uses
  %i.bsy = mul nsw i64 %.173576, %7
  %i.bsz = getelementptr [4 x i8], ptr %6, i64 %i.bsy
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph3569, %bb.am
  %.1929093568 = phi i64 [ 0, %.lr.ph3569 ], [ %i.bti, %bb.am ] ; 4 uses
  %.029493567 = phi <16 x float> [ zeroinitializer, %.lr.ph3569 ], [ %i.bth, %bb.am ]
  %.029513566 = phi <16 x float> [ zeroinitializer, %.lr.ph3569 ], [ %i.btg, %bb.am ]
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %i.bqw, i64 %.1929093568
  %i.btb = load <16 x float>, ptr %i.bta, align 1, !tbaa !8
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %i.bqz, i64 %.1929093568
  %i.btd = load <16 x float>, ptr %i.btc, align 1, !tbaa !8
  %i.bte = getelementptr [4 x i8], ptr %i.bsz, i64 %.1929093568
  %i.btf = load <16 x float>, ptr %i.bte, align 1, !tbaa !8 ; 2 uses
  %i.btg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.btb, <16 x float> %i.btf, <16 x float> %.029513566) ; 3 uses
  %i.bth = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.btd, <16 x float> %i.btf, <16 x float> %.029493567) ; 3 uses
  %i.bti = add nuw nsw i64 %.1929093568, 16       ; 2 uses
  %i.btj = icmp samesign ult i64 %i.bti, %11
  br i1 %i.btj, label %bb.am, label %._crit_edge3570, !llvm.loop !134

._crit_edge3570:                                  ; preds = %bb.am
  br i1 %.not3093, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge3570
  %i.btk = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bra, <16 x i1> %i.ayn, <16 x float> zeroinitializer)
  %i.btl = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.brb, <16 x i1> %i.ayn, <16 x float> zeroinitializer)
  %i.btm = mul nsw i64 %.173576, %7
  %gep4190.a = getelementptr [4 x i8], ptr %invariant.gep4189.a, i64 %i.btm
  %i.btn = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4190.a, <16 x i1> %i.ayn, <16 x float> zeroinitializer) ; 2 uses
  %i.bto = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.btk, <16 x float> %i.btn, <16 x float> %i.btg)
  %i.btp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.btl, <16 x float> %i.btn, <16 x float> %i.bth)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge3570
  %.12952 = phi <16 x float> [ %i.bto, %bb.an ], [ %i.btg, %._crit_edge3570 ]
  %.12950 = phi <16 x float> [ %i.btp, %bb.an ], [ %i.bth, %._crit_edge3570 ]
  %i.btq = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12952)
  %i.btr = mul nsw i64 %.173576, %10
  %gep3575 = getelementptr [4 x i8], ptr %invariant.gep3544, i64 %i.btr ; 2 uses
  %i.bts = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12950)
  %i.btt = load <2 x float>, ptr %gep3575, align 4, !tbaa !110
  %i.btu = fmul <2 x float> %i.ayv, %i.btt
  %i.btv = insertelement <2 x float> poison, float %i.btq, i64 0
  %i.btw = insertelement <2 x float> %i.btv, float %i.bts, i64 1
  %i.btx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayt, <2 x float> %i.btw, <2 x float> %i.btu)
  store <2 x float> %i.btx, ptr %gep3575, align 4, !tbaa !110
  %i.bty = add nuw nsw i64 %.173576, 1            ; 2 uses
  %exitcond3856.not = icmp eq i64 %i.bty, %1
  br i1 %exitcond3856.not, label %._crit_edge3577, label %.lr.ph3569, !llvm.loop !135

._crit_edge3577:                                  ; preds = %bb.ao, %.preheader3146
  %i.btz = add nuw nsw i64 %.43579, 2             ; 3 uses
  %indvars.iv.next3858 = add nuw nsw i64 %indvars.iv3857, 2 ; 2 uses
  %i.bua = icmp slt i64 %i.btz, %i.e
  br i1 %i.bua, label %.preheader3148, label %.preheader3142.loopexit, !llvm.loop !136

.preheader3141:                                   ; preds = %.preheader3141.lr.ph, %._crit_edge3621.a
  %indvars.iv3861 = phi i64 [ %i.bmd, %.preheader3141.lr.ph ], [ %indvars.iv.next3862, %._crit_edge3621.a ] ; 4 uses
  %.53623 = phi i64 [ %.4.lcssa, %.preheader3141.lr.ph ], [ %i.bzd, %._crit_edge3621.a ] ; 2 uses
  %invariant.gep3594 = getelementptr [4 x i8], ptr %9, i64 %.53623 ; 4 uses
  br i1 %i.bmb, label %.preheader3138.lr.ph, label %.preheader3140

.preheader3138.lr.ph:                             ; preds = %.preheader3141
  %i.bub = mul nuw nsw i64 %2, %indvars.iv3861
  %i.buc = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bub ; 2 uses
  %i.bud = getelementptr inbounds nuw [4 x i8], ptr %i.buc, i64 %i.bmc
  br label %.lr.ph3587

.preheader3140:                                   ; preds = %bb.ar, %.preheader3141
  %.18.lcssa = phi i64 [ 0, %.preheader3141 ], [ %i.bwv, %bb.ar ] ; 3 uses
  %i.bue = icmp slt i64 %.18.lcssa, %i.i
  br i1 %i.bue, label %.preheader3137.lr.ph, label %.preheader3139

.preheader3137.lr.ph:                             ; preds = %.preheader3140
  %i.buf = mul nuw nsw i64 %2, %indvars.iv3861
  %i.bug = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.buf ; 2 uses
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr %i.bug, i64 %i.bmc
  br label %.lr.ph3601

.lr.ph3587:                                       ; preds = %bb.ar, %.preheader3138.lr.ph
  %.183596 = phi i64 [ 0, %.preheader3138.lr.ph ], [ %i.bwv, %bb.ar ] ; 10 uses
  %i.bui = mul nsw i64 %.183596, %7
  %i.buj = getelementptr [4 x i8], ptr %6, i64 %i.bui
  %i.buk = or disjoint i64 %.183596, 1
  %i.bul = mul nsw i64 %i.buk, %7
  %i.bum = getelementptr [4 x i8], ptr %6, i64 %i.bul
  %i.bun = or disjoint i64 %.183596, 2
  %i.buo = mul nsw i64 %i.bun, %7
  %i.bup = getelementptr [4 x i8], ptr %6, i64 %i.buo
  %i.buq = or disjoint i64 %.183596, 3
  %i.bur = mul nsw i64 %i.buq, %7
  %i.bus = getelementptr [4 x i8], ptr %6, i64 %i.bur
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph3587, %bb.ap
  %.2029103586 = phi i64 [ 0, %.lr.ph3587 ], [ %i.bvh, %bb.ap ] ; 6 uses
  %.029353585 = phi <16 x float> [ zeroinitializer, %.lr.ph3587 ], [ %i.bvg, %bb.ap ]
  %.029373584 = phi <16 x float> [ zeroinitializer, %.lr.ph3587 ], [ %i.bvf, %bb.ap ]
  %.029393583 = phi <16 x float> [ zeroinitializer, %.lr.ph3587 ], [ %i.bve, %bb.ap ]
  %.029413582 = phi <16 x float> [ zeroinitializer, %.lr.ph3587 ], [ %i.bvd, %bb.ap ]
  %i.but = getelementptr inbounds nuw [4 x i8], ptr %i.buc, i64 %.2029103586
  %i.buu = load <16 x float>, ptr %i.but, align 1, !tbaa !8 ; 4 uses
  %i.buv = getelementptr [4 x i8], ptr %i.buj, i64 %.2029103586
  %i.buw = load <16 x float>, ptr %i.buv, align 1, !tbaa !8
  %i.bux = getelementptr [4 x i8], ptr %i.bum, i64 %.2029103586
  %i.buy = load <16 x float>, ptr %i.bux, align 1, !tbaa !8
  %i.buz = getelementptr [4 x i8], ptr %i.bup, i64 %.2029103586
  %i.bva = load <16 x float>, ptr %i.buz, align 1, !tbaa !8
  %i.bvb = getelementptr [4 x i8], ptr %i.bus, i64 %.2029103586
  %i.bvc = load <16 x float>, ptr %i.bvb, align 1, !tbaa !8
  %i.bvd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.buu, <16 x float> %i.buw, <16 x float> %.029413582) ; 3 uses
  %i.bve = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.buu, <16 x float> %i.buy, <16 x float> %.029393583) ; 3 uses
  %i.bvf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.buu, <16 x float> %i.bva, <16 x float> %.029373584) ; 3 uses
  %i.bvg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.buu, <16 x float> %i.bvc, <16 x float> %.029353585) ; 3 uses
  %i.bvh = add nuw nsw i64 %.2029103586, 16       ; 2 uses
  %i.bvi = icmp samesign ult i64 %i.bvh, %11
  br i1 %i.bvi, label %bb.ap, label %._crit_edge3588, !llvm.loop !137

._crit_edge3588:                                  ; preds = %bb.ap
  br i1 %.not3091, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge3588
  %i.bvj = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bud, <16 x i1> %i.bmh, <16 x float> zeroinitializer) ; 4 uses
  %i.bvk = mul nsw i64 %.183596, %7
  %gep4192.a = getelementptr [4 x i8], ptr %invariant.gep4191.a, i64 %i.bvk
  %i.bvl = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4192.a, <16 x i1> %i.bmh, <16 x float> zeroinitializer)
  %i.bvm = or disjoint i64 %.183596, 1
  %i.bvn = mul nsw i64 %i.bvm, %7
  %gep4194.a = getelementptr [4 x i8], ptr %invariant.gep4193.a, i64 %i.bvn
  %i.bvo = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4194.a, <16 x i1> %i.bmh, <16 x float> zeroinitializer)
  %i.bvp = or disjoint i64 %.183596, 2
  %i.bvq = mul nsw i64 %i.bvp, %7
  %gep4196.a = getelementptr [4 x i8], ptr %invariant.gep4195.a, i64 %i.bvq
  %i.bvr = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4196.a, <16 x i1> %i.bmh, <16 x float> zeroinitializer)
  %i.bvs = or disjoint i64 %.183596, 3
  %i.bvt = mul nsw i64 %i.bvs, %7
  %gep4198.a = getelementptr [4 x i8], ptr %invariant.gep4197.a, i64 %i.bvt
  %i.bvu = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4198.a, <16 x i1> %i.bmh, <16 x float> zeroinitializer)
  %i.bvv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvj, <16 x float> %i.bvl, <16 x float> %i.bvd)
  %i.bvw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvj, <16 x float> %i.bvo, <16 x float> %i.bve)
  %i.bvx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvj, <16 x float> %i.bvr, <16 x float> %i.bvf)
  %i.bvy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvj, <16 x float> %i.bvu, <16 x float> %i.bvg)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge3588
  %.12942 = phi <16 x float> [ %i.bvv, %bb.aq ], [ %i.bvd, %._crit_edge3588 ] ; 2 uses
  %.12940 = phi <16 x float> [ %i.bvw, %bb.aq ], [ %i.bve, %._crit_edge3588 ] ; 2 uses
  %.12938 = phi <16 x float> [ %i.bvx, %bb.aq ], [ %i.bvf, %._crit_edge3588 ] ; 2 uses
  %.12936 = phi <16 x float> [ %i.bvy, %bb.aq ], [ %i.bvg, %._crit_edge3588 ] ; 2 uses
  %i.bvz = shufflevector <16 x float> %.12942, <16 x float> %.12940, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bwa = shufflevector <16 x float> %.12942, <16 x float> %.12940, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bwb = shufflevector <16 x float> %.12938, <16 x float> %.12936, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bwc = shufflevector <16 x float> %.12938, <16 x float> %.12936, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bwd = shufflevector <16 x float> %i.bvz, <16 x float> %i.bwb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bwe = shufflevector <16 x float> %i.bvz, <16 x float> %i.bwb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bwf = shufflevector <16 x float> %i.bwa, <16 x float> %i.bwc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bwg = shufflevector <16 x float> %i.bwa, <16 x float> %i.bwc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bwh = fadd <16 x float> %i.bwd, %i.bwe
  %i.bwi = fadd <16 x float> %i.bwf, %i.bwg
  %i.bwj = fadd <16 x float> %i.bwh, %i.bwi       ; 4 uses
  %i.bwk = shufflevector <16 x float> %i.bwj, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bwl = shufflevector <16 x float> %i.bwj, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bwm = shufflevector <16 x float> %i.bwj, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bwn = shufflevector <16 x float> %i.bwj, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bwo = fadd <4 x float> %i.bwk, %i.bwl
  %i.bwp = fadd <4 x float> %i.bwm, %i.bwn
  %i.bwq = fadd <4 x float> %i.bwo, %i.bwp
  %i.bwr = fmul <4 x float> %i.awl, %i.bwq
  %i.bws = mul nsw i64 %.183596, %10
  %gep3595 = getelementptr [4 x i8], ptr %invariant.gep3594, i64 %i.bws ; 2 uses
  %i.bwt = tail call <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %gep3595, <4 x i32> %i.aws, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bwu = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bwt, <4 x float> %i.awm, <4 x float> %i.bwr)
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr %gep3595, <4 x i1> splat (i1 true), <4 x i32> %i.aws, <4 x float> %i.bwu, i32 4)
  %i.bwv = add nuw nsw i64 %.183596, 4            ; 3 uses
  %i.bww = icmp slt i64 %i.bwv, %i.h
  br i1 %i.bww, label %.lr.ph3587, label %.preheader3140, !llvm.loop !138

.preheader3139:                                   ; preds = %bb.au, %.preheader3140
  %.19.lcssa = phi i64 [ %.18.lcssa, %.preheader3140 ], [ %i.byi, %bb.au ] ; 2 uses
  %i.bwx = icmp slt i64 %.19.lcssa, %1
  br i1 %i.bwx, label %.preheader3136.lr.ph, label %._crit_edge3621.a

.preheader3136.lr.ph:                             ; preds = %.preheader3139
  %i.bwy = mul nuw nsw i64 %2, %indvars.iv3861
  %i.bwz = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.bwy ; 2 uses
  %i.bxa = getelementptr inbounds nuw [4 x i8], ptr %i.bwz, i64 %i.bmc
  br label %.lr.ph3614

.lr.ph3601:                                       ; preds = %bb.au, %.preheader3137.lr.ph
  %.193610 = phi i64 [ %.18.lcssa, %.preheader3137.lr.ph ], [ %i.byi, %bb.au ] ; 7 uses
  %i.bxb = mul nsw i64 %.193610, %7
  %i.bxc = getelementptr [4 x i8], ptr %6, i64 %i.bxb
  %i.bxd = add nuw nsw i64 %.193610, 1
  %i.bxe = mul nsw i64 %i.bxd, %7
  %i.bxf = getelementptr [4 x i8], ptr %6, i64 %i.bxe
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph3601, %bb.as
  %.213600 = phi i64 [ 0, %.lr.ph3601 ], [ %i.bxo, %bb.as ] ; 4 uses
  %.029133599 = phi <16 x float> [ zeroinitializer, %.lr.ph3601 ], [ %i.bxn, %bb.as ]
  %.029153598 = phi <16 x float> [ zeroinitializer, %.lr.ph3601 ], [ %i.bxm, %bb.as ]
  %i.bxg = getelementptr inbounds nuw [4 x i8], ptr %i.bug, i64 %.213600
  %i.bxh = load <16 x float>, ptr %i.bxg, align 1, !tbaa !8 ; 2 uses
  %i.bxi = getelementptr [4 x i8], ptr %i.bxc, i64 %.213600
  %i.bxj = load <16 x float>, ptr %i.bxi, align 1, !tbaa !8
  %i.bxk = getelementptr [4 x i8], ptr %i.bxf, i64 %.213600
  %i.bxl = load <16 x float>, ptr %i.bxk, align 1, !tbaa !8
  %i.bxm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxh, <16 x float> %i.bxj, <16 x float> %.029153598) ; 3 uses
  %i.bxn = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxh, <16 x float> %i.bxl, <16 x float> %.029133599) ; 3 uses
  %i.bxo = add nuw nsw i64 %.213600, 16           ; 2 uses
  %i.bxp = icmp samesign ult i64 %i.bxo, %11
  br i1 %i.bxp, label %bb.as, label %._crit_edge3602, !llvm.loop !139

._crit_edge3602:                                  ; preds = %bb.as
  br i1 %.not3089, label %._crit_edge3602._crit_edge, label %bb.at

._crit_edge3602._crit_edge:                       ; preds = %._crit_edge3602
  %.pre3937 = add nuw nsw i64 %.193610, 1
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge3602
  %i.bxq = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.buh, <16 x i1> %i.bml, <16 x float> zeroinitializer) ; 2 uses
  %i.bxr = mul nsw i64 %.193610, %7
  %gep4200 = getelementptr [4 x i8], ptr %invariant.gep4199, i64 %i.bxr
  %i.bxs = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4200, <16 x i1> %i.bml, <16 x float> zeroinitializer)
  %i.bxt = add nuw nsw i64 %.193610, 1            ; 2 uses
  %i.bxu = mul nsw i64 %i.bxt, %7
  %gep4202 = getelementptr [4 x i8], ptr %invariant.gep4201, i64 %i.bxu
  %i.bxv = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4202, <16 x i1> %i.bml, <16 x float> zeroinitializer)
  %i.bxw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxq, <16 x float> %i.bxs, <16 x float> %i.bxm)
  %i.bxx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxq, <16 x float> %i.bxv, <16 x float> %i.bxn)
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge3602._crit_edge, %bb.at
  %.pre-phi3938 = phi i64 [ %.pre3937, %._crit_edge3602._crit_edge ], [ %i.bxt, %bb.at ]
  %.12916 = phi <16 x float> [ %i.bxm, %._crit_edge3602._crit_edge ], [ %i.bxw, %bb.at ]
  %.12914 = phi <16 x float> [ %i.bxn, %._crit_edge3602._crit_edge ], [ %i.bxx, %bb.at ]
  %i.bxy = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12916)
  %i.bxz = mul nsw i64 %.193610, %10
  %gep3607 = getelementptr [4 x i8], ptr %invariant.gep3594, i64 %i.bxz ; 2 uses
  %i.bya = load float, ptr %gep3607, align 4, !tbaa !110
  %i.byb = fmul float %8, %i.bya
  %i.byc = tail call float @llvm.fmuladd.f32(float %5, float %i.bxy, float %i.byb)
  store float %i.byc, ptr %gep3607, align 4, !tbaa !110
  %i.byd = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12914)
  %i.bye = mul nsw i64 %.pre-phi3938, %10
  %gep3609 = getelementptr [4 x i8], ptr %invariant.gep3594, i64 %i.bye ; 2 uses
  %i.byf = load float, ptr %gep3609, align 4, !tbaa !110
  %i.byg = fmul float %8, %i.byf
  %i.byh = tail call float @llvm.fmuladd.f32(float %5, float %i.byd, float %i.byg)
  store float %i.byh, ptr %gep3609, align 4, !tbaa !110
  %i.byi = add nuw nsw i64 %.193610, 2            ; 3 uses
  %i.byj = icmp slt i64 %i.byi, %i.i
  br i1 %i.byj, label %.lr.ph3601, label %.preheader3139, !llvm.loop !140

.lr.ph3614:                                       ; preds = %bb.ax, %.preheader3136.lr.ph
  %.203620 = phi i64 [ %.19.lcssa, %.preheader3136.lr.ph ], [ %i.bzc, %bb.ax ] ; 4 uses
  %i.byk = mul nsw i64 %.203620, %7
  %i.byl = getelementptr [4 x i8], ptr %6, i64 %i.byk
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph3614, %bb.av
  %.223613 = phi i64 [ 0, %.lr.ph3614 ], [ %i.byr, %bb.av ] ; 3 uses
  %.029113612 = phi <16 x float> [ zeroinitializer, %.lr.ph3614 ], [ %i.byq, %bb.av ]
  %i.bym = getelementptr inbounds nuw [4 x i8], ptr %i.bwz, i64 %.223613
  %i.byn = load <16 x float>, ptr %i.bym, align 1, !tbaa !8
  %i.byo = getelementptr [4 x i8], ptr %i.byl, i64 %.223613
  %i.byp = load <16 x float>, ptr %i.byo, align 1, !tbaa !8
  %i.byq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.byn, <16 x float> %i.byp, <16 x float> %.029113612) ; 3 uses
  %i.byr = add nuw nsw i64 %.223613, 16           ; 2 uses
  %i.bys = icmp samesign ult i64 %i.byr, %11
  br i1 %i.bys, label %bb.av, label %._crit_edge3615, !llvm.loop !141

._crit_edge3615:                                  ; preds = %bb.av
  br i1 %.not3087, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge3615
  %i.byt = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bxa, <16 x i1> %i.bmp, <16 x float> zeroinitializer)
  %i.byu = mul nsw i64 %.203620, %7
  %gep4204 = getelementptr [4 x i8], ptr %invariant.gep4203, i64 %i.byu
  %i.byv = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep4204, <16 x i1> %i.bmp, <16 x float> zeroinitializer)
  %i.byw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.byt, <16 x float> %i.byv, <16 x float> %i.byq)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge3615
  %.12912 = phi <16 x float> [ %i.byw, %bb.aw ], [ %i.byq, %._crit_edge3615 ]
  %i.byx = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12912)
  %i.byy = mul nsw i64 %.203620, %10
  %gep3619 = getelementptr [4 x i8], ptr %invariant.gep3594, i64 %i.byy ; 2 uses
  %i.byz = load float, ptr %gep3619, align 4, !tbaa !110
  %i.bza = fmul float %8, %i.byz
  %i.bzb = tail call float @llvm.fmuladd.f32(float %5, float %i.byx, float %i.bza)
  store float %i.bzb, ptr %gep3619, align 4, !tbaa !110
  %i.bzc = add nuw nsw i64 %.203620, 1            ; 2 uses
  %exitcond3860.not = icmp eq i64 %i.bzc, %1
  br i1 %exitcond3860.not, label %._crit_edge3621.a, label %.lr.ph3614, !llvm.loop !142

._crit_edge3621.a:                                ; preds = %bb.ax, %.preheader3139
  %i.bzd = add i64 %.53623, 1                     ; 2 uses
  %indvars.iv.next3862 = add nuw nsw i64 %indvars.iv3861, 1
  %exitcond3864.not = icmp eq i64 %i.bzd, %0
  br i1 %exitcond3864.not, label %._crit_edge3624, label %.preheader3141, !llvm.loop !143

._crit_edge3624:                                  ; preds = %._crit_edge3621.a, %.preheader3142
  tail call void @free(ptr noundef %i.ask) #3
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge3676, %.preheader3132, %._crit_edge3624, %._crit_edge3407
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #2

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv4.sf(ptr, <4 x i1>, <4 x i32>, <4 x float>, i32 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr captures(none), <16 x i1>, <16 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

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
!11 = !{i64 2153593657}
!12 = !{i64 2153593937}
!13 = !{i64 2153594217}
!14 = !{i64 2153594497}
!15 = !{i64 2153594777}
!16 = !{i64 2153595057}
!17 = !{i64 2153595337}
!18 = !{i64 2153595617}
!19 = !{i64 2153595897}
!20 = !{i64 2153596177}
!21 = !{i64 2153596457}
!22 = !{i64 2153596737}
!23 = !{i64 2153597017}
!24 = !{i64 2153597297}
!25 = !{i64 2153597577}
!26 = !{i64 2153597857}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = !{i64 2153599859}
!30 = !{i64 2153600139}
!31 = !{i64 2153600419}
!32 = !{i64 2153600699}
!33 = !{i64 2153600979}
!34 = !{i64 2153601259}
!35 = !{i64 2153601539}
!36 = !{i64 2153601819}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{i64 2153603098}
!42 = !{i64 2153603378}
!43 = !{i64 2153603658}
!44 = !{i64 2153603938}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = !{i64 2153610835}
!49 = !{i64 2153611115}
!50 = !{i64 2153611395}
!51 = !{i64 2153611675}
!52 = !{i64 2153611955}
!53 = !{i64 2153612235}
!54 = !{i64 2153612515}
!55 = !{i64 2153612795}
!56 = !{i64 2153613075}
!57 = !{i64 2153613355}
!58 = !{i64 2153613635}
!59 = !{i64 2153613915}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !40}
!63 = !{i64 2153615139}
!64 = !{i64 2153615419}
!65 = !{i64 2153615699}
!66 = !{i64 2153615979}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !40}
!70 = !{i64 2153616800}
!71 = !{i64 2153617080}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = !{i64 2153618887}
!76 = !{i64 2153619167}
!77 = !{i64 2153619447}
!78 = !{i64 2153619727}
!79 = !{i64 2153620007}
!80 = !{i64 2153620287}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !40}
!84 = !{i64 2153621994}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !40}
!88 = !{i64 2153621122}
!89 = !{i64 2153621402}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = !{i64 2153627874}
!94 = !{i64 2153628184}
!95 = !{i64 2153628494}
!96 = !{i64 2153628804}
!97 = !{i64 2153629114}
!98 = !{i64 2153629424}
!99 = distinct !{!99, !10}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !40}
!102 = !{i64 2153630301}
!103 = !{i64 2153630611}
!104 = distinct !{!104, !10}
end_hunk_1
