Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_soften?download=true
inline.NumInlined: 19
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"soften\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"create a softened image using the Orton effect\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"creative\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"linear, RGB, display-referred\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"linear, RGB\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"the size of blur\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"the saturation of blur\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" EV\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"the brightness of blur\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"the mix of effect\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.22, i64 16, ptr getelementptr (i8, ptr @introspection_linear, i64 352), i64 1120, i64 688 }, align 8
@introspection_init.f4 = internal global [5 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr null], align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"dt_iop_soften_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.9, ptr @.str.9, ptr @.str.20, i64 4, i64 0, ptr null }, float 0.000000e+00, float 1.000000e+02, float 5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.12, ptr @.str.12, ptr @.str.20, i64 4, i64 4, ptr null }, float 0.000000e+00, float 1.000000e+02, float 1.000000e+02, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.14, ptr @.str.14, ptr @.str.20, i64 4, i64 8, ptr null }, float -2.000000e+00, float 2.000000e+00, float 3.300000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.17, ptr @.str.17, ptr @.str.21, i64 4, i64 12, ptr null }, float 0.000000e+00, float 1.000000e+02, float 5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.22, ptr @.str.20, ptr @.str.20, ptr @.str.20, i64 16, i64 0, ptr null }, i64 4, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 144
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
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #19
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #19
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !11  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !31
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !33
  %i.k = fpext reassoc nsz arcp contract afn float %i.j to double
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, 1.000000e-02
  %i.m = fptrunc reassoc nsz arcp contract afn double %i.l to float ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = shl nsw i64 %i.p, 2
  %i.u = mul i64 %i.t, %i.s                       ; 4 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.h, 5.000000e-01 ; 2 uses
  %.not55 = icmp eq i64 %i.u, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.v = add i64 %i.u, -4                         ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 32
  br i1 %min.iters.check, label %.lr.ph.preheader97, label %vector.memcheck

