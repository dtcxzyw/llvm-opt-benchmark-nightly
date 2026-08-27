Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawdenoise?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0
@.str.13 = private unnamed_addr constant [12 x i8] c"switch_page\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"plugins/darkroom/rawdenoise/graphheight\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"iop-instance\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/darktable/darktable/src/iop/rawdenoise.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"leave-notify-event\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"scroll-event\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"raw denoising\0Aonly works for raw images.\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 2, ptr @.str.44, i64 164, ptr getelementptr (i8, ptr @introspection_linear, i64 616), i64 1120, i64 688 }, align 8
@introspection_init.f7 = internal global [4 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr null], align 16
@.str.26 = private unnamed_addr constant [8 x i8] c"x[0][0]\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"x[0]\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"y[0][0]\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"y[0]\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.32 = private unnamed_addr constant [13 x i8] c"graph\04coarse\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"fine\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"noisy\00", align 1
@dt_modifier_shortcuts = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"halign\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"noise threshold\00", align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"float[]\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"float[][]\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"dt_iop_rawdenoise_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.24, ptr @.str.24, ptr @.str.40, i64 4, i64 0, ptr null }, float 0.000000e+00, float 1.000000e+00, float f0x3C23D70A, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.26, ptr @.str.26, ptr @.str.41, i64 4, i64 4, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.42, ptr @.str.27, ptr @.str.27, ptr @.str.41, i64 20, i64 4, ptr null }, i64 5, i32 2, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 88) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.43, ptr @.str.28, ptr @.str.28, ptr @.str.41, i64 80, i64 4, ptr null }, i64 4, i32 15, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 176) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.29, ptr @.str.29, ptr @.str.41, i64 4, i64 84, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.42, ptr @.str.30, ptr @.str.30, ptr @.str.41, i64 20, i64 84, ptr null }, i64 5, i32 2, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 352) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.43, ptr @.str.31, ptr @.str.31, ptr @.str.41, i64 80, i64 84, ptr null }, i64 4, i32 15, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 440) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.44, ptr @.str.41, ptr @.str.41, ptr @.str.41, i64 164, i64 0, ptr null }, i64 3, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(164) ptr @malloc(i64 noundef 164) #21 ; 7 uses
  %i.c = load float, ptr %1, align 4, !tbaa !11
  store float %i.c, ptr %i.b, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %gep22.2.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %gep.1.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %invariant.gep21.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store <8 x float> <float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 0.000000e+00, float 2.500000e-01, float 5.000000e-01>, ptr %i.d, align 4, !tbaa !16
  store <8 x float> splat (float 5.000000e-01), ptr %invariant.gep21.4, align 4, !tbaa !16
  store <8 x float> <float 7.500000e-01, float 1.000000e+00, float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %gep.1.3, align 4, !tbaa !16
  store <8 x float> <float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %gep.3.1, align 4, !tbaa !16
  store <8 x float> splat (float 5.000000e-01), ptr %gep22.2.2, align 4, !tbaa !16
  store ptr %i.b, ptr %3, align 8, !tbaa !17
  store i32 164, ptr %4, align 4, !tbaa !19
  store i32 2, ptr %5, align 4, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  %.020 = phi i32 [ 0, %.preheader ], [ 1, %bb.a ]
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #22
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #22
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #22
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [5 x float], align 16             ; 9 uses
  %i.b = alloca [5 x float], align 16             ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !20  ; 23 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !37
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !40
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.l, %i.i
  %i.q = mul i64 %i.p, %i.o
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.q) #22
  br label %wavelet_denoise.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42   ; 2 uses
  %.not = icmp eq i32 %i.s, 9
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !19, !noalias !48
  %i.w = sdiv <2 x i32> %i.v, splat (i32 2)
  %i.x = add nsw <2 x i32> %i.w, splat (i32 1)    ; 2 uses
  %i.y = extractelement <2 x i32> %i.x, i64 0
  %i.z = sext i32 %i.y to i64
  %i.aa = extractelement <2 x i32> %i.x, i64 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.z, 2
  %i.ad = mul nsw i64 %i.ac, %i.ab
  %i.ae = tail call ptr @dt_alloc_aligned(i64 noundef %i.ad) #22, !noalias !48 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %wavelet_denoise.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge85.split.i
  call void @free(ptr noundef nonnull %i.ae) #22, !noalias !48
  br label %wavelet_denoise.exit

