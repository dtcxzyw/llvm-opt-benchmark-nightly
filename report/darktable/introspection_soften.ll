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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47
  %i.e = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !48
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !49
  %i.k = fpext reassoc nsz arcp contract afn float %i.j to double
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, 1.000000e-02
  %i.m = fptrunc reassoc nsz arcp contract afn double %i.l to float ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51
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
  br i1 %min.iters.check, label %.lr.ph.preheader96, label %vector.memcheck

.lr.ph.preheader96:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.054.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %6, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = shl i64 %i.u, 2                          ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.y
  %i.z = getelementptr i8, ptr %2, i64 %i.y
  %scevgep69 = getelementptr i8, ptr %i.z, i64 -4
  %bound0 = icmp ult ptr %3, %scevgep69
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader96, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = and i64 %i.x, 7                         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 8, i64 %i.aa
  %n.vec = sub nsw i64 %i.x, %i.ac                ; 2 uses
  %6 = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.m, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat71 = shufflevector <8 x float> %broadcast.splatinsert70, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %wide.vec = load <32 x float>, ptr %i.ad, align 4, !tbaa !31, !alias.scope !52 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec72 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec73 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 5 uses
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec72)
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ae, <8 x float> %strided.vec73) ; 6 uses
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec72)
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ag, <8 x float> %strided.vec73) ; 3 uses
  %i.ai = fsub reassoc nsz arcp contract afn <8 x float> %i.af, %i.ah ; 5 uses
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.ah, %i.af ; 3 uses
  %i.ak = fcmp reassoc nsz arcp contract afn une <8 x float> %i.ai, zeroinitializer ; 4 uses
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.am = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.al, splat (float 5.000000e-01)
  %i.an = fpext reassoc nsz arcp contract afn <8 x float> %i.af to <8 x double>
  %i.ao = fpext reassoc nsz arcp contract afn <8 x float> %i.ah to <8 x double>
  %i.ap = fadd reassoc nsz arcp contract afn <8 x double> %i.an, %i.ao
  %i.aq = fsub reassoc nsz arcp contract afn <8 x double> splat (double 2.000000e+00), %i.ap
  %i.ar = fptrunc reassoc nsz arcp contract afn <8 x double> %i.aq to <8 x float>
  %predphi = select <8 x i1> %i.am, <8 x float> %i.aj, <8 x float> %i.ar
  %i.as = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %predphi, <8 x float> splat (float f0x37800000))
  %i.at = fdiv reassoc nsz arcp contract afn <8 x float> %i.ai, %i.as
  %i.au = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.af, %strided.vec ; 2 uses
  %i.av = xor <8 x i1> %i.au, splat (i1 true)
  %i.aw = select <8 x i1> %i.ak, <8 x i1> %i.av, <8 x i1> zeroinitializer ; 2 uses
  %i.ax = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.af, %strided.vec72 ; 2 uses
  %i.ay = xor <8 x i1> %i.ax, splat (i1 true)
  %i.az = select <8 x i1> %i.aw, <8 x i1> %i.ay, <8 x i1> zeroinitializer
  %i.ba = fcmp reassoc nsz arcp contract afn une <8 x float> %i.af, %strided.vec73
  %i.bb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec72
  %i.bc = fdiv reassoc nsz arcp contract afn <8 x float> %i.bb, %i.ai
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %i.bc, splat (float 4.000000e+00)
  %i.be = select <8 x i1> %i.aw, <8 x i1> %i.ax, <8 x i1> zeroinitializer
  %i.bf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec73, %strided.vec
  %i.bg = fdiv reassoc nsz arcp contract afn <8 x float> %i.bf, %i.ai
  %i.bh = fadd reassoc nsz arcp contract afn <8 x float> %i.bg, splat (float 2.000000e+00)
  %i.bi = select <8 x i1> %i.ak, <8 x i1> %i.au, <8 x i1> zeroinitializer
  %i.bj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec72, %strided.vec73
  %i.bk = fdiv reassoc nsz arcp contract afn <8 x float> %i.bj, %i.ai
  %i.bl = select <8 x i1> %i.az, <8 x i1> %i.ba, <8 x i1> zeroinitializer
  %predphi74 = select nsz <8 x i1> %i.bl, <8 x float> zeroinitializer, <8 x float> %i.bd
  %predphi75 = select nsz <8 x i1> %i.be, <8 x float> %i.bh, <8 x float> %predphi74
  %predphi76 = select nsz <8 x i1> %i.bi, <8 x float> %i.bk, <8 x float> %predphi75
  %i.bm = fpext reassoc nsz arcp contract afn <8 x float> %predphi76 to <8 x double>
  %i.bn = fmul reassoc nsz arcp contract afn <8 x double> %i.bm, splat (double f0x3FC5555555555555) ; 3 uses
  %i.bo = fptrunc reassoc nsz arcp contract afn <8 x double> %i.bn to <8 x float> ; 3 uses
  %i.bp = fcmp reassoc nsz arcp contract afn uge <8 x double> %i.bn, splat (double f0xB690000000000000)
  %i.bq = fcmp reassoc nsz arcp contract afn ogt <8 x double> %i.bn, splat (double f0x3FF0000010000000)
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bo, splat (float -1.000000e+00)
  %i.bs = select nsz <8 x i1> %i.bq, <8 x float> %i.br, <8 x float> %i.bo
  %i.bt = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.bo, splat (float 1.000000e+00)
  %predphi77 = select <8 x i1> %i.bp, <8 x float> %i.bs, <8 x float> %i.bt
  %predphi79 = select nsz <8 x i1> %i.ak, <8 x float> %i.at, <8 x float> zeroinitializer
  %i.bu = fmul reassoc nsz arcp contract afn <8 x float> %predphi79, %broadcast.splat ; 3 uses
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, %broadcast.splat71 ; 3 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %vec.ind ; 5 uses
  %i.bw = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.bu, zeroinitializer
  %i.bx = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.bu, splat (float 1.000000e+00)
  %i.by = select reassoc nsz arcp contract afn <8 x i1> %i.bx, <8 x float> %i.bu, <8 x float> splat (float 1.000000e+00)
  %i.bz = select reassoc nsz arcp contract afn <8 x i1> %i.bw, <8 x float> %i.by, <8 x float> zeroinitializer ; 4 uses
  %i.ca = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.bv, zeroinitializer
  %i.cb = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.bv, splat (float 1.000000e+00)
  %i.cc = select reassoc nsz arcp contract afn <8 x i1> %i.cb, <8 x float> %i.bv, <8 x float> splat (float 1.000000e+00)
  %i.cd = select reassoc nsz arcp contract afn <8 x i1> %i.ca, <8 x float> %i.cc, <8 x float> zeroinitializer ; 7 uses
  %i.ce = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.bz, zeroinitializer ; 7 uses
  %i.cf = xor <8 x i1> %i.ce, splat (i1 true)     ; 6 uses
  %i.cg = fpext reassoc nsz arcp contract afn <8 x float> %i.cd to <8 x double> ; 2 uses
  %i.ch = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cd, splat (float 5.000000e-01)
  %i.ci = fadd reassoc nsz arcp contract afn <8 x float> %i.bz, %i.cd
  %i.cj = fmul reassoc nsz arcp contract afn <8 x float> %i.cd, %i.bz
  %i.ck = fsub reassoc nsz arcp contract afn <8 x float> %i.ci, %i.cj
  %i.cl = fpext reassoc nsz arcp contract afn <8 x float> %i.bz to <8 x double>
  %i.cm = fadd reassoc nsz arcp contract afn <8 x double> %i.cl, splat (double 1.000000e+00)
  %i.cn = fmul reassoc nsz arcp contract afn <8 x double> %i.cm, %i.cg
  %i.co = fptrunc reassoc nsz arcp contract afn <8 x double> %i.cn to <8 x float>
  %predphi80 = select <8 x i1> %i.ch, <8 x float> %i.co, <8 x float> %i.ck ; 5 uses
  %i.cp = fmul reassoc nsz arcp contract afn <8 x double> %i.cg, splat (double 2.000000e+00)
  %i.cq = fpext reassoc nsz arcp contract afn <8 x float> %predphi80 to <8 x double>
  %i.cr = fsub reassoc nsz arcp contract afn <8 x double> %i.cp, %i.cq
  %i.cs = fptrunc reassoc nsz arcp contract afn <8 x double> %i.cr to <8 x float> ; 10 uses
  %i.ct = fmul reassoc nsz arcp contract afn <8 x float> %predphi77, splat (float 6.000000e+00)
  %i.cu = select <8 x i1> %i.ak, <8 x float> %i.ct, <8 x float> zeroinitializer ; 8 uses
  %i.cv = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cu, splat (float 4.000000e+00) ; 2 uses
  %i.cw = select <8 x i1> %i.cv, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -4.000000e+00)
  %i.cx = fadd reassoc nsz arcp contract afn <8 x float> %i.cw, %i.cu ; 5 uses
  %i.cy = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cx, splat (float 1.000000e+00) ; 2 uses
  %i.cz = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.cx, splat (float 3.000000e+00)
  %i.da = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cx, splat (float 4.000000e+00)
  %i.db = fsub reassoc nsz arcp contract afn <8 x float> %predphi80, %i.cs ; 6 uses
  %i.dc = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 4.000000e+00), %i.cx
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.dc
  %i.de = fadd reassoc nsz arcp contract afn <8 x float> %i.dd, %i.cs
  %i.df = select reassoc nsz arcp contract afn <8 x i1> %i.da, <8 x float> %i.de, <8 x float> %i.cs
  %i.dg = select <8 x i1> %i.cf, <8 x i1> %i.cy, <8 x i1> zeroinitializer
  %i.dh = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.cx
  %i.di = fadd reassoc nsz arcp contract afn <8 x float> %i.dh, %i.cs
  %i.dj = or <8 x i1> %i.cy, %i.cz
  %.not91 = select <8 x i1> %i.ce, <8 x i1> splat (i1 true), <8 x i1> %i.dj
  %predphi81 = select nsz <8 x i1> %.not91, <8 x float> %i.df, <8 x float> %predphi80
  %predphi82 = select nsz <8 x i1> %i.dg, <8 x float> %i.di, <8 x float> %predphi81
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi82, <8 x ptr> align 4 %wide.gep, <8 x i1> %i.cf), !tbaa !31, !alias.scope !53, !noalias !52
  %i.dk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cu, splat (float 1.000000e+00) ; 2 uses
  %i.dl = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.cu, splat (float 3.000000e+00)
  %i.dm = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 4.000000e+00), %i.cu
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn <8 x float> %i.dn, %i.cs
  %i.dp = select reassoc nsz arcp contract afn <8 x i1> %i.cv, <8 x float> %i.do, <8 x float> %i.cs
  %i.dq = select <8 x i1> %i.cf, <8 x i1> %i.dk, <8 x i1> zeroinitializer
  %i.dr = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.cu
  %i.ds = fadd reassoc nsz arcp contract afn <8 x float> %i.dr, %i.cs
  %i.dt = or <8 x i1> %i.dk, %i.dl
  %.not93 = select <8 x i1> %i.ce, <8 x i1> splat (i1 true), <8 x i1> %i.dt
  %predphi83 = select nsz <8 x i1> %.not93, <8 x float> %i.dp, <8 x float> %predphi80
  %predphi84 = select nsz <8 x i1> %i.dq, <8 x float> %i.ds, <8 x float> %predphi83
  %wide.gep85 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi84, <8 x ptr> align 4 %wide.gep85, <8 x i1> %i.cf), !tbaa !31, !alias.scope !53, !noalias !52
  %i.du = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cu, splat (float 2.000000e+00)
  %i.dv = select <8 x i1> %i.du, <8 x float> splat (float -2.000000e+00), <8 x float> splat (float 4.000000e+00)
  %i.dw = fadd reassoc nsz arcp contract afn <8 x float> %i.dv, %i.cu ; 5 uses
  %i.dx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dw, splat (float 1.000000e+00) ; 2 uses
  %i.dy = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.dw, splat (float 3.000000e+00)
  %i.dz = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dw, splat (float 4.000000e+00)
  %i.ea = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 4.000000e+00), %i.dw
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.ea
  %i.ec = fadd reassoc nsz arcp contract afn <8 x float> %i.eb, %i.cs
  %i.ed = select reassoc nsz arcp contract afn <8 x i1> %i.dz, <8 x float> %i.ec, <8 x float> %i.cs
  %i.ee = select <8 x i1> %i.cf, <8 x i1> %i.dx, <8 x i1> zeroinitializer
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.dw
  %i.eg = fadd reassoc nsz arcp contract afn <8 x float> %i.ef, %i.cs
  %i.eh = or <8 x i1> %i.dx, %i.dy
  %.not95 = select <8 x i1> %i.ce, <8 x i1> splat (i1 true), <8 x i1> %i.eh
  %predphi86 = select nsz <8 x i1> %.not95, <8 x float> %i.ed, <8 x float> %predphi80
  %predphi87 = select nsz <8 x i1> %i.ee, <8 x float> %i.eg, <8 x float> %predphi86
  %wide.gep88 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi87, <8 x ptr> align 4 %wide.gep88, <8 x i1> %i.cf), !tbaa !31, !alias.scope !53, !noalias !52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cd, <8 x ptr> align 4 %wide.gep88, <8 x i1> %i.ce), !tbaa !31, !alias.scope !53, !noalias !52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cd, <8 x ptr> align 4 %wide.gep85, <8 x i1> %i.ce), !tbaa !31, !alias.scope !53, !noalias !52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cd, <8 x ptr> align 4 %wide.gep, <8 x i1> %i.ce), !tbaa !31, !alias.scope !53, !noalias !52
  %wide.gep89 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep89, <8 x i1> splat (i1 true)), !tbaa !31, !alias.scope !53, !noalias !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %.lr.ph.preheader96, label %vector.body, !llvm.loop !45

