inline.NumInlined: 60
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zlentry = type { i32, i32, i32, i32, i32, i8, ptr }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ziplist.c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"len < UINT32_MAX\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"zipEntrySafe(zl, curlen, p, &cur, 0)\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"cur.prevrawlen == 0 || cur.prevrawlen + delta == prevlen\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"p >= first.p\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"p >= first.p && p<zl+zlbytes-1\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"zipEntrySafe(zl, zlbytes, p, &tail, 1)\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"set_tail <= zlbytes - ZIPLIST_END_SIZE\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"zipEntrySafe(zl, newlen, p+reqlen, &tail, 1)\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"zlbytes < UINT32_MAX\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"p + prevlensize < zl + zlbytes - ZIPLIST_END_SIZE\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"p >= zl + ZIPLIST_HEADER_SIZE && p < zl + zlbytes - ZIPLIST_END_SIZE\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"prevlen > 0\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"zipEntrySafe(zl, zlbytes, p, &e, 1)\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"{total bytes %u} {num entries %u}\0A{tail offset %u}\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"zipEntrySafe(zl, zlbytes, p, &entry, 1)\00", align 1
@.str.18 = private unnamed_addr constant [131 x i8] c"{\0A\09addr 0x%08lx,\0A\09index %2d,\0A\09offset %5lu,\0A\09hdr+entry len: %5u,\0A\09hdr len%2u,\0A\09prevrawlen: %5u,\0A\09prevrawlensize: %2u,\0A\09payload %5u\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"\09bytes: \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%02x|\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\09[str]\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"\09[int]%lld\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"total_count\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"ret != 0\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"total_size\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"ziplistGet(p, &value, &vlen, &vlval)\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"ziplistGet(p, &key, &klen, &klval)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"e->lensize != 0\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"zipEntrySafe(zl, zlbytes, p, &e, 0)\00", align 1
@str = private unnamed_addr constant [7 x i8] c"{end}\0A\00", align 1
@str.1 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@switch.table.__ziplistInsert = private unnamed_addr constant [32 x i8] [i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ziplistSafeToAdd(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !9
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967296) i64 @ziplistBlobLen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = zext i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 1, 6) i32 @zipStoreEntryEncoding(ptr nofree noundef writeonly captures(address_is_null) %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp ugt i8 %1, -65
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 64
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not30 = icmp eq ptr %0, null
  br i1 %.not30, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = trunc nuw nsw i32 %2 to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !13
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.d = icmp ult i32 %2, 16384
  %.not29 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %i.d, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not29, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = lshr i32 %2, 8
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, 64
  store i8 %i.g, ptr %i.a, align 1, !tbaa !13
  %i.h = trunc i32 %2 to i8
  %.1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.h, ptr %.1..1..1..1..sroa_idx, align 1, !tbaa !13
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  br i1 %.not29, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 -128, ptr %i.a, align 1, !tbaa !13
  %i.i = lshr i32 %2, 24
  %i.j = trunc nuw i32 %i.i to i8
  %.1..1..1..1..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %.1..1..1..1..sroa_idx35, align 1, !tbaa !13
  %i.k = lshr i32 %2, 16
  %i.l = trunc i32 %i.k to i8
  %.2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.l, ptr %.2..2..2..2..sroa_idx, align 1, !tbaa !13
  %i.m = lshr i32 %2, 8
  %i.n = trunc i32 %i.m to i8
  %.3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.n, ptr %.3..3..3..3..sroa_idx, align 1, !tbaa !13
  %i.o = trunc i32 %2 to i8
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.o, ptr %.4..4..4..4..sroa_idx, align 1, !tbaa !13
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %1, ptr %i.a, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.i, %bb.g, %bb.k
  %.0 = phi i8 [ 1, %bb.d ], [ 2, %bb.g ], [ 5, %bb.i ], [ 1, %bb.k ] ; 2 uses
  %i.p = zext nneg i8 %.0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.p, i1 false)
  %i.q = zext nneg i8 %.0 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.c, %bb.l
  %.025 = phi i32 [ %i.q, %bb.l ], [ 5, %bb.h ], [ 1, %bb.c ], [ 2, %bb.f ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @zipStorePrevEntryLengthLarge(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 1, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 1, 6) i32 @zipStorePrevEntryLength(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i32 %1, 254                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = select i1 %i.b, i32 1, i32 5
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %zipStorePrevEntryLengthLarge.exit

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nuw i32 %1 to i8
  store i8 %i.d, ptr %0, align 1, !tbaa !13
  br label %bb.e

zipStorePrevEntryLengthLarge.exit:                ; preds = %bb.c
  store i8 -2, ptr %0, align 1, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.e, align 1
  br label %bb.e

bb.e:                                             ; preds = %zipStorePrevEntryLengthLarge.exit, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.d ], [ 5, %zipStorePrevEntryLengthLarge.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -4, 5) i32 @zipPrevLenByteDiff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = icmp ult i8 %i.a, -2
  %. = select i1 %i.b, i32 -1, i32 -5
  %i.c = icmp ult i32 %1, 254
  %i.d = select i1 %i.c, i32 1, i32 5
  %i.e = add nsw i32 %., %i.d
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zipTryEncoding(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = add i32 %1, -32
  %or.cond = icmp ult i32 %i.b, -31
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = call i32 @string2ll(ptr noundef %0, i64 noundef %i.c, ptr noundef nonnull %i.a) #18
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !14   ; 7 uses
  %or.cond3 = icmp ult i64 %i.e, 13
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = add nuw nsw i8 %i.f, -15
end_hunk_0
begin_hunk_1_@__ziplistCascadeUpdate:bb.a
  %i.ce = getelementptr inbounds i8, ptr %.1154.us, i64 %i.cd ; 5 uses
  %i.cf = load i32, ptr %i.bq, align 4, !tbaa !25 ; 3 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph155.split.us
  %i.ch = add i32 %i.cf, 4                        ; 3 uses
  %i.ci = icmp ult i32 %i.ch, 254
  br i1 %i.ci, label %bb.t, label %zipStorePrevEntryLengthLarge.exit.i99.us

zipStorePrevEntryLengthLarge.exit.i99.us:         ; preds = %bb.s
  store i8 -2, ptr %i.ce, align 1, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i32 %i.ch, ptr %i.cj, align 1
  br label %zipStorePrevEntryLength.exit98.us

bb.t:                                             ; preds = %bb.s
  %i.ck = trunc nuw i32 %i.ch to i8
  store i8 %i.ck, ptr %i.ce, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit98.us

bb.u:                                             ; preds = %.lr.ph155.split.us
  store i8 %i.br, ptr %i.ce, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit98.us

zipStorePrevEntryLength.exit98.us:                ; preds = %bb.u, %bb.t, %zipStorePrevEntryLengthLarge.exit.i99.us
  %i.cl = zext i32 %i.cf to i64
  %i.cm = sub i64 %.187152.us, %i.cl
  %i.cn = add i64 %.182153.us, -1                 ; 2 uses
  %.not94.us = icmp eq i64 %i.cn, 0
  br i1 %.not94.us, label %.loopexit, label %.lr.ph155.split.us, !llvm.loop !29

.lr.ph155.split:                                  ; preds = %.lr.ph155, %zipStorePrevEntryLength.exit98
  %.1154 = phi ptr [ %i.da, %zipStorePrevEntryLength.exit98 ], [ %i.bn, %.lr.ph155 ] ; 2 uses
  %.182153 = phi i64 [ %i.dk, %zipStorePrevEntryLength.exit98 ], [ %.081113, %.lr.ph155 ]
  %.187152 = phi i64 [ %i.dj, %zipStorePrevEntryLength.exit98 ], [ %.086105, %.lr.ph155 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.187152 ; 2 uses
  call fastcc void @zipEntry(ptr noundef nonnull %i.co, ptr noundef %2)
  %i.cp = load i32, ptr %i.i, align 8, !tbaa !19
  %i.cq = load i32, ptr %i.k, align 4, !tbaa !23
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = load i32, ptr %2, align 8, !tbaa !26
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = sub nsw i64 %i.cs, %i.cu                ; 2 uses
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %.1154, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cu
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cx, ptr nonnull align 1 %i.cy, i64 %i.cv, i1 false)
  %i.cz = sub nuw nsw i64 -4, %i.cs
  %i.da = getelementptr inbounds i8, ptr %.1154, i64 %i.cz ; 6 uses
  %i.db = load i32, ptr %i.bq, align 4, !tbaa !25 ; 3 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %zipStorePrevEntryLengthLarge.exit.i96, label %bb.v

zipStorePrevEntryLengthLarge.exit.i96:            ; preds = %.lr.ph155.split
  store i8 -2, ptr %i.da, align 1, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i32 %.fr156, ptr %i.dd, align 1
  br label %zipStorePrevEntryLength.exit98

bb.v:                                             ; preds = %.lr.ph155.split
  %i.de = add i32 %i.db, 4                        ; 3 uses
  %i.df = icmp ult i32 %i.de, 254
  br i1 %i.df, label %bb.w, label %zipStorePrevEntryLengthLarge.exit.i99

bb.w:                                             ; preds = %bb.v
  %i.dg = trunc nuw i32 %i.de to i8
  store i8 %i.dg, ptr %i.da, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit98

zipStorePrevEntryLengthLarge.exit.i99:            ; preds = %bb.v
  store i8 -2, ptr %i.da, align 1, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i32 %i.de, ptr %i.dh, align 1
  br label %zipStorePrevEntryLength.exit98

zipStorePrevEntryLength.exit98:                   ; preds = %zipStorePrevEntryLengthLarge.exit.i99, %bb.w, %zipStorePrevEntryLengthLarge.exit.i96
  %i.di = zext i32 %i.db to i64
  %i.dj = sub i64 %.187152, %i.di
  %i.dk = add i64 %.182153, -1                    ; 2 uses
  %.not94 = icmp eq i64 %i.dk, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph155.split, !llvm.loop !29

.loopexit:                                        ; preds = %zipStorePrevEntryLength.exit98, %zipStorePrevEntryLength.exit98.us, %bb.b, %ziplistResize.exit, %zipStorePrevEntryLength.exit, %bb.a
  %.0 = phi ptr [ %0, %zipStorePrevEntryLength.exit ], [ %0, %bb.a ], [ %i.bi, %ziplistResize.exit ], [ %i.bi, %zipStorePrevEntryLength.exit98.us ], [ %0, %bb.b ], [ %i.bi, %zipStorePrevEntryLength.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @zipEntry(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8), (20, 21)) %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = icmp ult i8 %i.a, -2                     ; 2 uses
  %. = select i1 %i.b, i32 1, i32 5               ; 3 uses
  store i32 %., ptr %1, align 8, !tbaa !26
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !13
  %i.d = zext i8 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1
  %i.f = load i32, ptr %i.e, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sink, ptr %i.g, align 4, !tbaa !25
  %i.h = zext nneg i32 %. to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 5 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = icmp ult i8 %i.j, -64                    ; 2 uses
  %i.m = and i8 %i.j, -64
  %spec.select = select i1 %i.l, i8 %i.m, i8 %i.j
  store i8 %spec.select, ptr %i.k, align 4, !tbaa !30
  br i1 %i.l, label %bb.e, label %bb.j, !prof !31

bb.e:                                             ; preds = %bb.d
  %i.n = lshr i8 %i.j, 6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  switch i8 %i.n, label %.unreachabledefault [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.o, align 8, !tbaa !32
  %i.p = load i8, ptr %i.i, align 1, !tbaa !13
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i32
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  store i32 2, ptr %i.o, align 8, !tbaa !32
  %i.s = load i8, ptr %i.i, align 1, !tbaa !13
  %i.t = and i8 %i.s, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, %i.y
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  store i32 5, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  br label %.sink.split

.unreachabledefault:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !23
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 1, ptr %i.ae, align 8, !tbaa !32
  %i.af = add nsw i8 %i.j, 64                     ; 2 uses
  %i.ag = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 7) ; 3 uses
  %i.ah = icmp ult i8 %i.ag, 32
  br i1 %i.ah, label %switch.hole_check, label %bb.k

bb.k:                                             ; preds = %switch.hole_check, %bb.j
  %i.ai = add nsw i8 %i.j, 1
  %or.cond = icmp ult i8 %i.ai, -14
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !23
  br i1 %or.cond, label %bb.l, label %bb.n, !prof !31

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ae, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 619) #18
  tail call void @abort() #19
  unreachable

switch.hole_check:                                ; preds = %bb.j
  %switch.maskindex = zext nneg i8 %i.ag to i32
  %switch.shifted = lshr i32 -2130640639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ak = zext nneg i8 %i.ag to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.__ziplistInsert, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.f, %bb.h, %bb.g
  %.sink70 = phi i32 [ %i.z, %bb.g ], [ %i.ac, %bb.h ], [ %i.r, %bb.f ], [ %switch.ext, %switch.lookup ]
  %.ph.ph = phi i32 [ 2, %bb.g ], [ 5, %bb.h ], [ 1, %bb.f ], [ 1, %switch.lookup ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sink70, ptr %i.al, align 4, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k
  %.ph = phi i32 [ 1, %bb.k ], [ %.ph.ph, %.sink.split ]
  %i.am = add nuw nsw i32 %.ph, %.
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.am, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %0, ptr %i.ao, align 8, !tbaa !33
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @zipEntrySafe(ptr nofree noundef readnone captures(address) %0, i64 noundef range(i64 -2, 8589934605) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 8 uses
  %.not = icmp uge ptr %2, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.e = icmp ult ptr %i.d, %i.c
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !13
  %i.g = icmp ult i8 %i.f, -2                     ; 2 uses
  %. = select i1 %i.g, i32 1, i32 5               ; 4 uses
  store i32 %., ptr %3, align 8, !tbaa !26
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %2, align 1, !tbaa !13
  %i.i = zext i8 %i.h to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %2, i64 1
  %i.k = load i32, ptr %i.j, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !25
  %i.n = zext nneg i32 %. to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n ; 5 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.r = icmp ult i8 %i.p, -64                    ; 2 uses
  %i.s = and i8 %i.p, -64
  %spec.select = select i1 %i.r, i8 %i.s, i8 %i.p
  store i8 %spec.select, ptr %i.q, align 4, !tbaa !30
  br i1 %i.r, label %bb.f, label %bb.k, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.t = lshr i8 %i.p, 6
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  switch i8 %i.t, label %.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.u, align 8, !tbaa !32
  %i.v = load i8, ptr %i.o, align 1, !tbaa !13
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %i.u, align 8, !tbaa !32
  %i.y = load i8, ptr %i.o, align 1, !tbaa !13
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  store i32 5, ptr %i.u, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  br label %.sink.split

.unreachabledefault:                              ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !23
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !32
  %i.al = add nsw i8 %i.p, 64                     ; 2 uses
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 7) ; 3 uses
  %i.an = icmp ult i8 %i.am, 32
  br i1 %i.an, label %switch.hole_check, label %bb.l

bb.l:                                             ; preds = %switch.hole_check, %bb.k
  %i.ao = add nsw i8 %i.p, 1
  %or.cond215 = icmp ult i8 %i.ao, -14
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !23
  br i1 %or.cond215, label %bb.m, label %bb.o, !prof !31

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %., ptr %i.aq, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ar, align 8, !tbaa !33
  br label %bb.au

switch.hole_check:                                ; preds = %bb.k
  %switch.maskindex = zext nneg i8 %i.am to i32
  %switch.shifted = lshr i32 -2130640639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %switch.hole_check
  %i.as = zext nneg i8 %i.am to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.__ziplistInsert, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.h, %bb.i, %bb.g
  %.sink = phi i32 [ %i.af, %bb.h ], [ %i.ai, %bb.i ], [ %switch.ext, %switch.lookup ], [ %i.x, %bb.g ] ; 2 uses
  %.ph233.ph = phi i32 [ 2, %bb.h ], [ 5, %bb.i ], [ 1, %switch.lookup ], [ 1, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sink, ptr %i.at, align 4, !tbaa !23
  %i.au = zext i32 %.sink to i64
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %.ph = phi i64 [ 0, %bb.l ], [ %i.au, %.sink.split ]
  %.ph233 = phi i32 [ 1, %bb.l ], [ %.ph233.ph, %.sink.split ]
  %i.av = add nuw nsw i32 %.ph233, %.             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ax, align 8, !tbaa !33
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.ph ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.a
  %i.bc = icmp ugt ptr %i.ba, %i.c
  %spec.select216 = select i1 %i.bb, i1 true, i1 %i.bc, !prof !24
  br i1 %spec.select216, label %bb.au, label %bb.p, !prof !24

bb.p:                                             ; preds = %bb.o
  %.not213 = icmp eq i32 %4, 0
  br i1 %.not213, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = zext i32 %i.l to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.a
  %i.bh = icmp ugt ptr %i.bf, %i.c
  %spec.select217 = select i1 %i.bg, i1 true, i1 %i.bh, !prof !24
  br i1 %spec.select217, label %bb.au, label %bb.r, !prof !24

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.au

bb.s:                                             ; preds = %bb.a
  %i.bi = icmp ult ptr %2, %i.a
  %i.bj = icmp ugt ptr %2, %i.c
  %i.bk = select i1 %i.bi, i1 true, i1 %i.bj, !prof !24
  br i1 %i.bk, label %bb.au, label %bb.t, !prof !24

bb.t:                                             ; preds = %bb.s
  %i.bl = load i8, ptr %2, align 1, !tbaa !13
  %i.bm = icmp ult i8 %i.bl, -2
  %.218 = select i1 %i.bm, i32 1, i32 5           ; 2 uses
  store i32 %.218, ptr %3, align 8, !tbaa !26
  %i.bn = zext nneg i32 %.218 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn ; 4 uses
  %i.bp = icmp ult ptr %i.bo, %i.a
  %i.bq = icmp ugt ptr %i.bo, %i.c
  %i.br = select i1 %i.bp, i1 true, i1 %i.bq, !prof !24
  br i1 %i.br, label %bb.au, label %bb.u, !prof !24

bb.u:                                             ; preds = %bb.t
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !13  ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bu = icmp ult i8 %i.bs, -64                  ; 2 uses
  %i.bv = and i8 %i.bs, -64
  %spec.select219 = select i1 %i.bu, i8 %i.bv, i8 %i.bs ; 5 uses
  store i8 %spec.select219, ptr %i.bt, align 4, !tbaa !30
  %i.bw = add i8 %spec.select219, 64              ; 2 uses
  %i.bx = tail call i8 @llvm.fshl.i8(i8 %i.bw, i8 %i.bw, i8 7) ; 3 uses
  %i.by = icmp ult i8 %i.bx, 32
  br i1 %i.by, label %switch.hole_check237, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.old = add i8 %spec.select219, 15
  %or.cond14.i.old = icmp ult i8 %.old, 13
  br i1 %or.cond14.i.old, label %switch.lookup238, label %bb.w

bb.w:                                             ; preds = %switch.hole_check237, %bb.v
  switch i8 %spec.select219, label %zipEncodingLenSize.exit [
    i8 0, label %switch.lookup238
    i8 64, label %bb.x
    i8 -128, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  br label %switch.lookup238

bb.y:                                             ; preds = %bb.w
  br label %switch.lookup238

zipEncodingLenSize.exit:                          ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 255, ptr %i.bz, align 8, !tbaa !32
  br label %bb.au

switch.hole_check237:                             ; preds = %bb.u
  %switch.maskindex239 = zext nneg i8 %i.bx to i32
  %switch.shifted240 = lshr i32 -2130640639, %switch.maskindex239
  %switch.lobit241 = trunc i32 %switch.shifted240 to i1
  %i.ca = add i8 %spec.select219, 15
  %or.cond14.i = icmp ult i8 %i.ca, 13
  %or.cond242 = or i1 %or.cond14.i, %switch.lobit241
  br i1 %or.cond242, label %switch.lookup238, label %bb.w

switch.lookup238:                                 ; preds = %switch.hole_check237, %bb.v, %bb.x, %bb.y, %bb.w
  %.0.i.ph = phi i32 [ 1, %bb.w ], [ 5, %bb.y ], [ 1, %bb.v ], [ 2, %bb.x ], [ 1, %switch.hole_check237 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 %.0.i.ph, ptr %i.cb, align 8, !tbaa !32
  %i.cc = zext nneg i32 %.0.i.ph to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cc ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.a
  %i.cf = icmp ugt ptr %i.cd, %i.c
  %spec.select220 = select i1 %i.ce, i1 true, i1 %i.cf, !prof !24
  br i1 %spec.select220, label %bb.au, label %bb.z, !prof !24

bb.z:                                             ; preds = %switch.lookup238
  %i.cg = load i8, ptr %2, align 1, !tbaa !13
  %i.ch = icmp ult i8 %i.cg, -2                   ; 2 uses
  %.221 = select i1 %i.ch, i32 1, i32 5           ; 5 uses
  store i32 %.221, ptr %3, align 8, !tbaa !26
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = load i8, ptr %2, align 1, !tbaa !13
  %i.cj = zext i8 %i.ci to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ck = getelementptr i8, ptr %2, i64 1
  %i.cl = load i32, ptr %i.ck, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.cm = phi i32 [ %i.cj, %bb.aa ], [ %i.cl, %bb.ab ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !25
  br i1 %i.bu, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.co = lshr i8 %i.bs, 6
  switch i8 %i.co, label %.unreachabledefault235 [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %i.cb, align 8, !tbaa !32
  %i.cp = zext nneg i32 %.221 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = and i8 %i.cr, 63
  %i.ct = zext nneg i8 %i.cs to i32               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !23
  br label %bb.aq

bb.af:                                            ; preds = %bb.ad
  store i32 2, ptr %i.cb, align 8, !tbaa !32
  %i.cv = zext nneg i32 %.221 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.de, ptr %i.df, align 4, !tbaa !23
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ad
  store i32 5, ptr %i.cb, align 8, !tbaa !32
  %i.dg = zext nneg i32 %.221 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.dj) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !23
  br label %bb.aq

.unreachabledefault235:                           ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cb, align 8, !tbaa !32
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !23
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ac
  store i32 1, ptr %i.cb, align 8, !tbaa !32
  switch i8 %i.bx, label %bb.ao [
    i8 31, label %bb.aj
    i8 0, label %bb.ak
    i8 24, label %bb.al
    i8 8, label %bb.am
    i8 16, label %bb.an
  ]

end_hunk_1
begin_hunk_2_@__ziplistDelete:bb.a
  %i.bo = icmp ult i64 %i.bn, 4294967295
  br i1 %i.bo, label %ziplistResize.exit, label %bb.o, !prof !18

bb.o:                                             ; preds = %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 723) #18
  tail call void @abort() #19
  unreachable

ziplistResize.exit:                               ; preds = %bb.n
  %i.bp = ptrtoint ptr %0 to i64
  %i.bq = sub i64 %i.w, %i.bp
  %i.br = tail call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bn) #21 ; 7 uses
  %i.bs = trunc nuw i64 %i.bn to i32
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !9
  %i.bt = getelementptr i8, ptr %i.br, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  store i8 -1, ptr %i.bu, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !16 ; 2 uses
  %.not69 = icmp eq i16 %i.bx, -1
  br i1 %.not69, label %bb.q, label %bb.p

bb.p:                                             ; preds = %ziplistResize.exit
  %i.by = sub i16 %i.bx, %.060.lcssa
  store i16 %i.by, ptr %i.bw, align 4, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ziplistResize.exit
  %i.bz = zext i32 %.157 to i64
  %i.ca = add nsw i64 %i.bn, -1
  %.not70 = icmp ult i64 %i.ca, %i.bz
  br i1 %.not70, label %bb.r, label %bb.s, !prof !24

bb.r:                                             ; preds = %bb.q
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 913) #18
  tail call void @abort() #19
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %.157, ptr %i.cb, align 4, !tbaa !9
  %.not71 = icmp eq i32 %.058, 0
  br i1 %.not71, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = tail call ptr @__ziplistCascadeUpdate(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bv)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.e
  %.1 = phi ptr [ %0, %bb.e ], [ %i.cc, %bb.t ], [ %i.br, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @__ziplistInsert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 12 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.zlentry, align 8            ; 5 uses
  %5 = alloca %struct.zlentry, align 8            ; 5 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !9
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.e = load i8, ptr %1, align 1, !tbaa !13      ; 2 uses
  switch i8 %i.e, label %bb.b [
    i8 -1, label %bb.d
    i8 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = zext i8 %i.e to i32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 1
  %i.h = load i32, ptr %i.g, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not96 = icmp eq i8 %i.m, -1
  br i1 %.not96, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.n = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.d, ptr noundef nonnull %i.l, ptr noundef %4, i32 noundef 0)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.f, label %zipRawEntryLengthSafe.exit, !prof !24

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #18
  tail call void @abort() #19
  unreachable

zipRawEntryLengthSafe.exit:                       ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23
  %i.s = add i32 %i.r, %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %zipRawEntryLengthSafe.exit, %bb.b, %bb.c
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.s, %zipRawEntryLengthSafe.exit ], [ 0, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.t = add i32 %3, -32
  %or.cond.i = icmp ult i32 %i.t, -31
  br i1 %or.cond.i, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = zext nneg i32 %3 to i64
  %i.v = call i32 @string2ll(ptr noundef %2, i64 noundef %i.u, ptr noundef nonnull %i.b) #18
  %.not.i109 = icmp eq i32 %i.v, 0
  br i1 %.not.i109, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.w = icmp ult i32 %.1, 254                    ; 2 uses
  %i.x = select i1 %i.w, i32 1, i32 5             ; 2 uses
  %narrow = add nuw nsw i32 %i.x, %3
  %i.y = zext nneg i32 %narrow to i64
  br label %zipStoreEntryEncoding.exit

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.b, align 8, !tbaa !14   ; 7 uses
  %or.cond3.i = icmp ult i64 %i.z, 13
  br i1 %or.cond3.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = trunc nuw nsw i64 %i.z to i8
  %i.ab = add nuw nsw i8 %i.aa, -15
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ac = add i64 %i.z, 128
  %or.cond5.i = icmp ult i64 %i.ac, 256
  br i1 %or.cond5.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add i64 %i.z, 32768
  %or.cond7.i = icmp ult i64 %i.ad, 65536
  br i1 %or.cond7.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = add i64 %i.z, 8388608
  %or.cond9.i = icmp ult i64 %i.ae, 16777216
  br i1 %or.cond9.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = add i64 %i.z, 2147483648
  %or.cond11.i = icmp ult i64 %i.af, 4294967296
  %..i = select i1 %or.cond11.i, i8 -48, i8 -32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0129.ph = phi i8 [ -2, %bb.k ], [ %..i, %bb.n ], [ -16, %bb.m ], [ -64, %bb.l ], [ %i.ab, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ag = zext i8 %.0129.ph to i32
  %i.ah = add nsw i32 %i.ag, -192                 ; 2 uses
  %i.ai = call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 31) ; 3 uses
  %i.aj = icmp ult i32 %i.ai, 32
  %switch.shifted = lshr i32 -2130640639, %i.ai
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.aj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = add nsw i8 %.0129.ph, 15
  %or.cond.i111 = icmp ult i8 %i.ak, 13
  br i1 %or.cond.i111, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @abort() #19
  unreachable

bb.r:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.093 = zext i32 %3 to i64
  %i.al = icmp ult i32 %.1, 254                   ; 3 uses
  %i.am = select i1 %i.al, i32 1, i32 5           ; 3 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, %.093            ; 2 uses
  %i.ap = icmp ult i32 %3, 64
  br i1 %i.ap, label %zipStoreEntryEncoding.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = icmp ult i32 %3, 16384
  %spec.select163 = select i1 %i.aq, i64 2, i64 5
  br label %zipStoreEntryEncoding.exit

switch.lookup:                                    ; preds = %bb.o
  %i.ar = zext nneg i32 %i.ai to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.__ziplistInsert, i64 %i.ar
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.t

bb.t:                                             ; preds = %switch.lookup, %bb.p
  %.093.in.ph = phi i64 [ 0, %bb.p ], [ %switch.ext, %switch.lookup ]
  %i.as = icmp ult i32 %.1, 254                   ; 2 uses
  %i.at = select i1 %i.as, i32 1, i32 5           ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add nuw nsw i64 %.093.in.ph, %i.au
  br label %zipStoreEntryEncoding.exit

zipStoreEntryEncoding.exit:                       ; preds = %bb.s, %bb.r, %.thread, %bb.t
  %.not.i113147 = phi i1 [ true, %bb.t ], [ false, %bb.s ], [ false, %bb.r ], [ false, %.thread ]
  %i.aw = phi i64 [ %i.av, %bb.t ], [ %i.ao, %bb.s ], [ %i.ao, %bb.r ], [ %i.y, %.thread ]
  %i.ax = phi i32 [ %i.at, %bb.t ], [ %i.am, %bb.s ], [ %i.am, %bb.r ], [ %i.x, %.thread ]
  %i.ay = phi i1 [ %i.as, %bb.t ], [ %i.al, %bb.s ], [ %i.al, %bb.r ], [ %i.w, %.thread ]
  %.0129135145 = phi i8 [ %.0129.ph, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %.thread ] ; 2 uses
  %.0137143 = phi i64 [ %i.z, %bb.t ], [ 123456789, %bb.s ], [ 123456789, %bb.r ], [ 123456789, %.thread ]
  %.025.i = phi i64 [ 1, %bb.t ], [ %spec.select163, %bb.s ], [ 1, %bb.r ], [ 1, %.thread ]
  %i.az = add nuw nsw i64 %.025.i, %i.aw          ; 7 uses
  %i.ba = load i8, ptr %1, align 1, !tbaa !13     ; 2 uses
  %.not99 = icmp eq i8 %i.ba, -1
  br i1 %.not99, label %bb.v, label %bb.u

bb.u:                                             ; preds = %zipStoreEntryEncoding.exit
  %i.bb = trunc i64 %i.az to i32
  %.not = icmp eq i8 %i.ba, -2
  %..i114 = select i1 %.not, i32 -5, i32 -1
  %i.bc = icmp ult i32 %i.bb, 254
  %i.bd = select i1 %i.bc, i32 1, i32 5
  %i.be = add nsw i32 %i.bd, %..i114
  br label %bb.v

bb.v:                                             ; preds = %zipStoreEntryEncoding.exit, %bb.u
  %i.bf = phi i32 [ %i.be, %bb.u ], [ 0, %zipStoreEntryEncoding.exit ] ; 2 uses
  %i.bg = icmp ne i32 %i.bf, -4
  %i.bh = icmp samesign ugt i64 %i.az, 3
  %or.cond.not = select i1 %i.bg, i1 true, i1 %i.bh ; 2 uses
  %spec.select = select i1 %or.cond.not, i32 %i.bf, i32 0 ; 3 uses
  %i.bi = ptrtoint ptr %1 to i64
  %i.bj = ptrtoint ptr %0 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = add nuw nsw i64 %i.az, %i.d
  %i.bm = sext i32 %spec.select to i64            ; 3 uses
  %i.bn = add nsw i64 %i.bl, %i.bm                ; 5 uses
  %i.bo = icmp ult i64 %i.bn, 4294967295
  br i1 %i.bo, label %ziplistResize.exit, label %bb.w, !prof !18

bb.w:                                             ; preds = %bb.v
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 723) #18
  call void @abort() #19
  unreachable

ziplistResize.exit:                               ; preds = %bb.v
  %i.bp = call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bn) #21 ; 8 uses
  %i.bq = trunc nuw i64 %i.bn to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !9
  %i.br = getelementptr i8, ptr %i.bp, i64 %i.bn
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  store i8 -1, ptr %i.bs, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk ; 5 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %.not100 = icmp eq i8 %i.bu, -1
  br i1 %.not100, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %ziplistResize.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.az ; 8 uses
  %i.bw = sub nsw i64 0, %i.bm
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %i.bw
  %i.by = xor i64 %i.bk, -1
  %i.bz = add i64 %i.d, %i.by
  %i.ca = add i64 %i.bz, %i.bm
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull align 1 %i.bx, i64 %i.ca, i1 false)
  %i.cb = trunc i64 %i.az to i32                  ; 4 uses
  br i1 %or.cond.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 -2, ptr %i.bv, align 1, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i32 %i.cb, ptr %i.cc, align 1
  br label %zipStorePrevEntryLength.exit

bb.z:                                             ; preds = %bb.x
  %i.cd = icmp ult i32 %i.cb, 254
  br i1 %i.cd, label %bb.aa, label %zipStorePrevEntryLengthLarge.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ce = trunc i64 %i.az to i8
  store i8 %i.ce, ptr %i.bv, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit.i:              ; preds = %bb.z
  store i8 -2, ptr %i.bv, align 1, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i32 %i.cb, ptr %i.cf, align 1
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLength.exit:                     ; preds = %zipStorePrevEntryLengthLarge.exit.i, %bb.aa, %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.ci = add i32 %i.ch, %i.cb
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !9
  %i.cj = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %i.bp, i64 noundef %i.bn, ptr noundef nonnull %i.bv, ptr noundef %5, i32 noundef 1)
  %.not104 = icmp eq i32 %i.cj, 0
  br i1 %.not104, label %bb.ab, label %bb.ac, !prof !24

