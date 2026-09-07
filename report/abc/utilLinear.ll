Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilLinear?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [47 x i8] c"Invalid matrix dimensions provided to solver.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Unable to allocate memory for solver workspace.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unable to allocate memory for pivot tracking.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Unable to allocate memory for pivot metadata.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Unable to allocate memory for free column list.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Unable to allocate solver buffers.\0A\00", align 1
@.str.7 = private unnamed_addr constant [93 x i8] c"Warning: large nullspace (%d free variables); integer search radius +/-20 may be expensive.\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Verification: failure (max residual = %.6f)\0A\00", align 1
@__const.try_integer_solution.candidates = private unnamed_addr constant [41 x i32] [i32 0, i32 1, i32 -1, i32 2, i32 -2, i32 3, i32 -3, i32 4, i32 -4, i32 5, i32 -5, i32 6, i32 -6, i32 7, i32 -7, i32 8, i32 -8, i32 9, i32 -9, i32 10, i32 -10, i32 11, i32 -11, i32 12, i32 -12, i32 13, i32 -13, i32 14, i32 -14, i32 15, i32 -15, i32 16, i32 -16, i32 17, i32 -17, i32 18, i32 -18, i32 19, i32 -19, i32 20, i32 -20], align 16
@str = private unnamed_addr constant [44 x i8] c"Verification: inconsistent system detected.\00", align 1
@str.1 = private unnamed_addr constant [69 x i8] c"Note: integer solution not found; returning floating-point solution.\00", align 1
@str.2 = private unnamed_addr constant [104 x i8] c"Note: integer solution with distinct first four variables not found; returning floating-point solution.\00", align 1
@str.3 = private unnamed_addr constant [115 x i8] c"Note: non-negative integer solution with mixed zero/positive entries not found; returning floating-point solution.\00", align 1
@str.4 = private unnamed_addr constant [126 x i8] c"Note: integer solution meeting non-negative and distinct-first-four constraints not found; returning floating-point solution.\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @linear_equation_solver(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %1, 1
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp slt i32 %2, 1
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.f = tail call i64 @fwrite(ptr nonnull @.str, i64 46, i64 1, ptr %i.e) #12 ; 0 uses
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %2, 1                    ; 4 uses
  %i.h = zext nneg i32 %1 to i64                  ; 7 uses
  %i.i = zext nneg i32 %i.g to i64                ; 27 uses
  %i.j = shl nuw nsw i64 %i.h, 3
  %i.k = mul i64 %i.j, %i.i                       ; 2 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #13 ; 27 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.1, i64 48, i64 1, ptr %i.m) #12 ; 0 uses
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.k, i1 false)
  %i.o = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #13 ; 20 uses
  %.not276 = icmp eq ptr %i.p, null
  br i1 %.not276, label %bb.f, label %.lr.ph362

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.r = tail call i64 @fwrite(ptr nonnull @.str.2, i64 46, i64 1, ptr %i.q) #12 ; 0 uses
  br label %bb.aj

.lr.ph362:                                        ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 -1, i64 %i.o, i1 false), !tbaa !13
  %i.s = zext nneg i32 %i.g to i64                ; 6 uses
  %i.t = zext nneg i32 %2 to i64                  ; 7 uses
  %i.u = mul nuw nsw i64 %i.h, %i.i
  %i.v = shl i64 %i.u, 3
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.v
  %i.w = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %scevgep477 = getelementptr i8, ptr %i.l, i64 %i.w
  %scevgep517 = getelementptr i8, ptr %i.l, i64 %i.w
  %scevgep519 = getelementptr i8, ptr %i.l, i64 %i.w
  %i.x = add nsw i32 %1, -2
  %i.y = zext nneg i32 %2 to i64                  ; 2 uses
  %min.iters.check525 = icmp ult i32 %2, 3
  %n.vec527 = and i64 %i.i, 2147483644            ; 3 uses
  %cmp.n536 = icmp eq i64 %n.vec527, %i.i
  %xtraiter585 = and i64 %i.s, 1
  %lcmp.mod586.not = icmp eq i64 %xtraiter585, 0
  %n.vec507 = and i64 %i.i, 2147483646            ; 3 uses
  %cmp.n515 = icmp eq i64 %n.vec507, %i.i
  %min.iters.check494 = icmp ult i32 %2, 3
  %n.vec496 = and i64 %i.i, 2147483644            ; 3 uses
  %cmp.n503 = icmp eq i64 %n.vec496, %i.i
  %min.iters.check480 = icmp ult i32 %2, 3
  %n.vec482 = and i64 %i.i, 2147483644            ; 3 uses
  %cmp.n491 = icmp eq i64 %n.vec482, %i.i
  %xtraiter587 = and i64 %i.s, 1
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  %min.iters.check = icmp ult i32 %2, 3
  %n.vec = and i64 %i.i, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br label %bb.g

