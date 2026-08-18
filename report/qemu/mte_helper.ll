inline.NumInlined: 176
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mte_mops_set_tags:bb.a
  %i.h = sub i32 0, %i.g
  %i.i = ashr i32 %i.h, 5
  %i.j = sext i32 %i.i to i64
  %i.k = tail call nonnull ptr @page_get_target_data(i64 noundef %i.d, i64 noundef %i.j) #18
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 4), align 4 ; 2 uses
  %i.m = add i32 %i.l, -33
  %or.cond9.i.i = icmp ult i32 %i.m, -27
  br i1 %or.cond9.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.extract32) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = trunc i64 %1 to i32
  %i.o = lshr i32 %i.n, 5
  %i.p = sub nuw nsw i32 37, %i.l
  %i.q = lshr i32 -1, %i.p
  %i.r = and i32 %i.q, %i.o
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s ; 4 uses
  %i.u = lshr i64 %1, 56                          ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = and i32 %i.v, 15                         ; 2 uses
  %i.x = lshr i64 %2, 4
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = and i64 %1, 16
  %.not26 = icmp eq i64 %i.z, 0
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load atomic i8, ptr %i.t monotonic, align 1
  %.tr = trunc nuw i64 %i.u to i8
  %i.ab = shl i8 %.tr, 4
  br label %deposit32.exit.i

deposit32.exit.i:                                 ; preds = %deposit32.exit.i, %bb.f
  %.018.i = phi i8 [ %i.aa, %bb.f ], [ %i.af, %deposit32.exit.i ] ; 2 uses
  %i.ac = and i8 %.018.i, 15
  %i.ad = or disjoint i8 %i.ac, %i.ab
  %i.ae = cmpxchg ptr %i.t, i8 %.018.i, i8 %i.ad seq_cst seq_cst, align 1 ; 2 uses
  %i.af = extractvalue { i8, i1 } %i.ae, 0
  %.not.i28 = extractvalue { i8, i1 } %i.ae, 1
  br i1 %.not.i28, label %store_tag1_parallel.exit, label %deposit32.exit.i, !prof !9

store_tag1_parallel.exit:                         ; preds = %deposit32.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ah = add i32 %i.y, -1
  br label %bb.g

bb.g:                                             ; preds = %store_tag1_parallel.exit, %bb.e
  %.022 = phi i32 [ %i.ah, %store_tag1_parallel.exit ], [ %i.y, %bb.e ] ; 2 uses
  %.0 = phi ptr [ %i.ag, %store_tag1_parallel.exit ], [ %i.t, %bb.e ] ; 2 uses
  %i.ai = sdiv i32 %.022, 2
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = trunc nuw nsw i32 %i.w to i8
  %i.al = mul nuw i8 %i.ak, 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.0, i8 noundef %i.al, i64 noundef %i.aj, i1 noundef false) #18
  %i.am = and i32 %.022, 1
  %.not27 = icmp eq i32 %i.am, 0
  br i1 %.not27, label %store_tag1_parallel.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %.0, i64 %i.aj ; 2 uses
  %i.ao = load atomic i8, ptr %i.an monotonic, align 1
  %i.ap = trunc nuw nsw i32 %i.w to i8
  br label %deposit32.exit.i29

deposit32.exit.i29:                               ; preds = %deposit32.exit.i29, %bb.h
  %.018.i30 = phi i8 [ %i.ao, %bb.h ], [ %i.at, %deposit32.exit.i29 ] ; 2 uses
  %i.aq = and i8 %.018.i30, -16
  %i.ar = or disjoint i8 %i.aq, %i.ap
  %i.as = cmpxchg ptr %i.an, i8 %.018.i30, i8 %i.ar seq_cst seq_cst, align 1 ; 2 uses
  %i.at = extractvalue { i8, i1 } %i.as, 0
  %.not.i31 = extractvalue { i8, i1 } %i.as, 1
  br i1 %.not.i31, label %store_tag1_parallel.exit32, label %deposit32.exit.i29, !prof !9

store_tag1_parallel.exit32:                       ; preds = %deposit32.exit.i29, %bb.b, %bb.g, %bb.a
  ret void
}

declare ptr @probe_access(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 4) i32 @arm_current_el(ptr nofree noundef readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.a, align 16
  %i.b = and i64 %.val, 128
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10 = load i32, ptr %i.c, align 16
  %.not12 = icmp eq i32 %.val10, 0
  br i1 %.not12, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11 = load i8, ptr %i.l, align 16, !range !19, !noundef !20
  %i.m = trunc nuw i8 %.val11 to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  %switch.tableidx = add nsw i32 %i.u, -16        ; 2 uses
  %i.v = icmp ult i32 %switch.tableidx, 11
  br i1 %i.v, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.w = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.arm_current_el, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup, %bb.b, %bb.c, %bb.e
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ %i.r, %bb.e ], [ %i.k, %bb.c ], [ 1, %bb.b ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @raise_exception_ra(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @exception_target_el(ptr noundef) local_unnamed_addr #2

declare void @cpu_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nofree noinline norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { norecurse nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = !{ptr @store_tag1, ptr @store_tag1_parallel}
!16 = !{!"branch_weights", !"expected", i32 2081357329, i32 66126319}
!17 = distinct !{!17, !11}
!18 = !{!"branch_weights", !"expected", i32 2078270429, i32 69213219}
!19 = !{i8 0, i8 2}
!20 = !{}
end_hunk_0
