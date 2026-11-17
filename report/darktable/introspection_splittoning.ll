Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_splittoning?download=true
inline.NumInlined: 46
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct.dt_iop_splittoning_params_t = type { float, float, float, float, float, float }
%struct._GdkRGBA = type { double, double, double, double }
%struct.dt_iop_module_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], ptr, %struct.dt_dev_histogram_stats_t, [4 x i32], i32, i32, ptr, i32, i32, ptr, ptr, i32, ptr, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, %struct.anon.2, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, [128 x i8], i32, ptr, ptr, i32 }
%struct.dt_dev_histogram_stats_t = type { i32, i64, i32, i32 }
%struct.anon.2 = type { %struct.anon.3, %struct.anon.4 }
%struct.anon.3 = type { ptr, ptr }
%struct.anon.4 = type { ptr, i32 }

@.str = private unnamed_addr constant [13 x i8] c"split-toning\00", align 1
@.str.1 = private unnamed_addr constant [112 x i8] c"use two specific colors for shadows and highlights and\0Acreate a linear toning effect between them up to a pivot\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"creative\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"linear, RGB, scene-referred\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"linear, RGB\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"authentic sepia\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"authentic cyanotype\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"authentic platinotype\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"chocolate brown\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"shadows\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"shadow_hue\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\C2\B0\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"shadow_saturation\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"highlights\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"highlight_hue\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"highlight_saturation\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/darktable/darktable/src/iop/splittoning.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"section|shadows\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"section|highlights\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"section\04properties\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"balance\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"the balance of center of split-toning\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.25 = private unnamed_addr constant [65 x i8] c"compress the effect on highlights/shadows and\0Apreserve mid-tones\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.35, i64 24, ptr getelementptr (i8, ptr @introspection_linear, i64 528), i64 1120, i64 688 }, align 8
@introspection_init.f6 = internal global [7 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr null], align 16
@.str.26 = private unnamed_addr constant [20 x i8] c"select the hue tone\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"select the saturation tone\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"select tone color\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"color-set\00", align 1
@__FUNCTION__.gui_init_section = private unnamed_addr constant [17 x i8] c"gui_init_section\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"dt_section_label\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"dt_iop_splittoning_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.11, ptr @.str.11, ptr @.str.32, i64 4, i64 0, ptr null }, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.13, ptr @.str.13, ptr @.str.33, i64 4, i64 4, ptr null }, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.15, ptr @.str.15, ptr @.str.32, i64 4, i64 8, ptr null }, float 0.000000e+00, float 1.000000e+00, float 2.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.16, ptr @.str.16, ptr @.str.33, i64 4, i64 12, ptr null }, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.21, ptr @.str.21, ptr @.str.34, i64 4, i64 16, ptr null }, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.23, ptr @.str.23, ptr @.str.34, i64 4, i64 20, ptr null }, float 0.000000e+00, float 1.000000e+02, float 3.300000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.35, ptr @.str.34, ptr @.str.34, ptr @.str.34, i64 24, i64 0, ptr null }, i64 6, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #20
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #20
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #20
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #20
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #20
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #20
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #20
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_splittoning_params_t, align 16 ; 3 uses
  %2 = alloca %struct.dt_iop_splittoning_params_t, align 16 ; 3 uses
  %3 = alloca %struct.dt_iop_splittoning_params_t, align 16 ; 3 uses
  %4 = alloca %struct.dt_iop_splittoning_params_t, align 16 ; 3 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !112
  tail call void @dt_database_start_transaction(ptr noundef %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.e = tail call i32 (...) %i.d() #20
  store <4 x float> <float f0x3D93E93F, float 9.200000e-01, float f0x3DE38E39, float 9.200000e-01>, ptr %1, align 16, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x float> <float 6.300000e-01, float 0.000000e+00>, ptr %i.f, align 16, !tbaa !62
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, i32 noundef %i.e, ptr noundef nonnull %1, i32 noundef 24, i32 noundef 1, i32 noundef 3) #20
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.h = call i32 (...) %i.g() #20
  store <4 x float> <float f0x3F1C71C7, float 6.400000e-01, float f0x3F1C71C7, float 6.400000e-01>, ptr %2, align 16, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> <float 0.000000e+00, float 5.220000e+00>, ptr %i.i, align 16, !tbaa !62
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, i32 noundef %i.h, ptr noundef nonnull %2, i32 noundef 24, i32 noundef 1, i32 noundef 3) #20
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.k = call i32 (...) %i.j() #20
  store <4 x float> <float f0x3D13E93F, float 4.200000e-01, float f0x3D13E93F, float 4.200000e-01>, ptr %3, align 16, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> <float 1.000000e+02, float 0.000000e+00>, ptr %i.l, align 16, !tbaa !62
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, i32 noundef %i.k, ptr noundef nonnull %3, i32 noundef 24, i32 noundef 1, i32 noundef 3) #20
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.n = call i32 (...) %i.m() #20
  store <4 x float> <float f0x3D9F49F5, float 3.900000e-01, float f0x3D9F49F5, float 8.000000e-02>, ptr %4, align 16, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> <float 6.000000e-01, float 0.000000e+00>, ptr %i.o, align 16, !tbaa !62
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.b, i32 noundef %i.n, ptr noundef nonnull %4, i32 noundef 24, i32 noundef 1, i32 noundef 3) #20
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !112
  call void @dt_database_release_transaction(ptr noundef %i.p) #20
  ret void
}

declare void @dt_database_start_transaction(ptr noundef) local_unnamed_addr #3

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_database_release_transaction(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !120
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !77  ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64), "align"(ptr %3, i64 64) ]
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !124 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !125 ; 4 uses
  %i.n = shl i32 %i.g, 2
  %i.o = mul i32 %i.n, %i.i                       ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %rgb2hsl.exit.lr.ph, label %._crit_edge

rgb2hsl.exit.lr.ph:                               ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !126 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !127
  %i.u = load float, ptr %i.e, align 4, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !129
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, f0x3F729E4129E4129E
  %i.z = fptrunc reassoc nsz arcp contract afn double %i.y to float ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn float %i.r, %i.z ; 2 uses
  %i.ab = fadd reassoc nsz arcp contract afn float %i.r, %i.z ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn oeq float %i.m, 0.000000e+00
  %i.ad = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.ae = fadd reassoc nsz arcp contract afn double %i.ad, 1.000000e+00
  %i.af = fmul reassoc nsz arcp contract afn float %i.t, 6.000000e+00 ; 8 uses
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.af, 4.000000e+00 ; 2 uses
  %.v.i107 = select i1 %i.ag, float 2.000000e+00, float -4.000000e+00
  %i.ah = fadd reassoc nsz arcp contract afn float %.v.i107, %i.af ; 5 uses
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.ah, 1.000000e+00
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %i.ah, 3.000000e+00
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.ah, 4.000000e+00
  %i.al = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ah
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.af, 1.000000e+00
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.af, 3.000000e+00
  %i.ao = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.af
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.af, 2.000000e+00
  %.v34.i112 = select i1 %i.ap, float -2.000000e+00, float 4.000000e+00
  %i.aq = fadd reassoc nsz arcp contract afn float %.v34.i112, %i.af ; 5 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.aq, 1.000000e+00
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.aq, 3.000000e+00
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.aq, 4.000000e+00
  %i.au = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.aq
  %i.av = fcmp reassoc nsz arcp contract afn oeq float %i.k, 0.000000e+00
  %i.aw = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.ax = fadd reassoc nsz arcp contract afn double %i.aw, 1.000000e+00
  %i.ay = fmul reassoc nsz arcp contract afn float %i.u, 6.000000e+00 ; 8 uses
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ay, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.az, float 2.000000e+00, float -4.000000e+00
  %i.ba = fadd reassoc nsz arcp contract afn float %.v.i, %i.ay ; 5 uses
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.ba, 1.000000e+00
  %i.bc = fcmp reassoc nsz arcp contract afn olt float %i.ba, 3.000000e+00
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.ba, 4.000000e+00
  %i.be = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ba
  %i.bf = fcmp reassoc nsz arcp contract afn olt float %i.ay, 1.000000e+00
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %i.ay, 3.000000e+00
  %i.bh = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ay
  %i.bi = fcmp reassoc nsz arcp contract afn ogt float %i.ay, 2.000000e+00
  %.v34.i = select i1 %i.bi, float -2.000000e+00, float 4.000000e+00
  %i.bj = fadd reassoc nsz arcp contract afn float %.v34.i, %i.ay ; 5 uses
  %i.bk = fcmp reassoc nsz arcp contract afn olt float %i.bj, 1.000000e+00
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %i.bj, 3.000000e+00
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bj, 4.000000e+00
  %i.bn = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.bj
  %i.bo = zext nneg i32 %i.o to i64
  br label %rgb2hsl.exit

._crit_edge:                                      ; preds = %bb.ag, %bb.b
  tail call void @llvm.x86.sse.sfence()
  br label %bb.ah

rgb2hsl.exit:                                     ; preds = %rgb2hsl.exit.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ 0, %rgb2hsl.exit.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load float, ptr %i.bp, align 16, !tbaa !62 ; 6 uses
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !62 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !62 ; 6 uses
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.br, float %i.bs)
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bv, float %i.bu)
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.br, float %i.bs)
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bx, float %i.bu)
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.bw
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, 5.000000e-01 ; 18 uses
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.ca, %i.aa
  br i1 %i.cb, label %bb.c, label %bb.q

bb.c:                                             ; preds = %rgb2hsl.exit
  br i1 %i.av, label %hsl2rgb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cc = fpext reassoc nsz arcp contract afn float %i.ca to double ; 2 uses
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.ca, 5.000000e-01
  br i1 %i.cd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ce = fmul reassoc nsz arcp contract afn double %i.ax, %i.cc
  %i.cf = fptrunc reassoc nsz arcp contract afn double %i.ce to float
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cg = fadd reassoc nsz arcp contract afn float %i.ca, %i.k
  %i.ch = fmul reassoc nsz arcp contract afn float %i.k, %i.ca
  %i.ci = fsub reassoc nsz arcp contract afn float %i.cg, %i.ch
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cj = phi float [ %i.cf, %bb.e ], [ %i.ci, %bb.f ] ; 10 uses
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cc, 2.000000e+00
  %i.cl = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cm = fsub reassoc nsz arcp contract afn double %i.ck, %i.cl
  %i.cn = fptrunc reassoc nsz arcp contract afn double %i.cm to float ; 15 uses
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = fsub reassoc nsz arcp contract afn float %i.cj, %i.cn
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, %i.ba
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.cn
  br label %hue2rgb.exit.i

bb.i:                                             ; preds = %bb.g
  br i1 %i.bc, label %hue2rgb.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = fsub reassoc nsz arcp contract afn float %i.cj, %i.cn
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.be
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, %i.cn
  %i.cu = select reassoc nsz arcp contract afn i1 %i.bd, float %i.ct, float %i.cn
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.i = phi nsz float [ %i.cq, %bb.h ], [ %i.cu, %bb.j ], [ %i.cj, %bb.i ] ; 3 uses
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %hue2rgb.exit.i
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cj, %i.cn
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.ay
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cn
  br label %hue2rgb.exit36.i

bb.l:                                             ; preds = %hue2rgb.exit.i
  br i1 %i.bg, label %hue2rgb.exit36.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = fsub reassoc nsz arcp contract afn float %i.cj, %i.cn
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.bh
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %i.cn
  %i.db = select reassoc nsz arcp contract afn i1 %i.az, float %i.da, float %i.cn
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.m, %bb.l, %bb.k
  %.0.i35.i = phi nsz float [ %i.cx, %bb.k ], [ %i.db, %bb.m ], [ %i.cj, %bb.l ] ; 3 uses
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %hue2rgb.exit36.i
  %i.dc = fsub reassoc nsz arcp contract afn float %i.cj, %i.cn
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.bj
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %i.cn
  br label %hsl2rgb.exit

bb.o:                                             ; preds = %hue2rgb.exit36.i
  br i1 %i.bl, label %hsl2rgb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = fsub reassoc nsz arcp contract afn float %i.cj, %i.cn
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.bn
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, %i.cn
  %i.di = select reassoc nsz arcp contract afn i1 %i.bm, float %i.dh, float %i.cn
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.n, %bb.o, %bb.p, %bb.c
  %.sroa.8140.0 = phi nsz float [ %i.ca, %bb.c ], [ %i.de, %bb.n ], [ %i.di, %bb.p ], [ %i.cj, %bb.o ]
  %.sroa.5139.0 = phi nsz float [ %i.ca, %bb.c ], [ %.0.i35.i, %bb.n ], [ %.0.i35.i, %bb.p ], [ %.0.i35.i, %bb.o ]
  %.sroa.0138.0 = phi nsz float [ %i.ca, %bb.c ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.p ], [ %.0.i.i, %bb.o ]
  %i.dj = fsub reassoc nsz arcp contract afn float %i.aa, %i.ca
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, 2.000000e+00 ; 3 uses
  %i.dl = fcmp reassoc nsz arcp contract afn ult float %i.dk, 0.000000e+00
  %.inv121 = fcmp reassoc nsz arcp contract afn ole float %i.dk, 1.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %.inv121, float %i.dk, float 1.000000e+00
  %i.dm = select reassoc nsz arcp contract afn i1 %i.dl, float 0.000000e+00, float %spec.select ; 4 uses
  %gep128.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.dn = load float, ptr %gep128.3, align 4, !tbaa !62 ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dm
  %i.dp = fsub reassoc nsz arcp contract afn float %.sroa.0138.0, %i.br
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.dm
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, %i.br
  %i.ds = fsub reassoc nsz arcp contract afn float %.sroa.5139.0, %i.bs
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.dm
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %i.bs
  %i.dv = fsub reassoc nsz arcp contract afn float %.sroa.8140.0, %i.bu
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.dm
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.bu
  %i.dy = fsub reassoc nsz arcp contract afn float %i.dn, %i.do
  %i.dz = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.du, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 2
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 3 ; 3 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ec, zeroinitializer
  %i.ee = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.ec, splat (float 1.000000e+00)
  %i.ef = select <4 x i1> %i.ee, <4 x float> %i.ec, <4 x float> splat (float 1.000000e+00)
  %i.eg = select <4 x i1> %i.ed, <4 x float> zeroinitializer, <4 x float> %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store <4 x float> %i.eg, ptr %i.eh, align 16, !tbaa !78, !alias.scope !130, !nontemporal !131
  br label %bb.ag

bb.q:                                             ; preds = %rgb2hsl.exit
  %i.ei = fcmp reassoc nsz arcp contract afn ogt float %i.ca, %i.ab
  br i1 %i.ei, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  br i1 %i.ac, label %hsl2rgb.exit115, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = fpext reassoc nsz arcp contract afn float %i.ca to double ; 2 uses
  %i.ek = fcmp reassoc nsz arcp contract afn olt float %i.ca, 5.000000e-01
  br i1 %i.ek, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.el = fmul reassoc nsz arcp contract afn double %i.ae, %i.ej
  %i.em = fptrunc reassoc nsz arcp contract afn double %i.el to float
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.en = fadd reassoc nsz arcp contract afn float %i.ca, %i.m
  %i.eo = fmul reassoc nsz arcp contract afn float %i.m, %i.ca
  %i.ep = fsub reassoc nsz arcp contract afn float %i.en, %i.eo
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.eq = phi float [ %i.em, %bb.t ], [ %i.ep, %bb.u ] ; 10 uses
  %i.er = fmul reassoc nsz arcp contract afn double %i.ej, 2.000000e+00
  %i.es = fpext reassoc nsz arcp contract afn float %i.eq to double
  %i.et = fsub reassoc nsz arcp contract afn double %i.er, %i.es
  %i.eu = fptrunc reassoc nsz arcp contract afn double %i.et to float ; 15 uses
  br i1 %i.ai, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ev = fsub reassoc nsz arcp contract afn float %i.eq, %i.eu
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, %i.ah
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.eu
  br label %hue2rgb.exit.i108