.preheader336.lr.ph:                              ; preds = %bb.j
  %i.z = zext nneg i32 %2 to i64                  ; 9 uses
  %invariant.gep468 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.z
  br label %.lr.ph365

bb.g:                                             ; preds = %.lr.ph362, %bb.j
  %indvars.iv404 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next405, %bb.j ] ; 5 uses
  %.0245360 = phi i32 [ 0, %.lr.ph362 ], [ %.1246, %bb.j ] ; 12 uses
  %i.aa = mul nsw i32 %.0245360, %i.g
  %i.ab = sext i32 %i.aa to i64                   ; 7 uses
  %i.ac = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv404
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.ab ; 3 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.af = tail call double @llvm.fabs.f64(double %i.ae) ; 4 uses
  %i.ag = add nsw i32 %.0245360, 1                ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %1
  br i1 %i.ah, label %.lr.ph348.preheader, label %._crit_edge

.lr.ph348.preheader:                              ; preds = %bb.g
  %i.ai = sext i32 %.0245360 to i64               ; 2 uses
  %i.aj = add nsw i64 %i.ai, 1                    ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv404 ; 3 uses
  %i.ak = sub i32 %.0245360, %1
  %i.al = and i32 %i.ak, 1
  %lcmp.mod.not.not = icmp eq i32 %i.al, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph348.prol, label %.lr.ph348.prol.loopexit

.lr.ph348.prol:                                   ; preds = %.lr.ph348.preheader
  %i.am = mul nsw i64 %i.aj, %i.s
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.am
  %i.an = load double, ptr %gep.prol, align 8, !tbaa !15
  %i.ao = tail call double @llvm.fabs.f64(double %i.an) ; 2 uses
  %i.ap = fcmp ogt double %i.ao, %i.af            ; 2 uses
  %i.aq = trunc nsw i64 %i.aj to i32
  %.1240.prol = select i1 %i.ap, i32 %i.aq, i32 %.0245360 ; 2 uses
  %.1238.prol = select i1 %i.ap, double %i.ao, double %i.af ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.ai, 2
  br label %.lr.ph348.prol.loopexit

.lr.ph348.prol.loopexit:                          ; preds = %.lr.ph348.prol, %.lr.ph348.preheader
  %.1240.lcssa.unr = phi i32 [ poison, %.lr.ph348.preheader ], [ %.1240.prol, %.lr.ph348.prol ]
  %.1238.lcssa.unr = phi double [ poison, %.lr.ph348.preheader ], [ %.1238.prol, %.lr.ph348.prol ]
  %indvars.iv.unr = phi i64 [ %i.aj, %.lr.ph348.preheader ], [ %indvars.iv.next.prol, %.lr.ph348.prol ]
  %.0237346.unr = phi double [ %i.af, %.lr.ph348.preheader ], [ %.1238.prol, %.lr.ph348.prol ]
  %.0239345.unr = phi i32 [ %.0245360, %.lr.ph348.preheader ], [ %.1240.prol, %.lr.ph348.prol ]
  %i.ar = icmp eq i32 %i.x, %.0245360
  br i1 %i.ar, label %._crit_edge, label %.lr.ph348

._crit_edge:                                      ; preds = %.lr.ph348.prol.loopexit, %.lr.ph348, %bb.g
  %.0239.lcssa = phi i32 [ %.0245360, %bb.g ], [ %.1240.lcssa.unr, %.lr.ph348.prol.loopexit ], [ %.1240.1, %.lr.ph348 ] ; 2 uses
  %.0237.lcssa = phi double [ %i.af, %bb.g ], [ %.1238.lcssa.unr, %.lr.ph348.prol.loopexit ], [ %.1238.1, %.lr.ph348 ]
  %i.as = fcmp olt double %.0237.lcssa, f0x3D719799812DEA11
  br i1 %i.as, label %bb.j, label %bb.h

