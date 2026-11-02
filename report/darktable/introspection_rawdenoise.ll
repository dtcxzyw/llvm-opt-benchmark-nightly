Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawdenoise?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 30
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
  %i.c = load float, ptr %1, align 4, !tbaa !140
  store float %i.c, ptr %i.b, align 4, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %gep22.2.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %gep.1.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %invariant.gep21.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store <8 x float> <float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 0.000000e+00, float 2.500000e-01, float 5.000000e-01>, ptr %i.d, align 4, !tbaa !12
  store <8 x float> splat (float 5.000000e-01), ptr %invariant.gep21.4, align 4, !tbaa !12
  store <8 x float> <float 7.500000e-01, float 1.000000e+00, float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %gep.1.3, align 4, !tbaa !12
  store <8 x float> <float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %gep.3.1, align 4, !tbaa !12
  store <8 x float> splat (float 5.000000e-01), ptr %gep22.2.2, align 4, !tbaa !12
  store ptr %i.b, ptr %3, align 8, !tbaa !14
  store i32 164, ptr %4, align 4, !tbaa !15
  store i32 2, ptr %5, align 4, !tbaa !15
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
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !32  ; 23 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !34
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !160
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !161
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.n = load i32, ptr %i.m, align 4, !tbaa !162
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.l, %i.i
  %i.q = mul i64 %i.p, %i.o
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.q) #22
  br label %wavelet_denoise.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.s = load i32, ptr %i.r, align 4, !tbaa !163  ; 2 uses
  %.not = icmp eq i32 %i.s, 9
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !15, !noalias !166
  %i.w = sdiv <2 x i32> %i.v, splat (i32 2)
  %i.x = add nsw <2 x i32> %i.w, splat (i32 1)    ; 2 uses
  %i.y = extractelement <2 x i32> %i.x, i64 0
  %i.z = sext i32 %i.y to i64
  %i.aa = extractelement <2 x i32> %i.x, i64 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.z, 2
  %i.ad = mul nsw i64 %i.ac, %i.ab
  %i.ae = tail call ptr @dt_alloc_aligned(i64 noundef %i.ad) #22, !noalias !166 ; 6 uses
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
  call void @free(ptr noundef nonnull %i.ae) #22, !noalias !166
  br label %wavelet_denoise.exit

