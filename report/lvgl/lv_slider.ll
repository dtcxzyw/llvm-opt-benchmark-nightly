Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_slider?download=true
inline.NumInlined: 48
inline.NumDeleted: 9
begin_hunk_0_@lv_slider_get_left_value:bb.a
bb.a:
  %i.a = tail call i32 @lv_bar_get_start_value(ptr noundef %0) #6
  ret i32 %i.a
}

declare i32 @lv_bar_get_start_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_slider_get_min_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_min_value(ptr noundef %0) #6
  ret i32 %i.a
}

declare i32 @lv_bar_get_min_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_slider_get_max_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_max_value(ptr noundef %0) #6
  ret i32 %i.a
}

declare i32 @lv_bar_get_max_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @lv_slider_get_mode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_mode(ptr noundef %0) #6 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.a, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp4 = icmp eq i32 %i.a, 1
  %switch.select5 = select i1 %switch.selectcmp4, i32 1, i32 %switch.select
  ret i32 %switch.select5
}

declare i32 @lv_bar_get_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @lv_slider_get_orientation(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_orientation(ptr noundef %0) #6 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.a, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp4 = icmp eq i32 %i.a, 1
  %switch.select5 = select i1 %switch.selectcmp4, i32 1, i32 %switch.select
  ret i32 %switch.select5
}

declare i32 @lv_bar_get_orientation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @lv_slider_is_symmetrical(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @lv_bar_is_symmetrical(ptr noundef %0) #6
  ret i1 %i.a
}