.lr.ph348:                                        ; preds = %.lr.ph348.prol.loopexit, %.lr.ph348
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph348 ], [ %indvars.iv.unr, %.lr.ph348.prol.loopexit ] ; 4 uses
  %.0237346 = phi double [ %.1238.1, %.lr.ph348 ], [ %.0237346.unr, %.lr.ph348.prol.loopexit ] ; 2 uses
  %.0239345 = phi i32 [ %.1240.1, %.lr.ph348 ], [ %.0239345.unr, %.lr.ph348.prol.loopexit ]
  %i.at = mul nsw i64 %indvars.iv, %i.s
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.at
  %i.au = load double, ptr %gep, align 8, !tbaa !15
  %i.av = tail call double @llvm.fabs.f64(double %i.au) ; 2 uses
  %i.aw = fcmp ogt double %i.av, %.0237346        ; 2 uses
  %i.ax = trunc nsw i64 %indvars.iv to i32
  %.1240 = select i1 %i.aw, i32 %i.ax, i32 %.0239345
  %.1238 = select i1 %i.aw, double %i.av, double %.0237346 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ay = mul nsw i64 %indvars.iv.next, %i.s
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ay
  %i.az = load double, ptr %gep.1, align 8, !tbaa !15
  %i.ba = tail call double @llvm.fabs.f64(double %i.az) ; 2 uses
  %i.bb = fcmp ogt double %i.ba, %.1238           ; 2 uses
  %i.bc = trunc nsw i64 %indvars.iv.next to i32
  %.1240.1 = select i1 %i.bb, i32 %i.bc, i32 %.1240 ; 2 uses
  %.1238.1 = select i1 %i.bb, double %i.ba, double %.1238 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %1, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph348, !llvm.loop !20

bb.h:                                             ; preds = %._crit_edge
  %i.bd = icmp eq i32 %.0245360, %.0239.lcssa
  br i1 %i.bd, label %.lr.ph352.preheader, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.be = mul nsw i32 %.0239.lcssa, %i.g
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.l, i64 %i.ab ; 5 uses
  %invariant.gep27.i = getelementptr [8 x i8], ptr %i.l, i64 %i.bf ; 5 uses
  br i1 %min.iters.check525, label %scalar.ph524.preheader, label %vector.memcheck516

vector.memcheck516:                               ; preds = %.preheader.i
  %i.bg = shl nsw i64 %i.ab, 3
  %scevgep518 = getelementptr i8, ptr %scevgep517, i64 %i.bg
  %i.bh = shl nsw i64 %i.bf, 3
  %scevgep520 = getelementptr i8, ptr %scevgep519, i64 %i.bh
  %bound0521 = icmp ult ptr %invariant.gep.i, %scevgep520
  %bound1522 = icmp ult ptr %invariant.gep27.i, %scevgep518
  %found.conflict523 = and i1 %bound0521, %bound1522
  br i1 %found.conflict523, label %scalar.ph524.preheader, label %vector.body528

vector.body528:                                   ; preds = %vector.memcheck516, %vector.body528
  %index529 = phi i64 [ %index.next534, %vector.body528 ], [ 0, %vector.memcheck516 ] ; 3 uses
  %i.bi = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index529 ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16     ; 2 uses
  %wide.load530 = load <2 x double>, ptr %i.bi, align 8, !tbaa !15, !alias.scope !53, !noalias !54
  %wide.load531 = load <2 x double>, ptr %i.bj, align 8, !tbaa !15, !alias.scope !53, !noalias !54
  %i.bk = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %index529 ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16     ; 2 uses
  %wide.load532 = load <2 x double>, ptr %i.bk, align 8, !tbaa !15, !alias.scope !54
  %wide.load533 = load <2 x double>, ptr %i.bl, align 8, !tbaa !15, !alias.scope !54
  store <2 x double> %wide.load532, ptr %i.bi, align 8, !tbaa !15, !alias.scope !53, !noalias !54
  store <2 x double> %wide.load533, ptr %i.bj, align 8, !tbaa !15, !alias.scope !53, !noalias !54
  store <2 x double> %wide.load530, ptr %i.bk, align 8, !tbaa !15, !alias.scope !54
  store <2 x double> %wide.load531, ptr %i.bl, align 8, !tbaa !15, !alias.scope !54
  %index.next534 = add nuw i64 %index529, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next534, %n.vec527
  br i1 %i.bm, label %middle.block535, label %vector.body528, !llvm.loop !24

