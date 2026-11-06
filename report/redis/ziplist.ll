Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ziplist?download=true
inline.NumInlined: 60
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zlentry = type { i32, i32, i32, i32, i32, i8, ptr }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1, !guid !14
@.str.1 = private unnamed_addr constant [10 x i8] c"ziplist.c\00", align 1, !guid !15
@.str.2 = private unnamed_addr constant [17 x i8] c"len < UINT32_MAX\00", align 1, !guid !16
@.str.3 = private unnamed_addr constant [37 x i8] c"zipEntrySafe(zl, curlen, p, &cur, 0)\00", align 1, !guid !17
@.str.4 = private unnamed_addr constant [57 x i8] c"cur.prevrawlen == 0 || cur.prevrawlen + delta == prevlen\00", align 1, !guid !18
@.str.5 = private unnamed_addr constant [13 x i8] c"p >= first.p\00", align 1, !guid !19
@.str.6 = private unnamed_addr constant [31 x i8] c"p >= first.p && p<zl+zlbytes-1\00", align 1, !guid !20
@.str.7 = private unnamed_addr constant [39 x i8] c"zipEntrySafe(zl, zlbytes, p, &tail, 1)\00", align 1, !guid !21
@.str.8 = private unnamed_addr constant [39 x i8] c"set_tail <= zlbytes - ZIPLIST_END_SIZE\00", align 1, !guid !22
@.str.9 = private unnamed_addr constant [45 x i8] c"zipEntrySafe(zl, newlen, p+reqlen, &tail, 1)\00", align 1, !guid !23
@.str.10 = private unnamed_addr constant [21 x i8] c"zlbytes < UINT32_MAX\00", align 1, !guid !24
@.str.11 = private unnamed_addr constant [50 x i8] c"p + prevlensize < zl + zlbytes - ZIPLIST_END_SIZE\00", align 1, !guid !25
@.str.12 = private unnamed_addr constant [69 x i8] c"p >= zl + ZIPLIST_HEADER_SIZE && p < zl + zlbytes - ZIPLIST_END_SIZE\00", align 1, !guid !26
@.str.13 = private unnamed_addr constant [12 x i8] c"prevlen > 0\00", align 1, !guid !27
@.str.14 = private unnamed_addr constant [36 x i8] c"zipEntrySafe(zl, zlbytes, p, &e, 1)\00", align 1, !guid !28
@.str.16 = private unnamed_addr constant [52 x i8] c"{total bytes %u} {num entries %u}\0A{tail offset %u}\0A\00", align 1, !guid !29
@.str.17 = private unnamed_addr constant [40 x i8] c"zipEntrySafe(zl, zlbytes, p, &entry, 1)\00", align 1, !guid !30
@.str.18 = private unnamed_addr constant [131 x i8] c"{\0A\09addr 0x%08lx,\0A\09index %2d,\0A\09offset %5lu,\0A\09hdr+entry len: %5u,\0A\09hdr len%2u,\0A\09prevrawlen: %5u,\0A\09prevrawlensize: %2u,\0A\09payload %5u\0A\00", align 1, !guid !31
@.str.19 = private unnamed_addr constant [9 x i8] c"\09bytes: \00", align 1, !guid !32
@.str.20 = private unnamed_addr constant [6 x i8] c"%02x|\00", align 1, !guid !33
@.str.22 = private unnamed_addr constant [7 x i8] c"\09[str]\00", align 1, !guid !34
@stdout = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1, !guid !35
@.str.24 = private unnamed_addr constant [4 x i8] c"...\00", align 1, !guid !36
@.str.25 = private unnamed_addr constant [11 x i8] c"\09[int]%lld\00", align 1, !guid !37
@.str.28 = private unnamed_addr constant [12 x i8] c"total_count\00", align 1, !guid !38
@.str.29 = private unnamed_addr constant [9 x i8] c"ret != 0\00", align 1, !guid !39
@.str.30 = private unnamed_addr constant [11 x i8] c"total_size\00", align 1, !guid !40
@.str.31 = private unnamed_addr constant [37 x i8] c"ziplistGet(p, &value, &vlen, &vlval)\00", align 1, !guid !41
@.str.32 = private unnamed_addr constant [35 x i8] c"ziplistGet(p, &key, &klen, &klval)\00", align 1, !guid !42
@.str.33 = private unnamed_addr constant [2 x i8] c"p\00", align 1, !guid !43
@.str.34 = private unnamed_addr constant [16 x i8] c"e->lensize != 0\00", align 1, !guid !44
@.str.35 = private unnamed_addr constant [36 x i8] c"zipEntrySafe(zl, zlbytes, p, &e, 0)\00", align 1, !guid !45
@str = private unnamed_addr constant [7 x i8] c"{end}\0A\00", align 1
@str.1 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@switch.table.__ziplistInsert = private unnamed_addr constant [32 x i8] [i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ziplistSafeToAdd(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 !guid !70 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !13
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
define dso_local range(i64 0, 4294967296) i64 @ziplistBlobLen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 !guid !71 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13
  %i.b = zext i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 1, 6) i32 @zipStoreEntryEncoding(ptr nofree noundef writeonly captures(address_is_null) %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 !guid !72 {
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
  store i8 %i.c, ptr %i.a, align 1, !tbaa !46
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
  store i8 %i.g, ptr %i.a, align 1, !tbaa !46
  %i.h = trunc i32 %2 to i8
  %.1..1..1..1..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.h, ptr %.1..1..1..1..sroa_idx.a, align 1, !tbaa !46
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  br i1 %.not29, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 -128, ptr %i.a, align 1, !tbaa !46
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  %.1..1..1..1..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %4, ptr %.1..1..1..1..sroa_idx35, align 1, !tbaa !46
  %5 = lshr i32 %2, 16
  %6 = trunc i32 %5 to i8
  %.2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %6, ptr %.2..2..2..2..sroa_idx, align 1, !tbaa !46
  %7 = lshr i32 %2, 8
  %8 = trunc i32 %7 to i8
  %.3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %8, ptr %.3..3..3..3..sroa_idx, align 1, !tbaa !46
  %9 = trunc i32 %2 to i8
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %9, ptr %.4..4..4..4..sroa_idx, align 1, !tbaa !46
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %1, ptr %i.a, align 1, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.i, %bb.g, %bb.k
  %.0 = phi i8 [ 1, %bb.d ], [ 2, %bb.g ], [ 5, %bb.i ], [ 1, %bb.k ] ; 2 uses
  %i.i = zext nneg i8 %.0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.i, i1 false)
  %i.j = zext nneg i8 %.0 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.c, %bb.l
  %.025 = phi i32 [ %i.j, %bb.l ], [ 5, %bb.h ], [ 1, %bb.c ], [ 2, %bb.f ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @zipStorePrevEntryLengthLarge(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 !guid !73 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 1, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 1, 6) i32 @zipStorePrevEntryLength(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 !guid !74 {
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
  store i8 %i.d, ptr %0, align 1, !tbaa !46
  br label %bb.e

zipStorePrevEntryLengthLarge.exit:                ; preds = %bb.c
  store i8 -2, ptr %0, align 1, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.e, align 1
  br label %bb.e

bb.e:                                             ; preds = %zipStorePrevEntryLengthLarge.exit, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.d ], [ 5, %zipStorePrevEntryLengthLarge.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -4, 5) i32 @zipPrevLenByteDiff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 !guid !75 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !46
  %i.b = icmp ult i8 %i.a, -2
  %. = select i1 %i.b, i32 -1, i32 -5
  %i.c = icmp ult i32 %1, 254
  %i.d = select i1 %i.c, i32 1, i32 5
  %i.e = add nsw i32 %., %i.d
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zipTryEncoding(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 !guid !76 {
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
  %i.e = load i64, ptr %i.a, align 8, !tbaa !48   ; 7 uses
  %or.cond3 = icmp ult i64 %i.e, 13
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = add nuw nsw i8 %i.f, -15
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.h = add i64 %i.e, 128
  %or.cond5 = icmp ult i64 %i.h, 256
  br i1 %or.cond5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %i.e, 32768
  %or.cond7 = icmp ult i64 %i.i, 65536
  br i1 %or.cond7, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = add i64 %i.e, 8388608
  %or.cond9 = icmp ult i64 %i.j, 16777216
  br i1 %or.cond9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = add i64 %i.e, 2147483648
  %or.cond11 = icmp ult i64 %i.k, 4294967296
  %. = select i1 %or.cond11, i8 -48, i8 -32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi i8 [ %i.g, %bb.d ], [ -64, %bb.f ], [ -16, %bb.g ], [ %., %bb.h ], [ -2, %bb.e ]
  store i8 %.sink, ptr %3, align 1, !tbaa !46
  store i64 %i.e, ptr %2, align 8, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @zipSaveInteger(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 !guid !77 {
bb.a:
  %i.a = add i8 %2, 64                            ; 2 uses
  %i.b = tail call i8 @llvm.fshl.i8(i8 %i.a, i8 %i.a, i8 7)
  switch i8 %i.b, label %bb.g [
    i8 31, label %bb.b
    i8 0, label %bb.c
    i8 24, label %bb.d
    i8 8, label %bb.e
    i8 16, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %1 to i8
  store i8 %i.c, ptr %0, align 1, !tbaa !46
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i16
  store i16 %i.d, ptr %0, align 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %.1.extract.trunc = trunc i64 %1 to i24
  store i24 %.1.extract.trunc, ptr %0, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i32
  store i32 %i.e, ptr %0, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  store i64 %1, ptr %0, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.f = add i8 %2, 15
  %or.cond = icmp ult i8 %i.f, 14
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 573) #18
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.f, %bb.d, %bb.b
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

end_hunk_0
begin_hunk_1_@__ziplistDelete:bb.a
  %.06183 = phi ptr [ %1, %.lr.ph ], [ %i.n, %zipRawEntryLengthSafe.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.i = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.b, ptr noundef nonnull %.06183, ptr noundef %3, i32 noundef 0)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %zipRawEntryLengthSafe.exit, !prof !57

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #18
  tail call void @abort() #19
  unreachable

zipRawEntryLengthSafe.exit:                       ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 8, !tbaa !55
  %i.k = load i32, ptr %i.h, align 4, !tbaa !56
  %i.l = add i32 %i.k, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.06183, i64 %i.m ; 3 uses
  %i.o = add nuw i32 %.06084, 1                   ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !tbaa !46    ; 2 uses
  %i.q = icmp ne i8 %i.p, -1                      ; 2 uses
  %i.r = icmp ult i32 %i.o, %2
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !86

._crit_edge.loopexit:                             ; preds = %zipRawEntryLengthSafe.exit
  %indvars = trunc i32 %i.o to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.061.lcssa = phi ptr [ %1, %bb.a ], [ %i.n, %._crit_edge.loopexit ] ; 3 uses
  %.059.lcssa = phi i16 [ 0, %bb.a ], [ %indvars, %._crit_edge.loopexit ]
  %.lcssa79 = phi i8 [ %i.c, %bb.a ], [ %i.p, %._crit_edge.loopexit ]
  %.lcssa = phi i1 [ %i.d, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 4 uses
  %.not = icmp ult ptr %.061.lcssa, %i.u
  br i1 %.not, label %bb.d, label %bb.e, !prof !57

bb.d:                                             ; preds = %._crit_edge
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 862) #18
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.v = ptrtoint ptr %.061.lcssa to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %.not66 = icmp eq i32 %i.y, 0
  br i1 %.not66, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.lcssa, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58  ; 3 uses
  %.not72 = icmp eq i8 %.lcssa79, -2
  %..i = select i1 %.not72, i32 -5, i32 -1
  %i.ab = icmp ult i32 %i.aa, 254                 ; 2 uses
  %i.ac = select i1 %i.ab, i32 1, i32 5
  %i.ad = add nsw i32 %i.ac, %..i                 ; 3 uses
  %narrow = sub nsw i32 0, %i.ad
  %i.ae = sext i32 %narrow to i64
  %i.af = getelementptr inbounds i8, ptr %.061.lcssa, i64 %i.ae ; 8 uses
  %i.ag = icmp uge ptr %i.af, %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = icmp ult ptr %i.af, %i.ai
  %i.ak = select i1 %i.ag, i1 %i.aj, i1 false, !prof !51
  br i1 %i.ak, label %bb.i, label %bb.h, !prof !51

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 878) #18
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.j, label %zipStorePrevEntryLengthLarge.exit.i

bb.j:                                             ; preds = %bb.i
  %i.al = trunc nuw i32 %i.aa to i8
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit.i:              ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i32 %i.aa, ptr %i.am, align 1
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLength.exit:                     ; preds = %bb.j, %zipStorePrevEntryLengthLarge.exit.i
  %.sink = phi i8 [ %i.al, %bb.j ], [ -2, %zipStorePrevEntryLengthLarge.exit.i ]
  store i8 %.sink, ptr %i.af, align 1, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef nonnull %i.af, ptr noundef %5, i32 noundef 1)
  %.not67 = icmp eq i32 %i.ap, 0
  br i1 %.not67, label %bb.k, label %bb.l, !prof !57

bb.k:                                             ; preds = %zipStorePrevEntryLength.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 887) #18
  tail call void @abort() #19
  unreachable

bb.l:                                             ; preds = %zipStorePrevEntryLength.exit
  %i.aq = sub i32 %i.ao, %i.y
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !56
  %i.av = add i32 %i.au, %i.as
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !46
  %.not68 = icmp eq i8 %i.ay, -1
  %i.az = select i1 %.not68, i32 0, i32 %i.ad
  %spec.select = add i32 %i.aq, %i.az
  %i.ba = ptrtoint ptr %i.af to i64
  %i.bb = ptrtoint ptr %0 to i64
  %.neg = add i64 %i.bb, -1
  %i.bc = add i64 %.neg, %i.b
  %i.bd = sub i64 %i.bc, %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.af, i64 %i.bd, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.be = ptrtoint ptr %0 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !58
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add i64 %i.be, %i.bh
  %i.bj = sub i64 %i.w, %i.bi
  %i.bk = trunc i64 %i.bj to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.058 = phi i32 [ %i.ad, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %.157 = phi i32 [ %spec.select, %bb.l ], [ %i.bk, %bb.m ] ; 2 uses
  %i.bl = sub i32 %i.y, %.058
  %i.bm = zext i32 %i.bl to i64
  %i.bn = sub nsw i64 %i.b, %i.bm                 ; 5 uses
  %i.bo = icmp ult i64 %i.bn, 4294967295
  br i1 %i.bo, label %ziplistResize.exit, label %bb.o, !prof !51

bb.o:                                             ; preds = %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 723) #18
  tail call void @abort() #19
  unreachable

ziplistResize.exit:                               ; preds = %bb.n
  %i.bp = ptrtoint ptr %0 to i64
  %i.bq = sub i64 %i.w, %i.bp
  %i.br = tail call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bn) #21 ; 7 uses
  %i.bs = trunc nuw i64 %i.bn to i32
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !13
  %i.bt = getelementptr i8, ptr %i.br, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  store i8 -1, ptr %i.bu, align 1, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !50 ; 2 uses
  %.not69 = icmp eq i16 %i.bx, -1
  br i1 %.not69, label %bb.q, label %bb.p

bb.p:                                             ; preds = %ziplistResize.exit
  %i.by = sub i16 %i.bx, %.059.lcssa
  store i16 %i.by, ptr %i.bw, align 4, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ziplistResize.exit
  %i.bz = zext i32 %.157 to i64
  %i.ca = add nsw i64 %i.bn, -1
  %.not70 = icmp ult i64 %i.ca, %i.bz
  br i1 %.not70, label %bb.r, label %bb.s, !prof !57

bb.r:                                             ; preds = %bb.q
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 913) #18
  tail call void @abort() #19
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %.157, ptr %i.cb, align 4, !tbaa !13
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
define dso_local noundef ptr @__ziplistInsert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 !guid !88 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 12 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.zlentry, align 8            ; 5 uses
  %5 = alloca %struct.zlentry, align 8            ; 5 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !13
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.e = load i8, ptr %1, align 1, !tbaa !46      ; 2 uses
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
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !46
  %.not96 = icmp eq i8 %i.m, -1
  br i1 %.not96, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.n = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.d, ptr noundef nonnull %i.l, ptr noundef %4, i32 noundef 0)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.f, label %zipRawEntryLengthSafe.exit, !prof !57

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #18
  tail call void @abort() #19
  unreachable

zipRawEntryLengthSafe.exit:                       ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56
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
  %i.z = load i64, ptr %i.b, align 8, !tbaa !48   ; 7 uses
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
  %.091 = zext i32 %3 to i64
  %i.al = icmp ult i32 %.1, 254                   ; 3 uses
  %i.am = select i1 %i.al, i32 1, i32 5           ; 3 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, %.091            ; 2 uses
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
  %.091.in.ph = phi i64 [ 0, %bb.p ], [ %switch.ext, %switch.lookup ]
  %i.as = icmp ult i32 %.1, 254                   ; 2 uses
  %i.at = select i1 %i.as, i32 1, i32 5           ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add nuw nsw i64 %.091.in.ph, %i.au
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
  %i.ba = load i8, ptr %1, align 1, !tbaa !46     ; 2 uses
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
  br i1 %i.bo, label %ziplistResize.exit, label %bb.w, !prof !51

bb.w:                                             ; preds = %bb.v
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 723) #18
  call void @abort() #19
  unreachable

ziplistResize.exit:                               ; preds = %bb.v
  %i.bp = call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bn) #21 ; 8 uses
  %i.bq = trunc nuw i64 %i.bn to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !13
  %i.br = getelementptr i8, ptr %i.bp, i64 %i.bn
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  store i8 -1, ptr %i.bs, align 1, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk ; 5 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !46
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
  store i8 -2, ptr %i.bv, align 1, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i32 %i.cb, ptr %i.cc, align 1
  br label %zipStorePrevEntryLength.exit

