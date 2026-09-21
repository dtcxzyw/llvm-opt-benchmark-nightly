Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/reserved-region?download=true
inline.NumInlined: 32
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"range->lob <= range->upb || range->lob == range->upb + 1\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/range.h\00", align 1
@__PRETTY_FUNCTION__.range_invariant = private unnamed_addr constant [36 x i8] c"void range_invariant(const Range *)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"!range_is_empty(range)\00", align 1
@__PRETTY_FUNCTION__.range_lob = private unnamed_addr constant [28 x i8] c"uint64_t range_lob(Range *)\00", align 1
@__PRETTY_FUNCTION__.range_set_bounds = private unnamed_addr constant [51 x i8] c"void range_set_bounds(Range *, uint64_t, uint64_t)\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @resv_region_list_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
.split:
  %.not324 = icmp eq ptr %0, null
  br i1 %.not324, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.r
  %.080326 = phi ptr [ %0, %.lr.ph ], [ %.2, %bb.r ] ; 12 uses
  %.081325 = phi ptr [ %0, %.lr.ph ], [ %.182, %bb.r ] ; 8 uses
  %i.b = load ptr, ptr %.080326, align 8          ; 9 uses
  %i.c = tail call i32 @range_compare(ptr noundef %i.b, ptr noundef %1) #4
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @range_compare(ptr noundef %i.b, ptr noundef %1) #4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @g_list_insert_before(ptr noundef %.081325, ptr noundef nonnull %.080326, ptr noundef %1) #4
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %.val86 = load i64, ptr %1, align 8             ; 9 uses
  %.val87 = load i64, ptr %i.a, align 8           ; 8 uses
  %.not.i.i.i = icmp ule i64 %.val86, %.val87     ; 2 uses
  %i.h = add i64 %.val87, 1                       ; 9 uses
  %i.i = icmp eq i64 %.val86, %i.h
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.i
  br i1 %or.cond.i.i.i, label %range_is_empty.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i:                            ; preds = %bb.d
  %i.j = icmp ugt i64 %.val86, %.val87            ; 3 uses
  %.val.pre = load i64, ptr %i.b, align 8         ; 14 uses
  %.phi.trans.insert = getelementptr i8, ptr %i.b, i64 8
  %.val85.pre = load i64, ptr %.phi.trans.insert, align 8 ; 15 uses
  br i1 %i.j, label %range_is_empty.exit.i.range_contains_range.exit.thread_crit_edge, label %bb.f

range_is_empty.exit.i.range_contains_range.exit.thread_crit_edge: ; preds = %range_is_empty.exit.i
  %.pre = add i64 %.val85.pre, 1
  br label %range_contains_range.exit.thread

bb.f:                                             ; preds = %range_is_empty.exit.i
  %.not.i.i10.i = icmp ule i64 %.val.pre, %.val85.pre ; 2 uses
  %i.k = add i64 %.val85.pre, 1                   ; 2 uses
  %i.l = icmp eq i64 %.val.pre, %i.k
  %or.cond.i.i11.i = or i1 %.not.i.i10.i, %i.l
  br i1 %or.cond.i.i11.i, label %range_contains_range.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_contains_range.exit:                        ; preds = %bb.f
  %.not.i = icmp ule i64 %.val86, %.val.pre
  %i.m = icmp uge i64 %.val87, %.val85.pre
  %i.n = and i1 %.not.i, %i.m
  %spec.select.i = and i1 %.not.i.i10.i, %i.n
  br i1 %spec.select.i, label %bb.h, label %range_contains_range.exit.thread

bb.h:                                             ; preds = %range_contains_range.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.080326, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %.080326, align 8
  tail call void @g_free(ptr noundef %i.q) #4
  %i.r = tail call ptr @g_list_delete_link(ptr noundef %.081325, ptr noundef nonnull %.080326) #4 ; 3 uses
  %.not84 = icmp eq ptr %i.p, null
  br i1 %.not84, label %bb.r, label %.sink.split

range_contains_range.exit.thread:                 ; preds = %range_is_empty.exit.i.range_contains_range.exit.thread_crit_edge, %range_contains_range.exit
  %.pre-phi = phi i64 [ %.pre, %range_is_empty.exit.i.range_contains_range.exit.thread_crit_edge ], [ %i.k, %range_contains_range.exit ]
  %i.s = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %.not.i.i.i124 = icmp ule i64 %.val.pre, %.val85.pre
  %i.t = icmp eq i64 %.val.pre, %.pre-phi
  %or.cond.i.i.i125 = or i1 %.not.i.i.i124, %i.t
  br i1 %or.cond.i.i.i125, label %range_is_empty.exit.i126, label %bb.i

