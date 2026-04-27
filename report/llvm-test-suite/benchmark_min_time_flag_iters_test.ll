inline.NumInlined: 166
inline.NumDeleted: 114
begin_hunk_0_@main:bb.a

_ZNSt6vectorIlSaIlEEC2ERKS1_.exit:                ; preds = %bb.i, %bb.h, %bb.g, %.thread
  %i.aw = phi ptr [ %i.as, %bb.g ], [ %i.as, %bb.h ], [ %i.as, %bb.i ], [ %i.ap, %.thread ] ; 2 uses
  %i.ax = phi ptr [ %i.ar, %bb.g ], [ %i.ar, %bb.h ], [ %i.ar, %bb.i ], [ null, %.thread ] ; 5 uses
  %i.ay = icmp eq ptr %i.ax, %i.aw
  br i1 %i.ay, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !59
  %i.ba = icmp eq i64 %i.az, 4
  br i1 %i.ba, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.critedge
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = load ptr, ptr %1, align 8, !tbaa !65     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 4 uses
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16
end_hunk_3
