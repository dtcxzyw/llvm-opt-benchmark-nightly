Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/macroblock?download=true
inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 104
begin_hunk_0_@IntraChromaPrediction:bb.a

.lr.ph490:                                        ; preds = %.lr.ph490.preheader, %.lr.ph490
  %indvars.iv662 = phi i64 [ %indvars.iv.next663.1, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ] ; 3 uses
  %niter886 = phi i64 [ %niter886.next.1, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ]
  %i.awm = load ptr, ptr @img, align 8, !tbaa !11
  %i.awn = getelementptr inbounds nuw [2048 x i8], ptr %i.awm, i64 %indvars.iv704
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 9552
  %i.awp = getelementptr inbounds nuw [32 x i8], ptr %i.awo, i64 %indvars.iv662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awp, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  %i.awq = load ptr, ptr @img, align 8, !tbaa !11
  %i.awr = getelementptr inbounds nuw [2048 x i8], ptr %i.awq, i64 %indvars.iv704
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 9584
  %i.awt = getelementptr inbounds nuw [32 x i8], ptr %i.aws, i64 %indvars.iv662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awt, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  %indvars.iv.next663.1 = add nuw nsw i64 %indvars.iv662, 2 ; 2 uses
  %niter886.next.1 = add i64 %niter886, 2         ; 2 uses
  %niter886.ncmp.1 = icmp eq i64 %niter886.next.1, %unroll_iter885
  br i1 %niter886.ncmp.1, label %.loopexit453.thread792.unr-lcssa, label %.lr.ph490, !llvm.loop !251

.loopexit453:                                     ; preds = %._crit_edge487
  br i1 %or.cond8, label %.preheader452, label %.thread410

.loopexit453.thread792.unr-lcssa:                 ; preds = %.lr.ph490
  br i1 %lcmp.mod883.not, label %.loopexit453.thread792, label %.lr.ph490.epil.preheader

.lr.ph490.epil.preheader:                         ; preds = %.loopexit453.thread792.unr-lcssa, %.lr.ph490.preheader
  %indvars.iv662.epil.init = phi i64 [ 0, %.lr.ph490.preheader ], [ %indvars.iv.next663.1, %.loopexit453.thread792.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod884)
  %i.awu = load ptr, ptr @img, align 8, !tbaa !11
  %i.awv = getelementptr inbounds nuw [2048 x i8], ptr %i.awu, i64 %indvars.iv704
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 9552
  %i.awx = getelementptr inbounds nuw [32 x i8], ptr %i.aww, i64 %indvars.iv662.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awx, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  br label %.loopexit453.thread792

.loopexit453.thread792:                           ; preds = %.loopexit453.thread792.unr-lcssa, %.lr.ph490.epil.preheader
  br i1 %or.cond8, label %.lr.ph492.preheader, label %.thread410

.loopexit453.thread:                              ; preds = %bb.ca
  br i1 %or.cond8, label %.preheader451, label %.thread410

.preheader452:                                    ; preds = %.loopexit453
  br i1 %i.dj, label %.preheader451, label %.lr.ph492.preheader

.lr.ph492.preheader:                              ; preds = %.loopexit453.thread792, %.preheader452
  br i1 %i.ep, label %.lr.ph492.epil.preheader, label %.lr.ph492

.preheader451:                                    ; preds = %.loopexit453.thread, %.preheader452
  br i1 %brmerge861, label %._crit_edge497.split, label %.preheader449.preheader

.preheader451.thread.unr-lcssa:                   ; preds = %.lr.ph492
  br i1 %lcmp.mod888.not, label %.preheader451.thread, label %.lr.ph492.epil.preheader

.lr.ph492.epil.preheader:                         ; preds = %.preheader451.thread.unr-lcssa, %.lr.ph492.preheader
  %indvars.iv667.epil.init = phi i64 [ 0, %.lr.ph492.preheader ], [ %indvars.iv.next668.1, %.preheader451.thread.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod889)
  %i.awy = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv667.epil.init ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 44
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !152
  %i.axb = sext i32 %i.axa to i64
  %i.axc = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.axb
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !111
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awy, i64 40
  %i.axf = load i32, ptr %i.axe, align 8, !tbaa !153
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds [2 x i8], ptr %i.axd, i64 %i.axg
  %i.axi = load i16, ptr %i.axh, align 2, !tbaa !125
  %i.axj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv667.epil.init
  store i16 %i.axi, ptr %i.axj, align 2, !tbaa !125
  br label %.preheader451.thread

