Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_exposure?download=true
inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@gui_update:bb.a
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !137
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.be, float noundef %i.bc) #22
  %i.bf = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ba) #22 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !88
  tail call void @free(ptr noundef %i.bh) #22
  store ptr null, ptr %i.bg, align 16, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !138
  tail call void @gtk_label_set_text(ptr noundef %i.bj, ptr noundef nonnull @.str.11) #22
  %i.bk = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ba) #22 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store float f0xFF7FFFFF, ptr %i.bl, align 4, !tbaa !89
  %i.bm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ba) #22 ; 0 uses
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !23
  %cond = icmp eq i32 %i.bn, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_get_highlight_bias.exit
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !139
  tail call void @gtk_stack_set_visible_child_name(ptr noundef %i.bp, ptr noundef nonnull @.str.12) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call fastcc void @_deflicker_prepare_histogram(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bq)
  br label %bb.k

bb.j:                                             ; preds = %_get_highlight_bias.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !139
  tail call void @gtk_stack_set_visible_child_name(ptr noundef %i.bs, ptr noundef nonnull @.str.13) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !140
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.bu, i32 noundef 0) #22
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @dt_gui_update_collapsible_section(ptr noundef nonnull %i.bv) #22
  ret void
}

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

declare void @gtk_button_set_label(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_stack_set_visible_child_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_deflicker_prepare_histogram(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.dt_image_t, align 16        ; 8 uses
  %4 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 6 uses
  %5 = alloca %struct.dt_dev_histogram_collection_params_t, align 8 ; 6 uses
  %6 = alloca %struct.dt_histogram_roi_t, align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1552
  %i.d = load i32, ptr %i.c, align 16, !tbaa !207
  %i.e = tail call ptr @dt_image_cache_get(i32 noundef %i.d, i8 noundef signext 114) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1888) %3, ptr noundef nonnull align 16 dereferenceable(1888) %i.e, i64 1888, i1 false), !tbaa.struct !214
  tail call void @dt_image_cache_read_release(ptr noundef nonnull %i.e) #22
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1488
  %i.g = load i32, ptr %i.f, align 16
  %i.h = icmp ne i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1492
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp ne i32 %i.j, 2
  %or.cond7 = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond7, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1552
  %i.n = load i32, ptr %i.m, align 16, !tbaa !207
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %4, i32 noundef %i.n, i32 noundef 12, i32 noundef 3, i8 noundef signext 114, ptr noundef nonnull @.str.14, i32 noundef 385) #22
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !216  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #22
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1124
  call void (ptr, ...) @dt_control_log(ptr noundef %i.q, ptr noundef nonnull %i.r) #22
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i32 noundef 389) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 1380
  %i.u = load <8 x i32>, ptr %i.t, align 4, !tbaa !16
  %i.v = shufflevector <8 x i32> %i.u, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.v, ptr %6, align 16, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1412
  %i.y = load <2 x i32>, ptr %i.x, align 4, !tbaa !16
  store <2 x i32> %i.y, ptr %i.w, align 16, !tbaa !16
  store ptr %6, ptr %5, align 8, !tbaa !217
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 65536, ptr %i.z, align 8, !tbaa !218
  call void @dt_histogram_helper(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %i.p, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null) #22
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i32 noundef 410) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_update_collapsible_section(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @calloc(i64 noundef 1, i64 noundef 4) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !142
  store i32 -999, ptr %i.a, align 4, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.b) #22
  store ptr null, ptr %i.a, align 8, !tbaa !142
  ret void
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_auto_set_exposure(ptr noundef %0, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_auto_set_exposure(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !79  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.g = load float, ptr %i.f, align 16, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.i = load float, ptr %i.h, align 16, !tbaa !13
  %i.j = fcmp reassoc nsz arcp contract afn olt float %i.g, %i.i
  br i1 %i.j, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @dt_ioppr_get_pipe_input_profile_info(ptr noundef %1) #22 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.o = load float, ptr %i.m, align 16, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  %i.q = load float, ptr %i.p, align 4, !tbaa !13
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 596
  %2 = load <2 x float>, ptr %i.n, align 4, !tbaa !13
  %3 = load <2 x float>, ptr %i.s, align 4, !tbaa !13
  %4 = fmul reassoc nsz arcp contract afn <2 x float> %3, %2 ; 2 uses
  %5 = extractelement <2 x float> %4, i64 0
  %6 = fadd reassoc nsz arcp contract afn float %5, %i.r
  %7 = extractelement <2 x float> %4, i64 1
  %i.t = fadd reassoc nsz arcp contract afn float %6, %7 ; 3 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, f0x3C111AA7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, f0x40F92F69
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.e:                                             ; preds = %bb.c
  %i.x = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.t) #25
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.e, %bb.d
  %i.y = phi reassoc nsz arcp contract afn float [ %i.x, %bb.e ], [ %i.w, %bb.d ]
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 1.160000e+02
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, -1.600000e+01 ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, 8.620690e-03
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, f0x3E0D3DCB ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, <float f0x3E038026, float 0.000000e+00> ; 2 uses
  %i.ag = insertelement <2 x float> %i.af, float %i.ac, i64 0 ; 4 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ag, splat (float f0x3E53DCB1)
  %i.ai = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ag
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ai, %i.ag
  %i.ak = fadd reassoc nsz arcp contract afn <2 x float> %i.af, splat (float f0xBC911AA6)
  %i.al = select <2 x i1> %i.ah, <2 x float> %i.aj, <2 x float> %i.ak ; 3 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.an = fmul reassoc nsz arcp contract afn <4 x float> %i.am, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float 0.000000e+00>
  store <4 x float> %i.an, ptr %i.a, align 16, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.a, ptr noundef nonnull %i.ao)
  %i.ap = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #22
  %i.aq = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.ar = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ap, double noundef %i.aq) #22 ; 2 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = atomicrmw add ptr %i.at, i32 1 seq_cst, align 4 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !144
  tail call void @gtk_label_set_text(ptr noundef %i.aw, ptr noundef %i.ar) #22
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.az = atomicrmw sub ptr %i.ay, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @g_free(ptr noundef %i.ar) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !140
  %i.bc = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.bb) #22
  switch i32 %i.bc, label %_exposure_set_white.exit [
    i32 1, label %bb.f
    i32 0, label %bb.o
  ]