bb.f:                                             ; preds = %._crit_edge85.split.i, %.preheader.i
  %.06986.i.a = phi i32 [ 0, %.preheader.i ], [ %i.ff, %._crit_edge85.split.i ] ; 2 uses
  %.06986.i = phi i32 [ 0, %.preheader.i ], [ %9, %._crit_edge85.split.i ] ; 4 uses
  %i.ao = zext i32 %.06986.i.a to i64             ; 2 uses
  %6 = and i32 %.06986.i, 1                       ; 3 uses
  %i.ap = lshr i32 %.06986.i, 1                   ; 4 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %trunc.i = trunc nuw i32 %.06986.i to i3
  %rev.i = call i3 @llvm.bitreverse.i3(i3 %trunc.i)
  %i.ar = zext i3 %rev.i to i32
  %i.as = lshr i32 %i.s, %i.ar
  %i.at = and i32 %i.as, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !48
  %i.au = load float, ptr %i.af, align 4, !tbaa !16, !noalias !48
  switch i32 %i.at, label %.split.preheader.i.i [
    i32 0, label %.split.us.preheader.i.i
    i32 2, label %compute_channel_noise.exit.i
  ]

.split.us.preheader.i.i:                          ; preds = %bb.f
  br label %compute_channel_noise.exit.i

.split.preheader.i.i:                             ; preds = %bb.f
  br label %compute_channel_noise.exit.i

