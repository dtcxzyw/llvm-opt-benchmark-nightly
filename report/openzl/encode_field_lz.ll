Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_field_lz?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZS_matchFinder = type { ptr, ptr, ptr }
%struct.ZL_FieldLz_Allocator = type { ptr, ptr }
%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZS_MatchFinderParameters = type { i8, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ZL_FieldLz_Allocator }
%struct.ZS_seqStore = type { %struct.ZS_byteRange, %struct.ZS_seqRange, i64 }
%struct.ZS_byteRange = type { ptr, ptr, ptr }
%struct.ZS_seqRange = type { ptr, ptr, ptr }
%struct.ZS_window = type { ptr, ptr, ptr, i32, i32, i32, i32 }

@ZL_g_logLevel = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [69 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/lz/encode_field_lz.c\00", align 1
@__func__.ZS2_FieldLz_compress = private unnamed_addr constant [21 x i8] c"ZS2_FieldLz_compress\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"eltWidth %u is not a power of 2\00", align 1
@ZS2_FieldLz_compress.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 20, [4 x i8] zeroinitializer, ptr @.str.2, ptr @.str, ptr @__func__.ZS2_FieldLz_compress, i32 159, [4 x i8] zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Unconditional failure: Compression parameter invalid: %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@ZS2_FieldLz_compress.__zl_static_error_info.6 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str, ptr @__func__.ZS2_FieldLz_compress, i32 175, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"Check `error' failed: Allocation: %s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@ZS_greedyTokenLzMatchFinder = external local_unnamed_addr constant %struct.ZS_matchFinder, align 8
@ZS_tokenLzMatchFinder = external local_unnamed_addr constant %struct.ZS_matchFinder, align 8
@ZS2_FieldLz_compress.__zl_static_error_info.11 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.12, ptr @.str, ptr @__func__.ZS2_FieldLz_compress, i32 180, [4 x i8] zeroinitializer }, align 8
@.str.12 = private unnamed_addr constant [81 x i8] c"Check `(const char*)(const void*)mfCtx == (const char*)0' failed: Allocation: %s\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"(const char*)(const void*)mfCtx\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@writeOutSequences.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer, ptr @.str.17, ptr @.str, ptr @.str.18, i32 69, [4 x i8] zeroinitializer }, align 8
@.str.17 = private unnamed_addr constant [80 x i8] c"Check `nbLits > dst->literalEltsCapacity' failed: Internal buffer too small: %s\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"writeOutSequences\00", align 1
@.str.19 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"nbLits\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"dst->literalEltsCapacity\00", align 1
@writeOutSequences.__zl_static_error_info.23 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer, ptr @.str.24, ptr @.str, ptr @.str.18, i32 97, [4 x i8] zeroinitializer }, align 8
@.str.24 = private unnamed_addr constant [87 x i8] c"Check `dst->nbOffsets >= dst->sequencesCapacity' failed: Internal buffer too small: %s\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"dst->nbOffsets\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"dst->sequencesCapacity\00", align 1
@writeOutSequences.__zl_static_error_info.28 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer, ptr @.str.29, ptr @.str, ptr @.str.18, i32 120, [4 x i8] zeroinitializer }, align 8
@.str.29 = private unnamed_addr constant [99 x i8] c"Check `dst->nbExtraLiteralLengths >= dst->sequencesCapacity' failed: Internal buffer too small: %s\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"dst->nbExtraLiteralLengths\00", align 1
@writeOutSequences.__zl_static_error_info.31 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str, ptr @.str.18, i32 134, [4 x i8] zeroinitializer }, align 8
@.str.32 = private unnamed_addr constant [97 x i8] c"Check `dst->nbExtraMatchLengths >= dst->sequencesCapacity' failed: Internal buffer too small: %s\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"dst->nbExtraMatchLengths\00", align 1
@writeOutSequences.__zl_static_error_info.34 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer, ptr @.str.35, ptr @.str, ptr @.str.18, i32 141, [4 x i8] zeroinitializer }, align 8
@.str.35 = private unnamed_addr constant [86 x i8] c"Check `dst->nbTokens >= dst->sequencesCapacity' failed: Internal buffer too small: %s\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"dst->nbTokens\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @ZL_FieldLz_maxNbSequences(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  %i.b = icmp eq i64 %1, 2
  %i.c = zext i1 %i.b to i64
  %i.d = select i1 %i.a, i64 2, i64 %i.c
  %i.e = lshr i64 %0, %i.d
  %i.f = add i64 %i.e, 1
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS2_FieldLz_compress(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef readonly byval(%struct.ZL_FieldLz_Allocator) align 8 captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 9 uses
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 7 uses
  %8 = alloca %struct.ZS_MatchFinderParameters, align 8 ; 13 uses
  %9 = alloca %struct.ZS_seqStore, align 8        ; 8 uses
  %10 = alloca %struct.ZS_window, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #9 ; 2 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !18
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.d = icmp samesign ult i64 %i.c, 2
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !19
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %3 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS2_FieldLz_compress, i32 noundef 158, ptr noundef nonnull @.str.1, i32 noundef %i.g) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS2_FieldLz_compress.__zl_static_error_info, ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS2_FieldLz_compress, i32 noundef 159, i32 noundef 20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.h, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.i, ptr %i.j, ptr noundef nonnull @.str.5) #8
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.aj

