Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_sharpen?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_iop_sharpen_params_t = type { float, float, float }
%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"modulename\04sharpen\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"sharpen the details in the image using a standard UnSharp Mask (USM)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"corrective\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"linear or non-linear, Lab, display or scene-referred\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"frequential, Lab\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"quasi-linear, Lab, display or scene-referred\00", align 1
@__const.init_presets.tmp = private unnamed_addr constant %struct.dt_iop_sharpen_params_t { float 2.000000e+00, float 5.000000e-01, float 5.000000e-01 }, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"sharpen\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"_builtin_sharpen\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"[sharpen] out of memory\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"spatial extent of the unblurring\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"strength of the sharpen\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"threshold to activate sharpen\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.20, i64 12, ptr getelementptr (i8, ptr @introspection_linear, i64 264), i64 1120, i64 688 }, align 8
@introspection_init.f3 = internal global [4 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr null], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"dt_iop_sharpen_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.18, ptr @.str.12, ptr @.str.12, ptr @.str.19, i64 4, i64 0, ptr null }, float 0.000000e+00, float 9.900000e+01, float 2.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.18, ptr @.str.14, ptr @.str.14, ptr @.str.19, i64 4, i64 4, ptr null }, float 0.000000e+00, float 2.000000e+00, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.18, ptr @.str.16, ptr @.str.16, ptr @.str.19, i64 4, i64 8, ptr null }, float 0.000000e+00, float 1.000000e+02, float 5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.20, ptr @.str.19, ptr @.str.19, ptr @.str.19, i64 12, i64 0, ptr null }, i64 3, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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
  %i.a = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str, i64 noundef 11) #20
  ret ptr %i.a
}

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #20
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #20
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #20
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #20
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #20
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #20
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_sharpen_params_t, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) @__const.init_presets.tmp, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = tail call i32 (...) %i.c() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef %i.d, ptr noundef nonnull %1, i32 noundef 12, i32 noundef 1, i32 noundef 3) #20
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.f = call i32 (...) %i.e() #20
  call void @dt_gui_presets_update_format(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef %i.f, i32 noundef 2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_gui_presets_update_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28)) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34
  %i.c = load float, ptr %i.b, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load float, ptr %i.d, align 4, !tbaa !37
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load float, ptr %i.g, align 8, !tbaa !38
  %i.i = fdiv reassoc nsz arcp contract afn float %i.f, %i.h
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.i) ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn oge float %i.j, 1.200000e+01
  %spec.select13 = select i1 %.inv, float 1.200000e+01, float %i.j
  %spec.select = fptosi float %spec.select13 to i32
  store <2 x float> <float 2.100000e+00, float 3.000000e+00>, ptr %4, align 4, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.l, align 4, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %spec.select, ptr %i.m, align 4, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.n, align 4, !tbaa !47
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #6

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !34  ; 4 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !37
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !38
  %i.n = fdiv reassoc nsz arcp contract afn float %i.k, %i.m
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.n) ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn oge float %i.o, 1.200000e+01
  %spec.select223 = select i1 %.inv, float 1.200000e+01, float %i.o
  %spec.select = fptosi float %spec.select223 to i32 ; 16 uses
  %i.p = icmp eq i32 %spec.select, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.pre289 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !71 ; 2 uses
  br i1 %i.p, label %._crit_edge288, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nsw i32 %spec.select, 1              ; 7 uses
  %.not212 = icmp sgt i32 %.pre289, %i.q
  br i1 %.not212, label %bb.d, label %._crit_edge288

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !72
  %.not213 = icmp sgt i32 %i.s, %i.q
  br i1 %.not213, label %bb.e, label %._crit_edge288

._crit_edge288:                                   ; preds = %bb.b, %bb.d, %bb.c
  %i.t = sext i32 %.pre289 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !72
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.t, 2
  %i.y = mul i64 %i.x, %i.w
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.y) #20
  br label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.z = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2228225, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #20
  %.not214 = icmp eq i32 %i.z, 0
  br i1 %.not214, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.aa = ashr i32 %spec.select, 1
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 4                    ; 2 uses
  %i.ae = load float, ptr %i.g, align 4, !tbaa !36
  %i.af = load float, ptr %i.i, align 4, !tbaa !37
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.ae
  %i.ah = load float, ptr %i.l, align 8, !tbaa !38
  %i.ai = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.aj = fpext reassoc nsz arcp contract afn float %i.ai to double ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn double %i.aj, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, 1.600000e-01
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float ; 3 uses
  %i.an = call ptr @dt_alloc_aligned(i64 noundef %i.ad) #20 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.an, i64 64) ]
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %init_gaussian_kernel.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.an, i8 0, i64 %i.ad, i1 false)
  %.not2527.i = icmp slt i32 %spec.select, 0      ; 2 uses
  br i1 %.not2527.i, label %.loopexit227, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.ao = sub nsw i32 0, %spec.select             ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 11 uses
  %i.aq = zext nneg i32 %spec.select to i64
  %i.ar = add nuw i32 %spec.select, 1             ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.an, i64 %i.aq ; 6 uses
  %i.as = or disjoint i32 %i.q, 1
  %i.at = zext nneg i32 %i.as to i64              ; 6 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check316 = icmp ult i32 %i.q, 32
  br i1 %min.iters.check316, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %i.at, 24
  %n.vec = and i64 %i.at, 2147483616              ; 3 uses
  %i.av = add nsw i64 %n.vec, %i.ap               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.am, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert317 = insertelement <8 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat318 = shufflevector <8 x i32> %broadcast.splatinsert317, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat318, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.ax = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.ay = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.az = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi319 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi320 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %vec.phi321 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8) ; 2 uses
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16) ; 2 uses
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24) ; 2 uses
  %i.ba = mul <8 x i32> %vec.ind, %vec.ind
  %i.bb = mul <8 x i32> %step.add, %step.add
  %i.bc = mul <8 x i32> %step.add.2, %step.add.2
  %i.bd = mul <8 x i32> %step.add.3, %step.add.3
  %i.be = sub <8 x i32> zeroinitializer, %i.ba
  %i.bf = sub <8 x i32> zeroinitializer, %i.bb
  %i.bg = sub <8 x i32> zeroinitializer, %i.bc
  %i.bh = sub <8 x i32> zeroinitializer, %i.bd
  %i.bi = sitofp reassoc nsz arcp contract afn <8 x i32> %i.be to <8 x float>
  %i.bj = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bf to <8 x float>
  %i.bk = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bg to <8 x float>
  %i.bl = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bh to <8 x float>
  %i.bm = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bi, splat (float 5.000000e-01)
  %i.bn = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bj, splat (float 5.000000e-01)
  %i.bo = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bk, splat (float 5.000000e-01)
  %i.bp = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bq = fmul reassoc nsz arcp contract afn <8 x float> %i.bm, %i.aw
  %i.br = fmul reassoc nsz arcp contract afn <8 x float> %i.bn, %i.ax
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %i.bo, %i.ay
  %i.bt = fmul reassoc nsz arcp contract afn <8 x float> %i.bp, %i.az
  %i.bu = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.bq) ; 2 uses
  %i.bv = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.br) ; 2 uses
  %i.bw = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.bs) ; 2 uses
  %i.bx = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.bt) ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.by = getelementptr i8, ptr %gep, i64 32
  %i.bz = getelementptr i8, ptr %gep, i64 64
  %i.ca = getelementptr i8, ptr %gep, i64 96
  store <8 x float> %i.bu, ptr %gep, align 64, !tbaa !39
  store <8 x float> %i.bv, ptr %i.by, align 32, !tbaa !39
  store <8 x float> %i.bw, ptr %i.bz, align 64, !tbaa !39
  store <8 x float> %i.bx, ptr %i.ca, align 32, !tbaa !39
  %i.cb = fadd reassoc nsz arcp contract afn <8 x float> %i.bu, %vec.phi ; 2 uses
  %i.cc = fadd reassoc nsz arcp contract afn <8 x float> %i.bv, %vec.phi319 ; 2 uses
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.bw, %vec.phi320 ; 2 uses
  %i.ce = fadd reassoc nsz arcp contract afn <8 x float> %i.bx, %vec.phi321 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !48

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, %i.cb
  %bin.rdx322 = fadd reassoc nsz arcp contract afn <8 x float> %i.cd, %bin.rdx
  %bin.rdx323 = fadd reassoc nsz arcp contract afn <8 x float> %i.ce, %bin.rdx322
  %i.cg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx323) ; 2 uses
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.av, %vec.epilog.iter.check ], [ %i.ap, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cg, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %n.vec324 = and i64 %i.at, 2147483640           ; 2 uses
  %i.ch = add nsw i64 %n.vec324, %i.ap
  %i.ci = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert325 = insertelement <8 x float> poison, float %i.am, i64 0
  %broadcast.splat326 = shufflevector <8 x float> %broadcast.splatinsert325, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cj = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert327 = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat328 = shufflevector <8 x i32> %broadcast.splatinsert327, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction329 = add <8 x i32> %broadcast.splat328, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat326
  %invariant.gep590 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index330 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next333, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi331 = phi <8 x float> [ %i.ci, %vec.epilog.ph ], [ %i.cr, %vec.epilog.vector.body ]
  %vec.ind332 = phi <8 x i32> [ %induction329, %vec.epilog.ph ], [ %vec.ind.next334, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = mul <8 x i32> %vec.ind332, %vec.ind332
  %i.cm = sub <8 x i32> zeroinitializer, %i.cl
  %i.cn = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cm to <8 x float>
  %i.co = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.cn, splat (float 5.000000e-01)
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.co, %i.ck
  %i.cq = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.cp) ; 2 uses
  %gep591 = getelementptr [4 x i8], ptr %invariant.gep590, i64 %index330
  store <8 x float> %i.cq, ptr %gep591, align 32, !tbaa !39
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %vec.phi331 ; 2 uses
  %index.next333 = add nuw i64 %index330, 8       ; 2 uses
  %vec.ind.next334 = add <8 x i32> %vec.ind332, splat (i32 8)
  %i.cs = icmp eq i64 %index.next333, %n.vec324
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ct = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cr)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.middle.block, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ %i.ap, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ]
  %.02228.i.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  %i.cu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.am
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.02228.i = phi float [ %i.dc, %vec.epilog.scalar.ph ], [ %.02228.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cv = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.cw = mul i32 %i.cv, %i.cv
  %i.cx = sub i32 0, %i.cw
  %i.cy = sitofp reassoc nsz arcp contract afn i32 %i.cx to float
  %i.cz = fmul reassoc nnan nsz arcp contract afn float %i.cy, 5.000000e-01
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.cu
  %i.db = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.da) ; 2 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %i.db, ptr %gep.i, align 4, !tbaa !39
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %.02228.i ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ar, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %iter.check355, label %vec.epilog.scalar.ph, !llvm.loop !50

