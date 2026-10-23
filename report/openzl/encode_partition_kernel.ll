Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_partition_kernel?download=true
inline.NumInlined: 59
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_PartitionScratchAlloc = type { ptr, ptr }
%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }

@ZL_partitionEncodeU16.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 285, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [88 x i8] c"Check `(const char*)(const void*)partitionLUT == (const char*)0' failed: Allocation: %s\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/partition/encode_partition_kernel.c\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ZL_partitionEncodeU16\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"(const char*)(const void*)partitionLUT\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZL_partitionEncodeU16.__zl_static_error_info.9 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 302, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [109 x i8] c"Check `!(isValid)' failed: Input does not respect conditions for this node: Value out of range of partitions\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"!(isValid)\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\0A\09Value out of range of partitions\00", align 1
@ZL_partitionEncodeU16.__zl_static_error_info.14 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 313, [4 x i8] zeroinitializer }, align 8
@.str.15 = private unnamed_addr constant [110 x i8] c"Check `!(ZL_PartitionLUTx2_build( &LUTx2, baseLUTx1, bitsLUTx1, bucketBits, scratch))' failed: Allocation: %s\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"!(ZL_PartitionLUTx2_build( &LUTx2, baseLUTx1, bitsLUTx1, bucketBits, scratch))\00", align 1
@ZL_partitionEncodeU16.__zl_static_error_info.17 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 367, [4 x i8] zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ZS_BitCStreamFF_finish.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer, ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 264, [4 x i8] zeroinitializer }, align 8
@.str.20 = private unnamed_addr constant [53 x i8] c"Unconditional failure: Internal buffer too small: %s\00", align 1
@.str.21 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/common/bitstream/ff_bitstream.h\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"ZS_BitCStreamFF_finish\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@ZL_partitionEncodeU32.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.25, i32 438, [4 x i8] zeroinitializer }, align 8
@.str.25 = private unnamed_addr constant [22 x i8] c"ZL_partitionEncodeU32\00", align 1
@ZL_partitionEncodeU32.__zl_static_error_info.26 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.25, i32 454, [4 x i8] zeroinitializer }, align 8
@ZL_partitionEncodeU32.__zl_static_error_info.27 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.28, ptr @.str.1, ptr @.str.25, i32 471, [4 x i8] zeroinitializer }, align 8
@.str.28 = private unnamed_addr constant [113 x i8] c"Check `!(ZL_PartitionLUTx2U32_build( &LUTx2, baseLUTx1, bitsLUTx1, bucketBits, scratch))' failed: Allocation: %s\00", align 1
@.str.29 = private unnamed_addr constant [82 x i8] c"!(ZL_PartitionLUTx2U32_build( &LUTx2, baseLUTx1, bitsLUTx1, bucketBits, scratch))\00", align 1
@ZL_partitionEncodeU32.__zl_static_error_info.30 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.18, ptr @.str.1, ptr @.str.25, i32 513, [4 x i8] zeroinitializer }, align 8
@ZL_partitionEncode_generic.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.1, ptr @.str.32, i32 105, [4 x i8] zeroinitializer }, align 8
@.str.31 = private unnamed_addr constant [55 x i8] c"Check `partition >= numPartitions' failed: Generic: %s\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"ZL_partitionEncode_generic\00", align 1
@.str.33 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"numPartitions\00", align 1
@ZL_partitionEncode_generic.__zl_static_error_info.37 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer, ptr @.str.38, ptr @.str.1, ptr @.str.32, i32 117, [4 x i8] zeroinitializer }, align 8
@.str.38 = private unnamed_addr constant [62 x i8] c"Check `ZL_isError(ret)' failed: Internal buffer too small: %s\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"ZL_isError(ret)\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_partitionEncode(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr nofree noundef readonly byval(%struct.ZL_PartitionScratchAlloc) align 8 captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %9 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %i.a = alloca [256 x i64], align 16             ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %10 = alloca %struct.ZL_ErrorContext, align 8   ; 5 uses
  %11 = alloca %struct.ZL_ErrorContext, align 8   ; 8 uses
  %i.c = alloca [256 x i64], align 16             ; 10 uses
  %i.d = alloca [256 x i8], align 16              ; 7 uses
  %i.e = alloca [16 x i8], align 16               ; 7 uses
  %12 = alloca %struct.ZL_ErrorContext, align 8   ; 5 uses
  %13 = alloca %struct.ZL_ErrorContext, align 8   ; 8 uses
  %i.f = alloca [256 x i64], align 16             ; 8 uses
  %i.g = alloca [256 x i8], align 16              ; 7 uses
  switch i64 %5, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread [
    i64 2, label %bb.b
    i64 4, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @ZL_PartitionParams_getLargestPartitionSize(ptr noundef %6) #8
  %i.i = icmp ult i64 %i.h, 16385
  br i1 %i.i, label %bb.c, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %7, align 8               ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val26 = load ptr, ptr %i.j, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #9
  store ptr %i.l, ptr %13, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.f, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.g, i8 0, i64 256, i1 false)
  call void @ZL_PartitionParams_computeBasesU64(ptr noundef %6, ptr noundef nonnull %i.f) #8
  call void @ZL_PartitionParams_computeBits(ptr noundef %6, ptr noundef nonnull %i.g) #8
  %i.m = call i64 @ZL_PartitionParams_getNumTrailingZeros(ptr noundef %6) #8 ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 6 uses
  %i.o = lshr i32 65536, %i.n
  %i.p = zext nneg i32 %i.o to i64                ; 6 uses
  %i.q = call ptr %.val26(ptr noundef %.val, i64 noundef range(i64 0, 65537) %i.p) #8, !inline_history !11 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %6, align 8, !tbaa !45
  %i.t = lshr i64 %i.s, %i.m                      ; 2 uses
  %..i.i = call i64 @llvm.umin.i64(i64 range(i64 0, 65537) %i.p, i64 %i.t) ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %..i.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46   ; 2 uses
  %i.w = icmp ne i64 %i.v, 0
  %.not45.i.i = icmp ult i64 %i.t, %i.p           ; 2 uses
  %or.cond46.i.i = select i1 %i.w, i1 %.not45.i.i, i1 false
  br i1 %or.cond46.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.048.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ag, %bb.e ] ; 3 uses
  %.03847.i.i = phi i64 [ %..i.i, %.lr.ph.i.i ], [ %.44.i.i, %bb.e ] ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.048.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48
  %i.ab = lshr i64 %i.aa, %i.m
  %i.ac = add i64 %i.ab, %.03847.i.i              ; 2 uses
  %.44.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, 65537) %i.p, i64 %i.ac) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %.03847.i.i
  %i.ae = trunc i64 %.048.i.i to i8
  %i.af = sub nsw i64 %.44.i.i, %.03847.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 %i.ae, i64 %i.af, i1 false)
  %i.ag = add nuw i64 %.048.i.i, 1                ; 2 uses
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !46  ; 2 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  %.not.i.i = icmp ult i64 %i.ac, %i.p            ; 2 uses
  %or.cond.i.i = select i1 %i.ai, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %._crit_edge.i.i, !llvm.loop !12

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.aj = phi i64 [ %i.v, %bb.d ], [ %i.ah, %bb.e ]
  %.038.lcssa.i.i = phi i64 [ %..i.i, %bb.d ], [ %.44.i.i, %bb.e ] ; 2 uses
  %.not.lcssa.i.i = phi i1 [ %.not45.i.i, %bb.d ], [ %.not.i.i, %bb.e ]
  br i1 %.not.lcssa.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %.038.lcssa.i.i
  %i.al = sub nuw nsw i64 %i.p, %.038.lcssa.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.al, i1 false)
  %.pre.i = load i64, ptr %i.u, align 8, !tbaa !46
  br label %bb.g

