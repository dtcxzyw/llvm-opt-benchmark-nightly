Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec10?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 35
begin_hunk_0_@If_Dec10Perform:bb.a
  %i.adf = shufflevector <2 x i64> %i.add, <2 x i64> %i.ade, <2 x i32> <i32 1, i32 2>
  %i.adg = or disjoint <2 x i64> %i.adf, %i.adc
  store <2 x i64> %i.adg, ptr %i.ada, align 8, !tbaa !12
  %indvars.iv.next156.i.i219 = or disjoint i64 %indvars.iv155.i.i218, 2 ; 2 uses
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %.03850.i187, i64 %indvars.iv.next156.i.i219
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %indvars.iv.next156.i.i219
  %i.adj = load <2 x i64>, ptr %i.adh, align 8, !tbaa !12 ; 3 uses
  %i.adk = and <2 x i64> %i.adj, <i64 4294967295, i64 -4294967296>
  %i.adl = shl <2 x i64> %i.adj, splat (i64 32)
  %i.adm = lshr <2 x i64> %i.adj, splat (i64 32)
  %i.adn = shufflevector <2 x i64> %i.adl, <2 x i64> %i.adm, <2 x i32> <i32 1, i32 2>
  %i.ado = or disjoint <2 x i64> %i.adn, %i.adk
  store <2 x i64> %i.ado, ptr %i.adi, align 8, !tbaa !12
  %indvars.iv.next156.i.i219.1 = add nuw nsw i64 %indvars.iv155.i.i218, 4 ; 2 uses
  %niter962.next.1 = add nuw nsw i64 %niter962, 2 ; 2 uses
  %niter962.ncmp.1.not = icmp eq i64 %niter962.next.1, %unroll_iter961
  br i1 %niter962.ncmp.1.not, label %If_Dec10SwapAdjacent.exit.i189.loopexit855.unr-lcssa, label %.lr.ph.i.i217, !llvm.loop !66

If_Dec10SwapAdjacent.exit.i189.loopexit.unr-lcssa: ; preds = %scalar.ph639
  br i1 %lcmp.mod965.not, label %If_Dec10SwapAdjacent.exit.i189, label %scalar.ph639.epil.preheader

scalar.ph639.epil.preheader:                      ; preds = %If_Dec10SwapAdjacent.exit.i189.loopexit.unr-lcssa, %scalar.ph639.preheader
  %indvars.iv158.i.i221.epil.init = phi i64 [ 0, %scalar.ph639.preheader ], [ %indvars.iv.next159.i.i222.1, %If_Dec10SwapAdjacent.exit.i189.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod966)
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %.03850.i187, i64 %indvars.iv158.i.i221.epil.init
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !12 ; 3 uses
  %i.adr = and i64 %i.adq, %i.zp
  %i.ads = and i64 %i.adq, %i.zr
  %i.adt = shl i64 %i.ads, %i.zs
  %i.adu = or i64 %i.adt, %i.adr
  %i.adv = and i64 %i.adq, %i.zu
  %i.adw = lshr i64 %i.adv, %i.zs
  %i.adx = or i64 %i.adu, %i.adw
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %indvars.iv158.i.i221.epil.init
  store i64 %i.adx, ptr %i.ady, align 8, !tbaa !12
  br label %If_Dec10SwapAdjacent.exit.i189

If_Dec10SwapAdjacent.exit.i189.loopexit855.unr-lcssa: ; preds = %.lr.ph.i.i217
  br i1 %lcmp.mod959.not.not, label %.lr.ph.i.i217.epil.preheader, label %If_Dec10SwapAdjacent.exit.i189

.lr.ph.i.i217.epil.preheader:                     ; preds = %If_Dec10SwapAdjacent.exit.i189.loopexit855.unr-lcssa, %.lr.ph.i.i217.preheader
  %indvars.iv155.i.i218.epil.init = phi i64 [ 0, %.lr.ph.i.i217.preheader ], [ %indvars.iv.next156.i.i219.1, %If_Dec10SwapAdjacent.exit.i189.loopexit855.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod960)
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %.03850.i187, i64 %indvars.iv155.i.i218.epil.init
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %indvars.iv155.i.i218.epil.init
  %i.aeb = load <2 x i64>, ptr %i.adz, align 8, !tbaa !12 ; 3 uses
  %i.aec = and <2 x i64> %i.aeb, <i64 4294967295, i64 -4294967296>
  %i.aed = shl <2 x i64> %i.aeb, splat (i64 32)
  %i.aee = lshr <2 x i64> %i.aeb, splat (i64 32)
  %i.aef = shufflevector <2 x i64> %i.aed, <2 x i64> %i.aee, <2 x i32> <i32 1, i32 2>
  %i.aeg = or disjoint <2 x i64> %i.aef, %i.aec
  store <2 x i64> %i.aeg, ptr %i.aea, align 8, !tbaa !12
  br label %If_Dec10SwapAdjacent.exit.i189

