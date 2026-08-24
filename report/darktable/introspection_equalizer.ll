Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_equalizer?download=true
inline.NumInlined: 22
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30   ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load float, ptr %i.i, align 4, !tbaa !32 ; 2 uses
  %i.k = sext i32 %i.f to i64                     ; 20 uses
  %i.l = sext i32 %i.h to i64                     ; 6 uses
  %i.m = sext i32 %i.d to i64                     ; 4 uses
  %i.n = mul nsw i64 %i.k, %i.m                   ; 4 uses
  %i.o = mul i64 %i.n, %i.l
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !33  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load float, ptr %i.r, align 8, !tbaa !34 ; 2 uses
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
  %i.ag = uitofp nneg i32 %i.ap to double
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
  %wide.trip.count461.i = zext nneg i32 %i.h to i64
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
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !35
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
  %i.bw = ashr i32 %i.h, %i.bt                    ; 6 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.preheader373.lr.ph.i, label %.preheader372.i

.preheader373.lr.ph.i:                            ; preds = %bb.b
  %i.by = icmp sgt i32 %i.bu, 0
  %6 = zext i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv243
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !35 ; 3 uses
  br i1 %i.by, label %.preheader373.lr.ph.split.us.i, label %iter.check

iter.check:                                       ; preds = %.preheader373.lr.ph.i
  %7 = sext i32 %i.bv to i64                      ; 3 uses
  %i.cb = sext i32 %i.bu to i64
  %wide.trip.count.i = zext nneg i32 %i.bw to i64 ; 6 uses
  %invariant.gep506.i = getelementptr [4 x i8], ptr %i.ca, i64 %i.cb ; 6 uses
  %min.iters.check = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check, label %.preheader373.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check310 = icmp ult i32 %i.bw, 32
  br i1 %min.iters.check310, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %7, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %i.cd = mul nsw <8 x i64> %vec.ind, %broadcast.splat
  %i.ce = mul nsw <8 x i64> %step.add, %broadcast.splat
  %i.cf = mul nsw <8 x i64> %step.add.2, %broadcast.splat
  %i.cg = mul nsw <8 x i64> %step.add.3, %broadcast.splat
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep506.i, <8 x i64> %i.cd
  %wide.gep311 = getelementptr [4 x i8], ptr %invariant.gep506.i, <8 x i64> %i.ce
  %wide.gep312 = getelementptr [4 x i8], ptr %invariant.gep506.i, <8 x i64> %i.cf
  %wide.gep313 = getelementptr [4 x i8], ptr %invariant.gep506.i, <8 x i64> %i.cg
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep311, <8 x i1> splat (i1 true)), !tbaa !36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep312, <8 x i1> splat (i1 true)), !tbaa !36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep313, <8 x i1> splat (i1 true)), !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader372.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.preheader373.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec314 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert315 = insertelement <4 x i64> poison, i64 %7, i64 0
  %broadcast.splat316 = shufflevector <4 x i64> %broadcast.splatinsert315, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert317 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat318 = shufflevector <4 x i64> %broadcast.splatinsert317, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat318, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index319 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next322, %vec.epilog.vector.body ]
  %vec.ind320 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next323, %vec.epilog.vector.body ] ; 2 uses
  %i.ci = mul nsw <4 x i64> %vec.ind320, %broadcast.splat316
  %wide.gep321 = getelementptr [4 x i8], ptr %invariant.gep506.i, <4 x i64> %i.ci
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep321, <4 x i1> splat (i1 true)), !tbaa !36
  %index.next322 = add nuw i64 %index319, 4       ; 2 uses
  %vec.ind.next323 = add nuw nsw <4 x i64> %vec.ind320, splat (i64 4)
  %i.cj = icmp eq i64 %index.next322, %n.vec314
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n324 = icmp eq i64 %n.vec314, %wide.trip.count.i
  br i1 %cmp.n324, label %.preheader372.i, label %.preheader373.i.preheader

.preheader373.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec314, %vec.epilog.middle.block ]
  br label %.preheader373.i

