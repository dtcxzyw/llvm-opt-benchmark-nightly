Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorcontrast?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"color contrast\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"increase saturation and separation between\0Aopposite colors\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"creative\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"non-linear, Lab, display-referred\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"non-linear, Lab\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"a_steepness\00", align 1
@.str.8 = private unnamed_addr constant [103 x i8] c"steepness of the a* curve in Lab\0Alower values desaturate greens and magenta while higher saturate them\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"b_steepness\00", align 1
@.str.10 = private unnamed_addr constant [102 x i8] c"steepness of the b* curve in Lab\0Alower values desaturate blues and yellows while higher saturate them\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 2, ptr @.str.19, i64 20, ptr getelementptr (i8, ptr @introspection_linear, i64 440), i64 1120, i64 688 }, align 8
@introspection_init.f5 = internal global [6 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr null], align 16
@.str.11 = private unnamed_addr constant [9 x i8] c"a_offset\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"b_offset\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"green-magenta contrast\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"blue-yellow contrast\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"dt_iop_colorcontrast_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.7, ptr @.str.7, ptr @.str.15, i64 4, i64 0, ptr null }, float 0.000000e+00, float 5.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.11, ptr @.str.11, ptr @.str.16, i64 4, i64 4, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.9, ptr @.str.9, ptr @.str.17, i64 4, i64 8, ptr null }, float 0.000000e+00, float 5.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.12, ptr @.str.12, ptr @.str.16, i64 4, i64 12, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.18, ptr @.str.13, ptr @.str.13, ptr @.str.16, i64 4, i64 16, ptr null }, i32 -2147483648, i32 2147483647, i32 1, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.16, ptr @.str.16, ptr @.str.16, i64 20, i64 0, ptr null }, i64 5, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 68
}

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
  %i.b = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #19 ; 3 uses
  %i.c = load <4 x float>, ptr %1, align 4, !tbaa !12
  store <4 x float> %i.c, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.d, align 4, !tbaa !56
  store ptr %i.b, ptr %3, align 8, !tbaa !57
  store i32 20, ptr %4, align 4, !tbaa !58
  store i32 2, ptr %5, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !30  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !69
  %i.e = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %3, i64 64) ]
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, %i.h                   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.o = load <4 x float>, ptr %i.b, align 4, !tbaa !12 ; 11 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !72 ; 5 uses
  %i.q = load <2 x float>, ptr %i.m, align 4, !tbaa !12 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %.preheader, label %.preheader42

.preheader42:                                     ; preds = %bb.b
  %i.t = shl i64 %i.l, 2                          ; 2 uses
  %.not47 = icmp eq i64 %i.t, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader42
  %i.u = add i64 %i.t, -4                         ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.u, 12
  br i1 %i.x, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.w, 9223372036854775804
  %i.y = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.z = shufflevector <2 x float> %i.y, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.aa = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.ab = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.ad = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.ae = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.ag = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.ah = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.aj = insertelement <2 x float> %i.q, float %i.p, i64 1
  br label %.lr.ph

.preheader:                                       ; preds = %bb.b
  %.not48 = icmp eq i64 %i.l, 0
  br i1 %.not48, label %.loopexit, label %clamped_scaling.exit.preheader

clamped_scaling.exit.preheader:                   ; preds = %.preheader
  %xtraiter62 = and i64 %i.l, 1
  %i.ak = icmp eq i64 %i.l, 1
  br i1 %i.ak, label %clamped_scaling.exit.epil.preheader, label %clamped_scaling.exit.preheader.new

