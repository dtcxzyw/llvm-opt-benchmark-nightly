Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_exposure?download=true
inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@g_strdup_printf
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
  %i.k = tail call ptr @dt_ioppr_get_pipe_input_profile_info(ptr noundef %1) #22 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.p = load float, ptr %i.m, align 16, !tbaa !13
  %i.q = load float, ptr %i.n, align 4, !tbaa !13
  %i.r = load float, ptr %i.o, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  %i.t = load float, ptr %i.s, align 4, !tbaa !13
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 596
  %i.w = load float, ptr %i.v, align 4, !tbaa !13
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.q
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 600
  %i.aa = load float, ptr %i.z, align 4, !tbaa !13
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.r
  %i.ac = fadd reassoc nsz arcp contract afn float %i.y, %i.ab ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt float %i.ac, f0x3C111AA7
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ac, f0x40F92F69
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ac) #25
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.e, %bb.d
  %i.ah = phi reassoc nsz arcp contract afn float [ %i.ag, %bb.e ], [ %i.af, %bb.d ]
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, 1.160000e+02
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, -1.600000e+01 ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 8.620690e-03
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, f0x3E0D3DCB ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, <float f0x3E038026, float 0.000000e+00> ; 2 uses
  %i.ap = insertelement <2 x float> %i.ao, float %i.al, i64 0 ; 4 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ap, splat (float f0x3E53DCB1)
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.ap, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.ap
  %i.at = fadd reassoc nsz arcp contract afn <2 x float> %i.ao, splat (float f0xBC911AA6)
  %i.au = select <2 x i1> %i.aq, <2 x float> %i.as, <2 x float> %i.at ; 3 uses
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn <4 x float> %i.av, <float 9.642000e-01, float poison, float f0x3F532CA5, float 0.000000e+00>
  %2 = shufflevector <4 x float> %i.aw, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store <4 x float> %2, ptr %i.a, align 16, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.a, ptr noundef nonnull %i.ax)
  %i.ay = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #22
  %i.az = fpext reassoc nsz arcp contract afn float %i.aj to double
  %i.ba = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ay, double noundef %i.az) #22 ; 2 uses
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bd = atomicrmw add ptr %i.bc, i32 1 seq_cst, align 4 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !144
  tail call void @gtk_label_set_text(ptr noundef %i.bf, ptr noundef %i.ba) #22
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @g_free(ptr noundef %i.ba) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !140
  %i.bl = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.bk) #22
  switch i32 %i.bl, label %_exposure_set_white.exit [
    i32 1, label %bb.f
    i32 0, label %bb.o
  ]

bb.f:                                             ; preds = %dt_XYZ_to_Lab.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !42 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !24
  %.not49 = icmp eq i32 %i.bp, 0
  br i1 %.not49, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr i8, ptr %0, i64 664
  %.val51 = load ptr, ptr %i.bq, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp eq ptr %.val51, null
  br i1 %.not.i, label %_get_exposure_bias.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.val51, i64 124
  %i.bs = load float, ptr %i.br, align 4, !tbaa !90
  br label %_get_exposure_bias.exit

_get_exposure_bias.exit:                          ; preds = %bb.g, %bb.h
  %.0.i55 = phi nsz float [ 0.000000e+00, %bb.g ], [ %i.bs, %bb.h ] ; 4 uses
  %i.bt = fcmp reassoc nsz arcp contract afn une float %.0.i55, f0xFF7FFFFF
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %.0.i55, 5.000000e+00
  %i.bv = fcmp reassoc nsz arcp contract afn olt float %.0.i55, -5.000000e+00
  %i.bw = select reassoc nsz arcp contract afn i1 %i.bv, float -5.000000e+00, float %.0.i55
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bu, float 5.000000e+00, float %i.bw
  %.08.i = select nsz i1 %i.bt, float %i.bx, float 0.000000e+00
  %i.by = fsub reassoc nsz arcp contract afn float %i.bn, %.08.i
  br label %bb.i

