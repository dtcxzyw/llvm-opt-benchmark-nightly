Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basicadj?download=true
inline.NumInlined: 82
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@legacy_params:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @deprecated_msg() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #23
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #23
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #23
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #23
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #23
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #23
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #23
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 704
  %.val = load ptr, ptr %i.a, align 16, !tbaa !32 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_turn_select_region_off.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 84
  store i32 0, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.e, i32 noundef 0) #23
  br label %_turn_select_region_off.exit

_turn_select_region_off.exit:                     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !32  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load i32, ptr %i.i, align 16, !tbaa !38
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = call i32 @dt_dev_get_preview_size(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23 ; 0 uses
  %i.n = load float, ptr %i.a, align 4, !tbaa !12
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store float %i.o, ptr %i.p, align 8, !tbaa !40
  %i.q = load float, ptr %i.b, align 4, !tbaa !12
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %2
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store float %i.r, ptr %i.s, align 8, !tbaa !41
  call void @dt_control_queue_redraw_center() #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_control_queue_redraw_center() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_released(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 13 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load i32, ptr %i.e, align 16, !tbaa !38
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.h = load float, ptr %i.g, align 4, !tbaa !42 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load float, ptr %i.i, align 8, !tbaa !40 ; 2 uses
  %i.k = fsub reassoc nsz arcp contract afn float %i.h, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.k)
  %i.m = fcmp reassoc nsz arcp contract afn ogt float %i.l, 1.000000e+00
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.o = load float, ptr %i.n, align 4, !tbaa !147 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !41 ; 2 uses
  %i.r = fsub reassoc nsz arcp contract afn float %i.o, %i.q
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.r)
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, 1.000000e+00
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 4 uses
  store float %i.h, ptr %i.u, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store float %i.o, ptr %i.v, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store float %i.j, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store float %i.q, ptr %i.x, align 8, !tbaa !12
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !83
  %i.z = tail call i32 @dt_dev_distort_backtransform(ptr noundef %i.y, ptr noundef nonnull %i.u, i64 noundef 2) #23 ; 0 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !148
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = load <2 x i32>, ptr %i.ad, align 16, !tbaa !15
  %i.af = shufflevector <2 x i32> %i.ae, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ag = sitofp <4 x i32> %i.af to <4 x float>
  %i.ah = load <4 x float>, ptr %i.u, align 4, !tbaa !12
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.ah, %i.ag
  store <4 x float> %i.ai, ptr %i.u, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 0, ptr %i.aj, align 4, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 1, ptr %i.ak, align 4, !tbaa !110
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39
  tail call void @dt_dev_reprocess_all(ptr noundef %i.am) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 0, ptr %i.an, align 4, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %bb.g ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @dt_dev_reprocess_all(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_pressed(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !32  ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.h = load i32, ptr %i.g, align 16, !tbaa !38
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %4, 3
  br i1 %i.i, label %_turn_selregion_picker_off.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %4, 1                        ; 2 uses
  %i.k = icmp eq i32 %5, 5
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %_turn_selregion_picker_off.exit, label %bb.f

_turn_selregion_picker_off.exit:                  ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.e, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 0, ptr %i.l, align 4, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.n, i32 noundef 0) #23
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #23
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = call i32 @dt_dev_get_preview_size(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23 ; 0 uses
  %i.r = load float, ptr %i.a, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.t = load float, ptr %i.b, align 4, !tbaa !12
  %i.u = insertelement <2 x float> poison, float %i.r, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = insertelement <2 x float> poison, float %1, i64 0
  %i.x = insertelement <2 x float> %i.w, float %2, i64 1
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.x
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x float> %i.z, ptr %i.s, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 1, ptr %i.aa, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.h

bb.h:                                             ; preds = %_turn_selregion_picker_off.exit, %bb.g, %bb.f, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %_turn_selregion_picker_off.exit ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @gui_post_expose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.e = load i32, ptr %i.d, align 16, !tbaa !38
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %.not44 = icmp eq i32 %i.g, 0
  br i1 %.not44, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %.not45 = icmp eq i32 %i.i, 0
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.k = load float, ptr %i.j, align 4, !tbaa !42 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load <2 x float>, ptr %i.l, align 8, !tbaa !12 ; 3 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !41 ; 2 uses
  %i.r = extractelement <2 x float> %i.m, i64 1
  %i.s = fcmp reassoc nsz arcp contract afn oeq float %i.r, %i.q
  %or.cond = select i1 %i.o, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %i.t = insertelement <2 x float> poison, float %i.k, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.q, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 2 uses
  %i.w = fpext <2 x float> %i.m to <2 x double>   ; 2 uses
  %i.x = fpext reassoc nsz arcp contract afn float %6 to double ; 2 uses
  %i.y = tail call reassoc nsz arcp contract afn <2 x double> @llvm.minnum.v2f64(<2 x double> %i.w, <2 x double> %i.v)
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 3 uses
  %i.aa = tail call reassoc nsz arcp contract afn <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.w, <2 x double> %i.v)
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float>
  %i.ac = extractelement <2 x float> %i.z, i64 0
  %i.ad = fpext reassoc nsz arcp contract afn float %i.ac to double ; 2 uses
  %i.ae = extractelement <2 x float> %i.z, i64 1
  %i.af = fpext reassoc nsz arcp contract afn float %i.ae to double ; 2 uses
  %i.ag = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.z ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double ; 2 uses
  %i.aj = extractelement <2 x float> %i.ag, i64 1
  %i.ak = fpext reassoc nsz arcp contract afn float %i.aj to double ; 2 uses
  %i.al = insertelement <2 x double> poison, double %i.x, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double 3.000000e+00>, %i.am ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 4 uses
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ao) #23
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  tail call void @cairo_set_line_cap(ptr noundef %1, i32 noundef 1) #23
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.ad, double noundef %i.af, double noundef %i.ai, double noundef %i.ak) #23
  tail call void @cairo_stroke(ptr noundef %1) #23
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.ao, double noundef %i.ao) #23
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #23
  %i.ap = fadd reassoc nsz arcp contract afn double %i.ao, %i.ad
  %i.aq = extractelement <2 x double> %i.an, i64 1
  %i.ar = fsub reassoc nsz arcp contract afn double %i.ai, %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.x
  %i.at = fsub reassoc nsz arcp contract afn double %i.ak, %i.as
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.ap, double noundef %i.af, double noundef %i.ar, double noundef %i.at) #23
  tail call void @cairo_stroke(ptr noundef %1) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b, %._crit_edge
  ret void
}

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #6

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !114
  store i32 -999, ptr %i.a, align 4, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !32
  %i.h = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %2) #23 ; 6 uses
  %.not16 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.n = load i32, ptr %i.m, align 64, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 852
  %i.p = load i32, ptr %i.o, align 4, !tbaa !119
  %i.q = tail call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef nonnull %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, i32 noundef %i.n, i32 noundef %i.p)
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, 1.000000e+02
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load float, ptr %i.i, align 16, !tbaa !12
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x3E63D838
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, f0x3F37855B
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.z = load float, ptr %i.y, align 8, !tbaa !12
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, 6.061690e-02
  %i.ab = fadd reassoc nsz arcp contract afn float %i.x, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi reassoc nsz arcp contract afn float [ %i.r, %bb.c ], [ %i.ab, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store float %i.ac, ptr %i.ad, align 4, !tbaa !120
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = atomicrmw add ptr %i.af, i32 1 seq_cst, align 4 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !121
  %i.aj = load float, ptr %i.ad, align 4, !tbaa !120
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ai, float noundef %i.aj) #23
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = atomicrmw add ptr %i.al, i32 -1 seq_cst, align 4 ; 0 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !83
  tail call void @dt_dev_add_history_item(ptr noundef %i.an, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i.i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i.i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load float, ptr %3, align 4, !tbaa !12
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.e ], [ %i.z, %bb.d ], [ %i.h, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !151 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12 ; 4 uses
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_select_region_toggled_callback:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @gtk_toggle_button_set_active(ptr noundef nonnull %i.g, i32 noundef 1) #23
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !83
  tail call void @dt_dev_add_history_item(ptr noundef %i.h, ptr noundef nonnull %1, i32 noundef 1) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #23 ; 0 uses
  %i.k = tail call i32 @gtk_toggle_button_get_active(ptr noundef %0) #23
  %.not16 = icmp ne i32 %i.k, 0
  %spec.select = zext i1 %.not16 to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 %spec.select, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #6

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_develop_ui_pipe_finished_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !32  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 5 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #23 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !110
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.h, align 4, !tbaa !110
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #23 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.b, ptr noundef nonnull align 8 dereferenceable(44) %i.d, i64 44, i1 false)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !83
  tail call void @dt_dev_add_history_item(ptr noundef %i.l, ptr noundef nonnull %1, i32 noundef 1) #23
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #23 ; 0 uses
  store i32 0, ptr %i.h, align 4, !tbaa !110
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #23 ; 0 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = atomicrmw add ptr %i.p, i32 1 seq_cst, align 4 ; 0 uses
  %i.r = load ptr, ptr %i.c, align 16, !tbaa !32  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !35
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.t, i32 noundef %i.v) #23
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = atomicrmw add ptr %i.x, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_signal_profile_user_changed(ptr nofree readnone captures(none) %0, i8 noundef zeroext %1, ptr noundef %2) #4 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.c = load i32, ptr %i.b, align 16, !tbaa !38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !32  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2088
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  %i.l = tail call ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef nonnull %2, ptr noundef %i.k) #23 ; 2 uses
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.l, i64 856
  %.val = load float, ptr %i.m, align 8, !tbaa !180
  %i.n = fmul reassoc nsz arcp contract afn float %.val, 1.000000e+02
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi reassoc nsz arcp contract afn float [ %i.n, %bb.d ], [ 1.842000e+01, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !120
  %i.r = fcmp reassoc nsz arcp contract afn une float %i.q, %i.o
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store float %i.o, ptr %i.p, align 4, !tbaa !120
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = atomicrmw add ptr %i.t, i32 1 seq_cst, align 4 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %i.w, float noundef %i.o) #23
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.z = atomicrmw add ptr %i.y, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 14 uses
  %i.b = alloca [4 x float], align 16             ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2088
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.g = tail call ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef %0, ptr noundef %i.f) #23 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !183
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !128 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !32  ; 12 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.cd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.p = getelementptr i8, ptr %i.o, i64 644
  %.val = load i32, ptr %i.p, align 4, !tbaa !192
  %i.q = and i32 %.val, 4
  %.not210 = icmp eq i32 %i.q, 0
  br i1 %.not210, label %bb.cd, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.s = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #23 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 44 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !110
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.cc

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load atomic i32, ptr %i.x seq_cst, align 4
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.cc, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.t, align 4, !tbaa !110
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #23 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.m, ptr noundef nonnull align 4 dereferenceable(44) %i.k, i64 44, i1 false)
  %.val214 = load ptr, ptr %i.n, align 8, !tbaa !184 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !193 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !194 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val214, i64 144
  %i.ak = load <4 x float>, ptr %i.af, align 4, !tbaa !12
  %i.al = load <2 x i32>, ptr %i.aj, align 16, !tbaa !15
  %i.am = shufflevector <2 x i32> %i.al, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.an = sitofp <4 x i32> %i.am to <4 x float>
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.ak, %i.an
  store <4 x float> %i.ao, ptr %i.b, align 16, !tbaa !12
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ar = load i32, ptr %i.aq, align 16, !tbaa !195
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.ar to double
  %i.at = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ap, ptr noundef %.val214, double noundef %i.as, i32 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2) #23 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load float, ptr %i.au, align 4, !tbaa !196 ; 4 uses
  %i.aw = load float, ptr %i.b, align 16, !tbaa !12
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.av
  %i.ay = load float, ptr %i.ag, align 4, !tbaa !12
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.av
  %i.ba = load float, ptr %i.ah, align 8, !tbaa !12
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.av
  %i.bc = load float, ptr %i.ai, align 4, !tbaa !12
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.av
  %i.be = load i32, ptr %4, align 4, !tbaa !197
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to float ; 2 uses
  %i.bg = fsub reassoc nsz arcp contract afn float %i.ax, %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !198
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float %i.az, %i.bj ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bb, %i.bf ; 2 uses
  %i.bm = fsub reassoc nsz arcp contract afn float %i.bd, %i.bj ; 2 uses
  %i.bn = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bg, float %i.bl)
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bk, float %i.bm)
  %i.bq = fptosi float %i.bp to i32               ; 2 uses
  %i.br = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bg, float %i.bl)
  %i.bs = fptosi float %i.br to i32               ; 2 uses
  %i.bt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bk, float %i.bm)
  %i.bu = fptosi float %i.bt to i32               ; 2 uses
  %.not.i = icmp sgt i32 %i.ac, %i.bo
  br i1 %.not.i, label %bb.f, label %_get_selected_area.exit