.preheader451.thread:                             ; preds = %.preheader451.thread.unr-lcssa, %.lr.ph492.epil.preheader
  br i1 %i.dk, label %._crit_edge497.split, label %.preheader449.preheader

.preheader449.preheader:                          ; preds = %.preheader451, %.preheader451.thread
  %.pn806 = load ptr, ptr @img, align 8
  %.pn = getelementptr inbounds nuw [2048 x i8], ptr %.pn806, i64 %indvars.iv704
  %i.axk = getelementptr inbounds nuw i8, ptr %.pn, i64 9040
  br label %.preheader449

.lr.ph492:                                        ; preds = %.lr.ph492.preheader, %.lr.ph492
  %indvars.iv667 = phi i64 [ %indvars.iv.next668.1, %.lr.ph492 ], [ 0, %.lr.ph492.preheader ] ; 3 uses
  %niter891 = phi i64 [ %niter891.next.1, %.lr.ph492 ], [ 0, %.lr.ph492.preheader ]
  %indvars.iv.next668 = or disjoint i64 %indvars.iv667, 1 ; 2 uses
  %i.axl = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next668 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 20
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !152
  %i.axo = sext i32 %i.axn to i64
  %i.axp = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.axo
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !111
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axl, i64 16
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !153
  %i.axt = sext i32 %i.axs to i64
  %i.axu = getelementptr inbounds [2 x i8], ptr %i.axq, i64 %i.axt
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !125
  %i.axw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv667
  store i16 %i.axv, ptr %i.axw, align 4, !tbaa !125
  %indvars.iv.next668.1 = add nuw nsw i64 %indvars.iv667, 2 ; 3 uses
  %i.axx = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next668.1 ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 20
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !152
  %i.aya = sext i32 %i.axz to i64
  %i.ayb = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.aya
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !111
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %i.aye = load i32, ptr %i.ayd, align 16, !tbaa !153
  %i.ayf = sext i32 %i.aye to i64
  %i.ayg = getelementptr inbounds [2 x i8], ptr %i.ayc, i64 %i.ayf
  %i.ayh = load i16, ptr %i.ayg, align 2, !tbaa !125
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next668
  store i16 %i.ayh, ptr %i.ayi, align 2, !tbaa !125
  %niter891.next.1 = add nuw i64 %niter891, 2     ; 2 uses
  %niter891.ncmp.1 = icmp eq i64 %niter891.next.1, %unroll_iter890
  br i1 %niter891.ncmp.1, label %.preheader451.thread.unr-lcssa, label %.lr.ph492, !llvm.loop !252

