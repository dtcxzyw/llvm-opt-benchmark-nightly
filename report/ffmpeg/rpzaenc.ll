Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rpzaenc?download=true
inline.NumInlined: 45
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@rpza_encode_frame:bb.a
  store i8 0, ptr %i.bu, align 1, !tbaa !72
  %i.adf = icmp slt i32 %i.lv, 2
  %i.adg = mul nuw nsw i32 %.sink.i317.i, 5       ; 4 uses
  %wide.trip.count.i329.i = zext i32 %.sroa.28.3.i to i64 ; 5 uses
  %i.adh = zext i8 %.076.lcssa.sink.i.i to i32    ; 5 uses
  %i.adi = zext nneg i8 %.074.lcssa.sink.i.i to i32 ; 2 uses
  %i.adj = sub nsw i32 %i.adi, %i.adh             ; 4 uses
  %i.adk = add nuw nsw i32 %i.adh, 1              ; 2 uses
  %i.adl = zext nneg i32 %.sink.i317.i to i64     ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.adl
  %min.iters.check = icmp ult i32 %.sroa.28.3.i, 8
  %n.vec = and i64 %wide.trip.count.i329.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.adg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i329.i
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bn, %get_max_component_diff.exit.i
  %indvars.iv.i = phi i64 [ 0, %get_max_component_diff.exit.i ], [ %indvars.iv.next.i, %bb.bn ] ; 9 uses
  %.0159261.i = phi i32 [ 0, %get_max_component_diff.exit.i ], [ %.1.i, %bb.bn ] ; 6 uses
  %i.ado = icmp eq i64 %indvars.iv.i, %i.adl
  br i1 %i.ado, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i8 %.076.lcssa.sink.i.i, ptr %i.adm, align 1, !tbaa !72
  store i8 %.074.lcssa.sink.i.i, ptr %i.adn, align 1, !tbaa !72
  br label %bb.bn

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.adf, label %leastsquares.exit.i, label %.preheader75.i.i

.preheader75.i.i:                                 ; preds = %bb.bh
  br i1 %i.lw, label %.preheader.lr.ph.i327.i, label %._crit_edge93.i.i

.preheader.lr.ph.i327.i:                          ; preds = %.preheader75.i.i
  br i1 %i.lx, label %.preheader.us.i330.preheader.i, label %._crit_edge93.i.i

.preheader.us.i330.preheader.i:                   ; preds = %.preheader.lr.ph.i327.i
  %i.adp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.adq = mul nuw nsw i32 %i.adp, 5              ; 2 uses
  %broadcast.splatinsert572 = insertelement <4 x i32> poison, i32 %i.adq, i64 0
  %broadcast.splat573 = shufflevector <4 x i32> %broadcast.splatinsert572, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader.us.i330.i

