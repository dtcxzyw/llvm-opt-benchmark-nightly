Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/v8threads?download=true
inline.NumInlined: 121
inline.NumDeleted: 44
begin_hunk_0_@_ZN2v88internal13ThreadManagerD2Ev:bb.a
  br label %_ZN2v88internal11ThreadStateD2Ev.exit8.i

_ZN2v88internal11ThreadStateD2Ev.exit8.i:         ; preds = %bb.d, %._crit_edge.thread.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #14
  br label %_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE.exit

_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE.exit: ; preds = %._crit_edge.i, %_ZN2v88internal11ThreadStateD2Ev.exit8.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not9.i1 = icmp eq ptr %i.q, %i.o
  br i1 %.not9.i1, label %._crit_edge.thread.i6, label %.lr.ph.i2

._crit_edge.i5:                                   ; preds = %bb.f
  %i.r = icmp eq ptr %i.o, null
  br i1 %i.r, label %_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE.exit8, label %._crit_edge.thread.i6

.lr.ph.i2:                                        ; preds = %_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE.exit, %bb.f
  %.010.i3 = phi ptr [ %i.t, %bb.f ], [ %i.q, %_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i3, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i3, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i2
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i2
  tail call void @_ZdlPvm(ptr noundef nonnull %.010.i3, i64 noundef 40) #14
  %.not.i4 = icmp eq ptr %i.t, %i.o
  br i1 %.not.i4, label %._crit_edge.i5, label %.lr.ph.i2, !llvm.loop !8

._crit_edge.thread.i6:                            ; preds = %._crit_edge.i5, %_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN2v88internal11ThreadStateD2Ev.exit8.i7, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i6
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #14
  br label %_ZN2v88internal11ThreadStateD2Ev.exit8.i7

_ZN2v88internal11ThreadStateD2Ev.exit8.i7:        ; preds = %bb.g, %._crit_edge.thread.i6
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 40) #14
  br label %_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE.exit8

_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE.exit8: ; preds = %._crit_edge.i5, %_ZN2v88internal11ThreadStateD2Ev.exit8.i7
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13ThreadManager21DeleteThreadStateListEPNS0_11ThreadStateE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.b, %1
  br i1 %.not9, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.e, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.010 = phi ptr [ %i.e, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %.010, i64 noundef 40) #14
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2v88internal11ThreadStateD2Ev.exit8, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #14
  br label %_ZN2v88internal11ThreadStateD2Ev.exit8

_ZN2v88internal11ThreadStateD2Ev.exit8:           ; preds = %._crit_edge.thread, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 40) #14
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal11ThreadStateD2Ev.exit8, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN2v88internal7Isolate40FindOrAllocatePerThreadDataForThisThreadEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal13ThreadManager9CurrentIdEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() #12
  ret i32 %i.a
}

declare noundef ptr @_ZN2v88internal22HandleScopeImplementer13ArchiveThreadEPc(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal7Isolate13ArchiveThreadEPc(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11Relocatable12ArchiveStateEPNS0_7IsolateEPc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal10StackGuard17ArchiveStackGuardEPc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal5Debug12ArchiveDebugEPc(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11RegExpStack12ArchiveStackEPc(ptr noundef nonnull align 8 dereferenceable(1072), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal12Bootstrapper12ArchiveStateEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal22HandleScopeImplementer19FreeThreadResourcesEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN2v88internal10StackGuard19FreeThreadResourcesEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN2v88internal12Bootstrapper19FreeThreadResourcesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13ThreadManager10IsArchivedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN2v88internal7Isolate30FindPerThreadDataForThisThreadEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.b) #12 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13ThreadManager7IterateEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.d, %i.h
  %.not1618 = icmp eq ptr %i.d, null
  %.not16 = or i1 %i.i, %.not1618
  br i1 %.not16, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  ret void

select.unfold:                                    ; preds = %.lr.ph, %select.unfold
  %.017 = phi ptr [ %i.d, %.lr.ph ], [ %i.t, %select.unfold ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr @_ZN2v88internal22HandleScopeImplementer7IterateEPNS0_11RootVisitorEPc(ptr noundef %1, ptr noundef %i.l) #12
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = tail call noundef ptr @_ZN2v88internal7Isolate7IterateEPNS0_11RootVisitorEPc(ptr noundef nonnull align 8 dereferenceable(64320) %i.n, ptr noundef %1, ptr noundef %i.m) #12
  %i.p = tail call noundef ptr @_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPc(ptr noundef %1, ptr noundef %i.o) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = tail call noundef ptr @_ZN2v88internal5Debug7IterateEPNS0_11RootVisitorEPc(ptr noundef %1, ptr noundef nonnull %i.q) #12 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.017, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.t, %i.x
  %.not19 = icmp eq ptr %i.t, null
  %.not = or i1 %i.y, %.not19
  br i1 %.not, label %select.unfold._crit_edge, label %select.unfold
}

declare noundef ptr @_ZN2v88internal22HandleScopeImplementer7IterateEPNS0_11RootVisitorEPc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal7Isolate7IterateEPNS0_11RootVisitorEPc(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal5Debug7IterateEPNS0_11RootVisitorEPc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13ThreadManager22IterateArchivedThreadsEPNS0_13ThreadVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.d, %i.h
  %.not911 = icmp eq ptr %i.d, null
  %.not9 = or i1 %i.i, %.not911
  br i1 %.not9, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  ret void

select.unfold:                                    ; preds = %.lr.ph, %select.unfold
  %.010 = phi ptr [ %i.d, %.lr.ph ], [ %i.r, %select.unfold ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.010, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 @_ZN2v88internal22HandleScopeImplementer21ArchiveSpacePerThreadEv() #12
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.p = load ptr, ptr %i.j, align 8
  tail call void @_ZN2v88internal7Isolate13IterateThreadEPNS0_13ThreadVisitorEPc(ptr noundef nonnull align 8 dereferenceable(64320) %i.p, ptr noundef %1, ptr noundef %i.o) #12
  %i.q = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.010, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.r, %i.v
  %.not12 = icmp eq ptr %i.r, null
  %.not = or i1 %i.w, %.not12
  br i1 %.not, label %select.unfold._crit_edge, label %select.unfold
}

declare noundef i32 @_ZN2v88internal22HandleScopeImplementer21ArchiveSpacePerThreadEv() local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate13IterateThreadEPNS0_13ThreadVisitorEPc(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal5Debug10ThreadInitEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() local_unnamed_addr #2

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal5Debug21ArchiveSpacePerThreadEv() local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal12Bootstrapper21ArchiveSpacePerThreadEv() local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal11Relocatable21ArchiveSpacePerThreadEv() local_unnamed_addr #2

declare void @_ZN2v88internal14ThreadLocalTop4FreeEv(ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #2

declare void @_ZN2v88internal11RegExpStack11ThreadLocal18ResetToStaticStackEPS1_(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #10

declare void @_ZN2v88internal24OnCriticalMemoryPressureEv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
