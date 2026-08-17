inline.NumInlined: 80
inline.NumDeleted: 36
begin_hunk_0_@lv_array_init

declare void @lv_obj_remove_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_ll_get_head(ptr noundef) local_unnamed_addr #2

declare void @lv_ll_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare void @lv_ll_clear(ptr noundef) local_unnamed_addr #2

declare ptr @lv_array_at(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_remove_event_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @needle_deleted_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_user_data(ptr noundef %0) #7 ; 2 uses
  %i.b = tail call ptr @lv_event_get_target_obj(ptr noundef %0) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 152
  %.val = load i32, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.e = zext i32 %.val to i64
  %.not16 = icmp eq i32 %.val, 0
  br i1 %.not16, label %.loopexit, label %.critedge

bb.b:                                             ; preds = %.critedge
  %i.f = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %bb.a, %bb.b
  %.015 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.g = trunc nuw i64 %.015 to i32               ; 2 uses
  %i.h = tail call ptr @lv_array_at(ptr noundef nonnull %i.c, i32 noundef %i.g) #7
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %.not = icmp eq ptr %i.i, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge
  %i.j = tail call i32 @lv_array_remove(ptr noundef nonnull %i.c, i32 noundef %i.g) #7 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @lv_array_deinit(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_user_data(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_target_obj(ptr noundef) local_unnamed_addr #2

declare i32 @lv_array_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_find_section_tick_idx(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load i64, ptr %i.e, align 4
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 32767                      ; 3 uses
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.i = add nsw i32 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %._crit_edge
  %.03644 = phi i32 [ 0, %.lr.ph46 ], [ %i.ao, %._crit_edge ] ; 7 uses
  %.val = load i64, ptr %i.e, align 4
  %i.k = trunc i64 %.val to i32
  %i.l = lshr i32 %i.k, 15
  %i.m = and i32 %i.l, 32767                      ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %scale_is_major_tick.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = urem i32 %.03644, %i.m
  %i.o = icmp eq i32 %i.n, 0
  br label %scale_is_major_tick.exit

scale_is_major_tick.exit:                         ; preds = %bb.b, %bb.c
  %i.p = phi i1 [ false, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.q = tail call i32 @lv_map(i32 noundef %.03644, i32 noundef 0, i32 noundef %i.i, i32 noundef %i.b, i32 noundef %i.d) #7 ; 2 uses
  %i.r = tail call ptr @lv_ll_get_tail(ptr noundef nonnull %i.j) #7 ; 2 uses
  %.not42 = icmp eq ptr %i.r, null
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %scale_is_major_tick.exit
  %i.s = zext i1 %i.p to i8
  %i.t = select i1 %i.p, i8 2, i8 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.043 = phi ptr [ %i.r, %.lr.ph ], [ %i.an, %bb.i ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.043, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !53
  %.not39 = icmp sgt i32 %i.v, %i.q
  br i1 %.not39, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.043, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %.not40 = icmp slt i32 %i.x, %i.q
  br i1 %.not40, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.043, i64 32 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !49   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 255
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %.03644, ptr %i.y, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %.043, i64 64 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = and i8 %i.ac, -2
  %i.ae = or disjoint i8 %i.ad, %i.s
  store i8 %i.ae, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = phi i32 [ %.03644, %bb.g ], [ %i.z, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.043, i64 36 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = icmp ne i32 %i.ah, 255
  %.not41 = icmp eq i32 %i.af, %.03644
  %or.cond = and i1 %i.ai, %.not41
  br i1 %or.cond, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.h
  store i32 %.03644, ptr %i.ag, align 4, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %.043, i64 64 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, -3
  %i.am = or disjoint i8 %i.al, %i.t
  store i8 %i.am, ptr %i.aj, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.sink.split, %bb.e, %bb.d
  %i.an = tail call ptr @lv_ll_get_prev(ptr noundef nonnull %i.j, ptr noundef nonnull %.043) #7 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.i, %scale_is_major_tick.exit
  %i.ao = add nuw nsw i32 %.03644, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.h
  br i1 %exitcond.not, label %._crit_edge47, label %bb.b, !llvm.loop !64

._crit_edge47:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_calculate_main_compensation(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 8 uses
  %2 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 8 uses
  %3 = alloca %struct.lv_point_t, align 8         ; 5 uses
  %4 = alloca %struct.lv_point_t, align 4         ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 32767                      ; 3 uses
  %i.e = icmp samesign ult i32 %i.d, 2
  br i1 %i.e, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8
  switch i32 %i.g, label %bb.c [
    i32 16, label %bb.af
    i32 8, label %bb.af
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %1) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %2) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %2) #7
  %i.h = add nsw i32 %i.d, -1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %scale_store_section_line_tick_width_compensation.exit
  %.04057 = phi i32 [ 0, %bb.c ], [ %i.ca, %scale_store_section_line_tick_width_compensation.exit ] ; 7 uses
  %.val = load i64, ptr %i.a, align 4
  %i.n = trunc i64 %.val to i32
  %i.o = lshr i32 %i.n, 15
  %i.p = and i32 %i.o, 32767                      ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %scale_is_major_tick.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = urem i32 %.04057, %i.p
  %i.r = icmp eq i32 %i.q, 0
  br label %scale_is_major_tick.exit

scale_is_major_tick.exit:                         ; preds = %bb.d, %bb.e
  %i.s = phi i1 [ false, %bb.d ], [ %i.r, %bb.e ] ; 4 uses
  %i.t = load i32, ptr %i.i, align 4, !tbaa !24
  %i.u = load i32, ptr %i.j, align 8, !tbaa !25
  %i.v = call i32 @lv_map(i32 noundef %.04057, i32 noundef 0, i32 noundef %i.h, i32 noundef %i.t, i32 noundef %i.u) #7 ; 4 uses
  %i.w = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.k) #7 ; 2 uses
  %.not55 = icmp eq ptr %i.w, null
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %scale_is_major_tick.exit, %bb.j
  %.056 = phi ptr [ %i.af, %bb.j ], [ %i.w, %scale_is_major_tick.exit ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53
  %.not44 = icmp sgt i32 %i.y, %i.v
  br i1 %.not44, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.056, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !52
  %.not45 = icmp slt i32 %i.aa, %i.v
  br i1 %.not45, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.ac, i32 noundef 131072)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.056, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %i.ae, i32 noundef 327680)
  br label %.loopexit

bb.j:                                             ; preds = %bb.f, %.lr.ph
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %1) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %2) #7
  %i.af = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.k, ptr noundef nonnull %.056) #7 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !65

.loopexit:                                        ; preds = %bb.j, %scale_is_major_tick.exit, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call fastcc void @scale_get_tick_points(ptr noundef nonnull %0, i32 noundef %.04057, i1 noundef zeroext %i.s, ptr noundef %3, ptr noundef %4)
  %i.ag = load i32, ptr %i.l, align 8, !tbaa !66
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !66
  %i.ai = icmp eq i32 %.04057, 0
  %i.aj = load i64, ptr %i.a, align 4
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 32767
  %i.am = icmp eq i32 %i.al, %.04057              ; 2 uses
  %i.an = select i1 %i.s, i32 %i.ag, i32 %i.ah
  %or.cond.i = or i1 %i.ai, %i.am
  br i1 %or.cond.i, label %bb.k, label %scale_store_main_line_tick_width_compensation.exit

bb.k:                                             ; preds = %.loopexit
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  switch i32 %i.ao, label %bb.l [
    i32 8, label %scale_store_main_line_tick_width_compensation.exit
    i32 16, label %scale_store_main_line_tick_width_compensation.exit
  ]

bb.l:                                             ; preds = %bb.k
  %5 = add i32 %i.ao, -2
  %switch.and.i = and i32 %5, -3
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %6 = xor i1 %i.am, %switch.selectcmp.i
  %.sink24.i = select i1 %6, i64 140, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24.i
  store i32 %i.an, ptr %7, align 4, !tbaa !27
  br label %scale_store_main_line_tick_width_compensation.exit

