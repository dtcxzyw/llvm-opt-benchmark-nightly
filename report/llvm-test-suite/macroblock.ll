Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/macroblock?download=true
inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 104
begin_hunk_0_@IntraChromaPrediction:bb.a
  %i.awm = load ptr, ptr @img, align 8, !tbaa !141
  %i.awn = getelementptr inbounds nuw [2048 x i8], ptr %i.awm, i64 %indvars.iv704
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 9552
  %i.awp = getelementptr inbounds nuw [32 x i8], ptr %i.awo, i64 %indvars.iv662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awp, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  %i.awq = load ptr, ptr @img, align 8, !tbaa !141
  %i.awr = getelementptr inbounds nuw [2048 x i8], ptr %i.awq, i64 %indvars.iv704
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 9584
  %i.awt = getelementptr inbounds nuw [32 x i8], ptr %i.aws, i64 %indvars.iv662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awt, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  %indvars.iv.next663.1 = add nuw nsw i64 %indvars.iv662, 2 ; 2 uses
  %niter907.next.1 = add i64 %niter907, 2         ; 2 uses
  %niter907.ncmp.1 = icmp eq i64 %niter907.next.1, %unroll_iter906
  br i1 %niter907.ncmp.1, label %.loopexit453.thread813.unr-lcssa, label %.lr.ph490, !llvm.loop !398

.loopexit453:                                     ; preds = %._crit_edge487
  br i1 %or.cond8, label %.preheader452, label %.thread410

.loopexit453.thread813.unr-lcssa:                 ; preds = %.lr.ph490
  br i1 %lcmp.mod904.not, label %.loopexit453.thread813, label %.lr.ph490.epil.preheader

.lr.ph490.epil.preheader:                         ; preds = %.loopexit453.thread813.unr-lcssa, %.lr.ph490.preheader
  %indvars.iv662.epil.init = phi i64 [ 0, %.lr.ph490.preheader ], [ %indvars.iv.next663.1, %.loopexit453.thread813.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod905)
  %i.awu = load ptr, ptr @img, align 8, !tbaa !141
  %i.awv = getelementptr inbounds nuw [2048 x i8], ptr %i.awu, i64 %indvars.iv704
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 9552
  %i.awx = getelementptr inbounds nuw [32 x i8], ptr %i.aww, i64 %indvars.iv662.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awx, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  br label %.loopexit453.thread813

.loopexit453.thread813:                           ; preds = %.loopexit453.thread813.unr-lcssa, %.lr.ph490.epil.preheader
  %.pre = load ptr, ptr @enc_picture, align 8, !tbaa !200 ; 2 uses
  br i1 %or.cond8, label %.lr.ph492.preheader, label %.thread410

.loopexit453.thread:                              ; preds = %bb.ca
  br i1 %or.cond8, label %.preheader451, label %.thread410

.preheader452:                                    ; preds = %.loopexit453
  br i1 %i.dj, label %.preheader451, label %.lr.ph492.preheader

.lr.ph492.preheader:                              ; preds = %.loopexit453.thread813, %.preheader452
  %i.awy = phi ptr [ %i.er, %.preheader452 ], [ %.pre, %.loopexit453.thread813 ] ; 2 uses
  br i1 %i.ep, label %.lr.ph492.epil.preheader, label %.lr.ph492

.preheader451:                                    ; preds = %.loopexit453.thread, %.preheader452
  br i1 %brmerge882, label %._crit_edge497.split, label %.preheader449.preheader

.preheader451.thread.unr-lcssa:                   ; preds = %.lr.ph492
  br i1 %lcmp.mod909.not, label %.preheader451.thread, label %.lr.ph492.epil.preheader

.lr.ph492.epil.preheader:                         ; preds = %.preheader451.thread.unr-lcssa, %.lr.ph492.preheader
  %indvars.iv667.epil.init = phi i64 [ 0, %.lr.ph492.preheader ], [ %indvars.iv.next668.1, %.preheader451.thread.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod910)
  %i.awz = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv667.epil.init ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 44
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !282
  %i.axc = sext i32 %i.axb to i64
  %i.axd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.axc
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !241
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awz, i64 40
  %i.axg = load i32, ptr %i.axf, align 8, !tbaa !283
  %i.axh = sext i32 %i.axg to i64
  %i.axi = getelementptr inbounds [2 x i8], ptr %i.axe, i64 %i.axh
  %i.axj = load i16, ptr %i.axi, align 2, !tbaa !255
  %i.axk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv667.epil.init
  store i16 %i.axj, ptr %i.axk, align 2, !tbaa !255
  br label %.preheader451.thread

