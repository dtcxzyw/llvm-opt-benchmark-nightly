Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_direct?download=true
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@sgemm_direct:bb.a
  %i.ayg = shufflevector <4 x float> %i.ayf, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ayh = mul nsw i64 %indvars.iv1866.epil, %6
  %gep1594.us.epil = getelementptr [4 x i8], ptr %invariant.gep1593.us, i64 %i.ayh ; 2 uses
  %i.ayi = load <16 x float>, ptr %gep1594.us.epil, align 1, !tbaa !8
  %i.ayj = getelementptr i8, ptr %gep1594.us.epil, i64 64
  %i.ayk = load <16 x float>, ptr %i.ayj, align 1, !tbaa !8
  %i.ayl = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayg, <16 x float> %i.ayi, <16 x float> %.011881586.us.epil) ; 2 uses
  %i.aym = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayg, <16 x float> %i.ayk, <16 x float> %.011871587.us.epil) ; 2 uses
  %indvars.iv.next1867.epil = add nuw nsw i64 %indvars.iv1866.epil, 1
  %epil.iter2381.next = add i64 %epil.iter2381, 1 ; 2 uses
  %epil.iter2381.cmp.not = icmp eq i64 %epil.iter2381.next, %xtraiter2380
  br i1 %epil.iter2381.cmp.not, label %._crit_edge1590.us, label %bb.h, !llvm.loop !51

._crit_edge1590.us:                               ; preds = %bb.h, %._crit_edge1590.us.unr-lcssa
  %.lcssa2147 = phi <16 x float> [ %i.ayb, %._crit_edge1590.us.unr-lcssa ], [ %i.ayl, %bb.h ]
  %.lcssa2146 = phi <16 x float> [ %i.ayc, %._crit_edge1590.us.unr-lcssa ], [ %i.aym, %bb.h ]
  %i.ayn = getelementptr [4 x i8], ptr %i.awg, i64 %indvars.iv1870 ; 2 uses
  store <16 x float> %.lcssa2147, ptr %i.ayn, align 1, !tbaa !8
  %i.ayo = getelementptr i8, ptr %i.ayn, i64 64
  store <16 x float> %.lcssa2146, ptr %i.ayo, align 1, !tbaa !8
  %indvars.iv.next1871 = add nuw nsw i64 %indvars.iv1870, 32 ; 3 uses
  %i.ayp = icmp slt i64 %indvars.iv.next1871, %i.aau
  br i1 %i.ayp, label %.preheader1291.us, label %.preheader1297.loopexit, !llvm.loop !52

.preheader1292:                                   ; preds = %.preheader1292.lr.ph, %._crit_edge1577
  %indvars.iv1860 = phi i64 [ 0, %.preheader1292.lr.ph ], [ %indvars.iv.next1861, %._crit_edge1577 ] ; 3 uses
  br i1 %i.aas, label %.lr.ph1576, label %._crit_edge1577

.lr.ph1576:                                       ; preds = %.preheader1292
  %invariant.gep1582 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1860 ; 5 uses
  br i1 %i.aaw, label %.epil.preheader2368, label %.lr.ph1576.new