scale_store_main_line_tick_width_compensation.exit: ; preds = %.loopexit, %bb.k, %bb.k, %bb.l
  %i.ap = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.k) #7 ; 2 uses
  %.not55.i = icmp eq ptr %i.ap, null
  br i1 %.not55.i, label %scale_store_section_line_tick_width_compensation.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %scale_store_main_line_tick_width_compensation.exit
  %i.aq = and i32 %.04057, 255                    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.ad, %.lr.ph.i
  %.04356.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.bz, %bb.ad ] ; 13 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04356.i, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !53
  %.not47.i = icmp sgt i32 %i.as, %i.v
  br i1 %.not47.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.04356.i, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52
  %.not48.i = icmp slt i32 %i.au, %i.v
  br i1 %.not48.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.s, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.04356.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.aw, i32 noundef 131072)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %.04356.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.ay, i32 noundef 327680)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.04356.i, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !49
  %i.bb = icmp eq i32 %i.ba, %i.aq
  br i1 %i.bb, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.04356.i, i64 64
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = and i8 %i.bd, 1
  %.not49.i = icmp eq i8 %i.be, 0
  %.val50 = load i32, ptr %i.m, align 8
  %.val51 = load i32, ptr %i.l, align 8
  %.0.i = select i1 %.not49.i, i32 %.val50, i32 %.val51 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04356.i, i64 48
  %i.bg = load i64, ptr %3, align 8
  store i64 %i.bg, ptr %i.bf, align 8
  %i.bh = and i32 %.0.i, 1
  %.not50.i = icmp eq i32 %i.bh, 0
  br i1 %.not50.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !8
  switch i32 %i.bi, label %bb.v [
    i32 2, label %bb.u
    i32 4, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bj = add nsw i32 %.0.i, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bk = add nsw i32 %.0.i, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.1.i = phi i32 [ %i.bj, %bb.u ], [ %i.bk, %bb.v ], [ %.0.i, %bb.s ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.04356.i, i64 40
  store i32 %.1.i, ptr %i.bl, align 8, !tbaa !72
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %.04356.i, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !51
  %i.bo = icmp eq i32 %i.bn, %i.aq
  br i1 %i.bo, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %.04356.i, i64 64
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = and i8 %i.bq, 2
  %.not51.i = icmp eq i8 %i.br, 0
  %.val52 = load i32, ptr %i.m, align 8
  %.val53 = load i32, ptr %i.l, align 8
  %.2.i = select i1 %.not51.i, i32 %.val52, i32 %.val53 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04356.i, i64 56
  %i.bt = load i64, ptr %3, align 8
  store i64 %i.bt, ptr %i.bs, align 8
  %i.bu = and i32 %.2.i, 1
  %.not53.i = icmp eq i32 %i.bu, 0
  br i1 %.not53.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load i32, ptr %i.f, align 8, !tbaa !8
  switch i32 %i.bv, label %bb.ab [
    i32 2, label %bb.aa
    i32 4, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.bw = add nsw i32 %.2.i, -1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bx = add nsw i32 %.2.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y
  %.3.i = phi i32 [ %i.bw, %bb.aa ], [ %i.bx, %bb.ab ], [ %.2.i, %bb.y ]
  %i.by = getelementptr inbounds nuw i8, ptr %.04356.i, i64 44
  store i32 %.3.i, ptr %i.by, align 4, !tbaa !73
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %i.bz = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.k, ptr noundef nonnull %.04356.i) #7 ; 2 uses
  %.not.i46 = icmp eq ptr %i.bz, null
  br i1 %.not.i46, label %scale_store_section_line_tick_width_compensation.exit, label %bb.m, !llvm.loop !74

scale_store_section_line_tick_width_compensation.exit: ; preds = %bb.ad, %scale_store_main_line_tick_width_compensation.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.ca = add nuw nsw i32 %.04057, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.d
  br i1 %exitcond.not, label %bb.ae, label %bb.d, !llvm.loop !75

bb.ae:                                            ; preds = %scale_store_section_line_tick_width_compensation.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %bb.b, %bb.a, %bb.ae
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_draw_main(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %union.lv_style_value_t, align 8    ; 12 uses
  %3 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 12 uses
  %4 = alloca %struct.lv_point_t, align 4         ; 10 uses
  %5 = alloca %struct.lv_point_t, align 4         ; 8 uses
  %6 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 11 uses
  %7 = alloca %struct.lv_draw_arc_dsc_t, align 8  ; 10 uses
  %8 = alloca %struct.lv_point_t, align 8         ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %struct.lv_draw_arc_dsc_t, align 8  ; 15 uses
  %10 = alloca %struct.lv_point_t, align 8        ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call ptr @lv_event_get_layer(ptr noundef %1) #7 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i64, ptr %i.d, align 4
  %i.f = and i64 %i.e, 32766
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  switch i32 %i.i, label %bb.af [
    i32 2, label %bb.c
    i32 4, label %bb.c
    i32 1, label %bb.c
    i32 0, label %bb.c
    i32 16, label %bb.m
    i32 8, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %3) #7
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3) #7
  %i.k = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #7
  %i.l = ptrtoint ptr %i.k to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.l to i32 ; 4 uses
  %i.m = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #7
  %i.n = ptrtoint ptr %i.m to i64
  %.sroa.0.0.extract.trunc.i134 = trunc i64 %i.n to i32
  %i.o = add nsw i32 %.sroa.0.0.extract.trunc.i134, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.p = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 25) #7
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.0.0.extract.trunc.i135 = trunc i64 %i.q to i32
  %i.r = add nsw i32 %.sroa.0.0.extract.trunc.i135, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.s = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #7
  %i.t = ptrtoint ptr %i.s to i64
  %.sroa.0.0.extract.trunc.i136 = trunc i64 %i.t to i32
  %i.u = add nsw i32 %.sroa.0.0.extract.trunc.i136, %.sroa.0.0.extract.trunc.i ; 3 uses
  %i.v = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #7
  %i.w = ptrtoint ptr %i.v to i64
  %.sroa.0.0.extract.trunc.i137 = trunc i64 %i.w to i32
  %i.x = add nsw i32 %.sroa.0.0.extract.trunc.i137, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.y = load i32, ptr %i.h, align 8, !tbaa !8
  switch i32 %i.y, label %.thread141 [
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 1, label %bb.f
    i32 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !66
  %i.ad = sdiv i32 %i.ac, 2
  %i.ae = sub i32 %i.aa, %i.x
  %i.af = add i32 %i.ae, %i.ad
  br label %.thread.thread

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !66
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = add i32 %i.ah, %i.u
  %i.am = add i32 %i.al, %i.ak
  br label %.thread.thread

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !78
  %i.ap = add nsw i32 %i.ao, %i.x
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !66
  %i.au = sdiv i32 %i.at, 2
  %i.av = add i32 %i.ar, %i.o
  %i.aw = add i32 %i.av, %i.au
  br label %.thread141

bb.g:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !78
  %i.az = add nsw i32 %i.ay, %i.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !66
  %i.be = sdiv i32 %i.bd, 2
  %i.bf = sub i32 %i.bb, %i.r
  %i.bg = add i32 %i.bf, %i.be
  br label %.thread141

.thread.thread:                                   ; preds = %bb.d, %bb.e
  %.1.ph147 = phi i32 [ %i.af, %bb.d ], [ %i.am, %bb.e ]
  %.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.pn = load i32, ptr %.pn.in, align 4, !tbaa !79
  %.1125.ph146 = add nsw i32 %.pn, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.bh = add nsw i32 %.1.ph147, -1               ; 2 uses
  store i32 %i.bh, ptr %4, align 4, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bh, ptr %5, align 4, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !80
  %i.bl = sub nsw i32 %i.bk, %i.r
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !81
  %.neg132 = sdiv i32 %i.bo, -2
  %i.bp = add i32 %.neg132, %.1125.ph146
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !26
  %i.bs = sdiv i32 %i.br, 2
  %i.bt = add nsw i32 %i.bs, %i.bl
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !44
  br label %bb.h

.thread141:                                       ; preds = %bb.c, %bb.f, %bb.g
  %.1145 = phi i32 [ %i.ap, %bb.f ], [ %i.az, %bb.g ], [ 0, %bb.c ]
  %.1125144 = phi i32 [ %i.aw, %bb.f ], [ %i.bg, %bb.g ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.1125144, ptr %i.bu, align 4, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !77
  %i.bx = sub nsw i32 %i.bw, %i.u
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.1125144, ptr %i.by, align 4, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !81
  %.neg = sdiv i32 %i.ca, -2
  %i.cb = add i32 %.neg, %.1145
  store i32 %i.cb, ptr %4, align 4, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !26
  %i.ce = sdiv i32 %i.cd, 2
  %i.cf = add nsw i32 %i.ce, %i.bx
  store i32 %i.cf, ptr %5, align 4, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %.thread141, %.thread.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ch = call i64 @lv_point_to_precise(ptr noundef nonnull %4) #7
  store i64 %i.ch, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cj = call i64 @lv_point_to_precise(ptr noundef nonnull %5) #7
  store i64 %i.cj, ptr %i.ci, align 8
  call void @lv_draw_line(ptr noundef %i.c, ptr noundef nonnull %3) #7
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cl = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.ck) #7 ; 2 uses
  %.not133157 = icmp eq ptr %i.cl, null
  br i1 %.not133157, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 76
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph160, %bb.l
  %.0126158 = phi ptr [ %i.cl, %.lr.ph160 ], [ %i.do, %bb.l ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %6) #7
  store ptr %i.c, ptr %i.cm, align 8, !tbaa !76
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %6) #7
  %i.cs = getelementptr inbounds nuw i8, ptr %.0126158, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !72
  %i.cu = sdiv i32 %i.ct, 2                       ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0126158, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !73
  %i.cx = sdiv i32 %i.cw, 2                       ; 2 uses
  %i.cy = load i32, ptr %i.h, align 8, !tbaa !8
  switch i32 %i.cy, label %bb.k [
    i32 2, label %bb.j
    i32 4, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.cz = load i32, ptr %4, align 4, !tbaa !42    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0126158, i64 52
  %i.db = load i32, ptr %i.da, align 4, !tbaa !82
  %i.dc = add nsw i32 %i.db, %i.cu
  %i.dd = getelementptr inbounds nuw i8, ptr %.0126158, i64 60
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !83
  %i.df = sub nsw i32 %i.de, %i.cx
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0126158, i64 48
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !84
  %i.di = sub nsw i32 %i.dh, %i.cu
  %i.dj = load i32, ptr %i.cn, align 4, !tbaa !44 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0126158, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !85
  %i.dm = add nsw i32 %i.dl, %i.cx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.5.0 = phi i32 [ %i.df, %bb.j ], [ %i.dj, %bb.k ]
  %.sroa.0.0 = phi i32 [ %i.cz, %bb.j ], [ %i.dm, %bb.k ]
  %.sroa.012.0 = phi i32 [ %i.cz, %bb.j ], [ %i.di, %bb.k ]
  %.sroa.513.0 = phi i32 [ %i.dc, %bb.j ], [ %i.dj, %bb.k ]
  %i.dn = load ptr, ptr %.0126158, align 8, !tbaa !54
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %i.dn, i32 noundef 0)
  store i32 %.sroa.012.0, ptr %i.co, align 8, !tbaa !86
  store i32 %.sroa.513.0, ptr %i.cp, align 4, !tbaa !87
  store i32 %.sroa.0.0, ptr %i.cq, align 8, !tbaa !88
  store i32 %.sroa.5.0, ptr %i.cr, align 4, !tbaa !89
  call void @lv_draw_line(ptr noundef %i.c, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.do = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.ck, ptr noundef nonnull %.0126158) #7 ; 2 uses
  %.not133 = icmp eq ptr %i.do, null
  br i1 %.not133, label %._crit_edge161, label %bb.i, !llvm.loop !90

._crit_edge161:                                   ; preds = %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.af

bb.m:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %7) #7
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %i.dp, align 8, !tbaa !91
  call void @lv_obj_init_draw_arc_dsc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @scale_get_center(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %i.a)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !24 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !39
  %i.dy = add i32 %i.dx, %i.dv
  %i.dz = call i32 @lv_map(i32 noundef %i.dr, i32 noundef %i.dr, i32 noundef %i.dt, i32 noundef %i.dv, i32 noundef %i.dy) #7
  %i.ea = load i32, ptr %i.ds, align 8, !tbaa !25 ; 2 uses
  %i.eb = load i32, ptr %i.dq, align 4, !tbaa !24
  %i.ec = load i32, ptr %i.du, align 8, !tbaa !40 ; 2 uses
  %i.ed = load i32, ptr %i.dw, align 4, !tbaa !39
  %i.ee = add i32 %i.ed, %i.ec
  %i.ef = call i32 @lv_map(i32 noundef %i.ea, i32 noundef %i.eb, i32 noundef %i.ea, i32 noundef %i.ec, i32 noundef %i.ee) #7
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.eh = load i64, ptr %8, align 8
  store i64 %i.eh, ptr %i.eg, align 8
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !27
  %i.ej = trunc i32 %i.ei to i16
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i16 %i.ej, ptr %i.ek, align 8, !tbaa !93
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %i.dz, ptr %i.el, align 8, !tbaa !94
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 %i.ef, ptr %i.em, align 4, !tbaa !95
  call void @lv_draw_arc(ptr noundef %i.c, ptr noundef nonnull %7) #7
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.eo = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.en) #7 ; 2 uses
  %.not155 = icmp eq ptr %i.eo, null
  br i1 %.not155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 98 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 99 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 76
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %scale_set_arc_properties.exit
  %.0123156 = phi ptr [ %i.eo, %.lr.ph ], [ %i.hr, %scale_set_arc_properties.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %9) #7
  store ptr %i.c, ptr %i.ep, align 8, !tbaa !91
  call void @lv_obj_init_draw_arc_dsc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call fastcc void @scale_get_center(ptr noundef nonnull %0, ptr noundef %10, ptr noundef %i.b)
  %i.ez = getelementptr inbounds nuw i8, ptr %.0123156, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !53
  %i.fb = load i32, ptr %i.dq, align 4, !tbaa !24
  %i.fc = load i32, ptr %i.ds, align 8, !tbaa !25
  %i.fd = load i32, ptr %i.du, align 8, !tbaa !40 ; 2 uses
  %i.fe = load i32, ptr %i.dw, align 4, !tbaa !39
  %i.ff = add i32 %i.fe, %i.fd
  %i.fg = call i32 @lv_map(i32 noundef %i.fa, i32 noundef %i.fb, i32 noundef %i.fc, i32 noundef %i.fd, i32 noundef %i.ff) #7
  %i.fh = getelementptr inbounds nuw i8, ptr %.0123156, i64 28
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !52
  %i.fj = load i32, ptr %i.dq, align 4, !tbaa !24
  %i.fk = load i32, ptr %i.ds, align 8, !tbaa !25
  %i.fl = load i32, ptr %i.du, align 8, !tbaa !40 ; 2 uses
  %i.fm = load i32, ptr %i.dw, align 4, !tbaa !39
  %i.fn = add i32 %i.fm, %i.fl
  %i.fo = call i32 @lv_map(i32 noundef %i.fi, i32 noundef %i.fj, i32 noundef %i.fk, i32 noundef %i.fl, i32 noundef %i.fn) #7
  %i.fp = load ptr, ptr %.0123156, align 8, !tbaa !54 ; 6 uses
  %.not.i = icmp eq ptr %i.fp, null
  br i1 %.not.i, label %bb.ae, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.fq = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fp, i8 noundef zeroext 76, ptr noundef nonnull %2) #7
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fs = load i32, ptr %2, align 8, !tbaa !61
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ft = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 76) #7
  %i.fu = ptrtoint ptr %i.ft to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.fu to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.extract.trunc.i.sink.i = phi i32 [ %i.fs, %bb.p ], [ %.sroa.0.0.extract.trunc.i.i, %bb.q ]
  store i32 %.sroa.0.0.extract.trunc.i.sink.i, ptr %i.eq, align 4, !tbaa !96
  %i.fv = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fp, i8 noundef zeroext 91, ptr noundef nonnull %2) #7
  %i.fw = icmp eq i32 %i.fv, 1
  br i1 %i.fw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.er, ptr noundef nonnull align 8 dereferenceable(3) %2, i64 3, i1 false), !tbaa.struct !97
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fx = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 91) #7
  %i.fy = ptrtoint ptr %i.fx to i64
  %.sroa.0.0.extract.trunc.i36.i = trunc i64 %i.fy to i24
  store i24 %.sroa.0.0.extract.trunc.i36.i, ptr %i.er, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fz = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fp, i8 noundef zeroext 83, ptr noundef nonnull %2) #7
  %i.ga = icmp eq i32 %i.fz, 1
  br i1 %i.ga, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gb = load i32, ptr %2, align 8, !tbaa !61
  %i.gc = trunc i32 %i.gb to i8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gd = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 83) #7
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = trunc i64 %i.ge to i8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ %i.gc, %bb.v ], [ %i.gf, %bb.w ]
  store i8 %.sink.i, ptr %i.es, align 2, !tbaa !98
  %i.gg = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fp, i8 noundef zeroext 111, ptr noundef nonnull %2) #7
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gi = load i32, ptr %2, align 8, !tbaa !61
  %i.gj = trunc i32 %i.gi to i8
  %i.gk = load i8, ptr %i.et, align 1
  %i.gl = and i8 %i.gj, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.gm = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 111) #7
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = and i64 %i.gn, 4294967295
  %i.gp = icmp ne i64 %i.go, 0
  %i.gq = zext i1 %i.gp to i8
  %i.gr = load i8, ptr %i.et, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink167 = phi i8 [ %i.gr, %bb.z ], [ %i.gk, %bb.y ]
  %.sink166 = phi i8 [ %i.gq, %bb.z ], [ %i.gl, %bb.y ]
  %i.gs = and i8 %.sink167, -2
  %i.gt = or disjoint i8 %i.gs, %.sink166
  store i8 %i.gt, ptr %i.et, align 1
  %i.gu = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fp, i8 noundef zeroext 96, ptr noundef nonnull %2) #7
  %i.gv = icmp eq i32 %i.gu, 1
  br i1 %i.gv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gw = load ptr, ptr %2, align 8, !tbaa !61
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gx = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 96) #7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink39.i = phi ptr [ %i.gw, %bb.ab ], [ %i.gx, %bb.ac ]
  store ptr %.sink39.i, ptr %i.eu, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %scale_set_arc_properties.exit

