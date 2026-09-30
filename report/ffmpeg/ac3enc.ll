Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3enc?download=true
inline.NumInlined: 131
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ff_ac3_encode_frame:bb.a
.lr.ph67.2.i.i.preheader:                         ; preds = %.lr.ph67.1.i.i, %.critedge2.1.i.i
  %.266.2.i.i.ph = phi i32 [ %.2.lcssa.1.i.i, %.critedge2.1.i.i ], [ %.266.1.i.i, %.lr.ph67.1.i.i ]
  br label %.lr.ph67.2.i.i

.lr.ph67.2.i.i:                                   ; preds = %.lr.ph67.2.i.i.preheader, %bb.cc
  %.266.2.i.i = phi i32 [ %i.ady, %bb.cc ], [ %.266.2.i.i.ph, %.lr.ph67.2.i.i.preheader ] ; 3 uses
  %i.ady = add nsw i32 %.266.2.i.i, 4             ; 3 uses
  %i.adz = tail call fastcc i32 @bit_alloc(ptr noundef nonnull %i.b, i32 noundef %i.ady)
  %.not60.2.i.i = icmp sgt i32 %i.adz, %i.acr
  br i1 %.not60.2.i.i, label %.lr.ph67.preheader.3.i.i, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph67.2.i.i
  %i.aea = load <2 x ptr>, ptr %i.adi, align 8, !tbaa !64
  %i.aeb = shufflevector <2 x ptr> %i.aea, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aeb, ptr %i.adi, align 8, !tbaa !64
  %i.aec = icmp slt i32 %.266.2.i.i, 1016
  br i1 %i.aec, label %.lr.ph67.2.i.i, label %.critedge2.2.i.i, !llvm.loop !163

.critedge2.2.i.i:                                 ; preds = %bb.cc, %.critedge2.1.i.i
  %.2.lcssa.2.i.i = phi i32 [ %.2.lcssa.1.i.i, %.critedge2.1.i.i ], [ %i.ady, %bb.cc ] ; 3 uses
  %i.aed = icmp samesign ult i32 %.2.lcssa.2.i.i, 1023
  br i1 %i.aed, label %.lr.ph67.preheader.3.i.i, label %.critedge2.3.i.i

.lr.ph67.preheader.3.i.i:                         ; preds = %.lr.ph67.2.i.i, %.critedge2.2.i.i
  %.2.lcssa.297.i.i = phi i32 [ %.2.lcssa.2.i.i, %.critedge2.2.i.i ], [ %.266.2.i.i, %.lr.ph67.2.i.i ] ; 3 uses
  %i.aee = add nsw i32 %.2.lcssa.297.i.i, 1       ; 2 uses
  %i.aef = tail call fastcc i32 @bit_alloc(ptr noundef nonnull %i.b, i32 noundef %i.aee)
  %.not60.3.i45.i = icmp sgt i32 %i.aef, %i.acr
  br i1 %.not60.3.i45.i, label %.critedge2.3.i.i, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %.lr.ph67.preheader.3.i.i
  %i.aeg = load <2 x ptr>, ptr %i.adi, align 8, !tbaa !64
  %i.aeh = shufflevector <2 x ptr> %i.aeg, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aeh, ptr %i.adi, align 8, !tbaa !64
  %i.aei = add nsw i32 %.2.lcssa.297.i.i, 2       ; 2 uses
  %exitcond.not.i29.i408 = icmp eq i32 %i.aei, 1024
  br i1 %exitcond.not.i29.i408, label %..critedge2.3.i.loopexit_crit_edge.i, label %.lr.ph67.3.i.i.lr.ph, !llvm.loop !163

.lr.ph67.3.i.i.lr.ph:                             ; preds = %.lr.ph.i53.preheader
  br label %.lr.ph67.3.i.i, !llvm.loop !163

