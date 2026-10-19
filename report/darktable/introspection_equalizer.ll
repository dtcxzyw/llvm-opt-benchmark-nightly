Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_equalizer?download=true
inline.NumInlined: 22
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"legacy equalizer\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"this module is deprecated. better use contrast equalizer module instead.\00", align 1
@.str.2 = private unnamed_addr constant [115 x i8] c"this module will be removed in the future\0Aand is only here so you can switch it off\0Aand move to the new equalizer.\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.16, i64 144, ptr getelementptr (i8, ptr @introspection_linear, i64 528), i64 1120, i64 688 }, align 8
@introspection_init.f6 = internal global [3 x ptr] [ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr null], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"equalizer_x[0][0]\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"equalizer_x[0]\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"equalizer_x\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"equalizer_y[0][0]\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"equalizer_y[0]\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"equalizer_y\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"halign\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"float[]\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"float[][]\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"dt_iop_equalizer_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.12, ptr @.str.3, ptr @.str.3, ptr @.str.13, i64 4, i64 0, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.4, ptr @.str.4, ptr @.str.13, i64 24, i64 0, ptr null }, i64 6, i32 2, [4 x i8] zeroinitializer, ptr @introspection_linear } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.15, ptr @.str.5, ptr @.str.5, ptr @.str.13, i64 72, i64 0, ptr null }, i64 3, i32 15, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 88) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.12, ptr @.str.6, ptr @.str.6, ptr @.str.13, i64 4, i64 72, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.7, ptr @.str.7, ptr @.str.13, i64 24, i64 72, ptr null }, i64 6, i32 2, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 264) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.15, ptr @.str.8, ptr @.str.8, ptr @.str.13, i64 72, i64 72, ptr null }, i64 3, i32 15, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 352) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.13, ptr @.str.13, ptr @.str.13, i64 144, i64 0, ptr null }, i64 2, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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
  ret i32 136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @deprecated_msg() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #19
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [20 x float], align 16            ; 14 uses
  %i.b = alloca [20 x float], align 16            ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !118  ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !119  ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load float, ptr %i.i, align 4, !tbaa !120 ; 2 uses
  %i.k = sext i32 %i.f to i64                     ; 22 uses
  %i.l = sext i32 %i.h to i64                     ; 6 uses
  %i.m = sext i32 %i.d to i64                     ; 4 uses
  %i.n = mul nsw i64 %i.k, %i.m                   ; 4 uses
  %i.o = mul i64 %i.n, %i.l
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !29  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load float, ptr %i.r, align 8, !tbaa !121 ; 2 uses
  %i.t = fdiv reassoc nsz arcp contract afn float %i.s, %i.j
  %i.u = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.t) ; 2 uses
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, 1.000000e+00 ; 4 uses
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.h) ; 3 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.y = fmul reassoc nsz arcp contract afn float %i.s, %i.x
  %i.z = fdiv reassoc nsz arcp contract afn float %i.y, %i.j
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %.not190 = icmp eq i32 %i.aa, 0
  br i1 %.not190, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ab = fadd reassoc nsz arcp contract afn float %i.ae, %i.v
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0157.lcssa = phi float [ %i.v, %bb.a ], [ %i.ab, %._crit_edge.loopexit ] ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %.0157.lcssa, 6.000000e+00
  %i.ad = select reassoc nsz arcp contract afn i1 %i.ac, float 6.000000e+00, float %.0157.lcssa
  %.not163193 = icmp eq i32 %i.w, 0
  br i1 %.not163193, label %._crit_edge198, label %.lr.ph197

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0156192 = phi i32 [ %i.af, %.lr.ph ], [ %i.aa, %bb.a ]
  %.0157191 = phi float [ %i.ae, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %i.ae = fadd reassoc nsz arcp contract afn float %.0157191, 1.000000e+00 ; 2 uses
  %i.af = ashr i32 %.0156192, 1                   ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge198.loopexit:                          ; preds = %.lr.ph197
  %i.ag = uitofp nsz nneg i32 %i.ap to double
  br label %._crit_edge198

._crit_edge198:                                   ; preds = %._crit_edge198.loopexit, %._crit_edge
  %.0155.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %i.ag, %._crit_edge198.loopexit ] ; 2 uses
  %i.ah = fsub reassoc nsz arcp contract afn float 5.000000e+00, %i.u
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.aj = fadd reassoc nsz arcp contract afn double %i.ai, 1.500000e+00 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt double %i.aj, %.0155.lcssa
  %. = select reassoc nsz arcp contract afn i1 %i.ak, double %i.aj, double %.0155.lcssa
  %i.al = fptosi double %. to i32                 ; 8 uses
  %i.am = sext i32 %i.al to i64
  %i.an = tail call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 8) #20 ; 9 uses
  %i.ao = icmp sgt i32 %i.al, 1
  br i1 %i.ao, label %.lr.ph202.preheader, label %._crit_edge236

.lr.ph202.preheader:                              ; preds = %._crit_edge198
  %wide.trip.count = zext nneg i32 %i.al to i64
  br label %.lr.ph202

.lr.ph197:                                        ; preds = %._crit_edge, %.lr.ph197
  %.0154195 = phi i32 [ %i.aq, %.lr.ph197 ], [ %i.w, %._crit_edge ]
  %.0155194 = phi i32 [ %i.ap, %.lr.ph197 ], [ 0, %._crit_edge ]
  %i.ap = add nuw nsw i32 %.0155194, 1            ; 2 uses
  %i.aq = ashr i32 %.0154195, 1                   ; 2 uses
  %.not163 = icmp eq i32 %i.aq, 0
  br i1 %.not163, label %._crit_edge198.loopexit, label %.lr.ph197

.lr.ph204:                                        ; preds = %.lr.ph202
  %i.ar = shl nsw i64 %i.k, 2
  %i.as = add nsw i64 %i.ar, 60
  %i.at = and i64 %i.as, -64
  %i.au = icmp sgt i32 %i.h, 0
  %wide.trip.count461.i = zext i32 %i.h to i64    ; 3 uses
  %i.av = shl nsw i64 %i.l, 2
  %i.aw = add nsw i64 %i.av, 60
  %i.ax = and i64 %i.aw, -64
  %i.ay = icmp sgt i32 %i.f, 0
  %wide.trip.count495.i = zext nneg i32 %i.f to i64
  %wide.trip.count246 = zext nneg i32 %i.al to i64
  br label %bb.b

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.lr.ph202
  %indvars.iv = phi i64 [ 1, %.lr.ph202.preheader ], [ %indvars.iv.next, %.lr.ph202 ] ; 3 uses
  %i.az = trunc i64 %indvars.iv to i32
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  %i.bb = ashr i32 %i.f, %i.ba
  %i.bc = add nsw i32 %i.bb, 1
  %i.bd = ashr i32 %i.h, %i.ba
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = sext i32 %i.bc to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = sext i32 %i.be to i64
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #21
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph204, label %.lr.ph202

.lr.ph231:                                        ; preds = %dt_iop_equalizer_wtf.exit
  %i.bl = fsub reassoc nsz arcp contract afn float %i.ad, %i.v
  %i.bm = add nsw i32 %i.al, -1
  %i.bn = uitofp nneg i32 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bp = icmp sgt i32 %i.h, 0
  %i.bq = icmp sgt i32 %i.f, 0
  %i.br = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph204, %dt_iop_equalizer_wtf.exit
  %indvars.iv243 = phi i64 [ 1, %.lr.ph204 ], [ %indvars.iv.next244, %dt_iop_equalizer_wtf.exit ] ; 7 uses
  %i.bs = trunc i64 %indvars.iv243 to i32
  %i.bt = add i32 %i.bs, -1                       ; 14 uses
  %i.bu = ashr i32 %i.f, %i.bt                    ; 6 uses
  %i.bv = add i32 %i.bu, 1                        ; 6 uses
  %i.bw = ashr i32 %i.h, %i.bt                    ; 5 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.preheader373.lr.ph.i, label %.preheader372.i

.preheader373.lr.ph.i:                            ; preds = %bb.b
  %i.by = icmp sgt i32 %i.bu, 0
  %i.bz = sext i32 %i.bv to i64                   ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv243
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !122 ; 3 uses
  br i1 %i.by, label %.preheader373.lr.ph.split.us.i, label %.preheader373.preheader.i

.preheader373.preheader.i:                        ; preds = %.preheader373.lr.ph.i
  %i.cc = sext i32 %i.bu to i64
  %wide.trip.count.i = zext nneg i32 %i.bw to i64 ; 3 uses
  %invariant.gep506.i = getelementptr [4 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %min.iters.check753 = icmp ult i32 %i.bw, 8
  br i1 %min.iters.check753, label %.preheader373.i.preheader, label %vector.ph754

vector.ph754:                                     ; preds = %.preheader373.preheader.i
  %n.vec755 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert756 = insertelement <8 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat757 = shufflevector <8 x i64> %broadcast.splatinsert756, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body758

vector.body758:                                   ; preds = %vector.body758, %vector.ph754
  %index759 = phi i64 [ 0, %vector.ph754 ], [ %index.next762, %vector.body758 ]
  %vec.ind760 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph754 ], [ %vec.ind.next763, %vector.body758 ] ; 2 uses
  %i.cd = mul nsw <8 x i64> %vec.ind760, %broadcast.splat757
  %wide.gep761 = getelementptr [4 x i8], ptr %invariant.gep506.i, <8 x i64> %i.cd
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep761, <8 x i1> splat (i1 true)), !tbaa !30
  %index.next762 = add nuw i64 %index759, 8       ; 2 uses
  %vec.ind.next763 = add nuw nsw <8 x i64> %vec.ind760, splat (i64 8)
  %i.ce = icmp eq i64 %index.next762, %n.vec755
  br i1 %i.ce, label %middle.block764, label %vector.body758, !llvm.loop !76

middle.block764:                                  ; preds = %vector.body758
  %cmp.n = icmp eq i64 %n.vec755, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader372.i, label %.preheader373.i.preheader

.preheader373.i.preheader:                        ; preds = %.preheader373.preheader.i, %middle.block764
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader373.preheader.i ], [ %n.vec755, %middle.block764 ]
  br label %.preheader373.i

.preheader373.lr.ph.split.us.i:                   ; preds = %.preheader373.lr.ph.i
  %i.cf = zext i32 %i.bv to i64
  %i.cg = zext nneg i32 %i.bu to i64              ; 3 uses
  %wide.trip.count424.i = zext nneg i32 %i.bw to i64
  %invariant.gep508.i = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cg
  %xtraiter = and i64 %i.cg, 3                    ; 3 uses
  %i.ch = icmp ult i32 %i.bu, 4
  %unroll_iter = and i64 %i.cg, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1316 = icmp ne i64 %xtraiter, 0
  br label %.preheader373.us.i

.preheader373.us.i:                               ; preds = %._crit_edge.us.i, %.preheader373.lr.ph.split.us.i
  %indvars.iv421.i = phi i64 [ %indvars.iv.next422.i, %._crit_edge.us.i ], [ 0, %.preheader373.lr.ph.split.us.i ] ; 4 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv421.i to i32
  %i.cj = shl i32 %i.ci, %i.bt
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, %i.k                 ; 5 uses
  %i.cm = mul nuw nsw i64 %indvars.iv421.i, %i.bz
  %i.cn = getelementptr [4 x i8], ptr %i.cb, i64 %i.cm ; 5 uses
  br i1 %i.ch, label %.epil.preheader, label %.preheader373.us.i.new

.preheader373.us.i.new:                           ; preds = %.preheader373.us.i, %.preheader373.us.i.new
  %indvars.iv416.i = phi i64 [ %indvars.iv.next417.i.3, %.preheader373.us.i.new ], [ 0, %.preheader373.us.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader373.us.i.new ], [ 0, %.preheader373.us.i ]
  %i.co = trunc nuw nsw i64 %indvars.iv416.i to i32
  %i.cp = shl i32 %i.co, %i.bt
  %i.cq = sext i32 %i.cp to i64
  %i.cr = add nsw i64 %i.cl, %i.cq
  %.idx355.us.i = shl i64 %i.cr, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 %.idx355.us.i
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !30
  %i.cu = getelementptr [4 x i8], ptr %i.cn, i64 %indvars.iv416.i
  store float %i.ct, ptr %i.cu, align 4, !tbaa !30
  %indvars.iv.next417.i = or disjoint i64 %indvars.iv416.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@process:bb.a
.preheader359.i:                                  ; preds = %._crit_edge400.i
  %i.pg = sub nsw i32 %.0.lcssa.i, %i.ei
  %i.ph = sext i32 %i.pg to i64
  %i.pi = mul nsw i64 %i.ph, %i.k
  %i.pj = add nsw i64 %i.pi, %indvars.iv492.i
  %.idx338.i = shl i64 %i.pj, 4
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx338.i ; 2 uses
  %i.pl = sext i32 %.0.lcssa.i to i64
  %i.pm = mul nsw i64 %i.pl, %i.k
  %i.pn = add nsw i64 %i.pm, %indvars.iv492.i
  %.idx339.i = shl i64 %i.pn, 4
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 %.idx339.i ; 3 uses
  %i.pp = load <2 x float>, ptr %i.pk, align 4, !tbaa !30
  %i.pq = load <2 x float>, ptr %i.po, align 4, !tbaa !30
  %i.pr = fsub reassoc nsz arcp contract afn <2 x float> %i.pq, %i.pp
  store <2 x float> %i.pr, ptr %i.po, align 4, !tbaa !30
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !30
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !30
  %i.pw = fsub reassoc nsz arcp contract afn float %i.pv, %i.pt
  store float %i.pw, ptr %i.pu, align 4, !tbaa !30
  br label %.loopexit360.i

.loopexit360.i:                                   ; preds = %.preheader359.i, %._crit_edge400.i
  %i.px = add nsw i64 %indvars.iv492.i, %i.fg
  %.idx336.i = shl i64 %i.px, 4
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 %.idx336.i ; 2 uses
  %.idx337.i = shl nuw nsw i64 %indvars.iv492.i, 4
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx337.i ; 3 uses
  %i.qa = load <2 x float>, ptr %i.py, align 4, !tbaa !30
  %i.qb = fpext <2 x float> %i.qa to <2 x double>
  %i.qc = fmul reassoc nsz arcp contract afn <2 x double> %i.qb, splat (double 5.000000e-01)
  %i.qd = load <2 x float>, ptr %i.pz, align 4, !tbaa !30
  %i.qe = fpext <2 x float> %i.qd to <2 x double>
  %i.qf = fadd reassoc nsz arcp contract afn <2 x double> %i.qc, %i.qe
  %i.qg = fptrunc <2 x double> %i.qf to <2 x float>
  store <2 x float> %i.qg, ptr %i.pz, align 4, !tbaa !30
  %i.qh = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !30
  %i.qj = fpext reassoc nsz arcp contract afn float %i.qi to double
  %i.qk = fmul reassoc nsz arcp contract afn double %i.qj, 5.000000e-01
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !30
  %i.qn = fpext reassoc nsz arcp contract afn float %i.qm to double
  %i.qo = fadd reassoc nsz arcp contract afn double %i.qk, %i.qn
  %i.qp = fptrunc reassoc nsz arcp contract afn double %i.qo to float
  store float %i.qp, ptr %i.ql, align 4, !tbaa !30
  br i1 %i.fh, label %.preheader.i, label %._crit_edge406.i