bb.f:                                             ; preds = %._crit_edge85.split.i, %.preheader.i
  %.06986.i.a = phi i32 [ 0, %.preheader.i ], [ %i.fd, %._crit_edge85.split.i ] ; 4 uses
  %6 = and i32 %.06986.i.a, 1                     ; 4 uses
  %i.ao = zext nneg i32 %6 to i64                 ; 2 uses
  %i.ap = lshr i32 %.06986.i.a, 1                 ; 4 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %trunc.i = trunc nuw i32 %.06986.i.a to i3
  %rev.i = call i3 @llvm.bitreverse.i3(i3 %trunc.i)
  %i.ar = zext i3 %rev.i to i32
  %i.as = lshr i32 %i.s, %i.ar
  %i.at = and i32 %i.as, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !166
  %i.au = load float, ptr %i.af, align 4, !tbaa !12, !noalias !166
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
  %.026.us33.i.i = load float, ptr %i.aw, align 4, !tbaa !12, !noalias !166
  %i.ax = fmul reassoc nsz arcp contract afn float %.026.us33.i.i, %i.au ; 2 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.ax ; 2 uses
  %i.az = load float, ptr %i.d, align 8, !tbaa !34, !noalias !166 ; 5 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x434CD9E8
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ay, %i.ay
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.ba
  store float %i.bc, ptr %i.b, align 16, !tbaa !12, !noalias !166
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink88.i.i
  %.026.us33.1.i.i = load float, ptr %i.bd, align 4, !tbaa !12, !noalias !166
  %i.be = load float, ptr %i.ah, align 8, !tbaa !12, !noalias !166
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %.026.us33.1.i.i ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.bf ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn float %i.az, 7.001600e+01
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bg, %i.bg
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.bh
  store float %i.bj, ptr %i.ag, align 4, !tbaa !12, !noalias !166
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink76.i.i
  %.026.us33.2.i.i = load float, ptr %i.bk, align 4, !tbaa !12, !noalias !166
  %i.bl = load float, ptr %i.aj, align 4, !tbaa !12, !noalias !166
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %.026.us33.2.i.i ; 2 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.az, 3.077120e+01
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bn, %i.bn
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, %i.bo
  store float %i.bq, ptr %i.ak, align 8, !tbaa !12, !noalias !166
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink61.i.i
  %.026.us33.3.i.i = load float, ptr %i.br, align 4, !tbaa !12, !noalias !166
  %i.bs = load float, ptr %i.al, align 8, !tbaa !12, !noalias !166
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %.026.us33.3.i.i ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bt ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.az, 1.497600e+01
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bu, %i.bu
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bv
  store float %i.bx, ptr %i.am, align 4, !tbaa !12, !noalias !166
  %.026.us33.4.i.i = load float, ptr %i.av, align 4, !tbaa !12, !noalias !166
  %i.by = load float, ptr %i.ai, align 4, !tbaa !12, !noalias !166
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %.026.us33.4.i.i ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.bz ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.az, 7.449600e+00
  %i.cc = fmul reassoc nsz arcp contract afn float %i.ca, %i.ca
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.cb
  store float %i.cd, ptr %i.an, align 16, !tbaa !12, !noalias !166
  %i.ce = and i32 %i.ap, 1
  %i.cf = xor i32 %i.ce, 1
  %i.cg = load <2 x i32>, ptr %i.t, align 4, !tbaa !15, !noalias !166 ; 3 uses
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
  %7 = zext nneg i32 %i.cn to i64
  %wide.trip.count.i = zext nneg i32 %i.cw to i64 ; 5 uses
  %min.iters.check64 = icmp ult i32 %i.cu, 10
  %min.iters.check65 = icmp ult i32 %i.cu, 66
  %i.cx = and i64 %wide.trip.count.i, 31          ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 32, i64 %i.cx      ; 2 uses
  %n.vec67 = sub nsw i64 %wide.trip.count.i, %i.cz ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.cz, 5
  %i.da = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = select i1 %i.db, i64 4, i64 %i.da
  %n.vec78 = sub nsw i64 %wide.trip.count.i, %i.dc ; 2 uses
  br label %iter.check

._crit_edge75.split.i:                            ; preds = %._crit_edge.i, %.lr.ph74.i, %compute_channel_noise.exit.i
  call void @dwt_denoise(ptr noundef nonnull %i.ae, i32 noundef %i.cl, i32 noundef %i.cq, i32 noundef 5, ptr noundef nonnull %i.b) #22, !noalias !166
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !161, !noalias !166 ; 2 uses
  %invariant.gep80.i = getelementptr [4 x i8], ptr %3, i64 %i.aq
  %i.de = icmp slt i32 %6, %i.dd
  br i1 %i.de, label %.lr.ph84.i, label %._crit_edge85.split.i

.lr.ph84.i:                                       ; preds = %._crit_edge75.split.i
  %i.df = sext i32 %i.cl to i64
  %i.dg = load i32, ptr %i.t, align 4, !tbaa !160, !noalias !166 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %reass.sub87.i = sub i32 %i.dg, %i.ap
  %i.di = add i32 %reass.sub87.i, 1               ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %.lr.ph78.preheader.i, label %._crit_edge85.split.i

.lr.ph78.preheader.i:                             ; preds = %.lr.ph84.i
  %i.dk = lshr i32 %i.di, 1
  %8 = zext nneg i32 %i.dd to i64
  %wide.trip.count97.i = zext nneg i32 %i.dk to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.di, 16
  %n.vec = and i64 %wide.trip.count97.i, 1073741816 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97.i
  br label %.lr.ph78.i

iter.check:                                       ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv91.i = phi i64 [ %i.ao, %.lr.ph.preheader.i ], [ %indvars.iv.next92.i, %._crit_edge.i ] ; 3 uses
  %i.dl = lshr i64 %indvars.iv91.i, 1
  %i.dm = mul nsw i64 %i.dl, %i.cs
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dm ; 3 uses
  %i.do = mul nsw i64 %indvars.iv91.i, %i.ct
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.do ; 6 uses
  br i1 %min.iters.check64, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.body68

