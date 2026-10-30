Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qos-smmuv3?download=true
inline.NumInlined: 84
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@qsmmu_run_translation_case:bb.a

._crit_edge:                                      ; preds = %bb.e, %bb.c
  call void @g_free(ptr noundef %i.aj) #8
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.ap = phi i32 [ %i.bb, %bb.e ], [ %i.ao, %bb.c ]
  %.027 = phi i32 [ %i.bc, %bb.e ], [ 0, %bb.c ]  ; 3 uses
  %i.aq = srem i32 %.027, 4
  %i.ar = shl nsw i32 %i.aq, 3
  %i.as = lshr i32 305419896, %i.ar
  %i.at = sext i32 %.027 to i64
  %i.au = getelementptr inbounds i8, ptr %i.aj, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = and i32 %i.as, 126                      ; 2 uses
  %i.ax = zext i8 %i.av to i32
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.az = uitofp i8 %i.av to x86_fp80
  %i.ba = uitofp nneg i32 %i.aw to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @__func__.qsmmu_run_translation_case, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.az, ptr noundef nonnull @.str.3, x86_fp80 noundef %i.ba, i8 noundef signext 105) #8
  %.pre = load i32, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.bb = phi i32 [ %i.ap, %.lr.ph ], [ %.pre, %bb.d ] ; 2 uses
  %i.bc = add nuw i32 %.027, 1                    ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %i.bb
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !10

bb.f:                                             ; preds = %._crit_edge, %qsmmu_sec_sid_to_space.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @qtest_memset(ptr noundef, i64 noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #4

declare void @qos_iommu_testdev_single_translation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -559038801, 1) i32 @qsmmu_single_translation_setup(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call i32 @qsmmu_build_translation(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g) ; 4 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 8
  %i.j = load i32, ptr %i.f, align 8
  tail call void (ptr, ...) @g_test_message(ptr noundef nonnull @.str.1, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.h) #8
  br label %qsmmu_setup_and_enable_translation.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load i32, ptr %i.d, align 4
  tail call void @qsmmu_program_bank(ptr noundef %i.k, i64 noundef %i.m, i32 noundef 1)
  %cond.i.i.i = icmp eq i32 %i.n, 1
  br i1 %cond.i.i.i, label %qsmmu_setup_and_enable_translation.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 309, ptr noundef nonnull @__func__.qsmmu_bank_base, ptr noundef null) #7
  unreachable

qsmmu_setup_and_enable_translation.exit:          ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.h, ptr %i.o, align 8
  ret i32 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @qsmmu_single_translation_attrs(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4
  %cond.i = icmp eq i32 %i.b, 1
  br i1 %cond.i, label %qsmmu_build_dma_attrs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 50, ptr noundef nonnull @__func__.qsmmu_build_dma_attrs, ptr noundef null) #7
  unreachable

qsmmu_build_dma_attrs.exit:                       ; preds = %bb.a
  ret i32 10
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @qsmmu_single_translation_validate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4
  %.not.i.i = icmp eq i32 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %qsmmu_validate_test_result.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4
  br label %qsmmu_validate_test_result.exit