.preheader.i:                                     ; preds = %.loopexit360.i, %.preheader.i
  %indvars.iv485.i = phi i64 [ %indvars.iv.next486.i, %.preheader.i ], [ %i.fj, %.loopexit360.i ] ; 5 uses
  %i.qq = sub nsw i64 %indvars.iv485.i, %i.ff     ; 2 uses
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.qq ; 3 uses
  %i.qs = mul nsw i64 %i.qq, %i.k
  %i.qt = add nsw i64 %i.qs, %indvars.iv492.i
  %.idx333.i = shl i64 %i.qt, 4
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx333.i ; 3 uses
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv485.i ; 3 uses
  %i.qw = add nsw i64 %indvars.iv485.i, %i.ff
  %i.qx = mul nsw i64 %i.qw, %i.k
  %i.qy = add nsw i64 %i.qx, %indvars.iv492.i
  %.idx334.i = shl i64 %i.qy, 4
  %i.qz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx334.i ; 3 uses
  %i.ra = mul nsw i64 %indvars.iv485.i, %i.k
  %i.rb = add nsw i64 %i.ra, %indvars.iv492.i
  %.idx335.i = shl i64 %i.rb, 4
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx335.i ; 4 uses
  %i.rd = load float, ptr %i.qr, align 4, !tbaa !30 ; 2 uses
  %i.re = load float, ptr %i.qu, align 4, !tbaa !30
  %i.rf = fmul reassoc nsz arcp contract afn float %i.re, %i.rd
  %i.rg = load float, ptr %i.qv, align 4, !tbaa !30 ; 2 uses
  %i.rh = load float, ptr %i.qz, align 4, !tbaa !30
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rh, %i.rg
  %i.rj = fadd reassoc nsz arcp contract afn float %i.ri, %i.rf
  %i.rk = fpext reassoc nsz arcp contract afn float %i.rj to double
  %i.rl = fadd reassoc nsz arcp contract afn float %i.rg, %i.rd
  %i.rm = fpext reassoc nsz arcp contract afn float %i.rl to double
  %i.rn = fmul reassoc nsz arcp contract afn double %i.rm, 2.000000e+00
  %i.ro = fdiv reassoc nsz arcp contract afn double %i.rk, %i.rn
  %i.rp = load float, ptr %i.rc, align 4, !tbaa !30
  %i.rq = fpext reassoc nsz arcp contract afn float %i.rp to double
  %i.rr = fadd reassoc nsz arcp contract afn double %i.ro, %i.rq
  %i.rs = fptrunc reassoc nsz arcp contract afn double %i.rr to float
  store float %i.rs, ptr %i.rc, align 4, !tbaa !30
  %i.rt = load float, ptr %i.qr, align 4, !tbaa !30 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !30
  %i.rw = fmul reassoc nsz arcp contract afn float %i.rv, %i.rt
  %i.rx = load float, ptr %i.qv, align 4, !tbaa !30 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !30
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rz, %i.rx
  %i.sb = fadd reassoc nsz arcp contract afn float %i.sa, %i.rw
  %i.sc = fpext reassoc nsz arcp contract afn float %i.sb to double
  %i.sd = fadd reassoc nsz arcp contract afn float %i.rx, %i.rt
  %i.se = fpext reassoc nsz arcp contract afn float %i.sd to double
  %i.sf = fmul reassoc nsz arcp contract afn double %i.se, 2.000000e+00
  %i.sg = fdiv reassoc nsz arcp contract afn double %i.sc, %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rc, i64 4 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.sj = load float, ptr %i.si, align 4, !tbaa !30
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !30
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.sn = load <2 x float>, ptr %i.sh, align 4, !tbaa !30
  %i.so = fpext <2 x float> %i.sn to <2 x double> ; 2 uses
  %i.sp = extractelement <2 x double> %i.so, i64 0
  %i.sq = fadd reassoc nsz arcp contract afn double %i.sg, %i.sp
  %i.sr = fptrunc reassoc nsz arcp contract afn double %i.sq to float
  store float %i.sr, ptr %i.sh, align 4, !tbaa !30
  %i.ss = load float, ptr %i.qr, align 4, !tbaa !30 ; 2 uses
  %i.st = fmul reassoc nsz arcp contract afn float %i.sj, %i.ss
  %i.su = load float, ptr %i.qv, align 4, !tbaa !30 ; 2 uses
  %i.sv = fmul reassoc nsz arcp contract afn float %i.sl, %i.su
  %i.sw = fadd reassoc nsz arcp contract afn float %i.sv, %i.st
  %i.sx = fpext reassoc nsz arcp contract afn float %i.sw to double
  %i.sy = fadd reassoc nsz arcp contract afn float %i.su, %i.ss
  %i.sz = fpext reassoc nsz arcp contract afn float %i.sy to double
  %i.ta = fmul reassoc nsz arcp contract afn double %i.sz, 2.000000e+00
  %i.tb = fdiv reassoc nsz arcp contract afn double %i.sx, %i.ta
  %i.tc = extractelement <2 x double> %i.so, i64 1
  %i.td = fadd reassoc nsz arcp contract afn double %i.tb, %i.tc
  %i.te = fptrunc reassoc nsz arcp contract afn double %i.td to float
  store float %i.te, ptr %i.sm, align 4, !tbaa !30
  %indvars.iv.next486.i = add nsw i64 %indvars.iv485.i, %i.fj ; 3 uses
  %i.tf = icmp slt i64 %indvars.iv.next486.i, %i.fi
  br i1 %i.tf, label %.preheader.i, label %._crit_edge406.loopexit.i

._crit_edge406.loopexit.i:                        ; preds = %.preheader.i
  %i.tg = trunc nsw i64 %indvars.iv.next486.i to i32
  br label %._crit_edge406.i

._crit_edge406.i:                                 ; preds = %._crit_edge406.loopexit.i, %.loopexit360.i
  %.1.lcssa.i = phi i32 [ %i.eh, %.loopexit360.i ], [ %i.tg, %._crit_edge406.loopexit.i ] ; 3 uses
  %i.th = icmp slt i32 %.1.lcssa.i, %i.h
  br i1 %i.th, label %.preheader357.i, label %.loopexit.i

.preheader357.i:                                  ; preds = %._crit_edge406.i
  %i.ti = sub nsw i32 %.1.lcssa.i, %i.ei
  %i.tj = sext i32 %i.ti to i64
  %i.tk = mul nsw i64 %i.tj, %i.k
  %i.tl = add nsw i64 %i.tk, %indvars.iv492.i
  %.idx.i = shl i64 %i.tl, 4
  %i.tm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i ; 2 uses
  %i.tn = sext i32 %.1.lcssa.i to i64
  %i.to = mul nsw i64 %i.tn, %i.k
  %i.tp = add nsw i64 %i.to, %indvars.iv492.i
  %.idx332.i = shl i64 %i.tp, 4
  %i.tq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx332.i ; 3 uses
  %i.tr = load <2 x float>, ptr %i.tm, align 4, !tbaa !30
  %i.ts = fmul reassoc nsz arcp contract afn <2 x float> %i.tr, splat (float 5.000000e-01)
  %i.tt = load <2 x float>, ptr %i.tq, align 4, !tbaa !30
  %i.tu = fadd reassoc nsz arcp contract afn <2 x float> %i.tt, %i.ts
  store <2 x float> %i.tu, ptr %i.tq, align 4, !tbaa !30
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !30
  %i.tx = fmul reassoc nsz arcp contract afn float %i.tw, 5.000000e-01
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tq, i64 8 ; 2 uses
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !30
  %i.ua = fadd reassoc nsz arcp contract afn float %i.tz, %i.tx
  store float %i.ua, ptr %i.ty, align 4, !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader357.i, %._crit_edge406.i
  %indvars.iv.next493.i = add nuw nsw i64 %indvars.iv492.i, 1 ; 2 uses
  %exitcond496.not.i = icmp eq i64 %indvars.iv.next493.i, %wide.trip.count495.i
  br i1 %exitcond496.not.i, label %dt_iop_equalizer_wtf.exit, label %.preheader362.i

dt_iop_equalizer_wtf.exit:                        ; preds = %.loopexit.i, %._crit_edge393.i
  tail call void @free(ptr noundef %i.ez) #19
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.lr.ph231, label %bb.b

.lr.ph233:                                        ; preds = %bb.g
  %i.ub = shl nsw i64 %i.l, 2
  %i.uc = add nsw i64 %i.ub, 60
  %i.ud = and i64 %i.uc, -64
  %i.ue = icmp sgt i32 %i.f, 0
  %i.uf = zext nneg i32 %i.f to i64               ; 12 uses
  %i.ug = shl nsw i64 %i.k, 2
  %i.uh = add nsw i64 %i.ug, 60
  %i.ui = and i64 %i.uh, -64
  %i.uj = icmp sgt i32 %i.h, 0
  %wide.trip.count430.i = zext nneg i32 %i.h to i64
  %i.uk = zext nneg i32 %i.al to i64
  %i.ul = add nuw nsw i64 %wide.trip.count461.i, 1152921504606846975
  %i.um = mul i64 %i.ul, %i.k
  %i.un = shl i64 %i.um, 4                        ; 3 uses
  %i.uo = or disjoint i64 %i.un, 4                ; 3 uses
  %scevgep813 = getelementptr i8, ptr %3, i64 %i.uo
  %scevgep817 = getelementptr i8, ptr %3, i64 4
  %i.up = or disjoint i64 %i.un, 8                ; 3 uses
  %scevgep819 = getelementptr i8, ptr %3, i64 %i.up
  %scevgep821 = getelementptr i8, ptr %3, i64 8
  %i.uq = or disjoint i64 %i.un, 12               ; 3 uses
  %scevgep823 = getelementptr i8, ptr %3, i64 %i.uq
  %scevgep830 = getelementptr i8, ptr %3, i64 %i.uo
  %scevgep833 = getelementptr i8, ptr %3, i64 %i.uo
  %scevgep835 = getelementptr i8, ptr %3, i64 4   ; 3 uses
  %scevgep836 = getelementptr i8, ptr %3, i64 %i.up
  %scevgep838 = getelementptr i8, ptr %3, i64 4
  %scevgep840 = getelementptr i8, ptr %3, i64 %i.up
  %scevgep842 = getelementptr i8, ptr %3, i64 8   ; 3 uses
  %scevgep843 = getelementptr i8, ptr %3, i64 %i.uq
  %scevgep845 = getelementptr i8, ptr %3, i64 8
  %scevgep847 = getelementptr i8, ptr %3, i64 %i.uq
  %6 = getelementptr i8, ptr %3, <8 x i64> <i64 16, i64 24, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %7 = insertelement <4 x ptr> poison, ptr %3, i64 0
  %8 = getelementptr i8, ptr %3, <4 x i64> <i64 16, i64 16, i64 24, i64 20> ; 2 uses
  %9 = getelementptr i8, ptr %3, <2 x i64> <i64 20, i64 16>
  %i.ur = add nuw nsw i64 %wide.trip.count461.i, 1152921504606846975
  %i.us = mul i64 %i.ur, %i.k
  %i.ut = shl i64 %i.us, 4                        ; 3 uses
  %i.uu = add i64 %i.ut, 20                       ; 3 uses
  %scevgep1048 = getelementptr i8, ptr %3, i64 %i.uu
  %i.uv = getelementptr i8, ptr %3, <8 x i64> <i64 20, i64 20, i64 20, i64 20, i64 20, i64 20, i64 20, i64 24> ; 3 uses
  %i.uw = add i64 %i.ut, 24                       ; 3 uses
  %scevgep1053 = getelementptr i8, ptr %3, i64 %i.uw
  %scevgep1055 = getelementptr i8, ptr %3, i64 24
  %i.ux = add i64 %i.ut, 28                       ; 3 uses
  %scevgep1056 = getelementptr i8, ptr %3, i64 %i.ux
  %scevgep1064 = getelementptr i8, ptr %3, i64 16
  %scevgep1066 = getelementptr i8, ptr %3, i64 %i.uu
  %scevgep1068 = getelementptr i8, ptr %3, i64 16
  %scevgep1070 = getelementptr i8, ptr %3, i64 %i.uu
  %scevgep1072 = getelementptr i8, ptr %3, i64 20
  %scevgep1074 = getelementptr i8, ptr %3, i64 %i.uw
  %scevgep1076 = getelementptr i8, ptr %3, i64 20
  %scevgep1078 = getelementptr i8, ptr %3, i64 %i.uw
  %scevgep1080 = getelementptr i8, ptr %3, i64 24
  %scevgep1082 = getelementptr i8, ptr %3, i64 %i.ux
  %scevgep1084 = getelementptr i8, ptr %3, i64 24
  %scevgep1086 = getelementptr i8, ptr %3, i64 %i.ux
  %10 = insertelement <4 x ptr> poison, ptr %3, i64 1
  %i.uy = insertelement <4 x ptr> %10, ptr %scevgep835, i64 3
  %i.uz = insertelement <4 x ptr> %7, ptr %scevgep835, i64 2
  %i.va = insertelement <4 x ptr> poison, ptr %scevgep835, i64 0
  %i.vb = insertelement <4 x ptr> %i.va, ptr %scevgep842, i64 2
  %i.vc = shufflevector <8 x ptr> %i.uv, <8 x ptr> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.vd = shufflevector <8 x ptr> %i.uv, <8 x ptr> poison, <2 x i32> <i32 7, i32 7>
  %11 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %stride.check1096 = icmp slt i32 %i.f, 0
  %i.ve = insertelement <16 x i1> poison, i1 %stride.check1096, i64 15
  %stride.check1234 = icmp slt i32 %i.f, 0
  %12 = insertelement <8 x i1> poison, i1 %stride.check1234, i64 7
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph231, %bb.g
  %.0151230 = phi i32 [ 1, %.lr.ph231 ], [ %i.vz, %bb.g ] ; 3 uses
  %i.vf = add nsw i32 %.0151230, -1
  %i.vg = sitofp reassoc nsz arcp contract afn i32 %i.vf to float
  %i.vh = fmul reassoc nsz arcp contract afn float %i.bl, %i.vg
  %i.vi = fmul reassoc nsz arcp contract afn float %i.vh, %i.br
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vi, %i.v
  %i.vk = load i32, ptr %i.bo, align 8, !tbaa !32
  %i.vl = sitofp reassoc nsz arcp contract afn i32 %i.vk to float
  %i.vm = fdiv reassoc nsz arcp contract afn float %i.vj, %i.vl
  %i.vn = fpext reassoc nsz arcp contract afn float %i.vm to double
  %i.vo = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.vn ; 3 uses
  %i.vp = fcmp reassoc nsz arcp contract afn ogt double %i.vo, 1.000000e+00
  %i.vq = fcmp reassoc nsz arcp contract afn olt double %i.vo, 0.000000e+00
  %i.vr = fptrunc reassoc nsz arcp contract afn double %i.vo to float
  %spec.select = select i1 %i.vq, float 0.000000e+00, float %i.vr
  %i.vs = select i1 %i.vp, float 1.000000e+00, float %spec.select
  %i.vt = shl nuw i32 1, %.0151230                ; 5 uses
  %i.vu = sdiv i32 %i.vt, 2                       ; 5 uses
  %i.vv = icmp slt i32 %i.vu, %i.f                ; 2 uses
  %i.vw = icmp slt i32 %i.vu, %i.h
  %i.vx = sext i32 %i.vu to i64                   ; 4 uses
  %i.vy = sext i32 %i.vt to i64                   ; 6 uses
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge225
  %i.vz = add nuw nsw i32 %.0151230, 1            ; 2 uses
  %exitcond270.not = icmp eq i32 %i.vz, %i.al
  br i1 %exitcond270.not, label %.lr.ph233, label %bb.f

bb.h:                                             ; preds = %bb.f, %._crit_edge225
  %indvars.iv266 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next267, %._crit_edge225 ] ; 5 uses
  %i.wa = icmp ne i64 %indvars.iv266, 0
  %i.wb = zext i1 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.wb
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !34 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 20 ; 2 uses
  %i.wf = load i8, ptr %i.we, align 4, !tbaa !39  ; 5 uses
  %i.wg = zext i8 %i.wf to i32
  %.not35.i = icmp eq i8 %i.wf, 0
  br i1 %.not35.i, label %._crit_edge.i169, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wd, i64 24 ; 10 uses
  %wide.trip.count.i165 = zext i8 %i.wf to i64    ; 10 uses
  %min.iters.check783 = icmp ult i8 %i.wf, 4
  br i1 %min.iters.check783, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck766

