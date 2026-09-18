Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilBSet?download=true
inline.NumInlined: 288
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Abc_TtFindBVarsSVars2:bb.a
  %exitcond.not.i.us.i.us.us.i.us.us.i.1 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i.1, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i.1, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1, label %.lr.ph.i.us.i.us.us.i.us.us.i.1, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1: ; preds = %bb.x, %.lr.ph.i.us.i.us.us.i.us.us.i.1
  %.015.i.ph.us.i.us.us.i.us.us.i.1 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i.1 ], [ 0, %bb.x ]
  %i.ir = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i.1, %i.ij ; 3 uses
  %indvars.iv.next.i.us.us.i.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.i.us.us.i, 2 ; 2 uses
  %niter800.next.1 = add i64 %niter800, 2         ; 2 uses
  %niter800.ncmp.1 = icmp eq i64 %niter800.next.1, %unroll_iter799
  br i1 %niter800.ncmp.1, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i, !llvm.loop !13

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa: ; preds = %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1
  br i1 %lcmp.mod796.not, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader

.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, %.lr.ph.i.us.us.i.us.us.i
  %indvars.iv.i.us.us.i.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.i.us.us.i ], [ %indvars.iv.next.i.us.us.i.us.us.i.1, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ]
  %.011.us.i.us.us.i.us.us.i.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.i.us.us.i ], [ %i.ir, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod798)
  %i.is = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i.epil.init, %i.eg
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.is
  br label %.lr.ph.i.us.i.us.us.i.us.us.i.epil

.lr.ph.i.us.i.us.us.i.us.us.i.epil:               ; preds = %bb.y, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader
  %indvars.iv.i.us.i.us.us.i.us.us.i.epil = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil, %bb.y ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !28
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !28
  %i.iy = and i64 %i.ix, %i.iv
  %.not.i.us.i.us.us.i.us.us.i.epil = icmp eq i64 %i.iy, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i.epil, label %bb.y, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil

bb.y:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i.epil
  %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i.epil = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i.epil, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil, label %.lr.ph.i.us.i.us.us.i.us.us.i.epil, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil: ; preds = %bb.y, %.lr.ph.i.us.i.us.us.i.us.us.i.epil
  %.015.i.ph.us.i.us.us.i.us.us.i.epil = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i.epil ], [ 0, %bb.y ]
  %i.iz = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i.epil, %.011.us.i.us.us.i.us.us.i.epil.init
  br label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil
  %.lcssa = phi i32 [ %i.ir, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ], [ %i.iz, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil ] ; 2 uses
  %.not.us.us.i.us.us.i = icmp sgt i32 %.lcssa, %i.hb
  br i1 %.not.us.us.i.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, label %bb.z

bb.z:                                             ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i
  %i.ja = tail call noundef i32 @llvm.smax.i32(i32 %.01622.us.us.i.us.us.i, i32 %.lcssa) ; 6 uses
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.us.us.i, label %.lr.ph.i.us.us.i.us.us.i, !llvm.loop !14

Abc_BSEvalCountUniqueMax.exit.us.us.i:            ; preds = %bb.z
  %i.jb = icmp eq i32 %i.ja, 0
  %i.jc = icmp sgt i32 %i.ja, %i.hb
  %or.cond.us.us.i = or i1 %i.jb, %i.jc
  br i1 %or.cond.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, label %bb.aa

bb.aa:                                            ; preds = %Abc_BSEvalCountUniqueMax.exit.us.us.i
  %i.jd = icmp samesign ult i32 %i.ja, 2
  %i.je = add nsw i32 %i.ja, -1
  %i.jf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.je, i1 true)
  %i.jg = sub nuw nsw i32 32, %i.jf
  %.09.i72.us.us.i = select i1 %i.jd, i32 %i.ja, i32 %i.jg ; 3 uses
  %i.jh = zext nneg i32 %.09.i72.us.us.i to i64
  %i.ji = icmp samesign uge i64 %indvars.iv650, %i.jh
  %i.jj = icmp sgt i32 %.180.us82.us.i, %.09.i72.us.us.i
  %or.cond67.us.us.i = and i1 %i.ji, %i.jj
  br i1 %or.cond67.us.us.i, label %bb.ab, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i