middle.block535:                                  ; preds = %vector.body528
  br i1 %cmp.n536, label %swap_rows.exit.loopexit, label %scalar.ph524.preheader

scalar.ph524.preheader:                           ; preds = %vector.memcheck516, %.preheader.i, %middle.block535
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck516 ], [ 0, %.preheader.i ], [ %n.vec527, %middle.block535 ] ; 5 uses
  br i1 %lcmp.mod586.not, label %scalar.ph524.prol.loopexit, label %scalar.ph524.prol

scalar.ph524.prol:                                ; preds = %scalar.ph524.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bn = load double, ptr %gep.i.prol, align 8, !tbaa !15
  %gep28.i.prol = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bo = load double, ptr %gep28.i.prol, align 8, !tbaa !15
  store double %i.bo, ptr %gep.i.prol, align 8, !tbaa !15
  store double %i.bn, ptr %gep28.i.prol, align 8, !tbaa !15
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph524.prol.loopexit

scalar.ph524.prol.loopexit:                       ; preds = %scalar.ph524.prol, %scalar.ph524.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph524.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph524.prol ]
  %i.bp = icmp eq i64 %indvars.iv.i.ph, %i.y
  br i1 %i.bp, label %swap_rows.exit.loopexit, label %scalar.ph524

scalar.ph524:                                     ; preds = %scalar.ph524.prol.loopexit, %scalar.ph524
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph524 ], [ %indvars.iv.i.unr, %scalar.ph524.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.bq = load double, ptr %gep.i, align 8, !tbaa !15
  %gep28.i = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.i ; 2 uses
  %i.br = load double, ptr %gep28.i, align 8, !tbaa !15
  store double %i.br, ptr %gep.i, align 8, !tbaa !15
  store double %i.bq, ptr %gep28.i, align 8, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bs = load double, ptr %gep.i.1, align 8, !tbaa !15
  %gep28.i.1 = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bt = load double, ptr %gep28.i.1, align 8, !tbaa !15
  store double %i.bt, ptr %gep.i.1, align 8, !tbaa !15
  store double %i.bs, ptr %gep28.i.1, align 8, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.i
  br i1 %exitcond.not.i.1, label %swap_rows.exit.loopexit, label %scalar.ph524, !llvm.loop !25

swap_rows.exit.loopexit:                          ; preds = %scalar.ph524.prol.loopexit, %scalar.ph524, %middle.block535
  %.pre = load double, ptr %i.ad, align 8, !tbaa !15
  br label %.lr.ph352.preheader

.lr.ph352.preheader:                              ; preds = %bb.h, %swap_rows.exit.loopexit
  %i.bu = phi double [ %.pre, %swap_rows.exit.loopexit ], [ %i.ae, %bb.h ] ; 2 uses
  %invariant.gep458 = getelementptr [8 x i8], ptr %i.l, i64 %i.ab ; 2 uses
  %broadcast.splatinsert508 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat509 = shufflevector <2 x double> %broadcast.splatinsert508, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %.lr.ph352.preheader
  %index511 = phi i64 [ 0, %.lr.ph352.preheader ], [ %index.next513, %vector.body510 ] ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %invariant.gep458, i64 %index511 ; 2 uses
  %wide.load512 = load <2 x double>, ptr %i.bv, align 8, !tbaa !15
  %i.bw = fdiv <2 x double> %wide.load512, %broadcast.splat509
  store <2 x double> %i.bw, ptr %i.bv, align 8, !tbaa !15
  %index.next513 = add nuw i64 %index511, 2       ; 2 uses
  %i.bx = icmp eq i64 %index.next513, %n.vec507
  br i1 %i.bx, label %middle.block514, label %vector.body510, !llvm.loop !26

middle.block514:                                  ; preds = %vector.body510
  br i1 %cmp.n515, label %._crit_edge353, label %.lr.ph352

._crit_edge353:                                   ; preds = %.lr.ph352, %middle.block514
  store double 1.000000e+00, ptr %i.ad, align 8, !tbaa !15
  %i.by = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ab ; 2 uses
  br i1 %min.iters.check494, label %scalar.ph493.preheader, label %vector.body497

vector.body497:                                   ; preds = %._crit_edge353, %vector.body497
  %index498 = phi i64 [ %index.next501, %vector.body497 ], [ 0, %._crit_edge353 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index498 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load499 = load <2 x double>, ptr %i.bz, align 8, !tbaa !15 ; 2 uses
  %wide.load500 = load <2 x double>, ptr %i.ca, align 8, !tbaa !15 ; 2 uses
  %i.cb = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load499)
  %i.cc = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load500)
  %i.cd = fcmp olt <2 x double> %i.cb, splat (double f0x3D719799812DEA11)
  %i.ce = fcmp olt <2 x double> %i.cc, splat (double f0x3D719799812DEA11)
  %i.cf = select <2 x i1> %i.cd, <2 x double> zeroinitializer, <2 x double> %wide.load499
  %i.cg = select <2 x i1> %i.ce, <2 x double> zeroinitializer, <2 x double> %wide.load500
  store <2 x double> %i.cf, ptr %i.bz, align 8
  store <2 x double> %i.cg, ptr %i.ca, align 8
  %index.next501 = add nuw i64 %index498, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next501, %n.vec496
  br i1 %i.ch, label %middle.block502, label %vector.body497, !llvm.loop !27