vector.memcheck766:                               ; preds = %iter.check
  %i.wi = shl nuw nsw i64 %wide.trip.count.i165, 2 ; 2 uses
  %scevgep767 = getelementptr i8, ptr %i.a, i64 %i.wi ; 2 uses
  %scevgep768 = getelementptr i8, ptr %i.b, i64 %i.wi ; 2 uses
  %scevgep769 = getelementptr i8, ptr %i.wd, i64 24
  %i.wj = shl nuw nsw i64 %wide.trip.count.i165, 3
  %scevgep770 = getelementptr i8, ptr %scevgep769, i64 %i.wj ; 2 uses
  %bound0771 = icmp ult ptr %i.a, %scevgep768
  %bound1772 = icmp ult ptr %i.b, %scevgep767
  %found.conflict773 = and i1 %bound0771, %bound1772
  %bound0774 = icmp ult ptr %i.a, %scevgep770
  %bound1775 = icmp ult ptr %i.wh, %scevgep767
  %found.conflict776 = and i1 %bound0774, %bound1775
  %conflict.rdx777 = or i1 %found.conflict773, %found.conflict776
  %bound0778 = icmp ult ptr %i.b, %scevgep770
  %bound1779 = icmp ult ptr %i.wh, %scevgep768
  %found.conflict780 = and i1 %bound0778, %bound1779
  %conflict.rdx781 = or i1 %conflict.rdx777, %found.conflict780
  br i1 %conflict.rdx781, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck766
  %min.iters.check784 = icmp ult i8 %i.wf, 16
  br i1 %min.iters.check784, label %vec.epilog.ph, label %vector.ph785

vector.ph785:                                     ; preds = %vector.main.loop.iter.check
  %i.wk = and i64 %wide.trip.count.i165, 12
  %n.vec786 = and i64 %wide.trip.count.i165, 240  ; 4 uses
  br label %vector.body787

vector.body787:                                   ; preds = %vector.ph785, %vector.body787
  %index788 = phi i64 [ 0, %vector.ph785 ], [ %index.next795, %vector.body787 ] ; 5 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %index788
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %index788
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 64
  %wide.vec789 = load <16 x float>, ptr %i.wl, align 4, !tbaa !30, !alias.scope !126 ; 2 uses
  %strided.vec790 = shufflevector <16 x float> %wide.vec789, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec791 = shufflevector <16 x float> %wide.vec789, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec792 = load <16 x float>, ptr %i.wn, align 4, !tbaa !30, !alias.scope !126 ; 2 uses
  %strided.vec793 = shufflevector <16 x float> %wide.vec792, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec794 = shufflevector <16 x float> %wide.vec792, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index788 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 32
  store <8 x float> %strided.vec790, ptr %i.wo, align 16, !tbaa !30, !alias.scope !127, !noalias !128
  store <8 x float> %strided.vec793, ptr %i.wp, align 16, !tbaa !30, !alias.scope !127, !noalias !128
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index788 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  store <8 x float> %strided.vec791, ptr %i.wq, align 16, !tbaa !30, !alias.scope !129, !noalias !126
  store <8 x float> %strided.vec794, ptr %i.wr, align 16, !tbaa !30, !alias.scope !129, !noalias !126
  %index.next795 = add nuw i64 %index788, 16      ; 2 uses
  %i.ws = icmp eq i64 %index.next795, %n.vec786
  br i1 %i.ws, label %middle.block796, label %vector.body787, !llvm.loop !85

middle.block796:                                  ; preds = %vector.body787
  %cmp.n797 = icmp eq i64 %n.vec786, %wide.trip.count.i165
  br i1 %cmp.n797, label %._crit_edge.i169, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block796
  %min.epilog.iters.check = icmp eq i64 %i.wk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec786, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec798 = and i64 %wide.trip.count.i165, 252  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index799 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next803, %vec.epilog.vector.body ] ; 4 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %index799
  %wide.vec800 = load <8 x float>, ptr %i.wt, align 4, !tbaa !30, !alias.scope !126 ; 2 uses
  %strided.vec801 = shufflevector <8 x float> %wide.vec800, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec802 = shufflevector <8 x float> %wide.vec800, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index799
  store <4 x float> %strided.vec801, ptr %i.wu, align 16, !tbaa !30, !alias.scope !127, !noalias !128
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index799
  store <4 x float> %strided.vec802, ptr %i.wv, align 16, !tbaa !30, !alias.scope !129, !noalias !126
  %index.next803 = add nuw i64 %index799, 4       ; 2 uses
  %i.ww = icmp eq i64 %index.next803, %n.vec798
  br i1 %i.ww, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n804 = icmp eq i64 %n.vec798, %wide.trip.count.i165
  br i1 %cmp.n804, label %._crit_edge.i169, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck766, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i166.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck766 ], [ %n.vec786, %vec.epilog.iter.check ], [ %n.vec798, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter1317 = and i64 %wide.trip.count.i165, 3 ; 2 uses
  %lcmp.mod1318.not = icmp eq i64 %xtraiter1317, 0
  br i1 %lcmp.mod1318.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i166.prol = phi i64 [ %indvars.iv.next.i167.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i166.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv.i166.prol ; 2 uses
  %i.wy = load float, ptr %i.wx, align 8, !tbaa !41
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i166.prol
  store float %i.wy, ptr %i.wz, align 4, !tbaa !30
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !42
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i166.prol
  store float %i.xb, ptr %i.xc, align 4, !tbaa !30
  %indvars.iv.next.i167.prol = add nuw nsw i64 %indvars.iv.i166.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1317
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !87

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i166.unr = phi i64 [ %indvars.iv.i166.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i167.prol, %vec.epilog.scalar.ph.prol ]
  %i.xd = sub nsw i64 %indvars.iv.i166.ph, %wide.trip.count.i165
  %i.xe = icmp ugt i64 %i.xd, -4
  br i1 %i.xe, label %._crit_edge.i169, label %vec.epilog.scalar.ph

._crit_edge.i169:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block796, %vec.epilog.middle.block, %bb.h
  %i.xf = load i32, ptr %i.wd, align 8, !tbaa !43
  %i.xg = call ptr @interpolate_set(i32 noundef %i.wg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.xf) #19 ; 3 uses
  %.not.i = icmp eq ptr %i.xg, null
  br i1 %.not.i, label %dt_draw_curve_calc_value.exit, label %bb.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i166 = phi i64 [ %indvars.iv.next.i167.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i166.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv.i166 ; 2 uses
  %i.xi = load float, ptr %i.xh, align 8, !tbaa !41
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i166
  store float %i.xi, ptr %i.xj, align 4, !tbaa !30
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !42
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i166
  store float %i.xl, ptr %i.xm, align 4, !tbaa !30
  %indvars.iv.next.i167 = add nuw nsw i64 %indvars.iv.i166, 1 ; 3 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv.next.i167 ; 2 uses
  %i.xo = load float, ptr %i.xn, align 8, !tbaa !41
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i167
  store float %i.xo, ptr %i.xp, align 4, !tbaa !30
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !42
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i167
  store float %i.xr, ptr %i.xs, align 4, !tbaa !30
  %indvars.iv.next.i167.1 = add nuw nsw i64 %indvars.iv.i166, 2 ; 3 uses
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv.next.i167.1 ; 2 uses
  %i.xu = load float, ptr %i.xt, align 8, !tbaa !41
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i167.1
  store float %i.xu, ptr %i.xv, align 4, !tbaa !30
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !42
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i167.1
  store float %i.xx, ptr %i.xy, align 4, !tbaa !30
  %indvars.iv.next.i167.2 = add nuw nsw i64 %indvars.iv.i166, 3 ; 3 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv.next.i167.2 ; 2 uses
  %i.ya = load float, ptr %i.xz, align 8, !tbaa !41
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i167.2
  store float %i.ya, ptr %i.yb, align 4, !tbaa !30
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !42
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i167.2
  store float %i.yd, ptr %i.ye, align 4, !tbaa !30
  %indvars.iv.next.i167.3 = add nuw nsw i64 %indvars.iv.i166, 4 ; 2 uses
  %exitcond.not.i168.3 = icmp eq i64 %indvars.iv.next.i167.3, %wide.trip.count.i165
  br i1 %exitcond.not.i168.3, label %._crit_edge.i169, label %vec.epilog.scalar.ph, !llvm.loop !88

bb.i:                                             ; preds = %._crit_edge.i169
  %i.yf = load i8, ptr %i.we, align 4, !tbaa !39
  %i.yg = zext i8 %i.yf to i32
  %i.yh = load i32, ptr %i.wd, align 8, !tbaa !43
  %i.yi = call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef %i.yg, ptr noundef nonnull %i.a, float noundef %i.vs, ptr noundef nonnull %i.b, ptr noundef nonnull %i.xg, i32 noundef %i.yh) #19
  call void @free(ptr noundef nonnull %i.xg) #19
  br label %dt_draw_curve_calc_value.exit

dt_draw_curve_calc_value.exit:                    ; preds = %._crit_edge.i169, %bb.i
  %.026.i = phi nsz float [ %i.yi, %bb.i ], [ 0.000000e+00, %._crit_edge.i169 ] ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wd, i64 12
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !131 ; 2 uses
  %i.yl = fcmp reassoc nsz arcp contract afn ogt float %.026.i, %i.yk
  %.026..i = select reassoc nsz arcp contract afn i1 %i.yl, float %.026.i, float %i.yk ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.yn = load float, ptr %i.ym, align 8, !tbaa !132 ; 2 uses
  %i.yo = fcmp reassoc nsz arcp contract afn olt float %.026..i, %i.yn
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.yo, float %.026..i, float %i.yn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.yp = fmul reassoc nsz arcp contract afn float %spec.select.i, 2.000000e+00 ; 4 uses
  br i1 %i.bp, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %dt_draw_curve_calc_value.exit
  %invariant.gep212 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.vv, label %.lr.ph207.us, label %.lr.ph210.split

.lr.ph207.us:                                     ; preds = %.lr.ph210, %._crit_edge208.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %._crit_edge208.us ], [ 0, %.lr.ph210 ] ; 2 uses
  %i.yq = mul i64 %i.n, %indvars.iv251
  %gep213.us = getelementptr [4 x i8], ptr %invariant.gep212, i64 %i.yq
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph207.us, %bb.j
  %indvars.iv248 = phi i64 [ %i.vx, %.lr.ph207.us ], [ %indvars.iv.next249, %bb.j ] ; 2 uses
  %i.yr = mul nsw i64 %indvars.iv248, %i.m
  %gep.us = getelementptr [4 x i8], ptr %gep213.us, i64 %i.yr ; 2 uses
  %i.ys = load float, ptr %gep.us, align 4, !tbaa !30
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, %i.yp
  store float %i.yt, ptr %gep.us, align 4, !tbaa !30
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, %i.vy ; 2 uses
  %i.yu = icmp slt i64 %indvars.iv.next249, %i.k
  br i1 %i.yu, label %bb.j, label %._crit_edge208.us

._crit_edge208.us:                                ; preds = %bb.j
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, %i.vy ; 2 uses
  %i.yv = icmp slt i64 %indvars.iv.next252, %i.l
  br i1 %i.yv, label %.lr.ph207.us, label %._crit_edge211

._crit_edge211:                                   ; preds = %.lr.ph210.split, %._crit_edge208.us, %dt_draw_curve_calc_value.exit
  br i1 %i.vw, label %.preheader185.lr.ph, label %._crit_edge225

.preheader185.lr.ph:                              ; preds = %._crit_edge211
  %invariant.gep218 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.bq, label %.preheader185.us, label %.preheader185

.preheader185.us:                                 ; preds = %.preheader185.lr.ph, %._crit_edge216.us
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %._crit_edge216.us ], [ %i.vx, %.preheader185.lr.ph ] ; 2 uses
  %i.yw = mul i64 %i.n, %indvars.iv257
  %gep219.us = getelementptr [4 x i8], ptr %invariant.gep218, i64 %i.yw
  br label %bb.k

bb.k:                                             ; preds = %.preheader185.us, %bb.k
  %indvars.iv254 = phi i64 [ 0, %.preheader185.us ], [ %indvars.iv.next255, %bb.k ] ; 2 uses
  %i.yx = mul nsw i64 %indvars.iv254, %i.m
  %gep.us220 = getelementptr [4 x i8], ptr %gep219.us, i64 %i.yx ; 2 uses
  %i.yy = load float, ptr %gep.us220, align 4, !tbaa !30
  %i.yz = fmul reassoc nsz arcp contract afn float %i.yy, %i.yp
  store float %i.yz, ptr %gep.us220, align 4, !tbaa !30
  %indvars.iv.next255 = add nsw i64 %indvars.iv254, %i.vy ; 2 uses
  %i.za = icmp slt i64 %indvars.iv.next255, %i.k
  br i1 %i.za, label %bb.k, label %._crit_edge216.us

._crit_edge216.us:                                ; preds = %bb.k
  %indvars.iv.next258 = add nsw i64 %indvars.iv257, %i.vy ; 2 uses
  %i.zb = icmp slt i64 %indvars.iv.next258, %i.l
  br i1 %i.zb, label %.preheader185.us, label %.preheader184.lr.ph

.lr.ph210.split:                                  ; preds = %.lr.ph210, %.lr.ph210.split
  %.0149209 = phi i32 [ %i.zc, %.lr.ph210.split ], [ 0, %.lr.ph210 ]
  %i.zc = add nsw i32 %.0149209, %i.vt            ; 2 uses
  %i.zd = icmp slt i32 %i.zc, %i.h
  br i1 %i.zd, label %.lr.ph210.split, label %._crit_edge211

.preheader184.lr.ph:                              ; preds = %.preheader185, %._crit_edge216.us
  %i.ze = fmul reassoc nsz arcp contract afn float %i.yp, %i.yp
  %invariant.gep226 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.vv, label %.preheader184.us, label %.preheader184

.preheader184.us:                                 ; preds = %.preheader184.lr.ph, %._crit_edge223.us
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %._crit_edge223.us ], [ %i.vx, %.preheader184.lr.ph ] ; 2 uses
  %i.zf = mul i64 %i.n, %indvars.iv263
  %gep227.us = getelementptr [4 x i8], ptr %invariant.gep226, i64 %i.zf
  br label %bb.l

bb.l:                                             ; preds = %.preheader184.us, %bb.l
  %indvars.iv260 = phi i64 [ %i.vx, %.preheader184.us ], [ %indvars.iv.next261, %bb.l ] ; 2 uses
  %i.zg = mul nsw i64 %indvars.iv260, %i.m
  %gep.us228 = getelementptr [4 x i8], ptr %gep227.us, i64 %i.zg ; 2 uses
  %i.zh = load float, ptr %gep.us228, align 4, !tbaa !30
  %i.zi = fmul reassoc nsz arcp contract afn float %i.ze, %i.zh
  store float %i.zi, ptr %gep.us228, align 4, !tbaa !30
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, %i.vy ; 2 uses
  %i.zj = icmp slt i64 %indvars.iv.next261, %i.k
  br i1 %i.zj, label %bb.l, label %._crit_edge223.us

._crit_edge223.us:                                ; preds = %bb.l
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, %i.vy ; 2 uses
  %i.zk = icmp slt i64 %indvars.iv.next264, %i.l
  br i1 %i.zk, label %.preheader184.us, label %._crit_edge225

.preheader185:                                    ; preds = %.preheader185.lr.ph, %.preheader185
  %.0147217 = phi i32 [ %i.zl, %.preheader185 ], [ %i.vu, %.preheader185.lr.ph ]
  %i.zl = add nsw i32 %.0147217, %i.vt            ; 2 uses
  %i.zm = icmp slt i32 %i.zl, %i.h
  br i1 %i.zm, label %.preheader185, label %.preheader184.lr.ph

.preheader184:                                    ; preds = %.preheader184.lr.ph, %.preheader184
  %.0145224 = phi i32 [ %i.zn, %.preheader184 ], [ %i.vu, %.preheader184.lr.ph ]
  %i.zn = add nsw i32 %.0145224, %i.vt            ; 2 uses
  %i.zo = icmp slt i32 %i.zn, %i.h
  br i1 %i.zo, label %.preheader184, label %._crit_edge225

._crit_edge225:                                   ; preds = %.preheader184, %._crit_edge223.us, %._crit_edge211
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next267, 3
  br i1 %exitcond269.not, label %bb.g, label %bb.h

.lr.ph235.preheader:                              ; preds = %dt_iop_equalizer_iwtf.exit
  %wide.trip.count277 = zext nneg i32 %i.al to i64
  br label %.lr.ph235