.lr.ph67.3.i.i:                                   ; preds = %.lr.ph67.3.i.i.lr.ph, %.lr.ph.i53
  %i.aej = phi i32 [ %i.aei, %.lr.ph67.3.i.i.lr.ph ], [ %i.aeo, %.lr.ph.i53 ] ; 3 uses
  %i.aek = phi i32 [ %i.aee, %.lr.ph67.3.i.i.lr.ph ], [ %i.aej, %.lr.ph.i53 ]
  %i.ael = tail call fastcc i32 @bit_alloc(ptr noundef nonnull %i.b, i32 noundef %i.aej)
  %.not60.3.i.i = icmp sgt i32 %i.ael, %i.acr
  br i1 %.not60.3.i.i, label %.critedge2.3.i.i, label %.lr.ph.i53, !llvm.loop !163

.lr.ph.i53:                                       ; preds = %.lr.ph67.3.i.i
  %i.aem = load <2 x ptr>, ptr %i.adi, align 8, !tbaa !64
  %i.aen = shufflevector <2 x ptr> %i.aem, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aen, ptr %i.adi, align 8, !tbaa !64
  %i.aeo = add nsw i32 %i.aej, 1                  ; 2 uses
  %exitcond.not.i29.i = icmp eq i32 %i.aeo, 1024
  br i1 %exitcond.not.i29.i, label %.lr.ph.i53...critedge2.3.i.loopexit_crit_edge.i_crit_edge, label %.lr.ph67.3.i.i, !llvm.loop !163

.lr.ph.i53...critedge2.3.i.loopexit_crit_edge.i_crit_edge: ; preds = %.lr.ph.i53
  br label %..critedge2.3.i.loopexit_crit_edge.i, !llvm.loop !163

..critedge2.3.i.loopexit_crit_edge.i:             ; preds = %.lr.ph.i53...critedge2.3.i.loopexit_crit_edge.i_crit_edge, %.lr.ph.i53.preheader
  br label %.critedge2.3.i.i, !llvm.loop !163

.critedge2.3.i.i:                                 ; preds = %.lr.ph67.3.i.i, %..critedge2.3.i.loopexit_crit_edge.i, %.lr.ph67.preheader.3.i.i, %.critedge2.2.i.i
  %.2.lcssa.3.i.i = phi i32 [ %.2.lcssa.2.i.i, %.critedge2.2.i.i ], [ 1023, %..critedge2.3.i.loopexit_crit_edge.i ], [ %.2.lcssa.297.i.i, %.lr.ph67.preheader.3.i.i ], [ %i.aek, %.lr.ph67.3.i.i ] ; 2 uses
  %i.aep = load ptr, ptr %i.adh, align 16, !tbaa !86 ; 3 uses
  %i.aeq = load ptr, ptr %i.adi, align 8, !tbaa !87
  store ptr %i.aeq, ptr %i.adh, align 16, !tbaa !86
  store ptr %i.aep, ptr %i.adi, align 8, !tbaa !87
  %i.aer = getelementptr inbounds nuw i8, ptr %i.b, i64 5512 ; 2 uses
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !64
  %i.aet = icmp eq ptr %i.aes, %i.aep
  br i1 %i.aet, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.critedge2.3.i.i
  %i.aeu = load i32, ptr %i.py, align 8, !tbaa !68
  %.not.i.i.i = icmp eq i32 %i.aeu, 0
  br i1 %.not.i.i.i, label %bb.ce, label %.reset_block_bap.exit_crit_edge.i.i

.reset_block_bap.exit_crit_edge.i.i:              ; preds = %bb.cd
  %.pre.i28.i = load i32, ptr %i.dt, align 4, !tbaa !63
  br label %reset_block_bap.exit.i.i