.preheader451.thread:                             ; preds = %.preheader451.thread.unr-lcssa, %.lr.ph492.epil.preheader
  br i1 %i.dk, label %._crit_edge497.split, label %.preheader449.preheader

.preheader449.preheader:                          ; preds = %.preheader451, %.preheader451.thread
  %i.axl = phi ptr [ %i.er, %.preheader451 ], [ %i.awy, %.preheader451.thread ]
  %.pn827 = load ptr, ptr @img, align 8
  %.pn = getelementptr inbounds nuw [2048 x i8], ptr %.pn827, i64 %indvars.iv704
  %i.axm = getelementptr inbounds nuw i8, ptr %.pn, i64 9040
  br label %.preheader449

.lr.ph492:                                        ; preds = %.lr.ph492.preheader, %.lr.ph492
  %indvars.iv667 = phi i64 [ %indvars.iv.next668.1, %.lr.ph492 ], [ 0, %.lr.ph492.preheader ] ; 3 uses
  %niter912 = phi i64 [ %niter912.next.1, %.lr.ph492 ], [ 0, %.lr.ph492.preheader ]
  %indvars.iv.next668 = or disjoint i64 %indvars.iv667, 1 ; 2 uses
  %i.axn = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next668 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 20
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !282
  %i.axq = sext i32 %i.axp to i64
  %i.axr = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.axq
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !241
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axn, i64 16
  %i.axu = load i32, ptr %i.axt, align 8, !tbaa !283
  %i.axv = sext i32 %i.axu to i64
  %i.axw = getelementptr inbounds [2 x i8], ptr %i.axs, i64 %i.axv
  %i.axx = load i16, ptr %i.axw, align 2, !tbaa !255
  %i.axy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv667
  store i16 %i.axx, ptr %i.axy, align 4, !tbaa !255
  %indvars.iv.next668.1 = add nuw nsw i64 %indvars.iv667, 2 ; 3 uses
  %i.axz = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next668.1 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 20
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !282
  %i.ayc = sext i32 %i.ayb to i64
  %i.ayd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ayc
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !241
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axz, i64 16
  %i.ayg = load i32, ptr %i.ayf, align 16, !tbaa !283
  %i.ayh = sext i32 %i.ayg to i64
  %i.ayi = getelementptr inbounds [2 x i8], ptr %i.aye, i64 %i.ayh
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !255
  %i.ayk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next668
  store i16 %i.ayj, ptr %i.ayk, align 2, !tbaa !255
  %niter912.next.1 = add nuw i64 %niter912, 2     ; 2 uses
  %niter912.ncmp.1 = icmp eq i64 %niter912.next.1, %unroll_iter911
  br i1 %niter912.ncmp.1, label %.preheader451.thread.unr-lcssa, label %.lr.ph492, !llvm.loop !399