.preheader449:                                    ; preds = %.preheader449.preheader, %._crit_edge495
  %indvars.iv677 = phi i64 [ 0, %.preheader449.preheader ], [ %indvars.iv.next678, %._crit_edge495 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.axk, i64 %indvars.iv677 ; 5 uses
  br i1 %i.eq, label %.epil.preheader892, label %.preheader449.new

.preheader449.new:                                ; preds = %.preheader449, %.preheader449.new
  %indvars.iv672 = phi i64 [ %indvars.iv.next673.3, %.preheader449.new ], [ 0, %.preheader449 ] ; 6 uses
  %niter897 = phi i64 [ %niter897.next.3, %.preheader449.new ], [ 0, %.preheader449 ]
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv672
  %i.ayk = load i16, ptr %i.ayj, align 8, !tbaa !125
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv672
  store i16 %i.ayk, ptr %gep, align 2, !tbaa !125
  %indvars.iv.next673 = or disjoint i64 %indvars.iv672, 1 ; 2 uses
  %i.ayl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673
  %i.aym = load i16, ptr %i.ayl, align 2, !tbaa !125
  %gep.1 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673
  store i16 %i.aym, ptr %gep.1, align 2, !tbaa !125
  %indvars.iv.next673.1 = or disjoint i64 %indvars.iv672, 2 ; 2 uses
  %i.ayn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673.1
  %i.ayo = load i16, ptr %i.ayn, align 4, !tbaa !125
  %gep.2 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673.1
  store i16 %i.ayo, ptr %gep.2, align 2, !tbaa !125
  %indvars.iv.next673.2 = or disjoint i64 %indvars.iv672, 3 ; 2 uses
  %i.ayp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673.2
  %i.ayq = load i16, ptr %i.ayp, align 2, !tbaa !125
  %gep.3 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673.2
  store i16 %i.ayq, ptr %gep.3, align 2, !tbaa !125
  %indvars.iv.next673.3 = add nuw nsw i64 %indvars.iv672, 4 ; 2 uses
  %niter897.next.3 = add i64 %niter897, 4         ; 2 uses
  %niter897.ncmp.3 = icmp eq i64 %niter897.next.3, %unroll_iter896
  br i1 %niter897.ncmp.3, label %._crit_edge495.unr-lcssa, label %.preheader449.new, !llvm.loop !253

._crit_edge495.unr-lcssa:                         ; preds = %.preheader449.new
  br i1 %lcmp.mod894.not, label %._crit_edge495, label %.epil.preheader892

.epil.preheader892:                               ; preds = %._crit_edge495.unr-lcssa, %.preheader449
  %indvars.iv672.epil.init = phi i64 [ 0, %.preheader449 ], [ %indvars.iv.next673.3, %._crit_edge495.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod895)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.epil.preheader892
  %indvars.iv672.epil = phi i64 [ %indvars.iv672.epil.init, %.epil.preheader892 ], [ %indvars.iv.next673.epil, %bb.cb ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader892 ], [ %epil.iter.next, %bb.cb ]
  %i.ayr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv672.epil
  %i.ays = load i16, ptr %i.ayr, align 2, !tbaa !125
  %gep.epil = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv672.epil
  store i16 %i.ays, ptr %gep.epil, align 2, !tbaa !125
  %indvars.iv.next673.epil = add nuw nsw i64 %indvars.iv672.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter893
  br i1 %epil.iter.cmp.not, label %._crit_edge495, label %bb.cb, !llvm.loop !254

._crit_edge495:                                   ; preds = %bb.cb, %._crit_edge495.unr-lcssa
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge497.split, label %.preheader449, !llvm.loop !255

._crit_edge497.split:                             ; preds = %._crit_edge495, %.preheader451, %.preheader451.thread
  br i1 %or.cond15, label %bb.cc, label %.thread410

bb.cc:                                            ; preds = %._crit_edge497.split
  %i.ayt = load i16, ptr %i.do, align 2, !tbaa !125
  %i.ayu = zext i16 %i.ayt to i32                 ; 2 uses
  %i.ayv = load i32, ptr %i.dp, align 4, !tbaa !152
  %i.ayw = sext i32 %i.ayv to i64
  %i.ayx = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ayw
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !111
  %i.ayz = load i32, ptr %i.dq, align 16, !tbaa !153
  %i.aza = sext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds [2 x i8], ptr %i.ayy, i64 %i.aza
  %i.azc = load i16, ptr %i.azb, align 2, !tbaa !125
  %i.azd = zext i16 %i.azc to i32                 ; 2 uses
  %i.aze = sub nsw i32 %i.ayu, %i.azd
  %i.azf = mul nsw i32 %i.aze, %i.dm              ; 3 uses
  br i1 %i.ds, label %.lr.ph501.preheader, label %._crit_edge502

.lr.ph501.preheader:                              ; preds = %bb.cc
  br i1 %min.iters.check839, label %.lr.ph501.preheader871, label %vector.ph840

vector.ph840:                                     ; preds = %.lr.ph501.preheader
  %i.azg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.azf, i64 0
  br label %vector.body842

vector.body842:                                   ; preds = %vector.body842, %vector.ph840
  %index843 = phi i64 [ 0, %vector.ph840 ], [ %index.next854, %vector.body842 ] ; 3 uses
  %vec.ind844 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph840 ], [ %vec.ind.next855, %vector.body842 ] ; 3 uses
  %vec.phi845 = phi <4 x i32> [ %i.azg, %vector.ph840 ], [ %i.azv, %vector.body842 ]
  %vec.phi846 = phi <4 x i32> [ zeroinitializer, %vector.ph840 ], [ %i.azw, %vector.body842 ]
  %i.azh = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep800, i64 %index843 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %wide.load848 = load <4 x i16>, ptr %i.azh, align 2, !tbaa !125
  %wide.load849 = load <4 x i16>, ptr %i.azi, align 2, !tbaa !125
  %i.azj = zext <4 x i16> %wide.load848 to <4 x i32>
  %i.azk = zext <4 x i16> %wide.load849 to <4 x i32>
  %i.azl = sub nsw i64 %i.ek, %index843
  %i.azm = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.azl ; 2 uses
  %i.azn = getelementptr inbounds i8, ptr %i.azm, i64 -6
  %i.azo = getelementptr inbounds i8, ptr %i.azm, i64 -14
  %wide.load850 = load <4 x i16>, ptr %i.azn, align 2, !tbaa !125
  %wide.load851 = load <4 x i16>, ptr %i.azo, align 2, !tbaa !125
  %reverse852 = shufflevector <4 x i16> %wide.load850, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse853 = shufflevector <4 x i16> %wide.load851, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.azp = zext <4 x i16> %reverse852 to <4 x i32>
  %i.azq = zext <4 x i16> %reverse853 to <4 x i32>
  %i.azr = sub nsw <4 x i32> %i.azj, %i.azp
  %i.azs = sub nsw <4 x i32> %i.azk, %i.azq
  %5 = trunc <4 x i64> %vec.ind844 to <4 x i32>
  %6 = add <4 x i32> %5, splat (i32 1)
  %7 = trunc <4 x i64> %vec.ind844 to <4 x i32>
  %8 = add <4 x i32> %7, splat (i32 5)
  %i.azt = mul nsw <4 x i32> %i.azr, %6
  %i.azu = mul nsw <4 x i32> %i.azs, %8
  %i.azv = add <4 x i32> %i.azt, %vec.phi845      ; 2 uses
  %i.azw = add <4 x i32> %i.azu, %vec.phi846      ; 2 uses
  %index.next854 = add nuw i64 %index843, 8       ; 2 uses
  %vec.ind.next855 = add nuw <4 x i64> %vec.ind844, splat (i64 8)
  %i.azx = icmp eq i64 %index.next854, %n.vec841
  br i1 %i.azx, label %middle.block856, label %vector.body842, !llvm.loop !256

