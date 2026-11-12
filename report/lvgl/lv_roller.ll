Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_roller?download=true
inline.NumInlined: 51
inline.NumDeleted: 16
begin_hunk_0_@lv_roller_get_option_str:bb.a
  %.03041 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %i.j = icmp eq i8 %i.i, 10
  %i.k = zext i1 %i.j to i32
  %spec.select = add i32 %.02942, %i.k            ; 2 uses
  %i.l = add i32 %.03041, 1                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp ugt i64 %i.c, %i.m
  %i.o = icmp ne i32 %spec.select, %1             ; 2 uses
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.030.lcssa = phi i32 [ 0, %bb.b ], [ %i.l, %.lr.ph ] ; 3 uses
  %.lcssa = phi i1 [ %i.e, %bb.b ], [ %i.o, %.lr.ph ]
  br i1 %.lcssa, label %bb.e, label %.preheader40

.preheader40:                                     ; preds = %._crit_edge
  %i.q = zext i32 %.030.lcssa to i64              ; 3 uses
  %i.r = icmp ugt i64 %i.c, %i.q
  br i1 %i.r, label %.lr.ph46, label %.critedge

.lr.ph46:                                         ; preds = %.preheader40
  %.not38 = icmp eq i32 %3, 0
  br i1 %.not38, label %.lr.ph46.split.us, label %.lr.ph46.split.preheader

.lr.ph46.split.preheader:                         ; preds = %.lr.ph46
  %i.s = add i32 %3, -1
  %i.t = zext i32 %i.s to i64
  br label %.lr.ph46.split

.lr.ph46.split.us:                                ; preds = %.lr.ph46, %bb.c
  %i.u = phi i64 [ %i.ab, %bb.c ], [ %i.q, %.lr.ph46 ]
  %.045.us = phi i32 [ %i.z, %bb.c ], [ 0, %.lr.ph46 ] ; 3 uses
  %.13144.us = phi i32 [ %i.aa, %bb.c ], [ %.030.lcssa, %.lr.ph46 ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21    ; 2 uses
  %.not37.us = icmp eq i8 %i.w, 10
  br i1 %.not37.us, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph46.split.us
  %i.x = zext i32 %.045.us to i64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  store i8 %i.w, ptr %i.y, align 1, !tbaa !21
  %i.z = add i32 %.045.us, 1                      ; 2 uses
  %i.aa = add i32 %.13144.us, 1                   ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ugt i64 %i.c, %i.ab
  br i1 %i.ac, label %.lr.ph46.split.us, label %.critedge, !llvm.loop !49

.lr.ph46.split:                                   ; preds = %.lr.ph46.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph46.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ad = phi i64 [ %i.q, %.lr.ph46.split.preheader ], [ %i.ai, %bb.d ]
  %.13144 = phi i32 [ %.030.lcssa, %.lr.ph46.split.preheader ], [ %i.ah, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21  ; 2 uses
  %.not37 = icmp ne i8 %i.af, 10
  %.not39 = icmp samesign ult i64 %indvars.iv, %i.t
  %or.cond = select i1 %.not37, i1 %.not39, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge.loopexit53

bb.d:                                             ; preds = %.lr.ph46.split
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = add i32 %.13144, 1                      ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp ugt i64 %i.c, %i.ai
  br i1 %i.aj, label %.lr.ph46.split, label %.critedge.loopexit53, !llvm.loop !49

.critedge.loopexit53:                             ; preds = %bb.d, %.lr.ph46.split
  %.0.lcssa.ph54.in = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv, %.lr.ph46.split ]
  %.0.lcssa.ph54 = trunc i64 %.0.lcssa.ph54.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph46.split.us, %bb.c, %.critedge.loopexit53, %.preheader40
  %.0.lcssa = phi i32 [ 0, %.preheader40 ], [ %.0.lcssa.ph54, %.critedge.loopexit53 ], [ %i.z, %bb.c ], [ %.045.us, %.lr.ph46.split.us ]
  %i.ak = zext i32 %.0.lcssa to i64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  store i8 0, ptr %i.al, align 1, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.critedge
  %.032 = phi i32 [ 1, %.critedge ], [ 0, %._crit_edge ]
  ret i32 %.032
}

declare ptr @lv_label_get_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_roller_get_option_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 3
  %i.d = icmp eq i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = udiv i32 %i.f, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.f, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @lv_roller_bind_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %0, null
  br i1 %.not11, label %.preheader13, label %bb.c