qsmmu_validate_test_result.exit:                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ -559087614, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  tail call void (ptr, ...) @g_test_message(ptr noundef nonnull @.str.24, i32 noundef %.0.i.i, i32 noundef %i.f) #8
  %i.g = load i32, ptr %i.e, align 4
  %i.h = icmp eq i32 %i.g, %.0.i.i
  ret i1 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @qsmmu_single_translation_report(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @g_test_message(ptr noundef nonnull @.str.25, i32 noundef %i.b, i32 noundef %1) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @g_test_message(ptr noundef nonnull @.str.26, i32 noundef %i.b) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #6

declare void @qtest_memread(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @g_assertion_message_cmpnum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, x86_fp80 noundef, ptr noundef, x86_fp80 noundef, i8 noundef signext) local_unnamed_addr #4

declare void @qtest_writel(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @qtest_readl(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qsmmu_setup_translation_tables(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = select i1 %3, ptr @.str.21, ptr @.str.22
  tail call void (ptr, ...) @g_test_message(ptr noundef nonnull @.str.20, i64 noundef %1, i32 noundef %4, ptr noundef nonnull %i.a) #8
  %cond.i = icmp eq i32 %2, 1
  br i1 %cond.i, label %qsmmu_apply_space_offs.exit72, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @__func__.qsmmu_get_pte_attrs, ptr noundef null) #7
  unreachable

qsmmu_apply_space_offs.exit72:                    ; preds = %bb.a
  br i1 %3, label %qsmmu_get_pte_attrs.exit83, label %qsmmu_apply_space_offs.exit81

qsmmu_apply_space_offs.exit81:                    ; preds = %qsmmu_apply_space_offs.exit72
  %i.b = and i32 %4, -3
  %or.cond.i = icmp eq i32 %i.b, 0
  %sh.diff = lshr i64 %1, 36
  %i.c = and i64 %sh.diff, 4088
  %i.d = or disjoint i64 %i.c, 1313669120         ; 2 uses
  tail call fastcc void @qsmmu_setup_s2_walk_for_ipa(ptr noundef %0, i32 noundef 1, i64 noundef range(i64 0, 281474976710649) %i.d, i64 noundef 1313669120, i1 noundef zeroext false)
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef range(i64 0, 281474976710649) %i.d, i64 noundef range(i64 1310109696, -9223372035512598528) -9223372035541102589) #8
  %sh.diff84 = lshr i64 %1, 27
  %i.e = and i64 %sh.diff84, 4088
  %i.f = or disjoint i64 %i.e, 1313673216         ; 2 uses
  tail call fastcc void @qsmmu_setup_s2_walk_for_ipa(ptr noundef %0, i32 noundef 1, i64 noundef range(i64 0, 281474976710649) %i.f, i64 noundef 1313669120, i1 noundef zeroext false)
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef range(i64 0, 281474976710649) %i.f, i64 noundef range(i64 1310109696, -9223372035512598528) -9223372035541098493) #8
  %i.g = lshr i64 %1, 18
  %i.h = and i64 %i.g, 4088
  %i.i = or disjoint i64 %i.h, 1313677312         ; 2 uses
  tail call fastcc void @qsmmu_setup_s2_walk_for_ipa(ptr noundef %0, i32 noundef 1, i64 noundef range(i64 0, 281474976710649) %i.i, i64 noundef 1313669120, i1 noundef zeroext false)
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef range(i64 0, 281474976710649) %i.i, i64 noundef range(i64 1310109696, -9223372035512598528) -9223372035541094397) #8
  %i.j = lshr i64 %1, 9
  %i.k = and i64 %i.j, 4088
  %i.l = or disjoint i64 %i.k, 1313681408         ; 2 uses
  %i.m = select i1 %or.cond.i, i64 288230377473681251, i64 288230377473681379 ; 2 uses
  tail call fastcc void @qsmmu_setup_s2_walk_for_ipa(ptr noundef %0, i32 noundef 1, i64 noundef range(i64 0, 281474976710649) %i.l, i64 noundef 1313669120, i1 noundef zeroext false)
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef range(i64 0, 281474976710649) %i.l, i64 noundef range(i64 1310109696, -9223372035512598528) %i.m) #8
  br label %bb.c

qsmmu_get_pte_attrs.exit83:                       ; preds = %qsmmu_apply_space_offs.exit72
  %i.n = or i64 %1, -9223372036854775805
  %5 = and i64 %1, 281474976706560
  br label %bb.c

