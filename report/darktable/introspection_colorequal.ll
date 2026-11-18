Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorequal?download=true
inline.NumInlined: 278
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 67
begin_hunk_0_@process:bb.a
  %index740 = phi i64 [ 0, %vector.ph735 ], [ %index.next757, %vector.body739 ] ; 4 uses
  %i.adp = shl i64 %index740, 1                   ; 2 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.adp ; 2 uses
  %wide.vec741 = load <16 x float>, ptr %i.adq, align 4, !tbaa !12, !alias.scope !366 ; 2 uses
  %strided.vec742 = shufflevector <16 x float> %wide.vec741, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec743 = shufflevector <16 x float> %wide.vec741, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.adr = shl i64 %index740, 4
  %i.ads = getelementptr inbounds nuw i8, ptr %.0105.i, i64 %i.adr
  %wide.vec744 = load <32 x float>, ptr %i.ads, align 64, !tbaa !12, !alias.scope !364, !noalias !345 ; 4 uses
  %strided.vec745 = shufflevector <32 x float> %wide.vec744, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec746 = shufflevector <32 x float> %wide.vec744, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec747 = shufflevector <32 x float> %wide.vec744, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec748 = shufflevector <32 x float> %wide.vec744, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.adt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec745, %strided.vec742
  %i.adu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec746, %strided.vec743
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.adp
  %wide.vec749 = load <16 x float>, ptr %i.adv, align 64, !tbaa !12, !alias.scope !365, !noalias !345 ; 2 uses
  %strided.vec750 = shufflevector <16 x float> %wide.vec749, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec751 = shufflevector <16 x float> %wide.vec749, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.adw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec747, %strided.vec742
  %i.adx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec748, %strided.vec743
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %index740
  %wide.load = load <8 x float>, ptr %i.ady, align 4, !tbaa !12, !alias.scope !367
  %i.adz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat738 ; 3 uses
  %i.aea = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.adz, splat (float f0x3F7FF000)
  %i.aeb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.adz, splat (float -1.000000e+00)
  %i.aec = select reassoc nsz arcp contract afn <8 x i1> %i.aeb, <8 x float> splat (float -1.000000e+00), <8 x float> %i.adz
  %i.aed = fmul reassoc nsz arcp contract afn <8 x float> %i.aec, splat (float 4.096000e+03)
  %i.aee = fadd reassoc nsz arcp contract afn <8 x float> %i.aed, splat (float 4.096000e+03)
  %i.aef = select <8 x i1> %i.aea, <8 x float> splat (float 8.191000e+03), <8 x float> %i.aee ; 2 uses
  %i.aeg = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.aef) ; 2 uses
  %i.aeh = fptosi <8 x float> %i.aeg to <8 x i32>
  %i.aei = sext <8 x i32> %i.aeh to <8 x i64>
  %wide.gep752 = getelementptr inbounds [4 x i8], ptr @satweights, <8 x i64> %i.aei ; 2 uses
  %wide.masked.gather753 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep752, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !368 ; 2 uses
  %i.aej = fsub reassoc nsz arcp contract afn <8 x float> %i.aef, %i.aeg
  %wide.gep754 = getelementptr i8, <8 x ptr> %wide.gep752, i64 4
  %wide.masked.gather755 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep754, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !368
  %i.aek = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather755, %wide.masked.gather753
  %i.ael = fmul reassoc nsz arcp contract afn <8 x float> %i.aej, %i.aek
  %i.aem = fadd reassoc nsz arcp contract afn <8 x float> %i.ael, %wide.masked.gather753 ; 2 uses
  %i.aen = fsub reassoc nsz arcp contract afn <8 x float> %i.adt, %strided.vec742
  %i.aeo = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec750, %i.adu
  %i.aep = fadd reassoc nsz arcp contract afn <8 x float> %i.aeo, %i.aen
  %i.aeq = fmul reassoc nsz arcp contract afn <8 x float> %i.aem, %i.aep
  %i.aer = fadd reassoc nsz arcp contract afn <8 x float> %i.aeq, %strided.vec742
  %i.aes = fsub reassoc nsz arcp contract afn <8 x float> %i.adw, %strided.vec743
  %i.aet = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec751, %i.adx
  %i.aeu = fadd reassoc nsz arcp contract afn <8 x float> %i.aet, %i.aes
  %i.aev = fmul reassoc nsz arcp contract afn <8 x float> %i.aem, %i.aeu
  %i.aew = fadd reassoc nsz arcp contract afn <8 x float> %i.aev, %strided.vec743
  %interleaved.vec756 = shufflevector <8 x float> %i.aer, <8 x float> %i.aew, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec756, ptr %i.adq, align 4, !tbaa !12, !alias.scope !366
  %index.next757 = add nuw i64 %index740, 8       ; 2 uses
  %i.aex = icmp eq i64 %index.next757, %n.vec736
  br i1 %i.aex, label %middle.block758, label %vector.body739, !llvm.loop !259