bb.x:                                             ; preds = %bb.v
  br i1 %i.aj, label %hue2rgb.exit.i108, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = fsub reassoc nsz arcp contract afn float %i.eq, %i.eu
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, %i.al
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.eu
  %i.fb = select reassoc nsz arcp contract afn i1 %i.ak, float %i.fa, float %i.eu
  br label %hue2rgb.exit.i108

hue2rgb.exit.i108:                                ; preds = %bb.y, %bb.x, %bb.w
  %.0.i.i109 = phi nsz float [ %i.ex, %bb.w ], [ %i.fb, %bb.y ], [ %i.eq, %bb.x ] ; 3 uses
  br i1 %i.am, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %hue2rgb.exit.i108
  %i.fc = fsub reassoc nsz arcp contract afn float %i.eq, %i.eu
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, %i.af
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.eu
  br label %hue2rgb.exit36.i110

bb.aa:                                            ; preds = %hue2rgb.exit.i108
  br i1 %i.an, label %hue2rgb.exit36.i110, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = fsub reassoc nsz arcp contract afn float %i.eq, %i.eu
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.ao
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, %i.eu
  %i.fi = select reassoc nsz arcp contract afn i1 %i.ag, float %i.fh, float %i.eu
  br label %hue2rgb.exit36.i110

hue2rgb.exit36.i110:                              ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i35.i111 = phi nsz float [ %i.fe, %bb.z ], [ %i.fi, %bb.ab ], [ %i.eq, %bb.aa ] ; 3 uses
  br i1 %i.ar, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %hue2rgb.exit36.i110
  %i.fj = fsub reassoc nsz arcp contract afn float %i.eq, %i.eu
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, %i.aq
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fk, %i.eu
  br label %hsl2rgb.exit115

bb.ad:                                            ; preds = %hue2rgb.exit36.i110
  br i1 %i.as, label %hsl2rgb.exit115, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = fsub reassoc nsz arcp contract afn float %i.eq, %i.eu
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, %i.au
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, %i.eu
  %i.fp = select reassoc nsz arcp contract afn i1 %i.at, float %i.fo, float %i.eu
  br label %hsl2rgb.exit115

hsl2rgb.exit115:                                  ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.r
  %.sroa.8.0 = phi nsz float [ %i.ca, %bb.r ], [ %i.fl, %bb.ac ], [ %i.fp, %bb.ae ], [ %i.eq, %bb.ad ]
  %.sroa.5.0 = phi nsz float [ %i.ca, %bb.r ], [ %.0.i35.i111, %bb.ac ], [ %.0.i35.i111, %bb.ae ], [ %.0.i35.i111, %bb.ad ]
  %.sroa.0135.0 = phi nsz float [ %i.ca, %bb.r ], [ %.0.i.i109, %bb.ac ], [ %.0.i.i109, %bb.ae ], [ %.0.i.i109, %bb.ad ]
  %i.fq = fsub reassoc nsz arcp contract afn float %i.ca, %i.ab
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, 2.000000e+00 ; 3 uses
  %i.fs = fcmp reassoc nsz arcp contract afn ult float %i.fr, 0.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.fr, 1.000000e+00
  %spec.select103 = select reassoc nsz arcp contract afn i1 %.inv, float %i.fr, float 1.000000e+00
  %i.ft = select reassoc nsz arcp contract afn i1 %i.fs, float 0.000000e+00, float %spec.select103 ; 4 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.fu = load float, ptr %gep.3, align 4, !tbaa !62 ; 2 uses
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, %i.ft
  %i.fw = fsub reassoc nsz arcp contract afn float %.sroa.0135.0, %i.br
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, %i.ft
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fx, %i.br
  %i.fz = fsub reassoc nsz arcp contract afn float %.sroa.5.0, %i.bs
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.ft
  %i.gb = fadd reassoc nsz arcp contract afn float %i.ga, %i.bs
  %i.gc = fsub reassoc nsz arcp contract afn float %.sroa.8.0, %i.bu
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, %i.ft
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.bu
  %i.gf = fsub reassoc nsz arcp contract afn float %i.fu, %i.fv
  %i.gg = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %i.gb, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %i.ge, i64 2
  %i.gj = insertelement <4 x float> %i.gi, float %i.gf, i64 3 ; 3 uses
  %i.gk = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.gj, zeroinitializer
  %i.gl = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.gj, splat (float 1.000000e+00)
  %i.gm = select <4 x i1> %i.gl, <4 x float> %i.gj, <4 x float> splat (float 1.000000e+00)
  %i.gn = select <4 x i1> %i.gk, <4 x float> zeroinitializer, <4 x float> %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store <4 x float> %i.gn, ptr %i.go, align 16, !tbaa !78, !alias.scope !132, !nontemporal !131
  br label %bb.ag

bb.af:                                            ; preds = %bb.q
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %.val = load <4 x float>, ptr %i.bp, align 16, !tbaa !78
  store <4 x float> %.val, ptr %i.gp, align 16, !tbaa !78, !alias.scope !133, !nontemporal !131
  br label %bb.ag

bb.ag:                                            ; preds = %hsl2rgb.exit115, %bb.af, %hsl2rgb.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.gq = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.gq, label %rgb2hsl.exit, label %._crit_edge

bb.ah:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !79
  store i32 -999, ptr %i.a, align 4, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %4 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !88  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !94 ; 8 uses
  %i.o = fcmp reassoc nsz arcp contract afn oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %update_colorpicker_color.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load float, ptr %i.b, align 4, !tbaa !95
  %i.q = fmul reassoc nsz arcp contract afn float %i.n, 5.000000e-01 ; 2 uses
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, 5.000000e-01 ; 3 uses
  %i.s = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.q ; 9 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.p, 6.000000e+00 ; 8 uses
  %i.u = fcmp reassoc nsz arcp contract afn olt float %i.t, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.u, float 2.000000e+00, float -4.000000e+00
  %i.v = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.t ; 5 uses
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.v, 1.000000e+00
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.n
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.s
  br label %hue2rgb.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.v, 3.000000e+00
  br i1 %i.z, label %hue2rgb.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.v, 4.000000e+00
  %i.ab = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.v
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %i.n
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.s
  %i.ae = select reassoc nsz arcp contract afn i1 %i.aa, float %i.ad, float %i.s
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi nsz float [ %i.y, %bb.e ], [ %i.ae, %bb.g ], [ %i.r, %bb.f ] ; 3 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.t, 1.000000e+00
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %hue2rgb.exit.i.i
  %i.ag = fmul reassoc nsz arcp contract afn float %i.t, %i.n
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.s
  br label %hue2rgb.exit36.i.i

bb.i:                                             ; preds = %hue2rgb.exit.i.i
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.t, 3.000000e+00
  br i1 %i.ai, label %hue2rgb.exit36.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.t
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.n
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.s
  %i.am = select reassoc nsz arcp contract afn i1 %i.u, float %i.al, float %i.s
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.j, %bb.i, %bb.h
  %.0.i35.i.i = phi nsz float [ %i.ah, %bb.h ], [ %i.am, %bb.j ], [ %i.r, %bb.i ] ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.t, 2.000000e+00
  %.v34.i.i = select i1 %i.an, float -2.000000e+00, float 4.000000e+00
  %i.ao = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.t ; 5 uses
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %hue2rgb.exit36.i.i
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ao, %i.n
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.s
  br label %update_colorpicker_color.exit

bb.l:                                             ; preds = %hue2rgb.exit36.i.i
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.ao, 3.000000e+00
  br i1 %i.as, label %update_colorpicker_color.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.ao, 4.000000e+00
  %i.au = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ao
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.n
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.s
  %i.ax = select reassoc nsz arcp contract afn i1 %i.at, float %i.aw, float %i.s
  br label %update_colorpicker_color.exit

update_colorpicker_color.exit:                    ; preds = %bb.c, %bb.k, %bb.l, %bb.m
  %.sroa.8.0.i = phi nsz float [ 5.000000e-01, %bb.c ], [ %i.ar, %bb.k ], [ %i.ax, %bb.m ], [ %i.r, %bb.l ]
  %.sroa.5.0.i = phi nsz float [ 5.000000e-01, %bb.c ], [ %.0.i35.i.i, %bb.k ], [ %.0.i35.i.i, %bb.m ], [ %.0.i35.i.i, %bb.l ]
  %.sroa.0.0.i = phi nsz float [ 5.000000e-01, %bb.c ], [ %.0.i.i.i, %bb.k ], [ %.0.i.i.i, %bb.m ], [ %.0.i.i.i, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ay = insertelement <2 x float> poison, float %.sroa.0.0.i, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %.sroa.5.0.i, i64 1
  %i.ba = fpext reassoc nsz arcp contract afn <2 x float> %i.az to <2 x double>
  store <2 x double> %i.ba, ptr %4, align 16, !tbaa !96
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = fpext reassoc nsz arcp contract afn float %.sroa.8.0.i to double
  store double %i.bc, ptr %i.bb, align 16, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double 1.000000e+00, ptr %i.bd, align 8, !tbaa !99
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.l, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !91
  %i.bg = icmp eq ptr %1, %i.bf
  br i1 %i.bg, label %bb.n, label %bb.bc

bb.n:                                             ; preds = %update_colorpicker_color.exit
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.bi = load float, ptr %i.b, align 4, !tbaa !95 ; 2 uses
  %i.bj = fcmp reassoc nsz arcp contract afn une float %i.bi, -1.000000e+00
  br i1 %i.bj, label %bb.o, label %update_balance_slider_colors.exit

bb.o:                                             ; preds = %bb.n
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bi, 6.000000e+00 ; 8 uses
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %i.bk, 4.000000e+00 ; 2 uses
  %.v.i.i30 = select i1 %i.bl, float 2.000000e+00, float -4.000000e+00
  %i.bm = fadd reassoc nsz arcp contract afn float %.v.i.i30, %i.bk ; 5 uses
  %i.bn = fcmp reassoc nsz arcp contract afn olt float %i.bm, 1.000000e+00
  br i1 %i.bn, label %hue2rgb.exit.i.i31, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = fcmp reassoc nsz arcp contract afn olt float %i.bm, 3.000000e+00
  br i1 %i.bo, label %hue2rgb.exit.i.i31, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bm, 4.000000e+00
  %i.bq = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.bm
  %i.br = select reassoc nsz arcp contract afn i1 %i.bp, float %i.bq, float 0.000000e+00
  br label %hue2rgb.exit.i.i31

hue2rgb.exit.i.i31:                               ; preds = %bb.q, %bb.p, %bb.o
  %.0.i.i.i32 = phi nsz float [ 1.000000e+00, %bb.p ], [ %i.br, %bb.q ], [ %i.bm, %bb.o ]
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.bk, 1.000000e+00
  br i1 %i.bs, label %hue2rgb.exit36.i.i33, label %bb.r

bb.r:                                             ; preds = %hue2rgb.exit.i.i31
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bk, 3.000000e+00
  br i1 %i.bt, label %hue2rgb.exit36.i.i33, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.bk
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bl, float %i.bu, float 0.000000e+00
  br label %hue2rgb.exit36.i.i33

hue2rgb.exit36.i.i33:                             ; preds = %bb.s, %bb.r, %hue2rgb.exit.i.i31
  %.0.i35.i.i34 = phi nsz float [ 1.000000e+00, %bb.r ], [ %i.bv, %bb.s ], [ %i.bk, %hue2rgb.exit.i.i31 ]
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 2.000000e+00
  %.v34.i.i35 = select i1 %i.bw, float -2.000000e+00, float 4.000000e+00
  %i.bx = fadd reassoc nsz arcp contract afn float %.v34.i.i35, %i.bk ; 5 uses
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, 1.000000e+00
  br i1 %i.by, label %hsl2rgb.exit.i, label %bb.t

bb.t:                                             ; preds = %hue2rgb.exit36.i.i33
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %i.bx, 3.000000e+00
  br i1 %i.bz, label %hsl2rgb.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = fcmp reassoc nsz arcp contract afn olt float %i.bx, 4.000000e+00
  %i.cb = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.bx
  %i.cc = select reassoc nsz arcp contract afn i1 %i.ca, float %i.cb, float 0.000000e+00
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.u, %bb.t, %hue2rgb.exit36.i.i33
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.t ], [ %i.cc, %bb.u ], [ %i.bx, %hue2rgb.exit36.i.i33 ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bh, float noundef 0.000000e+00, float noundef %.0.i.i.i32, float noundef %.0.i35.i.i34, float noundef %.0.i37.i.i) #20
  br label %update_balance_slider_colors.exit

update_balance_slider_colors.exit:                ; preds = %bb.n, %hsl2rgb.exit.i
  call void @gtk_widget_queue_draw(ptr noundef %i.bh) #20
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.ce = load float, ptr %i.b, align 4, !tbaa !95
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, 6.000000e+00 ; 8 uses
  %i.cg = fcmp reassoc nsz arcp contract afn olt float %i.cf, 4.000000e+00 ; 2 uses
  %.v.i.i36 = select i1 %i.cg, float 2.000000e+00, float -4.000000e+00
  %i.ch = fadd reassoc nsz arcp contract afn float %.v.i.i36, %i.cf ; 5 uses
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ch, 1.000000e+00
  br i1 %i.ci, label %hue2rgb.exit.i.i37, label %bb.v

bb.v:                                             ; preds = %update_balance_slider_colors.exit
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ch, 3.000000e+00
  br i1 %i.cj, label %hue2rgb.exit.i.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.ch, 4.000000e+00
  %i.cl = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ch
  %i.cm = select reassoc nsz arcp contract afn i1 %i.ck, float %i.cl, float 0.000000e+00
  br label %hue2rgb.exit.i.i37

hue2rgb.exit.i.i37:                               ; preds = %bb.w, %bb.v, %update_balance_slider_colors.exit
  %.0.i.i.i38 = phi nsz float [ 1.000000e+00, %bb.v ], [ %i.cm, %bb.w ], [ %i.ch, %update_balance_slider_colors.exit ]
  %i.cn = fcmp reassoc nsz arcp contract afn olt float %i.cf, 1.000000e+00
  br i1 %i.cn, label %hue2rgb.exit36.i.i39, label %bb.x

bb.x:                                             ; preds = %hue2rgb.exit.i.i37
  %i.co = fcmp reassoc nsz arcp contract afn olt float %i.cf, 3.000000e+00
  br i1 %i.co, label %hue2rgb.exit36.i.i39, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cf
  %i.cq = select reassoc nsz arcp contract afn i1 %i.cg, float %i.cp, float 0.000000e+00
  br label %hue2rgb.exit36.i.i39

hue2rgb.exit36.i.i39:                             ; preds = %bb.y, %bb.x, %hue2rgb.exit.i.i37
  %.0.i35.i.i40 = phi nsz float [ 1.000000e+00, %bb.x ], [ %i.cq, %bb.y ], [ %i.cf, %hue2rgb.exit.i.i37 ]
  %i.cr = fcmp reassoc nsz arcp contract afn ogt float %i.cf, 2.000000e+00
  %.v34.i.i41 = select i1 %i.cr, float -2.000000e+00, float 4.000000e+00
  %i.cs = fadd reassoc nsz arcp contract afn float %.v34.i.i41, %i.cf ; 5 uses
  %i.ct = fcmp reassoc nsz arcp contract afn olt float %i.cs, 1.000000e+00
  br i1 %i.ct, label %update_saturation_slider_end_color.exit, label %bb.z

