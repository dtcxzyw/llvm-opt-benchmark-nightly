Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cholesky?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@main:bb.a
  br i1 %i.ip, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.l
  %indvars.iv.i51.lcssa = phi i64 [ %indvars.iv.i51, %bb.l ], [ %indvars.iv.next.i52, %.critedge.i ]
  %.lcssa137 = phi double [ %i.ik, %bb.l ], [ %i.iv, %.critedge.i ]
  %.lcssa = phi double [ %i.im, %bb.l ], [ %i.ix, %.critedge.i ]
  %i.iq = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv.i51.lcssa to i32 ; 2 uses
  %i.is = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.it = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.is, ptr noundef nonnull @.str.2, i32 noundef %i.iq, i32 noundef %i.ir, double noundef %.lcssa137, i32 noundef %i.iq, i32 noundef %i.ir, double noundef %.lcssa, double noundef 1.000000e-05) #19 ; 0 uses
  br label %bb.p

.critedge.i:                                      ; preds = %bb.l
  %indvars.iv.next.i52 = or disjoint i64 %indvars.iv.i51, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next.i52
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next.i52
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !18 ; 2 uses
  %i.iy = fsub double %i.iv, %i.ix
  %i.iz = tail call double @llvm.fabs.f64(double %i.iy)
  %i.ja = fcmp ule double %i.iz, 1.000000e-05
  br i1 %i.ja, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i52.1 = add nuw nsw i64 %indvars.iv.i51, 2 ; 2 uses
  %exitcond.not.i53.1 = icmp eq i64 %indvars.iv.next.i52.1, 2000
  br i1 %exitcond.not.i53.1, label %bb.m, label %bb.l, !llvm.loop !53

bb.m:                                             ; preds = %.critedge.i.1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2000
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i50, !llvm.loop !54

check_FP.exit:                                    ; preds = %bb.m
  %i.jb = tail call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #20 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32000
  store i8 0, ptr %i.jc, align 1, !tbaa !66
  br label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.o, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.o ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv20.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.i54
  %indvars.iv.i55 = phi i64 [ 0, %.preheader.i54 ], [ %indvars.iv.next.i56, %bb.n ] ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.i55
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !18
  %i.jg = shl nuw nsw i64 %indvars.iv.i55, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jg
  %.inner = and i64 %i.jf, 1085102592571150095
  %.inner135 = or disjoint i64 %.inner, 3472328296227680304
  %i.ji = bitcast i64 %.inner135 to <8 x i8>
  %i.jj = shufflevector <8 x i8> %i.ji, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.jj, ptr %i.jh, align 1, !tbaa !66
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, 2000
  br i1 %exitcond.not.i57, label %bb.o, label %bb.n, !llvm.loop !55

bb.o:                                             ; preds = %bb.n
  %i.jk = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.jl = tail call i32 @fputs(ptr noundef nonnull %i.jb, ptr noundef %i.jk) #17 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i54, !llvm.loop !56

print_array.exit:                                 ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.jb) #16
  tail call void @free(ptr noundef %i.e) #16
  tail call void @free(ptr noundef nonnull %i.k) #16
  br label %bb.p

bb.p:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -806784931565097052}
!9 = !{i64 1361650078910839278}
!10 = !{i64 -5417346137170862001}
!11 = !{i64 4595329937442580317}
!12 = !{i64 -702478129392810252}
!13 = !{i64 -7342903817849636275}
!14 = !{i64 774085790601897068}
!15 = !{i64 8674588059787201016}
!16 = !{i64 -6014902071573746819}
!17 = !{!"double", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{i64 6924298717434635471}
!24 = !{i64 2466723648033828072}
!25 = !{i64 3849196629037768006}
!26 = !{i64 -3113547621970457501}
!27 = !{i64 8579997554498101488}
!28 = !{i64 -2159351921628453241}
!29 = !{i64 -6990721254753607707}
!30 = distinct !{!30, !58, !59, !60}
!31 = distinct !{!31, !58, !59}
!32 = distinct !{!32, !58}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !58, !59, !60}
!38 = distinct !{!38, !58, !59}
!39 = distinct !{!39, !58}
!40 = distinct !{!40, !58}
!41 = distinct !{!41, !58, !59, !60}
!42 = distinct !{!42, !58, !59}
!43 = distinct !{!43, !58}
!44 = distinct !{!44, !58}
!45 = distinct !{!45, !58}
!46 = distinct !{!46, !58}
!47 = distinct !{!47, !58}
!48 = distinct !{!48, !58}
!49 = distinct !{!49, !58}
!50 = distinct !{!50, !58}
!51 = distinct !{!51, !65}
!52 = distinct !{!52, !58}
!53 = distinct !{!53, !58}
!54 = distinct !{!54, !58}
!55 = distinct !{!55, !58}
!56 = distinct !{!56, !58}
!57 = !{i64 -2624081020897602054}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!34}
!62 = !{!35}
!63 = !{!36}
!64 = !{!35, !34}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!5, !5, i64 0}
end_hunk_0