bb.z:                                             ; preds = %bb.x
  %i.cd = icmp ult i32 %i.cb, 254
  br i1 %i.cd, label %bb.aa, label %zipStorePrevEntryLengthLarge.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ce = trunc i64 %i.az to i8
  store i8 %i.ce, ptr %i.bv, align 1, !tbaa !46
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit.i:              ; preds = %bb.z
  store i8 -2, ptr %i.bv, align 1, !tbaa !46
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i32 %i.cb, ptr %i.cf, align 1
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLength.exit:                     ; preds = %zipStorePrevEntryLengthLarge.exit.i, %bb.aa, %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.ci = add i32 %i.ch, %i.cb
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !13
  %i.cj = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %i.bp, i64 noundef %i.bn, ptr noundef nonnull %i.bv, ptr noundef %5, i32 noundef 1)
  %.not104 = icmp eq i32 %i.cj, 0
  br i1 %.not104, label %bb.ab, label %bb.ac, !prof !57

bb.ab:                                            ; preds = %zipStorePrevEntryLength.exit
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 994) #18
  call void @abort() #19
  unreachable

bb.ac:                                            ; preds = %zipStorePrevEntryLength.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !55
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !56
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !46
  %.not105 = icmp eq i8 %i.cs, -1
  br i1 %.not105, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.cu = add i32 %i.ct, %spec.select
  store i32 %i.cu, ptr %i.cg, align 4, !tbaa !13
  br label %bb.af