.lr.ph1576.new:                                   ; preds = %.lr.ph1576, %.lr.ph1576.new
  %indvars.iv1856 = phi i64 [ %indvars.iv.next1857.3, %.lr.ph1576.new ], [ 0, %.lr.ph1576 ] ; 6 uses
  %.011941574 = phi <16 x float> [ %i.bbb, %.lr.ph1576.new ], [ zeroinitializer, %.lr.ph1576 ]
  %.011951573 = phi <16 x float> [ %i.bba, %.lr.ph1576.new ], [ zeroinitializer, %.lr.ph1576 ]
  %.011961572 = phi <16 x float> [ %i.baz, %.lr.ph1576.new ], [ zeroinitializer, %.lr.ph1576 ]
  %.011971571 = phi <16 x float> [ %i.bay, %.lr.ph1576.new ], [ zeroinitializer, %.lr.ph1576 ]
  %niter2378 = phi i64 [ %niter2378.next.3, %.lr.ph1576.new ], [ 0, %.lr.ph1576 ]
  %i.ayq = getelementptr [4 x i8], ptr %i.avy, i64 %indvars.iv1856
  %i.ayr = load float, ptr %i.ayq, align 1, !tbaa !8
  %i.ays = insertelement <4 x float> poison, float %i.ayr, i64 0
  %i.ayt = shufflevector <4 x float> %i.ays, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ayu = mul nsw i64 %indvars.iv1856, %6
  %gep1583 = getelementptr [4 x i8], ptr %invariant.gep1582, i64 %i.ayu ; 4 uses
  %i.ayv = load <16 x float>, ptr %gep1583, align 1, !tbaa !8
  %i.ayw = getelementptr i8, ptr %gep1583, i64 64
  %i.ayx = load <16 x float>, ptr %i.ayw, align 1, !tbaa !8
  %i.ayy = getelementptr i8, ptr %gep1583, i64 128
  %i.ayz = load <16 x float>, ptr %i.ayy, align 1, !tbaa !8
  %i.aza = getelementptr i8, ptr %gep1583, i64 192
  %i.azb = load <16 x float>, ptr %i.aza, align 1, !tbaa !8
  %i.azc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayt, <16 x float> %i.ayv, <16 x float> %.011971571)
  %i.azd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayt, <16 x float> %i.ayx, <16 x float> %.011961572)
  %i.aze = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayt, <16 x float> %i.ayz, <16 x float> %.011951573)
  %i.azf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayt, <16 x float> %i.azb, <16 x float> %.011941574)
  %indvars.iv.next1857 = or disjoint i64 %indvars.iv1856, 1 ; 2 uses
  %i.azg = getelementptr [4 x i8], ptr %i.avy, i64 %indvars.iv.next1857
  %i.azh = load float, ptr %i.azg, align 1, !tbaa !8
  %i.azi = insertelement <4 x float> poison, float %i.azh, i64 0
  %i.azj = shufflevector <4 x float> %i.azi, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.azk = mul nsw i64 %indvars.iv.next1857, %6
  %gep1583.1 = getelementptr [4 x i8], ptr %invariant.gep1582, i64 %i.azk ; 4 uses
  %i.azl = load <16 x float>, ptr %gep1583.1, align 1, !tbaa !8
  %i.azm = getelementptr i8, ptr %gep1583.1, i64 64
  %i.azn = load <16 x float>, ptr %i.azm, align 1, !tbaa !8
  %i.azo = getelementptr i8, ptr %gep1583.1, i64 128
  %i.azp = load <16 x float>, ptr %i.azo, align 1, !tbaa !8
  %i.azq = getelementptr i8, ptr %gep1583.1, i64 192
  %i.azr = load <16 x float>, ptr %i.azq, align 1, !tbaa !8
  %i.azs = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azj, <16 x float> %i.azl, <16 x float> %i.azc)
  %i.azt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azj, <16 x float> %i.azn, <16 x float> %i.azd)
  %i.azu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azj, <16 x float> %i.azp, <16 x float> %i.aze)
  %i.azv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azj, <16 x float> %i.azr, <16 x float> %i.azf)
  %indvars.iv.next1857.1 = or disjoint i64 %indvars.iv1856, 2 ; 2 uses
  %i.azw = getelementptr [4 x i8], ptr %i.avy, i64 %indvars.iv.next1857.1
  %i.azx = load float, ptr %i.azw, align 1, !tbaa !8
  %i.azy = insertelement <4 x float> poison, float %i.azx, i64 0
  %i.azz = shufflevector <4 x float> %i.azy, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.baa = mul nsw i64 %indvars.iv.next1857.1, %6
  %gep1583.2 = getelementptr [4 x i8], ptr %invariant.gep1582, i64 %i.baa ; 4 uses
  %i.bab = load <16 x float>, ptr %gep1583.2, align 1, !tbaa !8
  %i.bac = getelementptr i8, ptr %gep1583.2, i64 64
  %i.bad = load <16 x float>, ptr %i.bac, align 1, !tbaa !8
  %i.bae = getelementptr i8, ptr %gep1583.2, i64 128
  %i.baf = load <16 x float>, ptr %i.bae, align 1, !tbaa !8
  %i.bag = getelementptr i8, ptr %gep1583.2, i64 192
  %i.bah = load <16 x float>, ptr %i.bag, align 1, !tbaa !8
  %i.bai = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azz, <16 x float> %i.bab, <16 x float> %i.azs)
  %i.baj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azz, <16 x float> %i.bad, <16 x float> %i.azt)
  %i.bak = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azz, <16 x float> %i.baf, <16 x float> %i.azu)
  %i.bal = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azz, <16 x float> %i.bah, <16 x float> %i.azv)
  %indvars.iv.next1857.2 = or disjoint i64 %indvars.iv1856, 3 ; 2 uses
  %i.bam = getelementptr [4 x i8], ptr %i.avy, i64 %indvars.iv.next1857.2
  %i.ban = load float, ptr %i.bam, align 1, !tbaa !8
  %i.bao = insertelement <4 x float> poison, float %i.ban, i64 0
  %i.bap = shufflevector <4 x float> %i.bao, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.baq = mul nsw i64 %indvars.iv.next1857.2, %6
  %gep1583.3 = getelementptr [4 x i8], ptr %invariant.gep1582, i64 %i.baq ; 4 uses
  %i.bar = load <16 x float>, ptr %gep1583.3, align 1, !tbaa !8
  %i.bas = getelementptr i8, ptr %gep1583.3, i64 64
  %i.bat = load <16 x float>, ptr %i.bas, align 1, !tbaa !8
  %i.bau = getelementptr i8, ptr %gep1583.3, i64 128
  %i.bav = load <16 x float>, ptr %i.bau, align 1, !tbaa !8
  %i.baw = getelementptr i8, ptr %gep1583.3, i64 192
  %i.bax = load <16 x float>, ptr %i.baw, align 1, !tbaa !8
  %i.bay = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bap, <16 x float> %i.bar, <16 x float> %i.bai) ; 3 uses
  %i.baz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bap, <16 x float> %i.bat, <16 x float> %i.baj) ; 3 uses
  %i.bba = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bap, <16 x float> %i.bav, <16 x float> %i.bak) ; 3 uses
  %i.bbb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bap, <16 x float> %i.bax, <16 x float> %i.bal) ; 3 uses
  %indvars.iv.next1857.3 = add nuw nsw i64 %indvars.iv1856, 4 ; 2 uses
  %niter2378.next.3 = add nuw nsw i64 %niter2378, 4 ; 2 uses
  %niter2378.ncmp.3 = icmp eq i64 %niter2378.next.3, %unroll_iter2377
  br i1 %niter2378.ncmp.3, label %._crit_edge1577.loopexit.unr-lcssa, label %.lr.ph1576.new, !llvm.loop !53

._crit_edge1577.loopexit.unr-lcssa:               ; preds = %.lr.ph1576.new
  br i1 %lcmp.mod2371.not, label %._crit_edge1577, label %.epil.preheader2368

.epil.preheader2368:                              ; preds = %._crit_edge1577.loopexit.unr-lcssa, %.lr.ph1576
  %indvars.iv1856.epil.init = phi i64 [ 0, %.lr.ph1576 ], [ %indvars.iv.next1857.3, %._crit_edge1577.loopexit.unr-lcssa ]
  %.011941574.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1576 ], [ %i.bbb, %._crit_edge1577.loopexit.unr-lcssa ]
  %.011951573.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1576 ], [ %i.bba, %._crit_edge1577.loopexit.unr-lcssa ]
  %.011961572.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1576 ], [ %i.baz, %._crit_edge1577.loopexit.unr-lcssa ]
  %.011971571.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1576 ], [ %i.bay, %._crit_edge1577.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2376)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader2368
  %indvars.iv1856.epil = phi i64 [ %indvars.iv1856.epil.init, %.epil.preheader2368 ], [ %indvars.iv.next1857.epil, %bb.i ] ; 3 uses
  %.011941574.epil = phi <16 x float> [ %.011941574.epil.init, %.epil.preheader2368 ], [ %i.bbr, %bb.i ]
  %.011951573.epil = phi <16 x float> [ %.011951573.epil.init, %.epil.preheader2368 ], [ %i.bbq, %bb.i ]
  %.011961572.epil = phi <16 x float> [ %.011961572.epil.init, %.epil.preheader2368 ], [ %i.bbp, %bb.i ]
  %.011971571.epil = phi <16 x float> [ %.011971571.epil.init, %.epil.preheader2368 ], [ %i.bbo, %bb.i ]
  %epil.iter2370 = phi i64 [ 0, %.epil.preheader2368 ], [ %epil.iter2370.next, %bb.i ]
  %i.bbc = getelementptr [4 x i8], ptr %i.avy, i64 %indvars.iv1856.epil
  %i.bbd = load float, ptr %i.bbc, align 1, !tbaa !8
  %i.bbe = insertelement <4 x float> poison, float %i.bbd, i64 0
  %i.bbf = shufflevector <4 x float> %i.bbe, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bbg = mul nsw i64 %indvars.iv1856.epil, %6
  %gep1583.epil = getelementptr [4 x i8], ptr %invariant.gep1582, i64 %i.bbg ; 4 uses
  %i.bbh = load <16 x float>, ptr %gep1583.epil, align 1, !tbaa !8
  %i.bbi = getelementptr i8, ptr %gep1583.epil, i64 64
  %i.bbj = load <16 x float>, ptr %i.bbi, align 1, !tbaa !8
  %i.bbk = getelementptr i8, ptr %gep1583.epil, i64 128
  %i.bbl = load <16 x float>, ptr %i.bbk, align 1, !tbaa !8
  %i.bbm = getelementptr i8, ptr %gep1583.epil, i64 192
  %i.bbn = load <16 x float>, ptr %i.bbm, align 1, !tbaa !8
  %i.bbo = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbh, <16 x float> %.011971571.epil) ; 2 uses
  %i.bbp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbj, <16 x float> %.011961572.epil) ; 2 uses
  %i.bbq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbl, <16 x float> %.011951573.epil) ; 2 uses
  %i.bbr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbn, <16 x float> %.011941574.epil) ; 2 uses
  %indvars.iv.next1857.epil = add nuw nsw i64 %indvars.iv1856.epil, 1
  %epil.iter2370.next = add i64 %epil.iter2370, 1 ; 2 uses
  %epil.iter2370.cmp.not = icmp eq i64 %epil.iter2370.next, %xtraiter2369
  br i1 %epil.iter2370.cmp.not, label %._crit_edge1577, label %bb.i, !llvm.loop !54

