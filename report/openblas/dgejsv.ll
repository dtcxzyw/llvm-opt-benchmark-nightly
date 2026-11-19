Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgejsv?download=true
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dgejsv_:bb.a
  br label %bb.lq

bb.lq:                                            ; preds = %bb.cj, %bb.ck, %bb.lp, %bb.br, %bb.at, %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare void @dlassq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorgqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @dlaswp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqp3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dpocon_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgesvj_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare void @dgelqf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dormlq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dormqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !117}
!9 = distinct !{!9, !117}
!10 = distinct !{!10, !118}
!11 = distinct !{!11, !117}
!12 = distinct !{!12, !117}
!13 = distinct !{!13, !117}
!14 = distinct !{!14, !117}
!15 = distinct !{!15, !117, !119, !120}
!16 = distinct !{!16, !118}
!17 = distinct !{!17, !117, !119}
!18 = distinct !{!18, !117}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !117, !119, !120}
!24 = distinct !{!24, !118}
!25 = distinct !{!25, !117, !119}
!26 = distinct !{!26, !117}
!27 = distinct !{!27, !117}
!28 = distinct !{!28, !117}
!29 = distinct !{!29, !117}
!30 = distinct !{!30, !117}
!31 = distinct !{!31, !117}
!32 = distinct !{!32, !118}
!33 = distinct !{!33, !117}
!34 = distinct !{!34, !117}
!35 = distinct !{!35, !117}
!36 = distinct !{!36, !117}
!37 = distinct !{!37, !117}
!38 = distinct !{!38, !117}
!39 = distinct !{!39, !117}
!40 = distinct !{!40, !117}
!41 = distinct !{!41, !117}
!42 = distinct !{!42, !117}
!43 = distinct !{!43, !117}
!44 = distinct !{!44, !117}
!45 = distinct !{!45, !117}
!46 = distinct !{!46, !117}
!47 = distinct !{!47, !117}
!48 = distinct !{!48, !117}
!49 = distinct !{!49, !117}
!50 = distinct !{!50, !117}
!51 = distinct !{!51, !117}
!52 = distinct !{!52, !117}
!53 = distinct !{!53, !117}
!54 = distinct !{!54, !117}
!55 = distinct !{!55, !117}
!56 = distinct !{!56, !118}
!57 = distinct !{!57, !117}
!58 = distinct !{!58, !117}
!59 = distinct !{!59, !117}
!60 = distinct !{!60, !117}
!61 = distinct !{!61, !117}
!62 = distinct !{!62, !117, !119, !120}
!63 = distinct !{!63, !117, !119, !120}
!64 = distinct !{!64, !117, !120, !119}
!65 = distinct !{!65, !117}
!66 = distinct !{!66, !117}
!67 = distinct !{!67, !117}
!68 = distinct !{!68, !117}
!69 = distinct !{!69, !118}
!70 = distinct !{!70, !117, !119, !120}
!71 = distinct !{!71, !117, !119, !120}
!72 = distinct !{!72, !118}
!73 = distinct !{!73, !117, !119}
!74 = distinct !{!74, !117}
!75 = distinct !{!75, !117}
!76 = distinct !{!76, !118}
!77 = distinct !{!77, !117, !119, !120}
!78 = distinct !{!78, !117, !119, !120}
!79 = distinct !{!79, !118}
!80 = distinct !{!80, !117, !119}
!81 = distinct !{!81, !117}
!82 = distinct !{!82, !117}
!83 = distinct !{!83, !118}
!84 = distinct !{!84, !117, !119, !120}
!85 = distinct !{!85, !117, !119, !120}
!86 = distinct !{!86, !118}
!87 = distinct !{!87, !117, !119}
!88 = distinct !{!88, !117}
!89 = distinct !{!89, !117}
!90 = distinct !{!90, !117, !119}
!91 = distinct !{!91, !118}
!92 = distinct !{!92, !117}
!93 = distinct !{!93, !117}
!94 = distinct !{!94, !117}
!95 = distinct !{!95, !117}
!96 = distinct !{!96, !117}
!97 = distinct !{!97, !117}
!98 = distinct !{!98, !117}
!99 = distinct !{!99, !117}
!100 = distinct !{!100, !117}
!101 = distinct !{!101, !117}
!102 = distinct !{!102, !117}
!103 = distinct !{!103, !117}
!104 = distinct !{!104, !118}
!105 = distinct !{!105, !117, !119, !120}
!106 = distinct !{!106, !117, !119, !120}
!107 = distinct !{!107, !118}
!108 = distinct !{!108, !117, !119}
!109 = distinct !{!109, !117}
!110 = distinct !{!110, !117}
!111 = distinct !{!111, !117, !119, !120}
!112 = distinct !{!112, !117, !119, !120}
!113 = distinct !{!113, !117, !120, !119}
!114 = !{!5, !5, i64 0}
!115 = !{!"double", !4, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !{!"llvm.loop.isvectorized", i32 1}
!120 = !{!"llvm.loop.unroll.runtime.disable"}
!121 = !{!20}
!122 = !{!21}
!123 = !{!22}
!124 = !{!20, !21}
!125 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