bb.ae:                                            ; preds = %ziplistResize.exit
  %i.cv = trunc i64 %i.bk to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !13
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
  %.092161 = phi ptr [ %i.cy, %bb.ag ], [ %i.bp, %bb.af ] ; 2 uses
  %.093159 = phi ptr [ %i.cz, %bb.ag ], [ %i.bt, %bb.af ] ; 5 uses
  br i1 %i.ay, label %bb.ah, label %zipStorePrevEntryLengthLarge.exit.i117

bb.ah:                                            ; preds = %.thread155
  %i.db = trunc nuw i32 %.1 to i8
  store i8 %i.db, ptr %.093159, align 1, !tbaa !46
  br label %zipStorePrevEntryLength.exit119

zipStorePrevEntryLengthLarge.exit.i117:           ; preds = %.thread155
  store i8 -2, ptr %.093159, align 1, !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %.093159, i64 1
  store i32 %.1, ptr %i.dc, align 1
  br label %zipStorePrevEntryLength.exit119

zipStorePrevEntryLength.exit119:                  ; preds = %bb.ag, %bb.ah, %zipStorePrevEntryLengthLarge.exit.i117
  %.092160 = phi ptr [ %.092161, %zipStorePrevEntryLengthLarge.exit.i117 ], [ %.092161, %bb.ah ], [ null, %bb.ag ] ; 2 uses
  %.093158 = phi ptr [ %.093159, %zipStorePrevEntryLengthLarge.exit.i117 ], [ %.093159, %bb.ah ], [ null, %bb.ag ]
  %.0.i118 = phi i32 [ 5, %zipStorePrevEntryLengthLarge.exit.i117 ], [ 1, %bb.ah ], [ %i.ax, %bb.ag ]
  %i.dd = zext nneg i32 %.0.i118 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.093158, i64 %i.dd ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not.i113147, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %zipStorePrevEntryLength.exit119
  %i.df = icmp ult i32 %3, 64
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dg = trunc nuw nsw i32 %3 to i8
  store i8 %i.dg, ptr %i.a, align 1, !tbaa !46
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.dh = icmp ult i32 %3, 16384
  br i1 %i.dh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.di = lshr i32 %3, 8
  %i.dj = trunc nuw nsw i32 %i.di to i8
  %i.dk = or disjoint i8 %i.dj, 64
  store i8 %i.dk, ptr %i.a, align 1, !tbaa !46
  %i.dl = trunc i32 %3 to i8
  %.1..1..1..1..1..1..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dl, ptr %.1..1..1..1..1..1..sroa_idx175, align 1, !tbaa !46
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store i8 -128, ptr %i.a, align 1, !tbaa !46
  %6 = lshr i32 %3, 24
  %7 = trunc nuw i32 %6 to i8
  %.1..1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %7, ptr %.1..1..1..1..1..1..sroa_idx, align 1, !tbaa !46
  %8 = lshr i32 %3, 16
  %9 = trunc i32 %8 to i8
  %.2..2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %9, ptr %.2..2..2..2..2..2..sroa_idx, align 1, !tbaa !46
  %10 = lshr i32 %3, 8
  %11 = trunc i32 %10 to i8
  %.3..3..3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %11, ptr %.3..3..3..3..3..3..sroa_idx, align 1, !tbaa !46
  %12 = trunc i32 %3 to i8
  %.4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %12, ptr %.4..4..4..4..4..4..sroa_idx, align 1, !tbaa !46
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.al, %bb.am
  %.0.i121.ph = phi i64 [ 5, %bb.am ], [ 2, %bb.al ], [ 1, %bb.aj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.de, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %.0.i121.ph, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 %.0.i121.ph
  %i.dn = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr align 1 %2, i64 %i.dn, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %zipStorePrevEntryLength.exit119
  store i8 %.0129135145, ptr %i.de, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  call void @zipSaveInteger(ptr noundef nonnull %i.do, i64 noundef %.0137143, i8 noundef zeroext %.0129135145)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dp = getelementptr inbounds nuw i8, ptr %.092160, i64 8 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !50 ; 2 uses
  %.not108 = icmp eq i16 %i.dq, -1
  br i1 %.not108, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = add nuw i16 %i.dq, 1
  store i16 %i.dr, ptr %i.dp, align 2, !tbaa !50
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret ptr %.092160
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistMerge(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #4 !guid !89 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !65     ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !65     ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp eq ptr %i.b, %i.e
  %or.cond78 = or i1 %i.f, %i.g
  br i1 %or.cond78, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i16, ptr %i.j, align 4, !tbaa !50   ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !13
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i16, ptr %i.n, align 4, !tbaa !50   ; 2 uses
  %i.p = add nsw i64 %i.i, -11
  %i.q = add nsw i64 %i.p, %i.m                   ; 3 uses
  %i.r = icmp ult i64 %i.q, 4294967295
  br i1 %i.r, label %bb.f, label %bb.e, !prof !51

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1085) #18
  tail call void @abort() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp ult i16 %i.k, %i.o                 ; 2 uses
  %.75 = select i1 %.not, ptr %i.e, ptr %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !13
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = tail call ptr @zrealloc(ptr noundef nonnull %.75, i64 noundef %i.q) #21 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  %i.aa = add nsw i64 %i.m, -10                   ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 2 %i.ab, i64 %i.aa, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.ac, i64 %i.aa, i1 false)
  %i.ad = add nsw i64 %i.i, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 4 %i.b, i64 %i.ad, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.86 = phi ptr [ %1, %bb.h ], [ %0, %bb.g ]
  %. = phi ptr [ %0, %bb.h ], [ %1, %bb.g ]       ; 2 uses
  %i.ae = trunc nuw i64 %i.q to i32
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !13
  %i.af = tail call i16 @llvm.uadd.sat.i16(i16 %i.k, i16 %i.o)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 %i.af, ptr %i.ag, align 4, !tbaa !50
  %i.ah = add i32 %i.h, -11
  %i.ai = add i32 %i.ah, %i.w
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  %i.al = tail call ptr @__ziplistCascadeUpdate(ptr noundef nonnull %i.x, ptr noundef nonnull %i.ak) ; 2 uses
  %i.am = load ptr, ptr %., align 8, !tbaa !65
  tail call void @zfree(ptr noundef %i.am) #18
  store ptr null, ptr %., align 8, !tbaa !65
  store ptr %i.al, ptr %.86, align 8, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c
  %.068 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %i.al, %.sink.split ]
  ret ptr %.068
}

