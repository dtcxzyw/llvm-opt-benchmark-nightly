Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/segmenter_numeric?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_IntParam = type { i32, i32 }
%struct.ZL_LocalParams = type { %struct.ZL_LocalIntParams, %struct.ZL_LocalCopyParams, %struct.ZL_LocalRefParams }
%struct.ZL_LocalIntParams = type { ptr, i64 }
%struct.ZL_LocalCopyParams = type { ptr, i64 }
%struct.ZL_LocalRefParams = type { ptr, i64 }
%struct.ZL_ParameterizedGraphDesc = type { ptr, %struct.ZL_GraphID, ptr, i64, ptr, i64, ptr, %struct.ZL_MParam }
%struct.ZL_MParam = type { ptr, i64, %struct.ZL_MParamID }
%struct.ZL_MParamID = type { %struct.ZL_UniqueID }
%struct.ZL_UniqueID = type { [32 x i8] }

@SEGM_numeric.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/compress/segmenters/segmenter_numeric.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SEGM_numeric\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SEGM_numeric.__zl_static_error_info.5 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, [4 x i8] zeroinitializer }, align 8
@SEGM_numeric.__zl_static_error_info.6 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, [4 x i8] zeroinitializer }, align 8
@SEGM_numFromSerial.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 21, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.1, ptr @.str.8, i32 69, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [97 x i8] c"Check `!(width == 1 || width == 2 || width == 4 || width == 8)' failed: Parameter is invalid: %s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"SEGM_numFromSerial\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"!(width == 1 || width == 2 || width == 4 || width == 8)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@SEGM_numFromSerial.__zl_static_error_info.12 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 21, [4 x i8] zeroinitializer, ptr @.str.13, ptr @.str.1, ptr @.str.8, i32 82, [4 x i8] zeroinitializer }, align 8
@.str.13 = private unnamed_addr constant [69 x i8] c"Check `!(chunkByteSizeAligned > 0)' failed: Parameter is invalid: %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"!(chunkByteSizeAligned > 0)\00", align 1
@SEGM_numFromSerial.__zl_static_error_info.15 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 21, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.1, ptr @.str.8, i32 87, [4 x i8] zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [69 x i8] c"Check `customGraphs.nbGraphIDs < 1' failed: Parameter is invalid: %s\00", align 1
@.str.17 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"customGraphs.nbGraphIDs\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@SEGM_numFromSerial.__zl_static_error_info.21 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.8, i32 95, [4 x i8] zeroinitializer }, align 8
@SEGM_numFromSerial.__zl_static_error_info.22 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.8, i32 101, [4 x i8] zeroinitializer }, align 8
@SEGM_numFromSerial.__zl_static_error_info.23 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.8, i32 106, [4 x i8] zeroinitializer }, align 8
@ZL_Compressor_buildNumFromSerialSegmenter2.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 21, [4 x i8] zeroinitializer, ptr @.str.24, ptr @.str.1, ptr @.str.25, i32 144, [4 x i8] zeroinitializer }, align 8
@.str.24 = private unnamed_addr constant [46 x i8] c"Check `!(0)' failed: Parameter is invalid: %s\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"ZL_Compressor_buildNumFromSerialSegmenter2\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"!(0)\00", align 1
@ZL_Compressor_buildNumFromSerialSegmenter2.__zl_static_error_info.27 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 21, [4 x i8] zeroinitializer, ptr @.str.28, ptr @.str.1, ptr @.str.25, i32 161, [4 x i8] zeroinitializer }, align 8
@.str.28 = private unnamed_addr constant [65 x i8] c"Check `chunkByteSize < (32768)' failed: Parameter is invalid: %s\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"chunkByteSize\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"(32768)\00", align 1
@ZL_Compressor_buildNumFromSerialSegmenter2.__zl_static_error_info.31 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 21, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.1, ptr @.str.25, i32 163, [4 x i8] zeroinitializer }, align 8
@.str.32 = private unnamed_addr constant [80 x i8] c"Check `!(chunkByteSize <= (size_t)2147483647)' failed: Parameter is invalid: %s\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"!(chunkByteSize <= (size_t)2147483647)\00", align 1
@ZL_Compressor_buildNumFromSerialSegmenter2.__zl_static_error_info.34 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 30, [4 x i8] zeroinitializer, ptr @.str.35, ptr @.str.1, ptr @.str.25, i32 185, [4 x i8] zeroinitializer }, align 8
@.str.35 = private unnamed_addr constant [64 x i8] c"Check `!(ZL_GraphID_isValid(result))' failed: Graph invalid: %s\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"!(ZL_GraphID_isValid(result))\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @SEGM_numeric(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ZL_ErrorContext, align 8    ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = tail call ptr @ZL_Segmenter_getOperationContext(ptr noundef %0) #8
  store ptr %i.d, ptr %1, align 8, !tbaa !17
  %i.e = tail call i64 @ZL_Segmenter_numInputs(ptr noundef %0) #7 ; 0 uses
  %i.f = tail call ptr @ZL_Segmenter_getInput(ptr noundef %0, i64 noundef 0) #7 ; 2 uses
  %i.g = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.h = udiv i64 16777216, %i.g                  ; 2 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.i = tail call i64 @ZL_Data_numElts(ptr noundef %i.f) #7 ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !19
  %i.j = tail call i32 @ZL_Segmenter_getCParam(ptr noundef %0, i32 noundef 4) #7
  %i.k = icmp slt i32 %i.j, 21
  br i1 %i.k, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = icmp ugt i64 %i.i, %i.h
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.m = call { i32, i64 } @ZL_Segmenter_processChunk(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1, i32 35, ptr noundef null) #7 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0        ; 2 uses
  %.not43 = icmp eq i32 %i.n, 0
  br i1 %.not43, label %bb.g, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.o = extractvalue { i32, i64 } %i.m, 1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %1, i32 %i.n, ptr %i.p, ptr nonnull @SEGM_numeric.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.r = extractvalue { i32, ptr } %i.q, 0
  %i.s = extractvalue { i32, ptr } %i.q, 1
  %i.t = ptrtoint ptr %i.s to i64
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.u = call { i32, i64 } @ZL_Segmenter_processChunk(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1, i32 35, ptr noundef null) #7 ; 2 uses
  %i.v = extractvalue { i32, i64 } %i.u, 0        ; 2 uses
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %.lr.ph
  %i.w = extractvalue { i32, i64 } %i.u, 1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %1, i32 %i.v, ptr %i.x, ptr nonnull @SEGM_numeric.__zl_static_error_info.5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.z = extractvalue { i32, ptr } %i.y, 0
  %i.aa = extractvalue { i32, ptr } %i.y, 1
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !19
  %i.af = icmp ugt i64 %i.ae, %i.ac
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.ag = call { i32, i64 } @ZL_Segmenter_processChunk(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1, i32 35, ptr noundef null) #7 ; 2 uses
  %i.ah = extractvalue { i32, i64 } %i.ag, 0      ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.g, label %bb.f, !prof !20

bb.f:                                             ; preds = %._crit_edge
  %i.ai = extractvalue { i32, i64 } %i.ag, 1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %1, i32 %i.ah, ptr %i.aj, ptr nonnull @SEGM_numeric.__zl_static_error_info.6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.al = extractvalue { i32, ptr } %i.ak, 0
  %i.am = extractvalue { i32, ptr } %i.ak, 1
  %i.an = ptrtoint ptr %i.am to i64
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.b, %bb.f, %bb.d, %bb.c
  %.sroa.031.0 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ], [ %i.z, %bb.d ], [ %i.al, %bb.f ], [ 0, %._crit_edge ]
  %.sroa.21.0 = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ], [ %i.ab, %bb.d ], [ %i.an, %bb.f ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.031.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.21.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_Segmenter_getOperationContext(ptr noundef) local_unnamed_addr #3

declare i64 @ZL_Segmenter_numInputs(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Segmenter_getInput(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ZL_Segmenter_getCParam(ptr noundef, i32 noundef) local_unnamed_addr #4

declare { i32, i64 } @ZL_Segmenter_processChunk(ptr noundef, ptr noundef, i64 noundef, i32, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define { i32, i64 } @SEGM_numFromSerial(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ZL_ErrorContext, align 8    ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = tail call ptr @ZL_Segmenter_getOperationContext(ptr noundef %0) #8
  store ptr %i.d, ptr %1, align 8, !tbaa !17
  %i.e = tail call i64 @ZL_Segmenter_numInputs(ptr noundef %0) #7 ; 0 uses
  %i.f = tail call ptr @ZL_Segmenter_getInput(ptr noundef %0, i64 noundef 0) #7
  %i.g = tail call i64 @ZL_Segmenter_getLocalIntParam(ptr noundef %0, i32 noundef 301) #7 ; 2 uses
  %i.h = and i64 %i.g, 4294967295
  %.not = icmp eq i64 %i.h, 4294967295
  %i.i = ashr i64 %i.g, 32
  %i.j = select i1 %.not, i64 1, i64 %i.i         ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.j)
  %i.l = icmp eq i64 %i.k, 1
  %i.m = and i64 %i.j, 15
  %switch = icmp ne i64 %i.m, 0
  %or.cond = and i1 %i.l, %switch
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @SEGM_numFromSerial.__zl_static_error_info, ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 69, i32 noundef 21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7 ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.n, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.o, ptr %i.p, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4) #7
  %i.q = ptrtoint ptr %i.p to i64
  br label %bb.m

.critedge:                                        ; preds = %bb.a
  %i.r = tail call i64 @ZL_Segmenter_getLocalIntParam(ptr noundef %0, i32 noundef 300) #7 ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %.not73 = icmp eq i64 %i.s, 4294967295
  %i.t = ashr i64 %i.r, 32
  %i.u = select i1 %.not73, i64 16777216, i64 %i.t ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.v = urem i64 %i.u, %i.j                      ; 2 uses
  %i.w = sub nuw nsw i64 %i.u, %i.v               ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !19
  %.not74 = icmp eq i64 %i.u, %i.v
  br i1 %.not74, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %.critedge
  %i.x = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @SEGM_numFromSerial.__zl_static_error_info.12, ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 82, i32 noundef 21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #7 ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i32, ptr } %i.x, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.y, ptr %i.z, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4) #7
  %i.aa = ptrtoint ptr %i.z to i64
  br label %bb.l

bb.d:                                             ; preds = %.critedge
  %i.ab = tail call { ptr, i64 } @ZL_Segmenter_getCustomGraphs(ptr noundef %0) #7 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1
  %.not75 = icmp eq i64 %i.ac, 0
  br i1 %.not75, label %.thread, label %bb.e, !prof !22

.thread:                                          ; preds = %bb.d
  %i.ad = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @SEGM_numFromSerial.__zl_static_error_info.15, ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 87, i32 noundef 21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i64 noundef 0, i64 noundef 1) #7 ; 2 uses
  %i.ae = extractvalue { i32, ptr } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i32, ptr } %i.ad, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ae, ptr %i.af, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4) #7
  %i.ag = ptrtoint ptr %i.af to i64
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ah = extractvalue { ptr, i64 } %i.ab, 0
  %.sroa.023.0.copyload = load i32, ptr %i.ah, align 4, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ai = tail call i64 @ZL_Data_contentSize(ptr noundef %i.f) #7 ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !19
  %i.aj = tail call i32 @ZL_Segmenter_getCParam(ptr noundef %0, i32 noundef 4) #7
  %i.ak = icmp slt i32 %i.aj, 21
  br i1 %i.ak, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.al = icmp ugt i64 %i.ai, %i.w
  br i1 %i.al, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.am = call { i32, i64 } @ZL_Segmenter_processChunk(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1, i32 %.sroa.023.0.copyload, ptr noundef null) #7 ; 2 uses
  %i.an = extractvalue { i32, i64 } %i.am, 0      ; 2 uses
  %.not78 = icmp eq i32 %i.an, 0
  br i1 %.not78, label %bb.k, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.ao = extractvalue { i32, i64 } %i.am, 1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %1, i32 %i.an, ptr %i.ap, ptr nonnull @SEGM_numFromSerial.__zl_static_error_info.21, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 95, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.ar = extractvalue { i32, ptr } %i.aq, 0
  %i.as = extractvalue { i32, ptr } %i.aq, 1
  %i.at = ptrtoint ptr %i.as to i64
  br label %bb.k

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %i.au = call { i32, i64 } @ZL_Segmenter_processChunk(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1, i32 %.sroa.023.0.copyload, ptr noundef null) #7 ; 2 uses
  %i.av = extractvalue { i32, i64 } %i.au, 0      ; 2 uses
  %.not77 = icmp eq i32 %i.av, 0
  br i1 %.not77, label %bb.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %.lr.ph
  %i.aw = extractvalue { i32, i64 } %i.au, 1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %1, i32 %i.av, ptr %i.ax, ptr nonnull @SEGM_numFromSerial.__zl_static_error_info.22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 101, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 0
  %i.ba = extractvalue { i32, ptr } %i.ay, 1
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !19
  %i.be = sub i64 %i.bd, %i.bc                    ; 2 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !19
  %i.bf = icmp ugt i64 %i.be, %i.bc
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.bg = call { i32, i64 } @ZL_Segmenter_processChunk(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1, i32 %.sroa.023.0.copyload, ptr noundef null) #7 ; 2 uses
  %i.bh = extractvalue { i32, i64 } %i.bg, 0      ; 2 uses
  %.not76 = icmp eq i32 %i.bh, 0
  br i1 %.not76, label %bb.k, label %bb.j, !prof !20