middle.block758:                                  ; preds = %vector.body739
  %cmp.n759 = icmp eq i64 %i.as, %n.vec736
  br i1 %cmp.n759, label %_prefilter_chromaticity.exit.sink.split.sink.split, label %.lr.ph.i162.i.preheader1371

.lr.ph.i162.i.preheader1371:                      ; preds = %.lr.ph.i162.i.preheader, %middle.block758
  %.033.i.i.ph = phi i64 [ 0, %.lr.ph.i162.i.preheader ], [ %n.vec736, %middle.block758 ]
  br label %.lr.ph.i162.i

.lr.ph.i162.i:                                    ; preds = %.lr.ph.i162.i.preheader1371, %.lr.ph.i162.i
  %.033.i.i = phi i64 [ %i.agm, %.lr.ph.i162.i ], [ %.033.i.i.ph, %.lr.ph.i162.i.preheader1371 ] ; 4 uses
  %i.aey = shl i64 %.033.i.i, 1                   ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.aey ; 2 uses
  %.idx.i163.i = shl i64 %.033.i.i, 4
  %i.afa = getelementptr inbounds nuw i8, ptr %.0105.i, i64 %.idx.i163.i
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.aey
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.033.i.i
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !12, !alias.scope !367
  %i.afe = fsub reassoc nsz arcp contract afn float %i.afd, %i.ey ; 3 uses
  %i.aff = fcmp reassoc nsz arcp contract afn ogt float %i.afe, f0x3F7FF000
  %i.afg = fcmp reassoc nsz arcp contract afn olt float %i.afe, -1.000000e+00
  %i.afh = select reassoc nsz arcp contract afn i1 %i.afg, float -1.000000e+00, float %i.afe
  %i.afi = fmul reassoc nsz arcp contract afn float %i.afh, 4.096000e+03
  %i.afj = fadd reassoc nsz arcp contract afn float %i.afi, 4.096000e+03
  %i.afk = select i1 %i.aff, float 8.191000e+03, float %i.afj ; 2 uses
  %i.afl = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.afk) ; 2 uses
  %i.afm = fptosi float %i.afl to i32
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [4 x i8], ptr @satweights, i64 %i.afn ; 2 uses
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !12, !noalias !368 ; 2 uses
  %i.afq = fsub reassoc nsz arcp contract afn float %i.afk, %i.afl
  %i.afr = getelementptr i8, ptr %i.afo, i64 4
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !12, !noalias !368
  %i.aft = fsub reassoc nsz arcp contract afn float %i.afs, %i.afp
  %i.afu = fmul reassoc nsz arcp contract afn float %i.afq, %i.aft
  %i.afv = fadd reassoc nsz arcp contract afn float %i.afu, %i.afp
  %i.afw = load <2 x float>, ptr %i.aez, align 4, !tbaa !12, !alias.scope !366 ; 4 uses
  %i.afx = load <4 x float>, ptr %i.afa, align 16, !tbaa !12, !alias.scope !364, !noalias !345 ; 2 uses
  %i.afy = shufflevector <4 x float> %i.afx, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.afz = shufflevector <2 x float> %i.afw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aga = fmul reassoc nsz arcp contract afn <2 x float> %i.afy, %i.afz
  %i.agb = shufflevector <4 x float> %i.afx, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.agc = shufflevector <2 x float> %i.afw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.agd = fmul reassoc nsz arcp contract afn <2 x float> %i.agb, %i.agc
  %i.age = load <2 x float>, ptr %i.afb, align 8, !tbaa !12, !alias.scope !365, !noalias !345
  %i.agf = fsub reassoc nsz arcp contract afn <2 x float> %i.aga, %i.afw
  %i.agg = fadd reassoc nsz arcp contract afn <2 x float> %i.age, %i.agd
  %i.agh = fadd reassoc nsz arcp contract afn <2 x float> %i.agg, %i.agf
  %i.agi = insertelement <2 x float> poison, float %i.afv, i64 0
  %i.agj = shufflevector <2 x float> %i.agi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agk = fmul reassoc nsz arcp contract afn <2 x float> %i.agj, %i.agh
  %i.agl = fadd reassoc nsz arcp contract afn <2 x float> %i.agk, %i.afw
  store <2 x float> %i.agl, ptr %i.aez, align 4, !tbaa !12, !alias.scope !366
  %i.agm = add nuw i64 %.033.i.i, 1               ; 2 uses
  %exitcond.not.i164.i = icmp eq i64 %i.agm, %i.as
  br i1 %exitcond.not.i164.i, label %_prefilter_chromaticity.exit.sink.split.sink.split, label %.lr.ph.i162.i, !llvm.loop !260

