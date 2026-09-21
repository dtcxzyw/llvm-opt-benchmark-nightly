Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/range?download=true
inline.NumInlined: 25
inline.NumDeleted: 7
begin_hunk_0_@range_inverse_array:bb.a
  %i.g = icmp ult i64 %.val63, %2
  br i1 %i.g, label %bb.d, label %range_lob.exit

bb.d:                                             ; preds = %range_upb.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.0135, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge56, label %.lr.ph, !llvm.loop !10

.critedge56:                                      ; preds = %bb.d, %bb.a
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #8 ; 3 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.k, align 8
  %.not.i.i.i.i = icmp ule i64 %2, %3
  %i.l = add i64 %3, 1
  %i.m = icmp eq i64 %2, %i.l
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.m
  br i1 %or.cond.i.i.i.i, label %range_is_empty.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.critedge56
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #6
  unreachable

range_is_empty.exit.i.i:                          ; preds = %.critedge56
  %i.n = icmp ugt i64 %2, %3
  br i1 %i.n, label %bb.f, label %append_new_range.exit

bb.f:                                             ; preds = %range_is_empty.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #6
  unreachable

append_new_range.exit:                            ; preds = %range_is_empty.exit.i.i
  %i.o = tail call ptr @g_list_append(ptr noundef %i.a, ptr noundef nonnull %i.j) #7
  br label %.loopexit

range_lob.exit:                                   ; preds = %range_upb.exit
  %i.p = icmp ugt i64 %.val62, %2
  br i1 %i.p, label %range_lob.exit78, label %bb.i

range_lob.exit78:                                 ; preds = %range_lob.exit
  %i.q = add i64 %.val62, -1
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %3) ; 4 uses
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #8 ; 3 uses
  store i64 %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.r, ptr %i.t, align 8
  %.not.i.i.i.i79 = icmp ule i64 %2, %i.r
  %i.u = add nuw i64 %i.r, 1
  %i.v = icmp eq i64 %2, %i.u
  %or.cond.i.i.i.i80 = or i1 %.not.i.i.i.i79, %i.v
  br i1 %or.cond.i.i.i.i80, label %range_is_empty.exit.i.i81, label %bb.g

bb.g:                                             ; preds = %range_lob.exit78
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #6
  unreachable

range_is_empty.exit.i.i81:                        ; preds = %range_lob.exit78
  %i.w = icmp ugt i64 %2, %i.r
  br i1 %i.w, label %bb.h, label %append_new_range.exit82

bb.h:                                             ; preds = %range_is_empty.exit.i.i81
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #6
  unreachable

append_new_range.exit82:                          ; preds = %range_is_empty.exit.i.i81
  %i.x = tail call ptr @g_list_append(ptr noundef %i.a, ptr noundef nonnull %i.s) #7
  br label %bb.i

bb.i:                                             ; preds = %append_new_range.exit82, %range_lob.exit
  %.047 = phi ptr [ %i.x, %append_new_range.exit82 ], [ %i.a, %range_lob.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0135, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not53136 = icmp eq ptr %i.z, null
  br i1 %.not53136, label %._crit_edge, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.i, %bb.t
  %i.aa = phi ptr [ %i.az, %bb.t ], [ %i.z, %bb.i ]
  %i.ab = phi ptr [ %i.ay, %bb.t ], [ %i.y, %bb.i ]
  %.1138 = phi ptr [ %i.ax, %bb.t ], [ %.0135, %bb.i ]
  %.148137 = phi ptr [ %.2, %bb.t ], [ %.047, %bb.i ] ; 3 uses
  %i.ac = load ptr, ptr %.1138, align 8           ; 4 uses
  %i.ad = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.val66 = load i64, ptr %i.ac, align 8          ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %.val67 = load i64, ptr %i.ae, align 8          ; 3 uses
  %.not.i.i.i83 = icmp ule i64 %.val66, %.val67
  %i.af = add i64 %.val67, 1
  %i.ag = icmp eq i64 %.val66, %i.af
  %or.cond.i.i.i84 = or i1 %.not.i.i.i83, %i.ag
  br i1 %or.cond.i.i.i84, label %range_is_empty.exit.i85, label %bb.j

bb.j:                                             ; preds = %.lr.ph139
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #6
  unreachable

range_is_empty.exit.i85:                          ; preds = %.lr.ph139
  %i.ah = icmp ugt i64 %.val66, %.val67
  br i1 %i.ah, label %bb.k, label %range_lob.exit86

bb.k:                                             ; preds = %range_is_empty.exit.i85
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #6
  unreachable

range_lob.exit86:                                 ; preds = %range_is_empty.exit.i85
  %.not54 = icmp ult i64 %.val66, %3
  br i1 %.not54, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %range_lob.exit86
  %i.ai = tail call i32 @range_compare(ptr noundef nonnull %i.ac, ptr noundef %i.ad)
  %.not55 = icmp eq i32 %i.ai, 0
  br i1 %.not55, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val60 = load i64, ptr %i.ac, align 8          ; 3 uses
  %.val61 = load i64, ptr %i.ae, align 8          ; 4 uses
  %.not.i.i.i87 = icmp ule i64 %.val60, %.val61
  %i.aj = add i64 %.val61, 1                      ; 4 uses
  %i.ak = icmp eq i64 %.val60, %i.aj
  %or.cond.i.i.i88 = or i1 %.not.i.i.i87, %i.ak
  br i1 %or.cond.i.i.i88, label %range_is_empty.exit.i89, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #6
  unreachable

range_is_empty.exit.i89:                          ; preds = %bb.m
  %i.al = icmp ugt i64 %.val60, %.val61
  br i1 %i.al, label %bb.o, label %range_upb.exit90

bb.o:                                             ; preds = %range_is_empty.exit.i89
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 110, ptr noundef nonnull @__PRETTY_FUNCTION__.range_upb) #6
  unreachable

