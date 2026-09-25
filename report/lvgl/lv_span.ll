Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_span?download=true
inline.NumInlined: 76
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_spangroup_set_align:bb.a

declare void @lv_obj_set_style_text_align(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_spangroup_set_overflow(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i32
  %i.e = icmp eq i32 %1, %i.d
  %i.f = icmp ugt i32 %1, 1
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i32 %1 to i8
  %i.h = and i8 %i.b, -2
  %i.i = or disjoint i8 %i.h, %i.g
  store i8 %i.i, ptr %i.a, align 8
  %i.j = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_spangroup_set_indent(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.a, align 4, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = or i8 %i.e, 2
  store i8 %i.f, ptr %i.d, align 8
  %i.g = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #10 ; 0 uses
  %i.h = tail call zeroext i1 @lv_obj_refresh_self_size(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_spangroup_set_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i32 %1, 2
  br i1 %i.a, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %default.unreachable18 [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 0, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @lv_obj_set_width(ptr noundef nonnull %0, i32 noundef 1073741823) #10
  tail call void @lv_obj_set_height(ptr noundef nonnull %0, i32 noundef 1073741823) #10
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.b = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 1) #10
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 4294967295
  %i.e = icmp eq i64 %i.d, 1073741823
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @lv_obj_set_width(ptr noundef nonnull %0, i32 noundef 100) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @lv_obj_set_height(ptr noundef nonnull %0, i32 noundef 1073741823) #10
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.f = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 1) #10
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 1073741823
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @lv_obj_set_width(ptr noundef nonnull %0, i32 noundef 100) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.j = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 2) #10
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 1073741823
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @lv_obj_set_content_height(ptr noundef nonnull %0, i32 noundef 100) #10
  br label %bb.l

default.unreachable18:                            ; preds = %bb.c
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.k, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = or i8 %i.o, 2
  store i8 %i.p, ptr %i.n, align 8
  %i.q = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #10 ; 0 uses
  %i.r = tail call zeroext i1 @lv_obj_refresh_self_size(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  ret void
}

declare void @lv_obj_set_width(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_height(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_content_height(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_spangroup_set_max_lines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %1, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = or i8 %i.c, 2
  store i8 %i.d, ptr %i.b, align 8
  %i.e = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #10 ; 0 uses
  %i.f = tail call zeroext i1 @lv_obj_refresh_self_size(ptr noundef nonnull %0) #10 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @lv_span_get_style(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @lv_span_get_text(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @lv_spangroup_get_child(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = icmp slt i32 %1, 0                       ; 2 uses
  %spec.select25.v = select i1 %i.c, i64 104, i64 96
  %spec.select25 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select25.v
  %.0 = load ptr, ptr %spec.select25, align 8, !tbaa !91 ; 5 uses
  %.not26 = icmp eq ptr %.0, null
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.lobit = ashr i32 %1, 31                       ; 3 uses
  %2 = icmp eq i32 %.lobit, %1                    ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %2, label %.loopexit, label %.lr.ph44

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %2, label %.loopexit, label %.lr.ph48

.lr.ph.split.us:                                  ; preds = %.lr.ph48
  %i.d = add nsw i32 %.12027.us47, -1             ; 2 uses
  %i.e = icmp eq i32 %i.d, %1
  br i1 %i.e, label %.loopexit, label %.lr.ph48, !llvm.loop !90

.lr.ph48:                                         ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.12027.us47 = phi i32 [ %i.d, %.lr.ph.split.us ], [ %.lobit, %.lr.ph.split.us.preheader ]
  %.128.us46 = phi ptr [ %i.f, %.lr.ph.split.us ], [ %.0, %.lr.ph.split.us.preheader ]
  %i.f = tail call ptr @lv_ll_get_prev(ptr noundef nonnull %i.b, ptr noundef nonnull %.128.us46) #10 ; 3 uses
  %.not.us = icmp eq ptr %i.f, null
  br i1 %.not.us, label %..loopexit.loopexit40_crit_edge, label %.lr.ph.split.us, !llvm.loop !90

.lr.ph.split:                                     ; preds = %.lr.ph44
  %i.g = add nuw nsw i32 %.1202743, 1             ; 2 uses
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph44, !llvm.loop !90

.lr.ph44:                                         ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.1202743 = phi i32 [ %i.g, %.lr.ph.split ], [ %.lobit, %.lr.ph.split.preheader ]
  %.12842 = phi ptr [ %i.i, %.lr.ph.split ], [ %.0, %.lr.ph.split.preheader ]
  %i.i = tail call ptr @lv_ll_get_next(ptr noundef nonnull %i.b, ptr noundef nonnull %.12842) #10 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %..loopexit.loopexit40_crit_edge, label %.lr.ph.split, !llvm.loop !90

..loopexit.loopexit40_crit_edge:                  ; preds = %.lr.ph44, %.lr.ph48
  br label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.split.preheader, %..loopexit.loopexit40_crit_edge, %.lr.ph.split.us.preheader, %bb.b, %bb.a
  %.123 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %..loopexit.loopexit40_crit_edge ], [ %.0, %.lr.ph.split.us.preheader ], [ %i.f, %.lr.ph.split.us ], [ %.0, %.lr.ph.split.preheader ], [ %i.i, %.lr.ph.split ]
  ret ptr %.123
}

declare ptr @lv_ll_get_prev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_spangroup_get_span_count(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = tail call i32 @lv_ll_get_len(ptr noundef nonnull %i.a) #10
  ret i32 %i.b
}

declare i32 @lv_ll_get_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_spangroup_get_align(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 101) #10
  %i.b = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.b to i32
  ret i32 %.sroa.0.0.extract.trunc.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @lv_spangroup_get_overflow(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_spangroup_get_indent(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @lv_spangroup_get_mode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 1) #10
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 1073741823
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 2) #10
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 1073741823
  %. = select i1 %i.h, i32 2, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_spangroup_get_max_lines(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @lv_spangroup_get_max_line_height(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.lv_style_value_t, align 8    ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call ptr @lv_ll_get_head(ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not1516 = icmp eq ptr %i.b, null
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %lv_span_get_style_text_font.exit
  %.018 = phi ptr [ %i.h, %lv_span_get_style_text_font.exit ], [ %i.b, %bb.b ] ; 2 uses
  %.01217 = phi i32 [ %spec.select, %lv_span_get_style_text_font.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.c = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.d = call i32 @lv_style_get_prop(ptr noundef nonnull %i.c, i8 noundef zeroext 77, ptr noundef nonnull %1) #10
  %.not.i = icmp eq i32 %i.d, 1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.e = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 77) #10
  br label %lv_span_get_style_text_font.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %1, align 8, !tbaa !45
  br label %lv_span_get_style_text_font.exit

lv_span_get_style_text_font.exit:                 ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.g = call i32 @lv_font_get_line_height(ptr noundef %.0.i) #10
  %spec.select = call i32 @llvm.smax.i32(i32 %i.g, i32 %.01217) ; 2 uses
  %i.h = call ptr @lv_ll_get_next(ptr noundef nonnull %i.a, ptr noundef nonnull %.018) #10 ; 2 uses
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %lv_span_get_style_text_font.exit, %bb.b
  %.012.lcssa = phi i32 [ 0, %bb.b ], [ %spec.select, %lv_span_get_style_text_font.exit ]
  ret i32 %.012.lcssa
}

declare i32 @lv_font_get_line_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_spangroup_get_expand_width(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.lv_style_value_t, align 8    ; 4 uses
  %3 = alloca %union.lv_style_value_t, align 8    ; 4 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
end_hunk_0