_prefilter_chromaticity.exit.sink.split.sink.split: ; preds = %.lr.ph.i162.i, %middle.block758, %bb.z, %bb.x, %bb.t
  %.sink537 = phi ptr [ %i.qy, %bb.x ], [ %i.qy, %bb.t ], [ %.0105.i, %bb.z ], [ %.0105.i, %middle.block758 ], [ %.0105.i, %.lr.ph.i162.i ]
  %.0.i.sink.ph = phi ptr [ %i.ra, %bb.x ], [ %i.ra, %bb.t ], [ %.0.i, %bb.z ], [ %.0.i, %middle.block758 ], [ %.0.i, %.lr.ph.i162.i ]
  call void @free(ptr noundef %.sink537) #32, !noalias !345
  br label %_prefilter_chromaticity.exit.sink.split

_prefilter_chromaticity.exit.sink.split:          ; preds = %_prefilter_chromaticity.exit.sink.split.sink.split, %bb.m
  %.0.i.sink = phi ptr [ %.0106.i, %bb.m ], [ %.0.i.sink.ph, %_prefilter_chromaticity.exit.sink.split.sink.split ]
  call void @free(ptr noundef %.0.i.sink) #32, !noalias !345
  br label %_prefilter_chromaticity.exit

_prefilter_chromaticity.exit:                     ; preds = %_prefilter_chromaticity.exit.sink.split, %bb.m, %bb.k, %dt_gaussian_mean_blur.exit
  %i.agn = icmp sgt i32 %i.ap, 0
  br i1 %i.agn, label %.preheader388.lr.ph, label %_prefilter_chromaticity.exit.._crit_edge406.split_crit_edge

_prefilter_chromaticity.exit.._crit_edge406.split_crit_edge: ; preds = %_prefilter_chromaticity.exit
  %.pre451 = load i32, ptr %i.go, align 8, !tbaa !44
  br label %._crit_edge406.split

.preheader388.lr.ph:                              ; preds = %_prefilter_chromaticity.exit
  %factor.op.fmul403 = fmul reassoc nsz arcp contract afn float %i.fi, %i.eq
  %i.ago = icmp sgt i32 %i.an, 0
  %i.agp = load ptr, ptr %i.af, align 8           ; 2 uses
  %i.agq = load ptr, ptr %i.ae, align 8           ; 2 uses
  %i.agr = load ptr, ptr %i.ah, align 8           ; 2 uses
  %i.ags = add nsw i32 %i.ap, -2
  %i.agt = add nsw i32 %i.an, -2                  ; 2 uses
  %i.agu = sub nsw i32 0, %i.an
  %i.agv = xor i32 %i.an, -1
  %i.agw = sext i32 %i.agv to i64                 ; 2 uses
  %i.agx = sub i32 1, %i.an
  %i.agy = sext i32 %i.agx to i64                 ; 2 uses
  %i.agz = sext i32 %i.agu to i64                 ; 2 uses
  %.reass404 = fmul reassoc nsz arcp contract afn float %factor.op.fmul403, 4.000000e+00 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %.pre452 = load i32, ptr %i.go, align 8, !tbaa !44 ; 3 uses
  br i1 %i.ago, label %.preheader388.lr.ph.split, label %._crit_edge406.split