.thread.i:                                        ; preds = %bb.c
  %i.am = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncodeU16.__zl_static_error_info, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 285, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.an = extractvalue { i32, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { i32, ptr } %i.am, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.an, ptr %i.ao, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.ap = ptrtoint ptr %i.ao to i64
  br label %ZL_partitionEncodeU16.exit

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %i.aq = phi i64 [ %.pre.i, %bb.f ], [ %i.aj, %._crit_edge.i.i ] ; 2 uses
  %i.ar = load i64, ptr %6, align 8, !tbaa !45    ; 6 uses
  %i.as = add i64 %i.aq, -1                       ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.as
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.az = add i64 %i.au, -1
  %i.ba = add i64 %i.az, %i.ay                    ; 6 uses
  %14 = icmp eq i64 %i.ar, 0
  %15 = icmp ugt i64 %i.ba, 65534
  %or.cond.i.a = select i1 %14, i1 %15, i1 false
  %.not.i = icmp eq i64 %4, 0
  %or.cond90.i = or i1 %.not.i, %or.cond.i.a
  br i1 %or.cond90.i, label %.thread31.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %16 = add i64 %4, -1
  %xtraiter185 = and i64 %4, 3                    ; 3 uses
  %i.bb = icmp ult i64 %16, 3
  br i1 %i.bb, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter190 = and i64 %4, -4
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod187.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod187.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.011855.i.epil.init = phi i8 [ 1, %.lr.ph.i.preheader ], [ %.1119.i.3, %._crit_edge.i.unr-lcssa ]
  %.012054.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cb, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod189 = icmp ne i64 %xtraiter185, 0
  call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011855.i.epil = phi i8 [ %.1119.i.epil, %.lr.ph.i.epil ], [ %.011855.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.012054.i.epil = phi i64 [ %i.bf, %.lr.ph.i.epil ], [ %.012054.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter186 = phi i64 [ %epil.iter186.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.012054.i.epil
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !51
  %i.be = zext i16 %i.bd to i64                   ; 2 uses
  %17 = icmp ugt i64 %i.ar, %i.be
  %18 = icmp ult i64 %i.ba, %i.be
  %or.cond128.not.i.epil = select i1 %17, i1 true, i1 %18
  %.1119.i.epil = select i1 %or.cond128.not.i.epil, i8 0, i8 %.011855.i.epil ; 2 uses
  %i.bf = add nuw i64 %.012054.i.epil, 1
  %epil.iter186.next = add i64 %epil.iter186, 1   ; 2 uses
  %epil.iter186.cmp.not = icmp eq i64 %epil.iter186.next, %xtraiter185
  br i1 %epil.iter186.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.1119.i.lcssa = phi i8 [ %.1119.i.3, %._crit_edge.i.unr-lcssa ], [ %.1119.i.epil, %.lr.ph.i.epil ]
  %19 = icmp eq i8 %.1119.i.lcssa, 0
  br i1 %19, label %bb.h, label %.thread31.i, !prof !53

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011855.i = phi i8 [ 1, %.lr.ph.i.preheader.new ], [ %.1119.i.3, %.lr.ph.i ]
  %.012054.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cb, %.lr.ph.i ] ; 5 uses
  %niter191 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter191.next.3, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.012054.i
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !51
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %20 = icmp ugt i64 %i.ar, %i.bi
  %21 = icmp ult i64 %i.ba, %i.bi
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.012054.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !51
  %i.bm = zext i16 %i.bl to i64                   ; 2 uses
  %22 = icmp ugt i64 %i.ar, %i.bm
  %23 = icmp ult i64 %i.ba, %i.bm
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.012054.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !51
  %i.bq = zext i16 %i.bp to i64                   ; 2 uses
  %24 = icmp ugt i64 %i.ar, %i.bq
  %25 = icmp ult i64 %i.ba, %i.bq
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.012054.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !51
  %i.bu = zext i16 %i.bt to i64                   ; 2 uses
  %26 = icmp ugt i64 %i.ar, %i.bu
  %27 = icmp ult i64 %i.ba, %i.bu
  %or.cond128.not.i.3 = select i1 %26, i1 true, i1 %27
  %i.bv = select i1 %or.cond128.not.i.3, i1 true, i1 %24
  %i.bw = select i1 %i.bv, i1 true, i1 %25
  %i.bx = select i1 %i.bw, i1 true, i1 %22
  %i.by = select i1 %i.bx, i1 true, i1 %23
  %i.bz = select i1 %i.by, i1 true, i1 %20
  %i.ca = select i1 %i.bz, i1 true, i1 %21
  %.1119.i.3 = select i1 %i.ca, i8 0, i8 %.011855.i ; 3 uses
  %i.cb = add nuw i64 %.012054.i, 4               ; 2 uses
  %niter191.next.3 = add nuw i64 %niter191, 4     ; 2 uses
  %niter191.ncmp.3 = icmp eq i64 %niter191.next.3, %unroll_iter190
  br i1 %niter191.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

bb.h:                                             ; preds = %._crit_edge.i
  %i.cc = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncodeU16.__zl_static_error_info.9, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #8 ; 2 uses
  %i.cd = extractvalue { i32, ptr } %i.cc, 0      ; 2 uses
  %i.ce = extractvalue { i32, ptr } %i.cc, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cd, ptr %i.ce, ptr noundef nonnull @.str.13) #8
  %i.cf = ptrtoint ptr %i.ce to i64
  br label %ZL_partitionEncodeU16.exit

.thread31.i:                                      ; preds = %._crit_edge.i, %bb.g
  %i.cg = icmp ult i64 %i.aq, 2
  %i.ch = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.as, i1 true)
  %i.ci = sub nuw nsw i64 64, %i.ch
  %i.cj = select i1 %i.cg, i64 0, i64 %i.ci       ; 5 uses
  %i.ck = shl nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.cj
  %i.cm = xor i64 %notmask.i.i, -1
  %i.cn = shl i64 4, %i.ck                        ; 2 uses
  %i.co = call ptr %.val26(ptr noundef %.val, i64 noundef %i.cn) #8, !inline_history !15 ; 4 uses
  %i.cp = call ptr %.val26(ptr noundef %.val, i64 noundef %i.cn) #8, !inline_history !15 ; 4 uses
  %i.cq = call ptr %.val26(ptr noundef %.val, i64 noundef %i.cl) #8, !inline_history !15 ; 4 uses
  %i.cr = icmp ne ptr %i.co, null
  %i.cs = icmp ne ptr %i.cp, null
  %or.cond.i129.i = select i1 %i.cr, i1 %i.cs, i1 false
  %i.ct = icmp ne ptr %i.cq, null
  %or.cond3.i.i = select i1 %or.cond.i129.i, i1 %i.ct, i1 false
  br i1 %or.cond3.i.i, label %.preheader.i.i, label %ZL_PartitionLUTx2_build.exit.i

.preheader.i.i:                                   ; preds = %.thread31.i, %.preheader.i.i
  %.04753.i.i = phi i64 [ %i.du, %.preheader.i.i ], [ 0, %.thread31.i ] ; 6 uses
  %i.cu = and i64 %.04753.i.i, %i.cm              ; 2 uses
  %i.cv = lshr i64 %.04753.i.i, %i.cj             ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cu
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !48
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cv
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !48
  %i.db = trunc i64 %i.da to i32
  %i.dc = shl i32 %i.db, 16
  %i.dd = or i32 %i.dc, %i.cy
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.04753.i.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !54
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cu ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !55
  %i.dh = zext nneg i8 %i.dg to i32
  %notmask51.i.i = shl nsw i32 -1, %i.dh
  %i.di = xor i32 %notmask51.i.i, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cv ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !55
  %i.dl = zext nneg i8 %i.dk to i32
  %notmask52.i.i = shl nsw i32 -1, %i.dl
  %i.dm = xor i32 %notmask52.i.i, -1
  %i.dn = shl i32 %i.dm, 16
  %i.do = or i32 %i.dn, %i.di
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.04753.i.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !54
  %i.dq = load i8, ptr %i.df, align 1, !tbaa !55
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !55
  %i.ds = add i8 %i.dr, %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.04753.i.i
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !55
  %i.du = add nuw nsw i64 %.04753.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.du, %i.cl
  br i1 %exitcond.not.i.i, label %bb.i, label %.preheader.i.i, !llvm.loop !16

ZL_PartitionLUTx2_build.exit.i:                   ; preds = %.thread31.i
  %i.dv = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncodeU16.__zl_static_error_info.14, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 313, i32 noundef 70, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #8 ; 2 uses
  %i.dw = extractvalue { i32, ptr } %i.dv, 0      ; 2 uses
  %i.dx = extractvalue { i32, ptr } %i.dv, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dw, ptr %i.dx, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.dy = ptrtoint ptr %i.dx to i64
  br label %ZL_partitionEncodeU16.exit

bb.i:                                             ; preds = %.preheader.i.i
  %i.dz = call i64 @llvm.usub.sat.i64(i64 %1, i64 7)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.ec = call i64 @llvm.usub.sat.i64(i64 %4, i64 3)
  %.not.i.a = icmp ult i64 %4, 4
  br i1 %.not.i.a, label %.preheader52.i, label %.lr.ph61.i

.preheader52.i:                                   ; preds = %ZS_BitCStreamFF_flush.exit.i, %bb.i
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.1.i, %ZS_BitCStreamFF_flush.exit.i ] ; 2 uses
  %.sroa.25.0.lcssa.i = phi ptr [ %0, %bb.i ], [ %.sroa.25.1.i, %ZS_BitCStreamFF_flush.exit.i ] ; 2 uses
  %.sroa.14.025.lcssa.i = phi i64 [ 0, %bb.i ], [ %.sroa.14.126.i, %ZS_BitCStreamFF_flush.exit.i ] ; 2 uses
  %.0121.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.hg, %ZS_BitCStreamFF_flush.exit.i ] ; 2 uses
  %i.ed = icmp ult i64 %.0121.lcssa.i, %4
  br i1 %i.ed, label %.lr.ph70.i, label %._crit_edge71.i