bb.ab:                                            ; preds = %bb.aa
  br label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i

Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i:   ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i, %bb.ab, %bb.aa, %Abc_BSEvalCountUniqueMax.exit.us.us.i, %.critedge2.us81.us.i
  %.4518 = phi i32 [ %.3517, %.critedge2.us81.us.i ], [ %.3517, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %i.hs, %bb.ab ], [ %.3517, %bb.aa ], [ %.3517, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ] ; 2 uses
  %.4512 = phi i32 [ %.3511, %.critedge2.us81.us.i ], [ %.3511, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %i.ho, %bb.ab ], [ %.3511, %bb.aa ], [ %.3511, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ] ; 2 uses
  %.2.us87.us.i = phi i32 [ %.180.us82.us.i, %.critedge2.us81.us.i ], [ %.180.us82.us.i, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %.09.i72.us.us.i, %bb.ab ], [ %.180.us82.us.i, %bb.aa ], [ %.180.us82.us.i, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ]
  %i.jk = freeze i32 %.2.us87.us.i                ; 2 uses
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i379, 2 ; 2 uses
  %i.jl = or disjoint i64 %indvars.iv.next.i380, 1
  %i.jm = icmp samesign ult i64 %i.jl, %i.hq
  br i1 %i.jm, label %.critedge2.us81.us.i, label %._crit_edge.us.i, !llvm.loop !15

._crit_edge.us.i:                                 ; preds = %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, %.critedge2.lr.ph.us.i, %.lr.ph.split.us.i
  %.2516 = phi i32 [ %.1515, %.critedge2.lr.ph.us.i ], [ %.1515, %.lr.ph.split.us.i ], [ %.4518, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 2 uses
  %.2510 = phi i32 [ %.1509, %.critedge2.lr.ph.us.i ], [ %.1509, %.lr.ph.split.us.i ], [ %.4512, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 2 uses
  %.1.lcssa.us.i = phi i32 [ %.094.us.i, %.critedge2.lr.ph.us.i ], [ %.094.us.i, %.lr.ph.split.us.i ], [ %i.jk, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 4 uses
  %i.jn = sext i32 %.1.lcssa.us.i to i64
  %.not65.us.i = icmp slt i64 %indvars.iv650, %i.jn
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.jo = icmp samesign ult i64 %indvars.iv.next131.i, %i.gy
  %or.cond.i = and i1 %i.jo, %.not65.us.i
  br i1 %or.cond.i, label %.lr.ph.split.us.i, label %Abc_SharedEvalBest.exit, !llvm.loop !16

Abc_SharedEvalBest.exit:                          ; preds = %._crit_edge.us.i
  %i.jp = icmp slt i32 %.1.lcssa.us.i, 100
  %spec.select = select i1 %i.jp, i32 %.1.lcssa.us.i, i32 %.0293596
  br label %Abc_SharedEvalBest.exit.thread

Abc_SharedEvalBest.exit.thread:                   ; preds = %Abc_SharedEvalBest.exit, %.lr.ph.i378, %.lr.ph598
  %.5513525 = phi i32 [ %.0508595, %.lr.ph.i378 ], [ %.2510, %Abc_SharedEvalBest.exit ], [ %.0508595, %.lr.ph598 ] ; 2 uses
  %.5519524 = phi i32 [ %.0514594, %.lr.ph.i378 ], [ %.2516, %Abc_SharedEvalBest.exit ], [ %.0514594, %.lr.ph598 ] ; 2 uses
  %i.jq = phi i32 [ %.0293596, %.lr.ph.i378 ], [ %spec.select, %Abc_SharedEvalBest.exit ], [ %.0293596, %.lr.ph598 ] ; 3 uses
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %i.jr = icmp slt i64 %indvars.iv650, %i.em
  %i.js = trunc nuw i64 %indvars.iv.next651 to i32
  %i.jt = icmp sgt i32 %i.jq, %i.js
  %i.ju = select i1 %i.jr, i1 %i.jt, i1 false
  br i1 %i.ju, label %.lr.ph598, label %._crit_edge599, !llvm.loop !204

bb.ac:                                            ; preds = %._crit_edge599
  %i.jv = add nsw i32 %i.fb, -1
  %i.jw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jv, i1 true)
  %i.jx = sub nuw nsw i32 32, %i.jw
  %i.jy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.jx, i32 noundef %.0293.lcssa, i32 noundef %.0514.lcssa, i32 noundef %.0508.lcssa) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge599
  %.not362 = icmp sgt i32 %.0293.lcssa, %4        ; 3 uses
  %i.jz = shl nuw i32 1, %.0293.lcssa
  %.0299 = select i1 %.not362, i32 %i.fb, i32 %i.jz
  %.0297 = select i1 %.not362, i32 0, i32 %.0514.lcssa
  %.0295 = select i1 %.not362, i32 0, i32 %.0508.lcssa
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.v
  %.1300 = phi i32 [ %.0299, %bb.ad ], [ %i.fb, %bb.v ] ; 6 uses
  %.1298 = phi i32 [ %.0297, %bb.ad ], [ 0, %bb.v ] ; 3 uses
  %.1296 = phi i32 [ %.0295, %bb.ad ], [ 0, %bb.v ] ; 4 uses
  %i.ka = icmp sgt i32 %.0303606, %.1300
  br i1 %i.ka, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kb = icmp ne i32 %.0303606, %.1300
  %.not363 = icmp slt i32 %.0301607, %.1296
  %or.cond367 = select i1 %i.kb, i1 true, i1 %.not363
  br i1 %or.cond367, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.kc = icmp eq i32 %.0303606, %.1300
  %i.kd = icmp eq i32 %.0301607, %.1296
  %i.ke = select i1 %i.kc, i1 %i.kd, i1 false
  br i1 %i.eh, label %.lr.ph.i381.preheader, label %Abc_BSEvalEncode.exit

.lr.ph.i381.preheader:                            ; preds = %bb.ag
  br i1 %min.iters.check752, label %.lr.ph.i381.preheader767, label %vector.body755

vector.body755:                                   ; preds = %.lr.ph.i381.preheader, %vector.body755
  %index756 = phi i64 [ %index.next761, %vector.body755 ], [ 0, %.lr.ph.i381.preheader ] ; 2 uses
  %vec.phi757 = phi <2 x i64> [ %i.kl, %vector.body755 ], [ zeroinitializer, %.lr.ph.i381.preheader ]
  %vec.phi758 = phi <2 x i64> [ %i.km, %vector.body755 ], [ zeroinitializer, %.lr.ph.i381.preheader ]
  %i.kf = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index756 ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 8
  %wide.load759 = load <2 x i32>, ptr %i.kf, align 4, !tbaa !29
  %wide.load760 = load <2 x i32>, ptr %i.kg, align 4, !tbaa !29
  %i.kh = zext nneg <2 x i32> %wide.load759 to <2 x i64>
  %i.ki = zext nneg <2 x i32> %wide.load760 to <2 x i64>
  %i.kj = shl nuw <2 x i64> splat (i64 1), %i.kh
  %i.kk = shl nuw <2 x i64> splat (i64 1), %i.ki
  %i.kl = or <2 x i64> %i.kj, %vec.phi757         ; 2 uses
  %i.km = or <2 x i64> %i.kk, %vec.phi758         ; 2 uses
  %index.next761 = add nuw i64 %index756, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next761, %n.vec754
  br i1 %i.kn, label %middle.block762, label %vector.body755, !llvm.loop !205

middle.block762:                                  ; preds = %vector.body755
  %bin.rdx763 = or <2 x i64> %i.km, %i.kl
  %i.ko = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx763) ; 2 uses
  br i1 %cmp.n764, label %.lr.ph28.i.preheader, label %.lr.ph.i381.preheader767

