Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorequal?download=true
inline.NumInlined: 278
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 67
begin_hunk_0_@process:bb.a
  %wide.gep864 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.bdg
  %wide.gep865 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.bdi
  %wide.gep866 = getelementptr [4 x i8], ptr %invariant.gep463.i, <8 x i64> %i.bdi
  %wide.gep867 = getelementptr [4 x i8], ptr %invariant.gep463.i, <8 x i64> %i.bdg
  %i.bdj = uitofp <8 x i64> %i.bdi to <8 x float>
  %i.bdk = fsub reassoc nsz arcp contract afn <8 x float> %i.bdj, %i.bdb ; 3 uses
  %i.bdl = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bdk ; 2 uses
  %i.bdm = getelementptr [4 x i8], ptr %invariant.gep467.i, i64 %index862
  %wide.masked.gather868 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep867, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !403, !noalias !404
  %i.bdn = fmul reassoc nsz arcp contract afn <8 x float> %i.bdk, %wide.masked.gather868
  %wide.masked.gather869 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep866, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !403, !noalias !404
  %i.bdo = fmul reassoc nsz arcp contract afn <8 x float> %i.bdl, %wide.masked.gather869
  %i.bdp = fadd reassoc nsz arcp contract afn <8 x float> %i.bdo, %i.bdn ; 2 uses
  %wide.masked.gather870 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep864, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !403, !noalias !404
  %i.bdq = fmul reassoc nsz arcp contract afn <8 x float> %i.bdk, %wide.masked.gather870
  %wide.masked.gather871 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep865, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !403, !noalias !404
  %i.bdr = fmul reassoc nsz arcp contract afn <8 x float> %i.bdl, %wide.masked.gather871
  %i.bds = fsub reassoc nsz arcp contract afn <8 x float> %i.bdq, %i.bdp
  %i.bdt = fadd reassoc nsz arcp contract afn <8 x float> %i.bds, %i.bdr
  %i.bdu = fmul reassoc nsz arcp contract afn <8 x float> %i.bdt, %broadcast.splat852
  %i.bdv = fadd reassoc nsz arcp contract afn <8 x float> %i.bdu, %i.bdp
  store <8 x float> %i.bdv, ptr %i.bdm, align 4, !tbaa !12, !alias.scope !402, !noalias !405
  %index.next872 = add nuw i64 %index862, 8       ; 2 uses
  %vec.ind.next873 = add nuw <8 x i64> %vec.ind863, splat (i64 8)
  %i.bdw = icmp eq i64 %index.next872, %n.vec850
  br i1 %i.bdw, label %middle.block874, label %vector.body861, !llvm.loop !281

middle.block874:                                  ; preds = %vector.body861
  br i1 %cmp.n875, label %._crit_edge.i364.i, label %scalar.ph847.preheader

scalar.ph847.preheader:                           ; preds = %.preheader.i358.i, %middle.block874
  %.08388.i360.i.ph = phi i64 [ 0, %.preheader.i358.i ], [ %n.vec850, %middle.block874 ]
  br label %scalar.ph847

._crit_edge.i364.i:                               ; preds = %scalar.ph847, %middle.block874
  %i.bdx = add nuw i64 %.08489.i359.i, 1          ; 2 uses
  %exitcond93.not.i365.i = icmp eq i64 %i.bdx, %i.atm
  br i1 %exitcond93.not.i365.i, label %interpolate_bilinear.exit366.i, label %.preheader.i358.i

scalar.ph847:                                     ; preds = %scalar.ph847.preheader, %scalar.ph847
  %.08388.i360.i = phi i64 [ %i.bey, %scalar.ph847 ], [ %.08388.i360.i.ph, %scalar.ph847.preheader ] ; 3 uses
  %i.bdy = uitofp reassoc nsz arcp contract afn i64 %.08388.i360.i to float
  %i.bdz = fmul reassoc nnan nsz arcp contract afn float %i.aub, %i.bdy
  %i.bea = fmul reassoc nsz arcp contract afn float %i.bdz, %i.bau ; 2 uses
  %i.beb = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bea)
  %i.bec = fptoui float %i.beb to i64             ; 3 uses
  %i.bed = add i64 %i.bec, 1                      ; 2 uses
  %i.bee = icmp ugt i64 %i.aq, %i.bec
  %i.bef = select i1 %i.bee, i64 %i.bec, i64 %i.atz ; 2 uses
  %i.beg = icmp ult i64 %i.bed, %i.aq
  %i.beh = select i1 %i.beg, i64 %i.bed, i64 %i.atz ; 3 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bef
  %gep462.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.beh
  %gep464.i = getelementptr [4 x i8], ptr %invariant.gep463.i, i64 %i.beh
  %gep466.i = getelementptr [4 x i8], ptr %invariant.gep463.i, i64 %i.bef
  %i.bei = uitofp reassoc nsz arcp contract afn i64 %i.beh to float
  %i.bej = fsub reassoc nsz arcp contract afn float %i.bei, %i.bea ; 3 uses
  %i.bek = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bej ; 2 uses
  %gep468.i = getelementptr [4 x i8], ptr %invariant.gep467.i, i64 %.08388.i360.i
  %i.bel = load float, ptr %gep466.i, align 4, !tbaa !12, !alias.scope !403, !noalias !404
  %i.bem = fmul reassoc nsz arcp contract afn float %i.bej, %i.bel
  %i.ben = load float, ptr %gep464.i, align 4, !tbaa !12, !alias.scope !403, !noalias !404
  %i.beo = fmul reassoc nsz arcp contract afn float %i.bek, %i.ben
  %i.bep = fadd reassoc nsz arcp contract afn float %i.beo, %i.bem ; 2 uses
  %i.beq = load float, ptr %gep.i, align 4, !tbaa !12, !alias.scope !403, !noalias !404
  %i.ber = fmul reassoc nsz arcp contract afn float %i.bej, %i.beq
  %i.bes = load float, ptr %gep462.i, align 4, !tbaa !12, !alias.scope !403, !noalias !404
  %i.bet = fmul reassoc nsz arcp contract afn float %i.bek, %i.bes
  %i.beu = fsub reassoc nsz arcp contract afn float %i.ber, %i.bep
  %i.bev = fadd reassoc nsz arcp contract afn float %i.beu, %i.bet
  %i.bew = fmul reassoc nsz arcp contract afn float %i.bev, %i.bcx
  %i.bex = fadd reassoc nsz arcp contract afn float %i.bew, %i.bep
  store float %i.bex, ptr %gep468.i, align 4, !tbaa !12, !alias.scope !402, !noalias !405
  %i.bey = add nuw i64 %.08388.i360.i, 1          ; 2 uses
  %exitcond92.not.i363.i = icmp eq i64 %i.bey, %i.atl
  br i1 %exitcond92.not.i363.i, label %._crit_edge.i364.i, label %scalar.ph847, !llvm.loop !282

interpolate_bilinear.exit366.i:                   ; preds = %._crit_edge.i364.i, %interpolate_bilinear.exit353.i, %.preheader.lr.ph.i.i287, %dt_gaussian_mean_blur.exit271
  %.0329.i = phi ptr [ %i.asq, %dt_gaussian_mean_blur.exit271 ], [ %i.ats, %.preheader.lr.ph.i.i287 ], [ %i.ats, %interpolate_bilinear.exit353.i ], [ %i.ats, %._crit_edge.i364.i ] ; 29 uses
  %.0328.i = phi ptr [ %i.asr, %dt_gaussian_mean_blur.exit271 ], [ %i.att, %.preheader.lr.ph.i.i287 ], [ %i.att, %interpolate_bilinear.exit353.i ], [ %i.att, %._crit_edge.i364.i ] ; 19 uses
  %.0327.i = phi ptr [ %i.ast, %dt_gaussian_mean_blur.exit271 ], [ %i.atv, %.preheader.lr.ph.i.i287 ], [ %i.atv, %interpolate_bilinear.exit353.i ], [ %i.atv, %._crit_edge.i364.i ] ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.bez = shl i64 %i.atn, 4                      ; 3 uses
  %i.bfa = call ptr @dt_alloc_aligned(i64 noundef %i.bez) #32, !noalias !407 ; 21 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfa, i64 64) ]
  %.not.i367.i = icmp ne ptr %i.bfa, null         ; 2 uses
  %i.bfb = icmp ne i64 %i.atn, 0                  ; 4 uses
  %or.cond.i.i273 = and i1 %i.bfb, %.not.i367.i
  br i1 %or.cond.i.i273, label %.lr.ph.i.i281.preheader, label %_init_covariance.exit.i274

.lr.ph.i.i281.preheader:                          ; preds = %interpolate_bilinear.exit366.i
  %min.iters.check878 = icmp ult i64 %i.atn, 8
  br i1 %min.iters.check878, label %.lr.ph.i.i281.preheader1369, label %vector.ph879

vector.ph879:                                     ; preds = %.lr.ph.i.i281.preheader
  %n.vec880 = and i64 %i.atn, -8                  ; 3 uses
  br label %vector.body881

vector.body881:                                   ; preds = %vector.body881, %vector.ph879
  %index882 = phi i64 [ 0, %vector.ph879 ], [ %index.next887, %vector.body881 ] ; 3 uses
  %i.bfc = shl i64 %index882, 3
  %i.bfd = getelementptr inbounds nuw i8, ptr %.0329.i, i64 %i.bfc
  %wide.vec883 = load <16 x float>, ptr %i.bfd, align 4, !tbaa !12, !alias.scope !406, !noalias !390 ; 2 uses
  %strided.vec884 = shufflevector <16 x float> %wide.vec883, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec885 = shufflevector <16 x float> %wide.vec883, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.bfe = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec884, %strided.vec884
  %i.bff = shl i64 %index882, 4
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bff
  %i.bfh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec885, %strided.vec884 ; 2 uses
  %i.bfi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec885, %strided.vec885
  %i.bfj = shufflevector <8 x float> %i.bfe, <8 x float> %i.bfh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfk = shufflevector <8 x float> %i.bfh, <8 x float> %i.bfi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec886 = shufflevector <16 x float> %i.bfj, <16 x float> %i.bfk, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec886, ptr %i.bfg, align 64, !tbaa !12, !noalias !407
  %index.next887 = add nuw i64 %index882, 8       ; 2 uses
  %i.bfl = icmp eq i64 %index.next887, %n.vec880
  br i1 %i.bfl, label %middle.block888, label %vector.body881, !llvm.loop !285

middle.block888:                                  ; preds = %vector.body881
  %cmp.n889 = icmp eq i64 %i.atn, %n.vec880
  br i1 %cmp.n889, label %_init_covariance.exit.i274, label %.lr.ph.i.i281.preheader1369

.lr.ph.i.i281.preheader1369:                      ; preds = %.lr.ph.i.i281.preheader, %middle.block888
  %.030.i.i282.ph = phi i64 [ 0, %.lr.ph.i.i281.preheader ], [ %n.vec880, %middle.block888 ]
  br label %.lr.ph.i.i281

.lr.ph.i.i281:                                    ; preds = %.lr.ph.i.i281.preheader1369, %.lr.ph.i.i281
  %.030.i.i282 = phi i64 [ %i.bfs, %.lr.ph.i.i281 ], [ %.030.i.i282.ph, %.lr.ph.i.i281.preheader1369 ] ; 3 uses
  %.idx.i.i283 = shl i64 %.030.i.i282, 3
  %i.bfm = getelementptr inbounds nuw i8, ptr %.0329.i, i64 %.idx.i.i283
  %.idx29.i.i284 = shl i64 %.030.i.i282, 4
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %.idx29.i.i284
  %i.bfo = load <2 x float>, ptr %i.bfm, align 4, !tbaa !12, !alias.scope !406, !noalias !390 ; 2 uses
  %i.bfp = shufflevector <2 x float> %i.bfo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bfq = shufflevector <2 x float> %i.bfo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bfr = fmul reassoc nsz arcp contract afn <4 x float> %i.bfp, %i.bfq
  store <4 x float> %i.bfr, ptr %i.bfn, align 16, !tbaa !12, !noalias !407
  %i.bfs = add nuw i64 %.030.i.i282, 1            ; 2 uses
  %exitcond.not.i368.i = icmp eq i64 %i.bfs, %i.atn
  br i1 %exitcond.not.i368.i, label %_init_covariance.exit.i274, label %.lr.ph.i.i281, !llvm.loop !286