bb.e:                                             ; preds = %bb.a
  %i.l = mul i64 %3, %2                           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.m = icmp slt i32 %4, 1
  %i.n = tail call i32 @llvm.umin.i32(i32 %4, i32 5)
  %spec.store.select1.i = select i1 %i.m, i32 3, i32 %i.n ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %8, i8 0, i64 96, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i8 1, ptr %i.o, align 8, !tbaa !23
  switch i32 %spec.store.select1.i, label %bb.k [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 18, ptr %i.p, align 8, !tbaa !24
  store i8 0, ptr %i.o, align 8, !tbaa !23
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 18, ptr %i.q, align 8, !tbaa !24
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 19, ptr %i.r, align 8, !tbaa !24
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 20, ptr %i.s, align 8, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 22, ptr %i.t, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.u = phi i32 [ 20, %bb.i ], [ 19, %bb.h ], [ 18, %bb.g ], [ 18, %bb.f ], [ 0, %bb.e ], [ 22, %bb.j ] ; 2 uses
  %i.v = trunc i64 %2 to i32
  %i.w = add i32 %i.v, 1
  %i.x = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = sub nuw nsw i32 32, %i.x                 ; 2 uses
  %i.z = icmp samesign ult i32 %i.y, %i.u
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.u) ; 2 uses
  %i.ab = icmp samesign ult i32 %i.aa, 10
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %bb.l, label %resolveLevel.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 48
  %simplifycfg.merge.i = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 10)
  store i32 %simplifycfg.merge.i, ptr %i.ad, align 8, !tbaa !24
  br label %resolveLevel.exit

resolveLevel.exit:                                ; preds = %bb.k, %bb.l
  %i.ae = trunc i64 %3 to i32                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 76
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.ah = tail call i64 @llvm.umax.i64(i64 %3, i64 4)
  %i.ai = load ptr, ptr %5, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call i32 @ZS_seqStore_initBound(ptr noundef nonnull %9, i64 noundef %i.l, i64 noundef %i.ah, ptr %i.ai, ptr %i.ak) #8
  %i.am = trunc i64 %i.l to i32
  %i.an = call i32 @llvm.umin.i32(i32 %i.am, i32 8388608)
  %i.ao = call i32 @ZS_window_init(ptr noundef nonnull %10, i32 noundef %i.an, i32 noundef 8) #8
  %i.ap = or i32 %i.ao, %i.al
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.n, label %bb.m, !prof !28

bb.m:                                             ; preds = %resolveLevel.exit
  %i.aq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS2_FieldLz_compress.__zl_static_error_info.6, ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS2_FieldLz_compress, i32 noundef 175, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.ar = extractvalue { i32, ptr } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.aq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ar, ptr %i.as, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #8
  %i.at = ptrtoint ptr %i.as to i64
  br label %bb.ai