vector.body68:                                    ; preds = %vector.main.loop.iter.check, %vector.body68
  %index69 = phi i64 [ %index.next76, %vector.body68 ], [ 0, %vector.main.loop.iter.check ] ; 6 uses
  %i.dp = shl nuw nsw i64 %index69, 3
  %i.dq = shl i64 %index69, 3
  %i.dr = shl i64 %index69, 3
  %i.ds = shl i64 %index69, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dp
  %i.du = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dq
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.dy = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.ds
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 192
  %wide.vec = load <16 x float>, ptr %i.dt, align 4, !tbaa !12, !alias.scope !164
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec70 = load <16 x float>, ptr %i.dv, align 4, !tbaa !12, !alias.scope !164
  %strided.vec71 = shufflevector <16 x float> %wide.vec70, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec72 = load <16 x float>, ptr %i.dx, align 4, !tbaa !12, !alias.scope !164
  %strided.vec73 = shufflevector <16 x float> %wide.vec72, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec74 = load <16 x float>, ptr %i.dz, align 4, !tbaa !12, !alias.scope !164
  %strided.vec75 = shufflevector <16 x float> %wide.vec74, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ea = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec, zeroinitializer
  %i.eb = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec71, zeroinitializer
  %i.ec = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec73, zeroinitializer
  %i.ed = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec75, zeroinitializer
  %i.ee = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec)
  %i.ef = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec71)
  %i.eg = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec73)
  %i.eh = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec75)
  %i.ei = select <8 x i1> %i.ea, <8 x float> zeroinitializer, <8 x float> %i.ee
  %i.ej = select <8 x i1> %i.eb, <8 x float> zeroinitializer, <8 x float> %i.ef
  %i.ek = select <8 x i1> %i.ec, <8 x float> zeroinitializer, <8 x float> %i.eg
  %i.el = select <8 x i1> %i.ed, <8 x float> zeroinitializer, <8 x float> %i.eh
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %index69 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 96
  store <8 x float> %i.ei, ptr %i.em, align 4, !tbaa !12, !noalias !166
  store <8 x float> %i.ej, ptr %i.en, align 4, !tbaa !12, !noalias !166
  store <8 x float> %i.ek, ptr %i.eo, align 4, !tbaa !12, !noalias !166
  store <8 x float> %i.el, ptr %i.ep, align 4, !tbaa !12, !noalias !166
  %index.next76 = add nuw i64 %index69, 32        ; 2 uses
  %i.eq = icmp eq i64 %index.next76, %n.vec67
  br i1 %i.eq, label %vec.epilog.iter.check, label %vector.body68, !llvm.loop !146

vec.epilog.iter.check:                            ; preds = %vector.body68
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec67, %vec.epilog.iter.check ], [ %n.vec78, %vec.epilog.vector.body ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec67, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next82, %vec.epilog.vector.body ] ; 3 uses
  %i.er = shl nuw nsw i64 %index79, 3
  %i.es = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.er
  %wide.vec80 = load <8 x float>, ptr %i.es, align 4, !tbaa !12, !alias.scope !164
  %strided.vec81 = shufflevector <8 x float> %wide.vec80, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.et = fcmp reassoc nsz arcp contract afn olt <4 x float> %strided.vec81, zeroinitializer
  %i.eu = call reassoc nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %strided.vec81)
  %i.ev = select <4 x i1> %i.et, <4 x float> zeroinitializer, <4 x float> %i.eu
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %index79
  store <4 x float> %i.ev, ptr %i.ew, align 4, !tbaa !12, !noalias !166
  %index.next82 = add nuw i64 %index79, 4         ; 2 uses
  %i.ex = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.ex, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !147

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 2 ; 2 uses
  %9 = icmp samesign ult i64 %indvars.iv.next92.i, %7
  br i1 %9, label %iter.check, label %._crit_edge75.split.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %gep.i, i64 %.idx.i
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !12, !alias.scope !164 ; 2 uses
  %i.fa = fcmp reassoc nsz arcp contract afn olt float %i.ez, 0.000000e+00
  %i.fb = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ez)
  %spec.select.i = select i1 %i.fa, float 0.000000e+00, float %i.fb
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i
  store float %spec.select.i, ptr %i.fc, align 4, !tbaa !12, !noalias !166
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !148