.lr.ph61.i:                                       ; preds = %bb.i, %ZS_BitCStreamFF_flush.exit.i
  %.012159.i = phi i64 [ %i.hg, %ZS_BitCStreamFF_flush.exit.i ], [ 0, %bb.i ] ; 3 uses
  %.sroa.14.02558.i = phi i64 [ %.sroa.14.126.i, %ZS_BitCStreamFF_flush.exit.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.25.057.i = phi ptr [ %.sroa.25.1.i, %ZS_BitCStreamFF_flush.exit.i ], [ %0, %bb.i ] ; 4 uses
  %.sroa.0.056.i = phi i64 [ %.sroa.0.1.i, %ZS_BitCStreamFF_flush.exit.i ], [ 0, %bb.i ]
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.012159.i ; 5 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !51
  %i.eg = zext i16 %i.ef to i32
  %i.eh = lshr i32 %i.eg, %i.n
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !55  ; 2 uses
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !51
  %i.eo = zext i16 %i.en to i32
  %i.ep = lshr i32 %i.eo, %i.n
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !55  ; 2 uses
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !51
  %i.ew = zext i16 %i.ev to i32
  %i.ex = lshr i32 %i.ew, %i.n
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !55  ; 2 uses
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 6
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !51
  %i.fe = zext i16 %i.fd to i32
  %i.ff = lshr i32 %i.fe, %i.n
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !55  ; 2 uses
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %.012159.i ; 4 uses
  store i8 %i.ek, ptr %i.fk, align 1, !tbaa !55
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store i8 %i.es, ptr %i.fl, align 1, !tbaa !55
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  store i8 %i.fa, ptr %i.fm, align 1, !tbaa !55
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 3
  store i8 %i.fi, ptr %i.fn, align 1, !tbaa !55
  %i.fo = shl i64 %i.et, %i.cj
  %i.fp = or i64 %i.fo, %i.el                     ; 3 uses
  %i.fq = shl i64 %i.fj, %i.cj
  %i.fr = or i64 %i.fq, %i.fb                     ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fp
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !54
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fr
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !54
  %i.fx = zext i32 %i.fw to i64
  %i.fy = shl nuw i64 %i.fx, 32
  %i.fz = or disjoint i64 %i.fy, %i.fu
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.fp
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !54
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.fr
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !54
  %i.gf = zext i32 %i.ge to i64
  %i.gg = shl nuw i64 %i.gf, 32
  %i.gh = or disjoint i64 %i.gg, %i.gc            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.fp
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !55
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.fr
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !55
  %i.gn = zext i8 %i.gm to i64
  %i.go = add nuw nsw i64 %i.gn, %i.gk            ; 2 uses
  %.val.i = load i64, ptr %i.ee, align 2
  %i.gp = sub i64 %.val.i, %i.fz
  %.not14.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not14.i.i.i, label %ZL_bitExtract64.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph61.i, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i ], [ 1, %.lr.ph61.i ] ; 2 uses
  %.01116.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %.lr.ph61.i ]
  %.01215.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i.i ], [ %i.gh, %.lr.ph61.i ] ; 4 uses
  %i.gq = sub i64 0, %.01215.i.i.i
  %i.gr = and i64 %.01215.i.i.i, %i.gq            ; 3 uses
  %i.gs = and i64 %i.gr, %i.gp
  %.not13.i.i.i = icmp eq i64 %i.gs, 0
  %i.gt = select i1 %.not13.i.i.i, i64 0, i64 %.017.i.i.i
  %spec.select.i.i.i = or i64 %i.gt, %.01116.i.i.i ; 2 uses
  %i.gu = xor i64 %i.gr, %.01215.i.i.i
  %i.gv = shl i64 %.017.i.i.i, 1
  %.not.i.i.i = icmp eq i64 %i.gr, %.01215.i.i.i
  br i1 %.not.i.i.i, label %ZL_bitExtract64.exit.i, label %.lr.ph.i.i.i, !llvm.loop !17

ZL_bitExtract64.exit.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph61.i
  %.011.lcssa.i.i.i = phi i64 [ 0, %.lr.ph61.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %notmask.i130.i = shl nsw i64 -1, %i.go
  %i.gw = xor i64 %notmask.i130.i, -1
  %i.gx = and i64 %.011.lcssa.i.i.i, %i.gw
  %i.gy = shl i64 %i.gx, %.sroa.14.02558.i
  %i.gz = or i64 %i.gy, %.sroa.0.056.i            ; 3 uses
  %i.ha = add i64 %i.go, %.sroa.14.02558.i        ; 4 uses
  %.not.i131.i = icmp ult ptr %.sroa.25.057.i, %i.ea
  br i1 %.not.i131.i, label %bb.j, label %ZS_BitCStreamFF_flush.exit.i

bb.j:                                             ; preds = %ZL_bitExtract64.exit.i
  %i.hb = lshr i64 %i.ha, 3
  store i64 %i.gz, ptr %.sroa.25.057.i, align 1
end_hunk_0
begin_hunk_1_@ZL_partitionEncode:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.25.2.lcssa.i, i64 %.07.i.i.i.epil
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !55
  %i.jo = add nuw nsw i64 %.07.i.i.i.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %ZS_BitCStreamFF_finish.exit.thread.i, label %.preheader.i.epil, !llvm.loop !21

ZS_BitCStreamFF_finish.exit.thread.i:             ; preds = %ZS_BitCStreamFF_finish.exit.thread.i.loopexit.unr-lcssa, %.preheader.i.epil, %bb.l
  %i.jp = ptrtoint ptr %0 to i64
  %i.jq = sub i64 %i.im, %i.jp
  %i.jr = add i64 %i.jq, %i.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %ZL_partitionEncodeU16.exit

ZS_BitCStreamFF_finish.exit.i:                    ; preds = %._crit_edge71.i
  %i.js = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_BitCStreamFF_finish.__zl_static_error_info, ptr noundef nonnull %12, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 264, i32 noundef 71, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8) #8 ; 2 uses
  %i.jt = extractvalue { i32, ptr } %i.js, 0      ; 3 uses
  %i.ju = extractvalue { i32, ptr } %i.js, 1      ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.jt, ptr %i.ju, ptr noundef nonnull @.str.24) #8
  %i.jv = ptrtoint ptr %i.ju to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %.not127.i = icmp eq i32 %i.jt, 0
  br i1 %.not127.i, label %ZL_partitionEncodeU16.exit, label %bb.m, !prof !56