If_Dec10SwapAdjacent.exit.i189:                   ; preds = %._crit_edge.us.i.i215, %.lr.ph.i.i217.epil.preheader, %If_Dec10SwapAdjacent.exit.i189.loopexit855.unr-lcssa, %vector.body651, %scalar.ph639.epil.preheader, %If_Dec10SwapAdjacent.exit.i189.loopexit.unr-lcssa, %.preheader87.lr.ph.i.i198, %bb.y, %.preheader.i.i216, %bb.w
  %i.aeh = sext i32 %i.zk to i64
  %i.aei = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aeh ; 3 uses
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !9 ; 2 uses
  %i.aek = sext i32 %i.aej to i64
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aek ; 2 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !9
  %i.aen = add nsw i32 %i.aem, 1
  store i32 %i.aen, ptr %i.ael, align 4, !tbaa !9
  %i.aeo = getelementptr i8, ptr %i.aei, i64 4    ; 2 uses
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !9 ; 2 uses
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aeq ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !9
  %i.aet = add nsw i32 %i.aes, -1
  store i32 %i.aet, ptr %i.aer, align 4, !tbaa !9
  store i32 %i.aej, ptr %i.aeo, align 4, !tbaa !9
  store i32 %i.aep, ptr %i.aei, align 4, !tbaa !9
  %i.aeu = xor i1 %.052.i185, true
  %i.aev = load i32, ptr %i.zi, align 4, !tbaa !9 ; 2 uses
  %.not.i190 = icmp eq i32 %i.aev, %i.ab
  br i1 %.not.i190, label %._crit_edge.i191, label %.lr.ph.i184, !llvm.loop !67

._crit_edge.i191:                                 ; preds = %If_Dec10SwapAdjacent.exit.i189
  %brmerge245 = select i1 %.052.i185, i1 true, i1 %i.x
  br i1 %brmerge245, label %If_Dec10MoveTo.exit224, label %.lr.ph.i43.i194.preheader

.lr.ph.i43.i194.preheader:                        ; preds = %._crit_edge.i191
  %i.aew = sub i64 %.03751.i186622, %i.a
  %diff.check623 = icmp ugt i64 %i.aew, -32
  %or.cond840 = select i1 %min.iters.check625, i1 true, i1 %diff.check623
  br i1 %or.cond840, label %.lr.ph.i43.i194.preheader874, label %vector.body628

.lr.ph.i43.i194.preheader874:                     ; preds = %.lr.ph.i43.i194.preheader
  br i1 %i.cr, label %.lr.ph.i43.i194.epil.preheader, label %.lr.ph.i43.i194

vector.body628:                                   ; preds = %.lr.ph.i43.i194.preheader, %vector.body628
  %index629 = phi i64 [ %index.next632, %vector.body628 ], [ 0, %.lr.ph.i43.i194.preheader ] ; 3 uses
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %index629 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %wide.load630 = load <2 x i64>, ptr %i.aex, align 8, !tbaa !12
  %wide.load631 = load <2 x i64>, ptr %i.aey, align 8, !tbaa !12
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index629 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  store <2 x i64> %wide.load630, ptr %i.aez, align 8, !tbaa !12
  store <2 x i64> %wide.load631, ptr %i.afa, align 8, !tbaa !12
  %index.next632 = add nuw i64 %index629, 4       ; 2 uses
  %i.afb = icmp eq i64 %index.next632, %n.vec627
  br i1 %i.afb, label %If_Dec10MoveTo.exit224, label %vector.body628, !llvm.loop !92

.lr.ph.i43.i194:                                  ; preds = %.lr.ph.i43.i194.preheader874, %.lr.ph.i43.i194
  %indvars.iv.i44.i195 = phi i64 [ %indvars.iv.next.i45.i196.3, %.lr.ph.i43.i194 ], [ 0, %.lr.ph.i43.i194.preheader874 ] ; 6 uses
  %niter974 = phi i64 [ %niter974.next.3, %.lr.ph.i43.i194 ], [ 0, %.lr.ph.i43.i194.preheader874 ]
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %indvars.iv.i44.i195
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !12
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i44.i195
  store i64 %i.afd, ptr %i.afe, align 8, !tbaa !12
  %indvars.iv.next.i45.i196 = or disjoint i64 %indvars.iv.i44.i195, 1 ; 2 uses
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %indvars.iv.next.i45.i196
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !12
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i196
  store i64 %i.afg, ptr %i.afh, align 8, !tbaa !12
  %indvars.iv.next.i45.i196.1 = or disjoint i64 %indvars.iv.i44.i195, 2 ; 2 uses
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %indvars.iv.next.i45.i196.1
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !12
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i196.1
  store i64 %i.afj, ptr %i.afk, align 8, !tbaa !12
  %indvars.iv.next.i45.i196.2 = or disjoint i64 %indvars.iv.i44.i195, 3 ; 2 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %indvars.iv.next.i45.i196.2
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !12
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i196.2
  store i64 %i.afm, ptr %i.afn, align 8, !tbaa !12
  %indvars.iv.next.i45.i196.3 = add nuw nsw i64 %indvars.iv.i44.i195, 4 ; 2 uses
  %niter974.next.3 = add i64 %niter974, 4         ; 2 uses
  %niter974.ncmp.3 = icmp eq i64 %niter974.next.3, %unroll_iter973
  br i1 %niter974.ncmp.3, label %If_Dec10MoveTo.exit224.loopexit.unr-lcssa, label %.lr.ph.i43.i194, !llvm.loop !93

If_Dec10MoveTo.exit224.loopexit.unr-lcssa:        ; preds = %.lr.ph.i43.i194
  br i1 %lcmp.mod971.not, label %If_Dec10MoveTo.exit224, label %.lr.ph.i43.i194.epil.preheader

