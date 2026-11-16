Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_update_bounding_box:bb.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %.not.2 = icmp eq i32 %i.p, 0
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.r = load <2 x float>, ptr %i.q, align 8, !tbaa !12
  %i.s = insertelement <2 x float> poison, float %1, i64 0
  %i.t = insertelement <2 x float> %i.s, float %2, i64 1
  %i.u = fadd reassoc nsz arcp contract afn <2 x float> %i.r, %i.t
  store <2 x float> %i.u, ptr %i.q, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %.not.3 = icmp eq i32 %i.w, 0
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !12
  %i.z = insertelement <2 x float> poison, float %1, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %2, i64 1
  %i.ab = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.aa
  store <2 x float> %i.ab, ptr %i.x, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ae = tail call i32 @get_homography(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ad) #31 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.ag = tail call i32 @get_homography(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.af) #31 ; 0 uses
  ret void
}

declare void @dt_control_queue_redraw_center() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #13

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #5

declare ptr @gdk_cursor_new_from_name(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @gdk_display_get_default() local_unnamed_addr #5

declare void @gdk_window_set_cursor(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #5

declare ptr @dt_ui_main_window(ptr noundef) local_unnamed_addr #5

declare void @g_object_unref(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_pressed(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load i32, ptr %i.c, align 16, !tbaa !120
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !57  ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.i = load i32, ptr %i.h, align 64, !tbaa !161
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.l = call i32 @dt_dev_get_preview_size(ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31
  %.not23 = icmp eq i32 %i.l, 0
  br i1 %.not23, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %5, 5
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.o = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.n) #31 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 540
  store i32 0, ptr %i.p, align 4, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 536
  store i32 0, ptr %i.q, align 8, !tbaa !108
  %i.r = load float, ptr %i.a, align 4, !tbaa !12
  %i.s = load float, ptr %i.b, align 4, !tbaa !12
  call fastcc void @_init_bounding_box(ptr noundef nonnull %i.f, float noundef %i.r, float noundef %i.s)
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.u = load float, ptr %i.t, align 8, !tbaa !162
  %i.v = fcmp reassoc nsz arcp contract afn oeq float %i.u, -1.000000e+00
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 340
  %i.x = load float, ptr %i.w, align 4, !tbaa !163
  %i.y = fcmp reassoc nsz arcp contract afn oeq float %i.x, -1.000000e+00
  br i1 %i.y, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.aa = load i32, ptr %i.z, align 32, !tbaa !169
  %.not24 = icmp eq i32 %i.aa, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ac = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #31 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 420
  store i32 1, ptr %i.ad, align 4, !tbaa !164
  %i.ae = load float, ptr %i.a, align 4, !tbaa !12
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  store float %i.af, ptr %i.ag, align 8, !tbaa !167
  %i.ah = load float, ptr %i.b, align 4, !tbaa !12
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 428
  store float %i.ai, ptr %i.aj, align 4, !tbaa !168
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.j
  %.sink = phi ptr [ %i.ab, %bb.j ], [ %i.n, %bb.f ]
  %i.ak = call i32 @pthread_mutex_unlock(ptr noundef nonnull %.sink) #31 ; 0 uses
  call void @dt_control_queue_redraw_center() #31
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.g, %bb.h, %bb.d
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.g ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %.0, %bb.k ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @_init_bounding_box(ptr noundef initializes((360, 400)) %0, float noundef %1, float noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !176
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %_update_bounding_box.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.i = call i32 @dt_dev_get_zoom_bounds(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #31
  %.not52 = icmp eq i32 %i.i, 0
  %i.j = insertelement <4 x float> <float 1.000000e+01, float 1.000000e+01, float poison, float poison>, float %1, i64 2
  %i.k = insertelement <4 x float> %i.j, float %2, i64 3 ; 2 uses
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load float, ptr %i.c, align 4, !tbaa !12
  %i.m = load float, ptr %i.d, align 4, !tbaa !12
  %i.n = load float, ptr %i.a, align 4, !tbaa !12
  %i.o = load float, ptr %i.b, align 4, !tbaa !12
  %i.p = insertelement <2 x float> poison, float %i.l, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.m, i64 1
  %i.r = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn <2 x float> %i.q, %i.r ; 2 uses
  %i.t = fsub reassoc nsz arcp contract afn <2 x float> %i.r, %i.s
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.t, splat (float 5.000000e-01)
  %i.v = insertelement <2 x float> poison, float %i.n, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.o, i64 1
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.w, %i.r
  %i.y = fadd reassoc nsz arcp contract afn <2 x float> %i.u, %i.x
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aa = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> <float 1.000000e+01, float 1.000000e+01, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.ac = fadd reassoc nsz arcp contract afn <4 x float> %i.z, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = phi <4 x float> [ %i.ac, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.af = fadd nsz <4 x float> %i.ad, <float poison, float poison, float -1.000000e+01, float -1.000000e+01>
  %3 = shufflevector <4 x float> %i.ad, <4 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 6, i32 1, i32 6, i32 7, i32 0, i32 7>
  store <8 x float> %3, ptr %i.ae, align 8, !tbaa !12
  store i32 1, ptr %i.e, align 4, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_update_bounding_box.exit

_update_bounding_box.exit:                        ; preds = %bb.d, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 392
  store <2 x float> splat (float 5.000000e-01), ptr %i.ag, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ah, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ak = call i32 @get_homography(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #31 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.am = call i32 @get_homography(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.al) #31 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load i32, ptr %i.c, align 16, !tbaa !120
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !57  ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.i = load i32, ptr %i.h, align 64, !tbaa !161
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.k = load float, ptr %i.j, align 8, !tbaa !162
  %i.l = fcmp reassoc nsz arcp contract afn oeq float %i.k, -1.000000e+00
  br i1 %i.l, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 340
  %i.n = load float, ptr %i.m, align 4, !tbaa !163
  %i.o = fcmp reassoc nsz arcp contract afn oeq float %i.n, -1.000000e+00
  br i1 %i.o, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.q = load i32, ptr %i.p, align 32, !tbaa !169
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 420 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !164
  %.not24 = icmp eq i32 %i.s, 0
  br i1 %.not24, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = call i32 @dt_dev_get_preview_size(ptr noundef %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31
  %.not25 = icmp eq i32 %i.v, 0
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.x = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.w) #31 ; 0 uses
  store i32 0, ptr %i.r, align 4, !tbaa !164
  %i.y = load float, ptr %i.a, align 4, !tbaa !12
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  store float %i.z, ptr %i.aa, align 16, !tbaa !165
  %i.ab = load float, ptr %i.b, align 4, !tbaa !12
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 436
  store float %i.ac, ptr %i.ad, align 4, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.af = load float, ptr %i.ae, align 8, !tbaa !167
  %i.ag = fsub reassoc nsz arcp contract afn float %i.z, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 428
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !168
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ac, %i.ai
  call fastcc void @_update_bounding_box(ptr noundef nonnull %i.f, float noundef %i.ag, float noundef %i.aj)
  %i.ak = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #31 ; 0 uses
  call void @dt_control_queue_redraw_center() #31
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c, %bb.b, %bb.e, %bb.d, %bb.g, %bb.f, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ %.0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define void @gui_post_expose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2760
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.g = tail call ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef %i.f) #31 ; 11 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !57  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 640
  %i.l = load i32, ptr %i.k, align 64, !tbaa !161
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.n = tail call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.m) #31
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %i.p = select reassoc nsz arcp contract afn i1 %i.o, double 1.000000e+00, double 5.000000e-01
  %i.q = fpext reassoc nsz arcp contract afn float %6 to double ; 4 uses
  %i.r = fdiv reassoc nsz arcp contract afn double %i.p, %i.q ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn double %i.r, 2.000000e+00 ; 2 uses
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.s) #31
  %i.t = fdiv reassoc nsz arcp contract afn double 9.000000e+00, %i.q ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 400
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 328 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %i.q, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.800000e+01, double 8.000000e+00>, %i.x ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0  ; 4 uses
  %i.aa = fdiv reassoc nsz arcp contract afn double 1.500000e+00, %i.q
  %i.ab = extractelement <2 x double> %i.y, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.i
  %i.ac = fmul reassoc nsz arcp contract afn double %i.r, 1.500000e+00
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ac) #31
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 456 ; 10 uses
  %i.ae = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> <float 5.000000e-01, float 1.000000e+00>, ptr noundef nonnull %i.ad) #31 ; 2 uses
  %i.af = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> <float 5.000000e-01, float 0.000000e+00>, ptr noundef nonnull %i.ad) #31 ; 2 uses
  %.sroa.046.0.vec.extract = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fpext reassoc nsz arcp contract afn float %.sroa.046.0.vec.extract to double
  %.sroa.046.4.vec.extract = extractelement <2 x float> %i.ae, i64 1
  %i.ah = fpext reassoc nsz arcp contract afn float %.sroa.046.4.vec.extract to double
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.ag, double noundef %i.ah) #31
  %.sroa.044.0.vec.extract = extractelement <2 x float> %i.af, i64 0
  %i.ai = fpext reassoc nsz arcp contract afn float %.sroa.044.0.vec.extract to double
  %.sroa.044.4.vec.extract = extractelement <2 x float> %i.af, i64 1
  %i.aj = fpext reassoc nsz arcp contract afn float %.sroa.044.4.vec.extract to double
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.ai, double noundef %i.aj) #31
  tail call void @cairo_stroke(ptr noundef %1) #31
  %i.ak = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr noundef nonnull %i.ad) #31 ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr noundef nonnull %i.ad) #31 ; 2 uses
  %.sroa.042.0.vec.extract = extractelement <2 x float> %i.ak, i64 0
  %i.am = fpext reassoc nsz arcp contract afn float %.sroa.042.0.vec.extract to double
  %.sroa.042.4.vec.extract = extractelement <2 x float> %i.ak, i64 1
  %i.an = fpext reassoc nsz arcp contract afn float %.sroa.042.4.vec.extract to double
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.am, double noundef %i.an) #31
  %.sroa.040.0.vec.extract = extractelement <2 x float> %i.al, i64 0
  %i.ao = fpext reassoc nsz arcp contract afn float %.sroa.040.0.vec.extract to double
  %.sroa.040.4.vec.extract = extractelement <2 x float> %i.al, i64 1
  %i.ap = fpext reassoc nsz arcp contract afn float %.sroa.040.4.vec.extract to double
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.ao, double noundef %i.ap) #31
  tail call void @cairo_stroke(ptr noundef %1) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 440 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load float, ptr %i.as, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.av = load float, ptr %i.au, align 4, !tbaa !12 ; 2 uses
  %i.aw = tail call reassoc nsz arcp contract afn float @hypotf(float noundef 1.000000e+00, float noundef %i.av) #33
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 452
  %i.az = load float, ptr %i.ay, align 4, !tbaa !179
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ax, %i.az ; 4 uses
  %i.bb = fdiv reassoc nsz arcp contract afn float %i.ba, %i.av ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.bd = load i64, ptr %i.bc, align 16, !tbaa !101
  %.not192 = icmp eq i64 %i.bd, 0
  br i1 %.not192, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_spot_settings_changed_callback:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 776
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !214  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i, label %_area_mapping_active.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 @dt_bauhaus_combobox_get(ptr noundef nonnull %i.w) #31
  %.not11.i.i = icmp eq i32 %i.x, 1
  br i1 %.not11.i.i, label %_area_mapping_active.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.h, align 32, !tbaa !198 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.y, null
  br i1 %.not12.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_val(ptr noundef nonnull %i.y) #31
  %i.aa = fcmp reassoc nsz arcp contract afn une float %i.z, 5.000000e+01
  br i1 %i.aa, label %_area_mapping_section_text.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !197 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ab, null
  br i1 %.not13.i.i, label %_area_mapping_active.exit.thread.i, label %_area_mapping_active.exit.i