bb.ab:                                            ; preds = %zipStorePrevEntryLength.exit
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 994) #18
  call void @abort() #19
  unreachable

bb.ac:                                            ; preds = %zipStorePrevEntryLength.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !19
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !23
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %.not105 = icmp eq i8 %i.cs, -1
  br i1 %.not105, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.cu = add i32 %i.ct, %spec.select
  store i32 %i.cu, ptr %i.cg, align 4, !tbaa !9
  br label %bb.af

bb.ae:                                            ; preds = %ziplistResize.exit
  %i.cv = trunc i64 %i.bk to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.not106 = icmp eq i32 %spec.select, 0
  br i1 %.not106, label %.thread155, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.az
  %i.cy = call ptr @__ziplistCascadeUpdate(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.cx) ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bk
  %i.da = icmp eq ptr %i.cy, null
  br i1 %i.da, label %zipStorePrevEntryLength.exit119, label %.thread155

.thread155:                                       ; preds = %bb.af, %bb.ag
  %.088161 = phi ptr [ %i.cy, %bb.ag ], [ %i.bp, %bb.af ] ; 2 uses
  %.092159 = phi ptr [ %i.cz, %bb.ag ], [ %i.bt, %bb.af ] ; 5 uses
  br i1 %i.ay, label %bb.ah, label %zipStorePrevEntryLengthLarge.exit.i117

