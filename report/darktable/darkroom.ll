Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/darkroom?download=true
inline.NumInlined: 177
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_preview_pipe_zoom_correction:bb.a
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ag ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  store float %i.al, ptr %1, align 4, !tbaa !148
  %i.am = extractelement <2 x float> %i.ak, i64 1
  store float %i.am, ptr %2, align 4, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %bb.b
  ret void
}

declare i32 @dt_masks_events_mouse_moved(ptr noundef, float noundef, float noundef, double noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @button_released(ptr nofree noundef readnone captures(none) %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 11 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !57 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2892
  %i.h = load i32, ptr %i.g, align 4, !tbaa !213
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp eq i32 %3, 1                        ; 4 uses
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.194) #16
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i32 @dt_iop_color_picker_is_visible(ptr noundef nonnull %i.f) #16
  %i.l = icmp ne i32 %i.k, 0
  %or.cond3 = and i1 %i.j, %i.l
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !182
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !207
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !122
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 348
  store i32 0, ptr %i.u, align 4, !tbaa !163
  tail call void @dt_control_queue_redraw_center() #16
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.194) #16
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.v = icmp eq i32 %3, 3
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 2264 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !189
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.h, label %_get_zoom_pos.exit

_get_zoom_pos.exit:                               ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 2680
  %i.z = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.aa = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.y, float noundef %i.z, float noundef %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !189 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !384
  %i.ae = load float, ptr %i.a, align 4, !tbaa !148
  %i.af = load float, ptr %i.b, align 4, !tbaa !148
  %i.ag = load float, ptr %i.c, align 4, !tbaa !148
  %i.ah = call i32 %i.ad(ptr noundef %i.ab, float noundef %i.ae, float noundef %i.af, i32 noundef 3, i32 noundef %4, float noundef %i.ag) #16 ; 2 uses
  %.not46 = icmp eq i32 %i.ah, 0
  br i1 %.not46, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_get_zoom_pos.exit, %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 2160
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !188
  %.not47 = icmp eq ptr %i.aj, null
  br i1 %.not47, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load float, ptr %i.a, align 4, !tbaa !148
  %i.al = fcmp reassoc nsz arcp contract afn oeq float %i.ak, f0x7F7FFFFF
  br i1 %i.al, label %bb.j, label %_get_zoom_pos.exit54

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 2680
  %i.an = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.ao = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.am, float noundef %i.an, float noundef %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  br label %_get_zoom_pos.exit54

_get_zoom_pos.exit54:                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call fastcc void @_preview_pipe_zoom_correction(ptr noundef nonnull %i.f, ptr noundef %i.d, ptr noundef %i.e)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !187
  %i.ar = load float, ptr %i.a, align 4, !tbaa !148
  %i.as = load float, ptr %i.d, align 4, !tbaa !148
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.ar
  %i.au = load float, ptr %i.b, align 4, !tbaa !148
  %i.av = load float, ptr %i.e, align 4, !tbaa !148
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.au
  %i.ax = load float, ptr %i.c, align 4, !tbaa !148
  %i.ay = call i32 @dt_masks_events_button_released(ptr noundef %i.aq, float noundef %i.at, float noundef %i.aw, i32 noundef %3, i32 noundef %4, float noundef %i.ax) #16 ; 2 uses
  %.not48 = icmp eq i32 %i.ay, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br i1 %.not48, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_get_zoom_pos.exit54, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !187 ; 2 uses
  %.not49 = icmp eq ptr %i.ba, null
  br i1 %.not49, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 248
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !384
  %.not50 = icmp eq ptr %i.bc, null
  br i1 %.not50, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !57
  %i.be = call i32 @dt_dev_modulegroups_test_activated(ptr noundef %i.bd) #16
  %.not51 = icmp eq i32 %i.be, 0
  br i1 %.not51, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load float, ptr %i.a, align 4, !tbaa !148 ; 2 uses
  %i.bg = fcmp reassoc nsz arcp contract afn oeq float %i.bf, f0x7F7FFFFF
  br i1 %i.bg, label %bb.o, label %_get_zoom_pos.exit55

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 2680
  %i.bi = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.bj = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.bh, float noundef %i.bi, float noundef %i.bj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %.pre = load float, ptr %i.a, align 4, !tbaa !148
  br label %_get_zoom_pos.exit55