bb.m:                                             ; preds = %ZS_BitCStreamFF_finish.exit.i
  %i.jw = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.jt, ptr %i.ju, ptr nonnull @ZL_partitionEncodeU16.__zl_static_error_info.17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 367, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8) #8 ; 2 uses
  %i.jx = extractvalue { i32, ptr } %i.jw, 0
  %i.jy = extractvalue { i32, ptr } %i.jw, 1
  %i.jz = ptrtoint ptr %i.jy to i64
  br label %ZL_partitionEncodeU16.exit

ZL_partitionEncodeU16.exit:                       ; preds = %.thread.i, %bb.h, %ZL_PartitionLUTx2_build.exit.i, %ZS_BitCStreamFF_finish.exit.thread.i, %ZS_BitCStreamFF_finish.exit.i, %bb.m
  %.sroa.0114.6.i = phi i32 [ %i.an, %.thread.i ], [ %i.cd, %bb.h ], [ %i.dw, %ZL_PartitionLUTx2_build.exit.i ], [ %i.jx, %bb.m ], [ 0, %ZS_BitCStreamFF_finish.exit.i ], [ 0, %ZS_BitCStreamFF_finish.exit.thread.i ]
  %.sroa.14.6.i = phi i64 [ %i.ap, %.thread.i ], [ %i.cf, %bb.h ], [ %i.dy, %ZL_PartitionLUTx2_build.exit.i ], [ %i.jz, %bb.m ], [ %i.jv, %ZS_BitCStreamFF_finish.exit.i ], [ %i.jr, %ZS_BitCStreamFF_finish.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %bb.aw

bb.n:                                             ; preds = %bb.a
  %i.ka = tail call i64 @ZL_PartitionParams_getLargestPartitionSize(ptr noundef %6) #8
  %i.kb = icmp ult i64 %i.ka, 268435457
  br i1 %i.kb, label %bb.o, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.kc = load i64, ptr %6, align 8, !tbaa !45    ; 4 uses
  %i.kd = icmp ult i64 %i.kc, 65537
  br i1 %i.kd, label %ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ke = icmp ult i64 %i.kc, 4294967297
  %i.kf = tail call range(i64 1, 34) i64 @llvm.ctpop.i64(i64 range(i64 65537, 4294967297) %i.kc)
  %i.kg = icmp samesign ult i64 %i.kf, 2
  %or.cond.i29 = select i1 %i.ke, i1 %i.kg, i1 false
  br i1 %or.cond.i29, label %ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i: ; preds = %bb.p, %bb.o
  %i.kh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !46 ; 3 uses
  %.not37.not.i = icmp eq i64 %i.ki, 0
  br i1 %.not37.not.i, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i
  %i.kj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !47
  br label %bb.q

bb.q:                                             ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i, %.lr.ph.i30
  %.040.i = phi i64 [ 0, %.lr.ph.i30 ], [ %i.kr, %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i ] ; 2 uses
  %.02139.i = phi i64 [ 0, %.lr.ph.i30 ], [ %spec.select.i, %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i ]
  %.02238.i = phi i64 [ %i.kc, %.lr.ph.i30 ], [ %i.kq, %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i ] ; 4 uses
  %i.kl = xor i64 %.02238.i, -1
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %.040.i
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !48 ; 2 uses
  %i.ko = icmp ugt i64 %i.kn, %i.kl
  br i1 %i.ko, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kp = icmp ugt i64 %.02238.i, 65536
  %spec.select.i = select i1 %i.kp, i64 %.02238.i, i64 %.02139.i ; 2 uses
  %i.kq = add i64 %i.kn, %.02238.i                ; 6 uses
  %i.kr = add nuw i64 %.040.i, 1                  ; 3 uses
  %i.ks = icmp uge i64 %i.kr, %i.ki
  %i.kt = icmp ult i64 %i.kq, 65537
  %or.cond35.i = or i1 %i.ks, %i.kt
  br i1 %or.cond35.i, label %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ku = icmp ult i64 %i.kq, 4294967297
  br i1 %i.ku, label %ZL_PartitionEncode_u32BoundarySupported.exit28.i, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

ZL_PartitionEncode_u32BoundarySupported.exit28.i: ; preds = %bb.s
  %i.kv = tail call range(i64 1, 34) i64 @llvm.ctpop.i64(i64 range(i64 65537, 4294967297) %i.kq)
  %i.kw = icmp samesign ult i64 %i.kv, 2
  %i.kx = icmp ugt i64 %i.kq, %spec.select.i
  %spec.select.i27.i = and i1 %i.kx, %i.kw
  br i1 %spec.select.i27.i, label %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i: ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit28.i, %bb.r
  %exitcond.not.i31 = icmp eq i64 %i.kr, %i.ki
  br i1 %exitcond.not.i31, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit, label %bb.q, !llvm.loop !22

ZL_PartitionEncodeU32_canUseHybridLUT.exit:       ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i
  %i.ky = icmp ult i64 %i.kq, 4294967297
  br i1 %i.ky, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118: ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i, %ZL_PartitionEncodeU32_canUseHybridLUT.exit
  %.val27 = load ptr, ptr %7, align 8             ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val28 = load ptr, ptr %i.kz, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.la = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.la, i8 0, i64 24, i1 false)
  %i.lb = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #9
  store ptr %i.lb, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  call void @ZL_PartitionParams_computeBasesU64(ptr noundef nonnull %6, ptr noundef nonnull %i.c) #8
  call void @ZL_PartitionParams_computeBits(ptr noundef nonnull %6, ptr noundef nonnull %i.d) #8
  %i.lc = call i64 @ZL_PartitionParams_getNumTrailingZeros(ptr noundef nonnull %6) #8 ; 3 uses
  %i.ld = trunc i64 %i.lc to i32                  ; 5 uses
  %i.le = lshr i32 65536, %i.ld
  %i.lf = icmp ugt i32 %i.ld, 16
  %narrow.i = select i1 %i.lf, i32 1, i32 %i.le
  %i.lg = zext nneg i32 %narrow.i to i64          ; 6 uses
  %i.lh = call ptr %.val28(ptr noundef %.val27, i64 noundef range(i64 0, 65537) %i.lg) #8, !inline_history !23 ; 7 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %.thread.i91, label %bb.t

bb.t:                                             ; preds = %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118
  %i.lj = load i64, ptr %6, align 8, !tbaa !45
  %i.lk = lshr i64 %i.lj, %i.lc                   ; 2 uses
  %..i.i32 = call i64 @llvm.umin.i64(i64 range(i64 0, 65537) %i.lg, i64 %i.lk) ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lh, i8 0, i64 %..i.i32, i1 false)
  %i.ll = load i64, ptr %i.kh, align 8, !tbaa !46 ; 2 uses
  %i.lm = icmp ne i64 %i.ll, 0
  %.not45.i.i33 = icmp ult i64 %i.lk, %i.lg       ; 2 uses
  %or.cond46.i.i34 = select i1 %i.lm, i1 %.not45.i.i33, i1 false
  br i1 %or.cond46.i.i34, label %.lr.ph.i.i85, label %._crit_edge.i.i35

