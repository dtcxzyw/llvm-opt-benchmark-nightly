inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internal32DumpPCAndFrameSizesAndStackTraceEPvPKS2_PiiibPFvPKcS2_ES2_:bb.a
  %spec.select.i = select i1 %i.i, ptr %i.e, ptr @.str.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 1024, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 18, ptr noundef nonnull %0, ptr noundef nonnull %spec.select.i) #9 ; 0 uses
  call void %6(ptr noundef nonnull %i.f, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.k = icmp sgt i32 %3, 0
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218debugging_internal32DumpPCAndFrameSizesAndStackTraceEPvPKS2_PiiibPFvPKcS2_ES2_:bb.a
.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 100, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 18, ptr noundef nonnull %0) #9 ; 0 uses
  call void %6(ptr noundef nonnull %i.d, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.m = icmp sgt i32 %3, 0
  br i1 %i.m, label %.lr.ph.split.preheader, label %._crit_edge
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218debugging_internal32DumpPCAndFrameSizesAndStackTraceEPvPKS2_PiiibPFvPKcS2_ES2_:bb.a
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us: ; preds = %bb.e, %bb.d
  call void %6(ptr noundef nonnull %i.c, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !11

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us, %.thread45, %.thread, %bb.c
  %i.w = icmp sgt i32 %4, 0
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218debugging_internal32DumpPCAndFrameSizesAndStackTraceEPvPKS2_PiiibPFvPKcS2_ES2_:bb.a
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit: ; preds = %bb.f, %bb.g
  call void %6(ptr noundef nonnull %i.a, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !11

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218debugging_internal14DumpStackTraceEiibPFvPKcPvES4_:bb.a
  %.0.i.us = phi ptr [ %i.b, %bb.e ], [ @.str.3, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef %i.o, ptr noundef nonnull %.0.i.us) #9 ; 0 uses
  call void %3(ptr noundef nonnull %i.c, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115DumpPCAndSymbolEPFvPKcPvES5_S5_S4_.exit.us, %bb.c
  %i.v = load ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_122debug_stack_trace_hookE, align 8, !tbaa !7 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218debugging_internal14DumpStackTraceEiibPFvPKcPvES4_:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef %i.x) #9 ; 0 uses
  call void %3(ptr noundef nonnull %i.a, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count50
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !13

bb.f:                                             ; preds = %._crit_edge
  call void %i.v(ptr noundef %.1, i32 noundef %i.l, ptr noundef %3, ptr noundef %4)
end_hunk_5
begin_hunk_6_@munmap
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
end_hunk_6