middle.block502:                                  ; preds = %vector.body497
  br i1 %cmp.n503, label %.lr.ph359.preheader, label %scalar.ph493.preheader

scalar.ph493.preheader:                           ; preds = %._crit_edge353, %middle.block502
  %indvars.iv.i292.ph = phi i64 [ 0, %._crit_edge353 ], [ %n.vec496, %middle.block502 ]
  br label %scalar.ph493

scalar.ph493:                                     ; preds = %scalar.ph493.preheader, %scalar.ph493
  %indvars.iv.i292 = phi i64 [ %indvars.iv.next.i293, %scalar.ph493 ], [ %indvars.iv.i292.ph, %scalar.ph493.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i292 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !15 ; 2 uses
  %i.ck = tail call double @llvm.fabs.f64(double %i.cj)
  %i.cl = fcmp olt double %i.ck, f0x3D719799812DEA11
  %spec.store.select = select i1 %i.cl, double 0.000000e+00, double %i.cj
  store double %spec.store.select, ptr %i.ci, align 8
  %indvars.iv.next.i293 = add nuw nsw i64 %indvars.iv.i292, 1 ; 2 uses
  %exitcond.not.i294 = icmp eq i64 %indvars.iv.next.i293, %i.i
  br i1 %exitcond.not.i294, label %.lr.ph359.preheader, label %scalar.ph493, !llvm.loop !28

.lr.ph359.preheader:                              ; preds = %scalar.ph493, %middle.block502
  %i.cm = zext i32 %.0245360 to i64
  %invariant.gep464 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv404
  %invariant.gep460 = getelementptr [8 x i8], ptr %i.l, i64 %i.ab ; 5 uses
  %i.cn = shl nsw i64 %i.ab, 3
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.cn
  %bound0 = icmp ult ptr %i.l, %scevgep478
  %bound1 = icmp ult ptr %invariant.gep460, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph359

.lr.ph352:                                        ; preds = %middle.block514, %.lr.ph352
  %indvars.iv390 = phi i64 [ %indvars.iv.next391, %.lr.ph352 ], [ %n.vec507, %middle.block514 ] ; 2 uses
  %gep459 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %indvars.iv390 ; 2 uses
  %i.co = load double, ptr %gep459, align 8, !tbaa !15
  %i.cp = fdiv double %i.co, %i.bu
  store double %i.cp, ptr %gep459, align 8, !tbaa !15
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next391, %i.i
  br i1 %exitcond393.not, label %._crit_edge353, label %.lr.ph352, !llvm.loop !29

prune_small_values.exit._crit_edge:               ; preds = %prune_small_values.exit299
  %i.cq = sext i32 %.0245360 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = trunc nuw nsw i64 %indvars.iv404 to i32
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !13
  br label %bb.j

.lr.ph359:                                        ; preds = %.lr.ph359.preheader, %prune_small_values.exit299
  %indvars.iv399 = phi i64 [ 0, %.lr.ph359.preheader ], [ %indvars.iv.next400, %prune_small_values.exit299 ] ; 3 uses
  %i.ct = icmp eq i64 %indvars.iv399, %i.cm
  br i1 %i.ct, label %prune_small_values.exit299, label %bb.i

bb.i:                                             ; preds = %.lr.ph359
  %i.cu = mul nuw nsw i64 %indvars.iv399, %i.s    ; 3 uses
  %gep465 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep464, i64 %i.cu ; 2 uses
  %i.cv = load double, ptr %gep465, align 8, !tbaa !15 ; 2 uses
  %i.cw = tail call double @llvm.fabs.f64(double %i.cv)
  %i.cx = fcmp olt double %i.cw, f0x3D719799812DEA11
  br i1 %i.cx, label %prune_small_values.exit299, label %.lr.ph356

.lr.ph356:                                        ; preds = %bb.i
  %i.cy = fneg double %i.cv                       ; 4 uses
  %invariant.gep462 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cu ; 4 uses
  %brmerge = select i1 %min.iters.check480, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph479.preheader, label %vector.ph481

vector.ph481:                                     ; preds = %.lr.ph356
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next489, %vector.body483 ] ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep460, i64 %index484 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %wide.load485 = load <2 x double>, ptr %i.cz, align 8, !tbaa !15, !alias.scope !55
  %wide.load486 = load <2 x double>, ptr %i.da, align 8, !tbaa !15, !alias.scope !55
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep462, i64 %index484 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %wide.load487 = load <2 x double>, ptr %i.db, align 8, !tbaa !15, !alias.scope !56, !noalias !55
  %wide.load488 = load <2 x double>, ptr %i.dc, align 8, !tbaa !15, !alias.scope !56, !noalias !55
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load485, <2 x double> %wide.load487)
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load486, <2 x double> %wide.load488)
  store <2 x double> %i.dd, ptr %i.db, align 8, !tbaa !15, !alias.scope !56, !noalias !55
  store <2 x double> %i.de, ptr %i.dc, align 8, !tbaa !15, !alias.scope !56, !noalias !55
  %index.next489 = add nuw i64 %index484, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next489, %n.vec482
  br i1 %i.df, label %middle.block490, label %vector.body483, !llvm.loop !33