.preheader13:                                     ; preds = %bb.b, %.preheader13
  br label %.preheader13

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 15
  %.not12 = icmp eq i32 %i.c, 2
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @lv_obj_add_event_cb(ptr noundef nonnull %0, ptr noundef nonnull @roller_value_changed_event_cb, i32 noundef 35, ptr noundef nonnull %1) #6 ; 0 uses
  %i.e = tail call ptr @lv_subject_add_observer_obj(ptr noundef nonnull %1, ptr noundef nonnull @roller_value_observer_cb, ptr noundef nonnull %0, ptr noundef null) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @roller_value_changed_event_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_current_target(ptr noundef %0) #6 ; 6 uses
  %i.b = tail call ptr @lv_event_get_user_data(ptr noundef %0) #6
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 3
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = udiv i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = urem i32 %i.m, %i.k
  br label %lv_roller_get_selected.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  br label %lv_roller_get_selected.exit

lv_roller_get_selected.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.c ], [ %i.p, %bb.d ]
  tail call void @lv_subject_set_int(ptr noundef %i.b, i32 noundef %.0.i) #6
  ret void
}

declare ptr @lv_subject_add_observer_obj(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @roller_value_observer_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @lv_observer_get_target_obj(ptr noundef %0) #6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  %2 = load i32, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 10 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 3
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %lv_roller_get_selected.exit, label %lv_roller_get_selected.exit.thread

lv_roller_get_selected.exit:                      ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45
  %i.m = udiv i32 %i.j, %i.l                      ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %.fr.i = freeze i32 %i.o                        ; 3 uses
  %i.p = urem i32 %.fr.i, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21   ; 8 uses
  %.not = icmp eq i32 %i.p, %i.r
  br i1 %.not, label %bb.i, label %bb.c

lv_roller_get_selected.exit.thread:               ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %.not10 = icmp eq i32 %i.t, %i.v
  br i1 %.not10, label %bb.i, label %.thread

.thread:                                          ; preds = %lv_roller_get_selected.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  br label %lv_roller_set_selected.exit

bb.c:                                             ; preds = %lv_roller_get_selected.exit
  %i.y = icmp ult i32 %i.r, %i.m
  br i1 %i.y, label %bb.d, label %lv_roller_set_selected.exit

bb.d:                                             ; preds = %bb.c
  %i.z = urem i32 %.fr.i, %i.m                    ; 3 uses
  %i.aa = sub nuw i32 %.fr.i, %i.z
  %i.ab = sub i32 %i.z, %i.r
  %i.ac = shl i32 %i.ab, 16
  %i.ad = ashr exact i32 %i.ac, 16
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %i.af = lshr i32 %i.m, 1
  %i.ag = icmp samesign ugt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp ugt i32 %i.z, %i.r
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = add i32 %i.m, %i.r
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aj = sub i32 %i.r, %i.m
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i7 = phi i32 [ %i.ai, %bb.f ], [ %i.aj, %bb.g ], [ %i.r, %bb.d ]
  %i.ak = add i32 %i.aa, %.0.i7
  br label %lv_roller_set_selected.exit

lv_roller_set_selected.exit:                      ; preds = %.thread, %bb.c, %bb.h
  %i.al = phi i32 [ %i.j, %bb.c ], [ %i.j, %bb.h ], [ %i.x, %.thread ] ; 2 uses
  %.1.i = phi i32 [ %i.r, %bb.c ], [ %i.ak, %bb.h ], [ %i.v, %.thread ] ; 2 uses
  %.in = and i32 %2, 65536
  %3 = icmp ne i32 %.in, 0
  %i.am = icmp ult i32 %.1.i, %i.al
  %i.an = add i32 %i.al, -1
  %i.ao = select i1 %i.am, i32 %.1.i, i32 %i.an   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !20
  tail call fastcc void @refr_position(ptr noundef nonnull %i.d, i1 noundef zeroext %3)
  br label %bb.i

bb.i:                                             ; preds = %lv_roller_get_selected.exit.thread, %lv_roller_set_selected.exit, %lv_roller_get_selected.exit
  ret void
}

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @lv_obj_remove_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_refresh_self_size(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_anim_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @set_y_anim(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  tail call void @lv_obj_set_y(ptr noundef %0, i32 noundef %1) #6
  ret void
}

declare void @lv_event_stop_processing(ptr noundef) local_unnamed_addr #2

declare ptr @lv_indev_active() local_unnamed_addr #2

declare void @lv_indev_get_vect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @transform_vect_recursive(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_point_t, align 8         ; 4 uses
  %.not23 = icmp eq ptr %0, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.027 = phi i16 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %.01926 = phi i32 [ %i.l, %.lr.ph ], [ 256, %bb.a ]
  %.02025 = phi ptr [ %i.o, %.lr.ph ], [ %0, %bb.a ] ; 4 uses
  %.02124 = phi i32 [ %i.n, %.lr.ph ], [ 256, %bb.a ]
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.02025, i32 noundef 0, i8 noundef zeroext -100) #6
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i16
  %i.d = add i16 %.027, %i.c                      ; 2 uses
  %i.e = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.02025, i32 noundef 0, i8 noundef zeroext -104) #6
  %i.f = ptrtoint ptr %i.e to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.f to i32
  %i.g = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 1)
  %i.h = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.02025, i32 noundef 0, i8 noundef zeroext -103) #6
  %i.i = ptrtoint ptr %i.h to i64
  %.sroa.0.0.extract.trunc.i.i22 = trunc i64 %i.i to i32
  %i.j = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i22, i32 1)
  %i.k = mul nuw nsw i32 %i.g, %.01926
  %i.l = lshr i32 %i.k, 8                         ; 2 uses
  %i.m = mul nuw nsw i32 %i.j, %.02124
  %i.n = lshr i32 %i.m, 8                         ; 2 uses
  %i.o = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %.02025) #6 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  %i.q = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1)
  %i.r = sext i16 %i.d to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.021.lcssa = phi i32 [ 256, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %.019.lcssa = phi i32 [ 256, %bb.a ], [ %i.p, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.r, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i64 0, ptr %2, align 8
  %i.s = udiv i32 65536, %.019.lcssa
  %i.t = udiv i32 65536, %.021.lcssa
  %i.u = sub nsw i32 0, %.0.lcssa
  call void @lv_point_transform(ptr noundef nonnull %1, i32 noundef %i.u, i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull %2, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

declare void @lv_obj_set_y(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_y_aligned(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @release_handler(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_point_t, align 8         ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.lv_point_t, align 8         ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call ptr @lv_obj_get_child(ptr noundef %0, i32 noundef 0) #6 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @lv_indev_active() #6      ; 6 uses
  %i.f = tail call i32 @lv_indev_get_type(ptr noundef %i.e) #6 ; 2 uses
  switch i32 %i.f, label %bb.f [
    i32 4, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = icmp eq i32 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.i, ptr %i.j, align 8, !tbaa !20
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @lv_obj_get_group(ptr noundef nonnull %0) #6 ; 2 uses
  %i.l = tail call zeroext i1 @lv_group_get_editing(ptr noundef %i.k) #6
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @lv_group_set_editing(ptr noundef %i.k, i1 noundef zeroext false) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %i.m = tail call i32 @lv_indev_get_type(ptr noundef %i.e) #6
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @lv_indev_get_type(ptr noundef %i.e) #6
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, 4
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @lv_indev_get_point(ptr noundef %i.e, ptr noundef nonnull %1) #6
  call void @lv_obj_transform_point(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3) #6
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = load <2 x i32>, ptr %i.u, align 8, !tbaa !38
  %i.w = load <2 x i32>, ptr %1, align 8, !tbaa !38
  %i.x = sub nsw <2 x i32> %i.w, %i.v
  store <2 x i32> %i.x, ptr %1, align 8, !tbaa !38
  %i.y = call i32 @lv_label_get_letter_on(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i1 noundef zeroext true) #6 ; 3 uses
  %i.z = call ptr @lv_label_get_text(ptr noundef nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !38
  %.not87 = icmp eq i32 %i.y, 0
  br i1 %.not87, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.i
  %i.aa = load ptr, ptr @lv_text_encoded_next, align 8, !tbaa !56
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph84, %bb.j
  %.06582 = phi i32 [ 0, %.lr.ph84 ], [ %i.af, %bb.j ]
  %.06681 = phi i32 [ 0, %.lr.ph84 ], [ %i.ae, %bb.j ]
  %.06780 = phi i16 [ 0, %.lr.ph84 ], [ %.1, %bb.j ]
  %i.ab = call i32 %i.aa(ptr noundef %i.z, ptr noundef nonnull %i.a) #6
  %i.ac = icmp eq i32 %i.ab, 10
  %.not73 = icmp ne i32 %.06681, %i.y
  %or.cond.not = select i1 %i.ac, i1 %.not73, i1 false
  %i.ad = zext i1 %or.cond.not to i16
  %.1 = add i16 %.06780, %i.ad                    ; 2 uses
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !38
  %i.af = add nuw i32 %.06582, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %i.y
  br i1 %exitcond.not, label %._crit_edge85, label %bb.j, !llvm.loop !54

._crit_edge85:                                    ; preds = %bb.j, %bb.i
  %.067.lcssa = phi i16 [ 0, %bb.i ], [ %.1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ag = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 77) #6
  %i.ah = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 103) #6
  %i.ai = ptrtoint ptr %i.ah to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ai to i32
end_hunk_0
