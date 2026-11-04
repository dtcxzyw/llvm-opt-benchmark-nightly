Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_monochrome?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_monochrome_draw:bb.a
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.ct
  %i.cv = fpext reassoc nsz arcp contract afn float %i.cu to double
  %i.cw = fmul reassoc nsz arcp contract afn double %i.cv, f0x404AB1EBE1650A46
  store double %i.cw, ptr %4, align 8, !tbaa !162
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !110
  call void @cmsDoTransform(ptr noundef %i.cx, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #19
  %i.cy = load double, ptr %i.a, align 16, !tbaa !163
  %i.cz = load double, ptr %i.aq, align 8, !tbaa !163
  %i.da = load double, ptr %i.ar, align 16, !tbaa !163
  call void @cairo_set_source_rgb(ptr noundef %i.ae, double noundef %i.cy, double noundef %i.cz, double noundef %i.da) #19
  %i.db = mul nsw i32 %.06569, %i.ah
  %i.dc = sitofp reassoc nsz arcp contract afn i32 %i.db to float
  %i.dd = fmul reassoc nnan nsz arcp contract afn float %i.dc, 1.250000e-01
  %i.de = fpext reassoc nsz arcp contract afn float %i.dd to double
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !104
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1432
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !111 ; 2 uses
  %i.di = fsub reassoc nsz arcp contract afn double %i.au, %i.dh
  %i.dj = fsub reassoc nsz arcp contract afn double %i.ax, %i.dh
  call void @cairo_rectangle(ptr noundef %i.ae, double noundef %i.de, double noundef %i.bf, double noundef %i.di, double noundef %i.dj) #19
  call void @cairo_fill(ptr noundef %i.ae) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.dk = add nuw nsw i32 %.06569, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dk, 8
  br i1 %exitcond.not, label %bb.d, label %bb.e

bb.f:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_monochrome_button_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !116
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !53  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 3 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %2, i32 noundef 1) #19
  %i.h = load i32, ptr %1, align 8, !tbaa !164
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !165 ; 2 uses
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !15
  store <2 x float> %i.l, ptr %i.g, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store float %i.n, ptr %i.o, align 4, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1432
  %i.r = load double, ptr %i.q, align 8, !tbaa !111
  %i.s = fmul reassoc nsz arcp contract afn double %i.r, 5.000000e+00
  %i.t = fptosi double %i.s to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #19
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = shl nsw i32 %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !166
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.t to double
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !167
  %i.ab = load <2 x i32>, ptr %i.u, align 4, !tbaa !14
  %i.ac = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.ad = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ae = sub nsw <2 x i32> %i.ab, %i.ad          ; 3 uses
  %i.af = extractelement <2 x i32> %i.ae, i64 1
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.ag to double
  %i.ai = fsub reassoc nsz arcp contract afn double %i.ah, %i.aa
  %i.aj = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ai, i64 1 ; 2 uses
  %i.al = insertelement <2 x double> poison, double %i.y, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fsub reassoc nsz arcp contract afn <2 x double> %i.ak, %i.am
  %i.ao = fadd reassoc nsz arcp contract afn <2 x double> %i.ak, %i.am
  %i.ap = shufflevector <2 x double> %i.an, <2 x double> %i.ao, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.aq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ae to <2 x double> ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ap, %i.aq
  %i.as = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ap, zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x double> zeroinitializer, <2 x double> %i.ap
  %i.au = select <2 x i1> %i.ar, <2 x double> %i.aq, <2 x double> %i.at
  %i.av = fptrunc reassoc nsz arcp contract afn <2 x double> %i.au to <2 x float>
  %i.aw = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ae to <2 x float> ; 2 uses
  %i.ax = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.av, %i.ax
  %i.az = fmul reassoc nsz arcp contract afn <2 x float> %i.ay, splat (float 2.560000e+02)
  %i.ba = fdiv reassoc nsz arcp contract afn <2 x float> %i.az, %i.aw
  store <2 x float> %i.ba, ptr %i.g, align 4, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1, ptr %i.bb, align 8, !tbaa !56
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !103
  call void @gtk_widget_queue_draw(ptr noundef %i.bc) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_monochrome_button_release(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !116
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !53
  tail call void @dt_iop_color_picker_reset(ptr noundef %2, i32 noundef 1) #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !56
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !101
  tail call void @dt_dev_add_history_item(ptr noundef %i.g, ptr noundef %2, i32 noundef 1) #19
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef null) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_monochrome_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1432
  %i.i = load double, ptr %i.h, align 8, !tbaa !111
  %i.j = fmul reassoc nsz arcp contract afn double %i.i, 5.000000e+00
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = shl nsw i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.r = shufflevector <2 x i32> %i.q, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x double> poison, double %i.o, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.u = load <2 x float>, ptr %i.f, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #19
  %i.v = load double, ptr %i.n, align 8, !tbaa !169
  %i.w = load double, ptr %i.p, align 8, !tbaa !170
  %i.x = load <2 x i32>, ptr %i.l, align 4, !tbaa !14
  %i.y = sub nsw <2 x i32> %i.x, %i.r             ; 3 uses
  %i.z = extractelement <2 x i32> %i.y, i64 1
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ac = fsub reassoc nsz arcp contract afn double %i.ab, %i.w
  %i.ad = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1 ; 2 uses
  %i.af = fsub reassoc nsz arcp contract afn <2 x double> %i.ae, %i.t
  %i.ag = fadd reassoc nsz arcp contract afn <2 x double> %i.ae, %i.t
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ag, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ai = sitofp reassoc nsz arcp contract afn <2 x i32> %i.y to <2 x double> ; 2 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ah, %i.ai
  %i.ak = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ah, zeroinitializer
  %i.al = select <2 x i1> %i.ak, <2 x double> zeroinitializer, <2 x double> %i.ah
  %i.am = select <2 x i1> %i.aj, <2 x double> %i.ai, <2 x double> %i.al
  %i.an = fptrunc reassoc nsz arcp contract afn <2 x double> %i.am to <2 x float>
  %i.ao = sitofp reassoc nsz arcp contract afn <2 x i32> %i.y to <2 x float> ; 2 uses
  %i.ap = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ao, splat (float 5.000000e-01)
  %i.aq = fsub reassoc nsz arcp contract afn <2 x float> %i.an, %i.ap
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.aq, splat (float 2.560000e+02)
  %i.as = fdiv reassoc nsz arcp contract afn <2 x float> %i.ar, %i.ao ; 2 uses
  store <2 x float> %i.as, ptr %i.f, align 4, !tbaa !15
  %i.at = fcmp reassoc nsz arcp contract afn une <2 x float> %i.u, %i.as ; 2 uses
  %4 = extractelement <2 x i1> %i.at, i64 0
  %5 = extractelement <2 x i1> %i.at, i64 1
  %or.cond = select i1 %4, i1 true, i1 %5
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !101
  call void @dt_dev_add_history_item(ptr noundef %i.au, ptr noundef nonnull %2, i32 noundef 1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !103
  call void @gtk_widget_queue_draw(ptr noundef %i.av) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_monochrome_leave_notify(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !103
  tail call void @gtk_widget_queue_draw(ptr noundef %i.d) #19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_monochrome_scrolled(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = tail call i32 @dt_gui_ignore_scroll(ptr noundef %1) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef %1, ptr noundef nonnull %i.a) #19
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !61 ; 2 uses
  %i.h = fpext reassoc nsz arcp contract afn float %i.g to double
  %i.i = load i32, ptr %i.a, align 4, !tbaa !14
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, 1.000000e-01
  %i.l = fadd reassoc nsz arcp contract afn double %i.k, %i.h ; 3 uses
  %i.m = fcmp reassoc nsz arcp contract afn ogt double %i.l, 3.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole double %i.l, 5.000000e-01
  %spec.select15 = select i1 %.inv, double 5.000000e-01, double %i.l
  %spec.select = fptrunc double %spec.select15 to float
  %i.n = select i1 %i.m, float 3.000000e+00, float %spec.select ; 2 uses
  store float %i.n, ptr %i.f, align 4, !tbaa !61
  %i.o = fcmp reassoc nsz arcp contract afn une float %i.g, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !101
  call void @dt_dev_add_history_item(ptr noundef %i.p, ptr noundef nonnull %2, i32 noundef 1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @gtk_widget_queue_draw(ptr noundef %0) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_colorspaces_get_profile(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmsCreateTransform(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  tail call void @cmsDeleteTransform(ptr noundef %i.d) #19
  ret void
}

declare void @cmsDeleteTransform(ptr noundef) local_unnamed_addr #3

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
  %i.a = load i32, ptr @introspection, align 8, !tbaa !173
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !174
  store ptr @introspection_init.f4, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 424), align 8, !tbaa !174
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
sub_0:
  %i.a = load i8, ptr %1, align 1
  switch i8 %i.a, label %.tail13.thread [
    i8 97, label %.tail
    i8 98, label %.tail13
  ]

.tail:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %.tail13.thread

.tail13:                                          ; preds = %sub_0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.a, label %.tail13.thread

bb.a:                                             ; preds = %.tail13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

.tail13.thread:                                   ; preds = %sub_0, %.tail, %.tail13
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.22) #22
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.tail13.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %.tail13.thread
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.17) #22
  %.not12 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %spec.select = select i1 %.not12, ptr %i.l, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.tail, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %.tail ], [ %spec.select, %bb.c ], [ %i.j, %bb.b ], [ %i.h, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.20) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.21) #19
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.22) #19
end_hunk_0