_get_zoom_pos.exit55:                             ; preds = %bb.n, %bb.o
  %i.bk = phi float [ %i.bf, %bb.n ], [ %.pre, %bb.o ]
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !187 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 248
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !384
  %i.bo = load float, ptr %i.b, align 4, !tbaa !148
  %i.bp = load float, ptr %i.c, align 4, !tbaa !148
  %i.bq = call i32 %i.bn(ptr noundef %i.bl, float noundef %i.bk, float noundef %i.bo, i32 noundef %3, i32 noundef %4, float noundef %i.bp) #16 ; 2 uses
  %.not52 = icmp eq i32 %i.bq, 0
  %brmerge.not = and i1 %i.j, %.not52
  %.mux = call i32 @llvm.umax.i32(i32 %i.bq, i32 1)
  br i1 %brmerge.not, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %i.j, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_get_zoom_pos.exit55, %bb.p
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.194) #16
  br label %bb.r

bb.r:                                             ; preds = %_get_zoom_pos.exit55, %bb.p, %bb.q, %_get_zoom_pos.exit, %_get_zoom_pos.exit54
  %.1 = phi i32 [ %i.ay, %_get_zoom_pos.exit54 ], [ %i.ah, %_get_zoom_pos.exit ], [ %.mux, %_get_zoom_pos.exit55 ], [ 1, %bb.q ], [ 1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.e, %bb.d, %bb.b
  %.3 = phi i32 [ 1, %bb.b ], [ %.1, %bb.r ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i32 %.3
}

declare i32 @dt_masks_events_button_released(ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @button_pressed(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 19 uses
  %i.b = alloca float, align 4                    ; 16 uses
  %i.c = alloca float, align 4                    ; 13 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
  %i.f = alloca [4 x float], align 16             ; 10 uses
  %i.g = alloca [8 x float], align 16             ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  %i.i = alloca float, align 4                    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 21 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !182  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2892
  %i.q = load i32, ptr %i.p, align 4, !tbaa !213
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %bb.f [
    i32 1, label %bb.c
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %5, 5
  br i1 %i.r, label %.critedge185, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.195) #16
  br label %.critedge185

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 2264 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !189
  %.not161 = icmp eq ptr %i.t, null
  br i1 %.not161, label %bb.f, label %_get_zoom_pos.exit

_get_zoom_pos.exit:                               ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 2680
  %i.v = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.w = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.u, float noundef %i.v, float noundef %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !189  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !385
  %i.aa = load float, ptr %i.a, align 4, !tbaa !148
  %i.ab = load float, ptr %i.b, align 4, !tbaa !148
  %i.ac = load float, ptr %i.c, align 4, !tbaa !148
  %i.ad = call i32 %i.z(ptr noundef %i.x, float noundef %i.aa, float noundef %i.ab, double noundef %3, i32 noundef 3, i32 noundef %5, i32 noundef %6, float noundef %i.ac) #16
  br label %.critedge185

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.a
  %i.ae = tail call i32 @dt_iop_color_picker_is_visible(ptr noundef %i.k) #16
  %.not162 = icmp eq i32 %i.ae, 0
  br i1 %.not162, label %.critedge187, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !122 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 376
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !152 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 380
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !153 ; 2 uses
  switch i32 %4, label %.critedge187 [
    i32 1, label %bb.h
    i32 3, label %bb.s
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 @gtk_accelerator_get_default_mod_mask() #16
  %i.am = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !86
  %i.an = or i32 %i.am, %6
  %i.ao = and i32 %i.an, %i.al
  %.not208 = icmp eq i32 %i.ao, 4
  br i1 %.not208, label %bb.i, label %_get_zoom_pos.exit188

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !207
  switch i32 %i.aq, label %bb.l [
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @dt_lib_colorpicker_set_box_area(ptr noundef %i.ar, ptr noundef nonnull %i.as) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  tail call void @dt_lib_colorpicker_set_point(ptr noundef %i.at, ptr noundef nonnull %i.n) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.au = load ptr, ptr %i.af, align 16, !tbaa !122
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 348
  store i32 0, ptr %i.av, align 4, !tbaa !163
  tail call void @dt_control_queue_redraw_center() #16
  br label %.critedge185

_get_zoom_pos.exit188:                            ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 2680
  %i.ax = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.ay = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.aw, float noundef %i.ax, float noundef %i.ay, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %.pre222 = load float, ptr %i.b, align 4, !tbaa !148
  %.pre221 = load float, ptr %i.a, align 4, !tbaa !148
  store float %.pre221, ptr %i.n, align 16, !tbaa !148
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store float %.pre222, ptr %i.az, align 4, !tbaa !148
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !207
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_get_zoom_pos.exit188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @dt_color_picker_transform_box(ptr noundef nonnull %i.k, i32 noundef 2, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.d, i32 noundef 1) #16
  %i.be = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  %i.bf = load float, ptr %i.c, align 4, !tbaa !148 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.be
  %i.bh = fdiv reassoc nsz arcp contract afn float 6.000000e+00, %i.bg
  %i.bi = load float, ptr %i.a, align 4, !tbaa !148 ; 4 uses
  %i.bj = load float, ptr %i.d, align 16, !tbaa !148 ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bi, %i.bj
  %i.bl = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bk) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !148 ; 2 uses
  %i.bo = fsub reassoc nsz arcp contract afn float %i.bi, %i.bn
  %i.bp = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bo) ; 2 uses
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bl, %i.bp ; 2 uses
  %i.br = select reassoc nsz arcp contract afn i1 %i.bq, float %i.bl, float %i.bp
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.br, %i.bh
  %.pre223 = load float, ptr %i.b, align 4, !tbaa !148 ; 4 uses
  br i1 %i.bs, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !148 ; 2 uses
  %i.bv = fsub reassoc nsz arcp contract afn float %.pre223, %i.bu
  %i.bw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bv) ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !148 ; 2 uses
  %i.bz = fsub reassoc nsz arcp contract afn float %.pre223, %i.by
  %i.ca = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bz) ; 2 uses
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.ak to float
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bf, %i.cb
  %i.cd = fdiv reassoc nsz arcp contract afn float 6.000000e+00, %i.cc
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.ca, %i.bw ; 2 uses
  %i.cf = select reassoc nsz arcp contract afn i1 %i.ce, float %i.ca, float %i.bw
  %i.cg = fcmp reassoc nsz arcp contract afn olt float %i.cf, %i.cd
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = select i1 %i.bq, float %i.bn, float %i.bj
  store float %i.ch, ptr %i.n, align 16, !tbaa !148
  %i.ci = select i1 %i.ce, float %i.bu, float %i.by
  store float %i.ci, ptr %i.az, align 4, !tbaa !148
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 2760
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !123
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 156
  %i.cm = load <2 x i32>, ptr %i.cl, align 4, !tbaa !86
  %i.cn = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cm to <2 x float> ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = fmul reassoc nnan nsz arcp contract afn float %i.co, 2.000000e-02
  %i.cq = extractelement <2 x float> %i.cn, i64 1
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cp, %i.cq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %7 = fadd reassoc nsz arcp contract afn float %i.bi, -2.000000e-02
  store float %7, ptr %i.e, align 16, !tbaa !148
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.cs = fsub reassoc nsz arcp contract afn float %.pre223, %i.cr
  store float %i.cs, ptr %8, align 4, !tbaa !148
  %9 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %10 = fadd reassoc nsz arcp contract afn float %i.bi, 2.000000e-02
  store float %10, ptr %9, align 8, !tbaa !148
  %11 = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %12 = fadd reassoc nsz arcp contract afn float %.pre223, %i.cr
  store float %12, ptr %11, align 4, !tbaa !148
  call void @dt_color_picker_backtransform_box(ptr noundef nonnull %i.k, i32 noundef 2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bd) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.42) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_get_zoom_pos.exit188
  call void @dt_color_picker_backtransform_box(ptr noundef nonnull %i.k, i32 noundef 1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) #16
  %i.ct = load ptr, ptr %i.af, align 16, !tbaa !122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 348
  store i32 0, ptr %i.cu, align 4, !tbaa !163
  call void @dt_control_queue_redraw_center() #16
  br label %.critedge185