_init_covariance.exit.i274:                       ; preds = %.lr.ph.i.i281, %middle.block888, %interpolate_bilinear.exit366.i
  %i.bft = call ptr @dt_alloc_aligned(i64 noundef %i.bez) #32, !noalias !390 ; 39 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bft, i64 64) ]
  %i.bfu = icmp ne ptr %i.bft, null
  %or.cond5.i275 = select i1 %.not.i367.i, i1 %i.bfu, i1 false
  br i1 %or.cond5.i275, label %.preheader454.i, label %bb.aq

.preheader454.i:                                  ; preds = %_init_covariance.exit.i274
  br i1 %i.bfb, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader454.i
  %min.iters.check903 = icmp ult i64 %i.atn, 9
  br i1 %min.iters.check903, label %.lr.ph.i.preheader1368, label %vector.memcheck

.lr.ph.i.preheader1368:                           ; preds = %vector.body913, %vector.memcheck, %.lr.ph.i.preheader
  %.0326473.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec912, %vector.body913 ] ; 7 uses
  %i.bfv = sub i64 %i.atn, %.0326473.i.ph
  %.neg = add i64 %.0326473.i.ph, 1
  %xtraiter = and i64 %i.bfv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader1368
  %i.bfw = shl i64 %.0326473.i.ph, 1              ; 2 uses
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bfw ; 2 uses
  %i.bfy = load float, ptr %i.bfx, align 4, !tbaa !12, !noalias !390
  %i.bfz = or disjoint i64 %i.bfw, 1              ; 2 uses
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %.0328.i, i64 %i.bfz ; 2 uses
  %i.bgb = load float, ptr %i.bga, align 4, !tbaa !12, !noalias !390
  %i.bgc = fmul reassoc nsz arcp contract afn float %i.bgb, %i.bfy
  %.idx441.i.prol = shl i64 %.0326473.i.ph, 4
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bft, i64 %.idx441.i.prol ; 4 uses
  store float %i.bgc, ptr %i.bgd, align 16, !tbaa !12, !noalias !390
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bfz ; 2 uses
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !12, !noalias !390
  %i.bgg = load float, ptr %i.bga, align 4, !tbaa !12, !noalias !390
  %i.bgh = fmul reassoc nsz arcp contract afn float %i.bgg, %i.bgf
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgd, i64 4
  store float %i.bgh, ptr %i.bgi, align 4, !tbaa !12, !noalias !390
  %i.bgj = load float, ptr %i.bfx, align 4, !tbaa !12, !noalias !390
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %.0327.i, i64 %.0326473.i.ph ; 2 uses
  %i.bgl = load float, ptr %i.bgk, align 4, !tbaa !12, !noalias !390
  %i.bgm = fmul reassoc nsz arcp contract afn float %i.bgl, %i.bgj
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgd, i64 8
  store float %i.bgm, ptr %i.bgn, align 8, !tbaa !12, !noalias !390
  %i.bgo = load float, ptr %i.bge, align 4, !tbaa !12, !noalias !390
  %i.bgp = load float, ptr %i.bgk, align 4, !tbaa !12, !noalias !390
  %i.bgq = fmul reassoc nsz arcp contract afn float %i.bgp, %i.bgo
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgd, i64 12
  store float %i.bgq, ptr %i.bgr, align 4, !tbaa !12, !noalias !390
  %i.bgs = add nuw i64 %.0326473.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader1368
  %.0326473.i.unr = phi i64 [ %.0326473.i.ph, %.lr.ph.i.preheader1368 ], [ %i.bgs, %.lr.ph.i.prol ]
  %i.bgt = icmp eq i64 %i.atn, %.neg
  br i1 %i.bgt, label %._crit_edge.i, label %.lr.ph.i

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.bgu = mul nsw i64 %i.atm, %i.atl             ; 3 uses
  %i.bgv = shl i64 %i.bgu, 4
  %i.bgw = getelementptr i8, ptr %i.bft, i64 %i.bgv ; 3 uses
  %i.bgx = shl i64 %i.bgu, 3                      ; 2 uses
  %i.bgy = getelementptr i8, ptr %.0329.i, i64 %i.bgx
  %i.bgz = getelementptr i8, ptr %.0328.i, i64 4
  %i.bha = getelementptr i8, ptr %.0328.i, i64 %i.bgx
  %i.bhb = shl i64 %i.bgu, 2
  %i.bhc = getelementptr i8, ptr %.0327.i, i64 %i.bhb
  %bound0 = icmp ult ptr %i.bft, %i.bgy
  %bound1 = icmp ult ptr %.0329.i, %i.bgw
  %found.conflict = and i1 %bound0, %bound1
  %bound0904 = icmp ult ptr %i.bft, %i.bha
  %bound1905 = icmp ult ptr %i.bgz, %i.bgw
  %found.conflict906 = and i1 %bound0904, %bound1905
  %conflict.rdx = or i1 %found.conflict, %found.conflict906
  %bound0907 = icmp ult ptr %i.bft, %i.bhc
  %bound1908 = icmp ult ptr %.0327.i, %i.bgw
  %found.conflict909 = and i1 %bound0907, %bound1908
  %conflict.rdx910 = or i1 %conflict.rdx, %found.conflict909
  br i1 %conflict.rdx910, label %.lr.ph.i.preheader1368, label %vector.ph911

vector.ph911:                                     ; preds = %vector.memcheck
  %i.bhd = and i64 %i.atn, 7                      ; 2 uses
  %i.bhe = icmp eq i64 %i.bhd, 0
  %i.bhf = select i1 %i.bhe, i64 8, i64 %i.bhd
  %n.vec912 = sub i64 %i.atn, %i.bhf              ; 2 uses
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph911
  %index914 = phi i64 [ 0, %vector.ph911 ], [ %index.next927, %vector.body913 ] ; 4 uses
  %i.bhg = shl i64 %index914, 1                   ; 2 uses
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bhg ; 2 uses
  %wide.vec915 = load <16 x float>, ptr %i.bhh, align 4, !tbaa !12, !alias.scope !408, !noalias !390 ; 2 uses
  %strided.vec916 = shufflevector <16 x float> %wide.vec915, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec917 = shufflevector <16 x float> %wide.vec915, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %.0328.i, i64 %i.bhg
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 4
  %wide.vec918 = load <16 x float>, ptr %i.bhj, align 4, !tbaa !12, !alias.scope !409, !noalias !390 ; 2 uses
  %strided.vec919 = shufflevector <16 x float> %wide.vec918, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.bhk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec919, %strided.vec916
  %i.bhl = shl i64 %index914, 4
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bhl
  %strided.vec921 = shufflevector <16 x float> %wide.vec918, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.bhn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec921, %strided.vec917
  %wide.vec922 = load <16 x float>, ptr %i.bhh, align 4, !tbaa !12, !alias.scope !408, !noalias !390 ; 2 uses
  %strided.vec923 = shufflevector <16 x float> %wide.vec922, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec924 = shufflevector <16 x float> %wide.vec922, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %.0327.i, i64 %index914
  %wide.load925 = load <8 x float>, ptr %i.bho, align 4, !tbaa !12, !alias.scope !410, !noalias !390 ; 2 uses
  %i.bhp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load925, %strided.vec923
  %i.bhq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load925, %strided.vec924
  %i.bhr = shufflevector <8 x float> %i.bhk, <8 x float> %i.bhn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhs = shufflevector <8 x float> %i.bhp, <8 x float> %i.bhq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec926 = shufflevector <16 x float> %i.bhr, <16 x float> %i.bhs, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec926, ptr %i.bhm, align 64, !tbaa !12, !alias.scope !411, !noalias !390
  %index.next927 = add nuw i64 %index914, 8       ; 2 uses
  %i.bht = icmp eq i64 %index.next927, %n.vec912
  br i1 %i.bht, label %.lr.ph.i.preheader1368, label %vector.body913, !llvm.loop !292

bb.aq:                                            ; preds = %_init_covariance.exit.i274
  br i1 %i.atq, label %bb.ar, label %_guide_with_chromaticity.exit.sink.split

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef %.0329.i) #32, !noalias !390
  call void @free(ptr noundef %.0328.i) #32, !noalias !390
  br label %_guide_with_chromaticity.exit.sink.split.sink.split

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader454.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !412
  %i.bhu = call ptr @dt_gaussian_init(i32 noundef %i.atk, i32 noundef %i.ath, i32 noundef 2, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, float noundef %i.ate, i32 noundef 0) #32, !noalias !390 ; 3 uses
  %.not.i369.i = icmp eq ptr %i.bhu, null
  br i1 %.not.i369.i, label %dt_gaussian_mean_blur.exit.i276, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i
  call void @dt_gaussian_blur(ptr noundef nonnull %i.bhu, ptr noundef %.0329.i, ptr noundef %.0329.i) #32, !noalias !390
  call void @dt_gaussian_free(ptr noundef nonnull %i.bhu) #32, !noalias !390
  br label %dt_gaussian_mean_blur.exit.i276

dt_gaussian_mean_blur.exit.i276:                  ; preds = %bb.as, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #32, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #32, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !412
  %i.bhv = call ptr @dt_gaussian_init(i32 noundef %i.atk, i32 noundef %i.ath, i32 noundef 4, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, float noundef %i.ate, i32 noundef 0) #32, !noalias !390 ; 3 uses
  %.not.i370.i = icmp eq ptr %i.bhv, null
  br i1 %.not.i370.i, label %dt_gaussian_mean_blur.exit371.i, label %bb.at

bb.at:                                            ; preds = %dt_gaussian_mean_blur.exit.i276
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.bhv, ptr noundef nonnull %i.bfa, ptr noundef nonnull %i.bfa) #32, !noalias !390
  call void @dt_gaussian_free(ptr noundef nonnull %i.bhv) #32, !noalias !390
  br label %dt_gaussian_mean_blur.exit371.i

dt_gaussian_mean_blur.exit371.i:                  ; preds = %bb.at, %dt_gaussian_mean_blur.exit.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #32, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #32, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !412
  %i.bhw = call ptr @dt_gaussian_init(i32 noundef %i.atk, i32 noundef %i.ath, i32 noundef 2, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, float noundef %i.ate, i32 noundef 0) #32, !noalias !390 ; 3 uses
  %.not.i372.i = icmp eq ptr %i.bhw, null
  br i1 %.not.i372.i, label %dt_gaussian_mean_blur.exit373.i, label %bb.au

bb.au:                                            ; preds = %dt_gaussian_mean_blur.exit371.i
  call void @dt_gaussian_blur(ptr noundef nonnull %i.bhw, ptr noundef %.0328.i, ptr noundef %.0328.i) #32, !noalias !390
  call void @dt_gaussian_free(ptr noundef nonnull %i.bhw) #32, !noalias !390
  br label %dt_gaussian_mean_blur.exit373.i

dt_gaussian_mean_blur.exit373.i:                  ; preds = %bb.au, %dt_gaussian_mean_blur.exit371.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #32, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #32, !noalias !412
  %i.bhx = fmul reassoc nsz arcp contract afn float %i.ate, 1.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !412
  %i.bhy = call ptr @dt_gaussian_init(i32 noundef %i.atk, i32 noundef %i.ath, i32 noundef 1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, float noundef %i.bhx, i32 noundef 0) #32, !noalias !390 ; 3 uses
  %.not.i374.i = icmp eq ptr %i.bhy, null
  br i1 %.not.i374.i, label %dt_gaussian_mean_blur.exit375.i, label %bb.av