middle.block856:                                  ; preds = %vector.body842
  %bin.rdx857 = add <4 x i32> %i.azw, %i.azv
  %i.azy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx857) ; 2 uses
  br i1 %cmp.n858, label %._crit_edge502, label %.lr.ph501.preheader871

.lr.ph501.preheader871:                           ; preds = %.lr.ph501.preheader, %middle.block856
  %indvars.iv682.ph = phi i64 [ 0, %.lr.ph501.preheader ], [ %n.vec841, %middle.block856 ]
  %.0323499.ph = phi i32 [ %i.azf, %.lr.ph501.preheader ], [ %i.azy, %middle.block856 ]
  br label %.lr.ph501

.lr.ph501:                                        ; preds = %.lr.ph501.preheader871, %.lr.ph501
  %indvars.iv682 = phi i64 [ %indvars.iv.next683, %.lr.ph501 ], [ %indvars.iv682.ph, %.lr.ph501.preheader871 ] ; 3 uses
  %.0323499 = phi i32 [ %i.bai, %.lr.ph501 ], [ %.0323499.ph, %.lr.ph501.preheader871 ]
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 3 uses
  %gep801 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep800, i64 %indvars.iv682
  %i.azz = load i16, ptr %gep801, align 2, !tbaa !125
  %i.baa = zext i16 %i.azz to i32
  %i.bab = sub nsw i64 %i.ek, %indvars.iv682
  %i.bac = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bab
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !125
  %i.bae = zext i16 %i.bad to i32
  %i.baf = sub nsw i32 %i.baa, %i.bae
  %i.bag = trunc nuw nsw i64 %indvars.iv.next683 to i32
  %i.bah = mul nsw i32 %i.baf, %i.bag
  %i.bai = add nsw i32 %i.bah, %.0323499          ; 2 uses
  %exitcond686.not = icmp eq i64 %indvars.iv.next683, %wide.trip.count685
  br i1 %exitcond686.not, label %._crit_edge502, label %.lr.ph501, !llvm.loop !257