.lr.ph.i381.preheader767:                         ; preds = %.lr.ph.i381.preheader, %middle.block762
  %indvars.iv.i383.ph = phi i64 [ 0, %.lr.ph.i381.preheader ], [ %n.vec754, %middle.block762 ]
  %.01925.i.ph = phi i64 [ 0, %.lr.ph.i381.preheader ], [ %i.ko, %middle.block762 ]
  br label %.lr.ph.i381

.lr.ph.i381:                                      ; preds = %.lr.ph.i381.preheader767, %.lr.ph.i381
  %indvars.iv.i383 = phi i64 [ %indvars.iv.next.i384, %.lr.ph.i381 ], [ %indvars.iv.i383.ph, %.lr.ph.i381.preheader767 ] ; 2 uses
  %.01925.i = phi i64 [ %i.ks, %.lr.ph.i381 ], [ %.01925.i.ph, %.lr.ph.i381.preheader767 ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i383
  %i.kp = load i32, ptr %gep.i, align 4, !tbaa !29
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = shl nuw i64 1, %i.kq
  %i.ks = or i64 %i.kr, %.01925.i                 ; 2 uses
  %indvars.iv.next.i384 = add nuw nsw i64 %indvars.iv.i383, 1 ; 2 uses
  %exitcond.not.i385 = icmp eq i64 %indvars.iv.next.i384, %wide.trip.count.i382
  br i1 %exitcond.not.i385, label %.lr.ph28.i.preheader, label %.lr.ph.i381, !llvm.loop !206

.lr.ph28.i.preheader:                             ; preds = %.lr.ph.i381, %middle.block762
  %.lcssa729 = phi i64 [ %i.ko, %middle.block762 ], [ %i.ks, %.lr.ph.i381 ]
  br i1 %i.en, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader, %.lr.ph28.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.1, %.lr.ph28.i ], [ 0, %.lr.ph28.i.preheader ] ; 4 uses
  %.027.i = phi i64 [ %.1.i.1, %.lr.ph28.i ], [ 0, %.lr.ph28.i.preheader ]
  %niter806 = phi i64 [ %niter806.next.1, %.lr.ph28.i ], [ 0, %.lr.ph28.i.preheader ]
  %i.kt = trunc nuw nsw i64 %indvars.iv31.i to i32
  %i.ku = shl nuw i32 1, %i.kt
  %i.kv = and i32 %i.ku, %.1298
  %.not.i386 = icmp eq i32 %i.kv, 0
  %i.kw = add nsw i64 %indvars.iv31.i, %i.ei
  %i.kx = shl nuw i64 1, %i.kw
  %i.ky = select i1 %.not.i386, i64 0, i64 %i.kx
  %.1.i = or i64 %i.ky, %.027.i
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv.next32.i to i32
  %i.la = shl nuw i32 1, %i.kz
  %i.lb = and i32 %i.la, %.1298
  %.not.i386.1 = icmp eq i32 %i.lb, 0
  %i.lc = add nsw i64 %indvars.iv.next32.i, %i.ei
  %i.ld = shl nuw i64 1, %i.lc
  %i.le = select i1 %.not.i386.1, i64 0, i64 %i.ld
  %.1.i.1 = or i64 %i.le, %.1.i                   ; 3 uses
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %niter806.next.1 = add i64 %niter806, 2         ; 2 uses
  %niter806.ncmp.1 = icmp eq i64 %niter806.next.1, %unroll_iter805
  br i1 %niter806.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph28.i, !llvm.loop !17

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph28.i
  br i1 %lcmp.mod802.not, label %._crit_edge.loopexit.i, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph28.i.preheader
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %indvars.iv.next32.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.027.i.epil.init = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod804)
  %i.lf = trunc nuw nsw i64 %indvars.iv31.i.epil.init to i32
  %i.lg = shl nuw i32 1, %i.lf
  %i.lh = and i32 %i.lg, %.1298
  %.not.i386.epil = icmp eq i32 %i.lh, 0
  %i.li = add nsw i64 %indvars.iv31.i.epil.init, %i.ei
  %i.lj = shl nuw i64 1, %i.li
  %i.lk = select i1 %.not.i386.epil, i64 0, i64 %i.lj
  %.1.i.epil = or i64 %i.lk, %.027.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph28.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.1.i.epil, %.lr.ph28.i.epil.preheader ]
  %i.ll = shl i64 %.1.i.lcssa, 24
  br label %Abc_BSEvalEncode.exit

