inline.NumInlined: 1
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
  %i.m = sext i32 %i.l to i64                     ; 7 uses
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 8 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.q = shl nuw nsw i64 %i.m, 2
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.q
  %scevgep11 = getelementptr i8, ptr %i.p, i64 %i.m
  %bound0 = icmp ult ptr %i.h, %scevgep11
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %wide.load = load <4 x i8>, ptr %i.r, align 1, !tbaa !20, !alias.scope !21
  %wide.load12 = load <4 x i8>, ptr %i.s, align 1, !tbaa !20, !alias.scope !21
  %i.t = uitofp <4 x i8> %wide.load to <4 x float>
  %i.u = uitofp <4 x i8> %wide.load12 to <4 x float>
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x float> %i.t, ptr %i.v, align 4, !tbaa !24, !alias.scope !26, !noalias !21
  store <4 x float> %i.u, ptr %i.w, align 4, !tbaa !24, !alias.scope !26, !noalias !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.010.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.m, 3
  %i.y = and i32 %i.l, 3
  %lcmp.mod.not = icmp eq i32 %i.y, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.010.prol = phi i64 [ %i.ad, %scalar.ph.prol ], [ %.010.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %.010.prol
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.010.prol
  store float %i.ab, ptr %i.ac, align 4, !tbaa !24
  %i.ad = add nuw nsw i64 %.010.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !32

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.010.unr = phi i64 [ %.010.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %.010.ph, %i.m
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.010 = phi i64 [ %i.az, %scalar.ph ], [ %.010.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 %.010
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %i.ai = uitofp i8 %i.ah to float
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.010
  store float %i.ai, ptr %i.aj, align 4, !tbaa !24
  %i.ak = add nuw nsw i64 %.010, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = uitofp i8 %i.am to float
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ak
  store float %i.an, ptr %i.ao, align 4, !tbaa !24
  %i.ap = add nuw nsw i64 %.010, 2                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = uitofp i8 %i.ar to float
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap
  store float %i.as, ptr %i.at, align 4, !tbaa !24
  %i.au = add nuw nsw i64 %.010, 3                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = uitofp i8 %i.aw to float
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  store float %i.ax, ptr %i.ay, align 4, !tbaa !24
  %i.az = add nuw nsw i64 %.010, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.az, %i.m
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
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge60

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
  br i1 %i.m, label %.preheader.lr.ph.split.us, label %._crit_edge60

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %.not48 = icmp slt i32 %i.n, 0
  br i1 %.not48, label %.preheader.lr.ph.split.us.split.us.split.us, label %.preheader.lr.ph.split.us.split

.preheader.lr.ph.split.us.split.us.split.us:      ; preds = %.preheader.lr.ph.split.us
  %i.u = zext nneg i32 %i.k to i64                ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.i to i64 ; 2 uses
  %wide.trip.count106 = zext i32 %i.l to i64      ; 4 uses
  br i1 %.not47, label %.preheader.us.us.us.us.preheader, label %.preheader.us.us.us.preheader

.preheader.us.us.us.preheader:                    ; preds = %.preheader.lr.ph.split.us.split.us.split.us
  %2 = add nsw i64 %wide.trip.count106, -10       ; 3 uses
  %min.iters.check = icmp ult i64 %2, 4
  %n.vec = and i64 %2, -4                         ; 3 uses
  %i.v = add nsw i64 %n.vec, 10
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat125 = shufflevector <4 x float> %broadcast.splatinsert124, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %2, %n.vec
  br label %.preheader.us.us.us

.preheader.us.us.us.us.preheader:                 ; preds = %.preheader.lr.ph.split.us.split.us.split.us
  %3 = add nsw i64 %wide.trip.count106, -10       ; 3 uses
  %min.iters.check127 = icmp ult i64 %3, 4
  %n.vec130 = and i64 %3, -4                      ; 3 uses
  %i.w = add nsw i64 %n.vec130, 10
  %broadcast.splatinsert131 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %broadcast.splatinsert131, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n138 = icmp eq i64 %3, %n.vec130
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %.preheader.us.us.us.us.preheader, %._crit_edge58.split.us.split.us.split.us.us.us.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge58.split.us.split.us.split.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.preheader ] ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv108, %i.u
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.body133

vector.body133:                                   ; preds = %.preheader.us.us.us.us, %vector.body133
  %index134 = phi i64 [ %index.next136, %vector.body133 ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %index134
  %i.aa = getelementptr i8, ptr %i.z, i64 40      ; 2 uses
  %wide.load135 = load <4 x float>, ptr %i.aa, align 4, !tbaa !24
  %i.ab = fdiv <4 x float> %wide.load135, %broadcast.splat132
  store <4 x float> %i.ab, ptr %i.aa, align 4, !tbaa !24
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.ac, label %middle.block137, label %vector.body133, !llvm.loop !36

middle.block137:                                  ; preds = %vector.body133
  br i1 %cmp.n138, label %._crit_edge58.split.us.split.us.split.us.us.us.us.us, label %scalar.ph126.preheader

scalar.ph126.preheader:                           ; preds = %.preheader.us.us.us.us, %middle.block137
  %indvars.iv103.ph = phi i64 [ 10, %.preheader.us.us.us.us ], [ %i.w, %middle.block137 ]
  br label %scalar.ph126

scalar.ph126:                                     ; preds = %scalar.ph126.preheader, %scalar.ph126
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph126 ], [ %indvars.iv103.ph, %scalar.ph126.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv103 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !24
  %i.af = fdiv float %i.ae, %i.s
  store float %i.af, ptr %i.ad, align 4, !tbaa !24
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge58.split.us.split.us.split.us.us.us.us.us, label %scalar.ph126, !llvm.loop !37

._crit_edge58.split.us.split.us.split.us.us.us.us.us: ; preds = %scalar.ph126, %middle.block137
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge60, label %.preheader.us.us.us.us, !llvm.loop !38

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %._crit_edge58.split.us.split.us.split.us73.us.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge58.split.us.split.us.split.us73.us.us ], [ 0, %.preheader.us.us.us.preheader ] ; 2 uses
  %i.ag = mul nuw nsw i64 %indvars.iv98, %i.u
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %index
  %i.aj = getelementptr i8, ptr %i.ai, i64 40     ; 2 uses
  %wide.load = load <4 x float>, ptr %i.aj, align 4, !tbaa !24
  %i.ak = fdiv <4 x float> %wide.load, %broadcast.splat
  %i.al = fcmp ugt <4 x float> %i.ak, %broadcast.splat125
  %i.am = select <4 x i1> %i.al, <4 x float> splat (float 2.550000e+02), <4 x float> zeroinitializer
  store <4 x float> %i.am, ptr %i.aj, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge58.split.us.split.us.split.us73.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv93.ph = phi i64 [ 10, %.preheader.us.us.us ], [ %i.v, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %scalar.ph ], [ %indvars.iv93.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv93 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !24
  %i.aq = fdiv float %i.ap, %i.s
  %i.ar = fcmp ugt float %i.aq, %i.t
  %storemerge = select i1 %i.ar, float 2.550000e+02, float 0.000000e+00
  store float %storemerge, ptr %i.ao, align 4, !tbaa !24
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count106
  br i1 %exitcond97.not, label %._crit_edge58.split.us.split.us.split.us73.us.us, label %scalar.ph, !llvm.loop !40

._crit_edge58.split.us.split.us.split.us73.us.us: ; preds = %scalar.ph, %middle.block
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count111
  br i1 %exitcond102.not, label %._crit_edge60, label %.preheader.us.us.us, !llvm.loop !38

.preheader.lr.ph.split.us.split:                  ; preds = %.preheader.lr.ph.split.us
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !19  ; 2 uses
  %i.at = sext i32 %i.o to i64                    ; 3 uses
  %i.au = add nuw i32 %i.n, 1                     ; 2 uses
  %i.av = zext nneg i32 %i.k to i64
  %wide.trip.count91 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext i32 %i.l to i64
  %i.aw = shl nuw i32 %i.n, 1
  %i.ax = and i32 %i.aw, 2
  %i.ay = icmp ult i32 %i.n, 2
  %indvars.iv.next80.prol = add nsw i64 %i.at, 1
  %i.az = icmp eq i32 %i.n, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge58.split.us67, %.preheader.lr.ph.split.us.split
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %._crit_edge58.split.us67 ], [ 0, %.preheader.lr.ph.split.us.split ] ; 2 uses
  %i.ba = mul nuw nsw i64 %indvars.iv88, %i.av
  br label %.lr.ph.us65

.lr.ph.us65.new:                                  ; preds = %.prol.loopexit, %.lr.ph.us65.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us65.new ], [ %indvars.iv.next.prol, %.prol.loopexit ] ; 5 uses
  %.050.us62 = phi float [ %i.bp, %.lr.ph.us65.new ], [ %i.cj, %.prol.loopexit ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bb = load i8, ptr %gep, align 1, !tbaa !20
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = fadd float %.050.us62, %i.bc
  %i.be = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.be, i64 1
  %i.bf = load i8, ptr %gep.1, align 1, !tbaa !20
  %i.bg = uitofp i8 %i.bf to float
  %i.bh = fadd float %i.bd, %i.bg
  %i.bi = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.2 = getelementptr i8, ptr %i.bi, i64 2
  %i.bj = load i8, ptr %gep.2, align 1, !tbaa !20
  %i.bk = uitofp i8 %i.bj to float
  %i.bl = fadd float %i.bh, %i.bk
  %i.bm = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr i8, ptr %i.bm, i64 3
  %i.bn = load i8, ptr %gep.3, align 1, !tbaa !20
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fadd float %i.bl, %i.bo                 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.au, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %.lr.ph54.us, label %.lr.ph.us65.new, !llvm.loop !41

.lr.ph54.us:                                      ; preds = %.lr.ph.us65.new, %.prol.loopexit
  %.lcssa = phi float [ %i.cj, %.prol.loopexit ], [ %i.bp, %.lr.ph.us65.new ]
  %i.bq = fdiv float %.lcssa, %i.s                ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cg ; 5 uses
  %.promoted.us = load float, ptr %i.br, align 4, !tbaa !24
  %invariant.gep118 = getelementptr i8, ptr %i.as, i64 %i.cg ; 3 uses
  %gep119.prol = getelementptr i8, ptr %invariant.gep118, i64 %i.at
  %i.bs = load i8, ptr %gep119.prol, align 1, !tbaa !20
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fsub float %i.bt, %i.bq                 ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %.promoted.us) ; 3 uses
  store float %i.bv, ptr %i.br, align 4, !tbaa !24
  br i1 %i.az, label %._crit_edge55.us, label %.lr.ph54.us.new

.lr.ph54.us.new:                                  ; preds = %.lr.ph54.us, %.lr.ph54.us.new
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.1, %.lr.ph54.us.new ], [ %indvars.iv.next80.prol, %.lr.ph54.us ] ; 3 uses
  %i.bw = phi float [ %i.cf, %.lr.ph54.us.new ], [ %i.bv, %.lr.ph54.us ]
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %indvars.iv79
  %i.bx = load i8, ptr %gep119, align 1, !tbaa !20
  %i.by = uitofp i8 %i.bx to float
  %i.bz = fsub float %i.by, %i.bq                 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.bw) ; 2 uses
  store float %i.ca, ptr %i.br, align 4, !tbaa !24
  %i.cb = getelementptr i8, ptr %invariant.gep118, i64 %indvars.iv79
  %gep119.1 = getelementptr i8, ptr %i.cb, i64 1
  %i.cc = load i8, ptr %gep119.1, align 1, !tbaa !20
  %i.cd = uitofp i8 %i.cc to float
  %i.ce = fsub float %i.cd, %i.bq                 ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ca) ; 3 uses
  store float %i.cf, ptr %i.br, align 4, !tbaa !24
  %indvars.iv.next80.1 = add nsw i64 %indvars.iv79, 2 ; 2 uses
  %lftr.wideiv82.1 = trunc i64 %indvars.iv.next80.1 to i32
  %exitcond83.not.1 = icmp eq i32 %i.au, %lftr.wideiv82.1
  br i1 %exitcond83.not.1, label %._crit_edge55.us, label %.lr.ph54.us.new, !llvm.loop !42