._crit_edge502:                                   ; preds = %.lr.ph501, %middle.block856, %bb.cc
  %.0323.lcssa = phi i32 [ %i.azf, %bb.cc ], [ %i.azy, %middle.block856 ], [ %i.bai, %.lr.ph501 ]
  %i.baj = load i16, ptr %i.dx, align 2, !tbaa !125
  %i.bak = zext i16 %i.baj to i32                 ; 2 uses
  %i.bal = sub nsw i32 %i.bak, %i.azd
  %i.bam = mul nsw i32 %i.bal, %i.du              ; 3 uses
  br i1 %i.dz, label %.lr.ph507.preheader, label %._crit_edge508

.lr.ph507.preheader:                              ; preds = %._crit_edge502
  br i1 %min.iters.check822, label %.lr.ph507.preheader870, label %vector.ph823

vector.ph823:                                     ; preds = %.lr.ph507.preheader
  %i.ban = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bam, i64 0
  br label %vector.body825

vector.body825:                                   ; preds = %vector.body825, %vector.ph823
  %index826 = phi i64 [ 0, %vector.ph823 ], [ %index.next833, %vector.body825 ] ; 3 uses
  %vec.ind827 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph823 ], [ %vec.ind.next834, %vector.body825 ] ; 3 uses
  %vec.phi.a = phi <4 x i32> [ %i.ban, %vector.ph823 ], [ %i.bbc, %vector.body825 ]
  %vec.phi828 = phi <4 x i32> [ zeroinitializer, %vector.ph823 ], [ %i.bbd, %vector.body825 ]
  %i.bao = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep802, i64 %index826 ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 8
  %wide.load = load <4 x i16>, ptr %i.bao, align 2, !tbaa !125
  %wide.load829 = load <4 x i16>, ptr %i.bap, align 2, !tbaa !125
  %i.baq = zext <4 x i16> %wide.load to <4 x i32>
  %i.bar = zext <4 x i16> %wide.load829 to <4 x i32>
  %i.bas = sub nsw i64 %i.em, %index826
  %i.bat = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.bas ; 2 uses
  %i.bau = getelementptr inbounds i8, ptr %i.bat, i64 -6
  %i.bav = getelementptr inbounds i8, ptr %i.bat, i64 -14
  %wide.load830 = load <4 x i16>, ptr %i.bau, align 2, !tbaa !125
  %wide.load831 = load <4 x i16>, ptr %i.bav, align 2, !tbaa !125
  %reverse = shufflevector <4 x i16> %wide.load830, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse832 = shufflevector <4 x i16> %wide.load831, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.baw = zext <4 x i16> %reverse to <4 x i32>
  %i.bax = zext <4 x i16> %reverse832 to <4 x i32>
  %i.bay = sub nsw <4 x i32> %i.baq, %i.baw
  %i.baz = sub nsw <4 x i32> %i.bar, %i.bax
  %9 = trunc <4 x i64> %vec.ind827 to <4 x i32>
  %10 = add <4 x i32> %9, splat (i32 1)
  %11 = trunc <4 x i64> %vec.ind827 to <4 x i32>
  %12 = add <4 x i32> %11, splat (i32 5)
  %i.bba = mul nsw <4 x i32> %i.bay, %10
  %i.bbb = mul nsw <4 x i32> %i.baz, %12
  %i.bbc = add <4 x i32> %i.bba, %vec.phi.a       ; 2 uses
  %i.bbd = add <4 x i32> %i.bbb, %vec.phi828      ; 2 uses
  %index.next833 = add nuw i64 %index826, 8       ; 2 uses
  %vec.ind.next834 = add nuw <4 x i64> %vec.ind827, splat (i64 8)
  %i.bbe = icmp eq i64 %index.next833, %n.vec824
  br i1 %i.bbe, label %middle.block835, label %vector.body825, !llvm.loop !258

