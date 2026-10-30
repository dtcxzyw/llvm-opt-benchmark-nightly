Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/range?download=true
inline.NumInlined: 29
inline.NumDeleted: 7
begin_hunk_0_@range_inverse_array:bb.a
  %i.d = add i64 %.val63, 1
  %i.e = icmp eq i64 %.val62, %i.d
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.e
  br i1 %or.cond.i.i.i, label %range_is_empty.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i:                            ; preds = %.lr.ph
  br i1 %.not.i.i.i, label %range_upb.exit, label %bb.c

bb.c:                                             ; preds = %range_is_empty.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 110, ptr noundef nonnull @__PRETTY_FUNCTION__.range_upb) #5
  unreachable

range_upb.exit:                                   ; preds = %range_is_empty.exit.i
  %i.f = icmp ult i64 %.val63, %2
  br i1 %i.f, label %bb.d, label %range_lob.exit

bb.d:                                             ; preds = %range_upb.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0137, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.critedge56, label %.lr.ph, !llvm.loop !10

.critedge56:                                      ; preds = %bb.d, %bb.a
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #7 ; 3 uses
  store i64 %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %i.j, align 8
  %.not.i.i.i.i = icmp ule i64 %2, %3             ; 2 uses
  %i.k = add i64 %3, 1
  %i.l = icmp eq i64 %2, %i.k
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.l
  br i1 %or.cond.i.i.i.i, label %range_is_empty.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.critedge56
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i.i:                          ; preds = %.critedge56
  br i1 %.not.i.i.i.i, label %append_new_range.exit, label %bb.f

bb.f:                                             ; preds = %range_is_empty.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #5
  unreachable

append_new_range.exit:                            ; preds = %range_is_empty.exit.i.i
  %i.m = tail call ptr @g_list_append(ptr noundef %i.a, ptr noundef nonnull %i.i) #6
  br label %.loopexit

range_lob.exit:                                   ; preds = %range_upb.exit
  %i.n = icmp ugt i64 %.val62, %2
  br i1 %i.n, label %range_lob.exit78, label %bb.i

range_lob.exit78:                                 ; preds = %range_lob.exit
  %i.o = add i64 %.val62, -1
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %3) ; 3 uses
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #7 ; 3 uses
  store i64 %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.p, ptr %i.r, align 8
  %.not.i.i.i.i79 = icmp ule i64 %2, %i.p         ; 2 uses
  %i.s = add nuw i64 %i.p, 1
  %i.t = icmp eq i64 %2, %i.s
  %or.cond.i.i.i.i80 = or i1 %.not.i.i.i.i79, %i.t
  br i1 %or.cond.i.i.i.i80, label %range_is_empty.exit.i.i81, label %bb.g

bb.g:                                             ; preds = %range_lob.exit78
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i.i81:                        ; preds = %range_lob.exit78
  br i1 %.not.i.i.i.i79, label %append_new_range.exit82, label %bb.h

bb.h:                                             ; preds = %range_is_empty.exit.i.i81
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #5
  unreachable

append_new_range.exit82:                          ; preds = %range_is_empty.exit.i.i81
  %i.u = tail call ptr @g_list_append(ptr noundef %i.a, ptr noundef nonnull %i.q) #6
  br label %bb.i

bb.i:                                             ; preds = %append_new_range.exit82, %range_lob.exit
  %.047 = phi ptr [ %i.u, %append_new_range.exit82 ], [ %i.a, %range_lob.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0137, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not53138 = icmp eq ptr %i.w, null
  br i1 %.not53138, label %._crit_edge, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.i, %bb.q
  %i.x = phi ptr [ %i.as, %bb.q ], [ %i.w, %bb.i ] ; 2 uses
  %i.y = phi ptr [ %i.ar, %bb.q ], [ %i.v, %bb.i ]
  %.1140 = phi ptr [ %i.aq, %bb.q ], [ %.0137, %bb.i ]
  %.148139 = phi ptr [ %.2, %bb.q ], [ %.047, %bb.i ] ; 3 uses
  %i.z = load ptr, ptr %.1140, align 8            ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8             ; 2 uses
  %.val66 = load i64, ptr %i.z, align 8           ; 5 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val67 = load i64, ptr %i.ab, align 8          ; 4 uses
  %.not.i.i.i83 = icmp ule i64 %.val66, %.val67   ; 2 uses
  %i.ac = add i64 %.val67, 1                      ; 3 uses
  %i.ad = icmp eq i64 %.val66, %i.ac
  %or.cond.i.i.i84 = or i1 %.not.i.i.i83, %i.ad
  br i1 %or.cond.i.i.i84, label %range_is_empty.exit.i85, label %bb.j

bb.j:                                             ; preds = %.lr.ph141
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i85:                          ; preds = %.lr.ph141
  br i1 %.not.i.i.i83, label %range_lob.exit86, label %bb.k

bb.k:                                             ; preds = %range_is_empty.exit.i85
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #5
  unreachable

range_lob.exit86:                                 ; preds = %range_is_empty.exit.i85
  %.not54 = icmp ult i64 %.val66, %3
  br i1 %.not54, label %range_is_empty.exit.i89, label %.loopexit

range_is_empty.exit.i89:                          ; preds = %range_lob.exit86
  %.val.i = load i64, ptr %i.aa, align 8          ; 4 uses
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %.val11.i = load i64, ptr %i.ae, align 8        ; 3 uses
  %.not.i.i14.i = icmp ule i64 %.val.i, %.val11.i ; 2 uses
  %i.af = add i64 %.val11.i, 1
  %i.ag = icmp eq i64 %.val.i, %i.af
  %or.cond.i.i15.i = or i1 %.not.i.i14.i, %i.ag
  br i1 %or.cond.i.i15.i, label %range_is_empty.exit17.i, label %bb.l

bb.l:                                             ; preds = %range_is_empty.exit.i89
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit17.i:                          ; preds = %range_is_empty.exit.i89
  br i1 %.not.i.i14.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %range_is_empty.exit17.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 25, ptr noundef nonnull @__PRETTY_FUNCTION__.range_compare) #5
  unreachable

