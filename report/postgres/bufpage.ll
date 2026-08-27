Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bufpage?download=true
inline.NumInlined: 49
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.itemIdCompactData = type { i16, i16, i16 }
%struct.PGAlignedBlock = type { [8192 x i8] }
%struct.ItemIdData = type { i32 }

@ignore_checksum_failure = dso_local local_unnamed_addr global i8 0, align 1
@InterruptHoldoffCount = external global i32, align 4
@.str = private unnamed_addr constant [67 x i8] c"page verification failed, calculated checksum %u but expected %u%s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c", buffer will be zeroed\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"bufpage.c\00", align 1
@__func__.PageIsVerified = private unnamed_addr constant [15 x i8] c"PageIsVerified\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"corrupted page pointers: lower = %u, upper = %u, special = %u\00", align 1
@__func__.PageAddItemExtended = private unnamed_addr constant [20 x i8] c"PageAddItemExtended\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"will not overwrite a used ItemId\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"specified item offset is too large\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"can't put more than MaxHeapTuplesPerPage items in a heap page\00", align 1
@__func__.PageRepairFragmentation = private unnamed_addr constant [24 x i8] c"PageRepairFragmentation\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"corrupted line pointer: %u\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"corrupted item lengths: total %zu, available space %u\00", align 1
@__func__.PageIndexTupleDelete = private unnamed_addr constant [21 x i8] c"PageIndexTupleDelete\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"invalid index offnum: %u\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"corrupted line pointer: offset = %u, size = %zu\00", align 1
@__func__.PageIndexMultiDelete = private unnamed_addr constant [21 x i8] c"PageIndexMultiDelete\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"incorrect index offsets supplied\00", align 1
@__func__.PageIndexTupleDeleteNoCompact = private unnamed_addr constant [30 x i8] c"PageIndexTupleDeleteNoCompact\00", align 1
@__func__.PageIndexTupleOverwrite = private unnamed_addr constant [24 x i8] c"PageIndexTupleOverwrite\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"corrupted line pointer: offset = %u, size = %d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PageInit(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %1, 7
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ult i64 %1, 1025
  %or.cond3 = and i1 %i.f, %i.e
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.g = add i64 %1, %i.a
  %i.h = add i64 %i.a, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  %i.i = xor i64 %i.a, -1
  %i.j = add i64 %umax, %i.i
  %i.k = and i64 %i.j, -8
  %i.l = add i64 %i.k, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.l, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.c, %bb.d
  %i.m = add i64 %2, 7
  %i.n = and i64 %i.m, 65528
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 24, ptr %i.p, align 4
  %i.q = sub i64 %1, %i.n
  %i.r = trunc i64 %i.q to i16                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.r, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.r, ptr %i.t, align 8
  %i.u = trunc i64 %1 to i16
  %i.v = or i16 %i.u, 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.v, ptr %i.w, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @PageIsVerified(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %.not45 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not45, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr i8, ptr %0, i64 14         ; 2 uses
  %.val = load i16, ptr %i.a, align 2
  %i.b = icmp eq i16 %.val, 0
  br i1 %i.b, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.d = add i32 %i.c, 1
  store volatile i32 %i.d, ptr @InterruptHoldoffCount, align 4
  %i.e = tail call zeroext i1 @DataChecksumsNeedVerify() #11
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i16 @pg_checksum_page(ptr noundef nonnull %0, i32 noundef %1) #11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i16, ptr %i.g, align 8
  %.not46 = icmp eq i16 %i.f, %i.h                ; 2 uses
  %brmerge = or i1 %.not45, %.not46
  %not..not46 = xor i1 %.not46, true
  %.mux = zext i1 %not..not46 to i8
  br i1 %brmerge, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %3, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.038 = phi i8 [ 1, %bb.f ], [ 0, %bb.d ], [ %.mux, %bb.e ] ; 5 uses
  %.0 = phi i16 [ %i.f, %bb.f ], [ 0, %bb.d ], [ %i.f, %bb.e ] ; 4 uses
  %i.i = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.j = add i32 %i.i, -1
  store volatile i32 %i.j, ptr @InterruptHoldoffCount, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = load i16, ptr %i.k, align 2
  %i.m = icmp ult i16 %i.l, 8
  br i1 %i.m, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i16, ptr %i.n, align 4
  %i.p = load i16, ptr %i.a, align 2              ; 2 uses
  %.not47 = icmp ugt i16 %i.o, %i.p
  br i1 %.not47, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i16, ptr %i.q, align 8              ; 3 uses
  %.not48 = icmp ule i16 %i.p, %i.r
  %i.s = icmp ult i16 %i.r, 8193
  %or.cond53 = and i1 %.not48, %i.s
  br i1 %or.cond53, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.t = zext nneg i16 %i.r to i64                ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 7
  %i.v = and i64 %i.u, 32760
  %i.w = icmp eq i64 %i.v, %i.t                   ; 2 uses
  %.not = xor i1 %i.w, true
  %i.x = trunc nuw i8 %.038 to i1
  %or.cond = or i1 %i.x, %.not
  br i1 %or.cond, label %.thread, label %pg_memory_is_all_zeros.exit

.thread:                                          ; preds = %bb.i, %bb.g, %bb.h, %bb.j, %bb.c
  %.139 = phi i8 [ 0, %bb.c ], [ %.038, %bb.j ], [ %.038, %bb.h ], [ %.038, %bb.g ], [ %.038, %bb.i ]
  %.137 = phi i1 [ false, %bb.c ], [ %i.w, %bb.j ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ]
  %.1 = phi i16 [ 0, %bb.c ], [ %.0, %bb.j ], [ %.0, %bb.h ], [ %.0, %bb.g ], [ %.0, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, -8
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.a, %.thread
  %.4.idx.i = phi i64 [ 0, %.thread ], [ %.4.add.i.2, %.lr.ph.a ] ; 5 uses
  %.4.ptr.i.1.a = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx.i ; 3 uses
  %4 = ptrtoint ptr %.4.ptr.i.1.a to i64
  %5 = and i64 %4, 7
  %.not50.i.1.a = icmp eq i64 %5, 0
  br i1 %.not50.i.1.a, label %.lr.ph.2, label %.lr.ph.3

.lr.ph.2:                                         ; preds = %.lr.ph.6, %.lr.ph.4, %.lr.ph.1
  %.4.idx.i.lcssa = phi i64 [ %.4.idx.i, %.lr.ph.1 ], [ %.4.add.i, %.lr.ph.4 ], [ %.4.add.i.1, %.lr.ph.6 ] ; 2 uses
  %.4.ptr.i.lcssa = phi ptr [ %.4.ptr.i.1.a, %.lr.ph.1 ], [ %.4.ptr.i.4, %.lr.ph.4 ], [ %.4.ptr.i.6, %.lr.ph.6 ] ; 2 uses
  %6 = getelementptr inbounds i8, ptr %i.ab, i64 -56 ; 2 uses
  %7 = icmp ult ptr %.4.ptr.i.lcssa, %6
  br i1 %7, label %.lr.ph.i, label %.preheader51.i

.lr.ph.3:                                         ; preds = %.lr.ph.1
  %i.ac = load i8, ptr %.4.ptr.i.1.a, align 1
  %.not50.i.3 = icmp eq i8 %i.ac, 0
  br i1 %.not50.i.3, label %.lr.ph.4, label %.loopexit

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %.4.add.i = add nuw nsw i64 %.4.idx.i, 1        ; 2 uses
  %.4.ptr.i.4 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.add.i ; 3 uses
  %8 = ptrtoint ptr %.4.ptr.i.4 to i64
  %9 = and i64 %8, 7
  %.not50.i.4 = icmp eq i64 %9, 0
  br i1 %.not50.i.4, label %.lr.ph.2, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %.4.add.i.1 = add nuw nsw i64 %.4.idx.i, 2      ; 3 uses
  %i.ad = load i8, ptr %.4.ptr.i.4, align 1
  %.not50.i.5 = icmp eq i8 %i.ad, 0
  br i1 %.not50.i.5, label %.lr.ph.6, label %.loopexit

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %.4.ptr.i.6 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.add.i.1 ; 3 uses
  %10 = ptrtoint ptr %.4.ptr.i.6 to i64
  %11 = and i64 %10, 7
  %.not50.i.6 = icmp eq i64 %11, 0
  br i1 %.not50.i.6, label %.lr.ph.2, label %.preheader53.i

.preheader53.i:                                   ; preds = %.lr.ph.6
  %12 = icmp samesign eq i64 %.4.add.i.1, 8192
  br i1 %12, label %pg_memory_is_all_zeros.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader53.i
  %.4.add.i.2 = add nuw nsw i64 %.4.idx.i, 3
  %i.ae = load i8, ptr %.4.ptr.i.6, align 1
  %.not50.i = icmp eq i8 %i.ae, 0
  br i1 %.not50.i, label %.lr.ph.1, label %.loopexit, !llvm.loop !4

.preheader51.i:                                   ; preds = %bb.k, %.lr.ph.2
  %.5.idx.lcssa.i = phi i64 [ %.4.idx.i.lcssa, %.lr.ph.2 ], [ %.5.add.i, %bb.k ] ; 3 uses
  %.6.ptr63.i = getelementptr inbounds nuw i8, ptr %0, i64 %.5.idx.lcssa.i ; 2 uses
  %i.af = icmp ult ptr %.6.ptr63.i, %i.ab
  br i1 %i.af, label %.lr.ph66.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.2, %bb.k
  %.5.ptr62.i = phi ptr [ %.5.ptr.i, %bb.k ], [ %.4.ptr.i.lcssa, %.lr.ph.2 ]
  %.5.idx61.i = phi i64 [ %.5.add.i, %bb.k ], [ %.4.idx.i.lcssa, %.lr.ph.2 ]
  %i.ag = load <8 x i64>, ptr %.5.ptr62.i, align 8
  %i.ah = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.ag)
  %.not49.i = icmp eq i64 %i.ah, 0
  br i1 %.not49.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.i
  %.5.add.i = add nuw nsw i64 %.5.idx61.i, 64     ; 3 uses
  %.5.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.5.add.i ; 2 uses
  %i.ai = icmp ult ptr %.5.ptr.i, %6
  br i1 %i.ai, label %.lr.ph.i, label %.preheader51.i, !llvm.loop !6

.preheader.i:                                     ; preds = %bb.l, %.preheader51.i
  %.6.idx.lcssa.i = phi i64 [ %.5.idx.lcssa.i, %.preheader51.i ], [ %.6.add.i, %bb.l ] ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.6.idx.lcssa.i, i64 8192)
  %exitcond73.not.i82 = icmp ugt i64 %.6.idx.lcssa.i, 8191
  br i1 %exitcond73.not.i82, label %pg_memory_is_all_zeros.exit, label %.lr.ph84

.lr.ph66.i:                                       ; preds = %.preheader51.i, %bb.l
  %.6.ptr65.i = phi ptr [ %.6.ptr.i, %bb.l ], [ %.6.ptr63.i, %.preheader51.i ]
  %.6.idx64.i = phi i64 [ %.6.add.i, %bb.l ], [ %.5.idx.lcssa.i, %.preheader51.i ]
  %i.aj = load i64, ptr %.6.ptr65.i, align 8
  %.not48.i = icmp eq i64 %i.aj, 0
  br i1 %.not48.i, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph66.i
  %.6.add.i = add nuw nsw i64 %.6.idx64.i, 8      ; 3 uses
  %.6.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.6.add.i ; 2 uses
  %i.ak = icmp ult ptr %.6.ptr.i, %i.ab
  br i1 %i.ak, label %.lr.ph66.i, label %.preheader.i, !llvm.loop !7

bb.m:                                             ; preds = %.lr.ph84
  %.7.add.i = add i64 %.7.idx.i83, 1              ; 2 uses
  %exitcond73.not.i = icmp eq i64 %.7.add.i, %umax.i
  br i1 %exitcond73.not.i, label %pg_memory_is_all_zeros.exit, label %.lr.ph84, !llvm.loop !8

.lr.ph84:                                         ; preds = %.preheader.i, %bb.m
  %.7.idx.i83 = phi i64 [ %.7.add.i, %bb.m ], [ %.6.idx.lcssa.i, %.preheader.i ] ; 2 uses
  %.7.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.7.idx.i83
  %i.al = load i8, ptr %.7.ptr.i, align 1
  %.not47.i = icmp eq i8 %i.al, 0
  br i1 %.not47.i, label %bb.m, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.3, %.lr.ph.5, %.lr.ph.a, %.lr.ph.i, %.lr.ph66.i, %.lr.ph84
  %i.am = trunc nuw i8 %.139 to i1
  br i1 %i.am, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.loopexit
  %i.an = and i32 %2, 3
  %.not49 = icmp eq i32 %i.an, 0
  br i1 %.not49, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = and i32 %2, 1
  %.not50 = icmp eq i32 %i.ao, 0
  %i.ap = select i1 %.not50, i32 15, i32 19
  %i.aq = tail call zeroext i1 @errstart(i32 noundef %i.ap, ptr noundef null) #11
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.as = zext i16 %.1 to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i16, ptr %i.at, align 8
  %i.av = zext i16 %i.au to i32
  %i.aw = and i32 %2, 8
  %.not51 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not51, ptr @.str.2, ptr @.str.1
  %i.ay = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, i32 noundef %i.as, i32 noundef %i.av, ptr noundef nonnull %i.ax) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 165, ptr noundef nonnull @__func__.PageIsVerified) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.az = and i32 %2, 4
  %.not52 = icmp ne i32 %i.az, 0
  %or.cond55.not = and i1 %.not52, %.137
  br i1 %or.cond55.not, label %pg_memory_is_all_zeros.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  br label %pg_memory_is_all_zeros.exit