.preheader449:                                    ; preds = %.preheader449.preheader, %._crit_edge495
  %indvars.iv677 = phi i64 [ 0, %.preheader449.preheader ], [ %indvars.iv.next678, %._crit_edge495 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.axm, i64 %indvars.iv677 ; 5 uses
  br i1 %i.eq, label %.epil.preheader913, label %.preheader449.new

.preheader449.new:                                ; preds = %.preheader449, %.preheader449.new
  %indvars.iv672 = phi i64 [ %indvars.iv.next673.3, %.preheader449.new ], [ 0, %.preheader449 ] ; 6 uses
  %niter918 = phi i64 [ %niter918.next.3, %.preheader449.new ], [ 0, %.preheader449 ]
  %i.ayl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv672
  %i.aym = load i16, ptr %i.ayl, align 8, !tbaa !255
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv672
  store i16 %i.aym, ptr %gep, align 2, !tbaa !255
  %indvars.iv.next673 = or disjoint i64 %indvars.iv672, 1 ; 2 uses
  %i.ayn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673
  %i.ayo = load i16, ptr %i.ayn, align 2, !tbaa !255
  %gep.1 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673
  store i16 %i.ayo, ptr %gep.1, align 2, !tbaa !255
  %indvars.iv.next673.1 = or disjoint i64 %indvars.iv672, 2 ; 2 uses
  %i.ayp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673.1
  %i.ayq = load i16, ptr %i.ayp, align 4, !tbaa !255
  %gep.2 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673.1
  store i16 %i.ayq, ptr %gep.2, align 2, !tbaa !255
  %indvars.iv.next673.2 = or disjoint i64 %indvars.iv672, 3 ; 2 uses
  %i.ayr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673.2
  %i.ays = load i16, ptr %i.ayr, align 2, !tbaa !255
  %gep.3 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673.2
  store i16 %i.ays, ptr %gep.3, align 2, !tbaa !255
  %indvars.iv.next673.3 = add nuw nsw i64 %indvars.iv672, 4 ; 2 uses
  %niter918.next.3 = add i64 %niter918, 4         ; 2 uses
  %niter918.ncmp.3 = icmp eq i64 %niter918.next.3, %unroll_iter917
  br i1 %niter918.ncmp.3, label %._crit_edge495.unr-lcssa, label %.preheader449.new, !llvm.loop !400

._crit_edge495.unr-lcssa:                         ; preds = %.preheader449.new
  br i1 %lcmp.mod915.not, label %._crit_edge495, label %.epil.preheader913

.epil.preheader913:                               ; preds = %._crit_edge495.unr-lcssa, %.preheader449
  %indvars.iv672.epil.init = phi i64 [ 0, %.preheader449 ], [ %indvars.iv.next673.3, %._crit_edge495.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod916)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.epil.preheader913
  %indvars.iv672.epil = phi i64 [ %indvars.iv672.epil.init, %.epil.preheader913 ], [ %indvars.iv.next673.epil, %bb.cb ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader913 ], [ %epil.iter.next, %bb.cb ]
  %i.ayt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv672.epil
  %i.ayu = load i16, ptr %i.ayt, align 2, !tbaa !255
  %gep.epil = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv672.epil
  store i16 %i.ayu, ptr %gep.epil, align 2, !tbaa !255
  %indvars.iv.next673.epil = add nuw nsw i64 %indvars.iv672.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter914
  br i1 %epil.iter.cmp.not, label %._crit_edge495, label %bb.cb, !llvm.loop !401

._crit_edge495:                                   ; preds = %bb.cb, %._crit_edge495.unr-lcssa
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge497.split, label %.preheader449, !llvm.loop !402

._crit_edge497.split:                             ; preds = %._crit_edge495, %.preheader451, %.preheader451.thread
  %i.ayv = phi ptr [ %i.awy, %.preheader451.thread ], [ %i.er, %.preheader451 ], [ %i.axl, %._crit_edge495 ] ; 4 uses
  br i1 %or.cond15, label %bb.cc, label %.thread410

bb.cc:                                            ; preds = %._crit_edge497.split
  %i.ayw = load i16, ptr %i.do, align 2, !tbaa !255
  %i.ayx = zext i16 %i.ayw to i32                 ; 2 uses
  %i.ayy = load i32, ptr %i.dp, align 4, !tbaa !282
  %i.ayz = sext i32 %i.ayy to i64
  %i.aza = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ayz
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !241
  %i.azc = load i32, ptr %i.dq, align 16, !tbaa !283
  %i.azd = sext i32 %i.azc to i64
  %i.aze = getelementptr inbounds [2 x i8], ptr %i.azb, i64 %i.azd
  %i.azf = load i16, ptr %i.aze, align 2, !tbaa !255
  %i.azg = zext i16 %i.azf to i32                 ; 2 uses
  %i.azh = sub nsw i32 %i.ayx, %i.azg
  %i.azi = mul nsw i32 %i.azh, %i.dm              ; 3 uses
  br i1 %i.ds, label %.lr.ph501.preheader, label %._crit_edge502

.lr.ph501.preheader:                              ; preds = %bb.cc
  br i1 %min.iters.check860, label %.lr.ph501.preheader892, label %vector.ph861

vector.ph861:                                     ; preds = %.lr.ph501.preheader
  %i.azj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.azi, i64 0
  br label %vector.body863

vector.body863:                                   ; preds = %vector.body863, %vector.ph861
  %index864 = phi i64 [ 0, %vector.ph861 ], [ %index.next875, %vector.body863 ] ; 3 uses
  %vec.phi865 = phi <4 x i32> [ %i.azj, %vector.ph861 ], [ %i.azy, %vector.body863 ]
  %vec.phi866 = phi <4 x i32> [ zeroinitializer, %vector.ph861 ], [ %i.azz, %vector.body863 ]
  %vec.phi867 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph861 ], [ %vec.ind.next876, %vector.body863 ] ; 3 uses
  %step.add868 = add <4 x i32> %vec.phi867, splat (i32 4)
  %i.azk = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep821, i64 %index864 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 8
  %wide.load869 = load <4 x i16>, ptr %i.azk, align 2, !tbaa !255
  %wide.load870 = load <4 x i16>, ptr %i.azl, align 2, !tbaa !255
  %i.azm = zext <4 x i16> %wide.load869 to <4 x i32>
  %i.azn = zext <4 x i16> %wide.load870 to <4 x i32>
  %i.azo = sub nsw i64 %i.ek, %index864
  %i.azp = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.azo ; 2 uses
  %i.azq = getelementptr inbounds i8, ptr %i.azp, i64 -6
  %i.azr = getelementptr inbounds i8, ptr %i.azp, i64 -14
  %wide.load871 = load <4 x i16>, ptr %i.azq, align 2, !tbaa !255
  %wide.load872 = load <4 x i16>, ptr %i.azr, align 2, !tbaa !255
  %reverse873 = shufflevector <4 x i16> %wide.load871, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse874 = shufflevector <4 x i16> %wide.load872, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.azs = zext <4 x i16> %reverse873 to <4 x i32>
  %i.azt = zext <4 x i16> %reverse874 to <4 x i32>
  %i.azu = sub nsw <4 x i32> %i.azm, %i.azs
  %i.azv = sub nsw <4 x i32> %i.azn, %i.azt
  %i.azw = mul nsw <4 x i32> %i.azu, %vec.phi867
  %i.azx = mul nsw <4 x i32> %i.azv, %step.add868
  %i.azy = add <4 x i32> %i.azw, %vec.phi865      ; 2 uses
  %i.azz = add <4 x i32> %i.azx, %vec.phi866      ; 2 uses
  %index.next875 = add nuw i64 %index864, 8       ; 2 uses
  %vec.ind.next876 = add <4 x i32> %vec.phi867, splat (i32 8)
  %i.baa = icmp eq i64 %index.next875, %n.vec862
  br i1 %i.baa, label %middle.block877, label %vector.body863, !llvm.loop !403

