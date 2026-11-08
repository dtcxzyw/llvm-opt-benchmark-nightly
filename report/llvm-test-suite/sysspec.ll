Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sysspec?download=true
inline.NumInlined: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_align = external local_unnamed_addr global i32, align 4
@mem_array_ents = external local_unnamed_addr global i32, align 4
@mem_array = external local_unnamed_addr global [2 x [20 x i64]], align 16
@.str = private unnamed_addr constant [29 x i8] c"ERROR CONDITION\0AContext: %s\0A\00", align 1, !guid !10
@.str.1 = private unnamed_addr constant [9 x i8] c"Code: %d\00", align 1, !guid !11

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define dso_local ptr @AllocateMemory(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 !guid !16 {
bb.a:
  %i.a = load i32, ptr @global_align, align 4, !tbaa !9
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 1
  %i.d = add i64 %i.c, %0
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #14 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  %. = zext i1 %i.f to i32
  store i32 %., ptr %1, align 4, !tbaa !9
  %i.g = ptrtoint ptr %i.e to i64                 ; 5 uses
  %i.h = load i32, ptr @global_align, align 4, !tbaa !9 ; 3 uses
  switch i32 %i.h, label %.preheader [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

.preheader:                                       ; preds = %bb.a
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @mem_array_ents, align 4, !tbaa !9 ; 3 uses
  %i.k = icmp sgt i32 %i.j, 19
  br i1 %i.k, label %AddMemArray.exit, label %AddMemArray.exit.thread

AddMemArray.exit.thread:                          ; preds = %bb.b
  %i.l = sext i32 %i.j to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr @mem_array, i64 %i.l
  store i64 %i.g, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %i.l
  store i64 %i.g, ptr %i.n, align 8, !tbaa !13
  %i.o = add nsw i32 %i.j, 1
  store i32 %i.o, ptr @mem_array_ents, align 4, !tbaa !9
  br label %bb.g

AddMemArray.exit:                                 ; preds = %bb.b
  store i32 2, ptr %1, align 4, !tbaa !9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %spec.select = or i64 %i.g, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.preheader
  %.0 = phi i64 [ %i.q, %bb.d ], [ %i.g, %.preheader ] ; 4 uses
  %i.p = urem i64 %.0, %i.i
  %.not = icmp eq i64 %i.p, 0
  %i.q = add i64 %.0, 1
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !15

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %i.h, 1
  %i.s = sext i32 %i.r to i64
  %i.t = urem i64 %.0, %i.s
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 %i.i, i64 0
  %spec.select24 = add i64 %i.v, %.0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1 = phi i64 [ %spec.select, %bb.c ], [ %spec.select24, %bb.e ] ; 2 uses
  %i.w = inttoptr i64 %.1 to ptr                  ; 2 uses
  %i.x = load i32, ptr @mem_array_ents, align 4, !tbaa !9 ; 3 uses
  %i.y = icmp sgt i32 %i.x, 19
  br i1 %i.y, label %AddMemArray.exit26, label %AddMemArray.exit26.thread

AddMemArray.exit26.thread:                        ; preds = %bb.f
  %i.z = sext i32 %i.x to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr @mem_array, i64 %i.z
  store i64 %i.g, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %i.z
  store i64 %.1, ptr %i.ab, align 8, !tbaa !13
  %i.ac = add nsw i32 %i.x, 1
  store i32 %i.ac, ptr @mem_array_ents, align 4, !tbaa !9
  br label %bb.g

AddMemArray.exit26:                               ; preds = %bb.f
  store i32 2, ptr %1, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %AddMemArray.exit26.thread, %AddMemArray.exit.thread, %AddMemArray.exit26, %AddMemArray.exit
  %.020 = phi ptr [ %i.e, %AddMemArray.exit.thread ], [ %i.e, %AddMemArray.exit ], [ %i.w, %AddMemArray.exit26 ], [ %i.w, %AddMemArray.exit26.thread ]
  ret ptr %.020
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @AddMemArray(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 !guid !17 {
bb.a:
  %i.a = load i32, ptr @mem_array_ents, align 4, !tbaa !9 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 19
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr @mem_array, i64 %i.c
  store i64 %0, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %i.c
  store i64 %1, ptr %i.e, align 8, !tbaa !13
  %i.f = add nsw i32 %i.a, 1
  store i32 %i.f, ptr @mem_array_ents, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeMemory(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 !guid !18 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = load i32, ptr @mem_array_ents, align 4, !tbaa !9 ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %RemoveMemArray.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 10 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv.i
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq i64 %i.e, %i.a
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv.i
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = add nuw nsw i32 %i.g, 1                  ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.b
  br i1 %i.k, label %.lr.ph22.preheader.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.b
  %.pre.i = add nsw i32 %i.b, -1
  br label %.loopexit

.lr.ph22.preheader.i:                             ; preds = %bb.b
  %2 = zext i32 %i.j to i64                       ; 4 uses
  %3 = add nsw i32 %i.b, -1                       ; 3 uses
  %wide.trip.count39.i = zext nneg i32 %3 to i64  ; 3 uses
  %i.l = sub nsw i64 %wide.trip.count39.i, %indvars.iv.i
  %xtraiter = and i64 %i.l, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.preheader.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %2
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv.i
  store i64 %i.n, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %2
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv.i
  store i64 %i.q, ptr %i.r, align 8, !tbaa !13
  %indvars.iv.next32.i.prol = add nuw nsw i64 %2, 1
  %indvars.iv.next35.i.prol = add nuw nsw i64 %indvars.iv.i, 1
  br label %.lr.ph22.i.prol.loopexit

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.preheader.i
  %indvars.iv34.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph22.preheader.i ], [ %indvars.iv.next35.i.prol, %.lr.ph22.i.prol ]
  %indvars.iv31.i.unr = phi i64 [ %2, %.lr.ph22.preheader.i ], [ %indvars.iv.next32.i.prol, %.lr.ph22.i.prol ]
  %i.s = add nsw i64 %wide.trip.count39.i, -1
  %i.t = icmp eq i64 %indvars.iv.i, %i.s
  br i1 %i.t, label %.loopexit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i.1, %.lr.ph22.i ], [ %indvars.iv34.i.unr, %.lr.ph22.i.prol.loopexit ] ; 4 uses
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.1, %.lr.ph22.i ], [ %indvars.iv31.i.unr, %.lr.ph22.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv31.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv34.i
  store i64 %i.v, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv31.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv34.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !13
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv.next32.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv.next35.i
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv.next32.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv.next35.i
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !13
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2
  %indvars.iv.next35.i.1 = add nuw nsw i64 %indvars.iv34.i, 2 ; 2 uses
  %exitcond40.not.i.1 = icmp eq i64 %indvars.iv.next35.i.1, %wide.trip.count39.i
  br i1 %exitcond40.not.i.1, label %.loopexit, label %.lr.ph22.i, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %RemoveMemArray.exit.thread, label %.lr.ph.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %3, %.lr.ph22.i ], [ %3, %.lr.ph22.i.prol.loopexit ]
  store i32 %.pre-phi.i, ptr @mem_array_ents, align 4, !tbaa !9
  %i.ag = inttoptr i64 %i.i to ptr
  tail call void @free(ptr noundef %i.ag) #15
  br label %RemoveMemArray.exit.thread

RemoveMemArray.exit.thread:                       ; preds = %bb.c, %bb.a, %.loopexit
  %storemerge = phi i32 [ 0, %.loopexit ], [ 3, %bb.a ], [ 3, %bb.c ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @RemoveMemArray(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #4 !guid !19 {
bb.a:
  %i.a = load i32, ptr @mem_array_ents, align 4, !tbaa !9 ; 5 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 10 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp eq i64 %i.d, %0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  store i64 %i.h, ptr %1, align 8, !tbaa !13
  %i.i = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.j = icmp slt i32 %i.i, %i.a
  br i1 %i.j, label %.lr.ph22.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = add nsw i32 %i.a, -1
  br label %._crit_edge

.lr.ph22.preheader:                               ; preds = %bb.b
  %2 = zext i32 %i.i to i64                       ; 4 uses
  %3 = add nsw i32 %i.a, -1                       ; 3 uses
  %wide.trip.count39 = zext nneg i32 %3 to i64    ; 3 uses
  %i.k = sub nsw i64 %wide.trip.count39, %indvars.iv
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph22.prol.loopexit, label %.lr.ph22.prol

.lr.ph22.prol:                                    ; preds = %.lr.ph22.preheader
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %2
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv
  store i64 %i.m, ptr %i.n, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %2
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv
  store i64 %i.p, ptr %i.q, align 8, !tbaa !13
  %indvars.iv.next32.prol = add nuw nsw i64 %2, 1
  %indvars.iv.next35.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.lr.ph22.prol.loopexit

.lr.ph22.prol.loopexit:                           ; preds = %.lr.ph22.prol, %.lr.ph22.preheader
  %indvars.iv34.unr = phi i64 [ %indvars.iv, %.lr.ph22.preheader ], [ %indvars.iv.next35.prol, %.lr.ph22.prol ]
  %indvars.iv31.unr = phi i64 [ %2, %.lr.ph22.preheader ], [ %indvars.iv.next32.prol, %.lr.ph22.prol ]
  %i.r = add nsw i64 %wide.trip.count39, -1
  %i.s = icmp eq i64 %indvars.iv, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.prol.loopexit, %.lr.ph22
  %indvars.iv34 = phi i64 [ %indvars.iv.next35.1, %.lr.ph22 ], [ %indvars.iv34.unr, %.lr.ph22.prol.loopexit ] ; 4 uses
  %indvars.iv31 = phi i64 [ %indvars.iv.next32.1, %.lr.ph22 ], [ %indvars.iv31.unr, %.lr.ph22.prol.loopexit ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv31
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv34
  store i64 %i.u, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv31
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv34
  store i64 %i.x, ptr %i.y, align 8, !tbaa !13
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv.next32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @mem_array, i64 %indvars.iv.next35
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv.next32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mem_array, i64 160), i64 %indvars.iv.next35
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !13
  %indvars.iv.next32.1 = add nuw nsw i64 %indvars.iv31, 2
  %indvars.iv.next35.1 = add nuw nsw i64 %indvars.iv34, 2 ; 2 uses
  %exitcond40.not.1 = icmp eq i64 %indvars.iv.next35.1, %wide.trip.count39
  br i1 %exitcond40.not.1, label %._crit_edge, label %.lr.ph22, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph22.prol.loopexit, %.lr.ph22, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %3, %.lr.ph22 ], [ %3, %.lr.ph22.prol.loopexit ]
  store i32 %.pre-phi, ptr @mem_array_ents, align 4, !tbaa !9
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge
  %.014 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.014
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MoveMemory(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 !guid !20 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @InitMemArray() local_unnamed_addr #8 !guid !21 {
bb.a:
  store i32 0, ptr @mem_array_ents, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @CreateFile(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #9 !guid !22 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @ReportError(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !guid !23 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @ErrorExit() local_unnamed_addr #12 !guid !24 {
bb.a:
  tail call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @StartStopwatch() local_unnamed_addr #9 !guid !25 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @StopStopwatch(i64 noundef %0) local_unnamed_addr #9 !guid !26 {
bb.a:
  ret i64 1000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @TicksToSecs(i64 noundef %0) local_unnamed_addr #9 !guid !27 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @TicksToFracSecs(i64 noundef %0) local_unnamed_addr #9 !guid !28 {
bb.a:
  ret double 0.000000e+00
}

attributes #0 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i64 -6413284258549813089}
!11 = !{i64 2104395310037251486}
!12 = !{!"long", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{i64 -1449550895006487276}
!17 = !{i64 8233974828604780771}
!18 = !{i64 -1395086930779381658}
!19 = !{i64 5637900851878860623}
!20 = !{i64 -8540699318950678603}
!21 = !{i64 3632620625475766256}
!22 = !{i64 8134671239212383736}
!23 = !{i64 -7344917311526896141}
!24 = !{i64 -5559318170394613850}
!25 = !{i64 -957758000535472649}
!26 = !{i64 4205139306082528089}
!27 = !{i64 4446804618627085800}
!28 = !{i64 -9093217149787648835}
end_hunk_0