.preheader.us.i330.i:                             ; preds = %._crit_edge.us.i334.i, %.preheader.us.i330.preheader.i
  %.06092.us.i.i = phi i32 [ %i.afm, %._crit_edge.us.i334.i ], [ 0, %.preheader.us.i330.preheader.i ]
  %.06191.us.i.i = phi i32 [ %.lcssa561, %._crit_edge.us.i334.i ], [ 0, %.preheader.us.i330.preheader.i ] ; 2 uses
  %.06489.us.i.i = phi i32 [ %.lcssa562, %._crit_edge.us.i334.i ], [ 0, %.preheader.us.i330.preheader.i ] ; 2 uses
  %.06688.us.i.i = phi i32 [ %.lcssa563, %._crit_edge.us.i334.i ], [ 0, %.preheader.us.i330.preheader.i ] ; 2 uses
  %.06887.us.i.i = phi i32 [ %.lcssa564, %._crit_edge.us.i334.i ], [ 0, %.preheader.us.i330.preheader.i ] ; 2 uses
  %.07186.us.i.i = phi ptr [ %i.afl, %._crit_edge.us.i334.i ], [ %i.lu, %.preheader.us.i330.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i330.i
  %i.adr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.06191.us.i.i, i64 0
  %i.ads = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.06489.us.i.i, i64 0
  %i.adt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.06688.us.i.i, i64 0
  %i.adu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.06887.us.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.adr, %vector.ph ], [ %i.aer, %vector.body ]
  %vec.phi574 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aes, %vector.body ]
  %vec.phi575 = phi <4 x i32> [ %i.ads, %vector.ph ], [ %i.aen, %vector.body ]
  %vec.phi576 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aeo, %vector.body ]
  %vec.phi577 = phi <4 x i32> [ %i.adt, %vector.ph ], [ %i.aej, %vector.body ]
  %vec.phi578 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aek, %vector.body ]
  %vec.phi579 = phi <4 x i32> [ %i.adu, %vector.ph ], [ %i.aeh, %vector.body ]
  %vec.phi580 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aei, %vector.body ]
  %i.adv = getelementptr inbounds nuw [2 x i8], ptr %.07186.us.i.i, i64 %index ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  %wide.load = load <4 x i16>, ptr %i.adv, align 2, !tbaa !85
  %wide.load581 = load <4 x i16>, ptr %i.adw, align 2, !tbaa !85
  %i.adx = zext <4 x i16> %wide.load to <4 x i32> ; 2 uses
  %i.ady = zext <4 x i16> %wide.load581 to <4 x i32> ; 2 uses
  %i.adz = lshr <4 x i32> %i.adx, %broadcast.splat
  %i.aea = lshr <4 x i32> %i.ady, %broadcast.splat
  %i.aeb = and <4 x i32> %i.adz, splat (i32 31)   ; 4 uses
  %i.aec = and <4 x i32> %i.aea, splat (i32 31)   ; 4 uses
  %i.aed = lshr <4 x i32> %i.adx, %broadcast.splat573
  %i.aee = lshr <4 x i32> %i.ady, %broadcast.splat573
  %i.aef = and <4 x i32> %i.aed, splat (i32 31)   ; 2 uses
  %i.aeg = and <4 x i32> %i.aee, splat (i32 31)   ; 2 uses
  %i.aeh = add <4 x i32> %i.aeb, %vec.phi579      ; 2 uses
  %i.aei = add <4 x i32> %i.aec, %vec.phi580      ; 2 uses
  %i.aej = add <4 x i32> %i.aef, %vec.phi577      ; 2 uses
  %i.aek = add <4 x i32> %i.aeg, %vec.phi578      ; 2 uses
  %i.ael = mul nuw nsw <4 x i32> %i.aeb, %i.aeb
  %i.aem = mul nuw nsw <4 x i32> %i.aec, %i.aec
  %i.aen = add <4 x i32> %i.ael, %vec.phi575      ; 2 uses
  %i.aeo = add <4 x i32> %i.aem, %vec.phi576      ; 2 uses
  %i.aep = mul nuw nsw <4 x i32> %i.aeb, %i.aef
  %i.aeq = mul nuw nsw <4 x i32> %i.aec, %i.aeg
  %i.aer = add <4 x i32> %i.aep, %vec.phi         ; 2 uses
  %i.aes = add <4 x i32> %i.aeq, %vec.phi574      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aet = icmp eq i64 %index.next, %n.vec
  br i1 %i.aet, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aes, %i.aer
  %i.aeu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx582 = add <4 x i32> %i.aeo, %i.aen
  %i.aev = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx582) ; 2 uses
  %bin.rdx583 = add <4 x i32> %i.aek, %i.aej
  %i.aew = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx583) ; 2 uses
  %bin.rdx584 = add <4 x i32> %i.aei, %i.aeh
  %i.aex = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx584) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i334.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i330.i, %middle.block
  %indvars.iv.i331.i.ph = phi i64 [ 0, %.preheader.us.i330.i ], [ %n.vec, %middle.block ]
  %.180.us.i.i.ph = phi i32 [ %.06191.us.i.i, %.preheader.us.i330.i ], [ %i.aeu, %middle.block ]
  %.16578.us.i.i.ph = phi i32 [ %.06489.us.i.i, %.preheader.us.i330.i ], [ %i.aev, %middle.block ]
  %.16777.us.i.i.ph = phi i32 [ %.06688.us.i.i, %.preheader.us.i330.i ], [ %i.aew, %middle.block ]
  %.16976.us.i.i.ph = phi i32 [ %.06887.us.i.i, %.preheader.us.i330.i ], [ %i.aex, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i331.i = phi i64 [ %indvars.iv.next.i332.i, %scalar.ph ], [ %indvars.iv.i331.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.180.us.i.i = phi i32 [ %i.afk, %scalar.ph ], [ %.180.us.i.i.ph, %scalar.ph.preheader ]
  %.16578.us.i.i = phi i32 [ %i.afi, %scalar.ph ], [ %.16578.us.i.i.ph, %scalar.ph.preheader ]
  %.16777.us.i.i = phi i32 [ %i.afg, %scalar.ph ], [ %.16777.us.i.i.ph, %scalar.ph.preheader ]
  %.16976.us.i.i = phi i32 [ %i.aff, %scalar.ph ], [ %.16976.us.i.i.ph, %scalar.ph.preheader ]
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %.07186.us.i.i, i64 %indvars.iv.i331.i
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !85
  %i.afa = zext i16 %i.aez to i32                 ; 2 uses
  %i.afb = lshr i32 %i.afa, %i.adg
  %i.afc = and i32 %i.afb, 31                     ; 4 uses
  %i.afd = lshr i32 %i.afa, %i.adq
  %i.afe = and i32 %i.afd, 31                     ; 2 uses
  %i.aff = add nsw i32 %i.afc, %.16976.us.i.i     ; 2 uses
  %i.afg = add nsw i32 %i.afe, %.16777.us.i.i     ; 2 uses
  %i.afh = mul nuw nsw i32 %i.afc, %i.afc
  %i.afi = add nsw i32 %i.afh, %.16578.us.i.i     ; 2 uses
  %i.afj = mul nuw nsw i32 %i.afc, %i.afe
  %i.afk = add nsw i32 %i.afj, %.180.us.i.i       ; 2 uses
  %indvars.iv.next.i332.i = add nuw nsw i64 %indvars.iv.i331.i, 1 ; 2 uses
  %exitcond.not.i333.i = icmp eq i64 %indvars.iv.next.i332.i, %wide.trip.count.i329.i
  br i1 %exitcond.not.i333.i, label %._crit_edge.us.i334.i, label %scalar.ph, !llvm.loop !45

._crit_edge.us.i334.i:                            ; preds = %scalar.ph, %middle.block
  %.lcssa564 = phi i32 [ %i.aex, %middle.block ], [ %i.aff, %scalar.ph ] ; 2 uses
  %.lcssa563 = phi i32 [ %i.aew, %middle.block ], [ %i.afg, %scalar.ph ] ; 2 uses
  %.lcssa562 = phi i32 [ %i.aev, %middle.block ], [ %i.afi, %scalar.ph ] ; 2 uses
  %.lcssa561 = phi i32 [ %i.aeu, %middle.block ], [ %i.afk, %scalar.ph ] ; 2 uses
  %i.afl = getelementptr inbounds [2 x i8], ptr %.07186.us.i.i, i64 %i.bq
  %i.afm = add nuw nsw i32 %.06092.us.i.i, 1      ; 2 uses
  %exitcond109.not.i.i = icmp eq i32 %i.afm, %.sroa.43.3.i
  br i1 %exitcond109.not.i.i, label %._crit_edge93.loopexit.i.i, label %.preheader.us.i330.i, !llvm.loop !46

._crit_edge93.loopexit.i.i:                       ; preds = %._crit_edge.us.i334.i
  %i.afn = mul nsw i32 %.lcssa562, %i.lv
  br label %._crit_edge93.i.i

._crit_edge93.i.i:                                ; preds = %._crit_edge93.loopexit.i.i, %.preheader.lr.ph.i327.i, %.preheader75.i.i
  %.068.lcssa.i.i = phi i32 [ 0, %.preheader75.i.i ], [ %.lcssa564, %._crit_edge93.loopexit.i.i ], [ 0, %.preheader.lr.ph.i327.i ] ; 4 uses
  %.066.lcssa.i.i = phi i32 [ 0, %.preheader75.i.i ], [ %.lcssa563, %._crit_edge93.loopexit.i.i ], [ 0, %.preheader.lr.ph.i327.i ] ; 2 uses
  %.064.lcssa.i.i = phi i32 [ 0, %.preheader75.i.i ], [ %i.afn, %._crit_edge93.loopexit.i.i ], [ 0, %.preheader.lr.ph.i327.i ] ; 2 uses
  %.061.lcssa.i.i = phi i32 [ 0, %.preheader75.i.i ], [ %.lcssa561, %._crit_edge93.loopexit.i.i ], [ 0, %.preheader.lr.ph.i327.i ]
  %i.afo = mul nsw i32 %.068.lcssa.i.i, %.068.lcssa.i.i ; 2 uses
  %i.afp = icmp eq i32 %.064.lcssa.i.i, %i.afo
  br i1 %i.afp, label %leastsquares.exit.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge93.i.i
  %i.afq = sub nsw i32 %.064.lcssa.i.i, %i.afo
  %i.afr = mul nsw i32 %.066.lcssa.i.i, %.068.lcssa.i.i
  %i.afs = sub nsw i32 %i.afr, %.061.lcssa.i.i
  %i.aft = sdiv i32 %i.afs, %i.afq                ; 3 uses
  %i.afu = mul nsw i32 %i.aft, %i.adh             ; 2 uses
  %i.afv = mul nsw i32 %i.aft, %i.adi             ; 2 uses
  %.not192.i = icmp sgt i32 %i.afu, %i.afv
  br i1 %.not192.i, label %bb.bj, label %bb.bk

leastsquares.exit.i:                              ; preds = %._crit_edge93.i.i, %bb.bh
  %i.afw = load i16, ptr %i.lu, align 2, !tbaa !85
  %i.afx = zext i16 %i.afw to i32
  %i.afy = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.afz = mul nuw nsw i32 %i.afy, 5
  %i.aga = lshr i32 %i.afx, %i.afz
  %i.agb = trunc i32 %i.aga to i8
  %i.agc = and i8 %i.agb, 31                      ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.agc, ptr %i.agd, align 1, !tbaa !72
  %i.age = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.agc, ptr %i.age, align 1, !tbaa !72
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 737) #8
  tail call void @abort() #9
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.agf = mul nsw i32 %i.aft, %.068.lcssa.i.i
  %i.agg = sub nsw i32 %.066.lcssa.i.i, %i.agf
  %i.agh = sdiv i32 %i.agg, %i.lv
  %i.agi = add nsw i32 %i.agh, 1                  ; 2 uses
  %i.agj = add i32 %i.agi, %i.afv
  %i.agk = add i32 %i.agi, %i.afu
  %4 = tail call i32 @llvm.smax.i32(i32 %i.agk, i32 0)
  %.0.i197157.i = tail call i32 @llvm.umin.i32(i32 %4, i32 255) ; 3 uses
  %i.agl = trunc nuw i32 %.0.i197157.i to i8
  %5 = tail call i32 @llvm.smax.i32(i32 %i.agj, i32 0)
  %.0.i158.i = tail call i32 @llvm.umin.i32(i32 %5, i32 255) ; 2 uses
  %i.agm = trunc nuw i32 %.0.i158.i to i8
  br i1 %i.lw, label %.preheader.lr.ph.i336.i, label %calc_lsq_max_fit_error.exit.thread.i

.preheader.lr.ph.i336.i:                          ; preds = %bb.bk
  %i.agn = sub nsw i32 %.0.i158.i, %.0.i197157.i  ; 2 uses
  %i.ago = add nuw nsw i32 %.0.i197157.i, 1       ; 2 uses
  br i1 %i.lx, label %.preheader.us.i339.preheader.i, label %calc_lsq_max_fit_error.exit360.i

.preheader.us.i339.preheader.i:                   ; preds = %.preheader.lr.ph.i336.i
  %i.agp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.agq = mul nuw nsw i32 %i.agp, 5              ; 2 uses
  br label %.preheader.us.i339.i

.preheader.us.i339.i:                             ; preds = %._crit_edge.us.i343.i, %.preheader.us.i339.preheader.i
  %.063.us.i.i = phi i32 [ %.3.us.i.i, %._crit_edge.us.i343.i ], [ 0, %.preheader.us.i339.preheader.i ]
  %.05062.us.i.i = phi i32 [ %i.ahr, %._crit_edge.us.i343.i ], [ 0, %.preheader.us.i339.preheader.i ]
  %.05161.us.i.i = phi ptr [ %i.ahq, %._crit_edge.us.i343.i ], [ %i.lu, %.preheader.us.i339.preheader.i ] ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.preheader.us.i339.i
  %indvars.iv.i340.i = phi i64 [ 0, %.preheader.us.i339.i ], [ %indvars.iv.next.i341.i, %bb.bl ] ; 2 uses
  %.160.us.i.i = phi i32 [ %.063.us.i.i, %.preheader.us.i339.i ], [ %.3.us.i.i, %bb.bl ]
  %i.agr = getelementptr inbounds nuw [2 x i8], ptr %.05161.us.i.i, i64 %indvars.iv.i340.i
  %i.ags = load i16, ptr %i.agr, align 2, !tbaa !85
  %i.agt = zext i16 %i.ags to i32                 ; 2 uses
  %i.agu = lshr i32 %i.agt, %i.adg
  %i.agv = and i32 %i.agu, 31                     ; 2 uses
  %i.agw = lshr i32 %i.agt, %i.agq
  %i.agx = and i32 %i.agw, 31
  %i.agy = sub nsw i32 %i.agv, %i.adh
  %i.agz = mul nsw i32 %i.agy, 3
  %i.aha = sdiv i32 %i.agz, %i.adj
  %i.ahb = tail call i32 @llvm.smax.i32(i32 %i.aha, i32 -1)
  %i.ahc = tail call i32 @llvm.smin.i32(i32 %i.ahb, i32 2)
  %i.ahd = add nsw i32 %i.ahc, 1                  ; 2 uses
  %i.ahe = mul nsw i32 %i.ahd, %i.agn
  %i.ahf = sdiv i32 %i.ahe, 3
  %i.ahg = sub nsw i32 %i.ago, %i.agx
  %i.ahh = add nsw i32 %i.ahg, %i.ahf
  %i.ahi = tail call i32 @llvm.abs.i32(i32 %i.ahh, i1 true)
  %.2.us.i.i = tail call i32 @llvm.smax.i32(i32 %i.ahi, i32 %.160.us.i.i) ; 2 uses
  %i.ahj = mul nsw i32 %i.ahd, %i.adj
  %i.ahk = sdiv i32 %i.ahj, 3
  %i.ahl = sub nsw i32 %i.adk, %i.agv
  %i.ahm = add nsw i32 %i.ahl, %i.ahk
  %i.ahn = tail call i32 @llvm.abs.i32(i32 %i.ahm, i1 true) ; 2 uses
  %i.aho = icmp samesign ugt i32 %i.ahn, %.2.us.i.i
  %i.ahp = select i1 %i.aho, i32 %i.ahn, i32 0
  %.3.us.i.i = add nuw nsw i32 %i.ahp, %.2.us.i.i ; 3 uses
  %indvars.iv.next.i341.i = add nuw nsw i64 %indvars.iv.i340.i, 1 ; 2 uses
  %exitcond.not.i342.i = icmp eq i64 %indvars.iv.next.i341.i, %wide.trip.count.i329.i
  br i1 %exitcond.not.i342.i, label %._crit_edge.us.i343.i, label %bb.bl, !llvm.loop !47

._crit_edge.us.i343.i:                            ; preds = %bb.bl
  %i.ahq = getelementptr inbounds [2 x i8], ptr %.05161.us.i.i, i64 %i.bq
  %i.ahr = add nuw nsw i32 %.05062.us.i.i, 1      ; 2 uses
  %exitcond68.not.i.i = icmp eq i32 %i.ahr, %.sroa.43.3.i
  br i1 %exitcond68.not.i.i, label %calc_lsq_max_fit_error.exit.i, label %.preheader.us.i339.i, !llvm.loop !48

calc_lsq_max_fit_error.exit.i:                    ; preds = %._crit_edge.us.i343.i
  %.not157.i = icmp sgt i32 %.3.us.i.i, %.0159261.i
  br i1 %.not157.i, label %.preheader.us.i348.i, label %calc_lsq_max_fit_error.exit360.i

calc_lsq_max_fit_error.exit.thread.i:             ; preds = %bb.bk
  %spec.select.i46 = tail call i32 @llvm.smax.i32(i32 %.0159261.i, i32 0)
  br label %calc_lsq_max_fit_error.exit360.i

.preheader.us.i348.i:                             ; preds = %calc_lsq_max_fit_error.exit.i, %._crit_edge.us.i358.i
  %.063.us.i349.i = phi i32 [ %.3.us.i355.i, %._crit_edge.us.i358.i ], [ 0, %calc_lsq_max_fit_error.exit.i ]
  %.05062.us.i350.i = phi i32 [ %i.ais, %._crit_edge.us.i358.i ], [ 0, %calc_lsq_max_fit_error.exit.i ]
  %.05161.us.i351.i = phi ptr [ %i.air, %._crit_edge.us.i358.i ], [ %i.lu, %calc_lsq_max_fit_error.exit.i ] ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.preheader.us.i348.i
  %indvars.iv.i352.i = phi i64 [ 0, %.preheader.us.i348.i ], [ %indvars.iv.next.i356.i, %bb.bm ] ; 2 uses
  %.160.us.i353.i = phi i32 [ %.063.us.i349.i, %.preheader.us.i348.i ], [ %.3.us.i355.i, %bb.bm ]
  %i.ahs = getelementptr inbounds nuw [2 x i8], ptr %.05161.us.i351.i, i64 %indvars.iv.i352.i
  %i.aht = load i16, ptr %i.ahs, align 2, !tbaa !85
  %i.ahu = zext i16 %i.aht to i32                 ; 2 uses
  %i.ahv = lshr i32 %i.ahu, %i.adg
  %i.ahw = and i32 %i.ahv, 31                     ; 2 uses
  %i.ahx = lshr i32 %i.ahu, %i.agq
  %i.ahy = and i32 %i.ahx, 31
  %i.ahz = sub nsw i32 %i.ahw, %i.adh
  %i.aia = mul nsw i32 %i.ahz, 3
  %i.aib = sdiv i32 %i.aia, %i.adj
  %i.aic = tail call i32 @llvm.smax.i32(i32 %i.aib, i32 -1)
  %i.aid = tail call i32 @llvm.smin.i32(i32 %i.aic, i32 2)
  %i.aie = add nsw i32 %i.aid, 1                  ; 2 uses
  %i.aif = mul nsw i32 %i.aie, %i.agn
  %i.aig = sdiv i32 %i.aif, 3
  %i.aih = sub nsw i32 %i.ago, %i.ahy
  %i.aii = add nsw i32 %i.aih, %i.aig
  %i.aij = tail call i32 @llvm.abs.i32(i32 %i.aii, i1 true)
  %.2.us.i354.i = tail call i32 @llvm.smax.i32(i32 %i.aij, i32 %.160.us.i353.i) ; 2 uses
  %i.aik = mul nsw i32 %i.aie, %i.adj
  %i.ail = sdiv i32 %i.aik, 3
  %i.aim = sub nsw i32 %i.adk, %i.ahw
  %i.ain = add nsw i32 %i.aim, %i.ail
  %i.aio = tail call i32 @llvm.abs.i32(i32 %i.ain, i1 true) ; 2 uses
  %i.aip = icmp samesign ugt i32 %i.aio, %.2.us.i354.i
  %i.aiq = select i1 %i.aip, i32 %i.aio, i32 0
  %.3.us.i355.i = add nuw nsw i32 %i.aiq, %.2.us.i354.i ; 3 uses
  %indvars.iv.next.i356.i = add nuw nsw i64 %indvars.iv.i352.i, 1 ; 2 uses
  %exitcond.not.i357.i = icmp eq i64 %indvars.iv.next.i356.i, %wide.trip.count.i329.i
  br i1 %exitcond.not.i357.i, label %._crit_edge.us.i358.i, label %bb.bm, !llvm.loop !47

._crit_edge.us.i358.i:                            ; preds = %bb.bm
  %i.air = getelementptr inbounds [2 x i8], ptr %.05161.us.i351.i, i64 %i.bq
  %i.ais = add nuw nsw i32 %.05062.us.i350.i, 1   ; 2 uses
  %exitcond68.not.i359.i = icmp eq i32 %i.ais, %.sroa.43.3.i
  br i1 %exitcond68.not.i359.i, label %calc_lsq_max_fit_error.exit360.i, label %.preheader.us.i348.i, !llvm.loop !48

calc_lsq_max_fit_error.exit360.i:                 ; preds = %._crit_edge.us.i358.i, %calc_lsq_max_fit_error.exit.thread.i, %calc_lsq_max_fit_error.exit.i, %.preheader.lr.ph.i336.i
  %i.ait = phi i32 [ %spec.select.i46, %calc_lsq_max_fit_error.exit.thread.i ], [ %.0159261.i, %calc_lsq_max_fit_error.exit.i ], [ %.0159261.i, %.preheader.lr.ph.i336.i ], [ %.3.us.i355.i, %._crit_edge.us.i358.i ]
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.agl, ptr %i.aiu, align 1, !tbaa !72
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.agm, ptr %i.aiv, align 1, !tbaa !72
  br label %bb.bn

bb.bn:                                            ; preds = %calc_lsq_max_fit_error.exit360.i, %leastsquares.exit.i, %bb.bg
  %.1.i = phi i32 [ %.0159261.i, %bb.bg ], [ %.0159261.i, %leastsquares.exit.i ], [ %i.ait, %calc_lsq_max_fit_error.exit360.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond337.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond337.not.i, label %bb.bo, label %bb.bf, !llvm.loop !49

bb.bo:                                            ; preds = %bb.bn
  %i.aiw = load i32, ptr %i.bx, align 4, !tbaa !88
  %i.aix = icmp sgt i32 %.1.i, %i.aiw
  br i1 %i.aix, label %get_block_info.exit368.i, label %bb.cw

get_block_info.exit368.i:                         ; preds = %bb.bo
  %i.aiy = sdiv i32 %.1176.i, %i.ay               ; 7 uses
  %i.aiz = srem i32 %.1176.i, %i.ay               ; 7 uses
  %i.aja = icmp ne i32 %i.aiz, %i.bk
  %i.ajb = icmp ne i32 %i.aiy, %i.bl
  %or.cond.i363.i = or i1 %.not24.i213.i, %i.ajb
  %.not25.i365.i = icmp eq i32 %.1176.i, 0        ; 2 uses
  %i.ajc = mul nsw i32 %i.aiy, %i.be
  %i.ajd = add i32 %i.ajc, %i.aiz
  %i.aje = shl i32 %i.ajd, 2
  %i.ajf = select i1 %.not25.i365.i, i32 0, i32 %i.aje ; 4 uses
  %or.cond155.i = or i1 %.not.i226.i, %i.aja
  %.sink.i369.i = select i1 %or.cond155.i, i32 4, i32 %i.bn ; 3 uses
  %.sink29.i372.i = select i1 %or.cond.i363.i, i32 4, i32 %i.bm ; 3 uses
  %i.ajg = mul nsw i32 %i.aiy, %i.bh
  %i.ajh = add i32 %i.ajg, %i.aiz
  %i.aji = shl i32 %i.ajh, 2
  %i.ajj = select i1 %.not25.i365.i, i32 0, i32 %i.aji ; 3 uses
  %i.ajk = shl nsw i32 %i.aiy, 2
  %i.ajl = sub nsw i32 %i.ba, %i.ajk              ; 5 uses
  %i.ajm = tail call i32 @llvm.smin.i32(i32 %i.ajl, i32 4) ; 2 uses
  %i.ajn = shl nsw i32 %i.aiz, 2
  %i.ajo = sub i32 %i.aw, %i.ajn                  ; 3 uses
  %i.ajp = tail call i32 @llvm.smin.i32(i32 %i.ajo, i32 4) ; 5 uses
  %i.ajq = icmp sgt i32 %i.ajl, 0
  br i1 %i.ajq, label %.preheader166.lr.ph.i, label %get_block_info.exit368.i..preheader.preheader.i_crit_edge

get_block_info.exit368.i..preheader.preheader.i_crit_edge: ; preds = %get_block_info.exit368.i
  %.pre350.i.pre.a = load i32, ptr %i.r, align 8, !tbaa !71
  %.pre351.i.pre.a = load i32, ptr %i.ac, align 4, !tbaa !70
  br label %.preheader.preheader.i

.preheader166.lr.ph.i:                            ; preds = %get_block_info.exit368.i
  %i.ajr = sext i32 %i.ajf to i64                 ; 2 uses
  %i.ajs = getelementptr inbounds [2 x i8], ptr %.val, i64 %i.ajr
  %i.ajt = icmp sgt i32 %i.ajo, 0
  %i.aju = icmp slt i32 %i.ajo, 4
  %wide.trip.count.i = zext nneg i32 %i.ajp to i64
  %.pre348.i.pre.pre = load i32, ptr %i.r, align 8, !tbaa !71
  %.pre349.i.pre.pre = load i32, ptr %i.ac, align 4, !tbaa !70
  br label %.preheader166.i

.preheader167.i.a:                                ; preds = %._crit_edge.i
  %i.ajv = icmp slt i32 %i.ajl, 4
  br i1 %i.ajv, label %.preheader.preheader.i, label %.lr.ph.i401.preheader.i

.preheader.preheader.i:                           ; preds = %get_block_info.exit368.i..preheader.preheader.i_crit_edge, %.preheader167.i.a
  %.pre351.i = phi i32 [ %.pre351.i.pre.a, %get_block_info.exit368.i..preheader.preheader.i_crit_edge ], [ %.pre351.i356, %.preheader167.i.a ] ; 3 uses
  %.pre350.i = phi i32 [ %.pre350.i.pre.a, %get_block_info.exit368.i..preheader.preheader.i_crit_edge ], [ %.pre350.i354, %.preheader167.i.a ] ; 2 uses
  %i.ajw = icmp sgt i32 %.pre351.i, 16
  br i1 %i.ajw, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %.preheader.preheader.i
  %i.ajx = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.ajy = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.ajz = ptrtoint ptr %i.ajx to i64
  %i.aka = ptrtoint ptr %i.ajy to i64
  %i.akb = sub i64 %i.ajz, %i.aka
  %i.akc = icmp ugt i64 %i.akb, 3
  br i1 %i.akc, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.8) #8
  br label %put_bits.exit388.i.peel

bb.br:                                            ; preds = %bb.bp
  %i.akd = shl i32 %.pre350.i, %.pre351.i
  %i.ake = tail call i32 @llvm.bswap.i32(i32 %i.akd)
  store i32 %i.ake, ptr %i.ajy, align 1, !tbaa !72
  %i.akf = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 4
  store ptr %i.akg, ptr %i.ab, align 8, !tbaa !69
  br label %put_bits.exit388.i.peel

bb.bs:                                            ; preds = %.preheader.preheader.i
  %i.akh = shl i32 %.pre350.i, 16
  br label %put_bits.exit388.i.peel

put_bits.exit388.i.peel:                          ; preds = %bb.bs, %bb.br, %bb.bq
  %.sink476.i.peel = phi i32 [ -16, %bb.bs ], [ 16, %bb.bq ], [ 16, %bb.br ]
  %.026.i.i386.i.peel = phi i32 [ %i.akh, %bb.bs ], [ 0, %bb.bq ], [ 0, %bb.br ] ; 2 uses
  %i.aki = add nsw i32 %.sink476.i.peel, %.pre351.i ; 4 uses
  store i32 %.026.i.i386.i.peel, ptr %i.r, align 8, !tbaa !71
  store i32 %i.aki, ptr %i.ac, align 4, !tbaa !70
  %i.akj = icmp sgt i32 %i.aki, 16
  br i1 %i.akj, label %put_bits.exit388.1.i.peel, label %bb.bt

bb.bt:                                            ; preds = %put_bits.exit388.i.peel
  %i.akk = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.akl = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.akm = ptrtoint ptr %i.akk to i64
  %i.akn = ptrtoint ptr %i.akl to i64
  %i.ako = sub i64 %i.akm, %i.akn
  %i.akp = icmp ugt i64 %i.ako, 3
  br i1 %i.akp, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.8) #8
  br label %put_bits.exit388.1.i.peel