Abc_BSEvalEncode.exit:                            ; preds = %bb.ag, %._crit_edge.loopexit.i
  %.019.lcssa38.i = phi i64 [ %.lcssa729, %._crit_edge.loopexit.i ], [ 0, %bb.ag ]
  %.0.lcssa.i = phi i64 [ %i.ll, %._crit_edge.loopexit.i ], [ 0, %bb.ag ]
  %i.lm = zext i32 %.1300 to i64
  %i.ln = shl i64 %i.lm, 48
  %i.lo = or i64 %.019.lcssa38.i, %i.ln
  %i.lp = or i64 %i.lo, %.0.lcssa.i               ; 2 uses
  br i1 %i.ke, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %Abc_BSEvalEncode.exit
  %i.lq = icmp eq i32 %i.eq, %i.ep
  br i1 %i.lq, label %bb.ai, label %Vec_WrdPush.exit

bb.ai:                                            ; preds = %bb.ah
  %i.lr = icmp slt i32 %i.ep, 16
  br i1 %i.lr, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %.not9.i.i = icmp eq ptr %i.er, null
  br i1 %.not9.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ls = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.er, i64 noundef 128) #29
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.al:                                            ; preds = %bb.aj
  %i.lt = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #30
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.am:                                            ; preds = %bb.ai
  %i.lu = icmp samesign ult i32 %i.ep, 1073741823
  %i.lv = shl nuw nsw i32 %i.ep, 1
  %spec.select.i = select i1 %i.lu, i32 %i.lv, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ep, %spec.select.i
  br i1 %.not.i9.i, label %bb.an, label %Vec_WrdPush.exit

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i = icmp eq ptr %i.er, null
  %i.lw = zext nneg i32 %spec.select.i to i64
  %i.lx = shl nuw nsw i64 %i.lw, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ly = tail call ptr @realloc(ptr noundef nonnull %i.er, i64 noundef %i.lx) #29
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.ap:                                            ; preds = %bb.an
  %i.lz = tail call noalias ptr @malloc(i64 noundef %i.lx) #30
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.ao, %bb.ap, %bb.ak, %bb.al
  %storemerge536 = phi ptr [ %i.lt, %bb.al ], [ %i.ls, %bb.ak ], [ %i.ly, %bb.ao ], [ %i.lz, %bb.ap ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i, %bb.ao ], [ %spec.select.i, %bb.ap ] ; 2 uses
  store ptr %storemerge536, ptr %i.bd, align 8, !tbaa !43
  store i32 %spec.select.sink.i, ptr %i.ba, align 8, !tbaa !45
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.ah, %bb.am, %Vec_WrdGrow.exit11.sink.split.i
  %i.ma = phi ptr [ %i.eo, %bb.ah ], [ %i.eo, %bb.am ], [ %storemerge536, %Vec_WrdGrow.exit11.sink.split.i ] ; 3 uses
  %i.mb = phi i32 [ %i.ep, %bb.ah ], [ %i.ep, %bb.am ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.mc = add nsw i32 %i.eq, 1                    ; 2 uses
  store i32 %i.mc, ptr %i.bb, align 4, !tbaa !44
  %i.md = sext i32 %i.eq to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.md
  store i64 %i.lp, ptr %i.me, align 8, !tbaa !28
  br label %bb.av

bb.aq:                                            ; preds = %Abc_BSEvalEncode.exit
  %.not.i.i = icmp slt i32 %i.es, 1
  br i1 %.not.i.i, label %bb.ar, label %Vec_WrdFill.exit

bb.ar:                                            ; preds = %bb.aq
  %.not9.i.i388 = icmp eq ptr %i.er, null
  br i1 %.not9.i.i388, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mf = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.er, i64 noundef 8) #29
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.mg = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #30
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.mh = phi ptr [ %i.mf, %bb.as ], [ %i.mg, %bb.at ] ; 3 uses
  store ptr %i.mh, ptr %i.bd, align 8, !tbaa !43
  store i32 1, ptr %i.ba, align 8, !tbaa !45
  br label %Vec_WrdFill.exit