._crit_edge85.split.i:                            ; preds = %._crit_edge79.i, %.lr.ph84.i, %._crit_edge75.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !166
  %i.fd = add nuw nsw i32 %.06986.i.a, 1          ; 2 uses
  %exitcond103.not.i = icmp eq i32 %i.fd, 4
  br i1 %exitcond103.not.i, label %bb.e, label %bb.f

.lr.ph78.i:                                       ; preds = %._crit_edge79.i, %.lr.ph78.preheader.i
  %indvars.iv99.i = phi i64 [ %i.ao, %.lr.ph78.preheader.i ], [ %indvars.iv.next100.i, %._crit_edge79.i ] ; 3 uses
  %i.fe = lshr i64 %indvars.iv99.i, 1
  %i.ff = mul nsw i64 %i.fe, %i.df
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ff ; 2 uses
  %i.fh = mul nsw i64 %indvars.iv99.i, %i.dh
  %gep81.i = getelementptr [4 x i8], ptr %invariant.gep80.i, i64 %i.fh ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph78.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph78.i ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph78.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %index
  %wide.load = load <8 x float>, ptr %i.fi, align 4, !tbaa !12, !noalias !166 ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.fk = shl nuw nsw <8 x i64> %vec.ind, splat (i64 3)
  %wide.gep = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fk
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fj, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !165
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge79.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph78.i, %middle.block
  %indvars.iv94.i.ph = phi i64 [ 0, %.lr.ph78.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge79.i:                                  ; preds = %scalar.ph, %middle.block
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %10 = icmp samesign ult i64 %indvars.iv.next100.i, %8
  br i1 %10, label %.lr.ph78.i, label %._crit_edge85.split.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %scalar.ph ], [ %indvars.iv94.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv94.i
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12, !noalias !166 ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.fn
  %.idx107.i = shl nuw nsw i64 %indvars.iv94.i, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %gep81.i, i64 %.idx107.i
  store float %i.fo, ptr %i.fp, align 4, !tbaa !12, !alias.scope !165
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %._crit_edge79.i, label %scalar.ph, !llvm.loop !150

bb.g:                                             ; preds = %bb.c
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 6 uses
  %i.fr = getelementptr i8, ptr %4, i64 8
  %.val = load i32, ptr %i.fr, align 4, !tbaa !160 ; 15 uses
  %i.fs = getelementptr i8, ptr %4, i64 12
  %.val19 = load i32, ptr %i.fs, align 4, !tbaa !161 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ft = sext i32 %.val to i64                   ; 17 uses
  %i.fu = sext i32 %.val19 to i64                 ; 3 uses
  %i.fv = add nsw i32 %.val19, 2
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.ft, 2                    ; 2 uses
  %i.fy = mul i64 %i.fx, %i.fw
  %i.fz = tail call ptr @dt_alloc_aligned(i64 noundef %i.fy) #22, !noalias !170 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fz, i64 64) ]
  %.not.i20 = icmp eq ptr %i.fz, null
  br i1 %.not.i20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ga = mul i64 %i.fx, %i.fu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr readonly align 4 %2, i64 %i.ga, i1 false), !alias.scope !170
  br label %wavelet_denoise.exit