bb.bv:                                            ; preds = %bb.bt
  %i.akq = shl i32 %.026.i.i386.i.peel, %i.aki
  %i.akr = tail call i32 @llvm.bswap.i32(i32 %i.akq)
  store i32 %i.akr, ptr %i.akl, align 1, !tbaa !72
  %i.aks = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 4
  store ptr %i.akt, ptr %i.ab, align 8, !tbaa !69
  br label %put_bits.exit388.1.i.peel

put_bits.exit388.1.i.peel:                        ; preds = %bb.bv, %bb.bu, %put_bits.exit388.i.peel
  %.sink477.i.peel = phi i32 [ 16, %bb.bu ], [ 16, %bb.bv ], [ -16, %put_bits.exit388.i.peel ]
  %i.aku = add nsw i32 %.sink477.i.peel, %i.aki   ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !71
  store i32 %i.aku, ptr %i.ac, align 4, !tbaa !70
  %i.akv = icmp sgt i32 %i.aku, 16
  br i1 %i.akv, label %put_bits.exit388.2.i.peel, label %bb.bw

bb.bw:                                            ; preds = %put_bits.exit388.1.i.peel
  %i.akw = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.akx = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.aky = ptrtoint ptr %i.akw to i64
  %i.akz = ptrtoint ptr %i.akx to i64
  %i.ala = sub i64 %i.aky, %i.akz
  %i.alb = icmp ugt i64 %i.ala, 3
  br i1 %i.alb, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.8) #8
  br label %put_bits.exit388.2.i.peel

