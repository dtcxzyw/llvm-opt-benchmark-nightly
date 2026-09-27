Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.15?download=true
inline.NumInlined: 691
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep:bb.a

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #31
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @21)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = call fastcc noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  ret ptr %i.f

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow7wrapperINtB4_12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1196, !noalias !1197, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1196, !noalias !1197, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !1196
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow7wrapperINtB4_12MessageErrorReENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1201, !noalias !1202, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1201, !noalias !1202, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !1201
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtB7_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorE4fromB2o_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1205
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !1205 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorE3newBI_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorE3newBI_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @160, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtB7_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_3num5error13ParseIntErrorE4fromCsbNLsQi0JuJ4_5tgrep(i8 noundef range(i8 0, 6) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 1, i64 noundef range(i64 1, 9) 1) #25 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #33
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i8 %0, ptr %i.a, align 1
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @162, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsh_NtCsbNLsQi0JuJ4_5tgrep5serveNtB5_12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @21, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe10UnwindSafeNtNtBP_6marker4SendNtB2r_13RefUnwindSafeNtB35_4SyncEL_EIBJ_uE4callCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.a) #35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1206
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @164, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1207
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @165, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1208
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @166, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs30WoLBgco1_6ignore5ErrorENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs30WoLBgco1_6ignore5ErrorENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1209
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs30WoLBgco1_6ignore5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @167, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1210
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @168, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1211
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @169, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBO_5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1212
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBO_5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @170, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error7provideCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @171, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error7provideCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @172, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error7provideCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @173, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IteriENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutjENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1o_6option6OptionQIB23_hEEEE9call_onceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readnone captures(none) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs30WoLBgco1_6ignore5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs30WoLBgco1_6ignore5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs30WoLBgco1_6ignore5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @36, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @37, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionB6_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideB6_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @174, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @38, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error7provideCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @39, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @175, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_CsfmY3yR2dyUD_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXs_Cs3Hr4GOJ0UGa_7memmap2RNtNtCs5Xr050g3D4S_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs3Hr4GOJ0UGa_7memmap22osNtB2_9MmapInner3map(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtCs3Hr4GOJ0UGa_7memmap22os8file_len(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #14

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs30WoLBgco1_6ignore5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs30WoLBgco1_6ignore5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCs5Xr050g3D4S_3std4sync4mpmcINtB5_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCs5Xr050g3D4S_3std4sync4mpmcINtB5_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs5Xr050g3D4S_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtCs30WoLBgco1_6ignore5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsbzNSmZPCnTx_10tgrep_core5errorNtB2_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsjFxWRWgRcyr_5rayon4iter13from_par_iterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEINtB5_20FromParallelIteratorB1i_E13from_par_iterINtNtB5_10while_some9WhileSomeINtNtB5_3map3MapIB3m_INtNtB7_5slice4IterTNtNtBQ_6string6StringINtNtBQ_4sync3ArcNtB1k_11DecodedFileEEENCNvB1k_13handle_searchs2_0ENCINvNvXs2_NtB7_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEIB26_IB5O_ppEE13from_par_iter2okB1i_B40_E0EEEB1m_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEE10into_innerCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEE16into_boxed_sliceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEE16into_boxed_sliceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2W_3ops5range5RangejENCNvMs_BX_INtBX_7ChannelB1G_E13with_capacity0EE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context3new() unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4) unnamed_addr #0

end_hunk_0