clamped_scaling.exit.preheader.new:               ; preds = %clamped_scaling.exit.preheader
  %unroll_iter66 = and i64 %i.l, -2
  %i.al = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.am = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.an = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ao = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  br label %clamped_scaling.exit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03645 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cg, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03645 ; 3 uses
  %i.aq = load float, ptr %i.ap, align 64, !tbaa !12
  %.sroa.0.0.vec.insert = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !12
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.as
  %i.au = fadd reassoc nsz arcp contract afn <2 x float> %i.at, %i.aa
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert59 = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.0.8.vec.insert59, float %i.ax, i64 3
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03645
  store <4 x float> %.sroa.0.12.vec.insert, ptr %i.ay, align 64, !tbaa !33, !alias.scope !73, !nontemporal !74
  %i.az = or disjoint i64 %.03645, 4              ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az ; 3 uses
  %i.bb = load float, ptr %i.ba, align 16, !tbaa !12
  %.sroa.0.0.vec.insert.1 = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !12
  %i.be = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, %i.bd
  %i.bf = fadd reassoc nsz arcp contract afn <2 x float> %i.be, %i.ad
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert59.1 = shufflevector <4 x float> %.sroa.0.0.vec.insert.1, <4 x float> %i.bg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !12
  %.sroa.0.12.vec.insert.1 = insertelement <4 x float> %.sroa.0.8.vec.insert59.1, float %i.bi, i64 3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.az
  store <4 x float> %.sroa.0.12.vec.insert.1, ptr %i.bj, align 16, !tbaa !33, !alias.scope !73, !nontemporal !74
  %i.bk = or disjoint i64 %.03645, 8              ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bk ; 3 uses
  %i.bm = load float, ptr %i.bl, align 32, !tbaa !12
  %.sroa.0.0.vec.insert.2 = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load <2 x float>, ptr %i.bn, align 4, !tbaa !12
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.bo
  %i.bq = fadd reassoc nsz arcp contract afn <2 x float> %i.bp, %i.ag
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert59.2 = shufflevector <4 x float> %.sroa.0.0.vec.insert.2, <4 x float> %i.br, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %.sroa.0.12.vec.insert.2 = insertelement <4 x float> %.sroa.0.8.vec.insert59.2, float %i.bt, i64 3
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bk
  store <4 x float> %.sroa.0.12.vec.insert.2, ptr %i.bu, align 32, !tbaa !33, !alias.scope !73, !nontemporal !74
  %i.bv = or disjoint i64 %.03645, 12             ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bv ; 3 uses
  %i.bx = load float, ptr %i.bw, align 16, !tbaa !12
  %.sroa.0.0.vec.insert.3 = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load <2 x float>, ptr %i.by, align 4, !tbaa !12
  %i.ca = fmul reassoc nsz arcp contract afn <2 x float> %i.ai, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn <2 x float> %i.ca, %i.aj
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert59.3 = shufflevector <4 x float> %.sroa.0.0.vec.insert.3, <4 x float> %i.cc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12
  %.sroa.0.12.vec.insert.3 = insertelement <4 x float> %.sroa.0.8.vec.insert59.3, float %i.ce, i64 3
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bv
  store <4 x float> %.sroa.0.12.vec.insert.3, ptr %i.cf, align 16, !tbaa !33, !alias.scope !73, !nontemporal !74
  %i.cg = add nuw i64 %.03645, 16                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit60.unr-lcssa, label %.lr.ph