bb.f:                                             ; preds = %bb.e
  %i.bv = icmp sle i32 %i.ae, %i.bq
  %i.bw = icmp slt i32 %i.bs, 0
  %or.cond.i = select i1 %i.bv, i1 true, i1 %i.bw
  %i.bx = icmp slt i32 %i.bu, 0
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.bx
  br i1 %or.cond5.i, label %_get_selected_area.exit, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.f
  %i.by = add nsw i32 %i.ac, -1
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bo, i32 0) ; 2 uses
  %spec.select1.1.i = call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.by) ; 2 uses
  %i.bz = add nsw i32 %i.ae, -1                   ; 2 uses
  %spec.select69.i = call i32 @llvm.smax.i32(i32 %i.bq, i32 0) ; 2 uses
  %spec.select2.1.i = call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.bz) ; 2 uses
  %.not64.i = icmp slt i32 %spec.select.i, %spec.select1.1.i
  %.not65.i = icmp slt i32 %spec.select69.i, %spec.select2.1.i
  %or.cond17.i = select i1 %.not64.i, i1 %.not65.i, i1 false
  br i1 %or.cond17.i, label %bb.g, label %_get_selected_area.exit

bb.g:                                             ; preds = %.preheader3.i
  %spec.select2.i = call i32 @llvm.smin.i32(i32 %spec.select69.i, i32 %i.bz)
  br label %_get_selected_area.exit