.lr.ph.i.i85:                                     ; preds = %bb.t
  %i.ln = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i85
  %.048.i.i86 = phi i64 [ 0, %.lr.ph.i.i85 ], [ %i.lw, %bb.u ] ; 3 uses
  %.03847.i.i87 = phi i64 [ %..i.i32, %.lr.ph.i.i85 ], [ %.44.i.i88, %bb.u ] ; 3 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !47
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.048.i.i86
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !48
  %i.lr = lshr i64 %i.lq, %i.lc
  %i.ls = add i64 %i.lr, %.03847.i.i87            ; 2 uses
  %.44.i.i88 = call i64 @llvm.umin.i64(i64 range(i64 0, 65537) %i.lg, i64 %i.ls) ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.03847.i.i87
  %i.lu = trunc i64 %.048.i.i86 to i8
  %i.lv = sub nsw i64 %.44.i.i88, %.03847.i.i87
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lt, i8 %i.lu, i64 %i.lv, i1 false)
  %i.lw = add nuw i64 %.048.i.i86, 1              ; 2 uses
  %i.lx = load i64, ptr %i.kh, align 8, !tbaa !46 ; 2 uses
  %i.ly = icmp ult i64 %i.lw, %i.lx
  %.not.i.i89 = icmp ult i64 %i.ls, %i.lg         ; 2 uses
  %or.cond.i.i90 = select i1 %i.ly, i1 %.not.i.i89, i1 false
  br i1 %or.cond.i.i90, label %bb.u, label %._crit_edge.i.i35, !llvm.loop !12

._crit_edge.i.i35:                                ; preds = %bb.u, %bb.t
  %i.lz = phi i64 [ %i.ll, %bb.t ], [ %i.lx, %bb.u ]
  %.038.lcssa.i.i36 = phi i64 [ %..i.i32, %bb.t ], [ %.44.i.i88, %bb.u ] ; 2 uses
  %.not.lcssa.i.i37 = phi i1 [ %.not45.i.i33, %bb.t ], [ %.not.i.i89, %bb.u ]
  br i1 %.not.lcssa.i.i37, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i35
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.038.lcssa.i.i36
  %i.mb = sub nuw nsw i64 %i.lg, %.038.lcssa.i.i36
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ma, i8 0, i64 %i.mb, i1 false)
  %.pre.i84 = load i64, ptr %i.kh, align 8, !tbaa !46
  br label %bb.w

.thread.i91:                                      ; preds = %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118
  %i.mc = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncodeU32.__zl_static_error_info, ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 438, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.md = extractvalue { i32, ptr } %i.mc, 0      ; 2 uses
  %i.me = extractvalue { i32, ptr } %i.mc, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.md, ptr %i.me, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.mf = ptrtoint ptr %i.me to i64
  br label %ZL_partitionEncodeU32.exit

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i35
  %i.mg = phi i64 [ %.pre.i84, %bb.v ], [ %i.lz, %._crit_edge.i.i35 ]
  %.fr.i = freeze i64 %i.mg                       ; 7 uses
  %i.mh = load i64, ptr %6, align 8, !tbaa !45    ; 6 uses
  %i.mi = add i64 %.fr.i, -1                      ; 3 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mi
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !48
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !47
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.mi
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !48
  %i.mp = add i64 %i.mk, -1
  %i.mq = add i64 %i.mp, %i.mo                    ; 7 uses
  %28 = icmp eq i64 %i.mh, 0
  %29 = icmp ugt i64 %i.mq, 4294967294
  %or.cond.i38 = select i1 %28, i1 %29, i1 false
  %.not.i37 = icmp eq i64 %4, 0
  %or.cond98.i = or i1 %.not.i37, %or.cond.i38
  br i1 %or.cond98.i, label %.thread31.i39, label %.lr.ph.i81.preheader

.lr.ph.i81.preheader:                             ; preds = %bb.w
  %30 = add i64 %4, -1
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.mr = icmp ult i64 %30, 3
  br i1 %i.mr, label %.lr.ph.i81.epil.preheader, label %.lr.ph.i81.preheader.new

.lr.ph.i81.preheader.new:                         ; preds = %.lr.ph.i81.preheader
  %unroll_iter = and i64 %4, -4
  br label %.lr.ph.i81

._crit_edge.i83.unr-lcssa:                        ; preds = %.lr.ph.i81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i83, label %.lr.ph.i81.epil.preheader

