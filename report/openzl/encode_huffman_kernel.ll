Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_huffman_kernel?download=true
inline.NumInlined: 101
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZS_RankPos = type { i32, i32 }

@ZS_largeHuffmanBuildCTable.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 345, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [89 x i8] c"Check `(const char*)(const void*)huffNodeTable == (const char*)0' failed: Allocation: %s\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/entropy/encode_huffman_kernel.c\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ZS_largeHuffmanBuildCTable\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"(const char*)(const void*)huffNodeTable\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Unconditional failure: Generic: %s\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@ZS_largeHuffmanBuildCTable.__zl_static_error_info.13 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 373, [4 x i8] zeroinitializer }, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ZS_largeHuffmanWriteCTable.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.1, ptr @.str.17, i32 387, [4 x i8] zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [83 x i8] c"Check `(const char*)(const void*)weights == (const char*)0' failed: Allocation: %s\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"ZS_largeHuffmanWriteCTable\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"(const char*)(const void*)weights\00", align 1
@ZS_largeHuffmanWriteCTable.__zl_static_error_info.19 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.17, i32 401, [4 x i8] zeroinitializer }, align 8
@ZS_largeHuffmanWriteCTable.__zl_static_error_info.20 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.17, i32 408, [4 x i8] zeroinitializer }, align 8
@ZS_largeHuffmanEncodeUsingCTable.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.21, i32 449, [4 x i8] zeroinitializer }, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"ZS_largeHuffmanEncodeUsingCTable\00", align 1
@ZS_largeHuffmanEncodeUsingCTable.__zl_static_error_info.22 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.21, i32 458, [4 x i8] zeroinitializer }, align 8
@ZS_largeHuffmanEncodeUsingCTable.__zl_static_error_info.23 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.21, i32 486, [4 x i8] zeroinitializer }, align 8
@ZS_largeHuffmanEncodeUsingCTableX4.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.1, ptr @.str.24, i32 507, [4 x i8] zeroinitializer }, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"ZS_largeHuffmanEncodeUsingCTableX4\00", align 1
@ZS_largeHuffmanEncode.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.25, i32 546, [4 x i8] zeroinitializer }, align 8
@.str.25 = private unnamed_addr constant [22 x i8] c"ZS_largeHuffmanEncode\00", align 1
@ZS_largeHuffmanEncode.__zl_static_error_info.26 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.27, ptr @.str.1, ptr @.str.25, i32 554, [4 x i8] zeroinitializer }, align 8
@.str.27 = private unnamed_addr constant [85 x i8] c"Check `(const char*)(const void*)histogram == (const char*)0' failed: Allocation: %s\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"(const char*)(const void*)histogram\00", align 1
@ZS_largeHuffmanEncode.__zl_static_error_info.29 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.25, i32 577, [4 x i8] zeroinitializer }, align 8
@ZS_largeHuffmanEncode.__zl_static_error_info.30 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.1, ptr @.str.25, i32 589, [4 x i8] zeroinitializer }, align 8
@.str.31 = private unnamed_addr constant [38 x i8] c"Unconditional failure: Allocation: %s\00", align 1
@ZS_largeHuffmanBuildCTableFromTree.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.1, ptr @.str.33, i32 302, [4 x i8] zeroinitializer }, align 8
@.str.32 = private unnamed_addr constant [85 x i8] c"Check `(const char*)(const void*)nbPerRank == (const char*)0' failed: Allocation: %s\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"ZS_largeHuffmanBuildCTableFromTree\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"(const char*)(const void*)nbPerRank\00", align 1
@ZS_largeHuffmanBuildCTableFromTree.__zl_static_error_info.35 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.1, ptr @.str.33, i32 306, [4 x i8] zeroinitializer }, align 8
@ZS_largeHuffmanUncompressed.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.36, i32 519, [4 x i8] zeroinitializer }, align 8
@.str.36 = private unnamed_addr constant [28 x i8] c"ZS_largeHuffmanUncompressed\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_largeHuffmanBuildCTable(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 7 uses
  %i.a = alloca [22 x i32], align 16              ; 12 uses
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %6 = alloca [32 x %struct.ZS_RankPos], align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #13 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.d = zext i16 %2 to i32                       ; 4 uses
  %i.e = shl nuw nsw i32 %i.d, 1                  ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 12) #14 ; 11 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.b, !prof !18

.thread:                                          ; preds = %bb.a
  %i.i = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanBuildCTable.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 345, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #12 ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.i, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.j, ptr %i.k, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  %i.l = ptrtoint ptr %i.k to i64
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 48 uses
  %i.n = add nuw nsw i32 %i.d, 1                  ; 8 uses
  %i.o = zext nneg i32 %i.n to i64                ; 8 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.p = icmp ult i16 %2, 3
  br i1 %i.p, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.o, 131068
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv.i ; 2 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !22
  %i.t = trunc i64 %indvars.iv.i to i16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 %i.t, ptr %i.u, align 4, !tbaa !54
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv.next.i ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !22
  %i.y = trunc i64 %indvars.iv.next.i to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 %i.y, ptr %i.z, align 4, !tbaa !54
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv.next.i.1 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !22
  %i.ad = trunc i64 %indvars.iv.next.i.1 to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 %i.ad, ptr %i.ae, align 4, !tbaa !54
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !19
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv.next.i.2 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !22
  %i.ai = trunc i64 %indvars.iv.next.i.2 to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i16 %i.ai, ptr %i.aj, align 4, !tbaa !54
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZS_largeHuffmanSort.exit.unr-lcssa, label %bb.c, !llvm.loop !32

ZS_largeHuffmanSort.exit.unr-lcssa:               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZS_largeHuffmanSort.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ZS_largeHuffmanSort.exit.unr-lcssa, %bb.b
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.3, %ZS_largeHuffmanSort.exit.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv.i.epil ; 2 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !22
  %i.an = trunc i64 %indvars.iv.i.epil to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i16 %i.an, ptr %i.ao, align 4, !tbaa !54
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZS_largeHuffmanSort.exit, label %bb.d, !llvm.loop !33

