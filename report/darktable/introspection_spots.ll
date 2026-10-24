Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_spots?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@gui_init:bb.a
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.r = call ptr @dt_iop_togglebutton_new(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @_add_shape_callback, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dtgtk_cairo_paint_masks_path, ptr noundef %i.q) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !153
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.u = call ptr @dt_iop_togglebutton_new(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @_add_shape_callback, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dtgtk_cairo_paint_masks_ellipse, ptr noundef %i.t) #16
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !155
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.x = call ptr @dt_iop_togglebutton_new(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @_add_shape_callback, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dtgtk_cairo_paint_masks_circle, ptr noundef %i.w) #16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !154
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_iop_togglebutton_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_edit_masks(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147
  %.not23 = icmp eq ptr %i.f, %2
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @dt_iop_request_focus(ptr noundef %2) #16
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 784
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !138
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !99  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  %i.n = load i32, ptr %i.m, align 4, !tbaa !151
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !152
  %i.q = icmp eq ptr %i.p, %2
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @dt_masks_change_form_gui(ptr noundef null) #16
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 2168
  %.pre29 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !148
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.r = phi ptr [ %.pre29, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  store i32 0, ptr %i.v, align 8, !tbaa !158
  store ptr null, ptr %i.s, align 8, !tbaa !159
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !153
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.x, i32 noundef 0) #16
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !154
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.z, i32 noundef 0) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !155
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ab, i32 noundef 0) #16
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = atomicrmw add ptr %i.ad, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !148
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !217
  %i.al = icmp ne i32 %i.ak, 1
  %i.am = zext i1 %i.al to i32
  tail call void @dt_masks_set_edit_mode(ptr noundef nonnull %2, i32 noundef %i.am) #16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !39
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !45
  %i.as = tail call ptr @dt_masks_get_from_id(ptr noundef %i.ap, i32 noundef %i.ar) #16 ; 3 uses
  %.not25 = icmp eq ptr %i.as, null
  br i1 %.not25, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !43
  %i.av = and i32 %i.au, 4
  %.not26 = icmp eq i32 %i.av, 0
  br i1 %.not26, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !37
  %.not27 = icmp eq ptr %i.aw, null
  br i1 %.not27, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !146
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 600
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !143
  %.not28 = icmp eq i32 %i.ba, 0
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !147
  %i.be = icmp eq ptr %i.bd, %2
  %i.bf = zext i1 %i.be to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = phi i32 [ 0, %bb.l ], [ %i.bf, %bb.m ]
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ay, i32 noundef %i.bg) #16
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !146
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.bi, i32 noundef 0) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !160
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @dt_control_queue_redraw_center() #16
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.c
  %.0 = phi i32 [ 1, %bb.p ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @dtgtk_cairo_paint_masks_eye(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_add_shape_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !99  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !222
  %i.h = tail call i32 @gtk_accelerator_get_default_mod_mask() #16
  %i.i = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !38
  %i.j = or i32 %i.i, %i.g
  %i.k = and i32 %i.j, %i.h
  %i.l = icmp eq i32 %i.k, 4                      ; 2 uses
  %i.m = zext i1 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !223
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.o, i32 noundef 1) #16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 784
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !138 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 600
  store i32 0, ptr %i.r, align 8, !tbaa !143
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.d, align 16, !tbaa !99  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 664 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !45
  %i.z = tail call ptr @dt_masks_get_from_id(ptr noundef %i.u, i32 noundef %i.y) #16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !43
  %i.ac = and i32 %i.ab, 4
  %.not30.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not30.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ae = tail call i32 @g_list_length(ptr noundef %i.ad) #16
  %i.af = icmp ugt i32 %i.ae, 63
  br i1 %i.af, label %.thread39.i.i, label %.thread.i.i

.thread39.i.i:                                    ; preds = %bb.f
  %i.ag = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #16
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ag) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !153
  br label %bb.k

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !153
  %i.al = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ak) #16
  %.not31.i.i = icmp eq i32 %i.al, 0
  br i1 %.not31.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !154
  %i.ao = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.an) #16
  %.not32.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not32.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !155
  %i.ar = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.aq) #16
  %.not33.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not33.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread.i.i
  tail call void @dt_masks_change_form_gui(ptr noundef null) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !153 ; 2 uses
  %.not41.i.i = icmp eq ptr %0, %i.as
  br i1 %.not41.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread39.i.i
  %i.at = phi ptr [ %i.ai, %.thread39.i.i ], [ %i.as, %bb.j ]
  %i.au = phi i1 [ true, %.thread39.i.i ], [ false, %bb.j ]
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.at, i32 noundef 0) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = phi i1 [ false, %bb.j ], [ %i.au, %bb.k ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !154 ; 2 uses
  %i.ay = icmp ne ptr %0, %i.ax
  %or.cond3.i.i = or i1 %i.av, %i.ay
  br i1 %or.cond3.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ax, i32 noundef 0) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !155 ; 2 uses
  %i.bb = icmp ne ptr %0, %i.ba
  %or.cond5.i.i = or i1 %i.av, %i.bb
  br i1 %or.cond5.i.i, label %bb.o, label %_reset_form_creation.exit.i