pg_memory_is_all_zeros.exit:                      ; preds = %.preheader53.i, %bb.m, %.preheader.i, %bb.q, %bb.j, %bb.r
  %.040 = phi i1 [ true, %bb.j ], [ true, %bb.q ], [ false, %bb.r ], [ true, %.preheader.i ], [ true, %bb.m ], [ true, %.preheader53.i ]
  ret i1 %.040
}

declare zeroext i1 @DataChecksumsNeedVerify() local_unnamed_addr #4

declare zeroext i16 @pg_checksum_page(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errcode(i32 noundef) local_unnamed_addr #4

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #4

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i16 0, 16379) i16 @PageAddItemExtended(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4              ; 4 uses
  %i.c = icmp ult i16 %i.b, 24
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2              ; 3 uses
  %i.f = icmp ugt i16 %i.b, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i16, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ugt i16 %i.e, %i.h
  %i.j = icmp ugt i16 %i.h, 8192
  %or.cond90 = or i1 %i.i, %i.j
  br i1 %or.cond90, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #12 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.m = load i16, ptr %i.a, align 4
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i16, ptr %i.r, align 8
  %i.t = zext i16 %i.s to i32
  %i.u = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, i32 noundef %i.n, i32 noundef %i.q, i32 noundef %i.t) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 227, ptr noundef nonnull @__func__.PageAddItemExtended) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i16 %i.b, 24
  %i.w = zext i16 %i.b to i32                     ; 3 uses
  %i.x = add nuw nsw i32 %i.w, 262120
  %i.y = lshr i32 %i.x, 2
  %i.z = trunc i32 %i.y to i16
  %.0.i = select i1 %i.v, i16 0, i16 %i.z         ; 5 uses
  %narrow = add nuw nsw i16 %.0.i, 1              ; 4 uses
  %i.aa = add i16 %3, -1
  %i.ab = icmp ult i16 %i.aa, 2048
  br i1 %i.ab, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ac = and i32 %4, 1
  %.not85 = icmp eq i32 %i.ac, 0
  br i1 %.not85, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not87 = icmp samesign ugt i16 %3, %.0.i
  br i1 %.not87, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = zext nneg i16 %3 to i64
  %i.ae = getelementptr i8, ptr %0, i64 20
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i32, ptr %i.af, align 4
  %or.cond91 = icmp ult i32 %i.ag, 32768
  br i1 %or.cond91, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #11
  br i1 %i.ah, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 245, ptr noundef nonnull @__func__.PageAddItemExtended) #11
  br label %bb.w