ZS_largeHuffmanSort.exit:                         ; preds = %bb.d, %ZS_largeHuffmanSort.exit.unr-lcssa
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.o ; 2 uses
  call fastcc void @ZS_largeHuffmanSort_impl(ptr noundef nonnull %i.m, i32 noundef %i.n, i32 noundef 31, ptr noundef nonnull %i.ap, ptr noundef nonnull %6)
  %i.aq = zext i16 %2 to i64                      ; 7 uses
  %i.ar = or disjoint i32 %i.e, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %ZS_largeHuffmanSort.exit
  %indvars.iv128.i = phi i32 [ %indvars.iv.next129.i, %bb.e ], [ %i.n, %ZS_largeHuffmanSort.exit ] ; 4 uses
  %indvars.iv120.i = phi i32 [ %indvars.iv.next121.i, %bb.e ], [ %i.e, %ZS_largeHuffmanSort.exit ] ; 2 uses
  %indvars.iv112.i = phi i32 [ %indvars.iv.next113.i, %bb.e ], [ %i.ar, %ZS_largeHuffmanSort.exit ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i46, %bb.e ], [ %i.aq, %ZS_largeHuffmanSort.exit ] ; 7 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %i.m, i64 %indvars.iv.i45 ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %indvars.iv.next.i46 = add nsw i64 %indvars.iv.i45, -1
  %indvars.iv.next113.i = add i32 %indvars.iv112.i, -1
  %indvars.iv.next121.i = add i32 %indvars.iv120.i, -1
  %indvars.iv.next129.i = add nsw i32 %indvars.iv128.i, -1
  br i1 %i.au, label %bb.e, label %bb.f, !llvm.loop !34

bb.f:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %3, 0
  %spec.store.select = select i1 %i.av, i32 20, i32 %3
  %i.aw = icmp eq i16 %2, 0
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.aq, i1 true)
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = sub nuw nsw i32 67, %i.ay
  %i.ba = select i1 %i.aw, i32 3, i32 %i.az
  %i.bb = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %i.ba) ; 14 uses
  %i.bc = trunc nsw i64 %indvars.iv.i45 to i32    ; 2 uses
  %i.bd = add i32 %i.bc, %i.d                     ; 3 uses
  %i.be = getelementptr i8, ptr %i.as, i64 -12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22
  %i.bg = add i32 %i.bf, %i.at
  store i32 %i.bg, ptr %i.ap, align 4, !tbaa !22
  %i.bh = getelementptr i8, ptr %i.as, i64 -8
  store i32 %i.n, ptr %i.bh, align 4, !tbaa !55
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.n, ptr %i.bi, align 4, !tbaa !55
  %i.bj = add nuw nsw i32 %i.d, 2
  %i.bk = add nsw i32 %i.bc, -2
  %.not90.i = icmp sgt i32 %i.bj, %i.bd
  br i1 %.not90.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

