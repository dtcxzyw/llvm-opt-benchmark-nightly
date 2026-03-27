begin_hunk_0
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %5 = zext i32 %i.a to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !98
  %6 = zext i32 %i.ah to i64
  %7 = sub nsw i64 %5, %6
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %7, i64 0)
  %8 = trunc nuw i64 %spec.store.select to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %storemerge = phi i32 [ %8, %bb.l ], [ %2, %bb.k ]
  store i32 %storemerge, ptr %i.q, align 4, !tbaa !100
  tail call fastcc void @do_sarray_io(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.n
end_hunk_0
begin_hunk_1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !109
  %.not72 = icmp eq i32 %i.z, 0
  br i1 %.not72, label %5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_1
begin_hunk_2

do_barray_io.exit:                                ; preds = %.lr.ph.split.i, %bb.k, %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !109
  br label %5

5:                                                ; preds = %do_barray_io.exit, %bb.i
  %6 = load i32, ptr %i.m, align 4, !tbaa !107
  %7 = icmp ugt i32 %2, %6
  br i1 %7, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %5
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !104
  br label %bb.l

8:                                                ; preds = %5
  %9 = zext i32 %i.a to i64
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %11 = load i32, ptr %10, align 4, !tbaa !104    ; 2 uses
  %12 = zext i32 %11 to i64
  %13 = sub nsw i64 %9, %12
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %13, i64 0)
  %14 = trunc nuw i64 %spec.store.select to i32
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %8
  %15 = phi i32 [ %11, %8 ], [ %.pre, %._crit_edge ] ; 2 uses
  %storemerge = phi i32 [ %14, %8 ], [ %2, %._crit_edge ] ; 2 uses
  store i32 %storemerge, ptr %i.m, align 4, !tbaa !107
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !88
end_hunk_2
begin_hunk_3
  %i.bt = shl nuw nsw i64 %i.bs, 7                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.not58.i77 = icmp eq i32 %15, 0
  br i1 %.not58.i77, label %do_barray_io.exit80, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.l
  %i.bw = zext i32 %15 to i64
  %i.bx = zext i32 %storemerge to i64
  %i.by = mul nuw nsw i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_3
begin_hunk_4
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8
end_hunk_4
