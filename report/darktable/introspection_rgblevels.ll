Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rgblevels?download=true
inline.NumInlined: 80
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0
@.str.58 = private unnamed_addr constant [10 x i8] c"luminance\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"DT_RGB_NORM_MAX\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"max RGB\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"DT_RGB_NORM_AVERAGE\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"average RGB\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"DT_RGB_NORM_SUM\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"sum RGB\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"DT_RGB_NORM_NORM\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"norm RGB\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"DT_RGB_NORM_POWER\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"basic power\00", align 1
@introspection_init.f5 = internal global [4 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr null], align 16
@.str.69 = private unnamed_addr constant [13 x i8] c"levels[0][0]\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"levels[0]\00", align 1
@.str.71 = private unnamed_addr constant [63 x i8] c"[_action_process_tabs] unknown shortcut effect (%d) for levels\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"%s %.2f\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"dt_iop_rgblevels_autoscale_t\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"dt_iop_rgb_norms_t\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"preserve colors\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.78 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"float[]\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"float[][]\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"dt_iop_rgblevels_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.73, ptr @.str.11, ptr @.str.11, ptr @.str.74, i64 4, i64 0, ptr null }, i64 2, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.75, ptr @.str.46, ptr @.str.46, ptr @.str.76, i64 4, i64 4, ptr null }, i64 7, ptr null, i32 1, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.77, ptr @.str.69, ptr @.str.69, ptr @.str.78, i64 4, i64 8, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.79, ptr @.str.70, ptr @.str.70, ptr @.str.78, i64 12, i64 8, ptr null }, i64 3, i32 2, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 176) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.80, ptr @.str.10, ptr @.str.10, ptr @.str.78, i64 36, i64 8, ptr null }, i64 3, i32 15, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 264) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.81, ptr @.str.78, ptr @.str.78, ptr @.str.78, i64 44, i64 0, ptr null }, i64 3, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #19
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #19
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #19
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #19
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #19
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #19
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #19
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !28  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !36
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load i32, ptr %i.i, align 16, !tbaa !37
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = call i32 @dt_dev_get_preview_size(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.n = load float, ptr %i.a, align 4, !tbaa !39
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store float %i.o, ptr %i.p, align 4, !tbaa !40
  %i.q = load float, ptr %i.b, align 4, !tbaa !39
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %2
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store float %i.r, ptr %i.s, align 4, !tbaa !41
  call void @dt_control_queue_redraw_center() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_control_queue_redraw_center() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_released(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 13 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load i32, ptr %i.e, align 16, !tbaa !37
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = load float, ptr %i.g, align 8, !tbaa !42 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.j = load float, ptr %i.i, align 4, !tbaa !40 ; 2 uses
  %i.k = fsub reassoc nsz arcp contract afn float %i.h, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.k)
  %i.m = fcmp reassoc nsz arcp contract afn ogt float %i.l, 1.000000e+00
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.o = load float, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.q = load float, ptr %i.p, align 4, !tbaa !41 ; 2 uses
  %i.r = fsub reassoc nsz arcp contract afn float %i.o, %i.q
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.r)
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, 1.000000e+00
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  store float %i.h, ptr %i.u, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store float %i.o, ptr %i.v, align 4, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store float %i.j, ptr %i.w, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store float %i.q, ptr %i.x, align 4, !tbaa !39
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  %i.z = tail call i32 @dt_dev_distort_backtransform(ptr noundef %i.y, ptr noundef nonnull %i.u, i64 noundef 2) #19 ; 0 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !170
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = load <2 x i32>, ptr %i.ad, align 16, !tbaa !109
  %i.af = shufflevector <2 x i32> %i.ae, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ag = sitofp reassoc nsz arcp contract afn <4 x i32> %i.af to <4 x float>
  %i.ah = load <4 x float>, ptr %i.u, align 8, !tbaa !39
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.ah, %i.ag
  store <4 x float> %i.ai, ptr %i.u, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 0, ptr %i.aj, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 1, ptr %i.ak, align 8, !tbaa !110
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  tail call void @dt_dev_reprocess_all(ptr noundef %i.am) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 0, ptr %i.an, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %bb.g ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @dt_dev_reprocess_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_pressed(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !28  ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 100 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.h = load i32, ptr %i.g, align 16, !tbaa !37
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
  store i32 0, ptr %i.e, align 4, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i32 0, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.n, i32 noundef 0) #19
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #19
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = call i32 @dt_dev_get_preview_size(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.r = load float, ptr %i.a, align 4, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.t = load float, ptr %i.b, align 4, !tbaa !39
  %i.u = insertelement <2 x float> poison, float %i.r, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = insertelement <2 x float> poison, float %1, i64 0
  %i.x = insertelement <2 x float> %i.w, float %2, i64 1
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.x
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x float> %i.z, ptr %i.s, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i32 1, ptr %i.aa, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.h:                                             ; preds = %_turn_selregion_picker_off.exit, %bb.g, %bb.f, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %_turn_selregion_picker_off.exit ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @gui_post_expose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.e = load i32, ptr %i.d, align 16, !tbaa !37
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not44 = icmp eq i32 %i.g, 0
  br i1 %.not44, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36
  %.not45 = icmp eq i32 %i.i, 0
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = load float, ptr %i.j, align 8, !tbaa !42 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !39 ; 3 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.q = load float, ptr %i.p, align 4, !tbaa !41 ; 2 uses
  %i.r = extractelement <2 x float> %i.m, i64 1
  %i.s = fcmp reassoc nsz arcp contract afn oeq float %i.r, %i.q
  %or.cond = select i1 %i.o, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %i.t = insertelement <2 x float> poison, float %i.k, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.q, i64 1
  %i.v = fpext reassoc nsz arcp contract afn <2 x float> %i.u to <2 x double> ; 2 uses
  %i.w = fpext reassoc nsz arcp contract afn <2 x float> %i.m to <2 x double> ; 2 uses
  %i.x = fpext reassoc nsz arcp contract afn float %6 to double ; 2 uses
  %i.y = tail call reassoc nsz arcp contract afn <2 x double> @llvm.minnum.v2f64(<2 x double> %i.w, <2 x double> %i.v)
  %i.z = fptrunc reassoc nsz arcp contract afn <2 x double> %i.y to <2 x float> ; 3 uses
  %i.aa = tail call reassoc nsz arcp contract afn <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.w, <2 x double> %i.v)
  %i.ab = fptrunc reassoc nsz arcp contract afn <2 x double> %i.aa to <2 x float>
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
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ao) #19
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #19
  tail call void @cairo_set_line_cap(ptr noundef %1, i32 noundef 1) #19
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.ad, double noundef %i.af, double noundef %i.ai, double noundef %i.ak) #19
  tail call void @cairo_stroke(ptr noundef %1) #19
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.ao, double noundef %i.ao) #19
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  %i.ap = fadd reassoc nsz arcp contract afn double %i.ao, %i.ad
  %i.aq = extractelement <2 x double> %i.an, i64 1
  %i.ar = fsub reassoc nsz arcp contract afn double %i.ai, %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.x
  %i.at = fsub reassoc nsz arcp contract afn double %i.ak, %i.as
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.ap, double noundef %i.af, double noundef %i.ar, double noundef %i.at) #19
  tail call void @cairo_stroke(ptr noundef %1) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b, %._crit_edge
  ret void
}

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_turn_selregion_picker_off.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.e, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 0, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.h, i32 noundef 0) #19
  br label %_turn_selregion_picker_off.exit