bb.s:                                             ; preds = %bb.g
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !297
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !180
  %.not164 = icmp eq i32 %i.cz, 0
  br i1 %.not164, label %.thread204, label %_get_zoom_pos.exit189

_get_zoom_pos.exit189:                            ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 2680
  %i.db = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.dc = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.da, float noundef %i.db, float noundef %i.dc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.0214.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !386 ; 2 uses
  %.not165215 = icmp eq ptr %.0214.pre, null
  br i1 %.not165215, label %.thread204, label %.lr.ph

.lr.ph:                                           ; preds = %_get_zoom_pos.exit189
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.de = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  %i.df = sitofp reassoc nsz arcp contract afn i32 %i.ak to float
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %.thread
  %.0216 = phi ptr [ %.0214.pre, %.lr.ph ], [ %.0, %.thread ] ; 2 uses
  %i.dj = load ptr, ptr %.0216, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !207
  switch i32 %i.dl, label %.thread [
    i32 1, label %bb.u
    i32 0, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.dm = load i32, ptr %i.dd, align 8, !tbaa !387
  %i.dn = and i32 %i.dm, 2
  %.not166 = icmp eq i32 %i.dn, 0
  br i1 %.not166, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  call void @dt_color_picker_transform_box(ptr noundef %i.k, i32 noundef 2, ptr noundef nonnull %i.do, ptr noundef nonnull %i.f, i32 noundef 1) #16
  %i.dp = load float, ptr %i.a, align 4, !tbaa !148 ; 2 uses
  %i.dq = load float, ptr %i.f, align 16, !tbaa !148
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dp, %i.dq
  %i.ds = load float, ptr %i.dh, align 8
  %i.dt = fcmp reassoc nsz arcp contract afn ogt float %i.dp, %i.ds
  %or.cond180 = select i1 %i.dr, i1 true, i1 %i.dt
  br i1 %or.cond180, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = load float, ptr %i.b, align 4, !tbaa !148 ; 2 uses
  %i.dv = load float, ptr %i.dg, align 4, !tbaa !148
  %i.dw = fcmp reassoc nsz arcp contract afn olt float %i.du, %i.dv
  %i.dx = load float, ptr %i.di, align 4
  %i.dy = fcmp reassoc nsz arcp contract afn ogt float %i.du, %i.dx
  %or.cond183 = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %or.cond183, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  call void @dt_lib_colorpicker_set_box_area(ptr noundef %i.dz, ptr noundef nonnull %i.do) #16
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.ea = load i32, ptr %i.dd, align 8, !tbaa !387
  %i.eb = and i32 %i.ea, 1
  %.not167 = icmp eq i32 %i.eb, 0
  br i1 %.not167, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = load float, ptr %i.c, align 4, !tbaa !148 ; 3 uses
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, 3.000000e+00
  %i.ee = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ed) ; 2 uses
  %i.ef = fcmp reassoc nsz arcp contract afn olt float %i.ee, 2.600000e+01
  %i.eg = select reassoc nsz arcp contract afn i1 %i.ef, float 2.600000e+01, float %i.ee ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.ec, %i.de
  %i.ei = fdiv reassoc nsz arcp contract afn float %i.eg, %i.eh
  call void @dt_color_picker_transform_box(ptr noundef %i.k, i32 noundef 1, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.f, i32 noundef 1) #16
  %i.ej = load float, ptr %i.a, align 4, !tbaa !148
  %i.ek = load float, ptr %i.f, align 16, !tbaa !148
  %i.el = fsub reassoc nsz arcp contract afn float %i.ej, %i.ek
  %i.em = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.el)
  %i.en = fcmp reassoc nsz arcp contract afn uge float %i.em, %i.ei
  br i1 %i.en, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = fmul reassoc nsz arcp contract afn float %i.ec, %i.df
  %i.ep = fdiv reassoc nsz arcp contract afn float %i.eg, %i.eo
  %i.eq = load float, ptr %i.b, align 4, !tbaa !148
  %i.er = load float, ptr %i.dg, align 4, !tbaa !148
  %i.es = fsub reassoc nsz arcp contract afn float %i.eq, %i.er
  %i.et = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.es)
  %i.eu = fcmp reassoc nsz arcp contract afn uge float %i.et, %i.ep
  br i1 %i.eu, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  call void @dt_lib_colorpicker_set_point(ptr noundef %i.ev, ptr noundef nonnull %i.dj) #16
  br label %bb.ac