compute_channel_noise.exit.i:                     ; preds = %.split.preheader.i.i, %.split.us.preheader.i.i, %bb.f
  %.sink100.i.i = phi i64 [ 84, %.split.preheader.i.i ], [ 64, %.split.us.preheader.i.i ], [ 104, %bb.f ]
  %.sink99.i.i = phi i64 [ 100, %.split.preheader.i.i ], [ 80, %.split.us.preheader.i.i ], [ 120, %bb.f ]
  %.sink88.i.i = phi i64 [ 96, %.split.preheader.i.i ], [ 76, %.split.us.preheader.i.i ], [ 116, %bb.f ]
  %.sink76.i.i = phi i64 [ 92, %.split.preheader.i.i ], [ 72, %.split.us.preheader.i.i ], [ 112, %bb.f ]
  %.sink61.i.i = phi i64 [ 88, %.split.preheader.i.i ], [ 68, %.split.us.preheader.i.i ], [ 108, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink100.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink99.i.i
  %.026.us33.i.i = load float, ptr %i.aw, align 4, !tbaa !16, !noalias !48
  %i.ax = fmul reassoc nsz arcp contract afn float %.026.us33.i.i, %i.au ; 2 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.ax ; 2 uses
  %i.az = load float, ptr %i.d, align 8, !tbaa !37, !noalias !48 ; 5 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x434CD9E8
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ay, %i.ay
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.ba
  store float %i.bc, ptr %i.b, align 16, !tbaa !16, !noalias !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink88.i.i
  %.026.us33.1.i.i = load float, ptr %i.bd, align 4, !tbaa !16, !noalias !48
  %i.be = load float, ptr %i.ah, align 8, !tbaa !16, !noalias !48
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %.026.us33.1.i.i ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.bf ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn float %i.az, 7.001600e+01
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bg, %i.bg
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.bh
  store float %i.bj, ptr %i.ag, align 4, !tbaa !16, !noalias !48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink76.i.i
  %.026.us33.2.i.i = load float, ptr %i.bk, align 4, !tbaa !16, !noalias !48
  %i.bl = load float, ptr %i.aj, align 4, !tbaa !16, !noalias !48
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %.026.us33.2.i.i ; 2 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.az, 3.077120e+01
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bn, %i.bn
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, %i.bo
  store float %i.bq, ptr %i.ak, align 8, !tbaa !16, !noalias !48
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink61.i.i
  %.026.us33.3.i.i = load float, ptr %i.br, align 4, !tbaa !16, !noalias !48
  %i.bs = load float, ptr %i.al, align 8, !tbaa !16, !noalias !48
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %.026.us33.3.i.i ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bt ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.az, 1.497600e+01
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bu, %i.bu
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bv
  store float %i.bx, ptr %i.am, align 4, !tbaa !16, !noalias !48
  %.026.us33.4.i.i = load float, ptr %i.av, align 4, !tbaa !16, !noalias !48
  %i.by = load float, ptr %i.ai, align 4, !tbaa !16, !noalias !48
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %.026.us33.4.i.i ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.bz ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.az, 7.449600e+00
  %i.cc = fmul reassoc nsz arcp contract afn float %i.ca, %i.ca
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.cb
  store float %i.cd, ptr %i.an, align 16, !tbaa !16, !noalias !48
  %i.ce = and i32 %i.ap, 1
  %i.cf = xor i32 %i.ce, 1
  %i.cg = load <2 x i32>, ptr %i.t, align 4, !tbaa !19, !noalias !48 ; 3 uses
  %i.ch = extractelement <2 x i32> %i.cg, i64 0   ; 3 uses
  %i.ci = and i32 %i.ch, %i.cf
  %i.cj = sdiv <2 x i32> %i.cg, splat (i32 2)     ; 2 uses
  %i.ck = extractelement <2 x i32> %i.cj, i64 0
  %i.cl = add nsw i32 %i.ck, %i.ci                ; 3 uses
  %i.cm = xor i32 %6, 1
  %i.cn = extractelement <2 x i32> %i.cg, i64 1   ; 3 uses
  %i.co = and i32 %i.cn, %i.cm
  %i.cp = extractelement <2 x i32> %i.cj, i64 1
  %i.cq = add nsw i32 %i.cp, %i.co
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.aq
  %i.cr = icmp slt i32 %6, %i.cn
  br i1 %i.cr, label %.lr.ph74.i, label %._crit_edge75.split.i

.lr.ph74.i:                                       ; preds = %compute_channel_noise.exit.i
  %i.cs = sext i32 %i.cl to i64
  %i.ct = sext i32 %i.ch to i64
  %reass.sub.i = sub i32 %i.ch, %i.ap
  %i.cu = add i32 %reass.sub.i, 1                 ; 4 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %.lr.ph.preheader.i, label %._crit_edge75.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph74.i
  %i.cw = lshr i32 %i.cu, 1
  %wide.trip.count.i = zext nneg i32 %i.cw to i64 ; 5 uses
  %min.iters.check81 = icmp ult i32 %i.cu, 10
  %min.iters.check83 = icmp ult i32 %i.cu, 66
  %i.cx = and i64 %wide.trip.count.i, 31          ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 32, i64 %i.cx      ; 2 uses
  %n.vec85 = sub nsw i64 %wide.trip.count.i, %i.cz ; 3 uses
  %min.epilog.iters.check100 = icmp samesign ult i64 %i.cz, 5
  %i.da = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = select i1 %i.db, i64 4, i64 %i.da
  %n.vec102 = sub nsw i64 %wide.trip.count.i, %i.dc ; 2 uses
  br label %iter.check97

._crit_edge75.split.i:                            ; preds = %._crit_edge.i, %.lr.ph74.i, %compute_channel_noise.exit.i
  call void @dwt_denoise(ptr noundef nonnull %i.ae, i32 noundef %i.cl, i32 noundef %i.cq, i32 noundef 5, ptr noundef nonnull %i.b) #22, !noalias !48
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !40, !noalias !48 ; 2 uses
  %invariant.gep80.i = getelementptr [4 x i8], ptr %3, i64 %i.aq
  %i.de = icmp slt i32 %6, %i.dd
  br i1 %i.de, label %.lr.ph84.i, label %._crit_edge85.split.i

.lr.ph84.i:                                       ; preds = %._crit_edge75.split.i
  %i.df = sext i32 %i.cl to i64
  %i.dg = load i32, ptr %i.t, align 4, !tbaa !39, !noalias !48 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %reass.sub87.i = sub i32 %i.dg, %i.ap
  %i.di = add i32 %reass.sub87.i, 1               ; 4 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %.lr.ph78.preheader.i, label %._crit_edge85.split.i

.lr.ph78.preheader.i:                             ; preds = %.lr.ph84.i
  %i.dk = lshr i32 %i.di, 1
  %wide.trip.count97.i = zext nneg i32 %i.dk to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.di, 8
  %min.iters.check66 = icmp ult i32 %i.di, 64
  %i.dl = and i64 %wide.trip.count97.i, 28
  %n.vec = and i64 %wide.trip.count97.i, 1073741792 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97.i
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  %n.vec73 = and i64 %wide.trip.count97.i, 1073741820 ; 3 uses
  %cmp.n80 = icmp eq i64 %n.vec73, %wide.trip.count97.i
  br label %iter.check

iter.check97:                                     ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv91.i = phi i64 [ %i.ao, %.lr.ph.preheader.i ], [ %indvars.iv.next92.i, %._crit_edge.i ] ; 3 uses
  %i.dm = lshr i64 %indvars.iv91.i, 1
  %i.dn = mul nsw i64 %i.dm, %i.cs
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dn ; 3 uses
  %i.dp = mul nsw i64 %indvars.iv91.i, %i.ct
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dp ; 6 uses
  br i1 %min.iters.check81, label %vec.epilog.scalar.ph98.preheader, label %vector.main.loop.iter.check82

vector.main.loop.iter.check82:                    ; preds = %iter.check97
  br i1 %min.iters.check83, label %vec.epilog.ph101, label %vector.body86

vector.body86:                                    ; preds = %vector.main.loop.iter.check82, %vector.body86
  %index87 = phi i64 [ %index.next94, %vector.body86 ], [ 0, %vector.main.loop.iter.check82 ] ; 6 uses
  %i.dq = shl nuw nsw i64 %index87, 3
  %i.dr = shl i64 %index87, 3
  %i.ds = shl i64 %index87, 3
  %i.dt = shl i64 %index87, 3
  %i.du = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dq
  %i.dv = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.ds
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 128
  %i.dz = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dt
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 192
  %wide.vec = load <16 x float>, ptr %i.du, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec88 = load <16 x float>, ptr %i.dw, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec89 = shufflevector <16 x float> %wide.vec88, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec90 = load <16 x float>, ptr %i.dy, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec91 = shufflevector <16 x float> %wide.vec90, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec92 = load <16 x float>, ptr %i.ea, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec93 = shufflevector <16 x float> %wide.vec92, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec, zeroinitializer
  %i.ec = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec89, zeroinitializer
  %i.ed = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec91, zeroinitializer
  %i.ee = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec93, zeroinitializer
  %i.ef = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec)
  %i.eg = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec89)
  %i.eh = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec91)
  %i.ei = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec93)
  %i.ej = select <8 x i1> %i.eb, <8 x float> zeroinitializer, <8 x float> %i.ef
  %i.ek = select <8 x i1> %i.ec, <8 x float> zeroinitializer, <8 x float> %i.eg
  %i.el = select <8 x i1> %i.ed, <8 x float> zeroinitializer, <8 x float> %i.eh
  %i.em = select <8 x i1> %i.ee, <8 x float> zeroinitializer, <8 x float> %i.ei
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index87 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  store <8 x float> %i.ej, ptr %i.en, align 4, !tbaa !16, !noalias !48
  store <8 x float> %i.ek, ptr %i.eo, align 4, !tbaa !16, !noalias !48
  store <8 x float> %i.el, ptr %i.ep, align 4, !tbaa !16, !noalias !48
  store <8 x float> %i.em, ptr %i.eq, align 4, !tbaa !16, !noalias !48
  %index.next94 = add nuw i64 %index87, 32        ; 2 uses
  %i.er = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.er, label %vec.epilog.iter.check99, label %vector.body86, !llvm.loop !49