.lr.ph.i43.i194.epil.preheader:                   ; preds = %If_Dec10MoveTo.exit224.loopexit.unr-lcssa, %.lr.ph.i43.i194.preheader874
  %indvars.iv.i44.i195.epil.init = phi i64 [ 0, %.lr.ph.i43.i194.preheader874 ], [ %indvars.iv.next.i45.i196.3, %If_Dec10MoveTo.exit224.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod972)
  br label %.lr.ph.i43.i194.epil

.lr.ph.i43.i194.epil:                             ; preds = %.lr.ph.i43.i194.epil, %.lr.ph.i43.i194.epil.preheader
  %indvars.iv.i44.i195.epil = phi i64 [ %indvars.iv.next.i45.i196.epil, %.lr.ph.i43.i194.epil ], [ %indvars.iv.i44.i195.epil.init, %.lr.ph.i43.i194.epil.preheader ] ; 3 uses
  %epil.iter970 = phi i64 [ %epil.iter970.next, %.lr.ph.i43.i194.epil ], [ 0, %.lr.ph.i43.i194.epil.preheader ]
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %.03751.i186, i64 %indvars.iv.i44.i195.epil
  %i.afp = load i64, ptr %i.afo, align 8, !tbaa !12
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i44.i195.epil
  store i64 %i.afp, ptr %i.afq, align 8, !tbaa !12
  %indvars.iv.next.i45.i196.epil = add nuw nsw i64 %indvars.iv.i44.i195.epil, 1
  %epil.iter970.next = add i64 %epil.iter970, 1   ; 2 uses
  %epil.iter970.cmp.not = icmp eq i64 %epil.iter970.next, %xtraiter969
  br i1 %epil.iter970.cmp.not, label %If_Dec10MoveTo.exit224, label %.lr.ph.i43.i194.epil, !llvm.loop !94

If_Dec10MoveTo.exit224:                           ; preds = %vector.body628, %If_Dec10MoveTo.exit224.loopexit.unr-lcssa, %.lr.ph.i43.i194.epil, %._crit_edge.i191, %If_Dec10MoveTo.exit182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.afr = load i64, ptr %0, align 8, !tbaa !12
  %i.afs = and i64 %i.afr, %spec.select.i
  store i64 %i.afs, ptr %i.b, align 16, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %If_Dec10MoveTo.exit224
  %.029.i = phi i32 [ 1, %If_Dec10MoveTo.exit224 ], [ %.1.i, %bb.ab ] ; 6 uses
  %.02328.i = phi i32 [ 1, %If_Dec10MoveTo.exit224 ], [ %i.agl, %bb.ab ] ; 2 uses
  %i.aft = shl i32 %.02328.i, %i.ab               ; 2 uses
  %i.afu = sdiv i32 %i.aft, 64
  %i.afv = sext i32 %i.afu to i64
  %i.afw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.afv
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !12
  %i.afy = and i32 %i.aft, 63
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = lshr i64 %i.afx, %i.afz
  %i.agb = and i64 %i.aga, %spec.select.i         ; 2 uses
  %i.agc = icmp sgt i32 %.029.i, 0
  br i1 %i.agc, label %.lr.ph.preheader.i, label %._crit_edge.i225

.lr.ph.preheader.i:                               ; preds = %bb.z
  %wide.trip.count.i = zext nneg i32 %.029.i to i64
  br label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %bb.aa, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.aa ] ; 3 uses
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.age = load i64, ptr %i.agd, align 8, !tbaa !12
  %i.agf = icmp eq i64 %i.agb, %i.age
  br i1 %i.agf, label %._crit_edge.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i226
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i226, !llvm.loop !95

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i226
  %i.agg = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i225

._crit_edge.i225:                                 ; preds = %._crit_edge.loopexit.i, %bb.z
  %.022.lcssa.i = phi i32 [ 0, %bb.z ], [ %i.agg, %._crit_edge.loopexit.i ]
  %i.agh = icmp eq i32 %.022.lcssa.i, %.029.i
  br i1 %i.agh, label %._crit_edge.thread.i, label %bb.ab

._crit_edge.thread.i:                             ; preds = %bb.aa, %._crit_edge.i225
  %i.agi = add nuw nsw i32 %.029.i, 1
  %i.agj = sext i32 %.029.i to i64
  %i.agk = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.agj
  store i64 %i.agb, ptr %i.agk, align 8, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i225
  %.1.i = phi i32 [ %i.agi, %._crit_edge.thread.i ], [ %.029.i, %._crit_edge.i225 ] ; 5 uses
  %i.agl = add nuw nsw i32 %.02328.i, 1           ; 2 uses
  %exitcond31.not.i = icmp eq i32 %i.agl, 16
  br i1 %exitcond31.not.i, label %If_Dec10CofCount.exit, label %bb.z, !llvm.loop !96

If_Dec10CofCount.exit:                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv323 ; 2 uses
  store i32 %.1.i, ptr %i.agm, align 4, !tbaa !9
  %i.agn = trunc nsw i64 %indvars.iv331 to i32
  %i.ago = shl nuw i32 1, %i.agn
  %i.agp = or i32 %i.gi, %i.ago
  %i.agq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv323
  store i32 %i.agp, ptr %i.agq, align 4, !tbaa !9
  %i.agr = icmp eq i32 %.1.i, 2
  %i.ags = icmp sgt i32 %.1.i, 5
  %or.cond = or i1 %i.agr, %i.ags
  br i1 %or.cond, label %.loopexit258, label %.preheader257.preheader

