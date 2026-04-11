begin_hunk_0_@DES_xcbc_encrypt:bb.a
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %.not = icmp eq i32 %7, 0
  %i.b = load <2 x i32>, ptr %5, align 1          ; 7 uses
  %8 = load <2 x i32>, ptr %6, align 1            ; 7 uses
  %i.c = load <2 x i32>, ptr %4, align 1          ; 7 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@DES_xcbc_encrypt:bb.a
  br i1 %i.bl, label %.lr.ph320, label %._crit_edge321

.lr.ph320:                                        ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %9 = extractelement <2 x i32> %i.c, i64 0
  %10 = extractelement <2 x i32> %i.c, i64 1
  %11 = extractelement <2 x i32> %8, i64 0
  %12 = extractelement <2 x i32> %8, i64 1
  %13 = extractelement <2 x i32> %i.b, i64 0
  %14 = extractelement <2 x i32> %i.b, i64 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph320, %bb.m
  %.1.in318 = phi i64 [ %2, %.lr.ph320 ], [ %.1, %bb.m ] ; 2 uses
  %.8317 = phi ptr [ %0, %.lr.ph320 ], [ %19, %bb.m ] ; 3 uses
  %.0274316 = phi i32 [ %10, %.lr.ph320 ], [ %18, %bb.m ]
  %.0276315 = phi i32 [ %9, %.lr.ph320 ], [ %15, %bb.m ]
  %.1295314 = phi ptr [ %1, %.lr.ph320 ], [ %i.bn, %bb.m ] ; 3 uses
  %.1 = add nsw i64 %.1.in318, -8                 ; 2 uses
  %15 = load i32, ptr %.8317, align 1             ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %.8317, i64 4
  %17 = xor i32 %15, %11
  store i32 %17, ptr %i.a, align 8, !tbaa !5
  %18 = load i32, ptr %16, align 1                ; 3 uses
  %19 = getelementptr inbounds nuw i8, ptr %.8317, i64 8 ; 2 uses
  %20 = xor i32 %18, %12
  store i32 %20, ptr %i.bm, align 4, !tbaa !5
  call void @DES_encrypt1(ptr noundef nonnull %i.a, ptr noundef %3, i32 noundef 0) #3
  %21 = load i32, ptr %i.a, align 8, !tbaa !5
  %22 = xor i32 %.0276315, %21
  %23 = xor i32 %22, %13
  %24 = load i32, ptr %i.bm, align 4, !tbaa !5
  %25 = xor i32 %.0274316, %24
  %26 = xor i32 %25, %14
  store i32 %23, ptr %.1295314, align 1
  %27 = getelementptr inbounds nuw i8, ptr %.1295314, i64 4
  store i32 %26, ptr %27, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.1295314, i64 8 ; 2 uses
  %i.bo = icmp samesign ugt i64 %.1.in318, 16
  br i1 %i.bo, label %bb.m, label %._crit_edge321.thread, !llvm.loop !12

._crit_edge321:                                   ; preds = %bb.l
  %.not303 = icmp eq i64 %2, 0
end_hunk_1
begin_hunk_2_@DES_xcbc_encrypt:bb.a
  %i.bq = extractelement <2 x i32> %i.c, i64 1    ; 2 uses
  br i1 %.not303, label %bb.v, label %._crit_edge321.thread

._crit_edge321.thread:                            ; preds = %bb.m, %._crit_edge321
  %.1.in.lcssa348 = phi i64 [ %2, %._crit_edge321 ], [ %.1, %bb.m ] ; 2 uses
  %.8.lcssa347 = phi ptr [ %0, %._crit_edge321 ], [ %19, %bb.m ] ; 2 uses
  %.0274.lcssa346 = phi i32 [ %i.bq, %._crit_edge321 ], [ %18, %bb.m ]
  %.0276.lcssa345 = phi i32 [ %i.bp, %._crit_edge321 ], [ %15, %bb.m ]
  %.1295.lcssa344 = phi ptr [ %1, %._crit_edge321 ], [ %i.bn, %bb.m ]
  %i.br = load i32, ptr %.8.lcssa347, align 1     ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.lcssa347, i64 4
  %i.bt = extractelement <2 x i32> %8, i64 0
end_hunk_2
