inline.NumInlined: 24
inline.NumDeleted: 5
begin_hunk_0_@lv_anim_delete:bb.a
bb.a:
  %i.a = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312)) #11 ; 2 uses
  %.not19 = icmp eq ptr %i.a, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.01321 = phi i1 [ false, %.lr.ph ], [ %.117, %bb.o ]
  %.01420 = phi ptr [ %i.a, %.lr.ph ], [ %i.v, %bb.o ] ; 7 uses
  %i.d = load ptr, ptr %.01420, align 8, !tbaa !49
  %i.e = icmp eq ptr %i.d, %0
  %or.cond = or i1 %i.b, %i.e
  br i1 %or.cond, label %bb.c, label %anim_mark_list_change.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01420, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = icmp eq ptr %i.g, %1
  %or.cond3 = or i1 %i.c, %i.h
  br i1 %or.cond3, label %bb.d, label %anim_mark_list_change.exit

bb.d:                                             ; preds = %bb.c
  tail call void @lv_ll_remove(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312), ptr noundef nonnull %.01420) #11
  %i.i = getelementptr inbounds nuw i8, ptr %.01420, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %remove_anim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.j(ptr noundef nonnull %.01420) #11, !inline_history !62
  br label %remove_anim.exit

remove_anim.exit:                                 ; preds = %bb.d, %bb.e
  tail call void @lv_free(ptr noundef nonnull %.01420) #11
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 296), align 8, !tbaa !30
  %i.k = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312)) #11, !inline_history !31
  %i.l = icmp eq ptr %i.k, null
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 304), align 8, !tbaa !8 ; 3 uses
  %.not2.i = icmp eq ptr %i.m, null               ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %remove_anim.exit
  br i1 %.not2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lv_timer_pause(ptr noundef nonnull %i.m) #11, !inline_history !31
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 298), align 2, !tbaa !32, !range !33, !noundef !34
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.p = tail call zeroext i1 @lv_display_unregister_vsync_event(ptr noundef null, ptr noundef nonnull @anim_vsync_event, ptr noundef null) #11, !inline_history !31 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 298), align 2, !tbaa !32
  br label %bb.n

bb.j:                                             ; preds = %remove_anim.exit
  br i1 %.not2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lv_timer_resume(ptr noundef nonnull %i.m) #11, !inline_history !31
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 298), align 2, !tbaa !32, !range !33, !noundef !34
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = tail call zeroext i1 @lv_display_register_vsync_event(ptr noundef null, ptr noundef nonnull @anim_vsync_event, ptr noundef null) #11, !inline_history !31 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 298), align 2, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %i.t = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312)) #11
  br label %bb.o

anim_mark_list_change.exit:                       ; preds = %bb.b, %bb.c
  %i.u = tail call ptr @lv_ll_get_next(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312), ptr noundef nonnull %.01420) #11
  br label %bb.o

bb.o:                                             ; preds = %anim_mark_list_change.exit, %bb.n
  %.117 = phi i1 [ true, %bb.n ], [ %.01321, %anim_mark_list_change.exit ] ; 2 uses
  %i.v = phi ptr [ %i.t, %bb.n ], [ %i.u, %anim_mark_list_change.exit ] ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.013.lcssa = phi i1 [ false, %bb.a ], [ %.117, %bb.o ]
  ret i1 %.013.lcssa
}

declare ptr @lv_ll_get_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @remove_anim(ptr noundef %0) #0 {
bb.a:
  tail call void @lv_ll_remove(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312), ptr noundef %0) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lv_free(ptr noundef nonnull %0) #11
  ret void
}