bb.av:                                            ; preds = %dt_gaussian_mean_blur.exit373.i
  call void @dt_gaussian_blur(ptr noundef nonnull %i.bhy, ptr noundef %.0327.i, ptr noundef %.0327.i) #32, !noalias !390
  call void @dt_gaussian_free(ptr noundef nonnull %i.bhy) #32, !noalias !390
  br label %dt_gaussian_mean_blur.exit375.i

dt_gaussian_mean_blur.exit375.i:                  ; preds = %bb.av, %dt_gaussian_mean_blur.exit373.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !412
  %i.bhz = call ptr @dt_gaussian_init(i32 noundef %i.atk, i32 noundef %i.ath, i32 noundef 4, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, float noundef %i.ate, i32 noundef 0) #32, !noalias !390 ; 3 uses
  %.not.i376.i = icmp eq ptr %i.bhz, null
  br i1 %.not.i376.i, label %dt_gaussian_mean_blur.exit377.i, label %bb.aw

bb.aw:                                            ; preds = %dt_gaussian_mean_blur.exit375.i
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.bhz, ptr noundef nonnull %i.bft, ptr noundef nonnull %i.bft) #32, !noalias !390
  call void @dt_gaussian_free(ptr noundef nonnull %i.bhz) #32, !noalias !390
  br label %dt_gaussian_mean_blur.exit377.i

dt_gaussian_mean_blur.exit377.i:                  ; preds = %bb.aw, %dt_gaussian_mean_blur.exit375.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32, !noalias !412
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  br i1 %i.bfb, label %.lr.ph.i379.i.preheader, label %._crit_edge476.i

.lr.ph.i379.i.preheader:                          ; preds = %dt_gaussian_mean_blur.exit377.i
  %min.iters.check931 = icmp ult i64 %i.atn, 4
  br i1 %min.iters.check931, label %.lr.ph.i379.i.preheader1367, label %vector.ph932

vector.ph932:                                     ; preds = %.lr.ph.i379.i.preheader
  %n.vec933 = and i64 %i.atn, -4                  ; 3 uses
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph932
  %index935 = phi i64 [ 0, %vector.ph932 ], [ %index.next945, %vector.body934 ] ; 3 uses
  %i.bia = shl i64 %index935, 3
  %i.bib = getelementptr inbounds nuw i8, ptr %.0329.i, i64 %i.bia
  %wide.vec936 = load <8 x float>, ptr %i.bib, align 4, !tbaa !12, !alias.scope !413, !noalias !415 ; 2 uses
  %strided.vec937 = shufflevector <8 x float> %wide.vec936, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec938 = shufflevector <8 x float> %wide.vec936, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.bic = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec937, %strided.vec937
  %i.bid = shl i64 %index935, 4
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bid ; 2 uses
  %wide.vec939 = load <16 x float>, ptr %i.bie, align 64, !tbaa !12, !alias.scope !414, !noalias !416 ; 4 uses
  %strided.vec940 = shufflevector <16 x float> %wide.vec939, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec941 = shufflevector <16 x float> %wide.vec939, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec942 = shufflevector <16 x float> %wide.vec939, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec943 = shufflevector <16 x float> %wide.vec939, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.bif = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec940, %i.bic
  %i.big = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec938, %strided.vec937 ; 2 uses
  %i.bih = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec941, %i.big
  %i.bii = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec942, %i.big
  %i.bij = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec938, %strided.vec938
  %i.bik = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec943, %i.bij
  %i.bil = shufflevector <4 x float> %i.bif, <4 x float> %i.bih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bim = shufflevector <4 x float> %i.bii, <4 x float> %i.bik, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec944 = shufflevector <8 x float> %i.bil, <8 x float> %i.bim, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec944, ptr %i.bie, align 64, !tbaa !12, !alias.scope !414, !noalias !416
  %index.next945 = add nuw i64 %index935, 4       ; 2 uses
  %i.bin = icmp eq i64 %index.next945, %n.vec933
  br i1 %i.bin, label %middle.block946, label %vector.body934, !llvm.loop !296

middle.block946:                                  ; preds = %vector.body934
  %cmp.n947 = icmp eq i64 %i.atn, %n.vec933
  br i1 %cmp.n947, label %.lr.ph475.i.preheader, label %.lr.ph.i379.i.preheader1367

.lr.ph.i379.i.preheader1367:                      ; preds = %.lr.ph.i379.i.preheader, %middle.block946
  %.027.i.i279.ph = phi i64 [ 0, %.lr.ph.i379.i.preheader ], [ %n.vec933, %middle.block946 ]
  br label %.lr.ph.i379.i

.lr.ph.i379.i:                                    ; preds = %.lr.ph.i379.i.preheader1367, %.lr.ph.i379.i
  %.027.i.i279 = phi i64 [ %i.biw, %.lr.ph.i379.i ], [ %.027.i.i279.ph, %.lr.ph.i379.i.preheader1367 ] ; 3 uses
  %.idx.i380.i = shl i64 %.027.i.i279, 3
  %i.bio = getelementptr inbounds nuw i8, ptr %.0329.i, i64 %.idx.i380.i
  %.idx26.i.i280 = shl i64 %.027.i.i279, 4
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %.idx26.i.i280 ; 2 uses
  %i.biq = load <2 x float>, ptr %i.bio, align 4, !tbaa !12, !alias.scope !413, !noalias !415 ; 2 uses
  %i.bir = shufflevector <2 x float> %i.biq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bis = shufflevector <2 x float> %i.biq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bit = fmul reassoc nsz arcp contract afn <4 x float> %i.bir, %i.bis
  %i.biu = load <4 x float>, ptr %i.bip, align 16, !tbaa !12, !alias.scope !414, !noalias !416
  %i.biv = fsub reassoc nsz arcp contract afn <4 x float> %i.biu, %i.bit
  store <4 x float> %i.biv, ptr %i.bip, align 16, !tbaa !12, !alias.scope !414, !noalias !416
  %i.biw = add nuw i64 %.027.i.i279, 1            ; 2 uses
  %exitcond.not.i381.i = icmp eq i64 %i.biw, %i.atn
  br i1 %exitcond.not.i381.i, label %.lr.ph475.i.preheader, label %.lr.ph.i379.i, !llvm.loop !297

.lr.ph475.i.preheader:                            ; preds = %.lr.ph.i379.i, %middle.block946
  %min.iters.check966 = icmp ult i64 %i.atn, 9
  br i1 %min.iters.check966, label %.lr.ph475.i.preheader1366, label %vector.memcheck967

.lr.ph475.i.preheader1366:                        ; preds = %vector.body981, %vector.memcheck967, %.lr.ph475.i.preheader
  %.0325474.i.ph = phi i64 [ 0, %vector.memcheck967 ], [ 0, %.lr.ph475.i.preheader ], [ %n.vec980, %vector.body981 ]
  br label %.lr.ph475.i

vector.memcheck967:                               ; preds = %.lr.ph475.i.preheader
  %i.bix = mul nsw i64 %i.atm, %i.atl             ; 3 uses
  %i.biy = shl i64 %i.bix, 4
  %i.biz = getelementptr i8, ptr %i.bft, i64 %i.biy ; 3 uses
  %i.bja = shl i64 %i.bix, 3                      ; 2 uses
  %i.bjb = getelementptr i8, ptr %.0329.i, i64 %i.bja
  %i.bjc = getelementptr i8, ptr %.0328.i, i64 4
  %i.bjd = getelementptr i8, ptr %.0328.i, i64 %i.bja
  %i.bje = shl i64 %i.bix, 2
  %i.bjf = getelementptr i8, ptr %.0327.i, i64 %i.bje
  %bound0968 = icmp ult ptr %i.bft, %i.bjb
  %bound1969 = icmp ult ptr %.0329.i, %i.biz
  %found.conflict970 = and i1 %bound0968, %bound1969
  %bound0971 = icmp ult ptr %i.bft, %i.bjd
  %bound1972 = icmp ult ptr %i.bjc, %i.biz
  %found.conflict973 = and i1 %bound0971, %bound1972
  %conflict.rdx974 = or i1 %found.conflict970, %found.conflict973
  %bound0975 = icmp ult ptr %i.bft, %i.bjf
  %bound1976 = icmp ult ptr %.0327.i, %i.biz
  %found.conflict977 = and i1 %bound0975, %bound1976
  %conflict.rdx978 = or i1 %conflict.rdx974, %found.conflict977
  br i1 %conflict.rdx978, label %.lr.ph475.i.preheader1366, label %vector.ph979