.lr.ph.preheader97:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.054.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ad, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = shl i64 %i.u, 2                          ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.y
  %i.z = getelementptr i8, ptr %2, i64 %i.y
  %scevgep69 = getelementptr i8, ptr %i.z, i64 -4
  %bound0 = icmp ult ptr %3, %scevgep69
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = and i64 %i.x, 7                         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 8, i64 %i.aa
  %n.vec = sub nsw i64 %i.x, %i.ac                ; 2 uses
  %i.ad = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.m, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat71 = shufflevector <8 x float> %broadcast.splatinsert70, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %wide.vec = load <32 x float>, ptr %i.ae, align 4, !tbaa !36, !alias.scope !37 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec72 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec73 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 5 uses
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec72)
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.af, <8 x float> %strided.vec73) ; 6 uses
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec72)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ah, <8 x float> %strided.vec73) ; 3 uses
  %i.aj = fsub reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ai ; 5 uses
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.ag ; 3 uses
  %i.al = fcmp reassoc nsz arcp contract afn une <8 x float> %i.aj, zeroinitializer ; 5 uses
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.an = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.am, splat (float 5.000000e-01)
  %i.ao = fpext reassoc nsz arcp contract afn <8 x float> %i.ag to <8 x double>
  %i.ap = fpext reassoc nsz arcp contract afn <8 x float> %i.ai to <8 x double>
  %i.aq = fadd reassoc nsz arcp contract afn <8 x double> %i.ao, %i.ap
  %i.ar = fsub reassoc nsz arcp contract afn <8 x double> splat (double 2.000000e+00), %i.aq
  %i.as = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ar to <8 x float>
  %predphi = select <8 x i1> %i.an, <8 x float> %i.ak, <8 x float> %i.as
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %predphi, <8 x float> splat (float f0x37800000))
  %i.au = fdiv reassoc nsz arcp contract afn <8 x float> %i.aj, %i.at
  %i.av = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.ag, %strided.vec ; 2 uses
  %i.aw = xor <8 x i1> %i.av, splat (i1 true)
  %i.ax = select <8 x i1> %i.al, <8 x i1> %i.aw, <8 x i1> zeroinitializer ; 2 uses
  %i.ay = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.ag, %strided.vec72 ; 2 uses
  %i.az = xor <8 x i1> %i.ay, splat (i1 true)
  %i.ba = select <8 x i1> %i.ax, <8 x i1> %i.az, <8 x i1> zeroinitializer
  %i.bb = fcmp reassoc nsz arcp contract afn une <8 x float> %i.ag, %strided.vec73
  %i.bc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec72
  %i.bd = fdiv reassoc nsz arcp contract afn <8 x float> %i.bc, %i.aj
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.bd, splat (float 4.000000e+00)
  %i.bf = select <8 x i1> %i.ax, <8 x i1> %i.ay, <8 x i1> zeroinitializer
  %i.bg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec73, %strided.vec
  %i.bh = fdiv reassoc nsz arcp contract afn <8 x float> %i.bg, %i.aj
  %i.bi = fadd reassoc nsz arcp contract afn <8 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = select <8 x i1> %i.al, <8 x i1> %i.av, <8 x i1> zeroinitializer
  %i.bk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec72, %strided.vec73
  %i.bl = fdiv reassoc nsz arcp contract afn <8 x float> %i.bk, %i.aj
  %i.bm = select <8 x i1> %i.ba, <8 x i1> %i.bb, <8 x i1> zeroinitializer
  %predphi74 = select nsz <8 x i1> %i.bm, <8 x float> zeroinitializer, <8 x float> %i.be
  %predphi75 = select nsz <8 x i1> %i.bf, <8 x float> %i.bi, <8 x float> %predphi74
  %predphi76 = select nsz <8 x i1> %i.bj, <8 x float> %i.bl, <8 x float> %predphi75
  %i.bn = fpext reassoc nsz arcp contract afn <8 x float> %predphi76 to <8 x double>
  %i.bo = fmul reassoc nsz arcp contract afn <8 x double> %i.bn, splat (double f0x3FC5555555555555) ; 3 uses
  %i.bp = fptrunc reassoc nsz arcp contract afn <8 x double> %i.bo to <8 x float> ; 3 uses
  %6 = fcmp reassoc nsz arcp contract afn olt <8 x double> %i.bo, splat (double f0xB690000000000000) ; 2 uses
  %7 = xor <8 x i1> %6, splat (i1 true)
  %i.bq = select <8 x i1> %i.al, <8 x i1> %7, <8 x i1> zeroinitializer ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt <8 x double> %i.bo, splat (double f0x3FF0000010000000) ; 2 uses
  %i.bs = select <8 x i1> %i.bq, <8 x i1> %i.br, <8 x i1> zeroinitializer
  %i.bt = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.bp, splat (float -1.000000e+00)
  %8 = select <8 x i1> %i.al, <8 x i1> %6, <8 x i1> zeroinitializer
  %i.bu = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.bp, splat (float 1.000000e+00)
  %i.bv = xor <8 x i1> %i.br, splat (i1 true)
  %i.bw = select <8 x i1> %i.bq, <8 x i1> %i.bv, <8 x i1> zeroinitializer
  %predphi77 = select nsz <8 x i1> %i.al, <8 x float> %i.au, <8 x float> zeroinitializer
  %predphi78 = select nsz <8 x i1> %8, <8 x float> %i.bu, <8 x float> zeroinitializer
  %predphi79 = select nsz <8 x i1> %i.bw, <8 x float> %i.bp, <8 x float> %predphi78
  %predphi80 = select nsz <8 x i1> %i.bs, <8 x float> %i.bt, <8 x float> %predphi79
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %predphi77, %broadcast.splat ; 3 uses
  %i.by = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, %broadcast.splat71 ; 3 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %vec.ind ; 5 uses
  %i.bz = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.bx, zeroinitializer
  %i.ca = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.bx, splat (float 1.000000e+00)
  %i.cb = select reassoc nsz arcp contract afn <8 x i1> %i.ca, <8 x float> %i.bx, <8 x float> splat (float 1.000000e+00)
  %i.cc = select reassoc nsz arcp contract afn <8 x i1> %i.bz, <8 x float> %i.cb, <8 x float> zeroinitializer ; 4 uses
  %i.cd = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.by, zeroinitializer
  %i.ce = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.by, splat (float 1.000000e+00)
  %i.cf = select reassoc nsz arcp contract afn <8 x i1> %i.ce, <8 x float> %i.by, <8 x float> splat (float 1.000000e+00)
  %i.cg = select reassoc nsz arcp contract afn <8 x i1> %i.cd, <8 x float> %i.cf, <8 x float> zeroinitializer ; 7 uses
  %i.ch = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.cc, zeroinitializer ; 7 uses
  %i.ci = xor <8 x i1> %i.ch, splat (i1 true)     ; 6 uses
  %i.cj = fpext reassoc nsz arcp contract afn <8 x float> %i.cg to <8 x double> ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cg, splat (float 5.000000e-01)
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, %i.cg
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, %i.cc
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %i.cl, %i.cm
  %i.co = fpext reassoc nsz arcp contract afn <8 x float> %i.cc to <8 x double>
  %i.cp = fadd reassoc nsz arcp contract afn <8 x double> %i.co, splat (double 1.000000e+00)
  %i.cq = fmul reassoc nsz arcp contract afn <8 x double> %i.cp, %i.cj
  %i.cr = fptrunc reassoc nsz arcp contract afn <8 x double> %i.cq to <8 x float>
  %predphi81 = select <8 x i1> %i.ck, <8 x float> %i.cr, <8 x float> %i.cn ; 5 uses
  %i.cs = fmul reassoc nsz arcp contract afn <8 x double> %i.cj, splat (double 2.000000e+00)
  %i.ct = fpext reassoc nsz arcp contract afn <8 x float> %predphi81 to <8 x double>
  %i.cu = fsub reassoc nsz arcp contract afn <8 x double> %i.cs, %i.ct
  %i.cv = fptrunc reassoc nsz arcp contract afn <8 x double> %i.cu to <8 x float> ; 10 uses
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %predphi80, splat (float 6.000000e+00) ; 8 uses
  %i.cx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cw, splat (float 4.000000e+00) ; 2 uses
  %i.cy = select <8 x i1> %i.cx, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -4.000000e+00)
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cw ; 5 uses
  %i.da = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cz, splat (float 1.000000e+00) ; 2 uses
  %i.db = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.cz, splat (float 3.000000e+00)
  %i.dc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cz, splat (float 4.000000e+00)
  %i.dd = fsub reassoc nsz arcp contract afn <8 x float> %predphi81, %i.cv ; 6 uses
  %i.de = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 4.000000e+00), %i.cz
  %i.df = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.de
  %i.dg = fadd reassoc nsz arcp contract afn <8 x float> %i.df, %i.cv
  %i.dh = select reassoc nsz arcp contract afn <8 x i1> %i.dc, <8 x float> %i.dg, <8 x float> %i.cv
  %i.di = select <8 x i1> %i.ci, <8 x i1> %i.da, <8 x i1> zeroinitializer
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.cz
  %i.dk = fadd reassoc nsz arcp contract afn <8 x float> %i.dj, %i.cv
  %i.dl = or <8 x i1> %i.da, %i.db
  %.not92 = select <8 x i1> %i.ch, <8 x i1> splat (i1 true), <8 x i1> %i.dl
  %predphi82 = select nsz <8 x i1> %.not92, <8 x float> %i.dh, <8 x float> %predphi81
  %predphi83 = select nsz <8 x i1> %i.di, <8 x float> %i.dk, <8 x float> %predphi82
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi83, <8 x ptr> align 4 %wide.gep, <8 x i1> %i.ci), !tbaa !36, !alias.scope !40, !noalias !37
  %i.dm = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cw, splat (float 1.000000e+00) ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.cw, splat (float 3.000000e+00)
  %i.do = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 4.000000e+00), %i.cw
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.do
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.dp, %i.cv
  %i.dr = select reassoc nsz arcp contract afn <8 x i1> %i.cx, <8 x float> %i.dq, <8 x float> %i.cv
  %i.ds = select <8 x i1> %i.ci, <8 x i1> %i.dm, <8 x i1> zeroinitializer
  %i.dt = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.cw
  %i.du = fadd reassoc nsz arcp contract afn <8 x float> %i.dt, %i.cv
  %i.dv = or <8 x i1> %i.dm, %i.dn
  %.not94 = select <8 x i1> %i.ch, <8 x i1> splat (i1 true), <8 x i1> %i.dv
  %predphi84 = select nsz <8 x i1> %.not94, <8 x float> %i.dr, <8 x float> %predphi81
  %predphi85 = select nsz <8 x i1> %i.ds, <8 x float> %i.du, <8 x float> %predphi84
  %wide.gep86 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi85, <8 x ptr> align 4 %wide.gep86, <8 x i1> %i.ci), !tbaa !36, !alias.scope !40, !noalias !37
  %i.dw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cw, splat (float 2.000000e+00)
  %i.dx = select <8 x i1> %i.dw, <8 x float> splat (float -2.000000e+00), <8 x float> splat (float 4.000000e+00)
  %i.dy = fadd reassoc nsz arcp contract afn <8 x float> %i.dx, %i.cw ; 5 uses
  %i.dz = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dy, splat (float 1.000000e+00) ; 2 uses
  %i.ea = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.dy, splat (float 3.000000e+00)
  %i.eb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dy, splat (float 4.000000e+00)
  %i.ec = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 4.000000e+00), %i.dy
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.ec
  %i.ee = fadd reassoc nsz arcp contract afn <8 x float> %i.ed, %i.cv
  %i.ef = select reassoc nsz arcp contract afn <8 x i1> %i.eb, <8 x float> %i.ee, <8 x float> %i.cv
  %i.eg = select <8 x i1> %i.ci, <8 x i1> %i.dz, <8 x i1> zeroinitializer
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dy
  %i.ei = fadd reassoc nsz arcp contract afn <8 x float> %i.eh, %i.cv
  %i.ej = or <8 x i1> %i.dz, %i.ea
  %.not96 = select <8 x i1> %i.ch, <8 x i1> splat (i1 true), <8 x i1> %i.ej
  %predphi87 = select nsz <8 x i1> %.not96, <8 x float> %i.ef, <8 x float> %predphi81
  %predphi88 = select nsz <8 x i1> %i.eg, <8 x float> %i.ei, <8 x float> %predphi87
  %wide.gep89 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi88, <8 x ptr> align 4 %wide.gep89, <8 x i1> %i.ci), !tbaa !36, !alias.scope !40, !noalias !37
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cg, <8 x ptr> align 4 %wide.gep89, <8 x i1> %i.ch), !tbaa !36, !alias.scope !40, !noalias !37
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cg, <8 x ptr> align 4 %wide.gep86, <8 x i1> %i.ch), !tbaa !36, !alias.scope !40, !noalias !37
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cg, <8 x ptr> align 4 %wide.gep, <8 x i1> %i.ch), !tbaa !36, !alias.scope !40, !noalias !37
  %wide.gep90 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep90, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !40, !noalias !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %.lr.ph.preheader97, label %vector.body, !llvm.loop !42