bb.n:                                             ; preds = %resolveLevel.exit
  %11 = icmp samesign ugt i32 %spec.store.select1.i, 3
  %12 = select i1 %11, ptr @ZS_greedyTokenLzMatchFinder, ptr @ZS_tokenLzMatchFinder ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %i.au = call ptr %14(ptr noundef nonnull %10, ptr noundef nonnull %8) #8 ; 2 uses
  %.not45 = icmp eq ptr %i.au, null
  br i1 %.not45, label %.thread52, label %bb.o, !prof !31

.thread52:                                        ; preds = %bb.n
  %i.av = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS2_FieldLz_compress.__zl_static_error_info.11, ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS2_FieldLz_compress, i32 noundef 180, i32 noundef 70, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.aw = extractvalue { i32, ptr } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { i32, ptr } %i.av, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aw, ptr %i.ax, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #8
  %i.ay = ptrtoint ptr %i.ax to i64
  br label %bb.ai

bb.o:                                             ; preds = %bb.n
  %i.az = call i32 @ZS_window_update(ptr noundef nonnull %10, ptr noundef %1, i64 noundef %i.l) #8 ; 0 uses
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.val47 = load ptr, ptr %15, align 8, !tbaa !32
  call void %.val47(ptr noundef nonnull %i.au, ptr noundef nonnull %9, ptr noundef %1, i64 noundef %i.l) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %6, align 8, !tbaa !18
  %i.bb = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true)
  %i.bc = xor i32 %i.bb, 31                       ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !37
  %i.bf = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = zext nneg i32 %i.bc to i64
  %i.bk = lshr i64 %i.bi, %i.bj                   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !42 ; 2 uses
  %.not.not.i = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.not.i, label %.thread.i, label %bb.p, !prof !31

.thread.i:                                        ; preds = %bb.o
  %i.bn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeOutSequences.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 69, i32 noundef 71, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i64 noundef %i.bk, i64 noundef %i.bm) #8
  br label %.critedge.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %0, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.bp, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !46 ; 3 uses
  %i.bu = icmp eq i64 %3, 1
  %i.bv = icmp eq i64 %3, 2
  %.neg.i = select i1 %i.bv, i32 -2, i32 -1
  %.neg140.i = select i1 %i.bu, i32 -4, i32 %.neg.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 0, ptr %i.by, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !50
  %.not144182.not.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not144182.not.i, label %writeOutSequences.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.ca = ptrtoint ptr %i.bs to i64
  %i.cb = ptrtoint ptr %i.bt to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

bb.q:                                             ; preds = %bb.ah, %.lr.ph.i
  %i.cj = phi i64 [ 0, %.lr.ph.i ], [ %i.ef, %bb.ah ] ; 5 uses
  %i.ck = phi i64 [ 0, %.lr.ph.i ], [ %i.ec, %bb.ah ] ; 5 uses
  %i.cl = phi i64 [ 0, %.lr.ph.i ], [ %i.do, %bb.ah ] ; 5 uses
  %i.cm = phi i64 [ 0, %.lr.ph.i ], [ %i.cz, %bb.ah ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.cj ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !52
  switch i32 %i.cp, label %bb.v [
    i32 1, label %bb.r
    i32 0, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !53
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cs = load i64, ptr %i.ce, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp ult i64 %i.cm, %i.cs
  br i1 %.not.i, label %bb.u, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  %i.ct = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeOutSequences.__zl_static_error_info.23, ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 97, i32 noundef 71, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i64 noundef %i.cm, i64 noundef %i.cs) #8
  br label %.critedge.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !53
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !55
  %i.cx = add nuw i64 %i.cm, 1                    ; 2 uses
  store i64 %i.cx, ptr %i.bx, align 8, !tbaa !48
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cm
  store i32 %i.cv, ptr %i.cy, align 4, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r, %bb.q
  %i.cz = phi i64 [ %i.cm, %bb.r ], [ %i.cx, %bb.u ], [ %i.cm, %bb.q ]
  %.0121.i = phi i32 [ %i.cr, %bb.r ], [ 3, %bb.u ], [ 0, %bb.q ]
  %i.da = load i32, ptr %i.cn, align 4, !tbaa !56
  %i.db = lshr i32 %i.da, %i.bc                   ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !57
  %i.de = lshr i32 %i.dd, %i.bc
  %i.df = add i32 %i.de, %.neg140.i               ; 3 uses
  %i.dg = icmp ult i32 %i.db, 15
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = shl nuw nsw i32 %i.db, 2
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.di = load i64, ptr %i.ce, align 8, !tbaa !54 ; 2 uses
  %.not141.i = icmp ult i64 %i.cl, %i.di
  br i1 %.not141.i, label %bb.z, label %bb.y, !prof !28

bb.y:                                             ; preds = %bb.x
  %i.dj = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeOutSequences.__zl_static_error_info.28, ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 120, i32 noundef 71, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i64 noundef %i.cl, i64 noundef %i.di) #8
  br label %.critedge.sink.split.i