._crit_edge:                                      ; preds = %hsl2rgb.exit, %bb.b
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.el = load float, ptr %i.ek, align 8, !tbaa !32 ; 3 uses
  %i.em = load <2 x i32>, ptr %i.ej, align 4, !tbaa !33
  %i.en = sitofp <2 x i32> %i.em to <2 x float>   ; 2 uses
  %i.eo = extractelement <2 x float> %i.en, i64 0
  %i.ep = fmul reassoc nsz arcp contract afn float %i.el, %i.eo
  %i.eq = extractelement <2 x float> %i.en, i64 1
  %i.er = fmul reassoc nsz arcp contract afn float %i.el, %i.eq
  %i.es = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ep, float noundef %i.er) #20
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, f0x3C23D70A
  %i.eu = fptosi float %i.et to i32               ; 2 uses
  %i.ev = sitofp reassoc nsz arcp contract afn i32 %i.eu to double
  %i.ew = load float, ptr %i.b, align 4, !tbaa !34
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, 1.000000e+00
  %i.ey = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ex, float 1.000000e+02)
  %i.ez = fpext nnan float %i.ey to double
  %i.fa = fmul reassoc nnan nsz arcp contract afn double %i.ev, 1.000000e-02
  %i.fb = fmul reassoc nsz arcp contract afn double %i.fa, %i.ez
  %i.fc = fptosi double %i.fb to i32
  %i.fd = sitofp reassoc nsz arcp contract afn i32 %i.eu to float ; 2 uses
  %i.fe = sitofp reassoc nsz arcp contract afn i32 %i.fc to float
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !35
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.fe
  %i.fi = fdiv reassoc nsz arcp contract afn float %i.fh, %i.el
  %i.fj = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.fi) ; 2 uses
  %i.fk = fcmp reassoc nsz arcp contract afn ogt float %i.fj, %i.fd
  %. = select reassoc nsz arcp contract afn i1 %i.fk, float %i.fd, float %i.fj
  %i.fl = fptosi float %. to i32
  %i.fm = sext i32 %i.fl to i64
  tail call void @dt_box_mean(ptr noundef %3, i64 noundef %i.s, i64 noundef %i.p, i32 noundef 4, i64 noundef %i.fm, i32 noundef 8) #19
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !56
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, f0x3C23D70A
  %i.fq = load i32, ptr %i.n, align 4, !tbaa !50
  %i.fr = sext i32 %i.fq to i64
  %i.fs = load i32, ptr %i.q, align 4, !tbaa !51
  %i.ft = sext i32 %i.fs to i64
  tail call void @dt_iop_image_linear_blend(ptr noundef %3, float noundef %i.fp, ptr noundef %2, i64 noundef %i.fr, i64 noundef %i.ft, i64 noundef 4) #19
  br label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %hsl2rgb.exit
  %.054 = phi i64 [ %i.jx, %hsl2rgb.exit ], [ %.054.ph, %.lr.ph.preheader96 ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.054 ; 3 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !31 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !31 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !31 ; 5 uses
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fv, float %i.fx)
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ga, float %i.fz) ; 6 uses
  %i.gc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fv, float %i.fx)
  %i.gd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gc, float %i.fz) ; 3 uses
  %i.ge = fsub reassoc nsz arcp contract afn float %i.gb, %i.gd ; 5 uses
  %i.gf = fadd reassoc nsz arcp contract afn float %i.gd, %i.gb ; 3 uses
  %i.gg = fcmp reassoc nsz arcp contract afn une float %i.ge, 0.000000e+00
  br i1 %i.gg, label %bb.c, label %rgb2hsl.exit