bb.z:                                             ; preds = %hue2rgb.exit36.i.i39
  %i.cu = fcmp reassoc nsz arcp contract afn olt float %i.cs, 3.000000e+00
  br i1 %i.cu, label %update_saturation_slider_end_color.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cs, 4.000000e+00
  %i.cw = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cs
  %i.cx = select reassoc nsz arcp contract afn i1 %i.cv, float %i.cw, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit

update_saturation_slider_end_color.exit:          ; preds = %hue2rgb.exit36.i.i39, %bb.z, %bb.aa
  %.0.i37.i.i43 = phi nsz float [ 1.000000e+00, %bb.z ], [ %i.cx, %bb.aa ], [ %i.cs, %hue2rgb.exit36.i.i39 ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.cd, float noundef 1.000000e+00, float noundef %.0.i.i.i38, float noundef %.0.i35.i.i40, float noundef %.0.i37.i.i43) #20
  br label %.sink.split

bb.ab:                                            ; preds = %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !101
  %i.da = icmp eq ptr %1, %i.cz
  br i1 %i.da, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !102
  %i.dd = icmp eq ptr %1, %i.dc
  br i1 %i.dd, label %bb.ad, label %bb.bc

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !103
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !104 ; 8 uses
  %i.dj = fcmp reassoc nsz arcp contract afn oeq float %i.di, 0.000000e+00
  br i1 %i.dj, label %update_colorpicker_color.exit54, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !105
  %i.dl = fmul reassoc nsz arcp contract afn float %i.di, 5.000000e-01 ; 2 uses
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, 5.000000e-01 ; 3 uses
  %i.dn = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.dl ; 9 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dk, 6.000000e+00 ; 8 uses
  %i.dp = fcmp reassoc nsz arcp contract afn olt float %i.do, 4.000000e+00 ; 2 uses
  %.v.i.i44 = select i1 %i.dp, float 2.000000e+00, float -4.000000e+00
  %i.dq = fadd reassoc nsz arcp contract afn float %.v.i.i44, %i.do ; 5 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dq, 1.000000e+00
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dq, %i.di
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dn
  br label %hue2rgb.exit.i.i45

bb.ag:                                            ; preds = %bb.ae
  %i.du = fcmp reassoc nsz arcp contract afn olt float %i.dq, 3.000000e+00
  br i1 %i.du, label %hue2rgb.exit.i.i45, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = fcmp reassoc nsz arcp contract afn olt float %i.dq, 4.000000e+00
  %i.dw = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.dq
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.di
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, %i.dn
  %i.dz = select reassoc nsz arcp contract afn i1 %i.dv, float %i.dy, float %i.dn
  br label %hue2rgb.exit.i.i45

hue2rgb.exit.i.i45:                               ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i.i.i46 = phi nsz float [ %i.dt, %bb.af ], [ %i.dz, %bb.ah ], [ %i.dm, %bb.ag ] ; 3 uses
  %i.ea = fcmp reassoc nsz arcp contract afn olt float %i.do, 1.000000e+00
  br i1 %i.ea, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %hue2rgb.exit.i.i45
  %i.eb = fmul reassoc nsz arcp contract afn float %i.do, %i.di
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dn
  br label %hue2rgb.exit36.i.i47

bb.aj:                                            ; preds = %hue2rgb.exit.i.i45
  %i.ed = fcmp reassoc nsz arcp contract afn olt float %i.do, 3.000000e+00
  br i1 %i.ed, label %hue2rgb.exit36.i.i47, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.do
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.di
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ef, %i.dn
  %i.eh = select reassoc nsz arcp contract afn i1 %i.dp, float %i.eg, float %i.dn
  br label %hue2rgb.exit36.i.i47

hue2rgb.exit36.i.i47:                             ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.i35.i.i48 = phi nsz float [ %i.ec, %bb.ai ], [ %i.eh, %bb.ak ], [ %i.dm, %bb.aj ] ; 3 uses
  %i.ei = fcmp reassoc nsz arcp contract afn ogt float %i.do, 2.000000e+00
  %.v34.i.i49 = select i1 %i.ei, float -2.000000e+00, float 4.000000e+00
  %i.ej = fadd reassoc nsz arcp contract afn float %.v34.i.i49, %i.do ; 5 uses
  %i.ek = fcmp reassoc nsz arcp contract afn olt float %i.ej, 1.000000e+00
  br i1 %i.ek, label %bb.al, label %bb.am

bb.al:                                            ; preds = %hue2rgb.exit36.i.i47
  %i.el = fmul reassoc nsz arcp contract afn float %i.ej, %i.di
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, %i.dn
  br label %update_colorpicker_color.exit54

bb.am:                                            ; preds = %hue2rgb.exit36.i.i47
  %i.en = fcmp reassoc nsz arcp contract afn olt float %i.ej, 3.000000e+00
  br i1 %i.en, label %update_colorpicker_color.exit54, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eo = fcmp reassoc nsz arcp contract afn olt float %i.ej, 4.000000e+00
  %i.ep = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ej
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, %i.di
  %i.er = fadd reassoc nsz arcp contract afn float %i.eq, %i.dn
  %i.es = select reassoc nsz arcp contract afn i1 %i.eo, float %i.er, float %i.dn
  br label %update_colorpicker_color.exit54

