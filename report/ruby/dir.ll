inline.NumInlined: 217
inline.NumDeleted: 89
begin_hunk_0_@rb_push_glob:bb.a
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @dir_globs(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, -8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.e = tail call i64 @rb_ary_new() #20          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %3 = phi i64 [ %0, %bb.a ], [ %.pre, %bb.g ]
  %.0 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.g ]     ; 4 uses
  %4 = inttoptr i64 %3 to ptr                     ; 4 uses
  %i.f = load i64, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.b
  %5 = getelementptr i8, ptr %4, i64 16
  %i.h = load i64, ptr %5, align 8, !tbaa !20
  %i.i = icmp slt i64 %.0, %i.h
  br i1 %i.i, label %bb.d, label %bb.h
end_hunk_0
begin_hunk_1_@dir_globs:bb.a

bb.c:                                             ; preds = %rb_array_len.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %6 = getelementptr i8, ptr %4, i64 16
  br label %RARRAY_AREF.exit

bb.d:                                             ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %7 = getelementptr i8, ptr %4, i64 32
  %i.m = load ptr, ptr %7, align 8, !tbaa !20
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %6, %bb.c ], [ %i.m, %bb.d ]
  %i.n = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !11
end_hunk_1
begin_hunk_2_@dir_globs:bb.a
bb.g:                                             ; preds = %RARRAY_AREF.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.t = add nuw nsw i64 %.0, 1
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %bb.b, !llvm.loop !176

bb.h:                                             ; preds = %rb_array_len.exit.thread, %rb_array_len.exit
end_hunk_2