middle.block490:                                  ; preds = %vector.body483
  br i1 %cmp.n491, label %._crit_edge357, label %scalar.ph479.preheader

scalar.ph479.preheader:                           ; preds = %.lr.ph356, %middle.block490
  %indvars.iv394.ph = phi i64 [ %n.vec482, %middle.block490 ], [ 0, %.lr.ph356 ] ; 5 uses
  br i1 %lcmp.mod588.not, label %scalar.ph479.prol.loopexit, label %scalar.ph479.prol

scalar.ph479.prol:                                ; preds = %scalar.ph479.preheader
  %gep461.prol = getelementptr [8 x i8], ptr %invariant.gep460, i64 %indvars.iv394.ph
  %i.dg = load double, ptr %gep461.prol, align 8, !tbaa !15
  %gep463.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep462, i64 %indvars.iv394.ph ; 2 uses
  %i.dh = load double, ptr %gep463.prol, align 8, !tbaa !15
  %i.di = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.dg, double %i.dh)
  store double %i.di, ptr %gep463.prol, align 8, !tbaa !15
  %indvars.iv.next395.prol = or disjoint i64 %indvars.iv394.ph, 1
  br label %scalar.ph479.prol.loopexit

scalar.ph479.prol.loopexit:                       ; preds = %scalar.ph479.prol, %scalar.ph479.preheader
  %indvars.iv394.unr = phi i64 [ %indvars.iv394.ph, %scalar.ph479.preheader ], [ %indvars.iv.next395.prol, %scalar.ph479.prol ]
  %i.dj = icmp eq i64 %indvars.iv394.ph, %i.y
  br i1 %i.dj, label %._crit_edge357, label %scalar.ph479

._crit_edge357:                                   ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479, %middle.block490
  store double 0.000000e+00, ptr %gep465, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cu ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %._crit_edge357, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %._crit_edge357 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dl, align 8, !tbaa !15 ; 2 uses
  %wide.load476 = load <2 x double>, ptr %i.dm, align 8, !tbaa !15 ; 2 uses
  %i.dn = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.do = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load476)
  %i.dp = fcmp olt <2 x double> %i.dn, splat (double f0x3D719799812DEA11)
  %i.dq = fcmp olt <2 x double> %i.do, splat (double f0x3D719799812DEA11)
  %i.dr = select <2 x i1> %i.dp, <2 x double> zeroinitializer, <2 x double> %wide.load
  %i.ds = select <2 x i1> %i.dq, <2 x double> zeroinitializer, <2 x double> %wide.load476
  store <2 x double> %i.dr, ptr %i.dl, align 8
  store <2 x double> %i.ds, ptr %i.dm, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
end_hunk_0