_turn_selregion_picker_off.exit:                  ; preds = %bb.a, %bb.b
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_turn_selregion_picker_off.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  store i32 0, ptr %i.l, align 4, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115
  tail call void @gtk_notebook_set_current_page(ptr noundef %i.n, i32 noundef 0) #19
  %i.o = load i32, ptr %i.d, align 4, !tbaa !116  ; 2 uses
  %switch = icmp ult i32 %i.o, 2
  br i1 %switch, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !115
  tail call void @gtk_notebook_set_show_tabs(ptr noundef %i.p, i32 noundef %i.o) #19
  %.pr.i = load i32, ptr %i.d, align 4, !tbaa !116
  %i.q = icmp eq i32 %.pr.i, 0
  br i1 %i.q, label %_rgblevels_show_hide_controls.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.d
  br label %_rgblevels_show_hide_controls.exit

_rgblevels_show_hide_controls.exit:               ; preds = %bb.d, %.thread.i
  %.sink8.i = phi i32 [ 0, %.thread.i ], [ 1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117
  tail call void @gtk_widget_set_visible(ptr noundef %i.s, i32 noundef %.sink8.i) #19
  br label %bb.e

bb.e:                                             ; preds = %_rgblevels_show_hide_controls.exit, %_turn_selregion_picker_off.exit
  ret void
}

