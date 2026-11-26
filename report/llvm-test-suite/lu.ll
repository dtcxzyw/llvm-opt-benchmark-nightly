Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/lu?download=true
inline.NumInlined: 13
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@init_array:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load21 = load <2 x double>, ptr %i.bs, align 8, !tbaa !18
  %wide.load22 = load <2 x double>, ptr %i.bt, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index20 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x double> %wide.load21, ptr %i.bu, align 8, !tbaa !18
  store <2 x double> %wide.load22, ptr %i.bv, align 8, !tbaa !18
  %index.next23 = or disjoint i64 %index20, 4     ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index.next23 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load21.1 = load <2 x double>, ptr %i.bw, align 8, !tbaa !18
  %wide.load22.1 = load <2 x double>, ptr %i.bx, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index.next23 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x double> %wide.load21.1, ptr %i.by, align 8, !tbaa !18
  store <2 x double> %wide.load22.1, ptr %i.bz, align 8, !tbaa !18
  %index.next23.1 = or disjoint i64 %index20, 8   ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index.next23.1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load21.2 = load <2 x double>, ptr %i.ca, align 8, !tbaa !18
  %wide.load22.2 = load <2 x double>, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index.next23.1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x double> %wide.load21.2, ptr %i.cc, align 8, !tbaa !18
  store <2 x double> %wide.load22.2, ptr %i.cd, align 8, !tbaa !18
  %index.next23.2 = or disjoint i64 %index20, 12  ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index.next23.2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load21.3 = load <2 x double>, ptr %i.ce, align 8, !tbaa !18
  %wide.load22.3 = load <2 x double>, ptr %i.cf, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index.next23.2 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %wide.load21.3, ptr %i.cg, align 8, !tbaa !18
  store <2 x double> %wide.load22.3, ptr %i.ch, align 8, !tbaa !18
  %index.next23.3 = add nuw nsw i64 %index20, 16  ; 2 uses
  %i.ci = icmp eq i64 %index.next23.3, 2000
  br i1 %i.ci, label %middle.block24, label %vector.body19, !llvm.loop !58

scalar.ph16:                                      ; preds = %.preheader, %scalar.ph16
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.4, %scalar.ph16 ], [ 0, %.preheader ] ; 7 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv118
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv118
  store double %i.ck, ptr %i.cl, align 8, !tbaa !18
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next119
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next119
  store double %i.cn, ptr %i.co, align 8, !tbaa !18
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next119.1
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next119.1
  store double %i.cq, ptr %i.cr, align 8, !tbaa !18
  %indvars.iv.next119.2 = add nuw nsw i64 %indvars.iv118, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next119.2
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next119.2
  store double %i.ct, ptr %i.cu, align 8, !tbaa !18
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next119.3
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next119.3
  store double %i.cw, ptr %i.cx, align 8, !tbaa !18
  %indvars.iv.next119.4 = add nuw nsw i64 %indvars.iv118, 5 ; 2 uses
  %exitcond121.not.4 = icmp eq i64 %indvars.iv.next119.4, 2000
  br i1 %exitcond121.not.4, label %middle.block24, label %scalar.ph16, !llvm.loop !59

middle.block24:                                   ; preds = %vector.body19, %scalar.ph16
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, 2000
  br i1 %exitcond125.not, label %bb.e, label %.preheader, !llvm.loop !60

bb.e:                                             ; preds = %middle.block24
  tail call void @free(ptr noundef nonnull %i.y) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

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
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

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
!12 = !{i64 -1933367538828230168}
!13 = !{i64 -7342903817849636275}
!14 = !{i64 774085790601897068}
!15 = !{i64 -7287118827366422173}
!16 = !{i64 -8415238522470517660}
!17 = !{!"double", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{i64 6924298717434635471}
!25 = !{i64 2466723648033828072}
!26 = !{i64 3849196629037768006}
!27 = !{i64 -3113547621970457501}
!28 = !{i64 8579997554498101488}
!29 = !{i64 -2159351921628453241}
!30 = !{i64 -6990721254753607707}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23}
!45 = !{i64 -2624081020897602054}
!46 = !{!5, !5, i64 0}
!47 = distinct !{!47, !23, !62, !63}
!48 = distinct !{!48, !23, !63, !62}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !23, !62, !63}
!55 = distinct !{!55, !23, !62}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23, !62, !63}
!59 = distinct !{!59, !23, !62}
!60 = distinct !{!60, !23}
!61 = !{i64 -8658628171631390024}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!51}
!65 = !{!52}
!66 = !{!53}
!67 = !{!52, !51}
end_hunk_0