.preheader373.lr.ph.split.us.i:                   ; preds = %.preheader373.lr.ph.i
  %i.ck = zext nneg i32 %i.bu to i64              ; 3 uses
  %wide.trip.count424.i = zext nneg i32 %i.bw to i64
  %invariant.gep508.i = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ck
  %xtraiter = and i64 %i.ck, 3                    ; 3 uses
  %i.cl = icmp ult i32 %i.bu, 4
  %unroll_iter = and i64 %i.ck, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod370 = icmp ne i64 %xtraiter, 0
  br label %.preheader373.us.i

.preheader373.us.i:                               ; preds = %._crit_edge.us.i, %.preheader373.lr.ph.split.us.i
  %indvars.iv421.i = phi i64 [ %indvars.iv.next422.i, %._crit_edge.us.i ], [ 0, %.preheader373.lr.ph.split.us.i ] ; 3 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv421.i to i32
  %i.cn = shl i32 %i.cm, %i.bt
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %i.co, %i.k                 ; 5 uses
  %i.cq = mul nuw nsw i64 %indvars.iv421.i, %6    ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.ca, i64 %i.cq ; 5 uses
  br i1 %i.cl, label %.epil.preheader, label %.preheader373.us.i.new

.preheader373.us.i.new:                           ; preds = %.preheader373.us.i, %.preheader373.us.i.new
  %indvars.iv416.i = phi i64 [ %indvars.iv.next417.i.3, %.preheader373.us.i.new ], [ 0, %.preheader373.us.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader373.us.i.new ], [ 0, %.preheader373.us.i ]
  %i.cs = trunc nuw nsw i64 %indvars.iv416.i to i32
  %i.ct = shl i32 %i.cs, %i.bt
  %i.cu = sext i32 %i.ct to i64
  %i.cv = add nsw i64 %i.cp, %i.cu
  %.idx355.us.i = shl i64 %i.cv, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx355.us.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !36
  %i.cy = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv416.i
  store float %i.cx, ptr %i.cy, align 4, !tbaa !36
  %indvars.iv.next417.i = or disjoint i64 %indvars.iv416.i, 1 ; 2 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv.next417.i to i32
  %i.da = shl i32 %i.cz, %i.bt
  %i.db = sext i32 %i.da to i64
  %i.dc = add nsw i64 %i.cp, %i.db
  %.idx355.us.i.1 = shl i64 %i.dc, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 %.idx355.us.i.1
  %i.de = load float, ptr %i.dd, align 4, !tbaa !36
  %i.df = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.next417.i
  store float %i.de, ptr %i.df, align 4, !tbaa !36
  %indvars.iv.next417.i.1 = or disjoint i64 %indvars.iv416.i, 2 ; 2 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv.next417.i.1 to i32
  %i.dh = shl i32 %i.dg, %i.bt
  %i.di = sext i32 %i.dh to i64
  %i.dj = add nsw i64 %i.cp, %i.di
  %.idx355.us.i.2 = shl i64 %i.dj, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx355.us.i.2
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !36
  %i.dm = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.next417.i.1
  store float %i.dl, ptr %i.dm, align 4, !tbaa !36
  %indvars.iv.next417.i.2 = or disjoint i64 %indvars.iv416.i, 3 ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv.next417.i.2 to i32
  %i.do = shl i32 %i.dn, %i.bt
  %i.dp = sext i32 %i.do to i64
  %i.dq = add nsw i64 %i.cp, %i.dp
  %.idx355.us.i.3 = shl i64 %i.dq, 4
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 %.idx355.us.i.3
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !36
  %i.dt = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.next417.i.2
  store float %i.ds, ptr %i.dt, align 4, !tbaa !36
  %indvars.iv.next417.i.3 = add nuw nsw i64 %indvars.iv416.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader373.us.i.new

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader373.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader373.us.i
  %indvars.iv416.i.epil.init = phi i64 [ 0, %.preheader373.us.i ], [ %indvars.iv.next417.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod370)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv416.i.epil = phi i64 [ %indvars.iv416.i.epil.init, %.epil.preheader ], [ %indvars.iv.next417.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.du = trunc nuw nsw i64 %indvars.iv416.i.epil to i32
  %i.dv = shl i32 %i.du, %i.bt
  %i.dw = sext i32 %i.dv to i64
  %i.dx = add nsw i64 %i.cp, %i.dw
  %.idx355.us.i.epil = shl i64 %i.dx, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 %.idx355.us.i.epil
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !36
  %i.ea = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv416.i.epil
  store float %i.dz, ptr %i.ea, align 4, !tbaa !36
  %indvars.iv.next417.i.epil = add nuw nsw i64 %indvars.iv416.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.c, !llvm.loop !42

._crit_edge.us.i:                                 ; preds = %bb.c, %._crit_edge.us.i.unr-lcssa
  %gep509.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep508.i, i64 %i.cq
  store float 0.000000e+00, ptr %gep509.i, align 4, !tbaa !36
  %indvars.iv.next422.i = add nuw nsw i64 %indvars.iv421.i, 1 ; 2 uses
  %exitcond425.not.i = icmp eq i64 %indvars.iv.next422.i, %wide.trip.count424.i
  br i1 %exitcond425.not.i, label %.preheader372.i, label %.preheader373.us.i

.preheader373.i:                                  ; preds = %.preheader373.i.preheader, %.preheader373.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader373.i ], [ %indvars.iv.i.ph, %.preheader373.i.preheader ] ; 2 uses
  %i.eb = mul nsw i64 %indvars.iv.i, %7
  %gep507.i = getelementptr [4 x i8], ptr %invariant.gep506.i, i64 %i.eb
  store float 0.000000e+00, ptr %gep507.i, align 4, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader372.i, label %.preheader373.i, !llvm.loop !44