._crit_edge1577:                                  ; preds = %._crit_edge1577.loopexit.unr-lcssa, %bb.i, %.preheader1292
  %.01197.lcssa = phi <16 x float> [ zeroinitializer, %.preheader1292 ], [ %i.bay, %._crit_edge1577.loopexit.unr-lcssa ], [ %i.bbo, %bb.i ]
  %.01196.lcssa = phi <16 x float> [ zeroinitializer, %.preheader1292 ], [ %i.baz, %._crit_edge1577.loopexit.unr-lcssa ], [ %i.bbp, %bb.i ]
  %.01195.lcssa = phi <16 x float> [ zeroinitializer, %.preheader1292 ], [ %i.bba, %._crit_edge1577.loopexit.unr-lcssa ], [ %i.bbq, %bb.i ]
  %.01194.lcssa = phi <16 x float> [ zeroinitializer, %.preheader1292 ], [ %i.bbb, %._crit_edge1577.loopexit.unr-lcssa ], [ %i.bbr, %bb.i ]
  %i.bbs = getelementptr [4 x i8], ptr %i.awa, i64 %indvars.iv1860 ; 4 uses
  store <16 x float> %.01197.lcssa, ptr %i.bbs, align 1, !tbaa !8
  %i.bbt = getelementptr i8, ptr %i.bbs, i64 64
  store <16 x float> %.01196.lcssa, ptr %i.bbt, align 1, !tbaa !8
  %i.bbu = getelementptr i8, ptr %i.bbs, i64 128
  store <16 x float> %.01195.lcssa, ptr %i.bbu, align 1, !tbaa !8
  %i.bbv = getelementptr i8, ptr %i.bbs, i64 192
  store <16 x float> %.01194.lcssa, ptr %i.bbv, align 1, !tbaa !8
  %indvars.iv.next1861 = add nuw nsw i64 %indvars.iv1860, 64 ; 3 uses
  %i.bbw = icmp slt i64 %indvars.iv.next1861, %i.aat
  br i1 %i.bbw, label %.preheader1292, label %.preheader1298.loopexit, !llvm.loop !55

.preheader1297.loopexit:                          ; preds = %._crit_edge1590.us
  %i.bbx = trunc nuw nsw i64 %indvars.iv.next1871 to i32
  br label %.preheader1297

.preheader1297:                                   ; preds = %.preheader1297.loopexit, %.preheader1298
  %.15.lcssa = phi i32 [ %.14.lcssa, %.preheader1298 ], [ %i.bbx, %.preheader1297.loopexit ] ; 4 uses
  %i.bby = icmp slt i32 %.15.lcssa, %i.f
  br i1 %i.bby, label %.preheader1290.lr.ph, label %.preheader1296

.preheader1297.thread:                            ; preds = %.preheader1291
  %i.bbz = trunc nuw nsw i64 %indvars.iv.next1864 to i32 ; 3 uses
  %i.bca = icmp sgt i32 %i.f, %i.bbz
  br i1 %i.bca, label %.preheader1290.lr.ph.thread, label %.preheader1296

.preheader1290.lr.ph.thread:                      ; preds = %.preheader1297.thread
  %i.bcb = mul i64 %indvars.iv1912, %8
  br label %.preheader1290.preheader

.preheader1290.lr.ph:                             ; preds = %.preheader1297
  %i.bcc = mul nsw i64 %indvars.iv1912, %4
  %i.bcd = getelementptr [4 x i8], ptr %3, i64 %i.bcc ; 9 uses
  %i.bce = mul i64 %indvars.iv1912, %8            ; 2 uses
  %i.bcf = getelementptr [4 x i8], ptr %7, i64 %i.bce
  br i1 %i.aas, label %.preheader1290.us.preheader, label %.preheader1290.preheader

.preheader1290.preheader:                         ; preds = %.preheader1290.lr.ph.thread, %.preheader1290.lr.ph
  %i.bcg = phi i64 [ %i.bcb, %.preheader1290.lr.ph.thread ], [ %i.bce, %.preheader1290.lr.ph ]
  %.15.lcssa19491951 = phi i32 [ %i.bbz, %.preheader1290.lr.ph.thread ], [ %.15.lcssa, %.preheader1290.lr.ph ] ; 2 uses
  %i.bch = getelementptr [4 x i8], ptr %7, i64 %i.bcg
  %i.bci = zext i32 %.15.lcssa19491951 to i64     ; 2 uses
  %i.bcj = shl nuw nsw i64 %i.bci, 2
  %scevgep1873 = getelementptr i8, ptr %i.bch, i64 %i.bcj
  %i.bck = xor i32 %.15.lcssa19491951, -1
  %i.bcl = add i32 %i.f, %i.bck
  %i.bcm = lshr i32 %i.bcl, 4
  %i.bcn = zext nneg i32 %i.bcm to i64
  %i.bco = shl nuw nsw i64 %i.bcn, 6
  %i.bcp = add nuw nsw i64 %i.bco, 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1873, i8 0, i64 %i.bcp, i1 false), !tbaa !8
  br label %.preheader1290