bb.ce:                                            ; preds = %bb.cd, %.critedge2.3.i.i
  %i.aev = load i32, ptr %i.dt, align 4, !tbaa !63 ; 3 uses
  %.not2224.i.i.i = icmp slt i32 %i.aev, 0
  br i1 %.not2224.i.i.i, label %._crit_edge27.split.i.i.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.ce
  %i.aew = load i32, ptr %i.dr, align 4, !tbaa !28 ; 4 uses
  %i.aex = icmp sgt i32 %i.aew, 0
  %i.aey = getelementptr inbounds nuw i8, ptr %i.b, i64 5464
  %i.aez = shl nsw i32 %i.aew, 8
  %i.afa = sext i32 %i.aez to i64
  br i1 %i.aex, label %.preheader.preheader.i.i.i, label %._crit_edge27.split.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader.lr.ph.i.i.i
  %i.afb = add nuw i32 %i.aev, 1
  %wide.trip.count32.i.i.i = zext i32 %i.afb to i64
  %wide.trip.count.i.i.i49 = zext nneg i32 %i.aew to i64 ; 2 uses
  %xtraiter527 = and i64 %wide.trip.count.i.i.i49, 3 ; 3 uses
  %i.afc = icmp ult i32 %i.aew, 4
  %unroll_iter530 = and i64 %wide.trip.count.i.i.i49, 2147483644
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  %lcmp.mod529 = icmp ne i64 %xtraiter527, 0
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %indvars.iv29.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %indvars.iv.next30.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.026.i.i.i = phi ptr [ %i.aep, %.preheader.preheader.i.i.i ], [ %i.agj, %._crit_edge.i.i.i ] ; 6 uses
  %i.afd = getelementptr inbounds nuw [6 x i8], ptr %i.aey, i64 %indvars.iv29.i.i.i ; 5 uses
  %i.afe = getelementptr inbounds nuw [48 x i8], ptr %i.aer, i64 %indvars.iv29.i.i.i ; 5 uses
  br i1 %i.afc, label %.epil.preheader526, label %.preheader.i.i.i.new

.preheader.i.i.i.new:                             ; preds = %.preheader.i.i.i, %.preheader.i.i.i.new
  %indvars.iv.i.i.i50 = phi i64 [ %indvars.iv.next.i.i.i51.3, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ] ; 6 uses
  %niter531 = phi i64 [ %niter531.next.3, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ]
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 %indvars.iv.i.i.i50
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !31
  %i.afh = zext i8 %i.afg to i64
  %i.afi = shl nuw nsw i64 %i.afh, 8
  %i.afj = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 %i.afi
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %indvars.iv.i.i.i50
  store ptr %i.afj, ptr %i.afk, align 8, !tbaa !64
  %indvars.iv.next.i.i.i51 = or disjoint i64 %indvars.iv.i.i.i50, 1 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afd, i64 %indvars.iv.next.i.i.i51
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !31
  %i.afn = zext i8 %i.afm to i64
  %i.afo = shl nuw nsw i64 %i.afn, 8
  %i.afp = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 %i.afo
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %indvars.iv.next.i.i.i51
  store ptr %i.afp, ptr %i.afq, align 8, !tbaa !64
  %indvars.iv.next.i.i.i51.1 = or disjoint i64 %indvars.iv.i.i.i50, 2 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afd, i64 %indvars.iv.next.i.i.i51.1
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !31
  %i.aft = zext i8 %i.afs to i64
  %i.afu = shl nuw nsw i64 %i.aft, 8
  %i.afv = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 %i.afu
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %indvars.iv.next.i.i.i51.1
  store ptr %i.afv, ptr %i.afw, align 8, !tbaa !64
  %indvars.iv.next.i.i.i51.2 = or disjoint i64 %indvars.iv.i.i.i50, 3 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afd, i64 %indvars.iv.next.i.i.i51.2
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !31
  %i.afz = zext i8 %i.afy to i64
  %i.aga = shl nuw nsw i64 %i.afz, 8
  %i.agb = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 %i.aga
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %indvars.iv.next.i.i.i51.2
  store ptr %i.agb, ptr %i.agc, align 8, !tbaa !64
  %indvars.iv.next.i.i.i51.3 = add nuw nsw i64 %indvars.iv.i.i.i50, 4 ; 2 uses
  %niter531.next.3 = add i64 %niter531, 4         ; 2 uses
  %niter531.ncmp.3 = icmp eq i64 %niter531.next.3, %unroll_iter530
  br i1 %niter531.ncmp.3, label %._crit_edge.i.i.i.unr-lcssa, label %.preheader.i.i.i.new, !llvm.loop !0

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.preheader.i.i.i.new
  br i1 %lcmp.mod528.not, label %._crit_edge.i.i.i, label %.epil.preheader526