middle.block835:                                  ; preds = %vector.body825
  %bin.rdx = add <4 x i32> %i.bbd, %i.bbc
  %i.bbf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n836, label %._crit_edge508.thread, label %.lr.ph507.preheader870

.lr.ph507.preheader870:                           ; preds = %.lr.ph507.preheader, %middle.block835
  %indvars.iv687.ph = phi i64 [ 0, %.lr.ph507.preheader ], [ %n.vec824, %middle.block835 ]
  %.0322505.ph = phi i32 [ %i.bam, %.lr.ph507.preheader ], [ %i.bbf, %middle.block835 ]
  br label %.lr.ph507

.lr.ph507:                                        ; preds = %.lr.ph507.preheader870, %.lr.ph507
  %indvars.iv687 = phi i64 [ %indvars.iv.next688, %.lr.ph507 ], [ %indvars.iv687.ph, %.lr.ph507.preheader870 ] ; 3 uses
  %.0322505 = phi i32 [ %i.bbp, %.lr.ph507 ], [ %.0322505.ph, %.lr.ph507.preheader870 ]
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 3 uses
  %gep803 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep802, i64 %indvars.iv687
  %i.bbg = load i16, ptr %gep803, align 2, !tbaa !125
  %i.bbh = zext i16 %i.bbg to i32
  %i.bbi = sub nsw i64 %i.em, %indvars.iv687
  %i.bbj = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.bbi
  %i.bbk = load i16, ptr %i.bbj, align 2, !tbaa !125
  %i.bbl = zext i16 %i.bbk to i32
  %i.bbm = sub nsw i32 %i.bbh, %i.bbl
  %i.bbn = trunc nuw nsw i64 %indvars.iv.next688 to i32
  %i.bbo = mul nsw i32 %i.bbm, %i.bbn
  %i.bbp = add nsw i32 %i.bbo, %.0322505          ; 2 uses
  %exitcond691.not = icmp eq i64 %indvars.iv.next688, %wide.trip.count690
  br i1 %exitcond691.not, label %._crit_edge508.thread, label %.lr.ph507, !llvm.loop !259

._crit_edge508.thread:                            ; preds = %.lr.ph507, %middle.block835
  %.lcssa812 = phi i32 [ %i.bbf, %middle.block835 ], [ %i.bbp, %.lr.ph507 ]
  %i.bbq = mul nsw i32 %.lcssa812, %i.eg
  %i.bbr = add nsw i32 %i.bbq, %i.eh
  %i.bbs = ashr i32 %i.bbr, %i.ei
  br label %.preheader448.lr.ph

._crit_edge508:                                   ; preds = %._crit_edge502
  %i.bbt = mul nsw i32 %i.bam, 5
  %i.bbu = add nsw i32 %i.bbt, %i.eh
  %i.bbv = ashr i32 %i.bbu, 6
  br i1 %i.dj, label %.thread410, label %.preheader448.lr.ph

.preheader448.lr.ph:                              ; preds = %._crit_edge508.thread, %._crit_edge508
  %i.bbw = phi i32 [ %i.bbs, %._crit_edge508.thread ], [ %i.bbv, %._crit_edge508 ]
  %.pn808 = mul nsw i32 %.0323.lcssa, %i.ec
  %.pn807 = add nsw i32 %.pn808, %i.ed
  %i.bbx = ashr i32 %.pn807, %i.ee                ; 2 uses
  %i.bby = add nuw nsw i32 %i.bak, %i.ayu
  %i.bbz = shl nuw nsw i32 %i.bby, 4
  %i.bca = load ptr, ptr @img, align 8            ; 2 uses
  %i.bcb = add nuw nsw i32 %i.bbz, 16
  %i.bcc = getelementptr inbounds nuw [2048 x i8], ptr %i.bca, i64 %indvars.iv704
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 10064
  br i1 %i.dk, label %.thread410, label %.preheader448.lr.ph.split