.preheader1290.us.preheader:                      ; preds = %.preheader1290.lr.ph
  %i.bcq = zext i32 %.15.lcssa to i64
  br label %.preheader1290.us

.preheader1290.us:                                ; preds = %.preheader1290.us.preheader, %._crit_edge1600.us
  %indvars.iv1881 = phi i64 [ %i.bcq, %.preheader1290.us.preheader ], [ %indvars.iv.next1882, %._crit_edge1600.us ] ; 3 uses
  %invariant.gep1602.us = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1881 ; 9 uses
  br i1 %i.aay, label %.epil.preheader2388, label %.preheader1290.us.new

.preheader1290.us.new:                            ; preds = %.preheader1290.us, %.preheader1290.us.new
  %indvars.iv1877 = phi i64 [ %indvars.iv.next1878.7, %.preheader1290.us.new ], [ 0, %.preheader1290.us ] ; 10 uses
  %.011831597.us = phi <16 x float> [ %i.beu, %.preheader1290.us.new ], [ zeroinitializer, %.preheader1290.us ]
  %niter2395 = phi i64 [ %niter2395.next.7, %.preheader1290.us.new ], [ 0, %.preheader1290.us ]
  %i.bcr = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv1877
  %i.bcs = load float, ptr %i.bcr, align 1, !tbaa !8
  %i.bct = insertelement <4 x float> poison, float %i.bcs, i64 0
  %i.bcu = shufflevector <4 x float> %i.bct, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bcv = mul nsw i64 %indvars.iv1877, %6
  %gep1603.us = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bcv
  %i.bcw = load <16 x float>, ptr %gep1603.us, align 1, !tbaa !8
  %i.bcx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bcu, <16 x float> %i.bcw, <16 x float> %.011831597.us)
  %indvars.iv.next1878 = or disjoint i64 %indvars.iv1877, 1 ; 2 uses
  %i.bcy = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv.next1878
  %i.bcz = load float, ptr %i.bcy, align 1, !tbaa !8
  %i.bda = insertelement <4 x float> poison, float %i.bcz, i64 0
  %i.bdb = shufflevector <4 x float> %i.bda, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bdc = mul nsw i64 %indvars.iv.next1878, %6
  %gep1603.us.1 = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bdc
  %i.bdd = load <16 x float>, ptr %gep1603.us.1, align 1, !tbaa !8
  %i.bde = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdb, <16 x float> %i.bdd, <16 x float> %i.bcx)
  %indvars.iv.next1878.1 = or disjoint i64 %indvars.iv1877, 2 ; 2 uses
  %i.bdf = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv.next1878.1
  %i.bdg = load float, ptr %i.bdf, align 1, !tbaa !8
  %i.bdh = insertelement <4 x float> poison, float %i.bdg, i64 0
  %i.bdi = shufflevector <4 x float> %i.bdh, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bdj = mul nsw i64 %indvars.iv.next1878.1, %6
  %gep1603.us.2 = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bdj
  %i.bdk = load <16 x float>, ptr %gep1603.us.2, align 1, !tbaa !8
  %i.bdl = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdi, <16 x float> %i.bdk, <16 x float> %i.bde)
  %indvars.iv.next1878.2 = or disjoint i64 %indvars.iv1877, 3 ; 2 uses
  %i.bdm = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv.next1878.2
  %i.bdn = load float, ptr %i.bdm, align 1, !tbaa !8
  %i.bdo = insertelement <4 x float> poison, float %i.bdn, i64 0
  %i.bdp = shufflevector <4 x float> %i.bdo, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bdq = mul nsw i64 %indvars.iv.next1878.2, %6
  %gep1603.us.3 = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bdq
  %i.bdr = load <16 x float>, ptr %gep1603.us.3, align 1, !tbaa !8
  %i.bds = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdp, <16 x float> %i.bdr, <16 x float> %i.bdl)
  %indvars.iv.next1878.3 = or disjoint i64 %indvars.iv1877, 4 ; 2 uses
  %i.bdt = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv.next1878.3
  %i.bdu = load float, ptr %i.bdt, align 1, !tbaa !8
  %i.bdv = insertelement <4 x float> poison, float %i.bdu, i64 0
  %i.bdw = shufflevector <4 x float> %i.bdv, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bdx = mul nsw i64 %indvars.iv.next1878.3, %6
  %gep1603.us.4 = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bdx
  %i.bdy = load <16 x float>, ptr %gep1603.us.4, align 1, !tbaa !8
  %i.bdz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdw, <16 x float> %i.bdy, <16 x float> %i.bds)
  %indvars.iv.next1878.4 = or disjoint i64 %indvars.iv1877, 5 ; 2 uses
  %i.bea = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv.next1878.4
  %i.beb = load float, ptr %i.bea, align 1, !tbaa !8
  %i.bec = insertelement <4 x float> poison, float %i.beb, i64 0
  %i.bed = shufflevector <4 x float> %i.bec, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bee = mul nsw i64 %indvars.iv.next1878.4, %6
  %gep1603.us.5 = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bee
  %i.bef = load <16 x float>, ptr %gep1603.us.5, align 1, !tbaa !8
  %i.beg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bed, <16 x float> %i.bef, <16 x float> %i.bdz)
  %indvars.iv.next1878.5 = or disjoint i64 %indvars.iv1877, 6 ; 2 uses
  %i.beh = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv.next1878.5
  %i.bei = load float, ptr %i.beh, align 1, !tbaa !8
  %i.bej = insertelement <4 x float> poison, float %i.bei, i64 0
  %i.bek = shufflevector <4 x float> %i.bej, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bel = mul nsw i64 %indvars.iv.next1878.5, %6
  %gep1603.us.6 = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bel
  %i.bem = load <16 x float>, ptr %gep1603.us.6, align 1, !tbaa !8
  %i.ben = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bek, <16 x float> %i.bem, <16 x float> %i.beg)
  %indvars.iv.next1878.6 = or disjoint i64 %indvars.iv1877, 7 ; 2 uses
  %i.beo = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv.next1878.6
  %i.bep = load float, ptr %i.beo, align 1, !tbaa !8
  %i.beq = insertelement <4 x float> poison, float %i.bep, i64 0
  %i.ber = shufflevector <4 x float> %i.beq, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bes = mul nsw i64 %indvars.iv.next1878.6, %6
  %gep1603.us.7 = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bes
  %i.bet = load <16 x float>, ptr %gep1603.us.7, align 1, !tbaa !8
  %i.beu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ber, <16 x float> %i.bet, <16 x float> %i.ben) ; 3 uses
  %indvars.iv.next1878.7 = add nuw nsw i64 %indvars.iv1877, 8 ; 2 uses
  %niter2395.next.7 = add nuw nsw i64 %niter2395, 8 ; 2 uses
  %niter2395.ncmp.7 = icmp eq i64 %niter2395.next.7, %unroll_iter2394
  br i1 %niter2395.ncmp.7, label %._crit_edge1600.us.unr-lcssa, label %.preheader1290.us.new, !llvm.loop !56

