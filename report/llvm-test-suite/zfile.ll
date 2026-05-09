inline.NumInlined: 7
begin_hunk_0_@open_std_file:bb.a
  %i.h = phi i1 [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.p ], [ true, %bb.q ], [ true, %bb.r ]
  %.02031.lcssa.wide = phi i64 [ 0, %bb.a ], [ 1, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ] ; 3 uses
  %i.i = load i8, ptr %1, align 1, !tbaa !16
  %i.j = icmp eq i8 %i.i, 114                     ; 2 uses
  %i.k = select i1 %i.j, i32 514, i32 258
  %i.l = getelementptr inbounds nuw [32 x i8], ptr @std_files, i64 %.02031.lcssa.wide ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @std_file_attrs, i64 %.02031.lcssa.wide
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
end_hunk_0
begin_hunk_1_@open_std_file:bb.a

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %2, align 8, !tbaa !16
  %3 = select i1 %i.j, i16 526, i16 270
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 %3, ptr %i.o, align 8, !tbaa !17
  br i1 %i.h, label %bb.d, label %zreadline_stdin.exit

bb.d:                                             ; preds = %bb.c
end_hunk_1