iter.check355:                                    ; preds = %vec.epilog.scalar.ph
  %min.iters.check338 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check338, label %.lr.ph32.i.preheader, label %vector.main.loop.iter.check339

vector.main.loop.iter.check339:                   ; preds = %iter.check355
  %min.iters.check340 = icmp ult i32 %i.q, 32
  br i1 %min.iters.check340, label %vec.epilog.ph359, label %vector.ph341

vector.ph341:                                     ; preds = %vector.main.loop.iter.check339
  %i.dd = and i64 %i.at, 28
  %n.vec342 = and i64 %i.at, 2147483616           ; 3 uses
  %i.de = add nsw i64 %n.vec342, %i.ap
  %broadcast.splatinsert343 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep592 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ap
  %i.df = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat344
  %i.dg = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat344
  %i.dh = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat344
  %i.di = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat344
  br label %vector.body345

vector.body345:                                   ; preds = %vector.ph341, %vector.body345
  %index346 = phi i64 [ 0, %vector.ph341 ], [ %index.next350, %vector.body345 ] ; 2 uses
  %gep593 = getelementptr [4 x i8], ptr %invariant.gep592, i64 %index346 ; 5 uses
  %i.dj = getelementptr i8, ptr %gep593, i64 32   ; 2 uses
  %i.dk = getelementptr i8, ptr %gep593, i64 64   ; 2 uses
  %i.dl = getelementptr i8, ptr %gep593, i64 96   ; 2 uses
  %wide.load = load <8 x float>, ptr %gep593, align 64, !tbaa !39
  %wide.load347 = load <8 x float>, ptr %i.dj, align 32, !tbaa !39
  %wide.load348 = load <8 x float>, ptr %i.dk, align 64, !tbaa !39
  %wide.load349 = load <8 x float>, ptr %i.dl, align 32, !tbaa !39
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %i.df
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load347, %i.dg
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %wide.load348, %i.dh
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load349, %i.di
  store <8 x float> %i.dm, ptr %gep593, align 64, !tbaa !39
  store <8 x float> %i.dn, ptr %i.dj, align 32, !tbaa !39
  store <8 x float> %i.do, ptr %i.dk, align 64, !tbaa !39
  store <8 x float> %i.dp, ptr %i.dl, align 32, !tbaa !39
  %index.next350 = add nuw i64 %index346, 32      ; 2 uses
  %i.dq = icmp eq i64 %index.next350, %n.vec342
  br i1 %i.dq, label %vec.epilog.iter.check357, label %vector.body345, !llvm.loop !51

vec.epilog.iter.check357:                         ; preds = %vector.body345
  %min.epilog.iters.check358 = icmp eq i64 %i.dd, 0
  br i1 %min.epilog.iters.check358, label %.lr.ph32.i.preheader, label %vec.epilog.ph359, !prof !76

vec.epilog.ph359:                                 ; preds = %vector.main.loop.iter.check339, %vec.epilog.iter.check357
  %vec.epilog.resume.val353 = phi i64 [ %n.vec342, %vec.epilog.iter.check357 ], [ 0, %vector.main.loop.iter.check339 ]
  %n.vec360 = and i64 %i.at, 2147483644           ; 2 uses
  %i.dr = add nsw i64 %n.vec360, %i.ap
  %broadcast.splatinsert361 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat362 = shufflevector <4 x float> %broadcast.splatinsert361, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep594 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ap
  %i.ds = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat362
  br label %vec.epilog.vector.body363

vec.epilog.vector.body363:                        ; preds = %vec.epilog.vector.body363, %vec.epilog.ph359
  %index364 = phi i64 [ %vec.epilog.resume.val353, %vec.epilog.ph359 ], [ %index.next366, %vec.epilog.vector.body363 ] ; 2 uses
  %gep595 = getelementptr [4 x i8], ptr %invariant.gep594, i64 %index364 ; 2 uses
  %wide.load365 = load <4 x float>, ptr %gep595, align 16, !tbaa !39
  %i.dt = fmul reassoc nsz arcp contract afn <4 x float> %wide.load365, %i.ds
  store <4 x float> %i.dt, ptr %gep595, align 16, !tbaa !39
  %index.next366 = add nuw i64 %index364, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next366, %n.vec360
  br i1 %i.du, label %.lr.ph32.i.preheader, label %vec.epilog.vector.body363, !llvm.loop !52

.lr.ph32.i.preheader:                             ; preds = %vec.epilog.vector.body363, %iter.check355, %vec.epilog.iter.check357
  %indvars.iv34.i.ph = phi i64 [ %i.ap, %iter.check355 ], [ %i.de, %vec.epilog.iter.check357 ], [ %i.dr, %vec.epilog.vector.body363 ]
  %i.dv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dc
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %.lr.ph32.i ], [ %indvars.iv34.i.ph, %.lr.ph32.i.preheader ] ; 2 uses
  %gep42.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv34.i ; 2 uses
  %i.dw = load float, ptr %gep42.i, align 4, !tbaa !39
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.dv
  store float %i.dx, ptr %gep42.i, align 4, !tbaa !39
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %lftr.wideiv37.i = trunc i64 %indvars.iv.next35.i to i32
  %exitcond38.not.i = icmp eq i32 %i.ar, %lftr.wideiv37.i
  br i1 %exitcond38.not.i, label %.loopexit227, label %.lr.ph32.i, !llvm.loop !53

init_gaussian_kernel.exit:                        ; preds = %bb.g
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8) #20
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  br label %bb.r

.loopexit227:                                     ; preds = %.lr.ph32.i, %bb.h
  %i.dy = load i32, ptr %.phi.trans.insert, align 4, !tbaa !71 ; 3 uses
  %i.dz = sext i32 %i.dy to i64                   ; 15 uses
  %i.ea = load i32, ptr %i.r, align 4, !tbaa !72  ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %.loopexit227
  %i.ec = shl nsw i64 %i.dz, 4
  %i.ed = load ptr, ptr %i.a, align 8             ; 7 uses
  %i.ee = and i64 %i.dz, -4                       ; 4 uses
  %.not266 = icmp ult i32 %i.dy, 4
  %.not267 = icmp eq i64 %i.ee, %i.dz
  %i.ef = shl nsw i64 %i.dz, 2
  %i.eg = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ej = shl nsw i64 %i.dz, 2
  %i.ek = and i64 %i.ej, -16                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ed, i64 %i.ek
  %i.el = or disjoint i64 %i.ee, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.el, i64 %i.dz)
  %i.em = shl i64 %umax, 2
  %i.en = sub i64 %i.em, %i.ek
  %i.eo = sext i32 %spec.select to i64            ; 12 uses
  %wide.trip.count = zext i32 %spec.select to i64 ; 2 uses
  %i.ep = shl i32 %spec.select, 1
  %i.eq = shl nsw i64 %i.eo, 1
  %i.er = sub nsw i64 1, %i.eo                    ; 3 uses
  %broadcast.splatinsert468 = insertelement <8 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat469 = shufflevector <8 x i64> %broadcast.splatinsert468, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert523 = insertelement <4 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat524 = shufflevector <4 x i64> %broadcast.splatinsert523, <4 x i64> poison, <4 x i32> zeroinitializer
  %ident.check = icmp ne i32 %i.dy, 1
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.es = icmp ult i32 %spec.select, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod571 = icmp ne i64 %xtraiter, 0
  br label %bb.i