._crit_edge1600.us.unr-lcssa:                     ; preds = %.preheader1290.us.new
  br i1 %lcmp.mod2391.not, label %._crit_edge1600.us, label %.epil.preheader2388

.epil.preheader2388:                              ; preds = %._crit_edge1600.us.unr-lcssa, %.preheader1290.us
  %indvars.iv1877.epil.init = phi i64 [ 0, %.preheader1290.us ], [ %indvars.iv.next1878.7, %._crit_edge1600.us.unr-lcssa ]
  %.011831597.us.epil.init = phi <16 x float> [ zeroinitializer, %.preheader1290.us ], [ %i.beu, %._crit_edge1600.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2393)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader2388
  %indvars.iv1877.epil = phi i64 [ %indvars.iv1877.epil.init, %.epil.preheader2388 ], [ %indvars.iv.next1878.epil, %bb.j ] ; 3 uses
  %.011831597.us.epil = phi <16 x float> [ %.011831597.us.epil.init, %.epil.preheader2388 ], [ %i.bfb, %bb.j ]
  %epil.iter2390 = phi i64 [ 0, %.epil.preheader2388 ], [ %epil.iter2390.next, %bb.j ]
  %i.bev = getelementptr [4 x i8], ptr %i.bcd, i64 %indvars.iv1877.epil
  %i.bew = load float, ptr %i.bev, align 1, !tbaa !8
  %i.bex = insertelement <4 x float> poison, float %i.bew, i64 0
  %i.bey = shufflevector <4 x float> %i.bex, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bez = mul nsw i64 %indvars.iv1877.epil, %6
  %gep1603.us.epil = getelementptr [4 x i8], ptr %invariant.gep1602.us, i64 %i.bez
  %i.bfa = load <16 x float>, ptr %gep1603.us.epil, align 1, !tbaa !8
  %i.bfb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bey, <16 x float> %i.bfa, <16 x float> %.011831597.us.epil) ; 2 uses
  %indvars.iv.next1878.epil = add nuw nsw i64 %indvars.iv1877.epil, 1
  %epil.iter2390.next = add i64 %epil.iter2390, 1 ; 2 uses
  %epil.iter2390.cmp.not = icmp eq i64 %epil.iter2390.next, %xtraiter2389
  br i1 %epil.iter2390.cmp.not, label %._crit_edge1600.us, label %bb.j, !llvm.loop !57

._crit_edge1600.us:                               ; preds = %bb.j, %._crit_edge1600.us.unr-lcssa
  %.lcssa2149 = phi <16 x float> [ %i.beu, %._crit_edge1600.us.unr-lcssa ], [ %i.bfb, %bb.j ]
  %i.bfc = getelementptr [4 x i8], ptr %i.bcf, i64 %indvars.iv1881
  store <16 x float> %.lcssa2149, ptr %i.bfc, align 1, !tbaa !8
  %indvars.iv.next1882 = add nuw nsw i64 %indvars.iv1881, 16 ; 2 uses
  %i.bfd = trunc nuw i64 %indvars.iv.next1882 to i32 ; 2 uses
  %i.bfe = icmp sgt i32 %i.f, %i.bfd
  br i1 %i.bfe, label %.preheader1290.us, label %.preheader1296, !llvm.loop !58

.preheader1291:                                   ; preds = %.preheader1291.preheader, %.preheader1291
  %indvars.iv1863 = phi i64 [ %i.awh, %.preheader1291.preheader ], [ %indvars.iv.next1864, %.preheader1291 ]
  %indvars.iv.next1864 = add nuw nsw i64 %indvars.iv1863, 32 ; 3 uses
  %i.bff = icmp slt i64 %indvars.iv.next1864, %i.aau
  br i1 %i.bff, label %.preheader1291, label %.preheader1297.thread, !llvm.loop !52

.preheader1296:                                   ; preds = %.preheader1290, %._crit_edge1600.us, %.preheader1297.thread, %.preheader1297
  %.16.lcssa = phi i32 [ %.15.lcssa, %.preheader1297 ], [ %i.bbz, %.preheader1297.thread ], [ %i.bfd, %._crit_edge1600.us ], [ %i.bfm, %.preheader1290 ] ; 3 uses
  %i.bfg = icmp slt i32 %.16.lcssa, %i.g
  br i1 %i.bfg, label %.preheader1289.lr.ph, label %.preheader1295

.preheader1289.lr.ph:                             ; preds = %.preheader1296
  %i.bfh = mul nsw i64 %indvars.iv1912, %4
  %i.bfi = getelementptr [4 x i8], ptr %3, i64 %i.bfh ; 9 uses
  %i.bfj = mul nsw i64 %indvars.iv1912, %8
  %i.bfk = getelementptr [4 x i8], ptr %7, i64 %i.bfj
  %i.bfl = zext i32 %.16.lcssa to i64
  br label %.preheader1289

.preheader1290:                                   ; preds = %.preheader1290.preheader, %.preheader1290
  %indvars.iv1874 = phi i64 [ %i.bci, %.preheader1290.preheader ], [ %indvars.iv.next1875, %.preheader1290 ]
  %indvars.iv.next1875 = add nuw nsw i64 %indvars.iv1874, 16 ; 2 uses
  %i.bfm = trunc nuw i64 %indvars.iv.next1875 to i32 ; 2 uses
  %i.bfn = icmp sgt i32 %i.f, %i.bfm
  br i1 %i.bfn, label %.preheader1290, label %.preheader1296, !llvm.loop !58

