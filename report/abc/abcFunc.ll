Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFunc?download=true
inline.NumInlined: 338
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [57 x i8] c"The number of cubes exceeded the predefined limit (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"Node %d with level %d has %d fanins but its SOP has support size %d.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Extending GIA object storage: %d -> %d.\0A\00", align 1
@str.2 = private unnamed_addr constant [54 x i8] c"Abc_NtkSopToBdd: Error while converting SOP into BDD.\00", align 1
@str.4 = private unnamed_addr constant [46 x i8] c"Warning: The network has only constant nodes.\00", align 1
@str.5 = private unnamed_addr constant [54 x i8] c"Abc_NtkAigToBdd: Error while converting AIG into BDD.\00", align 1
@str.6 = private unnamed_addr constant [54 x i8] c"Abc_NtkSopToAig: Error while converting SOP into AIG.\00", align 1
@str.7 = private unnamed_addr constant [65 x i8] c"Hard limit on the number of nodes (2^29) is reached. Quitting...\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_ConvertSopToBdd2Count(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.f = mul nsw i64 %indvars.iv, %i.d
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.f
  %i.g = load i8, ptr %gep, align 1, !tbaa !13
  switch i8 %i.g, label %bb.f [
    i8 45, label %bb.c
    i8 48, label %bb.d
    i8 49, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %4, align 4, !tbaa !14
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %4, align 4, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 4, !tbaa !14
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 4, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.b, align 4, !tbaa !14
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.b, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @Abc_ConvertSopToBdd2_rec(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @Cudd_ReadLogicZero(ptr noundef %0) #18
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = add nsw i32 %4, -3
  %i.d = icmp eq i32 %5, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @Cudd_ReadOne(ptr noundef %0) #18
  br label %common.ret

bb.e:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph.i, label %.Abc_ConvertSopToBdd2Count.exit_crit_edge

.Abc_ConvertSopToBdd2Count.exit_crit_edge:        ; preds = %bb.e
  %.pre = sext i32 %5 to i64
  br label %Abc_ConvertSopToBdd2Count.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.g = sext i32 %4 to i64                       ; 3 uses
  %i.h = sext i32 %5 to i64                       ; 6 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.h ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %3, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph.i.new
  %i.j = phi i32 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.n ] ; 4 uses
  %i.k = phi i32 [ 0, %.lr.ph.i.new ], [ %i.aa, %bb.n ] ; 4 uses
  %i.l = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ab, %bb.n ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.n ]
  %i.m = mul nsw i64 %indvars.iv.i, %i.g
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.m
  %i.n = load i8, ptr %gep.i, align 1, !tbaa !13
  switch i8 %i.n, label %bb.j [
    i8 45, label %bb.g
    i8 48, label %bb.h
    i8 49, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.j, 1
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.k, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.l, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.r = phi i32 [ %i.j, %bb.i ], [ %i.j, %bb.h ], [ %i.o, %bb.g ], [ %i.j, %bb.f ] ; 4 uses
  %i.s = phi i32 [ %i.k, %bb.i ], [ %i.p, %bb.h ], [ %i.k, %bb.g ], [ %i.k, %bb.f ] ; 4 uses
  %i.t = phi i32 [ %i.q, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ], [ %i.l, %bb.f ] ; 4 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.u = mul nsw i64 %indvars.iv.next.i, %i.g
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.u
  %i.v = load i8, ptr %gep.i.1, align 1, !tbaa !13
  switch i8 %i.v, label %bb.n [
    i8 45, label %bb.m
    i8 48, label %bb.l
    i8 49, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = add nsw i32 %i.t, 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.x = add nsw i32 %i.s, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.y = add nsw i32 %i.r, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.z = phi i32 [ %i.r, %bb.k ], [ %i.r, %bb.l ], [ %i.y, %bb.m ], [ %i.r, %bb.j ] ; 3 uses
  %i.aa = phi i32 [ %i.s, %bb.k ], [ %i.x, %bb.l ], [ %i.s, %bb.m ], [ %i.s, %bb.j ] ; 3 uses
  %i.ab = phi i32 [ %i.w, %bb.k ], [ %i.t, %bb.l ], [ %i.t, %bb.m ], [ %i.t, %bb.j ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !0

Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_ConvertSopToBdd2Count.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init.a = phi i32 [ 0, %.lr.ph.i ], [ %i.z, %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init56.a = phi i32 [ 0, %.lr.ph.i ], [ %i.aa, %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init58.a = phi i32 [ 0, %.lr.ph.i ], [ %i.ab, %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa ] ; 4 uses
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ac = mul nsw i64 %indvars.iv.i.epil.init, %i.g
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %i.ac
  %i.ad = load i8, ptr %gep.i.epil, align 1, !tbaa !13
  switch i8 %i.ad, label %Abc_ConvertSopToBdd2Count.exit [
    i8 45, label %bb.q
    i8 48, label %bb.p
    i8 49, label %bb.o
  ]

bb.o:                                             ; preds = %.epil.preheader
  %i.ae = add nsw i32 %.epil.init58.a, 1
  br label %Abc_ConvertSopToBdd2Count.exit

bb.p:                                             ; preds = %.epil.preheader
  %i.af = add nsw i32 %.epil.init56.a, 1
  br label %Abc_ConvertSopToBdd2Count.exit

bb.q:                                             ; preds = %.epil.preheader
  %i.ag = add nsw i32 %.epil.init.a, 1
  br label %Abc_ConvertSopToBdd2Count.exit

common.ret:                                       ; preds = %bb.b, %bb.d, %Abc_ConvertSopToBdd2Count.exit
  %common.ret.op = phi ptr [ %i.av, %Abc_ConvertSopToBdd2Count.exit ], [ %i.b, %bb.b ], [ %i.e, %bb.d ]
  ret ptr %common.ret.op

Abc_ConvertSopToBdd2Count.exit:                   ; preds = %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa, %bb.q, %bb.p, %bb.o, %.epil.preheader, %.Abc_ConvertSopToBdd2Count.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.Abc_ConvertSopToBdd2Count.exit_crit_edge ], [ %i.h, %.epil.preheader ], [ %i.h, %bb.o ], [ %i.h, %bb.p ], [ %i.h, %bb.q ], [ %i.h, %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa ]
  %.sroa.0.0 = phi i32 [ 0, %.Abc_ConvertSopToBdd2Count.exit_crit_edge ], [ %i.z, %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa ], [ %.epil.init.a, %bb.o ], [ %.epil.init.a, %bb.p ], [ %i.ag, %bb.q ], [ %.epil.init.a, %.epil.preheader ] ; 3 uses
  %.sroa.6.0 = phi i32 [ 0, %.Abc_ConvertSopToBdd2Count.exit_crit_edge ], [ %i.aa, %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa ], [ %.epil.init56.a, %bb.o ], [ %i.af, %bb.p ], [ %.epil.init56.a, %bb.q ], [ %.epil.init56.a, %.epil.preheader ] ; 2 uses
  %.sroa.9.0 = phi i32 [ 0, %.Abc_ConvertSopToBdd2Count.exit_crit_edge ], [ %i.ab, %Abc_ConvertSopToBdd2Count.exit.loopexit.unr-lcssa ], [ %i.ae, %bb.o ], [ %.epil.init58.a, %bb.p ], [ %.epil.init58.a, %bb.q ], [ %.epil.init58.a, %.epil.preheader ]
  %i.ah = add nsw i32 %5, 1                       ; 3 uses
  %i.ai = tail call ptr @Abc_ConvertSopToBdd2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.sroa.0.0, i32 noundef %4, i32 noundef %i.ah) ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.ai) #18
  %i.aj = mul nsw i32 %.sroa.0.0, %4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = tail call ptr @Abc_ConvertSopToBdd2_rec(ptr noundef %0, ptr noundef %i.al, ptr noundef %2, i32 noundef %.sroa.6.0, i32 noundef %4, i32 noundef %i.ah) ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.am) #18
  %i.an = add nsw i32 %.sroa.6.0, %.sroa.0.0
  %i.ao = mul nsw i32 %i.an, %4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  %i.ar = tail call ptr @Abc_ConvertSopToBdd2_rec(ptr noundef %0, ptr noundef %i.aq, ptr noundef %2, i32 noundef %.sroa.9.0, i32 noundef %4, i32 noundef %i.ah) ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.ar) #18
  %i.as = getelementptr inbounds [8 x i8], ptr %2, i64 %.pre-phi
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = tail call ptr @Cudd_bddIte(ptr noundef %0, ptr noundef %i.at, ptr noundef %i.ar, ptr noundef %i.am) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.au) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.am) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.ar) #18
  %i.av = tail call ptr @Cudd_bddOr(ptr noundef %0, ptr noundef %i.ai, ptr noundef %i.au) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.av) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.au) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.ai) #18
  tail call void @Cudd_Deref(ptr noundef %i.av) #18
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @Cudd_ReadLogicZero(ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_ReadOne(ptr noundef) local_unnamed_addr #4

declare void @Cudd_Ref(ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_bddIte(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Cudd_RecursiveDeref(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_bddOr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Cudd_Deref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @Abc_ConvertSopToBdd2(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @Abc_SopGetCubeNum(ptr noundef %1) #18
  %i.b = tail call i32 @Abc_SopGetVarNum(ptr noundef %1) #18
  %i.c = add nsw i32 %i.b, 3
  %i.d = tail call ptr @Abc_ConvertSopToBdd2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.a, i32 noundef %i.c, i32 noundef 0)
  ret ptr %i.d
}

declare i32 @Abc_SopGetCubeNum(ptr noundef) local_unnamed_addr #4

declare i32 @Abc_SopGetVarNum(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_ConvertSopToBdd(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @Abc_SopGetVarNum(ptr noundef %1) #18 ; 7 uses
  %i.b = tail call ptr @Cudd_ReadLogicZero(ptr noundef %0) #18 ; 8 uses
  tail call void @Cudd_Ref(ptr noundef %i.b) #18
  %i.c = tail call i32 @Abc_SopIsExorType(ptr noundef %1) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.preheader99

.preheader99:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader99
  %.not98 = icmp eq ptr %2, null
  br i1 %.not98, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0102.us = phi i32 [ %i.g, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.081101.us = phi ptr [ %i.f, %.lr.ph.split.us ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.e = tail call ptr @Cudd_bddIthVar(ptr noundef %0, i32 noundef %.0102.us) #18
  %i.f = tail call ptr @Cudd_bddXor(ptr noundef %0, ptr noundef %.081101.us, ptr noundef %i.e) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.f) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.081101.us) #18
  %i.g = add nuw nsw i32 %.0102.us, 1             ; 2 uses
  %exitcond133.not = icmp eq i32 %i.g, %i.a
  br i1 %exitcond133.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !96

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %.081101 = phi ptr [ %i.b, %.lr.ph.split.preheader ], [ %i.j, %.lr.ph.split ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = tail call ptr @Cudd_bddXor(ptr noundef %0, ptr noundef %.081101, ptr noundef %i.i) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.j) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.081101) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !96

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @Abc_SopGetCubeNum(ptr noundef %1) #18
  %i.l = icmp sgt i32 %i.k, 10000
  br i1 %i.l, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = load i8, ptr %1, align 1, !tbaa !13
  %.not90110 = icmp eq i8 %i.m, 0
  br i1 %.not90110, label %.loopexit, label %.lr.ph114

.lr.ph114:                                        ; preds = %.preheader
  %.not93 = icmp eq ptr %2, null
  %i.n = sext i32 %i.a to i64                     ; 2 uses
  br i1 %.not93, label %.split.us.us.split.us.preheader, label %.split

.split.us.us.split.us.preheader:                  ; preds = %.lr.ph114, %.critedge.split.us.us
  %.077112.us = phi ptr [ %i.ab, %.critedge.split.us.us ], [ %1, %.lr.ph114 ] ; 2 uses
  %.283111.us = phi ptr [ %i.z, %.critedge.split.us.us ], [ %i.b, %.lr.ph114 ] ; 2 uses
  %i.o = tail call ptr @Cudd_ReadOne(ptr noundef %0) #18 ; 2 uses
  tail call void @Cudd_Ref(ptr noundef %i.o) #18
  br label %.split.us.us.split.us

.split.us.us.split.us:                            ; preds = %.split.us.us.split.us.preheader, %bb.f
  %indvars.iv140 = phi i64 [ 0, %.split.us.us.split.us.preheader ], [ %indvars.iv.next141, %bb.f ] ; 4 uses
  %.079.us.us.us = phi ptr [ %i.o, %.split.us.us.split.us.preheader ], [ %.180.us.us.us, %bb.f ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.077112.us, i64 %indvars.iv140
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  switch i8 %i.q, label %bb.f [
    i8 32, label %.critedge.split.us.us
    i8 0, label %.critedge.split.us.us
    i8 48, label %bb.d
    i8 49, label %bb.c
  ]

bb.c:                                             ; preds = %.split.us.us.split.us
  %i.r = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.s = tail call ptr @Cudd_bddIthVar(ptr noundef %0, i32 noundef %i.r) #18
  br label %bb.e

bb.d:                                             ; preds = %.split.us.us.split.us
  %i.t = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.u = tail call ptr @Cudd_bddIthVar(ptr noundef %0, i32 noundef %i.t) #18
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = xor i64 %i.v, 1
  %i.x = inttoptr i64 %i.w to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.078.us.us.us = phi ptr [ %i.x, %bb.d ], [ %i.s, %bb.c ]
  %i.y = tail call ptr @Cudd_bddAnd(ptr noundef %0, ptr noundef %.079.us.us.us, ptr noundef %.078.us.us.us) #18 ; 2 uses
  tail call void @Cudd_Ref(ptr noundef %i.y) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.079.us.us.us) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.us.us.split.us
  %.180.us.us.us = phi ptr [ %i.y, %bb.e ], [ %.079.us.us.us, %.split.us.us.split.us ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %.split.us.us.split.us, !llvm.loop !97

.critedge.split.us.us:                            ; preds = %.split.us.us.split.us, %.split.us.us.split.us
  %i.z = tail call ptr @Cudd_bddOr(ptr noundef %0, ptr noundef %.283111.us, ptr noundef %.079.us.us.us) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.z) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.283111.us) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.079.us.us.us) #18
  %i.aa = getelementptr i8, ptr %.077112.us, i64 %i.n
  %i.ab = getelementptr i8, ptr %i.aa, i64 3      ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %.not90.us = icmp eq i8 %i.ac, 0
  br i1 %.not90.us, label %.loopexit, label %.split.us.us.split.us.preheader, !llvm.loop !98

bb.g:                                             ; preds = %bb.b
  tail call void @Cudd_Deref(ptr noundef %i.b) #18
  %.not95 = icmp eq ptr %2, null
  br i1 %.not95, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @Abc_SopGetCubeNum(ptr noundef %1) #18
  %i.ae = tail call i32 @Abc_SopGetVarNum(ptr noundef %1) #18
  %i.af = add nsw i32 %i.ae, 3
  %i.ag = tail call ptr @Abc_ConvertSopToBdd2_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly %2, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef 0)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ah = sext i32 %i.a to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #19 ; 4 uses
  %i.ak = icmp sgt i32 %i.a, 0
  br i1 %i.ak, label %.lr.ph124.preheader, label %._crit_edge

.lr.ph124.preheader:                              ; preds = %bb.i
  %wide.trip.count146 = zext nneg i32 %i.a to i64
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv143 = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next144, %.lr.ph124 ] ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv143 to i32
end_hunk_0