bb.i:                                             ; preds = %_get_exposure_bias.exit, %bb.f
  %.044 = phi nsz float [ %i.by, %_get_exposure_bias.exit ], [ %i.bn, %bb.f ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25
  %.not50 = icmp eq i32 %i.ca, 0
  br i1 %.not50, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr i8, ptr %0, i64 664
  %.val53 = load ptr, ptr %i.cb, align 8, !tbaa !41 ; 2 uses
  %.not.i56 = icmp eq ptr %.val53, null
  br i1 %.not.i56, label %_get_highlight_bias.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %.val53, i64 148
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !91 ; 2 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ogt float %i.cd, 0.000000e+00
  %spec.select.i = select nsz i1 %i.ce, float %i.cd, float 0.000000e+00
  br label %_get_highlight_bias.exit

_get_highlight_bias.exit:                         ; preds = %bb.j, %bb.k
  %.0.i57 = phi nsz float [ 0.000000e+00, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn ogt float %.0.i57, 4.000000e+00
  %i.cg = select reassoc nsz arcp contract afn i1 %i.cf, float 4.000000e+00, float %.0.i57
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %.044
  br label %bb.l

bb.l:                                             ; preds = %_get_highlight_bias.exit, %bb.i
  %.145 = phi nsz float [ %i.ch, %_get_highlight_bias.exit ], [ %.044, %bb.i ]
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %.145)
  %i.cj = extractelement <2 x float> %i.au, i64 0
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ci ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.ck, f0x3C111AA7
  br i1 %i.cl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = fmul reassoc nsz arcp contract afn float %i.ck, f0x40F92F69
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit58

bb.n:                                             ; preds = %bb.l
  %i.co = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ck) #25
  br label %dt_XYZ_to_Lab.exit58

dt_XYZ_to_Lab.exit58:                             ; preds = %bb.n, %bb.m
  %i.cp = phi reassoc nsz arcp contract afn float [ %i.co, %bb.n ], [ %i.cn, %bb.m ]
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, 1.160000e+02
  %i.cr = fadd reassoc nsz arcp contract afn float %i.cq, -1.600000e+01 ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  %i.cu = atomicrmw add ptr %i.ct, i32 1 seq_cst, align 4 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !137
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cw, float noundef %i.cr) #22
  %.val54 = load ptr, ptr %i.b, align 16, !tbaa !79
  tail call fastcc void @_paint_hue(ptr %.val54)
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.cz = atomicrmw add ptr %i.cy, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.10, float noundef %i.cr) #22
  br label %_exposure_set_white.exit

bb.o:                                             ; preds = %dt_XYZ_to_Lab.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.db = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.da) #22 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !137
  %i.de = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.dd) #22
  %i.df = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.da) #22 ; 0 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.de, 8.620690e-03
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, f0x3E0D3DCB ; 5 uses
  %i.di = fcmp reassoc nsz arcp contract afn ogt float %i.dh, f0x3E53DCB1
  %i.dj = fmul reassoc nsz arcp contract afn float %i.dh, %i.dh
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.dh
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dh, f0x3E038026
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, f0xBC911AA6
  %i.dn = select reassoc nsz arcp contract afn i1 %i.di, float %i.dk, float %i.dm
  %i.do = extractelement <2 x float> %i.au, i64 0
  %i.dp = fdiv reassoc nsz arcp contract afn float %i.do, %i.dn
  %i.dq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dp, float f0x1E3CE508)
  %i.dr = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.dq) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !24
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = getelementptr i8, ptr %0, i64 664
  %.val = load ptr, ptr %i.du, align 8, !tbaa !41 ; 2 uses
  %.not.i59 = icmp eq ptr %.val, null
  br i1 %.not.i59, label %_get_exposure_bias.exit62, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !90
  br label %_get_exposure_bias.exit62

_get_exposure_bias.exit62:                        ; preds = %bb.p, %bb.q
  %.0.i60 = phi nsz float [ 0.000000e+00, %bb.p ], [ %i.dw, %bb.q ] ; 4 uses
  %i.dx = fcmp reassoc nsz arcp contract afn une float %.0.i60, f0xFF7FFFFF
  %i.dy = fcmp reassoc nsz arcp contract afn ogt float %.0.i60, 5.000000e+00
  %i.dz = fcmp reassoc nsz arcp contract afn olt float %.0.i60, -5.000000e+00
  %i.ea = select reassoc nsz arcp contract afn i1 %i.dz, float -5.000000e+00, float %.0.i60
  %i.eb = select reassoc nsz arcp contract afn i1 %i.dy, float 5.000000e+00, float %i.ea
  %.08.i61 = select nsz i1 %i.dx, float %i.eb, float 0.000000e+00
  %i.ec = fsub reassoc nsz arcp contract afn float %i.dr, %.08.i61
  br label %bb.r