bb.c:                                             ; preds = %.lr.ph
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gf, 5.000000e-01
  %i.gi = fcmp reassoc nsz arcp contract afn olt float %i.gh, 5.000000e-01
  br i1 %i.gi, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gj = fpext reassoc nsz arcp contract afn float %i.gb to double
  %i.gk = fpext reassoc nsz arcp contract afn float %i.gd to double
  %i.gl = fadd reassoc nsz arcp contract afn double %i.gj, %i.gk
  %i.gm = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.gl
  %i.gn = fptrunc reassoc nsz arcp contract afn double %i.gm to float
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi float [ %i.gn, %bb.d ], [ %i.gf, %bb.c ]
  %i.go = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.gp = fdiv reassoc nsz arcp contract afn float %i.ge, %i.go ; 2 uses
  %i.gq = fcmp reassoc nsz arcp contract afn oeq float %i.gb, %i.fv
  br i1 %i.gq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gr = fsub reassoc nsz arcp contract afn float %i.fx, %i.fz
  %i.gs = fdiv reassoc nsz arcp contract afn float %i.gr, %i.ge
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.gt = fcmp reassoc nsz arcp contract afn oeq float %i.gb, %i.fx
  br i1 %i.gt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gu = fsub reassoc nsz arcp contract afn float %i.fz, %i.fv
  %i.gv = fdiv reassoc nsz arcp contract afn float %i.gu, %i.ge
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gv, 2.000000e+00
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.gx = fcmp reassoc nsz arcp contract afn oeq float %i.gb, %i.fz
  br i1 %i.gx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gy = fsub reassoc nsz arcp contract afn float %i.fv, %i.fx
  %i.gz = fdiv reassoc nsz arcp contract afn float %i.gy, %i.ge
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gz, 4.000000e+00
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.043.i = phi nsz float [ %i.gs, %bb.f ], [ %i.gw, %bb.h ], [ %i.ha, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.hb = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.hc = fmul reassoc nsz arcp contract afn double %i.hb, f0x3FC5555555555555 ; 3 uses
  %i.hd = fptrunc reassoc nsz arcp contract afn double %i.hc to float ; 3 uses
  %i.he = fcmp reassoc nsz arcp contract afn olt double %i.hc, f0xB690000000000000
  br i1 %i.he, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hf = fadd reassoc nnan nsz arcp contract afn float %i.hd, 1.000000e+00
  br label %rgb2hsl.exit

bb.m:                                             ; preds = %bb.k
  %i.hg = fcmp reassoc nsz arcp contract afn ogt double %i.hc, f0x3FF0000010000000
  %i.hh = fadd reassoc nsz arcp contract afn float %i.hd, -1.000000e+00
  %spec.select.i = select nsz i1 %i.hg, float %i.hh, float %i.hd
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %.lr.ph, %bb.l, %bb.m
  %.1.i = phi nsz float [ %i.hf, %bb.l ], [ 0.000000e+00, %.lr.ph ], [ %spec.select.i, %bb.m ]
  %.0.i = phi nsz float [ %i.gp, %bb.l ], [ 0.000000e+00, %.lr.ph ], [ %i.gp, %bb.m ]
  %i.hi = fmul reassoc nsz arcp contract afn float %.0.i, %i.m ; 3 uses
  %.reass = fmul reassoc nsz arcp contract afn float %i.gf, %invariant.op ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.054 ; 7 uses
  %i.hk = fcmp reassoc nsz arcp contract afn oge float %i.hi, 0.000000e+00
  %i.hl = fcmp reassoc nsz arcp contract afn ole float %i.hi, 1.000000e+00
  %i.hm = select reassoc nsz arcp contract afn i1 %i.hl, float %i.hi, float 1.000000e+00
  %i.hn = select reassoc nsz arcp contract afn i1 %i.hk, float %i.hm, float 0.000000e+00 ; 4 uses
  %i.ho = fcmp reassoc nsz arcp contract afn oge float %.reass, 0.000000e+00
  %i.hp = fcmp reassoc nsz arcp contract afn ole float %.reass, 1.000000e+00
  %i.hq = select reassoc nsz arcp contract afn i1 %i.hp, float %.reass, float 1.000000e+00
  %i.hr = select reassoc nsz arcp contract afn i1 %i.ho, float %i.hq, float 0.000000e+00 ; 7 uses
  %i.hs = fcmp reassoc nsz arcp contract afn oeq float %i.hn, 0.000000e+00
  br i1 %i.hs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rgb2hsl.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store float %i.hr, ptr %i.ht, align 4, !tbaa !31
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store float %i.hr, ptr %i.hu, align 4, !tbaa !31
  store float %i.hr, ptr %i.hj, align 4, !tbaa !31
  br label %hsl2rgb.exit

bb.o:                                             ; preds = %rgb2hsl.exit
  %i.hv = fpext reassoc nsz arcp contract afn float %i.hr to double ; 2 uses
  %i.hw = fcmp reassoc nsz arcp contract afn olt float %i.hr, 5.000000e-01
  br i1 %i.hw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hx = fpext reassoc nsz arcp contract afn float %i.hn to double
  %i.hy = fadd reassoc nsz arcp contract afn double %i.hx, 1.000000e+00
  %i.hz = fmul reassoc nsz arcp contract afn double %i.hy, %i.hv
  %i.ia = fptrunc reassoc nsz arcp contract afn double %i.hz to float
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ib = fadd reassoc nsz arcp contract afn float %i.hn, %i.hr
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hr, %i.hn
  %i.id = fsub reassoc nsz arcp contract afn float %i.ib, %i.ic
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ie = phi float [ %i.ia, %bb.p ], [ %i.id, %bb.q ] ; 10 uses
  %i.if = fmul reassoc nsz arcp contract afn double %i.hv, 2.000000e+00
  %i.ig = fpext reassoc nsz arcp contract afn float %i.ie to double
  %i.ih = fsub reassoc nsz arcp contract afn double %i.if, %i.ig
  %i.ii = fptrunc reassoc nsz arcp contract afn double %i.ih to float ; 15 uses
  %i.ij = fmul reassoc nsz arcp contract afn float %.1.i, 6.000000e+00 ; 8 uses
  %i.ik = fcmp reassoc nsz arcp contract afn olt float %i.ij, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.ik, float 2.000000e+00, float -4.000000e+00
  %i.il = fadd reassoc nsz arcp contract afn float %.v.i, %i.ij ; 5 uses
  %i.im = fcmp reassoc nsz arcp contract afn olt float %i.il, 1.000000e+00
  br i1 %i.im, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.in = fsub reassoc nsz arcp contract afn float %i.ie, %i.ii
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.il
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, %i.ii
  br label %hue2rgb.exit.i

bb.t:                                             ; preds = %bb.r
  %i.iq = fcmp reassoc nsz arcp contract afn olt float %i.il, 3.000000e+00
  br i1 %i.iq, label %hue2rgb.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ir = fcmp reassoc nsz arcp contract afn olt float %i.il, 4.000000e+00
  %i.is = fsub reassoc nsz arcp contract afn float %i.ie, %i.ii
  %i.it = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.il
  %i.iu = fmul reassoc nsz arcp contract afn float %i.is, %i.it
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, %i.ii
  %i.iw = select reassoc nsz arcp contract afn i1 %i.ir, float %i.iv, float %i.ii
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.u, %bb.t, %bb.s
end_hunk_0
