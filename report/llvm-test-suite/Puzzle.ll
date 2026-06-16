inline.NumInlined: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local local_unnamed_addr global i64 0, align 8
@piecemax = dso_local local_unnamed_addr global [13 x i32] zeroinitializer, align 16
@p = dso_local local_unnamed_addr global [13 x [512 x i32]] zeroinitializer, align 16
@puzzl = dso_local local_unnamed_addr global [512 x i32] zeroinitializer, align 16
@piececount = dso_local local_unnamed_addr global [4 x i32] zeroinitializer, align 16
@class = dso_local local_unnamed_addr global [13 x i32] zeroinitializer, align 16
@kount = dso_local local_unnamed_addr global i32 0, align 4
@n = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@fixed = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@floated = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@permarray = dso_local local_unnamed_addr global [11 x i32] zeroinitializer, align 16
@pctr = dso_local local_unnamed_addr global i32 0, align 4
@tree = dso_local local_unnamed_addr global ptr null, align 8
@stack = dso_local local_unnamed_addr global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local local_unnamed_addr global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local local_unnamed_addr global i32 0, align 4
@movesdone = dso_local local_unnamed_addr global i32 0, align 4
@ima = dso_local local_unnamed_addr global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local local_unnamed_addr global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local local_unnamed_addr global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local local_unnamed_addr global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local local_unnamed_addr global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local local_unnamed_addr global [41 x [41 x float]] zeroinitializer, align 16
@sortlist = dso_local local_unnamed_addr global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local local_unnamed_addr global i32 0, align 4
@littlest = dso_local local_unnamed_addr global i32 0, align 4
@top = dso_local local_unnamed_addr global i32 0, align 4
@z = dso_local local_unnamed_addr global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local local_unnamed_addr global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local local_unnamed_addr global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@zi = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@str = private unnamed_addr constant [17 x i8] c"Error1 in Puzzle\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"Error2 in Puzzle.\00", align 1
@str.2 = private unnamed_addr constant [18 x i8] c"Error3 in Puzzle.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Initrand() local_unnamed_addr #0 {
bb.a:
  store i64 74755, ptr @seed, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 65536) i32 @Rand() local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr @seed, align 8, !tbaa !8
  %i.b = mul nsw i64 %i.a, 1309
  %i.c = add nsw i64 %i.b, 13849
  %i.d = and i64 %i.c, 65535                      ; 2 uses
  store i64 %i.d, ptr @seed, align 8, !tbaa !8
  %i.e = trunc nuw nsw i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @Fit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not11 = icmp slt i32 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds [2048 x i8], ptr @p, i64 %i.a
  %i.e = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.h = load i32, ptr %gep, align 4, !tbaa !4
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %wide.trip.count
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.08 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 3 uses
  %.not18 = icmp slt i32 %i.c, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds [2048 x i8], ptr @p, i64 %i.a ; 2 uses
  %i.e = sext i32 %1 to i64
  %i.f = add nuw i32 %i.c, 1
  %wide.trip.count = zext i32 %i.f to i64         ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %i.e ; 9 uses
  %min.iters.check = icmp ult i32 %i.c, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue50, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue50 ] ; 10 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 16, !tbaa !4
  %wide.load36 = load <4 x i32>, ptr %i.h, align 16, !tbaa !4
  %i.i = icmp ne <4 x i32> %wide.load, zeroinitializer ; 4 uses
  %i.j = icmp ne <4 x i32> %wide.load36, zeroinitializer ; 4 uses
  %i.k = extractelement <4 x i1> %i.i, i64 0
  br i1 %i.k, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.l = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store i32 1, ptr %i.l, align 4, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.m = extractelement <4 x i1> %i.i, i64 1
  br i1 %i.m, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue
  %i.n = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.o = getelementptr i8, ptr %i.n, i64 4
  store i32 1, ptr %i.o, align 4, !tbaa !4
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue
  %i.p = extractelement <4 x i1> %i.i, i64 2
  br i1 %i.p, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.q = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !4
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.s = extractelement <4 x i1> %i.i, i64 3
  br i1 %i.s, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.t = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.u = getelementptr i8, ptr %i.t, i64 12
  store i32 1, ptr %i.u, align 4, !tbaa !4
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.v = extractelement <4 x i1> %i.j, i64 0
  br i1 %i.v, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.w = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store i32 1, ptr %i.x, align 4, !tbaa !4
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.y = extractelement <4 x i1> %i.j, i64 1
  br i1 %i.y, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.z = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.aa = getelementptr i8, ptr %i.z, i64 20
  store i32 1, ptr %i.aa, align 4, !tbaa !4
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.ab = extractelement <4 x i1> %i.j, i64 2
  br i1 %i.ab, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.ac = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  store i32 1, ptr %i.ad, align 4, !tbaa !4
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.ae = extractelement <4 x i1> %i.j, i64 3
  br i1 %i.ae, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.af = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.ag = getelementptr i8, ptr %i.af, i64 28
  store i32 1, ptr %i.ag, align 4, !tbaa !4
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %pred.store.continue50
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %.not17 = icmp eq i32 %i.aj, 0
  br i1 %.not17, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 1, ptr %gep, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %scalar.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.c, %middle.block, %bb.a
  %i.ak = getelementptr inbounds [4 x i8], ptr @class, i64 %i.a
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr @piececount, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !4
  %i.aq = icmp slt i32 %1, 512
  br i1 %i.aq, label %.lr.ph22.preheader, label %._crit_edge23