bb.f:                                             ; preds = %dt_XYZ_to_Lab.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !42 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !24
  %.not49 = icmp eq i32 %i.bg, 0
  br i1 %.not49, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %0, i64 664
  %.val51 = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp eq ptr %.val51, null
  br i1 %.not.i, label %_get_exposure_bias.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.val51, i64 124
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !90
  br label %_get_exposure_bias.exit

_get_exposure_bias.exit:                          ; preds = %bb.g, %bb.h
  %.0.i55 = phi nsz float [ 0.000000e+00, %bb.g ], [ %i.bj, %bb.h ] ; 4 uses
  %i.bk = fcmp reassoc nsz arcp contract afn une float %.0.i55, f0xFF7FFFFF
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %.0.i55, 5.000000e+00
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %.0.i55, -5.000000e+00
  %i.bn = select reassoc nsz arcp contract afn i1 %i.bm, float -5.000000e+00, float %.0.i55
  %i.bo = select reassoc nsz arcp contract afn i1 %i.bl, float 5.000000e+00, float %i.bn
  %.08.i = select nsz i1 %i.bk, float %i.bo, float 0.000000e+00
  %i.bp = fsub reassoc nsz arcp contract afn float %i.be, %.08.i
  br label %bb.i

bb.i:                                             ; preds = %_get_exposure_bias.exit, %bb.f
  %.044 = phi nsz float [ %i.bp, %_get_exposure_bias.exit ], [ %i.be, %bb.f ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !25
  %.not50 = icmp eq i32 %i.br, 0
  br i1 %.not50, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr i8, ptr %0, i64 664
  %.val53 = load ptr, ptr %i.bs, align 8, !tbaa !41 ; 2 uses
  %.not.i56 = icmp eq ptr %.val53, null
  br i1 %.not.i56, label %_get_highlight_bias.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.val53, i64 148
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !91 ; 2 uses
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bu, 0.000000e+00
  %spec.select.i = select nsz i1 %i.bv, float %i.bu, float 0.000000e+00
  br label %_get_highlight_bias.exit

_get_highlight_bias.exit:                         ; preds = %bb.j, %bb.k
  %.0.i57 = phi nsz float [ 0.000000e+00, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %.0.i57, 4.000000e+00
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bw, float 4.000000e+00, float %.0.i57
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %.044
  br label %bb.l

bb.l:                                             ; preds = %_get_highlight_bias.exit, %bb.i
  %.145 = phi nsz float [ %i.by, %_get_highlight_bias.exit ], [ %.044, %bb.i ]
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %.145)
  %i.ca = extractelement <2 x float> %i.al, i64 0
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.bz ; 3 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.cb, f0x3C111AA7
  br i1 %i.cc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cb, f0x40F92F69
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit58

bb.n:                                             ; preds = %bb.l
  %i.cf = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.cb) #25
  br label %dt_XYZ_to_Lab.exit58