bb.r:                                             ; preds = %_get_exposure_bias.exit62, %bb.o
  %.0 = phi nsz float [ %i.ec, %_get_exposure_bias.exit62 ], [ %i.dr, %bb.o ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !25
  %.not48 = icmp eq i32 %i.ee, 0
  br i1 %.not48, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr i8, ptr %0, i64 664
  %.val52 = load ptr, ptr %i.ef, align 8, !tbaa !41 ; 2 uses
  %.not.i63 = icmp eq ptr %.val52, null
  br i1 %.not.i63, label %_get_highlight_bias.exit66, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %.val52, i64 148
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !91 ; 2 uses
  %i.ei = fcmp reassoc nsz arcp contract afn ogt float %i.eh, 0.000000e+00
  %spec.select.i64 = select nsz i1 %i.ei, float %i.eh, float 0.000000e+00
  br label %_get_highlight_bias.exit66

_get_highlight_bias.exit66:                       ; preds = %bb.s, %bb.t
  %.0.i65 = phi nsz float [ 0.000000e+00, %bb.s ], [ %spec.select.i64, %bb.t ] ; 2 uses
  %i.ej = fcmp reassoc nsz arcp contract afn ogt float %.0.i65, 4.000000e+00
  %i.ek = select reassoc nsz arcp contract afn i1 %i.ej, float 4.000000e+00, float %.0.i65
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %.0
  br label %bb.u

bb.u:                                             ; preds = %_get_highlight_bias.exit66, %bb.r
  %.1 = phi nsz float [ %i.el, %_get_highlight_bias.exit66 ], [ %.0, %bb.r ]
  %i.em = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %.1) ; 3 uses
  %i.en = load ptr, ptr %i.d, align 8, !tbaa !95  ; 2 uses
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.em, float f0x1E3CE508)
  %i.ep = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.eo)
  %i.eq = fneg reassoc nsz arcp contract afn float %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !42
  %i.et = fcmp reassoc nsz arcp contract afn oeq float %i.es, %i.eq
  br i1 %i.et, label %_exposure_set_white.exit, label %bb.v