.thread:                                          ; preds = %bb.t, %bb.z, %bb.aa, %bb.u, %bb.v, %bb.w, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  %i.ew = getelementptr inbounds nuw i8, ptr %.0216, i64 8
  %.0 = load ptr, ptr %i.ew, align 8, !tbaa !386  ; 2 uses
  %.not165 = icmp eq ptr %.0, null
  br i1 %.not165, label %.thread204, label %bb.t

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %i.ex = load ptr, ptr %i.af, align 16, !tbaa !122
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 348
  store i32 0, ptr %i.ey, align 4, !tbaa !163
  call void @dt_control_queue_redraw_center() #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %.critedge185

.thread204:                                       ; preds = %.thread, %_get_zoom_pos.exit189, %bb.s
  %i.ez = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !207
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.ad, label %.critedge185

bb.ad:                                            ; preds = %.thread204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @dt_lib_colorpicker_reset_box_area(ptr noundef nonnull %i.g) #16
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  call void @dt_lib_colorpicker_set_box_area(ptr noundef %i.fc, ptr noundef nonnull %i.g) #16
  %i.fd = load ptr, ptr %i.af, align 16, !tbaa !122
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 348
  store i32 0, ptr %i.fe, align 4, !tbaa !163
  call void @dt_control_queue_redraw_center() #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %.critedge185