.preheader1295:                                   ; preds = %._crit_edge1610, %.preheader1296
  %.17.lcssa = phi i32 [ %.16.lcssa, %.preheader1296 ], [ %i.big, %._crit_edge1610 ] ; 3 uses
  %i.bfo = icmp slt i32 %.17.lcssa, %i.h
  br i1 %i.bfo, label %.preheader1288.lr.ph, label %.preheader1294

.preheader1288.lr.ph:                             ; preds = %.preheader1295
  %i.bfp = mul nsw i64 %indvars.iv1912, %4
  %i.bfq = getelementptr [4 x i8], ptr %3, i64 %i.bfp ; 9 uses
  %i.bfr = mul nsw i64 %indvars.iv1912, %8
  %i.bfs = getelementptr [4 x i8], ptr %7, i64 %i.bfr
  %i.bft = zext i32 %.17.lcssa to i64
  br label %.preheader1288

.preheader1289:                                   ; preds = %.preheader1289.lr.ph, %._crit_edge1610
  %indvars.iv1888 = phi i64 [ %i.bfl, %.preheader1289.lr.ph ], [ %indvars.iv.next1889, %._crit_edge1610 ] ; 3 uses
  br i1 %i.aas, label %.lr.ph1609, label %._crit_edge1610

.lr.ph1609:                                       ; preds = %.preheader1289
  %invariant.gep1612 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1888 ; 9 uses
  br i1 %i.aaz, label %.epil.preheader2396, label %.lr.ph1609.new

.lr.ph1609.new:                                   ; preds = %.lr.ph1609, %.lr.ph1609.new
  %indvars.iv1884 = phi i64 [ %indvars.iv.next1885.7, %.lr.ph1609.new ], [ 0, %.lr.ph1609 ] ; 10 uses
  %.011821607 = phi <8 x float> [ %i.bhx, %.lr.ph1609.new ], [ zeroinitializer, %.lr.ph1609 ]
  %niter2403 = phi i64 [ %niter2403.next.7, %.lr.ph1609.new ], [ 0, %.lr.ph1609 ]
  %i.bfu = getelementptr [4 x i8], ptr %i.bfi, i64 %indvars.iv1884
  %i.bfv = load float, ptr %i.bfu, align 1, !tbaa !8
  %i.bfw = insertelement <4 x float> poison, float %i.bfv, i64 0
  %i.bfx = shufflevector <4 x float> %i.bfw, <4 x float> poison, <8 x i32> zeroinitializer
  %i.bfy = mul nsw i64 %indvars.iv1884, %6
  %gep1613 = getelementptr [4 x i8], ptr %invariant.gep1612, i64 %i.bfy
  %i.bfz = load <8 x float>, ptr %gep1613, align 1, !tbaa !8
  %i.bga = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.bfx, <8 x float> %i.bfz, <8 x float> %.011821607)
  %indvars.iv.next1885 = or disjoint i64 %indvars.iv1884, 1 ; 2 uses
  %i.bgb = getelementptr [4 x i8], ptr %i.bfi, i64 %indvars.iv.next1885
  %i.bgc = load float, ptr %i.bgb, align 1, !tbaa !8
  %i.bgd = insertelement <4 x float> poison, float %i.bgc, i64 0
  %i.bge = shufflevector <4 x float> %i.bgd, <4 x float> poison, <8 x i32> zeroinitializer
  %i.bgf = mul nsw i64 %indvars.iv.next1885, %6
  %gep1613.1 = getelementptr [4 x i8], ptr %invariant.gep1612, i64 %i.bgf
  %i.bgg = load <8 x float>, ptr %gep1613.1, align 1, !tbaa !8
  %i.bgh = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.bge, <8 x float> %i.bgg, <8 x float> %i.bga)
  %indvars.iv.next1885.1 = or disjoint i64 %indvars.iv1884, 2 ; 2 uses
end_hunk_0
begin_hunk_1_@sgemm_direct:bb.a
  %i.bmo = load <2 x float>, ptr %gep1633.4, align 4, !tbaa !20
  %i.bmp = insertelement <2 x float> poison, float %i.bmm, i64 0
  %i.bmq = shufflevector <2 x float> %i.bmp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bmq, <2 x float> %i.bmo, <2 x float> %i.bmk)
  %indvars.iv.next1899.4 = or disjoint i64 %indvars.iv1898, 5 ; 2 uses
  %i.bms = getelementptr [4 x i8], ptr %i.bik, i64 %indvars.iv.next1899.4
  %i.bmt = load float, ptr %i.bms, align 4, !tbaa !20
  %i.bmu = mul nsw i64 %indvars.iv.next1899.4, %6
  %gep1633.5 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bmu
  %i.bmv = load <2 x float>, ptr %gep1633.5, align 4, !tbaa !20
  %i.bmw = insertelement <2 x float> poison, float %i.bmt, i64 0
  %i.bmx = shufflevector <2 x float> %i.bmw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bmx, <2 x float> %i.bmv, <2 x float> %i.bmr)
  %indvars.iv.next1899.5 = or disjoint i64 %indvars.iv1898, 6 ; 2 uses
  %i.bmz = getelementptr [4 x i8], ptr %i.bik, i64 %indvars.iv.next1899.5
  %i.bna = load float, ptr %i.bmz, align 4, !tbaa !20
  %i.bnb = mul nsw i64 %indvars.iv.next1899.5, %6
  %gep1633.6 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bnb
  %i.bnc = load <2 x float>, ptr %gep1633.6, align 4, !tbaa !20
  %i.bnd = insertelement <2 x float> poison, float %i.bna, i64 0
  %i.bne = shufflevector <2 x float> %i.bnd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bne, <2 x float> %i.bnc, <2 x float> %i.bmy)
  %indvars.iv.next1899.6 = or disjoint i64 %indvars.iv1898, 7 ; 2 uses
  %i.bng = getelementptr [4 x i8], ptr %i.bik, i64 %indvars.iv.next1899.6
  %i.bnh = load float, ptr %i.bng, align 4, !tbaa !20
  %i.bni = mul nsw i64 %indvars.iv.next1899.6, %6
  %gep1633.7 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bni
  %i.bnj = load <2 x float>, ptr %gep1633.7, align 4, !tbaa !20
  %i.bnk = insertelement <2 x float> poison, float %i.bnh, i64 0
  %i.bnl = shufflevector <2 x float> %i.bnk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnl, <2 x float> %i.bnj, <2 x float> %i.bnf) ; 3 uses
  %indvars.iv.next1899.7 = add nuw nsw i64 %indvars.iv1898, 8 ; 2 uses
  %niter2421.next.7 = add nuw nsw i64 %niter2421, 8 ; 2 uses
  %niter2421.ncmp.7 = icmp eq i64 %niter2421.next.7, %unroll_iter2420
  br i1 %niter2421.ncmp.7, label %._crit_edge1629.loopexit.unr-lcssa, label %.lr.ph1628.new, !llvm.loop !65