declare void @gtk_notebook_set_current_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = load float, ptr %i.c, align 16, !tbaa !39 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !118
  %i.g = fcmp reassoc nsz arcp contract afn une float %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.i = load i32, ptr %i.h, align 4, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = zext i32 %i.i to i64
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.m ; 7 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 5 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !39
  store float %i.d, ptr %i.e, align 8, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119
  %i.v = icmp eq ptr %1, %i.u
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = load float, ptr %i.p, align 4, !tbaa !39 ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %i.d, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = fadd reassoc nsz arcp contract afn float %i.w, f0xB4000000
  store float %i.y, ptr %i.n, align 4, !tbaa !39
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  store float %i.d, ptr %i.n, align 4, !tbaa !39
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !120
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = load float, ptr %i.n, align 4, !tbaa !39
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.d, %i.ac
  br i1 %i.ad, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load float, ptr %i.r, align 4, !tbaa !39
  %i.af = fcmp reassoc nsz arcp contract afn ogt float %i.d, %i.ae
  br i1 %i.af, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  store float %i.d, ptr %i.p, align 4, !tbaa !39
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !121
  %i.ai = icmp eq ptr %1, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aj = load float, ptr %i.p, align 4, !tbaa !39 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.d, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = fadd reassoc nsz arcp contract afn float %i.aj, f0x34000000
  store float %i.al, ptr %i.r, align 4, !tbaa !39
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store float %i.d, ptr %i.r, align 4, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.l, %bb.m, %bb.j, %bb.d, %bb.e
  %i.am = load float, ptr %i.n, align 4, !tbaa !39
  %i.an = fcmp reassoc nsz arcp contract afn une float %i.o, %i.am
  br i1 %i.an, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load float, ptr %i.p, align 4, !tbaa !39
  %i.ap = fcmp reassoc nsz arcp contract afn une float %i.q, %i.ao
  br i1 %i.ap, label %bb.q, label %bb.p

end_hunk_0
begin_hunk_1_@_auto_levels_callback:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @gtk_toggle_button_set_active(ptr noundef nonnull %i.g, i32 noundef 1) #19
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  tail call void @dt_dev_add_history_item(ptr noundef %i.h, ptr noundef nonnull %1, i32 noundef 1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %i.d, align 16, !tbaa !28 ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_turn_selregion_picker_off.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 100
  store i32 0, ptr %i.i, align 4, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 136
  store i32 0, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.l, i32 noundef 0) #19
  br label %_turn_selregion_picker_off.exit