declare void @zfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistPush(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 !guid !90 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !13
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.c ]
  %i.h = tail call ptr @__ziplistInsert(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %1, i32 noundef %2)
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistIndex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 !guid !93 {
bb.a:
  %2 = alloca %struct.zlentry, align 8            ; 3 uses
  %3 = alloca %struct.zlentry, align 8            ; 5 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !13
  %i.b = zext i32 %i.a to i64                     ; 4 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = xor i32 %1, -1                           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = zext i32 %i.f to i64                     ; 6 uses
  %.ptr67 = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  %i.h = load i8, ptr %.ptr67, align 1, !tbaa !46 ; 2 uses
  switch i8 %i.h, label %bb.c [
    i8 -1, label %.critedge
    i8 -2, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %i.b, -1                     ; 2 uses
  %i.j = add nuw nsw i64 %i.g, 1
  %i.k = icmp slt i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %bb.d, !prof !51

.thread:                                          ; preds = %bb.b
  %i.l = add nsw i64 %i.b, -1                     ; 2 uses
  %i.m = add nuw nsw i64 %i.g, 5
  %i.n = icmp slt i64 %i.m, %i.l
  br i1 %i.n, label %.thread70, label %bb.d, !prof !51

bb.d:                                             ; preds = %.thread, %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1163) #18
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = zext i8 %i.h to i32
  br label %bb.f

.thread70:                                        ; preds = %.thread
  %i.p = getelementptr i8, ptr %.ptr67, i64 1
  %i.q = load i32, ptr %i.p, align 1
  br label %bb.f

bb.f:                                             ; preds = %.thread70, %bb.e
  %i.r = phi i64 [ %i.i, %bb.e ], [ %i.l, %.thread70 ]
  %.0 = phi i32 [ %i.o, %bb.e ], [ %i.q, %.thread70 ] ; 2 uses
end_hunk_1
begin_hunk_2_@ziplistNext:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.n = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.b, ptr noundef nonnull %i.k, ptr noundef %2, i32 noundef 1)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %zipAssertValidEntry.exit, !prof !57

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 707) #18
  tail call void @abort() #19
  unreachable

