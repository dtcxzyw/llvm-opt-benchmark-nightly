inline.NumInlined: 114
inline.NumDeleted: 86
begin_hunk_0_@_ZN6hermes2vm18StatSamplingThreadC2ENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE:bb.a
_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #11, !inline_history !34
  br label %_ZNSt6threadC2IMN6hermes2vm18StatSamplingThreadEFvvEJPS3_EvEEOT_DpOT0_.exit

_ZNSt6threadC2IMN6hermes2vm18StatSamplingThreadEFvvEJPS3_EvEEOT_DpOT0_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN6hermes2vm12ProcessStatsC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm18StatSamplingThread3runEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #0 align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !7, !range !35, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #13
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #11
  call void @_ZN6hermes2vm12ProcessStats6sampleENSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 %i.i) #11
  %i.j = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #11
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.k = add nsw i64 %.sroa.0.0.copyload.i.i.i, %i.j ; 2 uses
  %i.l = sdiv i64 %i.k, 1000000000                ; 2 uses
  %.neg.i.i.i.i.i = mul nsw i64 %i.l, -1000000000
  %i.m = add i64 %.neg.i.i.i.i.i, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i64 %i.l, ptr %1, align 8, !tbaa !37
  store i64 %i.m, ptr %i.h, align 8, !tbaa !39
  %i.n = call i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1) #11 ; 0 uses
  %i.o = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.p = load i8, ptr %0, align 8, !tbaa !7, !range !35, !noundef !36
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, !llvm.loop !40

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm18StatSamplingThreadD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not, label %_ZNSt6threadD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %0, align 8, !tbaa !7
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #11 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #11
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = tail call { i64, i64 } @_ZNK6hermes2vm12ProcessStats17getIntegratedInfoEv(ptr noundef nonnull align 8 dereferenceable(72) %i.f) #11 ; 0 uses
  %.sroa.0.0.copyload.i.i1.pr = load i64, ptr %i.a, align 8, !tbaa !22
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i1.pr, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #13
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.a, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.h) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6hermes2vm18StatSamplingThread9isRunningEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !22
  %i.b = icmp ne i64 %.sroa.0.0.copyload.i, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZN6hermes2vm18StatSamplingThread4stopEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #13
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !7
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = tail call { i64, i64 } @_ZNK6hermes2vm12ProcessStats17getIntegratedInfoEv(ptr noundef nonnull align 8 dereferenceable(72) %i.f) #11
  ret { i64, i64 } %i.g
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZNK6hermes2vm18StatSamplingThread4infoEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call { i64, i64 } @_ZNK6hermes2vm12ProcessStats17getIntegratedInfoEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #11
  ret { i64, i64 } %i.b
}

declare { i64, i64 } @_ZNK6hermes2vm12ProcessStats17getIntegratedInfoEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN6hermes2vm12ProcessStats6sampleENSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(72), i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm18StatSamplingThreadEFvvEPS5_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm18StatSamplingThreadEFvvEPS5_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.elt2.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.unpack3.i.i.i.i = load i64, ptr %.elt2.i.i.i.i, align 8, !tbaa !43
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.unpack3.i.i.i.i ; 2 uses
  %1 = load ptr, ptr %i.c, align 8, !tbaa !24
  %2 = load ptr, ptr %1, align 8, !nosanitize !36
  tail call void %2(ptr noundef nonnull align 8 dereferenceable(184) %i.c) #11, !inline_history !44
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare i32 @pthread_cond_clockwait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6hermes2vm18StatSamplingThreadE", !9, i64 0, !10, i64 8, !12, i64 48, !14, i64 96, !16, i64 104, !20, i64 176}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"_ZTSSt5mutex", !11, i64 0}
!11 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!12 = !{!"_ZTSSt18condition_variable", !13, i64 0}
!13 = !{!"_ZTSSt9__condvar", !5, i64 0}
!14 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSN6hermes2vm12ProcessStatsE", !17, i64 0, !18, i64 8, !19, i64 24, !19, i64 48}
!17 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !14, i64 0}
!18 = !{!"_ZTSN6hermes2vm12ProcessStats4InfoE", !15, i64 0, !15, i64 8}
!19 = !{!"_ZTSN6hermes2vm14ApproxIntegralE", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_ZTSSt6thread", !21, i64 0}
!21 = !{!"_ZTSNSt6thread2idE", !15, i64 0}
!22 = !{!15, !15, i64 0}
!23 = !{!21, !15, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !6, i64 0}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSSt10_Head_baseILm1EPN6hermes2vm18StatSamplingThreadELb0EE", !28, i64 0}
!28 = !{!"p1 _ZTSN6hermes2vm18StatSamplingThreadE", !29, i64 0}
!29 = !{!"any pointer", !5, i64 0}
!30 = !{!31, !5, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EMN6hermes2vm18StatSamplingThreadEFvvELb0EE", !5, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSNSt6thread6_StateE", !29, i64 0}
!34 = distinct !{null, null, null}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!38, !15, i64 0}
!38 = !{!"_ZTS8timespec", !15, i64 0, !15, i64 8}
!39 = !{!38, !15, i64 8}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!28, !28, i64 0}
!43 = !{!5, !5, i64 0}
!44 = distinct !{null, null, null, null}
end_hunk_0
