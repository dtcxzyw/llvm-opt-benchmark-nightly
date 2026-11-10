Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/completion_queue_cc?download=true
inline.NumInlined: 139
inline.NumDeleted: 82
begin_hunk_0_@_ZN4grpc8internal11GrpcLibraryD0Ev:bb.a

_ZN4grpc8internal11GrpcLibraryD2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @grpc_shutdown() local_unnamed_addr #3

declare void @grpc_completion_queue_shutdown(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN4grpc15CompletionQueue21CallbackAlternativeCQEvEN3$_08__invokeEv"() #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !28
  store ptr %i.a, ptr @_ZN4grpc12_GLOBAL__N_125g_callback_alternative_muE, align 8, !tbaa !42
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4grpc15CompletionQueueC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.grpc_completion_queue_attributes, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store i32 2, ptr %1, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4grpc8internal11GrpcLibraryE, i64 16), ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !11
  tail call void @grpc_init()
  store i8 1, ptr %i.d, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4grpc15CompletionQueueE, i64 16), ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  store ptr %i.f, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.h, align 8, !tbaa !31
  %i.i = invoke ptr @grpc_completion_queue_factory_lookup(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = invoke ptr @grpc_completion_queue_create(ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef null)
          to label %_ZN4grpc15CompletionQueueC2ERK32grpc_completion_queue_attributes.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.09.i.i.i, align 8, !tbaa !30 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #22
  %.not.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.c
  call void @_ZN4grpc8internal11GrpcLibraryD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(64) %0) #17
  resume { ptr, i32 } %i.k

_ZN4grpc15CompletionQueueC2ERK32grpc_completion_queue_attributes.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i64 1, ptr %i.o release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

declare i32 @gpr_cpu_num_cores() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core6Thread5StartEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = load i32, ptr %0, align 8, !tbaa !59     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.not = icmp eq i32 %i.c, 1
  br i1 %.not16.not, label %.critedge, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.5, i32 noundef 149, ptr noundef nonnull @.str.7) #18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #19
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #19
  unreachable

.critedge:                                        ; preds = %bb.b
  store i32 2, ptr %0, align 8, !tbaa !59
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.critedge18

bb.e:                                             ; preds = %bb.a
  %.not15.not = icmp eq i32 %i.c, 4
  br i1 %.not15.not, label %.critedge18, label %bb.f, !prof !40

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.5, i32 noundef 158, ptr noundef nonnull @.str.8) #18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit19 unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit19: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  unreachable

.critedge18:                                      ; preds = %bb.e, %.critedge
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @grpc_completion_queue_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @grpc_completion_queue_factory_lookup(ptr noundef) local_unnamed_addr #3

