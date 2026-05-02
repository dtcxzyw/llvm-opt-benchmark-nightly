inline.NumInlined: 547
inline.NumDeleted: 70
begin_hunk_0_@range_include:bb.a
  %i.o = icmp eq i64 %i.d, 0
  %i.p = and i64 %i.d, 6
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q                         ; 2 uses
  br i1 %i.r, label %linear_object_p.exit.thread34.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@range_include:bb.a
  %i.ac = icmp eq i64 %i.j, 0
  %i.ad = and i64 %i.j, 6
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae                      ; 2 uses
  br i1 %i.af, label %linear_object_p.exit28.thread38.i, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@range_include:bb.a
range_integer_edge_p.exit.i:                      ; preds = %linear_object_p.exit28.thread38.i
  %i.aq = tail call i64 @rb_check_to_integer(i64 noundef %i.j, ptr noundef nonnull @.str.63) #11
  %.not.i = icmp eq i64 %i.aq, 4
  br i1 %.not.i, label %2, label %.critedge.i

.critedge.i:                                      ; preds = %range_integer_edge_p.exit.i, %linear_object_p.exit28.thread38.i, %linear_object_p.exit28.i, %bb.h, %bb.g, %bb.g, %linear_object_p.exit.thread34.i, %linear_object_p.exit.i, %bb.e, %bb.d, %bb.d, %RANGE_END.exit.i
  %i.ar = icmp eq i64 %i.d, 4
end_hunk_2
begin_hunk_3_@range_include:bb.a
.thread.i.i:                                      ; preds = %r_less.exit12.i.i, %RANGE_EXCL.exit.i.i
  br label %range_include_internal.exit.thread

2:                                                ; preds = %range_integer_edge_p.exit.i
  br i1 %i.r, label %bb.p, label %rbimpl_RB_TYPE_P_fastpath.exit3.i.i

rbimpl_RB_TYPE_P_fastpath.exit3.i.i:              ; preds = %2
  %3 = inttoptr i64 %i.d to ptr
  %4 = load i64, ptr %3, align 8, !tbaa !13
  %5 = and i64 %4, 31
  %6 = icmp ne i64 %5, 5
  %brmerge.i = or i1 %i.af, %6
  br i1 %brmerge.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit3.i.i
  %7 = inttoptr i64 %i.j to ptr
  %8 = load i64, ptr %7, align 8, !tbaa !13
  %9 = and i64 %8, 31
  %10 = icmp eq i64 %9, 5
  br i1 %10, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !13
end_hunk_3
begin_hunk_4_@range_include:bb.a
  %i.bo = tail call i64 @rb_str_include_range_p(i64 noundef %i.d, i64 noundef %i.j, i64 noundef %1, i64 noundef %i.bn) #11
  br label %range_include_internal.exit

bb.p:                                             ; preds = %bb.m, %rbimpl_RB_TYPE_P_fastpath.exit3.i.i, %2
  %i.bp = tail call fastcc i64 @range_include_fallback(i64 noundef %i.d, i64 noundef %i.j, i64 noundef %1)
  br label %range_include_internal.exit

end_hunk_4
begin_hunk_5_@range_overlap:bb.a
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = icmp eq i32 %i.aj, 0
  %or.cond.i = and i1 %i.ae, %i.al
  %.0.i = select i1 %i.ak, i1 true, i1 %or.cond.i
  br i1 %.0.i, label %empty_region_p.exit.thread72, label %empty_region_p.exit.thread

empty_region_p.exit.thread:                       ; preds = %RANGE_EXCL.exit47, %empty_region_p.exit
end_hunk_5
begin_hunk_6_@range_overlap:bb.a
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = icmp eq i32 %i.aq, 0
  %or.cond.i51 = and i1 %i.r, %i.as
  %.0.i52 = select i1 %i.ar, i1 true, i1 %or.cond.i51
  br i1 %.0.i52, label %empty_region_p.exit.thread72, label %empty_region_p.exit54.thread

empty_region_p.exit54.thread:                     ; preds = %empty_region_p.exit.thread, %empty_region_p.exit54
end_hunk_6
begin_hunk_7_@range_overlap:bb.a
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = icmp eq i32 %i.bb, 0
  %or.cond.i58 = and i1 %i.r, %i.bd
  %.0.i59 = select i1 %i.bc, i1 true, i1 %or.cond.i58
  br i1 %.0.i59, label %empty_region_p.exit.thread72, label %empty_region_p.exit61.thread

empty_region_p.exit61.thread:                     ; preds = %.critedge, %bb.m, %empty_region_p.exit61
end_hunk_7
begin_hunk_8_@range_overlap:bb.a
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = icmp eq i32 %i.bg, 0
  %or.cond.i65 = and i1 %i.ae, %i.bi
  %.0.i66 = select i1 %i.bh, i1 true, i1 %or.cond.i65
  %cond.fr = freeze i1 %.0.i66
  br i1 %cond.fr, label %empty_region_p.exit68.thread92, label %empty_region_p.exit.thread72

end_hunk_8
begin_hunk_9_@rb_inspect

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_include_range_p(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
end_hunk_9