.preheader388.lr.ph.split:                        ; preds = %.preheader388.lr.ph
  %.not253 = icmp eq i32 %.pre452, 0              ; 2 uses
  %wide.trip.count446 = zext nneg i32 %i.ap to i64
  %wide.trip.count = zext nneg i32 %i.an to i64
  %i.ahc = call i32 @llvm.smin.i32(i32 %i.agt, i32 1)
  %exitcond441.peel.not = icmp eq i32 %i.an, 1
  %i.ahd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ew
  %i.ahe = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ew
  %i.ahf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ew
  %i.ahg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ew
  br label %.preheader388

.preheader388:                                    ; preds = %.preheader388.lr.ph.split, %._crit_edge401
  %indvars.iv443 = phi i64 [ 0, %.preheader388.lr.ph.split ], [ %indvars.iv.next444, %._crit_edge401 ] ; 3 uses
  %i.ahh = mul nuw nsw i64 %indvars.iv443, %i.aq  ; 5 uses
  %i.ahi = trunc nuw nsw i64 %indvars.iv443 to i32
  %i.ahj = call i32 @llvm.umax.i32(i32 %i.ahi, i32 1)
  %. = call i32 @llvm.smin.i32(i32 %i.ags, i32 %i.ahj)
  %i.ahk = mul nsw i32 %., %i.an                  ; 2 uses
  %i.ahl = load ptr, ptr %i.ai, align 8           ; 2 uses
  %i.ahm = load ptr, ptr %i.ag, align 8           ; 2 uses
  %i.ahn = shl i64 %i.ahh, 2                      ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ahn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aho, i64 16) ]
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahn ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ahp, i64 16) ]
  %i.ahq = shl nuw i64 %i.ahh, 1                  ; 2 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %i.ahq ; 5 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %i.ahq ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.ahh ; 2 uses
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !12 ; 2 uses
  %i.ahv = load float, ptr %i.ahs, align 4, !tbaa !12 ; 3 uses
  %i.ahw = fmul reassoc nsz arcp contract afn float %i.ahv, %i.ahv
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahs, i64 4
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !12 ; 3 uses
  %i.ahz = fmul reassoc nsz arcp contract afn float %i.ahy, %i.ahy
  %i.aia = fadd reassoc nsz arcp contract afn float %i.ahz, %i.ahw
  %i.aib = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahu, float f0x3F2703AC)
  %i.aic = fmul reassoc nsz arcp contract afn float %i.aib, f0x417EED8B
  %i.aid = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aia, float f0x3F19CB20)
  %i.aie = fmul reassoc nsz arcp contract afn float %i.aic, %i.aid
  %i.aif = fmul reassoc nsz arcp contract afn float %i.aie, %i.ahd ; 3 uses
  %i.aig = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ahy, float %i.ahv)
  %i.aih = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aif, float f0x3FAB13D1)
  %i.aii = fadd reassoc nsz arcp contract afn float %i.aih, 1.000000e+00
  %i.aij = fmul reassoc nsz arcp contract afn float %i.aii, %i.ahu
  %i.aik = fmul reassoc nsz arcp contract afn float %i.aij, %i.ahe ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  store float %i.aik, ptr %i.ail, align 8, !tbaa !12
  %i.aim = fcmp reassoc nsz arcp contract afn ogt float %i.aik, 0.000000e+00
  %i.ain = fdiv reassoc nsz arcp contract afn float %i.aif, %i.aik
  %spec.select350.peel = select reassoc nsz arcp contract afn i1 %i.aim, float %i.ain, float 0.000000e+00
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4 ; 2 uses
  store float %spec.select350.peel, ptr %i.aio, align 4, !tbaa !12
  store float %i.aig, ptr %i.ahp, align 16, !tbaa !12
  br i1 %.not253, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.preheader388
  %i.aip = add nsw i32 %i.ahc, %i.ahk
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.aiq ; 6 uses
  %i.ais = getelementptr inbounds [4 x i8], ptr %i.air, i64 %i.agw
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !12 ; 2 uses
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.air, i64 %i.agy
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !12 ; 2 uses
  %i.aiw = getelementptr [4 x i8], ptr %i.air, i64 %i.aq ; 3 uses
  %i.aix = getelementptr i8, ptr %i.aiw, i64 -4
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !12 ; 2 uses
  %i.aiz = getelementptr i8, ptr %i.aiw, i64 4
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !12 ; 2 uses
  %i.ajb = fadd reassoc nsz arcp contract afn float %i.ait, %i.aiy
  %i.ajc = fadd reassoc nsz arcp contract afn float %i.aiv, %i.aja
  %i.ajd = fsub reassoc nsz arcp contract afn float %i.ajb, %i.ajc
  %i.aje = fmul reassoc nsz arcp contract afn float %i.ajd, f0x3E3CBCBD
  %i.ajf = getelementptr inbounds i8, ptr %i.air, i64 -4
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !12
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.air, i64 4
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !12
  %i.ajj = fsub reassoc nsz arcp contract afn float %i.ajg, %i.aji
  %i.ajk = fmul reassoc nsz arcp contract afn float %i.ajj, f0x3F22A2A3
  %i.ajl = fadd reassoc nsz arcp contract afn float %i.ajk, %i.aje
  %.neg386.peel = fadd reassoc nsz arcp contract afn float %i.aiv, %i.ait
  %i.ajm = fadd reassoc nsz arcp contract afn float %i.aiy, %i.aja
  %i.ajn = fsub reassoc nsz arcp contract afn float %.neg386.peel, %i.ajm
  %i.ajo = fmul reassoc nsz arcp contract afn float %i.ajn, f0x3E3CBCBD
  %i.ajp = getelementptr inbounds [4 x i8], ptr %i.air, i64 %i.agz
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !12
  %i.ajr = load float, ptr %i.aiw, align 4, !tbaa !12
  %i.ajs = fsub reassoc nsz arcp contract afn float %i.ajq, %i.ajr
  %i.ajt = fmul reassoc nsz arcp contract afn float %i.ajs, f0x3F22A2A3
  %i.aju = fadd reassoc nsz arcp contract afn float %i.ajt, %i.ajo
  %i.ajv = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ajl, float noundef %i.aju) #34
  %i.ajw = fadd reassoc nsz arcp contract afn float %i.ajv, -2.000000e-02 ; 2 uses
  %i.ajx = fcmp reassoc nsz arcp contract afn olt float %i.ajw, 0.000000e+00
  %spec.select351.peel = select reassoc nsz arcp contract afn i1 %i.ajx, float 0.000000e+00, float %i.ajw ; 2 uses
  %i.ajy = fmul reassoc nsz arcp contract afn float %spec.select351.peel, %i.eq
  %.reass402.peel = fmul reassoc nsz arcp contract afn float %spec.select351.peel, %.reass404
  %i.ajz = fmul reassoc nsz arcp contract afn float %.reass402.peel, %i.ajy
  store float %i.ajz, ptr %i.aht, align 4, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.preheader388
  %i.aka = fcmp reassoc nsz arcp contract afn ogt float %i.aif, f0x37800000
  br i1 %i.aka, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ahr, align 4, !tbaa !12
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.akb = load float, ptr %i.ahp, align 16, !tbaa !12
  %i.akc = load float, ptr %i.aio, align 4, !tbaa !12
  %i.akd = load ptr, ptr %i.aha, align 8, !tbaa !84 ; 2 uses
  %i.ake = fmul reassoc nsz arcp contract afn float %i.akb, f0x42A2F983
  %i.akf = fadd reassoc nsz arcp contract afn float %i.ake, 2.560000e+02 ; 2 uses
  %i.akg = fpext reassoc nsz arcp contract afn float %i.akf to double ; 2 uses
  %i.akh = call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.akg)
  %i.aki = fptrunc reassoc nsz arcp contract afn double %i.akh to float ; 2 uses
  %i.akj = call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.akg)
  %i.akk = fptrunc reassoc nsz arcp contract afn double %i.akj to float
  %i.akl = fptosi float %i.aki to i32
  %i.akm = and i32 %i.akl, 511                    ; 2 uses
  %i.akn = fptosi float %i.akk to i32
  %i.ako = and i32 %i.akn, 511                    ; 2 uses
  %i.akp = zext nneg i32 %i.akm to i64            ; 5 uses
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akp
  %i.akr = load float, ptr %i.akq, align 4, !tbaa !12 ; 3 uses
  %.not.i265.peel = icmp eq i32 %i.akm, %i.ako
  br i1 %.not.i265.peel, label %lookup_gamut.exit267.thread.peel, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aks = fsub reassoc nsz arcp contract afn float %i.akf, %i.aki ; 3 uses
  %i.akt = zext nneg i32 %i.ako to i64            ; 3 uses
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akt
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !12
  %i.akw = fsub reassoc nsz arcp contract afn float %i.akv, %i.akr
  %i.akx = fmul reassoc nsz arcp contract afn float %i.akw, %i.aks
  %i.aky = fadd reassoc nsz arcp contract afn float %i.akx, %i.akr
  store float %i.aky, ptr %i.ahr, align 4, !tbaa !12
  %i.akz = load ptr, ptr %i.ax, align 8, !tbaa !85 ; 2 uses
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.akz, i64 %i.akp
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !12 ; 2 uses
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.akz, i64 %i.akt
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !12
  %i.ale = fsub reassoc nsz arcp contract afn float %i.ald, %i.alb
  %i.alf = fmul reassoc nsz arcp contract afn float %i.ale, %i.aks
  %i.alg = fadd reassoc nsz arcp contract afn float %i.alf, %i.alb
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  store float %i.alg, ptr %i.alh, align 4, !tbaa !12
  %i.ali = load ptr, ptr %i.ahb, align 8, !tbaa !86 ; 2 uses
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.akp
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !12 ; 2 uses
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.akt
  %i.alm = load float, ptr %i.all, align 4, !tbaa !12
  %i.aln = fsub reassoc nsz arcp contract afn float %i.alm, %i.alk
  %i.alo = fmul reassoc nsz arcp contract afn float %i.aln, %i.aks
  %i.alp = fadd reassoc nsz arcp contract afn float %i.alo, %i.alk
  br label %lookup_gamut.exit269.peel

