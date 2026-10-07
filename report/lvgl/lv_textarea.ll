Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_textarea?download=true
inline.NumInlined: 78
inline.NumDeleted: 18
begin_hunk_0_@lv_textarea_delete_char_forward:bb.a
bb.b:                                             ; preds = %lv_textarea_get_cursor_pos.exit11
  tail call void @lv_textarea_delete_char(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %lv_textarea_get_cursor_pos.exit11
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_textarea_set_text(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %.preheader46, label %bb.c

.preheader46:                                     ; preds = %bb.b, %.preheader46
  br label %.preheader46

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = tail call i32 @lv_label_get_text_selection_start(ptr noundef %i.c) #10
  %.not6.i = icmp eq i32 %i.d, 65535
  br i1 %.not6.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.f = tail call i32 @lv_label_get_text_selection_end(ptr noundef %i.e) #10
  %.not7.i = icmp eq i32 %i.f, 65535
  br i1 %.not7.i, label %lv_textarea_get_accepted_chars.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void @lv_label_set_text_selection_start(ptr noundef %i.g, i32 noundef 65535) #10
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void @lv_label_set_text_selection_end(ptr noundef %i.h, i32 noundef 65535) #10
  br label %lv_textarea_get_accepted_chars.exit

lv_textarea_get_accepted_chars.exit:              ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not30 = icmp eq ptr %i.j, null
  br i1 %.not30, label %lv_textarea_get_max_length.exit, label %bb.f

lv_textarea_get_max_length.exit:                  ; preds = %lv_textarea_get_accepted_chars.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37
  %.not31 = icmp eq i32 %i.l, 0
  br i1 %.not31, label %bb.k, label %bb.f

bb.f:                                             ; preds = %lv_textarea_get_accepted_chars.exit, %lv_textarea_get_max_length.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void @lv_label_set_text(ptr noundef %i.m, ptr noundef nonnull @.str.1) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23
  %i.p = icmp eq i32 %i.o, 32767
  br i1 %i.p, label %lv_textarea_set_cursor_pos.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @lv_text_get_encoded_length, align 8, !tbaa !24
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.s = tail call ptr @lv_label_get_text(ptr noundef %i.r) #10
  %i.t = tail call i32 %i.q(ptr noundef %i.s) #10, !inline_history !25 ; 2 uses
  store i32 %i.t, ptr %i.n, align 4, !tbaa !23
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #10
  tail call fastcc void @lv_textarea_scroll_to_cusor_pos(ptr noundef nonnull %0, i32 noundef %i.t)
  br label %lv_textarea_set_cursor_pos.exit

lv_textarea_set_cursor_pos.exit:                  ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 4
  %.not32 = icmp eq i8 %i.w, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %lv_textarea_set_cursor_pos.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  store i8 0, ptr %i.y, align 1, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %lv_textarea_set_cursor_pos.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.z = load i8, ptr %1, align 1, !tbaa !34
  %.not3348 = icmp eq i8 %i.z, 0
  br i1 %.not3348, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.aa = load ptr, ptr @lv_text_encoded_next, align 8, !tbaa !24
  %i.ab = load ptr, ptr @lv_text_unicode_to_encoded, align 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %i.ac = call i32 %i.aa(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #10
  %i.ad = call i32 %i.ab(i32 noundef %i.ac) #10
  call void @lv_textarea_add_char(ptr noundef nonnull %0, i32 noundef %i.ad)
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !21
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %.not33 = icmp eq i8 %i.ah, 0
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %lv_textarea_set_cursor_pos.exit45

bb.k:                                             ; preds = %lv_textarea_get_max_length.exit
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void @lv_label_set_text(ptr noundef %i.ai, ptr noundef nonnull %1) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !23
  %i.al = icmp eq i32 %i.ak, 32767
  br i1 %i.al, label %lv_textarea_set_cursor_pos.exit45, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr @lv_text_get_encoded_length, align 8, !tbaa !24
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.ao = tail call ptr @lv_label_get_text(ptr noundef %i.an) #10
  %i.ap = tail call i32 %i.am(ptr noundef %i.ao) #10, !inline_history !25 ; 2 uses
  store i32 %i.ap, ptr %i.aj, align 4, !tbaa !23
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #10
  tail call fastcc void @lv_textarea_scroll_to_cusor_pos(ptr noundef nonnull %0, i32 noundef %i.ap)
  br label %lv_textarea_set_cursor_pos.exit45

lv_textarea_set_cursor_pos.exit45:                ; preds = %bb.l, %bb.k, %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %.not34 = icmp eq ptr %i.ar, null
  br i1 %.not34, label %bb.o, label %bb.m

bb.m:                                             ; preds = %lv_textarea_set_cursor_pos.exit45
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.at = call ptr @lv_label_get_text(ptr noundef %i.as) #10
  %i.au = load i8, ptr %i.at, align 1, !tbaa !34
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %lv_textarea_set_cursor_pos.exit45
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = and i8 %i.ay, 4
  %.not35 = icmp eq i8 %i.az, 0
  br i1 %.not35, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26
  call void @lv_free(ptr noundef %i.bb) #10
  %i.bc = call ptr @lv_strdup(ptr noundef nonnull %1) #10 ; 2 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !26
  %.not36 = icmp eq ptr %i.bc, null
  br i1 %.not36, label %.preheader47, label %bb.q

.preheader47:                                     ; preds = %bb.p, %.preheader47
  br label %.preheader47

bb.q:                                             ; preds = %bb.p
  call fastcc void @pwd_char_hider(ptr noundef nonnull %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.bd = call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 35, ptr noundef null) #10 ; 0 uses
  ret void
}

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare ptr @lv_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_textarea_set_placeholder_text(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %.preheader23, label %bb.c

.preheader23:                                     ; preds = %bb.b, %.preheader23
  br label %.preheader23

bb.c:                                             ; preds = %bb.b
  %i.a = tail call i64 @lv_strlen(ptr noundef nonnull %1) #10 ; 3 uses
  %2 = icmp ne i64 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %.not21 = icmp eq ptr %i.c, null
  %or.cond = select i1 %2, i1 true, i1 %.not21
  br i1 %or.cond, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lv_free(ptr noundef nonnull %i.c) #10
  store ptr null, ptr %i.b, align 8, !tbaa !28
  br label %bb.f

._crit_edge:                                      ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = add i64 %i.a, 1
  %i.f = tail call ptr @lv_realloc(ptr noundef %i.c, i64 noundef %i.e) #10 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !28
  %.not22 = icmp eq ptr %i.f, null
  br i1 %.not22, label %.preheader24, label %bb.e

.preheader24:                                     ; preds = %._crit_edge, %.preheader24
  br label %.preheader24

bb.e:                                             ; preds = %._crit_edge
  %i.g = tail call ptr @lv_strcpy(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #10 ; 0 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.i, align 1, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #10 ; 0 uses
  ret void
}

declare ptr @lv_strcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_update_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @lv_textarea_scroll_to_cusor_pos(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_point_t, align 4         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @lv_obj_update_layout(ptr noundef %i.b) #10
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 77) #10
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22
  call void @lv_label_get_letter_pos(ptr noundef %i.d, i32 noundef %1, ptr noundef nonnull %2) #10
  %i.e = call i32 @lv_font_get_line_height(ptr noundef %i.c) #10 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = call i32 @lv_obj_get_scroll_top(ptr noundef %0) #10
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.f, align 4, !tbaa !33
  call void @lv_obj_scroll_to_y(ptr noundef nonnull %0, i32 noundef %i.j, i1 noundef zeroext true) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = call i32 @lv_obj_get_content_height(ptr noundef nonnull %0) #10 ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !33
  %i.m = add nsw i32 %i.l, %i.e
  %i.n = call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %0) #10
  %i.o = sub i32 %i.m, %i.n
  %i.p = icmp sgt i32 %i.o, %i.k
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.f, align 4, !tbaa !33
  %i.r = sub i32 %i.e, %i.k
  %i.s = add i32 %i.r, %i.q
  call void @lv_obj_scroll_to_y(ptr noundef nonnull %0, i32 noundef %i.s, i1 noundef zeroext true) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = load i32, ptr %2, align 4, !tbaa !30
  %i.u = call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %0) #10
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %2, align 4, !tbaa !30
  call void @lv_obj_scroll_to_x(ptr noundef nonnull %0, i32 noundef %i.w, i1 noundef zeroext true) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = call i32 @lv_obj_get_content_width(ptr noundef nonnull %0) #10 ; 2 uses
  %i.y = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.z = add nsw i32 %i.y, %i.e
  %i.aa = icmp sgt i32 %i.z, %i.x
  %i.ab = sub i32 %i.e, %i.x
  %i.ac = add i32 %i.ab, %i.y
  %.sink = select i1 %i.aa, i32 %i.ac, i32 0
  call void @lv_obj_scroll_to_x(ptr noundef nonnull %0, i32 noundef %.sink, i1 noundef zeroext true) #10
  %i.ad = load i32, ptr %2, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !40
  call fastcc void @start_cursor_blink(ptr noundef nonnull %0)
  call fastcc void @refr_cursor_area(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_textarea_set_cursor_click_pos(ptr nofree noundef captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = select i1 %1, i8 2, i8 0
  %i.d = and i8 %i.b, -3
  %i.e = or disjoint i8 %i.d, %i.c
  store i8 %i.e, ptr %i.a, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_textarea_set_password_mode(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 4
  %i.d = icmp eq i8 %i.c, 0
  %i.e = xor i1 %1, %i.d
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = select i1 %1, i8 4, i8 0
  %i.g = and i8 %i.b, -5
  %i.h = or disjoint i8 %i.g, %i.f
  store i8 %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  br i1 %1, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @lv_label_get_text(ptr noundef %i.j) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  tail call void @lv_free(ptr noundef %i.m) #10
  %i.n = tail call ptr @lv_strdup(ptr noundef %i.k) #10 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !26
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %.preheader28, label %bb.e

.preheader28:                                     ; preds = %bb.d, %.preheader28
  br label %.preheader28

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @pwd_char_hider(ptr noundef nonnull %0)
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.p = tail call i32 @lv_label_get_text_selection_start(ptr noundef %i.o) #10
  %.not6.i = icmp eq i32 %i.p, 65535
  br i1 %.not6.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.r = tail call i32 @lv_label_get_text_selection_end(ptr noundef %i.q) #10
  %.not7.i = icmp eq i32 %i.r, 65535
  br i1 %.not7.i, label %lv_textarea_clear_selection.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !22
  tail call void @lv_label_set_text_selection_start(ptr noundef %i.s, i32 noundef 65535) #10
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !22
  tail call void @lv_label_set_text_selection_end(ptr noundef %i.t, i32 noundef 65535) #10
  br label %lv_textarea_clear_selection.exit

bb.h:                                             ; preds = %bb.c
  %i.u = tail call i32 @lv_label_get_text_selection_start(ptr noundef %i.j) #10
  %.not6.i24 = icmp eq i32 %i.u, 65535
  br i1 %.not6.i24, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.w = tail call i32 @lv_label_get_text_selection_end(ptr noundef %i.v) #10
  %.not7.i25 = icmp eq i32 %i.w, 65535
  br i1 %.not7.i25, label %lv_textarea_clear_selection.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !22
  tail call void @lv_label_set_text_selection_start(ptr noundef %i.x, i32 noundef 65535) #10
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !22
  tail call void @lv_label_set_text_selection_end(ptr noundef %i.y, i32 noundef 65535) #10
  br label %lv_textarea_clear_selection.exit27

lv_textarea_clear_selection.exit27:               ; preds = %bb.i, %bb.j
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  tail call void @lv_label_set_text(ptr noundef %i.z, ptr noundef %i.ab) #10
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !26
  tail call void @lv_free(ptr noundef %i.ac) #10
  store ptr null, ptr %i.aa, align 8, !tbaa !26
  br label %lv_textarea_clear_selection.exit

lv_textarea_clear_selection.exit:                 ; preds = %bb.g, %bb.f, %lv_textarea_clear_selection.exit27
  tail call fastcc void @refr_cursor_area(ptr noundef nonnull %0)
  br label %bb.k
end_hunk_0
