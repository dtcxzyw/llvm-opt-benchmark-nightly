Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ludcmp?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@init_array:vector.memcheck
  store double %i.eb, ptr %i.ec, align 8, !tbaa !24
  %indvars.iv.next137.2 = add nuw nsw i64 %indvars.iv136, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next137.2
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next137.2
  store double %i.ee, ptr %i.ef, align 8, !tbaa !24
  %indvars.iv.next137.3 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next137.3
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !24
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next137.3
  store double %i.eh, ptr %i.ei, align 8, !tbaa !24
  %indvars.iv.next137.4 = add nuw nsw i64 %indvars.iv136, 5 ; 2 uses
  %exitcond139.not.4 = icmp eq i64 %indvars.iv.next137.4, 2000
  br i1 %exitcond139.not.4, label %middle.block43, label %scalar.ph34, !llvm.loop !78

middle.block43:                                   ; preds = %vector.body38, %scalar.ph34
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next141, 2000
  br i1 %exitcond143.not, label %bb.d, label %.preheader, !llvm.loop !79

bb.d:                                             ; preds = %middle.block43
  tail call void @free(ptr noundef nonnull %i.bj) #15
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 !guid !88 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %i.a) #16 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i16
  %i.d = urem i16 %.lhs.trunc, 20
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !28
  %fputc = tail call i32 @fputc(i32 10, ptr %i.f) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.7, double noundef %i.i) #18 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !87

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #18 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 22, i64 1, ptr %i.m) #16 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

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
attributes #8 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold nounwind }

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
!12 = !{i64 1141370546575789515}
!13 = !{i64 -7342903817849636275}
!14 = !{i64 774085790601897068}
!15 = !{i64 6724577035622797121}
!16 = !{i64 4158279471154557853}
!17 = !{i64 -5560334683508054155}
!18 = !{i64 1660317607731430311}
!19 = !{i64 3155561130629991763}
!20 = !{i64 -5791329077538565325}
!21 = !{i64 5135038555119146108}
!22 = !{i64 -7370574109433943845}
!23 = !{!"double", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"any pointer", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !25, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i64 6924298717434635471}
!31 = !{i64 2466723648033828072}
!32 = !{i64 3849196629037768006}
!33 = !{i64 -3113547621970457501}
!34 = !{i64 8579997554498101488}
!35 = !{i64 -2159351921628453241}
!36 = !{i64 -6990721254753607707}
!37 = distinct !{!37, !29}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !63}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !63}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !63}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !63}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29}
!55 = distinct !{!55, !29}
!56 = distinct !{!56, !63}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !63}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = !{i64 -2624081020897602054}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !29, !81, !82}
!65 = distinct !{!65, !29, !81}
!66 = distinct !{!66, !29, !81, !82}
!67 = distinct !{!67, !29, !82, !81}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !29, !81, !82}
!74 = distinct !{!74, !29, !81}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29, !81, !82}
!78 = distinct !{!78, !29, !81}
!79 = distinct !{!79, !29}
!80 = !{i64 3885540266707698518}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!70}
!84 = !{!71}
!85 = !{!72}
!86 = !{!71, !70}
!87 = distinct !{!87, !29}
!88 = !{i64 6520204950399474019}
end_hunk_0