_turn_selregion_picker_off.exit:                  ; preds = %bb.d, %bb.e
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.m) #19 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !110
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_turn_selregion_picker_off.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.o, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_turn_selregion_picker_off.exit
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #19 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  tail call void @dt_dev_reprocess_all(ptr noundef %i.u) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_select_region_toggled_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !28  ; 2 uses
  tail call void @dt_iop_request_focus(ptr noundef %1) #19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !167 ; 2 uses
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @gtk_toggle_button_set_active(ptr noundef nonnull %i.g, i32 noundef 1) #19
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  tail call void @dt_dev_add_history_item(ptr noundef %i.h, ptr noundef nonnull %1, i32 noundef 1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #19
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #19 ; 0 uses
  %i.k = tail call i32 @gtk_toggle_button_get_active(ptr noundef %0) #19
  %.not16 = icmp ne i32 %i.k, 0
  %spec.select = zext i1 %.not16 to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 %spec.select, ptr %i.l, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_develop_ui_pipe_finished_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !28  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 5 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !110
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.h, align 8, !tbaa !110
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.b, ptr noundef nonnull align 8 dereferenceable(44) %i.d, i64 44, i1 false)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  tail call void @dt_dev_add_history_item(ptr noundef %i.l, ptr noundef nonnull %1, i32 noundef 1) #19
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #19 ; 0 uses
  store i32 0, ptr %i.h, align 8, !tbaa !110
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = atomicrmw add ptr %i.p, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @gui_update(ptr noundef nonnull %1)
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = atomicrmw add ptr %i.s, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.c = load i32, ptr %i.b, align 4, !tbaa !222
  %i.d = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.c, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !128 ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !28  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.k = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %i.j) #19 ; 2 uses
  %.not132 = icmp eq ptr %i.h, null
  br i1 %.not132, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.m = getelementptr i8, ptr %i.l, i64 644
  %.val = load i32, ptr %i.m, align 4, !tbaa !136
  %i.n = and i32 %.val, 4
  %.not133 = icmp eq i32 %i.n, 0
  br i1 %.not133, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.o) #19 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !110
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load atomic i32, ptr %i.u seq_cst, align 4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.q, align 8, !tbaa !110
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.o) #19 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.h, ptr noundef nonnull align 4 dereferenceable(44) %i.f, i64 44, i1 false)
  %.val136 = load ptr, ptr %i.i, align 8, !tbaa !223 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !224  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !225 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val136, i64 144
  %i.ah = load <4 x float>, ptr %i.ac, align 8, !tbaa !39
  %i.ai = load <2 x i32>, ptr %i.ag, align 16, !tbaa !109
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ak = sitofp reassoc nsz arcp contract afn <4 x i32> %i.aj to <4 x float>
  %i.al = fmul reassoc nsz arcp contract afn <4 x float> %i.ah, %i.ak
  store <4 x float> %i.al, ptr %i.a, align 16, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !226
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ap to double
  %i.ar = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.an, ptr noundef %.val136, double noundef %i.aq, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 2) #19 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load float, ptr %i.as, align 4, !tbaa !227 ; 4 uses
  %i.au = load float, ptr %i.a, align 16, !tbaa !39
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = load float, ptr %i.ad, align 4, !tbaa !39
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.at
  %i.ay = load float, ptr %i.ae, align 8, !tbaa !39
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.at
  %i.ba = load float, ptr %i.af, align 4, !tbaa !39
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.at
  %i.bc = load i32, ptr %4, align 4, !tbaa !228
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.bc to float ; 2 uses
  %i.be = fsub reassoc nsz arcp contract afn float %i.av, %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !229
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to float ; 2 uses
  %i.bi = fsub reassoc nsz arcp contract afn float %i.ax, %i.bh ; 2 uses
  %i.bj = fsub reassoc nsz arcp contract afn float %i.az, %i.bd ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bb, %i.bh ; 2 uses
  %i.bl = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.be, float %i.bj)
  %i.bm = fptosi float %i.bl to i32               ; 2 uses
  %i.bn = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bi, float %i.bk)
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float %i.bj)
  %i.bq = fptosi float %i.bp to i32               ; 2 uses
  %i.br = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bi, float %i.bk)
  %i.bs = fptosi float %i.br to i32               ; 2 uses
  %.not.i = icmp sgt i32 %i.z, %i.bm
  br i1 %.not.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bt = icmp sle i32 %i.ab, %i.bo
  %i.bu = icmp slt i32 %i.bq, 0
  %or.cond.i = select i1 %i.bt, i1 true, i1 %i.bu
  %i.bv = icmp slt i32 %i.bs, 0
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.bv
  br i1 %or.cond5.i, label %bb.i, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.g
  %i.bw = add nsw i32 %i.z, -1
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bm, i32 0) ; 2 uses
  %spec.select1.1.i = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bw) ; 2 uses
  %i.bx = add nsw i32 %i.ab, -1                   ; 2 uses
  %spec.select69.i = call i32 @llvm.smax.i32(i32 %i.bo, i32 0) ; 2 uses
  %spec.select2.1.i = call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.bx) ; 2 uses
  %.not64.i = icmp slt i32 %spec.select.i, %spec.select1.1.i
  %.not65.i = icmp slt i32 %spec.select69.i, %spec.select2.1.i
  %or.cond17.i = select i1 %.not64.i, i1 %.not65.i, i1 false
  br i1 %or.cond17.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader3.i
  %spec.select2.i = call i32 @llvm.smin.i32(i32 %spec.select69.i, i32 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.by = load i32, ptr %i.y, align 4, !tbaa !224
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %.preheader3.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !224 ; 2 uses
  %i.ca = load i32, ptr %i.aa, align 4, !tbaa !225
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = add nsw i32 %i.bz, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cd = phi i32 [ %i.bz, %bb.i ], [ %i.by, %bb.h ]
  %.081.i = phi i32 [ 0, %bb.i ], [ %spec.select2.i, %bb.h ] ; 3 uses
  %.080.i = phi i32 [ %i.cb, %bb.i ], [ %spec.select2.1.i, %bb.h ] ; 3 uses
  %.079.i = phi i32 [ 0, %bb.i ], [ %spec.select.i, %bb.h ] ; 5 uses
  %.078.i = phi i32 [ %i.cc, %bb.i ], [ %spec.select1.1.i, %bb.h ] ; 5 uses
  %.in142 = getelementptr inbounds nuw i8, ptr %i.h, i64 172
  %i.ce = load i32, ptr %.in142, align 4, !tbaa !114 ; 2 uses
  %.in = load i32, ptr %i.h, align 8, !tbaa !116
  %i.cf = icmp eq i32 %.in, 1                     ; 2 uses
  %.not110.i = icmp sgt i32 %.081.i, %.080.i
  br i1 %.not110.i, label %_auto_levels.exit, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.j
  %i.cg = shl nsw i32 %i.cd, 2                    ; 2 uses
  %.not9094.i = icmp sgt i32 %.079.i, %.078.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ci = sext i32 %i.ce to i64
  br i1 %.not9094.i, label %_auto_levels.exit, label %.lr.ph115.split.i

.lr.ph115.split.i:                                ; preds = %.lr.ph115.i
  br i1 %i.cf, label %.lr.ph115.split.split.us.i, label %.lr.ph115.split.split.i

.lr.ph115.split.split.us.i:                       ; preds = %.lr.ph115.split.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.ci
  %i.cj = zext nneg i32 %.079.i to i64            ; 2 uses
  %i.ck = add nuw nsw i32 %.078.i, 1
  %i.cl = sext i32 %.081.i to i64
  %i.cm = sext i32 %i.cg to i64
  %i.cn = add nsw i32 %.080.i, 1
  %i.co = add i32 %.078.i, 1
  %i.cp = sub i32 %i.co, %.079.i
  %i.cq = sub i32 %.078.i, %.079.i
  %xtraiter = and i32 %i.cp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.cr = icmp ult i32 %i.cq, 3
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.split.us.us.i, %.lr.ph115.split.split.us.i
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %._crit_edge.split.us.us.i ], [ %i.cl, %.lr.ph115.split.split.us.i ] ; 2 uses
  %.071112.us122.i = phi float [ %.5.us.us.i.lcssa, %._crit_edge.split.us.us.i ], [ f0x7F7FFFFF, %.lr.ph115.split.split.us.i ] ; 2 uses
  %.072111.us123.i = phi float [ %.577.us.us.i.lcssa, %._crit_edge.split.us.us.i ], [ f0xFF7FFFFF, %.lr.ph115.split.split.us.i ] ; 2 uses
  %i.cs = mul nsw i64 %indvars.iv165.i, %i.cm
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cs ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.us.i, %bb.l
  %indvars.iv160.i.prol = phi i64 [ %indvars.iv.next161.i.prol, %bb.l ], [ %i.cj, %.lr.ph.us.i ] ; 2 uses
  %.196.us.us.i.prol = phi float [ %.5.us.us.i.prol, %bb.l ], [ %.071112.us122.i, %.lr.ph.us.i ] ; 2 uses
  %.17395.us.us.i.prol = phi float [ %.577.us.us.i.prol, %bb.l ], [ %.072111.us123.i, %.lr.ph.us.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %bb.l ], [ 0, %.lr.ph.us.i ]
  %gep.us.idx.i.prol = shl nuw nsw i64 %indvars.iv160.i.prol, 4
  %gep.us.i.prol = getelementptr i8, ptr %gep.i, i64 %gep.us.idx.i.prol
  %i.ct = load float, ptr %gep.us.i.prol, align 4, !tbaa !39 ; 3 uses
  %i.cu = fcmp reassoc nsz arcp contract afn ult float %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.prol.preheader
  %i.cv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.17395.us.us.i.prol, float %i.ct)
  %i.cw = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.196.us.us.i.prol, float %i.ct)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.prol.preheader
  %.577.us.us.i.prol = phi nsz float [ %i.cv, %bb.k ], [ %.17395.us.us.i.prol, %.prol.preheader ] ; 3 uses
  %.5.us.us.i.prol = phi nsz float [ %i.cw, %bb.k ], [ %.196.us.us.i.prol, %.prol.preheader ] ; 3 uses
  %indvars.iv.next161.i.prol = add nuw nsw i64 %indvars.iv160.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !221