vector.ph979:                                     ; preds = %vector.memcheck967
  %i.bjg = and i64 %i.atn, 7                      ; 2 uses
  %i.bjh = icmp eq i64 %i.bjg, 0
  %i.bji = select i1 %i.bjh, i64 8, i64 %i.bjg
  %n.vec980 = sub i64 %i.atn, %i.bji              ; 2 uses
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph979
  %index982 = phi i64 [ 0, %vector.ph979 ], [ %index.next1000, %vector.body981 ] ; 4 uses
  %i.bjj = shl i64 %index982, 1                   ; 2 uses
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bjj ; 2 uses
  %wide.vec983 = load <16 x float>, ptr %i.bjk, align 4, !tbaa !12, !alias.scope !417, !noalias !390 ; 2 uses
  %strided.vec984 = shufflevector <16 x float> %wide.vec983, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec985 = shufflevector <16 x float> %wide.vec983, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %.0328.i, i64 %i.bjj
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 4 ; 2 uses
  %wide.vec986 = load <16 x float>, ptr %i.bjm, align 4, !tbaa !12, !alias.scope !418, !noalias !390
  %strided.vec987 = shufflevector <16 x float> %wide.vec986, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.bjn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec987, %strided.vec984
  %i.bjo = shl i64 %index982, 4
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bjo ; 2 uses
  %wide.vec988 = load <32 x float>, ptr %i.bjp, align 64, !tbaa !12, !alias.scope !419, !noalias !390 ; 4 uses
  %strided.vec989 = shufflevector <32 x float> %wide.vec988, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec990 = shufflevector <32 x float> %wide.vec988, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec991 = shufflevector <32 x float> %wide.vec988, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec992 = shufflevector <32 x float> %wide.vec988, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bjq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec989, %i.bjn
  %wide.vec993 = load <16 x float>, ptr %i.bjm, align 4, !tbaa !12, !alias.scope !418, !noalias !390
  %strided.vec994 = shufflevector <16 x float> %wide.vec993, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.bjr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec994, %strided.vec985
  %i.bjs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec990, %i.bjr
  %wide.vec995 = load <16 x float>, ptr %i.bjk, align 4, !tbaa !12, !alias.scope !417, !noalias !390 ; 2 uses
  %strided.vec996 = shufflevector <16 x float> %wide.vec995, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec997 = shufflevector <16 x float> %wide.vec995, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bjt = getelementptr inbounds nuw [4 x i8], ptr %.0327.i, i64 %index982
  %wide.load998 = load <8 x float>, ptr %i.bjt, align 4, !tbaa !12, !alias.scope !420, !noalias !390 ; 2 uses
  %i.bju = fmul reassoc nsz arcp contract afn <8 x float> %wide.load998, %strided.vec996
  %i.bjv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec991, %i.bju
  %i.bjw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load998, %strided.vec997
  %i.bjx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec992, %i.bjw
  %i.bjy = shufflevector <8 x float> %i.bjq, <8 x float> %i.bjs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjz = shufflevector <8 x float> %i.bjv, <8 x float> %i.bjx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec999 = shufflevector <16 x float> %i.bjy, <16 x float> %i.bjz, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec999, ptr %i.bjp, align 64, !tbaa !12, !alias.scope !419, !noalias !390
  %index.next1000 = add nuw i64 %index982, 8      ; 2 uses
  %i.bka = icmp eq i64 %index.next1000, %n.vec980
  br i1 %i.bka, label %.lr.ph475.i.preheader1366, label %vector.body981, !llvm.loop !303

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0326473.i = phi i64 [ %i.blu, %.lr.ph.i ], [ %.0326473.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bkb = shl i64 %.0326473.i, 1                 ; 2 uses
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bkb ; 2 uses
  %i.bkd = load float, ptr %i.bkc, align 4, !tbaa !12, !noalias !390
  %i.bke = or disjoint i64 %i.bkb, 1              ; 2 uses
  %i.bkf = getelementptr inbounds nuw [4 x i8], ptr %.0328.i, i64 %i.bke ; 2 uses
  %i.bkg = load float, ptr %i.bkf, align 4, !tbaa !12, !noalias !390
  %i.bkh = fmul reassoc nsz arcp contract afn float %i.bkg, %i.bkd
  %.idx441.i = shl i64 %.0326473.i, 4
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bft, i64 %.idx441.i ; 4 uses
  store float %i.bkh, ptr %i.bki, align 16, !tbaa !12, !noalias !390
  %i.bkj = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bke ; 2 uses
  %i.bkk = load float, ptr %i.bkj, align 4, !tbaa !12, !noalias !390
  %i.bkl = load float, ptr %i.bkf, align 4, !tbaa !12, !noalias !390
  %i.bkm = fmul reassoc nsz arcp contract afn float %i.bkl, %i.bkk
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bki, i64 4
  store float %i.bkm, ptr %i.bkn, align 4, !tbaa !12, !noalias !390
  %i.bko = load float, ptr %i.bkc, align 4, !tbaa !12, !noalias !390
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %.0327.i, i64 %.0326473.i ; 2 uses
  %i.bkq = load float, ptr %i.bkp, align 4, !tbaa !12, !noalias !390
  %i.bkr = fmul reassoc nsz arcp contract afn float %i.bkq, %i.bko
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bki, i64 8
  store float %i.bkr, ptr %i.bks, align 8, !tbaa !12, !noalias !390
  %i.bkt = load float, ptr %i.bkj, align 4, !tbaa !12, !noalias !390
  %i.bku = load float, ptr %i.bkp, align 4, !tbaa !12, !noalias !390
  %i.bkv = fmul reassoc nsz arcp contract afn float %i.bku, %i.bkt
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bki, i64 12
  store float %i.bkv, ptr %i.bkw, align 4, !tbaa !12, !noalias !390
  %i.bkx = add nuw i64 %.0326473.i, 1             ; 3 uses
  %i.bky = shl i64 %i.bkx, 1                      ; 2 uses
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bky ; 2 uses
  %i.bla = load float, ptr %i.bkz, align 4, !tbaa !12, !noalias !390
  %i.blb = or disjoint i64 %i.bky, 1              ; 2 uses
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %.0328.i, i64 %i.blb ; 2 uses
  %i.bld = load float, ptr %i.blc, align 4, !tbaa !12, !noalias !390
  %i.ble = fmul reassoc nsz arcp contract afn float %i.bld, %i.bla
  %.idx441.i.1 = shl i64 %i.bkx, 4
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bft, i64 %.idx441.i.1 ; 4 uses
  store float %i.ble, ptr %i.blf, align 16, !tbaa !12, !noalias !390
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.blb ; 2 uses
  %i.blh = load float, ptr %i.blg, align 4, !tbaa !12, !noalias !390
  %i.bli = load float, ptr %i.blc, align 4, !tbaa !12, !noalias !390
  %i.blj = fmul reassoc nsz arcp contract afn float %i.bli, %i.blh
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blf, i64 4
  store float %i.blj, ptr %i.blk, align 4, !tbaa !12, !noalias !390
  %i.bll = load float, ptr %i.bkz, align 4, !tbaa !12, !noalias !390
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %.0327.i, i64 %i.bkx ; 2 uses
  %i.bln = load float, ptr %i.blm, align 4, !tbaa !12, !noalias !390
  %i.blo = fmul reassoc nsz arcp contract afn float %i.bln, %i.bll
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blf, i64 8
  store float %i.blo, ptr %i.blp, align 8, !tbaa !12, !noalias !390
  %i.blq = load float, ptr %i.blg, align 4, !tbaa !12, !noalias !390
  %i.blr = load float, ptr %i.blm, align 4, !tbaa !12, !noalias !390
  %i.bls = fmul reassoc nsz arcp contract afn float %i.blr, %i.blq
  %i.blt = getelementptr inbounds nuw i8, ptr %i.blf, i64 12
  store float %i.bls, ptr %i.blt, align 4, !tbaa !12, !noalias !390
  %i.blu = add nuw i64 %.0326473.i, 2             ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.blu, %i.atn
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !304

._crit_edge476.i:                                 ; preds = %.lr.ph475.i, %dt_gaussian_mean_blur.exit377.i
  %i.blv = call ptr @dt_alloc_aligned(i64 noundef %i.bez) #32, !noalias !390 ; 41 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.blv, i64 64) ]
  %i.blw = shl i64 %i.atn, 3
  %i.blx = call ptr @dt_alloc_aligned(i64 noundef %i.blw) #32, !noalias !390 ; 28 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.blx, i64 64) ]
  %i.bly = icmp ne ptr %i.blv, null
  %i.blz = icmp ne ptr %i.blx, null
  %or.cond7.i = select i1 %i.bly, i1 %i.blz, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %bb.ax

.preheader.i:                                     ; preds = %._crit_edge476.i
  br i1 %i.bfb, label %.lr.ph478.i.preheader, label %._crit_edge479.i

.lr.ph478.i.preheader:                            ; preds = %.preheader.i
  %min.iters.check1060 = icmp ult i64 %i.atn, 17
  br i1 %min.iters.check1060, label %.lr.ph478.i.preheader1365, label %vector.scevcheck

.lr.ph478.i.preheader1365:                        ; preds = %vector.body1109, %vector.memcheck1061, %vector.scevcheck, %.lr.ph478.i.preheader
  %.0324477.i.ph = phi i64 [ 0, %vector.memcheck1061 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph478.i.preheader ], [ %n.vec1106, %vector.body1109 ]
  br label %.lr.ph478.i

vector.scevcheck:                                 ; preds = %.lr.ph478.i.preheader
  %i.bma = add nsw i64 %i.atn, -1                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.blv, i64 8  ; 2 uses
  %mul.result = shl i64 %i.bma, 4                 ; 7 uses
  %mul.overflow = icmp ugt i64 %i.bma, 1152921504606846975
  %i.bmb = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bmc = icmp ult ptr %i.bmb, %scevgep
  %scevgep1003 = getelementptr i8, ptr %i.blv, i64 4 ; 2 uses
  %i.bmd = getelementptr i8, ptr %scevgep1003, i64 %mul.result
  %i.bme = icmp ult ptr %i.bmd, %scevgep1003
  %i.bmf = getelementptr i8, ptr %i.blv, i64 %mul.result
  %i.bmg = icmp ult ptr %i.bmf, %i.blv
  %i.bmh = or i1 %i.bmg, %mul.overflow
  %i.bmi = getelementptr i8, ptr %i.bft, i64 %mul.result
  %i.bmj = icmp ult ptr %i.bmi, %i.bft
  %scevgep1004 = getelementptr i8, ptr %i.bft, i64 4 ; 2 uses
  %i.bmk = getelementptr i8, ptr %scevgep1004, i64 %mul.result
  %i.bml = icmp ult ptr %i.bmk, %scevgep1004
  %scevgep1005 = getelementptr i8, ptr %i.bft, i64 8 ; 2 uses
  %i.bmm = getelementptr i8, ptr %scevgep1005, i64 %mul.result
  %i.bmn = icmp ult ptr %i.bmm, %scevgep1005
  %scevgep1006 = getelementptr i8, ptr %i.bft, i64 12 ; 2 uses
  %i.bmo = getelementptr i8, ptr %scevgep1006, i64 %mul.result
  %i.bmp = icmp ult ptr %i.bmo, %scevgep1006
  %i.bmq = or i1 %i.bme, %i.bmc
  %i.bmr = or i1 %i.bmq, %i.bmh
  %i.bms = or i1 %i.bmj, %i.bmr
  %i.bmt = or i1 %i.bml, %i.bms
  %i.bmu = or i1 %i.bmn, %i.bmt
  %i.bmv = or i1 %i.bmp, %i.bmu
  br i1 %i.bmv, label %.lr.ph478.i.preheader1365, label %vector.memcheck1061

vector.memcheck1061:                              ; preds = %vector.scevcheck
  %i.bmw = mul nsw i64 %i.atm, %i.atl             ; 3 uses
  %i.bmx = shl i64 %i.bmw, 4                      ; 3 uses
  %i.bmy = getelementptr i8, ptr %i.blv, i64 %i.bmx ; 6 uses
  %i.bmz = shl i64 %i.bmw, 3                      ; 3 uses
  %i.bna = getelementptr i8, ptr %i.blx, i64 %i.bmz ; 6 uses
  %i.bnb = getelementptr i8, ptr %i.bfa, i64 %i.bmx ; 2 uses
  %i.bnc = getelementptr i8, ptr %.0328.i, i64 4  ; 2 uses
  %i.bnd = getelementptr i8, ptr %.0328.i, i64 %i.bmz ; 2 uses
  %i.bne = getelementptr i8, ptr %.0329.i, i64 %i.bmz ; 2 uses
  %i.bnf = shl i64 %i.bmw, 2
  %i.bng = getelementptr i8, ptr %.0327.i, i64 %i.bnf ; 2 uses
  %i.bnh = getelementptr i8, ptr %i.bft, i64 %i.bmx ; 2 uses
  %bound01062 = icmp ult ptr %i.blv, %i.bna
  %bound11063 = icmp ult ptr %i.blx, %i.bmy
  %found.conflict1064 = and i1 %bound01062, %bound11063
  %bound01065 = icmp ult ptr %i.blv, %i.bnb
  %bound11066 = icmp ult ptr %i.bfa, %i.bmy
  %found.conflict1067 = and i1 %bound01065, %bound11066
  %conflict.rdx1068 = or i1 %found.conflict1064, %found.conflict1067
  %bound01069 = icmp ult ptr %i.blv, %i.bnd
  %bound11070 = icmp ult ptr %i.bnc, %i.bmy
  %found.conflict1071 = and i1 %bound01069, %bound11070
  %conflict.rdx1072 = or i1 %conflict.rdx1068, %found.conflict1071
  %bound01073 = icmp ult ptr %i.blv, %i.bne
  %bound11074 = icmp ult ptr %.0329.i, %i.bmy
  %found.conflict1075 = and i1 %bound01073, %bound11074
  %conflict.rdx1076 = or i1 %conflict.rdx1072, %found.conflict1075
  %bound01077 = icmp ult ptr %i.blv, %i.bng
  %bound11078 = icmp ult ptr %.0327.i, %i.bmy
  %found.conflict1079 = and i1 %bound01077, %bound11078
  %conflict.rdx1080 = or i1 %conflict.rdx1076, %found.conflict1079
  %bound01081 = icmp ult ptr %i.blv, %i.bnh
  %bound11082 = icmp ult ptr %i.bft, %i.bmy
  %found.conflict1083 = and i1 %bound01081, %bound11082
  %conflict.rdx1084 = or i1 %conflict.rdx1080, %found.conflict1083
  %bound01085 = icmp ult ptr %i.blx, %i.bnb
  %bound11086 = icmp ult ptr %i.bfa, %i.bna
  %found.conflict1087 = and i1 %bound01085, %bound11086
  %conflict.rdx1088 = or i1 %conflict.rdx1084, %found.conflict1087
  %bound01089 = icmp ult ptr %i.blx, %i.bnd
  %bound11090 = icmp ult ptr %i.bnc, %i.bna
  %found.conflict1091 = and i1 %bound01089, %bound11090
  %conflict.rdx1092 = or i1 %conflict.rdx1088, %found.conflict1091
  %bound01093 = icmp ult ptr %i.blx, %i.bne
  %bound11094 = icmp ult ptr %.0329.i, %i.bna
  %found.conflict1095 = and i1 %bound01093, %bound11094
  %conflict.rdx1096 = or i1 %conflict.rdx1092, %found.conflict1095
  %bound01097 = icmp ult ptr %i.blx, %i.bng
  %bound11098 = icmp ult ptr %.0327.i, %i.bna
  %found.conflict1099 = and i1 %bound01097, %bound11098
  %conflict.rdx1100 = or i1 %conflict.rdx1096, %found.conflict1099
  %bound01101 = icmp ult ptr %i.blx, %i.bnh
  %bound11102 = icmp ult ptr %i.bft, %i.bna
  %found.conflict1103 = and i1 %bound01101, %bound11102
  %conflict.rdx1104 = or i1 %conflict.rdx1100, %found.conflict1103
  br i1 %conflict.rdx1104, label %.lr.ph478.i.preheader1365, label %vector.ph1105

vector.ph1105:                                    ; preds = %vector.memcheck1061
  %i.bni = and i64 %i.atn, 7                      ; 2 uses
  %i.bnj = icmp eq i64 %i.bni, 0
  %i.bnk = select i1 %i.bnj, i64 8, i64 %i.bni
  %n.vec1106 = sub nsw i64 %i.atn, %i.bnk         ; 2 uses
  %broadcast.splatinsert1107 = insertelement <8 x float> poison, float %i.asw, i64 0
  %broadcast.splat1108 = shufflevector <8 x float> %broadcast.splatinsert1107, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1105
  %index1110 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1149, %vector.body1109 ] ; 3 uses
  %vec.ind1111 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1105 ], [ %vec.ind.next1150, %vector.body1109 ] ; 2 uses
  %i.bnl = shl <8 x i64> %vec.ind1111, splat (i64 2) ; 6 uses
  %i.bnm = extractelement <8 x i64> %i.bnl, i64 0
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bnm
  %wide.vec1112 = load <32 x float>, ptr %i.bnn, align 64, !tbaa !12, !alias.scope !421, !noalias !390 ; 4 uses
  %strided.vec1113 = shufflevector <32 x float> %wide.vec1112, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1114 = shufflevector <32 x float> %wide.vec1112, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec1115 = shufflevector <32 x float> %wide.vec1112, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec1116 = shufflevector <32 x float> %wide.vec1112, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bno = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec1113, %broadcast.splat1108 ; 2 uses
  %i.bnp = or disjoint <8 x i64> %i.bnl, splat (i64 1) ; 2 uses
  %i.bnq = or disjoint <8 x i64> %i.bnl, splat (i64 2) ; 3 uses
  %i.bnr = extractelement <8 x i64> %i.bnq, i64 0
  %i.bns = or disjoint <8 x i64> %i.bnl, splat (i64 3) ; 2 uses
  %i.bnt = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec1116, %broadcast.splat1108 ; 2 uses
  %i.bnu = fmul reassoc nsz arcp contract afn <8 x float> %i.bnt, %i.bno
  %i.bnv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1115, %strided.vec1114
  %i.bnw = fsub reassoc nsz arcp contract afn <8 x float> %i.bnu, %i.bnv ; 5 uses
  %i.bnx = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bnw)
  %i.bny = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bnx, splat (float f0x35000000) ; 15 uses
  %i.bnz = xor <8 x i1> %i.bny, splat (i1 true)   ; 3 uses
  %wide.gep1117 = getelementptr inbounds nuw [4 x i8], ptr %i.blv, <8 x i64> %i.bnq ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1117, <8 x i1> %i.bnz), !tbaa !12, !alias.scope !422, !noalias !423
  %wide.gep1118 = getelementptr inbounds nuw [4 x i8], ptr %i.blv, <8 x i64> %i.bnp ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1118, <8 x i1> %i.bnz), !tbaa !12, !alias.scope !422, !noalias !423
  %wide.gep1119 = getelementptr inbounds nuw [4 x i8], ptr %i.blv, <8 x i64> %i.bnl ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1119, <8 x i1> %i.bnz), !tbaa !12, !alias.scope !422, !noalias !423
  %i.boa = fdiv reassoc nsz arcp contract afn <8 x float> %i.bnt, %i.bnw ; 2 uses
  %i.bob = fneg reassoc nsz arcp contract afn <8 x float> %strided.vec1114
  %i.boc = fdiv reassoc nsz arcp contract afn <8 x float> %i.bob, %i.bnw ; 2 uses
  %i.bod = fneg reassoc nsz arcp contract afn <8 x float> %strided.vec1115
  %i.boe = fdiv reassoc nsz arcp contract afn <8 x float> %i.bod, %i.bnw ; 2 uses
  %i.bof = fdiv reassoc nsz arcp contract afn <8 x float> %i.bno, %i.bnw ; 2 uses
  %wide.gep1120 = getelementptr inbounds nuw [4 x i8], ptr %i.bft, <8 x i64> %i.bnl ; 2 uses
  %wide.masked.gather1121 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1120, <8 x i1> %i.bny, <8 x float> poison), !tbaa !12, !alias.scope !424, !noalias !390
  %i.bog = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1121, %i.boa
  %wide.gep1122 = getelementptr inbounds nuw [4 x i8], ptr %i.bft, <8 x i64> %i.bnp ; 2 uses
  %wide.masked.gather1123 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1122, <8 x i1> %i.bny, <8 x float> poison), !tbaa !12, !alias.scope !424, !noalias !390
  %i.boh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1123, %i.boc
  %i.boi = fadd reassoc nsz arcp contract afn <8 x float> %i.boh, %i.bog ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.boi, <8 x ptr> align 4 %wide.gep1119, <8 x i1> %i.bny), !tbaa !12, !alias.scope !422, !noalias !423
  %wide.masked.gather1124 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1120, <8 x i1> %i.bny, <8 x float> poison), !tbaa !12, !alias.scope !424, !noalias !390
  %i.boj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1124, %i.boe
  %wide.masked.gather1125 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1122, <8 x i1> %i.bny, <8 x float> poison), !tbaa !12, !alias.scope !424, !noalias !390
  %i.bok = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1125, %i.bof
  %i.bol = fadd reassoc nsz arcp contract afn <8 x float> %i.bok, %i.boj ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bol, <8 x ptr> align 4 %wide.gep1118, <8 x i1> %i.bny), !tbaa !12, !alias.scope !422, !noalias !423
  %wide.gep1126 = getelementptr inbounds nuw [4 x i8], ptr %i.bft, <8 x i64> %i.bnq ; 2 uses
  %wide.masked.gather1127 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1126, <8 x i1> %i.bny, <8 x float> poison), !tbaa !12, !alias.scope !424, !noalias !390
  %i.bom = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1127, %i.boa
  %wide.gep1128 = getelementptr inbounds nuw [4 x i8], ptr %i.bft, <8 x i64> %i.bns ; 2 uses
  %wide.masked.gather1129 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1128, <8 x i1> %i.bny, <8 x float> poison), !tbaa !12, !alias.scope !424, !noalias !390
  %i.bon = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1129, %i.boc
  %i.boo = fadd reassoc nsz arcp contract afn <8 x float> %i.bon, %i.bom
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.boo, <8 x ptr> align 4 %wide.gep1117, <8 x i1> %i.bny), !tbaa !12, !alias.scope !422, !noalias !423
  %wide.masked.gather1130 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1126, <8 x i1> %i.bny, <8 x float> poison), !tbaa !12, !alias.scope !424, !noalias !390
  %i.bop = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1130, %i.boe
  %wide.masked.gather1131 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1128, <8 x i1> %i.bny, <8 x float> poison), !tbaa !12, !alias.scope !424, !noalias !390
  %i.boq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1131, %i.bof
  %i.bor = fadd reassoc nsz arcp contract afn <8 x float> %i.boq, %i.bop
  %predphi1132 = select <8 x i1> %i.bny, <8 x float> %i.bol, <8 x float> zeroinitializer
  %predphi1133 = select <8 x i1> %i.bny, <8 x float> %i.boi, <8 x float> zeroinitializer
  %predphi1134 = select <8 x i1> %i.bny, <8 x float> %i.bor, <8 x float> zeroinitializer
  %wide.gep1135 = getelementptr inbounds nuw [4 x i8], ptr %i.blv, <8 x i64> %i.bns
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi1134, <8 x ptr> align 4 %wide.gep1135, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !422, !noalias !423
  %i.bos = shl i64 %index1110, 1                  ; 3 uses
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %.0328.i, i64 %i.bos
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 4
  %wide.vec1136 = load <16 x float>, ptr %i.bou, align 4, !tbaa !12, !alias.scope !425, !noalias !390
  %strided.vec1137 = shufflevector <16 x float> %wide.vec1136, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bos ; 2 uses
  %wide.vec1138 = load <16 x float>, ptr %i.bov, align 4, !tbaa !12, !alias.scope !426, !noalias !390 ; 2 uses
  %strided.vec1139 = shufflevector <16 x float> %wide.vec1138, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1140 = shufflevector <16 x float> %wide.vec1138, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bow = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1139, %predphi1133
  %i.box = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1140, %predphi1132
  %i.boy = fadd reassoc nsz arcp contract afn <8 x float> %i.box, %i.bow
  %i.boz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec1137, %i.boy
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.blx, i64 %i.bos
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %.0327.i, i64 %index1110
  %wide.load1141 = load <8 x float>, ptr %i.bpb, align 4, !tbaa !12, !alias.scope !427, !noalias !390
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.blv, i64 %i.bnr
  %wide.vec1142 = load <32 x float>, ptr %i.bpc, align 8, !tbaa !12, !alias.scope !422, !noalias !390 ; 2 uses
  %strided.vec1143 = shufflevector <32 x float> %wide.vec1142, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1144 = shufflevector <32 x float> %wide.vec1142, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %wide.vec1145 = load <16 x float>, ptr %i.bov, align 4, !tbaa !12, !alias.scope !426, !noalias !390 ; 2 uses
  %strided.vec1146 = shufflevector <16 x float> %wide.vec1145, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1147 = shufflevector <16 x float> %wide.vec1145, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bpd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1146, %strided.vec1143
  %i.bpe = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1147, %strided.vec1144
  %i.bpf = fadd reassoc nsz arcp contract afn <8 x float> %i.bpe, %i.bpd
  %i.bpg = fsub reassoc nsz arcp contract afn <8 x float> %wide.load1141, %i.bpf
  %interleaved.vec1148 = shufflevector <8 x float> %i.boz, <8 x float> %i.bpg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec1148, ptr %i.bpa, align 64, !tbaa !12, !alias.scope !428, !noalias !390
  %index.next1149 = add nuw i64 %index1110, 8     ; 2 uses
  %vec.ind.next1150 = add nuw <8 x i64> %vec.ind1111, splat (i64 8)
  %i.bph = icmp eq i64 %index.next1149, %n.vec1106
  br i1 %i.bph, label %.lr.ph478.i.preheader1365, label %vector.body1109, !llvm.loop !313