._crit_edge:                                      ; preds = %hsl2rgb.exit, %bb.b
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.en = load float, ptr %i.em, align 8, !tbaa !45 ; 3 uses
  %i.eo = load <2 x i32>, ptr %i.el, align 4, !tbaa !46
  %i.ep = sitofp <2 x i32> %i.eo to <2 x float>   ; 2 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = fmul reassoc nsz arcp contract afn float %i.en, %i.eq
  %i.es = extractelement <2 x float> %i.ep, i64 1
  %i.et = fmul reassoc nsz arcp contract afn float %i.en, %i.es
  %i.eu = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.er, float noundef %i.et) #20
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, f0x3C23D70A
  %i.ew = fptosi float %i.ev to i32               ; 2 uses
  %i.ex = sitofp reassoc nsz arcp contract afn i32 %i.ew to double
  %i.ey = load float, ptr %i.b, align 4, !tbaa !47
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, 1.000000e+00
  %i.fa = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ez, float 1.000000e+02)
  %i.fb = fpext nnan float %i.fa to double
  %i.fc = fmul reassoc nnan nsz arcp contract afn double %i.ex, 1.000000e-02
  %i.fd = fmul reassoc nsz arcp contract afn double %i.fc, %i.fb
  %i.fe = fptosi double %i.fd to i32
  %i.ff = sitofp reassoc nsz arcp contract afn i32 %i.ew to float ; 2 uses
  %i.fg = sitofp reassoc nsz arcp contract afn i32 %i.fe to float
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !48
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fi, %i.fg
  %i.fk = fdiv reassoc nsz arcp contract afn float %i.fj, %i.en
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.fk) ; 2 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ogt float %i.fl, %i.ff
  %. = select reassoc nsz arcp contract afn i1 %i.fm, float %i.ff, float %i.fl
  %i.fn = fptosi float %. to i32
  %i.fo = sext i32 %i.fn to i64
  tail call void @dt_box_mean(ptr noundef %3, i64 noundef %i.s, i64 noundef %i.p, i32 noundef 4, i64 noundef %i.fo, i32 noundef 8) #19
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !49
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, f0x3C23D70A
  %i.fs = load i32, ptr %i.n, align 4, !tbaa !34
  %i.ft = sext i32 %i.fs to i64
  %i.fu = load i32, ptr %i.q, align 4, !tbaa !35
  %i.fv = sext i32 %i.fu to i64
  tail call void @dt_iop_image_linear_blend(ptr noundef %3, float noundef %i.fr, ptr noundef %2, i64 noundef %i.ft, i64 noundef %i.fv, i64 noundef 4) #19
  br label %bb.ac