bb.ae:                                            ; preds = %bb.n
  %i.gy = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 91) #7
  %i.gz = ptrtoint ptr %i.gy to i64
  %.sroa.0.0.extract.trunc.i37.i = trunc i64 %i.gz to i24
  store i24 %.sroa.0.0.extract.trunc.i37.i, ptr %i.er, align 8
  %i.ha = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 83) #7
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = trunc i64 %i.hb to i8
  store i8 %i.hc, ptr %i.es, align 2, !tbaa !98
  %i.hd = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 76) #7
  %i.he = ptrtoint ptr %i.hd to i64
  %.sroa.0.0.extract.trunc.i38.i = trunc i64 %i.he to i32
  store i32 %.sroa.0.0.extract.trunc.i38.i, ptr %i.eq, align 4, !tbaa !96
  %i.hf = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 111) #7
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = and i64 %i.hg, 4294967295
  %i.hi = icmp ne i64 %i.hh, 0
  %i.hj = zext i1 %i.hi to i8
  %i.hk = load i8, ptr %i.et, align 1
  %i.hl = and i8 %i.hk, -2
  %i.hm = or disjoint i8 %i.hl, %i.hj
  store i8 %i.hm, ptr %i.et, align 1
  %i.hn = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 96) #7
  store ptr %i.hn, ptr %i.eu, align 8, !tbaa !99
  br label %scale_set_arc_properties.exit