update_colorpicker_color.exit54:                  ; preds = %bb.ad, %bb.al, %bb.am, %bb.an
  %.sroa.8.0.i51 = phi nsz float [ 5.000000e-01, %bb.ad ], [ %i.em, %bb.al ], [ %i.es, %bb.an ], [ %i.dm, %bb.am ]
  %.sroa.5.0.i52 = phi nsz float [ 5.000000e-01, %bb.ad ], [ %.0.i35.i.i48, %bb.al ], [ %.0.i35.i.i48, %bb.an ], [ %.0.i35.i.i48, %bb.am ]
  %.sroa.0.0.i53 = phi nsz float [ 5.000000e-01, %bb.ad ], [ %.0.i.i.i46, %bb.al ], [ %.0.i.i.i46, %bb.an ], [ %.0.i.i.i46, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.et = insertelement <2 x float> poison, float %.sroa.0.0.i53, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %.sroa.5.0.i52, i64 1
  %i.ev = fpext reassoc nsz arcp contract afn <2 x float> %i.eu to <2 x double>
  store <2 x double> %i.ev, ptr %3, align 16, !tbaa !96
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ex = fpext reassoc nsz arcp contract afn float %.sroa.8.0.i51 to double
  store double %i.ex, ptr %i.ew, align 16, !tbaa !98
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double 1.000000e+00, ptr %i.ey, align 8, !tbaa !99
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.df, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !102
  %i.fb = icmp eq ptr %1, %i.fa
  br i1 %i.fb, label %bb.ao, label %bb.bc

bb.ao:                                            ; preds = %update_colorpicker_color.exit54
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.fd = load float, ptr %i.dg, align 4, !tbaa !105 ; 2 uses
  %i.fe = fcmp reassoc nsz arcp contract afn une float %i.fd, -1.000000e+00
  br i1 %i.fe, label %bb.ap, label %update_balance_slider_colors.exit55

bb.ap:                                            ; preds = %bb.ao
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fd, 6.000000e+00 ; 8 uses
  %i.fg = fcmp reassoc nsz arcp contract afn olt float %i.ff, 4.000000e+00 ; 2 uses
  %.v.i8.i = select i1 %i.fg, float 2.000000e+00, float -4.000000e+00
  %i.fh = fadd reassoc nsz arcp contract afn float %.v.i8.i, %i.ff ; 5 uses
  %i.fi = fcmp reassoc nsz arcp contract afn olt float %i.fh, 1.000000e+00
  br i1 %i.fi, label %hue2rgb.exit.i9.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = fcmp reassoc nsz arcp contract afn olt float %i.fh, 3.000000e+00
  br i1 %i.fj, label %hue2rgb.exit.i9.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fk = fcmp reassoc nsz arcp contract afn olt float %i.fh, 4.000000e+00
  %i.fl = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.fh
  %i.fm = select reassoc nsz arcp contract afn i1 %i.fk, float %i.fl, float 0.000000e+00
  br label %hue2rgb.exit.i9.i

hue2rgb.exit.i9.i:                                ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0.i.i10.i = phi nsz float [ 1.000000e+00, %bb.aq ], [ %i.fm, %bb.ar ], [ %i.fh, %bb.ap ]
  %i.fn = fcmp reassoc nsz arcp contract afn olt float %i.ff, 1.000000e+00
  br i1 %i.fn, label %hue2rgb.exit36.i11.i, label %bb.as

bb.as:                                            ; preds = %hue2rgb.exit.i9.i
  %i.fo = fcmp reassoc nsz arcp contract afn olt float %i.ff, 3.000000e+00
  br i1 %i.fo, label %hue2rgb.exit36.i11.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fp = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ff
  %i.fq = select reassoc nsz arcp contract afn i1 %i.fg, float %i.fp, float 0.000000e+00
  br label %hue2rgb.exit36.i11.i

hue2rgb.exit36.i11.i:                             ; preds = %bb.at, %bb.as, %hue2rgb.exit.i9.i
  %.0.i35.i12.i = phi nsz float [ 1.000000e+00, %bb.as ], [ %i.fq, %bb.at ], [ %i.ff, %hue2rgb.exit.i9.i ]
  %i.fr = fcmp reassoc nsz arcp contract afn ogt float %i.ff, 2.000000e+00
  %.v34.i13.i = select i1 %i.fr, float -2.000000e+00, float 4.000000e+00
  %i.fs = fadd reassoc nsz arcp contract afn float %.v34.i13.i, %i.ff ; 5 uses
  %i.ft = fcmp reassoc nsz arcp contract afn olt float %i.fs, 1.000000e+00
  br i1 %i.ft, label %hsl2rgb.exit15.i, label %bb.au

bb.au:                                            ; preds = %hue2rgb.exit36.i11.i
  %i.fu = fcmp reassoc nsz arcp contract afn olt float %i.fs, 3.000000e+00
  br i1 %i.fu, label %hsl2rgb.exit15.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fv = fcmp reassoc nsz arcp contract afn olt float %i.fs, 4.000000e+00
  %i.fw = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.fs
  %i.fx = select reassoc nsz arcp contract afn i1 %i.fv, float %i.fw, float 0.000000e+00
  br label %hsl2rgb.exit15.i

hsl2rgb.exit15.i:                                 ; preds = %bb.av, %bb.au, %hue2rgb.exit36.i11.i
  %.0.i37.i14.i = phi nsz float [ 1.000000e+00, %bb.au ], [ %i.fx, %bb.av ], [ %i.fs, %hue2rgb.exit36.i11.i ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fc, float noundef 1.000000e+00, float noundef %.0.i.i10.i, float noundef %.0.i35.i12.i, float noundef %.0.i37.i14.i) #20
  br label %update_balance_slider_colors.exit55

update_balance_slider_colors.exit55:              ; preds = %bb.ao, %hsl2rgb.exit15.i
  call void @gtk_widget_queue_draw(ptr noundef %i.fc) #20
  %i.fy = load ptr, ptr %i.cy, align 8, !tbaa !101
  %i.fz = load float, ptr %i.dg, align 4, !tbaa !105
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, 6.000000e+00 ; 8 uses
  %i.gb = fcmp reassoc nsz arcp contract afn olt float %i.ga, 4.000000e+00 ; 2 uses
  %.v.i.i56 = select i1 %i.gb, float 2.000000e+00, float -4.000000e+00
  %i.gc = fadd reassoc nsz arcp contract afn float %.v.i.i56, %i.ga ; 5 uses
  %i.gd = fcmp reassoc nsz arcp contract afn olt float %i.gc, 1.000000e+00
  br i1 %i.gd, label %hue2rgb.exit.i.i57, label %bb.aw

bb.aw:                                            ; preds = %update_balance_slider_colors.exit55
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %i.gc, 3.000000e+00
  br i1 %i.ge, label %hue2rgb.exit.i.i57, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gf = fcmp reassoc nsz arcp contract afn olt float %i.gc, 4.000000e+00
  %i.gg = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.gc
  %i.gh = select reassoc nsz arcp contract afn i1 %i.gf, float %i.gg, float 0.000000e+00
  br label %hue2rgb.exit.i.i57

hue2rgb.exit.i.i57:                               ; preds = %bb.ax, %bb.aw, %update_balance_slider_colors.exit55
  %.0.i.i.i58 = phi nsz float [ 1.000000e+00, %bb.aw ], [ %i.gh, %bb.ax ], [ %i.gc, %update_balance_slider_colors.exit55 ]
  %i.gi = fcmp reassoc nsz arcp contract afn olt float %i.ga, 1.000000e+00
  br i1 %i.gi, label %hue2rgb.exit36.i.i59, label %bb.ay

bb.ay:                                            ; preds = %hue2rgb.exit.i.i57
  %i.gj = fcmp reassoc nsz arcp contract afn olt float %i.ga, 3.000000e+00
  br i1 %i.gj, label %hue2rgb.exit36.i.i59, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gk = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ga
  %i.gl = select reassoc nsz arcp contract afn i1 %i.gb, float %i.gk, float 0.000000e+00
  br label %hue2rgb.exit36.i.i59

hue2rgb.exit36.i.i59:                             ; preds = %bb.az, %bb.ay, %hue2rgb.exit.i.i57
  %.0.i35.i.i60 = phi nsz float [ 1.000000e+00, %bb.ay ], [ %i.gl, %bb.az ], [ %i.ga, %hue2rgb.exit.i.i57 ]
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.ga, 2.000000e+00
  %.v34.i.i61 = select i1 %i.gm, float -2.000000e+00, float 4.000000e+00
  %i.gn = fadd reassoc nsz arcp contract afn float %.v34.i.i61, %i.ga ; 5 uses
  %i.go = fcmp reassoc nsz arcp contract afn olt float %i.gn, 1.000000e+00
  br i1 %i.go, label %update_saturation_slider_end_color.exit64, label %bb.ba

bb.ba:                                            ; preds = %hue2rgb.exit36.i.i59
  %i.gp = fcmp reassoc nsz arcp contract afn olt float %i.gn, 3.000000e+00
  br i1 %i.gp, label %update_saturation_slider_end_color.exit64, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = fcmp reassoc nsz arcp contract afn olt float %i.gn, 4.000000e+00
  %i.gr = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.gn
  %i.gs = select reassoc nsz arcp contract afn i1 %i.gq, float %i.gr, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit64

update_saturation_slider_end_color.exit64:        ; preds = %hue2rgb.exit36.i.i59, %bb.ba, %bb.bb
  %.0.i37.i.i63 = phi nsz float [ 1.000000e+00, %bb.ba ], [ %i.gs, %bb.bb ], [ %i.gn, %hue2rgb.exit36.i.i59 ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fy, float noundef 1.000000e+00, float noundef %.0.i.i.i58, float noundef %.0.i35.i.i60, float noundef %.0.i37.i.i63) #20
  br label %.sink.split

.sink.split:                                      ; preds = %update_saturation_slider_end_color.exit, %update_saturation_slider_end_color.exit64
  %.sink.in = phi ptr [ %i.cy, %update_saturation_slider_end_color.exit64 ], [ %i.e, %update_saturation_slider_end_color.exit ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !106
  call void @gtk_widget_queue_draw(ptr noundef %.sink) #20
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %bb.ac, %update_colorpicker_color.exit54, %update_colorpicker_color.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_balance_slider_colors(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn une float %1, -1.000000e+00
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = fmul reassoc nsz arcp contract afn float %1, 6.000000e+00 ; 8 uses
  %i.c = fcmp reassoc nsz arcp contract afn olt float %i.b, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.c, float 2.000000e+00, float -4.000000e+00
  %i.d = fadd reassoc nsz arcp contract afn float %.v.i, %i.b ; 5 uses
  %i.e = fcmp reassoc nsz arcp contract afn olt float %i.d, 1.000000e+00
  br i1 %i.e, label %hue2rgb.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp reassoc nsz arcp contract afn olt float %i.d, 3.000000e+00
  br i1 %i.f, label %hue2rgb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp reassoc nsz arcp contract afn olt float %i.d, 4.000000e+00
  %i.h = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.d
  %i.i = select reassoc nsz arcp contract afn i1 %i.g, float %i.h, float 0.000000e+00
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.b, %bb.d, %bb.c
  %.0.i.i = phi nsz float [ 1.000000e+00, %bb.c ], [ %i.i, %bb.d ], [ %i.d, %bb.b ]
  %i.j = fcmp reassoc nsz arcp contract afn olt float %i.b, 1.000000e+00
  br i1 %i.j, label %hue2rgb.exit36.i, label %bb.e

bb.e:                                             ; preds = %hue2rgb.exit.i
  %i.k = fcmp reassoc nsz arcp contract afn olt float %i.b, 3.000000e+00
  br i1 %i.k, label %hue2rgb.exit36.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.c, float %i.l, float 0.000000e+00
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %hue2rgb.exit.i, %bb.f, %bb.e
  %.0.i35.i = phi nsz float [ 1.000000e+00, %bb.e ], [ %i.m, %bb.f ], [ %i.b, %hue2rgb.exit.i ]
  %i.n = fcmp reassoc nsz arcp contract afn ogt float %i.b, 2.000000e+00
  %.v34.i = select i1 %i.n, float -2.000000e+00, float 4.000000e+00
  %i.o = fadd reassoc nsz arcp contract afn float %.v34.i, %i.b ; 5 uses
  %i.p = fcmp reassoc nsz arcp contract afn olt float %i.o, 1.000000e+00
  br i1 %i.p, label %hsl2rgb.exit, label %bb.g

bb.g:                                             ; preds = %hue2rgb.exit36.i
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.o, 3.000000e+00
  br i1 %i.q, label %hsl2rgb.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.o, 4.000000e+00
  %i.s = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.o
  %i.t = select reassoc nsz arcp contract afn i1 %i.r, float %i.s, float 0.000000e+00
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %hue2rgb.exit36.i, %bb.g, %bb.h
  %.0.i37.i = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.t, %bb.h ], [ %i.o, %hue2rgb.exit36.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %0, float noundef 0.000000e+00, float noundef %.0.i.i, float noundef %.0.i35.i, float noundef %.0.i37.i) #20
  br label %bb.i

bb.i:                                             ; preds = %hsl2rgb.exit, %bb.a
  %i.u = fcmp reassoc nsz arcp contract afn une float %2, -1.000000e+00
  br i1 %i.u, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.v = fmul reassoc nsz arcp contract afn float %2, 6.000000e+00 ; 8 uses
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.v, 4.000000e+00 ; 2 uses
  %.v.i8 = select i1 %i.w, float 2.000000e+00, float -4.000000e+00
  %i.x = fadd reassoc nsz arcp contract afn float %.v.i8, %i.v ; 5 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.000000e+00
  br i1 %i.y, label %hue2rgb.exit.i9, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.x, 3.000000e+00
  br i1 %i.z, label %hue2rgb.exit.i9, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.x, 4.000000e+00
  %i.ab = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.x
  %i.ac = select reassoc nsz arcp contract afn i1 %i.aa, float %i.ab, float 0.000000e+00
  br label %hue2rgb.exit.i9

hue2rgb.exit.i9:                                  ; preds = %bb.j, %bb.l, %bb.k
  %.0.i.i10 = phi nsz float [ 1.000000e+00, %bb.k ], [ %i.ac, %bb.l ], [ %i.x, %bb.j ]
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.v, 1.000000e+00
  br i1 %i.ad, label %hue2rgb.exit36.i11, label %bb.m

bb.m:                                             ; preds = %hue2rgb.exit.i9
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.v, 3.000000e+00
  br i1 %i.ae, label %hue2rgb.exit36.i11, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.v
  %i.ag = select reassoc nsz arcp contract afn i1 %i.w, float %i.af, float 0.000000e+00
  br label %hue2rgb.exit36.i11

hue2rgb.exit36.i11:                               ; preds = %hue2rgb.exit.i9, %bb.n, %bb.m
  %.0.i35.i12 = phi nsz float [ 1.000000e+00, %bb.m ], [ %i.ag, %bb.n ], [ %i.v, %hue2rgb.exit.i9 ]
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.v, 2.000000e+00
  %.v34.i13 = select i1 %i.ah, float -2.000000e+00, float 4.000000e+00
  %i.ai = fadd reassoc nsz arcp contract afn float %.v34.i13, %i.v ; 5 uses
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %i.ai, 1.000000e+00
  br i1 %i.aj, label %hsl2rgb.exit15, label %bb.o

bb.o:                                             ; preds = %hue2rgb.exit36.i11
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.ai, 3.000000e+00
  br i1 %i.ak, label %hsl2rgb.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ai, 4.000000e+00
  %i.am = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ai
  %i.an = select reassoc nsz arcp contract afn i1 %i.al, float %i.am, float 0.000000e+00
  br label %hsl2rgb.exit15

hsl2rgb.exit15:                                   ; preds = %hue2rgb.exit36.i11, %bb.o, %bb.p
  %.0.i37.i14 = phi nsz float [ 1.000000e+00, %bb.o ], [ %i.an, %bb.p ], [ %i.ai, %hue2rgb.exit36.i11 ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %0, float noundef 1.000000e+00, float noundef %.0.i.i10, float noundef %.0.i35.i12, float noundef %.0.i37.i14) #20
  br label %bb.q

bb.q:                                             ; preds = %hsl2rgb.exit15, %bb.i
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #20
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !88  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = load float, ptr %i.e, align 16, !tbaa !62 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.h = load float, ptr %i.g, align 4, !tbaa !62 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = load float, ptr %i.i, align 8, !tbaa !62 ; 5 uses
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.f, float %i.h)
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.k, float %i.j) ; 6 uses
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.f, float %i.h)
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.j) ; 3 uses
  %i.o = fsub reassoc nsz arcp contract afn float %i.l, %i.n ; 5 uses
  %i.p = fcmp reassoc nsz arcp contract afn une float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.b, label %rgb2hsl.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.q = fadd reassoc nsz arcp contract afn float %i.n, %i.l ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, 5.000000e-01
  %i.s = fcmp reassoc nsz arcp contract afn olt float %i.r, 5.000000e-01
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.u = fpext reassoc nsz arcp contract afn float %i.n to double
  %i.v = fadd reassoc nsz arcp contract afn double %i.t, %i.u
  %i.w = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.v
  %i.x = fptrunc reassoc nsz arcp contract afn double %i.w to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi float [ %i.x, %bb.c ], [ %i.q, %bb.b ]
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.z = fdiv reassoc nsz arcp contract afn float %i.o, %i.y ; 4 uses
  %i.aa = fcmp reassoc nsz arcp contract afn oeq float %i.l, %i.f
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = fsub reassoc nsz arcp contract afn float %i.h, %i.j
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.o
  br label %rgb2hsl.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.l, %i.h
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = fsub reassoc nsz arcp contract afn float %i.j, %i.f
  %i.af = fdiv reassoc nsz arcp contract afn float %i.ae, %i.o
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, 2.000000e+00
  br label %rgb2hsl.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = fcmp reassoc nsz arcp contract afn oeq float %i.l, %i.j
  br i1 %i.ah, label %bb.i, label %rgb2hsl.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = fsub reassoc nsz arcp contract afn float %i.f, %i.h
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %i.o
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, 4.000000e+00
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.043.i = phi nsz float [ %i.ac, %bb.e ], [ %i.ag, %bb.g ], [ %i.ak, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.al = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.am = fmul reassoc nsz arcp contract afn double %i.al, f0x3FC5555555555555 ; 3 uses
  %i.an = fptrunc reassoc nsz arcp contract afn double %i.am to float ; 3 uses
  %i.ao = fcmp reassoc nsz arcp contract afn olt double %i.am, f0xB690000000000000
  %i.ap = fadd reassoc nsz arcp contract afn float %i.an, 1.000000e+00
  %i.aq = fcmp reassoc nsz arcp contract afn ogt double %i.am, f0x3FF0000010000000
  %i.ar = fadd reassoc nsz arcp contract afn float %i.an, -1.000000e+00
  %spec.select.i = select nsz i1 %i.aq, float %i.ar, float %i.an
  %.1.i = select nsz i1 %i.ao, float %i.ap, float %spec.select.i ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 3 uses
  %i.au = icmp eq ptr %1, %i.at
  br i1 %i.au, label %bb.j, label %bb.r

rgb2hsl.exit.thread:                              ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102 ; 2 uses
  %i.ax = icmp eq ptr %1, %i.aw
  br i1 %i.ax, label %.thread, label %.thread72

.thread72:                                        ; preds = %rgb2hsl.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !91
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !92
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !100
  br label %bb.s

.thread:                                          ; preds = %rgb2hsl.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !103
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !100
  br label %bb.k

bb.j:                                             ; preds = %rgb2hsl.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !101 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !103 ; 2 uses
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !100 ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn une float %.1.i, -1.000000e+00
  br i1 %i.bu, label %bb.k, label %update_balance_slider_colors.exit

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bv = phi ptr [ %i.bm, %.thread ], [ %i.bt, %bb.j ] ; 2 uses
  %i.bw = phi ptr [ %i.bl, %.thread ], [ %i.bs, %bb.j ]
  %i.bx = phi ptr [ %i.bj, %.thread ], [ %i.bq, %bb.j ]
  %i.by = phi ptr [ %i.bh, %.thread ], [ %i.bo, %bb.j ]
  %i.bz = phi ptr [ %i.bg, %.thread ], [ %i.bn, %bb.j ]
  %.1.i6070 = phi float [ 0.000000e+00, %.thread ], [ %.1.i, %bb.j ] ; 2 uses
  %.0.i6569 = phi float [ 0.000000e+00, %.thread ], [ %i.z, %bb.j ]
  %i.ca = phi ptr [ %i.aw, %.thread ], [ %i.at, %bb.j ]
  %i.cb = fmul reassoc nsz arcp contract afn float %.1.i6070, 6.000000e+00 ; 8 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.cb, 4.000000e+00 ; 2 uses
  %.v.i8.i = select i1 %i.cc, float 2.000000e+00, float -4.000000e+00
  %i.cd = fadd reassoc nsz arcp contract afn float %.v.i8.i, %i.cb ; 5 uses
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.cd, 1.000000e+00
  br i1 %i.ce, label %hue2rgb.exit.i9.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.cd, 3.000000e+00
  br i1 %i.cf, label %hue2rgb.exit.i9.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = fcmp reassoc nsz arcp contract afn olt float %i.cd, 4.000000e+00
  %i.ch = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cd
  %i.ci = select reassoc nsz arcp contract afn i1 %i.cg, float %i.ch, float 0.000000e+00
  br label %hue2rgb.exit.i9.i

hue2rgb.exit.i9.i:                                ; preds = %bb.m, %bb.l, %bb.k
  %.0.i.i10.i = phi nsz float [ 1.000000e+00, %bb.l ], [ %i.ci, %bb.m ], [ %i.cd, %bb.k ]
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.cb, 1.000000e+00
  br i1 %i.cj, label %hue2rgb.exit36.i11.i, label %bb.n

bb.n:                                             ; preds = %hue2rgb.exit.i9.i
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.cb, 3.000000e+00
  br i1 %i.ck, label %hue2rgb.exit36.i11.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cb
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cc, float %i.cl, float 0.000000e+00
  br label %hue2rgb.exit36.i11.i

hue2rgb.exit36.i11.i:                             ; preds = %bb.o, %bb.n, %hue2rgb.exit.i9.i
  %.0.i35.i12.i = phi nsz float [ 1.000000e+00, %bb.n ], [ %i.cm, %bb.o ], [ %i.cb, %hue2rgb.exit.i9.i ]
  %i.cn = fcmp reassoc nsz arcp contract afn ogt float %i.cb, 2.000000e+00
  %.v34.i13.i = select i1 %i.cn, float -2.000000e+00, float 4.000000e+00
  %i.co = fadd reassoc nsz arcp contract afn float %.v34.i13.i, %i.cb ; 5 uses
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.co, 1.000000e+00
  br i1 %i.cp, label %hsl2rgb.exit15.i, label %bb.p

bb.p:                                             ; preds = %hue2rgb.exit36.i11.i
  %i.cq = fcmp reassoc nsz arcp contract afn olt float %i.co, 3.000000e+00
  br i1 %i.cq, label %hsl2rgb.exit15.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = fcmp reassoc nsz arcp contract afn olt float %i.co, 4.000000e+00
  %i.cs = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.co
  %i.ct = select reassoc nsz arcp contract afn i1 %i.cr, float %i.cs, float 0.000000e+00
  br label %hsl2rgb.exit15.i

hsl2rgb.exit15.i:                                 ; preds = %bb.q, %bb.p, %hue2rgb.exit36.i11.i
  %.0.i37.i14.i = phi nsz float [ 1.000000e+00, %bb.p ], [ %i.ct, %bb.q ], [ %i.co, %hue2rgb.exit36.i11.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bv, float noundef 1.000000e+00, float noundef %.0.i.i10.i, float noundef %.0.i35.i12.i, float noundef %.0.i37.i14.i) #20
  br label %update_balance_slider_colors.exit

bb.r:                                             ; preds = %rgb2hsl.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !91 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !90 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !92 ; 2 uses
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !100 ; 2 uses
  %i.dc = fcmp reassoc nsz arcp contract afn une float %.1.i, -1.000000e+00
  br i1 %i.dc, label %bb.s, label %update_balance_slider_colors.exit

bb.s:                                             ; preds = %.thread72, %bb.r
  %i.dd = phi ptr [ %i.bf, %.thread72 ], [ %i.db, %bb.r ] ; 2 uses
  %i.de = phi ptr [ %i.be, %.thread72 ], [ %i.da, %bb.r ]
  %i.df = phi ptr [ %i.bc, %.thread72 ], [ %i.cy, %bb.r ]
  %i.dg = phi ptr [ %i.ba, %.thread72 ], [ %i.cw, %bb.r ]
  %i.dh = phi ptr [ %i.ay, %.thread72 ], [ %i.cu, %bb.r ]
  %.1.i6278 = phi float [ 0.000000e+00, %.thread72 ], [ %.1.i, %bb.r ] ; 2 uses
  %.0.i6476 = phi float [ 0.000000e+00, %.thread72 ], [ %i.z, %bb.r ]
  %i.di = fmul reassoc nsz arcp contract afn float %.1.i6278, 6.000000e+00 ; 8 uses
  %i.dj = fcmp reassoc nsz arcp contract afn olt float %i.di, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.dj, float 2.000000e+00, float -4.000000e+00
  %i.dk = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.di ; 5 uses
  %i.dl = fcmp reassoc nsz arcp contract afn olt float %i.dk, 1.000000e+00
  br i1 %i.dl, label %hue2rgb.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = fcmp reassoc nsz arcp contract afn olt float %i.dk, 3.000000e+00
  br i1 %i.dm, label %hue2rgb.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = fcmp reassoc nsz arcp contract afn olt float %i.dk, 4.000000e+00
  %i.do = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.dk
  %i.dp = select reassoc nsz arcp contract afn i1 %i.dn, float %i.do, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.u, %bb.t, %bb.s
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.t ], [ %i.dp, %bb.u ], [ %i.dk, %bb.s ]
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %i.di, 1.000000e+00
  br i1 %i.dq, label %hue2rgb.exit36.i.i, label %bb.v