range_upb.exit90:                                 ; preds = %range_is_empty.exit.i89
  %.val64 = load i64, ptr %i.ad, align 8          ; 4 uses
  %i.am = getelementptr i8, ptr %i.ad, i64 8
  %.val65 = load i64, ptr %i.am, align 8          ; 3 uses
  %.not.i.i.i91 = icmp ule i64 %.val64, %.val65
  %i.an = add i64 %.val65, 1
  %i.ao = icmp eq i64 %.val64, %i.an
  %or.cond.i.i.i92 = or i1 %.not.i.i.i91, %i.ao
  br i1 %or.cond.i.i.i92, label %range_is_empty.exit.i93, label %bb.p

bb.p:                                             ; preds = %range_upb.exit90
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #6
  unreachable

range_is_empty.exit.i93:                          ; preds = %range_upb.exit90
  %i.ap = icmp ugt i64 %.val64, %.val65
  br i1 %i.ap, label %bb.q, label %range_lob.exit94

bb.q:                                             ; preds = %range_is_empty.exit.i93
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #6
  unreachable

range_lob.exit94:                                 ; preds = %range_is_empty.exit.i93
  %i.aq = add i64 %.val64, -1
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %3) ; 4 uses
  %i.as = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #8 ; 3 uses
  store i64 %i.aj, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ar, ptr %i.at, align 8
  %.not.i.i.i.i95 = icmp ule i64 %i.aj, %i.ar
  %i.au = icmp eq i64 %.val61, %i.ar
  %or.cond.i.i.i.i96 = or i1 %.not.i.i.i.i95, %i.au
  br i1 %or.cond.i.i.i.i96, label %range_is_empty.exit.i.i97, label %bb.r

bb.r:                                             ; preds = %range_lob.exit94
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #6
  unreachable

range_is_empty.exit.i.i97:                        ; preds = %range_lob.exit94
  %i.av = icmp ugt i64 %i.aj, %i.ar
  br i1 %i.av, label %bb.s, label %append_new_range.exit98

bb.s:                                             ; preds = %range_is_empty.exit.i.i97
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #6
  unreachable

append_new_range.exit98:                          ; preds = %range_is_empty.exit.i.i97
  %i.aw = tail call ptr @g_list_append(ptr noundef %.148137, ptr noundef nonnull %i.as) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %append_new_range.exit98
  %.2 = phi ptr [ %i.aw, %append_new_range.exit98 ], [ %.148137, %bb.l ] ; 2 uses
  %i.ax = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not53 = icmp eq ptr %i.az, null
  br i1 %.not53, label %._crit_edge, label %.lr.ph139, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.t, %bb.i
  %.148.lcssa = phi ptr [ %.047, %bb.i ], [ %.2, %bb.t ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0135, %bb.i ], [ %i.ax, %bb.t ]
  %i.ba = load ptr, ptr %.1.lcssa, align 8        ; 2 uses
  %.val58 = load i64, ptr %i.ba, align 8          ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val59 = load i64, ptr %i.bb, align 8          ; 4 uses
  %.not.i.i.i99 = icmp ule i64 %.val58, %.val59
  %i.bc = add i64 %.val59, 1                      ; 3 uses
  %i.bd = icmp eq i64 %.val58, %i.bc
  %or.cond.i.i.i100 = or i1 %.not.i.i.i99, %i.bd
  br i1 %or.cond.i.i.i100, label %range_is_empty.exit.i101, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #6
  unreachable

range_is_empty.exit.i101:                         ; preds = %._crit_edge
  %i.be = icmp ugt i64 %.val58, %.val59
  br i1 %i.be, label %bb.v, label %range_upb.exit102

bb.v:                                             ; preds = %range_is_empty.exit.i101
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 110, ptr noundef nonnull @__PRETTY_FUNCTION__.range_upb) #6
  unreachable

range_upb.exit102:                                ; preds = %range_is_empty.exit.i101
  %i.bf = icmp ult i64 %.val59, %3
  br i1 %i.bf, label %range_upb.exit106, label %.loopexit

range_upb.exit106:                                ; preds = %range_upb.exit102
  %i.bg = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #8 ; 3 uses
  store i64 %i.bc, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %3, ptr %i.bh, align 8
  %.not.i.i.i.i107.not = icmp ugt i64 %i.bc, %3
  br i1 %.not.i.i.i.i107.not, label %4, label %append_new_range.exit110

4:                                                ; preds = %range_upb.exit106
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #6
  unreachable

append_new_range.exit110:                         ; preds = %range_upb.exit106
  %5 = tail call ptr @g_list_append(ptr noundef %.148.lcssa, ptr noundef nonnull %i.bg) #7
  br label %.loopexit

.loopexit:                                        ; preds = %range_lob.exit86, %range_upb.exit102, %append_new_range.exit110, %append_new_range.exit
  %.3 = phi ptr [ %i.o, %append_new_range.exit ], [ %5, %append_new_range.exit110 ], [ %.148.lcssa, %range_upb.exit102 ], [ %.148137, %range_lob.exit86 ]
  store ptr %.3, ptr %1, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
end_hunk_0