bb.i:                                             ; preds = %range_contains_range.exit.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i126:                         ; preds = %range_contains_range.exit.thread
  %i.u = icmp ugt i64 %.val.pre, %.val85.pre
  br i1 %i.u, label %range_is_empty.exit.i199, label %range_contains_range.exit135

range_contains_range.exit135:                     ; preds = %range_is_empty.exit.i126
  %.not.i132 = icmp ule i64 %.val.pre, %.val86
  %i.v = icmp uge i64 %.val85.pre, %.val87
  %i.w = and i1 %.not.i132, %i.v
  %spec.select.i133 = and i1 %.not.i.i.i, %i.w
  br i1 %spec.select.i133, label %range_lob.exit142, label %range_is_empty.exit.i199.thread

range_lob.exit142:                                ; preds = %range_contains_range.exit135
  %i.x = icmp eq i64 %.val.pre, %.val86
  br i1 %i.x, label %range_upb.exit149, label %range_upb.exit160

range_upb.exit149:                                ; preds = %range_lob.exit142
  store i64 %i.h, ptr %i.b, align 8
  %.not.i.i.i150 = icmp ule i64 %i.h, %.val85.pre
  %2 = icmp eq i64 %.val87, %.val85.pre
  %or.cond.i.i.i151 = or i1 %.not.i.i.i150, %2
  br i1 %or.cond.i.i.i151, label %range_is_empty.exit.i152, label %3

3:                                                ; preds = %range_upb.exit149
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i152:                         ; preds = %range_upb.exit149
  %4 = icmp ugt i64 %i.h, %.val85.pre
  br i1 %4, label %bb.j, label %range_set_bounds.exit

bb.j:                                             ; preds = %range_is_empty.exit.i152
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #5
  unreachable

range_set_bounds.exit:                            ; preds = %range_is_empty.exit.i152
  %i.y = tail call ptr @g_list_insert_before(ptr noundef %.081325, ptr noundef nonnull %.080326, ptr noundef nonnull %1) #4
  br label %bb.s

range_upb.exit160:                                ; preds = %range_lob.exit142
  %i.z = icmp eq i64 %.val85.pre, %.val87
  br i1 %i.z, label %range_lob.exit168, label %range_upb.exit184

range_lob.exit168:                                ; preds = %range_upb.exit160
  %i.aa = add i64 %.val86, -1
  store i64 %i.aa, ptr %i.s, align 8
  br label %.sink.split

range_upb.exit184:                                ; preds = %range_upb.exit160
  store i64 %i.h, ptr %i.b, align 8
  %.not.i.i.i185.not = icmp ugt i64 %i.h, %.val85.pre
  br i1 %.not.i.i.i185.not, label %5, label %range_set_bounds.exit188

5:                                                ; preds = %range_upb.exit184
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_set_bounds.exit188:                         ; preds = %range_upb.exit184
  %i.ab = tail call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #6 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.ad, ptr %i.ae, align 8
  %.val96 = load i64, ptr %1, align 8             ; 5 uses
  %.val97 = load i64, ptr %i.a, align 8           ; 3 uses
  %.not.i.i.i189 = icmp ule i64 %.val96, %.val97
  %i.af = add i64 %.val97, 1
  %i.ag = icmp eq i64 %.val96, %i.af
  %or.cond.i.i.i190 = or i1 %.not.i.i.i189, %i.ag
  br i1 %or.cond.i.i.i190, label %range_is_empty.exit.i191, label %bb.k

bb.k:                                             ; preds = %range_set_bounds.exit188
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i191:                         ; preds = %range_set_bounds.exit188
  %i.ah = icmp ugt i64 %.val96, %.val97
  br i1 %i.ah, label %bb.l, label %range_lob.exit192

bb.l:                                             ; preds = %range_is_empty.exit.i191
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #5
  unreachable

range_lob.exit192:                                ; preds = %range_is_empty.exit.i191
  %i.ai = add i64 %.val96, -1                     ; 3 uses
  store i64 %.val.pre, ptr %i.ab, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  %.not.i.i.i193 = icmp ule i64 %.val.pre, %i.ai
  %i.ak = icmp eq i64 %.val.pre, %.val96
  %or.cond.i.i.i194 = or i1 %i.ak, %.not.i.i.i193
  br i1 %or.cond.i.i.i194, label %range_is_empty.exit.i195, label %bb.m

