inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a

.preheader.i44:                                   ; preds = %bb.e, %bb.g
  %indvars.iv39.i45 = phi i64 [ %indvars.iv.next40.i49, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.de = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv39.i45 ; 5 uses
  %i.df = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv39.i45 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.1.a, %.preheader.i44
  %indvars.iv.i46 = phi i64 [ 0, %.preheader.i44 ], [ %indvars.iv.next.i47.1.a, %.critedge.i.1.a ] ; 8 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i46
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4  ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i46
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4  ; 2 uses
  %2 = icmp eq i32 %i.dh, %i.dj
  br i1 %2, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.a, %.critedge.i.2, %.critedge.i.1, %.critedge.i, %bb.f
  %indvars.iv.i46.lcssa = phi i64 [ %indvars.iv.i46, %bb.f ], [ %indvars.iv.next.i47, %.critedge.i ], [ %indvars.iv.next.i47.1, %.critedge.i.1 ], [ %indvars.iv.next.i47.2, %.critedge.i.2 ], [ %indvars.iv.next.i47.3, %.critedge.i.a ]
  %.lcssa135 = phi i32 [ %i.dh, %bb.f ], [ %6, %.critedge.i ], [ %11, %.critedge.i.1 ], [ %16, %.critedge.i.2 ], [ %i.dp, %.critedge.i.a ]
  %.lcssa = phi i32 [ %i.dj, %bb.f ], [ %8, %.critedge.i ], [ %13, %.critedge.i.1 ], [ %18, %.critedge.i.2 ], [ %i.dr, %.critedge.i.a ]
  %i.dk = trunc nuw nsw i64 %indvars.iv39.i45 to i32 ; 2 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv.i46.lcssa to i32 ; 2 uses
  %3 = sitofp i32 %.lcssa to double
  %4 = sitofp i32 %.lcssa135 to double
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.2, i32 noundef %i.dk, i32 noundef %i.dl, double noundef %4, i32 noundef %i.dk, i32 noundef %i.dl, double noundef %3, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.j

.critedge.i:                                      ; preds = %bb.f
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 3 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next.i47
  %6 = load i32, ptr %5, align 4, !tbaa !4        ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i47
  %8 = load i32, ptr %7, align 4, !tbaa !4        ; 2 uses
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i47.1 = add nuw nsw i64 %indvars.iv.i46, 2 ; 3 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next.i47.1
  %11 = load i32, ptr %10, align 4, !tbaa !4      ; 2 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i47.1
  %13 = load i32, ptr %12, align 4, !tbaa !4      ; 2 uses
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i47.2 = add nuw nsw i64 %indvars.iv.i46, 3 ; 3 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next.i47.2
  %16 = load i32, ptr %15, align 4, !tbaa !4      ; 2 uses
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i47.2
  %18 = load i32, ptr %17, align 4, !tbaa !4      ; 2 uses
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %.critedge.i.a, label %check_FP.exit.thread

.critedge.i.a:                                    ; preds = %.critedge.i.2
  %indvars.iv.next.i47.3 = add nuw nsw i64 %indvars.iv.i46, 4 ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next.i47.3
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4  ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i47.3
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4  ; 2 uses
  %20 = icmp eq i32 %i.dp, %i.dr
  br i1 %20, label %.critedge.i.1.a, label %check_FP.exit.thread

.critedge.i.1.a:                                  ; preds = %.critedge.i.a
  %indvars.iv.next.i47.1.a = add nuw nsw i64 %indvars.iv.i46, 5 ; 2 uses
  %exitcond.not.i48.1 = icmp eq i64 %indvars.iv.next.i47.1.a, 2800
  br i1 %exitcond.not.i48.1, label %bb.g, label %bb.f, !llvm.loop !44

end_hunk_0
begin_hunk_1_@fprintf
; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
begin_hunk_2_@llvm.smin.v4i32
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
end_hunk_2