end_hunk_0
begin_hunk_1_@gtk_stack_new

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_soft_range(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_shortcut_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_action_widget(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_spot_settings_changed_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = cmpxchg ptr %i.b, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !79  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.i = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.h) #22
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.10, float noundef %i.i) #22
  %.val = load ptr, ptr %i.e, align 16, !tbaa !79
  tail call fastcc void @_paint_hue(ptr %.val)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !140
  %i.l = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.k) #22
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4 ; 0 uses
  %i.p = icmp eq i32 %i.l, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2760
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !240
  tail call fastcc void @_auto_set_exposure(ptr noundef nonnull %1, ptr noundef %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare ptr @gtk_drawing_area_new() local_unnamed_addr #3

declare void @gtk_widget_set_vexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_origin_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !79  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !155
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !156  ; 2 uses
  %i.g = sitofp reassoc nsz arcp contract afn i32 %i.d to double ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1440
  %i.j = load double, ptr %i.i, align 8, !tbaa !157 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, %i.g
  %i.l = fptosi double %i.k to i32
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.n = fmul reassoc nsz arcp contract afn double %i.j, %i.m
  %i.o = fptosi double %i.n to i32
  %i.p = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.l, i32 noundef %i.o) #22 ; 4 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1440
  %i.s = load double, ptr %i.r, align 8, !tbaa !157 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.p, double noundef %i.s, double noundef %i.s) #22
  %i.t = call ptr @cairo_create(ptr noundef %i.p) #22 ; 5 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1432
  %i.w = load double, ptr %i.v, align 8, !tbaa !153
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, 3.000000e+00
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn double %i.g, -8.000000e+00
  %i.aa = fptosi double %i.z to i32
  %i.ab = fmul reassoc nsz arcp contract afn float %i.y, 2.000000e+00
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.ab
  %i.ae = fptosi float %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ag = load float, ptr %i.af, align 16, !tbaa !13
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !13
  %i.ak = fpext reassoc nsz arcp contract afn <2 x float> %i.aj to <2 x double> ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = extractelement <2 x double> %i.ak, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.t, double noundef %i.ah, double noundef %i.al, double noundef %i.am) #22
  %i.an = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  call void @cairo_rectangle(ptr noundef %i.t, double noundef 4.000000e+00, double noundef %i.an, double noundef %i.ao, double noundef %i.ap) #22
  call void @cairo_fill(ptr noundef %i.t) #22
  call void @cairo_stroke(ptr noundef %i.t) #22
  call void @cairo_destroy(ptr noundef %i.t) #22
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.p, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  call void @cairo_paint(ptr noundef %1) #22
  call void @cairo_surface_destroy(ptr noundef %i.p) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 1
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_target_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !155
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !156  ; 2 uses
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.f to double ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1440
  %i.l = load double, ptr %i.k, align 8, !tbaa !157 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, %i.i
  %i.n = fptosi double %i.m to i32
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.p = fmul reassoc nsz arcp contract afn double %i.l, %i.o
  %i.q = fptosi double %i.p to i32
  %i.r = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q) #22 ; 4 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !157 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.r, double noundef %i.u, double noundef %i.u) #22
  %i.v = call ptr @cairo_create(ptr noundef %i.r) #22 ; 5 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !143
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1432
  %i.y = load double, ptr %i.x, align 8, !tbaa !153
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, 3.000000e+00
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float ; 2 uses
  %i.ab = fadd reassoc nsz arcp contract afn double %i.i, -8.000000e+00
  %i.ac = fptosi double %i.ab to i32
  %i.ad = fmul reassoc nsz arcp contract afn float %i.aa, 2.000000e+00
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.ad
  %i.ag = fptosi float %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137
  %i.aj = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.ai) #22
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 8.620690e-03
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, f0x3E0D3DCB ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, <float f0x3E038026, float 0.000000e+00> ; 2 uses
  %i.ap = insertelement <2 x float> %i.ao, float %i.al, i64 0 ; 4 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ap, splat (float f0x3E53DCB1)
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.ap, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.ap
  %i.at = fadd reassoc nsz arcp contract afn <2 x float> %i.ao, splat (float f0xBC911AA6)
  %i.au = select <2 x i1> %i.aq, <2 x float> %i.as, <2 x float> %i.at
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn <4 x float> %i.av, <float 9.642000e-01, float poison, float f0x3F532CA5, float 0.000000e+00>
  %4 = shufflevector <4 x float> %i.aw, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store <4 x float> %4, ptr %i.b, align 16, !tbaa !13
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.ax = load float, ptr %i.a, align 16, !tbaa !13
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ba = load <2 x float>, ptr %i.az, align 4, !tbaa !13
  %i.bb = fpext reassoc nsz arcp contract afn <2 x float> %i.ba to <2 x double> ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = extractelement <2 x double> %i.bb, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %i.ay, double noundef %i.bc, double noundef %i.bd) #22
  %i.be = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.ac to double
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.ag to double
  call void @cairo_rectangle(ptr noundef %i.v, double noundef 4.000000e+00, double noundef %i.be, double noundef %i.bf, double noundef %i.bg) #22
  call void @cairo_fill(ptr noundef %i.v) #22
  call void @cairo_stroke(ptr noundef %i.v) #22
  call void @cairo_destroy(ptr noundef %i.v) #22
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.r, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  call void @cairo_paint(ptr noundef %1) #22
  call void @cairo_surface_destroy(ptr noundef %i.r) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 1
}

