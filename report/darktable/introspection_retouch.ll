Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@rt_merge_from_scale_update:bb.a
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load atomic i32, ptr %i.c seq_cst, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 13204 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !194  ; 2 uses
  %i.i = icmp sgt i32 %0, %i.h
  %i.j = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 13212 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !204
  %i.n = icmp eq i32 %i.m, %i.k
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !36  ; 3 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 13208
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.130, i32 noundef %i.r) #27 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202
  call void @gtk_label_set_text(ptr noundef %i.u, ptr noundef nonnull %i.a) #27
  %i.v = load i32, ptr %i.g, align 4, !tbaa !194
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.130, i32 noundef %i.v) #27 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !203
  call void @gtk_label_set_text(ptr noundef %i.y, ptr noundef nonnull %i.a) #27
  %i.z = load i32, ptr %i.l, align 4, !tbaa !204
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.130, i32 noundef %i.z) #27 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !205
  call void @gtk_label_set_text(ptr noundef %i.ac, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  call void @dt_dev_add_history_item(ptr noundef %i.ad, ptr noundef nonnull %1, i32 noundef 1) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rt_curr_scale_update(i32 noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load atomic i32, ptr %i.c seq_cst, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !36  ; 5 uses
  %i.i = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.i, i32 16) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 13208 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !191
  %i.m = icmp eq i32 %i.l, %i.j
  br i1 %i.m, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.k, align 4, !tbaa !191
  tail call fastcc void @rt_show_forms_for_current_scale(ptr noundef nonnull %1)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.n) #27 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !241
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 13216
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = fcmp reassoc nsz arcp contract afn oeq float %i.t, -3.000000e+00
  br i1 %i.u, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 13220
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fcmp reassoc nsz arcp contract afn oeq float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 13224
  %i.z = load float, ptr %i.y, align 4, !tbaa !12
  %i.aa = fcmp reassoc nsz arcp contract afn oeq float %i.z, 3.000000e+00
  br i1 %i.aa, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !215
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !191 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 13204
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !194
  %.not25 = icmp sgt i32 %i.ae, %i.ah
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.ab, align 4, !tbaa !215
  store i32 1, ptr %i.p, align 8, !tbaa !241
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.n) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !191
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.130, i32 noundef %i.aj) #27 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !202
  call void @gtk_label_set_text(ptr noundef %i.am, ptr noundef nonnull %i.a) #27
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 13204
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.130, i32 noundef %i.ao) #27 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !203
  call void @gtk_label_set_text(ptr noundef %i.ar, ptr noundef nonnull %i.a) #27
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 13212
  %i.at = load i32, ptr %i.as, align 4, !tbaa !204
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.130, i32 noundef %i.at) #27 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !205
  call void @gtk_label_set_text(ptr noundef %i.aw, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  call void @dt_dev_add_history_item(ptr noundef %i.ax, ptr noundef nonnull %1, i32 noundef 1) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b, %bb.a
  ret void
}

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #3

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_dev_reprocess_center(ptr noundef) local_unnamed_addr #3