bb.o:                                             ; preds = %bb.n
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ba, i32 noundef 0) #16
  br label %_reset_form_creation.exit.i

_reset_form_creation.exit.i:                      ; preds = %bb.o, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !146
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.bd, i32 noundef 0) #16
  br i1 %i.av, label %_add_shape.exit, label %bb.p

bb.p:                                             ; preds = %_reset_form_creation.exit.i
  %i.be = tail call i32 @gtk_toggle_button_get_active(ptr noundef %0) #16
  %.not24.i = icmp eq i32 %i.be, 0
  br i1 %.not24.i, label %bb.q, label %_add_shape.exit

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %i.d, align 16, !tbaa !99 ; 3 uses
  tail call void @dt_iop_request_focus(ptr noundef nonnull %2) #16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !153
  %i.bi = icmp eq ptr %0, %i.bh
  br i1 %i.bi, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !154
  %i.bl = icmp eq ptr %0, %i.bk
  br i1 %i.bl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !155
  %i.bo = icmp eq ptr %0, %i.bn
  %spec.select.i = select i1 %i.bo, i32 40, i32 9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0.i = phi i32 [ %spec.select.i, %bb.s ], [ 10, %bb.q ], [ 9, %bb.r ]
  %i.bp = tail call ptr @dt_masks_create(i32 noundef %.0.i) #16
  tail call void @dt_masks_change_form_gui(ptr noundef %i.bp) #16
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2168
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !148 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 184
  store ptr %2, ptr %i.bt, align 8, !tbaa !152
  %spec.select32.i = select i1 %i.l, ptr %2, ptr null
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  store i32 %i.m, ptr %i.bu, align 8, !tbaa !158
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  store ptr %spec.select32.i, ptr %i.bv, align 8, !tbaa !159
  tail call void @dt_control_queue_redraw_center() #16
  br label %_add_shape.exit

_add_shape.exit:                                  ; preds = %_reset_form_creation.exit.i, %bb.p, %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !154
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !28  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2168
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !148 ; 5 uses
  %.not.i11 = icmp eq ptr %i.ca, null
  br i1 %.not.i11, label %_shape_is_being_added.exit, label %bb.u

bb.u:                                             ; preds = %_add_shape.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 2160
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !157 ; 3 uses
  %.not23.i = icmp eq ptr %i.cc, null
  br i1 %.not23.i, label %_shape_is_being_added.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 172
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !151
  %.not24.i12 = icmp eq i32 %i.ce, 0
  br i1 %.not24.i12, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 184
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !152
  %i.ch = icmp eq ptr %i.cg, %2
  br i1 %i.ch, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 176
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !158
  %.not25.i = icmp eq i32 %i.cj, 0
  br i1 %.not25.i, label %_shape_is_being_added.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !159
  %i.cm = icmp eq ptr %i.cl, %2
  br i1 %i.cm, label %bb.z, label %_shape_is_being_added.exit

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !43 ; 2 uses
  %i.cp = and i32 %i.co, 4
  %.not26.i = icmp eq i32 %i.cp, 0
  br i1 %.not26.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !37 ; 2 uses
  %.not27.i = icmp eq ptr %i.cq, null
  br i1 %.not27.i, label %_shape_is_being_added.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !41 ; 2 uses
  %.not28.i = icmp eq ptr %i.cr, null
  br i1 %.not28.i, label %_shape_is_being_added.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !91
  %i.cu = tail call ptr @dt_masks_get_from_id(ptr noundef %i.cs, i32 noundef %i.ct) #16 ; 2 uses
  %.not29.i = icmp eq ptr %i.cu, null
  br i1 %.not29.i, label %_shape_is_being_added.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !43
  %i.cx = and i32 %i.cw, 1
  br label %_shape_is_being_added.exit