declare ptr @dt_bauhaus_slider_new_with_range(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal float @_exposure_proxy_get_exposure(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23
  %i.d = icmp eq i32 %i.c, 1
  %.0.in.v = select i1 %i.d, i64 16, i64 8
  %.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.in.v
  %.0 = load float, ptr %.0.in, align 4, !tbaa !13
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal float @_exposure_proxy_get_effective_exposure(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load float, ptr %i.c, align 8, !tbaa !92
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal float @_exposure_proxy_get_black(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !43
  ret float %i.d
}

; Function Attrs: nounwind uwtable
define internal void @_exposure_proxy_handle_event(i32 noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2224
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !158 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !79  ; 2 uses
  %.not40 = icmp eq ptr %i.e, null
  br i1 %.not40, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not41 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %.not41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23
  %i.i = icmp eq i32 %i.h, 1
  %. = select i1 %i.i, i64 40, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ %., %bb.d ], [ 8, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241  ; 11 uses
  %i.l = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.k) #22 ; 2 uses
  %i.m = tail call reassoc nsz arcp contract afn float @dt_accel_get_speed_multiplier(ptr noundef %i.k, i32 noundef %2) #22 ; 2 uses
  %i.n = fneg reassoc nsz arcp contract afn double %1
  %spec.select = select nsz i1 %.not41, double %1, double %i.n ; 2 uses
  switch i32 %0, label %bb.h [
    i32 2, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @dt_bauhaus_widget_reset(ptr noundef %i.k) #22
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_step(ptr noundef %i.k) #22
  %i.p = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.q = fpext reassoc nsz arcp contract afn float %i.o to double
  %i.r = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.s = fmul reassoc nsz arcp contract afn double %spec.select, %i.r
  %i.t = fmul reassoc nsz arcp contract afn double %i.s, %i.q
  %i.u = fadd reassoc nsz arcp contract afn double %i.t, %i.p
  %i.v = fptrunc reassoc nsz arcp contract afn double %i.u to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.k, float noundef %i.v) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.w = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_soft_min(ptr noundef %i.k) #22
  %i.x = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_soft_max(ptr noundef %i.k) #22
  %i.y = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.z = fsub reassoc nsz arcp contract afn float %i.x, %i.w
  %i.aa = fpext reassoc nsz arcp contract afn float %i.z to double
  %i.ab = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.ac = fmul reassoc nsz arcp contract afn double %spec.select, %i.ab
  %i.ad = fmul reassoc nsz arcp contract afn double %i.ac, %i.aa
  %i.ae = fadd reassoc nsz arcp contract afn double %i.ad, %i.y
  %i.af = fptrunc reassoc nsz arcp contract afn double %i.ae to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.k, float noundef %i.af) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.ag = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.k) #22
  %i.ah = tail call ptr @dt_bauhaus_slider_get_text(ptr noundef %i.k, float noundef %i.ag) #22 ; 2 uses
  tail call void (ptr, ptr, ptr, ...) @dt_action_widget_toast(ptr noundef nonnull %i.c, ptr noundef %i.k, ptr noundef nonnull @.str.59, ptr noundef %i.ah) #22
  tail call void @g_free(ptr noundef %i.ah) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !79
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2224 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !158
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.d, align 16, !tbaa !158
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !88
  tail call void @free(ptr noundef %i.h) #22
  store ptr null, ptr %i.g, align 16, !tbaa !88
  %i.i = tail call i32 @g_idle_remove_by_data(ptr noundef nonnull %0) #22 ; 0 uses
  ret void
}

