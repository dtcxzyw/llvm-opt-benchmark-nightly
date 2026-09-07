Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_pivco_binding?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_Histogram8 = type { %struct.ZL_Histogram, [255 x i32] }
%struct.ZL_Histogram = type { i32, i32, i32, i32, i32, [1 x i32] }
%struct.ZL_RefParam = type { i32, ptr, i64 }

@.str = private unnamed_addr constant [85 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/pivco_huffman/encode_pivco_binding.c\00", align 1
@__func__.EI_pivco_huffman = private unnamed_addr constant [17 x i8] c"EI_pivco_huffman\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Wrapping error.\00", align 1
@EI_pivco_huffman.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.2, ptr @.str, ptr @__func__.EI_pivco_huffman, i32 150, [4 x i8] zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [89 x i8] c"Check `(const char*)(const void*)weightsStream == (const char*)0' failed: Allocation: %s\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"(const char*)(const void*)weightsStream\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EI_pivco_huffman.__zl_static_error_info.9 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str, ptr @__func__.EI_pivco_huffman, i32 154, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EI_pivco_huffman.__zl_static_error_info.12 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.13, ptr @.str, ptr @__func__.EI_pivco_huffman, i32 159, [4 x i8] zeroinitializer }, align 8
@.str.13 = private unnamed_addr constant [85 x i8] c"Check `(const char*)(const void*)bitstream == (const char*)0' failed: Allocation: %s\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"(const char*)(const void*)bitstream\00", align 1
@EI_pivco_huffman.__zl_static_error_info.15 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str, ptr @__func__.EI_pivco_huffman, i32 164, [4 x i8] zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [83 x i8] c"Check `(const char*)(const void*)scratch == (const char*)0' failed: Allocation: %s\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"(const char*)(const void*)scratch\00", align 1
@EI_pivco_huffman.__zl_static_error_info.18 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str, ptr @__func__.EI_pivco_huffman, i32 178, [4 x i8] zeroinitializer }, align 8
@.str.19 = private unnamed_addr constant [91 x i8] c"Check `dstSize == (18446744073709551615UL)' failed: Generic: PivCo-Huffman encoding failed\00", align 1
@.str.20 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"dstSize\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"(18446744073709551615UL)\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"\0A\09PivCo-Huffman encoding failed\00", align 1
@EI_pivco_huffman.__zl_static_error_info.24 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str, ptr @__func__.EI_pivco_huffman, i32 179, [4 x i8] zeroinitializer }, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"buildWeights\00", align 1
@buildWeights.__zl_static_error_info.31 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str, ptr @.str.26, i32 45, [4 x i8] zeroinitializer }, align 8
@.str.32 = private unnamed_addr constant [116 x i8] c"Check `(const char*)(const void*)src == (const char*)0' failed: Input does not respect conditions for this node: %s\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"(const char*)(const void*)src\00", align 1
@buildWeights.__zl_static_error_info.34 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.35, ptr @.str, ptr @.str.26, i32 50, [4 x i8] zeroinitializer }, align 8
@.str.35 = private unnamed_addr constant [142 x i8] c"Check `srcSize > (2147483647 *2U +1U)' failed: Input does not respect conditions for this node: PivCo-Huffman input is too large to histogram\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"srcSize\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"(2147483647 *2U +1U)\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"\0A\09PivCo-Huffman input is too large to histogram\00", align 1
@buildWeights.__zl_static_error_info.40 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.41, ptr @.str, ptr @.str.26, i32 87, [4 x i8] zeroinitializer }, align 8
@.str.41 = private unnamed_addr constant [75 x i8] c"Check `ZS_HUF_isError(hufRet)' failed: Generic: HUF_buildCTable failed: %s\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"ZS_HUF_isError(hufRet)\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"\0A\09HUF_buildCTable failed: %s\00", align 1
@buildWeights.__zl_static_error_info.45 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.46, ptr @.str, ptr @.str.26, i32 91, [4 x i8] zeroinitializer }, align 8
@.str.46 = private unnamed_addr constant [42 x i8] c"Check `tableLog > 12' failed: Generic: %s\00", align 1
@.str.47 = private unnamed_addr constant [81 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned int) %u\0A\09rhs = (unsigned int) %u\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"tableLog\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"12\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_pivco_huffman(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 10 uses
  %4 = alloca %struct.ZL_Histogram8, align 4      ; 6 uses
  %5 = alloca %struct.ZL_RefParam, align 8        ; 5 uses
  %i.a = alloca [257 x i64], align 16             ; 4 uses
  %6 = alloca %struct.ZL_RefParam, align 8        ; 4 uses
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 11 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %i.c = alloca [20 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #6 ; 2 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !19
  %i.f = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.g = tail call ptr @ZL_Data_rPtr(ptr noundef %i.f) #5 ; 3 uses
  %i.h = tail call i64 @ZL_Data_numElts(ptr noundef %i.f) #5 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.e, ptr %3, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  br label %ZL_varintEncode.exit.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @ZL_Encoder_getLocalParam(ptr dead_on_unwind nonnull writable sret(%struct.ZL_RefParam) align 8 %5, ptr noundef %0, i32 noundef 246) #5
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not92.i = icmp eq ptr %i.g, null
  br i1 %.not92.i, label %.thread.i, label %bb.d, !prof !25

.thread.i:                                        ; preds = %bb.c
  %i.m = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @buildWeights.__zl_static_error_info.31, ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef 45, i32 noundef 55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.m, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.n, ptr %i.o, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.p = ptrtoint ptr %i.o to i64
  br label %buildWeights.exit

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.h, 4294967296
  br i1 %i.q, label %bb.f, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.r = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @buildWeights.__zl_static_error_info.34, ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef 50, i32 noundef 55, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i64 noundef %i.h, i64 noundef 4294967295) #5 ; 2 uses
  %i.s = extractvalue { i32, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.r, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.s, ptr %i.t, ptr noundef nonnull @.str.39) #5
  %i.u = ptrtoint ptr %i.t to i64
  br label %buildWeights.exit

bb.f:                                             ; preds = %bb.d
  call void @ZL_Histogram_init(ptr noundef nonnull %4, i32 noundef 255) #5
  call void @ZL_Histogram_build(ptr noundef nonnull %4, ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 1) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.084.i = phi ptr [ %4, %bb.f ], [ %i.l, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.084.i, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !28   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.084.i, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %.084.i, i64 20
  %i.aa = zext i32 %i.w to i64                    ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ac = icmp eq i32 %i.y, 1
  br i1 %i.ac, label %buildWeights.exit.thread111, label %bb.h

buildWeights.exit.thread111:                      ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  store i8 1, ptr %i.ad, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @ZL_Encoder_getLocalParam(ptr dead_on_unwind nonnull writable sret(%struct.ZL_RefParam) align 8 %6, ptr noundef %0, i32 noundef 247) #5
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %.not93.i = icmp eq ptr %i.af, null
  br i1 %.not93.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  br label %.thread103.i

bb.j:                                             ; preds = %bb.h
  %i.ah = call i32 @ZS_HUF_optimalTableLog(i32 noundef 12, i64 noundef %i.h, i32 noundef %i.w) #5
  %i.ai = call i64 @ZS_HUF_buildCTable(ptr noundef nonnull %i.a, ptr noundef nonnull %i.z, i32 noundef %i.w, i32 noundef %i.ah) #5 ; 3 uses
  %i.aj = call i32 @ZS_HUF_isError(i64 noundef %i.ai) #5
  %.not94.i = icmp eq i32 %i.aj, 0
  br i1 %.not94.i, label %.thread103.i, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.ak = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @buildWeights.__zl_static_error_info.40, ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef 87, i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #5 ; 2 uses
  %i.al = extractvalue { i32, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.ak, 1      ; 2 uses
  %i.an = call ptr @ZS_HUF_getErrorName(i64 noundef %i.ai) #5
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.al, ptr %i.am, ptr noundef nonnull @.str.44, ptr noundef %i.an) #5
  %i.ao = ptrtoint ptr %i.am to i64
  br label %bb.n

.thread103.i:                                     ; preds = %bb.j, %bb.i
  %.181.i = phi ptr [ %i.af, %bb.i ], [ %i.a, %bb.j ]
  %.1.in.i = phi i64 [ %i.ag, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.1.i = trunc i64 %.1.in.i to i32               ; 3 uses
  %i.ap = icmp ult i32 %.1.i, 13
  br i1 %i.ap, label %.preheader.i, label %.thread107.i, !prof !26

.preheader.i:                                     ; preds = %.thread103.i
  %i.aq = add nuw nsw i32 %.1.i, 1
  br label %bb.m

.thread107.i:                                     ; preds = %.thread103.i
  %i.ar = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @buildWeights.__zl_static_error_info.45, ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef 91, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.49, i32 noundef %.1.i, i32 noundef 12) #5 ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { i32, ptr } %i.ar, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.as, ptr %i.at, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.au = ptrtoint ptr %i.at to i64
  br label %bb.n

bb.l:                                             ; preds = %bb.m
  %i.av = and i64 %.1.in.i, 15
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.preheader.i
  %.0110.i = phi i32 [ 0, %.preheader.i ], [ %10, %bb.m ] ; 3 uses
  %i.aw = call i32 @ZS_HUF_getNbBitsFromCTable(ptr noundef nonnull %.181.i, i32 noundef %.0110.i) #5 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = sub i32 %i.aq, %i.aw
  %i.az = trunc i32 %i.ay to i8
  %i.ba = select i1 %i.ax, i8 0, i8 %i.az
  %8 = zext i32 %.0110.i to i64
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 %8
  store i8 %i.ba, ptr %9, align 1, !tbaa !30
  %10 = add i32 %.0110.i, 1                       ; 2 uses
  %.not95.i = icmp ugt i32 %10, %i.w
  br i1 %.not95.i, label %bb.l, label %bb.m, !llvm.loop !11

bb.n:                                             ; preds = %bb.l, %.thread107.i, %bb.k
  %.sroa.078.8.i = phi i32 [ 0, %bb.l ], [ %i.as, %.thread107.i ], [ %i.al, %bb.k ]
  %.sroa.16.8.i = phi i64 [ %i.av, %bb.l ], [ %i.au, %.thread107.i ], [ %i.ao, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %buildWeights.exit

buildWeights.exit:                                ; preds = %.thread.i, %bb.e, %bb.n
  %.0 = phi i64 [ 0, %.thread.i ], [ 0, %bb.e ], [ %i.ab, %bb.n ]
  %.sroa.078.10.i = phi i32 [ %i.n, %.thread.i ], [ %i.s, %bb.e ], [ %.sroa.078.8.i, %bb.n ] ; 2 uses
  %.sroa.16.10.i = phi i64 [ %i.p, %.thread.i ], [ %i.u, %bb.e ], [ %.sroa.16.8.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %.not.i92 = icmp eq i32 %.sroa.078.10.i, 0
  br i1 %.not.i92, label %bb.p, label %bb.o

bb.o:                                             ; preds = %buildWeights.exit
  %i.bb = inttoptr i64 %.sroa.16.10.i to ptr
  %i.bc = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %.sroa.078.10.i, ptr %i.bb, ptr null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EI_pivco_huffman, i32 noundef 136, ptr noundef nonnull @.str.1) #5 ; 2 uses
  %i.bd = extractvalue { i32, ptr } %i.bc, 0
  %i.be = extractvalue { i32, ptr } %i.bc, 1
  %i.bf = ptrtoint ptr %i.be to i64
  br label %bb.aa

bb.p:                                             ; preds = %buildWeights.exit, %buildWeights.exit.thread111
  %.1104.ph = phi i64 [ %i.ab, %buildWeights.exit.thread111 ], [ %.0, %buildWeights.exit ] ; 3 uses
  %.0.i.ph = phi i64 [ 0, %buildWeights.exit.thread111 ], [ %.sroa.16.10.i, %buildWeights.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.bg = icmp ugt i64 %i.h, 127
  br i1 %i.bg, label %.lr.ph.i.i, label %ZL_varintEncode.exit.thread.i

ZL_varintEncode.exit.thread.i:                    ; preds = %.thread, %bb.p
  %.0.i.ph130 = phi i64 [ 0, %.thread ], [ %.0.i.ph, %bb.p ]
  %.1104.ph128 = phi i64 [ 0, %.thread ], [ %.1104.ph, %bb.p ]
  %i.bh = trunc nuw nsw i64 %i.h to i8
  store i8 %i.bh, ptr %i.c, align 16, !tbaa !30
  %i.bi = ptrtoint ptr %i.c to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %encodeHeader.exit

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %.089.i.i = phi i64 [ %i.bn, %.lr.ph.i.i ], [ %i.h, %bb.p ] ; 3 uses
  %i.bk = trunc i64 %.089.i.i to i8
  %i.bl = or i8 %i.bk, -128
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  store i8 %i.bl, ptr %.010.i.i, align 1, !tbaa !30
  %i.bn = lshr i64 %.089.i.i, 7                   ; 2 uses
  %i.bo = icmp ugt i64 %.089.i.i, 16383
  br i1 %i.bo, label %.lr.ph.i.i, label %ZL_varintEncode.exit.i, !llvm.loop !12

ZL_varintEncode.exit.i:                           ; preds = %.lr.ph.i.i
  %i.bp = trunc nuw nsw i64 %i.bn to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 2
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !30
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bt ; 6 uses
  %i.bv = icmp ugt i64 %i.h, 32768
  br i1 %i.bv, label %.lr.ph.i11.preheader.i, label %encodeHeader.exit

.lr.ph.i11.preheader.i:                           ; preds = %ZL_varintEncode.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 -128, ptr %i.bu, align 1, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 -128, ptr %i.bw, align 1, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 2, ptr %i.bx, align 1, !tbaa !30
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.br
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ca
  br label %encodeHeader.exit

encodeHeader.exit:                                ; preds = %ZL_varintEncode.exit.thread.i, %ZL_varintEncode.exit.i, %.lr.ph.i11.preheader.i
  %.0.i.ph129 = phi i64 [ %.0.i.ph, %.lr.ph.i11.preheader.i ], [ %.0.i.ph, %ZL_varintEncode.exit.i ], [ %.0.i.ph130, %ZL_varintEncode.exit.thread.i ]
  %.1104.ph127 = phi i64 [ %.1104.ph, %.lr.ph.i11.preheader.i ], [ %.1104.ph, %ZL_varintEncode.exit.i ], [ %.1104.ph128, %ZL_varintEncode.exit.thread.i ] ; 5 uses
  %i.cc = phi i64 [ %i.bs, %.lr.ph.i11.preheader.i ], [ %i.bs, %ZL_varintEncode.exit.i ], [ %i.bi, %ZL_varintEncode.exit.thread.i ]
  %.0.i93 = phi ptr [ %i.cb, %.lr.ph.i11.preheader.i ], [ %i.bu, %ZL_varintEncode.exit.i ], [ %i.bj, %ZL_varintEncode.exit.thread.i ]
  %i.cd = ptrtoint ptr %.0.i93 to i64
  %i.ce = sub i64 %i.cd, %i.cc
  call void @ZL_Encoder_sendCodecHeader(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %i.ce) #5
  %i.cf = call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %.1104.ph127, i64 noundef 1) #5 ; 3 uses
  %.not85 = icmp eq ptr %i.cf, null
  br i1 %.not85, label %.thread131, label %bb.q, !prof !25

.thread131:                                       ; preds = %encodeHeader.exit
  %i.cg = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_pivco_huffman.__zl_static_error_info, ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EI_pivco_huffman, i32 noundef 150, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.ch = extractvalue { i32, ptr } %i.cg, 0      ; 2 uses
  %i.ci = extractvalue { i32, ptr } %i.cg, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ch, ptr %i.ci, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.cj = ptrtoint ptr %i.ci to i64
  br label %bb.z

bb.q:                                             ; preds = %encodeHeader.exit
  %.not86 = icmp eq i64 %.1104.ph127, 0
  br i1 %.not86, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.cf) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 16 %i.b, i64 %.1104.ph127, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.cl = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.cf, i64 noundef %.1104.ph127) #5 ; 2 uses
  %i.cm = extractvalue { i32, i64 } %i.cl, 0      ; 2 uses
  %.not87 = icmp eq i32 %i.cm, 0
  br i1 %.not87, label %bb.u, label %bb.t, !prof !26

bb.t:                                             ; preds = %bb.s
  %i.cn = extractvalue { i32, i64 } %i.cl, 1
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.cm, ptr %i.co, ptr nonnull @EI_pivco_huffman.__zl_static_error_info.9, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EI_pivco_huffman, i32 noundef 154, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #5 ; 2 uses
  %i.cq = extractvalue { i32, ptr } %i.cp, 0
  %i.cr = extractvalue { i32, ptr } %i.cp, 1
  %i.cs = ptrtoint ptr %i.cr to i64
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.ct = call i64 @ZL_PivCoHuffmanEncode_bound(i64 noundef %i.h, i64 noundef 32768) #5 ; 2 uses
  %i.cu = call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 1, i64 noundef %i.ct, i64 noundef 1) #5 ; 3 uses
  %.not88 = icmp eq ptr %i.cu, null
  br i1 %.not88, label %.thread134, label %bb.v, !prof !25