.lr.ph22.preheader:                               ; preds = %._crit_edge
  %i.ar = sext i32 %1 to i64
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.d
  %indvars.iv28 = phi i64 [ %i.ar, %.lr.ph22.preheader ], [ %indvars.iv.next29, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %.not16 = icmp eq i32 %i.at, 0
  br i1 %.not16, label %._crit_edge23.loopexit.split.loop.exit33, label %bb.d

bb.d:                                             ; preds = %.lr.ph22
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.au = and i64 %indvars.iv.next29, 4294967295
  %exitcond31.not = icmp eq i64 %i.au, 512
  br i1 %exitcond31.not, label %._crit_edge23, label %.lr.ph22, !llvm.loop !16

._crit_edge23.loopexit.split.loop.exit33:         ; preds = %.lr.ph22
  %i.av = trunc nsw i64 %indvars.iv28 to i32
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %bb.d, %._crit_edge23.loopexit.split.loop.exit33, %._crit_edge
  %.015 = phi i32 [ 0, %._crit_edge ], [ %i.av, %._crit_edge23.loopexit.split.loop.exit33 ], [ 0, %bb.d ]
  ret i32 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 3 uses
  %.not10 = icmp slt i32 %i.c, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds [2048 x i8], ptr @p, i64 %i.a ; 2 uses
  %i.e = sext i32 %1 to i64
  %i.f = add nuw i32 %i.c, 1
  %wide.trip.count = zext i32 %i.f to i64         ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %i.e ; 9 uses
  %min.iters.check = icmp ult i32 %i.c, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue27, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue27 ] ; 10 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 16, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.h, align 16, !tbaa !4
  %i.i = icmp ne <4 x i32> %wide.load, zeroinitializer ; 4 uses
  %i.j = icmp ne <4 x i32> %wide.load13, zeroinitializer ; 4 uses
  %i.k = extractelement <4 x i1> %i.i, i64 0
  br i1 %i.k, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.l = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store i32 0, ptr %i.l, align 4, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.m = extractelement <4 x i1> %i.i, i64 1
  br i1 %i.m, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue
  %i.n = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.o = getelementptr i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue
  %i.p = extractelement <4 x i1> %i.i, i64 2
  br i1 %i.p, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  %i.q = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store i32 0, ptr %i.r, align 4, !tbaa !4
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.s = extractelement <4 x i1> %i.i, i64 3
  br i1 %i.s, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  %i.t = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.u = getelementptr i8, ptr %i.t, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !4
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.v = extractelement <4 x i1> %i.j, i64 0
  br i1 %i.v, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %i.w = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store i32 0, ptr %i.x, align 4, !tbaa !4
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.y = extractelement <4 x i1> %i.j, i64 1
  br i1 %i.y, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.z = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.aa = getelementptr i8, ptr %i.z, i64 20
  store i32 0, ptr %i.aa, align 4, !tbaa !4
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.ab = extractelement <4 x i1> %i.j, i64 2
  br i1 %i.ab, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.ac = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  store i32 0, ptr %i.ad, align 4, !tbaa !4
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.ae = extractelement <4 x i1> %i.j, i64 3
  br i1 %i.ae, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.af = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.ag = getelementptr i8, ptr %i.af, i64 28
  store i32 0, ptr %i.ag, align 4, !tbaa !4
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %pred.store.continue27
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %.not9 = icmp eq i32 %i.aj, 0
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 0, ptr %gep, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %scalar.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.c, %middle.block, %bb.a
  %i.ak = getelementptr inbounds [4 x i8], ptr @class, i64 %i.a
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr @piececount, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @kount, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @kount, align 4, !tbaa !4
  %i.c = sext i32 %0 to i64                       ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr @puzzl, i64 %i.c ; 19 uses
  %i.d = icmp slt i32 %0, 512
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Fit.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %Fit.exit ] ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr @piececount, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %Fit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @piecemax, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 4 uses
  %.not11.i = icmp slt i32 %i.k, 0
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv ; 3 uses
  %i.m = add nuw i32 %i.k, 1
  %wide.trip.count.i.a = zext i32 %i.m to i64     ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %.not9.i = icmp eq i32 %i.o, 0
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.p = load i32, ptr %gep.i, align 4, !tbaa !4
  %.not10.i = icmp eq i32 %i.p, 0
  br i1 %.not10.i, label %bb.f, label %Fit.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.a
  br i1 %exitcond.not.i, label %.lr.ph.i15.preheader, label %bb.d, !llvm.loop !10