declare void @_ZN9grpc_core6ThreadC1EPKcPFvPvES3_PbRKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN4grpc12_GLOBAL__N_121CallbackAlternativeCQ3RefEvENUlPvE_8__invokeES2_(ptr nofree noundef readonly captures(none) %0) #11 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.b = tail call { i64, i64 } @gpr_now(i32 noundef 1) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call { i64, i64 } @gpr_time_from_millis(i64 noundef 1000, i32 noundef 3) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = tail call { i64, i64 } @gpr_time_add(i64 %i.c, i64 %i.d, i64 %i.f, i64 %i.g) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = tail call { i64, ptr } @grpc_completion_queue_next(ptr noundef %.val, i64 %i.i, i64 %i.j, ptr noundef null) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %.sroa.012.0.extract.trunc.i = trunc i64 %i.l to i32
  switch i32 %.sroa.012.0.extract.trunc.i, label %bb.d [
    i32 0, label %_ZZN4grpc12_GLOBAL__N_121CallbackAlternativeCQ3RefEvENKUlPvE_clES2_.exit
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = tail call { i64, i64 } @gpr_now(i32 noundef 1) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  %i.p = tail call { i64, i64 } @gpr_time_from_millis(i64 noundef 100, i32 noundef 3) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  %i.s = tail call { i64, i64 } @gpr_time_add(i64 %i.n, i64 %i.o, i64 %i.q, i64 %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1
  tail call void @gpr_sleep_until(i64 %i.t, i64 %i.u)
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.v = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94
  %.sroa.012.4.extract.shift.i = lshr i64 %i.l, 32
  %.sroa.012.4.extract.trunc.i = trunc nuw i64 %.sroa.012.4.extract.shift.i to i32
  tail call void %i.w(ptr noundef nonnull %i.v, i32 noundef %.sroa.012.4.extract.trunc.i), !inline_history !92
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.c
  br label %bb.b

_ZZN4grpc12_GLOBAL__N_121CallbackAlternativeCQ3RefEvENKUlPvE_clES2_.exit: ; preds = %bb.b
  ret void
}

declare { i64, i64 } @gpr_time_add(i64, i64, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @gpr_now(i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @gpr_time_from_millis(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @gpr_sleep_until(i64, i64) local_unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @grpc_completion_queue_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !61}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"_ZTSN4grpc8internal11GrpcLibraryE", !9, i64 8}
!11 = !{!10, !9, i64 8}
!12 = !{!"vtable pointer", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTS21grpc_completion_queue", !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSSt13__atomic_baseIlE", !16, i64 0}
!18 = !{!"_ZTSSt6atomicIlE", !17, i64 0}
!19 = !{!"_ZTSN4absl12lts_202505125MutexE", !18, i64 0}
!20 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !14, i64 0}
!21 = !{!"_ZTSNSt8__detail15_List_node_baseE", !20, i64 0, !20, i64 8}
!22 = !{!"_ZTSNSt8__detail17_List_node_headerE", !21, i64 0, !16, i64 16}
!23 = !{!"_ZTSNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EE10_List_implE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EEE", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx114listIPKN4grpc6ServerESaIS4_EEE", !24, i64 0}
!26 = !{!"_ZTSN4grpc15CompletionQueueE", !10, i64 0, !15, i64 16, !16, i64 24, !19, i64 32, !25, i64 40}
!27 = !{!26, !15, i64 16}
!28 = !{!17, !16, i64 0}
!29 = !{!21, !20, i64 8}
!30 = !{!21, !20, i64 0}
!31 = !{!22, !16, i64 16}
!32 = !{!9, !9, i64 0}
!33 = !{!14, !14, i64 0}
!34 = !{!"p1 _ZTSN4grpc15CompletionQueueE", !14, i64 0}
!35 = !{!"_ZTSN4grpc15CompletionQueue23CompletionQueueTLSCacheE", !34, i64 0, !9, i64 8}
!36 = !{!35, !34, i64 0}
!37 = !{!35, !9, i64 8}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!"p1 _ZTSN4absl12lts_202505125MutexE", !14, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSSt6vectorIN9grpc_core6ThreadESaIS1_EE", !14, i64 0}
!44 = !{!"_ZTSN4grpc12_GLOBAL__N_121CallbackAlternativeCQE", !6, i64 0, !34, i64 8, !43, i64 16}
!45 = !{!44, !6, i64 0}
!46 = !{!44, !34, i64 8}
!47 = !{!44, !43, i64 16}
!48 = !{!"p1 _ZTSN9grpc_core6ThreadE", !14, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core6ThreadESaIS1_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!51 = !{!50, !48, i64 8}
!52 = !{!50, !48, i64 16}
!53 = !{!"_ZTSN9grpc_core6Thread7OptionsE", !9, i64 0, !9, i64 1, !16, i64 8}
!54 = !{!53, !9, i64 0}
!55 = !{!50, !48, i64 0}
!56 = !{!"_ZTSN9grpc_core6Thread11ThreadStateE", !5, i64 0}
!57 = !{!"p1 _ZTSN9grpc_core8internal24ThreadInternalsInterfaceE", !14, i64 0}
!58 = !{!"_ZTSN9grpc_core6ThreadE", !56, i64 0, !57, i64 8, !53, i64 16}
!59 = !{!58, !56, i64 0}
!60 = !{!58, !57, i64 8}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{ptr @_ZN4grpc8internal11GrpcLibraryD2Ev}
!63 = !{!"p1 _ZTS29grpc_completion_queue_functor", !14, i64 0}
!64 = !{!6, !6, i64 0}
!65 = distinct !{!65, i1 true, !"_ZSt19__relocate_object_aIN9grpc_core6ThreadES1_SaIS1_EEvPT_PT0_RT1_"}
!66 = distinct !{!66, !65, !"_ZSt19__relocate_object_aIN9grpc_core6ThreadES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !65, !"_ZSt19__relocate_object_aIN9grpc_core6ThreadES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!68 = distinct !{!68, !61}
!69 = distinct !{!69, !61}
!70 = !{!34, !34, i64 0}
!71 = !{!53, !9, i64 1}
!72 = !{!53, !16, i64 8}
!73 = !{!66}
!74 = !{!67}
!75 = !{!16, !16, i64 0}
!76 = !{i64 0, i64 1, !32, i64 1, i64 1, !32, i64 8, i64 8, !75}
!77 = !{!66, !67}
!78 = distinct !{null}
!79 = distinct !{null, null}
!80 = distinct !{!80, !61}
!81 = distinct !{null}
!82 = !{!"branch_weights", i32 1, i32 4001}
!83 = !{ptr @_ZN4grpc15CompletionQueueD2Ev}
!84 = !{ptr @_ZN4grpc15CompletionQueueD2Ev, ptr @_ZN4grpc8internal11GrpcLibraryD2Ev}
!85 = !{!"_ZTS23grpc_cq_completion_type", !5, i64 0}
!86 = !{!"_ZTS20grpc_cq_polling_type", !5, i64 0}
!87 = !{!"_ZTS32grpc_completion_queue_attributes", !6, i64 0, !85, i64 4, !86, i64 8, !63, i64 16}
!88 = !{!87, !6, i64 0}
!89 = !{!87, !85, i64 4}
!90 = !{!87, !86, i64 8}
!91 = !{!87, !63, i64 16}
!92 = distinct !{null}
!93 = !{!"_ZTS29grpc_completion_queue_functor", !14, i64 0, !6, i64 8, !6, i64 12, !63, i64 16}
!94 = !{!93, !14, i64 0}
end_hunk_0