_area_mapping_active.exit.i:                      ; preds = %bb.f
  %i.ac = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_val(ptr noundef nonnull %i.ab) #31
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, 0.000000e+00
  br i1 %i.ad, label %_area_mapping_active.exit.thread.i, label %_area_mapping_section_text.exit

_area_mapping_active.exit.thread.i:               ; preds = %_area_mapping_active.exit.i, %bb.f, %bb.c, %bb.b
  br label %_area_mapping_section_text.exit

_area_mapping_section_text.exit:                  ; preds = %bb.e, %_area_mapping_active.exit.i, %_area_mapping_active.exit.thread.i
  %.str.317.sink.i = phi ptr [ @.str.317, %_area_mapping_active.exit.thread.i ], [ @.str.316, %bb.e ], [ @.str.316, %_area_mapping_active.exit.i ]
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.317.sink.i, i32 noundef 5) #31
  tail call void @dt_gui_collapsible_section_set_label(ptr noundef nonnull %i.u, ptr noundef %i.ae) #31
  %.val = load ptr, ptr %i.d, align 16, !tbaa !57
  tail call fastcc void @_paint_hue(ptr %.val)
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !214
  %i.ag = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.af) #31
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_area_mapping_section_text.exit
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2760
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !178
  tail call fastcc void @_auto_set_illuminant(ptr noundef nonnull %1, ptr noundef %i.ak)
  br label %bb.h