declare i32 @g_idle_remove_by_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !244
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !141
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !141
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !141
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !141
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !141
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !141
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !141
end_hunk_1
begin_hunk_2_@pthread_mutex_lock
; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @dt_image_cache_get(i32 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @dt_image_cache_read_release(ptr noundef) local_unnamed_addr #3

declare void @dt_mipmap_cache_get_with_caller(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_mipmap_cache_release_with_caller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare void @dt_histogram_helper(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_input_profile_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_XYZ_to_sRGB(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !13 ; 3 uses
  %i.c = fmul reassoc nsz arcp contract afn float %i.b, f0xBEFB31D6
  %i.d = load <2 x float>, ptr %0, align 4, !tbaa !13 ; 4 uses
  %i.e = extractelement <2 x float> %i.d, i64 0   ; 2 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, f0x40489119
  %i.g = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, f0xBFCEF57D
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, %i.f
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, %i.c ; 3 uses
  %i.k = fmul reassoc nsz arcp contract afn <2 x float> %i.d, <float 7.194530e-02, float f0x3FF54420>
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fmul reassoc nsz arcp contract afn <2 x float> %i.d, <float f0xBF7A9091, float f0xBE6A7CB9>
  %i.n = fadd reassoc nsz arcp contract afn <2 x float> %i.m, %i.l
  %i.o = insertelement <2 x float> poison, float %i.b, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, <float 3.345400e-02, float f0x3FB3DEFE>
  %i.r = fadd reassoc nsz arcp contract afn <2 x float> %i.n, %i.q ; 3 uses
  %i.s = fadd reassoc nsz arcp contract afn float %i.g, %i.e
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, %i.b ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, 0.000000e+00 ; 2 uses
  %i.v = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.w = insertelement <4 x float> %i.v, float %i.j, i64 0
  %i.x = insertelement <4 x float> %i.w, float %i.u, i64 3
  %i.y = bitcast <4 x float> %i.x to <4 x i32>    ; 2 uses
  %i.z = and <4 x i32> %i.y, splat (i32 8388607)
  %i.aa = or disjoint <4 x i32> %i.z, splat (i32 1065353216)
  %i.ab = bitcast <4 x i32> %i.aa to <4 x float>  ; 5 uses
  %i.ac = lshr <4 x i32> %i.y, splat (i32 23)
  %i.ad = and <4 x i32> %i.ac, splat (i32 255)
  %i.ae = add nsw <4 x i32> %i.ad, splat (i32 -127)
  %i.af = sitofp <4 x i32> %i.ae to <4 x float>
  %i.ag = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ab, splat (float f0x3D74552F)
  %i.ah = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ag, splat (float f0xBEEE7397)
  %i.ai = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ah, %i.ab
  %i.aj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ai, splat (float f0x3FBD96DD)
  %i.ak = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.aj, %i.ab
  %i.al = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ak, splat (float f0xC02153F6)
  %i.am = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.al, %i.ab
  %i.an = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.am, splat (float f0x4038D96C)
  %i.ao = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ab, splat (float -1.000000e+00)
  %i.ap = fmul reassoc nsz arcp contract afn <4 x float> %i.an, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.ap, %i.af
  %i.ar = fmul reassoc nsz arcp contract afn <4 x float> %i.aq, splat (float f0x3ED55555)
  %i.as = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ar, <4 x float> splat (float 1.290000e+02))
  %i.at = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.as, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.au = fadd reassoc nsz arcp contract afn <4 x float> %i.at, splat (float -5.000000e-01)
  %i.av = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.au)
  %i.aw = sitofp reassoc nsz arcp contract afn <4 x i32> %i.av to <4 x float> ; 5 uses
  %i.ax = fcmp reassoc nsz arcp contract afn ugt float %i.j, 3.130800e-03
  br i1 %i.ax, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = fmul reassoc nnan nsz arcp contract afn float %i.j, 1.292000e+01
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.014.0.vec.extract.i.i = extractelement <4 x float> %i.aw, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.at, %i.aw
  %i.az = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x3C5DBE69
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, f0x3D5509F9
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.az
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, f0x3E773CC5
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.az
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, f0x3F3168B3
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.az
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, f0x3F800016
  %i.bi = fptosi float %.sroa.014.0.vec.extract.i.i to i32
  %i.bj = shl i32 %i.bi, 23
  %i.bk = add i32 %i.bj, 1065353216
  %i.bl = bitcast i32 %i.bk to float
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bh, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, 1.055000e+00
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bn, -5.500000e-02
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bp = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.b ], [ %i.bo, %bb.c ]
  %.sroa.014.12.vec.extract.i.i = extractelement <4 x float> %i.aw, i64 3
  %foldExtExtBinop25 = fsub reassoc nsz arcp contract afn <4 x float> %i.at, %i.aw
  %i.bq = extractelement <4 x float> %foldExtExtBinop25, i64 3 ; 4 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, f0x3C5DBE69
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, f0x3D5509F9
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, f0x3E773CC5
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bq
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, f0x3F3168B3
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bq
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, f0x3F800016
  %i.bz = fptosi float %.sroa.014.12.vec.extract.i.i to i32
  %i.ca = shl i32 %i.bz, 23
  %i.cb = add i32 %i.ca, 1065353216
  %i.cc = bitcast i32 %i.cb to float
  %i.cd = fmul reassoc nsz arcp contract afn float %i.by, %i.cc
  %i.ce = fmul reassoc nsz arcp contract afn float %i.t, 0.000000e+00
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.r, splat (float 1.292000e+01)
  store float %i.bp, ptr %1, align 4, !tbaa !13
  %i.cg = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.r, splat (float 3.130800e-03)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ci = shufflevector <4 x float> %i.at, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cj = shufflevector <4 x float> %i.aw, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cj ; 4 uses
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.ck, splat (float f0x3C5DBE69)
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, splat (float f0x3D5509F9)
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.ck
  %i.co = fadd reassoc nsz arcp contract afn <2 x float> %i.cn, splat (float f0x3E773CC5)
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.ck
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float f0x3F3168B3)
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, %i.ck
  %i.cs = fadd reassoc nsz arcp contract afn <2 x float> %i.cr, splat (float f0x3F800016)
  %i.ct = fptosi <2 x float> %i.cj to <2 x i32>
  %i.cu = shl <2 x i32> %i.ct, splat (i32 23)
  %i.cv = add <2 x i32> %i.cu, splat (i32 1065353216)
  %i.cw = bitcast <2 x i32> %i.cv to <2 x float>
  %i.cx = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, %i.cw
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.cx, splat (float 1.055000e+00)
  %i.cz = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, splat (float -5.500000e-02)
  %i.da = select <2 x i1> %i.cg, <2 x float> %i.cz, <2 x float> %i.cf
  store <2 x float> %i.da, ptr %i.ch, align 4, !tbaa !13
  %i.db = fcmp reassoc nsz arcp contract afn ugt float %i.u, 3.130800e-03
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cd, 1.055000e+00
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, -5.500000e-02
  %i.de = select reassoc nsz arcp contract afn i1 %i.db, float %i.dd, float %i.ce
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.de, ptr %i.df, align 4, !tbaa !13
  ret void
}

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_paint_hue(ptr nofree readonly captures(none) %.704.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.704.val, i64 120 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137
  %i.e = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_min(ptr noundef %i.d) #22 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !137
  %i.g = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.f) #22
  %i.h = fsub reassoc nsz arcp contract afn float %i.g, %i.e
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.h, f0x3D579436
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !137
  tail call void @gtk_widget_queue_draw(ptr noundef %i.k) #22
  %i.l = getelementptr inbounds nuw i8, ptr %.704.val, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154
  tail call void @gtk_widget_queue_draw(ptr noundef %i.m) #22
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.01 = phi i32 [ 0, %bb.a ], [ %i.ah, %bb.c ]   ; 2 uses
  %i.n = uitofp nsz nneg i32 %.01 to float        ; 2 uses
  %i.o = fmul reassoc nnan nsz arcp contract afn float %i.n, f0x3D579436
  %.reass = fmul reassoc nsz arcp contract afn float %invariant.op, %i.n
  %i.p = fadd reassoc nsz arcp contract afn float %.reass, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 8.620690e-03
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, f0x3E0D3DCB ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.t, <float f0x3E038026, float 0.000000e+00> ; 2 uses
  %i.v = insertelement <2 x float> %i.u, float %i.r, i64 0 ; 4 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.v, splat (float f0x3E53DCB1)
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.v
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, %i.v
  %i.z = fadd reassoc nsz arcp contract afn <2 x float> %i.u, splat (float f0xBC911AA6)
  %i.aa = select <2 x i1> %i.w, <2 x float> %i.y, <2 x float> %i.z
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn <4 x float> %i.ab, <float 9.642000e-01, float poison, float f0x3F532CA5, float 0.000000e+00>
  %0 = shufflevector <4 x float> %i.ac, <4 x float> %i.ab, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store <4 x float> %0, ptr %i.b, align 16, !tbaa !13
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !137
  %i.ae = load float, ptr %i.a, align 16, !tbaa !13
  %i.af = load float, ptr %i.i, align 4, !tbaa !13
  %i.ag = load float, ptr %i.j, align 8, !tbaa !13
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ad, float noundef %i.o, float noundef %i.ae, float noundef %i.af, float noundef %i.ag) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ah = add nuw nsw i32 %.01, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, 20
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #20