bb.v:                                             ; preds = %hue2rgb.exit.i.i
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.di, 3.000000e+00
  br i1 %i.dr, label %hue2rgb.exit36.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.di
  %i.dt = select reassoc nsz arcp contract afn i1 %i.dj, float %i.ds, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.w, %bb.v, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.v ], [ %i.dt, %bb.w ], [ %i.di, %hue2rgb.exit.i.i ]
  %i.du = fcmp reassoc nsz arcp contract afn ogt float %i.di, 2.000000e+00
  %.v34.i.i = select i1 %i.du, float -2.000000e+00, float 4.000000e+00
  %i.dv = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.di ; 5 uses
  %i.dw = fcmp reassoc nsz arcp contract afn olt float %i.dv, 1.000000e+00
  br i1 %i.dw, label %hsl2rgb.exit.i, label %bb.x

bb.x:                                             ; preds = %hue2rgb.exit36.i.i
  %i.dx = fcmp reassoc nsz arcp contract afn olt float %i.dv, 3.000000e+00
  br i1 %i.dx, label %hsl2rgb.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = fcmp reassoc nsz arcp contract afn olt float %i.dv, 4.000000e+00
  %i.dz = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.dv
  %i.ea = select reassoc nsz arcp contract afn i1 %i.dy, float %i.dz, float 0.000000e+00
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.y, %bb.x, %hue2rgb.exit36.i.i
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.x ], [ %i.ea, %bb.y ], [ %i.dv, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.dd, float noundef 0.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #20
  br label %update_balance_slider_colors.exit

update_balance_slider_colors.exit:                ; preds = %hsl2rgb.exit.i, %bb.r, %hsl2rgb.exit15.i, %bb.j
  %.sink = phi ptr [ %i.bv, %hsl2rgb.exit15.i ], [ %i.bt, %bb.j ], [ %i.db, %bb.r ], [ %i.dd, %hsl2rgb.exit.i ]
  %.0.i63 = phi float [ %.0.i6569, %hsl2rgb.exit15.i ], [ %i.z, %bb.j ], [ %i.z, %bb.r ], [ %.0.i6476, %hsl2rgb.exit.i ] ; 11 uses
  %.1.i61 = phi float [ %.1.i6070, %hsl2rgb.exit15.i ], [ -1.000000e+00, %bb.j ], [ -1.000000e+00, %bb.r ], [ %.1.i6278, %hsl2rgb.exit.i ] ; 5 uses
  %.030 = phi ptr [ %i.bz, %hsl2rgb.exit15.i ], [ %i.bn, %bb.j ], [ %i.d, %bb.r ], [ %i.d, %hsl2rgb.exit.i ] ; 2 uses
  %.029 = phi ptr [ %i.by, %hsl2rgb.exit15.i ], [ %i.bo, %bb.j ], [ %i.cu, %bb.r ], [ %i.dh, %hsl2rgb.exit.i ] ; 2 uses
  %.028 = phi ptr [ %i.bx, %hsl2rgb.exit15.i ], [ %i.bq, %bb.j ], [ %i.cy, %bb.r ], [ %i.df, %hsl2rgb.exit.i ] ; 2 uses
  %.027 = phi ptr [ %i.ca, %hsl2rgb.exit15.i ], [ %i.at, %bb.j ], [ %i.cw, %bb.r ], [ %i.dg, %hsl2rgb.exit.i ]
  %.0 = phi ptr [ %i.bw, %hsl2rgb.exit15.i ], [ %i.bs, %bb.j ], [ %i.da, %bb.r ], [ %i.de, %hsl2rgb.exit.i ]
  tail call void @gtk_widget_queue_draw(ptr noundef %.sink) #20
  %i.eb = load float, ptr %.030, align 4, !tbaa !62
  %i.ec = fsub reassoc nsz arcp contract afn float %i.eb, %.1.i61
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ec)
  %i.ee = fcmp reassoc nsz arcp contract afn olt float %i.ed, f0x38D1B717
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %update_balance_slider_colors.exit
  %i.ef = load float, ptr %.029, align 4, !tbaa !62
  %i.eg = fsub reassoc nsz arcp contract afn float %i.ef, %.0.i63
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eg)
  %i.ei = fcmp reassoc nsz arcp contract afn olt float %i.eh, f0x38D1B717
  br i1 %i.ei, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %update_balance_slider_colors.exit
  store float %.1.i61, ptr %.030, align 4, !tbaa !62
  store float %.0.i63, ptr %.029, align 4, !tbaa !62
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !107
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 104
  %i.el = atomicrmw add ptr %i.ek, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @dt_bauhaus_slider_set(ptr noundef %.027, float noundef %.1.i61) #20
  tail call void @dt_bauhaus_slider_set(ptr noundef %.028, float noundef %.0.i63) #20
  %i.em = fcmp reassoc nsz arcp contract afn oeq float %.0.i63, 0.000000e+00
  br i1 %i.em, label %.update_colorpicker_color.exit_crit_edge, label %bb.ab

.update_colorpicker_color.exit_crit_edge:         ; preds = %bb.aa
  %.pre = fmul reassoc nsz arcp contract afn float %.1.i61, 6.000000e+00
  br label %update_colorpicker_color.exit

bb.ab:                                            ; preds = %bb.aa
  %i.en = fmul reassoc nsz arcp contract afn float %.0.i63, 5.000000e-01 ; 2 uses
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, 5.000000e-01 ; 3 uses
  %i.ep = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.en ; 9 uses
  %i.eq = fmul reassoc nsz arcp contract afn float %.1.i61, 6.000000e+00 ; 11 uses
  %i.er = fcmp reassoc nsz arcp contract afn olt float %i.eq, 4.000000e+00 ; 2 uses
  %.v.i.i33 = select i1 %i.er, float 2.000000e+00, float -4.000000e+00
  %i.es = fadd reassoc nsz arcp contract afn float %.v.i.i33, %i.eq ; 5 uses
  %i.et = fcmp reassoc nsz arcp contract afn olt float %i.es, 1.000000e+00
  br i1 %i.et, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = fmul reassoc nsz arcp contract afn float %i.es, %.0.i63
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.ep
  br label %hue2rgb.exit.i.i34

bb.ad:                                            ; preds = %bb.ab
  %i.ew = fcmp reassoc nsz arcp contract afn olt float %i.es, 3.000000e+00
  br i1 %i.ew, label %hue2rgb.exit.i.i34, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ex = fcmp reassoc nsz arcp contract afn olt float %i.es, 4.000000e+00
  %i.ey = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.es
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, %.0.i63
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.ep
  %i.fb = select reassoc nsz arcp contract afn i1 %i.ex, float %i.fa, float %i.ep
  br label %hue2rgb.exit.i.i34

hue2rgb.exit.i.i34:                               ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i.i.i35 = phi nsz float [ %i.ev, %bb.ac ], [ %i.fb, %bb.ae ], [ %i.eo, %bb.ad ] ; 3 uses
  %i.fc = fcmp reassoc nsz arcp contract afn olt float %i.eq, 1.000000e+00
  br i1 %i.fc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %hue2rgb.exit.i.i34
  %i.fd = fmul reassoc nsz arcp contract afn float %i.eq, %.0.i63
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.ep
  br label %hue2rgb.exit36.i.i36

bb.ag:                                            ; preds = %hue2rgb.exit.i.i34
  %i.ff = fcmp reassoc nsz arcp contract afn olt float %i.eq, 3.000000e+00
  br i1 %i.ff, label %hue2rgb.exit36.i.i36, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fg = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.eq
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %.0.i63
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %i.ep
  %i.fj = select reassoc nsz arcp contract afn i1 %i.er, float %i.fi, float %i.ep
  br label %hue2rgb.exit36.i.i36

hue2rgb.exit36.i.i36:                             ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i35.i.i37 = phi nsz float [ %i.fe, %bb.af ], [ %i.fj, %bb.ah ], [ %i.eo, %bb.ag ] ; 3 uses
  %i.fk = fcmp reassoc nsz arcp contract afn ogt float %i.eq, 2.000000e+00
  %.v34.i.i38 = select i1 %i.fk, float -2.000000e+00, float 4.000000e+00
  %i.fl = fadd reassoc nsz arcp contract afn float %.v34.i.i38, %i.eq ; 5 uses
  %i.fm = fcmp reassoc nsz arcp contract afn olt float %i.fl, 1.000000e+00
  br i1 %i.fm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %hue2rgb.exit36.i.i36
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fl, %.0.i63
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, %i.ep
  br label %update_colorpicker_color.exit

bb.aj:                                            ; preds = %hue2rgb.exit36.i.i36
  %i.fp = fcmp reassoc nsz arcp contract afn olt float %i.fl, 3.000000e+00
  br i1 %i.fp, label %update_colorpicker_color.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = fcmp reassoc nsz arcp contract afn olt float %i.fl, 4.000000e+00
  %i.fr = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.fl
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %.0.i63
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %i.ep
  %i.fu = select reassoc nsz arcp contract afn i1 %i.fq, float %i.ft, float %i.ep
  br label %update_colorpicker_color.exit

