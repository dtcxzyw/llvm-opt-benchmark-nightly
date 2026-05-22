inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051219str_format_internal13BufferRawSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 %1, ptr readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %1) ; 4 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %2, i64 %.sroa.speculated, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated
  store ptr %i.e, ptr %0, align 8, !tbaa !9
  %i.f = load i64, ptr %i.a, align 8, !tbaa !13
  %i.g = sub i64 %i.f, %.sroa.speculated
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = add i64 %i.i, %1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN4absl12lts_2025051219str_format_internal11FILERawSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ClearErrnoGuardD2Ev.exit
  %.sroa.5.025 = phi ptr [ %2, %.lr.ph ], [ %.sroa.5.118, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ClearErrnoGuardD2Ev.exit ] ; 5 uses
  %.sroa.09.024 = phi i64 [ %1, %.lr.ph ], [ %.sroa.09.116, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ClearErrnoGuardD2Ev.exit ] ; 5 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #7     ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  store i32 0, ptr %i.e, align 4, !tbaa !3
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  %i.h = tail call i64 @fwrite(ptr noundef %.sroa.5.025, i64 noundef 1, i64 noundef %.sroa.09.024, ptr noundef %i.g) ; 4 uses
  %.not6 = icmp eq i64 %i.h, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.c, align 8, !tbaa !19
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr %i.c, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.5.025, i64 %i.h
  %i.l = sub i64 %.sroa.09.024, %i.h
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.m, label %bb.g [
    i32 4, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ClearErrnoGuardD2Ev.exit
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %0, align 8, !tbaa !18
  %i.o = tail call i32 @ferror(ptr noundef %i.n) #8
  %.not8 = icmp eq i32 %i.o, 0
  br i1 %.not8, label %.thread, label %bb.g, !llvm.loop !20

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.m, %bb.e ], [ 9, %bb.f ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sroa.09.1.ph = phi i64 [ %i.l, %bb.d ], [ %.sroa.09.024, %bb.g ] ; 2 uses
  %.sroa.5.1.ph = phi ptr [ %i.k, %bb.d ], [ %.sroa.5.025, %bb.g ] ; 2 uses
  %.pr = load i32, ptr %i.e, align 4, !tbaa !3
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %.thread, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ClearErrnoGuardD2Ev.exit

.thread:                                          ; preds = %bb.f, %bb.h
  %.sroa.5.119 = phi ptr [ %.sroa.5.1.ph, %bb.h ], [ %.sroa.5.025, %bb.f ]
  %.sroa.09.117 = phi i64 [ %.sroa.09.1.ph, %bb.h ], [ %.sroa.09.024, %bb.f ]
  store i32 %i.f, ptr %i.e, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ClearErrnoGuardD2Ev.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ClearErrnoGuardD2Ev.exit: ; preds = %bb.e, %bb.h, %.thread
  %.sroa.5.118 = phi ptr [ %.sroa.5.1.ph, %bb.h ], [ %.sroa.5.119, %.thread ], [ %.sroa.5.025, %bb.e ]
  %.sroa.09.116 = phi i64 [ %.sroa.09.1.ph, %bb.h ], [ %.sroa.09.117, %.thread ], [ %.sroa.09.024, %bb.e ] ; 2 uses
  %i.p = icmp eq i64 %.sroa.09.116, 0
  br i1 %i.p, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ClearErrnoGuardD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4absl12lts_2025051219str_format_internal13BufferRawSinkE", !11, i64 0, !8, i64 8, !8, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!10, !8, i64 8}
!14 = !{!10, !8, i64 16}
!15 = !{!16, !4, i64 8}
!16 = !{!"_ZTSN4absl12lts_2025051219str_format_internal11FILERawSinkE", !17, i64 0, !4, i64 8, !8, i64 16}
!17 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!18 = !{!16, !17, i64 0}
!19 = !{!16, !8, i64 16}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
end_hunk_0