._crit_edge1629.loopexit.unr-lcssa:               ; preds = %.lr.ph1628.new
  br i1 %lcmp.mod2417.not, label %._crit_edge1629, label %.epil.preheader2412

.epil.preheader2412:                              ; preds = %._crit_edge1629.loopexit.unr-lcssa, %.lr.ph1628
  %indvars.iv1898.epil.init = phi i64 [ 0, %.lr.ph1628 ], [ %indvars.iv.next1899.7, %._crit_edge1629.loopexit.unr-lcssa ]
  %.epil.init2416 = phi <2 x float> [ zeroinitializer, %.lr.ph1628 ], [ %i.bnm, %._crit_edge1629.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2419)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader2412
  %indvars.iv1898.epil = phi i64 [ %indvars.iv1898.epil.init, %.epil.preheader2412 ], [ %indvars.iv.next1899.epil, %bb.m ] ; 3 uses
  %i.bnn = phi <2 x float> [ %.epil.init2416, %.epil.preheader2412 ], [ %i.bnu, %bb.m ]
  %epil.iter2414 = phi i64 [ 0, %.epil.preheader2412 ], [ %epil.iter2414.next, %bb.m ]
  %i.bno = getelementptr [4 x i8], ptr %i.bik, i64 %indvars.iv1898.epil
  %i.bnp = load float, ptr %i.bno, align 4, !tbaa !20
  %i.bnq = mul nsw i64 %indvars.iv1898.epil, %6
  %gep1633.epil = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bnq
  %i.bnr = load <2 x float>, ptr %gep1633.epil, align 4, !tbaa !20
  %i.bns = insertelement <2 x float> poison, float %i.bnp, i64 0
  %i.bnt = shufflevector <2 x float> %i.bns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnt, <2 x float> %i.bnr, <2 x float> %i.bnn) ; 2 uses
  %indvars.iv.next1899.epil = add nuw nsw i64 %indvars.iv1898.epil, 1
  %epil.iter2414.next = add i64 %epil.iter2414, 1 ; 2 uses
  %epil.iter2414.cmp.not = icmp eq i64 %epil.iter2414.next, %xtraiter2413
  br i1 %epil.iter2414.cmp.not, label %._crit_edge1629, label %bb.m, !llvm.loop !66

._crit_edge1629:                                  ; preds = %._crit_edge1629.loopexit.unr-lcssa, %bb.m, %.preheader1287
  %i.bnv = phi <2 x float> [ zeroinitializer, %.preheader1287 ], [ %i.bnm, %._crit_edge1629.loopexit.unr-lcssa ], [ %i.bnu, %bb.m ]
  %i.bnw = getelementptr [4 x i8], ptr %i.bim, i64 %indvars.iv1902
  store <2 x float> %i.bnv, ptr %i.bnw, align 4, !tbaa !20
  %indvars.iv.next1903 = add nuw nsw i64 %indvars.iv1902, 2 ; 2 uses
  %i.bnx = trunc nuw i64 %indvars.iv.next1903 to i32 ; 2 uses
  %i.bny = icmp sgt i32 %i.i, %i.bnx
  br i1 %i.bny, label %.preheader1287, label %.preheader1293, !llvm.loop !67

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1641
  %indvars.iv1909 = phi i64 [ %i.blc, %.preheader.lr.ph ], [ %indvars.iv.next1910, %._crit_edge1641 ] ; 3 uses
  %invariant.gep1636 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1909 ; 9 uses
  br i1 %i.aas, label %.lr.ph1640.preheader, label %._crit_edge1641

.lr.ph1640.preheader:                             ; preds = %.preheader
  br i1 %i.abc, label %.lr.ph1640.epil.preheader, label %.lr.ph1640