.preheader257.preheader:                          ; preds = %If_Dec10CofCount.exit
  br i1 %i.aj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader257.preheader
  br i1 %i.ag, label %If_Dec10Cofactors.exit, label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %bb.ac
  %i.agt = load i64, ptr %i.aq, align 8, !tbaa !12 ; 5 uses
  %i.agu = xor i64 %i.agt, -1                     ; 4 uses
  br i1 %min.iters.check588, label %scalar.ph587, label %vector.ph589

vector.ph589:                                     ; preds = %.lr.ph.i233
  %broadcast.splatinsert591 = insertelement <2 x i64> poison, i64 %i.agt, i64 0
  %broadcast.splat592 = shufflevector <2 x i64> %broadcast.splatinsert591, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert593 = insertelement <2 x i64> poison, i64 %i.agu, i64 0
  %broadcast.splat594 = shufflevector <2 x i64> %broadcast.splatinsert593, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body597

vector.body597:                                   ; preds = %vector.body597, %vector.ph589
  %index598 = phi i64 [ 0, %vector.ph589 ], [ %index.next601, %vector.body597 ] ; 4 uses
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index598 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %wide.load599 = load <2 x i64>, ptr %i.agv, align 8, !tbaa !12 ; 2 uses
  %wide.load600 = load <2 x i64>, ptr %i.agw, align 8, !tbaa !12 ; 2 uses
  %i.agx = and <2 x i64> %wide.load599, %broadcast.splat594 ; 2 uses
  %i.agy = and <2 x i64> %wide.load600, %broadcast.splat594 ; 2 uses
  %i.agz = shl <2 x i64> %i.agx, %broadcast.splat596
  %i.aha = shl <2 x i64> %i.agy, %broadcast.splat596
  %i.ahb = or <2 x i64> %i.agz, %i.agx
  %i.ahc = or <2 x i64> %i.aha, %i.agy
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index598 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  store <2 x i64> %i.ahb, ptr %i.ahd, align 16, !tbaa !12
  store <2 x i64> %i.ahc, ptr %i.ahe, align 16, !tbaa !12
  %i.ahf = and <2 x i64> %wide.load599, %broadcast.splat592 ; 2 uses
  %i.ahg = and <2 x i64> %wide.load600, %broadcast.splat592 ; 2 uses
  %i.ahh = lshr <2 x i64> %i.ahf, %broadcast.splat596
  %i.ahi = lshr <2 x i64> %i.ahg, %broadcast.splat596
  %i.ahj = or <2 x i64> %i.ahh, %i.ahf
  %i.ahk = or <2 x i64> %i.ahi, %i.ahg
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index598 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  store <2 x i64> %i.ahj, ptr %i.ahl, align 16, !tbaa !12
  store <2 x i64> %i.ahk, ptr %i.ahm, align 16, !tbaa !12
  %index.next601 = add nuw i64 %index598, 4       ; 2 uses
  %i.ahn = icmp eq i64 %index.next601, %n.vec590
  br i1 %i.ahn, label %If_Dec10Cofactors.exit, label %vector.body597, !llvm.loop !97

scalar.ph587:                                     ; preds = %.lr.ph.i233
  %i.aho = load i64, ptr %0, align 8, !tbaa !12   ; 2 uses
  %i.ahp = and i64 %i.aho, %i.agu                 ; 2 uses
  %i.ahq = shl i64 %i.ahp, %i.ar
  %i.ahr = or i64 %i.ahq, %i.ahp
  store i64 %i.ahr, ptr %i.g, align 16, !tbaa !12
  %i.ahs = and i64 %i.aho, %i.agt                 ; 2 uses
  %i.aht = lshr i64 %i.ahs, %i.ar
  %i.ahu = or i64 %i.aht, %i.ahs
  store i64 %i.ahu, ptr %i.h, align 16, !tbaa !12
  br i1 %exitcond74.not.i, label %If_Dec10Cofactors.exit, label %scalar.ph587.1

scalar.ph587.1:                                   ; preds = %scalar.ph587
  %i.ahv = load i64, ptr %i.cv, align 8, !tbaa !12 ; 2 uses
  %i.ahw = and i64 %i.ahv, %i.agu                 ; 2 uses
  %i.ahx = shl i64 %i.ahw, %i.ar
  %i.ahy = or i64 %i.ahx, %i.ahw
  store i64 %i.ahy, ptr %i.cw, align 8, !tbaa !12
  %i.ahz = and i64 %i.ahv, %i.agt                 ; 2 uses
  %i.aia = lshr i64 %i.ahz, %i.ar
  %i.aib = or i64 %i.aia, %i.ahz
  store i64 %i.aib, ptr %i.cx, align 8, !tbaa !12
  br i1 %exitcond74.not.i.1983, label %If_Dec10Cofactors.exit, label %scalar.ph587.2

scalar.ph587.2:                                   ; preds = %scalar.ph587.1
  %i.aic = load i64, ptr %i.cy, align 8, !tbaa !12 ; 2 uses
  %i.aid = and i64 %i.aic, %i.agu                 ; 2 uses
  %i.aie = shl i64 %i.aid, %i.ar
  %i.aif = or i64 %i.aie, %i.aid
  store i64 %i.aif, ptr %i.cz, align 16, !tbaa !12
  %i.aig = and i64 %i.aic, %i.agt                 ; 2 uses
  %i.aih = lshr i64 %i.aig, %i.ar
  %i.aii = or i64 %i.aih, %i.aig
  store i64 %i.aii, ptr %i.da, align 16, !tbaa !12
  br label %If_Dec10Cofactors.exit

