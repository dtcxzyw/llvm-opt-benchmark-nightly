Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_obj_scroll?download=true
inline.NumInlined: 67
inline.NumDeleted: 18
begin_hunk_0_@lv_obj_get_scroll_x:bb.a
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
  %i.f = sub nsw i32 0, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @lv_obj_get_scroll_y(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %i.f = sub nsw i32 0, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @lv_obj_get_scroll_top(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %i.f = sub nsw i32 0, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @lv_obj_get_scroll_bottom(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @lv_obj_get_child_count(ptr noundef nonnull %0) #5 ; 2 uses
  %.not42 = icmp eq i32 %i.a, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.041 = phi i32 [ -536870911, %.lr.ph ], [ %.1, %bb.e ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = tail call zeroext i1 @lv_obj_has_flag_any(ptr noundef %i.f, i32 noundef 262145) #5
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30
  %i.j = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 33) #5
  %i.k = ptrtoint ptr %i.j to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.k to i32
  %i.l = add nsw i32 %i.i, %.sroa.0.0.extract.trunc.i
  %i.m = tail call i32 @llvm.smax.i32(i32 %.041, i32 %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.m, %bb.d ], [ %.041, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.0.lcssa = phi i32 [ -536870911, %bb.b ], [ %.1, %bb.e ] ; 2 uses
  %i.n = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #5
  %i.o = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #5
  %i.p = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 60) #5
  %i.q = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 25) #5
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i.i34 = trunc i64 %i.r to i32
  %i.s = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #5
  %i.t = ptrtoint ptr %i.s to i64
  %.sroa.0.0.extract.trunc.i9.i35 = trunc i64 %i.t to i32
  %i.u = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 60) #5
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 1
  %.not.i36 = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not.i36, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i35
  %i.y = add nsw i32 %i.x, %.sroa.0.0.extract.trunc.i.i34 ; 2 uses
  %.not32 = icmp eq i32 %.0.lcssa, -536870911
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30
  %.neg = add i32 %i.y, %.0.lcssa
  %i.ab = sub i32 %.neg, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.2 = phi i32 [ %i.ab, %bb.f ], [ -536870911, %._crit_edge ]
  %i.ac = tail call i32 @lv_obj_get_self_height(ptr noundef nonnull %0) #5
  %i.ad = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %lv_obj_get_scroll_y.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27
  br label %lv_obj_get_scroll_y.exit

lv_obj_get_scroll_y.exit:                         ; preds = %bb.g, %bb.h
  %.0.i.neg43 = phi i32 [ %i.ai, %bb.h ], [ 0, %bb.g ]
  %i.aj = ptrtoint ptr %i.p to i64
  %i.ak = and i64 %i.aj, 2
  %.not.i = icmp eq i64 %i.ak, 0
  %i.al = ptrtoint ptr %i.o to i64
  %.sroa.0.0.extract.trunc.i9.i = trunc i64 %i.al to i32
  %i.am = select i1 %.not.i, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i
  %i.an = ptrtoint ptr %i.n to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.an to i32
  %.neg39 = add i32 %i.am, %.sroa.0.0.extract.trunc.i.i
  %i.ao = add i32 %.neg39, %i.y
  %i.ap = add i32 %i.ao, %i.ac
  %i.aq = sub i32 %i.ap, %i.ad
  %i.ar = add i32 %i.aq, %.0.i.neg43
  %i.as = tail call i32 @llvm.smax.i32(i32 %.2, i32 %i.ar)
  ret i32 %i.as
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @lv_obj_get_child_count(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lv_obj_has_flag_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @lv_obj_get_self_height(ptr noundef) local_unnamed_addr #1

declare i32 @lv_obj_get_height(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @lv_obj_get_scroll_left(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -127) #5
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 4294967295
  %.not40 = icmp eq i64 %i.c, 1
  br i1 %.not40, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %i.i = sub nsw i32 0, %i.h
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.j = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #5
  %1 = ptrtoint ptr %i.j to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %1 to i32
  %i.k = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #5
  %2 = ptrtoint ptr %i.k to i64
  %.sroa.0.0.extract.trunc.i9.i = trunc i64 %2 to i32
  %i.l = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 60) #5
  %3 = ptrtoint ptr %i.l to i64
  %4 = and i64 %3, 8
  %.not.i = icmp eq i64 %4, 0
  %5 = select i1 %.not.i, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i
  %6 = add nsw i32 %5, %.sroa.0.0.extract.trunc.i.i
  %i.m = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #5
  %7 = ptrtoint ptr %i.m to i64
  %.sroa.0.0.extract.trunc.i.i42 = trunc i64 %7 to i32
  %i.n = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #5
  %8 = ptrtoint ptr %i.n to i64
  %.sroa.0.0.extract.trunc.i9.i43 = trunc i64 %8 to i32
  %i.o = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 60) #5
  %9 = ptrtoint ptr %i.o to i64
  %10 = and i64 %9, 4
  %.not.i44 = icmp eq i64 %10, 0
  %11 = select i1 %.not.i44, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i43
  %12 = add nsw i32 %11, %.sroa.0.0.extract.trunc.i.i42 ; 2 uses
  %i.p = tail call i32 @lv_obj_get_child_count(ptr noundef nonnull %0) #5 ; 2 uses
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %i.p to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03548 = phi i32 [ 536870911, %.lr.ph ], [ %.1, %bb.h ] ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29   ; 3 uses
  %i.v = tail call zeroext i1 @lv_obj_has_flag_any(ptr noundef %i.u, i32 noundef 262145) #5
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32
  %i.y = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.u, i32 noundef 0, i8 noundef zeroext 34) #5
  %i.z = ptrtoint ptr %i.y to i64
  %.sroa.0.0.extract.trunc.i45 = trunc i64 %i.z to i32
  %i.aa = sub nsw i32 %i.x, %.sroa.0.0.extract.trunc.i45
  %i.ab = tail call i32 @llvm.smin.i32(i32 %.03548, i32 %i.aa)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i32 [ %i.ab, %bb.g ], [ %.03548, %bb.f ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.h
  %.not41 = icmp eq i32 %.1, 536870911
  br i1 %.not41, label %._crit_edge.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !32
  %i.ae = sub i32 %12, %.1
  %i.af = add i32 %i.ae, %i.ad
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge, %bb.i
  %.037 = phi i32 [ %i.af, %bb.i ], [ -536870911, %._crit_edge ], [ -536870911, %bb.e ]
  %i.ag = tail call i32 @lv_obj_get_self_width(ptr noundef nonnull %0) #5
  %i.ah = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5
  %i.ai = add i32 %6, %12
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %lv_obj_get_scroll_x.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  %i.ao = sub nsw i32 0, %i.an
  br label %lv_obj_get_scroll_x.exit

lv_obj_get_scroll_x.exit:                         ; preds = %._crit_edge.thread, %bb.j
  %.0.i = phi i32 [ %i.ao, %bb.j ], [ 0, %._crit_edge.thread ]
  %.neg = add i32 %i.ai, %i.ag
  %i.ap = sub i32 %.neg, %i.ah
  %i.aq = add nsw i32 %i.ap, %.0.i
  %i.ar = tail call i32 @llvm.smax.i32(i32 %.037, i32 %i.aq)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %lv_obj_get_scroll_x.exit, %bb.d
  %.0 = phi i32 [ %i.ar, %lv_obj_get_scroll_x.exit ], [ %i.i, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @lv_obj_get_self_width(ptr noundef) local_unnamed_addr #1

declare i32 @lv_obj_get_width(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @lv_obj_get_scroll_right(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -127) #5
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.j = tail call i32 @lv_obj_get_child_count(ptr noundef nonnull %0) #5 ; 2 uses
  %.not49 = icmp eq i32 %i.j, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03448 = phi i32 [ -536870911, %.lr.ph ], [ %.1, %bb.h ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 3 uses
  %i.p = tail call zeroext i1 @lv_obj_has_flag_any(ptr noundef %i.o, i32 noundef 262145) #5
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !33
  %i.s = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.o, i32 noundef 0, i8 noundef zeroext 35) #5
  %i.t = ptrtoint ptr %i.s to i64
  %.sroa.0.0.extract.trunc.i40 = trunc i64 %i.t to i32
  %i.u = add nsw i32 %i.r, %.sroa.0.0.extract.trunc.i40
  %i.v = tail call i32 @llvm.smax.i32(i32 %.03448, i32 %i.u)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i32 [ %i.v, %bb.g ], [ %.03448, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %.034.lcssa = phi i32 [ -536870911, %bb.e ], [ %.1, %bb.h ] ; 2 uses
  %i.w = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #5
  %i.x = ptrtoint ptr %i.w to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.x to i32
  %i.y = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #5
  %i.z = ptrtoint ptr %i.y to i64
  %.sroa.0.0.extract.trunc.i9.i = trunc i64 %i.z to i32
  %i.aa = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 60) #5
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 8
  %.not.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not.i, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i
  %i.ae = add nsw i32 %i.ad, %.sroa.0.0.extract.trunc.i.i ; 2 uses
  %i.af = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #5
  %i.ag = ptrtoint ptr %i.af to i64
  %.sroa.0.0.extract.trunc.i.i41 = trunc i64 %i.ag to i32
  %i.ah = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #5
  %i.ai = ptrtoint ptr %i.ah to i64
  %.sroa.0.0.extract.trunc.i9.i42 = trunc i64 %i.ai to i32
  %i.aj = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 60) #5
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 4
  %.not.i43 = icmp eq i64 %i.al, 0
  %i.am = select i1 %.not.i43, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i42
  %.not38 = icmp eq i32 %.034.lcssa, -536870911
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !33
  %.neg = add i32 %i.ae, %.034.lcssa
  %i.ap = sub i32 %.neg, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2 = phi i32 [ %i.ap, %bb.i ], [ -536870911, %._crit_edge ]
  %i.aq = tail call i32 @lv_obj_get_self_width(ptr noundef nonnull %0) #5
  %i.ar = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %lv_obj_get_scroll_x.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !26
  br label %lv_obj_get_scroll_x.exit

lv_obj_get_scroll_x.exit:                         ; preds = %bb.j, %bb.k
  %.0.i.neg50 = phi i32 [ %i.aw, %bb.k ], [ 0, %bb.j ]
  %.neg46 = add i32 %i.ae, %.sroa.0.0.extract.trunc.i.i41
  %i.ax = add i32 %.neg46, %i.am
  %i.ay = add i32 %i.ax, %i.aq
  %i.az = sub i32 %i.ay, %i.ar
  %i.ba = add i32 %i.az, %.0.i.neg50
  %i.bb = tail call i32 @llvm.smax.i32(i32 %.2, i32 %i.ba)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %lv_obj_get_scroll_x.exit, %bb.d
  %.0 = phi i32 [ %i.bb, %lv_obj_get_scroll_x.exit ], [ %i.i, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @lv_obj_get_scroll_end(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_anim_get(ptr noundef %0, ptr noundef nonnull @scroll_x_anim) #5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load i32, ptr %i.b, align 8, !tbaa !45
  %i.d = sub nsw i32 0, %i.c
  br label %lv_obj_get_scroll_x.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %lv_obj_get_scroll_x.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %i.j = sub nsw i32 0, %i.i
  br label %lv_obj_get_scroll_x.exit

lv_obj_get_scroll_x.exit:                         ; preds = %bb.d, %bb.c, %bb.b
  %i.k = phi i32 [ %i.d, %bb.b ], [ %i.j, %bb.d ], [ 0, %bb.c ]
  store i32 %i.k, ptr %1, align 4, !tbaa !35
  %i.l = tail call ptr @lv_anim_get(ptr noundef %0, ptr noundef nonnull @scroll_y_anim) #5 ; 2 uses
  %.not11 = icmp eq ptr %i.l, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %lv_obj_get_scroll_x.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %i.o = sub nsw i32 0, %i.n
  br label %lv_obj_get_scroll_y.exit

bb.f:                                             ; preds = %lv_obj_get_scroll_x.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
end_hunk_0