bb.i:                                             ; preds = %bb.g
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.ft ; 16 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not24.i = icmp eq i32 %.val, 0
  %.not25.i = icmp eq i32 %.val19, 0
  %i.gl = sub nsw i32 0, %.val                    ; 2 uses
  %i.gm = sub i32 1, %.val                        ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = sext i32 %i.gl to i64
  %i.gp = add i32 %.val, -1                       ; 3 uses
  %i.gq = sext i32 %i.gp to i64                   ; 6 uses
  %i.gr = add nsw i64 %i.fu, -1
  %i.gs = insertelement <2 x i32> poison, i32 %.val, i64 0
  %i.gt = shufflevector <2 x i32> %i.gs, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gu = add nsw <2 x i32> %i.gt, <i32 599, i32 598>
  %i.gv = add nsw i32 %.val, -2
  %i.gw = srem <2 x i32> %i.gu, splat (i32 6)     ; 2 uses
  %i.gx = extractelement <2 x i32> %i.gw, i64 0
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = extractelement <2 x i32> %i.gw, i64 1
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = add i32 %.val19, -1
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = mul nsw i64 %i.hc, %i.ft
  %i.he = getelementptr [4 x i8], ptr %i.gb, i64 %i.hd ; 11 uses
  %i.hf = icmp slt i32 %.val19, 1
  %i.hg = icmp slt i32 %.val, 1
  %brmerge.i = or i1 %i.hg, %i.hf
  %wide.trip.count35.i = zext nneg i32 %.val19 to i64
  %wide.trip.count.i21 = zext i32 %.val to i64    ; 3 uses
  %i.hh = mul nsw i64 %i.ft, %i.hc
  %i.hi = shl i64 %i.hh, 2
  %min.iters.check97 = icmp ult i32 %.val, 4
  %i.hj = add i64 %i.hi, -1
  %diff.check = icmp ult i64 %i.hj, 127
  %or.cond = select i1 %min.iters.check97, i1 true, i1 %diff.check
  %min.iters.check99 = icmp ult i32 %.val, 32
  %n.vec101 = and i64 %i.ft, -32                  ; 4 uses
  %cmp.n106 = icmp eq i64 %n.vec101, %i.ft
  %i.hk = and i32 %.val, 28
  %min.epilog.iters.check110 = icmp eq i32 %i.hk, 0
  %n.vec113 = and i64 %i.ft, -4                   ; 3 uses
  %cmp.n118 = icmp eq i64 %n.vec113, %i.ft
  %min.iters.check85 = icmp ult i32 %.val, 8
  %n.vec87 = and i64 %wide.trip.count.i21, 2147483640 ; 3 uses
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count.i21
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge19.split.i
  call void @free(ptr noundef %i.fz) #22, !noalias !170
  br label %wavelet_denoise.exit

