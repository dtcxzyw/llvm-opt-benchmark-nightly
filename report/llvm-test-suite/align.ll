begin_hunk_0
  %i.cw = add i32 %reass.sub, 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2                    ; 2 uses
  %i.cz = tail call ptr @xmalloc(i64 noundef %i.cy) #11 ; 4 uses
  %i.da = ptrtoaddr ptr %i.cz to i64
  %i.db = sext i32 %. to i64
  %i.dc = sub nsw i64 0, %i.db                    ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dc ; 6 uses
  %i.de = tail call ptr @xmalloc(i64 noundef %i.cy) #11 ; 3 uses
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dc ; 3 uses
  %.not482 = icmp sgt i32 %., %i.cq
end_hunk_0
begin_hunk_1
  %i.gq = add i32 %reass.sub521, 1
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl nsw i64 %i.gr, 2                    ; 2 uses
  %i.gt = tail call ptr @xmalloc(i64 noundef %i.gs) #11 ; 4 uses
  %i.gu = ptrtoaddr ptr %i.gt to i64
  %i.gv = sext i32 %i.ct to i64                   ; 3 uses
  %i.gw = sub nsw i64 0, %i.gv                    ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.gw ; 7 uses
  %i.gy = tail call ptr @xmalloc(i64 noundef %i.gs) #11 ; 3 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.gw ; 3 uses
  %.not394496 = icmp sgt i32 %i.ct, %i.cv
end_hunk_1
begin_hunk_2
  %i.lg = tail call i32 @llvm.smax.i32(i32 %., i32 %i.ct) ; 2 uses
  %i.lh = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cv) ; 2 uses
  %.not396513 = icmp sgt i32 %i.lg, %i.lh
  br i1 %.not396513, label %.loopexit, label %.lr.ph516.preheader

.lr.ph516.preheader:                              ; preds = %._crit_edge512
  %i.li = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.cn)
end_hunk_2
begin_hunk_3
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %indvars.iv563
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !4  ; 3 uses
  %.not397 = icmp slt i32 %i.lo, %i.lq
  br i1 %.not397, label %bb.bb, label %11

11:                                               ; preds = %.lr.ph516
  %12 = trunc nsw i64 %indvars.iv563 to i32
  %13 = sub nsw i32 %i.lo, %2
  %14 = sub nsw i32 %4, %i.lq
  %.not398 = icmp slt i32 %13, %14
  %.418 = select i1 %.not398, i32 %i.lq, i32 %i.lo ; 2 uses
  %.0349 = add nsw i32 %.418, %12
  br label %.loopexit

bb.bb:                                            ; preds = %.lr.ph516
  %indvars.iv.next564 = add nsw i64 %indvars.iv563, 1 ; 2 uses
  %lftr.wideiv565 = trunc i64 %indvars.iv.next564 to i32
  %exitcond566.not = icmp eq i32 %i.lm, %lftr.wideiv565
  br i1 %exitcond566.not, label %.loopexit, label %.lr.ph516, !llvm.loop !33

.loopexit:                                        ; preds = %bb.bb, %._crit_edge512, %11
  %.not396479 = phi i1 [ false, %11 ], [ true, %._crit_edge512 ], [ true, %bb.bb ]
  %.1351 = phi i32 [ %.418, %11 ], [ %2, %._crit_edge512 ], [ %2, %bb.bb ] ; 2 uses
  %.1 = phi i32 [ %.0349, %11 ], [ %3, %._crit_edge512 ], [ %3, %bb.bb ] ; 2 uses
  tail call void @free(ptr noundef %i.cz) #11
  tail call void @free(ptr noundef %i.gt) #11
  tail call void @free(ptr noundef %i.de) #11
  tail call void @free(ptr noundef %i.gy) #11
  br i1 %.not396479, label %._crit_edge517, label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  call void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.1351, i32 noundef %.1, i32 noundef %i.cj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %9, i32 noundef %10)
  call void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %.1351, i32 noundef %.1, i32 noundef %4, i32 noundef %5, i32 noundef %i.ck, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %9, i32 noundef %10)
  %i.lr = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.not400 = icmp eq ptr %i.lr, null
  %i.ls = load ptr, ptr %i.c, align 8, !tbaa !8   ; 4 uses
end_hunk_3
begin_hunk_4
  store ptr %i.ls, ptr %.val.pre, align 8, !tbaa !14
  br label %bb.be

._crit_edge517:                                   ; preds = %.loopexit
  %i.lt = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.lu = tail call i64 @fwrite(ptr nonnull @.str.1, i64 48, i64 1, ptr %i.lt) #12 ; 0 uses
  br label %bb.be
end_hunk_4