bb.c:                                             ; preds = %qsmmu_get_pte_attrs.exit83, %qsmmu_apply_space_offs.exit81
  %.0 = phi i64 [ %5, %qsmmu_get_pte_attrs.exit83 ], [ 1321967616, %qsmmu_apply_space_offs.exit81 ]
  %.0.a = phi i64 [ %i.n, %qsmmu_get_pte_attrs.exit83 ], [ %i.m, %qsmmu_apply_space_offs.exit81 ]
  %i.o = xor i1 %3, true
  tail call fastcc void @qsmmu_setup_s2_walk_for_ipa(ptr noundef %0, i32 noundef 1, i64 noundef %.0.a, i64 noundef 1313669120, i1 noundef zeroext %i.o)
  %i.p = and i64 %1, 4095
  %i.q = or disjoint i64 %.0, %i.p
  tail call void (ptr, ...) @g_test_message(ptr noundef nonnull @.str.23, i64 noundef %i.q) #8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @qsmmu_bank_base(i64 noundef returned %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret i64 %0

bb.c:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 309, ptr noundef nonnull @__func__.qsmmu_bank_base, ptr noundef null) #7
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qsmmu_program_bank(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, 68
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.a, i32 noundef -2147483648) #8
  %i.b = add i64 %1, 32                           ; 2 uses
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.b, i32 noundef 0) #8
  %i.c = add i64 %1, 40
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.c, i32 noundef 3445) #8
  %cond.i.i = icmp eq i32 %2, 1
  br i1 %cond.i.i, label %qsmmu_apply_space_offs.exit34, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 102, ptr noundef nonnull @__func__.qsmmu_space_offset, ptr noundef null) #7
  unreachable

qsmmu_apply_space_offs.exit34:                    ; preds = %bb.a
  %i.d = add i64 %1, 144
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef %i.d, i64 noundef 1310109706) #8
  %i.e = add i64 %1, 156
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.e, i32 noundef 0) #8
  %i.f = add i64 %1, 152
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.f, i32 noundef 0) #8
  %i.g = add i64 %1, 160
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef %i.g, i64 noundef 1310130186) #8
  %i.h = add i64 %1, 168
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.h, i32 noundef 0) #8
  %i.i = add i64 %1, 172
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.i, i32 noundef 0) #8
  %i.j = add i64 %1, 136
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.j, i32 noundef 5) #8
  %i.k = add i64 %1, 128
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef %i.k, i64 noundef 1310167040) #8
  tail call void @qtest_writel(ptr noundef %0, i64 noundef %i.b, i32 noundef 13) #8
  ret void
}

declare void @qtest_writeq(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @qsmmu_setup_s2_walk_for_ipa(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef range(i64 1310109696, -9223372035512598528) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %qsmmu_apply_space_offs.exit44, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @__func__.qsmmu_get_pte_attrs, ptr noundef null) #7
  unreachable

qsmmu_apply_space_offs.exit44:                    ; preds = %bb.a
  %i.a = and i64 %3, 281474976706560
  %sh.diff = lshr i64 %2, 36
  %i.b = and i64 %sh.diff, 4088
  %i.c = or disjoint i64 %i.a, %i.b
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef %i.c, i64 noundef -9223372035541102589) #8
  %sh.diff52 = lshr i64 %2, 27
  %i.d = and i64 %sh.diff52, 4088
  %i.e = or disjoint i64 %i.d, 1313673216
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef %i.e, i64 noundef -9223372035541098493) #8
  %i.f = lshr i64 %2, 18
  %i.g = and i64 %i.f, 4088
  %i.h = or disjoint i64 %i.g, 1313677312
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef %i.h, i64 noundef -9223372035541094397) #8
  %i.i = lshr i64 %2, 9
  %i.j = and i64 %i.i, 4088
  %i.k = or disjoint i64 %i.j, 1313681408
  %i.l = and i64 %2, 281474976706560
  %.0.v = select i1 %4, i64 288230376151713763, i64 288230376151713635
  %.0 = or disjoint i64 %i.l, %.0.v
  tail call void @qtest_writeq(ptr noundef %0, i64 noundef %i.k, i64 noundef %.0) #8
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = !{!"auto-init"}
end_hunk_0