clamped_scaling.exit:                             ; preds = %clamped_scaling.exit, %clamped_scaling.exit.preheader.new
  %.046 = phi i64 [ 0, %clamped_scaling.exit.preheader.new ], [ %i.ds, %clamped_scaling.exit ] ; 3 uses
  %niter67 = phi i64 [ 0, %clamped_scaling.exit.preheader.new ], [ %niter67.next.1, %clamped_scaling.exit ]
  %i.ch = shl i64 %.046, 2                        ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ch ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ck = load float, ptr %i.cj, align 32, !tbaa !12, !alias.scope !76, !noalias !75
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !12, !alias.scope !76, !noalias !75
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.al
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cp = load float, ptr %i.co, align 4, !tbaa !12, !alias.scope !76, !noalias !75
  %i.cq = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cr = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = fadd reassoc nsz arcp contract afn <4 x float> %i.cr, %i.am
  %i.ct = shufflevector <4 x float> %i.cq, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float %i.cp, i64 3 ; 3 uses
  %i.cv = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.cu, <float f0xFF7FFFFF, float -1.280000e+02, float -1.280000e+02, float f0xFF7FFFFF>
  %i.cw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.cu, <float f0x7F7FFFFF, float 1.280000e+02, float 1.280000e+02, float f0x7F7FFFFF>
  %i.cx = select <4 x i1> %i.cw, <4 x float> %i.cu, <4 x float> <float f0x7F7FFFFF, float 1.280000e+02, float 1.280000e+02, float f0x7F7FFFFF>
  %i.cy = select <4 x i1> %i.cv, <4 x float> %i.cx, <4 x float> <float f0xFF7FFFFF, float -1.280000e+02, float -1.280000e+02, float f0xFF7FFFFF>
  store <4 x float> %i.cy, ptr %i.ci, align 32, !tbaa !33, !alias.scope !77, !noalias !76, !nontemporal !74
  %i.cz = shl i64 %.046, 2
  %i.da = or disjoint i64 %i.cz, 4                ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.dd = load float, ptr %i.dc, align 16, !tbaa !12, !alias.scope !79, !noalias !78
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.df = load <2 x float>, ptr %i.de, align 4, !tbaa !12, !alias.scope !79, !noalias !78
  %i.dg = fmul reassoc nsz arcp contract afn <2 x float> %i.df, %i.an
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !12, !alias.scope !79, !noalias !78
  %i.dj = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.dk = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = fadd reassoc nsz arcp contract afn <4 x float> %i.dk, %i.ao
  %i.dm = shufflevector <4 x float> %i.dj, <4 x float> %i.dl, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dn = insertelement <4 x float> %i.dm, float %i.di, i64 3 ; 3 uses
  %i.do = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.dn, <float f0xFF7FFFFF, float -1.280000e+02, float -1.280000e+02, float f0xFF7FFFFF>
  %i.dp = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.dn, <float f0x7F7FFFFF, float 1.280000e+02, float 1.280000e+02, float f0x7F7FFFFF>
  %i.dq = select <4 x i1> %i.dp, <4 x float> %i.dn, <4 x float> <float f0x7F7FFFFF, float 1.280000e+02, float 1.280000e+02, float f0x7F7FFFFF>
  %i.dr = select <4 x i1> %i.do, <4 x float> %i.dq, <4 x float> <float f0xFF7FFFFF, float -1.280000e+02, float -1.280000e+02, float f0xFF7FFFFF>
  store <4 x float> %i.dr, ptr %i.db, align 16, !tbaa !33, !alias.scope !80, !noalias !79, !nontemporal !74
  %i.ds = add nuw i64 %.046, 2                    ; 2 uses
  %niter67.next.1 = add i64 %niter67, 2           ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %clamped_scaling.exit

.loopexit.loopexit.unr-lcssa:                     ; preds = %clamped_scaling.exit
  %lcmp.mod64.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod64.not, label %.loopexit, label %clamped_scaling.exit.epil.preheader