bb.m:                                             ; preds = %.lr.ph233, %dt_iop_equalizer_iwtf.exit
  %indvars.iv271 = phi i64 [ %i.uk, %.lr.ph233 ], [ %indvars.iv.next272, %dt_iop_equalizer_iwtf.exit ] ; 3 uses
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, -1 ; 6 uses
  %i.zp = trunc nuw nsw i64 %indvars.iv.next272 to i32
  %i.zq = shl nuw i32 1, %i.zp                    ; 7 uses
  %i.zr = sdiv i32 %i.zq, 2                       ; 12 uses
  %i.zs = trunc i64 %indvars.iv271 to i32
  %i.zt = add i32 %i.zs, -2                       ; 7 uses
  %i.zu = ashr i32 %i.f, %i.zt
  %i.zv = add nsw i32 %i.zu, 1                    ; 2 uses
  %i.zw = call ptr @dt_alloc_aligned(i64 noundef %i.ud) #19 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zw, i64 64) ]
  br i1 %i.ue, label %.preheader338.lr.ph.i, label %._crit_edge354.i

.preheader338.lr.ph.i:                            ; preds = %bb.m
  %i.zx = sub nsw i32 %i.h, %i.zr                 ; 4 uses
  %i.zy = icmp sgt i32 %i.zx, 0
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next272
  %i.aaa = zext nneg i32 %i.zv to i64             ; 2 uses
  %i.aab = sext i32 %i.zr to i64                  ; 7 uses
  %i.aac = mul nsw i64 %i.aab, %i.uf
  %i.aad = icmp slt i32 %i.zq, %i.zx
  %i.aae = icmp slt i32 %i.zr, %i.zx
  %i.aaf = sext i32 %i.zx to i64                  ; 3 uses
  %i.aag = sext i32 %i.zq to i64                  ; 3 uses
  br label %.preheader338.i

.preheader338.i:                                  ; preds = %.loopexit333.i, %.preheader338.lr.ph.i
  %indvars.iv395.i = phi i64 [ 0, %.preheader338.lr.ph.i ], [ %indvars.iv.next396.i, %.loopexit333.i ] ; 14 uses
  br i1 %i.zy, label %.lr.ph.i178, label %.preheader337.i

.lr.ph.i178:                                      ; preds = %.preheader338.i
  %i.aah = load ptr, ptr %i.zz, align 8, !tbaa !122
  %i.aai = trunc nuw nsw i64 %indvars.iv395.i to i32
  %i.aaj = lshr i32 %i.aai, %i.zt
  %i.aak = zext nneg i32 %i.aaj to i64
  %invariant.gep.i179 = getelementptr [4 x i8], ptr %i.aah, i64 %i.aak ; 2 uses
  br label %bb.n

._crit_edge354.i:                                 ; preds = %.loopexit333.i, %bb.m
  call void @free(ptr noundef %i.zw) #19
  %i.aal = call ptr @dt_alloc_aligned(i64 noundef %i.ui) #19 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aal, i64 64) ]
  br i1 %i.uj, label %.preheader329.lr.ph.i, label %dt_iop_equalizer_iwtf.exit