middle.block877:                                  ; preds = %vector.body863
  %bin.rdx878 = add <4 x i32> %i.azz, %i.azy
  %i.bab = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx878) ; 2 uses
  br i1 %cmp.n879, label %._crit_edge502, label %.lr.ph501.preheader892

.lr.ph501.preheader892:                           ; preds = %.lr.ph501.preheader, %middle.block877
  %indvars.iv682.ph = phi i64 [ 0, %.lr.ph501.preheader ], [ %n.vec862, %middle.block877 ]
  %.0323499.ph = phi i32 [ %i.azi, %.lr.ph501.preheader ], [ %i.bab, %middle.block877 ]
  br label %.lr.ph501

.lr.ph501:                                        ; preds = %.lr.ph501.preheader892, %.lr.ph501
  %indvars.iv682 = phi i64 [ %indvars.iv.next683, %.lr.ph501 ], [ %indvars.iv682.ph, %.lr.ph501.preheader892 ] ; 3 uses
  %.0323499 = phi i32 [ %i.bal, %.lr.ph501 ], [ %.0323499.ph, %.lr.ph501.preheader892 ]
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 3 uses
  %gep822 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep821, i64 %indvars.iv682
  %i.bac = load i16, ptr %gep822, align 2, !tbaa !255
  %i.bad = zext i16 %i.bac to i32
  %i.bae = sub nsw i64 %i.ek, %indvars.iv682
  %i.baf = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bae
  %i.bag = load i16, ptr %i.baf, align 2, !tbaa !255
  %i.bah = zext i16 %i.bag to i32
  %i.bai = sub nsw i32 %i.bad, %i.bah
  %i.baj = trunc nuw nsw i64 %indvars.iv.next683 to i32
  %i.bak = mul nsw i32 %i.bai, %i.baj
  %i.bal = add nsw i32 %i.bak, %.0323499          ; 2 uses
  %exitcond686.not = icmp eq i64 %indvars.iv.next683, %wide.trip.count685
  br i1 %exitcond686.not, label %._crit_edge502, label %.lr.ph501, !llvm.loop !404