.epil.preheader526:                               ; preds = %._crit_edge.i.i.i.unr-lcssa, %.preheader.i.i.i
  %indvars.iv.i.i.i50.epil.init = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i51.3, %._crit_edge.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod529)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.epil.preheader526
  %indvars.iv.i.i.i50.epil = phi i64 [ %indvars.iv.i.i.i50.epil.init, %.epil.preheader526 ], [ %indvars.iv.next.i.i.i51.epil, %bb.cf ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader526 ], [ %epil.iter.next, %bb.cf ]
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afd, i64 %indvars.iv.i.i.i50.epil
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !31
  %i.agf = zext i8 %i.age to i64
  %i.agg = shl nuw nsw i64 %i.agf, 8
  %i.agh = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 %i.agg
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %indvars.iv.i.i.i50.epil
  store ptr %i.agh, ptr %i.agi, align 8, !tbaa !64
  %indvars.iv.next.i.i.i51.epil = add nuw nsw i64 %indvars.iv.i.i.i50.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter527
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %bb.cf, !llvm.loop !164

._crit_edge.i.i.i:                                ; preds = %bb.cf, %._crit_edge.i.i.i.unr-lcssa
  %i.agj = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 %i.afa
  %indvars.iv.next30.i.i.i = add nuw nsw i64 %indvars.iv29.i.i.i, 1 ; 2 uses
  %exitcond33.not.i.i.i = icmp eq i64 %indvars.iv.next30.i.i.i, %wide.trip.count32.i.i.i
  br i1 %exitcond33.not.i.i.i, label %._crit_edge27.split.i.i.i, label %.preheader.i.i.i, !llvm.loop !1

._crit_edge27.split.i.i.i:                        ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i, %bb.ce
  store i32 1, ptr %i.py, align 8, !tbaa !68
  br label %reset_block_bap.exit.i.i

reset_block_bap.exit.i.i:                         ; preds = %._crit_edge27.split.i.i.i, %.reset_block_bap.exit_crit_edge.i.i
  %i.agk = phi i32 [ %.pre.i28.i, %.reset_block_bap.exit_crit_edge.i.i ], [ %i.aev, %._crit_edge27.split.i.i.i ] ; 2 uses
  %i.agl = ashr i32 %.2.lcssa.3.i.i, 4
  store i32 %i.agl, ptr %i.act, align 16, !tbaa !85
  %i.agm = load i32, ptr %i.dp, align 16, !tbaa !30
  %.not58.i.i = icmp eq i32 %i.agm, 0             ; 2 uses
  %i.agn = zext i1 %.not58.i.i to i32
  %.not5972.i.i = icmp slt i32 %i.agk, %i.agn
  br i1 %.not5972.i.i, label %.loopexit, label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %reset_block_bap.exit.i.i
  %i.ago = and i32 %.2.lcssa.3.i.i, 15            ; 2 uses
  %i.agp = zext i1 %.not58.i.i to i64             ; 4 uses
  %i.agq = add nuw i32 %i.agk, 1
  %wide.trip.count.i24.i = zext i32 %i.agq to i64 ; 2 uses
  %i.agr = sub nuw nsw i64 %wide.trip.count.i24.i, %i.agp ; 3 uses
  %min.iters.check439 = icmp samesign ult i64 %i.agr, 8
  br i1 %min.iters.check439, label %scalar.ph438.preheader, label %vector.ph440

vector.ph440:                                     ; preds = %.lr.ph74.i.i
  %n.vec441 = and i64 %i.agr, 4294967288          ; 3 uses
  %i.ags = or disjoint i64 %n.vec441, %i.agp
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ago, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep579 = getelementptr [4 x i8], ptr %i.acw, i64 %i.agp
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph440
  %index443 = phi i64 [ 0, %vector.ph440 ], [ %index.next444, %vector.body442 ] ; 2 uses
  %gep580 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %index443 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %gep580, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep580, align 4, !tbaa !40
  store <4 x i32> %broadcast.splat, ptr %i.agt, align 4, !tbaa !40
  %index.next444 = add nuw i64 %index443, 8       ; 2 uses
  %i.agu = icmp eq i64 %index.next444, %n.vec441
  br i1 %i.agu, label %middle.block445, label %vector.body442, !llvm.loop !165