bb.k:                                             ; preds = %bb.f
  %.not86 = icmp samesign ule i16 %3, %.0.i
  br label %.loopexit

bb.l:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %0, i64 10        ; 2 uses
  %.val93 = load i16, ptr %i.aj, align 2          ; 2 uses
  %i.ak = trunc i16 %.val93 to i1
  br i1 %i.ak, label %.preheader, label %.thread94

.preheader:                                       ; preds = %bb.l
  %.not101 = icmp eq i16 %.0.i, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.al = getelementptr i8, ptr %0, i64 20
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %.075102 = phi i16 [ 1, %.lr.ph ], [ %i.ap, %bb.n ] ; 3 uses
  %i.am = zext i16 %.075102 to i64
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %or.cond92 = icmp ult i32 %i.ao, 32768
  br i1 %or.cond92, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = add i16 %.075102, 1                     ; 3 uses
  %.not = icmp ugt i16 %i.ap, %.0.i
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %.075.lcssa = phi i16 [ 1, %.preheader ], [ %i.ap, %bb.n ]
  %i.aq = and i16 %.val93, -2
  store i16 %i.aq, ptr %i.aj, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.h, %._crit_edge, %bb.g
  %.1 = phi i16 [ %3, %bb.h ], [ %3, %bb.g ], [ %.075.lcssa, %._crit_edge ], [ %3, %bb.k ], [ %.075102, %bb.m ] ; 2 uses
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ false, %._crit_edge ], [ %.not86, %bb.k ], [ false, %bb.m ]
  %i.ar = icmp ugt i16 %.1, %narrow
  br i1 %i.ar, label %bb.o, label %.thread94