zipAssertValidEntry.exit:                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %zipAssertValidEntry.exit
  %.0 = phi ptr [ %i.k, %zipAssertValidEntry.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ziplistPrev(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr noundef %1) local_unnamed_addr #4 !guid !95 {
bb.a:
  %2 = alloca %struct.zlentry, align 8            ; 3 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !46      ; 3 uses
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !46
  %i.h = icmp eq i8 %i.g, -1
  %i.i = select i1 %i.h, ptr null, ptr %i.f
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.not = icmp eq i8 %i.a, -2
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i8 %i.a to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %1, i64 1
  %i.n = load i32, ptr %i.m, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.022 = phi i32 [ %i.l, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.022, 0
  br i1 %.not, label %bb.h, label %bb.i, !prof !57

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1227) #18
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = zext i32 %.022 to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %0, align 4, !tbaa !13
  %i.s = zext i32 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.t = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.s, ptr noundef nonnull %i.q, ptr noundef %2, i32 noundef 1)
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.j, label %zipAssertValidEntry.exit, !prof !57

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 707) #18
  tail call void @abort() #19
  unreachable

zipAssertValidEntry.exit:                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %zipAssertValidEntry.exit, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.q, %zipAssertValidEntry.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ziplistGet(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 !guid !96 {
bb.a:
  %4 = alloca %struct.zlentry, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !46
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call fastcc void @zipEntry(ptr noundef nonnull %0, ptr noundef %4)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !61    ; 2 uses
  %.not15 = icmp ugt i8 %i.e, -65
  br i1 %.not15, label %bb.f, label %bb.h

.thread:                                          ; preds = %bb.c
  store ptr null, ptr %1, align 8, !tbaa !65
  call fastcc void @zipEntry(ptr noundef nonnull %0, ptr noundef %4)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.g = load i8, ptr %i.f, align 4, !tbaa !61    ; 2 uses
  %.not1517 = icmp ugt i8 %i.g, -65
  br i1 %.not1517, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56
  store i32 %i.i, ptr %2, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !55
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  store ptr %i.m, ptr %1, align 8, !tbaa !65
  br label %bb.h

bb.f:                                             ; preds = %.thread, %bb.d
  %i.n = phi i8 [ %i.g, %.thread ], [ %i.e, %bb.d ]
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = tail call i64 @zipLoadInteger(ptr noundef nonnull %i.r, i8 noundef zeroext %i.n)
  store i64 %i.s, ptr %3, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.f, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistInsert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 !guid !97 {
bb.a:
  %i.a = tail call ptr @__ziplistInsert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistDelete(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 !guid !98 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = tail call ptr @__ziplistDelete(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store ptr %i.f, ptr %1, align 8, !tbaa !65
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistDeleteRange(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 !guid !99 {
bb.a:
  %i.a = tail call ptr @ziplistIndex(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__ziplistDelete(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistReplace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 !guid !100 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 12 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.zlentry, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call fastcc void @zipEntry(ptr noundef %1, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = add i32 %3, -32
  %or.cond.i = icmp ult i32 %i.c, -31
  br i1 %or.cond.i, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %3 to i64
  %i.e = call i32 @string2ll(ptr noundef %2, i64 noundef %i.d, ptr noundef nonnull %i.b) #18
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %zipStoreEntryEncoding.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !48   ; 12 uses
  %or.cond3.i = icmp ult i64 %i.f, 13
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = add nuw nsw i8 %i.g, -15
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = add i64 %i.f, 128
  %or.cond5.i = icmp ult i64 %i.i, 256
  br i1 %or.cond5.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add i64 %i.f, 32768
  %or.cond7.i = icmp ult i64 %i.j, 65536
  br i1 %or.cond7.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = add i64 %i.f, 8388608
  %or.cond9.i = icmp ult i64 %i.k, 16777216
  br i1 %or.cond9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = add i64 %i.f, 2147483648
  %or.cond11.i = icmp ult i64 %i.l, 4294967296
  %..i = select i1 %or.cond11.i, i8 -48, i8 -32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.031.ph = phi i8 [ -2, %bb.e ], [ %..i, %bb.h ], [ -16, %bb.g ], [ -64, %bb.f ], [ %i.h, %bb.d ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.m = zext i8 %.031.ph to i32
  %i.n = add nsw i32 %i.m, -192                   ; 2 uses
  %i.o = call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 31)
  switch i32 %i.o, label %bb.n [
    i32 31, label %zipStoreEntryEncoding.exit
    i32 0, label %bb.j
    i32 24, label %bb.k
    i32 8, label %bb.l
    i32 16, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br label %zipStoreEntryEncoding.exit

bb.k:                                             ; preds = %bb.i
  br label %zipStoreEntryEncoding.exit

bb.l:                                             ; preds = %bb.i
  br label %zipStoreEntryEncoding.exit

bb.m:                                             ; preds = %bb.i
  br label %zipStoreEntryEncoding.exit

bb.n:                                             ; preds = %bb.i
  %i.p = add nsw i8 %.031.ph, 15
  %or.cond.i16 = icmp ult i8 %i.p, 13
  br i1 %or.cond.i16, label %zipStoreEntryEncoding.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @abort() #19
  unreachable

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.q = icmp ult i32 %3, 64
  br i1 %i.q, label %zipStoreEntryEncoding.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = icmp ult i32 %3, 16384
  %spec.select = select i1 %i.r, i32 2, i32 5
  br label %zipStoreEntryEncoding.exit

zipStoreEntryEncoding.exit:                       ; preds = %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.p, %.thread
  %.not.i1751 = phi i1 [ false, %bb.q ], [ true, %bb.n ], [ false, %bb.p ], [ false, %.thread ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ]
  %.049 = phi i32 [ %3, %bb.q ], [ 0, %bb.n ], [ %3, %bb.p ], [ %3, %.thread ], [ 1, %bb.i ], [ 2, %bb.j ], [ 3, %bb.k ], [ 4, %bb.l ], [ 8, %bb.m ]
  %.0313747 = phi i8 [ 0, %bb.q ], [ %.031.ph, %bb.n ], [ 0, %bb.p ], [ 0, %.thread ], [ %.031.ph, %bb.i ], [ %.031.ph, %bb.j ], [ %.031.ph, %bb.k ], [ %.031.ph, %bb.l ], [ %.031.ph, %bb.m ] ; 2 uses
  %.0304045 = phi i64 [ 123456789, %bb.q ], [ %i.f, %bb.n ], [ 123456789, %bb.p ], [ 123456789, %.thread ], [ %i.f, %bb.i ], [ %i.f, %bb.j ], [ %i.f, %bb.k ], [ %i.f, %bb.l ], [ %i.f, %bb.m ]
  %.025.i = phi i32 [ %spec.select, %bb.q ], [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %.thread ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ]
  %i.s = add i32 %.025.i, %.049
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56
  %i.x = add i32 %i.w, %i.u
  %i.y = icmp eq i32 %i.s, %i.x
  br i1 %i.y, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %zipStoreEntryEncoding.exit
  %i.z = load i32, ptr %4, align 8, !tbaa !59
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not.i1751, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = icmp ult i32 %3, 64
  br i1 %i.ac, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not30.i = icmp eq ptr %1, null
  br i1 %.not30.i, label %zipStoreEntryEncoding.exit21.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = trunc nuw nsw i32 %3 to i8
  store i8 %i.ad, ptr %i.a, align 1, !tbaa !46
  br label %zipStoreEntryEncoding.exit21.thread65

bb.v:                                             ; preds = %bb.s
  %i.ae = icmp ult i32 %3, 16384
  %.not29.i = icmp eq ptr %1, null                ; 2 uses
  br i1 %i.ae, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  br i1 %.not29.i, label %zipStoreEntryEncoding.exit21.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.af = lshr i32 %3, 8
  %i.ag = trunc nuw nsw i32 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, 64
  store i8 %i.ah, ptr %i.a, align 1, !tbaa !46
  %i.ai = trunc i32 %3 to i8
  %.1..1..1..1..1..1..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ai, ptr %.1..1..1..1..1..1..sroa_idx70, align 1, !tbaa !46
  br label %zipStoreEntryEncoding.exit21.thread65

bb.y:                                             ; preds = %bb.v
  br i1 %.not29.i, label %zipStoreEntryEncoding.exit21.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 -128, ptr %i.a, align 1, !tbaa !46
  %5 = lshr i32 %3, 24
  %6 = trunc nuw i32 %5 to i8
  %.1..1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %6, ptr %.1..1..1..1..1..1..sroa_idx, align 1, !tbaa !46
  %7 = lshr i32 %3, 16
  %8 = trunc i32 %7 to i8
  %.2..2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %8, ptr %.2..2..2..2..2..2..sroa_idx, align 1, !tbaa !46
  %9 = lshr i32 %3, 8
  %10 = trunc i32 %9 to i8
  %.3..3..3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %10, ptr %.3..3..3..3..3..3..sroa_idx, align 1, !tbaa !46
  %11 = trunc i32 %3 to i8
  %.4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %11, ptr %.4..4..4..4..4..4..sroa_idx, align 1, !tbaa !46
  br label %zipStoreEntryEncoding.exit21.thread65

bb.aa:                                            ; preds = %bb.r
  %.not27.i = icmp eq ptr %1, null
  br i1 %.not27.i, label %zipStoreEntryEncoding.exit21.thread60, label %zipStoreEntryEncoding.exit21

zipStoreEntryEncoding.exit21.thread65:            ; preds = %bb.u, %bb.x, %bb.z
  %.0.i19.ph = phi i64 [ 5, %bb.z ], [ 2, %bb.x ], [ 1, %bb.u ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %.0.i19.ph, i1 false)
  br label %zipStoreEntryEncoding.exit21.thread

zipStoreEntryEncoding.exit21:                     ; preds = %bb.aa
  store i8 %.0313747, ptr %i.ab, align 1
  br label %zipStoreEntryEncoding.exit21.thread60

zipStoreEntryEncoding.exit21.thread:              ; preds = %bb.y, %bb.w, %bb.t, %zipStoreEntryEncoding.exit21.thread65
  %.025.i20.ph.pn = phi i64 [ %.0.i19.ph, %zipStoreEntryEncoding.exit21.thread65 ], [ 2, %bb.w ], [ 1, %bb.t ], [ 5, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.025.i20.ph.pn
  %i.ak = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %2, i64 %i.ak, i1 false)
  br label %bb.ac

zipStoreEntryEncoding.exit21.thread60:            ; preds = %bb.aa, %zipStoreEntryEncoding.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  call void @zipSaveInteger(ptr noundef nonnull %i.al, i64 noundef %.0304045, i8 noundef zeroext %.0313747)
  br label %bb.ac

bb.ab:                                            ; preds = %zipStoreEntryEncoding.exit
  %i.am = ptrtoint ptr %1 to i64
  %i.an = ptrtoint ptr %0 to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = call noundef ptr @__ziplistDelete(ptr noundef %0, ptr noundef %1, i32 noundef 1) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %i.ar = call noundef ptr @__ziplistInsert(ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %2, i32 noundef %3)
  br label %bb.ac

bb.ac:                                            ; preds = %zipStoreEntryEncoding.exit21.thread, %zipStoreEntryEncoding.exit21.thread60, %bb.ab
  %.013 = phi ptr [ %0, %zipStoreEntryEncoding.exit21.thread ], [ %0, %zipStoreEntryEncoding.exit21.thread60 ], [ %i.ar, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ziplistCompare(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 !guid !101 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.zlentry, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = load i8, ptr %0, align 1, !tbaa !46
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @zipEntry(ptr noundef nonnull %0, ptr noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !61    ; 2 uses
  %.not = icmp ugt i8 %i.e, -65
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56
  %i.h = icmp eq i32 %i.g, %2
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !55
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = zext i32 %2 to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.l, ptr %1, i64 %i.m)
  %i.n = icmp eq i32 %bcmp, 0
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.o = add i32 %2, -32
  %or.cond.i = icmp ult i32 %i.o, -31
  br i1 %or.cond.i, label %zipTryEncoding.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %2 to i64
  %i.q = call i32 @string2ll(ptr noundef %1, i64 noundef %i.p, ptr noundef nonnull %i.a) #18
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %zipTryEncoding.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !55
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = call i64 @zipLoadInteger(ptr noundef nonnull %i.v, i8 noundef zeroext %i.e)
  %i.x = icmp eq i64 %i.w, %i.r
  br label %bb.h

zipTryEncoding.exit:                              ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.h

bb.h:                                             ; preds = %zipTryEncoding.exit, %bb.c, %bb.a, %bb.g, %bb.d
  %.0.shrunk = phi i1 [ false, %bb.c ], [ %i.n, %bb.d ], [ false, %bb.a ], [ %i.x, %bb.g ], [ false, %zipTryEncoding.exit ]
  %.0 = zext i1 %.0.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistFind(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 !guid !103 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.zlentry, align 8            ; 12 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !13
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !46
  %.not72 = icmp eq i8 %i.d, -1
  br i1 %.not72, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.h = zext i32 %3 to i64                       ; 3 uses
  %i.i = add i32 %3, -32
  %or.cond.i = icmp ult i32 %i.i, -31
  br i1 %or.cond.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread.us
  %.02376.us = phi i32 [ %.124.us, %.thread.us ], [ 0, %.lr.ph ] ; 2 uses
  %.02875.us = phi ptr [ %i.y, %.thread.us ], [ %1, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.j = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef nonnull %.02875.us, ptr noundef %5, i32 noundef 1)
  %.not31.us = icmp eq i32 %i.j, 0
  br i1 %.not31.us, label %.split.us, label %bb.b, !prof !57

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = load i32, ptr %5, align 8, !tbaa !59
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.02875.us, i64 %i.l
  %i.n = load i32, ptr %i.e, align 8, !tbaa !63
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 2 uses
  %i.q = icmp eq i32 %.02376.us, 0
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %.02376.us, -1
  br label %.thread.us

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.f, align 4, !tbaa !61
  %.not32.us = icmp ult i8 %i.s, -64
  %i.t = load i32, ptr %i.g, align 4
  %i.u = icmp eq i32 %i.t, %3
  %or.cond = select i1 %.not32.us, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.e, label %.thread.us

bb.e:                                             ; preds = %bb.d
  %bcmp.us = tail call i32 @bcmp(ptr nonnull %i.p, ptr %2, i64 %i.h)
  %i.v = icmp eq i32 %bcmp.us, 0
  br i1 %i.v, label %.thread63, label %.thread.us

.thread.us:                                       ; preds = %bb.d, %bb.e, %bb.c
  %.124.us = phi i32 [ %4, %bb.d ], [ %i.r, %bb.c ], [ %4, %bb.e ]
  %i.w = load i32, ptr %i.g, align 4, !tbaa !56
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.x ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.z = load i8, ptr %i.y, align 1, !tbaa !46
  %.not.us = icmp eq i8 %i.z, -1
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !102

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %.02376 = phi i32 [ %.124, %bb.t ], [ 0, %.lr.ph ] ; 2 uses
  %.02875 = phi ptr [ %i.ay, %bb.t ], [ %1, %.lr.ph ] ; 4 uses
  %.074 = phi i64 [ %.240, %bb.t ], [ 0, %.lr.ph ] ; 6 uses
  %.04373 = phi i8 [ %.346, %bb.t ], [ 0, %.lr.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.aa = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef nonnull %.02875, ptr noundef %5, i32 noundef 1)
  %.not31 = icmp eq i32 %i.aa, 0
  br i1 %.not31, label %.split.us, label %bb.f, !prof !57

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1359) #18
  call void @abort() #19
  unreachable

bb.f:                                             ; preds = %.lr.ph.split
  %i.ab = load i32, ptr %5, align 8, !tbaa !59
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.02875, i64 %i.ac
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !63
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 3 uses
  %i.ah = icmp eq i32 %.02376, 0
  br i1 %i.ah, label %bb.g, label %bb.s
end_hunk_2
