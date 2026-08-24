Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawdenoise?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0
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
  %.06986.i = phi i32 [ 0, %.preheader.i ], [ %i.fc, %._crit_edge85.split.i ] ; 4 uses
  %6 = lshr i32 %.06986.i, 1                      ; 6 uses
  %7 = and i32 %.06986.i, 1                       ; 4 uses
  %8 = zext nneg i32 %7 to i64                    ; 2 uses
  %i.ao = zext nneg i32 %6 to i64                 ; 2 uses
  %trunc.i = trunc nuw i32 %.06986.i to i3
  %rev.i = call i3 @llvm.bitreverse.i3(i3 %trunc.i)
  %i.ap = zext i3 %rev.i to i32
  %i.aq = lshr i32 %i.s, %i.ap
  %i.ar = and i32 %i.aq, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !48
  %i.as = load float, ptr %i.af, align 4, !tbaa !16, !noalias !48
  switch i32 %i.ar, label %.split.preheader.i.i [
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
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink100.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink99.i.i
  %.026.us33.i.i = load float, ptr %i.au, align 4, !tbaa !16, !noalias !48
  %i.av = fmul reassoc nsz arcp contract afn float %.026.us33.i.i, %i.as ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.av ; 2 uses
  %i.ax = load float, ptr %i.d, align 8, !tbaa !37, !noalias !48 ; 5 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x434CD9E8
  %i.az = fmul reassoc nsz arcp contract afn float %i.aw, %i.aw
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.ay
  store float %i.ba, ptr %i.b, align 16, !tbaa !16, !noalias !48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink88.i.i
  %.026.us33.1.i.i = load float, ptr %i.bb, align 4, !tbaa !16, !noalias !48
  %i.bc = load float, ptr %i.ah, align 8, !tbaa !16, !noalias !48
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %.026.us33.1.i.i ; 2 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.bd ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.ax, 7.001600e+01
  %i.bg = fmul reassoc nsz arcp contract afn float %i.be, %i.be
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.bf
  store float %i.bh, ptr %i.ag, align 4, !tbaa !16, !noalias !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink76.i.i
  %.026.us33.2.i.i = load float, ptr %i.bi, align 4, !tbaa !16, !noalias !48
  %i.bj = load float, ptr %i.aj, align 4, !tbaa !16, !noalias !48
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %.026.us33.2.i.i ; 2 uses
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.bk ; 2 uses
  %i.bm = fmul reassoc nsz arcp contract afn float %i.ax, 3.077120e+01
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bl, %i.bl
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bm
  store float %i.bo, ptr %i.ak, align 8, !tbaa !16, !noalias !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink61.i.i
  %.026.us33.3.i.i = load float, ptr %i.bp, align 4, !tbaa !16, !noalias !48
  %i.bq = load float, ptr %i.al, align 8, !tbaa !16, !noalias !48
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %.026.us33.3.i.i ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.br ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn float %i.ax, 1.497600e+01
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bs, %i.bs
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bt
  store float %i.bv, ptr %i.am, align 4, !tbaa !16, !noalias !48
  %.026.us33.4.i.i = load float, ptr %i.at, align 4, !tbaa !16, !noalias !48
  %i.bw = load float, ptr %i.ai, align 4, !tbaa !16, !noalias !48
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %.026.us33.4.i.i ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, %i.bx ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.ax, 7.449600e+00
  %i.ca = fmul reassoc nsz arcp contract afn float %i.by, %i.by
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.bz
  store float %i.cb, ptr %i.an, align 16, !tbaa !16, !noalias !48
  %i.cc = and i32 %6, 1
  %i.cd = xor i32 %i.cc, 1
  %i.ce = load <2 x i32>, ptr %i.t, align 4, !tbaa !19, !noalias !48 ; 3 uses
  %i.cf = extractelement <2 x i32> %i.ce, i64 0   ; 4 uses
  %i.cg = and i32 %i.cf, %i.cd
  %i.ch = sdiv <2 x i32> %i.ce, splat (i32 2)     ; 2 uses
  %i.ci = extractelement <2 x i32> %i.ch, i64 0
  %i.cj = add nsw i32 %i.ci, %i.cg                ; 3 uses
  %i.ck = xor i32 %7, 1
  %i.cl = extractelement <2 x i32> %i.ce, i64 1   ; 3 uses
  %i.cm = and i32 %i.cl, %i.ck
  %i.cn = extractelement <2 x i32> %i.ch, i64 1
  %i.co = add nsw i32 %i.cn, %i.cm
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.ao
  %i.cp = icmp slt i32 %7, %i.cl
  br i1 %i.cp, label %.lr.ph74.i, label %._crit_edge75.split.i

.lr.ph74.i:                                       ; preds = %compute_channel_noise.exit.i
  %i.cq = sext i32 %i.cj to i64
  %i.cr = sext i32 %i.cf to i64
  %reass.sub.i = sub i32 %i.cf, %6
  %i.cs = add i32 %reass.sub.i, 1
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %.lr.ph.preheader.i, label %._crit_edge75.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph74.i
  %9 = zext nneg i32 %i.cl to i64
  %10 = add i32 %i.cf, 1
  %11 = sub i32 %10, %6                           ; 3 uses
  %12 = lshr i32 %11, 1
  %wide.trip.count.i.a = zext nneg i32 %12 to i64 ; 5 uses
  %min.iters.check81.a = icmp ult i32 %11, 10
  %min.iters.check83 = icmp ult i32 %11, 66
  %i.cu = and i64 %wide.trip.count.i.a, 31        ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = select i1 %i.cv, i64 32, i64 %i.cu      ; 2 uses
  %n.vec85 = sub nsw i64 %wide.trip.count.i.a, %i.cw ; 3 uses
  %min.epilog.iters.check100 = icmp samesign ult i64 %i.cw, 5
  %i.cx = and i64 %wide.trip.count.i.a, 3         ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 4, i64 %i.cx
  %n.vec102 = sub nsw i64 %wide.trip.count.i.a, %i.cz ; 2 uses
  br label %iter.check97

._crit_edge75.split.i:                            ; preds = %._crit_edge.i, %.lr.ph74.i, %compute_channel_noise.exit.i
  call void @dwt_denoise(ptr noundef nonnull %i.ae, i32 noundef %i.cj, i32 noundef %i.co, i32 noundef 5, ptr noundef nonnull %i.b) #22, !noalias !48
  %i.da = load i32, ptr %i.u, align 4, !tbaa !40, !noalias !48 ; 2 uses
  %invariant.gep80.i = getelementptr [4 x i8], ptr %3, i64 %i.ao
  %i.db = icmp slt i32 %7, %i.da
  br i1 %i.db, label %.lr.ph84.i, label %._crit_edge85.split.i

.lr.ph84.i:                                       ; preds = %._crit_edge75.split.i
  %i.dc = sext i32 %i.cj to i64
  %i.dd = load i32, ptr %i.t, align 4, !tbaa !39, !noalias !48 ; 3 uses
  %i.de = sext i32 %i.dd to i64
  %reass.sub87.i = sub i32 %i.dd, %6
  %i.df = add i32 %reass.sub87.i, 1
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %.lr.ph78.preheader.i, label %._crit_edge85.split.i

.lr.ph78.preheader.i:                             ; preds = %.lr.ph84.i
  %13 = zext nneg i32 %i.da to i64
  %14 = add i32 %i.dd, 1
  %15 = sub i32 %14, %6                           ; 3 uses
  %16 = lshr i32 %15, 1
  %wide.trip.count97.i = zext nneg i32 %16 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %15, 8
  %min.iters.check66 = icmp ult i32 %15, 64
  %i.dh = and i64 %wide.trip.count97.i, 28
  %n.vec = and i64 %wide.trip.count97.i, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97.i
  %min.epilog.iters.check = icmp eq i64 %i.dh, 0
  %n.vec73 = and i64 %wide.trip.count97.i, 2147483644 ; 3 uses
  %cmp.n80 = icmp eq i64 %n.vec73, %wide.trip.count97.i
  br label %iter.check

iter.check97:                                     ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv91.i = phi i64 [ %8, %.lr.ph.preheader.i ], [ %indvars.iv.next92.i, %._crit_edge.i ] ; 3 uses
  %i.di = lshr i64 %indvars.iv91.i, 1
  %i.dj = mul nsw i64 %i.di, %i.cq
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dj ; 3 uses
  %i.dl = mul nsw i64 %indvars.iv91.i, %i.cr
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dl ; 6 uses
  br i1 %min.iters.check81.a, label %vec.epilog.scalar.ph98.preheader, label %vector.main.loop.iter.check82

vector.main.loop.iter.check82:                    ; preds = %iter.check97
  br i1 %min.iters.check83, label %vec.epilog.ph101, label %vector.body86

vector.body86:                                    ; preds = %vector.main.loop.iter.check82, %vector.body86
  %index87 = phi i64 [ %index.next94, %vector.body86 ], [ 0, %vector.main.loop.iter.check82 ] ; 6 uses
  %i.dm = shl nuw nsw i64 %index87, 3
  %i.dn = shl i64 %index87, 3
  %i.do = shl i64 %index87, 3
  %i.dp = shl i64 %index87, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.do
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 128
  %i.dv = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dp
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 192
  %wide.vec = load <16 x float>, ptr %i.dq, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec88.a = load <16 x float>, ptr %i.ds, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec89.a = shufflevector <16 x float> %wide.vec88.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec90.a = load <16 x float>, ptr %i.du, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec91.a = shufflevector <16 x float> %wide.vec90.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec92 = load <16 x float>, ptr %i.dw, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec93 = shufflevector <16 x float> %wide.vec92, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.dx = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec, zeroinitializer
  %i.dy = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec89.a, zeroinitializer
  %i.dz = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec91.a, zeroinitializer
  %i.ea = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec93, zeroinitializer
  %i.eb = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec)
  %i.ec = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec89.a)
  %i.ed = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec91.a)
  %i.ee = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec93)
  %i.ef = select <8 x i1> %i.dx, <8 x float> zeroinitializer, <8 x float> %i.eb
  %i.eg = select <8 x i1> %i.dy, <8 x float> zeroinitializer, <8 x float> %i.ec
  %i.eh = select <8 x i1> %i.dz, <8 x float> zeroinitializer, <8 x float> %i.ed
  %i.ei = select <8 x i1> %i.ea, <8 x float> zeroinitializer, <8 x float> %i.ee
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index87 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  store <8 x float> %i.ef, ptr %i.ej, align 4, !tbaa !16, !noalias !48
  store <8 x float> %i.eg, ptr %i.ek, align 4, !tbaa !16, !noalias !48
  store <8 x float> %i.eh, ptr %i.el, align 4, !tbaa !16, !noalias !48
  store <8 x float> %i.ei, ptr %i.em, align 4, !tbaa !16, !noalias !48
  %index.next94 = add nuw i64 %index87, 32        ; 2 uses
  %i.en = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.en, label %vec.epilog.iter.check99, label %vector.body86, !llvm.loop !49

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
  %i.eo = shl nuw nsw i64 %index104, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.eo
  %wide.vec105 = load <8 x float>, ptr %i.ep, align 4, !tbaa !16, !alias.scope !43, !noalias !46
  %strided.vec106 = shufflevector <8 x float> %wide.vec105, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.eq = fcmp reassoc nsz arcp contract afn olt <4 x float> %strided.vec106, zeroinitializer
  %i.er = call reassoc nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %strided.vec106)
  %i.es = select <4 x i1> %i.eq, <4 x float> zeroinitializer, <4 x float> %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index104
  store <4 x float> %i.es, ptr %i.et, align 4, !tbaa !16, !noalias !48
  %index.next107 = add nuw i64 %index104, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next107, %n.vec102
  br i1 %i.eu, label %vec.epilog.scalar.ph98.preheader, label %vec.epilog.vector.body103, !llvm.loop !53

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph98
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 2 ; 2 uses
  %i.ev = icmp samesign ult i64 %indvars.iv.next92.i, %9
  br i1 %i.ev, label %iter.check97, label %._crit_edge75.split.i

