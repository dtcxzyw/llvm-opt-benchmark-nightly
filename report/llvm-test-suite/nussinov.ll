inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a

.preheader.i:                                     ; preds = %._crit_edge135.i33, %bb.j
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.j ], [ 0, %._crit_edge135.i33 ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [10000 x i8], ptr %i.k, i64 %indvars.iv39.i ; 5 uses
  %i.di = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %indvars.iv39.i ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i.1.a, %.preheader.i
  %indvars.iv.i55 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i56.1.a, %.critedge.i.1.a ] ; 8 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i55
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4  ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i55
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %2 = icmp eq i32 %i.dk, %i.dm
  br i1 %2, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.a, %.critedge.i.2, %.critedge.i.1, %.critedge.i, %bb.i
  %indvars.iv.i55.lcssa = phi i64 [ %indvars.iv.i55, %bb.i ], [ %indvars.iv.next.i56, %.critedge.i ], [ %indvars.iv.next.i56.1, %.critedge.i.1 ], [ %indvars.iv.next.i56.2, %.critedge.i.2 ], [ %indvars.iv.next.i56.3, %.critedge.i.a ]
  %.lcssa117 = phi i32 [ %i.dk, %bb.i ], [ %6, %.critedge.i ], [ %11, %.critedge.i.1 ], [ %16, %.critedge.i.2 ], [ %i.ds, %.critedge.i.a ]
  %.lcssa = phi i32 [ %i.dm, %bb.i ], [ %8, %.critedge.i ], [ %13, %.critedge.i.1 ], [ %18, %.critedge.i.2 ], [ %i.du, %.critedge.i.a ]
  %i.dn = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.do = trunc nuw nsw i64 %indvars.iv.i55.lcssa to i32 ; 2 uses
  %3 = sitofp i32 %.lcssa to double
  %4 = sitofp i32 %.lcssa117 to double
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.2, i32 noundef %i.dn, i32 noundef %i.do, double noundef %4, i32 noundef %i.dn, i32 noundef %i.do, double noundef %3, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.m

.critedge.i:                                      ; preds = %bb.i
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 3 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i56
  %6 = load i32, ptr %5, align 4, !tbaa !4        ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i56
  %8 = load i32, ptr %7, align 4, !tbaa !4        ; 2 uses
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i56.1 = add nuw nsw i64 %indvars.iv.i55, 2 ; 3 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i56.1
  %11 = load i32, ptr %10, align 4, !tbaa !4      ; 2 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i56.1
  %13 = load i32, ptr %12, align 4, !tbaa !4      ; 2 uses
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i56.2 = add nuw nsw i64 %indvars.iv.i55, 3 ; 3 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i56.2
  %16 = load i32, ptr %15, align 4, !tbaa !4      ; 2 uses
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i56.2
  %18 = load i32, ptr %17, align 4, !tbaa !4      ; 2 uses
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %.critedge.i.a, label %check_FP.exit.thread

.critedge.i.a:                                    ; preds = %.critedge.i.2
  %indvars.iv.next.i56.3 = add nuw nsw i64 %indvars.iv.i55, 4 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i56.3
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4  ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i56.3
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4  ; 2 uses
  %20 = icmp eq i32 %i.ds, %i.du
  br i1 %20, label %.critedge.i.1.a, label %check_FP.exit.thread

.critedge.i.1.a:                                  ; preds = %.critedge.i.a
  %indvars.iv.next.i56.1.a = add nuw nsw i64 %indvars.iv.i55, 5 ; 2 uses
  %exitcond.not.i57.1 = icmp eq i64 %indvars.iv.next.i56.1.a, 2500
  br i1 %exitcond.not.i57.1, label %bb.j, label %bb.i, !llvm.loop !26

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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
begin_hunk_2_@llvm.smax.i32
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
end_hunk_2