.thread134:                                       ; preds = %bb.u
  %i.cv = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_pivco_huffman.__zl_static_error_info.12, ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EI_pivco_huffman, i32 noundef 159, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.cw = extractvalue { i32, ptr } %i.cv, 0      ; 2 uses
  %i.cx = extractvalue { i32, ptr } %i.cv, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cw, ptr %i.cx, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.cy = ptrtoint ptr %i.cx to i64
  br label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cz = call i64 @ZL_PivCoHuffmanEncode_scratchElements(i64 noundef %i.h, i64 noundef 32768) #5 ; 2 uses
  %i.da = call ptr @ZL_Encoder_getScratchSpace(ptr noundef %0, i64 noundef %i.cz) #5 ; 2 uses
  %.not89 = icmp eq ptr %i.da, null
  br i1 %.not89, label %.thread137, label %bb.w, !prof !25

.thread137:                                       ; preds = %bb.v
  %i.db = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_pivco_huffman.__zl_static_error_info.15, ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EI_pivco_huffman, i32 noundef 164, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.dc = extractvalue { i32, ptr } %i.db, 0      ; 2 uses
  %i.dd = extractvalue { i32, ptr } %i.db, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dc, ptr %i.dd, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.de = ptrtoint ptr %i.dd to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.df = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.cu) #5
  %i.dg = trunc i64 %.0.i.ph129 to i32
  %i.dh = call i64 @ZL_PivCoHuffman_encode(ptr noundef %i.df, i64 noundef %i.ct, ptr noundef nonnull %i.da, i64 noundef %i.cz, ptr noundef nonnull %i.b, i64 noundef %.1104.ph127, i32 noundef %i.dg, ptr noundef %i.g, i64 noundef %i.h, i64 noundef 32768, ptr noundef null) #5 ; 2 uses
  %.not90 = icmp eq i64 %i.dh, -1
  br i1 %.not90, label %.thread140, label %bb.x, !prof !25