vec.epilog.scalar.ph98:                           ; preds = %vec.epilog.scalar.ph98.preheader, %vec.epilog.scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph98 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph98.preheader ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %gep.i, i64 %.idx.i
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !16, !alias.scope !43, !noalias !46 ; 2 uses
  %i.ey = fcmp reassoc nsz arcp contract afn olt float %i.ex, 0.000000e+00
  %i.ez = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ex)
  %i.fa = select i1 %i.ey, float 0.000000e+00, float %i.ez
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i
  store float %i.fa, ptr %i.fb, align 4, !tbaa !16, !noalias !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.a
  br i1 %exitcond.not.i.a, label %._crit_edge.i, label %vec.epilog.scalar.ph98, !llvm.loop !54

._crit_edge85.split.i:                            ; preds = %._crit_edge79.i, %.lr.ph84.i, %._crit_edge75.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !48
  %i.fc = add nuw nsw i32 %.06986.i, 1            ; 2 uses
  %exitcond103.not.i = icmp eq i32 %i.fc, 4
  br i1 %exitcond103.not.i, label %bb.e, label %bb.f

iter.check:                                       ; preds = %._crit_edge79.i, %.lr.ph78.preheader.i
  %indvars.iv99.i = phi i64 [ %8, %.lr.ph78.preheader.i ], [ %indvars.iv.next100.i, %._crit_edge79.i ] ; 3 uses
  %i.fd = lshr i64 %indvars.iv99.i, 1
  %i.fe = mul nsw i64 %i.fd, %i.dc
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fe ; 3 uses
  %i.fg = mul nsw i64 %indvars.iv99.i, %i.de
  %gep81.i = getelementptr [4 x i8], ptr %invariant.gep80.i, i64 %i.fg ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  %wide.load = load <8 x float>, ptr %i.fh, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %wide.load67.a = load <8 x float>, ptr %i.fi, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %wide.load68 = load <8 x float>, ptr %i.fj, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %wide.load69 = load <8 x float>, ptr %i.fk, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load67.a, %wide.load67.a
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load68, %wide.load68
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load69, %wide.load69
  %i.fp = shl nuw nsw <8 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.fq = add <8 x i64> %step.add, splat (i64 64)
  %step.add.2 = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.fr = add <8 x i64> %step.add.2, splat (i64 128)
  %step.add.3 = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.fs = add <8 x i64> %step.add.3, splat (i64 192)
  %wide.gep = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fp
  %wide.gep70.a = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fq
  %wide.gep71 = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fr
  %wide.gep72 = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fs
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fl, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fm, <8 x ptr> align 4 %wide.gep70.a, <8 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fn, <8 x ptr> align 4 %wide.gep71, <8 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fo, <8 x ptr> align 4 %wide.gep72, <8 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !55

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
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index74
  %wide.load76 = load <4 x float>, ptr %i.fu, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %wide.load76, %wide.load76
  %i.fw = shl nuw nsw <4 x i64> %vec.ind75, splat (i64 3)
  %wide.gep77 = getelementptr inbounds nuw i8, ptr %gep81.i, <4 x i64> %i.fw
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.fv, <4 x ptr> align 4 %wide.gep77, <4 x i1> splat (i1 true)), !tbaa !16, !alias.scope !46, !noalias !43
  %index.next78 = add nuw i64 %index74, 4         ; 2 uses
  %vec.ind.next79 = add nuw nsw <4 x i64> %vec.ind75, splat (i64 4)
  %i.fx = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.fx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n80, label %._crit_edge79.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv94.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec73, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge79.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %i.fy = icmp samesign ult i64 %indvars.iv.next100.i, %13
  br i1 %i.fy, label %iter.check, label %._crit_edge85.split.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %vec.epilog.scalar.ph ], [ %indvars.iv94.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv94.i
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !16, !noalias !48 ; 2 uses
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ga, %i.ga
  %.idx107.i = shl nuw nsw i64 %indvars.iv94.i, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %gep81.i, i64 %.idx107.i
  store float %i.gb, ptr %i.gc, align 4, !tbaa !16, !alias.scope !46, !noalias !43
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %._crit_edge79.i, label %vec.epilog.scalar.ph, !llvm.loop !57

bb.g:                                             ; preds = %bb.c
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 6 uses
  %i.ge = getelementptr i8, ptr %4, i64 8
  %.val = load i32, ptr %i.ge, align 4, !tbaa !39 ; 15 uses
  %i.gf = getelementptr i8, ptr %4, i64 12
  %.val19 = load i32, ptr %i.gf, align 4, !tbaa !40 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.gg = sext i32 %.val to i64                   ; 16 uses
  %i.gh = sext i32 %.val19 to i64                 ; 3 uses
  %i.gi = add nsw i32 %.val19, 2
  %i.gj = sext i32 %i.gi to i64
  %i.gk = shl nsw i64 %i.gg, 2                    ; 2 uses
  %i.gl = mul i64 %i.gk, %i.gj
  %i.gm = tail call ptr @dt_alloc_aligned(i64 noundef %i.gl) #22, !noalias !63 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gm, i64 64) ]
  %.not.i20 = icmp eq ptr %i.gm, null
  br i1 %.not.i20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gn = mul i64 %i.gk, %i.gh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr readonly align 4 %2, i64 %i.gn, i1 false), !alias.scope !63
  br label %wavelet_denoise.exit