bb.ad:                                            ; preds = %.preheader257.preheader
  br i1 %brmerge463, label %If_Dec10Cofactors.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ad, %._crit_edge.i232
  %.065.i = phi i32 [ %i.ajv, %._crit_edge.i232 ], [ 0, %bb.ad ]
  %.05464.i = phi ptr [ %i.aju, %._crit_edge.i232 ], [ %i.h, %bb.ad ] ; 9 uses
  %.05563.i = phi ptr [ %i.ajt, %._crit_edge.i232 ], [ %i.g, %bb.ad ] ; 9 uses
  %.05662.i = phi ptr [ %i.ajs, %._crit_edge.i232 ], [ %0, %bb.ad ] ; 9 uses
  br i1 %min.iters.check608, label %scalar.ph607, label %vector.body611

vector.body611:                                   ; preds = %.preheader.i, %vector.body611
  %index612 = phi i64 [ %index.next617, %vector.body611 ], [ 0, %.preheader.i ] ; 5 uses
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %.05662.i, i64 %index612 ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %wide.load613 = load <2 x i64>, ptr %i.aij, align 8, !tbaa !12 ; 2 uses
  %wide.load614 = load <2 x i64>, ptr %i.aik, align 8, !tbaa !12 ; 2 uses
  %i.ail = add nuw nsw i64 %index612, %i.ao       ; 3 uses
  %i.aim = getelementptr inbounds [8 x i8], ptr %.05563.i, i64 %i.ail ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 16
  store <2 x i64> %wide.load613, ptr %i.aim, align 8, !tbaa !12
  store <2 x i64> %wide.load614, ptr %i.ain, align 8, !tbaa !12
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %.05563.i, i64 %index612 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  store <2 x i64> %wide.load613, ptr %i.aio, align 8, !tbaa !12
  store <2 x i64> %wide.load614, ptr %i.aip, align 8, !tbaa !12
  %i.aiq = getelementptr inbounds [8 x i8], ptr %.05662.i, i64 %i.ail ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 16
  %wide.load615 = load <2 x i64>, ptr %i.aiq, align 8, !tbaa !12 ; 2 uses
  %wide.load616 = load <2 x i64>, ptr %i.air, align 8, !tbaa !12 ; 2 uses
  %i.ais = getelementptr inbounds [8 x i8], ptr %.05464.i, i64 %i.ail ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  store <2 x i64> %wide.load615, ptr %i.ais, align 8, !tbaa !12
  store <2 x i64> %wide.load616, ptr %i.ait, align 8, !tbaa !12
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %.05464.i, i64 %index612 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  store <2 x i64> %wide.load615, ptr %i.aiu, align 8, !tbaa !12
  store <2 x i64> %wide.load616, ptr %i.aiv, align 8, !tbaa !12
  %index.next617 = add nuw i64 %index612, 4       ; 2 uses
  %i.aiw = icmp eq i64 %index.next617, %n.vec610
  br i1 %i.aiw, label %._crit_edge.i232, label %vector.body611, !llvm.loop !98

scalar.ph607:                                     ; preds = %.preheader.i
  %i.aix = load i64, ptr %.05662.i, align 8, !tbaa !12 ; 2 uses
  %i.aiy = getelementptr inbounds [8 x i8], ptr %.05563.i, i64 %i.ao
  store i64 %i.aix, ptr %i.aiy, align 8, !tbaa !12
  store i64 %i.aix, ptr %.05563.i, align 8, !tbaa !12
  %i.aiz = getelementptr inbounds [8 x i8], ptr %.05662.i, i64 %i.ao
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !12 ; 2 uses
  %i.ajb = getelementptr inbounds [8 x i8], ptr %.05464.i, i64 %i.ao
  store i64 %i.aja, ptr %i.ajb, align 8, !tbaa !12
  store i64 %i.aja, ptr %.05464.i, align 8, !tbaa !12
  br i1 %exitcond.not.i231, label %._crit_edge.i232, label %scalar.ph607.1

scalar.ph607.1:                                   ; preds = %scalar.ph607
  %i.ajc = getelementptr inbounds nuw i8, ptr %.05662.i, i64 8
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !12 ; 2 uses
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %.05563.i, i64 %i.ct
  store i64 %i.ajd, ptr %i.aje, align 8, !tbaa !12
  %i.ajf = getelementptr inbounds nuw i8, ptr %.05563.i, i64 8
  store i64 %i.ajd, ptr %i.ajf, align 8, !tbaa !12
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %.05662.i, i64 %i.ct
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !12 ; 2 uses
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %.05464.i, i64 %i.ct
  store i64 %i.ajh, ptr %i.aji, align 8, !tbaa !12
  %i.ajj = getelementptr inbounds nuw i8, ptr %.05464.i, i64 8
  store i64 %i.ajh, ptr %i.ajj, align 8, !tbaa !12
  br i1 %exitcond.not.i231.1977, label %._crit_edge.i232, label %scalar.ph607.2