scale_set_arc_properties.exit:                    ; preds = %bb.ad, %bb.ae
  %i.ho = load i64, ptr %10, align 8
  store i64 %i.ho, ptr %i.ev, align 8
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !27
  %i.hq = trunc i32 %i.hp to i16
  store i16 %i.hq, ptr %i.ew, align 8, !tbaa !93
  store i32 %i.fg, ptr %i.ex, align 8, !tbaa !94
  store i32 %i.fo, ptr %i.ey, align 4, !tbaa !95
  call void @lv_draw_arc(ptr noundef %i.c, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  %i.hr = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.en, ptr noundef nonnull %.0123156) #7 ; 2 uses
  %.not = icmp eq ptr %i.hr, null
  br i1 %.not, label %._crit_edge, label %bb.n, !llvm.loop !100

._crit_edge:                                      ; preds = %scale_set_arc_properties.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge161, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_draw_indicator(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %2 = alloca %struct.lv_area_t, align 4          ; 10 uses
  %3 = alloca %struct.lv_point_t, align 8         ; 4 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 9 uses
  %5 = alloca %struct.lv_point_t, align 4         ; 5 uses
  %6 = alloca %struct.lv_point_t, align 4         ; 6 uses
  %7 = alloca %struct._lv_draw_image_dsc_t, align 8 ; 7 uses
  %8 = alloca %union.lv_style_value_t, align 8    ; 10 uses
  %9 = alloca %struct.lv_draw_label_dsc_t, align 8 ; 18 uses
  %10 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 13 uses
  %11 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 12 uses
  %12 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 5 uses
  %13 = alloca %struct.lv_point_t, align 4        ; 4 uses
  %14 = alloca %struct.lv_point_t, align 8        ; 6 uses
  %i.b = tail call ptr @lv_event_get_layer(ptr noundef %1) #7 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.d = load i64, ptr %i.c, align 4
  %i.e = and i64 %i.d, 32766
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %9) #7
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !101
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %10) #7
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.b, ptr %i.h, align 8, !tbaa !76
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %10) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !8
  switch i32 %i.j, label %bb.d [
    i32 16, label %bb.c
    i32 8, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 109 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -5
  store i8 %i.m, ptr %i.k, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %11) #7
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.b, ptr %i.n, align 8, !tbaa !76
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %12) #7
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.b, ptr %i.o, align 8, !tbaa !76
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %12) #7
  %i.p = load i64, ptr %i.c, align 4
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 32767                      ; 3 uses
  %.not86 = icmp eq i32 %i.r, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.d
  %i.s = add nsw i32 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 140 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 142 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 108
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph85, %bb.ay
  %.083 = phi i32 [ 0, %.lr.ph85 ], [ %i.gj, %bb.ay ] ; 8 uses
  %.06682 = phi i32 [ 0, %.lr.ph85 ], [ %i.bd, %bb.ay ] ; 2 uses
  %.val = load i64, ptr %i.c, align 4
  %i.aw = trunc i64 %.val to i32
  %i.ax = lshr i32 %i.aw, 15
  %i.ay = and i32 %i.ax, 32767                    ; 2 uses
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %scale_is_major_tick.exit.thread, label %scale_is_major_tick.exit

scale_is_major_tick.exit:                         ; preds = %bb.e
  %i.az = urem i32 %.083, %i.ay
  %.fr = freeze i32 %i.az
  %i.ba = icmp eq i32 %.fr, 0                     ; 2 uses
  %i.bb = zext i1 %i.ba to i32
  %spec.select = add i32 %.06682, %i.bb
  br label %scale_is_major_tick.exit.thread