._crit_edge265:                                   ; preds = %.loopexit, %.loopexit227
  call void @free(ptr noundef %i.an) #20
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !77
  call void @free(ptr noundef %i.et) #20
  br label %bb.r

bb.i:                                             ; preds = %.lr.ph264, %.loopexit
  %i.eu = phi i32 [ %i.ea, %.lr.ph264 ], [ %i.mk, %.loopexit ] ; 3 uses
  %indvars.iv285 = phi i64 [ 0, %.lr.ph264 ], [ %indvars.iv.next286, %.loopexit ] ; 18 uses
  %6 = add i64 %indvars.iv285, %i.eo
  %7 = zext i64 %6 to i128
  %8 = add nuw nsw i128 %7, 1
  %9 = add i64 %i.er, %indvars.iv285              ; 2 uses
  %10 = zext i64 %9 to i128
  %11 = call i128 @llvm.usub.sat.i128(i128 %8, i128 %10) ; 2 uses
  %i.ev = sub i64 %i.eo, %indvars.iv285
  %i.ew = add i64 %indvars.iv285, %i.eo
  %i.ex = zext i64 %i.ew to i128
  %i.ey = add nuw nsw i128 %i.ex, 1
  %i.ez = add i64 %i.er, %indvars.iv285
  %i.fa = zext i64 %i.ez to i128
  %umax415 = call i128 @llvm.umax.i128(i128 %i.ey, i128 %i.fa)
  %i.fb = trunc i128 %umax415 to i64
  %i.fc = add i64 %i.ev, %i.fb                    ; 13 uses
  %i.fd = add i64 %indvars.iv285, %i.eo
  %i.fe = zext i64 %i.fd to i128
  %i.ff = add nuw nsw i128 %i.fe, 1
  %i.fg = add i64 %i.er, %indvars.iv285           ; 2 uses
  %i.fh = zext i64 %i.fg to i128
  %i.fi = call i128 @llvm.usub.sat.i128(i128 %i.ff, i128 %i.fh) ; 2 uses
  %i.fj = icmp sge i64 %indvars.iv285, %i.eo
  %i.fk = sub nsw i32 %i.eu, %spec.select
  %i.fl = sext i32 %i.fk to i64
  %.not216 = icmp slt i64 %indvars.iv285, %i.fl
  %or.cond = select i1 %i.fj, i1 %.not216, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fm = shl nuw nsw i64 %indvars.iv285, 2
  %i.fn = mul i64 %i.fm, %i.dz                    ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fp, ptr align 4 %i.fo, i64 %i.ec, i1 false)
  %.pre = load i32, ptr %i.r, align 4, !tbaa !72
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %indvars287 = trunc i64 %indvars.iv285 to i32
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ed, i64 64) ]
  %i.fq = sub nsw i64 %indvars.iv285, %i.eo       ; 14 uses
  %i.fr = add nsw i64 %indvars.iv285, %i.eo       ; 2 uses
  %i.fs = add nsw i32 %indvars287, %spec.select   ; 2 uses
  br i1 %.not266, label %.preheader226, label %.lr.ph236

.lr.ph236:                                        ; preds = %bb.k
  %i.ft = trunc nsw i64 %i.fq to i32
  %.not221231 = icmp ult i32 %i.fs, %i.ft
  %min.iters.check463 = icmp ult i64 %i.fc, 4
  %12 = trunc i128 %11 to i64
  %13 = xor i64 %9, -1
  %14 = icmp ult i64 %13, %12
  %15 = icmp samesign ugt i128 %11, 18446744073709551615
  %16 = or i1 %14, %15
  %.not221231.a = icmp ult i64 %i.fc, 16
  %17 = and i64 %i.fc, 12
  %n.vec467 = and i64 %i.fc, -16                  ; 4 uses
  %18 = add i64 %i.fq, %n.vec467                  ; 2 uses
  %broadcast.splatinsert472 = insertelement <8 x i64> poison, i64 %i.fq, i64 0
  %broadcast.splat473 = shufflevector <8 x i64> %broadcast.splatinsert472, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction474 = add <8 x i64> %broadcast.splat473, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n510 = icmp eq i64 %i.fc, %n.vec467
  %min.epilog.iters.check520 = icmp eq i64 %17, 0
  %n.vec522 = and i64 %i.fc, -4                   ; 3 uses
  %19 = add i64 %i.fq, %n.vec522
  %cmp.n549 = icmp eq i64 %i.fc, %n.vec522
  br label %20

.preheader226:                                    ; preds = %._crit_edge, %bb.k
  br i1 %.not267, label %._crit_edge243, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader226
  %i.fu = trunc nsw i64 %i.fq to i32
  %.not219237 = icmp ult i32 %i.fs, %i.fu
  br i1 %.not219237, label %.preheader.us.preheader, label %iter.check445.preheader

iter.check445.preheader:                          ; preds = %.preheader.lr.ph
  %min.iters.check416 = icmp ult i64 %i.fc, 5
  %i.fv = trunc i128 %i.fi to i64
  %i.fw = xor i64 %i.fg, -1
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = icmp samesign ugt i128 %i.fi, 18446744073709551615
  %i.fz = or i1 %i.fx, %i.fy
  %i.ga = or i1 %i.fz, %ident.check
  %min.iters.check418 = icmp ult i64 %i.fc, 33
  %i.gb = and i64 %i.fc, 31                       ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = select i1 %i.gc, i64 32, i64 %i.gb      ; 2 uses
  %n.vec420 = sub i64 %i.fc, %i.gd                ; 3 uses
  %i.ge = add i64 %i.fq, %n.vec420
  %min.epilog.iters.check448 = icmp samesign ult i64 %i.gd, 5
  %i.gf = and i64 %i.fc, 3                        ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  %i.gh = select i1 %i.gg, i64 4, i64 %i.gf
  %n.vec450 = sub i64 %i.fc, %i.gh                ; 2 uses
  %i.gi = add i64 %i.fq, %n.vec450
  br label %iter.check445

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 0, i64 %i.en, i1 false), !tbaa !39
  br label %._crit_edge243

20:                                               ; preds = %.lr.ph236, %._crit_edge
  %.0200234 = phi i64 [ 0, %.lr.ph236 ], [ %i.gk, %._crit_edge ] ; 5 uses
  br i1 %.not221231, label %._crit_edge, label %iter.check517

iter.check517:                                    ; preds = %20
  %brmerge = select i1 %min.iters.check463, i1 true, i1 %16
  br i1 %brmerge, label %.lr.ph.preheader, label %vector.main.loop.iter.check464

vector.main.loop.iter.check464:                   ; preds = %iter.check517
  br i1 %.not221231.a, label %vec.epilog.ph521, label %vector.ph466

vector.ph466:                                     ; preds = %vector.main.loop.iter.check464
  %broadcast.splatinsert470 = insertelement <8 x i64> poison, i64 %.0200234, i64 0
  %broadcast.splat471 = shufflevector <8 x i64> %broadcast.splatinsert470, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body475