._crit_edge502:                                   ; preds = %.lr.ph501, %middle.block877, %bb.cc
  %.0323.lcssa = phi i32 [ %i.azi, %bb.cc ], [ %i.bab, %middle.block877 ], [ %i.bal, %.lr.ph501 ]
  %i.bam = load i16, ptr %i.dx, align 2, !tbaa !255
  %i.ban = zext i16 %i.bam to i32                 ; 2 uses
  %i.bao = sub nsw i32 %i.ban, %i.azg
  %i.bap = mul nsw i32 %i.bao, %i.du              ; 3 uses
  br i1 %i.dz, label %.lr.ph507.preheader, label %._crit_edge508

.lr.ph507.preheader:                              ; preds = %._crit_edge502
  br i1 %min.iters.check843, label %.lr.ph507.preheader891, label %vector.ph844

vector.ph844:                                     ; preds = %.lr.ph507.preheader
  %i.baq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bap, i64 0
  br label %vector.body846

vector.body846:                                   ; preds = %vector.body846, %vector.ph844
  %index847 = phi i64 [ 0, %vector.ph844 ], [ %index.next854, %vector.body846 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.baq, %vector.ph844 ], [ %i.bbf, %vector.body846 ]
  %vec.phi.a = phi <4 x i32> [ zeroinitializer, %vector.ph844 ], [ %i.bbg, %vector.body846 ]
  %vec.phi849 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph844 ], [ %vec.ind.next855, %vector.body846 ] ; 3 uses
  %step.add = add <4 x i32> %vec.phi849, splat (i32 4)
  %i.bar = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep823, i64 %index847 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 8
  %wide.load = load <4 x i16>, ptr %i.bar, align 2, !tbaa !255
  %wide.load850 = load <4 x i16>, ptr %i.bas, align 2, !tbaa !255
  %i.bat = zext <4 x i16> %wide.load to <4 x i32>
  %i.bau = zext <4 x i16> %wide.load850 to <4 x i32>
  %i.bav = sub nsw i64 %i.em, %index847
  %i.baw = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.bav ; 2 uses
  %i.bax = getelementptr inbounds i8, ptr %i.baw, i64 -6
  %i.bay = getelementptr inbounds i8, ptr %i.baw, i64 -14
  %wide.load851 = load <4 x i16>, ptr %i.bax, align 2, !tbaa !255
  %wide.load852 = load <4 x i16>, ptr %i.bay, align 2, !tbaa !255
  %reverse = shufflevector <4 x i16> %wide.load851, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse853 = shufflevector <4 x i16> %wide.load852, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.baz = zext <4 x i16> %reverse to <4 x i32>
  %i.bba = zext <4 x i16> %reverse853 to <4 x i32>
  %i.bbb = sub nsw <4 x i32> %i.bat, %i.baz
  %i.bbc = sub nsw <4 x i32> %i.bau, %i.bba
  %i.bbd = mul nsw <4 x i32> %i.bbb, %vec.phi849
  %i.bbe = mul nsw <4 x i32> %i.bbc, %step.add
  %i.bbf = add <4 x i32> %i.bbd, %vec.phi         ; 2 uses
  %i.bbg = add <4 x i32> %i.bbe, %vec.phi.a       ; 2 uses
  %index.next854 = add nuw i64 %index847, 8       ; 2 uses
  %vec.ind.next855 = add <4 x i32> %vec.phi849, splat (i32 8)
  %i.bbh = icmp eq i64 %index.next854, %n.vec845
  br i1 %i.bbh, label %middle.block856, label %vector.body846, !llvm.loop !405