._crit_edge.thread.i:                             ; preds = %bb.f
  store i32 -2147483648, ptr %i.h, align 4, !tbaa !22
  br label %._crit_edge98.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.bl = add nuw nsw i64 %i.aq, 2                ; 3 uses
  %wide.trip.count.i47 = zext i32 %indvars.iv112.i to i64 ; 4 uses
  %reass.sub = sub nsw i64 %wide.trip.count.i47, %i.aq
  %reass.sub165 = sub nsw i64 %wide.trip.count.i47, %i.aq
  %i.bm = add nsw i64 %reass.sub165, -3
  %i.bn = and i64 %reass.sub, 3                   ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %i.bn, 2
  br i1 %lcmp.mod134.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv109.i.prol = phi i64 [ %indvars.iv.next110.i.prol, %.lr.ph.i.prol ], [ %i.bl, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv109.i.prol
  store i32 1073741824, ptr %i.bo, align 4, !tbaa !22
  %indvars.iv.next110.i.prol = add nuw nsw i64 %indvars.iv109.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.bp = xor i64 %i.bn, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.bp, 2
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !35

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv109.i.unr = phi i64 [ %i.bl, %.lr.ph.preheader.i ], [ %indvars.iv.next110.i.prol, %.lr.ph.i.prol ]
  %i.bq = icmp ult i64 %i.bm, 3
  br i1 %i.bq, label %.lr.ph97.preheader.i, label %.lr.ph.i

.lr.ph97.preheader.i:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  store i32 -2147483648, ptr %i.h, align 4, !tbaa !22
  br label %.lr.ph97.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i.3, %.lr.ph.i ], [ %indvars.iv109.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv109.i
  store i32 1073741824, ptr %i.br, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv109.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 1073741824, ptr %i.bt, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv109.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i32 1073741824, ptr %i.bv, align 4, !tbaa !22
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv109.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  store i32 1073741824, ptr %i.bx, align 4, !tbaa !22
end_hunk_0
begin_hunk_1_@ZS_largeHuffmanWriteCTable:bb.a
.preheader:                                       ; preds = %bb.a
  %i.f = add nsw i32 %3, 1                        ; 2 uses
  %min.iters.check = icmp ult i16 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader
  %i.g = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.h = and i64 %i.g, 7                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 8, i64 %i.h
  %n.vec = sub nsw i64 %i.g, %i.j                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  %wide.vec = load <8 x i16>, ptr %i.m, align 2, !tbaa !27
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.vec51 = load <8 x i16>, ptr %i.n, align 2, !tbaa !27
  %strided.vec52 = shufflevector <8 x i16> %wide.vec51, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.o = icmp eq <4 x i16> %strided.vec, zeroinitializer
  %i.p = icmp eq <4 x i16> %strided.vec52, zeroinitializer
  %i.q = zext <4 x i16> %strided.vec to <4 x i32>
  %i.r = zext <4 x i16> %strided.vec52 to <4 x i32>
  %i.s = sub <4 x i32> %broadcast.splat, %i.q
  %i.t = sub <4 x i32> %broadcast.splat, %i.r
  %i.u = trunc <4 x i32> %i.s to <4 x i8>
  %i.v = trunc <4 x i32> %i.t to <4 x i8>
  %i.w = select <4 x i1> %i.o, <4 x i8> zeroinitializer, <4 x i8> %i.u
  %i.x = select <4 x i1> %i.p, <4 x i8> zeroinitializer, <4 x i8> %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store <4 x i8> %i.w, ptr %i.y, align 1, !tbaa !28
  store <4 x i8> %i.x, ptr %i.z, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %scalar.ph.preheader, label %vector.body, !llvm.loop !59

.thread:                                          ; preds = %bb.a
  %i.ab = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanWriteCTable.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef 387, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #12 ; 2 uses
  %i.ac = extractvalue { i32, ptr } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { i32, ptr } %i.ab, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ac, ptr %i.ad, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  %i.ae = ptrtoint ptr %i.ad to i64
  br label %bb.f

bb.b:                                             ; preds = %scalar.ph
  %i.af = getelementptr i8, ptr %0, i64 8         ; 5 uses
  %.val = load ptr, ptr %i.af, align 8, !tbaa !30 ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 16
  %.val43 = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ah = ptrtoint ptr %.val43 to i64
  %i.ai = ptrtoint ptr %.val to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 7
  br i1 %i.ak, label %bb.c, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !27 ; 2 uses
  %i.ao = icmp eq i16 %i.an, 0
  %i.ap = zext i16 %i.an to i32
  %i.aq = sub i32 %i.f, %i.ap
  %i.ar = trunc i32 %i.aq to i8
  %.sink = select i1 %i.ao, i8 0, i8 %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %.sink, ptr %i.as, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.c
  br i1 %exitcond.not, label %bb.b, label %scalar.ph, !llvm.loop !60

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #12
  %i.at = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanWriteCTable.__zl_static_error_info.19, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef 401, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.au = extractvalue { i32, ptr } %i.at, 0      ; 2 uses
  %i.av = extractvalue { i32, ptr } %i.at, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.au, ptr %i.av, ptr noundef nonnull @.str.12) #12
  %i.aw = ptrtoint ptr %i.av to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ax = trunc i32 %3 to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store ptr %i.ay, ptr %i.af, align 8, !tbaa !30
  store i8 %i.ax, ptr %.val, align 1, !tbaa !28
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !30
  store i16 %2, ptr %.val.i, align 1
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store ptr %i.ba, ptr %i.af, align 8, !tbaa !30
  %i.bb = tail call { i32, i64 } @ZS_Entropy_encodeFse(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 1, i8 noundef zeroext 2) #12
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %.not46 = icmp eq i32 %i.bc, 0
  tail call void @free(ptr noundef nonnull %i.e) #12
  br i1 %.not46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanWriteCTable.__zl_static_error_info.20, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef 408, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.be = extractvalue { i32, ptr } %i.bd, 0      ; 2 uses
  %i.bf = extractvalue { i32, ptr } %i.bd, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.be, ptr %i.bf, ptr noundef nonnull @.str.12) #12
  %i.bg = ptrtoint ptr %i.bf to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.thread, %bb.e, %bb.c
  %.sroa.036.1 = phi i32 [ %i.au, %bb.c ], [ %i.be, %bb.e ], [ %i.ac, %.thread ], [ 0, %bb.d ]
  %.sroa.8.1 = phi i64 [ %i.aw, %bb.c ], [ %i.bg, %bb.e ], [ %i.ae, %.thread ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.036.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare { i32, i64 } @ZS_Entropy_encodeFse(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #13
  store ptr %i.b, ptr %5, align 8, !tbaa !17
  %i.c = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %.val66 = load ptr, ptr %i.c, align 8, !tbaa !30 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val67 = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.e = ptrtoint ptr %.val67 to i64
  %i.f = ptrtoint ptr %.val66 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanEncodeUsingCTable.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 449, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.i, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.j, ptr %i.k, ptr noundef nonnull @.str.12) #12
  %i.l = ptrtoint ptr %i.k to i64
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.m = trunc i64 %2 to i32
  store i32 %i.m, ptr %.val66, align 1
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 10 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !30
  %.val65 = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.q = ptrtoint ptr %.val65 to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 15 uses
  %i.v = icmp ugt i64 %i.s, 8
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanEncodeUsingCTable.__zl_static_error_info.22, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 458, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.x = extractvalue { i32, ptr } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.w, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.x, ptr %i.y, ptr noundef nonnull @.str.12) #12
  %i.z = ptrtoint ptr %i.y to i64
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp slt i32 %4, 15
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = add i64 %2, -1                          ; 2 uses
  %i.ac = icmp ult i64 %2, 5
  br i1 %i.ac, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0.i58162 = phi i64 [ %i.cj, %.preheader ], [ %i.ab, %bb.f ] ; 5 uses
  %.sroa.0.11161 = phi i64 [ %i.ci, %.preheader ], [ 0, %bb.f ]
  %.sroa.29.11160 = phi i32 [ %i.cg, %.preheader ], [ 0, %bb.f ] ; 2 uses
  %.sroa.58.9159 = phi ptr [ %spec.store.select.i, %.preheader ], [ %i.p, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i58162
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !25
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.af ; 2 uses
  %.sroa.03.0.copyload.i61 = load i16, ptr %i.ag, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.sroa.44.0.copyload.i63 = load i16, ptr %.sroa.44.0..sroa_idx.i62, align 2, !tbaa !25
  %i.ah = zext i16 %.sroa.44.0.copyload.i63 to i32 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.ah
  %6 = xor i32 %notmask.i, -1
  %i.ai = zext i16 %.sroa.03.0.copyload.i61 to i32
  %i.aj = and i32 %6, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = zext nneg i32 %.sroa.29.11160 to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.sroa.0.11161
  %i.ao = add nuw nsw i32 %.sroa.29.11160, %i.ah  ; 2 uses
  %i.ap = getelementptr [2 x i8], ptr %1, i64 %.0.i58162
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !25
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.as ; 2 uses
  %.sroa.03.0.copyload.i61.1 = load i16, ptr %i.at, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i62.1 = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %.sroa.44.0.copyload.i63.1 = load i16, ptr %.sroa.44.0..sroa_idx.i62.1, align 2, !tbaa !25
  %i.au = zext i16 %.sroa.44.0.copyload.i63.1 to i32 ; 2 uses
  %notmask.i.1 = shl nsw i32 -1, %i.au
  %7 = xor i32 %notmask.i.1, -1
  %i.av = zext i16 %.sroa.03.0.copyload.i61.1 to i32
  %i.aw = and i32 %7, %i.av
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = zext nneg i32 %i.ao to i64
  %i.az = shl i64 %i.ax, %i.ay
  %i.ba = or i64 %i.az, %i.an
  %i.bb = add nuw nsw i32 %i.ao, %i.au            ; 2 uses
  %i.bc = getelementptr [2 x i8], ptr %1, i64 %.0.i58162
  %i.bd = getelementptr i8, ptr %i.bc, i64 -4
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !25
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bf ; 2 uses
  %.sroa.03.0.copyload.i61.2 = load i16, ptr %i.bg, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i62.2 = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %.sroa.44.0.copyload.i63.2 = load i16, ptr %.sroa.44.0..sroa_idx.i62.2, align 2, !tbaa !25
  %i.bh = zext i16 %.sroa.44.0.copyload.i63.2 to i32 ; 2 uses
  %notmask.i.2 = shl nsw i32 -1, %i.bh
  %8 = xor i32 %notmask.i.2, -1
  %i.bi = zext i16 %.sroa.03.0.copyload.i61.2 to i32
  %i.bj = and i32 %8, %i.bi
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = zext nneg i32 %i.bb to i64
  %i.bm = shl i64 %i.bk, %i.bl
  %i.bn = or i64 %i.bm, %i.ba
  %i.bo = add nuw nsw i32 %i.bb, %i.bh            ; 2 uses
  %i.bp = getelementptr [2 x i8], ptr %1, i64 %.0.i58162
  %i.bq = getelementptr i8, ptr %i.bp, i64 -6
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !25
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bs ; 2 uses
  %.sroa.03.0.copyload.i61.3 = load i16, ptr %i.bt, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i62.3 = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %.sroa.44.0.copyload.i63.3 = load i16, ptr %.sroa.44.0..sroa_idx.i62.3, align 2, !tbaa !25
  %i.bu = zext i16 %.sroa.44.0.copyload.i63.3 to i32 ; 2 uses
  %notmask.i.3 = shl nsw i32 -1, %i.bu
  %9 = xor i32 %notmask.i.3, -1
  %i.bv = zext i16 %.sroa.03.0.copyload.i61.3 to i32
  %i.bw = and i32 %9, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = zext nneg i32 %i.bo to i64
  %i.bz = shl i64 %i.bx, %i.by
  %i.ca = or i64 %i.bz, %i.bn                     ; 2 uses
  %i.cb = add nuw nsw i32 %i.bo, %i.bu            ; 2 uses
  %i.cc = lshr i32 %i.cb, 3
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  store i64 %i.ca, ptr %.sroa.58.9159, align 1, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.58.9159, i64 %i.cd ; 2 uses
  %i.cf = icmp ugt ptr %i.ce, %i.u
  %spec.store.select.i = select i1 %i.cf, ptr %i.u, ptr %i.ce ; 2 uses
  %i.cg = and i32 %i.cb, 7                        ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = lshr i64 %i.ca, %i.ch                   ; 2 uses
  %i.cj = add i64 %.0.i58162, -4                  ; 3 uses
  %.not.i59 = icmp ult i64 %i.cj, 4
  br i1 %.not.i59, label %.loopexit, label %.preheader, !llvm.loop !63

.loopexit:                                        ; preds = %.preheader, %bb.f
  %.sroa.58.7 = phi ptr [ %i.p, %bb.f ], [ %spec.store.select.i, %.preheader ]
  %.sroa.29.9 = phi i32 [ 0, %bb.f ], [ %i.cg, %.preheader ]
  %.sroa.0.9 = phi i64 [ 0, %bb.f ], [ %i.ci, %.preheader ]
  %.1.i52 = phi i64 [ %i.ab, %bb.f ], [ %i.cj, %.preheader ] ; 2 uses
  %i.ck = add nsw i64 %.1.i52, 1
  %umax199 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.g
  %.027.i53170 = phi i64 [ 0, %.loopexit ], [ %i.df, %bb.g ] ; 2 uses
  %.sroa.0.10169 = phi i64 [ %.sroa.0.9, %.loopexit ], [ %i.de, %bb.g ]
  %.sroa.29.10168 = phi i32 [ %.sroa.29.9, %.loopexit ], [ %i.dc, %bb.g ] ; 2 uses
  %.sroa.58.8167 = phi ptr [ %.sroa.58.7, %.loopexit ], [ %spec.store.select.i70, %bb.g ] ; 2 uses
  %i.cl = sub nuw i64 %.1.i52, %.027.i53170
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !25
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.co ; 2 uses
  %.sroa.0.0.copyload.i55 = load i16, ptr %i.cp, align 2, !tbaa !25
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %.sroa.4.0.copyload.i57 = load i16, ptr %.sroa.4.0..sroa_idx.i56, align 2, !tbaa !25
  %i.cq = zext i16 %.sroa.4.0.copyload.i57 to i32 ; 2 uses
  %notmask.i70 = shl nsw i32 -1, %i.cq
  %10 = xor i32 %notmask.i70, -1
  %i.cr = zext i16 %.sroa.0.0.copyload.i55 to i32
  %i.cs = and i32 %10, %i.cr
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = zext nneg i32 %.sroa.29.10168 to i64
  %i.cv = shl nuw nsw i64 %i.ct, %i.cu
  %i.cw = or i64 %i.cv, %.sroa.0.10169            ; 2 uses
  %i.cx = add nuw nsw i32 %.sroa.29.10168, %i.cq  ; 2 uses
  %i.cy = lshr i32 %i.cx, 3
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  store i64 %i.cw, ptr %.sroa.58.8167, align 1, !tbaa !67
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.58.8167, i64 %i.cz ; 2 uses
  %i.db = icmp ugt ptr %i.da, %i.u
  %spec.store.select.i70 = select i1 %i.db, ptr %i.u, ptr %i.da ; 2 uses
  %i.dc = and i32 %i.cx, 7                        ; 2 uses
  %i.dd = shl nuw nsw i64 %i.cz, 3
  %i.de = lshr i64 %i.cw, %i.dd                   ; 2 uses
  %i.df = add nuw i64 %.027.i53170, 1             ; 2 uses
  %exitcond200 = icmp eq i64 %i.df, %umax199
  br i1 %exitcond200, label %ZS_largeHuffmanEncodeUsingCTable_body.exit64, label %bb.g, !llvm.loop !64

bb.h:                                             ; preds = %bb.e
  %i.dg = icmp samesign ult i32 %4, 19
  %i.dh = add i64 %2, -1                          ; 4 uses
  br i1 %i.dg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.di = icmp ult i64 %2, 4
  br i1 %i.di, label %.loopexit119, label %.preheader117

.preheader117:                                    ; preds = %bb.i, %.preheader117
  %.0.i45146 = phi i64 [ %i.fc, %.preheader117 ], [ %i.dh, %bb.i ] ; 4 uses
  %.sroa.0.7145 = phi i64 [ %i.fb, %.preheader117 ], [ 0, %bb.i ]
  %.sroa.29.7144 = phi i32 [ %i.ez, %.preheader117 ], [ 0, %bb.i ] ; 2 uses
  %.sroa.58.6143 = phi ptr [ %spec.store.select.i71, %.preheader117 ], [ %i.p, %bb.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i45146
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !25
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dl ; 2 uses
  %.sroa.03.0.copyload.i48 = load i16, ptr %i.dm, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %.sroa.44.0.copyload.i50 = load i16, ptr %.sroa.44.0..sroa_idx.i49, align 2, !tbaa !25
  %i.dn = zext i16 %.sroa.44.0.copyload.i50 to i32 ; 2 uses
  %notmask.i73 = shl nsw i32 -1, %i.dn
  %11 = xor i32 %notmask.i73, -1
  %i.do = zext i16 %.sroa.03.0.copyload.i48 to i32
  %i.dp = and i32 %11, %i.do
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = zext nneg i32 %.sroa.29.7144 to i64
  %i.ds = shl nuw nsw i64 %i.dq, %i.dr
  %i.dt = or i64 %i.ds, %.sroa.0.7145
  %i.du = add nuw nsw i32 %.sroa.29.7144, %i.dn   ; 2 uses
  %i.dv = getelementptr [2 x i8], ptr %1, i64 %.0.i45146
  %i.dw = getelementptr i8, ptr %i.dv, i64 -2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !25
  %i.dy = zext i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dy ; 2 uses
  %.sroa.03.0.copyload.i48.1 = load i16, ptr %i.dz, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i49.1 = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %.sroa.44.0.copyload.i50.1 = load i16, ptr %.sroa.44.0..sroa_idx.i49.1, align 2, !tbaa !25
  %i.ea = zext i16 %.sroa.44.0.copyload.i50.1 to i32 ; 2 uses
  %notmask.i73.1 = shl nsw i32 -1, %i.ea
  %12 = xor i32 %notmask.i73.1, -1
  %i.eb = zext i16 %.sroa.03.0.copyload.i48.1 to i32
  %i.ec = and i32 %12, %i.eb
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = zext nneg i32 %i.du to i64
  %i.ef = shl i64 %i.ed, %i.ee
  %i.eg = or i64 %i.ef, %i.dt
  %i.eh = add nuw nsw i32 %i.du, %i.ea            ; 2 uses
  %i.ei = getelementptr [2 x i8], ptr %1, i64 %.0.i45146
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !25
  %i.el = zext i16 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.el ; 2 uses
  %.sroa.03.0.copyload.i48.2 = load i16, ptr %i.em, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i49.2 = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %.sroa.44.0.copyload.i50.2 = load i16, ptr %.sroa.44.0..sroa_idx.i49.2, align 2, !tbaa !25
  %i.en = zext i16 %.sroa.44.0.copyload.i50.2 to i32 ; 2 uses
  %notmask.i73.2 = shl nsw i32 -1, %i.en
  %13 = xor i32 %notmask.i73.2, -1
  %i.eo = zext i16 %.sroa.03.0.copyload.i48.2 to i32
  %i.ep = and i32 %13, %i.eo
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = zext nneg i32 %i.eh to i64
  %i.es = shl i64 %i.eq, %i.er
  %i.et = or i64 %i.es, %i.eg                     ; 2 uses
  %i.eu = add nuw nsw i32 %i.eh, %i.en            ; 2 uses
  %i.ev = lshr i32 %i.eu, 3
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  store i64 %i.et, ptr %.sroa.58.6143, align 1, !tbaa !67
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.58.6143, i64 %i.ew ; 2 uses
  %i.ey = icmp ugt ptr %i.ex, %i.u
  %spec.store.select.i71 = select i1 %i.ey, ptr %i.u, ptr %i.ex ; 2 uses
  %i.ez = and i32 %i.eu, 7                        ; 2 uses
  %i.fa = shl nuw nsw i64 %i.ew, 3
  %i.fb = lshr i64 %i.et, %i.fa                   ; 2 uses
  %i.fc = add i64 %.0.i45146, -3                  ; 3 uses
  %.not.i46 = icmp ult i64 %i.fc, 3
  br i1 %.not.i46, label %.loopexit119, label %.preheader117, !llvm.loop !63

.loopexit119:                                     ; preds = %.preheader117, %bb.i
  %.sroa.58.4 = phi ptr [ %i.p, %bb.i ], [ %spec.store.select.i71, %.preheader117 ]
  %.sroa.29.5 = phi i32 [ 0, %bb.i ], [ %i.ez, %.preheader117 ]
  %.sroa.0.5 = phi i64 [ 0, %bb.i ], [ %i.fb, %.preheader117 ]
  %.1.i39 = phi i64 [ %i.dh, %bb.i ], [ %i.fc, %.preheader117 ] ; 2 uses
  %i.fd = add nsw i64 %.1.i39, 1
  %umax196 = tail call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  br label %bb.j

bb.j:                                             ; preds = %.loopexit119, %bb.j
  %.027.i40154 = phi i64 [ 0, %.loopexit119 ], [ %i.fy, %bb.j ] ; 2 uses
  %.sroa.0.6153 = phi i64 [ %.sroa.0.5, %.loopexit119 ], [ %i.fx, %bb.j ]
  %.sroa.29.6152 = phi i32 [ %.sroa.29.5, %.loopexit119 ], [ %i.fv, %bb.j ] ; 2 uses
  %.sroa.58.5151 = phi ptr [ %.sroa.58.4, %.loopexit119 ], [ %spec.store.select.i72, %bb.j ] ; 2 uses
  %i.fe = sub nuw i64 %.1.i39, %.027.i40154
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !25
  %i.fh = zext i16 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fh ; 2 uses
  %.sroa.0.0.copyload.i42 = load i16, ptr %i.fi, align 2, !tbaa !25
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %.sroa.4.0.copyload.i44 = load i16, ptr %.sroa.4.0..sroa_idx.i43, align 2, !tbaa !25
  %i.fj = zext i16 %.sroa.4.0.copyload.i44 to i32 ; 2 uses
  %notmask.i74 = shl nsw i32 -1, %i.fj
  %14 = xor i32 %notmask.i74, -1
  %i.fk = zext i16 %.sroa.0.0.copyload.i42 to i32
  %i.fl = and i32 %14, %i.fk
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = zext nneg i32 %.sroa.29.6152 to i64
  %i.fo = shl nuw nsw i64 %i.fm, %i.fn
  %i.fp = or i64 %i.fo, %.sroa.0.6153             ; 2 uses
  %i.fq = add nuw nsw i32 %.sroa.29.6152, %i.fj   ; 2 uses
  %i.fr = lshr i32 %i.fq, 3
  %i.fs = zext nneg i32 %i.fr to i64              ; 2 uses
  store i64 %i.fp, ptr %.sroa.58.5151, align 1, !tbaa !67
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.58.5151, i64 %i.fs ; 2 uses
  %i.fu = icmp ugt ptr %i.ft, %i.u
  %spec.store.select.i72 = select i1 %i.fu, ptr %i.u, ptr %i.ft ; 2 uses
  %i.fv = and i32 %i.fq, 7                        ; 2 uses
  %i.fw = shl nuw nsw i64 %i.fs, 3
  %i.fx = lshr i64 %i.fp, %i.fw                   ; 2 uses
  %i.fy = add nuw i64 %.027.i40154, 1             ; 2 uses
  %exitcond197 = icmp eq i64 %i.fy, %umax196
  br i1 %exitcond197, label %ZS_largeHuffmanEncodeUsingCTable_body.exit64, label %bb.j, !llvm.loop !64

bb.k:                                             ; preds = %bb.h
  %i.fz = icmp ult i64 %2, 3
  br i1 %i.fz, label %.loopexit123, label %.preheader121

.preheader121:                                    ; preds = %bb.k, %.preheader121
  %.0.i131 = phi i64 [ %i.hg, %.preheader121 ], [ %i.dh, %bb.k ] ; 3 uses
  %.sroa.0.3130 = phi i64 [ %i.hf, %.preheader121 ], [ 0, %bb.k ]
  %.sroa.29.3129 = phi i32 [ %i.hd, %.preheader121 ], [ 0, %bb.k ] ; 2 uses
  %.sroa.58.3128 = phi ptr [ %spec.store.select.i73, %.preheader121 ], [ %i.p, %bb.k ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i131
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !25
  %i.gc = zext i16 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gc ; 2 uses
  %.sroa.03.0.copyload.i = load i16, ptr %i.gd, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %.sroa.44.0.copyload.i = load i16, ptr %.sroa.44.0..sroa_idx.i, align 2, !tbaa !25
  %i.ge = zext i16 %.sroa.44.0.copyload.i to i32  ; 2 uses
  %notmask.i77 = shl nsw i32 -1, %i.ge
  %15 = xor i32 %notmask.i77, -1
  %i.gf = zext i16 %.sroa.03.0.copyload.i to i32
  %i.gg = and i32 %15, %i.gf
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = zext nneg i32 %.sroa.29.3129 to i64
  %i.gj = shl nuw nsw i64 %i.gh, %i.gi
  %i.gk = or i64 %i.gj, %.sroa.0.3130
  %i.gl = add nuw nsw i32 %.sroa.29.3129, %i.ge   ; 2 uses
  %i.gm = getelementptr [2 x i8], ptr %1, i64 %.0.i131
  %i.gn = getelementptr i8, ptr %i.gm, i64 -2
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !25
  %i.gp = zext i16 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gp ; 2 uses
  %.sroa.03.0.copyload.i.1 = load i16, ptr %i.gq, align 2, !tbaa !25
  %.sroa.44.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %.sroa.44.0.copyload.i.1 = load i16, ptr %.sroa.44.0..sroa_idx.i.1, align 2, !tbaa !25
  %i.gr = zext i16 %.sroa.44.0.copyload.i.1 to i32 ; 2 uses
  %notmask.i77.1 = shl nsw i32 -1, %i.gr
  %16 = xor i32 %notmask.i77.1, -1
  %i.gs = zext i16 %.sroa.03.0.copyload.i.1 to i32
  %i.gt = and i32 %16, %i.gs
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = zext nneg i32 %i.gl to i64
  %i.gw = shl i64 %i.gu, %i.gv
  %i.gx = or i64 %i.gw, %i.gk                     ; 2 uses
  %i.gy = add nuw nsw i32 %i.gl, %i.gr            ; 2 uses
  %i.gz = lshr i32 %i.gy, 3
  %i.ha = zext nneg i32 %i.gz to i64              ; 2 uses
  store i64 %i.gx, ptr %.sroa.58.3128, align 1, !tbaa !67
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.58.3128, i64 %i.ha ; 2 uses
  %i.hc = icmp ugt ptr %i.hb, %i.u
  %spec.store.select.i73 = select i1 %i.hc, ptr %i.u, ptr %i.hb ; 2 uses
  %i.hd = and i32 %i.gy, 7                        ; 2 uses
  %i.he = shl nuw nsw i64 %i.ha, 3
  %i.hf = lshr i64 %i.gx, %i.he                   ; 2 uses
  %i.hg = add i64 %.0.i131, -2                    ; 3 uses
  %.not.i = icmp ult i64 %i.hg, 2
  br i1 %.not.i, label %.loopexit123, label %.preheader121, !llvm.loop !63

.loopexit123:                                     ; preds = %.preheader121, %bb.k
  %.sroa.58.1 = phi ptr [ %i.p, %bb.k ], [ %spec.store.select.i73, %.preheader121 ]
  %.sroa.29.1 = phi i32 [ 0, %bb.k ], [ %i.hd, %.preheader121 ]
  %.sroa.0.1 = phi i64 [ 0, %bb.k ], [ %i.hf, %.preheader121 ]
  %.1.i = phi i64 [ %i.dh, %bb.k ], [ %i.hg, %.preheader121 ] ; 2 uses
  %i.hh = add nsw i64 %.1.i, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  br label %bb.l

bb.l:                                             ; preds = %.loopexit123, %bb.l
  %.027.i138 = phi i64 [ 0, %.loopexit123 ], [ %i.ic, %bb.l ] ; 2 uses
  %.sroa.0.2137 = phi i64 [ %.sroa.0.1, %.loopexit123 ], [ %i.ib, %bb.l ]
  %.sroa.29.2136 = phi i32 [ %.sroa.29.1, %.loopexit123 ], [ %i.hz, %bb.l ] ; 2 uses
  %.sroa.58.2135 = phi ptr [ %.sroa.58.1, %.loopexit123 ], [ %spec.store.select.i74, %bb.l ] ; 2 uses
  %i.hi = sub nuw i64 %.1.i, %.027.i138
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !25
  %i.hl = zext i16 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hl ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.hm, align 2, !tbaa !25
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !25
  %i.hn = zext i16 %.sroa.4.0.copyload.i to i32   ; 2 uses
  %notmask.i78 = shl nsw i32 -1, %i.hn
  %17 = xor i32 %notmask.i78, -1
  %i.ho = zext i16 %.sroa.0.0.copyload.i to i32
  %i.hp = and i32 %17, %i.ho
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = zext nneg i32 %.sroa.29.2136 to i64
  %i.hs = shl nuw nsw i64 %i.hq, %i.hr
  %i.ht = or i64 %i.hs, %.sroa.0.2137             ; 2 uses
  %i.hu = add nuw nsw i32 %.sroa.29.2136, %i.hn   ; 2 uses
  %i.hv = lshr i32 %i.hu, 3
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  store i64 %i.ht, ptr %.sroa.58.2135, align 1, !tbaa !67
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.58.2135, i64 %i.hw ; 2 uses
  %i.hy = icmp ugt ptr %i.hx, %i.u
  %spec.store.select.i74 = select i1 %i.hy, ptr %i.u, ptr %i.hx ; 2 uses
  %i.hz = and i32 %i.hu, 7                        ; 2 uses
  %i.ia = shl nuw nsw i64 %i.hw, 3
  %i.ib = lshr i64 %i.ht, %i.ia                   ; 2 uses
  %i.ic = add nuw i64 %.027.i138, 1               ; 2 uses
  %exitcond = icmp eq i64 %i.ic, %umax
  br i1 %exitcond, label %ZS_largeHuffmanEncodeUsingCTable_body.exit64, label %bb.l, !llvm.loop !64

ZS_largeHuffmanEncodeUsingCTable_body.exit64:     ; preds = %bb.l, %bb.j, %bb.g
  %.sroa.58.0 = phi ptr [ %spec.store.select.i72, %bb.j ], [ %spec.store.select.i70, %bb.g ], [ %spec.store.select.i74, %bb.l ] ; 2 uses
  %.sroa.29.0 = phi i32 [ %i.fv, %bb.j ], [ %i.dc, %bb.g ], [ %i.hz, %bb.l ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.fx, %bb.j ], [ %i.de, %bb.g ], [ %i.ib, %bb.l ]
  %i.id = zext nneg i32 %.sroa.29.0 to i64
  %i.ie = shl nuw nsw i64 1, %i.id
  %i.if = or i64 %i.ie, %.sroa.0.0
  %i.ig = add nuw nsw i32 %.sroa.29.0, 1          ; 2 uses
  %i.ih = lshr i32 %i.ig, 3
  %i.ii = zext nneg i32 %i.ih to i64
  store i64 %i.if, ptr %.sroa.58.0, align 1, !tbaa !67
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.58.0, i64 %i.ii ; 2 uses
  %i.ik = icmp ugt ptr %i.ij, %i.u
  %spec.store.select.i.i = select i1 %i.ik, ptr %i.u, ptr %i.ij ; 2 uses
  %.not.i75 = icmp ult ptr %spec.store.select.i.i, %i.u
  br i1 %.not.i75, label %BIT_closeCStream.exit, label %BIT_closeCStream.exit.thread

BIT_closeCStream.exit:                            ; preds = %ZS_largeHuffmanEncodeUsingCTable_body.exit64
  %i.il = and i32 %i.ig, 7
  %i.im = ptrtoint ptr %spec.store.select.i.i to i64
  %i.in = icmp ne i32 %i.il, 0
  %i.io = zext i1 %i.in to i64
  %i.ip = add i64 %i.im, %i.io                    ; 2 uses
  %i.iq = icmp eq i64 %i.ip, %i.r
  br i1 %i.iq, label %BIT_closeCStream.exit.thread, label %bb.m

BIT_closeCStream.exit.thread:                     ; preds = %ZS_largeHuffmanEncodeUsingCTable_body.exit64, %BIT_closeCStream.exit
  %i.ir = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanEncodeUsingCTable.__zl_static_error_info.23, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 486, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.is = extractvalue { i32, ptr } %i.ir, 0      ; 2 uses
  %i.it = extractvalue { i32, ptr } %i.ir, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.is, ptr %i.it, ptr noundef nonnull @.str.12) #12
  %i.iu = ptrtoint ptr %i.it to i64
  br label %bb.n

bb.m:                                             ; preds = %BIT_closeCStream.exit
  %i.iv = sub i64 %i.ip, %i.r                     ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.iv
  store ptr %i.iw, ptr %i.c, align 8, !tbaa !30
  %i.ix = trunc i64 %i.iv to i32
  store i32 %i.ix, ptr %i.o, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.m, %BIT_closeCStream.exit.thread, %bb.b
  %.sroa.036.2 = phi i32 [ %i.j, %bb.b ], [ %i.x, %bb.d ], [ %i.is, %BIT_closeCStream.exit.thread ], [ 0, %bb.m ]
  %.sroa.8.2 = phi i64 [ %i.l, %bb.b ], [ %i.z, %bb.d ], [ %i.iu, %BIT_closeCStream.exit.thread ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.036.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_largeHuffmanEncodeUsingCTableX4(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #13
  store ptr %i.b, ptr %5, align 8, !tbaa !17
  %i.c = lshr i64 %2, 2
  %i.d = add nuw nsw i64 %i.c, 1                  ; 4 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %2) ; 4 uses
  %i.f = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.g = extractvalue { i32, i64 } %i.f, 0        ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %2, %i.e
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.e
  %i.k = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.i, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0        ; 2 uses
  %.not.1 = icmp eq i32 %i.l, 0
  br i1 %.not.1, label %bb.c, label %bb.e, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %i.i, %i.e                   ; 3 uses
  %i.n = sub i64 %2, %i.m
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.m
  %i.q = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef %0, ptr noundef %i.p, i64 noundef %i.o, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0        ; 2 uses
  %.not.2 = icmp eq i32 %i.r, 0
  br i1 %.not.2, label %bb.d, label %bb.e, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw i64 %i.o, %i.m                   ; 2 uses
  %i.t = sub i64 %2, %i.s
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.t)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.s
  %i.w = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef %0, ptr noundef %i.v, i64 noundef %i.u, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0        ; 2 uses
  %.not.3 = icmp eq i32 %i.x, 0
  br i1 %.not.3, label %.loopexit, label %bb.e, !prof !68

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa45 = phi { i32, i64 } [ %i.f, %bb.a ], [ %i.k, %bb.b ], [ %i.q, %bb.c ], [ %i.w, %bb.d ]
  %.lcssa = phi i32 [ %i.g, %bb.a ], [ %i.l, %bb.b ], [ %i.r, %bb.c ], [ %i.x, %bb.d ]
  %i.y = extractvalue { i32, i64 } %.lcssa45, 1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %.lcssa, ptr %i.z, ptr nonnull @ZS_largeHuffmanEncodeUsingCTableX4.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, i32 noundef 507, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.aa, 0
  %i.ac = extractvalue { i32, ptr } %i.aa, 1
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e
  %.sroa.024.3 = phi i32 [ %i.ab, %bb.e ], [ 0, %bb.d ]
  %.sroa.8.3 = phi i64 [ %i.ad, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.024.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_largeHuffmanEncode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #13 ; 3 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !17
  %i.c = icmp eq i32 %4, 0
  %i.d = tail call i32 @llvm.smin.i32(i32 %4, i32 20)
  %spec.store.select = select i1 %i.c, i32 20, i32 %i.d
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %6, align 8, !tbaa !17
  %i.g = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !30 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val13.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.i = ptrtoint ptr %.val13.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanUncompressed.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef 519, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.m, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.n, ptr %i.o, ptr noundef nonnull @.str.12) #12
  %i.p = ptrtoint ptr %i.o to i64
  br label %ZS_largeHuffmanUncompressed.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  store ptr %i.q, ptr %i.g, align 8, !tbaa !30
  store i8 1, ptr %.val.i, align 1, !tbaa !28
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !30
  store i8 0, ptr %.val.i.i, align 1, !tbaa !28
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.g, align 8, !tbaa !30
  br label %ZS_largeHuffmanUncompressed.exit

ZS_largeHuffmanUncompressed.exit:                 ; preds = %bb.c, %bb.d
  %.sroa.012.0.i = phi i32 [ %i.n, %bb.c ], [ 0, %bb.d ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <3 x ptr>, ptr %0, align 8
  %i.t = getelementptr i8, ptr %0, i64 8          ; 26 uses
  %.val119 = load ptr, ptr %i.t, align 8, !tbaa !30 ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %.val120 = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.v = ptrtoint ptr %.val119 to i64
  %i.w = icmp eq ptr %.val120, %.val119
end_hunk_1