_get_selected_area.exit:                          ; preds = %bb.e, %bb.f, %.preheader3.i, %bb.g
  %.sroa.0.0 = phi i32 [ 0, %bb.f ], [ %spec.select.i, %bb.g ], [ 0, %.preheader3.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.f ], [ %spec.select2.i, %bb.g ], [ 0, %.preheader3.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.9.0 = phi i32 [ 0, %bb.f ], [ %spec.select1.1.i, %bb.g ], [ 0, %.preheader3.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.12.0 = phi i32 [ 0, %bb.f ], [ %spec.select2.1.i, %bb.g ], [ 0, %.preheader3.i ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ca = load i32, ptr %i.ab, align 4, !tbaa !193 ; 2 uses
  %i.cb = load i32, ptr %i.ad, align 4, !tbaa !194
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !199
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !200 ; 3 uses
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, f0x3C23D70A ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.cm = call ptr @dt_alloc_aligned(i64 noundef 32768) #23 ; 42 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cm, i64 64) ]
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_get_auto_exp_histogram.exit.i, label %bb.h

bb.h:                                             ; preds = %_get_selected_area.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(32768) %i.cm, i8 0, i64 32768, i1 false)
  %i.co = icmp samesign ugt i32 %.sroa.9.0, %.sroa.0.0
  %i.cp = icmp sgt i32 %.sroa.12.0, %.sroa.7.0
  %or.cond = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond, label %.lr.ph70.split.preheader.i.i, label %bb.x

.lr.ph70.split.preheader.i.i:                     ; preds = %bb.h
  %i.cq = sext i32 %i.ca to i64
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32764 ; 6 uses
  %i.ct = sext i32 %.sroa.7.0 to i64
  %i.cu = zext nneg i32 %.sroa.0.0 to i64
  %i.cv = zext nneg i32 %.sroa.9.0 to i64
  %i.cw = zext nneg i32 %.sroa.12.0 to i64
  br label %.lr.ph70.split.i.i

.lr.ph70.split.i.i:                               ; preds = %._crit_edge.i.i.loopexit, %.lr.ph70.split.preheader.i.i
  %indvars.iv81.i.i = phi i64 [ %i.ct, %.lr.ph70.split.preheader.i.i ], [ %indvars.iv.next82.i.i, %._crit_edge.i.i.loopexit ] ; 3 uses
  %i.cx = mul i64 %i.cr, %indvars.iv81.i.i
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cx
  br label %.lr.ph67.i.i

._crit_edge.i.i.loopexit:                         ; preds = %bb.w
  %indvars.iv.next82.i.i = add nsw i64 %indvars.iv81.i.i, 1
  %exitcond251.not = icmp eq i64 %indvars.iv81.i.i, %i.cw
  br i1 %exitcond251.not, label %_get_auto_exp_histogram.exit.i, label %.lr.ph70.split.i.i, !llvm.loop !181

.lr.ph67.i.i:                                     ; preds = %bb.w, %.lr.ph70.split.i.i
  %indvars.iv78.i.i = phi i64 [ %i.cu, %.lr.ph70.split.i.i ], [ %indvars.iv.next79.i.i, %bb.w ] ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv78.i.i, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i.i ; 3 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12 ; 3 uses
  %i.db = fcmp reassoc nsz arcp contract afn ugt float %i.da, 0.000000e+00
  br i1 %i.db, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph67.i.i
  %i.dc = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.cm, align 64, !tbaa !15
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph67.i.i
  %i.de = fcmp reassoc nsz arcp contract afn ult float %i.da, 1.000000e+00
  br i1 %i.de, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = load i32, ptr %i.cs, align 4, !tbaa !15
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.cs, align 4, !tbaa !15
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dh = fmul reassoc nsz arcp contract afn float %i.da, 8.192000e+03
  %i.di = fptoui float %i.dh to i32
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !15
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12 ; 3 uses
  %i.dp = fcmp reassoc nsz arcp contract afn ugt float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.cm, align 64, !tbaa !15
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ds = fcmp reassoc nsz arcp contract afn ult float %i.do, 1.000000e+00
  br i1 %i.ds, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load i32, ptr %i.cs, align 4, !tbaa !15
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.cs, align 4, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dv = fmul reassoc nsz arcp contract afn float %i.do, 8.192000e+03
  %i.dw = fptoui float %i.dv to i32
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !15
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12 ; 3 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ugt float %i.ec, 0.000000e+00
  br i1 %i.ed, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.cm, align 64, !tbaa !15
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.eg = fcmp reassoc nsz arcp contract afn ult float %i.ec, 1.000000e+00
  br i1 %i.eg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = load i32, ptr %i.cs, align 4, !tbaa !15
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.cs, align 4, !tbaa !15
  br label %bb.w

end_hunk_1