vec.epilog.iter.check99:                          ; preds = %vector.body86
  br i1 %min.epilog.iters.check100, label %vec.epilog.scalar.ph98.preheader, label %vec.epilog.ph101, !prof !52

vec.epilog.scalar.ph98.preheader:                 ; preds = %vec.epilog.vector.body103, %iter.check97, %vec.epilog.iter.check99
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check97 ], [ %n.vec85, %vec.epilog.iter.check99 ], [ %n.vec102, %vec.epilog.vector.body103 ]
  br label %vec.epilog.scalar.ph98

vec.epilog.ph101:                                 ; preds = %vector.main.loop.iter.check82, %vec.epilog.iter.check99
  %vec.epilog.resume.val96 = phi i64 [ %n.vec85, %vec.epilog.iter.check99 ], [ 0, %vector.main.loop.iter.check82 ]
  br label %vec.epilog.vector.body103

vec.epilog.vector.body103:                        ; preds = %vec.epilog.vector.body103, %vec.epilog.ph101
  %index104 = phi i64 [ %vec.epilog.resume.val96, %vec.epilog.ph101 ], [ %index.next107, %vec.epilog.vector.body103 ] ; 3 uses
  %i.es = shl nuw nsw i64 %index104, 3
  %i.et = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.es
  %wide.vec105 = load <8 x float>, ptr %i.et, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec106 = shufflevector <8 x float> %wide.vec105, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.eu = fcmp reassoc nsz arcp contract afn olt <4 x float> %strided.vec106, zeroinitializer
  %i.ev = call reassoc nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %strided.vec106)
  %i.ew = select <4 x i1> %i.eu, <4 x float> zeroinitializer, <4 x float> %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index104
  store <4 x float> %i.ew, ptr %i.ex, align 4, !tbaa !16, !noalias !48
  %index.next107 = add nuw i64 %index104, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next107, %n.vec102
  br i1 %i.ey, label %vec.epilog.scalar.ph98.preheader, label %vec.epilog.vector.body103, !llvm.loop !53

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph98
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 2 ; 2 uses
  %7 = trunc nuw i64 %indvars.iv.next92.i to i32
  %8 = icmp sgt i32 %i.cn, %7
  br i1 %8, label %iter.check97, label %._crit_edge75.split.i