scale_is_major_tick.exit.thread:                  ; preds = %scale_is_major_tick.exit, %bb.e
  %i.bc = phi i1 [ false, %bb.e ], [ %i.ba, %scale_is_major_tick.exit ] ; 4 uses
  %i.bd = phi i32 [ %.06682, %bb.e ], [ %spec.select, %scale_is_major_tick.exit ] ; 2 uses
  %i.be = load i32, ptr %i.t, align 4, !tbaa !24
  %i.bf = load i32, ptr %i.u, align 8, !tbaa !25
  %i.bg = call i32 @lv_map(i32 noundef %.083, i32 noundef 0, i32 noundef %i.s, i32 noundef %i.be, i32 noundef %i.bf) #7 ; 6 uses
  store i32 %.083, ptr %i.v, align 4, !tbaa !105
  store i32 %i.bg, ptr %i.w, align 8, !tbaa !106
  store ptr %i.b, ptr %i.g, align 8, !tbaa !101
  %i.bh = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.x) #7 ; 2 uses
  %.not80 = icmp eq ptr %i.bh, null
  br i1 %.not80, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %scale_is_major_tick.exit.thread, %bb.x
  %.06781 = phi ptr [ %i.ct, %bb.x ], [ %i.bh, %scale_is_major_tick.exit.thread ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.06781, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !53
  %.not71 = icmp sgt i32 %i.bj, %i.bg
  br i1 %.not71, label %bb.x, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.06781, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !52
  %.not72 = icmp slt i32 %i.bl, %i.bg
  br i1 %.not72, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.bc, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.06781, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !55 ; 5 uses
  %.not.i73 = icmp eq ptr %i.bn, null
  br i1 %.not.i73, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.bo = call i32 @lv_style_get_prop(ptr noundef nonnull %i.bn, i8 noundef zeroext 92, ptr noundef nonnull %8) #7
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.y, ptr noundef nonnull align 8 dereferenceable(3) %8, i64 3, i1 false), !tbaa.struct !97
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bq = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 92) #7
  %i.br = ptrtoint ptr %i.bq to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.br to i24
  store i24 %.sroa.0.0.extract.trunc.i.i, ptr %i.y, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bs = call i32 @lv_style_get_prop(ptr noundef nonnull %i.bn, i8 noundef zeroext 84, ptr noundef nonnull %8) #7
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %8, align 8, !tbaa !61
  %i.bv = trunc i32 %i.bu to i8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bw = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 84) #7
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = trunc i64 %i.bx to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i = phi i8 [ %i.bv, %bb.m ], [ %i.by, %bb.n ]
  store i8 %.sink.i, ptr %i.z, align 4, !tbaa !107
  %i.bz = call i32 @lv_style_get_prop(ptr noundef nonnull %i.bn, i8 noundef zeroext 102, ptr noundef nonnull %8) #7
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load i32, ptr %8, align 8, !tbaa !61
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cc = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 102) #7
  %i.cd = ptrtoint ptr %i.cc to i64
  %.sroa.0.0.extract.trunc.i29.i = trunc i64 %i.cd to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.extract.trunc.i29.sink.i = phi i32 [ %i.cb, %bb.p ], [ %.sroa.0.0.extract.trunc.i29.i, %bb.q ]
  store i32 %.sroa.0.0.extract.trunc.i29.sink.i, ptr %i.aa, align 8, !tbaa !108
  %i.ce = call i32 @lv_style_get_prop(ptr noundef nonnull %i.bn, i8 noundef zeroext 77, ptr noundef nonnull %8) #7
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %8, align 8, !tbaa !61
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ch = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 77) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink32.i = phi ptr [ %i.cg, %bb.s ], [ %i.ch, %bb.t ]
  store ptr %.sink32.i, ptr %i.ab, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %scale_set_indicator_label_properties.exit

bb.v:                                             ; preds = %bb.h
  %i.ci = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 92) #7
  %i.cj = ptrtoint ptr %i.ci to i64
  %.sroa.0.0.extract.trunc.i30.i = trunc i64 %i.cj to i24
  store i24 %.sroa.0.0.extract.trunc.i30.i, ptr %i.y, align 8
  %i.ck = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 84) #7
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = trunc i64 %i.cl to i8
  store i8 %i.cm, ptr %i.z, align 4, !tbaa !107
  %i.cn = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 102) #7
  %i.co = ptrtoint ptr %i.cn to i64
  %.sroa.0.0.extract.trunc.i31.i = trunc i64 %i.co to i32
  store i32 %.sroa.0.0.extract.trunc.i31.i, ptr %i.aa, align 8, !tbaa !108
  %i.cp = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 77) #7
  store ptr %i.cp, ptr %i.ab, align 8, !tbaa !109
  br label %scale_set_indicator_label_properties.exit

scale_set_indicator_label_properties.exit:        ; preds = %bb.u, %bb.v
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !55
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef %10, ptr noundef %i.cq, i32 noundef 131072)
  br label %.loopexit

bb.w:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %.06781, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !56
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %i.cs, i32 noundef 327680)
  br label %.loopexit

bb.x:                                             ; preds = %bb.f, %.lr.ph
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %9) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %10) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %11) #7
  %i.ct = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.x, ptr noundef nonnull %.06781) #7 ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !110

end_hunk_0
begin_hunk_1_@scale_draw_indicator:bb.a
  %i.gj = add nuw nsw i32 %.083, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gj, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.ay, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @lv_event_set_ext_draw_size(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_has_class(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_map(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_ll_get_tail(ptr noundef) local_unnamed_addr #2

declare ptr @lv_ll_get_prev(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_line_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_line_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_set_line_properties(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((92, 95), (96, 100), (108, 109)) %1, ptr noundef %2, i32 noundef range(i32 0, 327681) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %union.lv_style_value_t, align 8    ; 8 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = call i32 @lv_style_get_prop(ptr noundef nonnull %2, i8 noundef zeroext 75, ptr noundef nonnull %4) #7
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %4, align 8, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 75) #7
  %i.e = ptrtoint ptr %i.d to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.extract.trunc.i.sink = phi i32 [ %i.c, %bb.c ], [ %.sroa.0.0.extract.trunc.i, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.sroa.0.0.extract.trunc.i.sink, ptr %i.f, align 8, !tbaa !66
  %i.g = call i32 @lv_style_get_prop(ptr noundef nonnull %2, i8 noundef zeroext 90, ptr noundef nonnull %4) #7
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.i, ptr noundef nonnull align 8 dereferenceable(3) %4, i64 3, i1 false), !tbaa.struct !97
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 90) #7
  %i.k = ptrtoint ptr %i.j to i64
  %.sroa.0.0.extract.trunc.i28 = trunc i64 %i.k to i24
  store i24 %.sroa.0.0.extract.trunc.i28, ptr %i.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = call i32 @lv_style_get_prop(ptr noundef nonnull %2, i8 noundef zeroext 82, ptr noundef nonnull %4) #7
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr %4, align 8, !tbaa !61
  %i.o = trunc i32 %i.n to i8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 82) #7
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = trunc i64 %i.q to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i8 [ %i.o, %bb.i ], [ %i.r, %bb.j ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i8 %.sink, ptr %i.s, align 4, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.u = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 90) #7
  %i.v = ptrtoint ptr %i.u to i64
  %.sroa.0.0.extract.trunc.i29 = trunc i64 %i.v to i24
  store i24 %.sroa.0.0.extract.trunc.i29, ptr %i.t, align 4
  %i.w = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 82) #7
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i8 %i.y, ptr %i.z, align 4, !tbaa !123
  %i.aa = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 75) #7
  %i.ab = ptrtoint ptr %i.aa to i64
  %.sroa.0.0.extract.trunc.i30 = trunc i64 %i.ab to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.sroa.0.0.extract.trunc.i30, ptr %i.ac, align 8, !tbaa !66
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_get_tick_points(ptr noundef %0, i32 noundef range(i32 -2147483648, 32767) %1, i1 noundef zeroext %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 9 uses
  %6 = alloca %struct.lv_area_t, align 4          ; 9 uses
  %7 = alloca %struct.lv_point_t, align 4         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %5) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #7
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 3) #7
  %i.b = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.b to i32 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 327680, i8 noundef zeroext 3) #7
  %i.d = ptrtoint ptr %i.c to i64
  %.sroa.0.0.extract.trunc.i160 = trunc i64 %i.d to i32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 327680, %bb.c ], [ 131072, %bb.b ]
  %i.e = phi i32 [ %.sroa.0.0.extract.trunc.i160, %bb.c ], [ %.sroa.0.0.extract.trunc.i, %bb.b ] ; 4 uses
  %.0144 = phi i32 [ 0, %bb.c ], [ %.sroa.0.0.extract.trunc.i, %bb.b ] ; 3 uses
  %.0143 = phi i32 [ %.sroa.0.0.extract.trunc.i160, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.f = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef %.sink, i8 noundef zeroext 14) #7
  %.0146.in = ptrtoint ptr %i.f to i64
  %.0146 = trunc i64 %.0146.in to i32             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8
  switch i32 %i.h, label %bb.w [
    i32 2, label %bb.e
    i32 4, label %bb.e
    i32 1, label %bb.e
    i32 0, label %bb.e
    i32 16, label %bb.s
    i32 8, label %bb.s
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.i = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #7
  %i.j = ptrtoint ptr %i.i to i64
  %.sroa.0.0.extract.trunc.i162 = trunc i64 %i.j to i32 ; 4 uses
  %i.k = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #7
  %i.l = ptrtoint ptr %i.k to i64
  %.sroa.0.0.extract.trunc.i163 = trunc i64 %i.l to i32
  %i.m = add nsw i32 %.sroa.0.0.extract.trunc.i163, %.sroa.0.0.extract.trunc.i162 ; 4 uses
  %i.n = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 25) #7
  %i.o = ptrtoint ptr %i.n to i64
  %.sroa.0.0.extract.trunc.i164 = trunc i64 %i.o to i32
  %i.p = add nsw i32 %.sroa.0.0.extract.trunc.i164, %.sroa.0.0.extract.trunc.i162 ; 3 uses
  %i.q = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #7
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i165 = trunc i64 %i.r to i32
  %i.s = add nsw i32 %.sroa.0.0.extract.trunc.i165, %.sroa.0.0.extract.trunc.i162 ; 3 uses
  %i.t = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #7
  %i.u = ptrtoint ptr %i.t to i64
  %.sroa.0.0.extract.trunc.i166 = trunc i64 %i.u to i32
  %i.v = add nsw i32 %.sroa.0.0.extract.trunc.i166, %.sroa.0.0.extract.trunc.i162 ; 4 uses
  %i.w = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 327680, i8 noundef zeroext 27) #7
  %i.x = ptrtoint ptr %i.w to i64
  %.sroa.0.0.extract.trunc.i167 = trunc i64 %i.x to i32 ; 2 uses
  %i.y = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 327680, i8 noundef zeroext 26) #7
  %i.z = ptrtoint ptr %i.y to i64
  %.sroa.0.0.extract.trunc.i168 = trunc i64 %i.z to i32 ; 3 uses
  %i.aa = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 327680, i8 noundef zeroext 24) #7
  %i.ab = ptrtoint ptr %i.aa to i64
  %.sroa.0.0.extract.trunc.i169 = trunc i64 %i.ab to i32 ; 3 uses
  %i.ac = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 327680, i8 noundef zeroext 25) #7
  %i.ad = ptrtoint ptr %i.ac to i64
  %.sroa.0.0.extract.trunc.i170 = trunc i64 %i.ad to i32 ; 2 uses
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !8   ; 3 uses
  switch i32 %i.ae, label %bb.f [
    i32 2, label %.thread.thread186
    i32 4, label %.thread175
    i32 1, label %.thread.thread
  ]