vector.body475:                                   ; preds = %vector.ph466, %vector.body475
  %index476 = phi i64 [ 0, %vector.ph466 ], [ %index.next503, %vector.body475 ] ; 2 uses
  %vec.phi477 = phi <8 x float> [ zeroinitializer, %vector.ph466 ], [ %31, %vector.body475 ]
  %vec.phi478 = phi <8 x float> [ zeroinitializer, %vector.ph466 ], [ %32, %vector.body475 ]
  %vec.phi479 = phi <8 x float> [ zeroinitializer, %vector.ph466 ], [ %35, %vector.body475 ]
  %vec.phi480 = phi <8 x float> [ zeroinitializer, %vector.ph466 ], [ %36, %vector.body475 ]
  %vec.phi481 = phi <8 x float> [ zeroinitializer, %vector.ph466 ], [ %39, %vector.body475 ]
  %vec.phi482 = phi <8 x float> [ zeroinitializer, %vector.ph466 ], [ %40, %vector.body475 ]
  %vec.phi483 = phi <8 x float> [ zeroinitializer, %vector.ph466 ], [ %43, %vector.body475 ]
  %vec.phi484 = phi <8 x float> [ zeroinitializer, %vector.ph466 ], [ %44, %vector.body475 ]
  %vec.ind485 = phi <8 x i64> [ %induction474, %vector.ph466 ], [ %vec.ind.next504, %vector.body475 ] ; 3 uses
  %step.add486 = add <8 x i64> %vec.ind485, splat (i64 8)
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index476 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %wide.load487 = load <8 x float>, ptr %21, align 64, !tbaa !39 ; 4 uses
  %wide.load488 = load <8 x float>, ptr %22, align 32, !tbaa !39 ; 4 uses
  %23 = mul <8 x i64> %vec.ind485, %broadcast.splat469
  %24 = mul <8 x i64> %step.add486, %broadcast.splat469
  %25 = add <8 x i64> %23, %broadcast.splat471
  %26 = add <8 x i64> %24, %broadcast.splat471
  %27 = shl <8 x i64> %25, splat (i64 4)
  %28 = shl <8 x i64> %26, splat (i64 4)
  %wide.gep = getelementptr i8, ptr %2, <8 x i64> %27 ; 4 uses
  %wide.gep489 = getelementptr i8, ptr %2, <8 x i64> %28 ; 4 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  %wide.masked.gather490 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep489, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  %29 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.load487
  %30 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather490, %wide.load488
  %31 = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi477, %29 ; 2 uses
  %32 = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi478, %30 ; 2 uses
  %wide.gep491 = getelementptr i8, <8 x ptr> %wide.gep, i64 16
  %wide.gep492 = getelementptr i8, <8 x ptr> %wide.gep489, i64 16
  %wide.masked.gather493 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep491, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  %wide.masked.gather494 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep492, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  %33 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather493, %wide.load487
  %34 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather494, %wide.load488
  %35 = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi479, %33 ; 2 uses
  %36 = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi480, %34 ; 2 uses
  %wide.gep495 = getelementptr i8, <8 x ptr> %wide.gep, i64 32
  %wide.gep496 = getelementptr i8, <8 x ptr> %wide.gep489, i64 32
  %wide.masked.gather497 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep495, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  %wide.masked.gather498 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep496, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  %37 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather497, %wide.load487
  %38 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather498, %wide.load488
  %39 = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi481, %37 ; 2 uses
  %40 = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi482, %38 ; 2 uses
  %wide.gep499 = getelementptr i8, <8 x ptr> %wide.gep, i64 48
  %wide.gep500 = getelementptr i8, <8 x ptr> %wide.gep489, i64 48
  %wide.masked.gather501 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep499, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  %wide.masked.gather502 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep500, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  %41 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather501, %wide.load487
  %42 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather502, %wide.load488
  %43 = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi483, %41 ; 2 uses
  %44 = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi484, %42 ; 2 uses
  %index.next503 = add nuw i64 %index476, 16      ; 2 uses
  %vec.ind.next504 = add <8 x i64> %vec.ind485, splat (i64 16)
  %45 = icmp eq i64 %index.next503, %n.vec467
  br i1 %45, label %middle.block505, label %vector.body475, !llvm.loop !54

middle.block505:                                  ; preds = %vector.body475
  %bin.rdx506 = fadd reassoc nsz arcp contract afn <8 x float> %32, %31
  %46 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx506) ; 2 uses
  %bin.rdx507 = fadd reassoc nsz arcp contract afn <8 x float> %36, %35
  %47 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx507) ; 2 uses
  %bin.rdx508 = fadd reassoc nsz arcp contract afn <8 x float> %40, %39
  %48 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx508) ; 2 uses
  %bin.rdx509 = fadd reassoc nsz arcp contract afn <8 x float> %44, %43
  %49 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx509) ; 2 uses
  %50 = insertelement <4 x float> poison, float %46, i64 0
  %51 = insertelement <4 x float> %50, float %47, i64 1
  %52 = insertelement <4 x float> %51, float %48, i64 2
  %53 = insertelement <4 x float> %52, float %49, i64 3 ; 2 uses
  br i1 %cmp.n510, label %._crit_edge, label %vec.epilog.iter.check519

vec.epilog.iter.check519:                         ; preds = %middle.block505
  br i1 %min.epilog.iters.check520, label %.lr.ph.preheader, label %vec.epilog.ph521, !prof !78

vec.epilog.ph521:                                 ; preds = %vector.main.loop.iter.check464, %vec.epilog.iter.check519
  %vec.epilog.resume.val511 = phi i64 [ %n.vec467, %vec.epilog.iter.check519 ], [ 0, %vector.main.loop.iter.check464 ]
  %bc.merge.rdx512 = phi float [ %46, %vec.epilog.iter.check519 ], [ 0.000000e+00, %vector.main.loop.iter.check464 ]
  %bc.merge.rdx513 = phi float [ %47, %vec.epilog.iter.check519 ], [ 0.000000e+00, %vector.main.loop.iter.check464 ]
  %bc.merge.rdx514 = phi float [ %48, %vec.epilog.iter.check519 ], [ 0.000000e+00, %vector.main.loop.iter.check464 ]
  %bc.merge.rdx515 = phi float [ %49, %vec.epilog.iter.check519 ], [ 0.000000e+00, %vector.main.loop.iter.check464 ]
  %bc.resume.val516 = phi i64 [ %18, %vec.epilog.iter.check519 ], [ %i.fq, %vector.main.loop.iter.check464 ]
  %54 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx512, i64 0
  %55 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx513, i64 0
  %56 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx514, i64 0
  %57 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx515, i64 0
  %broadcast.splatinsert525 = insertelement <4 x i64> poison, i64 %.0200234, i64 0
  %broadcast.splat526 = shufflevector <4 x i64> %broadcast.splatinsert525, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert527 = insertelement <4 x i64> poison, i64 %bc.resume.val516, i64 0
  %broadcast.splat528 = shufflevector <4 x i64> %broadcast.splatinsert527, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction529 = add <4 x i64> %broadcast.splat528, <i64 0, i64 1, i64 2, i64 3>
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %vec.epilog.ph521
  %.0200234.a = phi i64 [ %vec.epilog.resume.val511, %vec.epilog.ph521 ], [ %index.next546, %bb.l ] ; 2 uses
  %vec.phi532 = phi <4 x float> [ %54, %vec.epilog.ph521 ], [ %63, %bb.l ]
  %vec.phi533 = phi <4 x float> [ %55, %vec.epilog.ph521 ], [ %65, %bb.l ]
  %vec.phi534 = phi <4 x float> [ %56, %vec.epilog.ph521 ], [ %67, %bb.l ]
  %vec.phi535 = phi <4 x float> [ %57, %vec.epilog.ph521 ], [ %69, %bb.l ]
  %vec.ind536 = phi <4 x i64> [ %induction529, %vec.epilog.ph521 ], [ %vec.ind.next547, %bb.l ] ; 2 uses
  %58 = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0200234.a
  %wide.load537 = load <4 x float>, ptr %58, align 16, !tbaa !39 ; 4 uses
  %59 = mul <4 x i64> %vec.ind536, %broadcast.splat524
  %60 = add <4 x i64> %59, %broadcast.splat526
  %61 = shl <4 x i64> %60, splat (i64 4)
  %wide.gep538 = getelementptr i8, ptr %2, <4 x i64> %61 ; 4 uses
  %wide.masked.gather539 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep538, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39
  %62 = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather539, %wide.load537
  %63 = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi532, %62 ; 2 uses
  %wide.gep540 = getelementptr i8, <4 x ptr> %wide.gep538, i64 16
  %wide.masked.gather541 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep540, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39
  %64 = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather541, %wide.load537
  %65 = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi533, %64 ; 2 uses
  %wide.gep542 = getelementptr i8, <4 x ptr> %wide.gep538, i64 32
  %wide.masked.gather543 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep542, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39
  %66 = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather543, %wide.load537
  %67 = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi534, %66 ; 2 uses
  %wide.gep544 = getelementptr i8, <4 x ptr> %wide.gep538, i64 48
  %wide.masked.gather545 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep544, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39
  %68 = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather545, %wide.load537
  %69 = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi535, %68 ; 2 uses
  %index.next546 = add nuw i64 %.0200234.a, 4     ; 2 uses
  %vec.ind.next547 = add <4 x i64> %vec.ind536, splat (i64 4)
  %70 = icmp eq i64 %index.next546, %n.vec522
  br i1 %70, label %vec.epilog.middle.block548, label %bb.l, !llvm.loop !55