scalar.ph607.2:                                   ; preds = %scalar.ph607.1
  %i.ajk = getelementptr inbounds nuw i8, ptr %.05662.i, i64 16
  %i.ajl = load i64, ptr %i.ajk, align 8, !tbaa !12 ; 2 uses
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %.05563.i, i64 %i.cu
  store i64 %i.ajl, ptr %i.ajm, align 8, !tbaa !12
  %i.ajn = getelementptr inbounds nuw i8, ptr %.05563.i, i64 16
  store i64 %i.ajl, ptr %i.ajn, align 8, !tbaa !12
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %.05662.i, i64 %i.cu
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !12 ; 2 uses
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %.05464.i, i64 %i.cu
  store i64 %i.ajp, ptr %i.ajq, align 8, !tbaa !12
  %i.ajr = getelementptr inbounds nuw i8, ptr %.05464.i, i64 16
  store i64 %i.ajp, ptr %i.ajr, align 8, !tbaa !12
  br label %._crit_edge.i232

._crit_edge.i232:                                 ; preds = %vector.body611, %scalar.ph607, %scalar.ph607.1, %scalar.ph607.2
  %i.ajs = getelementptr inbounds [8 x i8], ptr %.05662.i, i64 %i.an
  %i.ajt = getelementptr inbounds [8 x i8], ptr %.05563.i, i64 %i.an
  %i.aju = getelementptr inbounds [8 x i8], ptr %.05464.i, i64 %i.an
  %i.ajv = add nsw i32 %.065.i, %i.am             ; 2 uses
  %i.ajw = icmp slt i32 %i.ajv, %i.w
  br i1 %i.ajw, label %.preheader.i, label %If_Dec10Cofactors.exit, !llvm.loop !0

end_hunk_0
begin_hunk_1_@If_Dec10CofCount2:bb.a
  %.1.8 = phi i64 [ %.1.7, %bb.v ], [ %.1.7, %bb.x ], [ %i.cw, %bb.w ] ; 4 uses
  %i.cz = shl i32 10, %i.a                        ; 2 uses
  %i.da = sdiv i32 %i.cz, 64
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !12
  %i.de = and i32 %i.cz, 62
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = lshr i64 %i.dd, %i.df
  %i.dh = and i64 %i.dg, %spec.select             ; 3 uses
  %i.di = icmp eq i64 %i.dh, %i.f
  br i1 %i.di, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = icmp eq i64 %.1.8, %i.f
  br i1 %i.dj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.9 = icmp eq i64 %i.dh, %.1.8
  br i1 %.not.9, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.9 = phi i64 [ %.1.8, %bb.y ], [ %.1.8, %bb.aa ], [ %i.dh, %bb.z ] ; 4 uses
  %i.dk = shl i32 11, %i.a                        ; 2 uses
  %i.dl = sdiv i32 %i.dk, 64
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !12
  %i.dp = and i32 %i.dk, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = lshr i64 %i.do, %i.dq
  %i.ds = and i64 %i.dr, %spec.select             ; 3 uses
  %i.dt = icmp eq i64 %i.ds, %i.f
  br i1 %i.dt, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = icmp eq i64 %.1.9, %i.f
  br i1 %i.du, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.10 = icmp eq i64 %i.ds, %.1.9
  br i1 %.not.10, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.1.10 = phi i64 [ %.1.9, %bb.ab ], [ %.1.9, %bb.ad ], [ %i.ds, %bb.ac ] ; 4 uses
  %i.dv = shl i32 12, %i.a                        ; 2 uses
  %i.dw = sdiv i32 %i.dv, 64
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !12
  %i.ea = and i32 %i.dv, 60
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = lshr i64 %i.dz, %i.eb
  %i.ed = and i64 %i.ec, %spec.select             ; 3 uses
  %i.ee = icmp eq i64 %i.ed, %i.f
  br i1 %i.ee, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = icmp eq i64 %.1.10, %i.f
  br i1 %i.ef, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.11 = icmp eq i64 %i.ed, %.1.10
  br i1 %.not.11, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.1.11 = phi i64 [ %.1.10, %bb.ae ], [ %.1.10, %bb.ag ], [ %i.ed, %bb.af ] ; 4 uses
  %i.eg = shl i32 13, %i.a                        ; 2 uses
  %i.eh = sdiv i32 %i.eg, 64
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !12
  %i.el = and i32 %i.eg, 63
  %i.em = zext nneg i32 %i.el to i64
  %i.en = lshr i64 %i.ek, %i.em
  %i.eo = and i64 %i.en, %spec.select             ; 3 uses
  %i.ep = icmp eq i64 %i.eo, %i.f
  br i1 %i.ep, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eq = icmp eq i64 %.1.11, %i.f
  br i1 %i.eq, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.12 = icmp eq i64 %i.eo, %.1.11
  br i1 %.not.12, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.1.12 = phi i64 [ %.1.11, %bb.ah ], [ %.1.11, %bb.aj ], [ %i.eo, %bb.ai ] ; 4 uses
  %i.er = shl i32 14, %i.a                        ; 2 uses
  %i.es = sdiv i32 %i.er, 64
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !12
  %i.ew = and i32 %i.er, 62
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 %i.ev, %i.ex
  %i.ez = and i64 %i.ey, %spec.select             ; 3 uses
  %i.fa = icmp eq i64 %i.ez, %i.f
  br i1 %i.fa, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp eq i64 %.1.12, %i.f
  br i1 %i.fb, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.13 = icmp eq i64 %i.ez, %.1.12
  br i1 %.not.13, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.1.13 = phi i64 [ %.1.12, %bb.ak ], [ %.1.12, %bb.am ], [ %i.ez, %bb.al ] ; 2 uses
  %i.fc = shl i32 15, %i.a                        ; 2 uses
  %i.fd = sdiv i32 %i.fc, 64
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !12
  %i.fh = and i32 %i.fc, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = lshr i64 %i.fg, %i.fi
  %i.fk = and i64 %i.fj, %spec.select             ; 2 uses
  %i.fl = icmp eq i64 %i.fk, %i.f
  %i.fm = icmp eq i64 %.1.13, %i.f
  %or.cond = select i1 %i.fl, i1 true, i1 %i.fm
  %.not.14 = icmp eq i64 %i.fk, %.1.13
  %or.cond46 = select i1 %or.cond, i1 true, i1 %.not.14
  %spec.select47 = select i1 %or.cond46, i32 2, i32 3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %.023 = phi i32 [ 3, %bb.ag ], [ 3, %bb.u ], [ 3, %bb.c ], [ %spec.select47, %bb.an ], [ 3, %bb.f ], [ 3, %bb.x ], [ 3, %bb.i ], [ 3, %bb.am ], [ 3, %bb.l ], [ 3, %bb.ad ], [ 3, %bb.o ], [ 3, %bb.aj ], [ 3, %bb.r ], [ 3, %bb.aa ]
  ret i32 %.023
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @If_CutPerformCheck10(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp slt i32 %3, 7
  br i1 %i.b, label %If_Dec10Support.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 7
  %i.d = add nsw i32 %2, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %If_Dec10Copy.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %1, i64 %i.h, i1 false), !tbaa !12
  br label %If_Dec10Copy.exit