.preheader329.lr.ph.i:                            ; preds = %._crit_edge354.i
  %i.aam = sub i32 %i.f, %i.zr                    ; 5 uses
  %i.aan = icmp sgt i32 %i.aam, 0
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next272
  %i.aap = sext i32 %i.zv to i64
  %i.aaq = sext i32 %i.zr to i64                  ; 18 uses
  %i.aar = icmp slt i32 %i.zq, %i.aam
  %i.aas = icmp slt i32 %i.zr, %i.aam
  %i.aat = sext i32 %i.aam to i64                 ; 9 uses
  %i.aau = sext i32 %i.zq to i64                  ; 7 uses
  %i.aav = shl nsw i64 %i.aaq, 4                  ; 4 uses
  %scevgep812 = getelementptr i8, ptr %3, i64 %i.aav ; 4 uses
  %i.aaw = add nsw i64 %i.aau, %i.aaq             ; 3 uses
  %smax814 = call i64 @llvm.smax.i64(i64 %i.aat, i64 %i.aaw)
  %i.aax = icmp slt i64 %i.aaw, %i.aat
  %umin815 = zext i1 %i.aax to i64                ; 2 uses
  %i.aay = add nsw i64 %i.aaw, %umin815
  %i.aaz = sub i64 %smax814, %i.aay
  %i.aba = udiv i64 %i.aaz, %i.aau
  %i.abb = add i64 %i.aba, %umin815               ; 2 uses
  %i.abc = shl i64 %i.abb, 4                      ; 5 uses
  %i.abd = add i64 %i.abc, %i.aav                 ; 3 uses
  %scevgep816 = getelementptr i8, ptr %scevgep813, i64 %i.abd ; 4 uses
  %scevgep818 = getelementptr i8, ptr %scevgep817, i64 %i.aav ; 4 uses
  %scevgep820 = getelementptr i8, ptr %scevgep819, i64 %i.abd ; 6 uses
  %scevgep822 = getelementptr i8, ptr %scevgep821, i64 %i.aav ; 4 uses
  %scevgep824 = getelementptr i8, ptr %scevgep823, i64 %i.abd ; 6 uses
  %i.abe = shl nsw i64 %i.aaq, 2                  ; 2 uses
  %scevgep825 = getelementptr i8, ptr %i.aal, i64 %i.abe ; 3 uses
  %scevgep826 = getelementptr i8, ptr %i.aal, i64 4
  %i.abf = shl i64 %i.abb, 2                      ; 2 uses
  %i.abg = getelementptr i8, ptr %scevgep826, i64 %i.abf
  %scevgep827 = getelementptr i8, ptr %i.abg, i64 %i.abe ; 3 uses
  %scevgep828 = getelementptr i8, ptr %i.aal, i64 4
  %scevgep829 = getelementptr i8, ptr %scevgep828, i64 %i.abf ; 3 uses
  %scevgep831 = getelementptr i8, ptr %scevgep830, i64 %i.abc ; 3 uses
  %i.abh = shl nsw i64 %i.aaq, 5                  ; 4 uses
  %scevgep832 = getelementptr i8, ptr %3, i64 %i.abh ; 3 uses
  %i.abi = add i64 %i.abh, %i.abc                 ; 3 uses
  %scevgep834 = getelementptr i8, ptr %scevgep833, i64 %i.abi ; 3 uses
  %scevgep837 = getelementptr i8, ptr %scevgep836, i64 %i.abc ; 3 uses
  %scevgep839 = getelementptr i8, ptr %scevgep838, i64 %i.abh ; 3 uses
  %scevgep841 = getelementptr i8, ptr %scevgep840, i64 %i.abi ; 3 uses
  %scevgep844 = getelementptr i8, ptr %scevgep843, i64 %i.abc ; 3 uses
  %scevgep846 = getelementptr i8, ptr %scevgep845, i64 %i.abh ; 3 uses
  %scevgep848 = getelementptr i8, ptr %scevgep847, i64 %i.abi ; 3 uses
  %i.abj = shl nsw i64 %i.aau, 1                  ; 3 uses
  %smax1049 = call i64 @llvm.smax.i64(i64 %i.abj, i64 %i.aat)
  %i.abk = icmp slt i64 %i.abj, %i.aat
  %umin1050 = zext i1 %i.abk to i64               ; 2 uses
  %i.abl = or disjoint i64 %i.abj, %umin1050
  %i.abm = sub i64 %smax1049, %i.abl
  %i.abn = udiv i64 %i.abm, %i.aau
  %i.abo = add i64 %i.abn, %umin1050              ; 3 uses
  %i.abp = shl i64 %i.abo, 4                      ; 5 uses
  %scevgep1051 = getelementptr i8, ptr %scevgep1048, i64 %i.abp ; 2 uses
  %scevgep1054 = getelementptr i8, ptr %scevgep1053, i64 %i.abp ; 4 uses
  %scevgep1057 = getelementptr i8, ptr %scevgep1056, i64 %i.abp ; 5 uses
  %scevgep1058 = getelementptr i8, ptr %i.aal, i64 4 ; 4 uses
  %scevgep1059 = getelementptr i8, ptr %i.aal, i64 8
  %i.abq = shl i64 %i.abo, 2
  %scevgep1060 = getelementptr i8, ptr %scevgep1059, i64 %i.abq ; 3 uses
  %i.abr = mul nsw i64 %i.aaq, -4
  %scevgep1061 = getelementptr i8, ptr %scevgep1058, i64 %i.abr ; 2 uses
  %scevgep1062 = getelementptr i8, ptr %i.aal, i64 8
  %i.abs = sub i64 %i.abo, %i.aaq
  %i.abt = shl i64 %i.abs, 2
  %scevgep1063 = getelementptr i8, ptr %scevgep1062, i64 %i.abt ; 2 uses
  %i.abu = mul nsw i64 %i.aaq, -16                ; 3 uses
  %scevgep1065 = getelementptr i8, ptr %scevgep1064, i64 %i.abu ; 2 uses
  %i.abv = shl nsw i64 %i.aaq, 4                  ; 5 uses
  %i.abw = sub i64 %i.abp, %i.abv                 ; 3 uses
  %scevgep1067 = getelementptr i8, ptr %scevgep1066, i64 %i.abw ; 2 uses
  %scevgep1069 = getelementptr i8, ptr %scevgep1068, i64 %i.abv ; 2 uses
  %i.abx = add i64 %i.abp, %i.abv                 ; 3 uses
  %scevgep1071 = getelementptr i8, ptr %scevgep1070, i64 %i.abx ; 2 uses
  %scevgep1073 = getelementptr i8, ptr %scevgep1072, i64 %i.abu ; 2 uses
  %scevgep1075 = getelementptr i8, ptr %scevgep1074, i64 %i.abw ; 2 uses
  %scevgep1077 = getelementptr i8, ptr %scevgep1076, i64 %i.abv ; 3 uses
  %scevgep1079 = getelementptr i8, ptr %scevgep1078, i64 %i.abx ; 2 uses
  %scevgep1081 = getelementptr i8, ptr %scevgep1080, i64 %i.abu ; 3 uses
  %scevgep1083 = getelementptr i8, ptr %scevgep1082, i64 %i.abw ; 2 uses
  %scevgep1085 = getelementptr i8, ptr %scevgep1084, i64 %i.abv ; 3 uses
  %scevgep1087 = getelementptr i8, ptr %scevgep1086, i64 %i.abx ; 3 uses
  %i.aby = insertelement <4 x ptr> poison, ptr %scevgep822, i64 0 ; 3 uses
  %i.abz = shufflevector <4 x ptr> %i.aby, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aca = insertelement <4 x ptr> poison, ptr %scevgep829, i64 0
  %i.acb = insertelement <4 x ptr> %i.aca, ptr %scevgep831, i64 1
  %i.acc = insertelement <4 x ptr> %i.acb, ptr %scevgep834, i64 2
  %i.acd = insertelement <4 x ptr> %i.acc, ptr %scevgep837, i64 3
  %13 = shufflevector <4 x ptr> %i.aby, <4 x ptr> poison, <2 x i32> zeroinitializer
  %14 = insertelement <2 x ptr> poison, ptr %scevgep841, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %scevgep844, i64 1
  %16 = insertelement <4 x ptr> %i.uy, ptr %i.aal, i64 0
  %17 = insertelement <4 x ptr> %16, ptr %scevgep832, i64 2
  %18 = insertelement <4 x ptr> poison, ptr %scevgep824, i64 0 ; 2 uses
  %19 = shufflevector <4 x ptr> %18, <4 x ptr> poison, <4 x i32> zeroinitializer
  %20 = insertelement <4 x ptr> poison, ptr %scevgep818, i64 0 ; 2 uses
  %21 = shufflevector <4 x ptr> %20, <4 x ptr> poison, <4 x i32> zeroinitializer
  %22 = insertelement <4 x ptr> poison, ptr %scevgep831, i64 0
  %23 = insertelement <4 x ptr> %22, ptr %scevgep834, i64 1
  %24 = insertelement <4 x ptr> %23, ptr %scevgep837, i64 2
  %25 = insertelement <4 x ptr> %24, ptr %scevgep841, i64 3
  %26 = shufflevector <4 x ptr> %20, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ace = insertelement <2 x ptr> poison, ptr %scevgep844, i64 0
  %i.acf = insertelement <2 x ptr> %i.ace, ptr %scevgep848, i64 1
  %27 = insertelement <4 x ptr> %i.uz, ptr %scevgep832, i64 1
  %28 = insertelement <4 x ptr> %27, ptr %scevgep839, i64 3
  %29 = insertelement <4 x ptr> poison, ptr %scevgep820, i64 0
  %30 = shufflevector <4 x ptr> %29, <4 x ptr> poison, <4 x i32> zeroinitializer
  %31 = insertelement <4 x ptr> poison, ptr %scevgep812, i64 0 ; 2 uses
  %32 = shufflevector <4 x ptr> %31, <4 x ptr> poison, <4 x i32> zeroinitializer
  %33 = insertelement <4 x ptr> poison, ptr %scevgep837, i64 0
  %34 = insertelement <4 x ptr> %33, ptr %scevgep841, i64 1
  %35 = insertelement <4 x ptr> %34, ptr %scevgep844, i64 2
  %36 = insertelement <4 x ptr> %35, ptr %scevgep848, i64 3
  %i.acg = insertelement <4 x ptr> %i.vb, ptr %scevgep839, i64 1
  %i.ach = insertelement <4 x ptr> %i.acg, ptr %scevgep846, i64 3
  %i.aci = insertelement <4 x ptr> poison, ptr %scevgep816, i64 0 ; 2 uses
  %37 = shufflevector <4 x ptr> %i.aci, <4 x ptr> poison, <4 x i32> zeroinitializer
  %38 = insertelement <2 x ptr> poison, ptr %scevgep822, i64 0
  %39 = insertelement <2 x ptr> %38, ptr %scevgep825, i64 1
  %40 = insertelement <2 x ptr> poison, ptr %scevgep820, i64 0
  %41 = shufflevector <2 x ptr> %40, <2 x ptr> poison, <2 x i32> zeroinitializer
  %42 = insertelement <4 x ptr> %31, ptr %scevgep825, i64 1
  %43 = shufflevector <4 x ptr> %42, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.acj = insertelement <4 x ptr> %18, ptr %scevgep816, i64 1
  %i.ack = insertelement <4 x ptr> %i.acj, ptr %scevgep829, i64 2
  %i.acl = insertelement <4 x ptr> %i.ack, ptr %scevgep831, i64 3
  %i.acm = insertelement <4 x ptr> %i.aby, ptr %scevgep812, i64 1
  %i.acn = insertelement <4 x ptr> %i.acm, ptr %i.aal, i64 2
  %i.aco = insertelement <4 x ptr> %i.acn, ptr %3, i64 3
  %i.acp = insertelement <4 x ptr> %i.aci, ptr %scevgep827, i64 1
  %44 = shufflevector <4 x ptr> %i.acp, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %45 = insertelement <2 x ptr> poison, ptr %scevgep818, i64 0
  %46 = shufflevector <2 x ptr> %45, <2 x ptr> poison, <2 x i32> zeroinitializer
  %47 = insertelement <2 x ptr> poison, ptr %scevgep824, i64 0
  %48 = insertelement <2 x ptr> %47, ptr %scevgep827, i64 1
  %i.acq = insertelement <8 x ptr> poison, ptr %scevgep1063, i64 0
  %i.acr = insertelement <8 x ptr> %i.acq, ptr %scevgep1067, i64 1
  %i.acs = insertelement <8 x ptr> %i.acr, ptr %scevgep1071, i64 2
  %i.act = insertelement <8 x ptr> %i.acs, ptr %scevgep1075, i64 3 ; 2 uses
  %i.acu = insertelement <8 x ptr> %i.act, ptr %scevgep1079, i64 4
  %i.acv = insertelement <8 x ptr> %i.acu, ptr %scevgep1083, i64 5 ; 2 uses
  %i.acw = insertelement <8 x ptr> %i.acv, ptr %scevgep1087, i64 6
  %i.acx = insertelement <8 x ptr> %i.acw, ptr %scevgep1060, i64 7
  %i.acy = shufflevector <8 x ptr> %i.act, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acz = shufflevector <8 x ptr> %i.acv, <8 x ptr> poison, <2 x i32> <i32 4, i32 5>
  %i.ada = insertelement <4 x ptr> poison, ptr %scevgep1061, i64 0
  %i.adb = insertelement <4 x ptr> %i.ada, ptr %scevgep1065, i64 1
  %i.adc = insertelement <4 x ptr> %i.adb, ptr %scevgep1069, i64 2
  %i.add = insertelement <4 x ptr> %i.adc, ptr %scevgep1073, i64 3 ; 2 uses
  %i.ade = insertelement <4 x ptr> poison, ptr %scevgep1057, i64 0 ; 2 uses
  %i.adf = shufflevector <4 x ptr> %i.ade, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.adg = insertelement <2 x ptr> poison, ptr %scevgep1077, i64 0
  %i.adh = insertelement <2 x ptr> %i.adg, ptr %scevgep1081, i64 1
  %i.adi = shufflevector <4 x ptr> %i.ade, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.adj = insertelement <8 x ptr> poison, ptr %scevgep1054, i64 0
  %i.adk = insertelement <8 x ptr> %i.adj, ptr %scevgep1051, i64 1
  %i.adl = insertelement <8 x ptr> %i.adk, ptr %scevgep1060, i64 2
  %i.adm = insertelement <8 x ptr> %i.adl, ptr %scevgep1063, i64 3
  %i.adn = insertelement <8 x ptr> %i.adm, ptr %scevgep1067, i64 4
  %i.ado = insertelement <8 x ptr> %i.adn, ptr %scevgep1071, i64 5
  %i.adp = insertelement <8 x ptr> %i.ado, ptr %scevgep1075, i64 6
  %i.adq = insertelement <8 x ptr> %i.adp, ptr %scevgep1079, i64 7
  %i.adr = insertelement <4 x ptr> poison, ptr %scevgep1083, i64 0
  %i.ads = insertelement <4 x ptr> %i.adr, ptr %scevgep1087, i64 1
  %i.adt = insertelement <4 x ptr> %i.ads, ptr %scevgep1054, i64 2
  %i.adu = insertelement <4 x ptr> %i.adt, ptr %scevgep1060, i64 3
  %49 = insertelement <4 x ptr> poison, ptr %scevgep1081, i64 0
  %50 = insertelement <4 x ptr> %49, ptr %scevgep1085, i64 1
  %51 = insertelement <4 x ptr> %50, ptr %scevgep1058, i64 3
  %52 = insertelement <4 x ptr> poison, ptr %scevgep1051, i64 0 ; 3 uses
  %53 = insertelement <4 x ptr> %52, ptr %scevgep1057, i64 2
  %54 = insertelement <4 x ptr> %53, ptr %scevgep1054, i64 3
  %55 = shufflevector <4 x ptr> %54, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %56 = shufflevector <4 x ptr> %51, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %57 = insertelement <4 x ptr> poison, ptr %scevgep1054, i64 0 ; 2 uses
  %i.adv = insertelement <4 x ptr> poison, ptr %scevgep1077, i64 0
  %i.adw = insertelement <4 x ptr> %i.adv, ptr %scevgep1081, i64 1
  %i.adx = insertelement <4 x ptr> %i.adw, ptr %scevgep1085, i64 2
  %i.ady = insertelement <4 x ptr> %i.adx, ptr %scevgep1058, i64 3
  %i.adz = insertelement <4 x ptr> %57, ptr %scevgep1057, i64 1
  %58 = insertelement <4 x ptr> poison, ptr %scevgep1058, i64 2
  %i.aea = insertelement <4 x ptr> %58, ptr %scevgep1061, i64 3
  %59 = shufflevector <4 x ptr> %11, <4 x ptr> %i.aea, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aeb = insertelement <4 x ptr> %52, ptr %scevgep1057, i64 1
  %i.aec = insertelement <4 x ptr> poison, ptr %scevgep1065, i64 0
  %i.aed = insertelement <4 x ptr> %i.aec, ptr %scevgep1069, i64 1
  %i.aee = insertelement <4 x ptr> %i.aed, ptr %scevgep1073, i64 2
  %i.aef = insertelement <4 x ptr> %i.aee, ptr %scevgep1077, i64 3
  %i.aeg = call i64 @llvm.smax.i64(i64 %i.aat, i64 2)
  %i.aeh = add nsw i64 %i.aeg, -1                 ; 2 uses
  %min.iters.check1244 = icmp sgt i32 %i.aam, 9
  %ident.check1043.not = icmp eq i64 %indvars.iv.next272, 0
  %or.cond = select i1 %min.iters.check1244, i1 %ident.check1043.not, i1 false
  %i.aei = icmp ult <8 x ptr> %6, %i.adq
  %60 = shufflevector <4 x ptr> %59, <4 x ptr> %i.aef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %61 = shufflevector <4 x ptr> %i.aeb, <4 x ptr> %52, <8 x i32> <i32 0, i32 1, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aej = icmp ult <8 x ptr> %60, %61
  %62 = and <8 x i1> %i.aei, %i.aej               ; 2 uses
  %i.aek = icmp ult <4 x ptr> %8, %i.adu
  %i.ael = icmp ult <4 x ptr> %56, %55
  %63 = and <4 x i1> %i.aek, %i.ael
  %i.aem = icmp ult <8 x ptr> %i.uv, %i.acx
  %i.aen = icmp ult <4 x ptr> %i.vc, %i.acy
  %i.aeo = icmp ult <4 x ptr> %i.add, %i.adf
  %i.aep = icmp ult <2 x ptr> %i.vd, %i.acz
  %i.aeq = icmp ult <2 x ptr> %i.adh, %i.adi
  %bound01237 = icmp ult ptr %scevgep1055, %scevgep1087
  %bound11238 = icmp ult ptr %scevgep1085, %scevgep1057
  %i.aer = insertelement <16 x i1> %i.ve, i1 %bound01237, i64 14
  %i.aes = shufflevector <8 x i1> %i.aem, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aet = shufflevector <16 x i1> %i.aes, <16 x i1> %i.aer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.aeu = shufflevector <4 x i1> %i.aen, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aev = shufflevector <16 x i1> %i.aet, <16 x i1> %i.aeu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.aew = shufflevector <2 x i1> %i.aep, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aex = shufflevector <16 x i1> %i.aev, <16 x i1> %i.aew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.aey = shufflevector <4 x ptr> %i.add, <4 x ptr> %i.ady, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aez = shufflevector <4 x ptr> %57, <4 x ptr> %i.adz, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 5>
  %i.afa = icmp ult <8 x ptr> %i.aey, %i.aez
  %i.afb = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound11238, i64 14
  %i.afc = shufflevector <8 x i1> %i.afa, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afd = shufflevector <16 x i1> %i.afc, <16 x i1> %i.afb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.afe = shufflevector <4 x i1> %i.aeo, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aff = shufflevector <16 x i1> %i.afd, <16 x i1> %i.afe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.afg = shufflevector <2 x i1> %i.aeq, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afh = shufflevector <16 x i1> %i.aff, <16 x i1> %i.afg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.afi = and <16 x i1> %i.aex, %i.afh
  %i.afj = bitcast <16 x i1> %i.afi to i16
  %i.afk = icmp ne i16 %i.afj, 0
  %64 = shufflevector <4 x i1> %63, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %65 = or <8 x i1> %62, %64
  %66 = shufflevector <8 x i1> %65, <8 x i1> %62, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %67 = bitcast <8 x i1> %66 to i8
  %68 = icmp ne i8 %67, 0
  %op.rdx1141 = or i1 %68, %i.afk
  %69 = and i64 %i.aeh, 3                         ; 2 uses
  %70 = icmp eq i64 %69, 0
  %71 = select i1 %70, i64 4, i64 %69
  %n.vec1058 = sub nsw i64 %i.aeh, %71            ; 2 uses
  %72 = add nsw i64 %n.vec1058, 1
  %73 = add nsw i64 %i.aaq, 1
  %74 = call i64 @llvm.smax.i64(i64 %i.aat, i64 %73)
  %75 = sub i64 %74, %i.aaq                       ; 3 uses
  %min.iters.check864 = icmp ugt i64 %75, 16
  %.not1307 = icmp eq i64 %indvars.iv.next272, 0
  %or.cond1089 = select i1 %min.iters.check864, i1 %.not1307, i1 false
  %bound0755 = icmp ult ptr %scevgep812, %scevgep820
  %bound1756 = icmp ult ptr %scevgep818, %scevgep816
  %found.conflict757 = and i1 %bound0755, %bound1756
  %76 = icmp ult <4 x ptr> %43, %i.acl
  %77 = icmp ult <4 x ptr> %i.aco, %44
  %78 = and <4 x i1> %76, %77
  %bound0775 = icmp ult ptr %scevgep812, %scevgep834
  %bound1776 = icmp ult ptr %scevgep832, %scevgep816
  %found.conflict777 = and i1 %bound0775, %bound1776
  %79 = icmp ult <4 x ptr> %32, %36
  %80 = icmp ult <4 x ptr> %i.ach, %37
  %81 = icmp ult <2 x ptr> %46, %48
  %82 = icmp ult <2 x ptr> %39, %41
  %bound0803 = icmp ult ptr %scevgep818, %scevgep829
  %bound1804 = icmp ult ptr %i.aal, %scevgep820
  %i.afl = icmp ult <4 x ptr> %21, %25
  %i.afm = icmp ult <4 x ptr> %28, %30
  %i.afn = icmp ult <2 x ptr> %26, %i.acf
  %bound1918 = icmp ult ptr %scevgep842, %scevgep820
  %bound1923 = icmp ult ptr %scevgep846, %scevgep820
  %bound0928 = icmp ult ptr %scevgep822, %scevgep827
  %bound1929 = icmp ult ptr %scevgep825, %scevgep824
  %i.afo = icmp ult <4 x ptr> %i.abz, %i.acd
  %i.afp = icmp ult <4 x ptr> %17, %19
  %83 = icmp ult <2 x ptr> %13, %15
  %bound1852 = icmp ult ptr %scevgep839, %scevgep824
  %bound1856 = icmp ult ptr %scevgep842, %scevgep824
  %bound0859 = icmp ult ptr %scevgep822, %scevgep848
  %bound1860 = icmp ult ptr %scevgep846, %scevgep824
  %84 = insertelement <8 x i1> %12, i1 %bound0859, i64 6
  %85 = shufflevector <4 x i1> %i.afo, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %86 = shufflevector <8 x i1> %85, <8 x i1> %84, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %87 = shufflevector <2 x i1> %83, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %88 = shufflevector <8 x i1> %86, <8 x i1> %87, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %89 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1852, i64 4
  %90 = insertelement <8 x i1> %89, i1 %bound1856, i64 5
  %91 = insertelement <8 x i1> %90, i1 %bound1860, i64 6
  %i.afq = shufflevector <4 x i1> %i.afp, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %92 = shufflevector <8 x i1> %i.afq, <8 x i1> %91, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %93 = and <8 x i1> %88, %92
  %94 = bitcast <8 x i1> %93 to i8
  %95 = icmp ne i8 %94, 0
  %96 = insertelement <8 x i1> poison, i1 %bound0928, i64 6
  %97 = insertelement <8 x i1> %96, i1 %95, i64 7
  %98 = shufflevector <4 x i1> %i.afl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %99 = shufflevector <8 x i1> %98, <8 x i1> %97, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %100 = shufflevector <2 x i1> %i.afn, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %101 = shufflevector <8 x i1> %99, <8 x i1> %100, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %102 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1918, i64 4
  %103 = insertelement <8 x i1> %102, i1 %bound1923, i64 5
  %104 = insertelement <8 x i1> %103, i1 %bound1929, i64 6
  %105 = shufflevector <4 x i1> %i.afm, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %106 = shufflevector <8 x i1> %105, <8 x i1> %104, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %107 = and <8 x i1> %101, %106
  %108 = bitcast <8 x i1> %107 to i8
  %i.afr = icmp ne i8 %108, 0
  %109 = shufflevector <2 x i1> %81, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %110 = insertelement <8 x i1> %109, i1 %bound0803, i64 6
  %111 = insertelement <8 x i1> %110, i1 %i.afr, i64 7
  %112 = shufflevector <4 x i1> %79, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %113 = shufflevector <8 x i1> %112, <8 x i1> %111, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %114 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1804, i64 6
  %115 = shufflevector <4 x i1> %80, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %116 = shufflevector <8 x i1> %115, <8 x i1> %114, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %117 = shufflevector <2 x i1> %82, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %118 = shufflevector <8 x i1> %116, <8 x i1> %117, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %119 = and <8 x i1> %113, %118
  %120 = bitcast <8 x i1> %119 to i8
  %121 = icmp ne i8 %120, 0
  %122 = bitcast <4 x i1> %78 to i4
  %123 = icmp ne i4 %122, 0
  %op.rdx1127 = or i1 %123, %found.conflict757
  %op.rdx1128 = or i1 %found.conflict777, %121
  %op.rdx1129 = or i1 %op.rdx1127, %op.rdx1128
  %i.afs = and i64 %75, 7                         ; 2 uses
  %i.aft = icmp eq i64 %i.afs, 0
  %i.afu = select i1 %i.aft, i64 8, i64 %i.afs
  %n.vec1007 = sub i64 %75, %i.afu                ; 2 uses
  %broadcast.splatinsert1010 = insertelement <8 x i64> poison, i64 %i.aaq, i64 0
  %broadcast.splat1011 = shufflevector <8 x i64> %broadcast.splatinsert1010, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1012 = or disjoint <8 x i64> %broadcast.splat1011, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader329.i

.preheader337.i:                                  ; preds = %bb.n, %.preheader338.i
  %i.afv = add nsw i64 %indvars.iv395.i, %i.aac
  %.idx321.i = shl i64 %i.afv, 4
  %i.afw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx321.i ; 2 uses
  %.idx322.i = shl nuw nsw i64 %indvars.iv395.i, 4
  %i.afx = getelementptr inbounds nuw i8, ptr %3, i64 %.idx322.i ; 3 uses
  %i.afy = load <2 x float>, ptr %i.afw, align 4, !tbaa !30
  %i.afz = fmul reassoc nsz arcp contract afn <2 x float> %i.afy, splat (float 5.000000e-01)
  %i.aga = load <2 x float>, ptr %i.afx, align 4, !tbaa !30
  %i.agb = fsub reassoc nsz arcp contract afn <2 x float> %i.aga, %i.afz
  store <2 x float> %i.agb, ptr %i.afx, align 4, !tbaa !30
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !30
  %i.age = fmul reassoc nsz arcp contract afn float %i.agd, 5.000000e-01
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afx, i64 8 ; 2 uses
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !30
  %i.agh = fsub reassoc nsz arcp contract afn float %i.agg, %i.age
  store float %i.agh, ptr %i.agf, align 4, !tbaa !30
  br i1 %i.aad, label %.preheader331.i, label %._crit_edge.i176

bb.n:                                             ; preds = %bb.n, %.lr.ph.i178
  %indvars.iv.i180 = phi i64 [ 0, %.lr.ph.i178 ], [ %indvars.iv.next.i182, %bb.n ] ; 3 uses
  %i.agi = trunc nsw i64 %indvars.iv.i180 to i32
  %i.agj = ashr i32 %i.agi, %i.zt
  %i.agk = sext i32 %i.agj to i64
  %i.agl = mul nsw i64 %i.agk, %i.aaa
  %gep.i181 = getelementptr [4 x i8], ptr %invariant.gep.i179, i64 %i.agl
  %i.agm = load float, ptr %gep.i181, align 4, !tbaa !30
  %indvars.iv.next.i182 = add nsw i64 %indvars.iv.i180, %i.aab ; 3 uses
  %i.agn = trunc nsw i64 %indvars.iv.next.i182 to i32
  %i.ago = ashr i32 %i.agn, %i.zt
  %i.agp = sext i32 %i.ago to i64
  %i.agq = mul nsw i64 %i.agp, %i.aaa
  %gep342.i = getelementptr [4 x i8], ptr %invariant.gep.i179, i64 %i.agq
  %i.agr = load float, ptr %gep342.i, align 4, !tbaa !30
  %i.ags = fsub reassoc nsz arcp contract afn float %i.agm, %i.agr
  %i.agt = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ags)
  %i.agu = fpext reassoc nsz arcp contract afn float %i.agt to double
  %i.agv = fadd reassoc nsz arcp contract afn double %i.agu, 1.000000e-05
  %i.agw = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.agv
  %i.agx = fptrunc reassoc nsz arcp contract afn double %i.agw to float
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %indvars.iv.i180
  store float %i.agx, ptr %i.agy, align 4, !tbaa !30
  %i.agz = icmp slt i64 %indvars.iv.next.i182, %i.aaf
  br i1 %i.agz, label %bb.n, label %.preheader337.i