.critedge187:                                     ; preds = %bb.g, %bb.f
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 2160
  %i.fg = load ptr, ptr %i.ff, align 16, !tbaa !188
  %.not170 = icmp eq ptr %i.fg, null
  br i1 %.not170, label %bb.ae, label %_get_zoom_pos.exit190

_get_zoom_pos.exit190:                            ; preds = %.critedge187
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 2680
  %i.fi = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.fj = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.fh, float noundef %i.fi, float noundef %i.fj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call fastcc void @_preview_pipe_zoom_correction(ptr noundef nonnull %i.k, ptr noundef %i.h, ptr noundef %i.i)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !187
  %i.fm = load float, ptr %i.a, align 4, !tbaa !148
  %i.fn = load float, ptr %i.h, align 4, !tbaa !148
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, %i.fm
  %i.fp = load float, ptr %i.b, align 4, !tbaa !148
  %i.fq = load float, ptr %i.i, align 4, !tbaa !148
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, %i.fp
  %i.fs = call i32 @dt_masks_events_button_pressed(ptr noundef %i.fl, float noundef %i.fo, float noundef %i.fr, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #16 ; 2 uses
  %.not171 = icmp eq i32 %i.fs, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br i1 %.not171, label %bb.ae, label %.critedge185

bb.ae:                                            ; preds = %_get_zoom_pos.exit190, %.critedge187
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !187 ; 2 uses
  %.not172 = icmp eq ptr %i.fu, null
  br i1 %.not172, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 256
  %i.fw = load ptr, ptr %i.fv, align 16, !tbaa !385
  %.not173 = icmp eq ptr %i.fw, null
  br i1 %.not173, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !57
end_hunk_0
