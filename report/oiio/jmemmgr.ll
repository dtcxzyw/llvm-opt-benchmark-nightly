begin_hunk_0
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !98
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %i.a, i32 %i.ah)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %storemerge = phi i32 [ %5, %bb.l ], [ %2, %bb.k ]
  store i32 %storemerge, ptr %i.q, align 4, !tbaa !100
  tail call fastcc void @do_sarray_io(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.n
end_hunk_0
begin_hunk_1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !109
  %.not72 = icmp eq i32 %i.z, 0
  br i1 %.not72, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_1
begin_hunk_2

do_barray_io.exit:                                ; preds = %.lr.ph.split.i, %bb.k, %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !109
  br label %bb.l

bb.l:                                             ; preds = %do_barray_io.exit, %bb.i
  %5 = load i32, ptr %i.m, align 4, !tbaa !107
  %6 = icmp ugt i32 %2, %5
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !104 ; 3 uses
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %i.a, i32 %.pre)
  %storemerge = select i1 %6, i32 %2, i32 %7      ; 2 uses
  store i32 %storemerge, ptr %i.m, align 4, !tbaa !107
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !88
end_hunk_2
begin_hunk_3
  %i.bt = shl nuw nsw i64 %i.bs, 7                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.not58.i77 = icmp eq i32 %.pre, 0
  br i1 %.not58.i77, label %do_barray_io.exit80, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.l
  %i.bw = zext i32 %.pre to i64
  %i.bx = zext i32 %storemerge to i64
  %i.by = mul nuw nsw i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_3
begin_hunk_4
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8
end_hunk_4
