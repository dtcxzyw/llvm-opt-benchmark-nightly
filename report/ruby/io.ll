inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@rb_io_s_foreach:rb_scan_args_n_opt.exit
.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i34 = phi i32 [ %i.j, %bb.b ], [ %0, %bb.a ] ; 7 uses
  %.188.i33 = phi i64 [ %i.i, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %i.l = icmp samesign ugt i32 %.1.i34, 1
  %spec.select = select i1 %i.l, i32 2, i32 1     ; 2 uses
  %i.m = icmp samesign ult i32 %spec.select, %.1.i34
  %5 = zext i1 %i.m to i32
  %.286.i.1 = add nuw nsw i32 %spec.select, %5
  %i.n = icmp eq i32 %.286.i.1, %.1.i34
  br i1 %i.n, label %rb_scan_args_set.exit, label %.thread

end_hunk_0
begin_hunk_1_@rb_io_s_readlines:rb_scan_args_n_opt.exit
.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i29 = phi i32 [ %i.j, %bb.b ], [ %0, %bb.a ] ; 7 uses
  %.188.i28 = phi i64 [ %i.i, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %i.l = icmp samesign ugt i32 %.1.i29, 1
  %spec.select = select i1 %i.l, i32 2, i32 1     ; 2 uses
  %i.m = icmp samesign ult i32 %spec.select, %.1.i29
  %5 = zext i1 %i.m to i32
  %.286.i.1 = add nuw nsw i32 %spec.select, %5
  %i.n = icmp eq i32 %.286.i.1, %.1.i29
  br i1 %i.n, label %rb_scan_args_set.exit, label %.thread

end_hunk_1
begin_hunk_2_@rb_io_s_read:rb_scan_args_n_opt.exit
.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i29 = phi i32 [ %i.i, %bb.b ], [ %0, %bb.a ] ; 7 uses
  %.188.i28 = phi i64 [ %i.h, %bb.b ], [ 4, %bb.a ] ; 2 uses
  %i.k = icmp samesign ugt i32 %.1.i29, 1
  %spec.select = select i1 %i.k, i32 2, i32 1     ; 4 uses
  %i.l = icmp samesign ult i32 %spec.select, %.1.i29
  br i1 %i.l, label %bb.c, label %bb.d

end_hunk_2
begin_hunk_3_@rb_io_s_read:rb_scan_args_n_opt.exit
  %i.m = zext nneg i32 %spec.select to i64
  %i.n = getelementptr [8 x i8], ptr %1, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %5 = add nuw nsw i32 %spec.select, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
end_hunk_3
begin_hunk_4_@rb_io_s_binread:bb.a
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not22 = icmp eq i32 %0, 1
  %spec.select = select i1 %.not22, i32 1, i32 2  ; 4 uses
  %i.d = icmp samesign ult i32 %spec.select, %0
  br i1 %i.d, label %bb.b, label %bb.c

end_hunk_4
begin_hunk_5_@rb_io_s_binread:bb.a
  %i.e = zext nneg i32 %spec.select to i64
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %6 = add nuw nsw i32 %spec.select, 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
end_hunk_5