.preheader448.lr.ph.split:                        ; preds = %.preheader448.lr.ph
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bca, i64 15524
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !147 ; 2 uses
  %broadcast.splatinsert817 = insertelement <8 x i32> poison, i32 %i.bbx, i64 0
  %broadcast.splat818 = shufflevector <8 x i32> %broadcast.splatinsert817, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert819 = insertelement <8 x i32> poison, i32 %i.bcf, i64 0
  %broadcast.splat820 = shufflevector <8 x i32> %broadcast.splatinsert819, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader448

.preheader448:                                    ; preds = %.preheader448.lr.ph.split, %._crit_edge512
  %indvars.iv698 = phi i64 [ 0, %.preheader448.lr.ph.split ], [ %indvars.iv.next699, %._crit_edge512 ] ; 3 uses
  %i.bcg = trunc i64 %indvars.iv698 to i32
  %.reass.reass.reass.reass = add i32 %i.bcg, %invariant.op909
  %i.bch = mul nsw i32 %.reass.reass.reass.reass, %i.bbw
  %i.bci = add i32 %i.bcb, %i.bch                 ; 2 uses
  %i.bcj = getelementptr inbounds nuw [32 x i8], ptr %i.bcd, i64 %indvars.iv698 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader448
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.reass907 = add <8 x i32> %vec.ind, %invariant.op
  %i.bck = mul nsw <8 x i32> %.reass907, %broadcast.splat818
  %i.bcl = add <8 x i32> %broadcast.splat, %i.bck
  %i.bcm = ashr <8 x i32> %i.bcl, splat (i32 5)
  %i.bcn = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bcm, <8 x i32> zeroinitializer)
  %i.bco = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bcn, <8 x i32> %broadcast.splat820)
  %i.bcp = trunc <8 x i32> %i.bco to <8 x i16>
  %i.bcq = getelementptr inbounds nuw [2 x i8], ptr %i.bcj, i64 %index
  store <8 x i16> %i.bcp, ptr %i.bcq, align 2, !tbaa !125
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bcr = icmp eq i64 %index.next, %n.vec
  br i1 %i.bcr, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge512, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader448, %middle.block
  %indvars.iv692.ph = phi i64 [ 0, %.preheader448 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %scalar.ph ], [ %indvars.iv692.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bcs = trunc i64 %indvars.iv692 to i32
  %.reass.reass = add i32 %i.bcs, %invariant.op908
  %i.bct = mul nsw i32 %.reass.reass, %i.bbx
  %i.bcu = add i32 %i.bci, %i.bct
  %i.bcv = ashr i32 %i.bcu, 5
  %i.bcw = call noundef i32 @llvm.smax.i32(i32 %i.bcv, i32 0)
  %i.bcx = call noundef i32 @llvm.smin.i32(i32 %i.bcw, i32 %i.bcf)
  %i.bcy = trunc i32 %i.bcx to i16
  %i.bcz = getelementptr inbounds nuw [2 x i8], ptr %i.bcj, i64 %indvars.iv692
  store i16 %i.bcy, ptr %i.bcz, align 2, !tbaa !125
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %exitcond697.not = icmp eq i64 %indvars.iv.next693, %wide.trip.count696
  br i1 %exitcond697.not, label %._crit_edge512, label %scalar.ph, !llvm.loop !261

._crit_edge512:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next699, %wide.trip.count702
  br i1 %exitcond703.not, label %.thread410, label %.preheader448, !llvm.loop !262

.thread410:                                       ; preds = %._crit_edge512, %.loopexit453.thread792, %.loopexit453.thread, %._crit_edge508, %.preheader448.lr.ph, %.loopexit453, %._crit_edge497.split
  br i1 %i.er, label %bb.v, label %bb.cd, !llvm.loop !263

bb.cd:                                            ; preds = %.thread410
  %i.bda = load ptr, ptr @input, align 8, !tbaa !11
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 4168
  %i.bdc = load i32, ptr %i.bdb, align 8, !tbaa !271
  %.not367 = icmp eq i32 %i.bdc, 0
  br i1 %.not367, label %.preheader435, label %bb.co

.preheader435:                                    ; preds = %bb.cd
  br i1 %i.dj, label %.preheader434, label %.lr.ph517.preheader

.lr.ph517.preheader:                              ; preds = %.preheader435
  %wide.trip.count710 = zext nneg i32 %i.m to i64
  br label %.lr.ph517

.preheader434:                                    ; preds = %.lr.ph517, %.preheader435
  %or.cond27 = select i1 %or.cond8, i1 %i.cy, i1 false
  %or.cond29 = select i1 %or.cond27, i1 %i.dl, i1 false
  %brmerge = select i1 %i.dj, i1 true, i1 %i.dk
  br label %bb.ce

.lr.ph517:                                        ; preds = %.lr.ph517.preheader, %.lr.ph517
  %indvars.iv707 = phi i64 [ 0, %.lr.ph517.preheader ], [ %indvars.iv.next708, %.lr.ph517 ] ; 3 uses
  %i.bdd = load ptr, ptr @getNeighbour, align 8, !tbaa !11
  %i.bde = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv707
  %i.bdf = trunc nuw nsw i64 %indvars.iv707 to i32
  call void %i.bdd(i32 noundef %i.g, i32 noundef 0, i32 noundef %i.bdf, i32 noundef 1, ptr noundef nonnull %i.bde) #17
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count710
  br i1 %exitcond711.not, label %.preheader434, label %.lr.ph517, !llvm.loop !264

bb.ce:                                            ; preds = %.preheader434, %bb.cm
  %indvars.iv754 = phi i64 [ 0, %.preheader434 ], [ %indvars.iv.next755, %bb.cm ] ; 7 uses
  %.0314541 = phi i32 [ 2147483647, %.preheader434 ], [ %.1, %bb.cm ] ; 6 uses
  %.0317540 = phi i32 [ 0, %.preheader434 ], [ %.1318, %bb.cm ] ; 5 uses
  %i.bdg = load ptr, ptr @img, align 8, !tbaa !11
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 20
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !54
  %.not368 = icmp eq i32 %i.bdi, 2
  %.pre = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  br i1 %.not368, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.bdj = getelementptr inbounds nuw i8, ptr %.pre, i64 4048
  %i.bdk = load i32, ptr %i.bdj, align 8, !tbaa !155
  %.not369 = icmp eq i32 %i.bdk, 0
  br i1 %.not369, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.bdl = getelementptr inbounds nuw i8, ptr %.pre, i64 4072
  %i.bdm = load i32, ptr %i.bdl, align 8, !tbaa !272
  %i.bdn = icmp ne i32 %i.bdm, 1
  %i.bdo = icmp eq i64 %indvars.iv754, 0
  %or.cond17.not544 = or i1 %i.bdo, %i.bdn
  %i.bdp = icmp ne i64 %indvars.iv754, 2
  %or.cond19 = select i1 %i.bdp, i1 true, i1 %i.cy
  %or.cond = select i1 %or.cond17.not544, i1 %or.cond19, i1 false
  br i1 %or.cond, label %bb.ci, label %bb.cm

bb.ch:                                            ; preds = %bb.cf
  %.old = icmp ne i64 %indvars.iv754, 2
  %or.cond19.old = select i1 %.old, i1 true, i1 %i.cy
  br i1 %or.cond19.old, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.bdq = trunc nuw nsw i64 %indvars.iv754 to i32 ; 2 uses
  switch i32 %i.bdq, label %bb.cl [
    i32 1, label %bb.cj
    i32 3, label %bb.ck
  ]

bb.cj:                                            ; preds = %bb.ci
  br i1 %or.cond8, label %bb.cl, label %bb.cm
end_hunk_0
