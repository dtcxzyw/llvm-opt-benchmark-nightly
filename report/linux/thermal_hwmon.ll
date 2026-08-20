inline.NumInlined: 15
inline.NumDeleted: 12
begin_hunk_0_@thermal_add_hwmon_sysfs:bb.a
  %i.g = tail call ptr @strreplace(ptr noundef nonnull %i.b, i8 noundef zeroext 45, i8 noundef zeroext 95) #6 ; 0 uses
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = tail call ptr @hwmon_device_register_for_thermal(ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull @thermal_hwmon_groups) #6 ; 3 uses
  %i.j = getelementptr i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.j, align 8
  %i.k = icmp ugt ptr %i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = trunc i64 %i.l to i32
  tail call void @kfree(ptr noundef nonnull %i.b) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #6
  %i.n = getelementptr i8, ptr %i.b, i64 40       ; 3 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @thermal_hwmon_list, i64 8), align 8 ; 2 uses
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @thermal_hwmon_list, i64 8), align 8
  store ptr @thermal_hwmon_list, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.b, i64 48
  store ptr %i.o, ptr %i.p, align 8
  store volatile ptr %i.n, ptr %i.o, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.d ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_for_thermal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @thermal_remove_hwmon_sysfs(ptr nofree noundef readnone captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn.in.i = phi ptr [ @thermal_hwmon_list, %bb.a ], [ %.pn.i, %bb.c ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 8 uses
  %.not.i = icmp eq ptr %.pn.i, @thermal_hwmon_list
  br i1 %.not.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %.pn.i, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %thermal_hwmon_lookup.exit, label %bb.b, !llvm.loop !10

thermal_hwmon_lookup.exit:                        ; preds = %bb.c
  %.010.le.i = getelementptr i8, ptr %.pn.i, i64 -40 ; 2 uses
  %.not.not = icmp eq ptr %.010.le.i, null
  br i1 %.not.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %thermal_hwmon_lookup.exit
  %i.d = getelementptr i8, ptr %.pn.i, i64 8      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %.pn.i, align 8            ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8
  store volatile ptr %i.f, ptr %i.e, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.pn.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.d, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #6
  %i.h = getelementptr i8, ptr %.pn.i, i64 -8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @hwmon_device_unregister(ptr noundef %i.i) #6
  tail call void @kfree(ptr noundef nonnull %.010.le.i) #6
  br label %bb.e

.critedge:                                        ; preds = %bb.b, %thermal_hwmon_lookup.exit
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #6
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_thermal_hwmon_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #6 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %1) #8 ; 2 uses
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3) #7
  tail call void @devres_free(ptr noundef nonnull %i.a) #6
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %i.a, align 8
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.b, %bb.d ], [ 0, %bb.e ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_thermal_hwmon_release(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  tail call void @mutex_lock(ptr noundef nonnull @thermal_hwmon_list_lock) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn.in.i.i = phi ptr [ @thermal_hwmon_list, %bb.a ], [ %.pn.i.i, %bb.c ]
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8   ; 8 uses
  %.not.i.i = icmp eq ptr %.pn.i.i, @thermal_hwmon_list
  br i1 %.not.i.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %.pn.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %thermal_hwmon_lookup.exit.i, label %bb.b, !llvm.loop !10

thermal_hwmon_lookup.exit.i:                      ; preds = %bb.c
  %.010.le.i.i = getelementptr i8, ptr %.pn.i.i, i64 -40 ; 2 uses
  %.not.not.i = icmp eq ptr %.010.le.i.i, null
  br i1 %.not.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %thermal_hwmon_lookup.exit.i
  %i.e = getelementptr i8, ptr %.pn.i.i, i64 8    ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %.pn.i.i, align 8          ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.h, align 8
  store volatile ptr %i.g, ptr %i.f, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.pn.i.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.e, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #6
  %i.i = getelementptr i8, ptr %.pn.i.i, i64 -8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @hwmon_device_unregister(ptr noundef %i.j) #6
  tail call void @kfree(ptr noundef nonnull %.010.le.i.i) #6
  br label %thermal_remove_hwmon_sysfs.exit

.critedge.i:                                      ; preds = %bb.b, %thermal_hwmon_lookup.exit.i
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #6
  br label %thermal_remove_hwmon_sysfs.exit

thermal_remove_hwmon_sysfs.exit:                  ; preds = %bb.d, %.critedge.i
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @thermal_hwmon_attr_is_visible(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %1, @dev_attr_temp1_input
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr getelementptr inbounds nuw (i8, ptr @dev_attr_temp1_input, i64 8), align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, @dev_attr_temp1_crit
  br i1 %i.d, label %bb.d, label %4

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !12
  %i.h = getelementptr i8, ptr %i.g, i64 1056
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %4

bb.e:                                             ; preds = %bb.d
  %3 = call i32 %i.i(ptr noundef %i.g, ptr noundef nonnull %i.a) #6
  %.not16.not = icmp eq i32 %3, 0
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @dev_attr_temp1_crit, i64 8), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not16.not, label %bb.f, label %4

4:                                                ; preds = %.thread, %bb.e, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %4, %bb.b
  %.1 = phi i16 [ %i.c, %bb.b ], [ 0, %4 ], [ %i.j, %bb.e ]
  ret i16 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @temp1_input_show(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !12
  %i.e = call i32 @thermal_zone_get_temp(ptr noundef %i.d, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4
  %i.g = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %i.f) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0.in = phi i32 [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  %.0 = sext i32 %.0.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @temp1_crit_show(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !12
  %i.e = getelementptr i8, ptr %i.d, i64 1136     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.e) #6
  %i.f = getelementptr i8, ptr %i.d, i64 1056
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i32 %i.g(ptr noundef %i.d, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.a, align 4
  %i.j = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %i.i) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0.in = phi i32 [ %i.j, %bb.b ], [ %i.h, %bb.a ]
  %.0 = sext i32 %.0.in to i64
  call void @mutex_unlock(ptr noundef %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %.0
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #6 = { noredzone nounwind "no-builtin-wcslen" }
attributes #7 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { noredzone "no-builtin-wcslen" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"auto-init"}
end_hunk_0