Vec_WrdFill.exit:                                 ; preds = %bb.aq, %bb.au
  %i.mi = phi ptr [ %i.mh, %bb.au ], [ %i.eo, %bb.aq ]
  %i.mj = phi i32 [ 1, %bb.au ], [ %i.ep, %bb.aq ]
  %i.mk = phi ptr [ %i.mh, %bb.au ], [ %i.er, %bb.aq ] ; 2 uses
  %i.ml = phi i32 [ 1, %bb.au ], [ %i.es, %bb.aq ]
  store i64 %i.lp, ptr %i.mk, align 8, !tbaa !28
  store i32 1, ptr %i.bb, align 4, !tbaa !44
  br label %bb.av

bb.av:                                            ; preds = %Vec_WrdFill.exit, %Vec_WrdPush.exit
  %i.mm = phi ptr [ %i.mi, %Vec_WrdFill.exit ], [ %i.ma, %Vec_WrdPush.exit ] ; 2 uses
  %i.mn = phi i32 [ %i.mj, %Vec_WrdFill.exit ], [ %i.mb, %Vec_WrdPush.exit ] ; 2 uses
  %i.mo = phi i32 [ 1, %Vec_WrdFill.exit ], [ %i.mc, %Vec_WrdPush.exit ] ; 2 uses
  %i.mp = phi ptr [ %i.mk, %Vec_WrdFill.exit ], [ %i.ma, %Vec_WrdPush.exit ] ; 2 uses
  %i.mq = phi i32 [ %i.ml, %Vec_WrdFill.exit ], [ %i.mb, %Vec_WrdPush.exit ] ; 2 uses
  br i1 %.not357, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.af
  %i.ms = phi ptr [ %i.eo, %bb.af ], [ %i.mm, %bb.aw ], [ %i.mm, %bb.av ]
  %i.mt = phi i32 [ %i.ep, %bb.af ], [ %i.mn, %bb.aw ], [ %i.mn, %bb.av ]
  %i.mu = phi i32 [ %i.eq, %bb.af ], [ %i.mo, %bb.aw ], [ %i.mo, %bb.av ]
  %i.mv = phi ptr [ %i.er, %bb.af ], [ %i.mp, %bb.aw ], [ %i.mp, %bb.av ]
  %i.mw = phi i32 [ %i.es, %bb.af ], [ %i.mq, %bb.aw ], [ %i.mq, %bb.av ]
  %.1304 = phi i32 [ %.0303606, %bb.af ], [ %.1300, %bb.aw ], [ %.1300, %bb.av ]
  %.1302 = phi i32 [ %.0301607, %bb.af ], [ %.1296, %bb.aw ], [ %.1296, %bb.av ]
  %i.mx = add nsw i32 %.0323603, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.u
  %i.my = phi ptr [ %i.ms, %bb.ax ], [ %i.eo, %bb.u ] ; 2 uses
  %i.mz = phi i32 [ %i.mt, %bb.ax ], [ %i.ep, %bb.u ]
  %i.na = phi i32 [ %i.mu, %bb.ax ], [ %i.eq, %bb.u ] ; 2 uses
  %i.nb = phi ptr [ %i.mv, %bb.ax ], [ %i.er, %bb.u ]
  %i.nc = phi i32 [ %i.mw, %bb.ax ], [ %i.es, %bb.u ]
  %.1324 = phi i32 [ %i.mx, %bb.ax ], [ %.0323603, %bb.u ] ; 2 uses
  %.2305 = phi i32 [ %.1304, %bb.ax ], [ %.0303606, %bb.u ] ; 2 uses
  %.2 = phi i32 [ %.1302, %bb.ax ], [ %.0301607, %bb.u ] ; 2 uses
  br i1 %.not357, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %putchar364 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond657.not = icmp eq i64 %indvars.iv.next654, %wide.trip.count656
  br i1 %exitcond657.not, label %.critedge, label %bb.p, !llvm.loop !207