.thread.thread186:                                ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !66
  %i.aj = sdiv i32 %i.ai, 2
  %i.ak = sub i32 %i.ag, %i.s
  %i.al = add i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !79
  %i.ao = add nsw i32 %i.m, %.sroa.0.0.extract.trunc.i169
  %i.ap = add nsw i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ar = load i64, ptr %i.aq, align 4
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 32767
  %i.au = add nsw i32 %i.at, -1
  br label %bb.j

.thread175:                                       ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !66
  %i.az = sdiv i32 %i.ay, 2
  %i.ba = add i32 %i.aw, %i.v
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !79
  %i.be = add nsw i32 %i.m, %.sroa.0.0.extract.trunc.i169
  %i.bf = add nsw i32 %i.be, %i.bd
  br label %bb.g

.thread.thread:                                   ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !78
  %i.bi = add nsw i32 %i.s, %.sroa.0.0.extract.trunc.i167
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !79
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !66
  %i.bo = sdiv i32 %i.bn, 2
  %i.bp = add i32 %i.bl, %i.m
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bs = load i64, ptr %i.br, align 4
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 32767
  %i.bv = add nsw i32 %i.bu, -1
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !78
  %i.by = add nsw i32 %i.v, %.sroa.0.0.extract.trunc.i168
  %i.bz = add nsw i32 %i.by, %i.bx                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !66
  %i.ce = sdiv i32 %i.cd, 2
  %i.cf = sub i32 %i.cb, %i.p
  %i.cg = add i32 %i.cf, %i.ce                    ; 2 uses
  %cond = icmp eq i32 %i.ae, 0
  br i1 %cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %.thread175
  %.0148179 = phi i32 [ %i.bb, %.thread175 ], [ %i.bz, %bb.f ] ; 2 uses
  %.0149178 = phi i32 [ %i.bf, %.thread175 ], [ %i.cg, %bb.f ] ; 2 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ch = sub nsw i32 0, %.0144
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.ci = sub nsw i32 0, %.0143
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.h, %bb.i
  %.0148174 = phi i32 [ %.0148179, %bb.h ], [ %.0148179, %bb.i ], [ %i.bz, %bb.f ] ; 3 uses
  %.0149173 = phi i32 [ %.0149178, %bb.h ], [ %.0149178, %bb.i ], [ %i.cg, %bb.f ] ; 3 uses
  %.1145 = phi i32 [ %i.ch, %bb.h ], [ %.0144, %bb.i ], [ %.0144, %bb.f ]
  %.1 = phi i32 [ %.0143, %bb.h ], [ %i.ci, %bb.i ], [ %.0143, %bb.f ]
  %i.cj = select i1 %2, i32 %.1145, i32 %.1       ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cl = load i64, ptr %i.ck, align 4
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 32767
  %i.co = add nsw i32 %i.cn, -1                   ; 3 uses
  switch i32 %i.ae, label %bb.n [
    i32 2, label %bb.j
    i32 4, label %bb.j
  ]