vec.epilog.middle.block548:                       ; preds = %bb.l
  %71 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %63)
  %72 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %65)
  %73 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %67)
  %74 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %69)
  %75 = insertelement <4 x float> poison, float %71, i64 0
  %76 = insertelement <4 x float> %75, float %72, i64 1
  %77 = insertelement <4 x float> %76, float %73, i64 2
  %78 = insertelement <4 x float> %77, float %74, i64 3 ; 2 uses
  br i1 %cmp.n549, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check517, %vec.epilog.iter.check519, %vec.epilog.middle.block548
  %.0199232.ph = phi i64 [ %i.fq, %iter.check517 ], [ %19, %vec.epilog.middle.block548 ], [ %18, %vec.epilog.iter.check519 ]
  %.ph = phi <4 x float> [ zeroinitializer, %iter.check517 ], [ %78, %vec.epilog.middle.block548 ], [ %53, %vec.epilog.iter.check519 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block505, %vec.epilog.middle.block548, %20
  %79 = phi <4 x float> [ zeroinitializer, %20 ], [ %78, %vec.epilog.middle.block548 ], [ %53, %middle.block505 ], [ %i.gy, %.lr.ph ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.0200234
  store <4 x float> %79, ptr %i.gj, align 16, !tbaa !39
  %i.gk = add nuw i64 %.0200234, 4                ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.ee
  br i1 %i.gl, label %20, label %.preheader226

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0199232 = phi i64 [ %i.gz, %.lr.ph ], [ %.0199232.ph, %.lr.ph.preheader ] ; 3 uses
  %i.gm = phi <4 x float> [ %i.gy, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %i.gn = sub i64 %.0199232, %i.fq
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !39
  %i.gq = mul i64 %.0199232, %i.dz
  %i.gr = add i64 %i.gq, %.0200234
  %.idx222 = shl i64 %i.gr, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 %.idx222
  %i.gt = call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.gs, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !39
  %i.gu = shufflevector <13 x float> %i.gt, <13 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.gv = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gx = fmul reassoc nsz arcp contract afn <4 x float> %i.gu, %i.gw
  %i.gy = fadd reassoc nsz arcp contract afn <4 x float> %i.gm, %i.gx ; 2 uses
  %i.gz = add i64 %.0199232, 1                    ; 2 uses
  %.not221 = icmp ugt i64 %i.gz, %i.fr
  br i1 %.not221, label %._crit_edge, label %.lr.ph, !llvm.loop !56

iter.check445:                                    ; preds = %iter.check445.preheader, %._crit_edge241
  %.0196242 = phi i64 [ %i.ik, %._crit_edge241 ], [ %i.ee, %iter.check445.preheader ] ; 8 uses
  %brmerge.a = select i1 %min.iters.check416, i1 true, i1 %i.ga
  br i1 %brmerge.a, label %vec.epilog.scalar.ph446.preheader, label %vector.main.loop.iter.check417

vector.main.loop.iter.check417:                   ; preds = %iter.check445
  br i1 %min.iters.check418, label %vec.epilog.ph449, label %vector.ph419

vector.ph419:                                     ; preds = %vector.main.loop.iter.check417
  %invariant.op = add i64 8, %.0196242
  %invariant.op596 = add i64 16, %.0196242
  %invariant.op598 = add i64 24, %.0196242
  br label %vector.body421

vector.body421:                                   ; preds = %vector.ph419, %vector.body421
  %index422 = phi i64 [ 0, %vector.ph419 ], [ %index.next437, %vector.body421 ] ; 3 uses
  %vec.phi423 = phi <8 x float> [ zeroinitializer, %vector.ph419 ], [ %i.hs, %vector.body421 ]
  %vec.phi424 = phi <8 x float> [ zeroinitializer, %vector.ph419 ], [ %i.ht, %vector.body421 ]
  %vec.phi425 = phi <8 x float> [ zeroinitializer, %vector.ph419 ], [ %i.hu, %vector.body421 ]
  %vec.phi426 = phi <8 x float> [ zeroinitializer, %vector.ph419 ], [ %i.hv, %vector.body421 ]
  %i.ha = add i64 %i.fq, %index422                ; 4 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index422 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  %wide.load427 = load <8 x float>, ptr %i.hb, align 64, !tbaa !39
  %wide.load428 = load <8 x float>, ptr %i.hc, align 32, !tbaa !39
  %wide.load429 = load <8 x float>, ptr %i.hd, align 64, !tbaa !39
  %wide.load430 = load <8 x float>, ptr %i.he, align 32, !tbaa !39
  %i.hf = add i64 %i.ha, %.0196242
  %.reass = add i64 %i.ha, %invariant.op
  %.reass597 = add i64 %i.ha, %invariant.op596
  %.reass599 = add i64 %i.ha, %invariant.op598
  %i.hg = shl i64 %i.hf, 4
  %i.hh = shl i64 %.reass, 4
  %i.hi = shl i64 %.reass597, 4
  %i.hj = shl i64 %.reass599, 4
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %i.hh
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 %i.hi
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %i.hj
  %wide.vec = load <32 x float>, ptr %i.hk, align 4, !tbaa !39
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec431 = load <32 x float>, ptr %i.hl, align 4, !tbaa !39
  %strided.vec432 = shufflevector <32 x float> %wide.vec431, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec433 = load <32 x float>, ptr %i.hm, align 4, !tbaa !39
  %strided.vec434 = shufflevector <32 x float> %wide.vec433, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec435 = load <32 x float>, ptr %i.hn, align 4, !tbaa !39
  %strided.vec436 = shufflevector <32 x float> %wide.vec435, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ho = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %wide.load427
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec432, %wide.load428
  %i.hq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec434, %wide.load429
  %i.hr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec436, %wide.load430
  %i.hs = fadd reassoc nsz arcp contract afn <8 x float> %i.ho, %vec.phi423 ; 2 uses
  %i.ht = fadd reassoc nsz arcp contract afn <8 x float> %i.hp, %vec.phi424 ; 2 uses
  %i.hu = fadd reassoc nsz arcp contract afn <8 x float> %i.hq, %vec.phi425 ; 2 uses
  %i.hv = fadd reassoc nsz arcp contract afn <8 x float> %i.hr, %vec.phi426 ; 2 uses
  %index.next437 = add nuw i64 %index422, 32      ; 2 uses
  %i.hw = icmp eq i64 %index.next437, %n.vec420
  br i1 %i.hw, label %vec.epilog.iter.check447, label %vector.body421, !llvm.loop !57

vec.epilog.iter.check447:                         ; preds = %vector.body421
  %bin.rdx439 = fadd reassoc nsz arcp contract afn <8 x float> %i.ht, %i.hs
  %bin.rdx440 = fadd reassoc nsz arcp contract afn <8 x float> %i.hu, %bin.rdx439
  %bin.rdx441 = fadd reassoc nsz arcp contract afn <8 x float> %i.hv, %bin.rdx440
  %i.hx = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx441) ; 2 uses
  br i1 %min.epilog.iters.check448, label %vec.epilog.scalar.ph446.preheader, label %vec.epilog.ph449, !prof !76

vec.epilog.ph449:                                 ; preds = %vector.main.loop.iter.check417, %vec.epilog.iter.check447
  %vec.epilog.resume.val442 = phi i64 [ %n.vec420, %vec.epilog.iter.check447 ], [ 0, %vector.main.loop.iter.check417 ]
  %bc.merge.rdx444 = phi float [ %i.hx, %vec.epilog.iter.check447 ], [ 0.000000e+00, %vector.main.loop.iter.check417 ]
  %i.hy = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx444, i64 0
  %invariant.op600 = add i64 %i.fq, %.0196242
  br label %vec.epilog.vector.body451

vec.epilog.vector.body451:                        ; preds = %vec.epilog.vector.body451, %vec.epilog.ph449
  %index452 = phi i64 [ %vec.epilog.resume.val442, %vec.epilog.ph449 ], [ %index.next457, %vec.epilog.vector.body451 ] ; 3 uses
  %vec.phi453 = phi <4 x float> [ %i.hy, %vec.epilog.ph449 ], [ %i.id, %vec.epilog.vector.body451 ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index452
  %wide.load454 = load <4 x float>, ptr %i.hz, align 4, !tbaa !39
  %.reass601 = add i64 %index452, %invariant.op600
  %i.ia = shl i64 %.reass601, 4
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 %i.ia
  %wide.vec455 = load <16 x float>, ptr %i.ib, align 4, !tbaa !39
  %strided.vec456 = shufflevector <16 x float> %wide.vec455, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec456, %wide.load454
  %i.id = fadd reassoc nsz arcp contract afn <4 x float> %i.ic, %vec.phi453 ; 2 uses
  %index.next457 = add nuw i64 %index452, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next457, %n.vec450
  br i1 %i.ie, label %vec.epilog.middle.block458, label %vec.epilog.vector.body451, !llvm.loop !58

vec.epilog.middle.block458:                       ; preds = %vec.epilog.vector.body451
  %i.if = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.id)
  br label %vec.epilog.scalar.ph446.preheader

vec.epilog.scalar.ph446.preheader:                ; preds = %iter.check445, %vec.epilog.iter.check447, %vec.epilog.middle.block458
  %.0194239.ph = phi i64 [ %i.fq, %iter.check445 ], [ %i.gi, %vec.epilog.middle.block458 ], [ %i.ge, %vec.epilog.iter.check447 ]
  %.0195238.ph = phi float [ 0.000000e+00, %iter.check445 ], [ %i.if, %vec.epilog.middle.block458 ], [ %i.hx, %vec.epilog.iter.check447 ]
  br label %vec.epilog.scalar.ph446

._crit_edge243:                                   ; preds = %._crit_edge241, %.preheader.us.preheader, %.preheader226
  %i.ig = mul i64 %i.ef, %indvars.iv285
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ig ; 7 uses
  br i1 %i.eg, label %.lr.ph246, label %._crit_edge247

.lr.ph246:                                        ; preds = %._crit_edge243
  %i.ii = mul nsw i64 %indvars.iv285, %i.dz       ; 5 uses
  br i1 %i.es, label %.epil.preheader, label %.lr.ph246.new

._crit_edge241:                                   ; preds = %vec.epilog.scalar.ph446
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.0196242
  store float %i.iu, ptr %i.ij, align 4, !tbaa !39
  %i.ik = add nuw i64 %.0196242, 1                ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.dz
  br i1 %i.il, label %iter.check445, label %._crit_edge243

vec.epilog.scalar.ph446:                          ; preds = %vec.epilog.scalar.ph446.preheader, %vec.epilog.scalar.ph446
  %.0194239 = phi i64 [ %i.iv, %vec.epilog.scalar.ph446 ], [ %.0194239.ph, %vec.epilog.scalar.ph446.preheader ] ; 3 uses
  %.0195238 = phi float [ %i.iu, %vec.epilog.scalar.ph446 ], [ %.0195238.ph, %vec.epilog.scalar.ph446.preheader ]
  %i.im = sub i64 %.0194239, %i.fq
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !39
  %i.ip = mul i64 %.0194239, %i.dz
  %i.iq = add i64 %i.ip, %.0196242
  %.idx220 = shl i64 %i.iq, 4
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 %.idx220
  %i.is = load float, ptr %i.ir, align 4, !tbaa !39
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %i.io
  %i.iu = fadd reassoc nsz arcp contract afn float %i.it, %.0195238 ; 2 uses
  %i.iv = add i64 %.0194239, 1                    ; 2 uses
  %.not219 = icmp ugt i64 %i.iv, %i.fr
  br i1 %.not219, label %._crit_edge241, label %vec.epilog.scalar.ph446, !llvm.loop !59

._crit_edge247.loopexit.unr-lcssa:                ; preds = %.lr.ph246.new
  br i1 %lcmp.mod.not, label %._crit_edge247, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge247.loopexit.unr-lcssa, %.lr.ph246
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph246 ], [ %indvars.iv.next.3, %._crit_edge247.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod571)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.m ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %.idx301.epil = shl nuw nsw i64 %indvars.iv.epil, 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx301.epil
  %i.ix = add nsw i64 %i.ii, %indvars.iv.epil
  %.idx218.epil = shl i64 %i.ix, 4
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 %.idx218.epil
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iw, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.iy, i64 16, i1 false), !tbaa !39, !alias.scope !79
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge247, label %bb.m, !llvm.loop !63