clamped_scaling.exit.epil.preheader:              ; preds = %.loopexit.loopexit.unr-lcssa, %clamped_scaling.exit.preheader
  %.046.epil.init = phi i64 [ 0, %clamped_scaling.exit.preheader ], [ %i.ds, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.dt = shl i64 %.046.epil.init, 2              ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dt ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.dw = load float, ptr %i.dv, align 16, !tbaa !12, !alias.scope !76, !noalias !75
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dy = load <2 x float>, ptr %i.dx, align 4, !tbaa !12, !alias.scope !76, !noalias !75
  %i.dz = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ea = fmul reassoc nsz arcp contract afn <2 x float> %i.dy, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12, !alias.scope !76, !noalias !75
  %i.ed = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.ee = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ef = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.eg = fadd reassoc nsz arcp contract afn <4 x float> %i.ee, %i.ef
  %i.eh = shufflevector <4 x float> %i.ed, <4 x float> %i.eg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float %i.ec, i64 3 ; 3 uses
  %i.ej = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ei, <float f0xFF7FFFFF, float -1.280000e+02, float -1.280000e+02, float f0xFF7FFFFF>
  %i.ek = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ei, <float f0x7F7FFFFF, float 1.280000e+02, float 1.280000e+02, float f0x7F7FFFFF>
  %i.el = select <4 x i1> %i.ek, <4 x float> %i.ei, <4 x float> <float f0x7F7FFFFF, float 1.280000e+02, float 1.280000e+02, float f0x7F7FFFFF>
  %i.em = select <4 x i1> %i.ej, <4 x float> %i.el, <4 x float> <float f0xFF7FFFFF, float -1.280000e+02, float -1.280000e+02, float f0xFF7FFFFF>
  store <4 x float> %i.em, ptr %i.du, align 16, !tbaa !33, !alias.scope !77, !noalias !76, !nontemporal !74
  br label %.loopexit

.loopexit.loopexit60.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit60.unr-lcssa, %.lr.ph.preheader
  %.03645.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cg, %.loopexit.loopexit60.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.en = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.ep = insertelement <2 x float> %i.q, float %i.p, i64 1
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03645.epil = phi i64 [ %i.fa, %.lr.ph.epil ], [ %.03645.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03645.epil ; 3 uses
  %i.er = load float, ptr %i.eq, align 16, !tbaa !12
  %.sroa.0.0.vec.insert.epil = insertelement <4 x float> poison, float %i.er, i64 0
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.et = load <2 x float>, ptr %i.es, align 4, !tbaa !12
  %i.eu = fmul reassoc nsz arcp contract afn <2 x float> %i.eo, %i.et
  %i.ev = fadd reassoc nsz arcp contract afn <2 x float> %i.eu, %i.ep
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert59.epil = shufflevector <4 x float> %.sroa.0.0.vec.insert.epil, <4 x float> %i.ew, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12
  %.sroa.0.12.vec.insert.epil = insertelement <4 x float> %.sroa.0.8.vec.insert59.epil, float %i.ey, i64 3
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03645.epil
  store <4 x float> %.sroa.0.12.vec.insert.epil, ptr %i.ez, align 16, !tbaa !33, !alias.scope !73, !nontemporal !74
  %i.fa = add nuw i64 %.03645.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !68

.loopexit:                                        ; preds = %.loopexit.loopexit60.unr-lcssa, %.lr.ph.epil, %clamped_scaling.exit.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %.preheader42, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !39
  store i32 -999, ptr %i.a, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !30  ; 2 uses
  %i.c = load <4 x float>, ptr %1, align 4, !tbaa !12
  store <4 x float> %i.c, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.e, ptr %i.f, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !30
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 16, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !50  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = load float, ptr %i.d, align 4, !tbaa !87
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.g) #18
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !88
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.k) #18
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 24) #18 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !50
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.7) #18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !53
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #18
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.c, ptr noundef %i.e) #18
  %i.f = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.9) #18 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !54
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #18
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.f, ptr noundef %i.h) #18
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !91
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !33
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !33
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !33
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !33
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !33
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !33
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !33
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 512), align 16, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.7) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.11) #20
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.9) #20
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.12) #20
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.13) #20
  %.not15 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select = select i1 %.not15, ptr %i.i, ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.h ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.7) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.11) #18
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.9) #18
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.12) #18
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.13) #18
  %.not9 = icmp eq i32 %i.e, 0
  %. = select i1 %.not9, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ %., %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

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
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!15 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!16 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!17 = !{!"dt_dev_histogram_collection_params_t", !16, i64 0, !8, i64 8}
!18 = !{!"p1 int", !13, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !19, i64 8, !8, i64 16, !8, i64 20}
!21 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!22 = !{!"short", !7, i64 0}
!23 = !{!"", !22, i64 0, !22, i64 2}
!24 = !{!"", !8, i64 0, !7, i64 16}
!25 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !23, i64 48, !24, i64 64, !7, i64 96, !8, i64 112}
!26 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!27 = !{!"p1 float", !13, i64 0}
!28 = !{!"dt_dev_distorted_mask_cache_t", !27, i64 0, !21, i64 8, !19, i64 32, !19, i64 40}
!29 = !{!"dt_dev_pixelpipe_iop_t", !14, i64 0, !15, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !17, i64 40, !18, i64 56, !20, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !19, i64 120, !8, i64 128, !8, i64 132, !21, i64 136, !21, i64 156, !21, i64 176, !21, i64 196, !8, i64 216, !8, i64 220, !25, i64 224, !25, i64 352, !7, i64 480, !8, i64 516, !26, i64 520, !28, i64 528, !28, i64 576}
!30 = !{!29, !13, i64 16}
!31 = !{!"dt_iop_colorcontrast_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16}
!32 = !{!31, !8, i64 16}
!33 = !{!7, !7, i64 0}
!34 = !{!"p1 omnipotent char", !13, i64 0}
!35 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!36 = !{!"dt_action_t", !8, i64 0, !34, i64 8, !34, i64 16, !13, i64 24, !35, i64 32, !35, i64 40}
!37 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!38 = !{!"dt_iop_module_so_t", !36, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !37, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!39 = !{!38, !13, i64 520}
!40 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!41 = !{!"dt_pthread_mutex_t", !7, i64 0}
!42 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!43 = !{!"", !26, i64 0, !26, i64 8}
!44 = !{!"", !14, i64 0, !8, i64 8}
!45 = !{!"", !43, i64 0, !44, i64 16}
!46 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!47 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!48 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!49 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !37, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !18, i64 608, !20, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !40, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !41, i64 712, !13, i64 752, !13, i64 760, !42, i64 768, !42, i64 776, !13, i64 784, !45, i64 792, !46, i64 824, !46, i64 832, !46, i64 840, !46, i64 848, !46, i64 856, !46, i64 864, !46, i64 872, !8, i64 880, !46, i64 888, !46, i64 896, !46, i64 904, !47, i64 912, !47, i64 920, !46, i64 928, !46, i64 936, !8, i64 944, !48, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !46, i64 1096, !13, i64 1104, !8, i64 1112}
!50 = !{!49, !13, i64 704}
!51 = !{!"p1 _ZTS7_GtkBox", !13, i64 0}
!52 = !{!"dt_iop_colorcontrast_gui_data_t", !51, i64 0, !46, i64 8, !46, i64 16}
!53 = !{!52, !46, i64 8}
!54 = !{!52, !46, i64 16}
!55 = !{!"dt_iop_colorcontrast_params_v2_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16}
!56 = !{!55, !8, i64 16}
!57 = !{!13, !13, i64 0}
!58 = !{!8, !8, i64 0}
!59 = distinct !{!59, i1 false, !"copy_pixel_nontemporal"}
!60 = distinct !{!60, !59, !"copy_pixel_nontemporal: argument 0"}
!61 = distinct !{!61, i1 false, !"clamped_scaling"}
!62 = distinct !{!62, !61, !"clamped_scaling: argument 0"}
!63 = distinct !{!63, !61, !"clamped_scaling: argument 1"}
!64 = distinct !{!64, i1 false, !"copy_pixel_nontemporal"}
!65 = distinct !{!65, !64, !"copy_pixel_nontemporal: argument 0"}
!66 = distinct !{!66, !61, !"clamped_scaling: argument 0:It1"}
!67 = distinct !{!67, !61, !"clamped_scaling: argument 1:It1"}
!68 = distinct !{!68, !81}
!69 = !{!29, !8, i64 132}
!70 = !{!21, !8, i64 8}
!71 = !{!21, !8, i64 12}
!72 = !{!31, !11, i64 12}
!73 = !{!60}
!74 = !{i32 1}
!75 = !{!62}
!76 = !{!63}
!77 = !{!65, !62}
!78 = !{!66}
!79 = !{!67}
!80 = !{!65, !66}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"dt_iop_colorcontrast_global_data_t", !8, i64 0}
!83 = !{!82, !8, i64 0}
!84 = !{!"dt_iop_colorcontrast_data_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16}
!85 = !{!84, !8, i64 16}
!86 = !{!49, !13, i64 680}
!87 = !{!31, !11, i64 0}
!88 = !{!31, !11, i64 8}
!89 = !{!"p1 _ZTS24dt_introspection_field_t", !13, i64 0}
!90 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !34, i64 8, !19, i64 16, !89, i64 24, !19, i64 32, !19, i64 40}
!91 = !{!90, !8, i64 0}
end_hunk_0