update_colorpicker_color.exit:                    ; preds = %.update_colorpicker_color.exit_crit_edge, %bb.ai, %bb.aj, %bb.ak
  %.pre-phi = phi float [ %.pre, %.update_colorpicker_color.exit_crit_edge ], [ %i.eq, %bb.ai ], [ %i.eq, %bb.aj ], [ %i.eq, %bb.ak ] ; 8 uses
  %.sroa.8.0.i = phi nsz float [ 5.000000e-01, %.update_colorpicker_color.exit_crit_edge ], [ %i.fo, %bb.ai ], [ %i.eo, %bb.aj ], [ %i.fu, %bb.ak ]
  %.sroa.5.0.i = phi nsz float [ 5.000000e-01, %.update_colorpicker_color.exit_crit_edge ], [ %.0.i35.i.i37, %bb.ai ], [ %.0.i35.i.i37, %bb.aj ], [ %.0.i35.i.i37, %bb.ak ]
  %.sroa.0.0.i = phi nsz float [ 5.000000e-01, %.update_colorpicker_color.exit_crit_edge ], [ %.0.i.i.i35, %bb.ai ], [ %.0.i.i.i35, %bb.aj ], [ %.0.i.i.i35, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.fv = insertelement <2 x float> poison, float %.sroa.0.0.i, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %.sroa.5.0.i, i64 1
  %i.fx = fpext reassoc nsz arcp contract afn <2 x float> %i.fw to <2 x double>
  store <2 x double> %i.fx, ptr %3, align 16, !tbaa !96
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fz = fpext reassoc nsz arcp contract afn float %.sroa.8.0.i to double
  store double %i.fz, ptr %i.fy, align 16, !tbaa !98
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double 1.000000e+00, ptr %i.ga, align 8, !tbaa !99
  call void @gtk_color_chooser_set_rgba(ptr noundef %.0, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.gb = fcmp reassoc nsz arcp contract afn olt float %.pre-phi, 4.000000e+00 ; 2 uses
  %.v.i.i40 = select i1 %i.gb, float 2.000000e+00, float -4.000000e+00
  %i.gc = fadd reassoc nsz arcp contract afn float %.v.i.i40, %.pre-phi ; 5 uses
  %i.gd = fcmp reassoc nsz arcp contract afn olt float %i.gc, 1.000000e+00
  br i1 %i.gd, label %hue2rgb.exit.i.i41, label %bb.al

bb.al:                                            ; preds = %update_colorpicker_color.exit
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %i.gc, 3.000000e+00
  br i1 %i.ge, label %hue2rgb.exit.i.i41, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gf = fcmp reassoc nsz arcp contract afn olt float %i.gc, 4.000000e+00
  %i.gg = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.gc
  %i.gh = select reassoc nsz arcp contract afn i1 %i.gf, float %i.gg, float 0.000000e+00
  br label %hue2rgb.exit.i.i41

hue2rgb.exit.i.i41:                               ; preds = %bb.am, %bb.al, %update_colorpicker_color.exit
  %.0.i.i.i42 = phi nsz float [ 1.000000e+00, %bb.al ], [ %i.gh, %bb.am ], [ %i.gc, %update_colorpicker_color.exit ]
  %i.gi = fcmp reassoc nsz arcp contract afn olt float %.pre-phi, 1.000000e+00
  br i1 %i.gi, label %hue2rgb.exit36.i.i43, label %bb.an

bb.an:                                            ; preds = %hue2rgb.exit.i.i41
  %i.gj = fcmp reassoc nsz arcp contract afn olt float %.pre-phi, 3.000000e+00
  br i1 %i.gj, label %hue2rgb.exit36.i.i43, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gk = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %.pre-phi
  %i.gl = select reassoc nsz arcp contract afn i1 %i.gb, float %i.gk, float 0.000000e+00
  br label %hue2rgb.exit36.i.i43

hue2rgb.exit36.i.i43:                             ; preds = %bb.ao, %bb.an, %hue2rgb.exit.i.i41
  %.0.i35.i.i44 = phi nsz float [ 1.000000e+00, %bb.an ], [ %i.gl, %bb.ao ], [ %.pre-phi, %hue2rgb.exit.i.i41 ]
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %.pre-phi, 2.000000e+00
  %.v34.i.i45 = select i1 %i.gm, float -2.000000e+00, float 4.000000e+00
  %i.gn = fadd reassoc nsz arcp contract afn float %.v34.i.i45, %.pre-phi ; 5 uses
  %i.go = fcmp reassoc nsz arcp contract afn olt float %i.gn, 1.000000e+00
  br i1 %i.go, label %update_saturation_slider_end_color.exit, label %bb.ap

bb.ap:                                            ; preds = %hue2rgb.exit36.i.i43
  %i.gp = fcmp reassoc nsz arcp contract afn olt float %i.gn, 3.000000e+00
  br i1 %i.gp, label %update_saturation_slider_end_color.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gq = fcmp reassoc nsz arcp contract afn olt float %i.gn, 4.000000e+00
  %i.gr = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.gn
  %i.gs = select reassoc nsz arcp contract afn i1 %i.gq, float %i.gr, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit

update_saturation_slider_end_color.exit:          ; preds = %hue2rgb.exit36.i.i43, %bb.ap, %bb.aq
  %.0.i37.i.i47 = phi nsz float [ 1.000000e+00, %bb.ap ], [ %i.gs, %bb.aq ], [ %i.gn, %hue2rgb.exit36.i.i43 ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %.028, float noundef 1.000000e+00, float noundef %.0.i.i.i42, float noundef %.0.i35.i.i44, float noundef %.0.i37.i.i47) #20
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !107
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 104
  %i.gv = atomicrmw add ptr %i.gu, i32 -1 seq_cst, align 4 ; 0 uses
  %i.gw = load ptr, ptr %i.b, align 8, !tbaa !100
  call void @gtk_widget_queue_draw(ptr noundef %i.gw) #20
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !108
  call void @dt_dev_add_history_item(ptr noundef %i.gx, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.z, %update_saturation_slider_end_color.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !77  ; 2 uses
  %i.c = load <4 x float>, ptr %1, align 4, !tbaa !62
  store <4 x float> %i.c, ptr %i.b, align 4, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load <2 x float>, ptr %i.d, align 4, !tbaa !62
  store <2 x float> %i.f, ptr %i.e, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !77
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 16, !tbaa !77
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %2 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !88  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = load float, ptr %i.d, align 4, !tbaa !95
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !94
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.k) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !105
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.m, float noundef %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !104
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.q, float noundef %i.s) #20
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !136
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.v) #20
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !137
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.x, float noundef %i.z) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !92
  %i.ac = load float, ptr %i.j, align 4, !tbaa !94 ; 8 uses
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, 0.000000e+00
  br i1 %i.ad, label %update_colorpicker_color.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load float, ptr %i.d, align 4, !tbaa !95
  %i.af = fmul reassoc nsz arcp contract afn float %i.ac, 5.000000e-01 ; 2 uses
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, 5.000000e-01 ; 3 uses
  %i.ah = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.af ; 9 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ae, 6.000000e+00 ; 8 uses
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %i.ai, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.aj, float 2.000000e+00, float -4.000000e+00
  %i.ak = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.ai ; 5 uses
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ak, 1.000000e+00
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = fmul reassoc nsz arcp contract afn float %i.ak, %i.ac
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, %i.ah
  br label %hue2rgb.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.ak, 3.000000e+00
  br i1 %i.ao, label %hue2rgb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ak, 4.000000e+00
  %i.aq = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ak
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.ac
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.ah
  %i.at = select reassoc nsz arcp contract afn i1 %i.ap, float %i.as, float %i.ah
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i.i = phi nsz float [ %i.an, %bb.c ], [ %i.at, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.ai, 1.000000e+00
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %hue2rgb.exit.i.i
  %i.av = fmul reassoc nsz arcp contract afn float %i.ai, %i.ac
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.ah
  br label %hue2rgb.exit36.i.i

bb.g:                                             ; preds = %hue2rgb.exit.i.i
  %i.ax = fcmp reassoc nsz arcp contract afn olt float %i.ai, 3.000000e+00
  br i1 %i.ax, label %hue2rgb.exit36.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ai
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.ac
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.ah
  %i.bb = select reassoc nsz arcp contract afn i1 %i.aj, float %i.ba, float %i.ah
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.h, %bb.g, %bb.f
  %.0.i35.i.i = phi nsz float [ %i.aw, %bb.f ], [ %i.bb, %bb.h ], [ %i.ag, %bb.g ] ; 3 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 2.000000e+00
  %.v34.i.i = select i1 %i.bc, float -2.000000e+00, float 4.000000e+00
  %i.bd = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.ai ; 5 uses
  %i.be = fcmp reassoc nsz arcp contract afn olt float %i.bd, 1.000000e+00
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %hue2rgb.exit36.i.i
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bd, %i.ac
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, %i.ah
  br label %update_colorpicker_color.exit

bb.j:                                             ; preds = %hue2rgb.exit36.i.i
  %i.bh = fcmp reassoc nsz arcp contract afn olt float %i.bd, 3.000000e+00
  br i1 %i.bh, label %update_colorpicker_color.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = fcmp reassoc nsz arcp contract afn olt float %i.bd, 4.000000e+00
  %i.bj = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.bd
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.ac
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.ah
  %i.bm = select reassoc nsz arcp contract afn i1 %i.bi, float %i.bl, float %i.ah
  br label %update_colorpicker_color.exit

update_colorpicker_color.exit:                    ; preds = %bb.a, %bb.i, %bb.j, %bb.k
  %.sroa.8.0.i = phi nsz float [ 5.000000e-01, %bb.a ], [ %i.bg, %bb.i ], [ %i.bm, %bb.k ], [ %i.ag, %bb.j ]
  %.sroa.5.0.i = phi nsz float [ 5.000000e-01, %bb.a ], [ %.0.i35.i.i, %bb.i ], [ %.0.i35.i.i, %bb.k ], [ %.0.i35.i.i, %bb.j ]
  %.sroa.0.0.i = phi nsz float [ 5.000000e-01, %bb.a ], [ %.0.i.i.i, %bb.i ], [ %.0.i.i.i, %bb.k ], [ %.0.i.i.i, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.bn = insertelement <2 x float> poison, float %.sroa.0.0.i, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %.sroa.5.0.i, i64 1
  %i.bp = fpext reassoc nsz arcp contract afn <2 x float> %i.bo to <2 x double>
  store <2 x double> %i.bp, ptr %2, align 16, !tbaa !96
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = fpext reassoc nsz arcp contract afn float %.sroa.8.0.i to double
  store double %i.br, ptr %i.bq, align 16, !tbaa !98
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 1.000000e+00, ptr %i.bs, align 8, !tbaa !99
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.ab, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !103
  %i.bv = load float, ptr %i.r, align 4, !tbaa !104 ; 8 uses
  %i.bw = fcmp reassoc nsz arcp contract afn oeq float %i.bv, 0.000000e+00
  br i1 %i.bw, label %update_colorpicker_color.exit36, label %bb.l

bb.l:                                             ; preds = %update_colorpicker_color.exit
  %i.bx = load float, ptr %i.n, align 4, !tbaa !105
  %i.by = fmul reassoc nsz arcp contract afn float %i.bv, 5.000000e-01 ; 2 uses
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, 5.000000e-01 ; 3 uses
  %i.ca = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.by ; 9 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bx, 6.000000e+00 ; 8 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.cb, 4.000000e+00 ; 2 uses
  %.v.i.i27 = select i1 %i.cc, float 2.000000e+00, float -4.000000e+00
  %i.cd = fadd reassoc nsz arcp contract afn float %.v.i.i27, %i.cb ; 5 uses
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.cd, 1.000000e+00
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = fmul reassoc nsz arcp contract afn float %i.cd, %i.bv
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.ca
  br label %hue2rgb.exit.i.i28

bb.n:                                             ; preds = %bb.l
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cd, 3.000000e+00
  br i1 %i.ch, label %hue2rgb.exit.i.i28, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.cd, 4.000000e+00
  %i.cj = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cd
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.bv
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.ca
  %i.cm = select reassoc nsz arcp contract afn i1 %i.ci, float %i.cl, float %i.ca
  br label %hue2rgb.exit.i.i28

hue2rgb.exit.i.i28:                               ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i.i29 = phi nsz float [ %i.cg, %bb.m ], [ %i.cm, %bb.o ], [ %i.bz, %bb.n ] ; 3 uses
  %i.cn = fcmp reassoc nsz arcp contract afn olt float %i.cb, 1.000000e+00
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %hue2rgb.exit.i.i28
  %i.co = fmul reassoc nsz arcp contract afn float %i.cb, %i.bv
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.ca
  br label %hue2rgb.exit36.i.i30

bb.q:                                             ; preds = %hue2rgb.exit.i.i28
  %i.cq = fcmp reassoc nsz arcp contract afn olt float %i.cb, 3.000000e+00
  br i1 %i.cq, label %hue2rgb.exit36.i.i30, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cb
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.bv
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, %i.ca
  %i.cu = select reassoc nsz arcp contract afn i1 %i.cc, float %i.ct, float %i.ca
  br label %hue2rgb.exit36.i.i30

hue2rgb.exit36.i.i30:                             ; preds = %bb.r, %bb.q, %bb.p
  %.0.i35.i.i31 = phi nsz float [ %i.cp, %bb.p ], [ %i.cu, %bb.r ], [ %i.bz, %bb.q ] ; 3 uses
  %i.cv = fcmp reassoc nsz arcp contract afn ogt float %i.cb, 2.000000e+00
  %.v34.i.i32 = select i1 %i.cv, float -2.000000e+00, float 4.000000e+00
  %i.cw = fadd reassoc nsz arcp contract afn float %.v34.i.i32, %i.cb ; 5 uses
  %i.cx = fcmp reassoc nsz arcp contract afn olt float %i.cw, 1.000000e+00
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %hue2rgb.exit36.i.i30
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cw, %i.bv
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, %i.ca
  br label %update_colorpicker_color.exit36

bb.t:                                             ; preds = %hue2rgb.exit36.i.i30
  %i.da = fcmp reassoc nsz arcp contract afn olt float %i.cw, 3.000000e+00
  br i1 %i.da, label %update_colorpicker_color.exit36, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = fcmp reassoc nsz arcp contract afn olt float %i.cw, 4.000000e+00
  %i.dc = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cw
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.bv
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %i.ca
  %i.df = select reassoc nsz arcp contract afn i1 %i.db, float %i.de, float %i.ca
  br label %update_colorpicker_color.exit36

update_colorpicker_color.exit36:                  ; preds = %update_colorpicker_color.exit, %bb.s, %bb.t, %bb.u
  %.sroa.8.0.i33 = phi nsz float [ 5.000000e-01, %update_colorpicker_color.exit ], [ %i.cz, %bb.s ], [ %i.df, %bb.u ], [ %i.bz, %bb.t ]
  %.sroa.5.0.i34 = phi nsz float [ 5.000000e-01, %update_colorpicker_color.exit ], [ %.0.i35.i.i31, %bb.s ], [ %.0.i35.i.i31, %bb.u ], [ %.0.i35.i.i31, %bb.t ]
  %.sroa.0.0.i35 = phi nsz float [ 5.000000e-01, %update_colorpicker_color.exit ], [ %.0.i.i.i29, %bb.s ], [ %.0.i.i.i29, %bb.u ], [ %.0.i.i.i29, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.dg = insertelement <2 x float> poison, float %.sroa.0.0.i35, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %.sroa.5.0.i34, i64 1
  %i.di = fpext reassoc nsz arcp contract afn <2 x float> %i.dh to <2 x double>
  store <2 x double> %i.di, ptr %1, align 16, !tbaa !96
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dk = fpext reassoc nsz arcp contract afn float %.sroa.8.0.i33 to double
  store double %i.dk, ptr %i.dj, align 16, !tbaa !98
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.dl, align 8, !tbaa !99
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.bu, ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.dn = load float, ptr %i.d, align 4, !tbaa !95
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, 6.000000e+00 ; 8 uses
  %i.dp = fcmp reassoc nsz arcp contract afn olt float %i.do, 4.000000e+00 ; 2 uses
  %.v.i.i37 = select i1 %i.dp, float 2.000000e+00, float -4.000000e+00
  %i.dq = fadd reassoc nsz arcp contract afn float %.v.i.i37, %i.do ; 5 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dq, 1.000000e+00
  br i1 %i.dr, label %hue2rgb.exit.i.i38, label %bb.v

bb.v:                                             ; preds = %update_colorpicker_color.exit36
  %i.ds = fcmp reassoc nsz arcp contract afn olt float %i.dq, 3.000000e+00
  br i1 %i.ds, label %hue2rgb.exit.i.i38, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = fcmp reassoc nsz arcp contract afn olt float %i.dq, 4.000000e+00
  %i.du = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.dq
  %i.dv = select reassoc nsz arcp contract afn i1 %i.dt, float %i.du, float 0.000000e+00
  br label %hue2rgb.exit.i.i38

hue2rgb.exit.i.i38:                               ; preds = %bb.w, %bb.v, %update_colorpicker_color.exit36
  %.0.i.i.i39 = phi nsz float [ 1.000000e+00, %bb.v ], [ %i.dv, %bb.w ], [ %i.dq, %update_colorpicker_color.exit36 ]
  %i.dw = fcmp reassoc nsz arcp contract afn olt float %i.do, 1.000000e+00
  br i1 %i.dw, label %hue2rgb.exit36.i.i40, label %bb.x

bb.x:                                             ; preds = %hue2rgb.exit.i.i38
  %i.dx = fcmp reassoc nsz arcp contract afn olt float %i.do, 3.000000e+00
  br i1 %i.dx, label %hue2rgb.exit36.i.i40, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.do
  %i.dz = select reassoc nsz arcp contract afn i1 %i.dp, float %i.dy, float 0.000000e+00
  br label %hue2rgb.exit36.i.i40

hue2rgb.exit36.i.i40:                             ; preds = %bb.y, %bb.x, %hue2rgb.exit.i.i38
  %.0.i35.i.i41 = phi nsz float [ 1.000000e+00, %bb.x ], [ %i.dz, %bb.y ], [ %i.do, %hue2rgb.exit.i.i38 ]
  %i.ea = fcmp reassoc nsz arcp contract afn ogt float %i.do, 2.000000e+00
  %.v34.i.i42 = select i1 %i.ea, float -2.000000e+00, float 4.000000e+00
  %i.eb = fadd reassoc nsz arcp contract afn float %.v34.i.i42, %i.do ; 5 uses
  %i.ec = fcmp reassoc nsz arcp contract afn olt float %i.eb, 1.000000e+00
  br i1 %i.ec, label %update_saturation_slider_end_color.exit, label %bb.z

bb.z:                                             ; preds = %hue2rgb.exit36.i.i40
  %i.ed = fcmp reassoc nsz arcp contract afn olt float %i.eb, 3.000000e+00
  br i1 %i.ed, label %update_saturation_slider_end_color.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = fcmp reassoc nsz arcp contract afn olt float %i.eb, 4.000000e+00
  %i.ef = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.eb
  %i.eg = select reassoc nsz arcp contract afn i1 %i.ee, float %i.ef, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit

update_saturation_slider_end_color.exit:          ; preds = %hue2rgb.exit36.i.i40, %bb.z, %bb.aa
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.z ], [ %i.eg, %bb.aa ], [ %i.eb, %hue2rgb.exit36.i.i40 ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.dm, float noundef 1.000000e+00, float noundef %.0.i.i.i39, float noundef %.0.i35.i.i41, float noundef %.0.i37.i.i) #20
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.ei = load float, ptr %i.n, align 4, !tbaa !105
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ei, 6.000000e+00 ; 8 uses
  %i.ek = fcmp reassoc nsz arcp contract afn olt float %i.ej, 4.000000e+00 ; 2 uses
  %.v.i.i43 = select i1 %i.ek, float 2.000000e+00, float -4.000000e+00
  %i.el = fadd reassoc nsz arcp contract afn float %.v.i.i43, %i.ej ; 5 uses
  %i.em = fcmp reassoc nsz arcp contract afn olt float %i.el, 1.000000e+00
  br i1 %i.em, label %hue2rgb.exit.i.i44, label %bb.ab

bb.ab:                                            ; preds = %update_saturation_slider_end_color.exit
  %i.en = fcmp reassoc nsz arcp contract afn olt float %i.el, 3.000000e+00
  br i1 %i.en, label %hue2rgb.exit.i.i44, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = fcmp reassoc nsz arcp contract afn olt float %i.el, 4.000000e+00
  %i.ep = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.el
  %i.eq = select reassoc nsz arcp contract afn i1 %i.eo, float %i.ep, float 0.000000e+00
  br label %hue2rgb.exit.i.i44

hue2rgb.exit.i.i44:                               ; preds = %bb.ac, %bb.ab, %update_saturation_slider_end_color.exit
  %.0.i.i.i45 = phi nsz float [ 1.000000e+00, %bb.ab ], [ %i.eq, %bb.ac ], [ %i.el, %update_saturation_slider_end_color.exit ]
  %i.er = fcmp reassoc nsz arcp contract afn olt float %i.ej, 1.000000e+00
  br i1 %i.er, label %hue2rgb.exit36.i.i46, label %bb.ad

bb.ad:                                            ; preds = %hue2rgb.exit.i.i44
  %i.es = fcmp reassoc nsz arcp contract afn olt float %i.ej, 3.000000e+00
  br i1 %i.es, label %hue2rgb.exit36.i.i46, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ej
  %i.eu = select reassoc nsz arcp contract afn i1 %i.ek, float %i.et, float 0.000000e+00
  br label %hue2rgb.exit36.i.i46

hue2rgb.exit36.i.i46:                             ; preds = %bb.ae, %bb.ad, %hue2rgb.exit.i.i44
  %.0.i35.i.i47 = phi nsz float [ 1.000000e+00, %bb.ad ], [ %i.eu, %bb.ae ], [ %i.ej, %hue2rgb.exit.i.i44 ]
  %i.ev = fcmp reassoc nsz arcp contract afn ogt float %i.ej, 2.000000e+00
  %.v34.i.i48 = select i1 %i.ev, float -2.000000e+00, float 4.000000e+00
  %i.ew = fadd reassoc nsz arcp contract afn float %.v34.i.i48, %i.ej ; 5 uses
  %i.ex = fcmp reassoc nsz arcp contract afn olt float %i.ew, 1.000000e+00
  br i1 %i.ex, label %update_saturation_slider_end_color.exit50, label %bb.af

bb.af:                                            ; preds = %hue2rgb.exit36.i.i46
  %i.ey = fcmp reassoc nsz arcp contract afn olt float %i.ew, 3.000000e+00
  br i1 %i.ey, label %update_saturation_slider_end_color.exit50, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = fcmp reassoc nsz arcp contract afn olt float %i.ew, 4.000000e+00
  %i.fa = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ew
  %i.fb = select reassoc nsz arcp contract afn i1 %i.ez, float %i.fa, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit50

update_saturation_slider_end_color.exit50:        ; preds = %hue2rgb.exit36.i.i46, %bb.af, %bb.ag
  %.0.i37.i.i49 = phi nsz float [ 1.000000e+00, %bb.af ], [ %i.fb, %bb.ag ], [ %i.ew, %hue2rgb.exit36.i.i46 ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.eh, float noundef 1.000000e+00, float noundef %.0.i.i.i45, float noundef %.0.i35.i.i47, float noundef %.0.i37.i.i49) #20
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.fd = load float, ptr %i.d, align 4, !tbaa !95
  %i.fe = load float, ptr %i.n, align 4, !tbaa !105
  call fastcc void @update_balance_slider_colors(ptr noundef %i.fc, float noundef %i.fd, float noundef %i.fe)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_module_t, align 16   ; 10 uses
  %2 = alloca %struct.dt_iop_module_t, align 16   ; 10 uses
  %i.a = alloca [1 x ptr], align 8                ; 2 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 64) #20 ; 18 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  store ptr %i.c, ptr %i.d, align 16, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1120) %1, i8 0, i64 1120, i1 false)
  store i32 8, ptr %1, align 16, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !139
  store ptr %i.g, ptr %i.e, align 16, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr %0, ptr %i.h, align 16, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !110
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 704
  store ptr %i.c, ptr %i.l, align 16, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 760
  store ptr @.str.10, ptr %i.m, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !111
  store ptr %i.p, ptr %i.n, align 8, !tbaa !111
  %i.q = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !91
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.q, float noundef 3.600000e+02) #20
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.s, ptr noundef nonnull @.str.12) #20
  %i.t = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #20
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1120) %2, i8 0, i64 1120, i1 false)
  store i32 8, ptr %2, align 16, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.w = load ptr, ptr %i.f, align 16, !tbaa !139
  store ptr %i.w, ptr %i.v, align 16, !tbaa !139
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 448
  store ptr %0, ptr %i.x, align 16, !tbaa !140
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.z = load <2 x ptr>, ptr %i.j, align 8, !tbaa !110
  store <2 x ptr> %i.z, ptr %i.y, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.ab = load ptr, ptr %i.d, align 16, !tbaa !88
  store ptr %i.ab, ptr %i.aa, align 16, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 760
  store ptr @.str.14, ptr %i.ac, align 8, !tbaa !141
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 824 ; 2 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !111
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !111
  %i.af = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %2, ptr noundef nonnull @.str.15) #20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !102
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.af, float noundef 3.600000e+02) #20
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !102
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ah, ptr noundef nonnull @.str.12) #20
  %i.ai = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %2, ptr noundef nonnull @.str.16) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !101
  %i.ak = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #20
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !110
  %i.al = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 501, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ak, ptr noundef nonnull %i.a) #20
  store ptr %i.al, ptr %i.o, align 8, !tbaa !111
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !91
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @gui_init_section(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.ao, ptr noundef nonnull %i.ap)
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !111
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !102
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !101
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call fastcc void @gui_init_section(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.as, ptr noundef nonnull %i.at)
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !111
  %i.av = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.20, i64 noundef 8) #20
  %i.aw = call ptr @gtk_label_new(ptr noundef %i.av) #20 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.aw, i32 noundef 0) #20
  call void @gtk_label_set_xalign(ptr noundef %i.aw, float noundef 5.000000e-01) #20
  call void @gtk_label_set_ellipsize(ptr noundef %i.aw, i32 noundef 3) #20
  call void @dt_gui_add_class(ptr noundef %i.aw, ptr noundef nonnull @.str.30) #20
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !110
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ax, align 8, !tbaa !110
  %i.ay = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 516, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.au, ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.az = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.21) #20 ; 2 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !100
  call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.az, i32 noundef 0) #20
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !100
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ba, i32 noundef 4) #20
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !100
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.bb, float noundef -1.000000e+02) #20
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !100
  call void @dt_bauhaus_slider_set_offset(ptr noundef %i.bc, float noundef 1.000000e+02) #20
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !100
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bd, float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #20
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !100
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.be, float noundef 1.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #20
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.bg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bf, ptr noundef %i.bg) #20
  %i.bh = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.23) #20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !109
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bh, ptr noundef nonnull @.str.24) #20
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !109
  %i.bk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bj, ptr noundef %i.bk) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gui_init_section(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5) unnamed_addr #11 {