middle.block445:                                  ; preds = %vector.body442
  %cmp.n446 = icmp eq i64 %i.agr, %n.vec441
  br i1 %cmp.n446, label %.loopexit, label %scalar.ph438.preheader

scalar.ph438.preheader:                           ; preds = %.lr.ph74.i.i, %middle.block445
  %indvars.iv.i25.i.ph = phi i64 [ %i.agp, %.lr.ph74.i.i ], [ %i.ags, %middle.block445 ]
  br label %scalar.ph438

scalar.ph438:                                     ; preds = %scalar.ph438.preheader, %scalar.ph438
  %indvars.iv.i25.i = phi i64 [ %indvars.iv.next.i26.i, %scalar.ph438 ], [ %indvars.iv.i25.i.ph, %scalar.ph438.preheader ] ; 2 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %indvars.iv.i25.i
  store i32 %i.ago, ptr %i.agv, align 4, !tbaa !40
  %indvars.iv.next.i26.i = add nuw nsw i64 %indvars.iv.i25.i, 1 ; 2 uses
  %exitcond78.not.i.i = icmp eq i64 %indvars.iv.next.i26.i, %wide.trip.count.i24.i
  br i1 %exitcond78.not.i.i, label %.loopexit, label %scalar.ph438, !llvm.loop !166

ac3_compute_bit_allocation.exit:                  ; preds = %bb.bz, %bb.by, %bit_alloc_masking.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.71) #15
  br label %bb.ns

.loopexit:                                        ; preds = %scalar.ph438, %middle.block445, %reset_block_bap.exit.i.i, %bb.bx
  %i.agw = load i32, ptr %i.dr, align 4, !tbaa !28 ; 2 uses
  %i.agx = icmp sgt i32 %i.agw, 0
  br i1 %i.agx, label %.lr.ph75.i, label %ac3_quantize_mantissas.exit