.preheader331.i:                                  ; preds = %.preheader337.i, %.preheader331.i
  %indvars.iv380.i = phi i64 [ %indvars.iv.next381.i, %.preheader331.i ], [ %i.aag, %.preheader337.i ] ; 5 uses
  %i.aha = sub nsw i64 %indvars.iv380.i, %i.aab   ; 2 uses
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %i.aha ; 3 uses
  %i.ahc = mul nsw i64 %i.aha, %i.uf
  %i.ahd = add nsw i64 %i.ahc, %indvars.iv395.i
  %.idx318.i = shl i64 %i.ahd, 4
  %i.ahe = getelementptr inbounds nuw i8, ptr %3, i64 %.idx318.i ; 3 uses
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %indvars.iv380.i ; 3 uses
  %i.ahg = add nsw i64 %indvars.iv380.i, %i.aab
  %i.ahh = mul nsw i64 %i.ahg, %i.uf
  %i.ahi = add nsw i64 %i.ahh, %indvars.iv395.i
  %.idx319.i = shl i64 %i.ahi, 4
  %i.ahj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx319.i ; 3 uses
  %i.ahk = mul nsw i64 %indvars.iv380.i, %i.uf
  %i.ahl = add nsw i64 %i.ahk, %indvars.iv395.i
  %.idx320.i = shl i64 %i.ahl, 4
  %i.ahm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx320.i ; 4 uses
  %i.ahn = load float, ptr %i.ahb, align 4, !tbaa !30 ; 2 uses
  %i.aho = load float, ptr %i.ahe, align 4, !tbaa !30
  %i.ahp = fmul reassoc nsz arcp contract afn float %i.aho, %i.ahn
  %i.ahq = load float, ptr %i.ahf, align 4, !tbaa !30 ; 2 uses
  %i.ahr = load float, ptr %i.ahj, align 4, !tbaa !30
  %i.ahs = fmul reassoc nsz arcp contract afn float %i.ahr, %i.ahq
  %i.aht = fadd reassoc nsz arcp contract afn float %i.ahs, %i.ahp
  %i.ahu = fpext reassoc nsz arcp contract afn float %i.aht to double
  %i.ahv = fadd reassoc nsz arcp contract afn float %i.ahq, %i.ahn
  %i.ahw = fpext reassoc nsz arcp contract afn float %i.ahv to double
  %i.ahx = fmul reassoc nsz arcp contract afn double %i.ahw, 2.000000e+00
  %i.ahy = fdiv reassoc nsz arcp contract afn double %i.ahu, %i.ahx
  %i.ahz = load float, ptr %i.ahm, align 4, !tbaa !30
  %i.aia = fpext reassoc nsz arcp contract afn float %i.ahz to double
  %i.aib = fsub reassoc nsz arcp contract afn double %i.aia, %i.ahy
  %i.aic = fptrunc reassoc nsz arcp contract afn double %i.aib to float
  store float %i.aic, ptr %i.ahm, align 4, !tbaa !30
  %i.aid = load float, ptr %i.ahb, align 4, !tbaa !30 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahe, i64 4
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !30
  %i.aig = fmul reassoc nsz arcp contract afn float %i.aif, %i.aid
  %i.aih = load float, ptr %i.ahf, align 4, !tbaa !30 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !30
  %i.aik = fmul reassoc nsz arcp contract afn float %i.aij, %i.aih
  %i.ail = fadd reassoc nsz arcp contract afn float %i.aik, %i.aig
  %i.aim = fpext reassoc nsz arcp contract afn float %i.ail to double
  %i.ain = fadd reassoc nsz arcp contract afn float %i.aih, %i.aid
  %i.aio = fpext reassoc nsz arcp contract afn float %i.ain to double
  %i.aip = fmul reassoc nsz arcp contract afn double %i.aio, 2.000000e+00
  %i.aiq = fdiv reassoc nsz arcp contract afn double %i.aim, %i.aip
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !30
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !30
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.aix = load <2 x float>, ptr %i.air, align 4, !tbaa !30
  %i.aiy = fpext <2 x float> %i.aix to <2 x double> ; 2 uses
  %i.aiz = extractelement <2 x double> %i.aiy, i64 0
  %i.aja = fsub reassoc nsz arcp contract afn double %i.aiz, %i.aiq
  %i.ajb = fptrunc reassoc nsz arcp contract afn double %i.aja to float
  store float %i.ajb, ptr %i.air, align 4, !tbaa !30
  %i.ajc = load float, ptr %i.ahb, align 4, !tbaa !30 ; 2 uses
  %i.ajd = fmul reassoc nsz arcp contract afn float %i.ait, %i.ajc
  %i.aje = load float, ptr %i.ahf, align 4, !tbaa !30 ; 2 uses
  %i.ajf = fmul reassoc nsz arcp contract afn float %i.aiv, %i.aje
  %i.ajg = fadd reassoc nsz arcp contract afn float %i.ajf, %i.ajd
  %i.ajh = fpext reassoc nsz arcp contract afn float %i.ajg to double
  %i.aji = fadd reassoc nsz arcp contract afn float %i.aje, %i.ajc
  %i.ajj = fpext reassoc nsz arcp contract afn float %i.aji to double
  %i.ajk = fmul reassoc nsz arcp contract afn double %i.ajj, 2.000000e+00
  %i.ajl = fdiv reassoc nsz arcp contract afn double %i.ajh, %i.ajk
  %i.ajm = extractelement <2 x double> %i.aiy, i64 1
  %i.ajn = fsub reassoc nsz arcp contract afn double %i.ajm, %i.ajl
  %i.ajo = fptrunc reassoc nsz arcp contract afn double %i.ajn to float
  store float %i.ajo, ptr %i.aiw, align 4, !tbaa !30
  %indvars.iv.next381.i = add nsw i64 %indvars.iv380.i, %i.aag ; 3 uses
  %i.ajp = icmp slt i64 %indvars.iv.next381.i, %i.aaf
  br i1 %i.ajp, label %.preheader331.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.preheader331.i
  %i.ajq = trunc nsw i64 %indvars.iv.next381.i to i32
  br label %._crit_edge.i176

._crit_edge.i176:                                 ; preds = %._crit_edge.loopexit.i, %.preheader337.i
  %.1294.lcssa.i = phi i32 [ %i.zq, %.preheader337.i ], [ %i.ajq, %._crit_edge.loopexit.i ] ; 3 uses
  %i.ajr = icmp slt i32 %.1294.lcssa.i, %i.h
  br i1 %i.ajr, label %.preheader334.i, label %.loopexit335.i

.preheader334.i:                                  ; preds = %._crit_edge.i176
  %i.ajs = sub nsw i32 %.1294.lcssa.i, %i.zr
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = mul nsw i64 %i.ajt, %i.uf
  %i.ajv = add nsw i64 %i.aju, %indvars.iv395.i
  %.idx316.i = shl i64 %i.ajv, 4
  %i.ajw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx316.i ; 2 uses
  %i.ajx = sext i32 %.1294.lcssa.i to i64
  %i.ajy = mul nsw i64 %i.ajx, %i.uf
  %i.ajz = add nsw i64 %i.ajy, %indvars.iv395.i
  %.idx317.i = shl i64 %i.ajz, 4
  %i.aka = getelementptr inbounds nuw i8, ptr %3, i64 %.idx317.i ; 3 uses
  %i.akb = load <2 x float>, ptr %i.ajw, align 4, !tbaa !30
  %i.akc = fmul reassoc nsz arcp contract afn <2 x float> %i.akb, splat (float 5.000000e-01)
  %i.akd = load <2 x float>, ptr %i.aka, align 4, !tbaa !30
  %i.ake = fsub reassoc nsz arcp contract afn <2 x float> %i.akd, %i.akc
  store <2 x float> %i.ake, ptr %i.aka, align 4, !tbaa !30
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !30
  %i.akh = fmul reassoc nsz arcp contract afn float %i.akg, 5.000000e-01
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aka, i64 8 ; 2 uses
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !30
  %i.akk = fsub reassoc nsz arcp contract afn float %i.akj, %i.akh
  store float %i.akk, ptr %i.aki, align 4, !tbaa !30
  br label %.loopexit335.i

.loopexit335.i:                                   ; preds = %.preheader334.i, %._crit_edge.i176
  br i1 %i.aae, label %.preheader330.i, label %._crit_edge350.i

.preheader330.i:                                  ; preds = %.loopexit335.i, %.preheader330.i
  %indvars.iv389.i = phi i64 [ %indvars.iv.next390.i, %.preheader330.i ], [ %i.aab, %.loopexit335.i ] ; 5 uses
  %i.akl = sub nsw i64 %indvars.iv389.i, %i.aab   ; 2 uses
  %i.akm = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %i.akl ; 3 uses
  %i.akn = mul nsw i64 %i.akl, %i.uf
  %i.ako = add nsw i64 %i.akn, %indvars.iv395.i
  %.idx313.i = shl i64 %i.ako, 4
  %i.akp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx313.i ; 3 uses
  %i.akq = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %indvars.iv389.i ; 3 uses
  %i.akr = add nsw i64 %indvars.iv389.i, %i.aab
  %i.aks = mul nsw i64 %i.akr, %i.uf
  %i.akt = add nsw i64 %i.aks, %indvars.iv395.i
  %.idx314.i = shl i64 %i.akt, 4
  %i.aku = getelementptr inbounds nuw i8, ptr %3, i64 %.idx314.i ; 3 uses
  %i.akv = mul nsw i64 %indvars.iv389.i, %i.uf
  %i.akw = add nsw i64 %i.akv, %indvars.iv395.i
  %.idx315.i = shl i64 %i.akw, 4
  %i.akx = getelementptr inbounds nuw i8, ptr %3, i64 %.idx315.i ; 4 uses
  %i.aky = load float, ptr %i.akm, align 4, !tbaa !30 ; 2 uses
  %i.akz = load float, ptr %i.akp, align 4, !tbaa !30
  %i.ala = fmul reassoc nsz arcp contract afn float %i.akz, %i.aky
  %i.alb = load float, ptr %i.akq, align 4, !tbaa !30 ; 2 uses
  %i.alc = load float, ptr %i.aku, align 4, !tbaa !30
  %i.ald = fmul reassoc nsz arcp contract afn float %i.alc, %i.alb
  %i.ale = fadd reassoc nsz arcp contract afn float %i.ald, %i.ala
  %i.alf = fadd reassoc nsz arcp contract afn float %i.alb, %i.aky
  %i.alg = fdiv reassoc nsz arcp contract afn float %i.ale, %i.alf
  %i.alh = load float, ptr %i.akx, align 4, !tbaa !30
  %i.ali = fadd reassoc nsz arcp contract afn float %i.alg, %i.alh
  store float %i.ali, ptr %i.akx, align 4, !tbaa !30
  %i.alj = load float, ptr %i.akm, align 4, !tbaa !30 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.akp, i64 4
  %i.all = load float, ptr %i.alk, align 4, !tbaa !30
  %i.alm = fmul reassoc nsz arcp contract afn float %i.all, %i.alj
  %i.aln = load float, ptr %i.akq, align 4, !tbaa !30 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aku, i64 4
  %i.alp = load float, ptr %i.alo, align 4, !tbaa !30
  %i.alq = fmul reassoc nsz arcp contract afn float %i.alp, %i.aln
  %i.alr = fadd reassoc nsz arcp contract afn float %i.alq, %i.alm
  %i.als = fadd reassoc nsz arcp contract afn float %i.aln, %i.alj
  %i.alt = fdiv reassoc nsz arcp contract afn float %i.alr, %i.als
  %i.alu = getelementptr inbounds nuw i8, ptr %i.akx, i64 4 ; 2 uses
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !30
  %i.alw = fadd reassoc nsz arcp contract afn float %i.alt, %i.alv
  store float %i.alw, ptr %i.alu, align 4, !tbaa !30
  %i.alx = load float, ptr %i.akm, align 4, !tbaa !30 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !30
  %i.ama = fmul reassoc nsz arcp contract afn float %i.alz, %i.alx
  %i.amb = load float, ptr %i.akq, align 4, !tbaa !30 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !30
  %i.ame = fmul reassoc nsz arcp contract afn float %i.amd, %i.amb
  %i.amf = fadd reassoc nsz arcp contract afn float %i.ame, %i.ama
  %i.amg = fadd reassoc nsz arcp contract afn float %i.amb, %i.alx
  %i.amh = fdiv reassoc nsz arcp contract afn float %i.amf, %i.amg
  %i.ami = getelementptr inbounds nuw i8, ptr %i.akx, i64 8 ; 2 uses
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !30
  %i.amk = fadd reassoc nsz arcp contract afn float %i.amh, %i.amj
  store float %i.amk, ptr %i.ami, align 4, !tbaa !30
  %indvars.iv.next390.i = add nsw i64 %indvars.iv389.i, %i.aag ; 3 uses
  %i.aml = icmp slt i64 %indvars.iv.next390.i, %i.aaf
  br i1 %i.aml, label %.preheader330.i, label %._crit_edge350.loopexit.i

._crit_edge350.loopexit.i:                        ; preds = %.preheader330.i
  %i.amm = trunc nsw i64 %indvars.iv.next390.i to i32
  br label %._crit_edge350.i

._crit_edge350.i:                                 ; preds = %._crit_edge350.loopexit.i, %.loopexit335.i
  %.2.lcssa.i = phi i32 [ %i.zr, %.loopexit335.i ], [ %i.amm, %._crit_edge350.loopexit.i ] ; 3 uses
  %i.amn = icmp slt i32 %.2.lcssa.i, %i.h
  br i1 %i.amn, label %.preheader332.i, label %.loopexit333.i

.preheader332.i:                                  ; preds = %._crit_edge350.i
  %i.amo = sub nsw i32 %.2.lcssa.i, %i.zr
  %i.amp = sext i32 %i.amo to i64
  %i.amq = mul nsw i64 %i.amp, %i.uf
  %i.amr = add nsw i64 %i.amq, %indvars.iv395.i
  %.idx311.i = shl i64 %i.amr, 4
  %i.ams = getelementptr inbounds nuw i8, ptr %3, i64 %.idx311.i ; 2 uses
  %i.amt = sext i32 %.2.lcssa.i to i64
  %i.amu = mul nsw i64 %i.amt, %i.uf
  %i.amv = add nsw i64 %i.amu, %indvars.iv395.i
  %.idx312.i = shl i64 %i.amv, 4
  %i.amw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx312.i ; 3 uses
  %i.amx = load <2 x float>, ptr %i.ams, align 4, !tbaa !30
  %i.amy = load <2 x float>, ptr %i.amw, align 4, !tbaa !30
  %i.amz = fadd reassoc nsz arcp contract afn <2 x float> %i.amy, %i.amx
  store <2 x float> %i.amz, ptr %i.amw, align 4, !tbaa !30
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !30
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amw, i64 8 ; 2 uses
  %i.and = load float, ptr %i.anc, align 4, !tbaa !30
  %i.ane = fadd reassoc nsz arcp contract afn float %i.and, %i.anb
  store float %i.ane, ptr %i.anc, align 4, !tbaa !30
  br label %.loopexit333.i

.loopexit333.i:                                   ; preds = %.preheader332.i, %._crit_edge350.i
  %indvars.iv.next396.i = add nuw nsw i64 %indvars.iv395.i, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next396.i, %i.uf
  br i1 %exitcond.not.i177, label %._crit_edge354.i, label %.preheader338.i