declare zeroext i1 @lv_bar_is_symmetrical(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @lv_slider_bind_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not13 = icmp eq ptr %0, null
  br i1 %.not13, label %.preheader16, label %bb.c

.preheader16:                                     ; preds = %bb.b, %.preheader16
  br label %.preheader16

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 14
  %switch = icmp eq i32 %i.c, 2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @lv_obj_add_event_cb(ptr noundef nonnull %0, ptr noundef nonnull @slider_value_changed_event_cb, i32 noundef 35, ptr noundef nonnull %1) #6 ; 0 uses
  %i.e = tail call ptr @lv_subject_add_observer_obj(ptr noundef nonnull %1, ptr noundef nonnull @slider_value_observer_cb, ptr noundef nonnull %0, ptr noundef null) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @slider_value_changed_event_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_current_target(ptr noundef %0) #6
  %i.b = tail call ptr @lv_event_get_user_data(ptr noundef %0) #6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 15
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @lv_bar_get_value(ptr noundef %i.a) #6
  tail call void @lv_subject_set_int(ptr noundef nonnull %i.b, i32 noundef %i.g) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @lv_subject_add_observer_obj(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @slider_value_observer_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @lv_observer_get_target_obj(ptr noundef %0) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  %i.g = load i32, ptr %i.f, align 2
  %i.h = and i32 %i.g, 65536
  %i.i = icmp ne i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !48
  tail call void @lv_bar_set_value(ptr noundef %i.k, i32 noundef %i.m, i1 noundef zeroext %i.i) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @lv_obj_remove_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_ext_click_area(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_display_get_dpi(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare void @lv_area_increase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_is_point_on(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_indev_get_point(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_indev_active() local_unnamed_addr #2

declare void @lv_obj_transform_point(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_knob_pos(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_point_t, align 4         ; 8 uses
  %3 = alloca %struct.lv_point_t, align 4         ; 9 uses
  %i.a = tail call ptr @lv_indev_active() #6      ; 4 uses
  %i.b = tail call i32 @lv_indev_get_type(ptr noundef %i.a) #6
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lv_indev_get_scroll_obj(ptr noundef %i.a) #6
  %.not97 = icmp eq ptr %i.c, null
  br i1 %.not97, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @lv_indev_get_point(ptr noundef %i.a, ptr noundef nonnull %3) #6
  call void @lv_obj_transform_point(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 3) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = lshr i8 %i.e, 3
  %i.g = and i8 %i.f, 7
  switch i8 %i.g, label %bb.e [
    i8 0, label %bb.d
    i8 1, label %is_slider_horizontal.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @lv_obj_get_width(ptr noundef nonnull %0) #6
  %i.i = call i32 @lv_obj_get_height(ptr noundef nonnull %0) #6
  %i.j = icmp sge i32 %i.h, %i.i                  ; 2 uses
  %4 = select i1 %i.j, i32 512, i32 256
  br label %is_slider_horizontal.exit

bb.e:                                             ; preds = %bb.c
  br label %is_slider_horizontal.exit

is_slider_horizontal.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %4, %bb.d ], [ 256, %bb.e ], [ 512, %bb.c ]
  %.0.i.a = phi i1 [ %i.j, %bb.d ], [ false, %bb.e ], [ true, %bb.c ] ; 2 uses
  br i1 %1, label %bb.f, label %bb.k

bb.f:                                             ; preds = %is_slider_horizontal.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 1
  %.not98 = icmp eq i8 %i.m, 0
  br i1 %.not98, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %.0.i.a, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr %3, align 4, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load i32, ptr %i.o, align 8, !tbaa !50
  %i.q = sub nsw i32 %i.n, %i.p
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.u = load i32, ptr %i.t, align 4, !tbaa !52
  %i.v = sub nsw i32 %i.s, %i.u
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %i.q, %bb.h ], [ %i.v, %bb.i ]
  %i.x = call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.z = load i8, ptr %i.y, align 8, !tbaa !58
  %i.aa = zext i8 %i.z to i32
  %.not99 = icmp samesign ult i32 %i.x, %i.aa
  br i1 %.not99, label %bb.ao, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %is_slider_horizontal.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %.not100 = icmp eq ptr %i.ac, null
  br i1 %.not100, label %bb.l, label %bb.ac

bb.l:                                             ; preds = %bb.k
  %i.ad = call i32 @lv_bar_get_mode(ptr noundef nonnull %0) #6
  %switch.selectcmp.i.not.i = icmp eq i32 %i.ad, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 10 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = or i8 %i.af, 1
  store i8 %i.ag, ptr %i.ae, align 8
  br i1 %switch.selectcmp.i.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !22
  br label %drag_start.exit

bb.n:                                             ; preds = %bb.l
  %i.ai = call ptr @lv_indev_active() #6
  call void @lv_indev_get_point(ptr noundef %i.ai, ptr noundef nonnull %2) #6
  call void @lv_obj_transform_point(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 3) #6
  %i.aj = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -127) #6
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 1                    ; 2 uses
  %i.an = load i8, ptr %i.d, align 8
  %i.ao = lshr i8 %i.an, 3
  %i.ap = and i8 %i.ao, 7
  switch i8 %i.ap, label %is_slider_horizontal.exit.thread111.i [
    i8 0, label %is_slider_horizontal.exit.i
    i8 1, label %is_slider_horizontal.exit.thread.i
  ]

is_slider_horizontal.exit.thread.i:               ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !28, !range !29, !noundef !30
  %i.as = zext i1 %i.am to i8
  %.not109.i = icmp eq i8 %i.ar, %i.as
  br i1 %.not109.i, label %bb.p, label %.critedge.i

is_slider_horizontal.exit.thread111.i:            ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load i8, ptr %i.at, align 8, !tbaa !28, !range !29, !noundef !30
  %.not113.i = icmp eq i8 %i.au, 0
  br i1 %.not113.i, label %bb.w, label %.critedge103.i

is_slider_horizontal.exit.i:                      ; preds = %bb.n
  %i.av = call i32 @lv_obj_get_width(ptr noundef nonnull %0) #6
  %i.aw = call i32 @lv_obj_get_height(ptr noundef nonnull %0) #6
  %i.ax = icmp sge i32 %i.av, %i.aw               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !28, !range !29, !noundef !30
  %i.ba = and i1 %i.am, %i.ax
  %i.bb = zext i1 %i.ba to i8
  %.not.i = icmp eq i8 %i.az, %i.bb               ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.v

bb.o:                                             ; preds = %is_slider_horizontal.exit.i
  br i1 %.not.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o, %is_slider_horizontal.exit.thread.i
  %i.bc = load i32, ptr %2, align 4, !tbaa !49    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !59 ; 2 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.q, label %.critedge99.i

.critedge.i:                                      ; preds = %bb.o, %is_slider_horizontal.exit.thread.i
  %i.bg = load i32, ptr %2, align 4, !tbaa !49    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.q, label %.critedge101.i

bb.q:                                             ; preds = %.critedge.i, %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bk, ptr %i.ab, align 8, !tbaa !22
  br label %drag_start.exit

.critedge99.i:                                    ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %i.bn = icmp slt i32 %i.bc, %i.bm
  br i1 %i.bn, label %bb.r, label %.critedge99._crit_edge.i

.critedge99._crit_edge.i:                         ; preds = %.critedge99.i
  %.phi.trans.insert123.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre124.i = load i32, ptr %.phi.trans.insert123.i, align 8, !tbaa !62
  %.phi.trans.insert125.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre126.i = load i32, ptr %.phi.trans.insert125.i, align 8, !tbaa !60
  br label %bb.s

.critedge101.i:                                   ; preds = %.critedge.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !62 ; 2 uses
  %i.bq = icmp sgt i32 %i.bg, %i.bp
  br i1 %i.bq, label %bb.r, label %.critedge101._crit_edge.i

.critedge101._crit_edge.i:                        ; preds = %.critedge101.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !61
  %.phi.trans.insert127.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre128.i = load i32, ptr %.phi.trans.insert127.i, align 8, !tbaa !59
  br label %bb.s

bb.r:                                             ; preds = %.critedge101.i, %.critedge99.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 84
  store ptr %i.br, ptr %i.ab, align 8, !tbaa !22
  br label %drag_start.exit

bb.s:                                             ; preds = %.critedge101._crit_edge.i, %.critedge99._crit_edge.i
  %i.bs = phi i32 [ %.pre128.i, %.critedge101._crit_edge.i ], [ %i.be, %.critedge99._crit_edge.i ]
  %i.bt = phi i32 [ %i.bi, %.critedge101._crit_edge.i ], [ %.pre126.i, %.critedge99._crit_edge.i ] ; 2 uses
  %i.bu = phi i32 [ %i.bg, %.critedge101._crit_edge.i ], [ %i.bc, %.critedge99._crit_edge.i ] ; 2 uses
  %i.bv = phi i32 [ %i.bp, %.critedge101._crit_edge.i ], [ %.pre124.i, %.critedge99._crit_edge.i ]
  %i.bw = phi i32 [ %.pre.i, %.critedge101._crit_edge.i ], [ %i.bm, %.critedge99._crit_edge.i ] ; 2 uses
  %i.bx = sub nsw i32 %i.bv, %i.bw
  %i.by = sdiv i32 %i.bx, 2
  %i.bz = sub i32 %i.bw, %i.bu
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = call i32 @llvm.abs.i32(i32 %i.ca, i1 true)
  %i.cc = sub nsw i32 %i.bs, %i.bt
  %i.cd = sdiv i32 %i.cc, 2
  %i.ce = sub i32 %i.bt, %i.bu
  %i.cf = add i32 %i.ce, %i.cd
  %i.cg = call i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.ch = icmp samesign ult i32 %i.cg, %i.cb
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ci, ptr %i.ab, align 8, !tbaa !22
  %i.cj = load i8, ptr %i.ae, align 8
  %i.ck = and i8 %i.cj, -3
  store i8 %i.ck, ptr %i.ae, align 8
  br label %drag_start.exit

bb.u:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 84
  store ptr %i.cl, ptr %i.ab, align 8, !tbaa !22
  %i.cm = load i8, ptr %i.ae, align 8
  %i.cn = or i8 %i.cm, 2
  store i8 %i.cn, ptr %i.ae, align 8
  br label %drag_start.exit

bb.v:                                             ; preds = %is_slider_horizontal.exit.i
  br i1 %.not.i, label %bb.w, label %.critedge103.i

bb.w:                                             ; preds = %bb.v, %is_slider_horizontal.exit.thread111.i
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !51 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !63 ; 2 uses
  %i.cs = icmp slt i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.x, label %.critedge105.i

.critedge103.i:                                   ; preds = %bb.v, %is_slider_horizontal.exit.thread111.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !51 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 196
end_hunk_0
begin_hunk_1_@update_knob_pos:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.cy, ptr %i.ab, align 8, !tbaa !22
  br label %drag_start.exit

.critedge105.i:                                   ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !65 ; 2 uses
  %i.db = icmp sgt i32 %i.cp, %i.da
  br i1 %i.db, label %bb.y, label %.critedge105._crit_edge.i

.critedge105._crit_edge.i:                        ; preds = %.critedge105.i
  %.phi.trans.insert129.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.pre130.i = load i32, ptr %.phi.trans.insert129.i, align 4, !tbaa !66
  %.phi.trans.insert135.i = getelementptr inbounds nuw i8, ptr %0, i64 196
  %.pre136.i = load i32, ptr %.phi.trans.insert135.i, align 4, !tbaa !64
  br label %bb.z

.critedge107.i:                                   ; preds = %.critedge103.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !66 ; 2 uses
  %i.de = icmp slt i32 %i.cu, %i.dd
  br i1 %i.de, label %bb.y, label %.critedge107._crit_edge.i

.critedge107._crit_edge.i:                        ; preds = %.critedge107.i
  %.phi.trans.insert131.i = getelementptr inbounds nuw i8, ptr %0, i64 180
  %.pre132.i = load i32, ptr %.phi.trans.insert131.i, align 4, !tbaa !65
  %.phi.trans.insert133.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %.pre134.i = load i32, ptr %.phi.trans.insert133.i, align 4, !tbaa !63
  br label %bb.z

bb.y:                                             ; preds = %.critedge107.i, %.critedge105.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 84
  store ptr %i.df, ptr %i.ab, align 8, !tbaa !22
  br label %drag_start.exit

bb.z:                                             ; preds = %.critedge107._crit_edge.i, %.critedge105._crit_edge.i
  %i.dg = phi i32 [ %.pre136.i, %.critedge105._crit_edge.i ], [ %i.cw, %.critedge107._crit_edge.i ]
  %i.dh = phi i32 [ %i.cr, %.critedge105._crit_edge.i ], [ %.pre134.i, %.critedge107._crit_edge.i ] ; 2 uses
  %i.di = phi i32 [ %i.cp, %.critedge105._crit_edge.i ], [ %i.cu, %.critedge107._crit_edge.i ] ; 2 uses
  %i.dj = phi i32 [ %i.da, %.critedge105._crit_edge.i ], [ %.pre132.i, %.critedge107._crit_edge.i ]
  %i.dk = phi i32 [ %.pre130.i, %.critedge105._crit_edge.i ], [ %i.dd, %.critedge107._crit_edge.i ] ; 2 uses
  %i.dl = sub nsw i32 %i.dj, %i.dk
  %i.dm = sdiv i32 %i.dl, 2
  %i.dn = sub i32 %i.dk, %i.di
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %i.dq = sub nsw i32 %i.dg, %i.dh
  %i.dr = sdiv i32 %i.dq, 2
  %i.ds = sub i32 %i.dh, %i.di
  %i.dt = add i32 %i.ds, %i.dr
  %i.du = call i32 @llvm.abs.i32(i32 %i.dt, i1 true)
  %i.dv = icmp samesign ult i32 %i.du, %i.dp
  br i1 %i.dv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.dw, ptr %i.ab, align 8, !tbaa !22
  %i.dx = load i8, ptr %i.ae, align 8
  %i.dy = and i8 %i.dx, -3
  store i8 %i.dy, ptr %i.ae, align 8
  br label %drag_start.exit

bb.ab:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 84
  store ptr %i.dz, ptr %i.ab, align 8, !tbaa !22
  %i.ea = load i8, ptr %i.ae, align 8
  %i.eb = or i8 %i.ea, 2
  store i8 %i.eb, ptr %i.ae, align 8
  br label %drag_start.exit

drag_start.exit:                                  ; preds = %bb.m, %bb.q, %bb.r, %bb.t, %bb.u, %bb.x, %bb.y, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.ac

bb.ac:                                            ; preds = %drag_start.exit, %bb.k
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !68
  %i.eg = sub nsw i32 %i.ed, %i.ef
  %i.eh = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -127) #6
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = icmp eq i64 %i.ej, 1
  %i.el = load i8, ptr %i.d, align 8
  %i.em = lshr i8 %i.el, 3
  %i.en = and i8 %i.em, 7
  switch i8 %i.en, label %bb.ae [
    i8 0, label %bb.ad
    i8 1, label %is_slider_horizontal.exit106
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.eo = call i32 @lv_obj_get_width(ptr noundef nonnull %0) #6
  %i.ep = call i32 @lv_obj_get_height(ptr noundef nonnull %0) #6
  %i.eq = icmp sge i32 %i.eo, %i.ep
  br label %is_slider_horizontal.exit106

bb.ae:                                            ; preds = %bb.ac
  br label %is_slider_horizontal.exit106

is_slider_horizontal.exit106:                     ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0.i105 = phi i1 [ %i.eq, %bb.ad ], [ false, %bb.ae ], [ true, %bb.ac ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.es = load i8, ptr %i.er, align 8, !tbaa !28, !range !29, !noundef !30
  %i.et = select i1 %i.ek, i1 %.0.i105, i1 false
  %i.eu = zext i1 %i.et to i8
  %.not101 = icmp eq i8 %i.es, %i.eu              ; 2 uses
  br i1 %.0.i.a, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %is_slider_horizontal.exit106
  %i.ev = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #6
  %i.ew = ptrtoint ptr %i.ev to i64
  %.sroa.0.0.extract.trunc.i107 = trunc i64 %i.ew to i32 ; 2 uses
  %i.ex = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #6
  %i.ey = ptrtoint ptr %i.ex to i64
  %.sroa.0.0.extract.trunc.i108 = trunc i64 %i.ey to i32 ; 2 uses
  %i.ez = call i32 @lv_obj_get_width(ptr noundef nonnull %0) #6 ; 2 uses
  %i.fa = add i32 %.sroa.0.0.extract.trunc.i108, %.sroa.0.0.extract.trunc.i107 ; 2 uses
  %i.fb = sub i32 %i.ez, %i.fa
  br i1 %.not101, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !31
  %i.fe = load i32, ptr %3, align 4, !tbaa !49
  %i.ff = add i32 %i.fe, %.sroa.0.0.extract.trunc.i108
  %i.fg = sub i32 %i.fd, %i.ff
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fh = load i32, ptr %3, align 4, !tbaa !49
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !32
  %i.fk = add i32 %i.fj, %.sroa.0.0.extract.trunc.i107
  %i.fl = sub i32 %i.fh, %i.fk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.090 = phi i32 [ %i.fg, %bb.ag ], [ %i.fl, %bb.ah ] ; 2 uses
  %.not102 = icmp eq i32 %i.ez, %i.fa
  br i1 %.not102, label %bb.am, label %.sink.split

bb.aj:                                            ; preds = %is_slider_horizontal.exit106
  %i.fm = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #6
  %i.fn = ptrtoint ptr %i.fm to i64
  %.sroa.0.0.extract.trunc.i109 = trunc i64 %i.fn to i32 ; 2 uses
  %i.fo = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 25) #6
  %i.fp = ptrtoint ptr %i.fo to i64
  %.sroa.0.0.extract.trunc.i110 = trunc i64 %i.fp to i32 ; 2 uses
  %i.fq = call i32 @lv_obj_get_height(ptr noundef nonnull %0) #6
  %i.fr = add i32 %.sroa.0.0.extract.trunc.i109, %.sroa.0.0.extract.trunc.i110
  %i.fs = sub i32 %i.fq, %i.fr                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !51 ; 2 uses
  br i1 %.not101, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !33
  %i.fx = add i32 %i.fw, %.sroa.0.0.extract.trunc.i109
  %i.fy = sub i32 %i.fu, %i.fx
  br label %.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !34
  %i.gb = sub i32 %.sroa.0.0.extract.trunc.i110, %i.fu
  %.neg = add i32 %i.gb, %i.ga
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ak, %bb.al, %bb.ai
  %.090.sink = phi i32 [ %.090, %bb.ai ], [ %i.fy, %bb.ak ], [ %.neg, %bb.al ]
  %.sink = phi i32 [ %i.fb, %bb.ai ], [ %i.fs, %bb.ak ], [ %i.fs, %bb.al ] ; 2 uses
  %i.gc = mul nsw i32 %.090.sink, %i.eg
  %i.gd = sdiv i32 %.sink, 2
  %i.ge = add nsw i32 %i.gc, %i.gd
  %i.gf = sdiv i32 %i.ge, %.sink
  %i.gg = load i32, ptr %i.ee, align 4, !tbaa !68
  %i.gh = add nsw i32 %i.gg, %i.gf
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.ai
  %.3 = phi i32 [ %.090, %bb.ai ], [ %i.gh, %.sink.split ]
  %i.gi = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj                ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.089.in = select i1 %i.gk, ptr %i.gl, ptr %i.ec
  %.0.in = select i1 %i.gk, ptr %i.ee, ptr %i.gj
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !27
  %.089 = load i32, ptr %.089.in, align 8, !tbaa !27
  %i.gm = call i32 @llvm.smin.i32(i32 %.3, i32 %.089)
  %i.gn = call i32 @llvm.smax.i32(i32 %.0, i32 %i.gm) ; 2 uses
  %i.go = load i32, ptr %i.gi, align 4, !tbaa !27
  %.not103 = icmp eq i32 %i.go, %i.gn
  br i1 %.not103, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !27
  call void @lv_obj_remove_flag(ptr noundef nonnull %0, i32 noundef %.0.i) #6
  %i.gp = call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #6 ; 0 uses
  %i.gq = call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 35, ptr noundef null) #6 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.ap

bb.ap:                                            ; preds = %bb.b, %bb.a, %bb.ao
  ret void
}

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_group(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_group_get_editing(ptr noundef) local_unnamed_addr #2

declare i32 @lv_indev_get_type(ptr noundef) local_unnamed_addr #2

declare void @lv_group_set_editing(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @is_slider_horizontal(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8
  %i.c = lshr i8 %i.b, 3
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.c [
    i8 0, label %bb.b
    i8 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #6
  %i.f = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #6
  %i.g = icmp sge i32 %i.e, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.c ], [ true, %bb.a ]
  ret i1 %.0
}

declare void @lv_obj_refresh_ext_draw_size(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_height(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_calculate_ext_draw_size(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_event_get_key(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_rotary_diff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_knob(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_area_t, align 16         ; 12 uses
  %2 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 10 uses
  %3 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 4 uses
  %i.a = tail call ptr @lv_event_get_current_target(ptr noundef %0) #6 ; 22 uses
  %i.b = tail call ptr @lv_event_get_layer(ptr noundef %0) #6 ; 4 uses
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.a, i32 noundef 0, i8 noundef zeroext -127) #6
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp eq i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.h = load i8, ptr %i.g, align 8
  %i.i = lshr i8 %i.h, 3
  %i.j = and i8 %i.i, 7
  switch i8 %i.j, label %bb.c [
    i8 0, label %bb.b
    i8 1, label %is_slider_horizontal.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @lv_obj_get_width(ptr noundef nonnull %i.a) #6
  %i.l = tail call i32 @lv_obj_get_height(ptr noundef nonnull %i.a) #6
  %i.m = icmp sge i32 %i.k, %i.l
  br label %is_slider_horizontal.exit

bb.c:                                             ; preds = %bb.a
  br label %is_slider_horizontal.exit

is_slider_horizontal.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.c ], [ true, %bb.a ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !28, !range !29, !noundef !30
  %i.p = select i1 %i.f, i1 %.0.i, i1 false
  %i.q = zext i1 %i.p to i8
  %.not = icmp eq i8 %i.o, %i.q                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.r = tail call zeroext i1 @lv_bar_is_symmetrical(ptr noundef nonnull %i.a) #6 ; 2 uses
  br i1 %.0.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %is_slider_horizontal.exit
  %i.s = tail call i32 @lv_obj_get_height(ptr noundef nonnull %i.a) #6 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !69
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.in53.v = select i1 %.not, i64 88, i64 96
  %.in53 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in53.v
  %i.w = load i32, ptr %.in53, align 8, !tbaa !27
  store i32 %i.w, ptr %1, align 16, !tbaa !35
  br label %bb.l

bb.g:                                             ; preds = %bb.e, %bb.d
  %.in52.v = select i1 %.not, i64 96, i64 88
  %.in52 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in52.v
  %i.x = load i32, ptr %.in52, align 8, !tbaa !27
  store i32 %i.x, ptr %1, align 16, !tbaa !35
  br label %bb.l

bb.h:                                             ; preds = %is_slider_horizontal.exit
  %i.y = tail call i32 @lv_obj_get_width(ptr noundef nonnull %i.a) #6 ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !69
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.in51.v = select i1 %.not, i64 100, i64 92
  %.in51 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in51.v
  %i.ac = load i32, ptr %.in51, align 4, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !36
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  %.in.v = select i1 %.not, i64 92, i64 100
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v
  %i.ae = load i32, ptr %.in, align 4, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %.0 = phi i32 [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %i.y, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %2) #6
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !76
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %i.a, i32 noundef 196608, ptr noundef nonnull %2) #6
  call fastcc void @position_knob(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %.0, i1 noundef zeroext %.0.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load <4 x i32>, ptr %1, align 16, !tbaa !27
  store <4 x i32> %i.aj, ptr %i.ah, align 8, !tbaa !27
  %i.ak = call i32 @lv_bar_get_mode(ptr noundef nonnull %i.a) #6
  %switch.selectcmp.i = icmp eq i32 %i.ak, 2
  br i1 %switch.selectcmp.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @lv_draw_rect(ptr noundef %i.b, ptr noundef nonnull %2, ptr noundef nonnull %i.ah) #6
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.al = call ptr @lv_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2, i64 noundef 208) #6 ; 0 uses
  call void @lv_draw_rect(ptr noundef %i.b, ptr noundef nonnull %2, ptr noundef nonnull %i.ah) #6
  br i1 %.0.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.in56.v = select i1 %.not, i64 88, i64 96
  %.in56 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in56.v
  %i.am = load i32, ptr %.in56, align 8, !tbaa !27
  store i32 %i.am, ptr %1, align 16, !tbaa !35
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.in55.v = select i1 %.not, i64 100, i64 92
  %.in55 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in55.v
  %i.an = load i32, ptr %.in55, align 4, !tbaa !27
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call fastcc void @position_knob(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %.0, i1 noundef zeroext %.0.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.ap = load <4 x i32>, ptr %1, align 16, !tbaa !27
  store <4 x i32> %i.ap, ptr %i.ao, align 8, !tbaa !27
  %i.aq = call ptr @lv_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 208) #6 ; 0 uses
  call void @lv_draw_rect(ptr noundef %i.b, ptr noundef nonnull %2, ptr noundef nonnull %i.ao) #6
end_hunk_1