lookup_gamut.exit267.thread.peel:                 ; preds = %bb.ad
  store float %i.akr, ptr %i.ahr, align 4, !tbaa !12
  %i.alq = load ptr, ptr %i.ax, align 8, !tbaa !85
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %i.akp
  %i.als = load float, ptr %i.alr, align 4, !tbaa !12
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  store float %i.als, ptr %i.alt, align 4, !tbaa !12
  %i.alu = load ptr, ptr %i.ahb, align 8, !tbaa !86
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %i.akp
  %i.alw = load float, ptr %i.alv, align 4, !tbaa !12
  br label %lookup_gamut.exit269.peel

lookup_gamut.exit269.peel:                        ; preds = %lookup_gamut.exit267.thread.peel, %bb.ae
  %i.alx = phi float [ %i.alp, %bb.ae ], [ %i.alw, %lookup_gamut.exit267.thread.peel ]
  %i.aly = fadd reassoc nsz arcp contract afn float %i.alx, -1.000000e+00
  %i.alz = fmul reassoc nsz arcp contract afn float %i.aly, %i.akc
  br label %bb.af

bb.af:                                            ; preds = %lookup_gamut.exit269.peel, %bb.ac
  %.sink = phi float [ %i.alz, %lookup_gamut.exit269.peel ], [ 0.000000e+00, %bb.ac ]
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %i.ahh
  store float %.sink, ptr %i.ama, align 4, !tbaa !12
  %i.amb = getelementptr inbounds nuw i8, ptr %i.aho, i64 12
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !12
  %i.amd = getelementptr inbounds nuw i8, ptr %i.ahp, i64 12
  store float %i.amc, ptr %i.amd, align 4, !tbaa !12
  br i1 %exitcond441.peel.not, label %._crit_edge401, label %dt_UCS_JCH_to_HSB.exit