bb.i:                                             ; preds = %bb.g
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.gg ; 16 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not24.i = icmp eq i32 %.val, 0
  %.not25.i = icmp eq i32 %.val19, 0
  %i.gy = sub nsw i32 0, %.val                    ; 2 uses
  %i.gz = sub i32 1, %.val                        ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = sext i32 %i.gy to i64
  %i.hc = add i32 %.val, -1                       ; 3 uses
  %i.hd = sext i32 %i.hc to i64                   ; 6 uses
  %i.he = add nsw i64 %i.gh, -1
  %i.hf = insertelement <2 x i32> poison, i32 %.val, i64 0
  %i.hg = shufflevector <2 x i32> %i.hf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hh = add nsw <2 x i32> %i.hg, <i32 599, i32 598>
  %i.hi = add nsw i32 %.val, -2
  %i.hj = srem <2 x i32> %i.hh, splat (i32 6)     ; 2 uses
  %i.hk = extractelement <2 x i32> %i.hj, i64 0
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = extractelement <2 x i32> %i.hj, i64 1
  %i.hn = sext i32 %i.hm to i64                   ; 2 uses
  %i.ho = add i32 %.val19, -1
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = mul nsw i64 %i.hp, %i.gg
  %i.hr = getelementptr [4 x i8], ptr %i.go, i64 %i.hq ; 11 uses
  %i.hs = icmp slt i32 %.val19, 1
  %i.ht = icmp slt i32 %.val, 1
  %brmerge.i = or i1 %i.ht, %i.hs
  %wide.trip.count35.i = zext nneg i32 %.val19 to i64
  %wide.trip.count.i21 = zext i32 %.val to i64    ; 3 uses
  %i.hu = mul nsw i64 %i.gg, %i.hp
  %i.hv = shl i64 %i.hu, 2
  %min.iters.check124.a = icmp ult i32 %.val, 4
  %i.hw = add i64 %i.hv, -1
  %diff.check = icmp ult i64 %i.hw, 127
  %or.cond = select i1 %min.iters.check124.a, i1 true, i1 %diff.check
  %min.iters.check126 = icmp ult i32 %.val, 32
  %n.vec128 = and i64 %i.gg, -32                  ; 4 uses
  %cmp.n133 = icmp eq i64 %n.vec128, %i.gg
  %i.hx = and i32 %.val, 28
  %min.epilog.iters.check138 = icmp eq i32 %i.hx, 0
  %n.vec140 = and i64 %i.gg, -4                   ; 3 uses
  %cmp.n145 = icmp eq i64 %n.vec140, %i.gg
  %min.iters.check110 = icmp ult i32 %.val, 8
  %n.vec112 = and i64 %wide.trip.count.i21, 2147483640 ; 3 uses
  %cmp.n121 = icmp eq i64 %n.vec112, %wide.trip.count.i21
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge19.split.i
  call void @free(ptr noundef %i.gm) #22, !noalias !63
  br label %wavelet_denoise.exit