declare ptr @lv_ll_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_ll_clear_custom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @lv_anim_get(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312)) #11 ; 3 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.012.us = phi ptr [ %i.e, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.c = load ptr, ptr %.012.us, align 8, !tbaa !49
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = tail call ptr @lv_ll_get_next(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312), ptr noundef nonnull %.012.us) #11 ; 2 uses
  %.not.us = icmp eq ptr %i.e, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !64

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.012 = phi ptr [ %i.k, %bb.d ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.f = load ptr, ptr %.012, align 8, !tbaa !49
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.c
  %i.k = tail call ptr @lv_ll_get_next(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312), ptr noundef nonnull %.012) #11 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.c, %bb.d, %.lr.ph.split.us, %bb.b, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.012.us, %.lr.ph.split.us ], [ null, %bb.d ], [ %.012, %bb.c ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_anim_get_timer() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 304), align 8, !tbaa !8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define zeroext i16 @lv_anim_count_running() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312)) #11 ; 2 uses
  %.not4 = icmp eq ptr %i.a, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.c, %.lr.ph ], [ %i.a, %bb.a ]
  %.035 = phi i16 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %i.b = add i16 %.035, 1                         ; 2 uses
  %i.c = tail call ptr @lv_ll_get_next(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 312), ptr noundef nonnull %.06) #11 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.03.lcssa = phi i16 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i16 %.03.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @lv_anim_speed_clamped(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i32 %0, 10000
  %i.b = icmp ugt i32 %1, 10000
  %i.c = icmp ugt i32 %2, 10000
  %i.d = trunc i32 %0 to i16
  %3 = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %4 = trunc i32 %1 to i16
  %5 = insertelement <2 x i16> %3, i16 %4, i64 1
  %6 = add <2 x i16> %5, splat (i16 5)
  %7 = udiv <2 x i16> %6, splat (i16 10)          ; 2 uses
  %8 = extractelement <2 x i16> %7, i64 0
  %.zext = zext nneg i16 %8 to i32
  %9 = select i1 %i.a, i32 1023, i32 %.zext
  %10 = extractelement <2 x i16> %7, i64 1
  %.zext12 = zext nneg i16 %10 to i32
  %i.e = add i32 %2, 5
  %i.f = udiv i32 %i.e, 10
  %i.g = shl i32 %i.f, 20
  %i.h = xor i32 %i.g, -2147483648
  %i.i = select i1 %i.c, i32 -1074790400, i32 %i.h
  %i.j = shl nuw nsw i32 %.zext12, 10
  %i.k = select i1 %i.b, i32 1047552, i32 %i.j
  %i.l = add nuw nsw i32 %i.k, %9
  %i.m = add i32 %i.l, %i.i
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1098907648, -1098901094) i32 @lv_anim_speed(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i32 %0, 10000
  %i.b = trunc i32 %0 to i16
  %.lhs.trunc.i = add i16 %i.b, 5
  %i.c = udiv i16 %.lhs.trunc.i, 10
  %.zext.i = zext nneg i16 %i.c to i32
  %i.d = or disjoint i32 %.zext.i, -1098907648
  %i.e = select i1 %i.a, i32 -1098906625, i32 %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @lv_anim_speed_to_time(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = sub nsw i32 %1, %2
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %i.c = mul i32 %i.b, 1000                       ; 2 uses
  %i.d = udiv i32 %i.c, %0
  %i.e = icmp ugt i32 %0, %i.c
  %i.f = select i1 %i.e, i32 1, i32 %i.d
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define void @lv_anim_refr_now() local_unnamed_addr #0 {
bb.a:
  tail call void @anim_timer(ptr poison)
  ret void
}

declare i32 @lv_map(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @lv_anim_path_ease_in(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  %i.e = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef 0, i32 noundef %i.d, i32 noundef 0, i32 noundef 1024) #11
  %i.f = tail call i32 @lv_cubic_bezier(i32 noundef %i.e, i32 noundef 430, i32 noundef 0, i32 noundef 1024, i32 noundef 1024) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = ashr i32 %i.l, 10
  %i.n = add nsw i32 %i.m, %i.j
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define i32 @lv_anim_path_ease_out(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  %i.e = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef 0, i32 noundef %i.d, i32 noundef 0, i32 noundef 1024) #11
  %i.f = tail call i32 @lv_cubic_bezier(i32 noundef %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 593, i32 noundef 1024) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = ashr i32 %i.l, 10
  %i.n = add nsw i32 %i.m, %i.j
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define i32 @lv_anim_path_ease_in_out(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  %i.e = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef 0, i32 noundef %i.d, i32 noundef 0, i32 noundef 1024) #11
  %i.f = tail call i32 @lv_cubic_bezier(i32 noundef %i.e, i32 noundef 430, i32 noundef 0, i32 noundef 593, i32 noundef 1024) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = ashr i32 %i.l, 10
  %i.n = add nsw i32 %i.m, %i.j
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define i32 @lv_anim_path_overshoot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  %i.e = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef 0, i32 noundef %i.d, i32 noundef 0, i32 noundef 1024) #11
  %i.f = tail call i32 @lv_cubic_bezier(i32 noundef %i.e, i32 noundef 341, i32 noundef 0, i32 noundef 683, i32 noundef 1300) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = ashr i32 %i.l, 10
  %i.n = add nsw i32 %i.m, %i.j
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define i32 @lv_anim_path_bounce(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  %i.e = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef 0, i32 noundef %i.d, i32 noundef 0, i32 noundef 1024) #11 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %i.j = sub nsw i32 %i.g, %i.i                   ; 6 uses
  %i.k = icmp slt i32 %i.e, 408
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = mul nsw i32 %i.e, 2500
  %i.m = ashr i32 %i.l, 10
  %narrow = sub nsw i32 1024, %i.m
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i32 %i.e, 614
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = mul nuw nsw i32 %i.e, 5
  %i.p = add nsw i32 %i.o, -2040
  %i.q = sdiv i32 %i.j, 20
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i32 %i.e, 819
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.neg48 = mul nsw i32 %i.e, -5
  %i.s = add nsw i32 %.neg48, 4094
  %i.t = sdiv i32 %i.j, 20
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i32 %i.e, 921
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = mul nuw nsw i32 %i.e, 10
  %i.w = add nsw i32 %i.v, -8190
  %i.x = sdiv i32 %i.j, 40
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = icmp samesign ult i32 %i.e, 1025
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.neg = mul nsw i32 %i.e, -10
  %i.z = add nsw i32 %.neg, 10234
  %i.aa = sdiv i32 %i.j, 40
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.h, %bb.j, %bb.i, %bb.f, %bb.b
  %.046 = phi i32 [ %i.j, %bb.b ], [ %i.q, %bb.d ], [ %i.t, %bb.f ], [ %i.x, %bb.h ], [ %i.aa, %bb.j ], [ %i.j, %bb.i ]
  %.0 = phi i32 [ %narrow, %bb.b ], [ %i.p, %bb.d ], [ %i.s, %bb.f ], [ %i.w, %bb.h ], [ %i.z, %bb.j ], [ %i.e, %bb.i ]
  %i.ab = tail call i32 @llvm.smax.i32(i32 %.0, i32 0)
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 1024)
  %i.ad = tail call i32 @lv_bezier3(i32 noundef %i.ac, i32 noundef 0, i32 noundef 500, i32 noundef 800, i32 noundef 1024) #11
  %i.ae = mul nsw i32 %i.ad, %.046
  %i.af = ashr i32 %i.ae, 10
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !43
  %i.ah = sub nsw i32 %i.ag, %i.af
  ret i32 %i.ah
}

declare i32 @lv_bezier3(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @lv_anim_path_step(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
end_hunk_0