declare float @dt_bauhaus_slider_get_hard_min(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_hard_max(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #12

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @dt_accel_get_speed_multiplier(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_reset(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_step(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_soft_min(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_soft_max(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_get_text(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_action_widget_toast(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!"p1 _ZTS11dt_action_t", !14, i64 0}
!19 = !{!"dt_action_t", !9, i64 0, !17, i64 8, !17, i64 16, !14, i64 24, !18, i64 32, !18, i64 40}
!20 = !{!"p1 _ZTS8_GModule", !14, i64 0}
!21 = !{!"dt_iop_module_so_t", !19, i64 0, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !20, i64 488, !8, i64 496, !14, i64 520, !9, i64 528, !14, i64 536, !9, i64 544, !9, i64 548}
!22 = !{!"dt_iop_exposure_params_t", !9, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20, !9, i64 24}
!23 = !{!22, !9, i64 0}
!24 = !{!22, !9, i64 20}
!25 = !{!22, !9, i64 24}
!26 = !{!"p1 int", !14, i64 0}
!27 = !{!"long", !8, i64 0}
!28 = !{!"dt_dev_histogram_stats_t", !9, i64 0, !27, i64 8, !9, i64 16, !9, i64 20}
!29 = !{!"p1 _ZTS12dt_develop_t", !14, i64 0}
!30 = !{!"dt_pthread_mutex_t", !8, i64 0}
!31 = !{!"p1 _ZTS25dt_develop_blend_params_t", !14, i64 0}
!32 = !{!"p1 _ZTS11_GHashTable", !14, i64 0}
!33 = !{!"", !32, i64 0, !32, i64 8}
!34 = !{!"p1 _ZTS15dt_iop_module_t", !14, i64 0}
!35 = !{!"", !34, i64 0, !9, i64 8}
!36 = !{!"", !33, i64 0, !35, i64 16}
!37 = !{!"p1 _ZTS10_GtkWidget", !14, i64 0}
!38 = !{!"p1 _ZTS7_GSList", !14, i64 0}
!39 = !{!"p1 _ZTS18dt_iop_module_so_t", !14, i64 0}
!40 = !{!"dt_iop_module_t", !9, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !20, i64 448, !8, i64 456, !9, i64 476, !9, i64 480, !9, i64 484, !9, i64 488, !9, i64 492, !9, i64 496, !9, i64 500, !9, i64 504, !8, i64 512, !8, i64 528, !8, i64 544, !8, i64 560, !8, i64 576, !8, i64 592, !26, i64 608, !28, i64 616, !8, i64 640, !9, i64 656, !9, i64 660, !29, i64 664, !9, i64 672, !9, i64 676, !14, i64 680, !14, i64 688, !9, i64 696, !14, i64 704, !30, i64 712, !14, i64 752, !14, i64 760, !31, i64 768, !31, i64 776, !14, i64 784, !36, i64 792, !37, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !9, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !38, i64 912, !38, i64 920, !37, i64 928, !37, i64 936, !9, i64 944, !39, i64 952, !9, i64 960, !8, i64 964, !9, i64 1092, !37, i64 1096, !14, i64 1104, !9, i64 1112}
!41 = !{!40, !29, i64 664}
!42 = !{!22, !12, i64 8}
!43 = !{!22, !12, i64 4}
!44 = !{!"double", !8, i64 0}
!45 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !14, i64 0}
!46 = !{!"short", !8, i64 0}
!47 = !{!"", !46, i64 0, !46, i64 2}
!48 = !{!"", !9, i64 0, !8, i64 16}
!49 = !{!"dt_iop_buffer_dsc_t", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !47, i64 48, !48, i64 64, !8, i64 96, !9, i64 112}
!50 = !{!"dt_image_raw_parameters_t", !9, i64 0, !9, i64 3}
!51 = !{!"dt_image_geoloc_t", !44, i64 0, !44, i64 8, !44, i64 16}
!52 = !{!"_color_harmony_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!53 = !{!"p1 _ZTS6_GList", !14, i64 0}
!54 = !{!"p1 _ZTS16dt_cache_entry_t", !14, i64 0}
!55 = !{!"dt_image_t", !9, i64 0, !9, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !9, i64 40, !8, i64 44, !8, i64 108, !8, i64 172, !8, i64 300, !8, i64 364, !8, i64 428, !8, i64 492, !27, i64 560, !9, i64 568, !8, i64 572, !8, i64 800, !8, i64 864, !8, i64 928, !8, i64 992, !9, i64 1120, !8, i64 1124, !9, i64 1380, !9, i64 1384, !9, i64 1388, !9, i64 1392, !9, i64 1396, !9, i64 1400, !9, i64 1404, !9, i64 1408, !9, i64 1412, !9, i64 1416, !12, i64 1420, !9, i64 1424, !9, i64 1428, !9, i64 1432, !9, i64 1436, !9, i64 1440, !9, i64 1444, !27, i64 1448, !27, i64 1456, !27, i64 1464, !27, i64 1472, !9, i64 1480, !49, i64 1488, !8, i64 1616, !17, i64 1656, !9, i64 1664, !9, i64 1668, !50, i64 1672, !51, i64 1680, !52, i64 1704, !46, i64 1736, !8, i64 1738, !9, i64 1748, !9, i64 1752, !12, i64 1756, !12, i64 1760, !8, i64 1776, !8, i64 1792, !8, i64 1840, !53, i64 1856, !54, i64 1864, !9, i64 1872, !9, i64 1876}
!56 = !{!"p1 _ZTS15dt_masks_form_t", !14, i64 0}
!57 = !{!"p1 _ZTS19dt_masks_form_gui_t", !14, i64 0}
!58 = !{!"dt_dev_proxy_exposure_t", !34, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!59 = !{!"p1 _ZTS15dt_lib_module_t", !14, i64 0}
!60 = !{!"", !59, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64}
!61 = !{!"", !59, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!62 = !{!"", !58, i64 0, !34, i64 40, !60, i64 48, !61, i64 120}
!63 = !{!"dt_dev_chroma_t", !34, i64 0, !34, i64 8, !8, i64 16, !8, i64 32, !8, i64 64, !9, i64 96}
!64 = !{!"", !34, i64 0, !34, i64 8, !14, i64 16}
!65 = !{!"", !37, i64 0, !37, i64 8, !9, i64 16, !9, i64 20, !12, i64 24, !12, i64 28, !9, i64 32}
!66 = !{!"", !37, i64 0, !37, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !12, i64 28}
!67 = !{!"", !37, i64 0, !37, i64 8}
!68 = !{!"", !37, i64 0, !9, i64 8}
end_hunk_2