bb.by:                                            ; preds = %bb.bw
  store i32 0, ptr %i.akx, align 1, !tbaa !72
  %i.alc = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 4
  store ptr %i.ald, ptr %i.ab, align 8, !tbaa !69
  br label %put_bits.exit388.2.i.peel

put_bits.exit388.2.i.peel:                        ; preds = %bb.by, %bb.bx, %put_bits.exit388.1.i.peel
  %.sink478.i.peel = phi i32 [ 16, %bb.bx ], [ 16, %bb.by ], [ -16, %put_bits.exit388.1.i.peel ]
  %i.ale = add nsw i32 %.sink478.i.peel, %i.aku   ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !71
  store i32 %i.ale, ptr %i.ac, align 4, !tbaa !70
  %i.alf = icmp sgt i32 %i.ale, 16
  br i1 %i.alf, label %put_bits.exit388.3.i.peel, label %bb.bz

bb.bz:                                            ; preds = %put_bits.exit388.2.i.peel
  %i.alg = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.alh = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.ali = ptrtoint ptr %i.alg to i64
  %i.alj = ptrtoint ptr %i.alh to i64
  %i.alk = sub i64 %i.ali, %i.alj
  %i.all = icmp ugt i64 %i.alk, 3
  br i1 %i.all, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.8) #8
  br label %put_bits.exit388.3.i.peel