middle.block856:                                  ; preds = %vector.body846
  %bin.rdx = add <4 x i32> %i.bbg, %i.bbf
  %i.bbi = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n857, label %._crit_edge508.thread, label %.lr.ph507.preheader891

.lr.ph507.preheader891:                           ; preds = %.lr.ph507.preheader, %middle.block856
  %indvars.iv687.ph = phi i64 [ 0, %.lr.ph507.preheader ], [ %n.vec845, %middle.block856 ]
  %.0322505.ph = phi i32 [ %i.bap, %.lr.ph507.preheader ], [ %i.bbi, %middle.block856 ]
  br label %.lr.ph507

.lr.ph507:                                        ; preds = %.lr.ph507.preheader891, %.lr.ph507
  %indvars.iv687 = phi i64 [ %indvars.iv.next688, %.lr.ph507 ], [ %indvars.iv687.ph, %.lr.ph507.preheader891 ] ; 3 uses
  %.0322505 = phi i32 [ %i.bbs, %.lr.ph507 ], [ %.0322505.ph, %.lr.ph507.preheader891 ]
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 3 uses
  %gep824 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep823, i64 %indvars.iv687
  %i.bbj = load i16, ptr %gep824, align 2, !tbaa !255
  %i.bbk = zext i16 %i.bbj to i32
  %i.bbl = sub nsw i64 %i.em, %indvars.iv687
  %i.bbm = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.bbl
  %i.bbn = load i16, ptr %i.bbm, align 2, !tbaa !255
  %i.bbo = zext i16 %i.bbn to i32
  %i.bbp = sub nsw i32 %i.bbk, %i.bbo
  %i.bbq = trunc nuw nsw i64 %indvars.iv.next688 to i32
  %i.bbr = mul nsw i32 %i.bbp, %i.bbq
  %i.bbs = add nsw i32 %i.bbr, %.0322505          ; 2 uses
  %exitcond691.not = icmp eq i64 %indvars.iv.next688, %wide.trip.count690
  br i1 %exitcond691.not, label %._crit_edge508.thread, label %.lr.ph507, !llvm.loop !406

._crit_edge508.thread:                            ; preds = %.lr.ph507, %middle.block856
  %.lcssa833 = phi i32 [ %i.bbi, %middle.block856 ], [ %i.bbs, %.lr.ph507 ]
  %i.bbt = mul nsw i32 %.lcssa833, %i.eg
  %i.bbu = add nsw i32 %i.bbt, %i.eh
  %i.bbv = ashr i32 %i.bbu, %i.ei
  br label %.preheader448.lr.ph

._crit_edge508:                                   ; preds = %._crit_edge502
  %i.bbw = mul nsw i32 %i.bap, 5
  %i.bbx = add nsw i32 %i.bbw, %i.eh
  %i.bby = ashr i32 %i.bbx, 6
  br i1 %i.dj, label %.thread410, label %.preheader448.lr.ph

.preheader448.lr.ph:                              ; preds = %._crit_edge508.thread, %._crit_edge508
  %i.bbz = phi i32 [ %i.bbv, %._crit_edge508.thread ], [ %i.bby, %._crit_edge508 ]
  %.pn829 = mul nsw i32 %.0323.lcssa, %i.ec
  %.pn828 = add nsw i32 %.pn829, %i.ed
  %i.bca = ashr i32 %.pn828, %i.ee                ; 2 uses
  %i.bcb = add nuw nsw i32 %i.ban, %i.ayx
  %i.bcc = shl nuw nsw i32 %i.bcb, 4
  %i.bcd = load ptr, ptr @img, align 8            ; 2 uses
  %i.bce = add nuw nsw i32 %i.bcc, 16
  %i.bcf = getelementptr inbounds nuw [2048 x i8], ptr %i.bcd, i64 %indvars.iv704
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 10064
  br i1 %i.dk, label %.thread410, label %.preheader448.lr.ph.split