.preheader329.i:                                  ; preds = %.loopexit.i171, %.preheader329.lr.ph.i
  %indvars.iv427.i = phi i64 [ 0, %.preheader329.lr.ph.i ], [ %indvars.iv.next428.i, %.loopexit.i171 ] ; 3 uses
  br i1 %i.aan, label %.lr.ph356.i, label %.preheader328.i

.lr.ph356.i:                                      ; preds = %.preheader329.i
  %i.anf = load ptr, ptr %i.aao, align 8, !tbaa !122
  %i.ang = trunc nuw nsw i64 %indvars.iv427.i to i32
  %i.anh = lshr i32 %i.ang, %i.zt
  %i.ani = zext nneg i32 %i.anh to i64
  %i.anj = mul nsw i64 %i.ani, %i.aap
  %i.ank = getelementptr [4 x i8], ptr %i.anf, i64 %i.anj ; 2 uses
  br label %bb.o

.preheader328.i:                                  ; preds = %bb.o, %.preheader329.i
  %i.anl = mul nsw i64 %indvars.iv427.i, %i.k     ; 14 uses
  %i.anm = add nsw i64 %i.anl, %i.aaq             ; 5 uses
  %.idx309.i = shl i64 %i.anm, 4
  %i.ann = getelementptr inbounds nuw i8, ptr %3, i64 %.idx309.i ; 2 uses
  %.idx310.i = shl i64 %i.anl, 4
  %i.ano = getelementptr inbounds nuw i8, ptr %3, i64 %.idx310.i ; 3 uses
  %i.anp = load <2 x float>, ptr %i.ann, align 4, !tbaa !30
  %i.anq = fmul reassoc nsz arcp contract afn <2 x float> %i.anp, splat (float 5.000000e-01)
  %i.anr = load <2 x float>, ptr %i.ano, align 4, !tbaa !30
  %i.ans = fsub reassoc nsz arcp contract afn <2 x float> %i.anr, %i.anq
  store <2 x float> %i.ans, ptr %i.ano, align 4, !tbaa !30
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !30
  %i.anv = fmul reassoc nsz arcp contract afn float %i.anu, 5.000000e-01
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ano, i64 8 ; 2 uses
  %i.anx = load float, ptr %i.anw, align 4, !tbaa !30
  %i.any = fsub reassoc nsz arcp contract afn float %i.anx, %i.anv
  store float %i.any, ptr %i.anw, align 4, !tbaa !30
  br i1 %i.aar, label %.preheader323.i.preheader, label %._crit_edge360.i

.preheader323.i.preheader:                        ; preds = %.preheader328.i
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx1141
  br i1 %brmerge, label %.preheader323.i.preheader1310, label %vector.ph1245

.preheader323.i.preheader1310:                    ; preds = %.preheader323.i.preheader, %vector.body1249
  %indvars.iv409.i.ph = phi i64 [ %72, %vector.body1249 ], [ %i.aau, %.preheader323.i.preheader ]
  br label %.preheader323.i

vector.ph1245:                                    ; preds = %.preheader323.i.preheader
  %broadcast.splatinsert1247 = insertelement <4 x i64> poison, i64 %i.anl, i64 0
  %broadcast.splat1248 = shufflevector <4 x i64> %broadcast.splatinsert1247, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1245
  %index1250 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1273, %vector.body1249 ] ; 2 uses
  %vec.ind1251 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph1245 ], [ %vec.ind.next1274, %vector.body1249 ] ; 2 uses
  %i.anz = or disjoint i64 %index1250, 1          ; 3 uses
  %i.aoa = sub nuw nsw i64 %i.anz, %i.aaq         ; 2 uses
  %i.aob = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.aoa ; 3 uses
  %i.aoc = add nsw i64 %i.aoa, %i.anl
  %i.aod = shl i64 %i.aoc, 4
  %i.aoe = getelementptr inbounds nuw i8, ptr %3, i64 %i.aod
  %i.aof = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.anz ; 3 uses
  %i.aog = add i64 %i.anz, %i.anm
  %i.aoh = shl i64 %i.aog, 4
  %i.aoi = getelementptr inbounds nuw i8, ptr %3, i64 %i.aoh
  %i.aoj = add nsw <4 x i64> %vec.ind1251, %broadcast.splat1248
  %i.aok = shl <4 x i64> %i.aoj, splat (i64 4)
  %wide.gep1252 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.aok ; 4 uses
  %i.aol = extractelement <4 x ptr> %wide.gep1252, i64 0
  %wide.load1253 = load <4 x float>, ptr %i.aob, align 4, !tbaa !30, !alias.scope !133 ; 2 uses
  %wide.vec1254 = load <16 x float>, ptr %i.aoe, align 4, !tbaa !30 ; 3 uses
  %strided.vec1255 = shufflevector <16 x float> %wide.vec1254, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1256 = shufflevector <16 x float> %wide.vec1254, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1257 = shufflevector <16 x float> %wide.vec1254, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.aom = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1255, %wide.load1253
  %wide.load1258 = load <4 x float>, ptr %i.aof, align 4, !tbaa !30, !alias.scope !134 ; 2 uses
  %wide.vec1259 = load <16 x float>, ptr %i.aoi, align 4, !tbaa !30 ; 3 uses
  %strided.vec1260 = shufflevector <16 x float> %wide.vec1259, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1261 = shufflevector <16 x float> %wide.vec1259, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1262 = shufflevector <16 x float> %wide.vec1259, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.aon = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1260, %wide.load1258
  %i.aoo = fadd reassoc nsz arcp contract afn <4 x float> %i.aon, %i.aom
  %i.aop = fpext reassoc nsz arcp contract afn <4 x float> %i.aoo to <4 x double>
  %i.aoq = fadd reassoc nsz arcp contract afn <4 x float> %wide.load1258, %wide.load1253
  %i.aor = fpext reassoc nsz arcp contract afn <4 x float> %i.aoq to <4 x double>
  %i.aos = fmul reassoc nsz arcp contract afn <4 x double> %i.aor, splat (double 2.000000e+00)
  %i.aot = fdiv reassoc nsz arcp contract afn <4 x double> %i.aop, %i.aos
  %wide.vec1263 = load <16 x float>, ptr %i.aol, align 4, !tbaa !30 ; 3 uses
  %strided.vec1264 = shufflevector <16 x float> %wide.vec1263, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1265 = shufflevector <16 x float> %wide.vec1263, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1266 = shufflevector <16 x float> %wide.vec1263, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.aou = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec1264 to <4 x double>
  %i.aov = fsub reassoc nsz arcp contract afn <4 x double> %i.aou, %i.aot
  %i.aow = fptrunc reassoc nsz arcp contract afn <4 x double> %i.aov to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aow, <4 x ptr> align 4 %wide.gep1252, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !135, !noalias !136
  %wide.load1267 = load <4 x float>, ptr %i.aob, align 4, !tbaa !30, !alias.scope !133 ; 2 uses
  %i.aox = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1256, %wide.load1267
  %wide.load1268 = load <4 x float>, ptr %i.aof, align 4, !tbaa !30, !alias.scope !134 ; 2 uses
  %i.aoy = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1261, %wide.load1268
  %i.aoz = fadd reassoc nsz arcp contract afn <4 x float> %i.aoy, %i.aox
  %i.apa = fpext reassoc nsz arcp contract afn <4 x float> %i.aoz to <4 x double>
  %i.apb = fadd reassoc nsz arcp contract afn <4 x float> %wide.load1268, %wide.load1267
  %i.apc = fpext reassoc nsz arcp contract afn <4 x float> %i.apb to <4 x double>
  %i.apd = fmul reassoc nsz arcp contract afn <4 x double> %i.apc, splat (double 2.000000e+00)
  %i.ape = fdiv reassoc nsz arcp contract afn <4 x double> %i.apa, %i.apd
  %wide.gep1269 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep1252, i64 4
  %i.apf = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec1265 to <4 x double>
  %i.apg = fsub reassoc nsz arcp contract afn <4 x double> %i.apf, %i.ape
  %i.aph = fptrunc reassoc nsz arcp contract afn <4 x double> %i.apg to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aph, <4 x ptr> align 4 %wide.gep1269, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !137, !noalias !138
  %wide.load1270 = load <4 x float>, ptr %i.aob, align 4, !tbaa !30, !alias.scope !133 ; 2 uses
  %i.api = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1257, %wide.load1270
  %wide.load1271 = load <4 x float>, ptr %i.aof, align 4, !tbaa !30, !alias.scope !134 ; 2 uses
  %i.apj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1262, %wide.load1271
  %i.apk = fadd reassoc nsz arcp contract afn <4 x float> %i.apj, %i.api
  %i.apl = fpext reassoc nsz arcp contract afn <4 x float> %i.apk to <4 x double>
  %i.apm = fadd reassoc nsz arcp contract afn <4 x float> %wide.load1271, %wide.load1270
  %i.apn = fpext reassoc nsz arcp contract afn <4 x float> %i.apm to <4 x double>
  %i.apo = fmul reassoc nsz arcp contract afn <4 x double> %i.apn, splat (double 2.000000e+00)
  %i.app = fdiv reassoc nsz arcp contract afn <4 x double> %i.apl, %i.apo
  %wide.gep1272 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep1252, i64 8
  %i.apq = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec1266 to <4 x double>
  %i.apr = fsub reassoc nsz arcp contract afn <4 x double> %i.apq, %i.app
  %i.aps = fptrunc reassoc nsz arcp contract afn <4 x double> %i.apr to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aps, <4 x ptr> align 4 %wide.gep1272, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !139, !noalias !140
  %index.next1273 = add nuw i64 %index1250, 4     ; 2 uses
  %vec.ind.next1274 = add nuw nsw <4 x i64> %vec.ind1251, splat (i64 4)
  %i.apt = icmp eq i64 %index.next1273, %n.vec1058
  br i1 %i.apt, label %.preheader323.i.preheader1310, label %vector.body1249, !llvm.loop !101

bb.o:                                             ; preds = %bb.o, %.lr.ph356.i
  %indvars.iv398.i = phi i64 [ 0, %.lr.ph356.i ], [ %indvars.iv.next399.i, %bb.o ] ; 3 uses
  %i.apu = trunc nsw i64 %indvars.iv398.i to i32
  %i.apv = ashr i32 %i.apu, %i.zt
  %i.apw = sext i32 %i.apv to i64
  %i.apx = getelementptr [4 x i8], ptr %i.ank, i64 %i.apw
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !30
  %indvars.iv.next399.i = add nsw i64 %indvars.iv398.i, %i.aaq ; 3 uses
  %i.apz = trunc nsw i64 %indvars.iv.next399.i to i32
  %i.aqa = ashr i32 %i.apz, %i.zt
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr [4 x i8], ptr %i.ank, i64 %i.aqb
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !30
  %i.aqe = fsub reassoc nsz arcp contract afn float %i.apy, %i.aqd
  %i.aqf = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aqe)
  %i.aqg = fpext reassoc nsz arcp contract afn float %i.aqf to double
  %i.aqh = fadd reassoc nsz arcp contract afn double %i.aqg, 1.000000e-05
  %i.aqi = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aqh
  %i.aqj = fptrunc reassoc nsz arcp contract afn double %i.aqi to float
  %i.aqk = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %indvars.iv398.i
  store float %i.aqj, ptr %i.aqk, align 4, !tbaa !30
  %i.aql = icmp slt i64 %indvars.iv.next399.i, %i.aat
  br i1 %i.aql, label %bb.o, label %.preheader328.i

.preheader323.i:                                  ; preds = %.preheader323.i.preheader1310, %.preheader323.i
  %indvars.iv409.i = phi i64 [ %indvars.iv.next410.i, %.preheader323.i ], [ %indvars.iv409.i.ph, %.preheader323.i.preheader1310 ] ; 5 uses
  %i.aqm = sub nsw i64 %indvars.iv409.i, %i.aaq   ; 2 uses
  %i.aqn = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.aqm ; 3 uses
  %i.aqo = add nsw i64 %i.aqm, %i.anl
  %.idx306.i = shl i64 %i.aqo, 4
  %i.aqp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx306.i ; 3 uses
  %i.aqq = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %indvars.iv409.i ; 3 uses
  %.reass.i175 = add i64 %indvars.iv409.i, %i.anm
  %.idx307.i = shl i64 %.reass.i175, 4
  %i.aqr = getelementptr inbounds nuw i8, ptr %3, i64 %.idx307.i ; 3 uses
  %i.aqs = add nsw i64 %indvars.iv409.i, %i.anl
  %.idx308.i = shl i64 %i.aqs, 4
  %i.aqt = getelementptr inbounds nuw i8, ptr %3, i64 %.idx308.i ; 4 uses
  %i.aqu = load float, ptr %i.aqn, align 4, !tbaa !30 ; 2 uses
  %i.aqv = load float, ptr %i.aqp, align 4, !tbaa !30
  %i.aqw = fmul reassoc nsz arcp contract afn float %i.aqv, %i.aqu
  %i.aqx = load float, ptr %i.aqq, align 4, !tbaa !30 ; 2 uses
  %i.aqy = load float, ptr %i.aqr, align 4, !tbaa !30
  %i.aqz = fmul reassoc nsz arcp contract afn float %i.aqy, %i.aqx
  %i.ara = fadd reassoc nsz arcp contract afn float %i.aqz, %i.aqw
  %i.arb = fpext reassoc nsz arcp contract afn float %i.ara to double
  %i.arc = fadd reassoc nsz arcp contract afn float %i.aqx, %i.aqu
  %i.ard = fpext reassoc nsz arcp contract afn float %i.arc to double
  %i.are = fmul reassoc nsz arcp contract afn double %i.ard, 2.000000e+00
  %i.arf = fdiv reassoc nsz arcp contract afn double %i.arb, %i.are
  %i.arg = load float, ptr %i.aqt, align 4, !tbaa !30
  %i.arh = fpext reassoc nsz arcp contract afn float %i.arg to double
  %i.ari = fsub reassoc nsz arcp contract afn double %i.arh, %i.arf
  %i.arj = fptrunc reassoc nsz arcp contract afn double %i.ari to float
  store float %i.arj, ptr %i.aqt, align 4, !tbaa !30
  %i.ark = load float, ptr %i.aqn, align 4, !tbaa !30 ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !30
  %i.arn = fmul reassoc nsz arcp contract afn float %i.arm, %i.ark
  %i.aro = load float, ptr %i.aqq, align 4, !tbaa !30 ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqr, i64 4
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !30
  %i.arr = fmul reassoc nsz arcp contract afn float %i.arq, %i.aro
  %i.ars = fadd reassoc nsz arcp contract afn float %i.arr, %i.arn
  %i.art = fpext reassoc nsz arcp contract afn float %i.ars to double
  %i.aru = fadd reassoc nsz arcp contract afn float %i.aro, %i.ark
  %i.arv = fpext reassoc nsz arcp contract afn float %i.aru to double
  %i.arw = fmul reassoc nsz arcp contract afn double %i.arv, 2.000000e+00
  %i.arx = fdiv reassoc nsz arcp contract afn double %i.art, %i.arw
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqt, i64 4 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !30
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !30
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8
  %i.ase = load <2 x float>, ptr %i.ary, align 4, !tbaa !30
  %i.asf = fpext <2 x float> %i.ase to <2 x double> ; 2 uses
  %i.asg = extractelement <2 x double> %i.asf, i64 0
  %i.ash = fsub reassoc nsz arcp contract afn double %i.asg, %i.arx
  %i.asi = fptrunc reassoc nsz arcp contract afn double %i.ash to float
  store float %i.asi, ptr %i.ary, align 4, !tbaa !30
  %i.asj = load float, ptr %i.aqn, align 4, !tbaa !30 ; 2 uses
  %i.ask = fmul reassoc nsz arcp contract afn float %i.asa, %i.asj
  %i.asl = load float, ptr %i.aqq, align 4, !tbaa !30 ; 2 uses
  %i.asm = fmul reassoc nsz arcp contract afn float %i.asc, %i.asl
  %i.asn = fadd reassoc nsz arcp contract afn float %i.asm, %i.ask
  %i.aso = fpext reassoc nsz arcp contract afn float %i.asn to double
  %i.asp = fadd reassoc nsz arcp contract afn float %i.asl, %i.asj
  %i.asq = fpext reassoc nsz arcp contract afn float %i.asp to double
  %i.asr = fmul reassoc nsz arcp contract afn double %i.asq, 2.000000e+00
  %i.ass = fdiv reassoc nsz arcp contract afn double %i.aso, %i.asr
  %i.ast = extractelement <2 x double> %i.asf, i64 1
  %i.asu = fsub reassoc nsz arcp contract afn double %i.ast, %i.ass
  %i.asv = fptrunc reassoc nsz arcp contract afn double %i.asu to float
  store float %i.asv, ptr %i.asd, align 4, !tbaa !30
  %indvars.iv.next410.i = add nsw i64 %indvars.iv409.i, %i.aau ; 3 uses
  %i.asw = icmp slt i64 %indvars.iv.next410.i, %i.aat
  br i1 %i.asw, label %.preheader323.i, label %._crit_edge360.loopexit.i, !llvm.loop !102