.lr.ph.i15.preheader:                             ; preds = %bb.f
  %1 = add nuw i32 %i.k, 1
  %wide.trip.count.i = zext i32 %1 to i64
  %min.iters.check59 = icmp ult i32 %i.k, 7
  br i1 %min.iters.check59, label %.lr.ph.i15.preheader87, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i15.preheader
  %n.vec62 = and i64 %wide.trip.count.i.a, 4294967288 ; 3 uses
  br label %vector.body63

vector.body63:                                    ; preds = %pred.store.continue82, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next83, %pred.store.continue82 ] ; 10 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load65.a = load <4 x i32>, ptr %i.q, align 16, !tbaa !4
  %wide.load66 = load <4 x i32>, ptr %i.r, align 16, !tbaa !4
  %i.s = icmp ne <4 x i32> %wide.load65.a, zeroinitializer ; 4 uses
  %i.t = icmp ne <4 x i32> %wide.load66, zeroinitializer ; 4 uses
  %i.u = extractelement <4 x i1> %i.s, i64 0
  br i1 %i.u, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %vector.body63
  %i.v = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index64
  store i32 1, ptr %i.v, align 4, !tbaa !4
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %vector.body63
  %i.w = extractelement <4 x i1> %i.s, i64 1
  br i1 %i.w, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  %i.x = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index64
  %i.y = getelementptr i8, ptr %i.x, i64 4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.z = extractelement <4 x i1> %i.s, i64 2
  br i1 %i.z, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  %i.aa = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index64
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store i32 1, ptr %i.ab, align 4, !tbaa !4
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %i.ac = extractelement <4 x i1> %i.s, i64 3
  br i1 %i.ac, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue72
  %i.ad = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index64
  %i.ae = getelementptr i8, ptr %i.ad, i64 12
  store i32 1, ptr %i.ae, align 4, !tbaa !4
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue72
  %i.af = extractelement <4 x i1> %i.t, i64 0
  br i1 %i.af, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue74
  %i.ag = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index64
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  store i32 1, ptr %i.ah, align 4, !tbaa !4
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %i.ai = extractelement <4 x i1> %i.t, i64 1
  br i1 %i.ai, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  %i.aj = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index64
  %i.ak = getelementptr i8, ptr %i.aj, i64 20
  store i32 1, ptr %i.ak, align 4, !tbaa !4
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.al = extractelement <4 x i1> %i.t, i64 2
  br i1 %i.al, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  %i.am = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index64
  %i.an = getelementptr i8, ptr %i.am, i64 24
  store i32 1, ptr %i.an, align 4, !tbaa !4
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.ao = extractelement <4 x i1> %i.t, i64 3
  br i1 %i.ao, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  %i.ap = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index64
  %i.aq = getelementptr i8, ptr %i.ap, i64 28
  store i32 1, ptr %i.aq, align 4, !tbaa !4
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %index.next83 = add nuw i64 %index64, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next83, %n.vec62
  br i1 %i.ar, label %middle.block84, label %vector.body63, !llvm.loop !19

