Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/makefuncs?download=true
inline.NumInlined: 69
inline.NumDeleted: 8
begin_hunk_0_@make_opclause:bb.a
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %5, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %6, ptr %i.h, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @list_make2_impl(i32 noundef 1, ptr %3, ptr nonnull %4) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr @list_make1_impl(i32 noundef 1, ptr %3) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sink, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 -1, ptr %i.l, align 8
  ret ptr %i.b
}

declare ptr @list_make2_impl(i32 noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @make_andclause(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 5 uses
  store i32 21, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 -1, ptr %i.d, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @make_orclause(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 5 uses
  store i32 21, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 -1, ptr %i.d, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @make_notclause(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 5 uses
  store i32 21, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 2, ptr %i.b, align 4
  %i.c = tail call ptr @list_make1_impl(i32 noundef 1, ptr %0) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 -1, ptr %i.e, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @make_and_qual(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @list_make2_impl(i32 noundef 1, ptr nonnull %0, ptr nonnull %1) #5
  %i.d = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 5 uses
  store i32 21, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 -1, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ %1, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @make_ands_explicit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %list_length.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @palloc0(i64 noundef 40) #5 ; 7 uses
  store <4 x i32> <i32 7, i32 16, i32 -1, i32 0>, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 -1, ptr %i.g, align 4
  br label %bb.e

list_length.exit:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %list_length.exit
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8
  %i.l = load ptr, ptr %.val, align 8
  br label %bb.e

bb.d:                                             ; preds = %list_length.exit
  %i.m = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 5 uses
  store i32 21, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 -1, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @make_ands_implicit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  switch i32 %i.b, label %.thread [
    i32 21, label %is_andclause.exit
    i32 7, label %bb.d
  ]

is_andclause.exit:                                ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %is_andclause.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i8, ptr %i.h, align 8, !range !4, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b, %is_andclause.exit, %bb.e, %bb.d
  %i.m = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %.thread, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ %i.m, %.thread ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeIndexInfo(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %10 to i8
  %i.b = tail call noundef ptr @palloc0(i64 noundef 200) #5 ; 14 uses
  store i32 401, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i8 %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %11 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 false, i1 false, i1 poison, i1 false, i1 poison>, i1 %5, i64 0
  %12 = insertelement <8 x i1> %11, i1 %6, i64 1
  %13 = insertelement <8 x i1> %12, i1 %7, i64 2
  %14 = insertelement <8 x i1> %13, i1 %8, i64 5
  %15 = insertelement <8 x i1> %14, i1 %9, i64 7
  %16 = zext <8 x i1> %15 to <8 x i8>
  store <8 x i8> %16, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i8 0, i64 56, i1 false)
  store i32 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr null, ptr %i.m, align 8
  %i.n = load ptr, ptr @CurrentMemoryContext, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.n, ptr %i.o, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeGroupingSet(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 5 uses
  store i32 114, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %2, ptr %i.d, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeVacuumRelation(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 32) #5 ; 5 uses
  store i32 247, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.d, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeJsonFormat(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 16) #5 ; 5 uses
  store i32 42, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %2, ptr %i.d, align 4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeJsonValueExpr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 32) #5 ; 5 uses
  store i32 44, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.d, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeJsonBehavior(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 5 uses
  store i32 47, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %2, ptr %i.d, align 4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeJsonKeyValue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 4 uses
  store i32 134, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeJsonIsPredicate(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = tail call noundef ptr @palloc0(i64 noundef 40) #5 ; 8 uses
  store i32 46, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 %i.a, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %5, ptr %i.h, align 4
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeJsonTablePathSpec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 32) #5 ; 6 uses
  store i32 131, ptr %i.a, align 4
  %i.b = tail call noundef ptr @palloc0(i64 noundef 32) #5 ; 5 uses
  store i32 75, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 491, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %2, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.f, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @pstrdup(ptr noundef nonnull %1) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %2, ptr %i.j, align 4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeJsonTablePath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 24) #5 ; 4 uses
  store i32 49, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  ret ptr %i.a
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
end_hunk_0