._crit_edge360.loopexit.i:                        ; preds = %.preheader323.i
  %i.asx = trunc nsw i64 %indvars.iv.next410.i to i32
  br label %._crit_edge360.i

._crit_edge360.i:                                 ; preds = %._crit_edge360.loopexit.i, %.preheader328.i
  %.0284.lcssa.i = phi i32 [ %i.zq, %.preheader328.i ], [ %i.asx, %._crit_edge360.loopexit.i ] ; 3 uses
  %i.asy = icmp slt i32 %.0284.lcssa.i, %i.f
  br i1 %i.asy, label %.preheader325.i, label %.loopexit326.i

.preheader325.i:                                  ; preds = %._crit_edge360.i
  %i.asz = sub nsw i32 %.0284.lcssa.i, %i.zr
  %i.ata = sext i32 %i.asz to i64
  %i.atb = add nsw i64 %i.anl, %i.ata
  %.idx304.i = shl i64 %i.atb, 4
  %i.atc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx304.i ; 2 uses
  %i.atd = sext i32 %.0284.lcssa.i to i64
  %i.ate = add nsw i64 %i.anl, %i.atd
  %.idx305.i = shl i64 %i.ate, 4
  %i.atf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx305.i ; 3 uses
  %i.atg = load <2 x float>, ptr %i.atc, align 4, !tbaa !30
  %i.ath = fmul reassoc nsz arcp contract afn <2 x float> %i.atg, splat (float 5.000000e-01)
  %i.ati = load <2 x float>, ptr %i.atf, align 4, !tbaa !30
  %i.atj = fsub reassoc nsz arcp contract afn <2 x float> %i.ati, %i.ath
  store <2 x float> %i.atj, ptr %i.atf, align 4, !tbaa !30
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atc, i64 8
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !30
  %i.atm = fmul reassoc nsz arcp contract afn float %i.atl, 5.000000e-01
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atf, i64 8 ; 2 uses
  %i.ato = load float, ptr %i.atn, align 4, !tbaa !30
  %i.atp = fsub reassoc nsz arcp contract afn float %i.ato, %i.atm
  store float %i.atp, ptr %i.atn, align 4, !tbaa !30
  br label %.loopexit326.i

.loopexit326.i:                                   ; preds = %.preheader325.i, %._crit_edge360.i
  br i1 %i.aas, label %.preheader.i173.preheader, label %._crit_edge365.i

.preheader.i173.preheader:                        ; preds = %.loopexit326.i
  %.not1308.not = xor i1 %or.cond1089, true
  %brmerge1320 = select i1 %.not1308.not, i1 true, i1 %op.rdx1129
  br i1 %brmerge1320, label %.preheader.i173.preheader1309, label %vector.ph1006

vector.ph1006:                                    ; preds = %.preheader.i173.preheader
  %broadcast.splatinsert1008 = insertelement <8 x i64> poison, i64 %i.anl, i64 0
  %broadcast.splat1009 = shufflevector <8 x i64> %broadcast.splatinsert1008, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1006
  %index1014 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1037, %vector.body1013 ] ; 4 uses
  %vec.ind1015 = phi <8 x i64> [ %induction1012, %vector.ph1006 ], [ %vec.ind.next1038, %vector.body1013 ] ; 2 uses
  %i.atq = sub nuw nsw i64 %index1014, %i.aaq     ; 2 uses
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.atq ; 3 uses
  %i.ats = add nsw i64 %i.atq, %i.anl
  %i.att = shl i64 %i.ats, 4
  %i.atu = getelementptr inbounds nuw i8, ptr %3, i64 %i.att
  %i.atv = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %index1014 ; 3 uses
  %i.atw = add i64 %index1014, %i.anm
  %i.atx = shl i64 %i.atw, 4
  %i.aty = getelementptr inbounds nuw i8, ptr %3, i64 %i.atx
  %i.atz = add nsw <8 x i64> %vec.ind1015, %broadcast.splat1009
  %i.aua = shl <8 x i64> %i.atz, splat (i64 4)
  %wide.gep1016 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.aua ; 4 uses
  %i.aub = extractelement <8 x ptr> %wide.gep1016, i64 0
  %wide.load1017 = load <8 x float>, ptr %i.atr, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %wide.vec1018 = load <32 x float>, ptr %i.atu, align 4, !tbaa !30 ; 3 uses
  %strided.vec1019 = shufflevector <32 x float> %wide.vec1018, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1020 = shufflevector <32 x float> %wide.vec1018, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1021 = shufflevector <32 x float> %wide.vec1018, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.auc = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1019, %wide.load1017
  %wide.load1022 = load <8 x float>, ptr %i.atv, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %wide.vec1023 = load <32 x float>, ptr %i.aty, align 4, !tbaa !30 ; 3 uses
  %strided.vec1024 = shufflevector <32 x float> %wide.vec1023, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1025 = shufflevector <32 x float> %wide.vec1023, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1026 = shufflevector <32 x float> %wide.vec1023, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aud = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1024, %wide.load1022
  %i.aue = fadd reassoc nsz arcp contract afn <8 x float> %i.aud, %i.auc
  %i.auf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1022, %wide.load1017
  %i.aug = fdiv reassoc nsz arcp contract afn <8 x float> %i.aue, %i.auf
  %wide.vec1027 = load <32 x float>, ptr %i.aub, align 4, !tbaa !30 ; 3 uses
  %strided.vec1028 = shufflevector <32 x float> %wide.vec1027, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1029 = shufflevector <32 x float> %wide.vec1027, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1030 = shufflevector <32 x float> %wide.vec1027, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.auh = fadd reassoc nsz arcp contract afn <8 x float> %i.aug, %strided.vec1028
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.auh, <8 x ptr> align 4 %wide.gep1016, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !143, !noalias !144
  %wide.load1031 = load <8 x float>, ptr %i.atr, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %i.aui = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1020, %wide.load1031
  %wide.load1032 = load <8 x float>, ptr %i.atv, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %i.auj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1025, %wide.load1032
  %i.auk = fadd reassoc nsz arcp contract afn <8 x float> %i.auj, %i.aui
  %i.aul = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1032, %wide.load1031
  %i.aum = fdiv reassoc nsz arcp contract afn <8 x float> %i.auk, %i.aul
  %wide.gep1033 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1016, i64 4
  %i.aun = fadd reassoc nsz arcp contract afn <8 x float> %i.aum, %strided.vec1029
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aun, <8 x ptr> align 4 %wide.gep1033, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !145, !noalias !146
  %wide.load1034 = load <8 x float>, ptr %i.atr, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %i.auo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1021, %wide.load1034
  %wide.load1035 = load <8 x float>, ptr %i.atv, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %i.aup = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1026, %wide.load1035
  %i.auq = fadd reassoc nsz arcp contract afn <8 x float> %i.aup, %i.auo
  %i.aur = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1035, %wide.load1034
  %i.aus = fdiv reassoc nsz arcp contract afn <8 x float> %i.auq, %i.aur
  %wide.gep1036 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1016, i64 8
  %i.aut = fadd reassoc nsz arcp contract afn <8 x float> %i.aus, %strided.vec1030
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aut, <8 x ptr> align 4 %wide.gep1036, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !147, !noalias !148
  %index.next1037 = add nuw i64 %index1014, 8     ; 2 uses
  %vec.ind.next1038 = add nsw <8 x i64> %vec.ind1015, splat (i64 8)
  %i.auu = icmp eq i64 %index.next1037, %n.vec1007
  br i1 %i.auu, label %.preheader.i173.preheader1309, label %vector.body1013, !llvm.loop !115

.preheader.i173.preheader1309:                    ; preds = %vector.body1013, %.preheader.i173.preheader
  %indvars.iv420.i.ph = phi i64 [ %i.aaq, %.preheader.i173.preheader ], [ %n.vec1007, %vector.body1013 ]
  br label %.preheader.i173

.preheader.i173:                                  ; preds = %.preheader.i173.preheader1309, %.preheader.i173
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %.preheader.i173 ], [ %indvars.iv420.i.ph, %.preheader.i173.preheader1309 ] ; 5 uses
  %i.auv = sub nsw i64 %indvars.iv420.i, %i.aaq   ; 2 uses
  %i.auw = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.auv ; 3 uses
  %i.aux = add nsw i64 %i.auv, %i.anl
  %.idx301.i = shl i64 %i.aux, 4
  %i.auy = getelementptr inbounds nuw i8, ptr %3, i64 %.idx301.i ; 3 uses
  %i.auz = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %indvars.iv420.i ; 3 uses
  %.reass437.i = add i64 %indvars.iv420.i, %i.anm
  %.idx302.i = shl i64 %.reass437.i, 4
  %i.ava = getelementptr inbounds nuw i8, ptr %3, i64 %.idx302.i ; 3 uses
  %i.avb = add nsw i64 %indvars.iv420.i, %i.anl
  %.idx303.i = shl i64 %i.avb, 4
  %i.avc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx303.i ; 4 uses
  %i.avd = load float, ptr %i.auw, align 4, !tbaa !30 ; 2 uses
  %i.ave = load float, ptr %i.auy, align 4, !tbaa !30
  %i.avf = fmul reassoc nsz arcp contract afn float %i.ave, %i.avd
  %i.avg = load float, ptr %i.auz, align 4, !tbaa !30 ; 2 uses
  %i.avh = load float, ptr %i.ava, align 4, !tbaa !30
  %i.avi = fmul reassoc nsz arcp contract afn float %i.avh, %i.avg
  %i.avj = fadd reassoc nsz arcp contract afn float %i.avi, %i.avf
  %i.avk = fadd reassoc nsz arcp contract afn float %i.avg, %i.avd
  %i.avl = fdiv reassoc nsz arcp contract afn float %i.avj, %i.avk
  %i.avm = load float, ptr %i.avc, align 4, !tbaa !30
  %i.avn = fadd reassoc nsz arcp contract afn float %i.avl, %i.avm
  store float %i.avn, ptr %i.avc, align 4, !tbaa !30
  %i.avo = load float, ptr %i.auw, align 4, !tbaa !30 ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.auy, i64 4
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !30
  %i.avr = fmul reassoc nsz arcp contract afn float %i.avq, %i.avo
  %i.avs = load float, ptr %i.auz, align 4, !tbaa !30 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.ava, i64 4
  %i.avu = load float, ptr %i.avt, align 4, !tbaa !30
  %i.avv = fmul reassoc nsz arcp contract afn float %i.avu, %i.avs
  %i.avw = fadd reassoc nsz arcp contract afn float %i.avv, %i.avr
  %i.avx = fadd reassoc nsz arcp contract afn float %i.avs, %i.avo
  %i.avy = fdiv reassoc nsz arcp contract afn float %i.avw, %i.avx
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avc, i64 4 ; 2 uses
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !30
  %i.awb = fadd reassoc nsz arcp contract afn float %i.avy, %i.awa
  store float %i.awb, ptr %i.avz, align 4, !tbaa !30
  %i.awc = load float, ptr %i.auw, align 4, !tbaa !30 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !30
  %i.awf = fmul reassoc nsz arcp contract afn float %i.awe, %i.awc
  %i.awg = load float, ptr %i.auz, align 4, !tbaa !30 ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %i.ava, i64 8
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !30
  %i.awj = fmul reassoc nsz arcp contract afn float %i.awi, %i.awg
  %i.awk = fadd reassoc nsz arcp contract afn float %i.awj, %i.awf
  %i.awl = fadd reassoc nsz arcp contract afn float %i.awg, %i.awc
  %i.awm = fdiv reassoc nsz arcp contract afn float %i.awk, %i.awl
  %i.awn = getelementptr inbounds nuw i8, ptr %i.avc, i64 8 ; 2 uses
  %i.awo = load float, ptr %i.awn, align 4, !tbaa !30
  %i.awp = fadd reassoc nsz arcp contract afn float %i.awm, %i.awo
  store float %i.awp, ptr %i.awn, align 4, !tbaa !30
  %indvars.iv.next421.i = add nsw i64 %indvars.iv420.i, %i.aau ; 3 uses
  %i.awq = icmp slt i64 %indvars.iv.next421.i, %i.aat
  br i1 %i.awq, label %.preheader.i173, label %._crit_edge365.loopexit.i, !llvm.loop !116

._crit_edge365.loopexit.i:                        ; preds = %.preheader.i173
  %i.awr = trunc nsw i64 %indvars.iv.next421.i to i32
  br label %._crit_edge365.i

._crit_edge365.i:                                 ; preds = %._crit_edge365.loopexit.i, %.loopexit326.i
  %.1.lcssa.i170 = phi i32 [ %i.zr, %.loopexit326.i ], [ %i.awr, %._crit_edge365.loopexit.i ] ; 3 uses
  %i.aws = icmp slt i32 %.1.lcssa.i170, %i.f
  br i1 %i.aws, label %.preheader324.i, label %.loopexit.i171

.preheader324.i:                                  ; preds = %._crit_edge365.i
  %i.awt = sub nsw i32 %.1.lcssa.i170, %i.zr
  %i.awu = sext i32 %i.awt to i64
  %i.awv = add nsw i64 %i.anl, %i.awu
  %.idx.i172 = shl i64 %i.awv, 4
  %i.aww = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i172 ; 2 uses
  %i.awx = sext i32 %.1.lcssa.i170 to i64
  %i.awy = add nsw i64 %i.anl, %i.awx
  %.idx300.i = shl i64 %i.awy, 4
  %i.awz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx300.i ; 3 uses
  %i.axa = load <2 x float>, ptr %i.aww, align 4, !tbaa !30
  %i.axb = load <2 x float>, ptr %i.awz, align 4, !tbaa !30
  %i.axc = fadd reassoc nsz arcp contract afn <2 x float> %i.axb, %i.axa
  store <2 x float> %i.axc, ptr %i.awz, align 4, !tbaa !30
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aww, i64 8
  %i.axe = load float, ptr %i.axd, align 4, !tbaa !30
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awz, i64 8 ; 2 uses
  %i.axg = load float, ptr %i.axf, align 4, !tbaa !30
  %i.axh = fadd reassoc nsz arcp contract afn float %i.axg, %i.axe
  store float %i.axh, ptr %i.axf, align 4, !tbaa !30
  br label %.loopexit.i171

.loopexit.i171:                                   ; preds = %.preheader324.i, %._crit_edge365.i
  %indvars.iv.next428.i = add nuw nsw i64 %indvars.iv427.i, 1 ; 2 uses
  %exitcond431.not.i = icmp eq i64 %indvars.iv.next428.i, %wide.trip.count430.i
  br i1 %exitcond431.not.i, label %dt_iop_equalizer_iwtf.exit, label %.preheader329.i

dt_iop_equalizer_iwtf.exit:                       ; preds = %.loopexit.i171, %._crit_edge354.i
  call void @free(ptr noundef %i.aal) #19
  %i.axi = icmp sgt i64 %indvars.iv271, 2
  br i1 %i.axi, label %bb.m, label %.lr.ph235.preheader

._crit_edge236:                                   ; preds = %.lr.ph235, %._crit_edge198
  call void @free(ptr noundef %i.an) #19
  ret void

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv274 = phi i64 [ 1, %.lr.ph235.preheader ], [ %indvars.iv.next275, %.lr.ph235 ] ; 2 uses
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv274
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !122
  call void @free(ptr noundef %i.axk) #19
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  br i1 %exitcond278.not, label %._crit_edge236, label %.lr.ph235
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

end_hunk_1