.preheader372.i:                                  ; preds = %.preheader373.i, %._crit_edge.us.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.not377.i = icmp slt i32 %i.bu, 0
  br i1 %.not377.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader372.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv243
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !35
  %i.ee = mul nsw i32 %i.bv, %i.bw
  %i.ef = sext i32 %i.ee to i64
  %i.eg = shl nsw i64 %i.ef, 2
  %scevgep.i = getelementptr i8, ptr %i.ed, i64 %i.eg
  %i.eh = zext i32 %i.bv to i64
  %i.ei = shl nuw nsw i64 %i.eh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ei, i1 false), !tbaa !36
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader372.i
  %i.ej = trunc nuw nsw i64 %indvars.iv243 to i32
  %i.ek = shl nuw i32 1, %i.ej                    ; 7 uses
  %i.el = sdiv i32 %i.ek, 2                       ; 12 uses
  %i.em = tail call ptr @dt_alloc_aligned(i64 noundef %i.at) #19 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.em, i64 64) ]
  br i1 %i.au, label %.preheader371.lr.ph.i, label %._crit_edge393.i

.preheader371.lr.ph.i:                            ; preds = %._crit_edge.i
  %i.en = sub nsw i32 %i.f, %i.el                 ; 4 uses
  %i.eo = icmp sgt i32 %i.en, 0
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv243
  %i.eq = sext i32 %i.bv to i64
  %i.er = icmp slt i32 %i.el, %i.en
  %i.es = sext i32 %i.el to i64                   ; 6 uses
  %i.et = icmp slt i32 %i.ek, %i.en
  %i.eu = sext i32 %i.en to i64                   ; 3 uses
  %i.ev = sext i32 %i.ek to i64                   ; 3 uses
  br label %.preheader371.i

.preheader371.i:                                  ; preds = %.loopexit366.i, %.preheader371.lr.ph.i
  %indvars.iv458.i = phi i64 [ 0, %.preheader371.lr.ph.i ], [ %indvars.iv.next459.i, %.loopexit366.i ] ; 3 uses
  br i1 %i.eo, label %.lr.ph380.i, label %.preheader370.i

.lr.ph380.i:                                      ; preds = %.preheader371.i
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !35
  %i.ex = trunc nuw nsw i64 %indvars.iv458.i to i32
  %i.ey = lshr i32 %i.ex, %i.bt
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = mul nsw i64 %i.ez, %i.eq
  %i.fb = getelementptr [4 x i8], ptr %i.ew, i64 %i.fa ; 2 uses
  br label %bb.d