bb.cb:                                            ; preds = %bb.bz
  store i32 0, ptr %i.alh, align 1, !tbaa !72
  %i.alm = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 4
  store ptr %i.aln, ptr %i.ab, align 8, !tbaa !69
  br label %put_bits.exit388.3.i.peel

put_bits.exit388.3.i.peel:                        ; preds = %bb.cb, %bb.ca, %put_bits.exit388.2.i.peel
  %.sink479.i.peel = phi i32 [ 16, %bb.ca ], [ 16, %bb.cb ], [ -16, %put_bits.exit388.2.i.peel ]
  %i.alo = add nsw i32 %.sink479.i.peel, %i.ale   ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !71
  store i32 %i.alo, ptr %i.ac, align 4, !tbaa !70
  %i.alp = add nsw i32 %i.ajm, 1                  ; 2 uses
  %exitcond346.not.i.peel = icmp eq i32 %i.alp, 4
  br i1 %exitcond346.not.i.peel, label %encode_four_color_block.exit.i, label %.preheader.i

.preheader166.i:                                  ; preds = %._crit_edge.i, %.preheader166.lr.ph.i
  %.pre349.i.pre = phi i32 [ %.pre349.i.pre.pre, %.preheader166.lr.ph.i ], [ %.pre351.i356, %._crit_edge.i ] ; 2 uses
  %.pre348.i.pre = phi i32 [ %.pre348.i.pre.pre, %.preheader166.lr.ph.i ], [ %.pre350.i354, %._crit_edge.i ] ; 2 uses
  %.0157266.i = phi i32 [ 0, %.preheader166.lr.ph.i ], [ %i.amo, %._crit_edge.i ]
  %.0158265.i = phi ptr [ %i.ajs, %.preheader166.lr.ph.i ], [ %i.amn, %._crit_edge.i ] ; 2 uses
  br i1 %i.ajt, label %.lr.ph.i, label %.lr.ph264.i.preheader

.lr.ph264.i.preheader:                            ; preds = %.preheader165.i, %.preheader166.i
  %.ph = phi i32 [ %.pre349.i.pre, %.preheader166.i ], [ %i.amm, %.preheader165.i ]
  %.ph664 = phi i32 [ %.pre348.i.pre, %.preheader166.i ], [ %.026.i.i378.i, %.preheader165.i ]
  br label %.lr.ph264.i

.preheader165.i:                                  ; preds = %put_bits.exit380.i
end_hunk_0