bb.ae:                                            ; preds = %bb.z
  %i.cy = and i32 %i.co, 1
  br label %_shape_is_being_added.exit

_shape_is_being_added.exit:                       ; preds = %_add_shape.exit, %bb.u, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.3.i = phi i32 [ 0, %_add_shape.exit ], [ %i.cy, %bb.ae ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.u ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ %i.cx, %bb.ad ], [ 0, %bb.ac ]
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.bx, i32 noundef %.3.i) #16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !155
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !28  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2168
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !148 ; 5 uses
  %.not.i13 = icmp eq ptr %i.dd, null
  br i1 %.not.i13, label %_shape_is_being_added.exit22, label %bb.af

bb.af:                                            ; preds = %_shape_is_being_added.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 2160
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !157 ; 3 uses
  %.not23.i14 = icmp eq ptr %i.df, null
  br i1 %.not23.i14, label %_shape_is_being_added.exit22, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 172
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !151
  %.not24.i15 = icmp eq i32 %i.dh, 0
  br i1 %.not24.i15, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 184
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !152
  %i.dk = icmp eq ptr %i.dj, %2
  br i1 %i.dk, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 176
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !158
  %.not25.i16 = icmp eq i32 %i.dm, 0
  br i1 %.not25.i16, label %_shape_is_being_added.exit22, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 192
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !159
  %i.dp = icmp eq ptr %i.do, %2
  br i1 %i.dp, label %bb.ak, label %_shape_is_being_added.exit22

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !43 ; 2 uses
  %i.ds = and i32 %i.dr, 4
  %.not26.i18 = icmp eq i32 %i.ds, 0
  br i1 %.not26.i18, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = load ptr, ptr %i.df, align 8, !tbaa !37 ; 2 uses
  %.not27.i19 = icmp eq ptr %i.dt, null
  br i1 %.not27.i19, label %_shape_is_being_added.exit22, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !41 ; 2 uses
  %.not28.i20 = icmp eq ptr %i.du, null
  br i1 %.not28.i20, label %_shape_is_being_added.exit22, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !91
  %i.dx = tail call ptr @dt_masks_get_from_id(ptr noundef %i.dv, i32 noundef %i.dw) #16 ; 2 uses
  %.not29.i21 = icmp eq ptr %i.dx, null
  br i1 %.not29.i21, label %_shape_is_being_added.exit22, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !43
  %i.ea = and i32 %i.dz, 32
  br label %_shape_is_being_added.exit22

bb.ap:                                            ; preds = %bb.ak
  %i.eb = and i32 %i.dr, 32
  br label %_shape_is_being_added.exit22

_shape_is_being_added.exit22:                     ; preds = %_shape_is_being_added.exit, %bb.af, %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap
  %.3.i17 = phi i32 [ 0, %_shape_is_being_added.exit ], [ %i.eb, %bb.ap ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.al ], [ 0, %bb.am ], [ %i.ea, %bb.ao ], [ 0, %bb.an ]
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.da, i32 noundef %.3.i17) #16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !153
  %i.ee = load ptr, ptr %i.t, align 8, !tbaa !28  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2168
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !148 ; 5 uses
  %.not.i23 = icmp eq ptr %i.eg, null
  br i1 %.not.i23, label %_shape_is_being_added.exit32, label %bb.aq
end_hunk_0