._crit_edge393.i:                                 ; preds = %.loopexit366.i, %._crit_edge.i
  tail call void @free(ptr noundef %i.em) #19
  %i.fc = tail call ptr @dt_alloc_aligned(i64 noundef %i.ax) #19 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fc, i64 64) ]
  br i1 %i.ay, label %.preheader362.lr.ph.i, label %dt_iop_equalizer_wtf.exit

.preheader362.lr.ph.i:                            ; preds = %._crit_edge393.i
  %i.fd = sub nsw i32 %i.h, %i.el                 ; 4 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv243
  %i.fg = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.fh = icmp slt i32 %i.el, %i.fd
  %i.fi = sext i32 %i.el to i64                   ; 7 uses
  %i.fj = mul nsw i64 %i.fi, %i.k
  %i.fk = icmp slt i32 %i.ek, %i.fd
  %i.fl = sext i32 %i.fd to i64                   ; 3 uses
  %i.fm = sext i32 %i.ek to i64                   ; 3 uses
  br label %.preheader362.i

.preheader370.i:                                  ; preds = %bb.d, %.preheader371.i
  %i.fn = mul nsw i64 %indvars.iv458.i, %i.k      ; 11 uses
  br i1 %i.er, label %.preheader364.lr.ph.i, label %._crit_edge383.i

.preheader364.lr.ph.i:                            ; preds = %.preheader370.i
  %invariant.op.i = add nsw i64 %i.fn, %i.es
  br label %.preheader364.i

bb.d:                                             ; preds = %bb.d, %.lr.ph380.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph380.i ], [ %indvars.iv.next430.i, %bb.d ] ; 3 uses
  %i.fo = trunc nsw i64 %indvars.iv429.i to i32
  %i.fp = ashr i32 %i.fo, %i.bt
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr [4 x i8], ptr %i.fb, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !36
  %indvars.iv.next430.i = add nsw i64 %indvars.iv429.i, %i.es ; 3 uses
  %i.ft = trunc nsw i64 %indvars.iv.next430.i to i32
  %i.fu = ashr i32 %i.ft, %i.bt
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr [4 x i8], ptr %i.fb, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !36
  %i.fy = fsub reassoc nsz arcp contract afn float %i.fs, %i.fx
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fy)
  %i.ga = fpext reassoc nsz arcp contract afn float %i.fz to double
  %i.gb = fadd reassoc nsz arcp contract afn double %i.ga, 1.000000e-05
  %i.gc = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.gb
  %i.gd = fptrunc reassoc nsz arcp contract afn double %i.gc to float
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.em, i64 %indvars.iv429.i
  store float %i.gd, ptr %i.ge, align 4, !tbaa !36
  %i.gf = icmp slt i64 %indvars.iv.next430.i, %i.eu
  br i1 %i.gf, label %bb.d, label %.preheader370.i