._crit_edge247:                                   ; preds = %._crit_edge247.loopexit.unr-lcssa, %bb.m, %._crit_edge243
  %i.iz = load float, ptr %i.eh, align 4, !tbaa !40 ; 2 uses
  %i.ja = load float, ptr %i.ei, align 4, !tbaa !81
  %i.jb = load i32, ptr %.phi.trans.insert, align 4, !tbaa !71 ; 3 uses
  %i.jc = sub nsw i32 %i.jb, %spec.select         ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, %spec.select
  br i1 %i.jd, label %.lr.ph257, label %.preheader225

.lr.ph257:                                        ; preds = %._crit_edge247
  %i.je = mul nsw i64 %indvars.iv285, %i.dz
  %i.jf = sub i32 %i.jb, %i.ep
  br label %bb.n

.lr.ph246.new:                                    ; preds = %.lr.ph246, %.lr.ph246.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph246.new ], [ 0, %.lr.ph246 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph246.new ], [ 0, %.lr.ph246 ]
  %.idx301 = shl nuw nsw i64 %indvars.iv, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx301
  %i.jh = add nsw i64 %i.ii, %indvars.iv
  %.idx218 = shl i64 %i.jh, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 %.idx218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jg, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa !39, !alias.scope !79
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx301.1 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx301.1
  %i.jk = add nsw i64 %i.ii, %indvars.iv.next
  %.idx218.1 = shl i64 %i.jk, 4
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx218.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jj, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa !39, !alias.scope !79
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %.idx301.2 = shl nuw nsw i64 %indvars.iv.next.1, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx301.2
  %i.jn = add nsw i64 %i.ii, %indvars.iv.next.1
  %.idx218.2 = shl i64 %i.jn, 4
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx218.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jm, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.jo, i64 16, i1 false), !tbaa !39, !alias.scope !79
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %.idx301.3 = shl nuw nsw i64 %indvars.iv.next.2, 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx301.3
  %i.jq = add nsw i64 %i.ii, %indvars.iv.next.2
  %.idx218.3 = shl i64 %i.jq, 4
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx218.3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jp, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.jr, i64 16, i1 false), !tbaa !39, !alias.scope !79
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge247.loopexit.unr-lcssa, label %.lr.ph246.new

.preheader225:                                    ; preds = %bb.p, %._crit_edge247
  br i1 %i.eg, label %.lr.ph261, label %.loopexit

.lr.ph261:                                        ; preds = %.preheader225
  %i.js = mul nsw i64 %indvars.iv285, %i.dz
  %i.jt = sext i32 %i.jc to i64
  %i.ju = sext i32 %i.jb to i64
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph257, %bb.p
  %indvar = phi i64 [ 0, %.lr.ph257 ], [ %indvar.next, %bb.p ] ; 2 uses
  %indvars.iv278 = phi i64 [ %i.eo, %.lr.ph257 ], [ %indvars.iv.next279, %bb.p ] ; 5 uses
  %indvars.iv273 = phi i32 [ 0, %.lr.ph257 ], [ %indvars.iv.next274, %bb.p ] ; 3 uses
  %i.jv = add i64 %i.eq, %indvar
  %i.jw = sext i32 %indvars.iv273 to i64          ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.jv, i64 %i.jw)
  %i.jx = add i64 %smax, 1
  %i.jy = sub i64 %i.jx, %i.jw                    ; 7 uses
  %i.jz = add nsw i64 %indvars.iv278, %i.eo
  br i1 %.not2527.i, label %._crit_edge253, label %iter.check398

iter.check398:                                    ; preds = %bb.n
  %.neg = sub i64 %i.eo, %indvars.iv278
  %i.ka = sext i32 %indvars.iv273 to i64          ; 5 uses
  %i.kb = getelementptr [4 x i8], ptr %i.an, i64 %.neg ; 3 uses
  %min.iters.check370 = icmp ult i64 %i.jy, 8
  br i1 %min.iters.check370, label %.lr.ph252.preheader, label %vector.main.loop.iter.check371

vector.main.loop.iter.check371:                   ; preds = %iter.check398
  %min.iters.check372 = icmp ult i64 %i.jy, 32
  br i1 %min.iters.check372, label %vec.epilog.ph402, label %vector.ph373

vector.ph373:                                     ; preds = %vector.main.loop.iter.check371
  %i.kc = and i64 %i.jy, 24
  %n.vec374 = and i64 %i.jy, -32                  ; 4 uses
  %i.kd = add i64 %n.vec374, %i.ka
  br label %vector.body375