.critedge:                                        ; preds = %bb.ba, %bb.o
  %i.nd = phi ptr [ %i.bc, %bb.o ], [ %i.my, %bb.ba ]
  %.val374666 = phi i32 [ 0, %bb.o ], [ %i.na, %bb.ba ]
  %.0323.lcssa = phi i32 [ 0, %bb.o ], [ %.1324, %bb.ba ]
  %.0303.lcssa = phi i32 [ %i.bn, %bb.o ], [ %.2305, %bb.ba ]
  %.0301.lcssa = phi i32 [ %2, %bb.o ], [ %.2, %bb.ba ]
  %i.ne = load i32, ptr %i.dg, align 8, !tbaa !61 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %.critedge
  %i.ng = zext nneg i32 %i.ne to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.bc
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bc ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %.val377, i64 %indvars.iv.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !35 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.nj, null
  br i1 %.not15.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.nj) #28
  store ptr null, ptr %i.ni, align 8, !tbaa !35
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next.i.i, %i.ng
  br i1 %exitcond658.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.critedge
  %.not.i.i389 = icmp eq ptr %.val377, null
  br i1 %.not.i.i389, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bc, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.val377) #28
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.dg) #28
  br label %.loopexit

.critedge5:                                       ; preds = %.critedge5.lr.ph, %Abc_TtExchangeVars.exit
  %i.nk = phi ptr [ %i.bc, %.critedge5.lr.ph ], [ %i.uz, %Abc_TtExchangeVars.exit ] ; 5 uses
  %i.nl = phi i32 [ 16, %.critedge5.lr.ph ], [ %i.va, %Abc_TtExchangeVars.exit ] ; 10 uses
  %i.nm = phi i32 [ 0, %.critedge5.lr.ph ], [ %i.vb, %Abc_TtExchangeVars.exit ] ; 5 uses
  %i.nn = phi ptr [ %i.bc, %.critedge5.lr.ph ], [ %i.vc, %Abc_TtExchangeVars.exit ] ; 9 uses
end_hunk_0