dt_XYZ_to_Lab.exit58:                             ; preds = %bb.n, %bb.m
  %i.cg = phi reassoc nsz arcp contract afn float [ %i.cf, %bb.n ], [ %i.ce, %bb.m ]
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, 1.160000e+02
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, -1.600000e+01 ; 2 uses
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 104
  %i.cl = atomicrmw add ptr %i.ck, i32 1 seq_cst, align 4 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !137
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cn, float noundef %i.ci) #22
  %.val54 = load ptr, ptr %i.b, align 16, !tbaa !79
  tail call fastcc void @_paint_hue(ptr %.val54)
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = atomicrmw sub ptr %i.cp, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.10, float noundef %i.ci) #22
  br label %_exposure_set_white.exit

bb.o:                                             ; preds = %dt_XYZ_to_Lab.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.cs = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cr) #22 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !137
  %i.cv = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.cu) #22
  %i.cw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cr) #22 ; 0 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cv, 8.620690e-03
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, f0x3E0D3DCB ; 5 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt float %i.cy, f0x3E53DCB1
  %i.da = fmul reassoc nsz arcp contract afn float %i.cy, %i.cy
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.cy
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cy, f0x3E038026
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, f0xBC911AA6
  %i.de = select reassoc nsz arcp contract afn i1 %i.cz, float %i.db, float %i.dd
  %i.df = extractelement <2 x float> %i.al, i64 0
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.df, %i.de
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dg, float f0x1E3CE508)
  %i.di = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.dh) ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !24
  %.not = icmp eq i32 %i.dk, 0
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr i8, ptr %0, i64 664
  %.val = load ptr, ptr %i.dl, align 8, !tbaa !41 ; 2 uses
  %.not.i59 = icmp eq ptr %.val, null
  br i1 %.not.i59, label %_get_exposure_bias.exit62, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !90
  br label %_get_exposure_bias.exit62

_get_exposure_bias.exit62:                        ; preds = %bb.p, %bb.q
  %.0.i60 = phi nsz float [ 0.000000e+00, %bb.p ], [ %i.dn, %bb.q ] ; 4 uses
  %i.do = fcmp reassoc nsz arcp contract afn une float %.0.i60, f0xFF7FFFFF
  %i.dp = fcmp reassoc nsz arcp contract afn ogt float %.0.i60, 5.000000e+00
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %.0.i60, -5.000000e+00
  %i.dr = select reassoc nsz arcp contract afn i1 %i.dq, float -5.000000e+00, float %.0.i60
  %i.ds = select reassoc nsz arcp contract afn i1 %i.dp, float 5.000000e+00, float %i.dr
  %.08.i61 = select nsz i1 %i.do, float %i.ds, float 0.000000e+00
  %i.dt = fsub reassoc nsz arcp contract afn float %i.di, %.08.i61
  br label %bb.r

bb.r:                                             ; preds = %_get_exposure_bias.exit62, %bb.o
  %.0 = phi nsz float [ %i.dt, %_get_exposure_bias.exit62 ], [ %i.di, %bb.o ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !25
  %.not48 = icmp eq i32 %i.dv, 0
  br i1 %.not48, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = getelementptr i8, ptr %0, i64 664
end_hunk_0