bb.o:                                             ; preds = %.loopexit
  %i.as = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #11
  br i1 %i.as, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.at = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 302, ptr noundef nonnull @__func__.PageAddItemExtended) #11
  br label %bb.w

.thread94:                                        ; preds = %bb.l, %.loopexit
  %.098 = phi i1 [ %.0, %.loopexit ], [ false, %bb.l ] ; 2 uses
  %.197 = phi i16 [ %.1, %.loopexit ], [ %narrow, %bb.l ] ; 4 uses
  %i.au = zext nneg i16 %.197 to i64              ; 2 uses
  %i.av = zext nneg i16 %narrow to i64
  %i.aw = and i32 %4, 2
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = icmp ugt i16 %.197, 291
  %or.cond = and i1 %i.ax, %i.ay
  br i1 %or.cond, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.thread94
  %i.az = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #11
  br i1 %i.az, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 309, ptr noundef nonnull @__func__.PageAddItemExtended) #11
  br label %bb.w

bb.s:                                             ; preds = %.thread94
  %i.bb = icmp eq i16 %.197, %narrow
  %or.cond4 = or i1 %.098, %i.bb
  %i.bc = add nuw nsw i32 %i.w, 4
  %spec.select99 = select i1 %or.cond4, i32 %i.bc, i32 %i.w ; 2 uses
  %i.bd = zext i16 %i.e to i32
  %i.be = trunc i64 %2 to i32                     ; 2 uses
  %i.bf = add i32 %i.be, 7
  %i.bg = and i32 %i.bf, -8
  %i.bh = sub i32 %i.bd, %i.bg                    ; 4 uses
  %i.bi = icmp sgt i32 %spec.select99, %i.bh
  br i1 %i.bi, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %0, i64 20
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %i.au ; 3 uses
  br i1 %.098, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = sub nsw i64 %i.av, %i.au
  %i.bn = shl nsw i64 %i.bm, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %i.bk, i64 %i.bn, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bo = and i32 %i.bh, 32767
  %i.bp = shl i32 %i.be, 17
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = or disjoint i32 %i.bq, 32768
  store i32 %i.br, ptr %i.bk, align 4
  %i.bs = zext nneg i32 %i.bh to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %1, i64 %2, i1 false)
  %i.bu = trunc i32 %spec.select99 to i16
end_hunk_0