vec.epilog.scalar.ph98:                           ; preds = %vec.epilog.scalar.ph98.preheader, %vec.epilog.scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph98 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph98.preheader ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %gep.i, i64 %.idx.i
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !16, !alias.scope !43, !noalias !46 ; 2 uses
  %i.fb = fcmp reassoc nsz arcp contract afn olt float %i.fa, 0.000000e+00
  %i.fc = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fa)
  %i.fd = select i1 %i.fb, float 0.000000e+00, float %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i
  store float %i.fd, ptr %i.fe, align 4, !tbaa !16, !noalias !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph98, !llvm.loop !54

._crit_edge85.split.i:                            ; preds = %._crit_edge79.i, %.lr.ph84.i, %._crit_edge75.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !48
  %9 = add nuw nsw i32 %.06986.i, 1               ; 2 uses
  %i.ff = add nsw i32 %.06986.i.a, -1
  %exitcond103.not.i = icmp eq i32 %9, 4
  br i1 %exitcond103.not.i, label %bb.e, label %bb.f

iter.check:                                       ; preds = %._crit_edge79.i, %.lr.ph78.preheader.i
  %indvars.iv99.i = phi i64 [ %i.ao, %.lr.ph78.preheader.i ], [ %indvars.iv.next100.i, %._crit_edge79.i ] ; 3 uses
  %i.fg = lshr i64 %indvars.iv99.i, 1
  %i.fh = mul nsw i64 %i.fg, %i.df
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fh ; 3 uses
  %i.fj = mul nsw i64 %indvars.iv99.i, %i.dh
  %gep81.i = getelementptr [4 x i8], ptr %invariant.gep80.i, i64 %i.fj ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %wide.load = load <8 x float>, ptr %i.fk, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %wide.load67 = load <8 x float>, ptr %i.fl, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %wide.load68 = load <8 x float>, ptr %i.fm, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %wide.load69 = load <8 x float>, ptr %i.fn, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load67, %wide.load67
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load68, %wide.load68
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load69, %wide.load69
  %i.fs = shl nuw nsw <8 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.ft = add <8 x i64> %step.add, splat (i64 64)
  %step.add.2 = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.fu = add <8 x i64> %step.add.2, splat (i64 128)
  %step.add.3 = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.fv = add <8 x i64> %step.add.3, splat (i64 192)
  %wide.gep = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fs
  %wide.gep70 = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.ft
  %wide.gep71 = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fu
  %wide.gep72 = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fv
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fo, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fp, <8 x ptr> align 4 %wide.gep70, <8 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fq, <8 x ptr> align 4 %wide.gep71, <8 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fr, <8 x ptr> align 4 %wide.gep72, <8 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge79.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind75 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next79, %vec.epilog.vector.body ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index74
  %wide.load76 = load <4 x float>, ptr %i.fx, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn <4 x float> %wide.load76, %wide.load76
  %i.fz = shl nuw nsw <4 x i64> %vec.ind75, splat (i64 3)
  %wide.gep77 = getelementptr inbounds nuw i8, ptr %gep81.i, <4 x i64> %i.fz
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.fy, <4 x ptr> align 4 %wide.gep77, <4 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  %index.next78 = add nuw i64 %index74, 4         ; 2 uses
  %vec.ind.next79 = add nuw nsw <4 x i64> %vec.ind75, splat (i64 4)
  %i.ga = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.ga, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n80, label %._crit_edge79.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv94.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec73, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge79.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %10 = trunc nuw i64 %indvars.iv.next100.i to i32
  %11 = icmp sgt i32 %i.dd, %10
  br i1 %11, label %iter.check, label %._crit_edge85.split.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %vec.epilog.scalar.ph ], [ %indvars.iv94.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv94.i
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, %i.gc
  %.idx107.i = shl nuw nsw i64 %indvars.iv94.i, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %gep81.i, i64 %.idx107.i
  store float %i.gd, ptr %i.ge, align 4, !tbaa !16, !alias.scope !46, !noalias !43
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %._crit_edge79.i, label %vec.epilog.scalar.ph, !llvm.loop !57

bb.g:                                             ; preds = %bb.c
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 6 uses
  %i.gg = getelementptr i8, ptr %4, i64 8
  %.val = load i32, ptr %i.gg, align 4, !tbaa !39 ; 15 uses
  %i.gh = getelementptr i8, ptr %4, i64 12
  %.val19 = load i32, ptr %i.gh, align 4, !tbaa !40 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.gi = sext i32 %.val to i64                   ; 16 uses
  %i.gj = sext i32 %.val19 to i64                 ; 3 uses
  %i.gk = add nsw i32 %.val19, 2
  %i.gl = sext i32 %i.gk to i64
  %i.gm = shl nsw i64 %i.gi, 2                    ; 2 uses
  %i.gn = mul i64 %i.gm, %i.gl
  %i.go = tail call ptr @dt_alloc_aligned(i64 noundef %i.gn) #22, !noalias !63 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.go, i64 64) ]
  %.not.i20 = icmp eq ptr %i.go, null
  br i1 %.not.i20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gp = mul i64 %i.gm, %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr readonly align 4 %2, i64 %i.gp, i1 false), !alias.scope !63
  br label %wavelet_denoise.exit

