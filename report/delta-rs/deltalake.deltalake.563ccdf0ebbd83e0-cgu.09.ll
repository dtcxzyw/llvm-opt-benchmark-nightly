begin_hunk_0
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [64 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.1040 = alloca [48 x i8], align 8         ; 3 uses
  %i.q = alloca [136 x i8], align 8               ; 8 uses
end_hunk_0
begin_hunk_1
bb.ab:                                            ; preds = %.noexc58.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10997)
  %i.co = getelementptr i8, ptr %i.ce, i64 -16
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !10997, !noalias !10974, !nonnull !4, !noundef !4 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.ce, i64 -8
  %.val5.i.i = load i64, ptr %i.cp, align 8, !alias.scope !10997, !noalias !10974, !noundef !4 ; 2 uses
  switch i64 %.val5.i.i, label %bb.ad [
    i64 0, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs6Po7BT7Nknu_5alloc6string6StringE6map_orjNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB1C_22DeltaFileSystemHandler18open_output_stream0EB1E_.exit.thread.i
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load i8, ptr %.val.i.i, align 1, !alias.scope !11000, !noalias !11003, !noundef !4
  switch i8 %i.cq, label %thread-pre-split.i.i.i.i [
    i8 43, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs6Po7BT7Nknu_5alloc6string6StringE6map_orjNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB1C_22DeltaFileSystemHandler18open_output_stream0EB1E_.exit.thread.i
    i8 45, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs6Po7BT7Nknu_5alloc6string6StringE6map_orjNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB1C_22DeltaFileSystemHandler18open_output_stream0EB1E_.exit.thread.i
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.ad, %bb.ac
  %.sroa.0.270.i.i.i.i.ph = phi ptr [ %.val.i.i, %bb.ac ], [ %.sroa.0.0.i.i.i.i, %bb.ad ]
  %.sroa.15.269.i.i.i.i.ph = phi i64 [ 1, %bb.ac ], [ %.sroa.15.0.i.i.i.i, %bb.ad ]
  br label %.lr.ph.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %.pr.i.i.i.i = load i8, ptr %.val.i.i, align 1, !alias.scope !11000, !noalias !11003
  %cond.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 43     ; 2 uses
  %i.cr = sext i1 %cond.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i = add nsw i64 %.val5.i.i, %i.cr ; 3 uses
  %.sroa.0.0.idx.i.i.i.i = zext i1 %cond.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.idx.i.i.i.i ; 2 uses
  %i.cs = icmp samesign ult i64 %.sroa.15.0.i.i.i.i, 17
  br i1 %i.cs, label %thread-pre-split.i.i.i.i, label %.preheader56.i.i.i.i.preheader

.preheader56.i.i.i.i:                             ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i88, i64 1
end_hunk_1
begin_hunk_2
  %or.cond.i.i.i = select i1 %i.db, i1 true, i1 %i.de, !prof !6232
  br i1 %or.cond.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs6Po7BT7Nknu_5alloc6string6StringE6map_orjNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB1C_22DeltaFileSystemHandler18open_output_stream0EB1E_.exit.thread.i, label %.preheader56.i.i.i.i, !prof !6232

.lr.ph.i.i.i.i:                                   ; preds = %thread-pre-split.i.i.i.i, %bb.af
  %.sroa.0.269.i.i.i.i = phi ptr [ %i.dl, %bb.af ], [ %.sroa.0.270.i.i.i.i.ph, %thread-pre-split.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i = phi i64 [ %i.dk, %bb.af ], [ %.sroa.15.269.i.i.i.i.ph, %thread-pre-split.i.i.i.i ]
  %.sroa.042.267.i.i.i.i = phi i64 [ %i.dn, %bb.af ], [ 0, %thread-pre-split.i.i.i.i ]
  %i.df = load i8, ptr %.sroa.0.269.i.i.i.i, align 1, !alias.scope !11000, !noalias !11003, !noundef !4
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nsw i32 %i.dg, -48                  ; 2 uses
end_hunk_2
begin_hunk_3
.noexc64.i:                                       ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs6Po7BT7Nknu_5alloc6string6StringE6map_orjNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB1C_22DeltaFileSystemHandler18open_output_stream0EB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10967
end_hunk_3