.lr.ph475.i:                                      ; preds = %.lr.ph475.i.preheader1366, %.lr.ph475.i
  %.0325474.i = phi i64 [ %i.bqm, %.lr.ph475.i ], [ %.0325474.i.ph, %.lr.ph475.i.preheader1366 ] ; 4 uses
  %i.bpi = shl i64 %.0325474.i, 1                 ; 2 uses
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bpi ; 2 uses
  %i.bpk = load float, ptr %i.bpj, align 4, !tbaa !12, !noalias !390
  %i.bpl = or disjoint i64 %i.bpi, 1              ; 2 uses
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %.0328.i, i64 %i.bpl ; 2 uses
  %i.bpn = load float, ptr %i.bpm, align 4, !tbaa !12, !noalias !390
  %i.bpo = fmul reassoc nsz arcp contract afn float %i.bpn, %i.bpk
  %.idx440.i = shl i64 %.0325474.i, 4
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bft, i64 %.idx440.i ; 5 uses
  %i.bpq = load float, ptr %i.bpp, align 16, !tbaa !12, !noalias !390
  %i.bpr = fsub reassoc nsz arcp contract afn float %i.bpq, %i.bpo
  store float %i.bpr, ptr %i.bpp, align 16, !tbaa !12, !noalias !390
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %.0329.i, i64 %i.bpl ; 2 uses
  %i.bpt = load float, ptr %i.bps, align 4, !tbaa !12, !noalias !390
  %i.bpu = load float, ptr %i.bpm, align 4, !tbaa !12, !noalias !390
  %i.bpv = fmul reassoc nsz arcp contract afn float %i.bpu, %i.bpt
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpp, i64 4 ; 2 uses
  %i.bpx = load float, ptr %i.bpw, align 4, !tbaa !12, !noalias !390
  %i.bpy = fsub reassoc nsz arcp contract afn float %i.bpx, %i.bpv
  store float %i.bpy, ptr %i.bpw, align 4, !tbaa !12, !noalias !390
  %i.bpz = load float, ptr %i.bpj, align 4, !tbaa !12, !noalias !390
  %i.bqa = getelementptr inbounds nuw [4 x i8], ptr %.0327.i, i64 %.0325474.i ; 2 uses
  %i.bqb = load float, ptr %i.bqa, align 4, !tbaa !12, !noalias !390
  %i.bqc = fmul reassoc nsz arcp contract afn float %i.bqb, %i.bpz
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpp, i64 8 ; 2 uses
  %i.bqe = load float, ptr %i.bqd, align 8, !tbaa !12, !noalias !390
  %i.bqf = fsub reassoc nsz arcp contract afn float %i.bqe, %i.bqc
  store float %i.bqf, ptr %i.bqd, align 8, !tbaa !12, !noalias !390
  %i.bqg = load float, ptr %i.bps, align 4, !tbaa !12, !noalias !390
  %i.bqh = load float, ptr %i.bqa, align 4, !tbaa !12, !noalias !390
  %i.bqi = fmul reassoc nsz arcp contract afn float %i.bqh, %i.bqg
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bpp, i64 12 ; 2 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.bzl = fsub reassoc nsz arcp contract afn float %i.bzk, %i.bza ; 2 uses
  %i.bzm = mul i64 %.08489.i405.i, %i.aq          ; 2 uses
  br i1 %min.iters.check1213, label %scalar.ph1212.preheader, label %vector.ph1214

