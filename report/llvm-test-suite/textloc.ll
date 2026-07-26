inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@HVAR_WINDOW = external local_unnamed_addr global i32, align 4
@KILL_SMALL_COMP = external local_unnamed_addr global i32, align 4
@VSPREAD_THRESHOLD = external local_unnamed_addr global double, align 8
@SMALL_THRESHOLD = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"component:\09 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"# points:\09 %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"average row:\09 %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"x max:\09\09 %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"y max:\09\09 %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"x min:\09\09 %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"y min:\09\09 %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"type:\09\09 %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"falling\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rising\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Total points: %d\0A\00", align 1
@WriteConnectedComponentsToPGM.index = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"%s.comp%d.pgm\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@SAME_ROW_V = external local_unnamed_addr global i32, align 4
@SAME_ROW_H = external local_unnamed_addr global i32, align 4
@MAX_CHAR_SIZE = external local_unnamed_addr global i32, align 4
@MIN_CHAR_SIZE = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [39 x i8] c"Unexpected error in PairComponents(). \00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"Unexpected case or mathematical absurdity reached in Overlap(). \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%s.out.pgm\00", align 1
@str = private unnamed_addr constant [26 x i8] c"------------------------\0A\00", align 1
@str.1 = private unnamed_addr constant [25 x i8] c"------------------------\00", align 1
@str.2 = private unnamed_addr constant [45 x i8] c"Unexpected error in MergeToLeft(), aborting.\00", align 1
@str.3 = private unnamed_addr constant [9 x i8] c"Exiting.\00", align 1
@str.4 = private unnamed_addr constant [7 x i8] c"Twink!\00", align 1

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @ConvertToFloat(ptr nofree noundef captures(none) initializes((64, 72)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #13 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.h, ptr %i.i, align 8, !tbaa !18
  %i.j = load i32, ptr %i.a, align 4, !tbaa !8
  %i.k = load i32, ptr %i.c, align 8, !tbaa !17
  %i.l = mul nsw i32 %i.k, %i.j                   ; 4 uses
  %1 = sext i32 %i.l to i64                       ; 7 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 8 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.p = shl nuw nsw i64 %1, 2
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.p
  %scevgep11 = getelementptr i8, ptr %i.o, i64 %1
  %bound0 = icmp ult ptr %i.h, %scevgep11
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %wide.load = load <4 x i8>, ptr %i.q, align 1, !tbaa !20, !alias.scope !21
  %wide.load12 = load <4 x i8>, ptr %i.r, align 1, !tbaa !20, !alias.scope !21
  %i.s = uitofp <4 x i8> %wide.load to <4 x float>
  %i.t = uitofp <4 x i8> %wide.load12 to <4 x float>
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %i.s, ptr %i.u, align 4, !tbaa !24, !alias.scope !26, !noalias !21
  store <4 x float> %i.t, ptr %i.v, align 4, !tbaa !24, !alias.scope !26, !noalias !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %1
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.010.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %1, 3
  %2 = and i32 %i.l, 3
  %lcmp.mod.not = icmp eq i32 %2, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.010.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.010.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %.010.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = uitofp i8 %i.y to float
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.010.prol
  store float %i.z, ptr %i.aa, align 4, !tbaa !24
  %i.ab = add nuw nsw i64 %.010.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !32

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.010.unr = phi i64 [ %.010.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.010.ph, %1
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.010 = phi i64 [ %i.ax, %scalar.ph ], [ %.010.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %.010
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20
  %i.ag = uitofp i8 %i.af to float
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.010
  store float %i.ag, ptr %i.ah, align 4, !tbaa !24
  %i.ai = add nuw nsw i64 %.010, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = uitofp i8 %i.ak to float
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ai
  store float %i.al, ptr %i.am, align 4, !tbaa !24
  %i.an = add nuw nsw i64 %.010, 2                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !20
  %i.aq = uitofp i8 %i.ap to float
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.an
  store float %i.aq, ptr %i.ar, align 4, !tbaa !24
  %i.as = add nuw nsw i64 %.010, 3                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %i.av = uitofp i8 %i.au to float
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.as
  store float %i.av, ptr %i.aw, align 4, !tbaa !24
  %i.ax = add nuw nsw i64 %.010, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ax, %1
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @HorzVariance(ptr nofree noundef captures(none) initializes((72, 80)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #14 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.g, ptr %i.h, align 8, !tbaa !35
  %i.i = load i32, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge60.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = load i32, ptr %i.a, align 4, !tbaa !8    ; 4 uses
  %i.l = add i32 %i.k, -10                        ; 2 uses
  %i.m = icmp sgt i32 %i.k, 20
  %i.n = load i32, ptr @HVAR_WINDOW, align 4      ; 7 uses
  %i.o = sub i32 0, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = shl nsw i32 %i.n, 1
  %i.r = or disjoint i32 %i.q, 1
  %i.s = sitofp i32 %i.r to float                 ; 6 uses
  %.not47 = icmp eq i32 %1, -1                    ; 2 uses
  %i.t = sitofp i32 %1 to float                   ; 3 uses
  br i1 %i.m, label %.preheader.lr.ph.split, label %._crit_edge60.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not48 = icmp slt i32 %i.n, 0
  br i1 %.not48, label %.preheader.lr.ph.split.split.us.split.us, label %.preheader.lr.ph.split.split

.preheader.lr.ph.split.split.us.split.us:         ; preds = %.preheader.lr.ph.split
  %i.u = zext nneg i32 %i.k to i64                ; 2 uses
  %wide.trip.count104 = zext nneg i32 %i.i to i64 ; 2 uses
  %wide.trip.count99 = zext i32 %i.l to i64       ; 4 uses
  br i1 %.not47, label %.preheader.us.us.us.preheader, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.split.us.split.us
  %i.v = add nsw i64 %wide.trip.count99, -10      ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %i.w = add nsw i64 %n.vec, 10
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat118 = shufflevector <4 x float> %broadcast.splatinsert117, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br label %.preheader.us.us

.preheader.us.us.us.preheader:                    ; preds = %.preheader.lr.ph.split.split.us.split.us
  %i.x = add nsw i64 %wide.trip.count99, -10      ; 3 uses
  %min.iters.check120 = icmp ult i64 %i.x, 4
  %n.vec123 = and i64 %i.x, -4                    ; 3 uses
  %i.y = add nsw i64 %n.vec123, 10
  %broadcast.splatinsert124 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat125 = shufflevector <4 x float> %broadcast.splatinsert124, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n131 = icmp eq i64 %i.x, %n.vec123
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %._crit_edge58.split.us.split.us.split.us.us.us.us
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %._crit_edge58.split.us.split.us.split.us.us.us.us ], [ 0, %.preheader.us.us.us.preheader ] ; 2 uses
  %i.z = mul nuw nsw i64 %indvars.iv101, %i.u
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z ; 2 uses
  br i1 %min.iters.check120, label %scalar.ph119.preheader, label %vector.body126

vector.body126:                                   ; preds = %.preheader.us.us.us, %vector.body126
  %index127 = phi i64 [ %index.next129, %vector.body126 ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %wide.load128 = load <4 x float>, ptr %i.ac, align 4, !tbaa !24
  %i.ad = fdiv <4 x float> %wide.load128, %broadcast.splat125
  store <4 x float> %i.ad, ptr %i.ac, align 4, !tbaa !24
  %index.next129 = add nuw i64 %index127, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next129, %n.vec123
  br i1 %i.ae, label %middle.block130, label %vector.body126, !llvm.loop !36

middle.block130:                                  ; preds = %vector.body126
  br i1 %cmp.n131, label %._crit_edge58.split.us.split.us.split.us.us.us.us, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %.preheader.us.us.us, %middle.block130
  %indvars.iv96.ph = phi i64 [ 10, %.preheader.us.us.us ], [ %i.y, %middle.block130 ]
  br label %scalar.ph119

scalar.ph119:                                     ; preds = %scalar.ph119.preheader, %scalar.ph119
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %scalar.ph119 ], [ %indvars.iv96.ph, %scalar.ph119.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv96 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !24
  %i.ah = fdiv float %i.ag, %i.s
  store float %i.ah, ptr %i.af, align 4, !tbaa !24
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge58.split.us.split.us.split.us.us.us.us, label %scalar.ph119, !llvm.loop !37

._crit_edge58.split.us.split.us.split.us.us.us.us: ; preds = %scalar.ph119, %middle.block130
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge60.split, label %.preheader.us.us.us, !llvm.loop !38

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge58.split.us.split.us.split.us65.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %._crit_edge58.split.us.split.us.split.us65.us ], [ 0, %.preheader.us.us.preheader ] ; 2 uses
  %i.ai = mul nuw nsw i64 %indvars.iv91, %i.u
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.al, align 4, !tbaa !24
  %i.am = fdiv <4 x float> %wide.load, %broadcast.splat
  %i.an = fcmp ugt <4 x float> %i.am, %broadcast.splat118
  %i.ao = select <4 x i1> %i.an, <4 x float> splat (float 2.550000e+02), <4 x float> zeroinitializer
  store <4 x float> %i.ao, ptr %i.al, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge58.split.us.split.us.split.us65.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv86.ph = phi i64 [ 10, %.preheader.us.us ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %scalar.ph ], [ %indvars.iv86.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv86 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !24
  %i.as = fdiv float %i.ar, %i.s
  %i.at = fcmp ugt float %i.as, %i.t
  %storemerge = select i1 %i.at, float 2.550000e+02, float 0.000000e+00
  store float %storemerge, ptr %i.aq, align 4, !tbaa !24
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count99
  br i1 %exitcond90.not, label %._crit_edge58.split.us.split.us.split.us65.us, label %scalar.ph, !llvm.loop !40

._crit_edge58.split.us.split.us.split.us65.us:    ; preds = %scalar.ph, %middle.block
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count104
  br i1 %exitcond95.not, label %._crit_edge60.split, label %.preheader.us.us, !llvm.loop !38

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !19  ; 2 uses
  %i.av = sext i32 %i.o to i64                    ; 3 uses
  %i.aw = add nuw i32 %i.n, 1                     ; 2 uses
  %i.ax = zext nneg i32 %i.k to i64
  %wide.trip.count84 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext i32 %i.l to i64
  %i.ay = shl nuw i32 %i.n, 1
  %i.az = and i32 %i.ay, 2
  %i.ba = icmp ult i32 %i.n, 2
  %indvars.iv.next73.prol = add nsw i64 %i.av, 1
  %i.bb = icmp eq i32 %i.n, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge58.split
  %indvars.iv81 = phi i64 [ 0, %.preheader.lr.ph.split.split ], [ %indvars.iv.next82, %._crit_edge58.split ] ; 2 uses
  %i.bc = mul nuw nsw i64 %indvars.iv81, %i.ax
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge55, %.preheader
  %indvars.iv77 = phi i64 [ 10, %.preheader ], [ %indvars.iv.next78, %._crit_edge55 ] ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, %indvars.iv77    ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.au, i64 %i.bd ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.prol = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next.prol, %bb.b ] ; 2 uses
  %.050.prol = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bg, %bb.b ]
  %prol.iter = phi i32 [ 0, %.lr.ph ], [ %prol.iter.next, %bb.b ] ; 2 uses
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.be = load i8, ptr %gep.prol, align 1, !tbaa !20
  %i.bf = uitofp i8 %i.be to float
  %i.bg = fadd float %.050.prol, %i.bf            ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, %i.az
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.b, !llvm.loop !41

.prol.loopexit:                                   ; preds = %bb.b
  br i1 %i.ba, label %.lr.ph54, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.next.prol, %.prol.loopexit ] ; 5 uses
  %.050 = phi float [ %i.bv, %.lr.ph.new ], [ %i.bg, %.prol.loopexit ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bh = load i8, ptr %gep, align 1, !tbaa !20
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fadd float %.050, %i.bi
  %i.bk = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.bk, i64 1
  %i.bl = load i8, ptr %gep.1, align 1, !tbaa !20
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fadd float %i.bj, %i.bm
  %i.bo = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.2 = getelementptr i8, ptr %i.bo, i64 2
  %i.bp = load i8, ptr %gep.2, align 1, !tbaa !20
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fadd float %i.bn, %i.bq
  %i.bs = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr i8, ptr %i.bs, i64 3
  %i.bt = load i8, ptr %gep.3, align 1, !tbaa !20
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = fadd float %i.br, %i.bu                 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.aw, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %.lr.ph54, label %.lr.ph.new, !llvm.loop !42

.lr.ph54:                                         ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa = phi float [ %i.bg, %.prol.loopexit ], [ %i.bv, %.lr.ph.new ]
  %i.bw = fdiv float %.lcssa, %i.s                ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd ; 5 uses
  %.promoted = load float, ptr %i.bx, align 4, !tbaa !24
  %invariant.gep111 = getelementptr i8, ptr %i.au, i64 %i.bd ; 3 uses
  %gep112.prol = getelementptr i8, ptr %invariant.gep111, i64 %i.av
  %i.by = load i8, ptr %gep112.prol, align 1, !tbaa !20
  %i.bz = uitofp i8 %i.by to float
  %i.ca = fsub float %i.bz, %i.bw                 ; 2 uses
end_hunk_0