bb.z:                                             ; preds = %bb.x
  %i.dk = add i32 %i.db, -15
  %i.dl = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.dm = add nuw i64 %i.cl, 1                    ; 2 uses
  store i64 %i.dm, ptr %i.by, align 8, !tbaa !49
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.cl
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.do = phi i64 [ %i.cl, %bb.w ], [ %i.dm, %bb.z ]
  %.pn.i = phi i32 [ %i.dh, %bb.w ], [ 60, %bb.z ]
  %.1122.i = or i32 %.pn.i, %.0121.i              ; 2 uses
  %i.dp = icmp ult i32 %i.df, 15
  br i1 %i.dp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dq = shl nuw nsw i32 %i.df, 6
  %i.dr = or i32 %.1122.i, %i.dq
  %i.ds = trunc i32 %i.dr to i16
  %.pre.i = load i64, ptr %i.ce, align 8, !tbaa !54
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.dt = load i64, ptr %i.ce, align 8, !tbaa !54 ; 3 uses
  %.not142.i = icmp ult i64 %i.ck, %i.dt
  br i1 %.not142.i, label %bb.ae, label %bb.ad, !prof !28

bb.ad:                                            ; preds = %bb.ac
  %i.du = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeOutSequences.__zl_static_error_info.31, ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 134, i32 noundef 71, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i64 noundef %i.ck, i64 noundef %i.dt) #8
  br label %.critedge.sink.split.i

bb.ae:                                            ; preds = %bb.ac
  %i.dv = trunc i32 %.1122.i to i16
  %i.dw = or i16 %i.dv, 960
  %i.dx = add i32 %i.df, -15
  %i.dy = load ptr, ptr %i.ch, align 8, !tbaa !59
  %i.dz = add nuw i64 %i.ck, 1                    ; 2 uses
  store i64 %i.dz, ptr %i.bz, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ck
  store i32 %i.dx, ptr %i.ea, align 4, !tbaa !19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %i.eb = phi i64 [ %.pre.i, %bb.ab ], [ %i.dt, %bb.ae ] ; 2 uses
  %i.ec = phi i64 [ %i.ck, %bb.ab ], [ %i.dz, %bb.ae ]
  %.2123.i = phi i16 [ %i.ds, %bb.ab ], [ %i.dw, %bb.ae ]
  %.not143.i = icmp ult i64 %i.cj, %i.eb
  br i1 %.not143.i, label %bb.ah, label %bb.ag, !prof !28

bb.ag:                                            ; preds = %bb.af
  %i.ed = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeOutSequences.__zl_static_error_info.34, ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 141, i32 noundef 71, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i64 noundef %i.cj, i64 noundef %i.eb) #8
  br label %.critedge.sink.split.i

bb.ah:                                            ; preds = %bb.af
  %i.ee = load ptr, ptr %i.ci, align 8, !tbaa !60
  %i.ef = add nuw i64 %i.cj, 1                    ; 3 uses
  store i64 %i.ef, ptr %i.bw, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.cj
  store i16 %.2123.i, ptr %i.eg, align 2, !tbaa !62
  %exitcond.not.i = icmp eq i64 %i.ef, %i.cd
  br i1 %exitcond.not.i, label %writeOutSequences.exit, label %bb.q, !llvm.loop !11