.preheader448.lr.ph.split:                        ; preds = %.preheader448.lr.ph
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcd, i64 15524
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !277 ; 2 uses
  %broadcast.splatinsert838 = insertelement <8 x i32> poison, i32 %i.bca, i64 0
  %broadcast.splat839 = shufflevector <8 x i32> %broadcast.splatinsert838, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert840 = insertelement <8 x i32> poison, i32 %i.bci, i64 0
  %broadcast.splat841 = shufflevector <8 x i32> %broadcast.splatinsert840, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader448

.preheader448:                                    ; preds = %.preheader448.lr.ph.split, %._crit_edge512
  %indvars.iv698 = phi i64 [ 0, %.preheader448.lr.ph.split ], [ %indvars.iv.next699, %._crit_edge512 ] ; 3 uses
  %i.bcj = trunc i64 %indvars.iv698 to i32
  %.reass.reass.reass.reass = add i32 %i.bcj, %invariant.op930
  %i.bck = mul nsw i32 %.reass.reass.reass.reass, %i.bbz
  %i.bcl = add i32 %i.bce, %i.bck                 ; 2 uses
  %i.bcm = getelementptr inbounds nuw [32 x i8], ptr %i.bcg, i64 %indvars.iv698 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader448
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bcl, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.reass928 = add <8 x i32> %vec.ind, %invariant.op
  %i.bcn = mul nsw <8 x i32> %.reass928, %broadcast.splat839
  %i.bco = add <8 x i32> %broadcast.splat, %i.bcn
  %i.bcp = ashr <8 x i32> %i.bco, splat (i32 5)
  %i.bcq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bcp, <8 x i32> zeroinitializer)
  %i.bcr = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bcq, <8 x i32> %broadcast.splat841)
  %i.bcs = trunc <8 x i32> %i.bcr to <8 x i16>
  %i.bct = getelementptr inbounds nuw [2 x i8], ptr %i.bcm, i64 %index
  store <8 x i16> %i.bcs, ptr %i.bct, align 2, !tbaa !255
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bcu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bcu, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge512, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader448, %middle.block
  %indvars.iv692.ph = phi i64 [ 0, %.preheader448 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %scalar.ph ], [ %indvars.iv692.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bcv = trunc i64 %indvars.iv692 to i32
  %.reass.reass = add i32 %i.bcv, %invariant.op929
  %i.bcw = mul nsw i32 %.reass.reass, %i.bca
  %i.bcx = add i32 %i.bcl, %i.bcw
  %i.bcy = ashr i32 %i.bcx, 5
  %i.bcz = call noundef i32 @llvm.smax.i32(i32 %i.bcy, i32 0)
  %i.bda = call noundef i32 @llvm.smin.i32(i32 %i.bcz, i32 %i.bci)
  %i.bdb = trunc i32 %i.bda to i16
  %i.bdc = getelementptr inbounds nuw [2 x i8], ptr %i.bcm, i64 %indvars.iv692
  store i16 %i.bdb, ptr %i.bdc, align 2, !tbaa !255
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %exitcond697.not = icmp eq i64 %indvars.iv.next693, %wide.trip.count696
  br i1 %exitcond697.not, label %._crit_edge512, label %scalar.ph, !llvm.loop !408

._crit_edge512:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next699, %wide.trip.count702
  br i1 %exitcond703.not, label %.thread410, label %.preheader448, !llvm.loop !409

.thread410:                                       ; preds = %._crit_edge512, %.loopexit453.thread813, %.loopexit453.thread, %._crit_edge508, %.preheader448.lr.ph, %.loopexit453, %._crit_edge497.split
  %i.bdd = phi ptr [ %i.er, %.loopexit453.thread ], [ %.pre, %.loopexit453.thread813 ], [ %i.ayv, %._crit_edge508 ], [ %i.ayv, %.preheader448.lr.ph ], [ %i.er, %.loopexit453 ], [ %i.ayv, %._crit_edge497.split ], [ %i.ayv, %._crit_edge512 ]
  br i1 %i.es, label %bb.v, label %bb.cd, !llvm.loop !410

bb.cd:                                            ; preds = %.thread410
  %i.bde = load ptr, ptr @input, align 8, !tbaa !141 ; 2 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 4168
  %i.bdg = load i32, ptr %i.bdf, align 8, !tbaa !419
  %.not367 = icmp eq i32 %i.bdg, 0
  br i1 %.not367, label %.preheader435, label %bb.co

.preheader435:                                    ; preds = %bb.cd
  br i1 %i.dj, label %.preheader434, label %.lr.ph517.preheader

.lr.ph517.preheader:                              ; preds = %.preheader435
  %wide.trip.count710 = zext nneg i32 %i.m to i64
  br label %.lr.ph517

.preheader434.loopexit:                           ; preds = %.lr.ph517
  %.pre774.pre775.pre = load ptr, ptr @input, align 8, !tbaa !141
  br label %.preheader434

.preheader434:                                    ; preds = %.preheader434.loopexit, %.preheader435
  %.pre774.pre775 = phi ptr [ %.pre774.pre775.pre, %.preheader434.loopexit ], [ %i.bde, %.preheader435 ]
  %or.cond27 = select i1 %or.cond8, i1 %i.cy, i1 false
  %or.cond29 = select i1 %or.cond27, i1 %i.dl, i1 false
  %.pre773 = load ptr, ptr @img, align 8, !tbaa !141
  %brmerge = select i1 %i.dj, i1 true, i1 %i.dk
  br label %bb.ce

.lr.ph517:                                        ; preds = %.lr.ph517.preheader, %.lr.ph517
  %indvars.iv707 = phi i64 [ 0, %.lr.ph517.preheader ], [ %indvars.iv.next708, %.lr.ph517 ] ; 3 uses
  %i.bdh = load ptr, ptr @getNeighbour, align 8, !tbaa !141
  %i.bdi = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv707
  %i.bdj = trunc nuw nsw i64 %indvars.iv707 to i32
  call void %i.bdh(i32 noundef %i.g, i32 noundef 0, i32 noundef %i.bdj, i32 noundef 1, ptr noundef nonnull %i.bdi) #17
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count710
  br i1 %exitcond711.not, label %.preheader434.loopexit, label %.lr.ph517, !llvm.loop !411

bb.ce:                                            ; preds = %.preheader434, %bb.cm
  %.pre774 = phi ptr [ %.pre774.pre775, %.preheader434 ], [ %.pre774776, %bb.cm ] ; 7 uses
  %i.bdk = phi ptr [ %.pre773, %.preheader434 ], [ %i.bke, %bb.cm ] ; 6 uses
  %indvars.iv755 = phi i64 [ 0, %.preheader434 ], [ %indvars.iv.next756, %bb.cm ] ; 7 uses
  %.0314541 = phi i32 [ 2147483647, %.preheader434 ], [ %.1, %bb.cm ] ; 6 uses
  %.0317540 = phi i32 [ 0, %.preheader434 ], [ %.1318, %bb.cm ] ; 5 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 20
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !184
  %.not368 = icmp eq i32 %i.bdm, 2
  br i1 %.not368, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.bdn = getelementptr inbounds nuw i8, ptr %.pre774, i64 4048
  %i.bdo = load i32, ptr %i.bdn, align 8, !tbaa !285
  %.not369 = icmp eq i32 %i.bdo, 0
  br i1 %.not369, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.bdp = getelementptr inbounds nuw i8, ptr %.pre774, i64 4072
  %i.bdq = load i32, ptr %i.bdp, align 8, !tbaa !420
  %i.bdr = icmp ne i32 %i.bdq, 1
  %i.bds = icmp eq i64 %indvars.iv755, 0
  %or.cond17.not544 = or i1 %i.bds, %i.bdr
  %i.bdt = icmp ne i64 %indvars.iv755, 2
  %or.cond19 = select i1 %i.bdt, i1 true, i1 %i.cy
  %or.cond = select i1 %or.cond17.not544, i1 %or.cond19, i1 false
  br i1 %or.cond, label %bb.ci, label %bb.cm

bb.ch:                                            ; preds = %bb.cf
  %.old = icmp ne i64 %indvars.iv755, 2
  %or.cond19.old = select i1 %.old, i1 true, i1 %i.cy
  br i1 %or.cond19.old, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.bdu = trunc nuw nsw i64 %indvars.iv755 to i32 ; 2 uses
end_hunk_0