bb.a:
  %i.a = alloca [3 x ptr], align 8                ; 4 uses
  %i.b = alloca [3 x ptr], align 8                ; 4 uses
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %3, i32 noundef 0) #20
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %3, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %3, float noundef 1.660000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #20
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %3, float noundef 3.220000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #20
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %3, float noundef 4.980000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #20
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %3, float noundef f0x3F29FBE7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %3, float noundef f0x3F547AE1, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %3, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %3, ptr noundef %i.c) #20
  %i.d = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 1, ptr noundef %3) #20 ; 0 uses
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %4, float noundef 0.000000e+00, float noundef 2.000000e-01, float noundef 2.000000e-01, float noundef 2.000000e-01) #20
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %4, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #20
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %4, ptr noundef %i.e) #20
  %i.f = tail call ptr @gtk_color_button_new() #20 ; 2 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !106
  tail call void @gtk_color_chooser_set_use_alpha(ptr noundef %i.f, i32 noundef 0) #20
  %i.g = load ptr, ptr %5, align 8, !tbaa !106
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #20
  tail call void @gtk_color_button_set_title(ptr noundef %i.g, ptr noundef %i.h) #20
  %i.i = load ptr, ptr %5, align 8, !tbaa !106
  %i.j = tail call i64 @g_signal_connect_data(ptr noundef %i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @colorpick_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.m = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef %1, i64 noundef 0) #20
  %i.n = tail call ptr @gtk_label_new(ptr noundef %i.m) #20 ; 5 uses
  tail call void @gtk_widget_set_halign(ptr noundef %i.n, i32 noundef 0) #20
  tail call void @gtk_label_set_xalign(ptr noundef %i.n, float noundef 5.000000e-01) #20
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.n, i32 noundef 3) #20
  tail call void @dt_gui_add_class(ptr noundef %i.n, ptr noundef nonnull @.str.30) #20
  store ptr %i.n, ptr %i.a, align 8, !tbaa !110
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #20
  tail call void @gtk_widget_set_hexpand(ptr noundef %2, i32 noundef 1) #20
  store ptr %2, ptr %i.b, align 8, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %5, align 8, !tbaa !106
  store ptr %i.r, ptr %i.q, align 8, !tbaa !110
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.s, align 8, !tbaa !110
  %i.t = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 481, ptr noundef nonnull @__FUNCTION__.gui_init_section, ptr noundef %i.p, ptr noundef nonnull %i.b) #20
  store ptr %i.t, ptr %i.o, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
begin_hunk_1_@get_p:bb.a

bb.k:                                             ; preds = %bb.j, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.j ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.11) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.13) #20
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.15) #20
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.16) #20
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.21) #20
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.23) #20
  %.not11 = icmp eq i32 %i.f, 0
  %. = select i1 %.not11, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ %., %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #12

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #20

declare void @gtk_color_chooser_set_rgba(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_color_button_new() local_unnamed_addr #3

declare void @gtk_color_chooser_set_use_alpha(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_color_button_set_title(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @colorpick_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 8           ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !88  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @gtk_color_chooser_get_rgba(ptr noundef %0, ptr noundef nonnull %2) #20
  %i.f = load double, ptr %2, align 8, !tbaa !145
  %i.g = fptrunc reassoc nsz arcp contract afn double %i.f to float ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !146
  %i.j = fptrunc reassoc nsz arcp contract afn double %i.i to float ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !98
  %i.m = fptrunc reassoc nsz arcp contract afn double %i.l to float ; 5 uses
  %i.n = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float %i.j)
  %i.o = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.n, float %i.m) ; 6 uses
  %i.p = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.g, float %i.j)
  %i.q = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.p, float %i.m) ; 3 uses
  %i.r = fsub reassoc nsz arcp contract afn float %i.o, %i.q ; 5 uses
  %i.s = fcmp reassoc nsz arcp contract afn une float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %rgb2hsl.exit

bb.c:                                             ; preds = %bb.b
  %i.t = fadd reassoc nsz arcp contract afn float %i.q, %i.o ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, 5.000000e-01
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.u, 5.000000e-01
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = fpext reassoc nsz arcp contract afn float %i.o to double
  %i.x = fpext reassoc nsz arcp contract afn float %i.q to double
  %i.y = fadd reassoc nsz arcp contract afn double %i.w, %i.x
  %i.z = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.y
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi float [ %i.aa, %bb.d ], [ %i.t, %bb.c ]
  %i.ab = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.r, %i.ab ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.o, %i.g
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = fsub reassoc nsz arcp contract afn float %i.j, %i.m
  %i.af = fdiv reassoc nsz arcp contract afn float %i.ae, %i.r
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ag = fcmp reassoc nsz arcp contract afn oeq float %i.o, %i.j
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = fsub reassoc nsz arcp contract afn float %i.m, %i.g
  %i.ai = fdiv reassoc nsz arcp contract afn float %i.ah, %i.r
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, 2.000000e+00
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ak = fcmp reassoc nsz arcp contract afn oeq float %i.o, %i.m
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = fsub reassoc nsz arcp contract afn float %i.g, %i.j
  %i.am = fdiv reassoc nsz arcp contract afn float %i.al, %i.r
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, 4.000000e+00
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.043.i = phi nsz float [ %i.af, %bb.f ], [ %i.aj, %bb.h ], [ %i.an, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.ao = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.ap = fmul reassoc nsz arcp contract afn double %i.ao, f0x3FC5555555555555 ; 3 uses
  %i.aq = fptrunc reassoc nsz arcp contract afn double %i.ap to float ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt double %i.ap, f0xB690000000000000
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = fadd reassoc nsz arcp contract afn float %i.aq, 1.000000e+00
  br label %rgb2hsl.exit

bb.m:                                             ; preds = %bb.k
  %i.at = fcmp reassoc nsz arcp contract afn ogt double %i.ap, f0x3FF0000010000000
  %i.au = fadd reassoc nsz arcp contract afn float %i.aq, -1.000000e+00
  %spec.select.i = select nsz i1 %i.at, float %i.au, float %i.aq
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %bb.b, %bb.l, %bb.m
  %.1.i = phi nsz float [ %i.as, %bb.l ], [ 0.000000e+00, %bb.b ], [ %spec.select.i, %bb.m ] ; 5 uses
  %.0.i = phi nsz float [ %i.ac, %bb.l ], [ 0.000000e+00, %bb.b ], [ %i.ac, %bb.m ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !92
  %i.ax = icmp eq ptr %0, %i.aw
  %i.ay = fcmp reassoc nsz arcp contract afn une float %.1.i, -1.000000e+00 ; 2 uses
  br i1 %i.ax, label %bb.n, label %bb.v

bb.n:                                             ; preds = %rgb2hsl.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !91
  call void @dt_bauhaus_slider_set(ptr noundef %i.ba, float noundef %.1.i) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !90
  call void @dt_bauhaus_slider_set(ptr noundef %i.bc, float noundef %.0.i) #20
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !100 ; 3 uses
  br i1 %i.ay, label %bb.o, label %update_balance_slider_colors.exit

bb.o:                                             ; preds = %bb.n
  %i.be = fmul reassoc nsz arcp contract afn float %.1.i, 6.000000e+00 ; 8 uses
  %i.bf = fcmp reassoc nsz arcp contract afn olt float %i.be, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.bf, float 2.000000e+00, float -4.000000e+00
  %i.bg = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.be ; 5 uses
  %i.bh = fcmp reassoc nsz arcp contract afn olt float %i.bg, 1.000000e+00
  br i1 %i.bh, label %hue2rgb.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = fcmp reassoc nsz arcp contract afn olt float %i.bg, 3.000000e+00
  br i1 %i.bi, label %hue2rgb.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bg, 4.000000e+00
  %i.bk = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.bg
  %i.bl = select reassoc nsz arcp contract afn i1 %i.bj, float %i.bk, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.q, %bb.p, %bb.o
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.p ], [ %i.bl, %bb.q ], [ %i.bg, %bb.o ]
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.be, 1.000000e+00
  br i1 %i.bm, label %hue2rgb.exit36.i.i, label %bb.r

bb.r:                                             ; preds = %hue2rgb.exit.i.i
  %i.bn = fcmp reassoc nsz arcp contract afn olt float %i.be, 3.000000e+00
  br i1 %i.bn, label %hue2rgb.exit36.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.be
  %i.bp = select reassoc nsz arcp contract afn i1 %i.bf, float %i.bo, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.s, %bb.r, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.r ], [ %i.bp, %bb.s ], [ %i.be, %hue2rgb.exit.i.i ]
  %i.bq = fcmp reassoc nsz arcp contract afn ogt float %i.be, 2.000000e+00
  %.v34.i.i = select i1 %i.bq, float -2.000000e+00, float 4.000000e+00
  %i.br = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.be ; 5 uses
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.br, 1.000000e+00
  br i1 %i.bs, label %hsl2rgb.exit.i, label %bb.t