If_Dec10Copy.exit:                                ; preds = %.lr.ph.preheader.i, %bb.b
  %i.i = add nsw i32 %3, -6                       ; 2 uses
  %i.j = shl nuw i32 1, %i.i                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 31
  %smax54.i.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %wide.trip.count55.i.i = zext nneg i32 %smax54.i.i to i64
  br i1 %.not.i.i, label %If_Dec10Support.exit.thread, label %.split.split.preheader.i

.split.split.preheader.i:                         ; preds = %If_Dec10Copy.exit
  %wide.trip.count.i12 = zext nneg i32 %3 to i64
  br label %.split.split.i

.split.split.i:                                   ; preds = %If_Dec10HasVar.exit.thread.i, %.split.split.preheader.i
  %indvars.iv.i13 = phi i64 [ 0, %.split.split.preheader.i ], [ %indvars.iv.next.i14, %If_Dec10HasVar.exit.thread.i ] ; 7 uses
  %.021.i = phi i32 [ 0, %.split.split.preheader.i ], [ %i.am, %If_Dec10HasVar.exit.thread.i ] ; 4 uses
  %i.k = icmp samesign ult i64 %indvars.iv.i13, 6
  br i1 %i.k, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split.split.i
  %i.l = trunc nuw nsw i64 %indvars.iv.i13 to i32
  %i.m = shl nuw nsw i32 1, %i.l                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @Truth6, i64 %indvars.iv.i13
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %i.p = xor i64 %i.o, -1
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next52.i.i = add nuw nsw i64 %indvars.iv51.i.i, 1 ; 2 uses
  %exitcond56.not.i.i = icmp eq i64 %indvars.iv.next52.i.i, %wide.trip.count55.i.i
  br i1 %exitcond56.not.i.i, label %If_Dec10HasVar.exit.thread.i, label %bb.d, !llvm.loop !107

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv51.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next52.i.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv51.i.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  %i.t = and i64 %i.s, %i.p
  %i.u = and i64 %i.s, %i.o
  %i.v = lshr i64 %i.u, %i.q
  %.not36.i.i = icmp eq i64 %i.t, %i.v
  br i1 %.not36.i.i, label %bb.c, label %If_Dec10HasVar.exit.thread14.i