bb.m:                                             ; preds = %range_lob.exit192
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i195:                         ; preds = %range_lob.exit192
  %i.al = icmp ugt i64 %.val.pre, %i.ai
  br i1 %i.al, label %bb.n, label %range_set_bounds.exit196

bb.n:                                             ; preds = %range_is_empty.exit.i195
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #5
  unreachable

range_set_bounds.exit196:                         ; preds = %range_is_empty.exit.i195
  %i.am = tail call ptr @g_list_insert_before(ptr noundef %.081325, ptr noundef nonnull %.080326, ptr noundef nonnull %i.ab) #4
  %i.an = tail call ptr @g_list_insert_before(ptr noundef %i.am, ptr noundef nonnull %.080326, ptr noundef nonnull %1) #4
  br label %bb.s

range_is_empty.exit.i199:                         ; preds = %range_is_empty.exit.i126
  br i1 %i.j, label %.loopexit, label %range_is_empty.exit.i203

range_is_empty.exit.i199.thread:                  ; preds = %range_contains_range.exit135
  br i1 %i.j, label %.loopexit, label %range_lob.exit204

.loopexit:                                        ; preds = %range_is_empty.exit.i199.thread, %range_is_empty.exit.i199
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #5
  unreachable

range_is_empty.exit.i203:                         ; preds = %range_is_empty.exit.i199
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #5
  unreachable

range_lob.exit204:                                ; preds = %range_is_empty.exit.i199.thread
  %i.ao = icmp ult i64 %.val86, %.val.pre
  br i1 %i.ao, label %range_upb.exit212, label %range_lob.exit224

range_upb.exit212:                                ; preds = %range_lob.exit204
  store i64 %i.h, ptr %i.b, align 8
  %.not.i.i.i213 = icmp ule i64 %i.h, %.val85.pre
  %i.ap = icmp eq i64 %.val87, %.val85.pre
  %or.cond.i.i.i214 = or i1 %.not.i.i.i213, %i.ap
  br i1 %or.cond.i.i.i214, label %range_is_empty.exit.i215, label %bb.o

bb.o:                                             ; preds = %range_upb.exit212
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #5
  unreachable

range_is_empty.exit.i215:                         ; preds = %range_upb.exit212
  %i.aq = icmp ugt i64 %i.h, %.val85.pre
  br i1 %i.aq, label %bb.p, label %range_set_bounds.exit216

bb.p:                                             ; preds = %range_is_empty.exit.i215
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #5
  unreachable

range_set_bounds.exit216:                         ; preds = %range_is_empty.exit.i215
  %i.ar = tail call ptr @g_list_insert_before(ptr noundef %.081325, ptr noundef nonnull %.080326, ptr noundef nonnull %1) #4
  br label %bb.s

range_lob.exit224:                                ; preds = %range_lob.exit204
  %i.as = add i64 %.val86, -1                     ; 2 uses
  store i64 %i.as, ptr %i.s, align 8
  %i.at = icmp ugt i64 %.val.pre, %i.as
  br i1 %i.at, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %range_lob.exit224
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_bounds) #5
  unreachable

.sink.split:                                      ; preds = %range_lob.exit224, %bb.h, %bb.a, %range_lob.exit168
  %.sink465 = phi ptr [ %.080326, %bb.a ], [ %.080326, %range_lob.exit168 ], [ %i.p, %bb.h ], [ %.080326, %range_lob.exit224 ]
  %.182.ph = phi ptr [ %.081325, %bb.a ], [ %.081325, %range_lob.exit168 ], [ %i.r, %bb.h ], [ %.081325, %range_lob.exit224 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sink465, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.h
  %.182 = phi ptr [ %i.r, %bb.h ], [ %.182.ph, %.sink.split ] ; 2 uses
  %.2 = phi ptr [ %i.r, %bb.h ], [ %i.av, %.sink.split ] ; 2 uses
  %.not = icmp eq ptr %.2, null
  br i1 %.not, label %._crit_edge, label %bb.a, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.r, %.split
  %.081.lcssa = phi ptr [ null, %.split ], [ %.182, %bb.r ]
  %i.aw = tail call ptr @g_list_append(ptr noundef %.081.lcssa, ptr noundef %1) #4
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %range_set_bounds.exit216, %range_set_bounds.exit196, %range_set_bounds.exit, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ %i.y, %range_set_bounds.exit ], [ %i.an, %range_set_bounds.exit196 ], [ %i.ar, %range_set_bounds.exit216 ], [ %i.aw, %._crit_edge ]
  ret ptr %.0
}

declare i32 @range_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_insert_before(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare ptr @g_list_delete_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