.lr.ph.i81.epil.preheader:                        ; preds = %._crit_edge.i83.unr-lcssa, %.lr.ph.i81.preheader
  %.011255.i.epil.init = phi i8 [ 1, %.lr.ph.i81.preheader ], [ %.1113.i.3, %._crit_edge.i83.unr-lcssa ]
  %.011454.i.epil.init = phi i64 [ 0, %.lr.ph.i81.preheader ], [ %i.nr, %._crit_edge.i83.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.i81.epil

.lr.ph.i81.epil:                                  ; preds = %.lr.ph.i81.epil, %.lr.ph.i81.epil.preheader
  %.011255.i.epil = phi i8 [ %.1113.i.epil, %.lr.ph.i81.epil ], [ %.011255.i.epil.init, %.lr.ph.i81.epil.preheader ]
  %.011454.i.epil = phi i64 [ %i.mv, %.lr.ph.i81.epil ], [ %.011454.i.epil.init, %.lr.ph.i81.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i81.epil ], [ 0, %.lr.ph.i81.epil.preheader ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i.epil
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !54
  %i.mu = zext i32 %i.mt to i64                   ; 2 uses
  %31 = icmp ugt i64 %i.mh, %i.mu
  %32 = icmp ult i64 %i.mq, %i.mu
  %or.cond123.not.i.epil = select i1 %31, i1 true, i1 %32
  %.1113.i.epil = select i1 %or.cond123.not.i.epil, i8 0, i8 %.011255.i.epil ; 2 uses
  %i.mv = add nuw i64 %.011454.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i83, label %.lr.ph.i81.epil, !llvm.loop !24

._crit_edge.i83:                                  ; preds = %.lr.ph.i81.epil, %._crit_edge.i83.unr-lcssa
  %.1113.i.lcssa = phi i8 [ %.1113.i.3, %._crit_edge.i83.unr-lcssa ], [ %.1113.i.epil, %.lr.ph.i81.epil ]
  %33 = icmp eq i8 %.1113.i.lcssa, 0
  br i1 %33, label %bb.x, label %.thread31.i39, !prof !53

.lr.ph.i81:                                       ; preds = %.lr.ph.i81, %.lr.ph.i81.preheader.new
  %.011255.i = phi i8 [ 1, %.lr.ph.i81.preheader.new ], [ %.1113.i.3, %.lr.ph.i81 ]
  %.011454.i = phi i64 [ 0, %.lr.ph.i81.preheader.new ], [ %i.nr, %.lr.ph.i81 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i81.preheader.new ], [ %niter.next.3, %.lr.ph.i81 ]
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !54
  %i.my = zext i32 %i.mx to i64                   ; 2 uses
  %34 = icmp ugt i64 %i.mh, %i.my
  %35 = icmp ult i64 %i.mq, %i.my
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !54
  %i.nc = zext i32 %i.nb to i64                   ; 2 uses
  %36 = icmp ugt i64 %i.mh, %i.nc
  %37 = icmp ult i64 %i.mq, %i.nc
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !54
  %i.ng = zext i32 %i.nf to i64                   ; 2 uses
  %38 = icmp ugt i64 %i.mh, %i.ng
  %39 = icmp ult i64 %i.mq, %i.ng
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !54
  %i.nk = zext i32 %i.nj to i64                   ; 2 uses
  %40 = icmp ugt i64 %i.mh, %i.nk
  %41 = icmp ult i64 %i.mq, %i.nk
  %or.cond123.not.i.3 = select i1 %40, i1 true, i1 %41
  %i.nl = select i1 %or.cond123.not.i.3, i1 true, i1 %38
  %i.nm = select i1 %i.nl, i1 true, i1 %39
  %i.nn = select i1 %i.nm, i1 true, i1 %36
  %i.no = select i1 %i.nn, i1 true, i1 %37
  %i.np = select i1 %i.no, i1 true, i1 %34
  %i.nq = select i1 %i.np, i1 true, i1 %35
  %.1113.i.3 = select i1 %i.nq, i8 0, i8 %.011255.i ; 3 uses
  %i.nr = add nuw i64 %.011454.i, 4               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i83.unr-lcssa, label %.lr.ph.i81, !llvm.loop !25

bb.x:                                             ; preds = %._crit_edge.i83
  %i.ns = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncodeU32.__zl_static_error_info.26, ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 454, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #8 ; 2 uses
  %i.nt = extractvalue { i32, ptr } %i.ns, 0      ; 2 uses
  %i.nu = extractvalue { i32, ptr } %i.ns, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.nt, ptr %i.nu, ptr noundef nonnull @.str.13) #8
  %i.nv = ptrtoint ptr %i.nu to i64
  br label %ZL_partitionEncodeU32.exit

.thread31.i39:                                    ; preds = %._crit_edge.i83, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.nw = load i64, ptr %i.c, align 16, !tbaa !48
  %.not26.i.i = icmp eq i64 %.fr.i, 0
  br i1 %.not26.i.i, label %.split.us.i, label %.thread31.split.i

.split.us.i:                                      ; preds = %ZL_findBucket.exit.i, %.thread31.i39
  %i.nx = icmp ult i64 %.fr.i, 2
  %i.ny = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.mi, i1 true)
  %i.nz = sub nuw nsw i64 64, %i.ny
  %i.oa = select i1 %i.nx, i64 0, i64 %i.nz       ; 4 uses
  %i.ob = shl nuw nsw i64 %i.oa, 1                ; 2 uses
  %i.oc = shl nuw i64 1, %i.ob                    ; 2 uses
  %notmask.i.i40 = shl nsw i64 -1, %i.oa
  %i.od = xor i64 %notmask.i.i40, -1
  %i.oe = shl i64 8, %i.ob                        ; 2 uses
  %i.of = call ptr %.val28(ptr noundef %.val27, i64 noundef %i.oe) #8, !inline_history !26 ; 3 uses
  %i.og = call ptr %.val28(ptr noundef %.val27, i64 noundef %i.oe) #8, !inline_history !26 ; 3 uses
  %i.oh = call ptr %.val28(ptr noundef %.val27, i64 noundef %i.oc) #8, !inline_history !26 ; 3 uses
  %i.oi = icmp ne ptr %i.of, null
  %i.oj = icmp ne ptr %i.og, null
  %or.cond.i124.i = select i1 %i.oi, i1 %i.oj, i1 false
  %i.ok = icmp ne ptr %i.oh, null
  %or.cond3.i.i41 = select i1 %or.cond.i124.i, i1 %i.ok, i1 false
  br i1 %or.cond3.i.i41, label %.preheader.i.i45, label %ZL_PartitionLUTx2U32_build.exit.i

.preheader.i.i45:                                 ; preds = %.split.us.i, %.preheader.i.i45
  %.04753.i.i46 = phi i64 [ %i.pk, %.preheader.i.i45 ], [ 0, %.split.us.i ] ; 6 uses
  %i.ol = and i64 %.04753.i.i46, %i.od            ; 2 uses
  %i.om = lshr i64 %.04753.i.i46, %i.oa           ; 2 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ol
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !48
  %i.op = and i64 %i.oo, 4294967295
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.om
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !48
  %i.os = shl i64 %i.or, 32
  %i.ot = or disjoint i64 %i.os, %i.op
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %.04753.i.i46
  store i64 %i.ot, ptr %i.ou, align 8, !tbaa !48
  %i.ov = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ol ; 2 uses
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !55
  %i.ox = zext nneg i8 %i.ow to i64
  %notmask51.i.i47 = shl nsw i64 -1, %i.ox
  %i.oy = xor i64 %notmask51.i.i47, -1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.om ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !55
  %i.pb = zext nneg i8 %i.pa to i64
  %notmask52.i.i48 = shl nsw i64 -1, %i.pb
  %i.pc = xor i64 %notmask52.i.i48, -1
  %i.pd = shl i64 %i.pc, 32
  %i.pe = or i64 %i.pd, %i.oy
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %.04753.i.i46
  store i64 %i.pe, ptr %i.pf, align 8, !tbaa !48
  %i.pg = load i8, ptr %i.ov, align 1, !tbaa !55
  %i.ph = load i8, ptr %i.oz, align 1, !tbaa !55
  %i.pi = add i8 %i.ph, %i.pg
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.04753.i.i46
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !55
  %i.pk = add nuw nsw i64 %.04753.i.i46, 1        ; 2 uses
  %exitcond.not.i.i49 = icmp eq i64 %i.pk, %i.oc
  br i1 %exitcond.not.i.i49, label %bb.ab, label %.preheader.i.i45, !llvm.loop !27

.thread31.split.i:                                ; preds = %.thread31.i39, %ZL_findBucket.exit.i
  %.011556.i = phi i64 [ %i.qa, %ZL_findBucket.exit.i ], [ 0, %.thread31.i39 ] ; 3 uses
  %i.pl = shl nuw nsw i64 65536, %.011556.i       ; 3 uses
  %i.pm = icmp ult i64 %i.pl, %i.nw
  %i.pn = icmp ugt i64 %i.pl, %i.mq
  %or.cond.i125.i = or i1 %i.pn, %i.pm
  br i1 %or.cond.i125.i, label %ZL_findBucket.exit.i, label %.lr.ph.i127.i

.lr.ph.i127.i:                                    ; preds = %.thread31.split.i, %bb.aa
  %.025.i.i = phi i64 [ %.1.i.i, %bb.aa ], [ %.fr.i, %.thread31.split.i ] ; 2 uses
  %.01924.i.i = phi i64 [ %.120.i.i, %bb.aa ], [ 0, %.thread31.split.i ] ; 3 uses
  %i.po = sub nuw i64 %.025.i.i, %.01924.i.i
  %i.pp = lshr i64 %i.po, 1
  %i.pq = add i64 %i.pp, %.01924.i.i              ; 2 uses
  %i.pr = add i64 %i.pq, 1                        ; 3 uses
  %i.ps = icmp ult i64 %i.pr, %.fr.i
  br i1 %i.ps, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i127.i
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pr
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !48
  %.not.i128.i = icmp ugt i64 %i.pu, %i.pl
  br i1 %.not.i128.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %.lr.ph.i127.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.120.i.i = phi i64 [ %.01924.i.i, %bb.z ], [ %i.pr, %bb.y ] ; 3 uses
  %.1.i.i = phi i64 [ %i.pq, %bb.z ], [ %.025.i.i, %bb.y ] ; 2 uses
  %i.pv = icmp ult i64 %.120.i.i, %.1.i.i
  br i1 %i.pv, label %.lr.ph.i127.i, label %ZL_findBucket.exit.i, !llvm.loop !28

