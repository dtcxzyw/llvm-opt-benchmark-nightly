inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a

.preheader.i:                                     ; preds = %._crit_edge135.i33, %bb.j
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.j ], [ 0, %._crit_edge135.i33 ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [10000 x i8], ptr %i.k, i64 %indvars.iv39.i ; 2 uses
  %i.di = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %indvars.iv39.i ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i.1.a, %.preheader.i
  %indvars.iv.i55 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i56.1, %.critedge.i.1.a ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i55
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %2 = sitofp i32 %i.dk to double                 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i55
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %3 = sitofp i32 %i.dm to double                 ; 2 uses
  %4 = fsub double %2, %3
  %5 = call double @llvm.fabs.f64(double %4)
  %6 = fcmp ule double %5, 1.000000e-05
  br i1 %6, label %.critedge.i.a, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.a, %bb.i
  %indvars.iv.i55.lcssa = phi i64 [ %indvars.iv.i55, %bb.i ], [ %indvars.iv.next.i56, %.critedge.i.a ]
  %.lcssa115 = phi double [ %2, %bb.i ], [ %7, %.critedge.i.a ]
  %.lcssa = phi double [ %3, %bb.i ], [ %8, %.critedge.i.a ]
  %i.dn = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.do = trunc nuw nsw i64 %indvars.iv.i55.lcssa to i32 ; 2 uses
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.2, i32 noundef %i.dn, i32 noundef %i.do, double noundef %.lcssa115, i32 noundef %i.dn, i32 noundef %i.do, double noundef %.lcssa, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.m

.critedge.i.a:                                    ; preds = %bb.i
  %indvars.iv.next.i56 = or disjoint i64 %indvars.iv.i55, 1 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i56
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %7 = sitofp i32 %i.ds to double                 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i56
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %8 = sitofp i32 %i.du to double                 ; 2 uses
  %9 = fsub double %7, %8
  %10 = call double @llvm.fabs.f64(double %9)
  %11 = fcmp ule double %10, 1.000000e-05
  br i1 %11, label %.critedge.i.1.a, label %check_FP.exit.thread

.critedge.i.1.a:                                  ; preds = %.critedge.i.a
  %indvars.iv.next.i56.1 = add nuw nsw i64 %indvars.iv.i55, 2 ; 2 uses
  %exitcond.not.i57.1 = icmp eq i64 %indvars.iv.next.i56.1, 2500
  br i1 %exitcond.not.i57.1, label %bb.j, label %bb.i, !llvm.loop !26

end_hunk_0
begin_hunk_1_@fprintf
; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
begin_hunk_2_@llvm.smax.i32
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
end_hunk_2