.thread140:                                       ; preds = %bb.w
  %i.di = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_pivco_huffman.__zl_static_error_info.18, ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EI_pivco_huffman, i32 noundef 178, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, i64 noundef -1, i64 noundef -1) #5 ; 2 uses
  %i.dj = extractvalue { i32, ptr } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { i32, ptr } %i.di, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dj, ptr %i.dk, ptr noundef nonnull @.str.23) #5
  %i.dl = ptrtoint ptr %i.dk to i64
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dm = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.cu, i64 noundef %i.dh) #5 ; 2 uses
  %i.dn = extractvalue { i32, i64 } %i.dm, 0      ; 2 uses
  %.not91 = icmp eq i32 %i.dn, 0
  br i1 %.not91, label %bb.z, label %bb.y, !prof !26

bb.y:                                             ; preds = %bb.x
  %i.do = extractvalue { i32, i64 } %i.dm, 1
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.dn, ptr %i.dp, ptr nonnull @EI_pivco_huffman.__zl_static_error_info.24, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.EI_pivco_huffman, i32 noundef 179, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #5 ; 2 uses
  %i.dr = extractvalue { i32, ptr } %i.dq, 0
  %i.ds = extractvalue { i32, ptr } %i.dq, 1
  %i.dt = ptrtoint ptr %i.ds to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %.thread140, %.thread137, %.thread134, %.thread131, %bb.y, %bb.t
  %.sroa.071.7 = phi i32 [ %i.cq, %bb.t ], [ %i.ch, %.thread131 ], [ %i.cw, %.thread134 ], [ %i.dc, %.thread137 ], [ %i.dr, %bb.y ], [ %i.dj, %.thread140 ], [ 0, %bb.x ]
  %.sroa.23.7 = phi i64 [ %i.cs, %bb.t ], [ %i.cj, %.thread131 ], [ %i.cy, %.thread134 ], [ %i.de, %.thread137 ], [ %i.dt, %bb.y ], [ %i.dl, %.thread140 ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o
  %.sroa.071.8 = phi i32 [ %i.bd, %bb.o ], [ %.sroa.071.7, %bb.z ]
  %.sroa.23.8 = phi i64 [ %i.bf, %bb.o ], [ %.sroa.23.7, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.071.8, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.23.8, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

end_hunk_0