bb.j:                                             ; preds = %._crit_edge
  %i.bi = extractvalue { i32, i64 } %i.bg, 1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %1, i32 %i.bh, ptr %i.bj, ptr nonnull @SEGM_numFromSerial.__zl_static_error_info.23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 106, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.bl = extractvalue { i32, ptr } %i.bk, 0
  %i.bm = extractvalue { i32, ptr } %i.bk, 1
  %i.bn = ptrtoint ptr %i.bm to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.f, %bb.j, %bb.h, %bb.g
  %.sroa.059.1 = phi i32 [ %i.ar, %bb.g ], [ 0, %bb.f ], [ %i.az, %bb.h ], [ %i.bl, %bb.j ], [ 0, %._crit_edge ]
  %.sroa.27.1 = phi i64 [ %i.at, %bb.g ], [ 0, %bb.f ], [ %i.bb, %bb.h ], [ %i.bn, %bb.j ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.c
  %.sroa.059.3 = phi i32 [ %i.y, %bb.c ], [ %.sroa.059.1, %bb.k ], [ %i.ae, %.thread ]
  %.sroa.27.3 = phi i64 [ %i.aa, %bb.c ], [ %.sroa.27.1, %bb.k ], [ %i.ag, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.sroa.059.4 = phi i32 [ %i.o, %bb.b ], [ %.sroa.059.3, %bb.l ]
  %.sroa.27.4 = phi i64 [ %i.q, %bb.b ], [ %.sroa.27.3, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.059.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.27.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare i64 @ZL_Segmenter_getLocalIntParam(ptr noundef, i32 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

declare { ptr, i64 } @ZL_Segmenter_getCustomGraphs(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define { i64, ptr } @ZL_Compressor_buildNumFromSerialSegmenter2(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_GraphID, align 4         ; 3 uses
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 8 uses
  %6 = alloca [2 x %struct.ZL_IntParam], align 16 ; 7 uses
  %7 = alloca %struct.ZL_LocalParams, align 8     ; 6 uses
  %8 = alloca %struct.ZL_ParameterizedGraphDesc, align 8 ; 11 uses
  store i32 %3, ptr %4, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_Compressor_getOperationContext(ptr noundef %0) #8
  store ptr %i.b, ptr %5, align 8, !tbaa !17
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true) ; 3 uses
  %i.f = icmp samesign ult i64 %i.e, 4
  br i1 %i.f, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %.split, %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Compressor_buildNumFromSerialSegmenter2.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 144, i32 noundef 21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26) #7 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4) #7
  br label %bb.l

switch.lookup:                                    ; preds = %.split
  %switch.idx.cast35 = trunc nuw nsw i64 %i.e to i32
  %switch.offset36 = or disjoint i32 %switch.idx.cast35, 24
  %i.j = tail call i32 @ZL_GraphID_isValid(i32 %3) #7
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  %switch.idx.cast = trunc nuw nsw i64 %i.e to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 63
  store i32 %switch.offset, ptr %4, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup
  %i.k = icmp eq i64 %2, 0
  %spec.store.select = select i1 %i.k, i64 16777216, i64 %2 ; 4 uses
  %i.l = icmp ugt i64 %spec.store.select, 32767
  br i1 %i.l, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.m = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Compressor_buildNumFromSerialSegmenter2.__zl_static_error_info.27, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 161, i32 noundef 21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30, i64 noundef %spec.store.select, i64 noundef 32768) #7 ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.m, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.n, ptr %i.o, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4) #7
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.p = icmp ugt i64 %spec.store.select, 2147483647
  br i1 %i.p, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.q = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Compressor_buildNumFromSerialSegmenter2.__zl_static_error_info.31, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 163, i32 noundef 21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.33) #7 ; 2 uses
  %i.r = extractvalue { i32, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { i32, ptr } %i.q, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.r, ptr %i.s, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store i32 301, ptr %6, align 16, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.u = trunc i64 %1 to i32
  store i32 %i.u, ptr %i.t, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 300, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.x = trunc nuw nsw i64 %spec.store.select to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store ptr %6, ptr %7, align 8, !tbaa !30
end_hunk_0