._crit_edge406.split:                             ; preds = %._crit_edge401, %_prefilter_chromaticity.exit.._crit_edge406.split_crit_edge, %.preheader388.lr.ph
  %i.ame = phi i32 [ %.pre451, %_prefilter_chromaticity.exit.._crit_edge406.split_crit_edge ], [ %.pre452, %.preheader388.lr.ph ], [ %.pre452, %._crit_edge401 ]
  %i.amf = icmp eq i32 %i.ame, 0
  %or.cond7 = select i1 %i.amf, i1 true, i1 %i.gr
  br i1 %or.cond7, label %_guide_with_chromaticity.exit, label %bb.am

._crit_edge401:                                   ; preds = %bb.al, %bb.af
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count446
  br i1 %exitcond447.not, label %._crit_edge406.split, label %.preheader388

dt_UCS_JCH_to_HSB.exit:                           ; preds = %bb.af, %bb.al
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.al ], [ 1, %bb.af ] ; 3 uses
  %i.amg = add nuw nsw i64 %i.ahh, %indvars.iv    ; 4 uses
  %i.amh = shl i64 %i.amg, 2                      ; 2 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.amh ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ami, i64 16) ]
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amh ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amj, i64 16) ]
  %i.amk = shl nuw i64 %i.amg, 1                  ; 2 uses
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %i.amk ; 5 uses
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %i.amk ; 2 uses
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.amg ; 2 uses
  %i.amo = load float, ptr %i.amn, align 4, !tbaa !12 ; 2 uses
  %i.amp = load float, ptr %i.amm, align 4, !tbaa !12 ; 3 uses
  %i.amq = fmul reassoc nsz arcp contract afn float %i.amp, %i.amp
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amm, i64 4
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !12 ; 3 uses
  %i.amt = fmul reassoc nsz arcp contract afn float %i.ams, %i.ams
  %i.amu = fadd reassoc nsz arcp contract afn float %i.amt, %i.amq
  %i.amv = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.amo, float f0x3F2703AC)
  %i.amw = fmul reassoc nsz arcp contract afn float %i.amv, f0x417EED8B
  %i.amx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.amu, float f0x3F19CB20)
  %i.amy = fmul reassoc nsz arcp contract afn float %i.amw, %i.amx
  %i.amz = fmul reassoc nsz arcp contract afn float %i.amy, %i.ahf ; 3 uses
  %i.ana = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ams, float %i.amp)
  %i.anb = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.amz, float f0x3FAB13D1)
  %i.anc = fadd reassoc nsz arcp contract afn float %i.anb, 1.000000e+00
  %i.and = fmul reassoc nsz arcp contract afn float %i.anc, %i.amo
  %i.ane = fmul reassoc nsz arcp contract afn float %i.and, %i.ahg ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  store float %i.ane, ptr %i.anf, align 8, !tbaa !12
  %i.ang = fcmp reassoc nsz arcp contract afn ogt float %i.ane, 0.000000e+00
  %i.anh = fdiv reassoc nsz arcp contract afn float %i.amz, %i.ane
  %spec.select350 = select reassoc nsz arcp contract afn i1 %i.ang, float %i.anh, float 0.000000e+00
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amj, i64 4 ; 2 uses
  store float %spec.select350, ptr %i.ani, align 4, !tbaa !12
  store float %i.ana, ptr %i.amj, align 16, !tbaa !12
  br i1 %.not253, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %dt_UCS_JCH_to_HSB.exit
  %i.anj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ank = call i32 @llvm.smin.i32(i32 %i.agt, i32 %i.anj)
  %i.anl = add nsw i32 %i.ank, %i.ahk
  %i.anm = sext i32 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.anm ; 6 uses
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.ann, i64 %i.agw
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !12 ; 2 uses
  %i.anq = getelementptr inbounds [4 x i8], ptr %i.ann, i64 %i.agy
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !12 ; 2 uses
  %i.ans = getelementptr [4 x i8], ptr %i.ann, i64 %i.aq ; 3 uses
  %i.ant = getelementptr i8, ptr %i.ans, i64 -4
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !12 ; 2 uses
  %i.anv = getelementptr i8, ptr %i.ans, i64 4
  %i.anw = load float, ptr %i.anv, align 4, !tbaa !12 ; 2 uses
  %i.anx = fadd reassoc nsz arcp contract afn float %i.anp, %i.anu
  %i.any = fadd reassoc nsz arcp contract afn float %i.anr, %i.anw
  %i.anz = fsub reassoc nsz arcp contract afn float %i.anx, %i.any
  %i.aoa = fmul reassoc nsz arcp contract afn float %i.anz, f0x3E3CBCBD
  %i.aob = getelementptr inbounds i8, ptr %i.ann, i64 -4
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !12
  %i.aod = getelementptr inbounds nuw i8, ptr %i.ann, i64 4
  %i.aoe = load float, ptr %i.aod, align 4, !tbaa !12
  %i.aof = fsub reassoc nsz arcp contract afn float %i.aoc, %i.aoe
  %i.aog = fmul reassoc nsz arcp contract afn float %i.aof, f0x3F22A2A3
  %i.aoh = fadd reassoc nsz arcp contract afn float %i.aog, %i.aoa
  %.neg386 = fadd reassoc nsz arcp contract afn float %i.anr, %i.anp
  %i.aoi = fadd reassoc nsz arcp contract afn float %i.anu, %i.anw
  %i.aoj = fsub reassoc nsz arcp contract afn float %.neg386, %i.aoi
  %i.aok = fmul reassoc nsz arcp contract afn float %i.aoj, f0x3E3CBCBD
  %i.aol = getelementptr inbounds [4 x i8], ptr %i.ann, i64 %i.agz
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !12
  %i.aon = load float, ptr %i.ans, align 4, !tbaa !12
  %i.aoo = fsub reassoc nsz arcp contract afn float %i.aom, %i.aon
  %i.aop = fmul reassoc nsz arcp contract afn float %i.aoo, f0x3F22A2A3
  %i.aoq = fadd reassoc nsz arcp contract afn float %i.aop, %i.aok
  %i.aor = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aoh, float noundef %i.aoq) #34
  %i.aos = fadd reassoc nsz arcp contract afn float %i.aor, -2.000000e-02 ; 2 uses
  %i.aot = fcmp reassoc nsz arcp contract afn olt float %i.aos, 0.000000e+00
  %spec.select351 = select reassoc nsz arcp contract afn i1 %i.aot, float 0.000000e+00, float %i.aos ; 2 uses
  %i.aou = fmul reassoc nsz arcp contract afn float %spec.select351, %i.eq
  %.reass402 = fmul reassoc nsz arcp contract afn float %spec.select351, %.reass404
  %i.aov = fmul reassoc nsz arcp contract afn float %.reass402, %i.aou
  store float %i.aov, ptr %i.amn, align 4, !tbaa !12
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %dt_UCS_JCH_to_HSB.exit
  %i.aow = fcmp reassoc nsz arcp contract afn ogt float %i.amz, f0x37800000
  br i1 %i.aow, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.aox = load float, ptr %i.amj, align 16, !tbaa !12
  %i.aoy = load float, ptr %i.ani, align 4, !tbaa !12
  %i.aoz = load ptr, ptr %i.aha, align 8, !tbaa !84 ; 2 uses
  %i.apa = fmul reassoc nsz arcp contract afn float %i.aox, f0x42A2F983
  %i.apb = fadd reassoc nsz arcp contract afn float %i.apa, 2.560000e+02 ; 2 uses
  %i.apc = fpext reassoc nsz arcp contract afn float %i.apb to double ; 2 uses
  %i.apd = call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.apc)
  %i.ape = fptrunc reassoc nsz arcp contract afn double %i.apd to float ; 2 uses
  %i.apf = call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.apc)
  %i.apg = fptrunc reassoc nsz arcp contract afn double %i.apf to float
  %i.aph = fptosi float %i.ape to i32
  %i.api = and i32 %i.aph, 511                    ; 2 uses
  %i.apj = fptosi float %i.apg to i32
  %i.apk = and i32 %i.apj, 511                    ; 2 uses
  %i.apl = zext nneg i32 %i.api to i64            ; 5 uses
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %i.apl
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !12 ; 3 uses
  %.not.i265 = icmp eq i32 %i.api, %i.apk
  br i1 %.not.i265, label %lookup_gamut.exit267.thread, label %bb.aj

lookup_gamut.exit267.thread:                      ; preds = %bb.ai
  store float %i.apn, ptr %i.aml, align 4, !tbaa !12
  %i.apo = load ptr, ptr %i.ax, align 8, !tbaa !85
end_hunk_0