bb.i:                                             ; preds = %bb.g
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gi ; 16 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not24.i = icmp eq i32 %.val, 0
  %.not25.i = icmp eq i32 %.val19, 0
  %i.ha = sub nsw i32 0, %.val                    ; 2 uses
  %i.hb = sub i32 1, %.val                        ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = sext i32 %i.ha to i64
  %i.he = add i32 %.val, -1                       ; 3 uses
  %i.hf = sext i32 %i.he to i64                   ; 6 uses
  %i.hg = add nsw i64 %i.gj, -1
  %i.hh = insertelement <2 x i32> poison, i32 %.val, i64 0
  %i.hi = shufflevector <2 x i32> %i.hh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hj = add nsw <2 x i32> %i.hi, <i32 599, i32 598>
  %i.hk = add nsw i32 %.val, -2
  %i.hl = srem <2 x i32> %i.hj, splat (i32 6)     ; 2 uses
  %i.hm = extractelement <2 x i32> %i.hl, i64 0
  %i.hn = sext i32 %i.hm to i64                   ; 2 uses
  %i.ho = extractelement <2 x i32> %i.hl, i64 1
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = add i32 %.val19, -1
  %i.hr = sext i32 %i.hq to i64                   ; 2 uses
  %i.hs = mul nsw i64 %i.hr, %i.gi
  %i.ht = getelementptr [4 x i8], ptr %i.gq, i64 %i.hs ; 11 uses
  %i.hu = icmp slt i32 %.val19, 1
  %i.hv = icmp slt i32 %.val, 1
  %brmerge.i = or i1 %i.hv, %i.hu
  %wide.trip.count35.i = zext nneg i32 %.val19 to i64
  %wide.trip.count.i21 = zext i32 %.val to i64    ; 3 uses
  %i.hw = mul nsw i64 %i.gi, %i.hr
  %i.hx = shl i64 %i.hw, 2
  %min.iters.check124 = icmp ult i32 %.val, 4
  %i.hy = add i64 %i.hx, -1
  %diff.check = icmp ult i64 %i.hy, 127
  %or.cond = select i1 %min.iters.check124, i1 true, i1 %diff.check
  %min.iters.check126 = icmp ult i32 %.val, 32
  %n.vec128 = and i64 %i.gi, -32                  ; 4 uses
  %cmp.n133 = icmp eq i64 %n.vec128, %i.gi
  %i.hz = and i32 %.val, 28
  %min.epilog.iters.check138 = icmp eq i32 %i.hz, 0
  %n.vec140 = and i64 %i.gi, -4                   ; 3 uses
  %cmp.n145 = icmp eq i64 %n.vec140, %i.gi
  %min.iters.check110 = icmp ult i32 %.val, 8
  %n.vec112 = and i64 %wide.trip.count.i21, 2147483640 ; 3 uses
  %cmp.n121 = icmp eq i64 %n.vec112, %wide.trip.count.i21
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge19.split.i
  call void @free(ptr noundef %i.go) #22, !noalias !63
  br label %wavelet_denoise.exit

