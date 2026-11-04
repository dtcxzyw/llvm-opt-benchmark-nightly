Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mvcApi?download=true
inline.NumInlined: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Mvc_CoverReadWordNum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Mvc_CoverReadBitNum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Mvc_CoverReadCubeNum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @Mvc_CoverReadCubeHead(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @Mvc_CoverReadCubeTail(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @Mvc_CoverReadCubeList(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Mvc_ListReadCubeNum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @Mvc_ListReadCubeHead(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @Mvc_ListReadCubeTail(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Mvc_CoverSetCubeNum(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Mvc_CoverSetCubeHead(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Mvc_CoverSetCubeTail(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Mvc_CoverSetCubeList(ptr nofree noundef writeonly captures(none) initializes((16, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Mvc_CoverIsEmpty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Mvc_CoverIsTautology(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load ptr, ptr %1, align 8, !tbaa !19
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.a

bb.c:                                             ; preds = %.lr.ph.a
  %i.f = add nuw nsw i32 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.a, !llvm.loop !32

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.c
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = lshr i32 %.010, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = and i32 %.010, 31
  %4 = lshr i32 %i.j, %i.k
  %5 = trunc i32 %4 to i1
  br i1 %5, label %bb.c, label %.critedge

.critedge:                                        ; preds = %.lr.ph.a, %bb.c, %bb.b, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph.a ], [ 1, %bb.c ]
  ret i32 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Mvc_CoverIsBinaryBuffer(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %.not5 = icmp eq i32 %i.d, 1
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24
  %i.i = and i32 %i.h, 3
  %or.cond.not = icmp eq i32 %i.i, 2
  %spec.select = zext i1 %or.cond.not to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Mvc_CoverMakeEmpty(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018.sink = phi ptr [ %i.c, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.018.sink, align 8, !tbaa !27 ; 2 uses
  tail call void @Mvc_CubeFree(ptr noundef %0, ptr noundef nonnull %.018.sink) #10
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  ret void
}

declare void @Mvc_CubeFree(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @Mvc_CoverMakeTautology(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Mvc_CoverMakeEmpty.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.018.sink.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.018.sink.i, align 8, !tbaa !27 ; 2 uses
  tail call void @Mvc_CubeFree(ptr noundef nonnull %0, ptr noundef nonnull %.018.sink.i) #10
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %Mvc_CoverMakeEmpty.exit, label %.lr.ph.i, !llvm.loop !0

Mvc_CoverMakeEmpty.exit:                          ; preds = %.lr.ph.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.d = tail call ptr @Mvc_CubeAlloc(ptr noundef nonnull %0) #10 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = and i32 %i.f, 16777215                   ; 2 uses
  switch i32 %i.g, label %.lr.ph.preheader [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %Mvc_CoverMakeEmpty.exit
  %i.h = lshr exact i32 %i.f, 24
  %i.i = and i32 %i.h, 63
  %i.j = lshr i32 -1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !24
  br label %.loopexit

bb.c:                                             ; preds = %Mvc_CoverMakeEmpty.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 -1, ptr %i.l, align 8, !tbaa !24
  %i.m = lshr i32 %i.f, 24
  %i.n = and i32 %i.m, 63
  %i.o = lshr i32 -1, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.o, ptr %i.p, align 4, !tbaa !24
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %Mvc_CoverMakeEmpty.exit
  %i.q = lshr i32 %i.f, 24
  %i.r = and i32 %i.q, 63
  %i.s = lshr i32 -1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.u = zext nneg i32 %i.g to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  store i32 %i.s, ptr %i.v, align 4, !tbaa !24
  %i.w = shl i32 %i.f, 2
  %i.x = and i32 %i.w, 67108860
  %i.y = zext nneg i32 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 -1, i64 %i.y, i1 false), !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.c, %bb.b
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  store ptr %i.d, ptr %i.ac, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.ad, align 8, !tbaa !23
  store ptr null, ptr %i.d, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !21
  ret void
}

declare ptr @Mvc_CubeAlloc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @Mvc_CoverCreateEmpty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = tail call ptr @Mvc_CoverAlloc(ptr noundef %i.b, i32 noundef %i.d) #10
  ret ptr %i.e
}

declare ptr @Mvc_CoverAlloc(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noundef ptr @Mvc_CoverCreateTautology(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = tail call ptr @Mvc_CoverAlloc(ptr noundef %i.b, i32 noundef %i.d) #10 ; 6 uses
  %i.f = tail call ptr @Mvc_CubeAlloc(ptr noundef %i.e) #10 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8              ; 5 uses
  %i.i = and i32 %i.h, 16777215                   ; 2 uses
  switch i32 %i.i, label %.lr.ph.preheader [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = lshr exact i32 %i.h, 24
  %i.k = and i32 %i.j, 63
  %i.l = lshr i32 -1, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.l, ptr %i.m, align 8, !tbaa !24
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 -1, ptr %i.n, align 8, !tbaa !24
  %i.o = lshr i32 %i.h, 24
  %i.p = and i32 %i.o, 63
  %i.q = lshr i32 -1, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.q, ptr %i.r, align 4, !tbaa !24
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = lshr i32 %i.h, 24
  %i.t = and i32 %i.s, 63
  %i.u = lshr i32 -1, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.w = zext nneg i32 %i.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  store i32 %i.u, ptr %i.x, align 4, !tbaa !24
  %i.y = shl i32 %i.h, 2
end_hunk_0