bb.k:                                             ; preds = %._crit_edge19.split.i, %bb.i
  %.025420.i = phi i32 [ 0, %bb.i ], [ %i.pd, %._crit_edge19.split.i ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !170
  %i.hl = load float, ptr %i.gc, align 4, !tbaa !12, !noalias !170
  switch i32 %.025420.i, label %.split.preheader.i.i43 [
    i32 0, label %.split.us.preheader.i.i42
    i32 2, label %compute_channel_noise.exit.i22
  ]

.split.us.preheader.i.i42:                        ; preds = %bb.k
  br label %compute_channel_noise.exit.i22

.split.preheader.i.i43:                           ; preds = %bb.k
  br label %compute_channel_noise.exit.i22

compute_channel_noise.exit.i22:                   ; preds = %.split.preheader.i.i43, %.split.us.preheader.i.i42, %bb.k
  %.sink100.i.i23 = phi i64 [ 84, %.split.preheader.i.i43 ], [ 64, %.split.us.preheader.i.i42 ], [ 104, %bb.k ]
  %.sink99.i.i24 = phi i64 [ 100, %.split.preheader.i.i43 ], [ 80, %.split.us.preheader.i.i42 ], [ 120, %bb.k ]
  %.sink88.i.i25 = phi i64 [ 96, %.split.preheader.i.i43 ], [ 76, %.split.us.preheader.i.i42 ], [ 116, %bb.k ]
  %.sink76.i.i26 = phi i64 [ 92, %.split.preheader.i.i43 ], [ 72, %.split.us.preheader.i.i42 ], [ 112, %bb.k ]
  %.sink61.i.i27 = phi i64 [ 88, %.split.preheader.i.i43 ], [ 68, %.split.us.preheader.i.i42 ], [ 108, %bb.k ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink100.i.i23
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink99.i.i24
  %.026.us33.i.i28 = load float, ptr %i.hn, align 4, !tbaa !12, !noalias !170
  %i.ho = fmul reassoc nsz arcp contract afn float %.026.us33.i.i28, %i.hl ; 2 uses
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ho, %i.ho ; 2 uses
  %i.hq = load float, ptr %i.d, align 8, !tbaa !34, !noalias !170 ; 5 uses
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, f0x434CD9E8
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hp, %i.hp
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, %i.hr
  store float %i.ht, ptr %i.a, align 16, !tbaa !12, !noalias !170
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink88.i.i25
  %.026.us33.1.i.i29 = load float, ptr %i.hu, align 4, !tbaa !12, !noalias !170
  %i.hv = load float, ptr %i.ge, align 8, !tbaa !12, !noalias !170
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, %.026.us33.1.i.i29 ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %i.hw ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hq, 7.001600e+01
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hx, %i.hx
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hz, %i.hy
  store float %i.ia, ptr %i.gd, align 4, !tbaa !12, !noalias !170
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink76.i.i26
  %.026.us33.2.i.i30 = load float, ptr %i.ib, align 4, !tbaa !12, !noalias !170
  %i.ic = load float, ptr %i.gg, align 4, !tbaa !12, !noalias !170
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, %.026.us33.2.i.i30 ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.id, %i.id ; 2 uses
  %i.if = fmul reassoc nsz arcp contract afn float %i.hq, 3.077120e+01
  %i.ig = fmul reassoc nsz arcp contract afn float %i.ie, %i.ie
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ig, %i.if
  store float %i.ih, ptr %i.gh, align 8, !tbaa !12, !noalias !170
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink61.i.i27
  %.026.us33.3.i.i31 = load float, ptr %i.ii, align 4, !tbaa !12, !noalias !170
  %i.ij = load float, ptr %i.gi, align 8, !tbaa !12, !noalias !170
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, %.026.us33.3.i.i31 ; 2 uses
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %i.ik ; 2 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.hq, 1.497600e+01
  %i.in = fmul reassoc nsz arcp contract afn float %i.il, %i.il
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.im
  store float %i.io, ptr %i.gj, align 4, !tbaa !12, !noalias !170
  %.026.us33.4.i.i32 = load float, ptr %i.hm, align 4, !tbaa !12, !noalias !170
  %i.ip = load float, ptr %i.gf, align 4, !tbaa !12, !noalias !170
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, %.026.us33.4.i.i32 ; 2 uses
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, %i.iq ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn float %i.hq, 7.449600e+00
  %i.it = fmul reassoc nsz arcp contract afn float %i.ir, %i.ir
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, %i.is
  store float %i.iu, ptr %i.gk, align 16, !tbaa !12, !noalias !170
  br i1 %.not24.i, label %.preheader4.i, label %iter.check107

iter.check107:                                    ; preds = %compute_channel_noise.exit.i22
  br i1 %or.cond, label %.lr.ph.i33.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %iter.check107
  br i1 %min.iters.check99, label %vec.epilog.ph111, label %vector.body102

vector.body102:                                   ; preds = %vector.main.loop.iter.check98, %vector.body102
  %index103 = phi i64 [ %index.next104, %vector.body102 ], [ 0, %vector.main.loop.iter.check98 ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %index103 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  store <8 x float> splat (float 5.000000e-01), ptr %i.iv, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.iw, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.ix, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.iy, align 4, !tbaa !12, !noalias !170
  %i.iz = getelementptr [4 x i8], ptr %i.he, i64 %index103 ; 4 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 32
  %i.jb = getelementptr i8, ptr %i.iz, i64 64
  %i.jc = getelementptr i8, ptr %i.iz, i64 96
  store <8 x float> splat (float 5.000000e-01), ptr %i.iz, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.ja, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.jb, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.jc, align 4, !tbaa !12, !noalias !170
  %index.next104 = add nuw i64 %index103, 32      ; 2 uses
  %i.jd = icmp eq i64 %index.next104, %n.vec101
  br i1 %i.jd, label %middle.block105, label %vector.body102, !llvm.loop !154

middle.block105:                                  ; preds = %vector.body102
  br i1 %cmp.n106, label %.preheader4.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block105
  br i1 %min.epilog.iters.check110, label %.lr.ph.i33.preheader, label %vec.epilog.ph111, !prof !167

vec.epilog.ph111:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check108
end_hunk_0