bb.h:                                             ; preds = %_area_mapping_section_text.exit, %bb.g, %bb.a
  ret void
}

declare ptr @gtk_check_button_new_with_label(ptr noundef) local_unnamed_addr #5

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_vexpand(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_origin_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !57  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #31
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !238
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !239  ; 2 uses
  %i.g = sitofp reassoc nsz arcp contract afn i32 %i.d to double ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1440
  %i.j = load double, ptr %i.i, align 8, !tbaa !240 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, %i.g
  %i.l = fptosi double %i.k to i32
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.n = fmul reassoc nsz arcp contract afn double %i.j, %i.m
  %i.o = fptosi double %i.n to i32
  %i.p = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.l, i32 noundef %i.o) #31 ; 4 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1440
  %i.s = load double, ptr %i.r, align 8, !tbaa !240 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.p, double noundef %i.s, double noundef %i.s) #31
  %i.t = call ptr @cairo_create(ptr noundef %i.p) #31 ; 5 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1432
  %i.w = load double, ptr %i.v, align 8, !tbaa !235
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, 3.000000e+00
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn double %i.g, -8.000000e+00
  %i.aa = fptosi double %i.z to i32
  %i.ab = fmul reassoc nsz arcp contract afn float %i.y, 2.000000e+00
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.ab
  %i.ae = fptosi float %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.ag = load float, ptr %i.af, align 16, !tbaa !12
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !12
  %i.ak = fpext reassoc nsz arcp contract afn <2 x float> %i.aj to <2 x double> ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = extractelement <2 x double> %i.ak, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.t, double noundef %i.ah, double noundef %i.al, double noundef %i.am) #31
  %i.an = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  call void @cairo_rectangle(ptr noundef %i.t, double noundef 4.000000e+00, double noundef %i.an, double noundef %i.ao, double noundef %i.ap) #31
  call void @cairo_fill(ptr noundef %i.t) #31
  call void @cairo_stroke(ptr noundef %i.t) #31
  call void @cairo_destroy(ptr noundef %i.t) #31
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.p, double noundef 0.000000e+00, double noundef 0.000000e+00) #31
  call void @cairo_paint(ptr noundef %1) #31
  call void @cairo_surface_destroy(ptr noundef %i.p) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 1
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_target_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !57  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #31
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !238
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !239  ; 2 uses
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.f to double ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1440
  %i.l = load double, ptr %i.k, align 8, !tbaa !240 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, %i.i
  %i.n = fptosi double %i.m to i32
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.p = fmul reassoc nsz arcp contract afn double %i.l, %i.o
  %i.q = fptosi double %i.p to i32
  %i.r = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q) #31 ; 4 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !240 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.r, double noundef %i.u, double noundef %i.u) #31
  %i.v = call ptr @cairo_create(ptr noundef %i.r) #31 ; 5 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1432
  %i.y = load double, ptr %i.x, align 8, !tbaa !235
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, 3.000000e+00
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float ; 2 uses
  %i.ab = fadd reassoc nsz arcp contract afn double %i.i, -8.000000e+00
  %i.ac = fptosi double %i.ab to i32
  %i.ad = fmul reassoc nsz arcp contract afn float %i.aa, 2.000000e+00
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.ad
  %i.ag = fptosi float %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 864
  %i.ai = load ptr, ptr %i.ah, align 32, !tbaa !198
  %i.aj = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.ai) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !197
  %i.am = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.al) #31 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !196
  %i.ap = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.ao) #31
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, f0x3C8EFA36
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.aq) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.ar = fmul reassoc nsz arcp contract afn float %i.am, 2.000000e-03
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %cos
  %i.at = fmul reassoc nsz arcp contract afn float %i.aj, 8.620690e-03
  %i.au = fmul reassoc nsz arcp contract afn float %i.am, 5.000000e-03
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %sin
  %i.aw = fadd reassoc nsz arcp contract afn float %i.at, f0x3E0D3DCB ; 3 uses
  %i.ax = fadd reassoc nsz arcp contract afn float %i.as, %i.aw
  %i.ay = fsub reassoc nsz arcp contract afn float %i.aw, %i.av
  %i.az = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ay, i64 2 ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bd = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, <float f0x3E038026, float f0x3E038026, float f0x3E038026, float 0.000000e+00> ; 2 uses
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 4 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.be, splat (float f0x3E53DCB1)
  %i.bg = fmul reassoc nsz arcp contract afn <4 x float> %i.be, %i.be
  %i.bh = fmul reassoc nsz arcp contract afn <4 x float> %i.bg, %i.be
  %i.bi = fadd reassoc nsz arcp contract afn <4 x float> %i.bd, splat (float f0xBC911AA6)
  %i.bj = select <4 x i1> %i.bf, <4 x float> %i.bh, <4 x float> %i.bi ; 2 uses
  %i.bk = fmul reassoc nsz arcp contract afn <4 x float> %i.bj, <float 9.642000e-01, float poison, float f0x3F532CA5, float 0.000000e+00>
  %4 = shufflevector <4 x float> %i.bk, <4 x float> %i.bj, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store <4 x float> %4, ptr %i.b, align 16, !tbaa !12
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.bl = load float, ptr %i.a, align 16, !tbaa !12
  %i.bm = fpext reassoc nsz arcp contract afn float %i.bl to double
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bo = load <2 x float>, ptr %i.bn, align 4, !tbaa !12
  %i.bp = fpext reassoc nsz arcp contract afn <2 x float> %i.bo to <2 x double> ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = extractelement <2 x double> %i.bp, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %i.bm, double noundef %i.bq, double noundef %i.br) #31
  %i.bs = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %i.ac to double
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.ag to double
  call void @cairo_rectangle(ptr noundef %i.v, double noundef 4.000000e+00, double noundef %i.bs, double noundef %i.bt, double noundef %i.bu) #31
  call void @cairo_fill(ptr noundef %i.v) #31
  call void @cairo_stroke(ptr noundef %i.v) #31
  call void @cairo_destroy(ptr noundef %i.v) #31
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.r, double noundef 0.000000e+00, double noundef 0.000000e+00) #31
  call void @cairo_paint(ptr noundef %1) #31
  call void @cairo_surface_destroy(ptr noundef %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 1
}

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_margin_end(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_widget_get_parent(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #5

declare ptr @gtk_notebook_get_nth_page(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_notebook_set_current_page(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_start_profiling_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_request_focus(ptr noundef %1) #31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !420
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.g, i32 noundef 1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = call i32 @dt_dev_get_preview_size(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !57  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 736
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !236
  %i.o = call i32 @gtk_toggle_button_get_active(ptr noundef %i.n) #31
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 640
  store i32 %i.o, ptr %i.p, align 64, !tbaa !161
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.r = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.q) #31 ; 0 uses
  %i.s = load float, ptr %i.a, align 4, !tbaa !12
  %i.t = load float, ptr %i.b, align 4, !tbaa !12
  call fastcc void @_init_bounding_box(ptr noundef %i.l, float noundef %i.s, float noundef %i.t)
  %i.u = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.q) #31 ; 0 uses
  call void @dt_control_queue_redraw_center() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_checker_changed_callback(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !57  ; 3 uses
  %i.h = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #31 ; 3 uses
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.94, i32 noundef %i.h) #31
  %i.i = icmp ult i32 %i.h, 7
  br i1 %i.i, label %switch.lookup, label %dt_get_color_checker.exit

switch.lookup:                                    ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._checker_changed_callback, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %dt_get_color_checker.exit

dt_get_color_checker.exit:                        ; preds = %bb.b, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @xrite_24_2014, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  store ptr %.0.i, ptr %i.k, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.n = call i32 @dt_dev_get_preview_size(ptr noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31
  %.not9 = icmp eq i32 %i.n, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %dt_get_color_checker.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.p = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.o) #31 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  store i32 0, ptr %i.q, align 8, !tbaa !108
  %i.r = load float, ptr %i.a, align 4, !tbaa !12
  %i.s = load float, ptr %i.b, align 4, !tbaa !12
  call fastcc void @_init_bounding_box(ptr noundef nonnull %i.g, float noundef %i.r, float noundef %i.s)
  %i.t = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.o) #31 ; 0 uses
  call void @dt_control_queue_redraw_center() #31
  br label %bb.d

bb.d:                                             ; preds = %dt_get_color_checker.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_optimize_changed_callback(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57
  %i.f = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #31 ; 2 uses
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.95, i32 noundef %i.f) #31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #31 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  store i32 %i.f, ptr %i.i, align 64, !tbaa !104
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #31 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_safety_changed_callback(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #31 ; 0 uses
  %i.h = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #31
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 452 ; 2 uses
  store float %i.h, ptr %i.i, align 4, !tbaa !179
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #31 ; 0 uses
  %i.k = load float, ptr %i.i, align 4, !tbaa !179
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.96, float noundef %i.k) #31
  tail call void @dt_control_queue_redraw_center() #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @dtgtk_cairo_paint_check_mark(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5
end_hunk_1