middle.block84:                                   ; preds = %pred.store.continue82
  %cmp.n85 = icmp eq i64 %n.vec62, %wide.trip.count.i.a
  br i1 %cmp.n85, label %._crit_edge.i, label %.lr.ph.i15.preheader87

.lr.ph.i15.preheader87:                           ; preds = %.lr.ph.i15.preheader, %middle.block84
  %indvars.iv.i18.ph = phi i64 [ 0, %.lr.ph.i15.preheader ], [ %n.vec62, %middle.block84 ]
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader87, %bb.h
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i20, %bb.h ], [ %indvars.iv.i18.ph, %.lr.ph.i15.preheader87 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i18
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %.not17.i = icmp eq i32 %i.at, 0
  br i1 %.not17.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i15
  %gep.i19 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i18
  store i32 1, ptr %gep.i19, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i15
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, %wide.trip.count.i
  br i1 %exitcond.not.i21, label %._crit_edge.i, label %.lr.ph.i15, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.h, %middle.block84, %bb.c
  %i.au = add nsw i32 %i.i, -1
  store i32 %i.au, ptr %i.h, align 4, !tbaa !4
  br i1 %i.d, label %.lr.ph22.i, label %Place.exit

.lr.ph22.i:                                       ; preds = %._crit_edge.i, %bb.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %bb.i ], [ %i.c, %._crit_edge.i ] ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv28.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %.not16.i = icmp eq i32 %i.aw, 0
  br i1 %.not16.i, label %._crit_edge23.loopexit.split.loop.exit33.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph22.i
  %indvars.iv.next29.i = add nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %i.ax = and i64 %indvars.iv.next29.i, 4294967295
  %exitcond31.not.i = icmp eq i64 %i.ax, 512
  br i1 %exitcond31.not.i, label %Place.exit, label %.lr.ph22.i, !llvm.loop !16

._crit_edge23.loopexit.split.loop.exit33.i:       ; preds = %.lr.ph22.i
  %i.ay = trunc nsw i64 %indvars.iv28.i to i32
  br label %Place.exit

Place.exit:                                       ; preds = %bb.i, %._crit_edge.i, %._crit_edge23.loopexit.split.loop.exit33.i
  %.015.i = phi i32 [ 0, %._crit_edge.i ], [ %i.ay, %._crit_edge23.loopexit.split.loop.exit33.i ], [ 0, %bb.i ] ; 2 uses
  %i.az = tail call i32 @Trial(i32 noundef %.015.i)
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = icmp eq i32 %.015.i, 0
  %or.cond = or i1 %i.bb, %i.ba
  br i1 %or.cond, label %bb.m, label %bb.j