bb.t:                                             ; preds = %hue2rgb.exit36.i.i
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.br, 3.000000e+00
  br i1 %i.bt, label %hsl2rgb.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.br, 4.000000e+00
  %i.bv = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.br
  %i.bw = select reassoc nsz arcp contract afn i1 %i.bu, float %i.bv, float 0.000000e+00
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.u, %bb.t, %hue2rgb.exit36.i.i
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.t ], [ %i.bw, %bb.u ], [ %i.br, %hue2rgb.exit36.i.i ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bd, float noundef 0.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #20
  br label %update_balance_slider_colors.exit

bb.v:                                             ; preds = %rgb2hsl.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !102
  call void @dt_bauhaus_slider_set(ptr noundef %i.by, float noundef %.1.i) #20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !101
  call void @dt_bauhaus_slider_set(ptr noundef %i.ca, float noundef %.0.i) #20
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !100 ; 3 uses
  br i1 %i.ay, label %bb.w, label %update_balance_slider_colors.exit

bb.w:                                             ; preds = %bb.v
  %i.cc = fmul reassoc nsz arcp contract afn float %.1.i, 6.000000e+00 ; 8 uses
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.cc, 4.000000e+00 ; 2 uses
  %.v.i8.i = select i1 %i.cd, float 2.000000e+00, float -4.000000e+00
  %i.ce = fadd reassoc nsz arcp contract afn float %.v.i8.i, %i.cc ; 5 uses
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.ce, 1.000000e+00
  br i1 %i.cf, label %hue2rgb.exit.i9.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = fcmp reassoc nsz arcp contract afn olt float %i.ce, 3.000000e+00
  br i1 %i.cg, label %hue2rgb.exit.i9.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.ce, 4.000000e+00
  %i.ci = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ce
  %i.cj = select reassoc nsz arcp contract afn i1 %i.ch, float %i.ci, float 0.000000e+00
  br label %hue2rgb.exit.i9.i

hue2rgb.exit.i9.i:                                ; preds = %bb.y, %bb.x, %bb.w
  %.0.i.i10.i = phi nsz float [ 1.000000e+00, %bb.x ], [ %i.cj, %bb.y ], [ %i.ce, %bb.w ]
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.cc, 1.000000e+00
  br i1 %i.ck, label %hue2rgb.exit36.i11.i, label %bb.z

bb.z:                                             ; preds = %hue2rgb.exit.i9.i
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.cc, 3.000000e+00
  br i1 %i.cl, label %hue2rgb.exit36.i11.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cc
  %i.cn = select reassoc nsz arcp contract afn i1 %i.cd, float %i.cm, float 0.000000e+00
  br label %hue2rgb.exit36.i11.i

hue2rgb.exit36.i11.i:                             ; preds = %bb.aa, %bb.z, %hue2rgb.exit.i9.i
  %.0.i35.i12.i = phi nsz float [ 1.000000e+00, %bb.z ], [ %i.cn, %bb.aa ], [ %i.cc, %hue2rgb.exit.i9.i ]
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cc, 2.000000e+00
  %.v34.i13.i = select i1 %i.co, float -2.000000e+00, float 4.000000e+00
  %i.cp = fadd reassoc nsz arcp contract afn float %.v34.i13.i, %i.cc ; 5 uses
  %i.cq = fcmp reassoc nsz arcp contract afn olt float %i.cp, 1.000000e+00
  br i1 %i.cq, label %hsl2rgb.exit15.i, label %bb.ab

bb.ab:                                            ; preds = %hue2rgb.exit36.i11.i
  %i.cr = fcmp reassoc nsz arcp contract afn olt float %i.cp, 3.000000e+00
  br i1 %i.cr, label %hsl2rgb.exit15.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = fcmp reassoc nsz arcp contract afn olt float %i.cp, 4.000000e+00
  %i.ct = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.cp
  %i.cu = select reassoc nsz arcp contract afn i1 %i.cs, float %i.ct, float 0.000000e+00
  br label %hsl2rgb.exit15.i

hsl2rgb.exit15.i:                                 ; preds = %bb.ac, %bb.ab, %hue2rgb.exit36.i11.i
  %.0.i37.i14.i = phi nsz float [ 1.000000e+00, %bb.ab ], [ %i.cu, %bb.ac ], [ %i.cp, %hue2rgb.exit36.i11.i ]
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.cb, float noundef 1.000000e+00, float noundef %.0.i.i10.i, float noundef %.0.i35.i12.i, float noundef %.0.i37.i14.i) #20
  br label %update_balance_slider_colors.exit

update_balance_slider_colors.exit:                ; preds = %hsl2rgb.exit15.i, %bb.v, %hsl2rgb.exit.i, %bb.n
  %.sink = phi ptr [ %i.bd, %hsl2rgb.exit.i ], [ %i.bd, %bb.n ], [ %i.cb, %bb.v ], [ %i.cb, %hsl2rgb.exit15.i ]
  call void @gtk_widget_queue_draw(ptr noundef %.sink) #20
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !100
  call void @gtk_widget_queue_draw(ptr noundef %i.cv) #20
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !108
  call void @dt_dev_add_history_item(ptr noundef %i.cw, ptr noundef nonnull %1, i32 noundef 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %update_balance_slider_colors.exit
  ret void
}

declare void @gtk_color_chooser_get_rgba(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind willreturn memory(read) }

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
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"dt_codepath_t", !8, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS6_GList", !12, i64 0}
!14 = !{!"p1 _ZTS11_JsonParser", !12, i64 0}
!15 = !{!"p1 _ZTS9dt_conf_t", !12, i64 0}
!16 = !{!"p1 _ZTS12dt_develop_t", !12, i64 0}
!17 = !{!"p1 _ZTS8dt_lib_t", !12, i64 0}
!18 = !{!"p1 _ZTS17dt_view_manager_t", !12, i64 0}
!19 = !{!"p1 _ZTS12dt_control_t", !12, i64 0}
!20 = !{!"p1 _ZTS19dt_control_signal_t", !12, i64 0}
!21 = !{!"p1 _ZTS12dt_gui_gtk_t", !12, i64 0}
!22 = !{!"p1 _ZTS17dt_mipmap_cache_t", !12, i64 0}
!23 = !{!"p1 _ZTS16dt_image_cache_t", !12, i64 0}
!24 = !{!"p1 _ZTS12dt_bauhaus_t", !12, i64 0}
!25 = !{!"p1 _ZTS13dt_database_t", !12, i64 0}
!26 = !{!"p1 _ZTS14dt_pwstorage_t", !12, i64 0}
!27 = !{!"p1 _ZTS11dt_camctl_t", !12, i64 0}
!28 = !{!"p1 _ZTS15dt_collection_t", !12, i64 0}
!29 = !{!"p1 _ZTS14dt_selection_t", !12, i64 0}
!30 = !{!"p1 _ZTS11dt_points_t", !12, i64 0}
!31 = !{!"p1 _ZTS12dt_imageio_t", !12, i64 0}
!32 = !{!"p1 _ZTS11dt_opencl_t", !12, i64 0}
!33 = !{!"p1 _ZTS9dt_dbus_t", !12, i64 0}
!34 = !{!"p1 _ZTS9dt_undo_t", !12, i64 0}
!35 = !{!"p1 _ZTS16dt_colorspaces_t", !12, i64 0}
!36 = !{!"p1 _ZTS9dt_l10n_t", !12, i64 0}
!37 = !{!"dt_pthread_mutex_t", !7, i64 0}
!38 = !{!"p1 omnipotent char", !12, i64 0}
!39 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!40 = !{!"_Bool", !7, i64 0}
!41 = !{!"p1 _ZTS10_GMainLoop", !12, i64 0}
!42 = !{!"p1 _ZTS13_GMainContext", !12, i64 0}
!43 = !{!"p1 _ZTS12_GThreadPool", !12, i64 0}
!44 = !{!"p1 _ZTS12_GAsyncQueue", !12, i64 0}
!45 = !{!"", !39, i64 0, !37, i64 8, !7, i64 48, !40, i64 96, !40, i64 97, !41, i64 104, !42, i64 112, !43, i64 120, !44, i64 128, !44, i64 136, !44, i64 144}
!46 = !{!"double", !7, i64 0}
!47 = !{!"p1 _ZTS10_GTimeZone", !12, i64 0}
!48 = !{!"p1 _ZTS10_GDateTime", !12, i64 0}
!49 = !{!"long", !7, i64 0}
!50 = !{!"p1 int", !12, i64 0}
!51 = !{!"dt_sys_resources_t", !49, i64 0, !49, i64 8, !50, i64 16, !50, i64 24, !8, i64 32}
!52 = !{!"dt_backthumb_t", !46, i64 0, !46, i64 8, !8, i64 16, !8, i64 20}
!53 = !{!"dt_gimp_t", !8, i64 0, !38, i64 8, !38, i64 16, !8, i64 24, !8, i64 28}
!54 = !{!"p1 _ZTS10_GtkWidget", !12, i64 0}
!55 = !{!"dt_splash_t", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !8, i64 32}
!56 = !{!"darktable_t", !11, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !14, i64 48, !15, i64 56, !16, i64 64, !17, i64 72, !18, i64 80, !19, i64 88, !20, i64 96, !21, i64 104, !22, i64 112, !23, i64 120, !24, i64 128, !25, i64 136, !26, i64 144, !27, i64 152, !28, i64 160, !29, i64 168, !30, i64 176, !31, i64 184, !32, i64 192, !33, i64 200, !34, i64 208, !35, i64 216, !36, i64 224, !7, i64 232, !37, i64 2792, !37, i64 2832, !37, i64 2872, !37, i64 2912, !37, i64 2952, !37, i64 2992, !38, i64 3032, !38, i64 3040, !38, i64 3048, !38, i64 3056, !38, i64 3064, !38, i64 3072, !38, i64 3080, !38, i64 3088, !38, i64 3096, !38, i64 3104, !38, i64 3112, !38, i64 3120, !38, i64 3128, !45, i64 3136, !13, i64 3288, !46, i64 3296, !13, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !47, i64 3520, !48, i64 3528, !51, i64 3536, !52, i64 3576, !53, i64 3600, !55, i64 3632, !8, i64 3672}
!57 = !{!"p1 _ZTS11dt_action_t", !12, i64 0}
!58 = !{!"dt_action_t", !8, i64 0, !38, i64 8, !38, i64 16, !12, i64 24, !57, i64 32, !57, i64 40}
!59 = !{!"p1 _ZTS8_GModule", !12, i64 0}
!60 = !{!"dt_iop_module_so_t", !58, i64 0, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !12, i64 480, !59, i64 488, !7, i64 496, !12, i64 520, !8, i64 528, !12, i64 536, !8, i64 544, !8, i64 548}
!61 = !{!"float", !7, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"p1 _ZTS15dt_iop_module_t", !12, i64 0}
!64 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !12, i64 0}
!65 = !{!"p1 _ZTS18dt_histogram_roi_t", !12, i64 0}
!66 = !{!"dt_dev_histogram_collection_params_t", !65, i64 0, !8, i64 8}
!67 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !49, i64 8, !8, i64 16, !8, i64 20}
!68 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !61, i64 16}
!69 = !{!"short", !7, i64 0}
!70 = !{!"", !69, i64 0, !69, i64 2}
!71 = !{!"", !8, i64 0, !7, i64 16}
!72 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !70, i64 48, !71, i64 64, !7, i64 96, !8, i64 112}
!73 = !{!"p1 _ZTS11_GHashTable", !12, i64 0}
!74 = !{!"p1 float", !12, i64 0}
!75 = !{!"dt_dev_distorted_mask_cache_t", !74, i64 0, !68, i64 8, !49, i64 32, !49, i64 40}
!76 = !{!"dt_dev_pixelpipe_iop_t", !63, i64 0, !64, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !8, i64 36, !66, i64 40, !50, i64 56, !67, i64 64, !7, i64 88, !61, i64 104, !8, i64 108, !8, i64 112, !49, i64 120, !8, i64 128, !8, i64 132, !68, i64 136, !68, i64 156, !68, i64 176, !68, i64 196, !8, i64 216, !8, i64 220, !72, i64 224, !72, i64 352, !7, i64 480, !8, i64 516, !73, i64 520, !75, i64 528, !75, i64 576}
!77 = !{!76, !12, i64 16}
!78 = !{!7, !7, i64 0}
!79 = !{!60, !12, i64 520}
!80 = !{!"p1 _ZTS25dt_develop_blend_params_t", !12, i64 0}
!81 = !{!"", !73, i64 0, !73, i64 8}
!82 = !{!"", !63, i64 0, !8, i64 8}
!83 = !{!"", !81, i64 0, !82, i64 16}
!84 = !{!"p1 _ZTS7_GSList", !12, i64 0}
!85 = !{!"p1 _ZTS18dt_iop_module_so_t", !12, i64 0}
!86 = !{!"dt_iop_module_t", !8, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440, !59, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !50, i64 608, !67, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !16, i64 664, !8, i64 672, !8, i64 676, !12, i64 680, !12, i64 688, !8, i64 696, !12, i64 704, !37, i64 712, !12, i64 752, !12, i64 760, !80, i64 768, !80, i64 776, !12, i64 784, !83, i64 792, !54, i64 824, !54, i64 832, !54, i64 840, !54, i64 848, !54, i64 856, !54, i64 864, !54, i64 872, !8, i64 880, !54, i64 888, !54, i64 896, !54, i64 904, !84, i64 912, !84, i64 920, !54, i64 928, !54, i64 936, !8, i64 944, !85, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !54, i64 1096, !12, i64 1104, !8, i64 1112}
!87 = !{!86, !12, i64 680}
!88 = !{!86, !12, i64 704}
!89 = !{!"dt_iop_splittoning_gui_data_t", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56}
!90 = !{!89, !54, i64 40}
!91 = !{!89, !54, i64 32}
!92 = !{!89, !54, i64 16}
!93 = !{!"dt_iop_splittoning_params_t", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20}
!94 = !{!93, !61, i64 4}
!95 = !{!93, !61, i64 0}
!96 = !{!46, !46, i64 0}
!97 = !{!"_GdkRGBA", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!98 = !{!97, !46, i64 16}
!99 = !{!97, !46, i64 24}
!100 = !{!89, !54, i64 0}
!101 = !{!89, !54, i64 56}
!102 = !{!89, !54, i64 48}
!103 = !{!89, !54, i64 24}
!104 = !{!93, !61, i64 12}
!105 = !{!93, !61, i64 8}
!106 = !{!54, !54, i64 0}
!107 = !{!56, !21, i64 104}
!108 = !{!56, !16, i64 64}
!109 = !{!89, !54, i64 8}
!110 = !{!12, !12, i64 0}
!111 = !{!86, !54, i64 824}
!112 = !{!56, !25, i64 136}
!113 = !{!60, !12, i64 48}
!114 = distinct !{!114, i1 true, !"copy_pixel_nontemporal"}
!115 = distinct !{!115, !114, !"copy_pixel_nontemporal: argument 0"}
!116 = distinct !{!116, i1 true, !"copy_pixel_nontemporal"}
!117 = distinct !{!117, !116, !"copy_pixel_nontemporal: argument 0"}
!118 = distinct !{!118, i1 true, !"copy_pixel_nontemporal"}
!119 = distinct !{!119, !118, !"copy_pixel_nontemporal: argument 0"}
!120 = !{!76, !8, i64 132}
!121 = !{!68, !8, i64 8}
!122 = !{!68, !8, i64 12}
!123 = !{!"dt_iop_splittoning_data_t", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20}
!124 = !{!123, !61, i64 4}
!125 = !{!123, !61, i64 12}
!126 = !{!123, !61, i64 16}
!127 = !{!123, !61, i64 8}
!128 = !{!123, !61, i64 0}
!129 = !{!123, !61, i64 20}
!130 = !{!115}
!131 = !{i32 1}
!132 = !{!117}
!133 = !{!119}
!134 = !{!"dt_iop_splittoning_global_data_t", !8, i64 0}
end_hunk_1