declare void @dtgtk_gradient_slider_multivalue_get_values(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_color_chooser_get_rgba(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_dev_add_masks_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_masks_get_from_id_ext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_masks_get_area(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rt_masks_point_calc_delta(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6, i32 noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = icmp eq i32 %7, 1                        ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val29 = load ptr, ptr %i.c, align 8, !tbaa !243 ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 16
  %.val30 = load float, ptr %i.d, align 4, !tbaa !245 ; 2 uses
  %i.e = getelementptr i8, ptr %.val29, i64 144
  %i.f = load <2 x i32>, ptr %i.e, align 16, !tbaa !13
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 2 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = fmul reassoc nsz arcp contract afn float %.val30, %i.h ; 2 uses
  %i.j = extractelement <2 x float> %i.g, i64 1
  %i.k = fmul reassoc nsz arcp contract afn float %.val30, %i.j ; 2 uses
  %i.l = load float, ptr %3, align 4, !tbaa !12
  %i.m = fmul reassoc nsz arcp contract afn float %i.i, %i.l
  store float %i.m, ptr %i.a, align 16, !tbaa !12
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load float, ptr %8, align 4, !tbaa !12
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load float, ptr %4, align 4, !tbaa !12
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.i
  store float %i.r, ptr %i.p, align 8, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = load float, ptr %3, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !243  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load i32, ptr %i.v, align 16, !tbaa !346
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to float ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn float %i.s, %i.x
  store float %i.y, ptr %i.a, align 16, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 148
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !347
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to float ; 2 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %i.aa, %i.ad
  %i.af = load float, ptr %4, align 4, !tbaa !12
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.x
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ag, ptr %i.ah, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink35 = phi float [ %i.ad, %bb.c ], [ %i.k, %bb.b ]
  %i.ai = phi ptr [ %i.u, %bb.c ], [ %.val29, %bb.b ]
  %.sink33 = phi float [ %i.ae, %bb.c ], [ %i.o, %bb.b ]
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !12
  %11 = fmul reassoc nsz arcp contract afn float %10, %.sink35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store float %.sink33, ptr %i.aj, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  store float %11, ptr %i.ak, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !118
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ao = load i32, ptr %i.an, align 16, !tbaa !348
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ao to double
  %i.aq = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.am, ptr noundef nonnull %i.ai, double noundef %i.ap, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 2) #27 ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load float, ptr %i.a, align 16, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load float, ptr %i.as, align 8, !tbaa !12
  %i.au = fsub reassoc nsz arcp contract afn float %i.ar, %i.at ; 2 uses
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.au, ptr %5, align 4, !tbaa !12
  %i.av = load float, ptr %i.aj, align 4, !tbaa !12
  %i.aw = load float, ptr %i.ak, align 4, !tbaa !12
  %i.ax = fsub reassoc nsz arcp contract afn float %i.av, %i.aw
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !245
  %i.ba = fmul reassoc nsz arcp contract afn float %i.au, %i.az
  store float %i.ba, ptr %5, align 4, !tbaa !12
  %i.bb = load float, ptr %i.aj, align 4, !tbaa !12
  %i.bc = load float, ptr %i.ak, align 4, !tbaa !12
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = load float, ptr %i.ay, align 4, !tbaa !245
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bd, %i.be
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi float [ %i.bf, %bb.g ], [ %i.ax, %bb.f ]
  store float %storemerge, ptr %6, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.aq
}

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @dt_masks_get_source_area(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_retouch_clone(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5, float noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !249
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !247
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.c, 4
  %i.h = mul i64 %i.g, %i.f
  %i.i = tail call ptr @dt_alloc_aligned(i64 noundef %i.h) #27 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 64) ]
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.149) #27
  br label %rt_copy_image_masked.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.a, align 4, !tbaa !249
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !249
  %..i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.m)
  %i.n = sext i32 %..i to i64
  %i.o = shl nsw i64 %i.n, 4                      ; 3 uses
  %i.p = load i32, ptr %i.d, align 4, !tbaa !247  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !247
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.r) ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %rt_copy_in_to_out.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !246
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !246
  %i.y = load i32, ptr %3, align 4, !tbaa !248
  %i.z = load i32, ptr %1, align 4, !tbaa !248
  %i.aa = add i32 %4, %i.z
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = add i32 %i.v, %5
  %i.ad = sub i32 %i.x, %i.ac
  %i.ae = sext i32 %i.ab to i64                   ; 3 uses
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.s to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ag = icmp eq i32 %i.s, 1
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ah = add nsw i64 %indvars.iv.i, %i.af
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !249
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.ah, %i.aj
  %i.al = add nsw i64 %i.ak, %i.ae
  %i.am = load i32, ptr %i.a, align 4, !tbaa !249
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %indvars.iv.i, 2
  %i.ap = mul i64 %i.ao, %i.an
  %.idx = shl i64 %i.al, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.ar, ptr readonly align 4 %i.aq, i64 %i.o, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = add nsw i64 %indvars.iv.next.i, %i.af
  %i.at = load i32, ptr %i.l, align 4, !tbaa !249
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.as, %i.au
  %i.aw = add nsw i64 %i.av, %i.ae
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !249
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.ba = mul i64 %i.az, %i.ay
  %.idx.1 = shl i64 %i.aw, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.bc, ptr readonly align 4 %i.bb, i64 %i.o, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %rt_copy_in_to_out.exitthread-pre-split.unr-lcssa, label %bb.d

rt_copy_in_to_out.exitthread-pre-split.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %rt_copy_in_to_out.exitthread-pre-split, label %.epil.preheader

.epil.preheader:                                  ; preds = %rt_copy_in_to_out.exitthread-pre-split.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %rt_copy_in_to_out.exitthread-pre-split.unr-lcssa ] ; 2 uses
  %lcmp.mod44 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.bd = add nsw i64 %indvars.iv.i.epil.init, %i.af
  %i.be = load i32, ptr %i.l, align 4, !tbaa !249
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul nsw i64 %i.bd, %i.bf
  %i.bh = add nsw i64 %i.bg, %i.ae
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !249
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %indvars.iv.i.epil.init, 2
  %i.bl = mul i64 %i.bk, %i.bj
  %.idx.epil = shl i64 %i.bh, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.epil
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.bn, ptr readonly align 4 %i.bm, i64 %i.o, i1 false)
  br label %rt_copy_in_to_out.exitthread-pre-split

rt_copy_in_to_out.exitthread-pre-split:           ; preds = %rt_copy_in_to_out.exitthread-pre-split.unr-lcssa, %.epil.preheader
  %.pr = load i32, ptr %i.d, align 4, !tbaa !247
  br label %rt_copy_in_to_out.exit

rt_copy_in_to_out.exit:                           ; preds = %rt_copy_in_to_out.exitthread-pre-split, %bb.c
  %i.bo = phi i32 [ %.pr, %rt_copy_in_to_out.exitthread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph44.i, label %rt_copy_image_masked.exit

.lr.ph44.i:                                       ; preds = %rt_copy_in_to_out.exit
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !249 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !246 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !246 ; 2 uses
  %invariant.op.i = sub i32 %i.bs, %i.bu
  %i.bv = load i32, ptr %i.l, align 4, !tbaa !249 ; 3 uses
  %i.bw = load i32, ptr %3, align 4, !tbaa !248   ; 2 uses
  %i.bx = load i32, ptr %1, align 4, !tbaa !248   ; 2 uses
  %invariant.op46.i = sub i32 %i.bw, %i.bx
  %i.by = icmp sgt i32 %i.bq, 0
  br i1 %i.by, label %.lr.ph.preheader.i, label %rt_copy_image_masked.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph44.i
  %i.bz = zext nneg i32 %i.bq to i64              ; 6 uses
  %wide.trip.count52.i = zext nneg i32 %i.bo to i64 ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %scevgep = getelementptr i8, ptr %0, i64 %i.ca
  %i.cb = sub i32 %i.bs, %i.bu
  %i.cc = mul i32 %i.bv, %i.cb
  %i.cd = add i32 %i.bw, %i.cc
  %i.ce = sub i32 %i.cd, %i.bx
end_hunk_0