bb.n:                                             ; preds = %range_is_empty.exit17.i
  %.not.i = icmp ne i64 %.val.i, 0
  %i.ah = add i64 %.val.i, -1                     ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, %.val67
  %or.cond.i = and i1 %.not.i, %i.ai
  br i1 %or.cond.i, label %range_lob.exit97, label %range_compare.exit

range_compare.exit:                               ; preds = %bb.n
  %.not10.i = icmp eq i64 %.val66, 0
  %i.aj = add i64 %.val66, -1
  %i.ak = icmp ule i64 %i.aj, %.val11.i
  %or.cond20.i.not = or i1 %.not10.i, %i.ak
  br i1 %or.cond20.i.not, label %bb.q, label %range_lob.exit97

range_lob.exit97:                                 ; preds = %bb.n, %range_compare.exit
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %3) ; 3 uses
  %i.am = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #7 ; 3 uses
  store i64 %i.ac, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.al, ptr %i.an, align 8
  %.not.i.i.i.i98 = icmp ule i64 %i.ac, %i.al     ; 2 uses
  %i.ao = icmp eq i64 %.val67, %i.al
  %or.cond.i.i.i.i99 = or i1 %.not.i.i.i.i98, %i.ao
  br i1 %or.cond.i.i.i.i99, label %range_is_empty.exit.i.i100, label %bb.o

bb.o:                                             ; preds = %range_lob.exit97
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i.i100:                       ; preds = %range_lob.exit97
  br i1 %.not.i.i.i.i98, label %append_new_range.exit101, label %bb.p

bb.p:                                             ; preds = %range_is_empty.exit.i.i100
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #5
  unreachable

append_new_range.exit101:                         ; preds = %range_is_empty.exit.i.i100
  %i.ap = tail call ptr @g_list_append(ptr noundef %.148139, ptr noundef nonnull %i.am) #6
  %.pre = load ptr, ptr %i.y, align 8
  br label %bb.q

bb.q:                                             ; preds = %range_compare.exit, %append_new_range.exit101
  %i.aq = phi ptr [ %.pre, %append_new_range.exit101 ], [ %i.x, %range_compare.exit ] ; 3 uses
  %.2 = phi ptr [ %i.ap, %append_new_range.exit101 ], [ %.148139, %range_compare.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not53 = icmp eq ptr %i.as, null
  br i1 %.not53, label %._crit_edge, label %.lr.ph141, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.q, %bb.i
  %.148.lcssa = phi ptr [ %.047, %bb.i ], [ %.2, %bb.q ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0137, %bb.i ], [ %i.aq, %bb.q ]
  %i.at = load ptr, ptr %.1.lcssa, align 8        ; 2 uses
  %.val58 = load i64, ptr %i.at, align 8          ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val59 = load i64, ptr %i.au, align 8          ; 3 uses
  %.not.i.i.i102 = icmp ule i64 %.val58, %.val59  ; 2 uses
  %i.av = add i64 %.val59, 1                      ; 3 uses
  %i.aw = icmp eq i64 %.val58, %i.av
  %or.cond.i.i.i103 = or i1 %.not.i.i.i102, %i.aw
  br i1 %or.cond.i.i.i103, label %range_is_empty.exit.i104, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i104:                         ; preds = %._crit_edge
  br i1 %.not.i.i.i102, label %range_upb.exit105, label %bb.s

bb.s:                                             ; preds = %range_is_empty.exit.i104
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 110, ptr noundef nonnull @__PRETTY_FUNCTION__.range_upb) #5
  unreachable

range_upb.exit105:                                ; preds = %range_is_empty.exit.i104
  %i.ax = icmp ult i64 %.val59, %3
  br i1 %i.ax, label %range_upb.exit109, label %.loopexit

range_upb.exit109:                                ; preds = %range_upb.exit105
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #7 ; 3 uses
  store i64 %i.av, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %3, ptr %i.az, align 8
  %.not.i.i.i.i110.not = icmp ugt i64 %i.av, %3
  br i1 %.not.i.i.i.i110.not, label %4, label %append_new_range.exit113

4:                                                ; preds = %range_upb.exit109
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

append_new_range.exit113:                         ; preds = %range_upb.exit109
  %5 = tail call ptr @g_list_append(ptr noundef %.148.lcssa, ptr noundef nonnull %i.ay) #6
  br label %.loopexit

.loopexit:                                        ; preds = %range_lob.exit86, %range_upb.exit105, %append_new_range.exit113, %append_new_range.exit
  %.3 = phi ptr [ %i.m, %append_new_range.exit ], [ %5, %append_new_range.exit113 ], [ %.148.lcssa, %range_upb.exit105 ], [ %.148139, %range_lob.exit86 ]
  store ptr %.3, ptr %1, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