.lr.ph:                                           ; preds = %.lr.ph.preheader97, %hsl2rgb.exit
  %.054 = phi i64 [ %i.jz, %hsl2rgb.exit ], [ %.054.ph, %.lr.ph.preheader97 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.054 ; 3 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !36 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !36 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !36 ; 5 uses
  %i.gc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fx, float %i.fz)
  %i.gd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gc, float %i.gb) ; 6 uses
  %i.ge = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fx, float %i.fz)
  %i.gf = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ge, float %i.gb) ; 3 uses
  %i.gg = fsub reassoc nsz arcp contract afn float %i.gd, %i.gf ; 5 uses
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gf, %i.gd ; 3 uses
  %i.gi = fcmp reassoc nsz arcp contract afn une float %i.gg, 0.000000e+00
  br i1 %i.gi, label %bb.c, label %rgb2hsl.exit

bb.c:                                             ; preds = %.lr.ph
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gh, 5.000000e-01
  %i.gk = fcmp reassoc nsz arcp contract afn olt float %i.gj, 5.000000e-01
  br i1 %i.gk, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gl = fpext reassoc nsz arcp contract afn float %i.gd to double
  %i.gm = fpext reassoc nsz arcp contract afn float %i.gf to double
  %i.gn = fadd reassoc nsz arcp contract afn double %i.gl, %i.gm
  %i.go = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.gn
  %i.gp = fptrunc reassoc nsz arcp contract afn double %i.go to float
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi float [ %i.gp, %bb.d ], [ %i.gh, %bb.c ]
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.gr = fdiv reassoc nsz arcp contract afn float %i.gg, %i.gq ; 3 uses
  %i.gs = fcmp reassoc nsz arcp contract afn oeq float %i.gd, %i.fx
  br i1 %i.gs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gt = fsub reassoc nsz arcp contract afn float %i.fz, %i.gb
  %i.gu = fdiv reassoc nsz arcp contract afn float %i.gt, %i.gg
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.gv = fcmp reassoc nsz arcp contract afn oeq float %i.gd, %i.fz
  br i1 %i.gv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gw = fsub reassoc nsz arcp contract afn float %i.gb, %i.fx
  %i.gx = fdiv reassoc nsz arcp contract afn float %i.gw, %i.gg
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gx, 2.000000e+00
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.gz = fcmp reassoc nsz arcp contract afn oeq float %i.gd, %i.gb
  br i1 %i.gz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ha = fsub reassoc nsz arcp contract afn float %i.fx, %i.fz
  %i.hb = fdiv reassoc nsz arcp contract afn float %i.ha, %i.gg
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, 4.000000e+00
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.043.i.a = phi nsz float [ %i.gu, %bb.f ], [ %i.gy, %bb.h ], [ %i.hc, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.hd = fpext reassoc nsz arcp contract afn float %.043.i.a to double
  %i.he = fmul reassoc nsz arcp contract afn double %i.hd, f0x3FC5555555555555 ; 3 uses
  %i.hf = fptrunc reassoc nsz arcp contract afn double %i.he to float ; 3 uses
  %i.hg = fcmp reassoc nsz arcp contract afn olt double %i.he, f0xB690000000000000
  br i1 %i.hg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hh = fadd reassoc nnan nsz arcp contract afn float %i.hf, 1.000000e+00
  br label %rgb2hsl.exit

bb.m:                                             ; preds = %bb.k
  %i.hi = fcmp reassoc nsz arcp contract afn ogt double %i.he, f0x3FF0000010000000
  br i1 %i.hi, label %bb.n, label %rgb2hsl.exit

bb.n:                                             ; preds = %bb.m
  %i.hj = fadd reassoc nnan nsz arcp contract afn float %i.hf, -1.000000e+00
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %.lr.ph, %bb.l, %bb.m, %bb.n
  %.1.i.a = phi nsz float [ %i.gr, %bb.l ], [ %i.gr, %bb.n ], [ %i.gr, %bb.m ], [ 0.000000e+00, %.lr.ph ]
  %.0.i = phi nsz float [ %i.hh, %bb.l ], [ %i.hj, %bb.n ], [ %i.hf, %bb.m ], [ 0.000000e+00, %.lr.ph ]
  %i.hk = fmul reassoc nsz arcp contract afn float %.1.i.a, %i.m ; 3 uses
  %.reass = fmul reassoc nsz arcp contract afn float %i.gh, %invariant.op ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.054 ; 7 uses
  %i.hm = fcmp reassoc nsz arcp contract afn oge float %i.hk, 0.000000e+00
  %i.hn = fcmp reassoc nsz arcp contract afn ole float %i.hk, 1.000000e+00
  %i.ho = select reassoc nsz arcp contract afn i1 %i.hn, float %i.hk, float 1.000000e+00
  %i.hp = select reassoc nsz arcp contract afn i1 %i.hm, float %i.ho, float 0.000000e+00 ; 4 uses
  %i.hq = fcmp reassoc nsz arcp contract afn oge float %.reass, 0.000000e+00
  %i.hr = fcmp reassoc nsz arcp contract afn ole float %.reass, 1.000000e+00
  %i.hs = select reassoc nsz arcp contract afn i1 %i.hr, float %.reass, float 1.000000e+00
  %i.ht = select reassoc nsz arcp contract afn i1 %i.hq, float %i.hs, float 0.000000e+00 ; 7 uses
  %i.hu = fcmp reassoc nsz arcp contract afn oeq float %i.hp, 0.000000e+00
  br i1 %i.hu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %rgb2hsl.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store float %i.ht, ptr %i.hv, align 4, !tbaa !36
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store float %i.ht, ptr %i.hw, align 4, !tbaa !36
  store float %i.ht, ptr %i.hl, align 4, !tbaa !36
  br label %hsl2rgb.exit

bb.p:                                             ; preds = %rgb2hsl.exit
  %i.hx = fpext reassoc nsz arcp contract afn float %i.ht to double ; 2 uses
  %i.hy = fcmp reassoc nsz arcp contract afn olt float %i.ht, 5.000000e-01
  br i1 %i.hy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hz = fpext reassoc nsz arcp contract afn float %i.hp to double
  %i.ia = fadd reassoc nsz arcp contract afn double %i.hz, 1.000000e+00
  %i.ib = fmul reassoc nsz arcp contract afn double %i.ia, %i.hx
  %i.ic = fptrunc reassoc nsz arcp contract afn double %i.ib to float
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.id = fadd reassoc nsz arcp contract afn float %i.hp, %i.ht
  %i.ie = fmul reassoc nsz arcp contract afn float %i.ht, %i.hp
  %i.if = fsub reassoc nsz arcp contract afn float %i.id, %i.ie
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ig = phi float [ %i.ic, %bb.q ], [ %i.if, %bb.r ] ; 10 uses
  %i.ih = fmul reassoc nsz arcp contract afn double %i.hx, 2.000000e+00
  %i.ii = fpext reassoc nsz arcp contract afn float %i.ig to double
  %i.ij = fsub reassoc nsz arcp contract afn double %i.ih, %i.ii
  %i.ik = fptrunc reassoc nsz arcp contract afn double %i.ij to float ; 15 uses
  %i.il = fmul reassoc nsz arcp contract afn float %.0.i, 6.000000e+00 ; 8 uses
  %i.im = fcmp reassoc nsz arcp contract afn olt float %i.il, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.im, float 2.000000e+00, float -4.000000e+00
  %i.in = fadd reassoc nsz arcp contract afn float %.v.i, %i.il ; 5 uses
  %i.io = fcmp reassoc nsz arcp contract afn olt float %i.in, 1.000000e+00
  br i1 %i.io, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ip = fsub reassoc nsz arcp contract afn float %i.ig, %i.ik
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, %i.in
  %i.ir = fadd reassoc nsz arcp contract afn float %i.iq, %i.ik
  br label %hue2rgb.exit.i

bb.u:                                             ; preds = %bb.s
  %i.is = fcmp reassoc nsz arcp contract afn olt float %i.in, 3.000000e+00
  br i1 %i.is, label %hue2rgb.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.it = fcmp reassoc nsz arcp contract afn olt float %i.in, 4.000000e+00
  %i.iu = fsub reassoc nsz arcp contract afn float %i.ig, %i.ik
  %i.iv = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.in
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iu, %i.iv
  %i.ix = fadd reassoc nsz arcp contract afn float %i.iw, %i.ik
  %i.iy = select reassoc nsz arcp contract afn i1 %i.it, float %i.ix, float %i.ik
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.v, %bb.u, %bb.t
  %.0.i.i = phi nsz float [ %i.ir, %bb.t ], [ %i.iy, %bb.v ], [ %i.ig, %bb.u ]
  store float %.0.i.i, ptr %i.hl, align 4, !tbaa !36
  %i.iz = fcmp reassoc nsz arcp contract afn olt float %i.il, 1.000000e+00
  br i1 %i.iz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %hue2rgb.exit.i
  %i.ja = fsub reassoc nsz arcp contract afn float %i.ig, %i.ik
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %i.il
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.ik
  br label %hue2rgb.exit36.i

bb.x:                                             ; preds = %hue2rgb.exit.i
  %i.jd = fcmp reassoc nsz arcp contract afn olt float %i.il, 3.000000e+00
  br i1 %i.jd, label %hue2rgb.exit36.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.je = fsub reassoc nsz arcp contract afn float %i.ig, %i.ik
  %i.jf = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.il
  %i.jg = fmul reassoc nsz arcp contract afn float %i.je, %i.jf
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jg, %i.ik
  %i.ji = select reassoc nsz arcp contract afn i1 %i.im, float %i.jh, float %i.ik
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.y, %bb.x, %bb.w
  %.0.i35.i = phi nsz float [ %i.jc, %bb.w ], [ %i.ji, %bb.y ], [ %i.ig, %bb.x ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store float %.0.i35.i, ptr %i.jj, align 4, !tbaa !36
  %i.jk = fcmp reassoc nsz arcp contract afn ogt float %i.il, 2.000000e+00
  %.v34.i = select i1 %i.jk, float -2.000000e+00, float 4.000000e+00
  %i.jl = fadd reassoc nsz arcp contract afn float %.v34.i, %i.il ; 5 uses
  %i.jm = fcmp reassoc nsz arcp contract afn olt float %i.jl, 1.000000e+00
  br i1 %i.jm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %hue2rgb.exit36.i
  %i.jn = fsub reassoc nsz arcp contract afn float %i.ig, %i.ik
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, %i.jl
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %i.ik
  br label %hue2rgb.exit38.i

bb.aa:                                            ; preds = %hue2rgb.exit36.i
  %i.jq = fcmp reassoc nsz arcp contract afn olt float %i.jl, 3.000000e+00
  br i1 %i.jq, label %hue2rgb.exit38.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jr = fcmp reassoc nsz arcp contract afn olt float %i.jl, 4.000000e+00
  %i.js = fsub reassoc nsz arcp contract afn float %i.ig, %i.ik
  %i.jt = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.jl
  %i.ju = fmul reassoc nsz arcp contract afn float %i.js, %i.jt
  %i.jv = fadd reassoc nsz arcp contract afn float %i.ju, %i.ik
  %i.jw = select reassoc nsz arcp contract afn i1 %i.jr, float %i.jv, float %i.ik
  br label %hue2rgb.exit38.i

hue2rgb.exit38.i:                                 ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i37.i = phi nsz float [ %i.jp, %bb.z ], [ %i.jw, %bb.ab ], [ %i.ig, %bb.aa ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store float %.0.i37.i, ptr %i.jx, align 4, !tbaa !36
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.o, %hue2rgb.exit38.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store float 0.000000e+00, ptr %i.jy, align 4, !tbaa !36
  %i.jz = add nuw i64 %.054, 4                    ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.u
  br i1 %i.ka, label %.lr.ph, label %._crit_edge, !llvm.loop !50

bb.ac:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

declare void @dt_box_mean(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_image_linear_blend(ptr noundef, float noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28)) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load float, ptr %i.d, align 8, !tbaa !45 ; 3 uses
  %i.f = load <2 x i32>, ptr %i.c, align 4, !tbaa !46
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 2 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = fmul reassoc nsz arcp contract afn float %i.e, %i.h
  %i.j = extractelement <2 x float> %i.g, i64 1
  %i.k = fmul reassoc nsz arcp contract afn float %i.e, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.i, float noundef %i.k) #20
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, f0x3C23D70A
  %i.n = fptosi float %i.m to i32                 ; 2 uses
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to double
  %i.p = load float, ptr %i.b, align 4, !tbaa !47
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, 1.000000e+00
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.q, float 1.000000e+02)
  %i.s = fpext nnan float %i.r to double
  %i.t = fmul reassoc nnan nsz arcp contract afn double %i.o, 1.000000e-02
  %i.u = fmul reassoc nsz arcp contract afn double %i.t, %i.s
  %i.v = fptosi double %i.u to i32
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.n to float ; 2 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load float, ptr %i.y, align 4, !tbaa !48
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.x
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.aa, %i.e
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ab) ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt float %i.ac, %i.w
  %. = select reassoc nsz arcp contract afn i1 %i.ad, float %i.w, float %i.ac
  %i.ae = fptosi float %. to i32                  ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  %i.ag = shl i32 %i.ae, 3
  %i.ah = mul i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, 2
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  %i.ak = fmul reassoc nnan nsz arcp contract afn float %i.aj, f0x3EAAAAAB
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ak)
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, 3.000000e+00
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.am)
  %i.ao = fptosi float %i.an to i32
  store <2 x float> <float 2.100000e+00, float 3.000000e+00>, ptr %4, align 4, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.ap, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.as, align 4, !tbaa !55
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  store <4 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !11
  %i.c = load <4 x float>, ptr %1, align 4, !tbaa !36
  store <4 x float> %i.c, ptr %i.b, align 4, !tbaa !36
end_hunk_0