.lr.ph1640:                                       ; preds = %.lr.ph1640.preheader, %.lr.ph1640
  %indvars.iv1905 = phi i64 [ %indvars.iv.next1906.7, %.lr.ph1640 ], [ 0, %.lr.ph1640.preheader ] ; 10 uses
  %.011571639 = phi float [ %i.bpm, %.lr.ph1640 ], [ 0.000000e+00, %.lr.ph1640.preheader ]
  %niter2428 = phi i64 [ %niter2428.next.7, %.lr.ph1640 ], [ 0, %.lr.ph1640.preheader ]
  %i.bnz = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv1905
  %i.boa = load float, ptr %i.bnz, align 4, !tbaa !20
  %i.bob = mul nsw i64 %indvars.iv1905, %6
  %gep1637 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bob
  %i.boc = load float, ptr %gep1637, align 4, !tbaa !20
  %i.bod = tail call float @llvm.fmuladd.f32(float %i.boa, float %i.boc, float %.011571639)
  %indvars.iv.next1906 = or disjoint i64 %indvars.iv1905, 1 ; 2 uses
  %i.boe = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.next1906
  %i.bof = load float, ptr %i.boe, align 4, !tbaa !20
  %i.bog = mul nsw i64 %indvars.iv.next1906, %6
  %gep1637.1 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bog
  %i.boh = load float, ptr %gep1637.1, align 4, !tbaa !20
  %i.boi = tail call float @llvm.fmuladd.f32(float %i.bof, float %i.boh, float %i.bod)
  %indvars.iv.next1906.1 = or disjoint i64 %indvars.iv1905, 2 ; 2 uses
  %i.boj = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.next1906.1
  %i.bok = load float, ptr %i.boj, align 4, !tbaa !20
  %i.bol = mul nsw i64 %indvars.iv.next1906.1, %6
  %gep1637.2 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bol
  %i.bom = load float, ptr %gep1637.2, align 4, !tbaa !20
  %i.bon = tail call float @llvm.fmuladd.f32(float %i.bok, float %i.bom, float %i.boi)
  %indvars.iv.next1906.2 = or disjoint i64 %indvars.iv1905, 3 ; 2 uses
  %i.boo = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.next1906.2
  %i.bop = load float, ptr %i.boo, align 4, !tbaa !20
  %i.boq = mul nsw i64 %indvars.iv.next1906.2, %6
  %gep1637.3 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.boq
  %i.bor = load float, ptr %gep1637.3, align 4, !tbaa !20
  %i.bos = tail call float @llvm.fmuladd.f32(float %i.bop, float %i.bor, float %i.bon)
  %indvars.iv.next1906.3 = or disjoint i64 %indvars.iv1905, 4 ; 2 uses
  %i.bot = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.next1906.3
  %i.bou = load float, ptr %i.bot, align 4, !tbaa !20
  %i.bov = mul nsw i64 %indvars.iv.next1906.3, %6
  %gep1637.4 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bov
  %i.bow = load float, ptr %gep1637.4, align 4, !tbaa !20
  %i.box = tail call float @llvm.fmuladd.f32(float %i.bou, float %i.bow, float %i.bos)
  %indvars.iv.next1906.4 = or disjoint i64 %indvars.iv1905, 5 ; 2 uses
  %i.boy = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.next1906.4
  %i.boz = load float, ptr %i.boy, align 4, !tbaa !20
  %i.bpa = mul nsw i64 %indvars.iv.next1906.4, %6
  %gep1637.5 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bpa
  %i.bpb = load float, ptr %gep1637.5, align 4, !tbaa !20
  %i.bpc = tail call float @llvm.fmuladd.f32(float %i.boz, float %i.bpb, float %i.box)
  %indvars.iv.next1906.5 = or disjoint i64 %indvars.iv1905, 6 ; 2 uses
  %i.bpd = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.next1906.5
  %i.bpe = load float, ptr %i.bpd, align 4, !tbaa !20
  %i.bpf = mul nsw i64 %indvars.iv.next1906.5, %6
  %gep1637.6 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bpf
  %i.bpg = load float, ptr %gep1637.6, align 4, !tbaa !20
  %i.bph = tail call float @llvm.fmuladd.f32(float %i.bpe, float %i.bpg, float %i.bpc)
  %indvars.iv.next1906.6 = or disjoint i64 %indvars.iv1905, 7 ; 2 uses
  %i.bpi = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.next1906.6
  %i.bpj = load float, ptr %i.bpi, align 4, !tbaa !20
  %i.bpk = mul nsw i64 %indvars.iv.next1906.6, %6
  %gep1637.7 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bpk
  %i.bpl = load float, ptr %gep1637.7, align 4, !tbaa !20
  %i.bpm = tail call float @llvm.fmuladd.f32(float %i.bpj, float %i.bpl, float %i.bph) ; 3 uses
  %indvars.iv.next1906.7 = add nuw nsw i64 %indvars.iv1905, 8 ; 2 uses
  %niter2428.next.7 = add nuw nsw i64 %niter2428, 8 ; 2 uses
  %niter2428.ncmp.7 = icmp eq i64 %niter2428.next.7, %unroll_iter2427
  br i1 %niter2428.ncmp.7, label %._crit_edge1641.loopexit.unr-lcssa, label %.lr.ph1640, !llvm.loop !68

._crit_edge1641.loopexit.unr-lcssa:               ; preds = %.lr.ph1640
  br i1 %lcmp.mod2424.not, label %._crit_edge1641, label %.lr.ph1640.epil.preheader

.lr.ph1640.epil.preheader:                        ; preds = %._crit_edge1641.loopexit.unr-lcssa, %.lr.ph1640.preheader
  %indvars.iv1905.epil.init = phi i64 [ 0, %.lr.ph1640.preheader ], [ %indvars.iv.next1906.7, %._crit_edge1641.loopexit.unr-lcssa ]
  %.011571639.epil.init = phi float [ 0.000000e+00, %.lr.ph1640.preheader ], [ %i.bpm, %._crit_edge1641.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2426)
  br label %.lr.ph1640.epil

.lr.ph1640.epil:                                  ; preds = %.lr.ph1640.epil, %.lr.ph1640.epil.preheader
  %indvars.iv1905.epil = phi i64 [ %indvars.iv.next1906.epil, %.lr.ph1640.epil ], [ %indvars.iv1905.epil.init, %.lr.ph1640.epil.preheader ] ; 3 uses
  %.011571639.epil = phi float [ %i.bpr, %.lr.ph1640.epil ], [ %.011571639.epil.init, %.lr.ph1640.epil.preheader ]
  %epil.iter2423 = phi i64 [ %epil.iter2423.next, %.lr.ph1640.epil ], [ 0, %.lr.ph1640.epil.preheader ]
  %i.bpn = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv1905.epil
  %i.bpo = load float, ptr %i.bpn, align 4, !tbaa !20
  %i.bpp = mul nsw i64 %indvars.iv1905.epil, %6
  %gep1637.epil = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bpp
  %i.bpq = load float, ptr %gep1637.epil, align 4, !tbaa !20
  %i.bpr = tail call float @llvm.fmuladd.f32(float %i.bpo, float %i.bpq, float %.011571639.epil) ; 2 uses
  %indvars.iv.next1906.epil = add nuw nsw i64 %indvars.iv1905.epil, 1
  %epil.iter2423.next = add i64 %epil.iter2423, 1 ; 2 uses
  %epil.iter2423.cmp.not = icmp eq i64 %epil.iter2423.next, %xtraiter2422
  br i1 %epil.iter2423.cmp.not, label %._crit_edge1641, label %.lr.ph1640.epil, !llvm.loop !69

._crit_edge1641:                                  ; preds = %._crit_edge1641.loopexit.unr-lcssa, %.lr.ph1640.epil, %.preheader
  %.01157.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.bpm, %._crit_edge1641.loopexit.unr-lcssa ], [ %i.bpr, %.lr.ph1640.epil ]
  %i.bps = getelementptr [4 x i8], ptr %i.blh, i64 %indvars.iv1909
  store float %.01157.lcssa, ptr %i.bps, align 4, !tbaa !20
  %indvars.iv.next1910 = add nsw i64 %indvars.iv1909, 1 ; 2 uses
  %i.bpt = icmp sgt i64 %1, %indvars.iv.next1910
  br i1 %i.bpt, label %.preheader, label %._crit_edge1644, !llvm.loop !70

._crit_edge1644:                                  ; preds = %._crit_edge1641, %.preheader1293
  %indvars.iv.next1913 = add nuw nsw i64 %indvars.iv1912, 1 ; 2 uses
  %exitcond1915.not = icmp eq i64 %indvars.iv.next1913, %0
  br i1 %exitcond1915.not, label %._crit_edge1646, label %.preheader1299, !llvm.loop !71

._crit_edge1646:                                  ; preds = %._crit_edge1644, %.preheader1300
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !26}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !26}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
end_hunk_1