.lr.ph75.i:                                       ; preds = %.loopexit
  %i.agy = getelementptr inbounds nuw i8, ptr %i.b, i64 1048 ; 3 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.b, i64 5408
  %i.aha = getelementptr inbounds nuw i8, ptr %i.b, i64 5072 ; 2 uses
  %.pre.i63 = load i32, ptr %i.dt, align 4, !tbaa !63
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i71, %.lr.ph75.i
  %i.ahb = phi i32 [ %i.agw, %.lr.ph75.i ], [ %.pr117, %._crit_edge.i71 ]
  %i.ahc = phi i32 [ %.pre.i63, %.lr.ph75.i ], [ %i.ajf, %._crit_edge.i71 ] ; 2 uses
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph75.i ], [ %indvars.iv.next81.i, %._crit_edge.i71 ] ; 3 uses
  %i.ahd = getelementptr inbounds nuw [648 x i8], ptr %i.agy, i64 %indvars.iv80.i ; 4 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 576
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !35
  %.not.i64 = icmp eq i32 %i.ahf, 0               ; 2 uses
  %i.ahg = zext i1 %.not.i64 to i32
  %.not6270.i = icmp slt i32 %i.ahc, %i.ahg
  br i1 %.not6270.i, label %._crit_edge.i71, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %bb.cg
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.agz, i64 %indvars.iv80.i
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 616
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahd, i64 112
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahd, i64 168
  %i.ahk = zext i1 %.not.i64 to i64
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i69, %.lr.ph72.i
  %indvars.iv77.i = phi i64 [ %i.ahk, %.lr.ph72.i ], [ %indvars.iv.next78.i, %.loopexit.i69 ] ; 8 uses
  %gep.i = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.i, i64 %indvars.iv77.i
  %i.ahl = load i8, ptr %gep.i, align 1, !tbaa !31 ; 3 uses
  %i.ahm = icmp eq i8 %i.ahl, 0
  br i1 %i.ahm, label %.loopexit.i69, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ahn = zext i8 %i.ahl to i64                  ; 2 uses
  %i.aho = icmp eq i64 %indvars.iv77.i, 0         ; 2 uses
  %i.ahp = icmp eq i8 %i.ahl, 3
  %i.ahq = zext i1 %i.ahp to i64
  %i.ahr = add nuw nsw i64 %i.ahq, %i.ahn         ; 3 uses
  %.neg.i = sext i1 %i.aho to i64
  %i.ahs = zext i1 %i.aho to i64
  %i.aht = getelementptr inbounds nuw [768 x i8], ptr @exponent_group_tab, i64 %i.ahs
  %i.ahu = getelementptr [256 x i8], ptr %i.aht, i64 %i.ahn
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 -256
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv77.i
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !40
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv77.i
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !40 ; 2 uses
  %i.aia = sub nsw i32 %i.ahx, %i.ahz
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr inbounds i8, ptr %i.ahv, i64 %i.aib
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !31 ; 2 uses
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.ahi, i64 %indvars.iv77.i
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !64
  %i.aig = sext i32 %i.ahz to i64
  %i.aih = getelementptr inbounds i8, ptr %i.aif, i64 %i.aig
  %i.aii = getelementptr inbounds i8, ptr %i.aih, i64 %.neg.i ; 2 uses
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !31 ; 2 uses
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.ahj, i64 %indvars.iv77.i ; 2 uses
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !64
  store i8 %i.aij, ptr %i.ail, align 1, !tbaa !31
  %.not6366.i = icmp eq i8 %i.aid, 0
  br i1 %.not6366.i, label %.loopexit.i69, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ci
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aii, i64 1
  %i.ain = zext i8 %i.aid to i64
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65, %.lr.ph.preheader.i
  %indvars.iv.i66 = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i67, %.lr.ph.i65 ] ; 3 uses
  %.069.i = phi i8 [ %i.aij, %.lr.ph.preheader.i ], [ %i.aiu, %.lr.ph.i65 ]
  %.05768.i = phi ptr [ %i.aim, %.lr.ph.preheader.i ], [ %i.aiv, %.lr.ph.i65 ] ; 2 uses
  %i.aio = load i8, ptr %.05768.i, align 1, !tbaa !31 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.05768.i, i64 %i.ahr ; 2 uses
  %i.aiq = sub i8 %i.aio, %.069.i
  %i.air = load i8, ptr %i.aip, align 1, !tbaa !31 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.ahr ; 2 uses
  %i.ait = sub i8 %i.air, %i.aio
  %i.aiu = load i8, ptr %i.ais, align 1, !tbaa !31 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ahr
  %i.aiw = mul i8 %i.aiq, 5
  %i.aix = add i8 %i.ait, %i.aiw
  %i.aiy = mul i8 %i.aix, 5
  %reass.sub = sub i8 %i.aiu, %i.air
  %i.aiz = add i8 %reass.sub, 62
  %i.aja = add i8 %i.aiz, %i.aiy
  %i.ajb = load ptr, ptr %i.aik, align 8, !tbaa !64
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %indvars.iv.i66
  store i8 %i.aja, ptr %i.ajc, align 1, !tbaa !31
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.i66, %i.ain
  br i1 %exitcond.not.i68, label %.loopexit.i69, label %.lr.ph.i65, !llvm.loop !167

.loopexit.i69:                                    ; preds = %.lr.ph.i65, %bb.ci, %bb.ch
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1
  %i.ajd = load i32, ptr %i.dt, align 4, !tbaa !63 ; 2 uses
  %i.aje = sext i32 %i.ajd to i64
  %.not62.not.i = icmp slt i64 %indvars.iv77.i, %i.aje
  br i1 %.not62.not.i, label %bb.ch, label %._crit_edge.loopexit.i70, !llvm.loop !168

._crit_edge.loopexit.i70:                         ; preds = %.loopexit.i69
  %.pre83.i = load i32, ptr %i.dr, align 4, !tbaa !28
  br label %._crit_edge.i71

._crit_edge.i71:                                  ; preds = %._crit_edge.loopexit.i70, %bb.cg
  %.pr117 = phi i32 [ %.pre83.i, %._crit_edge.loopexit.i70 ], [ %i.ahb, %bb.cg ] ; 4 uses
  %i.ajf = phi i32 [ %i.ajd, %._crit_edge.loopexit.i70 ], [ %i.ahc, %bb.cg ] ; 3 uses
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %i.ajg = sext i32 %.pr117 to i64
  %i.ajh = icmp slt i64 %indvars.iv.next81.i, %i.ajg
  br i1 %i.ajh, label %bb.cg, label %ac3_group_exponents.exit, !llvm.loop !169