.prol.loopexit:                                   ; preds = %bb.l, %.lr.ph.us.i
  %.577.us.us.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.577.us.us.i.prol, %bb.l ]
  %.5.us.us.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.5.us.us.i.prol, %bb.l ]
  %indvars.iv160.i.unr = phi i64 [ %i.cj, %.lr.ph.us.i ], [ %indvars.iv.next161.i.prol, %bb.l ]
  %.196.us.us.i.unr = phi float [ %.071112.us122.i, %.lr.ph.us.i ], [ %.5.us.us.i.prol, %bb.l ]
  %.17395.us.us.i.unr = phi float [ %.072111.us123.i, %.lr.ph.us.i ], [ %.577.us.us.i.prol, %bb.l ]
  br i1 %i.cr, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.prol.loopexit, %bb.t
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i.3, %bb.t ], [ %indvars.iv160.i.unr, %.prol.loopexit ] ; 5 uses
  %.196.us.us.i = phi float [ %.5.us.us.i.3, %bb.t ], [ %.196.us.us.i.unr, %.prol.loopexit ] ; 2 uses
  %.17395.us.us.i = phi float [ %.577.us.us.i.3, %bb.t ], [ %.17395.us.us.i.unr, %.prol.loopexit ] ; 2 uses
  %gep.us.idx.i = shl nuw nsw i64 %indvars.iv160.i, 4
  %gep.us.i = getelementptr i8, ptr %gep.i, i64 %gep.us.idx.i
  %i.cx = load float, ptr %gep.us.i, align 4, !tbaa !39 ; 3 uses
  %i.cy = fcmp reassoc nsz arcp contract afn ult float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.us.i.new
  %i.cz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.17395.us.us.i, float %i.cx)
  %i.da = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.196.us.us.i, float %i.cx)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.us.i.new
  %.577.us.us.i = phi nsz float [ %i.cz, %bb.m ], [ %.17395.us.us.i, %.lr.ph.us.i.new ] ; 2 uses
  %.5.us.us.i = phi nsz float [ %i.da, %bb.m ], [ %.196.us.us.i, %.lr.ph.us.i.new ] ; 2 uses
  %indvars.iv.next161.i = shl i64 %indvars.iv160.i, 4
  %i.db = getelementptr i8, ptr %gep.i, i64 %indvars.iv.next161.i
  %gep.us.i.1 = getelementptr i8, ptr %i.db, i64 16
  %i.dc = load float, ptr %gep.us.i.1, align 4, !tbaa !39 ; 3 uses
  %i.dd = fcmp reassoc nsz arcp contract afn ult float %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.577.us.us.i, float %i.dc)
  %i.df = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.5.us.us.i, float %i.dc)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.577.us.us.i.1 = phi nsz float [ %i.de, %bb.o ], [ %.577.us.us.i, %bb.n ] ; 2 uses
  %.5.us.us.i.1 = phi nsz float [ %i.df, %bb.o ], [ %.5.us.us.i, %bb.n ] ; 2 uses
  %indvars.iv.next161.i.1 = shl i64 %indvars.iv160.i, 4
  %i.dg = getelementptr i8, ptr %gep.i, i64 %indvars.iv.next161.i.1
  %gep.us.i.2 = getelementptr i8, ptr %i.dg, i64 32
  %i.dh = load float, ptr %gep.us.i.2, align 4, !tbaa !39 ; 3 uses
  %i.di = fcmp reassoc nsz arcp contract afn ult float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.577.us.us.i.1, float %i.dh)
  %i.dk = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.5.us.us.i.1, float %i.dh)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.577.us.us.i.2 = phi nsz float [ %i.dj, %bb.q ], [ %.577.us.us.i.1, %bb.p ] ; 2 uses
  %.5.us.us.i.2 = phi nsz float [ %i.dk, %bb.q ], [ %.5.us.us.i.1, %bb.p ] ; 2 uses
  %indvars.iv.next161.i.2 = shl i64 %indvars.iv160.i, 4
  %i.dl = getelementptr i8, ptr %gep.i, i64 %indvars.iv.next161.i.2