bb.j:                                             ; preds = %Place.exit
  %i.bc = load i32, ptr %i.j, align 4, !tbaa !4   ; 3 uses
  %.not10.i22 = icmp slt i32 %i.bc, 0
  br i1 %.not10.i22, label %Remove.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv ; 2 uses
  %i.be = add nuw i32 %i.bc, 1
  %wide.trip.count.i24 = zext i32 %i.be to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.bc, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i23
  %n.vec = and i64 %wide.trip.count.i24, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue57, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue57 ] ; 10 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 16, !tbaa !4
  %wide.load43 = load <4 x i32>, ptr %i.bg, align 16, !tbaa !4
  %i.bh = icmp ne <4 x i32> %wide.load, zeroinitializer ; 4 uses
  %i.bi = icmp ne <4 x i32> %wide.load43, zeroinitializer ; 4 uses
  %i.bj = extractelement <4 x i1> %i.bh, i64 0
  br i1 %i.bj, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  store i32 0, ptr %i.bk, align 4, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bl = extractelement <4 x i1> %i.bh, i64 1
  br i1 %i.bl, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue
  %i.bm = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store i32 0, ptr %i.bn, align 4, !tbaa !4
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue
  %i.bo = extractelement <4 x i1> %i.bh, i64 2
  br i1 %i.bo, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.bp = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  store i32 0, ptr %i.bq, align 4, !tbaa !4
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.br = extractelement <4 x i1> %i.bh, i64 3
  br i1 %i.br, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.bs = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %i.bt = getelementptr i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !4
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.bu = extractelement <4 x i1> %i.bi, i64 0
  br i1 %i.bu, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.bv = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  store i32 0, ptr %i.bw, align 4, !tbaa !4
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.bx = extractelement <4 x i1> %i.bi, i64 1
  br i1 %i.bx, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.by = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %i.bz = getelementptr i8, ptr %i.by, i64 20
  store i32 0, ptr %i.bz, align 4, !tbaa !4
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.ca = extractelement <4 x i1> %i.bi, i64 2
  br i1 %i.ca, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.cb = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  store i32 0, ptr %i.cc, align 4, !tbaa !4
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.cd = extractelement <4 x i1> %i.bi, i64 3
  br i1 %i.cd, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.ce = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %i.cf = getelementptr i8, ptr %i.ce, i64 28
  store i32 0, ptr %i.cf, align 4, !tbaa !4
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %pred.store.continue57
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i24
  br i1 %cmp.n, label %Remove.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i23, %middle.block
  %indvars.iv.i26.ph = phi i64 [ 0, %.lr.ph.i23 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.l
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i29, %bb.l ], [ %indvars.iv.i26.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i26
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %.not9.i27 = icmp eq i32 %i.ci, 0
  br i1 %.not9.i27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %scalar.ph
  %gep.i28 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i26
  store i32 0, ptr %gep.i28, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %scalar.ph
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, %wide.trip.count.i24
  br i1 %exitcond.not.i30, label %Remove.exit, label %scalar.ph, !llvm.loop !22

Remove.exit:                                      ; preds = %bb.l, %middle.block, %bb.j
  %i.cj = load i32, ptr %i.e, align 4, !tbaa !4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr @piececount, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !4
  br label %Fit.exit

Fit.exit:                                         ; preds = %bb.e, %bb.b, %Remove.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %bb.m, label %bb.b, !llvm.loop !23

bb.m:                                             ; preds = %Fit.exit, %Place.exit
  %.0 = phi i32 [ 1, %Place.exit ], [ 0, %Fit.exit ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @Puzzle() local_unnamed_addr #5 {
vector.ph:
  store <4 x i32> splat (i32 1), ptr @puzzl, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 16), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 32), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 48), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 64), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 80), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 96), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 112), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 128), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 144), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 160), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 176), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 192), align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 208), align 16, !tbaa !4
end_hunk_0