.lr.ph.us65:                                      ; preds = %._crit_edge55.us, %.preheader.us
  %indvars.iv84 = phi i64 [ 10, %.preheader.us ], [ %indvars.iv.next85, %._crit_edge55.us ] ; 2 uses
  %i.cg = add nuw nsw i64 %i.ba, %indvars.iv84    ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.as, i64 %i.cg ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us65
  %indvars.iv.prol = phi i64 [ %i.at, %.lr.ph.us65 ], [ %indvars.iv.next.prol, %bb.b ] ; 2 uses
  %.050.us62.prol = phi float [ 0.000000e+00, %.lr.ph.us65 ], [ %i.cj, %bb.b ]
  %prol.iter = phi i32 [ 0, %.lr.ph.us65 ], [ %prol.iter.next, %bb.b ] ; 2 uses
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ch = load i8, ptr %gep.prol, align 1, !tbaa !20
  %i.ci = uitofp i8 %i.ch to float
  %i.cj = fadd float %.050.us62.prol, %i.ci       ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, %i.ax
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.b, !llvm.loop !43

.prol.loopexit:                                   ; preds = %bb.b
  br i1 %i.ay, label %.lr.ph54.us, label %.lr.ph.us65.new

._crit_edge55.us:                                 ; preds = %.lr.ph54.us.new, %.lr.ph54.us
  %.lcssa142 = phi float [ %i.bv, %.lr.ph54.us ], [ %i.cf, %.lr.ph54.us.new ]
  %i.ck = fdiv float %.lcssa142, %i.s             ; 2 uses
  %i.cl = fcmp ugt float %i.ck, %i.t
  %. = select i1 %i.cl, float 2.550000e+02, float 0.000000e+00
  %storemerge120 = select i1 %.not47, float %i.ck, float %.
  store float %storemerge120, ptr %i.br, align 4, !tbaa !24
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count
  br i1 %exitcond87.not, label %._crit_edge58.split.us67, label %.lr.ph.us65, !llvm.loop !44

._crit_edge58.split.us67:                         ; preds = %._crit_edge55.us
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
end_hunk_0