end_hunk_1
begin_hunk_2_@dt_rgb_norm:bb.a
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fr, %i.fu
  %i.fw = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fv)
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.v:                                             ; preds = %bb.a
  %i.fx = load float, ptr %0, align 4, !tbaa !39  ; 3 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !39 ; 3 uses
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ga, %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !39 ; 3 uses
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, %i.gd ; 2 uses
  %i.gf = fmul reassoc nsz arcp contract afn float %i.fy, %i.fx
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gb, %i.ga
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, %i.gf
  %i.gi = fmul reassoc nsz arcp contract afn float %i.ge, %i.gd
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gh, %i.gi
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gb, %i.fy
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, %i.ge
  %i.gm = fdiv reassoc nsz arcp contract afn float %i.gj, %i.gl
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.w:                                             ; preds = %bb.a
  %i.gn = load float, ptr %0, align 4, !tbaa !39
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !39
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gp, %i.gn
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !39
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gq, %i.gs
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, f0x3EAAAAAB
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

dt_ioppr_get_rgb_matrix_luminance.exit:           ; preds = %bb.p, %dt_ioppr_apply_trc.exit.i, %bb.q, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0 = phi nsz float [ %i.gu, %bb.w ], [ %i.ew, %bb.r ], [ %i.fe, %bb.s ], [ %i.fl, %bb.t ], [ %i.fw, %bb.u ], [ %i.gm, %bb.v ], [ %i.ep, %bb.q ], [ %i.dp, %dt_ioppr_apply_trc.exit.i ], [ %i.ef, %bb.p ]
  ret float %.0
}

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !239
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !168
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !168
  store ptr @introspection_init.f1, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 160), align 16, !tbaa !168
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 512), align 16, !tbaa !168
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.11) #21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.46) #21
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.69) #21
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.70) #21
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.10) #21
  %.not15 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %.not15, ptr %i.i, ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.h ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.11) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.46) #19
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.69) #19
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.70) #19
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.10) #19
  %.not9 = icmp eq i32 %i.e, 0
  %. = select i1 %.not9, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ %., %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_notebook_set_show_tabs(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #5

declare ptr @g_object_get_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_rgblevels_move_handle(ptr noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef captures(address_is_null) %3, float noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 2 uses
  %or.cond = icmp ugt i32 %1, 2
  %i.c = icmp eq ptr %3, null
  %or.cond36 = or i1 %or.cond, %i.c
  br i1 %or.cond36, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %default.unreachable41 [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !39 ; 2 uses
  %i.f = fpext reassoc nsz arcp contract afn float %i.e to double
  %i.g = fsub reassoc nsz arcp contract afn float 1.000000e+00, %4 ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.e, %i.g
  %i.i = fpext reassoc nsz arcp contract afn float %i.h to double
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, -5.000000e-02
  %i.k = insertelement <2 x float> poison, float %4, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.g, i64 1
  %i.m = fpext reassoc nsz arcp contract afn <2 x float> %i.l to <2 x double>
  %i.n = insertelement <2 x double> <double 5.000000e-02, double poison>, double %i.j, i64 1
  %i.o = fdiv reassoc nsz arcp contract afn <2 x double> %i.n, %i.m ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = fsub reassoc nsz arcp contract afn double %i.f, %i.p
  %i.r = fptrunc reassoc nsz arcp contract afn double %i.q to float
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.r, float 1.000000e+00)
  %i.t = extractelement <2 x double> %i.o, i64 1
  %i.u = fptrunc reassoc nsz arcp contract afn double %i.t to float
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.u, float %i.s)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.w = load float, ptr %3, align 4, !tbaa !39   ; 2 uses
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = fsub reassoc nsz arcp contract afn float 1.000000e+00, %4 ; 2 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.w, %i.y
  %i.aa = fpext reassoc nsz arcp contract afn float %i.z to double
  %i.ab = fadd reassoc nsz arcp contract afn double %i.aa, 5.000000e-02
  %i.ac = insertelement <2 x float> poison, float %4, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.y, i64 1
  %i.ae = fpext reassoc nsz arcp contract afn <2 x float> %i.ad to <2 x double>
  %i.af = insertelement <2 x double> <double 5.000000e-02, double poison>, double %i.ab, i64 1
  %i.ag = fdiv reassoc nsz arcp contract afn <2 x double> %i.af, %i.ae ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fadd reassoc nsz arcp contract afn double %i.ah, %i.x
  %i.aj = fptrunc reassoc nsz arcp contract afn double %i.ai to float
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aj, float 0.000000e+00)
  %i.al = extractelement <2 x double> %i.ag, i64 1
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.am, float %i.ak)
  br label %bb.f

