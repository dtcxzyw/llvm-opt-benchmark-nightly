begin_hunk_0_@DES_xcbc_encrypt:bb.a
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %8 = load <2 x i32>, ptr %6, align 1            ; 7 uses
  %.not = icmp eq i32 %7, 0
  %i.b = load <2 x i32>, ptr %5, align 1          ; 6 uses
  %i.c = load <2 x i32>, ptr %4, align 1          ; 6 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@DES_xcbc_encrypt:bb.a
  br i1 %i.bl, label %.lr.ph320, label %._crit_edge321

.lr.ph320:                                        ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph320, %bb.m
  %.1.in318 = phi i64 [ %2, %.lr.ph320 ], [ %.1, %bb.m ] ; 2 uses
  %.8317 = phi ptr [ %0, %.lr.ph320 ], [ %10, %bb.m ] ; 2 uses
  %.1295314 = phi ptr [ %1, %.lr.ph320 ], [ %i.bn, %bb.m ] ; 2 uses
  %9 = phi <2 x i32> [ %i.c, %.lr.ph320 ], [ %11, %bb.m ]
  %.1 = add nsw i64 %.1.in318, -8                 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.8317, i64 8 ; 2 uses
  %11 = load <2 x i32>, ptr %.8317, align 1       ; 5 uses
  %foldExtExtBinop = xor <2 x i32> %11, %8
  %12 = extractelement <2 x i32> %foldExtExtBinop, i64 0
  store i32 %12, ptr %i.a, align 8, !tbaa !5
  %foldExtExtBinop364 = xor <2 x i32> %11, %8
  %13 = extractelement <2 x i32> %foldExtExtBinop364, i64 1
  store i32 %13, ptr %i.bm, align 4, !tbaa !5
  call void @DES_encrypt1(ptr noundef nonnull %i.a, ptr noundef %3, i32 noundef 0) #3
  %14 = load <2 x i32>, ptr %i.a, align 8, !tbaa !5
  %15 = xor <2 x i32> %9, %14
  %16 = xor <2 x i32> %15, %i.b
  store <2 x i32> %16, ptr %.1295314, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.1295314, i64 8 ; 2 uses
  %i.bo = icmp samesign ugt i64 %.1.in318, 16
  br i1 %i.bo, label %bb.m, label %._crit_edge321.thread.loopexit, !llvm.loop !12

._crit_edge321:                                   ; preds = %bb.l
  %.not303 = icmp eq i64 %2, 0
end_hunk_1
begin_hunk_2_@DES_xcbc_encrypt:bb.a
  %i.bq = extractelement <2 x i32> %i.c, i64 1    ; 2 uses
  br i1 %.not303, label %bb.v, label %._crit_edge321.thread

._crit_edge321.thread.loopexit:                   ; preds = %bb.m
  %17 = extractelement <2 x i32> %11, i64 1
  %18 = extractelement <2 x i32> %11, i64 0
  br label %._crit_edge321.thread

._crit_edge321.thread:                            ; preds = %._crit_edge321.thread.loopexit, %._crit_edge321
  %.1.in.lcssa348 = phi i64 [ %2, %._crit_edge321 ], [ %.1, %._crit_edge321.thread.loopexit ] ; 2 uses
  %.8.lcssa347 = phi ptr [ %0, %._crit_edge321 ], [ %10, %._crit_edge321.thread.loopexit ] ; 2 uses
  %.0274.lcssa346 = phi i32 [ %i.bq, %._crit_edge321 ], [ %17, %._crit_edge321.thread.loopexit ]
  %.0276.lcssa345 = phi i32 [ %i.bp, %._crit_edge321 ], [ %18, %._crit_edge321.thread.loopexit ]
  %.1295.lcssa344 = phi ptr [ %1, %._crit_edge321 ], [ %i.bn, %._crit_edge321.thread.loopexit ]
  %i.br = load i32, ptr %.8.lcssa347, align 1     ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.lcssa347, i64 4
  %i.bt = extractelement <2 x i32> %8, i64 0
end_hunk_2