bb.j:                                             ; preds = %.thread.thread186, %.thread, %.thread
  %i.cp = phi i32 [ %i.au, %.thread.thread186 ], [ %i.co, %.thread ], [ %i.co, %.thread ] ; 2 uses
  %i.cq = phi i32 [ %i.e, %.thread.thread186 ], [ %i.cj, %.thread ], [ %i.cj, %.thread ]
  %.0149173192 = phi i32 [ %i.ap, %.thread.thread186 ], [ %.0149173, %.thread ], [ %.0149173, %.thread ]
  %.0148174191 = phi i32 [ %i.al, %.thread.thread186 ], [ %.0148174, %.thread ], [ %.0148174, %.thread ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !80
  %i.ct = add i32 %i.p, %.sroa.0.0.extract.trunc.i170
  %i.cu = sub i32 %i.cs, %i.ct                    ; 2 uses
  %i.cv = icmp eq i32 %i.cp, %1
  br i1 %i.cv, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not158 = icmp eq i32 %1, 0
  br i1 %.not158, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = call i32 @lv_obj_get_height(ptr noundef nonnull %0) #7
  %i.cx = add i32 %i.p, %i.m
  %i.cy = add i32 %i.cx, %.sroa.0.0.extract.trunc.i169
  %i.cz = add i32 %i.cy, %.sroa.0.0.extract.trunc.i170
  %i.da = sub i32 %i.cw, %i.cz
  %i.db = mul nsw i32 %i.da, %1
  %i.dc = sdiv i32 %i.db, %i.cp
  %i.dd = sub nsw i32 %i.cu, %i.dc
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.0150 = phi i32 [ %i.cu, %bb.k ], [ %i.dd, %bb.l ], [ %.0149173192, %bb.j ] ; 2 uses
  %i.de = add nsw i32 %.0148174191, -1            ; 2 uses
  store i32 %i.de, ptr %3, align 4, !tbaa !42
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0150, ptr %i.df, align 4, !tbaa !44
  %i.dg = sub nsw i32 %i.de, %i.cq
  store i32 %i.dg, ptr %4, align 4, !tbaa !42
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.0150, ptr %i.dh, align 4, !tbaa !44
  br label %bb.w

bb.n:                                             ; preds = %.thread.thread, %.thread
  %i.di = phi i32 [ %i.bv, %.thread.thread ], [ %i.co, %.thread ] ; 2 uses
  %i.dj = phi i32 [ %i.e, %.thread.thread ], [ %i.cj, %.thread ]
  %.0149173185 = phi i32 [ %i.bq, %.thread.thread ], [ %.0149173, %.thread ] ; 2 uses
  %.0148174184 = phi i32 [ %i.bj, %.thread.thread ], [ %.0148174, %.thread ] ; 2 uses
  %i.dk = icmp eq i32 %i.di, %1
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !77
  %i.dn = add i32 %i.v, %.sroa.0.0.extract.trunc.i168
  %i.do = sub i32 %i.dm, %i.dn
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = call i32 @lv_obj_get_width(ptr noundef nonnull %0) #7
  %i.dq = add i32 %i.v, %i.s
  %i.dr = add i32 %i.dq, %.sroa.0.0.extract.trunc.i167
  %i.ds = add i32 %i.dr, %.sroa.0.0.extract.trunc.i168
  %i.dt = sub i32 %i.dp, %i.ds
  %i.du = mul nsw i32 %i.dt, %1
  %i.dv = sdiv i32 %i.du, %i.di
  %i.dw = add nsw i32 %i.dv, %.0148174184
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0147 = phi i32 [ %i.do, %bb.o ], [ %i.dw, %bb.q ], [ %.0148174184, %bb.p ] ; 2 uses
  store i32 %.0147, ptr %3, align 4, !tbaa !42
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0149173185, ptr %i.dx, align 4, !tbaa !44
  store i32 %.0147, ptr %4, align 4, !tbaa !42
  %i.dy = add nsw i32 %.0149173185, %i.dj
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !44
  br label %bb.w

bb.s:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @lv_obj_get_content_coords(ptr noundef nonnull %0, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.ea = call i32 @lv_area_get_width(ptr noundef nonnull %6) #7
  %i.eb = sdiv i32 %i.ea, 2
  %i.ec = call i32 @lv_area_get_height(ptr noundef nonnull %6) #7
  %i.ed = sdiv i32 %i.ec, 2
  %i.ee = icmp slt i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ef = call i32 @lv_area_get_width(ptr noundef nonnull %6) #7
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.eg = call i32 @lv_area_get_height(ptr noundef nonnull %6) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.in = phi i32 [ %i.ef, %bb.t ], [ %i.eg, %bb.u ]
  %i.eh = sdiv i32 %.in, 2                        ; 3 uses
  %i.ei = load i32, ptr %6, align 4, !tbaa !112
  %i.ej = add nsw i32 %i.ei, %i.eh                ; 2 uses
  store i32 %i.ej, ptr %7, align 4, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !113
  %i.em = add nsw i32 %i.el, %i.eh                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 %i.em, ptr %i.en, align 4, !tbaa !44
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !39
  %i.eq = mul i32 %1, 10
  %i.er = mul i32 %i.eq, %i.ep
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.et = load i64, ptr %i.es, align 4
  %i.eu = trunc i64 %i.et to i32
  %i.ev = and i32 %i.eu, 32767
  %i.ew = add nsw i32 %i.ev, -1
  %i.ex = udiv i32 %i.er, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !40
  %i.fa = mul nsw i32 %i.ez, 10
  %i.fb = add nsw i32 %i.fa, %i.ex                ; 2 uses
  %i.fc = load i32, ptr %i.g, align 8, !tbaa !8
  %i.fd = icmp eq i32 %i.fc, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !66
  %i.fg = sub nsw i32 %i.eh, %i.ff                ; 2 uses
  %i.fh = sub i32 0, %i.e
  %.0.p = select i1 %i.fd, i32 %i.fh, i32 %i.e
  %.0 = add i32 %i.fg, %.0.p
  %i.fi = add i32 %i.ej, %.0146
  %i.fj = add i32 %i.fi, %i.fg
  store i32 %i.fj, ptr %3, align 4, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.em, ptr %i.fk, align 4, !tbaa !44
  call void @lv_point_transform(ptr noundef nonnull %3, i32 noundef %i.fb, i32 noundef 256, i32 noundef 256, ptr noundef nonnull %7, i1 noundef zeroext false) #7
  %i.fl = load i32, ptr %7, align 4, !tbaa !42
  %i.fm = add i32 %.0, %.0146
  %i.fn = add i32 %i.fm, %i.fl
  store i32 %i.fn, ptr %4, align 4, !tbaa !42
  %i.fo = load i32, ptr %i.en, align 4, !tbaa !44
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !44
  call void @lv_point_transform(ptr noundef nonnull %4, i32 noundef %i.fb, i32 noundef 256, i32 noundef 256, ptr noundef nonnull %7, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.m, %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void
}

declare i32 @lv_style_get_prop(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @lv_obj_get_height(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_width(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_get_content_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare void @lv_point_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @lv_event_get_layer(ptr noundef) local_unnamed_addr #2

declare i64 @lv_point_to_precise(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_line(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_arc_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_arc_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_get_center(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 26) #7
  %i.b = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.b to i32 ; 2 uses
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 27) #7
  %i.d = ptrtoint ptr %i.c to i64
  %.sroa.0.0.extract.trunc.i26 = trunc i64 %i.d to i32
  %i.e = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 24) #7
  %i.f = ptrtoint ptr %i.e to i64
  %.sroa.0.0.extract.trunc.i27 = trunc i64 %i.f to i32 ; 2 uses
  %i.g = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 25) #7
  %i.h = ptrtoint ptr %i.g to i64
  %.sroa.0.0.extract.trunc.i28 = trunc i64 %i.h to i32
  %i.i = tail call i32 @lv_obj_get_width(ptr noundef %0) #7
  %i.j = add i32 %.sroa.0.0.extract.trunc.i26, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.k = sub i32 %i.i, %i.j
  %i.l = tail call i32 @lv_obj_get_height(ptr noundef %0) #7
  %i.m = add i32 %.sroa.0.0.extract.trunc.i28, %.sroa.0.0.extract.trunc.i27 ; 2 uses
  %i.n = sub i32 %i.l, %i.m
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @lv_obj_get_width(ptr noundef %0) #7
  %i.q = sub i32 %i.p, %i.j
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = tail call i32 @lv_obj_get_height(ptr noundef %0) #7
  %i.s = sub i32 %i.r, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi i32 [ %i.q, %bb.b ], [ %i.s, %bb.c ]
  %i.u = sdiv i32 %i.t, 2                         ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !78
  %i.x = add i32 %i.u, %.sroa.0.0.extract.trunc.i
  %i.y = add i32 %i.x, %i.w
  store i32 %i.y, ptr %1, align 4, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %i.ab = add i32 %i.u, %.sroa.0.0.extract.trunc.i27
  %i.ac = add i32 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !44
  store i32 %i.u, ptr %2, align 4, !tbaa !27
  ret void
}

declare void @lv_draw_arc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_label_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @lv_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_get_label_coords(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.lv_text_attributes_t, align 8 ; 6 uses
  %5 = alloca %struct.lv_point_t, align 4         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !27
  %i.c = shufflevector <2 x i32> %i.b, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.c, ptr %4, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 536870911, ptr %i.d, align 8, !tbaa !124
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  call void @lv_text_get_size_attributes(ptr noundef nonnull %5, ptr noundef nonnull %i.g, ptr noundef %i.i, ptr noundef nonnull %4) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i32, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  switch i32 %i.l, label %bb.l [
    i32 1, label %bb.e
    i32 0, label %bb.e
    i32 2, label %bb.h
    i32 4, label %bb.h
    i32 16, label %bb.k
    i32 8, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !42     ; 2 uses
  %.neg55 = sdiv i32 %i.n, -2
  %i.o = add i32 %.neg55, %i.m
  store i32 %i.o, ptr %3, align 4, !tbaa !112
  %i.p = sdiv i32 %i.n, 2
  %i.q = add nsw i32 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %i.r, align 4, !tbaa !124
  %i.s = icmp eq i32 %i.l, 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 25) #7
  %i.x = ptrtoint ptr %i.w to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.x to i32
  %i.y = add nsw i32 %i.u, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.y, ptr %i.z, align 4, !tbaa !113
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !44
  %i.ab = add nsw i32 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !125
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ad = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 24) #7
  %i.ae = ptrtoint ptr %i.ad to i64
  %.sroa.0.0.extract.trunc.i56 = trunc i64 %i.ae to i32
  %i.af = sub nsw i32 %i.u, %.sroa.0.0.extract.trunc.i56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !125
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !44
  %i.ai = sub nsw i32 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !113
  br label %bb.l

bb.h:                                             ; preds = %bb.d, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44 ; 2 uses
  %.neg54 = sdiv i32 %i.an, -2
  %i.ao = add i32 %.neg54, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !113
  %i.aq = sdiv i32 %i.an, 2
  %i.ar = add nsw i32 %i.aq, %i.al
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !125
  %i.at = icmp eq i32 %i.l, 2
  %i.au = load i32, ptr %2, align 4, !tbaa !42    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %5, align 4, !tbaa !42
  %i.ax = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 26) #7
  %i.ay = ptrtoint ptr %i.ax to i64
  %.sroa.0.0.extract.trunc.i57 = trunc i64 %i.ay to i32
  %i.az = add i32 %i.aw, %.sroa.0.0.extract.trunc.i57
  %i.ba = sub i32 %i.au, %i.az
  store i32 %i.ba, ptr %3, align 4, !tbaa !112
  %i.bb = load i32, ptr %2, align 4, !tbaa !42
  %i.bc = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 26) #7
  %i.bd = ptrtoint ptr %i.bc to i64
  %.sroa.0.0.extract.trunc.i58 = trunc i64 %i.bd to i32
  %i.be = sub nsw i32 %i.bb, %.sroa.0.0.extract.trunc.i58
  store i32 %i.be, ptr %i.av, align 4, !tbaa !124
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bf = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 27) #7
  %i.bg = ptrtoint ptr %i.bf to i64
  %.sroa.0.0.extract.trunc.i59 = trunc i64 %i.bg to i32
  %i.bh = add nsw i32 %i.au, %.sroa.0.0.extract.trunc.i59
  store i32 %i.bh, ptr %3, align 4, !tbaa !112
  %i.bi = load i32, ptr %2, align 4, !tbaa !42
  %i.bj = load i32, ptr %5, align 4, !tbaa !42
  %i.bk = add nsw i32 %i.bj, %i.bi
  %i.bl = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 27) #7
  %i.bm = ptrtoint ptr %i.bl to i64
  %.sroa.0.0.extract.trunc.i60 = trunc i64 %i.bm to i32
  %i.bn = add nsw i32 %i.bk, %.sroa.0.0.extract.trunc.i60
  store i32 %i.bn, ptr %i.av, align 4, !tbaa !124
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.d
  %i.bo = load i32, ptr %2, align 4, !tbaa !42
  %i.bp = load i32, ptr %5, align 4, !tbaa !42    ; 2 uses
  %.neg = sdiv i32 %i.bp, -2
  %i.bq = add i32 %.neg, %i.bo                    ; 2 uses
  store i32 %i.bq, ptr %3, align 4, !tbaa !112
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !44 ; 2 uses
  %.neg53 = sdiv i32 %i.bu, -2
  %i.bv = add i32 %.neg53, %i.bs                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !113
  %i.bx = add nsw i32 %i.bq, %i.bp
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !124
  %i.bz = add nsw i32 %i.bv, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !125
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.j, %bb.i, %bb.k, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