vector.ph1214:                                    ; preds = %.preheader.i404.i
  %broadcast.splatinsert1216 = insertelement <8 x i64> poison, i64 %i.bzi, i64 0
  %broadcast.splat1217 = shufflevector <8 x i64> %broadcast.splatinsert1216, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1218 = insertelement <8 x i64> poison, i64 %i.bzj, i64 0
  %broadcast.splat1219 = shufflevector <8 x i64> %broadcast.splatinsert1218, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1220 = insertelement <8 x float> poison, float %i.bzl, i64 0
  %broadcast.splat1221 = shufflevector <8 x float> %broadcast.splatinsert1220, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1214
  %index1231 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1250, %vector.body1230 ] ; 2 uses
  %vec.ind1232 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1214 ], [ %vec.ind.next1251, %vector.body1230 ] ; 2 uses
  %i.bzn = uitofp <8 x i64> %vec.ind1232 to <8 x float>
  %i.bzo = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat1223, %i.bzn
  %i.bzp = fmul reassoc nsz arcp contract afn <8 x float> %i.bzo, %i.bxh ; 2 uses
  %i.bzq = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.bzp)
  %i.bzr = fptoui <8 x float> %i.bzq to <8 x i64> ; 3 uses
  %i.bzs = add <8 x i64> %i.bzr, splat (i64 1)    ; 2 uses
  %i.bzt = icmp ugt <8 x i64> %broadcast.splat1227, %i.bzr
  %i.bzu = select <8 x i1> %i.bzt, <8 x i64> %i.bzr, <8 x i64> %broadcast.splat1229 ; 2 uses
  %i.bzv = icmp ult <8 x i64> %i.bzs, %broadcast.splat1227
  %i.bzw = select <8 x i1> %i.bzv, <8 x i64> %i.bzs, <8 x i64> %broadcast.splat1229 ; 3 uses
  %i.bzx = add <8 x i64> %i.bzu, %broadcast.splat1217
  %i.bzy = shl <8 x i64> %i.bzx, splat (i64 3)
  %wide.gep1233 = getelementptr inbounds nuw i8, ptr %i.blx, <8 x i64> %i.bzy ; 2 uses
  %i.bzz = add <8 x i64> %i.bzw, %broadcast.splat1217
  %i.caa = shl <8 x i64> %i.bzz, splat (i64 3)
  %wide.gep1234 = getelementptr inbounds nuw i8, ptr %i.blx, <8 x i64> %i.caa ; 2 uses
  %i.cab = add <8 x i64> %i.bzw, %broadcast.splat1219
  %i.cac = shl <8 x i64> %i.cab, splat (i64 3)
  %wide.gep1235 = getelementptr inbounds nuw i8, ptr %i.blx, <8 x i64> %i.cac ; 2 uses
  %i.cad = add <8 x i64> %i.bzu, %broadcast.splat1219
  %i.cae = shl <8 x i64> %i.cad, splat (i64 3)
  %wide.gep1236 = getelementptr inbounds nuw i8, ptr %i.blx, <8 x i64> %i.cae ; 2 uses
  %i.caf = uitofp <8 x i64> %i.bzw to <8 x float>
  %i.cag = fsub reassoc nsz arcp contract afn <8 x float> %i.caf, %i.bzp ; 5 uses
  %i.cah = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.cag ; 4 uses
  %i.cai = add i64 %index1231, %i.bzm
  %i.caj = shl i64 %i.cai, 3
  %i.cak = getelementptr inbounds nuw i8, ptr %i.btr, i64 %i.caj
  %wide.masked.gather1237 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1236, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !433, !noalias !435
  %i.cal = fmul reassoc nsz arcp contract afn <8 x float> %i.cag, %wide.masked.gather1237
  %wide.masked.gather1238 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1235, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !433, !noalias !435
  %i.cam = fmul reassoc nsz arcp contract afn <8 x float> %i.cah, %wide.masked.gather1238
  %i.can = fadd reassoc nsz arcp contract afn <8 x float> %i.cam, %i.cal ; 2 uses
  %wide.masked.gather1239 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1233, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !433, !noalias !435
  %i.cao = fmul reassoc nsz arcp contract afn <8 x float> %i.cag, %wide.masked.gather1239
  %wide.masked.gather1240 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1234, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !433, !noalias !435
  %i.cap = fmul reassoc nsz arcp contract afn <8 x float> %i.cah, %wide.masked.gather1240
  %i.caq = fsub reassoc nsz arcp contract afn <8 x float> %i.cao, %i.can
  %i.car = fadd reassoc nsz arcp contract afn <8 x float> %i.caq, %i.cap
  %i.cas = fmul reassoc nsz arcp contract afn <8 x float> %i.car, %broadcast.splat1221
  %i.cat = fadd reassoc nsz arcp contract afn <8 x float> %i.cas, %i.can
  %wide.gep1241 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1236, i64 4
  %wide.masked.gather1242 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1241, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !433, !noalias !435
  %i.cau = fmul reassoc nsz arcp contract afn <8 x float> %i.cag, %wide.masked.gather1242
  %wide.gep1243 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1235, i64 4
  %wide.masked.gather1244 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1243, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !433, !noalias !435
  %i.cav = fmul reassoc nsz arcp contract afn <8 x float> %i.cah, %wide.masked.gather1244
  %i.caw = fadd reassoc nsz arcp contract afn <8 x float> %i.cav, %i.cau ; 2 uses
  %wide.gep1245 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1233, i64 4
  %wide.masked.gather1246 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1245, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !433, !noalias !435
  %i.cax = fmul reassoc nsz arcp contract afn <8 x float> %i.cag, %wide.masked.gather1246
  %wide.gep1247 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1234, i64 4
  %wide.masked.gather1248 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1247, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !433, !noalias !435
  %i.cay = fmul reassoc nsz arcp contract afn <8 x float> %i.cah, %wide.masked.gather1248
  %i.caz = fsub reassoc nsz arcp contract afn <8 x float> %i.cax, %i.caw
  %i.cba = fadd reassoc nsz arcp contract afn <8 x float> %i.caz, %i.cay
  %i.cbb = fmul reassoc nsz arcp contract afn <8 x float> %i.cba, %broadcast.splat1221
  %i.cbc = fadd reassoc nsz arcp contract afn <8 x float> %i.cbb, %i.caw
  %interleaved.vec1249 = shufflevector <8 x float> %i.cat, <8 x float> %i.cbc, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec1249, ptr %i.cak, align 8, !tbaa !12, !alias.scope !434, !noalias !436
  %index.next1250 = add nuw i64 %index1231, 8     ; 2 uses
  %vec.ind.next1251 = add nuw <8 x i64> %vec.ind1232, splat (i64 8)
  %i.cbd = icmp eq i64 %index.next1250, %n.vec1215
  br i1 %i.cbd, label %middle.block1252, label %vector.body1230, !llvm.loop !324

middle.block1252:                                 ; preds = %vector.body1230
  br i1 %cmp.n1253, label %._crit_edge.i410.i, label %scalar.ph1212.preheader

scalar.ph1212.preheader:                          ; preds = %.preheader.i404.i, %middle.block1252
  %.08388.i406.i.ph = phi i64 [ 0, %.preheader.i404.i ], [ %n.vec1215, %middle.block1252 ]
  %i.cbe = insertelement <2 x float> poison, float %i.bzl, i64 0
  %i.cbf = shufflevector <2 x float> %i.cbe, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph1212

._crit_edge.i410.i:                               ; preds = %scalar.ph1212, %middle.block1252
  %i.cbg = add nuw i64 %.08489.i405.i, 1          ; 2 uses
  %exitcond93.not.i411.i = icmp eq i64 %i.cbg, %i.ar
  br i1 %exitcond93.not.i411.i, label %interpolate_bilinear.exit412.i, label %.preheader.i404.i