ac3_group_exponents.exit:                         ; preds = %._crit_edge.i71
  %i.aji = icmp sgt i32 %.pr117, 0
  br i1 %i.aji, label %.lr.ph57.i, label %ac3_quantize_mantissas.exit

.lr.ph57.i:                                       ; preds = %ac3_group_exponents.exit
  %.not3842.i = icmp slt i32 %i.ajf, 1
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.b, i64 5464
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.b, i64 5512
  br i1 %.not3842.i, label %ac3_quantize_mantissas.exit, label %.lr.ph.preheader.i72

.lr.ph.preheader.i72:                             ; preds = %.lr.ph57.i
  %wide.trip.count.i73 = zext nneg i32 %.pr117 to i64
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %._crit_edge.i80, %.lr.ph.preheader.i72
  %indvars.iv.i75 = phi i64 [ 0, %.lr.ph.preheader.i72 ], [ %indvars.iv.next.i81, %._crit_edge.i80 ] ; 4 uses
  %.03255.i = phi i32 [ 0, %.lr.ph.preheader.i72 ], [ %.2.i, %._crit_edge.i80 ]
  %i.ajl = getelementptr inbounds nuw [648 x i8], ptr %i.agy, i64 %indvars.iv.i75 ; 5 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 576
  %i.ajn = load i32, ptr %i.ajm, align 8, !tbaa !35
  %.not.i76 = icmp eq i32 %i.ajn, 0
  %i.ajo = zext i1 %.not.i76 to i32
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajl, i64 580
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajl, i64 56
  %invariant.gep.i77 = getelementptr i8, ptr %i.ajj, i64 %indvars.iv.i75
  %invariant.gep52.i = getelementptr [8 x i8], ptr %i.ajk, i64 %indvars.iv.i75
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajl, i64 392
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajl, i64 616
  br label %bb.cj

bb.cj:                                            ; preds = %quantize_mantissas_blk_ch.exit.i, %.lr.ph.i74
  %.051.i = phi i32 [ %i.ajo, %.lr.ph.i74 ], [ %.1.i, %quantize_mantissas_blk_ch.exit.i ] ; 2 uses
  %.13350.i = phi i32 [ %.03255.i, %.lr.ph.i74 ], [ %.2.i, %quantize_mantissas_blk_ch.exit.i ] ; 2 uses
  %.03449.i = phi i32 [ 1, %.lr.ph.i74 ], [ %i.ann, %quantize_mantissas_blk_ch.exit.i ] ; 4 uses
  %.sroa.19.048.i = phi i32 [ 0, %.lr.ph.i74 ], [ %.sroa.19.3.i, %quantize_mantissas_blk_ch.exit.i ] ; 2 uses
  %.sroa.15.047.i = phi i32 [ 0, %.lr.ph.i74 ], [ %.sroa.15.3.i, %quantize_mantissas_blk_ch.exit.i ] ; 2 uses
  %.sroa.11.046.i = phi i32 [ 0, %.lr.ph.i74 ], [ %.sroa.11.3.i, %quantize_mantissas_blk_ch.exit.i ] ; 2 uses
  %.sroa.9.045.i = phi ptr [ null, %.lr.ph.i74 ], [ %.sroa.9.3.i, %quantize_mantissas_blk_ch.exit.i ] ; 2 uses
  %.sroa.6.044.i = phi ptr [ null, %.lr.ph.i74 ], [ %.sroa.6.3.i, %quantize_mantissas_blk_ch.exit.i ] ; 2 uses
  %.sroa.0.043.i = phi ptr [ null, %.lr.ph.i74 ], [ %.sroa.0.3.i, %quantize_mantissas_blk_ch.exit.i ] ; 2 uses
  %i.ajt = icmp eq i32 %.051.i, 0
  %i.aju = icmp sgt i32 %.03449.i, 1
  %or.cond.i = and i1 %i.ajt, %i.aju
  br i1 %or.cond.i, label %bb.ck, label %bb.cm

end_hunk_0