.preheader364.i:                                  ; preds = %.preheader364.i, %.preheader364.lr.ph.i
  %indvars.iv436.i = phi i64 [ %i.es, %.preheader364.lr.ph.i ], [ %indvars.iv.next437.i, %.preheader364.i ] ; 5 uses
  %i.gg = sub nsw i64 %indvars.iv436.i, %i.es     ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.gg ; 3 uses
  %i.gi = add nsw i64 %i.gg, %i.fn
  %.idx352.i = shl i64 %i.gi, 4
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx352.i ; 3 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.em, i64 %indvars.iv436.i ; 3 uses
  %.reass.i = add i64 %invariant.op.i, %indvars.iv436.i
  %.idx353.i = shl i64 %.reass.i, 4
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx353.i ; 3 uses
  %i.gm = add nsw i64 %indvars.iv436.i, %i.fn
  %.idx354.i = shl i64 %i.gm, 4
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 %.idx354.i ; 4 uses
  %i.go = load float, ptr %i.gh, align 4, !tbaa !36 ; 2 uses
  %i.gp = load float, ptr %i.gj, align 4, !tbaa !36
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.go
  %i.gr = load float, ptr %i.gk, align 4, !tbaa !36 ; 2 uses
  %i.gs = load float, ptr %i.gl, align 4, !tbaa !36
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, %i.gr
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, %i.gq
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gr, %i.go
  %i.gw = fdiv reassoc nsz arcp contract afn float %i.gu, %i.gv
  %i.gx = load float, ptr %i.gn, align 4, !tbaa !36
  %i.gy = fsub reassoc nsz arcp contract afn float %i.gx, %i.gw
  store float %i.gy, ptr %i.gn, align 4, !tbaa !36
  %i.gz = load float, ptr %i.gh, align 4, !tbaa !36 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !36
  %i.hc = fmul reassoc nsz arcp contract afn float %i.hb, %i.gz
  %i.hd = load float, ptr %i.gk, align 4, !tbaa !36 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !36
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %i.hd
  %i.hh = fadd reassoc nsz arcp contract afn float %i.hg, %i.hc
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hd, %i.gz
  %i.hj = fdiv reassoc nsz arcp contract afn float %i.hh, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !36
  %i.hm = fsub reassoc nsz arcp contract afn float %i.hl, %i.hj
  store float %i.hm, ptr %i.hk, align 4, !tbaa !36
  %i.hn = load float, ptr %i.gh, align 4, !tbaa !36 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !36
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, %i.hn
  %i.hr = load float, ptr %i.gk, align 4, !tbaa !36 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !36
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, %i.hr
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hu, %i.hq
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hr, %i.hn
  %i.hx = fdiv reassoc nsz arcp contract afn float %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !36
  %i.ia = fsub reassoc nsz arcp contract afn float %i.hz, %i.hx
  store float %i.ia, ptr %i.hy, align 4, !tbaa !36
  %indvars.iv.next437.i = add nsw i64 %indvars.iv436.i, %i.ev ; 3 uses
  %i.ib = icmp slt i64 %indvars.iv.next437.i, %i.eu
  br i1 %i.ib, label %.preheader364.i, label %._crit_edge383.loopexit.i

._crit_edge383.loopexit.i:                        ; preds = %.preheader364.i
  %i.ic = trunc nsw i64 %indvars.iv.next437.i to i32
  br label %._crit_edge383.i

._crit_edge383.i:                                 ; preds = %.preheader370.i, %._crit_edge383.loopexit.i
  %.0316.lcssa.i = phi i32 [ %i.ic, %._crit_edge383.loopexit.i ], [ %i.el, %.preheader370.i ] ; 3 uses
  %i.id = icmp slt i32 %.0316.lcssa.i, %i.f
  br i1 %i.id, label %.preheader368.i, label %.loopexit369.i

.preheader368.i:                                  ; preds = %._crit_edge383.i
  %i.ie = sub nsw i32 %.0316.lcssa.i, %i.el
  %i.if = sext i32 %i.ie to i64
  %i.ig = add nsw i64 %i.fn, %i.if
  %.idx350.i = shl i64 %i.ig, 4
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 %.idx350.i ; 2 uses
  %i.ii = sext i32 %.0316.lcssa.i to i64
  %i.ij = add nsw i64 %i.fn, %i.ii
  %.idx351.i = shl i64 %i.ij, 4
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 %.idx351.i ; 3 uses
  %i.il = load <2 x float>, ptr %i.ih, align 4, !tbaa !36
  %i.im = load <2 x float>, ptr %i.ik, align 4, !tbaa !36
  %i.in = fsub reassoc nsz arcp contract afn <2 x float> %i.im, %i.il
  store <2 x float> %i.in, ptr %i.ik, align 4, !tbaa !36
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !36
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !36
  %i.is = fsub reassoc nsz arcp contract afn float %i.ir, %i.ip
  store float %i.is, ptr %i.iq, align 4, !tbaa !36
  br label %.loopexit369.i

.loopexit369.i:                                   ; preds = %.preheader368.i, %._crit_edge383.i
  %i.it = add nsw i64 %i.fn, %i.es                ; 2 uses
  %.idx348.i = shl i64 %i.it, 4
end_hunk_0