bb.ah:                                            ; preds = %.thread155
  %i.db = trunc nuw i32 %.1 to i8
  store i8 %i.db, ptr %.092159, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit119

zipStorePrevEntryLengthLarge.exit.i117:           ; preds = %.thread155
  store i8 -2, ptr %.092159, align 1, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.092159, i64 1
  store i32 %.1, ptr %i.dc, align 1
  br label %zipStorePrevEntryLength.exit119

zipStorePrevEntryLength.exit119:                  ; preds = %bb.ag, %bb.ah, %zipStorePrevEntryLengthLarge.exit.i117
  %.088160 = phi ptr [ %.088161, %zipStorePrevEntryLengthLarge.exit.i117 ], [ %.088161, %bb.ah ], [ null, %bb.ag ] ; 2 uses
  %.092158 = phi ptr [ %.092159, %zipStorePrevEntryLengthLarge.exit.i117 ], [ %.092159, %bb.ah ], [ null, %bb.ag ]
  %.0.i118 = phi i32 [ 5, %zipStorePrevEntryLengthLarge.exit.i117 ], [ 1, %bb.ah ], [ %i.ax, %bb.ag ]
  %i.dd = zext nneg i32 %.0.i118 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.092158, i64 %i.dd ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not.i113147, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %zipStorePrevEntryLength.exit119
  %i.df = icmp ult i32 %3, 64
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dg = trunc nuw nsw i32 %3 to i8
  store i8 %i.dg, ptr %i.a, align 1, !tbaa !13
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.dh = icmp ult i32 %3, 16384
  br i1 %i.dh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.di = lshr i32 %3, 8
  %i.dj = trunc nuw nsw i32 %i.di to i8
  %i.dk = or disjoint i8 %i.dj, 64
  store i8 %i.dk, ptr %i.a, align 1, !tbaa !13
  %i.dl = trunc i32 %3 to i8
  %.1..1..1..1..1..1..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dl, ptr %.1..1..1..1..1..1..sroa_idx175, align 1, !tbaa !13
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store i8 -128, ptr %i.a, align 1, !tbaa !13
  %i.dm = lshr i32 %3, 24
  %i.dn = trunc nuw i32 %i.dm to i8
  %.1..1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dn, ptr %.1..1..1..1..1..1..sroa_idx, align 1, !tbaa !13
  %i.do = lshr i32 %3, 16
  %i.dp = trunc i32 %i.do to i8
  %.2..2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.dp, ptr %.2..2..2..2..2..2..sroa_idx, align 1, !tbaa !13
end_hunk_2