ZL_findBucket.exit.i:                             ; preds = %bb.aa, %.thread31.split.i
  %.021.i.i = phi i64 [ %.fr.i, %.thread31.split.i ], [ %.120.i.i, %bb.aa ] ; 2 uses
  %i.pw = icmp ult i64 %.021.i.i, %.fr.i
  %i.px = trunc i64 %.021.i.i to i8
  %i.py = select i1 %i.pw, i8 %i.px, i8 0
  %i.pz = getelementptr inbounds nuw i8, ptr %i.e, i64 %.011556.i
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !55
  %i.qa = add nuw nsw i64 %.011556.i, 1           ; 2 uses
  %exitcond79.not.i = icmp eq i64 %i.qa, 16
  br i1 %exitcond79.not.i, label %.split.us.i, label %.thread31.split.i, !llvm.loop !29

ZL_PartitionLUTx2U32_build.exit.i:                ; preds = %.split.us.i
  %i.qb = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncodeU32.__zl_static_error_info.27, ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 471, i32 noundef 70, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.29) #8 ; 2 uses
  %i.qc = extractvalue { i32, ptr } %i.qb, 0      ; 2 uses
  %i.qd = extractvalue { i32, ptr } %i.qb, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.qc, ptr %i.qd, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.qe = ptrtoint ptr %i.qd to i64
  br label %bb.ag

bb.ab:                                            ; preds = %.preheader.i.i45
  %i.qf = call i64 @llvm.usub.sat.i64(i64 %1, i64 7)
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.qi = call i64 @llvm.usub.sat.i64(i64 %4, i64 1)
  %.not.i50 = icmp ult i64 %4, 2
  br i1 %.not.i50, label %.preheader52.i66, label %.lr.ph62.i

.preheader52.i66:                                 ; preds = %ZS_BitCStreamFF_flush.exit.i62, %bb.ab
  %.sroa.0.0.lcssa.i67 = phi i64 [ 0, %bb.ab ], [ %.sroa.0.1.i63, %ZS_BitCStreamFF_flush.exit.i62 ] ; 2 uses
  %.sroa.25.0.lcssa.i68 = phi ptr [ %0, %bb.ab ], [ %.sroa.25.1.i64, %ZS_BitCStreamFF_flush.exit.i62 ] ; 2 uses
  %.sroa.14.025.lcssa.i69 = phi i64 [ 0, %bb.ab ], [ %.sroa.14.126.i65, %ZS_BitCStreamFF_flush.exit.i62 ] ; 2 uses
  %.0116.lcssa.i = phi i64 [ 0, %bb.ab ], [ %i.si, %ZS_BitCStreamFF_flush.exit.i62 ] ; 2 uses
  %i.qj = icmp ult i64 %.0116.lcssa.i, %4
  br i1 %i.qj, label %.lr.ph71.i, label %._crit_edge72.i

.lr.ph62.i:                                       ; preds = %bb.ab, %ZS_BitCStreamFF_flush.exit.i62
  %.011660.i = phi i64 [ %i.si, %ZS_BitCStreamFF_flush.exit.i62 ], [ 0, %bb.ab ] ; 3 uses
  %.sroa.14.02559.i = phi i64 [ %.sroa.14.126.i65, %ZS_BitCStreamFF_flush.exit.i62 ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.25.058.i = phi ptr [ %.sroa.25.1.i64, %ZS_BitCStreamFF_flush.exit.i62 ], [ %0, %bb.ab ] ; 4 uses
  %.sroa.0.057.i = phi i64 [ %.sroa.0.1.i63, %ZS_BitCStreamFF_flush.exit.i62 ], [ 0, %bb.ab ]
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011660.i ; 3 uses
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !54 ; 3 uses
  %i.qm = icmp ult i32 %i.ql, 65536
  %i.qn = lshr i32 %i.ql, %i.ld
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.qo
  %i.qq = call range(i32 0, 16) i32 @llvm.ctlz.i32(i32 range(i32 65536, 0) %i.ql, i1 true)
  %i.qr = xor i32 %i.qq, 31
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr i8, ptr %i.e, i64 %i.qs
  %i.qu = getelementptr i8, ptr %i.qt, i64 -16
  %.0.in.in.i.i = select i1 %i.qm, ptr %i.qp, ptr %i.qu
  %.0.in.i.i = load i8, ptr %.0.in.in.i.i, align 1, !tbaa !55 ; 2 uses
  %.0.i129.i = zext i8 %.0.in.i.i to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !54 ; 3 uses
  %i.qx = icmp ult i32 %i.qw, 65536
  %i.qy = lshr i32 %i.qw, %i.ld
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.qz
  %i.rb = call range(i32 0, 16) i32 @llvm.ctlz.i32(i32 range(i32 65536, 0) %i.qw, i1 true)
  %i.rc = xor i32 %i.rb, 31
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr i8, ptr %i.e, i64 %i.rd
  %i.rf = getelementptr i8, ptr %i.re, i64 -16
  %.0.in.in.i130.i = select i1 %i.qx, ptr %i.ra, ptr %i.rf
  %.0.in.i131.i = load i8, ptr %.0.in.in.i130.i, align 1, !tbaa !55 ; 2 uses
  %.0.i132.i = zext i8 %.0.in.i131.i to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 %.011660.i ; 2 uses
  store i8 %.0.in.i.i, ptr %i.rg, align 1, !tbaa !55
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 1
  store i8 %.0.in.i131.i, ptr %i.rh, align 1, !tbaa !55
  %i.ri = shl i64 %.0.i132.i, %i.oa
  %i.rj = or i64 %i.ri, %.0.i129.i                ; 3 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.rj
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !48
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.rj
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !48 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.rj
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !55
  %i.rq = zext i8 %i.rp to i64                    ; 2 uses
  %.val.i51 = load i64, ptr %i.qk, align 4
  %i.rr = sub i64 %.val.i51, %i.rl
  %.not14.i.i.i52 = icmp eq i64 %i.rn, 0
  br i1 %.not14.i.i.i52, label %ZL_bitExtract64.exit.i60, label %.lr.ph.i.i.i53

.lr.ph.i.i.i53:                                   ; preds = %.lr.ph62.i, %.lr.ph.i.i.i53
  %.017.i.i.i54 = phi i64 [ %i.rx, %.lr.ph.i.i.i53 ], [ 1, %.lr.ph62.i ] ; 2 uses
  %.01116.i.i.i55 = phi i64 [ %spec.select.i.i.i58, %.lr.ph.i.i.i53 ], [ 0, %.lr.ph62.i ]
  %.01215.i.i.i56 = phi i64 [ %i.rw, %.lr.ph.i.i.i53 ], [ %i.rn, %.lr.ph62.i ] ; 4 uses
  %i.rs = sub i64 0, %.01215.i.i.i56
end_hunk_1
begin_hunk_2_@ZL_partitionEncode:bb.a
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %i.yw
  store i8 %i.yz, ptr %i.za, align 1, !tbaa !55
  %i.zb = or disjoint i64 %.07.i.i.i111, 2        ; 2 uses
  %i.zc = shl nuw i64 %i.zb, 3
  %i.zd = lshr i64 %.sroa.0.2.i, %i.zc
  %i.ze = trunc i64 %i.zd to i8
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %i.zb
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !55
  %i.zg = or disjoint i64 %.07.i.i.i111, 3        ; 2 uses
  %i.zh = shl nuw i64 %i.zg, 3
  %i.zi = lshr i64 %.sroa.0.2.i, %i.zh
  %i.zj = trunc i64 %i.zi to i8
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %i.zg
  store i8 %i.zj, ptr %i.zk, align 1, !tbaa !55
  %i.zl = add nuw nsw i64 %.07.i.i.i111, 4        ; 2 uses
  %niter203.next.3 = add i64 %niter203, 4         ; 2 uses
  %niter203.ncmp.3 = icmp eq i64 %niter203.next.3, %unroll_iter202
  br i1 %niter203.ncmp.3, label %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa, label %.preheader.i110, !llvm.loop !20

ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa: ; preds = %.preheader.i110
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %ZS_BitCStreamFF_finish.exit.thread.i113, label %.preheader.i110.epil.preheader

.preheader.i110.epil.preheader:                   ; preds = %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa, %.preheader.i110.preheader
  %.07.i.i.i111.epil.init = phi i64 [ 0, %.preheader.i110.preheader ], [ %i.zl, %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter198, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.preheader.i110.epil

.preheader.i110.epil:                             ; preds = %.preheader.i110.epil, %.preheader.i110.epil.preheader
  %.07.i.i.i111.epil = phi i64 [ %i.zq, %.preheader.i110.epil ], [ %.07.i.i.i111.epil.init, %.preheader.i110.epil.preheader ] ; 3 uses
  %epil.iter199 = phi i64 [ %epil.iter199.next, %.preheader.i110.epil ], [ 0, %.preheader.i110.epil.preheader ]
  %i.zm = shl nuw i64 %.07.i.i.i111.epil, 3
  %i.zn = lshr i64 %.sroa.0.2.i, %i.zm
  %i.zo = trunc i64 %i.zn to i8
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %.07.i.i.i111.epil
  store i8 %i.zo, ptr %i.zp, align 1, !tbaa !55
  %i.zq = add nuw nsw i64 %.07.i.i.i111.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %ZS_BitCStreamFF_finish.exit.thread.i113, label %.preheader.i110.epil, !llvm.loop !34

ZS_BitCStreamFF_finish.exit.thread.i113:          ; preds = %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa, %.preheader.i110.epil, %bb.au, %.thread.i116
  %.sroa.13.0.lcssa109114.i = phi i64 [ 0, %.thread.i116 ], [ 0, %bb.au ], [ %i.ym, %.preheader.i110.epil ], [ %i.ym, %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa ]
  %i.zr = phi i64 [ %i.vv, %.thread.i116 ], [ %i.yo, %bb.au ], [ %i.yo, %.preheader.i110.epil ], [ %i.yo, %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa ]
  %i.zs = ptrtoint ptr %0 to i64
  %i.zt = sub i64 %.sroa.13.0.lcssa109114.i, %i.zs
  %i.zu = add i64 %i.zt, %i.zr
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %ZL_partitionEncode_generic.exit

ZS_BitCStreamFF_finish.exit.i114:                 ; preds = %.critedge.thread.i
  %i.zv = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_BitCStreamFF_finish.__zl_static_error_info, ptr noundef nonnull %8, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 264, i32 noundef 71, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8) #8 ; 2 uses
  %i.zw = extractvalue { i32, ptr } %i.zv, 0      ; 2 uses
  %i.zx = extractvalue { i32, ptr } %i.zv, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.zw, ptr %i.zx, ptr noundef nonnull @.str.24) #8
  %i.zy = ptrtoint ptr %i.zx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %.not89.i = icmp eq i32 %i.zw, 0
  br i1 %.not89.i, label %ZL_partitionEncode_generic.exit, label %bb.av, !prof !56