bb.k:                                             ; preds = %._crit_edge19.split.i, %bb.i
  %.025420.i = phi i32 [ 0, %bb.i ], [ %i.pq, %._crit_edge19.split.i ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !63
  %i.hy = load float, ptr %i.gp, align 4, !tbaa !16, !noalias !63
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
  %i.hz = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink100.i.i23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink99.i.i24
  %.026.us33.i.i28 = load float, ptr %i.ia, align 4, !tbaa !16, !noalias !63
  %i.ib = fmul reassoc nsz arcp contract afn float %.026.us33.i.i28, %i.hy ; 2 uses
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, %i.ib ; 2 uses
  %i.id = load float, ptr %i.d, align 8, !tbaa !37, !noalias !63 ; 5 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.id, f0x434CD9E8
  %i.if = fmul reassoc nsz arcp contract afn float %i.ic, %i.ic
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, %i.ie
  store float %i.ig, ptr %i.a, align 16, !tbaa !16, !noalias !63
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink88.i.i25
  %.026.us33.1.i.i29 = load float, ptr %i.ih, align 4, !tbaa !16, !noalias !63
  %i.ii = load float, ptr %i.gr, align 8, !tbaa !16, !noalias !63
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %.026.us33.1.i.i29 ; 2 uses
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, %i.ij ; 2 uses
  %i.il = fmul reassoc nsz arcp contract afn float %i.id, 7.001600e+01
  %i.im = fmul reassoc nsz arcp contract afn float %i.ik, %i.ik
  %i.in = fmul reassoc nsz arcp contract afn float %i.im, %i.il
  store float %i.in, ptr %i.gq, align 4, !tbaa !16, !noalias !63
  %i.io = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink76.i.i26
  %.026.us33.2.i.i30 = load float, ptr %i.io, align 4, !tbaa !16, !noalias !63
  %i.ip = load float, ptr %i.gt, align 4, !tbaa !16, !noalias !63
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, %.026.us33.2.i.i30 ; 2 uses
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, %i.iq ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn float %i.id, 3.077120e+01
  %i.it = fmul reassoc nsz arcp contract afn float %i.ir, %i.ir
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, %i.is
  store float %i.iu, ptr %i.gu, align 8, !tbaa !16, !noalias !63
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink61.i.i27
  %.026.us33.3.i.i31 = load float, ptr %i.iv, align 4, !tbaa !16, !noalias !63
  %i.iw = load float, ptr %i.gv, align 8, !tbaa !16, !noalias !63
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, %.026.us33.3.i.i31 ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, %i.ix ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn float %i.id, 1.497600e+01
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iy, %i.iy
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %i.iz
  store float %i.jb, ptr %i.gw, align 4, !tbaa !16, !noalias !63
  %.026.us33.4.i.i32 = load float, ptr %i.hz, align 4, !tbaa !16, !noalias !63
  %i.jc = load float, ptr %i.gs, align 4, !tbaa !16, !noalias !63
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, %.026.us33.4.i.i32 ; 2 uses
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %i.jd ; 2 uses
  %i.jf = fmul reassoc nsz arcp contract afn float %i.id, 7.449600e+00
  %i.jg = fmul reassoc nsz arcp contract afn float %i.je, %i.je
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, %i.jf
  store float %i.jh, ptr %i.gx, align 16, !tbaa !16, !noalias !63
  br i1 %.not24.i, label %.preheader4.i, label %iter.check135

iter.check135:                                    ; preds = %compute_channel_noise.exit.i22
  br i1 %or.cond, label %.lr.ph.i33.preheader, label %vector.main.loop.iter.check125

vector.main.loop.iter.check125:                   ; preds = %iter.check135
  br i1 %min.iters.check126, label %vec.epilog.ph139, label %vector.body129

vector.body129:                                   ; preds = %vector.main.loop.iter.check125, %vector.body129
  %index130 = phi i64 [ %index.next131, %vector.body129 ], [ 0, %vector.main.loop.iter.check125 ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index130 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  store <8 x float> splat (float 5.000000e-01), ptr %i.ji, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jj, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jk, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jl, align 4, !tbaa !16, !noalias !63
  %i.jm = getelementptr [4 x i8], ptr %i.hr, i64 %index130 ; 4 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 32
  %i.jo = getelementptr i8, ptr %i.jm, i64 64
  %i.jp = getelementptr i8, ptr %i.jm, i64 96
  store <8 x float> splat (float 5.000000e-01), ptr %i.jm, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jn, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jo, align 4, !tbaa !16, !noalias !63
  store <8 x float> splat (float 5.000000e-01), ptr %i.jp, align 4, !tbaa !16, !noalias !63
  %index.next131 = add nuw i64 %index130, 32      ; 2 uses
  %i.jq = icmp eq i64 %index.next131, %n.vec128
  br i1 %i.jq, label %middle.block132, label %vector.body129, !llvm.loop !64

middle.block132:                                  ; preds = %vector.body129
  br i1 %cmp.n133, label %.preheader4.i, label %vec.epilog.iter.check137

vec.epilog.iter.check137:                         ; preds = %middle.block132
  br i1 %min.epilog.iters.check138, label %.lr.ph.i33.preheader, label %vec.epilog.ph139, !prof !52

end_hunk_0
