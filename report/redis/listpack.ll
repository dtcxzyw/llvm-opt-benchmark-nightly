inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lpFindArg = type { ptr, i32, i32, i64 }
%struct.listpackInsertEntry = type { i32, i64, [9 x i8], [5 x i8], i64 }

@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"listpack.c\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"(p) >= (lp)+LP_HDR_SIZE && (p) < (lp)+lpGetTotalBytes((lp))\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"(p) >= (lp)+LP_HDR_SIZE && (p)+(replaced_len) < (lp)+lpGetTotalBytes((lp))\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"where == LP_BEFORE || where == LP_AFTER\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"entries != NULL && len > 0\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"lp_end[-1] == LP_EOF\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"skip != NULL && skip[0] != LP_EOF\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"keep_end > keep_start\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"lp[total_bytes - 1] == LP_EOF\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"lpbytes < UINT32_MAX\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"tuple_len >= 2\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"total_count\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"(p = lpSeek(lp, r))\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"(p = lpNext(lp, p))\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"total_size\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"(p = lpNextRandom(lp, p, &index, remaining, tuple_len))\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"tuple_len > 0\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"{total bytes %zu} {num entries %lu}\0A\00", align 1
@.str.19 = private unnamed_addr constant [120 x i8] c"{\0A\09addr: 0x%08lx,\0A\09index: %2d,\0A\09offset: %1lu,\0A\09hdr+entrylen+backlen: %2lu,\0A\09hdrlen: %3u,\0A\09backlen: %2lu,\0A\09payload: %1u\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"\09bytes: \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%02x|\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\09[str]\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"p >= lp + LP_HDR_SIZE && p + entry_size < lp + lp_bytes\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"p >= lp + LP_HDR_SIZE && p < lp + lp_bytes\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"lpValidateNext(lp, &p, lpbytes)\00", align 1
@str = private unnamed_addr constant [7 x i8] c"{end}\0A\00", align 1
@str.1 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@switch.table.lpRandomPairs.5 = private unnamed_addr constant [4 x i32] [i32 3, i32 4, i32 5, i32 9], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @lpSafeToAdd(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = zext i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %1
  %i.e = icmp ult i64 %i.d, 1073741825
  %. = zext i1 %i.e to i32
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @lpStringToInt64(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %1, -21
  %or.cond = icmp ult i64 %i.a, -20
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 1
  %i.c = load i8, ptr %0, align 1, !tbaa !13      ; 5 uses
  br i1 %i.b, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  switch i8 %i.c, label %.thread73 [
    i8 48, label %bb.d
    i8 45, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %.not55 = icmp eq ptr %2, null
  br i1 %.not55, label %.critedge, label %.critedge.sink.split

.thread:                                          ; preds = %bb.b
  %.not59 = icmp eq i8 %i.c, 45                   ; 2 uses
  br i1 %.not59, label %.thread62, label %bb.e

.thread62:                                        ; preds = %.thread
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.d, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.thread62, %.thread
  %i.e = phi i8 [ %.pre, %.thread62 ], [ %i.c, %.thread ] ; 2 uses
  %.043 = phi ptr [ %i.d, %.thread62 ], [ %0, %.thread ]
  %.042 = phi i64 [ 2, %.thread62 ], [ 1, %.thread ] ; 2 uses
  %i.f = add i8 %i.e, -49
  %or.cond56 = icmp ult i8 %i.f, 9
  br i1 %or.cond56, label %bb.f, label %.critedge

.thread73:                                        ; preds = %bb.c
  %i.g = add i8 %i.c, -49
  %or.cond5677 = icmp ult i8 %i.g, 9
  br i1 %or.cond5677, label %.thread90, label %.critedge

.thread90:                                        ; preds = %.thread73
  %narrow85 = add nsw i8 %i.c, -48
  %i.h = zext nneg i8 %narrow85 to i64
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %narrow = add nsw i8 %i.e, -48
  %i.i = zext nneg i8 %narrow to i64              ; 2 uses
  %i.j = icmp samesign ult i64 %.042, %1
  br i1 %i.j, label %.lr.ph, label %.critedge58

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %.14469.pn = phi ptr [ %.14469, %bb.h ], [ %.043, %bb.f ]
  %.068 = phi i64 [ %i.r, %bb.h ], [ %i.i, %bb.f ] ; 2 uses
  %.167 = phi i64 [ %i.s, %bb.h ], [ %.042, %bb.f ]
  %.14469 = getelementptr inbounds nuw i8, ptr %.14469.pn, i64 1 ; 2 uses
  %i.k = load i8, ptr %.14469, align 1, !tbaa !13 ; 2 uses
  %i.l = add i8 %i.k, -58
  %or.cond57 = icmp ult i8 %i.l, -10
  %i.m = icmp ugt i64 %.068, 1844674407370955161
  %or.cond64 = select i1 %or.cond57, i1 true, i1 %i.m
  br i1 %or.cond64, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.n = mul nuw i64 %.068, 10                    ; 2 uses
  %narrow54 = add nsw i8 %i.k, -48
  %i.o = zext nneg i8 %narrow54 to i64            ; 2 uses
  %i.p = xor i64 %i.o, -1
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.n, %i.o                       ; 2 uses
  %i.s = add nuw i64 %.167, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %.critedge58, label %.lr.ph, !llvm.loop !14

.critedge58:                                      ; preds = %bb.h, %bb.f
  %.0.lcssa = phi i64 [ %i.i, %bb.f ], [ %i.r, %bb.h ] ; 4 uses
  br i1 %.not59, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.critedge58
  %i.t = icmp ugt i64 %.0.lcssa, -9223372036854775808
  br i1 %i.t, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = sub i64 0, %.0.lcssa
  br label %.critedge.sink.split

bb.l:                                             ; preds = %.critedge58
  %i.v = icmp slt i64 %.0.lcssa, 0
  br i1 %i.v, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.thread90, %bb.l
  %.0.lcssa8992 = phi i64 [ %i.h, %.thread90 ], [ %.0.lcssa, %bb.l ]
  %.not52 = icmp eq ptr %2, null
  br i1 %.not52, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.m, %bb.d, %bb.k
  %.sink = phi i64 [ %i.u, %bb.k ], [ 0, %bb.d ], [ %.0.lcssa8992, %bb.m ]
  store i64 %.sink, ptr %2, align 8, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.g, %.critedge.sink.split, %.thread73, %bb.c, %bb.j, %bb.m, %bb.l, %bb.i, %bb.e, %bb.d, %bb.a
  %.045 = phi i32 [ 1, %bb.j ], [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.e ], [ 0, %.thread73 ], [ 0, %bb.c ], [ 1, %bb.m ], [ 0, %bb.l ], [ 0, %bb.i ], [ 1, %.critedge.sink.split ], [ 0, %bb.g ], [ 0, %.lr.ph ]
  ret i32 %.045
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpNew(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @llvm.umax.i64(i64 %0, i64 7)
  %i.b = tail call ptr @zmalloc_usable(i64 noundef %i.a, ptr noundef null) #21 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.b, align 1, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.d, i8 0, i64 5, i1 false)
  store i8 -1, ptr %i.e, align 1, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

declare ptr @zmalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @lpFree(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  tail call void @zfree(ptr noundef %0) #21
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @lpShrinkToFit(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #21
  %i.d = icmp ugt i64 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef null, ptr noundef null) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i64 @je_malloc_usable_size(ptr noundef) local_unnamed_addr #5

declare ptr @zrealloc_usable(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lpNextWithBytes(ptr nofree noundef readnone captures(address) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 510) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !13      ; 4 uses
  %i.c = zext i8 %i.b to i32                      ; 5 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %lpSkip.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %i.c, 192
  %i.f = icmp eq i32 %i.e, 128
  br i1 %i.f, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.e

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.d
  %i.g = and i32 %i.c, 63
  %i.h = add nuw nsw i32 %i.g, 1
  br label %lpSkip.exit

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.c, 224
  %i.j = icmp eq i32 %i.i, 192
  br i1 %i.j, label %lpSkip.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %switch.tableidx = add nsw i8 %i.b, 15          ; 2 uses
  %i.k = icmp ult i8 %switch.tableidx, 4
  br i1 %i.k, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %i.c, 240
  %i.m = icmp eq i32 %i.l, 224
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = shl nuw nsw i32 %i.c, 8
  %i.o = and i32 %i.n, 3840
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, 2
  %i.t = add nuw nsw i32 %i.s, %i.r
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.i:                                             ; preds = %bb.g
  switch i8 %i.b, label %bb.k [
    i8 -16, label %bb.j
    i8 -1, label %lpSkip.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i32, ptr %i.u, align 1
  %i.w = add i32 %i.v, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.k:                                             ; preds = %bb.i
  br label %lpSkip.exit

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.j, %bb.h
  %.0.i.i = phi i32 [ %i.t, %bb.h ], [ %i.w, %bb.j ] ; 8 uses
  %i.x = icmp ult i32 %.0.i.i, 128
  br i1 %i.x, label %lpSkip.exit, label %bb.l

bb.l:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.y = icmp ult i32 %.0.i.i, 16383
  br i1 %i.y, label %lpSkip.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = icmp ult i32 %.0.i.i, 2097151
  br i1 %i.z, label %lpSkip.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp ult i32 %.0.i.i, 268435455
  %..i.i = select i1 %i.aa, i64 4, i64 5
  br label %lpSkip.exit

switch.lookup:                                    ; preds = %bb.f
  %i.ab = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.ab
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit

lpSkip.exit:                                      ; preds = %switch.lookup, %bb.c, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.e, %bb.i, %bb.k, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.l, %bb.m, %bb.n
  %.shrunk.i = phi i32 [ %.0.i.i, %bb.m ], [ %.0.i.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.n ], [ 1, %bb.i ], [ %switch.load, %switch.lookup ], [ 1, %bb.c ], [ 0, %bb.k ], [ %i.h, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 2, %bb.e ]
  %.0.i5.i = phi i64 [ 3, %bb.m ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.l ], [ %..i.i, %bb.n ], [ 1, %bb.i ], [ 1, %switch.lookup ], [ 1, %bb.c ], [ 1, %bb.k ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 1, %bb.e ]
  %i.ac = zext i32 %.shrunk.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i5.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.q, label %bb.o

bb.o:                                             ; preds = %lpSkip.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !19
  %i.ah = call i32 @lpValidateNext(ptr noundef readnone %0, ptr noundef nonnull %i.a, i64 noundef %2)
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.p, label %lpAssertValidEntry.exit, !prof !18

bb.p:                                             ; preds = %bb.o
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit:                          ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %lpSkip.exit, %lpAssertValidEntry.exit
  %.0 = phi ptr [ %i.ae, %lpAssertValidEntry.exit ], [ null, %lpSkip.exit ]
  ret ptr %.0
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lpNext(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 521) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !13      ; 4 uses
  %i.c = zext i8 %i.b to i32                      ; 5 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %lpSkip.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %i.c, 192
  %i.f = icmp eq i32 %i.e, 128
  br i1 %i.f, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.e

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.d
  %i.g = and i32 %i.c, 63
  %i.h = add nuw nsw i32 %i.g, 1
  br label %lpSkip.exit

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.c, 224
  %i.j = icmp eq i32 %i.i, 192
  br i1 %i.j, label %lpSkip.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %switch.tableidx = add nsw i8 %i.b, 15          ; 2 uses
  %i.k = icmp ult i8 %switch.tableidx, 4
  br i1 %i.k, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %i.c, 240
  %i.m = icmp eq i32 %i.l, 224
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = shl nuw nsw i32 %i.c, 8
  %i.o = and i32 %i.n, 3840
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, 2
  %i.t = add nuw nsw i32 %i.s, %i.r
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.i:                                             ; preds = %bb.g
  switch i8 %i.b, label %bb.k [
    i8 -16, label %bb.j
    i8 -1, label %lpSkip.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i32, ptr %i.u, align 1
  %i.w = add i32 %i.v, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.k:                                             ; preds = %bb.i
  br label %lpSkip.exit

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.j, %bb.h
  %.0.i.i = phi i32 [ %i.t, %bb.h ], [ %i.w, %bb.j ] ; 8 uses
  %i.x = icmp ult i32 %.0.i.i, 128
  br i1 %i.x, label %lpSkip.exit, label %bb.l

bb.l:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.y = icmp ult i32 %.0.i.i, 16383
  br i1 %i.y, label %lpSkip.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = icmp ult i32 %.0.i.i, 2097151
  br i1 %i.z, label %lpSkip.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp ult i32 %.0.i.i, 268435455
  %..i.i = select i1 %i.aa, i64 4, i64 5
  br label %lpSkip.exit

switch.lookup:                                    ; preds = %bb.f
  %i.ab = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.ab
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit

lpSkip.exit:                                      ; preds = %switch.lookup, %bb.c, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.e, %bb.i, %bb.k, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.l, %bb.m, %bb.n
  %.shrunk.i = phi i32 [ %.0.i.i, %bb.m ], [ %.0.i.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.n ], [ 1, %bb.i ], [ %switch.load, %switch.lookup ], [ 1, %bb.c ], [ 0, %bb.k ], [ %i.h, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 2, %bb.e ]
  %.0.i5.i = phi i64 [ 3, %bb.m ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.l ], [ %..i.i, %bb.n ], [ 1, %bb.i ], [ 1, %switch.lookup ], [ 1, %bb.c ], [ 1, %bb.k ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 1, %bb.e ]
  %i.ac = zext i32 %.shrunk.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i5.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.q, label %bb.o

bb.o:                                             ; preds = %lpSkip.exit
  %i.ah = load i32, ptr %0, align 1
  %i.ai = zext i32 %i.ah to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !19
  %i.aj = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.ai)
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.p, label %lpAssertValidEntry.exit, !prof !18

bb.p:                                             ; preds = %bb.o
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit:                          ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %lpSkip.exit, %lpAssertValidEntry.exit
  %.0 = phi ptr [ %i.ae, %lpAssertValidEntry.exit ], [ null, %lpSkip.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967296) i64 @lpBytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = zext i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpPrev(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 532) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds i8, ptr %1, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13    ; 3 uses
  %.not.i = icmp sgt i8 %i.g, -1
  br i1 %.not.i, label %lpDecodeBacklen.exit.thread, label %bb.e, !prof !22

lpDecodeBacklen.exit.thread:                      ; preds = %bb.d
  %i.h = zext nneg i8 %i.g to i64
  br label %lpEncodeBacklenBytes.exit

bb.e:                                             ; preds = %bb.d
  %i.i = and i8 %i.g, 127
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 -2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13    ; 3 uses
  %.not21.i = icmp sgt i8 %i.l, -1
  br i1 %.not21.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 7
  %i.o = or disjoint i64 %i.n, %i.j
  br label %lpDecodeBacklen.exit

bb.g:                                             ; preds = %bb.e
  %i.p = and i8 %i.l, 127
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 7
  %i.s = or disjoint i64 %i.r, %i.j               ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %1, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13    ; 3 uses
  %.not22.i = icmp sgt i8 %i.u, -1
  br i1 %.not22.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 14
  %i.x = or disjoint i64 %i.w, %i.s
  br label %lpDecodeBacklen.exit

bb.i:                                             ; preds = %bb.g
  %i.y = and i8 %i.u, 127
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 14
  %i.ab = or disjoint i64 %i.aa, %i.s             ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13  ; 3 uses
  %.not23.i = icmp sgt i8 %i.ad, -1
  br i1 %.not23.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 21
  %i.ag = or disjoint i64 %i.af, %i.ab
  br label %lpDecodeBacklen.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds i8, ptr %1, i64 -5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 2 uses
  %.not24.i = icmp sgt i8 %i.ai, -1
  br i1 %.not24.i, label %bb.l, label %lpEncodeBacklenBytes.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = and i8 %i.ad, 127
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 21
  %i.am = zext nneg i8 %i.ai to i64
  %i.an = shl nuw nsw i64 %i.am, 28
  %i.ao = or disjoint i64 %i.an, %i.al
  %i.ap = or disjoint i64 %i.ao, %i.ab
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %bb.f, %bb.h, %bb.j, %bb.l
  %.0.i = phi i64 [ %i.x, %bb.h ], [ %i.o, %bb.f ], [ %i.ap, %bb.l ], [ %i.ag, %bb.j ]
  %.0.i.fr = freeze i64 %.0.i                     ; 8 uses
  %i.aq = icmp samesign ult i64 %.0.i.fr, 128
  br i1 %i.aq, label %lpEncodeBacklenBytes.exit, label %bb.m

bb.m:                                             ; preds = %lpDecodeBacklen.exit
  %i.ar = icmp samesign ult i64 %.0.i.fr, 16383
  br i1 %i.ar, label %lpEncodeBacklenBytes.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp samesign ult i64 %.0.i.fr, 2097151
  br i1 %i.as, label %lpEncodeBacklenBytes.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = icmp ult i64 %.0.i.fr, 268435455
  %spec.select.neg = select i1 %i.at, i64 -4, i64 -5
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %bb.o, %bb.k, %lpDecodeBacklen.exit.thread, %lpDecodeBacklen.exit, %bb.m, %bb.n
  %.0.i17 = phi i64 [ %.0.i.fr, %bb.n ], [ %.0.i.fr, %lpDecodeBacklen.exit ], [ %.0.i.fr, %bb.m ], [ %i.h, %lpDecodeBacklen.exit.thread ], [ -1, %bb.k ], [ %.0.i.fr, %bb.o ]
  %.0.i14.neg30 = phi i64 [ -3, %bb.n ], [ -1, %lpDecodeBacklen.exit ], [ -2, %bb.m ], [ -1, %lpDecodeBacklen.exit.thread ], [ -5, %bb.k ], [ %spec.select.neg, %bb.o ]
  %reass.sub = sub i64 %.0.i14.neg30, %.0.i17
  %i.au = getelementptr i8, ptr %1, i64 %reass.sub ; 2 uses
  %i.av = load i32, ptr %0, align 1
  %i.aw = zext i32 %i.av to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.au, ptr %i.a, align 8, !tbaa !19
  %i.ax = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.aw)
  %.not.i15 = icmp eq i32 %i.ax, 0
  br i1 %.not.i15, label %bb.p, label %lpAssertValidEntry.exit, !prof !18

bb.p:                                             ; preds = %lpEncodeBacklenBytes.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit:                          ; preds = %lpEncodeBacklenBytes.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %lpAssertValidEntry.exit
  %.0 = phi ptr [ %i.au, %lpAssertValidEntry.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i64 -1, 34359738368) i64 @lpDecodeBacklen(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 3 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %i.a to i64
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 127
  %i.d = zext nneg i8 %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13    ; 3 uses
  %.not21 = icmp sgt i8 %i.f, -1
  br i1 %.not21, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 7
  %i.i = or disjoint i64 %i.h, %i.d
  br label %bb.k
end_hunk_0
begin_hunk_1_@lpFindCbInternal:bb.a
  ]

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %i.ae to i64
  br label %lpGetWithSize.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %.1, i64 1
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = or disjoint i64 %i.am, %i.ai
  br label %lpGetWithSize.exit

bb.n:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %.1, i64 1
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = zext i32 %i.ap to i64
  br label %lpGetWithSize.exit

bb.o:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %.1, i64 1
  %i.as = load i64, ptr %i.ar, align 1
  br label %lpGetWithSize.exit

bb.p:                                             ; preds = %bb.k
  %i.at = and i32 %i.m, 240
  %i.au = icmp eq i32 %i.at, 224
  br i1 %i.au, label %lpEncodeBacklenBytes.exit93.i, label %bb.q

lpEncodeBacklenBytes.exit93.i:                    ; preds = %bb.p
  %i.av = shl nuw nsw i32 %i.m, 8
  %i.aw = and i32 %i.av, 3840
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.aw, %i.az            ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 2
  %i.bd = icmp samesign ult i32 %i.ba, 126
  %spec.select.i = select i1 %i.bd, i64 1, i64 2
  %i.be = add nuw nsw i64 %i.bc, %spec.select.i
  br label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bf = icmp eq i8 %i.l, -16
  br i1 %i.bf, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.bh = load i32, ptr %i.bg, align 1            ; 5 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 5
  %i.bk = icmp ult i32 %i.bh, 123
  br i1 %i.bk, label %lpEncodeBacklenBytes.exit96.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = icmp ult i32 %i.bh, 16378
  br i1 %i.bl, label %lpEncodeBacklenBytes.exit96.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = icmp ult i32 %i.bh, 2097146
  br i1 %i.bm, label %lpEncodeBacklenBytes.exit96.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = icmp ult i32 %i.bh, 268435450
  %..i94.i = select i1 %i.bn, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit96.i

lpEncodeBacklenBytes.exit96.i:                    ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i95.i = phi i64 [ 3, %bb.t ], [ 1, %bb.r ], [ 2, %bb.s ], [ %..i94.i, %bb.u ]
  %i.bo = add nuw nsw i64 %i.bj, %.0.i95.i
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bp = zext i8 %i.l to i64
  %i.bq = or disjoint i64 %i.bp, 12345678900000000
  br label %lpGetWithSize.exit

lpGetWithSize.exit:                               ; preds = %bb.g, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.v
  %.250 = phi i64 [ 2, %bb.g ], [ 3, %bb.j ], [ %.048, %bb.v ], [ 4, %bb.l ], [ 5, %bb.m ], [ 6, %bb.n ], [ 10, %bb.o ]
  %.083.i = phi i64 [ %i.o, %bb.g ], [ %i.ac, %bb.j ], [ %i.bq, %bb.v ], [ %i.af, %bb.l ], [ %i.an, %bb.m ], [ %i.aq, %bb.n ], [ %i.as, %bb.o ] ; 3 uses
  %.082.i = phi i64 [ -1, %bb.g ], [ 4096, %bb.j ], [ -1, %bb.v ], [ 32768, %bb.l ], [ 8388608, %bb.m ], [ 2147483648, %bb.n ], [ -9223372036854775808, %bb.o ]
  %.0.neg.i = phi i64 [ 0, %bb.g ], [ -8191, %bb.j ], [ 0, %bb.v ], [ -65535, %bb.l ], [ -16777215, %bb.m ], [ -4294967295, %bb.n ], [ 1, %bb.o ]
  %.not90.i = icmp ult i64 %.083.i, %.082.i
  %.neg.i = add i64 %.083.i, -1
  %i.br = add i64 %.neg.i, %.0.neg.i
  %.084.i = select i1 %.not90.i, i64 %.083.i, i64 %i.br
  br label %bb.y

bb.w:                                             ; preds = %lpEncodeBacklenBytes.exit96.i, %lpEncodeBacklenBytes.exit.i, %lpEncodeBacklenBytes.exit93.i
  %.sink = phi i64 [ 5, %lpEncodeBacklenBytes.exit96.i ], [ 1, %lpEncodeBacklenBytes.exit.i ], [ 2, %lpEncodeBacklenBytes.exit93.i ]
  %.051.ph = phi i64 [ %i.bi, %lpEncodeBacklenBytes.exit96.i ], [ %i.s, %lpEncodeBacklenBytes.exit.i ], [ %i.bb, %lpEncodeBacklenBytes.exit93.i ]
  %.3.ph = phi i64 [ %i.bo, %lpEncodeBacklenBytes.exit96.i ], [ %i.t, %lpEncodeBacklenBytes.exit.i ], [ %i.be, %lpEncodeBacklenBytes.exit93.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 %.sink
  %.not41 = icmp uge ptr %.1, %i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 %.3.ph
  %i.bu = icmp ult ptr %i.bt, %i.j
  %i.bv = select i1 %.not41, i1 %i.bu, i1 false, !prof !22
  br i1 %i.bv, label %bb.y, label %bb.x, !prof !22

bb.x:                                             ; preds = %bb.w
  tail call void @_serverAssert(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 856) #21
  tail call void @abort() #22
  unreachable

bb.y:                                             ; preds = %lpGetWithSize.exit, %bb.w
  %.085.i63 = phi ptr [ %i.bs, %bb.w ], [ null, %lpGetWithSize.exit ]
  %.361 = phi i64 [ %.3.ph, %bb.w ], [ %.250, %lpGetWithSize.exit ] ; 2 uses
  %.05159 = phi i64 [ %.051.ph, %bb.w ], [ %.084.i, %lpGetWithSize.exit ]
  %i.bw = tail call i32 %3(ptr noundef nonnull %0, ptr noundef nonnull %.1, ptr noundef %2, ptr noundef %.085.i63, i64 noundef %.05159) #21
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %lpFirst.exit.thread, label %bb.z, !prof !18

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 %.361
  br label %bb.am

bb.aa:                                            ; preds = %bb.e
  %i.bz = add nsw i32 %.036, -1
  %i.ca = load i8, ptr %.1, align 1, !tbaa !13    ; 4 uses
  %i.cb = zext i8 %i.ca to i32                    ; 5 uses
  %i.cc = icmp sgt i8 %i.ca, -1
  br i1 %i.cc, label %lpSkip.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = and i32 %i.cb, 192
  %i.ce = icmp eq i32 %i.cd, 128
  br i1 %i.ce, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.ac

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.ab
  %i.cf = and i32 %i.cb, 63
  %i.cg = add nuw nsw i32 %i.cf, 1
  br label %lpSkip.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = and i32 %i.cb, 224
  %i.ci = icmp eq i32 %i.ch, 192
  br i1 %i.ci, label %lpSkip.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %switch.tableidx = add nsw i8 %i.ca, 15         ; 2 uses
  %i.cj = icmp ult i8 %switch.tableidx, 4
  br i1 %i.cj, label %switch.lookup, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = and i32 %i.cb, 240
  %i.cl = icmp eq i32 %i.ck, 224
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cm = shl nuw nsw i32 %i.cb, 8
  %i.cn = and i32 %i.cm, 3840
  %i.co = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, 2
  %i.cs = add nuw nsw i32 %i.cr, %i.cq
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.ag:                                            ; preds = %bb.ae
  switch i8 %i.ca, label %bb.ai [
    i8 -16, label %bb.ah
    i8 -1, label %lpSkip.exit
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.cu = load i32, ptr %i.ct, align 1
  %i.cv = add i32 %i.cu, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.ai:                                            ; preds = %bb.ag
  br label %lpSkip.exit

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.ah, %bb.af
  %.0.i.i = phi i32 [ %i.cs, %bb.af ], [ %i.cv, %bb.ah ] ; 8 uses
  %i.cw = icmp ult i32 %.0.i.i, 128
  br i1 %i.cw, label %lpSkip.exit, label %bb.aj

bb.aj:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.cx = icmp ult i32 %.0.i.i, 16383
  br i1 %i.cx, label %lpSkip.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = icmp ult i32 %.0.i.i, 2097151
  br i1 %i.cy, label %lpSkip.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cz = icmp ult i32 %.0.i.i, 268435455
  %..i.i = select i1 %i.cz, i64 4, i64 5
  br label %lpSkip.exit

switch.lookup:                                    ; preds = %bb.ad
  %i.da = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.da
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit

lpSkip.exit:                                      ; preds = %switch.lookup, %bb.aa, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.ac, %bb.ag, %bb.ai, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.aj, %bb.ak, %bb.al
  %.shrunk.i = phi i32 [ %.0.i.i, %bb.ak ], [ %.0.i.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i.i, %bb.aj ], [ %.0.i.i, %bb.al ], [ 1, %bb.ag ], [ %switch.load, %switch.lookup ], [ 1, %bb.aa ], [ 0, %bb.ai ], [ %i.cg, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 2, %bb.ac ]
  %.0.i5.i = phi i64 [ 3, %bb.ak ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.aj ], [ %..i.i, %bb.al ], [ 1, %bb.ag ], [ 1, %switch.lookup ], [ 1, %bb.aa ], [ 1, %bb.ai ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 1, %bb.ac ]
  %i.db = zext i32 %.shrunk.i to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.1, i64 %.0.i5.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  br label %bb.am

bb.am:                                            ; preds = %lpSkip.exit, %bb.z
  %.149 = phi i64 [ %.361, %bb.z ], [ %.048, %lpSkip.exit ]
  %.137 = phi i32 [ %4, %bb.z ], [ %i.bz, %lpSkip.exit ]
  %.2 = phi ptr [ %i.by, %bb.z ], [ %i.dd, %lpSkip.exit ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %.not42 = icmp ult ptr %i.de, %i.j
  br i1 %.not42, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.2, ptr %i.a, align 8, !tbaa !19
  %i.df = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %.not.i45 = icmp eq i32 %i.df, 0
  br i1 %.not.i45, label %bb.ao, label %lpAssertValidEntry.exit, !prof !18

bb.ao:                                            ; preds = %bb.an
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit:                          ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ar

bb.ap:                                            ; preds = %bb.am
  %.not64 = icmp ult ptr %.2, %i.i
  br i1 %.not64, label %bb.aq, label %bb.ar, !prof !18

bb.aq:                                            ; preds = %bb.ap
  tail call void @_serverAssert(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 879) #21
  tail call void @abort() #22
  unreachable

bb.ar:                                            ; preds = %bb.ap, %lpAssertValidEntry.exit
  %i.dg = load i8, ptr %.2, align 1, !tbaa !13
  %.not43 = icmp eq i8 %i.dg, -1
  br i1 %.not43, label %lpFirst.exit.thread, label %bb.e, !llvm.loop !26

lpFirst.exit.thread:                              ; preds = %bb.ar, %bb.y, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.ar ], [ %.1, %bb.y ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpFind(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.lpFindArg, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %2, ptr %5, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !31
  %i.d = call fastcc ptr @lpFindCbInternal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull @lpFindCmp, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret ptr %i.d
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @lpFindCmp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) #9 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = zext i32 %i.b to i64
  %i.d = icmp eq i64 %4, %i.c
  br i1 %i.d, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !27
  %bcmp = tail call i32 @bcmp(ptr %i.e, ptr nonnull %3, i64 %4)
  %i.f = icmp eq i32 %bcmp, 0
  br i1 %i.f, label %bb.r, label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30
  switch i32 %i.h, label %._crit_edge [
    i32 0, label %bb.e
    i32 255, label %bb.q
  ]

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 4 uses
  %i.k = add i32 %i.j, -32
  %or.cond = icmp ult i32 %i.k, -31
  br i1 %or.cond, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %2, align 8, !tbaa !27     ; 3 uses
  %i.m = zext nneg i32 %i.j to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = add nsw i32 %i.j, -21
  %or.cond.i = icmp ult i32 %i.o, -20
  br i1 %or.cond.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i32 %i.j, 1
  %i.q = load i8, ptr %i.l, align 1, !tbaa !13    ; 5 uses
  br i1 %i.p, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  switch i8 %i.q, label %.thread73.i [
    i8 48, label %.thread26
    i8 45, label %.thread
  ]

.thread.i:                                        ; preds = %bb.g
  %.not59.i = icmp eq i8 %i.q, 45                 ; 2 uses
  br i1 %.not59.i, label %.thread62.i, label %bb.i

.thread62.i:                                      ; preds = %.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.r, align 1, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.thread62.i, %.thread.i
  %i.s = phi i8 [ %.pre.i, %.thread62.i ], [ %i.q, %.thread.i ] ; 2 uses
  %.043.i = phi ptr [ %i.r, %.thread62.i ], [ %i.l, %.thread.i ]
  %.042.i = phi i64 [ 2, %.thread62.i ], [ 1, %.thread.i ] ; 2 uses
  %i.t = add i8 %i.s, -49
  %or.cond56.i = icmp ult i8 %i.t, 9
  br i1 %or.cond56.i, label %bb.j, label %.thread

.thread73.i:                                      ; preds = %bb.h
  %i.u = add i8 %i.q, -49
  %or.cond5677.i = icmp ult i8 %i.u, 9
  br i1 %or.cond5677.i, label %.thread90.i, label %.thread

.thread90.i:                                      ; preds = %.thread73.i
  %narrow85.i = add nsw i8 %i.q, -48
  %i.v = zext nneg i8 %narrow85.i to i64
  br label %.thread26

bb.j:                                             ; preds = %bb.i
  %narrow.i = add nsw i8 %i.s, -48
  %i.w = zext nneg i8 %narrow.i to i64            ; 2 uses
  %i.x = icmp samesign ult i64 %.042.i, %i.m
  br i1 %i.x, label %.lr.ph.i, label %.critedge58.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.14469.pn.i = phi ptr [ %.14469.i, %bb.l ], [ %.043.i, %bb.j ]
  %.068.i = phi i64 [ %i.af, %bb.l ], [ %i.w, %bb.j ] ; 2 uses
  %.167.i = phi i64 [ %i.ag, %bb.l ], [ %.042.i, %bb.j ]
  %.14469.i = getelementptr inbounds nuw i8, ptr %.14469.pn.i, i64 1 ; 2 uses
  %i.y = load i8, ptr %.14469.i, align 1, !tbaa !13 ; 2 uses
  %i.z = add i8 %i.y, -58
  %or.cond57.i = icmp ult i8 %i.z, -10
  %i.aa = icmp ugt i64 %.068.i, 1844674407370955161
  %or.cond64.i = select i1 %or.cond57.i, i1 true, i1 %i.aa
  br i1 %or.cond64.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ab = mul nuw i64 %.068.i, 10                 ; 2 uses
  %narrow54.i = add nsw i8 %i.y, -48
  %i.ac = zext nneg i8 %narrow54.i to i64         ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.ag = add nuw i64 %.167.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %.critedge58.i, label %.lr.ph.i, !llvm.loop !14

.critedge58.i:                                    ; preds = %bb.l, %bb.j
  %.0.lcssa.i = phi i64 [ %i.w, %bb.j ], [ %i.af, %bb.l ] ; 4 uses
  br i1 %.not59.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.critedge58.i
  %i.ah = icmp ugt i64 %.0.lcssa.i, -9223372036854775808
  br i1 %i.ah, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = sub i64 0, %.0.lcssa.i
  br label %.thread26

bb.o:                                             ; preds = %.critedge58.i
  %i.aj = icmp slt i64 %.0.lcssa.i, 0
  br i1 %i.aj, label %.thread, label %.thread26

.thread:                                          ; preds = %.lr.ph.i, %bb.k, %bb.e, %bb.f, %bb.i, %.thread73.i, %bb.h, %bb.o, %bb.m
  store i32 255, ptr %i.g, align 4, !tbaa !30
  br label %bb.q

.thread26:                                        ; preds = %bb.n, %bb.h, %bb.o, %.thread90.i
  %.sink.i = phi i64 [ %i.ai, %bb.n ], [ 0, %bb.h ], [ %i.v, %.thread90.i ], [ %.0.lcssa.i, %bb.o ] ; 2 uses
  store i64 %.sink.i, ptr %i.n, align 8, !tbaa !16
  store i32 1, ptr %i.g, align 4, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.thread26
  %i.ak = phi i64 [ %.pre, %._crit_edge ], [ %.sink.i, %.thread26 ]
  %i.al = icmp eq i64 %4, %i.ak
  br i1 %i.al, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.d, %.thread, %bb.p, %bb.b, %bb.c
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.c, %bb.q
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.q ], [ 0, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpInsert(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 4 uses
  %i.b = alloca [5 x i8], align 1                 ; 18 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.d = icmp eq ptr %1, null                     ; 3 uses
  %i.e = icmp eq ptr %2, null                     ; 2 uses
  %i.f = and i1 %i.d, %i.e                        ; 5 uses
  %spec.select = select i1 %i.f, i32 2, i32 %5    ; 2 uses
  %i.g = icmp eq i32 %spec.select, 1
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %4, align 1, !tbaa !13      ; 4 uses
  %i.i = zext i8 %i.h to i32                      ; 5 uses
  %i.j = icmp sgt i8 %i.h, -1
  br i1 %i.j, label %lpSkip.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.i, 192
  %i.l = icmp eq i32 %i.k, 128
  br i1 %i.l, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.d

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.c
  %i.m = and i32 %i.i, 63
  %i.n = add nuw nsw i32 %i.m, 1
  br label %lpSkip.exit

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.i, 224
  %i.p = icmp eq i32 %i.o, 192
  br i1 %i.p, label %lpSkip.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %switch.tableidx = add nsw i8 %i.h, 15          ; 2 uses
  %i.q = icmp ult i8 %switch.tableidx, 4
  br i1 %i.q, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.i, 240
  %i.s = icmp eq i32 %i.r, 224
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw nsw i32 %i.i, 8
  %i.u = and i32 %i.t, 3840
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, 2
  %i.z = add nuw nsw i32 %i.y, %i.x
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.h:                                             ; preds = %bb.f
  switch i8 %i.h, label %bb.j [
    i8 -16, label %bb.i
    i8 -1, label %lpSkip.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = add i32 %i.ab, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.j:                                             ; preds = %bb.h
  br label %lpSkip.exit

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.i, %bb.g
  %.0.i.i = phi i32 [ %i.z, %bb.g ], [ %i.ac, %bb.i ] ; 8 uses
  %i.ad = icmp ult i32 %.0.i.i, 128
  br i1 %i.ad, label %lpSkip.exit, label %bb.k

bb.k:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.ae = icmp ult i32 %.0.i.i, 16383
  br i1 %i.ae, label %lpSkip.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ult i32 %.0.i.i, 2097151
  br i1 %i.af, label %lpSkip.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp ult i32 %.0.i.i, 268435455
  %..i.i = select i1 %i.ag, i64 4, i64 5
  br label %lpSkip.exit

switch.lookup:                                    ; preds = %bb.e
  %i.ah = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.ah
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit

lpSkip.exit:                                      ; preds = %switch.lookup, %bb.b, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.d, %bb.h, %bb.j, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.k, %bb.l, %bb.m
  %.shrunk.i = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i.i, %bb.k ], [ %.0.i.i, %bb.m ], [ 1, %bb.h ], [ %switch.load, %switch.lookup ], [ 1, %bb.b ], [ 0, %bb.j ], [ %i.n, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 2, %bb.d ]
  %.0.i5.i = phi i64 [ 3, %bb.l ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.k ], [ %..i.i, %bb.m ], [ 1, %bb.h ], [ 1, %switch.lookup ], [ 1, %bb.b ], [ 1, %bb.j ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 1, %bb.d ]
  %i.ai = zext i32 %.shrunk.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i5.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not = icmp ult ptr %i.ak, %i.al
  br i1 %.not, label %.critedge, label %bb.n, !prof !18

bb.n:                                             ; preds = %lpSkip.exit
  %i.am = load i8, ptr %0, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.an
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.be = icmp ult ptr %i.ak, %i.bd
  br i1 %i.be, label %bb.o, label %.critedge, !prof !22

.critedge:                                        ; preds = %lpSkip.exit, %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 997) #21
  tail call void @abort() #22
  unreachable

bb.o:                                             ; preds = %bb.n, %bb.a
  %.1124 = phi i32 [ 0, %bb.n ], [ %spec.select, %bb.a ] ; 3 uses
  %.0121 = phi ptr [ %i.ak, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %i.bf = ptrtoint ptr %.0121 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  br i1 %i.d, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = call fastcc i32 @lpEncodeGetType(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
  %i.bj = icmp eq i32 %i.bi, 0                    ; 2 uses
  %spec.select143 = select i1 %i.bj, ptr %i.a, ptr %2
  %.pr.pr = load i64, ptr %i.c, align 8, !tbaa !16
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  br i1 %i.e, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = zext i32 %3 to i64                      ; 2 uses
  store i64 %i.bk, ptr %i.c, align 8, !tbaa !16
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i64 0, ptr %i.c, align 8, !tbaa !16
  br i1 %i.f, label %lpEncodeBacklen.exit, label %.thread162

bb.t:                                             ; preds = %bb.p, %bb.r
  %.pr = phi i64 [ %.pr.pr, %bb.p ], [ %i.bk, %bb.r ] ; 23 uses
  %.0122.ph = phi i1 [ %i.bj, %bb.p ], [ true, %bb.r ] ; 5 uses
  %.0120.ph = phi ptr [ %spec.select143, %bb.p ], [ %2, %bb.r ] ; 5 uses
  %i.bl = icmp ult i64 %.pr, 128
  br i1 %i.bl, label %.thread162, label %bb.u

.thread162:                                       ; preds = %bb.s, %bb.t
  %.0122158168 = phi i1 [ %.0122.ph, %bb.t ], [ false, %bb.s ]
  %.0120160166 = phi ptr [ %.0120.ph, %bb.t ], [ null, %bb.s ]
  %i.bm = phi i64 [ %.pr, %bb.t ], [ 0, %bb.s ]   ; 2 uses
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  store i8 %i.bn, ptr %i.b, align 1, !tbaa !13
  br label %lpEncodeBacklen.exit

bb.u:                                             ; preds = %bb.t
  %i.bo = icmp ult i64 %.pr, 16383
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bp = lshr i64 %.pr, 7
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  store i8 %i.bq, ptr %i.b, align 1, !tbaa !13
  %i.br = trunc i64 %.pr to i8
  %i.bs = or i8 %i.br, -128
  %.1..1..1..sroa_idx216.a = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.bs, ptr %.1..1..1..sroa_idx216.a, align 1, !tbaa !13
  br label %lpEncodeBacklen.exit

bb.w:                                             ; preds = %bb.u
  %i.bt = icmp ult i64 %.pr, 2097151
  br i1 %i.bt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bu = lshr i64 %.pr, 14
  %i.bv = trunc nuw nsw i64 %i.bu to i8
  store i8 %i.bv, ptr %i.b, align 1, !tbaa !13
  %i.bw = lshr i64 %.pr, 7
  %i.bx = trunc i64 %i.bw to i8
  %i.by = or i8 %i.bx, -128
  %.1..1..1..sroa_idx215.a = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.by, ptr %.1..1..1..sroa_idx215.a, align 1, !tbaa !13
  %i.bz = trunc i64 %.pr to i8
  %i.ca = or i8 %i.bz, -128
  %.2..2..2..sroa_idx218.a = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.ca, ptr %.2..2..2..sroa_idx218.a, align 1, !tbaa !13
  br label %lpEncodeBacklen.exit

bb.y:                                             ; preds = %bb.w
  %i.cb = icmp ult i64 %.pr, 268435455
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cc = lshr i64 %.pr, 21
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  store i8 %i.cd, ptr %i.b, align 1, !tbaa !13
  %i.ce = lshr i64 %.pr, 14
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = or i8 %i.cf, -128
  %.1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.cg, ptr %.1..1..1..sroa_idx, align 1, !tbaa !13
  %i.ch = lshr i64 %.pr, 7
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = or i8 %i.ci, -128
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.cj, ptr %.2..2..2..sroa_idx, align 1, !tbaa !13
  %i.ck = trunc i64 %.pr to i8
  %i.cl = or i8 %i.ck, -128
  %.3..3..3..sroa_idx219 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.cl, ptr %.3..3..3..sroa_idx219, align 1, !tbaa !13
  br label %lpEncodeBacklen.exit

bb.aa:                                            ; preds = %bb.y
  %i.cm = lshr i64 %.pr, 28
  %i.cn = trunc i64 %i.cm to i8
  store i8 %i.cn, ptr %i.b, align 1, !tbaa !13
  %i.co = lshr i64 %.pr, 21
  %i.cp = trunc i64 %i.co to i8
  %i.cq = or i8 %i.cp, -128
  %.1..1..1..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.cq, ptr %.1..1..1..sroa_idx214, align 1, !tbaa !13
  %i.cr = lshr i64 %.pr, 14
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = or i8 %i.cs, -128
  %.2..2..2..sroa_idx217 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.ct, ptr %.2..2..2..sroa_idx217, align 1, !tbaa !13
  %i.cu = lshr i64 %.pr, 7
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = or i8 %i.cv, -128
  %.3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.cw, ptr %.3..3..3..sroa_idx, align 1, !tbaa !13
  %i.cx = trunc i64 %.pr to i8
  %i.cy = or i8 %i.cx, -128
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cy, ptr %.4..4..4..sroa_idx, align 1, !tbaa !13
  br label %lpEncodeBacklen.exit

lpEncodeBacklen.exit:                             ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %.thread162, %bb.s
  %i.cz = phi i64 [ 0, %bb.s ], [ %.pr, %bb.x ], [ %.pr, %bb.v ], [ %.pr, %bb.aa ], [ %.pr, %bb.z ], [ %i.bm, %.thread162 ] ; 3 uses
  %.0120161 = phi ptr [ null, %bb.s ], [ %.0120.ph, %bb.x ], [ %.0120.ph, %bb.v ], [ %.0120.ph, %bb.aa ], [ %.0120.ph, %bb.z ], [ %.0120160166, %.thread162 ]
  %.0122159 = phi i1 [ false, %bb.s ], [ %.0122.ph, %bb.x ], [ %.0122.ph, %bb.v ], [ %.0122.ph, %bb.aa ], [ %.0122.ph, %bb.z ], [ %.0122158168, %.thread162 ]
  %i.da = phi i64 [ 0, %bb.s ], [ 3, %bb.x ], [ 2, %bb.v ], [ 5, %bb.aa ], [ 4, %bb.z ], [ 1, %.thread162 ] ; 3 uses
  %i.db = load i8, ptr %0, align 1, !tbaa !13
  %i.dc = zext i8 %i.db to i64                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = zext i8 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 8                ; 2 uses
  %i.dh = or disjoint i64 %i.dg, %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = zext i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 16               ; 2 uses
  %i.dm = or disjoint i64 %i.dh, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 24               ; 2 uses
  %i.dr = or disjoint i64 %i.dm, %i.dq            ; 4 uses
  %i.ds = icmp eq i32 %.1124, 2
  br i1 %i.ds, label %bb.ab, label %lpEncodeBacklen.exit._crit_edge

bb.ab:                                            ; preds = %lpEncodeBacklen.exit
  %i.dt = load i8, ptr %.0121, align 1, !tbaa !13 ; 4 uses
  %i.du = zext i8 %i.dt to i32                    ; 5 uses
  %i.dv = icmp sgt i8 %i.dt, -1
  br i1 %i.dv, label %lpEncodeBacklenBytes.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = and i32 %i.du, 192
  %i.dx = icmp eq i32 %i.dw, 128
  br i1 %i.dx, label %lpCurrentEncodedSizeUnsafe.exit.thread, label %bb.ad

lpCurrentEncodedSizeUnsafe.exit.thread:           ; preds = %bb.ac
  %i.dy = and i32 %i.du, 63
  %i.dz = add nuw nsw i32 %i.dy, 1
  br label %lpEncodeBacklenBytes.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ea = and i32 %i.du, 224
  %i.eb = icmp eq i32 %i.ea, 192
  br i1 %i.eb, label %lpEncodeBacklenBytes.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %switch.tableidx210 = add nsw i8 %i.dt, 15      ; 2 uses
  %i.ec = icmp ult i8 %switch.tableidx210, 4
  br i1 %i.ec, label %switch.lookup211, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = and i32 %i.du, 240
  %i.ee = icmp eq i32 %i.ed, 224
  br i1 %i.ee, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ef = shl nuw nsw i32 %i.du, 8
  %i.eg = and i32 %i.ef, 3840
  %i.eh = getelementptr inbounds nuw i8, ptr %.0121, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eg, 2
  %i.el = add nuw nsw i32 %i.ek, %i.ej
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.ah:                                            ; preds = %bb.af
  switch i8 %i.dt, label %bb.aj [
    i8 -16, label %bb.ai
    i8 -1, label %lpEncodeBacklenBytes.exit
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %.0121, i64 1
  %i.en = load i32, ptr %i.em, align 1
  %i.eo = add i32 %i.en, 5
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.aj:                                            ; preds = %bb.ah
  br label %lpEncodeBacklenBytes.exit

lpCurrentEncodedSizeUnsafe.exit:                  ; preds = %bb.ag, %bb.ai
  %.0.i148 = phi i32 [ %i.el, %bb.ag ], [ %i.eo, %bb.ai ] ; 8 uses
  %i.ep = icmp ult i32 %.0.i148, 128
  br i1 %i.ep, label %lpEncodeBacklenBytes.exit, label %bb.ak

bb.ak:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit
  %i.eq = icmp ult i32 %.0.i148, 16383
  br i1 %i.eq, label %lpEncodeBacklenBytes.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = icmp ult i32 %.0.i148, 2097151
  br i1 %i.er, label %lpEncodeBacklenBytes.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = icmp ult i32 %.0.i148, 268435455
  %i.et = select i1 %i.es, i32 4, i32 5
  br label %lpEncodeBacklenBytes.exit

switch.lookup211:                                 ; preds = %bb.ae
  %i.eu = zext nneg i8 %switch.tableidx210 to i64
  %switch.gep212 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.eu
  %switch.load213 = load i32, ptr %switch.gep212, align 4
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %switch.lookup211, %lpCurrentEncodedSizeUnsafe.exit.thread, %bb.ah, %bb.ad, %bb.ab, %bb.aj, %lpCurrentEncodedSizeUnsafe.exit, %bb.ak, %bb.al, %bb.am
  %.0.i148170 = phi i32 [ %.0.i148, %bb.al ], [ %.0.i148, %lpCurrentEncodedSizeUnsafe.exit ], [ %.0.i148, %bb.ak ], [ %.0.i148, %bb.am ], [ 1, %bb.ah ], [ %switch.load213, %switch.lookup211 ], [ 1, %bb.ab ], [ 0, %bb.aj ], [ %i.dz, %lpCurrentEncodedSizeUnsafe.exit.thread ], [ 2, %bb.ad ]
  %.0.i149 = phi i32 [ 3, %bb.al ], [ 1, %lpCurrentEncodedSizeUnsafe.exit ], [ 2, %bb.ak ], [ %i.et, %bb.am ], [ 1, %bb.ah ], [ 1, %switch.lookup211 ], [ 1, %bb.ab ], [ 1, %bb.aj ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread ], [ 1, %bb.ad ]
  %i.ev = add i32 %.0.i149, %.0.i148170           ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not139 = icmp uge ptr %.0121, %i.ew
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.0121, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %i.dg
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.dc
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.dl
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.dq
  %i.fd = icmp ult ptr %i.ey, %i.fc
  %or.cond185 = select i1 %.not139, i1 %i.fd, i1 false, !prof !32
  br i1 %or.cond185, label %lpEncodeBacklen.exit._crit_edge, label %.critedge145, !prof !32

.critedge145:                                     ; preds = %lpEncodeBacklenBytes.exit
  call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1033) #21
  call void @abort() #22
  unreachable

lpEncodeBacklen.exit._crit_edge:                  ; preds = %lpEncodeBacklen.exit, %lpEncodeBacklenBytes.exit
  %.0119 = phi i32 [ %i.ev, %lpEncodeBacklenBytes.exit ], [ 0, %lpEncodeBacklen.exit ]
  %i.fe = zext i32 %.0119 to i64                  ; 3 uses
  %i.ff = add nuw nsw i64 %i.dr, %i.da
  %i.fg = add i64 %i.ff, %i.cz
  %i.fh = sub i64 %i.fg, %i.fe                    ; 7 uses
  %i.fi = icmp ugt i64 %i.fh, 4294967295
  br i1 %i.fi, label %bb.bk, label %bb.an

bb.an:                                            ; preds = %lpEncodeBacklen.exit._crit_edge
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 2 uses
  %i.fk = icmp samesign ugt i64 %i.fh, %i.dr
  br i1 %i.fk, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.fl = call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #21
  %i.fm = icmp ugt i64 %i.fh, %i.fl
  br i1 %i.fm, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fn = call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.fh, ptr noundef null, ptr noundef null) #21 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.bk, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.bh
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao, %bb.an
  %.0117 = phi ptr [ %i.fn, %bb.aq ], [ %0, %bb.ao ], [ %0, %bb.an ] ; 2 uses
  %.0115 = phi ptr [ %i.fp, %bb.aq ], [ %i.fj, %bb.ao ], [ %i.fj, %bb.an ] ; 3 uses
  %i.fq = icmp eq i32 %.1124, 0                   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0115, i64 %i.cz
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.da
  %i.ft = select i1 %i.fq, i64 0, i64 %i.fe
  %.sink209 = add i64 %i.bh, %i.ft
  %.sink.idx = select i1 %i.fq, i64 0, i64 %i.fe
  %.sink = getelementptr inbounds nuw i8, ptr %.0115, i64 %.sink.idx
  %i.fu = sub i64 %i.dr, %.sink209
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fs, ptr align 1 %.sink, i64 %i.fu, i1 false)
  %i.fv = icmp samesign ult i64 %i.fh, %i.dr
  br i1 %i.fv, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.fw = call ptr @zrealloc_usable(ptr noundef nonnull %.0117, i64 noundef %i.fh, ptr noundef null, ptr noundef null) #21 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.bk, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.bh
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.1118 = phi ptr [ %i.fw, %bb.at ], [ %.0117, %bb.ar ] ; 5 uses
  %.1116 = phi ptr [ %i.fy, %bb.at ], [ %.0115, %bb.ar ] ; 10 uses
  %.not140 = icmp eq ptr %6, null
  br i1 %.not140, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %.1116, ptr %6, align 8, !tbaa !19
  br i1 %i.f, label %bb.aw, label %.critedge147

bb.aw:                                            ; preds = %bb.av
  %i.fz = load i8, ptr %.1116, align 1, !tbaa !13
  %i.ga = icmp eq i8 %i.fz, -1
  br i1 %i.ga, label %bb.ax, label %.thread174

bb.ax:                                            ; preds = %bb.aw
  store ptr null, ptr %6, align 8, !tbaa !19
  br label %.thread174

bb.ay:                                            ; preds = %bb.au
  br i1 %i.f, label %.thread174, label %.critedge147

.critedge147:                                     ; preds = %bb.av, %bb.ay
  br i1 %.0122159, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.critedge147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1116, ptr align 1 %.0120161, i64 %i.cz, i1 false)
  br label %bb.bh

bb.ba:                                            ; preds = %.critedge147
  br i1 %i.d, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gb = icmp ult i32 %3, 64
  br i1 %i.gb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gc = trunc nuw nsw i32 %3 to i8
  %i.gd = or disjoint i8 %i.gc, -128
  store i8 %i.gd, ptr %.1116, align 1, !tbaa !13
  br label %lpEncodeString.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ge = icmp ult i32 %3, 4096
  br i1 %i.ge, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gf = lshr i32 %3, 8
  %i.gg = trunc nuw nsw i32 %i.gf to i8
  %i.gh = or disjoint i8 %i.gg, -32
  store i8 %i.gh, ptr %.1116, align 1, !tbaa !13
  %i.gi = trunc i32 %3 to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %.1116, i64 1
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !13
  br label %lpEncodeString.exit

bb.bf:                                            ; preds = %bb.bd
  store i8 -16, ptr %.1116, align 1, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %.1116, i64 1
  store i32 %3, ptr %i.gk, align 1
  br label %lpEncodeString.exit

lpEncodeString.exit:                              ; preds = %bb.bc, %bb.be, %bb.bf
  %.sink26.i = phi i64 [ 2, %bb.be ], [ 5, %bb.bf ], [ 1, %bb.bc ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.1116, i64 %.sink26.i
  %i.gm = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gl, ptr nonnull readonly align 1 %1, i64 %i.gm, i1 false)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ba
  call void @abort() #22
  unreachable

bb.bh:                                            ; preds = %bb.az, %lpEncodeString.exit
  %i.gn = load i64, ptr %i.c, align 8, !tbaa !16
  %i.go = getelementptr inbounds nuw i8, ptr %.1116, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.go, ptr nonnull align 1 %i.b, i64 %i.da, i1 false)
  %i.gp = icmp ne i32 %.1124, 2
  %or.cond = or i1 %i.f, %i.gp
  br i1 %or.cond, label %.thread176, label %bb.bj

.thread174:                                       ; preds = %bb.ax, %bb.aw, %bb.ay
  %i.gq = getelementptr inbounds nuw i8, ptr %.1118, i64 4 ; 2 uses
  %i.gr = load i16, ptr %i.gq, align 1            ; 2 uses
  %.not141 = icmp eq i16 %i.gr, -1
  br i1 %.not141, label %bb.bj, label %bb.bi

.thread176:                                       ; preds = %bb.bh
  %i.gs = getelementptr inbounds nuw i8, ptr %.1118, i64 4 ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 1            ; 2 uses
  %.not141177 = icmp eq i16 %i.gt, -1
  br i1 %.not141177, label %bb.bj, label %.thread178

.thread178:                                       ; preds = %.thread176
  %i.gu = zext i16 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %.1118, i64 5
  %i.gw = add nuw nsw i32 %i.gu, 1                ; 2 uses
  %i.gx = trunc i32 %i.gw to i8
  store i8 %i.gx, ptr %i.gs, align 1, !tbaa !13
  %i.gy = lshr i32 %i.gw, 8
  %i.gz = trunc nuw i32 %i.gy to i8
  store i8 %i.gz, ptr %i.gv, align 1, !tbaa !13
  br label %bb.bj

bb.bi:                                            ; preds = %.thread174
  %i.ha = add i16 %i.gr, -1
  store i16 %i.ha, ptr %i.gq, align 1
  br label %bb.bj

bb.bj:                                            ; preds = %.thread176, %.thread174, %bb.bi, %.thread178, %bb.bh
  %i.hb = trunc nuw i64 %i.fh to i32
  store i32 %i.hb, ptr %.1118, align 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.ap, %bb.as, %lpEncodeBacklen.exit._crit_edge
  %.1 = phi ptr [ null, %lpEncodeBacklen.exit._crit_edge ], [ %.1118, %bb.bj ], [ null, %bb.ap ], [ null, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.1
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @lpEncodeGetType(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #10 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = add i32 %1, -21
  %or.cond.i = icmp ult i32 %i.b, -20
  br i1 %or.cond.i, label %.loopexit, label %bb.b
end_hunk_1
begin_hunk_2_@lpEncodeGetType:bb.a
  %i.an = trunc i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !13
  %i.ap = lshr i64 %.sink.i, 16
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not105.i = icmp eq ptr %3, null
  br i1 %.not105.i, label %lpEncodeIntegerGetType.exit, label %lpEncodeIntegerGetType.exit.sink.split

bb.y:                                             ; preds = %bb.u
  %i.as = add i64 %.sink.i, 2147483648
  %or.cond9.i = icmp ult i64 %i.as, 4294967296
  %.not102.i = icmp eq ptr %2, null               ; 2 uses
  br i1 %or.cond9.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not102.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 -13, ptr %2, align 1, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.au = trunc nsw i64 %.sink.i to i32
  store i32 %i.au, ptr %i.at, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not103.i = icmp eq ptr %3, null
  br i1 %.not103.i, label %lpEncodeIntegerGetType.exit, label %lpEncodeIntegerGetType.exit.sink.split

bb.ac:                                            ; preds = %bb.y
  br i1 %.not102.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 -12, ptr %2, align 1, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i64 %.sink.i, ptr %i.av, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not101.i = icmp eq ptr %3, null
  br i1 %.not101.i, label %lpEncodeIntegerGetType.exit, label %lpEncodeIntegerGetType.exit.sink.split

.loopexit:                                        ; preds = %.lr.ph.i, %bb.f, %bb.a, %bb.j, %bb.h
  %i.aw = icmp ult i32 %1, 64
  br i1 %i.aw, label %.loopexit.thread, label %bb.af

.loopexit.thread:                                 ; preds = %bb.c, %.thread73.i, %bb.d, %.loopexit
  %i.ax = add nuw nsw i32 %1, 1
  %i.ay = zext nneg i32 %i.ax to i64
  br label %lpEncodeIntegerGetType.exit.sink.split

bb.af:                                            ; preds = %.loopexit
  %i.az = icmp ult i32 %1, 4096
  br i1 %i.az, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ba = add nuw nsw i32 %1, 2
  %i.bb = zext nneg i32 %i.ba to i64
  br label %lpEncodeIntegerGetType.exit.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.bc = add nuw nsw i64 %i.a, 5
  br label %lpEncodeIntegerGetType.exit.sink.split

lpEncodeIntegerGetType.exit.sink.split:           ; preds = %bb.l, %bb.p, %bb.t, %bb.x, %bb.ab, %bb.ae, %bb.ag, %bb.ah, %.loopexit.thread
  %.sink.i14.sink = phi i64 [ %i.bb, %bb.ag ], [ %i.ay, %.loopexit.thread ], [ %i.bc, %bb.ah ], [ 5, %bb.ab ], [ 1, %bb.l ], [ 3, %bb.t ], [ 4, %bb.x ], [ 2, %bb.p ], [ 9, %bb.ae ]
  %.0.ph = phi i32 [ 1, %bb.ag ], [ 1, %.loopexit.thread ], [ 1, %bb.ah ], [ 0, %bb.ab ], [ 0, %bb.l ], [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %bb.p ], [ 0, %bb.ae ]
  store i64 %.sink.i14.sink, ptr %3, align 8, !tbaa !16
  br label %lpEncodeIntegerGetType.exit

lpEncodeIntegerGetType.exit:                      ; preds = %lpEncodeIntegerGetType.exit.sink.split, %bb.ae, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l
  %.0 = phi i32 [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.t ], [ %.0.ph, %lpEncodeIntegerGetType.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lpBatchInsert(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca [3 x %struct.listpackInsertEntry], align 16 ; 4 uses
  %i.a = icmp eq i32 %2, 1
  %i.b = icmp ult i32 %2, 2
  br i1 %i.b, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1152) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %3, null
  %i.d = icmp ne i32 %4, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1153) #21
  tail call void @abort() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = icmp ugt i32 %4, 3
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = zext i32 %4 to i64
  %i.h = mul nuw nsw i64 %i.g, 40
  %i.i = tail call noalias ptr @zmalloc(i64 noundef %i.h) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0132 = phi ptr [ %i.i, %bb.f ], [ %6, %bb.e ] ; 8 uses
  br i1 %i.a, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.j = load i8, ptr %1, align 1, !tbaa !13      ; 4 uses
  %i.k = zext i8 %i.j to i32                      ; 5 uses
  %i.l = icmp sgt i8 %i.j, -1
  br i1 %i.l, label %lpSkip.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %i.k, 192
  %i.n = icmp eq i32 %i.m, 128
  br i1 %i.n, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.j

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.i
  %i.o = and i32 %i.k, 63
  %i.p = add nuw nsw i32 %i.o, 1
  br label %lpSkip.exit

bb.j:                                             ; preds = %bb.i
  %i.q = and i32 %i.k, 224
  %i.r = icmp eq i32 %i.q, 192
  br i1 %i.r, label %lpSkip.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %switch.tableidx = add nsw i8 %i.j, 15          ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx, 4
  br i1 %i.s, label %switch.lookup, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = and i32 %i.k, 240
  %i.u = icmp eq i32 %i.t, 224
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = shl nuw nsw i32 %i.k, 8
  %i.w = and i32 %i.v, 3840
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, 2
  %i.ab = add nuw nsw i32 %i.aa, %i.z
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.n:                                             ; preds = %bb.l
  switch i8 %i.j, label %bb.p [
    i8 -16, label %bb.o
    i8 -1, label %lpSkip.exit
  ]

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = add i32 %i.ad, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.p:                                             ; preds = %bb.n
  br label %lpSkip.exit

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.o, %bb.m
  %.0.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.ae, %bb.o ] ; 8 uses
  %i.af = icmp ult i32 %.0.i.i, 128
  br i1 %i.af, label %lpSkip.exit, label %bb.q

bb.q:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.ag = icmp ult i32 %.0.i.i, 16383
  br i1 %i.ag, label %lpSkip.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = icmp ult i32 %.0.i.i, 2097151
  br i1 %i.ah, label %lpSkip.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = icmp ult i32 %.0.i.i, 268435455
  %..i.i = select i1 %i.ai, i64 4, i64 5
  br label %lpSkip.exit

switch.lookup:                                    ; preds = %bb.k
  %i.aj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.aj
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit

lpSkip.exit:                                      ; preds = %switch.lookup, %bb.h, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.j, %bb.n, %bb.p, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.q, %bb.r, %bb.s
  %.shrunk.i = phi i32 [ %.0.i.i, %bb.r ], [ %.0.i.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i.i, %bb.q ], [ %.0.i.i, %bb.s ], [ 1, %bb.n ], [ %switch.load, %switch.lookup ], [ 1, %bb.h ], [ 0, %bb.p ], [ %i.p, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 2, %bb.j ]
  %.0.i5.i = phi i64 [ 3, %bb.r ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.q ], [ %..i.i, %bb.s ], [ 1, %bb.n ], [ 1, %switch.lookup ], [ 1, %bb.h ], [ 1, %bb.p ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 1, %bb.j ]
  %i.ak = zext i32 %.shrunk.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i5.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not = icmp ult ptr %i.am, %i.an
  br i1 %.not, label %.critedge, label %bb.t, !prof !18

bb.t:                                             ; preds = %lpSkip.exit
  %i.ao = load i8, ptr %0, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ap
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bg = icmp ult ptr %i.am, %i.bf
  br i1 %i.bg, label %bb.u, label %.critedge, !prof !22

.critedge:                                        ; preds = %lpSkip.exit, %bb.t
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1179) #21
  tail call void @abort() #22
  unreachable

bb.u:                                             ; preds = %bb.t, %bb.g
  %.0130 = phi ptr [ %i.am, %bb.t ], [ %1, %bb.g ]
  %wide.trip.count = zext i32 %4 to i64           ; 3 uses
  br label %bb.w

bb.v:                                             ; preds = %lpEncodeBacklen.exit
  %i.bh = load i32, ptr %0, align 1
  %i.bi = zext i32 %i.bh to i64                   ; 3 uses
  %i.bj = add i64 %i.fd, %i.bi                    ; 5 uses
  %i.bk = icmp ugt i64 %i.bj, 4294967295
  br i1 %i.bk, label %bb.bp, label %bb.ar

bb.w:                                             ; preds = %bb.u, %lpEncodeBacklen.exit
  %indvars.iv = phi i64 [ 0, %bb.u ], [ %indvars.iv.next, %lpEncodeBacklen.exit ] ; 6 uses
  %.0131148 = phi i64 [ 0, %bb.u ], [ %i.fd, %lpEncodeBacklen.exit ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %.not146 = icmp eq ptr %i.bm, null
  br i1 %.not146, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %.0132, i64 %indvars.iv ; 8 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !37 ; 15 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %or.cond.i = icmp ult i64 %i.bp, 128
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bs = trunc nuw nsw i64 %i.bp to i8
  store i8 %i.bs, ptr %i.bq, align 8, !tbaa !13
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.bt = add i64 %i.bp, 4096
  %or.cond3.i = icmp ult i64 %i.bt, 8192
  br i1 %or.cond3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bu = lshr i64 %i.bp, 50
  %i.bv = and i64 %i.bu, 8192
  %spec.select.i = add nsw i64 %i.bv, %i.bp
  %i.bw = lshr i64 %spec.select.i, 8
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %i.by = or i8 %i.bx, -64
  store i8 %i.by, ptr %i.bq, align 8, !tbaa !13
  %i.bz = trunc i64 %i.bp to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 17
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !13
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.cb = add i64 %i.bp, 32768
  %or.cond5.i = icmp ult i64 %i.cb, 65536
  br i1 %or.cond5.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 -15, ptr %i.bq, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 17
  %i.cd = trunc nsw i64 %i.bp to i16
  store i16 %i.cd, ptr %i.cc, align 1
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.ce = add i64 %i.bp, 8388608
  %or.cond7.i = icmp ult i64 %i.ce, 16777216
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 17 ; 3 uses
  br i1 %or.cond7.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 -14, ptr %i.bq, align 8, !tbaa !13
  %i.cg = trunc i64 %i.bp to i8
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !13
  %i.ch = lshr i64 %i.bp, 8
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 18
  store i8 %i.ci, ptr %i.cj, align 2, !tbaa !13
  %i.ck = lshr i64 %i.bp, 16
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 19
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !13
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.cn = add i64 %i.bp, 2147483648
  %or.cond9.i = icmp ult i64 %i.cn, 4294967296
  br i1 %or.cond9.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 -13, ptr %i.bq, align 8, !tbaa !13
  %i.co = trunc nsw i64 %i.bp to i32
  store i32 %i.co, ptr %i.cf, align 1
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  store i8 -12, ptr %i.bq, align 8, !tbaa !13
  store i64 %i.bp, ptr %i.cf, align 1
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %.sink.i = phi i64 [ 5, %bb.ag ], [ 1, %bb.y ], [ 3, %bb.ac ], [ 4, %bb.ae ], [ 2, %bb.aa ], [ 9, %bb.ah ] ; 3 uses
  store i64 %.sink.i, ptr %i.br, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw [40 x i8], ptr %.0132, i64 %indvars.iv ; 2 uses
  %i.cq = add i64 %.sink.i, %.0131148
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %.0132, i64 %indvars.iv ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cx = call fastcc i32 @lpEncodeGetType(ptr noundef %i.bm, i32 noundef %i.ct, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw)
  store i32 %i.cx, ptr %i.cu, align 8, !tbaa !35
  %.pre = load i64, ptr %i.cw, align 8, !tbaa !39 ; 20 uses
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %.0132, i64 %indvars.iv ; 14 uses
  %i.cz = add i64 %.pre, %.0131148                ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 25 ; 5 uses
  %i.db = icmp ult i64 %.pre, 128
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread, %bb.ai
  %i.dc = phi ptr [ %i.cr, %.thread ], [ %i.da, %bb.ai ]
  %i.dd = phi i64 [ %i.cq, %.thread ], [ %i.cz, %bb.ai ]
  %i.de = phi ptr [ %i.cp, %.thread ], [ %i.cy, %bb.ai ]
  %i.df = phi i64 [ %.sink.i, %.thread ], [ %.pre, %bb.ai ]
  %i.dg = trunc nuw nsw i64 %i.df to i8
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !13
  br label %lpEncodeBacklen.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dh = icmp ult i64 %.pre, 16383
  br i1 %i.dh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.di = lshr i64 %.pre, 7
  %i.dj = trunc nuw nsw i64 %i.di to i8
  store i8 %i.dj, ptr %i.da, align 1, !tbaa !13
  %i.dk = trunc i64 %.pre to i8
  %i.dl = or i8 %i.dk, -128
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 26
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !13
  br label %lpEncodeBacklen.exit

bb.am:                                            ; preds = %bb.ak
  %i.dn = icmp ult i64 %.pre, 2097151
  br i1 %i.dn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.do = lshr i64 %.pre, 14
  %i.dp = trunc nuw nsw i64 %i.do to i8
  store i8 %i.dp, ptr %i.da, align 1, !tbaa !13
  %i.dq = lshr i64 %.pre, 7
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = or i8 %i.dr, -128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 26
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !13
  %i.du = trunc i64 %.pre to i8
  %i.dv = or i8 %i.du, -128
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 27
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !13
  br label %lpEncodeBacklen.exit
end_hunk_2
begin_hunk_3_@lpBatchAppend:bb.a
  %i.t = trunc i64 %2 to i32
  %i.u = tail call ptr @lpBatchInsert(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i32 noundef 0, ptr noundef %1, i32 noundef %i.t, ptr noundef null)
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpReplace(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = tail call ptr @lpInsert(ptr noundef %0, ptr noundef %2, ptr noundef null, i32 noundef %3, ptr noundef %i.a, i32 noundef 2, ptr noundef nonnull %1)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpReplaceInteger(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 14 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %or.cond.i.i = icmp ult i64 %2, 128
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !13
  br label %lpInsertInteger.exit

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, 4096
  %or.cond3.i.i = icmp ult i64 %i.d, 8192
  br i1 %or.cond3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i64 %2, 50
  %i.f = and i64 %i.e, 8192
  %spec.select.i.i = add nsw i64 %i.f, %2
  %i.g = lshr i64 %spec.select.i.i, 8
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = or i8 %i.h, -64
  store i8 %i.i, ptr %i.a, align 1, !tbaa !13
  %i.j = trunc i64 %2 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !13
  br label %lpInsertInteger.exit

bb.e:                                             ; preds = %bb.c
  %i.l = add i64 %2, 32768
  %or.cond5.i.i = icmp ult i64 %i.l, 65536
  br i1 %or.cond5.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 -15, ptr %i.a, align 1, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.n = trunc nsw i64 %2 to i16
  store i16 %i.n, ptr %i.m, align 1
  br label %lpInsertInteger.exit

bb.g:                                             ; preds = %bb.e
  %i.o = add i64 %2, 8388608
  %or.cond7.i.i = icmp ult i64 %i.o, 16777216
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  br i1 %or.cond7.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 -14, ptr %i.a, align 1, !tbaa !13
  %i.q = trunc i64 %2 to i8
  store i8 %i.q, ptr %i.p, align 1, !tbaa !13
  %i.r = lshr i64 %2, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.s, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %2, 16
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !13
  br label %lpInsertInteger.exit

bb.i:                                             ; preds = %bb.g
  %i.x = add i64 %2, 2147483648
  %or.cond9.i.i = icmp ult i64 %i.x, 4294967296
  br i1 %or.cond9.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 -13, ptr %i.a, align 1, !tbaa !13
  %i.y = trunc nsw i64 %2 to i32
  store i32 %i.y, ptr %i.p, align 1
  br label %lpInsertInteger.exit

bb.k:                                             ; preds = %bb.i
  store i8 -12, ptr %i.a, align 1, !tbaa !13
  store i64 %2, ptr %i.p, align 1
  br label %lpInsertInteger.exit

lpInsertInteger.exit:                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.k
  %.sink.i.i = phi i32 [ 5, %bb.j ], [ 1, %bb.b ], [ 3, %bb.f ], [ 4, %bb.h ], [ 2, %bb.d ], [ 9, %bb.k ]
  %i.z = call ptr @lpInsert(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %.sink.i.i, ptr noundef %i.b, i32 noundef 2, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.z
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpDelete(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @lpInsert(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef 2, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpDeleteRangeWithEntry(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr %0, align 1
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.f = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.a, %lpAssertValidEntry.exit
  %.in = phi i64 [ %i.h, %lpAssertValidEntry.exit ], [ %2, %bb.a ]
  %.05160 = phi ptr [ %i.am, %lpAssertValidEntry.exit ], [ %i.f, %bb.a ] ; 4 uses
  %.05359 = phi i64 [ %i.i, %lpAssertValidEntry.exit ], [ 0, %bb.a ]
  %i.h = add i64 %.in, -1                         ; 2 uses
  %i.i = add nuw i64 %.05359, 1                   ; 2 uses
  %i.j = load i8, ptr %.05160, align 1, !tbaa !13 ; 4 uses
  %i.k = zext i8 %i.j to i32                      ; 5 uses
  %i.l = icmp sgt i8 %i.j, -1
  br i1 %i.l, label %lpSkip.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.m = and i32 %i.k, 192
  %i.n = icmp eq i32 %i.m, 128
  br i1 %i.n, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.c

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.b
  %i.o = and i32 %i.k, 63
  %i.p = add nuw nsw i32 %i.o, 1
  br label %lpSkip.exit

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %i.k, 224
  %i.r = icmp eq i32 %i.q, 192
  br i1 %i.r, label %lpSkip.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.tableidx = add nsw i8 %i.j, 15          ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx, 4
  br i1 %i.s, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.k, 240
  %i.u = icmp eq i32 %i.t, 224
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw nsw i32 %i.k, 8
  %i.w = and i32 %i.v, 3840
  %i.x = getelementptr inbounds nuw i8, ptr %.05160, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, 2
  %i.ab = add nuw nsw i32 %i.aa, %i.z
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.g:                                             ; preds = %bb.e
  switch i8 %i.j, label %bb.i [
    i8 -16, label %bb.h
    i8 -1, label %lpSkip.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.05160, i64 1
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = add i32 %i.ad, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.i:                                             ; preds = %bb.g
  br label %lpSkip.exit

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.h, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ %i.ae, %bb.h ] ; 8 uses
  %i.af = icmp ult i32 %.0.i.i, 128
  br i1 %i.af, label %lpSkip.exit, label %bb.j

bb.j:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.ag = icmp ult i32 %.0.i.i, 16383
  br i1 %i.ag, label %lpSkip.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp ult i32 %.0.i.i, 2097151
  br i1 %i.ah, label %lpSkip.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp ult i32 %.0.i.i, 268435455
  %..i.i = select i1 %i.ai, i64 4, i64 5
  br label %lpSkip.exit

switch.lookup:                                    ; preds = %bb.d
  %i.aj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.aj
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit

lpSkip.exit:                                      ; preds = %switch.lookup, %.preheader, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.c, %bb.g, %bb.i, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.j, %bb.k, %bb.l
  %.shrunk.i = phi i32 [ %.0.i.i, %bb.k ], [ %.0.i.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i.i, %bb.j ], [ %.0.i.i, %bb.l ], [ 1, %bb.g ], [ %switch.load, %switch.lookup ], [ 1, %.preheader ], [ 0, %bb.i ], [ %i.p, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 2, %bb.c ]
  %.0.i5.i = phi i64 [ 3, %bb.k ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.j ], [ %..i.i, %bb.l ], [ 1, %bb.g ], [ 1, %switch.lookup ], [ 1, %.preheader ], [ 1, %bb.i ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 1, %bb.c ]
  %i.ak = zext i32 %.shrunk.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.05160, i64 %.0.i5.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 5 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %bb.o, label %bb.m

bb.m:                                             ; preds = %lpSkip.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.am, ptr %i.a, align 8, !tbaa !19
  %i.ap = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.c)
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.n, label %lpAssertValidEntry.exit, !prof !18

bb.n:                                             ; preds = %bb.m
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit:                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.o, label %.preheader, !llvm.loop !43

bb.o:                                             ; preds = %lpSkip.exit, %lpAssertValidEntry.exit
  %.lcssa = phi i64 [ %i.i, %lpSkip.exit ], [ %2, %lpAssertValidEntry.exit ]
  %i.aq = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ar = ptrtoint ptr %0 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ptrtoint ptr %i.e to i64
  %i.au = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.av = add i64 %i.at, 1
  %i.aw = sub i64 %i.av, %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr nonnull align 1 %i.am, i64 %i.aw, i1 false)
  %.neg = add i64 %i.aq, %i.c
  %i.ax = sub i64 %.neg, %i.au                    ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %0, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 1            ; 2 uses
  %.not57 = icmp eq i16 %i.ba, -1
  br i1 %.not57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = trunc i64 %.lcssa to i16
  %i.bc = sub i16 %i.ba, %i.bb
  store i16 %i.bc, ptr %i.az, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = and i64 %i.ax, 4294967295               ; 2 uses
  %i.be = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #21
  %i.bf = icmp ugt i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.r, label %lpShrinkToFit.exit

bb.r:                                             ; preds = %bb.q
  %i.bg = tail call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.bd, ptr noundef null, ptr noundef null) #21
  br label %lpShrinkToFit.exit

lpShrinkToFit.exit:                               ; preds = %bb.q, %bb.r
  %.0.i = phi ptr [ %i.bg, %bb.r ], [ %0, %bb.q ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.as ; 3 uses
  store ptr %i.bh, ptr %1, align 8, !tbaa !19
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.bj = icmp eq i8 %i.bi, -1
  %spec.store.select = select i1 %i.bj, ptr null, ptr %i.bh
  store ptr %spec.store.select, ptr %1, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %lpShrinkToFit.exit
  %.0 = phi ptr [ %.0.i, %lpShrinkToFit.exit ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpDeleteRange(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1              ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %lpShrinkToFit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @lpSeek(ptr noundef nonnull %0, i64 noundef %1) ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %lpShrinkToFit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i16 %i.c, -1                     ; 2 uses
  %i.h = icmp slt i64 %1, 0
  %or.cond = and i1 %i.h, %i.g
  %i.i = zext i16 %i.c to i64                     ; 2 uses
  %i.j = select i1 %or.cond, i64 %i.i, i64 0
  %.033 = add nsw i64 %i.j, %1                    ; 2 uses
  %i.k = sub i64 %i.i, %.033
  %.not = icmp ule i64 %i.k, %2
  %or.cond39.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond39.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i8 -1, ptr %i.e, align 1, !tbaa !13
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = trunc i64 %i.n to i8
  %i.p = add i8 %i.o, 1
  store i8 %i.p, ptr %0, align 1, !tbaa !13
  %i.q = add nsw i64 %i.n, 1                      ; 3 uses
  %i.r = lshr i64 %i.q, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %i.q, 16
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !13
  %i.x = lshr i64 %i.q, 24
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.y, ptr %i.z, align 1, !tbaa !13
  %i.aa = trunc i64 %.033 to i16
  store i16 %i.aa, ptr %i.b, align 1
  %i.ab = load i32, ptr %0, align 1
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #21
  %i.ae = icmp ugt i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.e, label %lpShrinkToFit.exit

bb.e:                                             ; preds = %bb.d
  %i.af = tail call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.ac, ptr noundef null, ptr noundef null) #21
  br label %lpShrinkToFit.exit

bb.f:                                             ; preds = %bb.c
  %i.ag = call ptr @lpDeleteRangeWithEntry(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %2)
  br label %lpShrinkToFit.exit

lpShrinkToFit.exit:                               ; preds = %bb.e, %bb.d, %bb.f, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.b ], [ %0, %bb.a ], [ %i.ag, %bb.f ], [ %i.af, %bb.e ], [ %0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpSeek(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 1              ; 2 uses
  %.not = icmp eq i16 %i.c, -1
  %i.d = icmp slt i64 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.c to i64                     ; 4 uses
  %i.f = select i1 %i.d, i64 %i.e, i64 0
  %.032 = add nsw i64 %i.f, %1                    ; 5 uses
  %i.g = icmp sgt i64 %.032, -1
  %.not39 = icmp samesign ult i64 %.032, %i.e
  %or.cond = select i1 %i.g, i1 %.not39, i1 false
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %i.e, 1
  %i.i = icmp samesign ugt i64 %.032, %i.h
  %i.j = sub nsw i64 %.032, %i.e
  br i1 %i.i, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.143 = phi i64 [ %.032, %bb.c ], [ %1, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %0, align 1
  %i.o = zext i32 %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8, !tbaa !19
  %i.p = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.o)
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.g, label %lpFirst.exit, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpFirst.exit:                                     ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not60 = icmp eq i64 %.143, 0
  br i1 %.not60, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %lpFirst.exit, %.lr.ph
  %.02947 = phi ptr [ %i.q, %.lr.ph ], [ %i.k, %lpFirst.exit ]
  %.246 = phi i64 [ %i.r, %.lr.ph ], [ %.143, %lpFirst.exit ] ; 2 uses
  %i.q = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.02947) ; 3 uses
  %i.r = add nsw i64 %.246, -1
  %i.s = icmp samesign ugt i64 %.246, 1
  %i.t = icmp ne ptr %i.q, null
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !44

bb.h:                                             ; preds = %bb.c, %bb.d
  %.144 = phi i64 [ %i.j, %bb.c ], [ %1, %bb.d ]  ; 2 uses
  %i.v = load i8, ptr %0, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.w
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  %i.ao = tail call ptr @lpPrev(ptr noundef nonnull %0, ptr noundef nonnull %i.an) ; 3 uses
  %i.ap = icmp slt i64 %.144, -1
  %i.aq = icmp ne ptr %i.ao, null
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph50, label %.loopexit

.lr.ph50:                                         ; preds = %bb.h, %.lr.ph50
  %.049 = phi ptr [ %i.as, %.lr.ph50 ], [ %i.ao, %bb.h ]
  %.348 = phi i64 [ %i.at, %.lr.ph50 ], [ %.144, %bb.h ] ; 2 uses
  %i.as = tail call ptr @lpPrev(ptr noundef nonnull %0, ptr noundef nonnull %.049) ; 3 uses
  %i.at = add nuw nsw i64 %.348, 1
  %i.au = icmp samesign ult i64 %.348, -2
  %i.av = icmp ne ptr %i.as, null
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph50, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph50, %bb.e, %lpFirst.exit, %bb.h, %bb.b
  %.030 = phi ptr [ %i.as, %.lr.ph50 ], [ null, %bb.b ], [ %i.ao, %bb.h ], [ %i.k, %lpFirst.exit ], [ null, %bb.e ], [ %i.q, %.lr.ph ]
  ret ptr %.030
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpBatchDelete(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %lpShrinkToFit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1418) #21
  tail call void @abort() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.w
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %.1 to i64
  %.neg = sub i64 %i.j, %i.i
  %i.k = add i64 %.neg, %i.c                      ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.y, label %bb.x, !prof !22

bb.f:                                             ; preds = %bb.d, %bb.w
  %.05872 = phi ptr [ %i.h, %bb.d ], [ %.1, %bb.w ] ; 3 uses
  %.06071 = phi i64 [ 0, %bb.d ], [ %i.av, %bb.w ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06071
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 5 uses
  %.not67 = icmp eq ptr %i.q, null
  br i1 %.not67, label %.critedge, label %bb.g, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13    ; 5 uses
  %.not68 = icmp eq i8 %i.r, -1
  br i1 %.not68, label %.critedge, label %bb.h, !prof !18

.critedge:                                        ; preds = %bb.f, %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1433) #21
  tail call void @abort() #22
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = zext i8 %i.r to i32                      ; 5 uses
  %i.t = icmp sgt i8 %i.r, -1
  br i1 %i.t, label %lpSkip.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = and i32 %i.s, 192
  %i.v = icmp eq i32 %i.u, 128
  br i1 %i.v, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.j

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.i
  %i.w = and i32 %i.s, 63
  %i.x = add nuw nsw i32 %i.w, 1
  br label %lpSkip.exit

bb.j:                                             ; preds = %bb.i
  %i.y = and i32 %i.s, 224
  %i.z = icmp eq i32 %i.y, 192
  br i1 %i.z, label %lpSkip.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %switch.tableidx = add nsw i8 %i.r, 15          ; 2 uses
  %i.aa = icmp ult i8 %switch.tableidx, 4
  br i1 %i.aa, label %switch.lookup, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = and i32 %i.s, 240
  %i.ac = icmp eq i32 %i.ab, 224
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = shl nuw nsw i32 %i.s, 8
  %i.ae = and i32 %i.ad, 3840
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, 2
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.n:                                             ; preds = %bb.l
  %cond = icmp eq i8 %i.r, -16
  br i1 %cond, label %bb.o, label %lpSkip.exit

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = add i32 %i.al, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.o, %bb.m
  %.0.i.i = phi i32 [ %i.aj, %bb.m ], [ %i.am, %bb.o ] ; 8 uses
  %i.an = icmp ult i32 %.0.i.i, 128
  br i1 %i.an, label %lpSkip.exit, label %bb.p

bb.p:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.ao = icmp ult i32 %.0.i.i, 16383
  br i1 %i.ao, label %lpSkip.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = icmp ult i32 %.0.i.i, 2097151
  br i1 %i.ap, label %lpSkip.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = icmp ult i32 %.0.i.i, 268435455
  %..i.i = select i1 %i.aq, i64 4, i64 5
  br label %lpSkip.exit

switch.lookup:                                    ; preds = %bb.k
  %i.ar = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.ar
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit

lpSkip.exit:                                      ; preds = %switch.lookup, %bb.n, %bb.h, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.j, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.p, %bb.q, %bb.r
  %.shrunk.i = phi i32 [ %.0.i.i, %bb.q ], [ %.0.i.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i.i, %bb.p ], [ %.0.i.i, %bb.r ], [ %i.x, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ %switch.load, %switch.lookup ], [ 2, %bb.j ], [ 1, %bb.h ], [ 0, %bb.n ]
  %.0.i5.i = phi i64 [ 3, %bb.q ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.p ], [ %..i.i, %bb.r ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 1, %switch.lookup ], [ 1, %bb.j ], [ 1, %bb.h ], [ 1, %bb.n ]
  %i.as = zext i32 %.shrunk.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i5.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as ; 4 uses
  %i.av = add nuw i64 %.06071, 1                  ; 4 uses
  %i.aw = icmp ult i64 %i.av, %2
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %lpSkip.exit
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 2 uses
  %i.az = icmp eq ptr %i.au, %i.ay
  br i1 %i.az, label %bb.w, label %bb.t

bb.t:                                             ; preds = %lpSkip.exit, %bb.s
  %.059 = phi ptr [ %i.ay, %bb.s ], [ %i.d, %lpSkip.exit ] ; 2 uses
  %i.ba = icmp ugt ptr %.059, %i.au
  br i1 %i.ba, label %bb.v, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.t
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1444) #21
  tail call void @abort() #22
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bb = ptrtoint ptr %.059 to i64
  %i.bc = ptrtoint ptr %i.au to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.05872, ptr nonnull align 1 %i.au, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.05872, i64 %i.bd
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v
  %.1 = phi ptr [ %i.be, %bb.v ], [ %.05872, %bb.s ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !46

bb.x:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1452) #21
  tail call void @abort() #22
  unreachable

bb.y:                                             ; preds = %bb.e
  %i.bf = trunc i64 %i.k to i32
  store i32 %i.bf, ptr %0, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 1            ; 2 uses
  %.not = icmp eq i16 %i.bh, -1
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = trunc i64 %2 to i16
  %i.bj = sub i16 %i.bh, %i.bi
  store i16 %i.bj, ptr %i.bg, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bk = and i64 %i.k, 4294967295                ; 2 uses
  %i.bl = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #21
  %i.bm = icmp ugt i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.ab, label %lpShrinkToFit.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bn = tail call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.bk, ptr noundef null, ptr noundef null) #21
  br label %lpShrinkToFit.exit

lpShrinkToFit.exit:                               ; preds = %bb.ab, %bb.aa, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.bn, %bb.ab ], [ %0, %bb.aa ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpMerge(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = icmp eq ptr %i.d, %i.g
  %or.cond81 = or i1 %i.h, %i.i
  br i1 %or.cond81, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.d, align 1              ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.m = load i16, ptr %i.l, align 1              ; 2 uses
  %i.n = zext i16 %i.m to i32
  %.not.i = icmp eq i16 %i.m, -1
  br i1 %.not.i, label %bb.e, label %lpLength.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %._crit_edge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8, !tbaa !19
  %i.r = call i32 @lpValidateNext(ptr noundef nonnull readnone %i.d, ptr noundef nonnull %i.b, i64 noundef %i.k)
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.g, label %.lr.ph.preheader.i, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.s, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.s = add i32 %.01520.i, 1                     ; 4 uses
  %i.t = tail call ptr @lpNext(ptr noundef nonnull %i.d, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.t, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.u = icmp ult i32 %i.s, 65535
  br i1 %i.u, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.e
  %.015.lcssa25.i = phi i32 [ %i.s, %._crit_edge.i ], [ 0, %bb.e ] ; 2 uses
  %i.v = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.v, ptr %i.l, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.d, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.n, %bb.d ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.s, %._crit_edge.i ]
  %.016.i = zext i32 %.016.in.i to i64
  %i.w = load ptr, ptr %1, align 8, !tbaa !19     ; 5 uses
  %i.x = load i32, ptr %i.w, align 1              ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 1             ; 2 uses
  %i.ab = zext i16 %i.aa to i32
  %.not.i82 = icmp eq i16 %i.aa, -1
  br i1 %.not.i82, label %bb.h, label %lpLength.exit94

bb.h:                                             ; preds = %lpLength.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 6 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %._crit_edge.thread.i92, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !19
  %i.af = call i32 @lpValidateNext(ptr noundef nonnull readnone %i.w, ptr noundef nonnull %i.a, i64 noundef %i.y)
  %.not.i.i.i85 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i85, label %bb.j, label %.lr.ph.preheader.i86, !prof !18

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i86:                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87, %.lr.ph.preheader.i86
  %.021.i88 = phi ptr [ %i.ah, %.lr.ph.i87 ], [ %i.ac, %.lr.ph.preheader.i86 ]
  %.01520.i89 = phi i32 [ %i.ag, %.lr.ph.i87 ], [ 0, %.lr.ph.preheader.i86 ]
  %i.ag = add i32 %.01520.i89, 1                  ; 4 uses
  %i.ah = tail call ptr @lpNext(ptr noundef nonnull %i.w, ptr noundef nonnull %.021.i88) ; 2 uses
  %.not18.i90 = icmp eq ptr %i.ah, null
  br i1 %.not18.i90, label %._crit_edge.i91, label %.lr.ph.i87, !llvm.loop !23

._crit_edge.i91:                                  ; preds = %.lr.ph.i87
  %i.ai = icmp ult i32 %i.ag, 65535
  br i1 %i.ai, label %._crit_edge.thread.i92, label %lpLength.exit94

._crit_edge.thread.i92:                           ; preds = %._crit_edge.i91, %bb.h
  %.015.lcssa25.i93 = phi i32 [ %i.ag, %._crit_edge.i91 ], [ 0, %bb.h ] ; 2 uses
  %i.aj = trunc nuw i32 %.015.lcssa25.i93 to i16
  store i16 %i.aj, ptr %i.z, align 1
  br label %lpLength.exit94

lpLength.exit94:                                  ; preds = %lpLength.exit, %._crit_edge.i91, %._crit_edge.thread.i92
  %.016.in.i83 = phi i32 [ %i.ab, %lpLength.exit ], [ %.015.lcssa25.i93, %._crit_edge.thread.i92 ], [ %i.ag, %._crit_edge.i91 ]
  %.not = icmp ult i32 %i.j, %i.x                 ; 3 uses
  %. = select i1 %.not, ptr %0, ptr %1
  %.067 = load ptr, ptr %., align 8, !tbaa !19    ; 2 uses
  %i.ak = add nsw i64 %i.k, -7
end_hunk_3
begin_hunk_4_@lpDup:bb.a
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call ptr @zmalloc_usable(i64 noundef %i.b, ptr noundef null) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 2, 11) i64 @lpEntrySizeInteger(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %or.cond.i = icmp ult i64 %0, 128
  br i1 %or.cond.i, label %lpEncodeBacklenBytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %0, 4096
  %or.cond3.i = icmp ult i64 %i.a, 8192
  br i1 %or.cond3.i, label %lpEncodeBacklenBytes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %0, 32768
  %or.cond5.i = icmp ult i64 %i.b, 65536
  br i1 %or.cond5.i, label %lpEncodeBacklenBytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add i64 %0, 8388608
  %or.cond7.i = icmp ult i64 %i.c, 16777216
  br i1 %or.cond7.i, label %lpEncodeBacklenBytes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = add i64 %0, 2147483648
  %or.cond9.i = icmp ult i64 %i.d, 4294967296
  %i.e = select i1 %or.cond9.i, i64 6, i64 10
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.sink.i = phi i64 [ 5, %bb.d ], [ %i.e, %bb.e ], [ 3, %bb.b ], [ 4, %bb.c ], [ 2, %bb.a ]
  ret i64 %.sink.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @lpEstimateBytesRepeatedInteger(i64 noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %or.cond.i.i = icmp ult i64 %0, 128
  br i1 %or.cond.i.i, label %lpEntrySizeInteger.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %0, 4096
  %or.cond3.i.i = icmp ult i64 %i.a, 8192
  br i1 %or.cond3.i.i, label %lpEntrySizeInteger.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %0, 32768
  %or.cond5.i.i = icmp ult i64 %i.b, 65536
  br i1 %or.cond5.i.i, label %lpEntrySizeInteger.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add i64 %0, 8388608
  %or.cond7.i.i = icmp ult i64 %i.c, 16777216
  br i1 %or.cond7.i.i, label %lpEntrySizeInteger.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = add i64 %0, 2147483648
  %or.cond9.i.i = icmp ult i64 %i.d, 4294967296
  %i.e = select i1 %or.cond9.i.i, i64 6, i64 10
  br label %lpEntrySizeInteger.exit

lpEntrySizeInteger.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sink.i.i = phi i64 [ 5, %bb.d ], [ %i.e, %bb.e ], [ 3, %bb.b ], [ 4, %bb.c ], [ 2, %bb.a ]
  %i.f = mul i64 %.sink.i.i, %1
  %i.g = add i64 %i.f, 7
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @lpValidateFirst(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = icmp eq i8 %i.b, -1
  %. = select i1 %i.c, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @lpValidateNext(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %lpCurrentEncodedSizeBytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.c = icmp ult ptr %i.a, %i.b
  br i1 %i.c, label %lpCurrentEncodedSizeBytes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 3 uses
  %i.f = icmp ugt ptr %i.a, %i.e
  br i1 %i.f, label %lpCurrentEncodedSizeBytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.a, align 1, !tbaa !13    ; 7 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %lpCurrentEncodedSizeBytes.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext i8 %i.g to i32                      ; 6 uses
  %i.j = icmp sgt i8 %i.g, -1                     ; 2 uses
  %i.k = and i32 %i.i, 192
  %i.l = icmp eq i32 %i.k, 128                    ; 2 uses
  %i.m = and i32 %i.i, 224
  %i.n = icmp eq i32 %i.m, 192                    ; 2 uses
  %.off.i = add i8 %i.g, 15
  %switch.i = icmp ult i8 %.off.i, 4
  %i.o = or i1 %switch.i, %i.l
  %i.p = or i1 %i.j, %i.o
  %or.cond15.i = or i1 %i.n, %i.p
  br i1 %or.cond15.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %i.i, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %switch.selectcmp16.i = icmp eq i8 %i.g, -16
  br i1 %switch.selectcmp16.i, label %select.unfold, label %lpCurrentEncodedSizeBytes.exit

select.unfold:                                    ; preds = %bb.g, %bb.e, %bb.f
  %.0.i.ph = phi i64 [ 1, %bb.e ], [ 2, %bb.f ], [ 5, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.ph ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.b
  %i.u = icmp ugt ptr %i.s, %i.e
  %or.cond = or i1 %i.t, %i.u
  br i1 %or.cond, label %lpCurrentEncodedSizeBytes.exit, label %bb.h

bb.h:                                             ; preds = %select.unfold
  br i1 %i.j, label %lpEncodeBacklenBytes.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.l, label %lpCurrentEncodedSizeUnsafe.exit.thread, label %bb.j

lpCurrentEncodedSizeUnsafe.exit.thread:           ; preds = %bb.i
  %i.v = and i32 %i.i, 63
  %i.w = add nuw nsw i32 %i.v, 1
  br label %lpEncodeBacklenBytes.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.n, label %lpEncodeBacklenBytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %switch.tableidx = add nsw i8 %i.g, 15          ; 2 uses
  %i.x = icmp ult i8 %switch.tableidx, 4
  br i1 %i.x, label %switch.lookup, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = and i32 %i.i, 240
  %i.z = icmp eq i32 %i.y, 224
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = shl nuw nsw i32 %i.i, 8
  %i.ab = and i32 %i.aa, 3840
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, 2
  %i.ag = add nuw nsw i32 %i.af, %i.ae
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.n:                                             ; preds = %bb.l
  %cond = icmp eq i8 %i.g, -16
  br i1 %cond, label %bb.o, label %lpEncodeBacklenBytes.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = add i32 %i.ai, 5
  br label %lpCurrentEncodedSizeUnsafe.exit

lpCurrentEncodedSizeUnsafe.exit:                  ; preds = %bb.m, %bb.o
  %.0.i46 = phi i32 [ %i.ag, %bb.m ], [ %i.aj, %bb.o ] ; 8 uses
  %i.ak = icmp ult i32 %.0.i46, 128
  br i1 %i.ak, label %lpEncodeBacklenBytes.exit, label %bb.p

bb.p:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit
  %i.al = icmp ult i32 %.0.i46, 16383
  br i1 %i.al, label %lpEncodeBacklenBytes.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = icmp ult i32 %.0.i46, 2097151
  br i1 %i.am, label %lpEncodeBacklenBytes.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = icmp ult i32 %.0.i46, 268435455
  %..i = select i1 %i.an, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit

switch.lookup:                                    ; preds = %bb.k
  %i.ao = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.ao
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %switch.lookup, %lpCurrentEncodedSizeUnsafe.exit.thread, %bb.j, %bb.h, %bb.n, %lpCurrentEncodedSizeUnsafe.exit, %bb.p, %bb.q, %bb.r
  %.shrunk = phi i32 [ %.0.i46, %bb.q ], [ %.0.i46, %lpCurrentEncodedSizeUnsafe.exit ], [ %.0.i46, %bb.p ], [ %.0.i46, %bb.r ], [ 1, %bb.h ], [ %switch.load, %switch.lookup ], [ 2, %bb.j ], [ 0, %bb.n ], [ %i.w, %lpCurrentEncodedSizeUnsafe.exit.thread ]
  %.0.i47 = phi i64 [ 3, %bb.q ], [ 1, %lpCurrentEncodedSizeUnsafe.exit ], [ 2, %bb.p ], [ %..i, %bb.r ], [ 1, %bb.h ], [ 1, %switch.lookup ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread ]
  %i.ap = zext i32 %.shrunk to i64                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap ; 4 uses
  %i.as = icmp ult ptr %i.ar, %i.b
  %i.at = icmp ugt ptr %i.ar, %i.e
  %or.cond45 = or i1 %i.as, %i.at
  br i1 %or.cond45, label %lpCurrentEncodedSizeBytes.exit, label %bb.s

bb.s:                                             ; preds = %lpEncodeBacklenBytes.exit
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -1
  %i.av = tail call fastcc i64 @lpDecodeBacklen(ptr noundef %i.au)
  %.not44 = icmp eq i64 %i.av, %i.ap
  br i1 %.not44, label %lpCurrentEncodedSizeBytes.exit.sink.split, label %lpCurrentEncodedSizeBytes.exit

lpCurrentEncodedSizeBytes.exit.sink.split:        ; preds = %bb.s, %bb.d
  %.sink = phi ptr [ null, %bb.d ], [ %i.ar, %bb.s ]
  store ptr %.sink, ptr %1, align 8, !tbaa !19
  br label %lpCurrentEncodedSizeBytes.exit

lpCurrentEncodedSizeBytes.exit:                   ; preds = %lpCurrentEncodedSizeBytes.exit.sink.split, %bb.g, %select.unfold, %bb.s, %lpEncodeBacklenBytes.exit, %bb.b, %bb.c, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %select.unfold ], [ 0, %lpEncodeBacklenBytes.exit ], [ 1, %lpCurrentEncodedSizeBytes.exit.sink.split ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lpValidateIntegrity(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = icmp ult i64 %1, 7
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 1
  %i.d = zext i32 %i.c to i64
  %.not = icmp eq i64 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not35 = icmp eq i8 %i.g, -1
  br i1 %.not35, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %.not36 = icmp eq i32 %2, 0
  br i1 %.not36, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i16, ptr %i.h, align 1              ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !19
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.g
  %.02849.us = phi i32 [ %i.o, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.l = phi ptr [ %.pr.us, %bb.g ], [ %i.k, %bb.e ] ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not38.us = icmp eq i8 %i.m, -1
  br i1 %.not38.us, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.n = call i32 @lpValidateNext(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1)
  %.not42.us = icmp eq i32 %i.n, 0
  br i1 %.not42.us, label %.critedge46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %.02849.us, 1                    ; 2 uses
  %.pr.us = load ptr, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.not37.us = icmp eq ptr %.pr.us, null
  br i1 %.not37.us, label %.critedge, label %.split.us, !llvm.loop !47

.split:                                           ; preds = %bb.e, %bb.j
  %.02849 = phi i32 [ %i.t, %bb.j ], [ 0, %bb.e ] ; 2 uses
  %i.p = phi ptr [ %.pr, %bb.j ], [ %i.k, %bb.e ] ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %.not38 = icmp eq i8 %i.q, -1
  br i1 %.not38, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.split
  %i.r = call i32 @lpValidateNext(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1)
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %.critedge46, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 %3(ptr noundef nonnull %i.p, i32 noundef %i.j, ptr noundef %4) #21
  %.not44 = icmp eq i32 %i.s, 0
  br i1 %.not44, label %.critedge46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = add i32 %.02849, 1                       ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not37 = icmp eq ptr %.pr, null
  br i1 %.not37, label %.critedge, label %.split, !llvm.loop !47

.critedge:                                        ; preds = %.split, %bb.j, %.split.us, %bb.g
  %.us-phi = phi ptr [ %i.l, %.split.us ], [ null, %bb.g ], [ null, %bb.j ], [ %i.p, %.split ]
  %.us-phi50 = phi i32 [ %.02849.us, %.split.us ], [ %i.o, %bb.g ], [ %i.t, %bb.j ], [ %.02849, %.split ]
  %.not39 = icmp eq ptr %.us-phi, %i.f
  br i1 %.not39, label %bb.k, label %.critedge46

bb.k:                                             ; preds = %.critedge
  %.not40 = icmp eq i16 %i.i, -1
  %.not41 = icmp eq i32 %.us-phi50, %i.j
  %or.cond = select i1 %.not40, i1 true, i1 %.not41
  %spec.select = zext i1 %or.cond to i32
  br label %.critedge46

.critedge46:                                      ; preds = %bb.i, %bb.h, %bb.f, %bb.k, %.critedge
  %.2 = phi i32 [ %spec.select, %bb.k ], [ 0, %.critedge ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.l

bb.l:                                             ; preds = %.critedge46, %bb.b, %bb.c, %bb.d, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.2, %.critedge46 ], [ 1, %bb.d ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @lpCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 7 uses
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %.thread73, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.a to i32                      ; 6 uses
  %i.d = and i32 %i.c, 192
  %i.e = icmp eq i32 %i.d, 128
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.c, 63
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 240
  %i.h = icmp eq i32 %i.g, 224
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i32 %i.c, 8
  %i.j = and i32 %i.i, 3840
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.a, -16
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i32, ptr %i.p, align 1
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.r = icmp sgt i8 %i.a, -1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = zext nneg i8 %i.a to i64
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.t = and i32 %i.c, 224
  %i.u = icmp eq i32 %i.t, 192
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i32 %i.c, 8
  %i.w = and i32 %i.v, 7936
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  switch i8 %i.a, label %bb.q [
    i8 -15, label %bb.m
    i8 -14, label %bb.n
    i8 -13, label %bb.o
    i8 -12, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = zext i16 %i.ad to i64
  br label %bb.t

end_hunk_4
begin_hunk_5_@lpRandomEntries:bb.a

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %._crit_edge.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %0, align 1
  %i.n = zext i32 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8, !tbaa !19
  %i.o = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.c, i64 noundef %i.n)
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %.lr.ph.preheader.i, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.p = add i32 %.01520.i, 1                     ; 4 uses
  %i.q = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.q, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.r = icmp ult i32 %i.p, 65535
  br i1 %i.r, label %._crit_edge.thread.i, label %.preheader52

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %.015.lcssa25.i = phi i32 [ %i.p, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.s = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.s, ptr %i.g, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.a, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.i, %bb.a ], [ %.015.lcssa25.i, %._crit_edge.thread.i ] ; 2 uses
  %.not = icmp eq i32 %.016.in.i, 0
  br i1 %.not, label %bb.e, label %.preheader52, !prof !48

.preheader52:                                     ; preds = %._crit_edge.i, %lpLength.exit
  %.016.in.i101 = phi i32 [ %.016.in.i, %lpLength.exit ], [ %i.p, %._crit_edge.i ]
  %.not72 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not72, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %lpLength.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1828) #21
  tail call void @abort() #22
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader52
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.d, i64 noundef 8, ptr noundef nonnull @uintCompare) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 6 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %lpFirst.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = load i32, ptr %0, align 1
  %i.x = zext i32 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.b, align 8, !tbaa !19
  %i.y = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.b, i64 noundef %i.x)
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.g, label %lpAssertValidEntry.exit.i, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit.i:                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %lpFirst.exit

lpFirst.exit:                                     ; preds = %._crit_edge, %lpAssertValidEntry.exit.i
  %.0.i = phi ptr [ %i.t, %lpAssertValidEntry.exit.i ], [ null, %._crit_edge ]
  br i1 %.not72, label %._crit_edge71, label %.preheader

.lr.ph:                                           ; preds = %.preheader52, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader52 ] ; 3 uses
  %i.z = tail call i32 @rand() #21
  %i.aa = urem i32 %i.z, %.016.in.i101
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

.preheader:                                       ; preds = %lpFirst.exit, %lpGetValue.exit
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %lpGetValue.exit ], [ 0, %lpFirst.exit ] ; 2 uses
  %.03070 = phi ptr [ %.1.lcssa, %lpGetValue.exit ], [ %.0.i, %lpFirst.exit ] ; 2 uses
  %.03268 = phi i32 [ %.133.lcssa, %lpGetValue.exit ], [ 0, %lpFirst.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv77 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !49 ; 3 uses
  %i.ag = icmp ult i32 %.03268, %i.af
  br i1 %i.ag, label %.lr.ph65, label %lpGetValue.exit

._crit_edge71:                                    ; preds = %lpGetValue.exit, %lpFirst.exit
  tail call void @zfree(ptr noundef %i.f) #21
  ret void

.lr.ph65:                                         ; preds = %.preheader, %lpNext.exit
  %.163 = phi ptr [ %.0.i39, %lpNext.exit ], [ %.03070, %.preheader ] ; 5 uses
  %.13362 = phi i32 [ %i.eq, %lpNext.exit ], [ %.03268, %.preheader ]
  %.not.i36 = icmp eq ptr %.163, null
  br i1 %.not.i36, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %.lr.ph65
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 521) #21
  tail call void @abort() #22
  unreachable

bb.i:                                             ; preds = %.lr.ph65
  %i.ah = load i8, ptr %.163, align 1, !tbaa !13  ; 4 uses
  %i.ai = zext i8 %i.ah to i32                    ; 5 uses
  %i.aj = icmp sgt i8 %i.ah, -1
  br i1 %i.aj, label %lpSkip.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i32 %i.ai, 192
  %i.al = icmp eq i32 %i.ak, 128
  br i1 %i.al, label %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, label %bb.k

lpCurrentEncodedSizeUnsafe.exit.thread.i.i:       ; preds = %bb.j
  %i.am = and i32 %i.ai, 63
  %i.an = add nuw nsw i32 %i.am, 1
  br label %lpSkip.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ao = and i32 %i.ai, 224
  %i.ap = icmp eq i32 %i.ao, 192
  br i1 %i.ap, label %lpSkip.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %switch.tableidx = add nsw i8 %i.ah, 15         ; 2 uses
  %i.aq = icmp ult i8 %switch.tableidx, 4
  br i1 %i.aq, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = and i32 %i.ai, 240
  %i.as = icmp eq i32 %i.ar, 224
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = shl nuw nsw i32 %i.ai, 8
  %i.au = and i32 %i.at, 3840
  %i.av = getelementptr inbounds nuw i8, ptr %.163, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, 2
  %i.az = add nuw nsw i32 %i.ay, %i.ax
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.o:                                             ; preds = %bb.m
  switch i8 %i.ah, label %bb.q [
    i8 -16, label %bb.p
    i8 -1, label %lpSkip.exit.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.163, i64 1
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = add i32 %i.bb, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.q:                                             ; preds = %bb.o
  br label %lpSkip.exit.i

lpCurrentEncodedSizeUnsafe.exit.i.i:              ; preds = %bb.p, %bb.n
  %.0.i.i.i = phi i32 [ %i.az, %bb.n ], [ %i.bc, %bb.p ] ; 8 uses
  %i.bd = icmp ult i32 %.0.i.i.i, 128
  br i1 %i.bd, label %lpSkip.exit.i, label %bb.r

bb.r:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i.i
  %i.be = icmp ult i32 %.0.i.i.i, 16383
  br i1 %i.be, label %lpSkip.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = icmp ult i32 %.0.i.i.i, 2097151
  br i1 %i.bf, label %lpSkip.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = icmp ult i32 %.0.i.i.i, 268435455
  %..i.i.i = select i1 %i.bg, i64 4, i64 5
  br label %lpSkip.exit.i

switch.lookup:                                    ; preds = %bb.l
  %i.bh = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.bh
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit.i

lpSkip.exit.i:                                    ; preds = %switch.lookup, %bb.t, %bb.s, %bb.r, %lpCurrentEncodedSizeUnsafe.exit.i.i, %bb.q, %bb.o, %bb.k, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, %bb.i
  %.shrunk.i.i = phi i32 [ %.0.i.i.i, %bb.s ], [ %.0.i.i.i, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ %.0.i.i.i, %bb.r ], [ %.0.i.i.i, %bb.t ], [ 1, %bb.o ], [ %switch.load, %switch.lookup ], [ 1, %bb.i ], [ 0, %bb.q ], [ %i.an, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 2, %bb.k ]
  %.0.i5.i.i = phi i64 [ 3, %bb.s ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ 2, %bb.r ], [ %..i.i.i, %bb.t ], [ 1, %bb.o ], [ 1, %switch.lookup ], [ 1, %bb.i ], [ 1, %bb.q ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 1, %bb.k ]
  %i.bi = zext i32 %.shrunk.i.i to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.163, i64 %.0.i5.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 8 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13  ; 7 uses
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %lpNext.exit, label %bb.u

bb.u:                                             ; preds = %lpSkip.exit.i
  %i.bn = icmp ult ptr %i.bk, %i.t
  br i1 %i.bn, label %lpDecodeBacklen.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = load i32, ptr %0, align 1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 3 uses
  %i.bs = icmp ugt ptr %i.bk, %i.br
  br i1 %i.bs, label %lpDecodeBacklen.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = zext i8 %i.bl to i32                    ; 6 uses
  %i.bu = icmp sgt i8 %i.bl, -1                   ; 2 uses
  %i.bv = and i32 %i.bt, 192
  %i.bw = icmp eq i32 %i.bv, 128                  ; 2 uses
  %i.bx = and i32 %i.bt, 224
  %i.by = icmp eq i32 %i.bx, 192                  ; 2 uses
  %.off.i.i = add i8 %i.bl, 15
  %switch.i.i = icmp ult i8 %.off.i.i, 4
  %i.bz = or i1 %switch.i.i, %i.bw
  %i.ca = or i1 %i.bu, %i.bz
  %or.cond15.i.i = or i1 %i.by, %i.ca
  br i1 %or.cond15.i.i, label %select.unfold.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = and i32 %i.bt, 240
  %i.cc = icmp eq i32 %i.cb, 224
  br i1 %i.cc, label %select.unfold.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %switch.selectcmp16.i.i = icmp eq i8 %i.bl, -16
  br i1 %switch.selectcmp16.i.i, label %select.unfold.i, label %lpDecodeBacklen.exit.thread

select.unfold.i:                                  ; preds = %bb.y, %bb.x, %bb.w
  %.0.i.ph.i = phi i64 [ 1, %bb.w ], [ 2, %bb.x ], [ 5, %bb.y ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.i.ph.i ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.t
  %i.cf = icmp ugt ptr %i.cd, %i.br
  %or.cond.i = or i1 %i.ce, %i.cf
  br i1 %or.cond.i, label %lpDecodeBacklen.exit.thread, label %bb.z

bb.z:                                             ; preds = %select.unfold.i
  br i1 %i.bu, label %lpEncodeBacklenBytes.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bw, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.ab

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.aa
  %i.cg = and i32 %i.bt, 63
  %i.ch = add nuw nsw i32 %i.cg, 1
  br label %lpEncodeBacklenBytes.exit.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.by, label %lpEncodeBacklenBytes.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %switch.tableidx102 = add nsw i8 %i.bl, 15      ; 2 uses
  %i.ci = icmp ult i8 %switch.tableidx102, 4
  br i1 %i.ci, label %switch.lookup103, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = and i32 %i.bt, 240
  %i.ck = icmp eq i32 %i.cj, 224
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cl = shl nuw nsw i32 %i.bt, 8
  %i.cm = and i32 %i.cl, 3840
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = zext i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cm, 2
  %i.cr = add nuw nsw i32 %i.cq, %i.cp
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.af:                                            ; preds = %bb.ad
  %cond.i = icmp eq i8 %i.bl, -16
  br i1 %cond.i, label %bb.ag, label %lpEncodeBacklenBytes.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = add i32 %i.ct, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.ag, %bb.ae
  %.0.i46.i = phi i32 [ %i.cr, %bb.ae ], [ %i.cu, %bb.ag ] ; 8 uses
  %i.cv = icmp ult i32 %.0.i46.i, 128
  br i1 %i.cv, label %lpEncodeBacklenBytes.exit.i, label %bb.ah

bb.ah:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.cw = icmp ult i32 %.0.i46.i, 16383
  br i1 %i.cw, label %lpEncodeBacklenBytes.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = icmp ult i32 %.0.i46.i, 2097151
  br i1 %i.cx, label %lpEncodeBacklenBytes.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = icmp ult i32 %.0.i46.i, 268435455
  %..i.i = select i1 %i.cy, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit.i

switch.lookup103:                                 ; preds = %bb.ac
  %i.cz = zext nneg i8 %switch.tableidx102 to i64
  %switch.gep104 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.cz
  %switch.load105 = load i32, ptr %switch.gep104, align 4
  br label %lpEncodeBacklenBytes.exit.i

lpEncodeBacklenBytes.exit.i:                      ; preds = %switch.lookup103, %bb.aj, %bb.ai, %bb.ah, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.af, %bb.ab, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.z
  %.shrunk.i = phi i32 [ %.0.i46.i, %bb.ai ], [ %.0.i46.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i46.i, %bb.ah ], [ %.0.i46.i, %bb.aj ], [ 1, %bb.z ], [ %switch.load105, %switch.lookup103 ], [ 2, %bb.ab ], [ 0, %bb.af ], [ %i.ch, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %.0.i47.i = phi i64 [ 3, %bb.ai ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.ah ], [ %..i.i, %bb.aj ], [ 1, %bb.z ], [ 1, %switch.lookup103 ], [ 1, %bb.ab ], [ 1, %bb.af ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %i.da = zext i32 %.shrunk.i to i64              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.i47.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da ; 7 uses
  %i.dd = icmp ult ptr %i.dc, %i.t
  %i.de = icmp ugt ptr %i.dc, %i.br
  %or.cond45.i = or i1 %i.dd, %i.de
  br i1 %or.cond45.i, label %lpDecodeBacklen.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %lpEncodeBacklenBytes.exit.i
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13  ; 3 uses
  %.not.i42 = icmp sgt i8 %i.dg, -1
  br i1 %.not.i42, label %bb.al, label %bb.am, !prof !22

bb.al:                                            ; preds = %bb.ak
  %i.dh = zext nneg i8 %i.dg to i64
  br label %lpDecodeBacklen.exit

bb.am:                                            ; preds = %bb.ak
  %i.di = and i8 %i.dg, 127
  %i.dj = zext nneg i8 %i.di to i64               ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dc, i64 -2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13  ; 3 uses
  %.not21.i = icmp sgt i8 %i.dl, -1
  br i1 %.not21.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 7
  %i.do = or disjoint i64 %i.dn, %i.dj
  br label %lpDecodeBacklen.exit

bb.ao:                                            ; preds = %bb.am
  %i.dp = and i8 %i.dl, 127
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 7
  %i.ds = or disjoint i64 %i.dr, %i.dj            ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dc, i64 -3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13  ; 3 uses
  %.not22.i = icmp sgt i8 %i.du, -1
  br i1 %.not22.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 14
  %i.dx = or disjoint i64 %i.dw, %i.ds
  br label %lpDecodeBacklen.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dy = and i8 %i.du, 127
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 14
  %i.eb = or disjoint i64 %i.ea, %i.ds            ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13  ; 3 uses
  %.not23.i = icmp sgt i8 %i.ed, -1
  br i1 %.not23.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 21
  %i.eg = or disjoint i64 %i.ef, %i.eb
  br label %lpDecodeBacklen.exit

bb.as:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds i8, ptr %i.dc, i64 -5
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13  ; 2 uses
  %.not24.i = icmp sgt i8 %i.ei, -1
  br i1 %.not24.i, label %bb.at, label %lpDecodeBacklen.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ej = and i8 %i.ed, 127
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 21
  %i.em = zext nneg i8 %i.ei to i64
  %i.en = shl nuw nsw i64 %i.em, 28
  %i.eo = or disjoint i64 %i.en, %i.el
  %i.ep = or disjoint i64 %i.eo, %i.eb
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at
  %.0.i43 = phi i64 [ %i.dh, %bb.al ], [ %i.do, %bb.an ], [ %i.ep, %bb.at ], [ %i.eg, %bb.ar ], [ %i.dx, %bb.ap ]
  %.not44.i = icmp eq i64 %.0.i43, %i.da
  br i1 %.not44.i, label %lpNext.exit, label %lpDecodeBacklen.exit.thread

lpDecodeBacklen.exit.thread:                      ; preds = %bb.as, %bb.y, %bb.u, %bb.v, %lpDecodeBacklen.exit, %select.unfold.i, %lpEncodeBacklenBytes.exit.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpNext.exit:                                      ; preds = %lpDecodeBacklen.exit, %lpSkip.exit.i
  %.0.i39 = phi ptr [ null, %lpSkip.exit.i ], [ %i.bk, %lpDecodeBacklen.exit ] ; 2 uses
  %i.eq = add nuw i32 %.13362, 1                  ; 2 uses
  %exitcond76.not = icmp eq i32 %i.eq, %i.af
  br i1 %exitcond76.not, label %lpGetValue.exit, label %.lr.ph65, !llvm.loop !53

lpGetValue.exit:                                  ; preds = %lpNext.exit, %.preheader
  %.133.lcssa = phi i32 [ %.03268, %.preheader ], [ %i.af, %lpNext.exit ]
  %.1.lcssa = phi ptr [ %.03070, %.preheader ], [ %.0.i39, %lpNext.exit ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.et = call ptr @lpGet(ptr noundef readonly %.1.lcssa, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  %.not.i40 = icmp eq ptr %i.et, null             ; 2 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  %spec.select = select i1 %.not.i40, i32 0, i32 %i.ev
  %spec.select51 = select i1 %.not.i40, i64 %i.eu, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ew = sext i32 %i.es to i64
  %i.ex = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ew ; 3 uses
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %spec.select, ptr %i.ey, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %spec.select51, ptr %i.ez, align 8, !tbaa !37
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %i.d
  br i1 %exitcond81.not, label %._crit_edge71, label %.preheader, !llvm.loop !54
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @uintCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = load i32, ptr %1, align 4, !tbaa !9
  %i.c = sub i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @lpRandomPairs(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp sgt i32 %4, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1867) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @zmalloc_usable(i64 noundef %i.d, ptr noundef null) #21 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1              ; 2 uses
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp eq i16 %i.g, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %0, align 1
  %i.m = zext i32 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !19
  %i.n = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.m)
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %.lr.ph.preheader.i, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.o = add i32 %.01520.i, 1                     ; 4 uses
  %i.p = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.p, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = icmp ult i32 %i.o, 65535
  br i1 %i.q, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.015.lcssa25.i = phi i32 [ %i.o, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.r = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.r, ptr %i.f, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.c, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.h, %bb.c ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.o, %._crit_edge.i ] ; 2 uses
end_hunk_5
begin_hunk_6_@lpRandomPairs:bb.a
  %i.dn = load i16, ptr %i.dm, align 1
  %i.do = zext i16 %i.dn to i64
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.dq = load i16, ptr %i.dp, align 1
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = zext i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 16
  %i.dw = or disjoint i64 %i.dv, %i.dr
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.dy = load i32, ptr %i.dx, align 1
  %i.dz = zext i32 %i.dy to i64
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.eb = load i64, ptr %i.ea, align 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.ec = zext i8 %i.ci to i64
  %i.ed = or disjoint i64 %i.ec, 12345678900000000
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag
  %.061.i.i67 = phi i64 [ %i.dc, %bb.ag ], [ %i.dl, %bb.ai ], [ %i.do, %bb.ak ], [ %i.dw, %bb.al ], [ %i.dz, %bb.am ], [ %i.eb, %bb.an ], [ %i.ed, %bb.ao ] ; 3 uses
  %.060.i.i68 = phi i64 [ -1, %bb.ag ], [ 4096, %bb.ai ], [ 32768, %bb.ak ], [ 8388608, %bb.al ], [ 2147483648, %bb.am ], [ -9223372036854775808, %bb.an ], [ -1, %bb.ao ]
  %.059.neg.i.i69 = phi i64 [ 0, %bb.ag ], [ -8191, %bb.ai ], [ -65535, %bb.ak ], [ -16777215, %bb.al ], [ -4294967295, %bb.am ], [ 1, %bb.an ], [ 0, %bb.ao ]
  %.not66.i.i70 = icmp ult i64 %.061.i.i67, %.060.i.i68
  %.neg.i.i71 = add i64 %.061.i.i67, -1
  %i.ee = add i64 %.neg.i.i71, %.059.neg.i.i69
  %.062.i.i72 = select i1 %.not66.i.i70, i64 %.061.i.i67, i64 %i.ee
  br label %lpGetValue.exit63

lpGetValue.exit63:                                ; preds = %bb.ae, %bb.ac, %bb.aa, %bb.ap
  %.0.i.i73103 = phi ptr [ null, %bb.ap ], [ %i.da, %bb.ae ], [ %i.cw, %bb.ac ], [ %i.cn, %bb.aa ]
  %.188 = phi i32 [ %.087123, %bb.ap ], [ %i.cz, %bb.ae ], [ %i.cv, %bb.ac ], [ %i.cm, %bb.aa ] ; 2 uses
  %.184 = phi i64 [ %.062.i.i72, %bb.ap ], [ %.083125, %bb.ae ], [ %.083125, %bb.ac ], [ %.083125, %bb.aa ] ; 2 uses
  %i.ef = icmp ult i32 %.050128, %1
  br i1 %i.ef, label %.lr.ph113, label %.lr.ph120.preheader

.lr.ph113:                                        ; preds = %lpGetValue.exit63
  %i.eg = zext i32 %.050128 to i64                ; 2 uses
  br i1 %.not60, label %.lr.ph113.split.us, label %.lr.ph113.split

.lr.ph113.split.us:                               ; preds = %.lr.ph113, %bb.aq
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.aq ], [ %i.eg, %.lr.ph113 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv142 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !55
  %i.ej = icmp eq i32 %.052126, %i.ei
  br i1 %i.ej, label %bb.aq, label %.lr.ph120.preheader.loopexit.split.loop.exit

bb.aq:                                            ; preds = %.lr.ph113.split.us
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !57
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [24 x i8], ptr %2, i64 %i.em ; 3 uses
  store ptr %.0.i.i97, ptr %i.en, align 8, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 %.190, ptr %i.eo, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 %.186, ptr %i.ep, align 8, !tbaa !37
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %i.c
  br i1 %exitcond145.not, label %.lr.ph120.preheader, label %.lr.ph113.split.us, !llvm.loop !60

.lr.ph113.split:                                  ; preds = %.lr.ph113, %bb.ar
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.ar ], [ %i.eg, %.lr.ph113 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv138 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !55
  %i.es = icmp eq i32 %.052126, %i.er
  br i1 %i.es, label %bb.ar, label %.lr.ph120.preheader.loopexit170.split.loop.exit

bb.ar:                                            ; preds = %.lr.ph113.split
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !57
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ev ; 3 uses
  store ptr %.0.i.i97, ptr %i.ew, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 %.190, ptr %i.ex, align 8, !tbaa !38
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 %.186, ptr %i.ey, align 8, !tbaa !37
  %i.ez = getelementptr inbounds [24 x i8], ptr %3, i64 %i.ev ; 3 uses
  store ptr %.0.i.i73103, ptr %i.ez, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %.188, ptr %i.fa, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i64 %.184, ptr %i.fb, align 8, !tbaa !37
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, %i.c
  br i1 %exitcond141.not, label %.lr.ph120.preheader, label %.lr.ph113.split, !llvm.loop !60

.lr.ph120.preheader.loopexit.split.loop.exit:     ; preds = %.lr.ph113.split.us
  %i.fc = trunc nuw i64 %indvars.iv142 to i32
  br label %.lr.ph120.preheader

.lr.ph120.preheader.loopexit170.split.loop.exit:  ; preds = %.lr.ph113.split
  %i.fd = trunc nuw i64 %indvars.iv138 to i32
  br label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %bb.ar, %bb.aq, %.lr.ph120.preheader.loopexit170.split.loop.exit, %.lr.ph120.preheader.loopexit.split.loop.exit, %lpGetValue.exit63
  %.151.lcssa = phi i32 [ %.050128, %lpGetValue.exit63 ], [ %1, %bb.aq ], [ %i.fc, %.lr.ph120.preheader.loopexit.split.loop.exit ], [ %i.fd, %.lr.ph120.preheader.loopexit170.split.loop.exit ], [ %1, %bb.ar ] ; 2 uses
  %i.fe = add i32 %.052126, %4
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %lpNext.exit
  %.0119 = phi i32 [ %i.jo, %lpNext.exit ], [ 0, %.lr.ph120.preheader ] ; 2 uses
  %.1117 = phi ptr [ %.0.i, %lpNext.exit ], [ %i.ch, %.lr.ph120.preheader ] ; 5 uses
  %.not.i64 = icmp eq ptr %.1117, null
  br i1 %.not.i64, label %bb.as, label %bb.at, !prof !18

bb.as:                                            ; preds = %.lr.ph120
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 521) #21
  tail call void @abort() #22
  unreachable

bb.at:                                            ; preds = %.lr.ph120
  %i.ff = load i8, ptr %.1117, align 1, !tbaa !13 ; 4 uses
  %i.fg = zext i8 %i.ff to i32                    ; 5 uses
  %i.fh = icmp sgt i8 %i.ff, -1
  br i1 %i.fh, label %lpSkip.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = and i32 %i.fg, 192
  %i.fj = icmp eq i32 %i.fi, 128
  br i1 %i.fj, label %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, label %bb.av

lpCurrentEncodedSizeUnsafe.exit.thread.i.i:       ; preds = %bb.au
  %i.fk = and i32 %i.fg, 63
  %i.fl = add nuw nsw i32 %i.fk, 1
  br label %lpSkip.exit.i

bb.av:                                            ; preds = %bb.au
  %i.fm = and i32 %i.fg, 224
  %i.fn = icmp eq i32 %i.fm, 192
  br i1 %i.fn, label %lpSkip.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %switch.tableidx = add nsw i8 %i.ff, 15         ; 2 uses
  %i.fo = icmp ult i8 %switch.tableidx, 4
  br i1 %i.fo, label %switch.lookup, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fp = and i32 %i.fg, 240
  %i.fq = icmp eq i32 %i.fp, 224
  br i1 %i.fq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fr = shl nuw nsw i32 %i.fg, 8
  %i.fs = and i32 %i.fr, 3840
  %i.ft = getelementptr inbounds nuw i8, ptr %.1117, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !13
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.fs, 2
  %i.fx = add nuw nsw i32 %i.fw, %i.fv
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.az:                                            ; preds = %bb.ax
  switch i8 %i.ff, label %bb.bb [
    i8 -16, label %bb.ba
    i8 -1, label %lpSkip.exit.i
  ]

bb.ba:                                            ; preds = %bb.az
  %i.fy = getelementptr inbounds nuw i8, ptr %.1117, i64 1
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = add i32 %i.fz, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.bb:                                            ; preds = %bb.az
  br label %lpSkip.exit.i

lpCurrentEncodedSizeUnsafe.exit.i.i:              ; preds = %bb.ba, %bb.ay
  %.0.i.i.i = phi i32 [ %i.fx, %bb.ay ], [ %i.ga, %bb.ba ] ; 8 uses
  %i.gb = icmp ult i32 %.0.i.i.i, 128
  br i1 %i.gb, label %lpSkip.exit.i, label %bb.bc

bb.bc:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i.i
  %i.gc = icmp ult i32 %.0.i.i.i, 16383
  br i1 %i.gc, label %lpSkip.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = icmp ult i32 %.0.i.i.i, 2097151
  br i1 %i.gd, label %lpSkip.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ge = icmp ult i32 %.0.i.i.i, 268435455
  %..i.i.i = select i1 %i.ge, i64 4, i64 5
  br label %lpSkip.exit.i

switch.lookup:                                    ; preds = %bb.aw
  %i.gf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.gf
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit.i

lpSkip.exit.i:                                    ; preds = %switch.lookup, %bb.be, %bb.bd, %bb.bc, %lpCurrentEncodedSizeUnsafe.exit.i.i, %bb.bb, %bb.az, %bb.av, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, %bb.at
  %.shrunk.i.i = phi i32 [ %.0.i.i.i, %bb.bd ], [ %.0.i.i.i, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ %.0.i.i.i, %bb.bc ], [ %.0.i.i.i, %bb.be ], [ 1, %bb.az ], [ %switch.load, %switch.lookup ], [ 1, %bb.at ], [ 0, %bb.bb ], [ %i.fl, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 2, %bb.av ]
  %.0.i5.i.i = phi i64 [ 3, %bb.bd ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ 2, %bb.bc ], [ %..i.i.i, %bb.be ], [ 1, %bb.az ], [ 1, %switch.lookup ], [ 1, %bb.at ], [ 1, %bb.bb ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 1, %bb.av ]
  %i.gg = zext i32 %.shrunk.i.i to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %.1117, i64 %.0.i5.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg ; 8 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !13  ; 7 uses
  %i.gk = icmp eq i8 %i.gj, -1
  br i1 %i.gk, label %lpNext.exit, label %bb.bf

bb.bf:                                            ; preds = %lpSkip.exit.i
  %i.gl = icmp ult ptr %i.gi, %i.z
  br i1 %i.gl, label %lpDecodeBacklen.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gm = load i32, ptr %0, align 1
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -1 ; 3 uses
  %i.gq = icmp ugt ptr %i.gi, %i.gp
  br i1 %i.gq, label %lpDecodeBacklen.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gr = zext i8 %i.gj to i32                    ; 6 uses
  %i.gs = icmp sgt i8 %i.gj, -1                   ; 2 uses
  %i.gt = and i32 %i.gr, 192
  %i.gu = icmp eq i32 %i.gt, 128                  ; 2 uses
  %i.gv = and i32 %i.gr, 224
  %i.gw = icmp eq i32 %i.gv, 192                  ; 2 uses
  %.off.i.i = add i8 %i.gj, 15
  %switch.i.i = icmp ult i8 %.off.i.i, 4
  %i.gx = or i1 %switch.i.i, %i.gu
  %i.gy = or i1 %i.gs, %i.gx
  %or.cond15.i.i = or i1 %i.gw, %i.gy
  br i1 %or.cond15.i.i, label %select.unfold.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gz = and i32 %i.gr, 240
  %i.ha = icmp eq i32 %i.gz, 224
  br i1 %i.ha, label %select.unfold.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %switch.selectcmp16.i.i = icmp eq i8 %i.gj, -16
  br i1 %switch.selectcmp16.i.i, label %select.unfold.i, label %lpDecodeBacklen.exit.thread

select.unfold.i:                                  ; preds = %bb.bj, %bb.bi, %bb.bh
  %.0.i.ph.i = phi i64 [ 1, %bb.bh ], [ 2, %bb.bi ], [ 5, %bb.bj ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.0.i.ph.i ; 2 uses
  %i.hc = icmp ult ptr %i.hb, %i.z
  %i.hd = icmp ugt ptr %i.hb, %i.gp
  %or.cond.i = or i1 %i.hc, %i.hd
  br i1 %or.cond.i, label %lpDecodeBacklen.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %select.unfold.i
  br i1 %i.gs, label %lpEncodeBacklenBytes.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.gu, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.bm

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.bl
  %i.he = and i32 %i.gr, 63
  %i.hf = add nuw nsw i32 %i.he, 1
  br label %lpEncodeBacklenBytes.exit.i

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.gw, label %lpEncodeBacklenBytes.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %switch.tableidx179 = add nsw i8 %i.gj, 15      ; 2 uses
  %i.hg = icmp ult i8 %switch.tableidx179, 4
  br i1 %i.hg, label %switch.lookup180, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hh = and i32 %i.gr, 240
  %i.hi = icmp eq i32 %i.hh, 224
  br i1 %i.hi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hj = shl nuw nsw i32 %i.gr, 8
  %i.hk = and i32 %i.hj, 3840
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !13
  %i.hn = zext i8 %i.hm to i32
  %i.ho = or disjoint i32 %i.hk, 2
  %i.hp = add nuw nsw i32 %i.ho, %i.hn
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.bq:                                            ; preds = %bb.bo
  %cond.i = icmp eq i8 %i.gj, -16
  br i1 %cond.i, label %bb.br, label %lpEncodeBacklenBytes.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.hr = load i32, ptr %i.hq, align 1
  %i.hs = add i32 %i.hr, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.br, %bb.bp
  %.0.i46.i = phi i32 [ %i.hp, %bb.bp ], [ %i.hs, %bb.br ] ; 8 uses
  %i.ht = icmp ult i32 %.0.i46.i, 128
  br i1 %i.ht, label %lpEncodeBacklenBytes.exit.i, label %bb.bs

bb.bs:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.hu = icmp ult i32 %.0.i46.i, 16383
  br i1 %i.hu, label %lpEncodeBacklenBytes.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hv = icmp ult i32 %.0.i46.i, 2097151
  br i1 %i.hv, label %lpEncodeBacklenBytes.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hw = icmp ult i32 %.0.i46.i, 268435455
  %..i.i = select i1 %i.hw, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit.i

switch.lookup180:                                 ; preds = %bb.bn
  %i.hx = zext nneg i8 %switch.tableidx179 to i64
  %switch.gep181 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.hx
  %switch.load182 = load i32, ptr %switch.gep181, align 4
  br label %lpEncodeBacklenBytes.exit.i

lpEncodeBacklenBytes.exit.i:                      ; preds = %switch.lookup180, %bb.bu, %bb.bt, %bb.bs, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.bq, %bb.bm, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.bk
  %.shrunk.i = phi i32 [ %.0.i46.i, %bb.bt ], [ %.0.i46.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i46.i, %bb.bs ], [ %.0.i46.i, %bb.bu ], [ 1, %bb.bk ], [ %switch.load182, %switch.lookup180 ], [ 2, %bb.bm ], [ 0, %bb.bq ], [ %i.hf, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %.0.i47.i = phi i64 [ 3, %bb.bt ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.bs ], [ %..i.i, %bb.bu ], [ 1, %bb.bk ], [ 1, %switch.lookup180 ], [ 1, %bb.bm ], [ 1, %bb.bq ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %i.hy = zext i32 %.shrunk.i to i64              ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.0.i47.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy ; 7 uses
  %i.ib = icmp ult ptr %i.ia, %i.z
  %i.ic = icmp ugt ptr %i.ia, %i.gp
  %or.cond45.i = or i1 %i.ib, %i.ic
  br i1 %or.cond45.i, label %lpDecodeBacklen.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %lpEncodeBacklenBytes.exit.i
  %i.id = getelementptr inbounds i8, ptr %i.ia, i64 -1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !13  ; 3 uses
  %.not.i76 = icmp sgt i8 %i.ie, -1
  br i1 %.not.i76, label %bb.bw, label %bb.bx, !prof !22

bb.bw:                                            ; preds = %bb.bv
  %i.if = zext nneg i8 %i.ie to i64
  br label %lpDecodeBacklen.exit

bb.bx:                                            ; preds = %bb.bv
  %i.ig = and i8 %i.ie, 127
  %i.ih = zext nneg i8 %i.ig to i64               ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ia, i64 -2
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !13  ; 3 uses
  %.not21.i = icmp sgt i8 %i.ij, -1
  br i1 %.not21.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = shl nuw nsw i64 %i.ik, 7
  %i.im = or disjoint i64 %i.il, %i.ih
  br label %lpDecodeBacklen.exit

bb.bz:                                            ; preds = %bb.bx
  %i.in = and i8 %i.ij, 127
  %i.io = zext nneg i8 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 7
  %i.iq = or disjoint i64 %i.ip, %i.ih            ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.ia, i64 -3
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !13  ; 3 uses
  %.not22.i = icmp sgt i8 %i.is, -1
  br i1 %.not22.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.it = zext nneg i8 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 14
  %i.iv = or disjoint i64 %i.iu, %i.iq
  br label %lpDecodeBacklen.exit

bb.cb:                                            ; preds = %bb.bz
  %i.iw = and i8 %i.is, 127
  %i.ix = zext nneg i8 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 14
  %i.iz = or disjoint i64 %i.iy, %i.iq            ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.ia, i64 -4
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !13  ; 3 uses
  %.not23.i = icmp sgt i8 %i.jb, -1
  br i1 %.not23.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jc = zext nneg i8 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 21
  %i.je = or disjoint i64 %i.jd, %i.iz
  br label %lpDecodeBacklen.exit

bb.cd:                                            ; preds = %bb.cb
  %i.jf = getelementptr inbounds i8, ptr %i.ia, i64 -5
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !13  ; 2 uses
  %.not24.i = icmp sgt i8 %i.jg, -1
  br i1 %.not24.i, label %bb.ce, label %lpDecodeBacklen.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.jh = and i8 %i.jb, 127
  %i.ji = zext nneg i8 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 21
  %i.jk = zext nneg i8 %i.jg to i64
  %i.jl = shl nuw nsw i64 %i.jk, 28
  %i.jm = or disjoint i64 %i.jl, %i.jj
  %i.jn = or disjoint i64 %i.jm, %i.iz
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ce
  %.0.i77 = phi i64 [ %i.if, %bb.bw ], [ %i.im, %bb.by ], [ %i.jn, %bb.ce ], [ %i.je, %bb.cc ], [ %i.iv, %bb.ca ]
  %.not44.i = icmp eq i64 %.0.i77, %i.hy
  br i1 %.not44.i, label %lpNext.exit, label %lpDecodeBacklen.exit.thread

lpDecodeBacklen.exit.thread:                      ; preds = %bb.cd, %bb.bj, %bb.bf, %bb.bg, %lpDecodeBacklen.exit, %select.unfold.i, %lpEncodeBacklenBytes.exit.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpNext.exit:                                      ; preds = %lpDecodeBacklen.exit, %lpSkip.exit.i
  %.0.i = phi ptr [ null, %lpSkip.exit.i ], [ %i.gi, %lpDecodeBacklen.exit ] ; 3 uses
  %i.jo = add nuw nsw i32 %.0119, 1
  %exitcond146.not = icmp eq i32 %.0119, %i.aa
  br i1 %exitcond146.not, label %.loopexit, label %.lr.ph120, !llvm.loop !61

._crit_edge133:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @zfree(ptr noundef nonnull %i.e) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lpRandomPairsUnique(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = icmp sgt i32 %4, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1927) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 1              ; 2 uses
  %i.g = zext i16 %i.f to i32
  %.not.i = icmp eq i16 %i.f, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %0, align 1
  %i.l = zext i32 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8, !tbaa !19
  %i.m = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.b, i64 noundef %i.l)
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %.lr.ph.preheader.i, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.n, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.n = add i32 %.01520.i, 1                     ; 4 uses
  %i.o = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.o, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.p = icmp ult i32 %i.n, 65535
  br i1 %i.p, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.015.lcssa25.i = phi i32 [ %i.n, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.q = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.q, ptr %i.e, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.c, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.g, %bb.c ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i ]
  %i.r = udiv i32 %.016.in.i, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.r) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %lpLength.exit
  %i.v = load i32, ptr %0, align 1
  %i.w = zext i32 %i.v to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8, !tbaa !19
  %i.x = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.w)
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.h, label %lpFirst.exit, !prof !18

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpFirst.exit:                                     ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not96 = icmp eq i32 %spec.select, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %lpFirst.exit
  %.not40 = icmp eq ptr %3, null
  %i.y = zext nneg i32 %spec.select to i64
  br label %bb.i

end_hunk_6