vector.body375:                                   ; preds = %vector.ph373, %vector.body375
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next389, %vector.body375 ] ; 2 uses
  %vec.phi377 = phi <8 x float> [ zeroinitializer, %vector.ph373 ], [ %i.kr, %vector.body375 ]
  %vec.phi378 = phi <8 x float> [ zeroinitializer, %vector.ph373 ], [ %i.ks, %vector.body375 ]
  %vec.phi379 = phi <8 x float> [ zeroinitializer, %vector.ph373 ], [ %i.kt, %vector.body375 ]
  %vec.phi380 = phi <8 x float> [ zeroinitializer, %vector.ph373 ], [ %i.ku, %vector.body375 ]
  %i.ke = add nuw i64 %index376, %i.ka            ; 2 uses
  %i.kf = getelementptr [4 x i8], ptr %i.kb, i64 %i.ke ; 4 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 32
  %i.kh = getelementptr i8, ptr %i.kf, i64 64
  %i.ki = getelementptr i8, ptr %i.kf, i64 96
  %wide.load381 = load <8 x float>, ptr %i.kf, align 64, !tbaa !39
  %wide.load382 = load <8 x float>, ptr %i.kg, align 32, !tbaa !39
  %wide.load383 = load <8 x float>, ptr %i.kh, align 64, !tbaa !39
  %wide.load384 = load <8 x float>, ptr %i.ki, align 32, !tbaa !39
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ke ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 64
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 96
  %wide.load385 = load <8 x float>, ptr %i.kj, align 4, !tbaa !39
  %wide.load386 = load <8 x float>, ptr %i.kk, align 4, !tbaa !39
  %wide.load387 = load <8 x float>, ptr %i.kl, align 4, !tbaa !39
  %wide.load388 = load <8 x float>, ptr %i.km, align 4, !tbaa !39
  %i.kn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load385, %wide.load381
  %i.ko = fmul reassoc nsz arcp contract afn <8 x float> %wide.load386, %wide.load382
  %i.kp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load387, %wide.load383
  %i.kq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load388, %wide.load384
  %i.kr = fadd reassoc nsz arcp contract afn <8 x float> %i.kn, %vec.phi377 ; 2 uses
  %i.ks = fadd reassoc nsz arcp contract afn <8 x float> %i.ko, %vec.phi378 ; 2 uses
  %i.kt = fadd reassoc nsz arcp contract afn <8 x float> %i.kp, %vec.phi379 ; 2 uses
  %i.ku = fadd reassoc nsz arcp contract afn <8 x float> %i.kq, %vec.phi380 ; 2 uses
  %index.next389 = add nuw i64 %index376, 32      ; 2 uses
  %i.kv = icmp eq i64 %index.next389, %n.vec374
  br i1 %i.kv, label %middle.block390, label %vector.body375, !llvm.loop !64

middle.block390:                                  ; preds = %vector.body375
  %bin.rdx391 = fadd reassoc nsz arcp contract afn <8 x float> %i.ks, %i.kr
  %bin.rdx392 = fadd reassoc nsz arcp contract afn <8 x float> %i.kt, %bin.rdx391
  %bin.rdx393 = fadd reassoc nsz arcp contract afn <8 x float> %i.ku, %bin.rdx392
  %i.kw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx393) ; 3 uses
  %cmp.n394 = icmp eq i64 %i.jy, %n.vec374
  br i1 %cmp.n394, label %._crit_edge253, label %vec.epilog.iter.check400

vec.epilog.iter.check400:                         ; preds = %middle.block390
  %min.epilog.iters.check401 = icmp eq i64 %i.kc, 0
  br i1 %min.epilog.iters.check401, label %.lr.ph252.preheader, label %vec.epilog.ph402, !prof !75

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check371, %vec.epilog.iter.check400
  %vec.epilog.resume.val395 = phi i64 [ %n.vec374, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check371 ]
  %bc.merge.rdx397 = phi float [ %i.kw, %vec.epilog.iter.check400 ], [ 0.000000e+00, %vector.main.loop.iter.check371 ]
  %n.vec403 = and i64 %i.jy, -8                   ; 3 uses
  %i.kx = add i64 %n.vec403, %i.ka
  %i.ky = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx397, i64 0
  br label %vec.epilog.vector.body404

vec.epilog.vector.body404:                        ; preds = %vec.epilog.vector.body404, %vec.epilog.ph402
  %index405 = phi i64 [ %vec.epilog.resume.val395, %vec.epilog.ph402 ], [ %index.next409, %vec.epilog.vector.body404 ] ; 2 uses
  %vec.phi406 = phi <8 x float> [ %i.ky, %vec.epilog.ph402 ], [ %i.ld, %vec.epilog.vector.body404 ]
  %i.kz = add nuw i64 %index405, %i.ka            ; 2 uses
  %i.la = getelementptr [4 x i8], ptr %i.kb, i64 %i.kz
  %wide.load407 = load <8 x float>, ptr %i.la, align 4, !tbaa !39
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.kz
  %wide.load408 = load <8 x float>, ptr %i.lb, align 4, !tbaa !39
  %i.lc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load408, %wide.load407
  %i.ld = fadd reassoc nsz arcp contract afn <8 x float> %i.lc, %vec.phi406 ; 2 uses
  %index.next409 = add nuw i64 %index405, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next409, %n.vec403
  br i1 %i.le, label %vec.epilog.middle.block410, label %vec.epilog.vector.body404, !llvm.loop !65

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body404
  %i.lf = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ld) ; 2 uses
  %cmp.n411 = icmp eq i64 %i.jy, %n.vec403
  br i1 %cmp.n411, label %._crit_edge253, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block410
  %indvars.iv275.ph = phi i64 [ %i.ka, %iter.check398 ], [ %i.kd, %vec.epilog.iter.check400 ], [ %i.kx, %vec.epilog.middle.block410 ]
  %.0191249.ph = phi float [ 0.000000e+00, %iter.check398 ], [ %i.kw, %vec.epilog.iter.check400 ], [ %i.lf, %vec.epilog.middle.block410 ]
  br label %.lr.ph252

._crit_edge253:                                   ; preds = %.lr.ph252, %middle.block390, %vec.epilog.middle.block410, %bb.n
  %.0191.lcssa = phi float [ 0.000000e+00, %bb.n ], [ %i.lf, %vec.epilog.middle.block410 ], [ %i.kw, %middle.block390 ], [ %i.lr, %.lr.ph252 ]
  %i.lg = add nsw i64 %i.je, %indvars.iv278
  %.idx224 = shl i64 %i.lg, 4
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx224 ; 3 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !39 ; 2 uses
  %i.lj = fsub reassoc nsz arcp contract afn float %i.li, %.0191.lcssa ; 2 uses
  %i.lk = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lj) ; 2 uses
  %i.ll = fcmp reassoc nsz arcp contract afn ogt float %i.lk, %i.iz
  br i1 %i.ll, label %bb.o, label %bb.p

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %.lr.ph252
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %.lr.ph252 ], [ %indvars.iv275.ph, %.lr.ph252.preheader ] ; 4 uses
  %.0191249 = phi float [ %i.lr, %.lr.ph252 ], [ %.0191249.ph, %.lr.ph252.preheader ]
  %i.lm = getelementptr [4 x i8], ptr %i.kb, i64 %indvars.iv275
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !39
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %indvars.iv275
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !39
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lp, %i.ln
  %i.lr = fadd reassoc nsz arcp contract afn float %i.lq, %.0191249 ; 2 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1
  %.not217.not = icmp slt i64 %indvars.iv275, %i.jz
  br i1 %.not217.not, label %.lr.ph252, label %._crit_edge253, !llvm.loop !66

bb.o:                                             ; preds = %._crit_edge253
  %i.ls = fsub reassoc nsz arcp contract afn float %i.lk, %i.iz ; 2 uses
  %i.lt = fcmp reassoc nsz arcp contract afn ogt float %i.ls, 0.000000e+00
  %i.lu = select reassoc nsz arcp contract afn i1 %i.lt, float %i.ls, float 0.000000e+00
  %i.lv = call reassoc nsz arcp contract afn float @llvm.copysign.f32(float %i.lu, float %i.lj)
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge253, %bb.o
  %i.lw = phi reassoc nsz arcp contract afn float [ %i.lv, %bb.o ], [ 0.000000e+00, %._crit_edge253 ]
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lw, %i.ja
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lx, %i.li
  %.idx302 = shl nsw i64 %indvars.iv278, 4
  %i.lz = getelementptr inbounds i8, ptr %i.ih, i64 %.idx302 ; 3 uses
  store float %i.ly, ptr %i.lz, align 4, !tbaa !39
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !39
  %i.mc = getelementptr i8, ptr %i.lz, i64 4
  store float %i.mb, ptr %i.mc, align 4, !tbaa !39
  %i.md = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.me = load float, ptr %i.md, align 4, !tbaa !39
  %i.mf = getelementptr i8, ptr %i.lz, i64 8
  store float %i.me, ptr %i.mf, align 4, !tbaa !39
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, 1
  %indvars.iv.next274 = add i32 %indvars.iv273, 1 ; 2 uses
  %exitcond281.not = icmp eq i32 %indvars.iv.next274, %i.jf
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond281.not, label %.preheader225, label %bb.n

