inline.NumInlined: 546
inline.NumDeleted: 69
begin_hunk_0_@range_include:bb.a
  %i.o = icmp eq i64 %i.d, 0
  %i.p = and i64 %i.d, 6
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %linear_object_p.exit.thread34.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@range_include:bb.a
  %i.ac = icmp eq i64 %i.j, 0
  %i.ad = and i64 %i.j, 6
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %linear_object_p.exit28.thread38.i, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@range_include:bb.a
range_integer_edge_p.exit.i:                      ; preds = %linear_object_p.exit28.thread38.i
  %i.aq = tail call i64 @rb_check_to_integer(i64 noundef %i.j, ptr noundef nonnull @.str.63) #11
  %.not.i = icmp eq i64 %i.aq, 4
  br i1 %.not.i, label %bb.m, label %.critedge.i

.critedge.i:                                      ; preds = %range_integer_edge_p.exit.i, %linear_object_p.exit28.thread38.i, %linear_object_p.exit28.i, %bb.h, %bb.g, %bb.g, %linear_object_p.exit.thread34.i, %linear_object_p.exit.i, %bb.e, %bb.d, %bb.d, %RANGE_END.exit.i
  %i.ar = icmp eq i64 %i.d, 4
end_hunk_2
begin_hunk_3_@range_include:bb.a
.thread.i.i:                                      ; preds = %r_less.exit12.i.i, %RANGE_EXCL.exit.i.i
  br label %range_include_internal.exit.thread

bb.m:                                             ; preds = %range_integer_edge_p.exit.i
  %2 = tail call fastcc zeroext i1 @range_string_range_p(i64 noundef %i.d, i64 noundef %i.j)
  br i1 %2, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !13
end_hunk_3
begin_hunk_4_@range_include:bb.a
  %i.bo = tail call i64 @rb_str_include_range_p(i64 noundef %i.d, i64 noundef %i.j, i64 noundef %1, i64 noundef %i.bn) #11
  br label %range_include_internal.exit

bb.p:                                             ; preds = %bb.m
  %i.bp = tail call fastcc i64 @range_include_fallback(i64 noundef %i.d, i64 noundef %i.j, i64 noundef %1)
  br label %range_include_internal.exit

end_hunk_4
begin_hunk_5_@range_overlap:bb.a
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = icmp eq i32 %i.aj, 0
  %or.cond.i = and i1 %i.ae, %i.al
  %.0.i = or i1 %i.ak, %or.cond.i
  br i1 %.0.i, label %empty_region_p.exit.thread72, label %empty_region_p.exit.thread

empty_region_p.exit.thread:                       ; preds = %RANGE_EXCL.exit47, %empty_region_p.exit
end_hunk_5
begin_hunk_6_@range_overlap:bb.a
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = icmp eq i32 %i.aq, 0
  %or.cond.i51 = and i1 %i.r, %i.as
  %.0.i52 = or i1 %i.ar, %or.cond.i51
  br i1 %.0.i52, label %empty_region_p.exit.thread72, label %empty_region_p.exit54.thread

empty_region_p.exit54.thread:                     ; preds = %empty_region_p.exit.thread, %empty_region_p.exit54
end_hunk_6
begin_hunk_7_@range_overlap:bb.a
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = icmp eq i32 %i.bb, 0
  %or.cond.i58 = and i1 %i.r, %i.bd
  %.0.i59 = or i1 %i.bc, %or.cond.i58
  br i1 %.0.i59, label %empty_region_p.exit.thread72, label %empty_region_p.exit61.thread

empty_region_p.exit61.thread:                     ; preds = %.critedge, %bb.m, %empty_region_p.exit61
end_hunk_7
begin_hunk_8_@range_overlap:bb.a
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = icmp eq i32 %i.bg, 0
  %or.cond.i65 = and i1 %i.ae, %i.bi
  %.0.i66 = or i1 %i.bh, %or.cond.i65
  %cond.fr = freeze i1 %.0.i66
  br i1 %cond.fr, label %empty_region_p.exit68.thread92, label %empty_region_p.exit.thread72

end_hunk_8
begin_hunk_9_@rb_inspect

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i1 @range_string_range_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = icmp eq i64 %0, 0
  %4 = and i64 %0, 7
  %5 = icmp ne i64 %4, 0
  %6 = or i1 %3, %5
  br i1 %6, label %rbimpl_RB_TYPE_P_fastpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit3

rbimpl_RB_TYPE_P_fastpath.exit3:                  ; preds = %2
  %7 = inttoptr i64 %0 to ptr
  %8 = load i64, ptr %7, align 8, !tbaa !13
  %9 = and i64 %8, 31
  %10 = icmp eq i64 %9, 5
  br i1 %10, label %11, label %rbimpl_RB_TYPE_P_fastpath.exit

11:                                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit3
  %12 = icmp eq i64 %1, 0
  %13 = and i64 %1, 7
  %14 = icmp ne i64 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %rbimpl_RB_TYPE_P_fastpath.exit, label %16

16:                                               ; preds = %11
  %17 = inttoptr i64 %1 to ptr
  %18 = load i64, ptr %17, align 8, !tbaa !13
  %19 = and i64 %18, 31
  %20 = icmp eq i64 %19, 5
  br label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %2, %16, %11, %rbimpl_RB_TYPE_P_fastpath.exit3
  %21 = phi i1 [ %20, %16 ], [ false, %rbimpl_RB_TYPE_P_fastpath.exit3 ], [ false, %11 ], [ false, %2 ]
  ret i1 %21
}

declare i64 @rb_str_include_range_p(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
end_hunk_9