bb.av:                                            ; preds = %ZS_BitCStreamFF_finish.exit.i114
  %i.zz = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncode_generic.__zl_static_error_info.37, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef 117, i32 noundef 71, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.39) #8 ; 2 uses
  %i.aaa = extractvalue { i32, ptr } %i.zz, 0     ; 2 uses
  %i.aab = extractvalue { i32, ptr } %i.zz, 1     ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aaa, ptr %i.aab, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.aac = ptrtoint ptr %i.aab to i64
  br label %ZL_partitionEncode_generic.exit

ZL_partitionEncode_generic.exit:                  ; preds = %.critedge.i, %ZS_BitCStreamFF_finish.exit.thread.i113, %ZS_BitCStreamFF_finish.exit.i114, %bb.av
  %.sroa.041.4.i = phi i32 [ %i.yi, %.critedge.i ], [ %i.aaa, %bb.av ], [ 0, %ZS_BitCStreamFF_finish.exit.i114 ], [ 0, %ZS_BitCStreamFF_finish.exit.thread.i113 ]
  %.sroa.7.4.i = phi i64 [ %i.yk, %.critedge.i ], [ %i.aac, %bb.av ], [ %i.zy, %ZS_BitCStreamFF_finish.exit.i114 ], [ %i.zu, %ZS_BitCStreamFF_finish.exit.thread.i113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.aw

bb.aw:                                            ; preds = %ZL_partitionEncode_generic.exit, %ZL_partitionEncodeU32.exit, %ZL_partitionEncodeU16.exit
  %.sroa.0114.6.i.pn = phi i32 [ %.sroa.0114.6.i, %ZL_partitionEncodeU16.exit ], [ %.sroa.0108.6.i, %ZL_partitionEncodeU32.exit ], [ %.sroa.041.4.i, %ZL_partitionEncode_generic.exit ]
  %.sroa.14.6.i.pn = phi i64 [ %.sroa.14.6.i, %ZL_partitionEncodeU16.exit ], [ %.sroa.14.6.i42, %ZL_partitionEncodeU32.exit ], [ %.sroa.7.4.i, %ZL_partitionEncode_generic.exit ]
  %.fca.0.insert.i.pn = insertvalue { i32, i64 } poison, i32 %.sroa.0114.6.i.pn, 0
  %.pn = insertvalue { i32, i64 } %.fca.0.insert.i.pn, i64 %.sroa.14.6.i.pn, 1
  ret { i32, i64 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

declare i64 @ZL_PartitionParams_getLargestPartitionSize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ZL_PartitionParams_computeBasesU64(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ZL_PartitionParams_computeBits(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @ZL_PartitionParams_getNumTrailingZeros(ptr noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{null, null}
!12 = distinct !{!12, !49}
!13 = distinct !{!13, !52}
!14 = distinct !{!14, !49}
!15 = distinct !{null, null}
!16 = distinct !{!16, !49}
!17 = distinct !{!17, !49}
!18 = distinct !{!18, !49}
!19 = distinct !{!19, !49}
!20 = distinct !{!20, !49}
!21 = distinct !{!21, !52}
!22 = distinct !{!22, !49}
!23 = distinct !{null, null}
!24 = distinct !{!24, !52}
!25 = distinct !{!25, !49}
!26 = distinct !{null, null}
!27 = distinct !{!27, !49}
!28 = distinct !{!28, !49}
!29 = distinct !{!29, !49}
!30 = distinct !{!30, !49}
!31 = distinct !{!31, !49}
!32 = distinct !{!32, !52}
!33 = distinct !{!33, !49}
!34 = distinct !{!34, !52}
!35 = !{!"any pointer", !7, i64 0}
!36 = !{!"p1 _ZTS21ZL_OperationContext_s", !35, i64 0}
!37 = !{!"", !8, i64 0}
!38 = !{!"p1 omnipotent char", !35, i64 0}
!39 = !{!"", !37, i64 0, !37, i64 4, !8, i64 8, !38, i64 16}
!40 = !{!"", !36, i64 0, !39, i64 8}
!41 = !{!40, !36, i64 0}
!42 = !{!"long", !7, i64 0}
!43 = !{!"p1 long", !35, i64 0}
!44 = !{!"", !42, i64 0, !42, i64 8, !43, i64 16}
!45 = !{!44, !42, i64 0}
!46 = !{!44, !42, i64 8}
!47 = !{!44, !43, i64 16}
!48 = !{!42, !42, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"short", !7, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!54 = !{!8, !8, i64 0}
!55 = !{!7, !7, i64 0}
!56 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!57 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_2