default.unreachable41:                            ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ao = load float, ptr %3, align 4, !tbaa !39
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double
  %i.aq = fadd reassoc nsz arcp contract afn double %i.ap, 5.000000e-02
  %i.ar = fptrunc reassoc nsz arcp contract afn double %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !39
  %i.au = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.av = fadd reassoc nsz arcp contract afn double %i.au, -5.000000e-02
  %i.aw = fptrunc reassoc nsz arcp contract afn double %i.av to float
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ar, float %2)
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aw, float %i.ax)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.033.ph = phi float [ 0.000000e+00, %bb.c ], [ %i.an, %bb.d ]
  %.0.ph = phi float [ %i.v, %bb.c ], [ 1.000000e+00, %bb.d ]
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.033.ph, float %2)
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.0.ph, float %i.az)
  %i.bb = zext nneg i32 %1 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bb
  store float %i.ba, ptr %i.bc, align 4, !tbaa !39
  %i.bd = load float, ptr %3, align 4, !tbaa !39  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !39
  %i.bg = fsub reassoc nsz arcp contract afn float %i.bf, %i.bd
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %4
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.bd
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi float [ %i.ay, %bb.e ], [ %i.bi, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %.sink, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store float -1.000000e+00, ptr %i.bk, align 8, !tbaa !118
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  tail call void @dt_dev_add_history_item(ptr noundef %i.bl, ptr noundef nonnull %0, i32 noundef 1) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !140
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bn) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_action_widget_toast(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rel_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #5

declare void @cairo_push_group_with_content(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_pop_group_to_source(ptr noundef) local_unnamed_addr #3

declare void @cairo_paint_with_alpha(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #3

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #3

declare float @dt_accel_get_speed_multiplier(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.pow.v4f64(<4 x double>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.pow.v8f64(<8 x double>, <8 x double>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
end_hunk_2