.preheader.lr.ph.i.i:                             ; preds = %.split.split.i
  %i.w = add nsw i64 %indvars.iv.i13, -6          ; 2 uses
  %i.x = icmp eq i64 %i.w, 31
  %i.y = trunc nuw nsw i64 %i.w to i32            ; 2 uses
  %i.z = shl i32 2, %i.y                          ; 2 uses
  %i.aa = sext i32 %i.z to i64
  br i1 %i.x, label %If_Dec10HasVar.exit.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.ab = shl nuw nsw i32 1, %i.y                 ; 2 uses
  %5 = zext nneg i32 %i.ab to i64
  %wide.trip.count.i.i = zext nneg i32 %i.ab to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.041.us.i.i = phi i32 [ %i.ag, %._crit_edge.us.i.i ], [ 0, %.preheader.us.preheader.i.i ]
  %.03140.us.i.i = phi ptr [ %i.af, %._crit_edge.us.i.i ], [ %i.a, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03140.us.i.i, i64 %5
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.f, !llvm.loop !108

bb.f:                                             ; preds = %bb.e, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.03140.us.i.i, i64 %indvars.iv.i.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !12
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.ae = load i64, ptr %gep.i.i, align 8, !tbaa !12
  %.not.us.i.i = icmp eq i64 %i.ad, %i.ae
  br i1 %.not.us.i.i, label %bb.e, label %If_Dec10HasVar.exit.thread14.loopexit.i

._crit_edge.us.i.i:                               ; preds = %bb.e
  %i.af = getelementptr inbounds [8 x i8], ptr %.03140.us.i.i, i64 %i.aa
  %i.ag = add nsw i32 %.041.us.i.i, %i.z          ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.j
  br i1 %i.ah, label %.preheader.us.i.i, label %If_Dec10HasVar.exit.thread.i, !llvm.loop !109

If_Dec10HasVar.exit.thread14.loopexit.i:          ; preds = %bb.f
  %.pre.i = trunc nuw nsw i64 %indvars.iv.i13 to i32
  %.pre48.i = shl nuw i32 1, %.pre.i
  br label %If_Dec10HasVar.exit.thread14.i

If_Dec10HasVar.exit.thread14.i:                   ; preds = %bb.d, %If_Dec10HasVar.exit.thread14.loopexit.i
  %.pre-phi49.i = phi i32 [ %.pre48.i, %If_Dec10HasVar.exit.thread14.loopexit.i ], [ %i.m, %bb.d ]
  %i.ai = or i32 %.pre-phi49.i, %.021.i
  br label %If_Dec10HasVar.exit.thread.i

If_Dec10HasVar.exit.i:                            ; preds = %.preheader.lr.ph.i.i
  %i.aj = trunc nuw nsw i64 %indvars.iv.i13 to i32
  %i.ak = shl nuw nsw i32 1, %i.aj
  %i.al = or i32 %i.ak, %.021.i
  br label %If_Dec10HasVar.exit.thread.i

If_Dec10HasVar.exit.thread.i:                     ; preds = %._crit_edge.us.i.i, %bb.c, %If_Dec10HasVar.exit.i, %If_Dec10HasVar.exit.thread14.i
  %i.am = phi i32 [ %i.ai, %If_Dec10HasVar.exit.thread14.i ], [ %i.al, %If_Dec10HasVar.exit.i ], [ %.021.i, %bb.c ], [ %.021.i, %._crit_edge.us.i.i ] ; 4 uses
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %indvars.iv.next.i14, %wide.trip.count.i12
  br i1 %exitcond.not.i15, label %If_Dec10Support.exit, label %.split.split.i, !llvm.loop !110

If_Dec10Support.exit:                             ; preds = %If_Dec10HasVar.exit.thread.i
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %If_Dec10Support.exit.thread, label %bb.g

bb.g:                                             ; preds = %If_Dec10Support.exit
  %i.an = add nsw i32 %i.am, 1
  %i.ao = and i32 %i.an, %i.am
  %.not18 = icmp eq i32 %i.ao, 0
  br i1 %.not18, label %bb.h, label %If_Dec10Support.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = call i32 @If_Dec10Perform(ptr noundef nonnull %i.a, i32 noundef %3, i32 poison)
  br label %If_Dec10Support.exit.thread

If_Dec10Support.exit.thread:                      ; preds = %If_Dec10Copy.exit, %bb.h, %If_Dec10Support.exit, %bb.g, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.ap, %bb.h ], [ 0, %If_Dec10Support.exit ], [ 0, %bb.g ], [ 0, %If_Dec10Copy.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"long", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !13, !14}
!21 = distinct !{!21, !10, !13, !14}
!22 = distinct !{!22, !10, !14, !13}
!23 = distinct !{!23, !10, !14, !13}
!24 = distinct !{!24, !10, !13, !14}
!25 = distinct !{!25, !10, !13, !14}
!26 = distinct !{!26, !10, !14, !13}
!27 = distinct !{!27, !10, !14, !13}
!28 = distinct !{!28, !10, !13, !14}
!29 = distinct !{!29, !10, !13, !14}
!30 = distinct !{!30, !10, !14, !13}
!31 = distinct !{!31, !10, !14, !13}
!32 = distinct !{!32, !10, !13, !14}
!33 = distinct !{!33, !10, !13, !14}
!34 = distinct !{!34, !10, !14, !13}
!35 = distinct !{!35, !10, !14, !13}
!36 = distinct !{!36, !10, !13, !14}
!37 = distinct !{!37, !10, !14, !13}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !10, !13, !14}
!46 = distinct !{!46, !10, !13}
!47 = distinct !{!47, !10, !13, !14}
!48 = distinct !{!48, !10, !13}
!49 = !{!42}
!50 = !{!43}
!51 = !{!44, !42}
!52 = !{!44}
!53 = distinct !{!53, !10, !13, !14}
!54 = distinct !{!54, !10, !14, !13}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10, !13, !14}
!61 = distinct !{!61, !10, !13}
!62 = distinct !{!62, !10, !13, !14}
!63 = distinct !{!63, !10, !13}
!64 = distinct !{!64, !106}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10, !13, !14}
!69 = distinct !{!69, !10, !13}
!70 = distinct !{!70, !106}
!71 = distinct !{!71, !10, !13, !14}
!72 = distinct !{!72, !10, !13}
!73 = distinct !{!73, !10, !13, !14}
!74 = distinct !{!74, !10, !13}
!75 = distinct !{!75, !106}
!76 = distinct !{!76, !10, !13, !14}
!77 = distinct !{!77, !10, !13}
!78 = distinct !{!78, !106}
!79 = distinct !{!79, !10, !13, !14}
!80 = distinct !{!80, !10, !13}
!81 = distinct !{!81, !10, !13, !14}
!82 = distinct !{!82, !10, !13}
!83 = distinct !{!83, !106}
!84 = distinct !{!84, !10, !13, !14}
!85 = distinct !{!85, !10, !13}
!86 = distinct !{!86, !106}
!87 = distinct !{!87, !10, !13, !14}
!88 = distinct !{!88, !10, !13}
!89 = distinct !{!89, !10, !13, !14}
end_hunk_1