scalar.ph1212:                                    ; preds = %scalar.ph1212.preheader, %scalar.ph1212
  %.08388.i406.i = phi i64 [ %i.ccv, %scalar.ph1212 ], [ %.08388.i406.i.ph, %scalar.ph1212.preheader ] ; 3 uses
  %i.cbh = uitofp reassoc nsz arcp contract afn i64 %.08388.i406.i to float
  %i.cbi = fmul reassoc nnan nsz arcp contract afn float %i.btw, %i.cbh
  %i.cbj = fmul reassoc nsz arcp contract afn float %i.cbi, %i.bxi ; 2 uses
  %i.cbk = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.cbj)
  %i.cbl = fptoui float %i.cbk to i64             ; 3 uses
  %i.cbm = add i64 %i.cbl, 1                      ; 2 uses
  %i.cbn = icmp ugt i64 %i.atl, %i.cbl
  %i.cbo = select i1 %i.cbn, i64 %i.cbl, i64 %i.btu ; 2 uses
  %i.cbp = icmp ult i64 %i.cbm, %i.atl
  %i.cbq = select i1 %i.cbp, i64 %i.cbm, i64 %i.btu ; 3 uses
  %i.cbr = add i64 %i.cbo, %i.bzi
  %.idx434.i = shl i64 %i.cbr, 3
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.blx, i64 %.idx434.i
  %i.cbt = add i64 %i.cbq, %i.bzi
  %.idx435.i = shl i64 %i.cbt, 3
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.blx, i64 %.idx435.i
  %i.cbv = add i64 %i.cbq, %i.bzj
  %.idx436.i = shl i64 %i.cbv, 3
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.blx, i64 %.idx436.i
  %i.cbx = add i64 %i.cbo, %i.bzj
  %.idx437.i = shl i64 %i.cbx, 3
  %i.cby = getelementptr inbounds nuw i8, ptr %i.blx, i64 %.idx437.i
  %i.cbz = uitofp reassoc nsz arcp contract afn i64 %i.cbq to float
  %i.cca = fsub reassoc nsz arcp contract afn float %i.cbz, %i.cbj ; 2 uses
  %i.ccb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cca
  %i.ccc = add i64 %.08388.i406.i, %i.bzm
  %.idx438.i = shl i64 %i.ccc, 3
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.btr, i64 %.idx438.i
  %i.cce = load <2 x float>, ptr %i.cby, align 8, !tbaa !12, !alias.scope !433, !noalias !435
  %i.ccf = insertelement <2 x float> poison, float %i.cca, i64 0
  %i.ccg = shufflevector <2 x float> %i.ccf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cch = fmul reassoc nsz arcp contract afn <2 x float> %i.ccg, %i.cce
  %i.cci = load <2 x float>, ptr %i.cbw, align 8, !tbaa !12, !alias.scope !433, !noalias !435
  %i.ccj = insertelement <2 x float> poison, float %i.ccb, i64 0
  %i.cck = shufflevector <2 x float> %i.ccj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ccl = fmul reassoc nsz arcp contract afn <2 x float> %i.cck, %i.cci
  %i.ccm = fadd reassoc nsz arcp contract afn <2 x float> %i.ccl, %i.cch ; 2 uses
  %i.ccn = load <2 x float>, ptr %i.cbs, align 8, !tbaa !12, !alias.scope !433, !noalias !435
  %i.cco = fmul reassoc nsz arcp contract afn <2 x float> %i.ccg, %i.ccn
  %i.ccp = load <2 x float>, ptr %i.cbu, align 8, !tbaa !12, !alias.scope !433, !noalias !435
  %i.ccq = fmul reassoc nsz arcp contract afn <2 x float> %i.cck, %i.ccp
  %i.ccr = fsub reassoc nsz arcp contract afn <2 x float> %i.cco, %i.ccm
  %i.ccs = fadd reassoc nsz arcp contract afn <2 x float> %i.ccr, %i.ccq
  %i.cct = fmul reassoc nsz arcp contract afn <2 x float> %i.ccs, %i.cbf
  %i.ccu = fadd reassoc nsz arcp contract afn <2 x float> %i.cct, %i.ccm
  store <2 x float> %i.ccu, ptr %i.ccd, align 8, !tbaa !12, !alias.scope !434, !noalias !436
  %i.ccv = add nuw i64 %.08388.i406.i, 1          ; 2 uses
  %exitcond92.not.i409.i = icmp eq i64 %i.ccv, %i.aq
  br i1 %exitcond92.not.i409.i, label %._crit_edge.i410.i, label %scalar.ph1212, !llvm.loop !325

interpolate_bilinear.exit412.i:                   ; preds = %._crit_edge.i410.i, %interpolate_bilinear.exit399.i, %.preheader.lr.ph.i388.i
  call void @free(ptr noundef %i.blv) #32, !noalias !390
  call void @free(ptr noundef nonnull %i.blx) #32, !noalias !390
  br label %bb.bh

.critedge.i:                                      ; preds = %._crit_edge479.i
  call void @free(ptr noundef %i.bft) #32, !noalias !390
  call void @free(ptr noundef nonnull %i.bfa) #32, !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !412
  %i.ccw = call ptr @dt_gaussian_init(i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, float noundef %i.ate, i32 noundef 0) #32, !noalias !390 ; 3 uses
  %.not.i413.i = icmp eq ptr %i.ccw, null
  br i1 %.not.i413.i, label %dt_gaussian_mean_blur.exit414.i, label %bb.bf

bb.bf:                                            ; preds = %.critedge.i
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.ccw, ptr noundef nonnull %i.blv, ptr noundef nonnull %i.blv) #32, !noalias !390
  call void @dt_gaussian_free(ptr noundef nonnull %i.ccw) #32, !noalias !390
  br label %dt_gaussian_mean_blur.exit414.i

dt_gaussian_mean_blur.exit414.i:                  ; preds = %bb.bf, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !412
  %i.ccx = call ptr @dt_gaussian_init(i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.ate, i32 noundef 0) #32, !noalias !390 ; 3 uses
  %.not.i415.i = icmp eq ptr %i.ccx, null
  br i1 %.not.i415.i, label %dt_gaussian_mean_blur.exit416.i, label %bb.bg

bb.bg:                                            ; preds = %dt_gaussian_mean_blur.exit414.i
  call void @dt_gaussian_blur(ptr noundef nonnull %i.ccx, ptr noundef nonnull %i.blx, ptr noundef nonnull %i.blx) #32, !noalias !390
  call void @dt_gaussian_free(ptr noundef nonnull %i.ccx) #32, !noalias !390
  br label %dt_gaussian_mean_blur.exit416.i

dt_gaussian_mean_blur.exit416.i:                  ; preds = %bb.bg, %dt_gaussian_mean_blur.exit414.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !412
  br label %bb.bh

bb.bh:                                            ; preds = %dt_gaussian_mean_blur.exit416.i, %interpolate_bilinear.exit412.i
  %.0323.i = phi ptr [ %i.btp, %interpolate_bilinear.exit412.i ], [ %i.blv, %dt_gaussian_mean_blur.exit416.i ] ; 8 uses
  %.0322.i = phi ptr [ %i.btr, %interpolate_bilinear.exit412.i ], [ %i.blx, %dt_gaussian_mean_blur.exit416.i ] ; 9 uses
  br i1 %.not436, label %_guide_with_chromaticity.exit.sink.split, label %.lr.ph490.i.preheader

.lr.ph490.i.preheader:                            ; preds = %bb.bh
  %min.iters.check1290 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check1290, label %.lr.ph490.i.preheader1364, label %vector.memcheck1291

vector.memcheck1291:                              ; preds = %.lr.ph490.i.preheader
  %i.ccy = getelementptr i8, ptr %i.asr, i64 4    ; 4 uses
  %i.ccz = mul nsw i64 %i.aq, %i.ar               ; 3 uses
  %i.cda = shl i64 %i.ccz, 3                      ; 3 uses
  %i.cdb = getelementptr i8, ptr %i.asr, i64 %i.cda ; 4 uses
  %i.cdc = shl i64 %i.ccz, 2
  %i.cdd = getelementptr i8, ptr %i.ast, i64 %i.cdc ; 4 uses
  %i.cde = getelementptr i8, ptr %i.asq, i64 %i.cda ; 2 uses
  %i.cdf = shl i64 %i.ccz, 4
  %i.cdg = getelementptr i8, ptr %.0323.i, i64 %i.cdf ; 2 uses
  %i.cdh = getelementptr i8, ptr %.0322.i, i64 %i.cda ; 2 uses
  %bound01292 = icmp ult ptr %i.ccy, %i.cdd
  %bound11293 = icmp ult ptr %i.ast, %i.cdb
  %found.conflict1294 = and i1 %bound01292, %bound11293
  %bound01295 = icmp ult ptr %i.ccy, %i.cde
  %bound11296 = icmp ult ptr %i.asq, %i.cdb
  %found.conflict1297 = and i1 %bound01295, %bound11296
  %conflict.rdx1298 = or i1 %found.conflict1294, %found.conflict1297
  %bound01299 = icmp ult ptr %i.ccy, %i.cdg
  %bound11300 = icmp ult ptr %.0323.i, %i.cdb
  %found.conflict1301 = and i1 %bound01299, %bound11300
  %conflict.rdx1302 = or i1 %conflict.rdx1298, %found.conflict1301
  %bound01303 = icmp ult ptr %i.ccy, %i.cdh
  %bound11304 = icmp ult ptr %.0322.i, %i.cdb
  %found.conflict1305 = and i1 %bound01303, %bound11304
  %conflict.rdx1306 = or i1 %conflict.rdx1302, %found.conflict1305
  %bound01307 = icmp ult ptr %i.ast, %i.cde
  %bound11308 = icmp ult ptr %i.asq, %i.cdd
  %found.conflict1309 = and i1 %bound01307, %bound11308
  %conflict.rdx1310 = or i1 %conflict.rdx1306, %found.conflict1309
  %bound01311 = icmp ult ptr %i.ast, %i.cdg
  %bound11312 = icmp ult ptr %.0323.i, %i.cdd
  %found.conflict1313 = and i1 %bound01311, %bound11312
  %conflict.rdx1314 = or i1 %conflict.rdx1310, %found.conflict1313
  %bound01315 = icmp ult ptr %i.ast, %i.cdh
  %bound11316 = icmp ult ptr %.0322.i, %i.cdd
  %found.conflict1317 = and i1 %bound01315, %bound11316
  %conflict.rdx1318 = or i1 %conflict.rdx1314, %found.conflict1317
  br i1 %conflict.rdx1318, label %.lr.ph490.i.preheader1364, label %vector.ph1319