bb.q:                                             ; preds = %.lr.ph261, %bb.q
  %indvars.iv282 = phi i64 [ %i.jt, %.lr.ph261 ], [ %indvars.iv.next283, %bb.q ] ; 3 uses
  %.idx303 = shl nsw i64 %indvars.iv282, 4
  %i.mg = getelementptr inbounds i8, ptr %i.ih, i64 %.idx303
  %i.mh = add nsw i64 %i.js, %indvars.iv282
  %.idx = shl i64 %i.mh, 4
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mg, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.mi, i64 16, i1 false), !tbaa !39, !alias.scope !82
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, 1 ; 2 uses
  %i.mj = icmp slt i64 %indvars.iv.next283, %i.ju
  br i1 %i.mj, label %bb.q, label %.loopexit

.loopexit:                                        ; preds = %bb.q, %.preheader225, %bb.j
  %i.mk = phi i32 [ %.pre, %bb.j ], [ %i.eu, %.preheader225 ], [ %i.eu, %bb.q ] ; 2 uses
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = icmp slt i64 %indvars.iv.next286, %i.ml
  br i1 %i.mm, label %bb.i, label %._crit_edge265

bb.r:                                             ; preds = %init_gaussian_kernel.exit, %._crit_edge265, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge288, %bb.r, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 2 uses
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !39
  %i.d = fmul reassoc nsz arcp contract afn <2 x float> %i.c, <float 2.500000e+00, float 1.000000e+00>
  store <2 x float> %i.d, ptr %i.b, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.f, ptr %i.g, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 16, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #21 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store i32 -999, ptr %i.a, align 4, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -999, ptr %i.d, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 24) #20 ; 8 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !99
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.12) #20 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !101
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.c, float noundef 8.000000e+00) #20
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !101
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.d, i32 noundef 3) #20
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.e, ptr noundef %i.f) #20
  %i.g = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.14) #20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !102
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.g, i32 noundef 3) #20
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.i, ptr noundef %i.j) #20
  %i.k = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.16) #20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !103
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.k, i32 noundef 3) #20
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.m, ptr noundef %i.n) #20
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #2

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !106
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !107
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !107
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !107
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !107
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !107
  store ptr @introspection_init.f3, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 336), align 16, !tbaa !107
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.12) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.14) #22
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.16) #22
  %.not9 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %.not9, ptr %i.e, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.12) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.14) #20
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.16) #20
  %.not5 = icmp eq i32 %i.c, 0
  %. = select i1 %.not5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ %., %bb.c ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umax.i128(i128, i128) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.usub.sat.i128(i128, i128) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <13 x float> @llvm.masked.load.v13f32.p0(ptr captures(none), <13 x i1>, <13 x float>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

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
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!14 = !{!"dt_action_t", !8, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!16 = !{!"dt_iop_module_so_t", !14, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !15, i64 488, !7, i64 496, !11, i64 520, !8, i64 528, !11, i64 536, !8, i64 544, !8, i64 548}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!18 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!19 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!20 = !{!"dt_dev_histogram_collection_params_t", !19, i64 0, !8, i64 8}
!21 = !{!"p1 int", !11, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !22, i64 8, !8, i64 16, !8, i64 20}
!24 = !{!"float", !7, i64 0}
!25 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !24, i64 16}
!26 = !{!"short", !7, i64 0}
!27 = !{!"", !26, i64 0, !26, i64 2}
!28 = !{!"", !8, i64 0, !7, i64 16}
!29 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !27, i64 48, !28, i64 64, !7, i64 96, !8, i64 112}
!30 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!31 = !{!"p1 float", !11, i64 0}
!32 = !{!"dt_dev_distorted_mask_cache_t", !31, i64 0, !25, i64 8, !22, i64 32, !22, i64 40}
!33 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !18, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !20, i64 40, !21, i64 56, !23, i64 64, !7, i64 88, !24, i64 104, !8, i64 108, !8, i64 112, !22, i64 120, !8, i64 128, !8, i64 132, !25, i64 136, !25, i64 156, !25, i64 176, !25, i64 196, !8, i64 216, !8, i64 220, !29, i64 224, !29, i64 352, !7, i64 480, !8, i64 516, !30, i64 520, !32, i64 528, !32, i64 576}
!34 = !{!33, !11, i64 16}
!35 = !{!"dt_iop_sharpen_data_t", !24, i64 0, !24, i64 4, !24, i64 8}
!36 = !{!35, !24, i64 0}
!37 = !{!25, !24, i64 16}
!38 = !{!33, !24, i64 104}
!39 = !{!24, !24, i64 0}
!40 = !{!35, !24, i64 8}
!41 = !{!16, !11, i64 520}
!42 = !{!16, !11, i64 48}
!43 = !{!"dt_develop_tiling_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!44 = !{!43, !24, i64 8}
!45 = !{!43, !8, i64 16}
!46 = !{!43, !8, i64 20}
!47 = !{!43, !8, i64 24}
!48 = distinct !{!48, !73, !74}
!49 = distinct !{!49, !73, !74}
!50 = distinct !{!50, !74, !73}
!51 = distinct !{!51, !73, !74}
!52 = distinct !{!52, !73, !74}
!53 = distinct !{!53, !74, !73}
!54 = distinct !{!54, !73, !74}
!55 = distinct !{!55, !73, !74}
!56 = distinct !{!56, !73}
!57 = distinct !{!57, !73, !74}
!58 = distinct !{!58, !73, !74}
!59 = distinct !{!59, !73}
!60 = distinct !{!60, !"copy_pixel"}
!61 = distinct !{!61, !60, !"copy_pixel: argument 1"}
!62 = distinct !{!62, !60, !"copy_pixel: argument 0"}
!63 = distinct !{!63, !80}
!64 = distinct !{!64, !73, !74}
!65 = distinct !{!65, !73, !74}
!66 = distinct !{!66, !74, !73}
!67 = distinct !{!67, !"copy_pixel"}
!68 = distinct !{!68, !67, !"copy_pixel: argument 1"}
!69 = distinct !{!69, !67, !"copy_pixel: argument 0"}
!70 = !{!33, !8, i64 132}
!71 = !{!25, !8, i64 8}
!72 = !{!25, !8, i64 12}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!"branch_weights", i32 8, i32 24}
!76 = !{!"branch_weights", i32 4, i32 28}
!77 = !{!31, !31, i64 0}
!78 = !{!"branch_weights", i32 4, i32 12}
!79 = !{!62, !61}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!35, !24, i64 4}
!82 = !{!69, !68}
!83 = !{!"dt_iop_sharpen_params_t", !24, i64 0, !24, i64 4, !24, i64 8}
!84 = !{!83, !24, i64 8}
!85 = !{!"dt_iop_sharpen_global_data_t", !8, i64 0, !8, i64 4, !8, i64 8}
!86 = !{!85, !8, i64 0}
!87 = !{!85, !8, i64 4}
!88 = !{!85, !8, i64 8}
!89 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!90 = !{!"dt_pthread_mutex_t", !7, i64 0}
!91 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!92 = !{!"", !30, i64 0, !30, i64 8}
!93 = !{!"", !17, i64 0, !8, i64 8}
!94 = !{!"", !92, i64 0, !93, i64 16}
!95 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!96 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!97 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!98 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !15, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !21, i64 608, !23, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !89, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !90, i64 712, !11, i64 752, !11, i64 760, !91, i64 768, !91, i64 776, !11, i64 784, !94, i64 792, !95, i64 824, !95, i64 832, !95, i64 840, !95, i64 848, !95, i64 856, !95, i64 864, !95, i64 872, !8, i64 880, !95, i64 888, !95, i64 896, !95, i64 904, !96, i64 912, !96, i64 920, !95, i64 928, !95, i64 936, !8, i64 944, !97, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !95, i64 1096, !11, i64 1104, !8, i64 1112}
!99 = !{!98, !11, i64 704}
!100 = !{!"dt_iop_sharpen_gui_data_t", !95, i64 0, !95, i64 8, !95, i64 16}
!101 = !{!100, !95, i64 0}
!102 = !{!100, !95, i64 8}
!103 = !{!100, !95, i64 16}
!104 = !{!"p1 _ZTS24dt_introspection_field_t", !11, i64 0}
!105 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !12, i64 8, !22, i64 16, !104, i64 24, !22, i64 32, !22, i64 40}
!106 = !{!105, !8, i64 0}
!107 = !{!7, !7, i64 0}
end_hunk_0