declare ptr @lv_draw_layer_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_image_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_layer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_text_get_size_attributes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_array_push_back(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 104}
!9 = !{!"_lv_scale_t", !10, i64 0, !18, i64 72, !20, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 117, !5, i64 119, !5, i64 119, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !22, i64 144}
!10 = !{!"_lv_obj_t", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !12, i64 32, !16, i64 40, !5, i64 56, !17, i64 60, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 64}
!11 = !{!"p1 _ZTS15_lv_obj_class_t", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS9_lv_obj_t", !12, i64 0}
!14 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !12, i64 0}
!15 = !{!"p1 _ZTS15_lv_obj_style_t", !12, i64 0}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!17 = !{!"short", !6, i64 0}
!18 = !{!"", !5, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!"p2 omnipotent char", !21, i64 0}
!21 = !{!"any p2 pointer", !12, i64 0}
!22 = !{!"_lv_array_t", !19, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !23, i64 20}
!23 = !{!"_Bool", !6, i64 0}
!24 = !{!9, !5, i64 108}
!25 = !{!9, !5, i64 112}
!26 = !{!9, !5, i64 140}
!27 = !{!5, !5, i64 0}
!28 = !{!9, !20, i64 96}
!29 = !{!9, !19, i64 80}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!22, !5, i64 8}
!33 = !{!34, !13, i64 0}
!34 = !{!"", !13, i64 0, !5, i64 8, !5, i64 12}
!35 = distinct !{!35, !31}
!36 = !{!34, !5, i64 12}
!37 = !{!34, !5, i64 8}
!38 = distinct !{!38, !31}
!39 = !{!9, !5, i64 124}
!40 = !{!9, !5, i64 128}
!41 = distinct !{!41, !31}
!42 = !{!43, !5, i64 0}
!43 = !{!"", !5, i64 0, !5, i64 4}
!44 = !{!43, !5, i64 4}
!45 = distinct !{!45, !31}
!46 = !{!9, !5, i64 132}
!47 = !{!19, !19, i64 0}
!48 = distinct !{!48, !31}
!49 = !{!50, !5, i64 32}
!50 = !{!"_lv_scale_section_t", !12, i64 0, !12, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !43, i64 48, !43, i64 56, !5, i64 64, !5, i64 64}
!51 = !{!50, !5, i64 36}
!52 = !{!50, !5, i64 28}
!53 = !{!50, !5, i64 24}
!54 = !{!50, !12, i64 0}
!55 = !{!50, !12, i64 8}
!56 = !{!50, !12, i64 16}
!57 = !{!58, !12, i64 24}
!58 = !{!"_lv_observer_t", !59, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 32, !5, i64 32}
!59 = !{!"p1 _ZTS13_lv_subject_t", !12, i64 0}
!60 = !{!58, !12, i64 16}
!61 = !{!6, !6, i64 0}
!62 = distinct !{!62, !31}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31}
!65 = distinct !{!65, !31}
!66 = !{!67, !5, i64 96}
!67 = !{!"", !68, i64 0, !43, i64 64, !43, i64 72, !12, i64 80, !5, i64 88, !70, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !6, i64 109, !6, i64 109, !6, i64 109}
!68 = !{!"", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !69, i64 24, !17, i64 32, !17, i64 34, !70, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !71, i64 48, !12, i64 56}
!69 = !{!"p1 _ZTS11_lv_layer_t", !12, i64 0}
!70 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!71 = !{!"long", !6, i64 0}
!72 = !{!50, !5, i64 40}
!73 = !{!50, !5, i64 44}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = !{!67, !69, i64 24}
!77 = !{!10, !5, i64 48}
!78 = !{!10, !5, i64 40}
!79 = !{!10, !5, i64 44}
!80 = !{!10, !5, i64 52}
!81 = !{!9, !5, i64 136}
!82 = !{!50, !5, i64 52}
!83 = !{!50, !5, i64 60}
!84 = !{!50, !5, i64 48}
!85 = !{!50, !5, i64 56}
!86 = !{!67, !5, i64 64}
!87 = !{!67, !5, i64 68}
!88 = !{!67, !5, i64 72}
!89 = !{!67, !5, i64 76}
!90 = distinct !{!90, !31}
!91 = !{!92, !69, i64 24}
!92 = !{!"", !68, i64 0, !70, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !43, i64 80, !12, i64 88, !17, i64 96, !6, i64 98, !6, i64 99}
!93 = !{!92, !17, i64 96}
!94 = !{!92, !5, i64 72}
!95 = !{!92, !5, i64 76}
!96 = !{!92, !5, i64 68}
!97 = !{i64 0, i64 1, !61, i64 1, i64 1, !61, i64 2, i64 1, !61}
!98 = !{!92, !6, i64 98}
!99 = !{!92, !12, i64 88}
!100 = distinct !{!100, !31}
!101 = !{!102, !69, i64 24}
!102 = !{!"", !68, i64 0, !19, i64 64, !43, i64 72, !103, i64 80, !70, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !70, i64 120, !70, i64 123, !5, i64 128, !5, i64 132, !5, i64 136, !6, i64 140, !6, i64 141, !5, i64 142, !5, i64 142, !6, i64 143, !6, i64 143, !6, i64 143, !104, i64 144, !70, i64 152, !5, i64 156}
!103 = !{!"p1 _ZTS10_lv_font_t", !12, i64 0}
!104 = !{!"p1 _ZTS21_lv_draw_label_hint_t", !12, i64 0}
!105 = !{!102, !5, i64 12}
!106 = !{!102, !5, i64 16}
!107 = !{!102, !6, i64 140}
!108 = !{!102, !5, i64 96}
!109 = !{!102, !103, i64 80}
!110 = distinct !{!110, !31}
!111 = !{!102, !19, i64 64}
!112 = !{!16, !5, i64 0}
!113 = !{!16, !5, i64 4}
!114 = distinct !{!114, !31}
!115 = !{!116, !12, i64 64}
!116 = !{!"_lv_draw_image_dsc_t", !68, i64 0, !12, i64 64, !117, i64 72, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !43, i64 108, !70, i64 116, !6, i64 119, !6, i64 120, !5, i64 121, !17, i64 121, !17, i64 121, !12, i64 128, !118, i64 136, !16, i64 144, !12, i64 160}
!117 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!118 = !{!"p1 _ZTS20_lv_draw_image_sup_t", !12, i64 0}
!119 = !{!116, !5, i64 88}
!120 = !{!67, !5, i64 12}
!121 = !{!67, !5, i64 16}
!122 = distinct !{!122, !31}
!123 = !{!67, !6, i64 108}
!124 = !{!16, !5, i64 8}
!125 = !{!16, !5, i64 12}
end_hunk_1
