Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_nlmeans?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct.dt_nlmeans_param_t = type { float, float, float, float, float, float, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"astrophoto denoise\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"denoise (non-local means)\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"apply a poisson noise removal\0Abest suited for astrophotography\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"corrective\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"non-linear, Lab, display-referred\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"non-linear, Lab\00", align 1
@__const.process.norm2 = private unnamed_addr constant [4 x float] [float f0x3891A2B5, float f0x36800000, float f0x36800000, float 1.000000e+00], align 16
@.str.12 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"radius of the patches to match\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"strength of the effect\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"luma\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"how much to smooth brightness\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"chroma\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"how much to smooth colors\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 2, ptr @.str.24, i64 16, ptr getelementptr (i8, ptr @introspection_linear, i64 352), i64 1120, i64 688 }, align 8
@introspection_init.f4 = internal global [5 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr null], align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"patch size\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"dt_iop_nlmeans_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.12, ptr @.str.12, ptr @.str.22, i64 4, i64 0, ptr null }, float 0.000000e+00, float 1.000000e+01, float 2.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.14, ptr @.str.14, ptr @.str.23, i64 4, i64 4, ptr null }, float 0.000000e+00, float 1.000000e+05, float 5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.17, ptr @.str.17, ptr @.str.23, i64 4, i64 8, ptr null }, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.19, ptr @.str.19, ptr @.str.23, i64 4, i64 12, ptr null }, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.24, ptr @.str.23, ptr @.str.23, ptr @.str.23, i64 16, i64 0, ptr null }, i64 4, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #18
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @aliases() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #18
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #18
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #18
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #18
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #18
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #18
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #18
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !11
  store <2 x float> %i.d, ptr %i.c, align 4, !tbaa !11
  store <2 x float> <float 3.000000e+00, float 1.000000e+02>, ptr %i.b, align 4, !tbaa !11
  store ptr %i.b, ptr %3, align 8, !tbaa !13
  store i32 16, ptr %4, align 4, !tbaa !15
  store i32 2, ptr %5, align 4, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 12), (16, 28)) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !16
  %i.c = load float, ptr %i.b, align 4, !tbaa !33
  %i.d = fpext reassoc nsz arcp contract afn float %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !35
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.f, float 2.000000e+00)
  %5 = fpext nnan float %i.g to double
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load float, ptr %i.h, align 8, !tbaa !36
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.i, float 1.000000e+00)
  %6 = fpext float %i.j to double
  %7 = insertelement <2 x double> poison, double %5, i64 0
  %i.k = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x double> <double poison, double 7.000000e+00>, double %i.d, i64 0
  %i.m = fmul reassoc nsz arcp contract afn <2 x double> %i.k, %i.l
  %8 = insertelement <2 x double> poison, double %6, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fdiv reassoc nsz arcp contract afn <2 x double> %i.m, %9
  %i.o = fptrunc <2 x double> %i.n to <2 x float>
  %i.p = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.o) ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = fptosi float %i.q to i32
  %i.s = extractelement <2 x float> %i.p, i64 1
  %i.t = fptosi float %i.s to i32
  store float 4.000000e+00, ptr %4, align 4, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.v, align 4, !tbaa !40
  %i.w = add nsw i32 %i.r, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.w, ptr %i.x, align 4, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.y, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %6 = alloca %struct.dt_nlmeans_param_t, align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !16  ; 3 uses
  %i.d = load ptr, ptr %1, align 16, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %i.d, i32 noundef %i.f, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !35
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.i, float 2.000000e+00)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 8, !tbaa !36
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.l, float 1.000000e+00)
  %i.n = fdiv reassoc nsz arcp contract afn float %i.j, %i.m ; 2 uses
  %i.o = load float, ptr %i.c, align 4, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !45
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, 1.000000e+00
  %i.s = fdiv reassoc nsz arcp contract afn float 3.000000e+03, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.process.norm2, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr i8, ptr %i.u, i64 644
  %.val = load i32, ptr %i.v, align 4, !tbaa !47
  %i.w = and i32 %.val, 12
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.z = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.n, i64 1
  store <2 x float> %i.z, ptr %6, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load <2 x float>, ptr %i.ab, align 4, !tbaa !11
  store <2 x float> %i.ac, ptr %i.aa, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float -1.000000e+00, ptr %i.ad, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.s, ptr %i.ae, align 4, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ag = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x float> <float poison, float 7.000000e+00>, float %i.o, i64 0
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, %i.ai
  %i.ak = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aj)
  %i.al = fptosi <2 x float> %i.ak to <2 x i32>
  store <2 x i32> %i.al, ptr %i.af, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.y, ptr %i.am, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  call void @nlmeans_denoise(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @nlmeans_denoise(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !69
  store <4 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 -999, ptr %i.c, align 4, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -999, ptr %i.d, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !16  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !11 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.e, splat (float f0x38D1B717)
  %i.g = select <2 x i1> %i.f, <2 x float> splat (float f0x38D1B717), <2 x float> %i.e
  store <2 x float> %i.g, ptr %i.d, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !16
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 16, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 32) #18 ; 9 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !77
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.12) #18 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !87
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.c, float noundef 4.000000e+00) #18
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !87
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.d, i32 noundef 0) #18
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #18
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.e, ptr noundef %i.f) #18
  %i.g = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.14) #18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !89
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.g, float noundef 1.000000e+02) #18
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.i, i32 noundef 0) #18
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.j, ptr noundef nonnull @.str.15) #18
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !89
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #18
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.k, ptr noundef %i.l) #18
  %i.m = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.17) #18 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !90
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.m, ptr noundef nonnull @.str.15) #18
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90
end_hunk_0
