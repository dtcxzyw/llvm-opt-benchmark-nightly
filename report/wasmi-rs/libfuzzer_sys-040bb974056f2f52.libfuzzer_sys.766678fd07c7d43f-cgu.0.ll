Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/libfuzzer_sys-040bb974056f2f52.libfuzzer_sys.766678fd07c7d43f-cgu.0?download=true
inline.NumInlined: 43
inline.NumDeleted: 30
begin_hunk_0_@_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB19_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0B3x_:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaaeZZ3CSYWN_13libfuzzer_sys.exit.sink.split.i.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !22, !noalias !20, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #15, !noalias !23
  br label %_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB4_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0B2L_.exit

_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB4_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0B2L_.exit: ; preds = %bb.c, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaaeZZ3CSYWN_13libfuzzer_sys.exit.sink.split.i.i.i.i
  %.sroa.0.0.i.i = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaaeZZ3CSYWN_13libfuzzer_sys.exit.sink.split.i.i.i.i ], [ -1, %bb.d ], [ %.sroa.0.0.copyload1.i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  store i64 %.sroa.0.0.i.i, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  ret void

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16
  unreachable
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal void @_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0B3_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #17
  tail call void @_RNvNtCsG258MDvU3F_3std7process5abort() #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1f_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB1e_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0INtNtNtB1P_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3C_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !34, !noalias !35, !align !6, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !34, !noalias !35
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  call void @_RNvNvNtCsG258MDvU3F_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 25), !noalias !36
  %i.d = load i64, ptr %i.a, align 8, !range !8, !noalias !36, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !37
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !38
  br label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB1c_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0INtNtNtB1N_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3A_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !39, !noalias !36 ; 2 uses
  %i.h = icmp sgt i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaaeZZ3CSYWN_13libfuzzer_sys.exit.sink.split.i.i.i.i.i.i, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB1c_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0INtNtNtB1N_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3A_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaaeZZ3CSYWN_13libfuzzer_sys.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !39, !noalias !36, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #15, !noalias !40
  br label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB1c_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0INtNtNtB1N_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3A_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16, !noalias !38
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB1c_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0INtNtNtB1N_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3A_.exit: ; preds = %bb.c, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaaeZZ3CSYWN_13libfuzzer_sys.exit.sink.split.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaaeZZ3CSYWN_13libfuzzer_sys.exit.sink.split.i.i.i.i.i.i ], [ -1, %bb.d ], [ %.sroa.0.0.copyload1.i.i.i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.c, align 8, !noalias !38
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal void @_RNSNvYNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtNtCsG258MDvU3F_3std5panic13PanicHookInfoEE9call_once6vtableB8_(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  tail call fastcc void @_RNvYNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtNtCsG258MDvU3F_3std5panic13PanicHookInfoEE9call_onceB6_(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { ptr, ptr } @_RNvNtCsG258MDvU3F_3std9panicking9take_hook() ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !43
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #15 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0E3newBI_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0EBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #19
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0E3newBI_.exit: ; preds = %bb.a
  store ptr %i.c, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvNtCsG258MDvU3F_3std9panicking8set_hook(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @5)
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -9223372036854775808) i64 @_RNvCsaaeZZ3CSYWN_13libfuzzer_sys13fuzzer_mutate(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not4 = icmp ugt i64 %3, %1
  br i1 %.not4, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.a = tail call noundef i64 @LLVMFuzzerMutate(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3) #15 ; 2 uses
  %.not5 = icmp ugt i64 %i.a, %1
  br i1 %.not5, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path25RUST_LIBFUZZER_DEBUG_PATH, i64 24) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE15get_or_try_initNCINvB2_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zEB2O_.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB2_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zEB2J_()
  br label %_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE15get_or_try_initNCINvB2_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zEB2O_.exit

_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE15get_or_try_initNCINvB2_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zEB2O_.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path25RUST_LIBFUZZER_DEBUG_PATH
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvYNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtNtCsG258MDvU3F_3std5panic13PanicHookInfoEE9call_onceB6_(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !noalias !47, !nonnull !5
  invoke void %i.d(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) #17
          to label %.noexc unwind label %bb.b, !inline_history !48

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #18
          to label %.noexc2 unwind label %bb.b

.noexc2:                                          ; preds = %.noexc
  unreachable

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0EBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #19
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process5abort() unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsG258MDvU3F_3std3env3var5inner(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @rust_fuzzer_test_input({ i64, i64 }) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCsG258MDvU3F_3std9panicking9take_hook() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std9panicking8set_hook(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @LLVMFuzzerMutate(ptr noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noinline noreturn }
attributes #17 = { inlinehint }
attributes #18 = { noreturn }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{}
!6 = !{i64 8}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 0, i64 2}
!9 = distinct !{!9, i1 true, !"_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB18_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB17_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0EB3v_"}
!10 = distinct !{!10, !9, !"_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB18_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB17_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0EB3v_: argument 0"}
!11 = !{!10}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{i64 1, i64 536870913}
!14 = distinct !{!14, i1 true, !"_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0B2r_"}
!15 = distinct !{!15, !14, !"_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0B2r_: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0B3_"}
!17 = distinct !{!17, !16, !"_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0B3_: argument 0"}
!18 = distinct !{!18, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsaaeZZ3CSYWN_13libfuzzer_sys"}
!19 = distinct !{!19, !18, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsaaeZZ3CSYWN_13libfuzzer_sys: argument 0"}
!20 = !{!17, !15}
!21 = !{!15}
!22 = !{!19}
!23 = !{!19, !17, !15}
!24 = distinct !{!24, i1 true, !"_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB1c_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0INtNtNtB1N_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3A_"}
!25 = distinct !{!25, !24, !"_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB1c_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0INtNtNtB1N_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3A_: argument 0"}
!26 = distinct !{!26, i1 true, !"_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB19_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0B3x_"}
!27 = distinct !{!27, !26, !"_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE10initializeNCINvB19_11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0zE0E0B3x_: argument 0"}
!28 = distinct !{!28, i1 true, !"_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0B2r_"}
!29 = distinct !{!29, !28, !"_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEE11get_or_initNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0E0B2r_: argument 0"}
!30 = distinct !{!30, i1 true, !"_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0B3_"}
!31 = distinct !{!31, !30, !"_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys25rust_libfuzzer_debug_path0B3_: argument 0"}
!32 = distinct !{!32, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsaaeZZ3CSYWN_13libfuzzer_sys"}
!33 = distinct !{!33, !32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsaaeZZ3CSYWN_13libfuzzer_sys: argument 0"}
!34 = !{!25}
!35 = !{!27}
!36 = !{!31, !29, !27, !25}
!37 = !{!29, !27, !25}
!38 = !{!27, !25}
!39 = !{!33}
!40 = !{!33, !31, !29, !27, !25}
!41 = distinct !{!41, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0E3newBI_"}
!42 = distinct !{!42, !41, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0E3newBI_: argument 0"}
!43 = !{!42}
!44 = distinct !{!44, i1 true, !"_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0B3_"}
!45 = distinct !{!45, !44, !"_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0B3_: argument 1"}
!46 = distinct !{!46, !44, !"_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0B3_: argument 0"}
!47 = !{!46, !45}
!48 = !{ptr @_RNCNvCsaaeZZ3CSYWN_13libfuzzer_sys10initialize0B3_}
end_hunk_0