vector.ph1319:                                    ; preds = %vector.memcheck1291
  %n.vec1320 = and i64 %i.as, -8                  ; 3 uses
  %broadcast.splatinsert1321 = insertelement <8 x float> poison, float %i.gm, i64 0
  %broadcast.splat1322 = shufflevector <8 x float> %broadcast.splatinsert1321, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1323 = insertelement <8 x float> poison, float %i.gv, i64 0
  %broadcast.splat1324 = shufflevector <8 x float> %broadcast.splatinsert1323, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1319
  %index1326 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1350, %vector.body1325 ] ; 5 uses
  %vec.ind1327 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1319 ], [ %vec.ind.next1351, %vector.body1325 ] ; 2 uses
  %i.cdi = shl <8 x i64> %vec.ind1327, splat (i64 1) ; 2 uses
  %i.cdj = extractelement <8 x i64> %i.cdi, i64 0 ; 2 uses
  %i.cdk = getelementptr inbounds nuw [4 x i8], ptr %i.asq, i64 %i.cdj
  %wide.vec1328 = load <16 x float>, ptr %i.cdk, align 4, !tbaa !12, !alias.scope !385, !noalias !437 ; 2 uses
  %strided.vec1329 = shufflevector <16 x float> %wide.vec1328, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec1330 = shufflevector <16 x float> %wide.vec1328, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.cdl = or disjoint <8 x i64> %i.cdi, splat (i64 1)
  %i.cdm = shl i64 %index1326, 4
  %i.cdn = getelementptr inbounds nuw i8, ptr %.0323.i, i64 %i.cdm
  %wide.vec1331 = load <32 x float>, ptr %i.cdn, align 64, !tbaa !12, !alias.scope !438, !noalias !390 ; 4 uses
  %strided.vec1332 = shufflevector <32 x float> %wide.vec1331, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1333 = shufflevector <32 x float> %wide.vec1331, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1334 = shufflevector <32 x float> %wide.vec1331, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1335 = shufflevector <32 x float> %wide.vec1331, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cdo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1332, %strided.vec1329
  %i.cdp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1333, %strided.vec1330
  %i.cdq = getelementptr inbounds nuw [4 x i8], ptr %.0322.i, i64 %i.cdj
  %wide.vec1336 = load <16 x float>, ptr %i.cdq, align 64, !tbaa !12, !alias.scope !439, !noalias !390 ; 2 uses
  %strided.vec1337 = shufflevector <16 x float> %wide.vec1336, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1338 = shufflevector <16 x float> %wide.vec1336, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cdr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1334, %strided.vec1329
  %i.cds = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1335, %strided.vec1330
  %i.cdt = fadd reassoc nsz arcp contract afn <8 x float> %i.cds, %i.cdr
  %i.cdu = fadd reassoc nsz arcp contract afn <8 x float> %i.cdt, %strided.vec1338
  %i.cdv = fadd reassoc nsz arcp contract afn <8 x float> %i.cdo, splat (float -1.000000e+00)
  %i.cdw = fadd reassoc nsz arcp contract afn <8 x float> %i.cdv, %i.cdp
  %i.cdx = fadd reassoc nsz arcp contract afn <8 x float> %i.cdw, %strided.vec1337
  %i.cdy = getelementptr inbounds nuw [4 x i8], ptr %i.ass, i64 %index1326
  %wide.load1339 = load <8 x float>, ptr %i.cdy, align 4, !tbaa !12, !alias.scope !387, !noalias !440 ; 2 uses
  %i.cdz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load1339, %broadcast.splat1322 ; 3 uses
  %i.cea = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cdz, splat (float f0x3F7FF000)
  %i.ceb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cdz, splat (float -1.000000e+00)
  %i.cec = select reassoc nsz arcp contract afn <8 x i1> %i.ceb, <8 x float> splat (float -1.000000e+00), <8 x float> %i.cdz
  %i.ced = fmul reassoc nsz arcp contract afn <8 x float> %i.cec, splat (float 4.096000e+03)
  %i.cee = fadd reassoc nsz arcp contract afn <8 x float> %i.ced, splat (float 4.096000e+03)
  %i.cef = select <8 x i1> %i.cea, <8 x float> splat (float 8.191000e+03), <8 x float> %i.cee ; 2 uses
  %i.ceg = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.cef) ; 2 uses
  %i.ceh = fptosi <8 x float> %i.ceg to <8 x i32>
  %i.cei = sext <8 x i32> %i.ceh to <8 x i64>
  %wide.gep1340 = getelementptr inbounds [4 x i8], ptr @satweights, <8 x i64> %i.cei ; 2 uses
  %wide.masked.gather1341 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1340, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !412 ; 2 uses
  %i.cej = fsub reassoc nsz arcp contract afn <8 x float> %i.cef, %i.ceg
  %wide.gep1342 = getelementptr i8, <8 x ptr> %wide.gep1340, i64 4
  %wide.masked.gather1343 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1342, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !412
  %i.cek = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1343, %wide.masked.gather1341
  %i.cel = fmul reassoc nsz arcp contract afn <8 x float> %i.cej, %i.cek
  %i.cem = fadd reassoc nsz arcp contract afn <8 x float> %i.cel, %wide.masked.gather1341
  %i.cen = fmul reassoc nsz arcp contract afn <8 x float> %i.cem, %i.cdx
  %i.ceo = fadd reassoc nsz arcp contract afn <8 x float> %i.cen, splat (float 1.000000e+00)
  %wide.gep1344 = getelementptr inbounds nuw [4 x i8], ptr %i.asr, <8 x i64> %i.cdl
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ceo, <8 x ptr> align 4 %wide.gep1344, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !441, !noalias !442
  %i.cep = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %index1326
  %wide.load1345 = load <8 x float>, ptr %i.cep, align 4, !tbaa !12, !alias.scope !389, !noalias !443 ; 3 uses
  %i.ceq = fcmp reassoc nsz arcp contract afn ult <8 x float> %wide.load1345, zeroinitializer
  %i.cer = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load1345, splat (float 1.000000e+00)
  %i.ces = select reassoc nsz arcp contract afn <8 x i1> %i.cer, <8 x float> %wide.load1345, <8 x float> splat (float 1.000000e+00)
  %i.cet = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ces
  %i.ceu = select <8 x i1> %i.ceq, <8 x float> splat (float 1.000000e+00), <8 x float> %i.cet
  %i.cev = fmul reassoc nsz arcp contract afn <8 x float> %i.ceu, %i.cdu
  %i.cew = fsub reassoc nsz arcp contract afn <8 x float> %wide.load1339, %broadcast.splat1324 ; 3 uses
  %i.cex = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cew, splat (float f0x3F7FF000)
  %i.cey = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cew, splat (float -1.000000e+00)
  %i.cez = select reassoc nsz arcp contract afn <8 x i1> %i.cey, <8 x float> splat (float -1.000000e+00), <8 x float> %i.cew
  %i.cfa = fmul reassoc nsz arcp contract afn <8 x float> %i.cez, splat (float 4.096000e+03)
  %i.cfb = fadd reassoc nsz arcp contract afn <8 x float> %i.cfa, splat (float 4.096000e+03)
  %i.cfc = select <8 x i1> %i.cex, <8 x float> splat (float 8.191000e+03), <8 x float> %i.cfb ; 2 uses
  %i.cfd = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.cfc) ; 2 uses
  %i.cfe = fptosi <8 x float> %i.cfd to <8 x i32>
  %i.cff = sext <8 x i32> %i.cfe to <8 x i64>
  %wide.gep1346 = getelementptr inbounds [4 x i8], ptr @satweights, <8 x i64> %i.cff ; 2 uses
  %wide.masked.gather1347 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1346, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !412 ; 2 uses
  %i.cfg = fsub reassoc nsz arcp contract afn <8 x float> %i.cfc, %i.cfd
  %wide.gep1348 = getelementptr i8, <8 x ptr> %wide.gep1346, i64 4
  %wide.masked.gather1349 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1348, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !412
  %i.cfh = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1349, %wide.masked.gather1347
  %i.cfi = fmul reassoc nsz arcp contract afn <8 x float> %i.cfg, %i.cfh
  %i.cfj = fadd reassoc nsz arcp contract afn <8 x float> %i.cfi, %wide.masked.gather1347
  %i.cfk = fmul reassoc nsz arcp contract afn <8 x float> %i.cev, %i.cfj
  %i.cfl = getelementptr inbounds nuw [4 x i8], ptr %i.ast, i64 %index1326
  store <8 x float> %i.cfk, ptr %i.cfl, align 4, !tbaa !12, !alias.scope !444, !noalias !445
  %index.next1350 = add nuw i64 %index1326, 8     ; 2 uses
  %vec.ind.next1351 = add nuw <8 x i64> %vec.ind1327, splat (i64 8)
  %i.cfm = icmp eq i64 %index.next1350, %n.vec1320
  br i1 %i.cfm, label %middle.block1352, label %vector.body1325, !llvm.loop !332

middle.block1352:                                 ; preds = %vector.body1325
  %cmp.n1353 = icmp eq i64 %i.as, %n.vec1320
  br i1 %cmp.n1353, label %_guide_with_chromaticity.exit.sink.split, label %.lr.ph490.i.preheader1364

.lr.ph490.i.preheader1364:                        ; preds = %vector.memcheck1291, %.lr.ph490.i.preheader, %middle.block1352
  %.0488.i.ph = phi i64 [ 0, %vector.memcheck1291 ], [ 0, %.lr.ph490.i.preheader ], [ %n.vec1320, %middle.block1352 ]
  %i.cfn = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.cfo = insertelement <2 x float> %i.cfn, float %i.gv, i64 1
  br label %.lr.ph490.i

.lr.ph490.i:                                      ; preds = %.lr.ph490.i.preheader1364, %.lr.ph490.i
  %.0488.i = phi i64 [ %i.cii, %.lr.ph490.i ], [ %.0488.i.ph, %.lr.ph490.i.preheader1364 ] ; 6 uses
  %i.cfp = shl i64 %.0488.i, 1                    ; 3 uses
  %i.cfq = getelementptr inbounds nuw [4 x i8], ptr %i.asq, i64 %i.cfp
  %i.cfr = load float, ptr %i.cfq, align 4, !tbaa !12, !alias.scope !385, !noalias !437 ; 2 uses
  %i.cfs = or disjoint i64 %i.cfp, 1              ; 3 uses
  %i.cft = getelementptr inbounds nuw [4 x i8], ptr %i.asq, i64 %i.cfs
  %i.cfu = load float, ptr %i.cft, align 4, !tbaa !12, !alias.scope !385, !noalias !437 ; 2 uses
  %.idx439.i = shl i64 %.0488.i, 4
  %i.cfv = getelementptr inbounds nuw i8, ptr %.0323.i, i64 %.idx439.i ; 4 uses
  %i.cfw = load float, ptr %i.cfv, align 16, !tbaa !12, !noalias !390
  %i.cfx = fmul reassoc nsz arcp contract afn float %i.cfw, %i.cfr
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfv, i64 4
  %i.cfz = load float, ptr %i.cfy, align 4, !tbaa !12, !noalias !390
  %i.cga = fmul reassoc nsz arcp contract afn float %i.cfz, %i.cfu
  %i.cgb = getelementptr inbounds nuw [4 x i8], ptr %.0322.i, i64 %i.cfp
  %i.cgc = load float, ptr %i.cgb, align 8, !tbaa !12, !noalias !390
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cfv, i64 8
  %i.cge = load float, ptr %i.cgd, align 8, !tbaa !12, !noalias !390
  %i.cgf = fmul reassoc nsz arcp contract afn float %i.cge, %i.cfr
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cfv, i64 12
  %i.cgh = load float, ptr %i.cgg, align 4, !tbaa !12, !noalias !390
  %i.cgi = fmul reassoc nsz arcp contract afn float %i.cgh, %i.cfu
  %i.cgj = fadd reassoc nsz arcp contract afn float %i.cgi, %i.cgf
  %i.cgk = getelementptr inbounds nuw [4 x i8], ptr %.0322.i, i64 %i.cfs
  %i.cgl = load float, ptr %i.cgk, align 4, !tbaa !12, !noalias !390
  %i.cgm = fadd reassoc nsz arcp contract afn float %i.cgj, %i.cgl
  %i.cgn = fadd reassoc nsz arcp contract afn float %i.cfx, -1.000000e+00
  %i.cgo = fadd reassoc nsz arcp contract afn float %i.cgn, %i.cga
  %i.cgp = fadd reassoc nsz arcp contract afn float %i.cgo, %i.cgc
  %i.cgq = getelementptr inbounds nuw [4 x i8], ptr %i.ass, i64 %.0488.i
  %i.cgr = load float, ptr %i.cgq, align 4, !tbaa !12, !alias.scope !387, !noalias !440
  %i.cgs = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %i.cfs
  %i.cgt = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %.0488.i
  %i.cgu = load float, ptr %i.cgt, align 4, !tbaa !12, !alias.scope !389, !noalias !443 ; 3 uses
  %i.cgv = fcmp reassoc nsz arcp contract afn ult float %i.cgu, 0.000000e+00
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.cgu, 1.000000e+00
  %spec.select.i277 = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.cgu, float 1.000000e+00
  %i.cgw = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %spec.select.i277
  %i.cgx = select i1 %i.cgv, float 1.000000e+00, float %i.cgw
  %i.cgy = fmul reassoc nsz arcp contract afn float %i.cgx, %i.cgm
  %i.cgz = insertelement <2 x float> poison, float %i.cgr, i64 0
  %i.cha = shufflevector <2 x float> %i.cgz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.chb = fsub reassoc nsz arcp contract afn <2 x float> %i.cha, %i.cfo ; 3 uses
  %i.chc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.chb, splat (float f0x3F7FF000)
  %i.chd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.chb, splat (float -1.000000e+00)
  %i.che = select <2 x i1> %i.chd, <2 x float> splat (float -1.000000e+00), <2 x float> %i.chb
  %i.chf = fmul reassoc nsz arcp contract afn <2 x float> %i.che, splat (float 4.096000e+03)
  %i.chg = fadd reassoc nsz arcp contract afn <2 x float> %i.chf, splat (float 4.096000e+03)
  %i.chh = select <2 x i1> %i.chc, <2 x float> splat (float 8.191000e+03), <2 x float> %i.chg ; 3 uses
  %i.chi = call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.chh) ; 3 uses
  %i.chj = fptosi <2 x float> %i.chi to <2 x i32> ; 2 uses
  %i.chk = extractelement <2 x i32> %i.chj, i64 0
  %i.chl = sext i32 %i.chk to i64
  %i.chm = getelementptr inbounds [4 x i8], ptr @satweights, i64 %i.chl ; 2 uses
  %i.chn = load float, ptr %i.chm, align 4, !tbaa !12, !noalias !412 ; 2 uses
  %foldExtExtBinop1359 = fsub reassoc nsz arcp contract afn <2 x float> %i.chh, %i.chi
end_hunk_1