.critedge.sink.split.i:                           ; preds = %bb.ag, %bb.ad, %bb.y, %bb.t, %.thread.i
  %.sink.i = phi { i32, ptr } [ %i.dj, %bb.y ], [ %i.ct, %bb.t ], [ %i.ed, %bb.ag ], [ %i.du, %bb.ad ], [ %i.bn, %.thread.i ] ; 2 uses
  %i.eh = extractvalue { i32, ptr } %.sink.i, 0   ; 2 uses
  %i.ei = extractvalue { i32, ptr } %.sink.i, 1   ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.eh, ptr %i.ei, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #8
  %i.ej = ptrtoint ptr %i.ei to i64
  br label %writeOutSequences.exit

writeOutSequences.exit:                           ; preds = %bb.ah, %bb.p, %.critedge.sink.split.i
  %.sroa.0120.12.i = phi i32 [ %i.eh, %.critedge.sink.split.i ], [ 0, %bb.p ], [ 0, %bb.ah ]
  %.sroa.12.12.i = phi i64 [ %i.ej, %.critedge.sink.split.i ], [ 0, %bb.p ], [ 0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ai

bb.ai:                                            ; preds = %.thread52, %bb.m, %writeOutSequences.exit
  %.sroa.041.3 = phi i32 [ %i.ar, %bb.m ], [ %.sroa.0120.12.i, %writeOutSequences.exit ], [ %i.aw, %.thread52 ]
  %.sroa.9.3 = phi i64 [ %i.at, %bb.m ], [ %.sroa.12.12.i, %writeOutSequences.exit ], [ %i.ay, %.thread52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.d
  %.sroa.041.4 = phi i32 [ %.sroa.041.3, %bb.ai ], [ %i.i, %bb.d ]
  %.sroa.9.4 = phi i64 [ %.sroa.9.3, %bb.ai ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.041.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.4, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #4

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ZS_seqStore_initBound(ptr noundef, i64 noundef, i64 noundef, ptr, ptr) local_unnamed_addr #5

declare i32 @ZS_window_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @ZS_window_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!11 = distinct !{!11, !63}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS21ZL_OperationContext_s", !12, i64 0}
!14 = !{!"", !8, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"", !14, i64 0, !14, i64 4, !8, i64 8, !15, i64 16}
!17 = !{!"", !13, i64 0, !16, i64 8}
!18 = !{!17, !13, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!"_Bool", !7, i64 0}
!21 = !{!"", !12, i64 0, !12, i64 8}
!22 = !{!"", !20, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !20, i64 24, !20, i64 25, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !20, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !21, i64 96}
!23 = !{!22, !20, i64 56}
!24 = !{!22, !8, i64 48}
!25 = !{!22, !8, i64 76}
!26 = !{!12, !12, i64 0}
!27 = !{i64 0, i64 8, !26, i64 8, i64 8, !26}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = !{!"", !15, i64 0, !12, i64 8, !12, i64 16}
!30 = !{!29, !12, i64 8}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!29, !12, i64 16}
!33 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!34 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16}
!35 = !{!"long", !7, i64 0}
!36 = !{!"", !33, i64 0, !34, i64 24, !35, i64 48}
!37 = !{!36, !15, i64 8}
!38 = !{!36, !15, i64 0}
!39 = !{!"p1 short", !12, i64 0}
!40 = !{!"p1 int", !12, i64 0}
!41 = !{!"", !12, i64 0, !35, i64 8, !35, i64 16, !39, i64 24, !35, i64 32, !40, i64 40, !35, i64 48, !40, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !35, i64 88}
!42 = !{!41, !35, i64 16}
!43 = !{!41, !12, i64 0}
!44 = !{!41, !35, i64 8}
!45 = !{!36, !12, i64 32}
!46 = !{!36, !12, i64 24}
!47 = !{!41, !35, i64 32}
!48 = !{!41, !35, i64 48}
!49 = !{!41, !35, i64 64}
!50 = !{!41, !35, i64 80}
!51 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!52 = !{!51, !8, i64 12}
!53 = !{!51, !8, i64 4}
!54 = !{!41, !35, i64 88}
!55 = !{!41, !40, i64 40}
!56 = !{!51, !8, i64 0}
!57 = !{!51, !8, i64 8}
!58 = !{!41, !40, i64 56}
!59 = !{!41, !40, i64 72}
!60 = !{!41, !39, i64 24}
!61 = !{!"short", !7, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"llvm.loop.mustprogress"}
end_hunk_0