bb.k:                                             ; preds = %._crit_edge19.split.i, %bb.i
  %.025420.i = phi i32 [ 0, %bb.i ], [ %i.ps, %._crit_edge19.split.i ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !63
  %i.ia = load float, ptr %i.gr, align 4, !tbaa !16, !noalias !63
  switch i32 %.025420.i, label %.split.preheader.i.i42 [
    i32 0, label %.split.us.preheader.i.i41
    i32 2, label %compute_channel_noise.exit.i22
  ]

.split.us.preheader.i.i41:                        ; preds = %bb.k
  br label %compute_channel_noise.exit.i22

.split.preheader.i.i42:                           ; preds = %bb.k
  br label %compute_channel_noise.exit.i22

compute_channel_noise.exit.i22:                   ; preds = %.split.preheader.i.i42, %.split.us.preheader.i.i41, %bb.k
  %.sink100.i.i23 = phi i64 [ 84, %.split.preheader.i.i42 ], [ 64, %.split.us.preheader.i.i41 ], [ 104, %bb.k ]
  %.sink99.i.i24 = phi i64 [ 100, %.split.preheader.i.i42 ], [ 80, %.split.us.preheader.i.i41 ], [ 120, %bb.k ]
  %.sink88.i.i25 = phi i64 [ 96, %.split.preheader.i.i42 ], [ 76, %.split.us.preheader.i.i41 ], [ 116, %bb.k ]
  %.sink76.i.i26 = phi i64 [ 92, %.split.preheader.i.i42 ], [ 72, %.split.us.preheader.i.i41 ], [ 112, %bb.k ]
  %.sink61.i.i27 = phi i64 [ 88, %.split.preheader.i.i42 ], [ 68, %.split.us.preheader.i.i41 ], [ 108, %bb.k ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink100.i.i23
  %i.ic = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink99.i.i24
  %.026.us33.i.i28 = load float, ptr %i.ic, align 4, !tbaa !16, !noalias !63
  %i.id = fmul reassoc nsz arcp contract afn float %.026.us33.i.i28, %i.ia ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.id, %i.id ; 2 uses
  %i.if = load float, ptr %i.d, align 8, !tbaa !37, !noalias !63 ; 5 uses
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, f0x434CD9E8
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ie, %i.ie
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ih, %i.ig
  store float %i.ii, ptr %i.a, align 16, !tbaa !16, !noalias !63
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink88.i.i25
  %.026.us33.1.i.i29 = load float, ptr %i.ij, align 4, !tbaa !16, !noalias !63
  %i.ik = load float, ptr %i.gt, align 8, !tbaa !16, !noalias !63
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %.026.us33.1.i.i29 ; 2 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.il ; 2 uses
  %i.in = fmul reassoc nsz arcp contract afn float %i.if, 7.001600e+01
  %i.io = fmul reassoc nsz arcp contract afn float %i.im, %i.im
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.in
  store float %i.ip, ptr %i.gs, align 4, !tbaa !16, !noalias !63
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink76.i.i26
  %.026.us33.2.i.i30 = load float, ptr %i.iq, align 4, !tbaa !16, !noalias !63
  %i.ir = load float, ptr %i.gv, align 4, !tbaa !16, !noalias !63
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, %.026.us33.2.i.i30 ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %i.is ; 2 uses
  %i.iu = fmul reassoc nsz arcp contract afn float %i.if, 3.077120e+01
  %i.iv = fmul reassoc nsz arcp contract afn float %i.it, %i.it
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, %i.iu
  store float %i.iw, ptr %i.gw, align 8, !tbaa !16, !noalias !63
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink61.i.i27
  %.026.us33.3.i.i31 = load float, ptr %i.ix, align 4, !tbaa !16, !noalias !63
  %i.iy = load float, ptr %i.gx, align 8, !tbaa !16, !noalias !63
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, %.026.us33.3.i.i31 ; 2 uses
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.iz ; 2 uses
  %i.jb = fmul reassoc nsz arcp contract afn float %i.if, 1.497600e+01
  %i.jc = fmul reassoc nsz arcp contract afn float %i.ja, %i.ja
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, %i.jb
  store float %i.jd, ptr %i.gy, align 4, !tbaa !16, !noalias !63
  %.026.us33.4.i.i32 = load float, ptr %i.ib, align 4, !tbaa !16, !noalias !63
  %i.je = load float, ptr %i.gu, align 4, !tbaa !16, !noalias !63
  %i.jf = fmul reassoc nsz arcp contract afn float %i.je, %.026.us33.4.i.i32 ; 2 uses
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.jf ; 2 uses
  %i.jh = fmul reassoc nsz arcp contract afn float %i.if, 7.449600e+00
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jg, %i.jg
  %i.jj = fmul reassoc nsz arcp contract afn float %i.ji, %i.jh
  store float %i.jj, ptr %i.gz, align 16, !tbaa !16, !noalias !63
  br i1 %.not24.i, label %.preheader4.i, label %iter.check135

iter.check135:                                    ; preds = %compute_channel_noise.exit.i22
  br i1 %or.cond, label %.lr.ph.i33.preheader, label %vector.main.loop.iter.check125

vector.main.loop.iter.check125:                   ; preds = %iter.check135
  br i1 %min.iters.check126, label %vec.epilog.ph139, label %vector.body129

vector.body129:                                   ; preds = %vector.main.loop.iter.check125, %vector.body129
  %index130 = phi i64 [ %index.next131, %vector.body129 ], [ 0, %vector.main.loop.iter.check125 ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index130 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 96
  store <8 x float> splat (float 5.000000e-01), ptr %i.jk, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jl, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jm, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jn, align 4, !tbaa !16, !noalias !63
  %i.jo = getelementptr [4 x i8], ptr %i.ht, i64 %index130 ; 4 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 32
  %i.jq = getelementptr i8, ptr %i.jo, i64 64
  %i.jr = getelementptr i8, ptr %i.jo, i64 96
  store <8 x float> splat (float 5.000000e-01), ptr %i.jo, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jp, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jq, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jr, align 4, !tbaa !16, !noalias !63
  %index.next131 = add nuw i64 %index130, 32      ; 2 uses
  %i.js = icmp eq i64 %index.next131, %n.vec128
  br i1 %i.js, label %middle.block132, label %vector.body129, !llvm.loop !64

middle.block132:                                  ; preds = %vector.body129
  br i1 %cmp.n133, label %.preheader4.i, label %vec.epilog.iter.check137

vec.epilog.iter.check137:                         ; preds = %middle.block132
  br i1 %min.epilog.iters.check138, label %.lr.ph.i33.preheader, label %vec.epilog.ph139, !prof !52

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check125, %vec.epilog.iter.check137
end_hunk_0
