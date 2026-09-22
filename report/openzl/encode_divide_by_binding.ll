Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_divide_by_binding?download=true
inline.NumInlined: 39
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_RefParam = type { i32, ptr, i64 }
%struct.ZL_CopyParam = type { i32, ptr, i64 }
%struct.ZL_LocalParams = type { %struct.ZL_LocalIntParams, %struct.ZL_LocalCopyParams, %struct.ZL_LocalRefParams }
%struct.ZL_LocalIntParams = type { ptr, i64 }
%struct.ZL_LocalCopyParams = type { ptr, i64 }
%struct.ZL_LocalRefParams = type { ptr, i64 }
%struct.ZL_ParameterizedNodeDesc = type { ptr, %struct.ZL_NodeID, ptr, %struct.ZL_DictID, %struct.ZL_MParam }
%struct.ZL_DictID = type { %struct.ZL_UniqueID }
%struct.ZL_UniqueID = type { [32 x i8] }
%struct.ZL_MParam = type { ptr, i64, %struct.ZL_MParamID }
%struct.ZL_MParamID = type { %struct.ZL_UniqueID }

@EI_divide_by_int.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [79 x i8] c"Check `(const char*)(const void*)out == (const char*)0' failed: Allocation: %s\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/divide_by/encode_divide_by_binding.c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"EI_divide_by_int\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"(const char*)(const void*)out\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EI_divide_by_int.__zl_static_error_info.9 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 44, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 95, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [100 x i8] c"Check `div.paramSize != sizeof(uint64_t)' failed: Graph was assigned an invalid Local Parameter: %s\00", align 1
@.str.11 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"div.paramSize\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"sizeof(uint64_t)\00", align 1
@EI_divide_by_int.__zl_static_error_info.15 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 101, [4 x i8] zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EI_divide_by_int.__zl_static_error_info.18 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 105, [4 x i8] zeroinitializer }, align 8
@getDivisor.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.1, ptr @.str.20, i32 35, [4 x i8] zeroinitializer }, align 8
@.str.19 = private unnamed_addr constant [104 x i8] c"Check `divisor > (127*2 +1)' failed: Input does not respect conditions for this node: Divisor too large\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"getDivisor\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"divisor\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"(127*2 +1)\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"\0A\09Divisor too large\00", align 1
@getDivisor.__zl_static_error_info.25 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.26, ptr @.str.1, ptr @.str.20, i32 39, [4 x i8] zeroinitializer }, align 8
@.str.26 = private unnamed_addr constant [129 x i8] c"Check `ZL_firstIndexNotDivisibleBy8(src, nbInts, divisor) != nbInts' failed: Input does not respect conditions for this node: %s\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"ZL_firstIndexNotDivisibleBy8(src, nbInts, divisor)\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"nbInts\00", align 1
@getDivisor.__zl_static_error_info.29 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.30, ptr @.str.1, ptr @.str.20, i32 46, [4 x i8] zeroinitializer }, align 8
@.str.30 = private unnamed_addr constant [109 x i8] c"Check `divisor > (32767 * 2 + 1)' failed: Input does not respect conditions for this node: Divisor too large\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"(32767 * 2 + 1)\00", align 1
@getDivisor.__zl_static_error_info.32 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.33, ptr @.str.1, ptr @.str.20, i32 50, [4 x i8] zeroinitializer }, align 8
@.str.33 = private unnamed_addr constant [130 x i8] c"Check `ZL_firstIndexNotDivisibleBy16(src, nbInts, divisor) != nbInts' failed: Input does not respect conditions for this node: %s\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"ZL_firstIndexNotDivisibleBy16(src, nbInts, divisor)\00", align 1
@getDivisor.__zl_static_error_info.35 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.36, ptr @.str.1, ptr @.str.20, i32 54, [4 x i8] zeroinitializer }, align 8
@.str.36 = private unnamed_addr constant [114 x i8] c"Check `divisor > (2147483647 *2U +1U)' failed: Input does not respect conditions for this node: Divisor too large\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"(2147483647 *2U +1U)\00", align 1
@getDivisor.__zl_static_error_info.38 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.1, ptr @.str.20, i32 58, [4 x i8] zeroinitializer }, align 8
@.str.39 = private unnamed_addr constant [130 x i8] c"Check `ZL_firstIndexNotDivisibleBy32(src, nbInts, divisor) != nbInts' failed: Input does not respect conditions for this node: %s\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"ZL_firstIndexNotDivisibleBy32(src, nbInts, divisor)\00", align 1
@getDivisor.__zl_static_error_info.41 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.42, ptr @.str.1, ptr @.str.20, i32 64, [4 x i8] zeroinitializer }, align 8
@.str.42 = private unnamed_addr constant [130 x i8] c"Check `ZL_firstIndexNotDivisibleBy64(src, nbInts, divisor) != nbInts' failed: Input does not respect conditions for this node: %s\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"ZL_firstIndexNotDivisibleBy64(src, nbInts, divisor)\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_divide_by_int(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 12 uses
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 8 uses
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  %5 = alloca %struct.ZL_RefParam, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #8
  store ptr %i.c, ptr %4, align 8, !tbaa !37
  %i.d = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.e = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.d) #7 ; 6 uses
  %i.f = tail call i64 @ZL_Data_numElts(ptr noundef %i.d) #7 ; 32 uses
  %i.g = tail call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.e) #7 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.b, !prof !38

.thread:                                          ; preds = %bb.a
  %i.h = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_divide_by_int.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 87, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.h, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.i, ptr %i.j, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.bh

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @ZL_Data_rPtr(ptr noundef %i.d) #7 ; 17 uses
  %i.m = tail call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @ZL_Encoder_getLocalParam(ptr dead_on_unwind nonnull writable sret(%struct.ZL_RefParam) align 8 %5, ptr noundef %0, i32 noundef 112) #7
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %.not64 = icmp eq i64 %i.q, 8
  br i1 %.not64, label %bb.e, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.r = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_divide_by_int.__zl_static_error_info.9, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 95, i32 noundef 44, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef %i.q, i64 noundef 8) #7 ; 2 uses
  %i.s = extractvalue { i32, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.r, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.s, ptr %i.t, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %i.u = ptrtoint ptr %i.t to i64
  br label %bb.bg

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.o, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.057 = phi i64 [ %i.v, %bb.e ], [ 0, %bb.b ]   ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = call ptr @ZL_NULL_getOperationContext(ptr noundef null) #8
  store ptr %i.x, ptr %3, align 8, !tbaa !37
  %i.y = icmp eq i64 %.057, 0
  br i1 %i.y, label %bb.g, label %bb.ag

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %i.f, 2
  br i1 %i.z, label %getDivisor.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.e)
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %.split.i.i, label %getDivisor.exit.thread

.split.i.i:                                       ; preds = %bb.h
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true) ; 2 uses
  switch i64 %i.ac, label %getDivisor.exit.thread [
    i64 0, label %.preheader.i.i
    i64 1, label %.preheader231.i.i.a
    i64 2, label %.preheader233.i.i.a
    i64 3, label %.preheader235.i.i
  ]

.preheader.i.i:                                   ; preds = %.split.i.i, %bb.i
  %.0108239.i.i = phi i64 [ %i.ag, %bb.i ], [ %i.ac, %.split.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0108239.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !40  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.i, label %.critedge.i.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.ag = add nuw i64 %.0108239.i.i, 1            ; 2 uses
  %exitcond245.not.i.i = icmp eq i64 %i.ag, %i.f
  br i1 %exitcond245.not.i.i, label %getDivisor.exit.thread, label %.preheader.i.i, !llvm.loop !21

.critedge.i.i:                                    ; preds = %.preheader.i.i
  %i.ah = zext i8 %i.ae to i64
  br label %ZL_gcdImpl.exit.i.i

ZL_gcdImpl.exit.i.i:                              ; preds = %ZL_gcdImpl.exit.i.i.backedge, %.critedge.i.i
  %.1109.in.i.i = phi i64 [ %.0108239.i.i, %.critedge.i.i ], [ %i.bo, %ZL_gcdImpl.exit.i.i.backedge ]
  %.0104.i.i = phi i64 [ %i.ah, %.critedge.i.i ], [ %.0104.i.i.be, %ZL_gcdImpl.exit.i.i.backedge ] ; 5 uses
  %.1109.i.i = add i64 %.1109.in.i.i, 1           ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1109.i.i
  %i.aj = sub i64 %i.f, %.1109.i.i                ; 3 uses
  %i.ak = udiv i64 255, %.0104.i.i
  %6 = trunc nuw nsw i64 %i.ak to i32
  %i.al = trunc nuw nsw i64 %.0104.i.i to i32     ; 2 uses
  %i.am = and i32 %i.al, 255                      ; 2 uses
  %i.an = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.am, i1 true) ; 2 uses
  %i.ao = lshr exact i32 %i.am, %i.an             ; 4 uses
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %ZL_getMultiplicativeInverse8.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %ZL_gcdImpl.exit.i.i
  %.rhs.trunc.i.i.i.i = trunc nuw i32 %i.ao to i8
  %i.aq = udiv i8 -1, %.rhs.trunc.i.i.i.i
  %.zext.i.i.i.i = zext i8 %i.aq to i32           ; 2 uses
  %i.ar = mul nuw nsw i32 %i.ao, %.zext.i.i.i.i
  %i.as = sub nsw i32 0, %i.ar
  %i.at = and i32 %i.as, 255                      ; 2 uses
  %.not42.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not42.i.i.i.i, label %ZL_getMultiplicativeInverse8.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.0.in47.i.i.i.i = phi i32 [ %i.az, %.lr.ph.i.i.i.i ], [ %.zext.i.i.i.i, %bb.j ] ; 4 uses
  %.03546.i.i.i.i = phi i32 [ %.0.in47.i.i.i.i, %.lr.ph.i.i.i.i ], [ 1, %bb.j ]
  %.03645.i.i.i.i = phi i32 [ %i.ba, %.lr.ph.i.i.i.i ], [ 1, %bb.j ] ; 2 uses
  %.037.in44.i.i.i.i = phi i32 [ %.03843.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ao, %bb.j ] ; 2 uses
  %.03843.i.i.i.i = phi i32 [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.at, %bb.j ] ; 3 uses
  %.lhs.trunc.i.i.i.i = trunc nuw i32 %.037.in44.i.i.i.i to i8
  %.rhs.trunc54.i.i.i.i = trunc nuw i32 %.03843.i.i.i.i to i8
  %i.au = udiv i8 %.lhs.trunc.i.i.i.i, %.rhs.trunc54.i.i.i.i
  %.zext55.i.i.i.i = zext i8 %i.au to i32         ; 2 uses
  %i.av = mul nuw nsw i32 %.03843.i.i.i.i, %.zext55.i.i.i.i
  %i.aw = sub nsw i32 %.037.in44.i.i.i.i, %i.av
  %i.ax = and i32 %i.aw, 255                      ; 2 uses
  %i.ay = mul i32 %.0.in47.i.i.i.i, %.zext55.i.i.i.i
  %i.az = add i32 %i.ay, %.03546.i.i.i.i
  %i.ba = xor i32 %.03645.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.bb = icmp eq i32 %.03645.i.i.i.i, 1
  %i.bc = sub i32 0, %.0.in47.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.bb, i32 %i.bc, i32 %.0.in47.i.i.i.i
  %i.bd = and i32 %spec.select.i.i.i.i, 255
  br label %ZL_getMultiplicativeInverse8.exit.i.i.i

ZL_getMultiplicativeInverse8.exit.i.i.i:          ; preds = %._crit_edge.i.i.i.i, %bb.j, %ZL_gcdImpl.exit.i.i
  %.1.i.i.i.i = phi i32 [ 1, %ZL_gcdImpl.exit.i.i ], [ 1, %bb.j ], [ %i.bd, %._crit_edge.i.i.i.i ]
  %.not2326.not.i.i.i.a = icmp eq i64 %i.aj, 0
  br i1 %.not2326.not.i.i.i.a, label %ZL_firstIndexNotDivisibleBy8.exit.i.i, label %.lr.ph.i.i.i.a

bb.k:                                             ; preds = %.lr.ph.i.i.i.a
  %i.be = add nuw i64 %.02028.i.i.i.a, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.be, %i.aj
  br i1 %exitcond.not.i.i.i, label %ZL_firstIndexNotDivisibleBy8.exit.i.i, label %.lr.ph.i.i.i.a, !llvm.loop !23

.lr.ph.i.i.i.a:                                   ; preds = %ZL_getMultiplicativeInverse8.exit.i.i.i, %bb.k
  %.02028.i.i.i.a = phi i64 [ %i.be, %bb.k ], [ 0, %ZL_getMultiplicativeInverse8.exit.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.02028.i.i.i.a
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !40  ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %.1.i.i.i.i, %i.bh
  %i.bj = lshr i32 %i.bi, %i.an                   ; 2 uses
  %i.bk = mul nuw nsw i32 %i.bj, %i.al
  %i.bl = trunc i32 %i.bk to i8
  %.not.i.i.i = icmp eq i8 %i.bg, %i.bl
  %i.bm = and i32 %i.bj, 255
  %i.bn = icmp samesign ule i32 %i.bm, %6
  %or.cond.not.i.i.i = select i1 %.not.i.i.i, i1 %i.bn, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.k, label %ZL_firstIndexNotDivisibleBy8.exit.i.i

ZL_firstIndexNotDivisibleBy8.exit.i.i:            ; preds = %.lr.ph.i.i.i.a, %bb.k, %ZL_getMultiplicativeInverse8.exit.i.i.i
  %spec.select.i.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse8.exit.i.i.i ], [ %.02028.i.i.i.a, %.lr.ph.i.i.i.a ], [ %i.aj, %bb.k ]
  %i.bo = add i64 %spec.select.i.i.i, %.1109.i.i  ; 3 uses
  %i.bp = icmp eq i64 %i.bo, %i.f
  br i1 %i.bp, label %getDivisor.exit.thread, label %bb.l

bb.l:                                             ; preds = %ZL_firstIndexNotDivisibleBy8.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !40  ; 2 uses
  %i.bs = zext i8 %i.br to i64                    ; 2 uses
  %spec.select.i130.i.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 %.0104.i.i) ; 2 uses
  %spec.select44.i.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %.0104.i.i) ; 4 uses
  %i.bt = icmp eq i8 %i.br, 0
  br i1 %i.bt, label %ZL_gcdImpl.exit.i.i.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = urem i64 %spec.select.i130.i.i, %spec.select44.i.i.i ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %ZL_gcdImpl.exit.i.i.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bu, i1 true) ; 2 uses
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i.i.i, i1 true) ; 2 uses
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.bz)
  %i.cb = lshr exact i64 %i.bu, %i.bw             ; 3 uses
  %i.cc = lshr exact i64 %spec.select44.i.i.i, %i.by ; 2 uses
  %.not45.i.i.i = icmp eq i64 %i.cb, %i.cc
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i131.i.i

.lr.ph.i131.i.i:                                  ; preds = %bb.n, %.lr.ph.i131.i.i
  %.147.i.i.i = phi i64 [ %i.ch, %.lr.ph.i131.i.i ], [ %i.cc, %bb.n ] ; 4 uses
  %.13846.i.i.i = phi i64 [ %.2.i.i.i, %.lr.ph.i131.i.i ], [ %i.cb, %bb.n ] ; 4 uses
  %i.cd = icmp ult i64 %.13846.i.i.i, %.147.i.i.i
  %i.ce = sub nuw nsw i64 %.147.i.i.i, %.13846.i.i.i
  %i.cf = sub nuw nsw i64 %.13846.i.i.i, %.147.i.i.i
  %.2.i.i.i = call i64 @llvm.umin.i64(i64 %.13846.i.i.i, i64 %.147.i.i.i) ; 3 uses
  %.0.i.i.i = select i1 %i.cd, i64 %i.ce, i64 %i.cf ; 2 uses
  %i.cg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i.i, i1 true)
  %i.ch = lshr exact i64 %.0.i.i.i, %i.cg         ; 2 uses
  %.not.i132.i.i = icmp eq i64 %.2.i.i.i, %i.ch
  br i1 %.not.i132.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i131.i.i, !llvm.loop !24

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i131.i.i, %bb.n
  %.138.lcssa.i.i.i = phi i64 [ %i.cb, %bb.n ], [ %.2.i.i.i, %.lr.ph.i131.i.i ]
  %i.ci = zext nneg i32 %i.ca to i64
  %i.cj = shl nuw nsw i64 %.138.lcssa.i.i.i, %i.ci
  br label %ZL_gcdImpl.exit.i.i.backedge

ZL_gcdImpl.exit.i.i.backedge:                     ; preds = %._crit_edge.i.i.i, %bb.m, %bb.l
  %.0104.i.i.be = phi i64 [ %i.cj, %._crit_edge.i.i.i ], [ %spec.select44.i.i.i, %bb.m ], [ %spec.select.i130.i.i, %bb.l ]
  br label %ZL_gcdImpl.exit.i.i

.preheader231.i.i.a:                              ; preds = %.split.i.i, %bb.o
  %.2110238.i.i = phi i64 [ %i.cn, %bb.o ], [ 0, %.split.i.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.2110238.i.i
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !43 ; 2 uses
  %i.cm = icmp eq i16 %i.cl, 0
  br i1 %i.cm, label %bb.o, label %.critedge5.i.i

bb.o:                                             ; preds = %.preheader231.i.i.a
  %i.cn = add nuw i64 %.2110238.i.i, 1            ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %i.cn, %i.f
  br i1 %exitcond244.not.i.i, label %getDivisor.exit.thread, label %.preheader231.i.i.a, !llvm.loop !25

.critedge5.i.i:                                   ; preds = %.preheader231.i.i.a
  %i.co = zext i16 %i.cl to i64
  br label %ZL_gcdImpl.exit158.i.i

ZL_gcdImpl.exit158.i.i:                           ; preds = %ZL_gcdImpl.exit158.i.i.backedge, %.critedge5.i.i
  %.3111.in.i.i = phi i64 [ %.2110238.i.i, %.critedge5.i.i ], [ %i.dq, %ZL_gcdImpl.exit158.i.i.backedge ]
  %.2106.i.i = phi i64 [ %i.co, %.critedge5.i.i ], [ %.2106.i.i.be, %ZL_gcdImpl.exit158.i.i.backedge ] ; 5 uses
  %.3111.i.i = add i64 %.3111.in.i.i, 1           ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.3111.i.i
  %i.cq = sub i64 %i.f, %.3111.i.i                ; 3 uses
  %i.cr = udiv i64 65535, %.2106.i.i
  %7 = trunc nuw nsw i64 %i.cr to i32
  %i.cs = trunc nuw nsw i64 %.2106.i.i to i32     ; 3 uses
  %i.ct = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.cs, i1 true) ; 2 uses
  %i.cu = lshr exact i32 %i.cs, %i.ct             ; 4 uses
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %ZL_getMultiplicativeInverse32.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %ZL_gcdImpl.exit158.i.i
  %i.cw = udiv i32 -1, %i.cu                      ; 2 uses
  %i.cx = mul i32 %i.cw, %i.cu                    ; 2 uses
  %.not41.i.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not41.i.i.i.i, label %ZL_getMultiplicativeInverse32.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.p
  %i.cy = sub i32 0, %i.cx
  br label %.lr.ph.i.i133.i.i

.lr.ph.i.i133.i.i:                                ; preds = %.lr.ph.i.i133.i.i, %.lr.ph.preheader.i.i.i.i
  %.046.i.i.i.i = phi i32 [ %i.dc, %.lr.ph.i.i133.i.i ], [ %i.cw, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %.03545.i.i.i.i = phi i32 [ %.046.i.i.i.i, %.lr.ph.i.i133.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i ]
  %.03644.i.i.i.i = phi i32 [ %i.dd, %.lr.ph.i.i133.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.03743.i.i.i.i = phi i32 [ %.03842.i.i.i.i, %.lr.ph.i.i133.i.i ], [ %i.cu, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.03842.i.i.i.i = phi i32 [ %.recomposed, %.lr.ph.i.i133.i.i ], [ %i.cy, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.cz = udiv i32 %.03743.i.i.i.i, %.03842.i.i.i.i ; 2 uses
  %i.da = mul nuw i32 %i.cz, %.03842.i.i.i.i      ; 0 uses
  %.recomposed = urem i32 %.03743.i.i.i.i, %.03842.i.i.i.i ; 2 uses
  %i.db = mul i32 %i.cz, %.046.i.i.i.i
  %i.dc = add i32 %i.db, %.03545.i.i.i.i
  %i.dd = xor i32 %.03644.i.i.i.i, 1
  %.not.i.i134.i.i = icmp eq i32 %.recomposed, 0
  br i1 %.not.i.i134.i.i, label %._crit_edge.i.i135.i.i, label %.lr.ph.i.i133.i.i, !llvm.loop !26

._crit_edge.i.i135.i.i:                           ; preds = %.lr.ph.i.i133.i.i
  %i.de = icmp eq i32 %.03644.i.i.i.i, 1
  %i.df = sub i32 0, %.046.i.i.i.i
  %spec.select.i.i136.i.i = select i1 %i.de, i32 %i.df, i32 %.046.i.i.i.i
  br label %ZL_getMultiplicativeInverse32.exit.i.i.i

ZL_getMultiplicativeInverse32.exit.i.i.i:         ; preds = %._crit_edge.i.i135.i.i, %bb.p, %ZL_gcdImpl.exit158.i.i
  %.1.i.i137.i.i = phi i32 [ 1, %ZL_gcdImpl.exit158.i.i ], [ 1, %bb.p ], [ %spec.select.i.i136.i.i, %._crit_edge.i.i135.i.i ]
  %.not2326.not.i138.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not2326.not.i138.i.i, label %ZL_firstIndexNotDivisibleBy16.exit.i.i, label %.lr.ph.i139.i.i.a

bb.q:                                             ; preds = %.lr.ph.i139.i.i.a
  %i.dg = add nuw i64 %.02028.i140.i.i, 1         ; 2 uses
  %exitcond.not.i145.i.i = icmp eq i64 %i.dg, %i.cq
  br i1 %exitcond.not.i145.i.i, label %ZL_firstIndexNotDivisibleBy16.exit.i.i, label %.lr.ph.i139.i.i.a, !llvm.loop !27

.lr.ph.i139.i.i.a:                                ; preds = %ZL_getMultiplicativeInverse32.exit.i.i.i, %bb.q
  %.02028.i140.i.i = phi i64 [ %i.dg, %bb.q ], [ 0, %ZL_getMultiplicativeInverse32.exit.i.i.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.02028.i140.i.i
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !43 ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = mul i32 %.1.i.i137.i.i, %i.dj
  %i.dl = lshr i32 %i.dk, %i.ct                   ; 2 uses
  %i.dm = mul i32 %i.dl, %i.cs
  %i.dn = trunc i32 %i.dm to i16
  %.not.i141.i.i = icmp eq i16 %i.di, %i.dn
  %i.do = and i32 %i.dl, 65535
  %i.dp = icmp samesign ule i32 %i.do, %7
  %or.cond.not.i142.i.i = select i1 %.not.i141.i.i, i1 %i.dp, i1 false
  br i1 %or.cond.not.i142.i.i, label %bb.q, label %ZL_firstIndexNotDivisibleBy16.exit.i.i

ZL_firstIndexNotDivisibleBy16.exit.i.i:           ; preds = %.lr.ph.i139.i.i.a, %bb.q, %ZL_getMultiplicativeInverse32.exit.i.i.i
  %spec.select.i144.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i.i.i ], [ %.02028.i140.i.i, %.lr.ph.i139.i.i.a ], [ %i.cq, %bb.q ]
  %i.dq = add i64 %spec.select.i144.i.i, %.3111.i.i ; 3 uses
  %i.dr = icmp eq i64 %i.dq, %i.f
  br i1 %i.dr, label %getDivisor.exit.thread, label %bb.r

bb.r:                                             ; preds = %ZL_firstIndexNotDivisibleBy16.exit.i.i
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dq
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !43 ; 2 uses
  %i.du = zext i16 %i.dt to i64                   ; 2 uses
  %spec.select.i146.i.i = call i64 @llvm.umax.i64(i64 %i.du, i64 %.2106.i.i) ; 2 uses
  %spec.select44.i147.i.i = call i64 @llvm.umin.i64(i64 %i.du, i64 %.2106.i.i) ; 4 uses
  %i.dv = icmp eq i16 %i.dt, 0
  br i1 %i.dv, label %ZL_gcdImpl.exit158.i.i.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = urem i64 %spec.select.i146.i.i, %spec.select44.i147.i.i ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %ZL_gcdImpl.exit158.i.i.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dw, i1 true) ; 2 uses
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i147.i.i, i1 true) ; 2 uses
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = call i32 @llvm.umin.i32(i32 %i.dz, i32 %i.eb)
  %i.ed = lshr exact i64 %i.dw, %i.dy             ; 3 uses
  %i.ee = lshr exact i64 %spec.select44.i147.i.i, %i.ea ; 2 uses
  %.not45.i148.i.i = icmp eq i64 %i.ed, %i.ee
  br i1 %.not45.i148.i.i, label %._crit_edge.i155.i.i, label %.lr.ph.i149.i.i

.lr.ph.i149.i.i:                                  ; preds = %bb.t, %.lr.ph.i149.i.i
  %.147.i150.i.i = phi i64 [ %i.ej, %.lr.ph.i149.i.i ], [ %i.ee, %bb.t ] ; 4 uses
  %.13846.i151.i.i = phi i64 [ %.2.i152.i.i, %.lr.ph.i149.i.i ], [ %i.ed, %bb.t ] ; 4 uses
  %i.ef = icmp ult i64 %.13846.i151.i.i, %.147.i150.i.i
  %i.eg = sub nuw nsw i64 %.147.i150.i.i, %.13846.i151.i.i
  %i.eh = sub nuw nsw i64 %.13846.i151.i.i, %.147.i150.i.i
  %.2.i152.i.i = call i64 @llvm.umin.i64(i64 %.13846.i151.i.i, i64 %.147.i150.i.i) ; 3 uses
  %.0.i153.i.i = select i1 %i.ef, i64 %i.eg, i64 %i.eh ; 2 uses
  %i.ei = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i153.i.i, i1 true)
  %i.ej = lshr exact i64 %.0.i153.i.i, %i.ei      ; 2 uses
  %.not.i154.i.i = icmp eq i64 %.2.i152.i.i, %i.ej
  br i1 %.not.i154.i.i, label %._crit_edge.i155.i.i, label %.lr.ph.i149.i.i, !llvm.loop !24

._crit_edge.i155.i.i:                             ; preds = %.lr.ph.i149.i.i, %bb.t
  %.138.lcssa.i156.i.i = phi i64 [ %i.ed, %bb.t ], [ %.2.i152.i.i, %.lr.ph.i149.i.i ]
  %i.ek = zext nneg i32 %i.ec to i64
  %i.el = shl nuw nsw i64 %.138.lcssa.i156.i.i, %i.ek
  br label %ZL_gcdImpl.exit158.i.i.backedge

ZL_gcdImpl.exit158.i.i.backedge:                  ; preds = %._crit_edge.i155.i.i, %bb.s, %bb.r
  %.2106.i.i.be = phi i64 [ %i.el, %._crit_edge.i155.i.i ], [ %spec.select44.i147.i.i, %bb.s ], [ %spec.select.i146.i.i, %bb.r ]
  br label %ZL_gcdImpl.exit158.i.i

.preheader233.i.i.a:                              ; preds = %.split.i.i, %bb.u
  %.4112237.i.i = phi i64 [ %i.ep, %bb.u ], [ 0, %.split.i.i ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.4112237.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !44 ; 2 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.u, label %.critedge7.i.i

bb.u:                                             ; preds = %.preheader233.i.i.a
  %i.ep = add nuw i64 %.4112237.i.i, 1            ; 2 uses
  %exitcond243.not.i.i = icmp eq i64 %i.ep, %i.f
  br i1 %exitcond243.not.i.i, label %getDivisor.exit.thread, label %.preheader233.i.i.a, !llvm.loop !28

.critedge7.i.i:                                   ; preds = %.preheader233.i.i.a
  %i.eq = zext i32 %i.en to i64
  br label %ZL_gcdImpl.exit190.i.i

ZL_gcdImpl.exit190.i.i:                           ; preds = %ZL_gcdImpl.exit190.i.i.backedge, %.critedge7.i.i
  %.5113.in.i.i = phi i64 [ %.4112237.i.i, %.critedge7.i.i ], [ %i.fq, %ZL_gcdImpl.exit190.i.i.backedge ]
  %.4.i.i = phi i64 [ %i.eq, %.critedge7.i.i ], [ %.4.i.i.be, %ZL_gcdImpl.exit190.i.i.backedge ] ; 5 uses
  %.5113.i.i = add i64 %.5113.in.i.i, 1           ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.5113.i.i
  %i.es = sub i64 %i.f, %.5113.i.i                ; 3 uses
  %i.et = udiv i64 4294967295, %.4.i.i
  %i.eu = trunc nuw i64 %i.et to i32
  %i.ev = trunc i64 %.4.i.i to i32                ; 3 uses
  %i.ew = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.ev, i1 true) ; 2 uses
  %i.ex = lshr exact i32 %i.ev, %i.ew             ; 4 uses
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %ZL_getMultiplicativeInverse32.exit.i170.i.i, label %bb.v

bb.v:                                             ; preds = %ZL_gcdImpl.exit190.i.i
  %i.ez = udiv i32 -1, %i.ex                      ; 2 uses
  %i.fa = mul i32 %i.ez, %i.ex                    ; 2 uses
  %.not41.i.i159.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not41.i.i159.i.i, label %ZL_getMultiplicativeInverse32.exit.i170.i.i, label %.lr.ph.preheader.i.i160.i.i

.lr.ph.preheader.i.i160.i.i:                      ; preds = %bb.v
  %i.fb = sub i32 0, %i.fa
  br label %.lr.ph.i.i161.i.i

.lr.ph.i.i161.i.i:                                ; preds = %.lr.ph.i.i161.i.i, %.lr.ph.preheader.i.i160.i.i
  %.046.i.i162.i.i = phi i32 [ %i.ff, %.lr.ph.i.i161.i.i ], [ %i.ez, %.lr.ph.preheader.i.i160.i.i ] ; 4 uses
  %.03545.i.i163.i.i = phi i32 [ %.046.i.i162.i.i, %.lr.ph.i.i161.i.i ], [ 1, %.lr.ph.preheader.i.i160.i.i ]
  %.03644.i.i164.i.i = phi i32 [ %i.fg, %.lr.ph.i.i161.i.i ], [ 1, %.lr.ph.preheader.i.i160.i.i ] ; 2 uses
  %.03743.i.i165.i.i = phi i32 [ %.03842.i.i166.i.i, %.lr.ph.i.i161.i.i ], [ %i.ex, %.lr.ph.preheader.i.i160.i.i ] ; 2 uses
  %.03842.i.i166.i.i = phi i32 [ %.recomposed301, %.lr.ph.i.i161.i.i ], [ %i.fb, %.lr.ph.preheader.i.i160.i.i ] ; 4 uses
  %i.fc = udiv i32 %.03743.i.i165.i.i, %.03842.i.i166.i.i ; 2 uses
  %i.fd = mul nuw i32 %i.fc, %.03842.i.i166.i.i   ; 0 uses
  %.recomposed301 = urem i32 %.03743.i.i165.i.i, %.03842.i.i166.i.i ; 2 uses
  %i.fe = mul i32 %i.fc, %.046.i.i162.i.i
  %i.ff = add i32 %i.fe, %.03545.i.i163.i.i
  %i.fg = xor i32 %.03644.i.i164.i.i, 1
  %.not.i.i167.i.i = icmp eq i32 %.recomposed301, 0
  br i1 %.not.i.i167.i.i, label %._crit_edge.i.i168.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !26

._crit_edge.i.i168.i.i:                           ; preds = %.lr.ph.i.i161.i.i
  %i.fh = icmp eq i32 %.03644.i.i164.i.i, 1
  %i.fi = sub i32 0, %.046.i.i162.i.i
  %spec.select.i.i169.i.i = select i1 %i.fh, i32 %i.fi, i32 %.046.i.i162.i.i
  br label %ZL_getMultiplicativeInverse32.exit.i170.i.i

ZL_getMultiplicativeInverse32.exit.i170.i.i:      ; preds = %._crit_edge.i.i168.i.i, %bb.v, %ZL_gcdImpl.exit190.i.i
  %.1.i.i171.i.i = phi i32 [ 1, %ZL_gcdImpl.exit190.i.i ], [ 1, %bb.v ], [ %spec.select.i.i169.i.i, %._crit_edge.i.i168.i.i ]
  %.not2325.not.i.i.i = icmp eq i64 %i.es, 0
  br i1 %.not2325.not.i.i.i, label %ZL_firstIndexNotDivisibleBy32.exit.i.i, label %.lr.ph.i172.i.i

bb.w:                                             ; preds = %.lr.ph.i172.i.i
  %i.fj = add nuw i64 %.02027.i.i.i, 1            ; 2 uses
  %exitcond.not.i177.i.i = icmp eq i64 %i.fj, %i.es
  br i1 %exitcond.not.i177.i.i, label %ZL_firstIndexNotDivisibleBy32.exit.i.i, label %.lr.ph.i172.i.i, !llvm.loop !29

.lr.ph.i172.i.i:                                  ; preds = %ZL_getMultiplicativeInverse32.exit.i170.i.i, %bb.w
  %.02027.i.i.i = phi i64 [ %i.fj, %bb.w ], [ 0, %ZL_getMultiplicativeInverse32.exit.i170.i.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.02027.i.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !44 ; 2 uses
  %i.fm = mul i32 %i.fl, %.1.i.i171.i.i
  %i.fn = lshr i32 %i.fm, %i.ew                   ; 2 uses
  %i.fo = mul i32 %i.fn, %i.ev
  %.not.i173.i.i = icmp eq i32 %i.fo, %i.fl
  %i.fp = icmp ule i32 %i.fn, %i.eu
  %or.cond.not.i174.i.i = select i1 %.not.i173.i.i, i1 %i.fp, i1 false
  br i1 %or.cond.not.i174.i.i, label %bb.w, label %ZL_firstIndexNotDivisibleBy32.exit.i.i

ZL_firstIndexNotDivisibleBy32.exit.i.i:           ; preds = %.lr.ph.i172.i.i, %bb.w, %ZL_getMultiplicativeInverse32.exit.i170.i.i
  %spec.select.i176.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i170.i.i ], [ %.02027.i.i.i, %.lr.ph.i172.i.i ], [ %i.es, %bb.w ]
  %i.fq = add i64 %spec.select.i176.i.i, %.5113.i.i ; 3 uses
  %i.fr = icmp eq i64 %i.fq, %i.f
  br i1 %i.fr, label %getDivisor.exit.thread, label %bb.x

bb.x:                                             ; preds = %ZL_firstIndexNotDivisibleBy32.exit.i.i
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.fq
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !44 ; 2 uses
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %spec.select.i178.i.i = call i64 @llvm.umax.i64(i64 %i.fu, i64 %.4.i.i) ; 2 uses
  %spec.select44.i179.i.i = call i64 @llvm.umin.i64(i64 %i.fu, i64 %.4.i.i) ; 4 uses
  %i.fv = icmp eq i32 %i.ft, 0
  br i1 %i.fv, label %ZL_gcdImpl.exit190.i.i.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fw = urem i64 %spec.select.i178.i.i, %spec.select44.i179.i.i ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %ZL_gcdImpl.exit190.i.i.backedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fw, i1 true) ; 2 uses
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i179.i.i, i1 true) ; 2 uses
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.gb)
  %i.gd = lshr exact i64 %i.fw, %i.fy             ; 3 uses
  %i.ge = lshr exact i64 %spec.select44.i179.i.i, %i.ga ; 2 uses
  %.not45.i180.i.i = icmp eq i64 %i.gd, %i.ge
  br i1 %.not45.i180.i.i, label %._crit_edge.i187.i.i, label %.lr.ph.i181.i.i

.lr.ph.i181.i.i:                                  ; preds = %bb.z, %.lr.ph.i181.i.i
  %.147.i182.i.i = phi i64 [ %i.gj, %.lr.ph.i181.i.i ], [ %i.ge, %bb.z ] ; 4 uses
  %.13846.i183.i.i = phi i64 [ %.2.i184.i.i, %.lr.ph.i181.i.i ], [ %i.gd, %bb.z ] ; 4 uses
  %i.gf = icmp ult i64 %.13846.i183.i.i, %.147.i182.i.i
  %i.gg = sub nuw nsw i64 %.147.i182.i.i, %.13846.i183.i.i
  %i.gh = sub nuw nsw i64 %.13846.i183.i.i, %.147.i182.i.i
  %.2.i184.i.i = call i64 @llvm.umin.i64(i64 %.13846.i183.i.i, i64 %.147.i182.i.i) ; 3 uses
  %.0.i185.i.i = select i1 %i.gf, i64 %i.gg, i64 %i.gh ; 2 uses
  %i.gi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i185.i.i, i1 true)
  %i.gj = lshr exact i64 %.0.i185.i.i, %i.gi      ; 2 uses
  %.not.i186.i.i = icmp eq i64 %.2.i184.i.i, %i.gj
  br i1 %.not.i186.i.i, label %._crit_edge.i187.i.i, label %.lr.ph.i181.i.i, !llvm.loop !24

._crit_edge.i187.i.i:                             ; preds = %.lr.ph.i181.i.i, %bb.z
  %.138.lcssa.i188.i.i = phi i64 [ %i.gd, %bb.z ], [ %.2.i184.i.i, %.lr.ph.i181.i.i ]
  %i.gk = zext nneg i32 %i.gc to i64
  %i.gl = shl nuw nsw i64 %.138.lcssa.i188.i.i, %i.gk
  br label %ZL_gcdImpl.exit190.i.i.backedge

ZL_gcdImpl.exit190.i.i.backedge:                  ; preds = %._crit_edge.i187.i.i, %bb.y, %bb.x
  %.4.i.i.be = phi i64 [ %i.gl, %._crit_edge.i187.i.i ], [ %spec.select44.i179.i.i, %bb.y ], [ %spec.select.i178.i.i, %bb.x ]
  br label %ZL_gcdImpl.exit190.i.i

.preheader235.i.i:                                ; preds = %.split.i.i, %bb.aa
  %.6114236.i.i = phi i64 [ %i.gp, %bb.aa ], [ 0, %.split.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.6114236.i.i
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !20 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.aa, label %.preheader.i

bb.aa:                                            ; preds = %.preheader235.i.i
  %i.gp = add nuw i64 %.6114236.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gp, %i.f
  br i1 %exitcond.not.i.i, label %getDivisor.exit.thread, label %.preheader235.i.i, !llvm.loop !30

.preheader.i:                                     ; preds = %.preheader235.i.i, %.preheader.i.backedge
  %.7115.in.i.i = phi i64 [ %i.hl, %.preheader.i.backedge ], [ %.6114236.i.i, %.preheader235.i.i ]
  %.6.i.i = phi i64 [ %.6.i.i.be, %.preheader.i.backedge ], [ %i.gn, %.preheader235.i.i ] ; 7 uses
  %.7115.i.i = add i64 %.7115.in.i.i, 1           ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.7115.i.i
  %i.gr = sub i64 %i.f, %.7115.i.i                ; 3 uses
  %i.gs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.6.i.i, i1 true) ; 2 uses
  %i.gt = lshr exact i64 %.6.i.i, %i.gs           ; 4 uses
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %ZL_getMultiplicativeInverse64.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i
  %i.gv = udiv i64 -1, %i.gt                      ; 2 uses
  %i.gw = mul i64 %i.gv, %i.gt                    ; 2 uses
  %.not41.i.i191.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not41.i.i191.i.i, label %ZL_getMultiplicativeInverse64.exit.i.i.i, label %.lr.ph.preheader.i.i192.i.i

.lr.ph.preheader.i.i192.i.i:                      ; preds = %bb.ab
  %i.gx = sub i64 0, %i.gw
  br label %.lr.ph.i.i193.i.i

.lr.ph.i.i193.i.i:                                ; preds = %.lr.ph.i.i193.i.i, %.lr.ph.preheader.i.i192.i.i
  %.046.i.i194.i.i = phi i64 [ %i.hb, %.lr.ph.i.i193.i.i ], [ %i.gv, %.lr.ph.preheader.i.i192.i.i ] ; 4 uses
  %.03545.i.i195.i.i = phi i64 [ %.046.i.i194.i.i, %.lr.ph.i.i193.i.i ], [ 1, %.lr.ph.preheader.i.i192.i.i ]
  %.03644.i.i196.i.i = phi i64 [ %i.hc, %.lr.ph.i.i193.i.i ], [ 1, %.lr.ph.preheader.i.i192.i.i ] ; 2 uses
  %.03743.i.i197.i.i = phi i64 [ %.03842.i.i198.i.i, %.lr.ph.i.i193.i.i ], [ %i.gt, %.lr.ph.preheader.i.i192.i.i ] ; 2 uses
  %.03842.i.i198.i.i = phi i64 [ %.recomposed302, %.lr.ph.i.i193.i.i ], [ %i.gx, %.lr.ph.preheader.i.i192.i.i ] ; 4 uses
  %i.gy = udiv i64 %.03743.i.i197.i.i, %.03842.i.i198.i.i ; 2 uses
  %i.gz = mul nuw i64 %i.gy, %.03842.i.i198.i.i   ; 0 uses
  %.recomposed302 = urem i64 %.03743.i.i197.i.i, %.03842.i.i198.i.i ; 2 uses
  %i.ha = mul i64 %i.gy, %.046.i.i194.i.i
  %i.hb = add i64 %i.ha, %.03545.i.i195.i.i
  %i.hc = xor i64 %.03644.i.i196.i.i, 1
  %.not.i.i199.i.i = icmp eq i64 %.recomposed302, 0
  br i1 %.not.i.i199.i.i, label %._crit_edge.i.i200.i.i, label %.lr.ph.i.i193.i.i, !llvm.loop !31

._crit_edge.i.i200.i.i:                           ; preds = %.lr.ph.i.i193.i.i
  %i.hd = icmp eq i64 %.03644.i.i196.i.i, 1
  %i.he = sub i64 0, %.046.i.i194.i.i
  %spec.select.i.i201.i.i = select i1 %i.hd, i64 %i.he, i64 %.046.i.i194.i.i
  br label %ZL_getMultiplicativeInverse64.exit.i.i.i

ZL_getMultiplicativeInverse64.exit.i.i.i:         ; preds = %._crit_edge.i.i200.i.i, %bb.ab, %.preheader.i
  %.1.i.i202.i.i = phi i64 [ 1, %.preheader.i ], [ 1, %bb.ab ], [ %spec.select.i.i201.i.i, %._crit_edge.i.i200.i.i ]
  %.not2326.not.i203.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not2326.not.i203.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %.lr.ph.i204.i.i

bb.ac:                                            ; preds = %.lr.ph.i204.i.i
  %i.hf = add nuw i64 %.02028.i205.i.i, 1         ; 2 uses
  %exitcond.not.i207.i.i = icmp eq i64 %i.hf, %i.gr
  br i1 %exitcond.not.i207.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %.lr.ph.i204.i.i, !llvm.loop !32

.lr.ph.i204.i.i:                                  ; preds = %ZL_getMultiplicativeInverse64.exit.i.i.i, %bb.ac
  %.02028.i205.i.i = phi i64 [ %i.hf, %bb.ac ], [ 0, %ZL_getMultiplicativeInverse64.exit.i.i.i ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %.02028.i205.i.i
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !20 ; 2 uses
  %i.hi = mul i64 %i.hh, %.1.i.i202.i.i
  %i.hj = lshr i64 %i.hi, %i.gs                   ; 2 uses
  %i.hk = mul i64 %i.hj, %.6.i.i
  %.not.i206.i.i = icmp ne i64 %i.hk, %i.hh
  %mul.i.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.6.i.i, i64 %i.hj)
  %mul.ov.i.i.i = extractvalue { i64, i1 } %mul.i.i.i, 1
  %.not34.i.i.i = or i1 %.not.i206.i.i, %mul.ov.i.i.i
  br i1 %.not34.i.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %bb.ac

ZL_firstIndexNotDivisibleBy64.exit.i.i:           ; preds = %.lr.ph.i204.i.i, %bb.ac, %ZL_getMultiplicativeInverse64.exit.i.i.i
  %spec.select.i209.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse64.exit.i.i.i ], [ %.02028.i205.i.i, %.lr.ph.i204.i.i ], [ %i.gr, %bb.ac ]
  %i.hl = add i64 %spec.select.i209.i.i, %.7115.i.i ; 3 uses
  %i.hm = icmp eq i64 %i.hl, %i.f
  br i1 %i.hm, label %getDivisor.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %ZL_firstIndexNotDivisibleBy64.exit.i.i
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.hl
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !20 ; 2 uses
  %spec.select.i210.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 %.6.i.i) ; 2 uses
  %spec.select44.i211.i.i = call i64 @llvm.umin.i64(i64 %i.ho, i64 %.6.i.i) ; 5 uses
  %i.hp = icmp eq i64 %spec.select44.i211.i.i, 0
  br i1 %i.hp, label %.preheader.i.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hq = urem i64 %spec.select.i210.i.i, %spec.select44.i211.i.i ; 3 uses
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %.preheader.i.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hq, i1 true) ; 2 uses
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i211.i.i, i1 true) ; 2 uses
  %i.hv = trunc nuw nsw i64 %i.hu to i32
  %i.hw = call i32 @llvm.umin.i32(i32 %i.ht, i32 %i.hv)
  %i.hx = lshr exact i64 %i.hq, %i.hs             ; 3 uses
  %i.hy = lshr exact i64 %spec.select44.i211.i.i, %i.hu ; 2 uses
  %.not45.i212.i.i = icmp eq i64 %i.hx, %i.hy
  br i1 %.not45.i212.i.i, label %._crit_edge.i219.i.i, label %.lr.ph.i213.i.i

.lr.ph.i213.i.i:                                  ; preds = %bb.af, %.lr.ph.i213.i.i
  %.147.i214.i.i = phi i64 [ %i.id, %.lr.ph.i213.i.i ], [ %i.hy, %bb.af ] ; 4 uses
  %.13846.i215.i.i = phi i64 [ %.2.i216.i.i, %.lr.ph.i213.i.i ], [ %i.hx, %bb.af ] ; 4 uses
  %i.hz = icmp ult i64 %.13846.i215.i.i, %.147.i214.i.i
  %i.ia = sub nuw i64 %.147.i214.i.i, %.13846.i215.i.i
  %i.ib = sub nuw i64 %.13846.i215.i.i, %.147.i214.i.i
  %.2.i216.i.i = call i64 @llvm.umin.i64(i64 %.13846.i215.i.i, i64 %.147.i214.i.i) ; 3 uses
  %.0.i217.i.i = select i1 %i.hz, i64 %i.ia, i64 %i.ib ; 2 uses
  %i.ic = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i217.i.i, i1 true)
  %i.id = lshr exact i64 %.0.i217.i.i, %i.ic      ; 2 uses
  %.not.i218.i.i = icmp eq i64 %.2.i216.i.i, %i.id
  br i1 %.not.i218.i.i, label %._crit_edge.i219.i.i, label %.lr.ph.i213.i.i, !llvm.loop !24

._crit_edge.i219.i.i:                             ; preds = %.lr.ph.i213.i.i, %bb.af
  %.138.lcssa.i220.i.i = phi i64 [ %i.hx, %bb.af ], [ %.2.i216.i.i, %.lr.ph.i213.i.i ]
  %i.ie = zext nneg i32 %i.hw to i64
  %i.if = shl i64 %.138.lcssa.i220.i.i, %i.ie
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %._crit_edge.i219.i.i, %bb.ae, %bb.ad
  %.6.i.i.be = phi i64 [ %spec.select.i210.i.i, %bb.ad ], [ %i.if, %._crit_edge.i219.i.i ], [ %spec.select44.i211.i.i, %bb.ae ]
  br label %.preheader.i

bb.ag:                                            ; preds = %bb.f
  %i.ig = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.e)
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %.split.i, label %getDivisor.exit.thread

.split.i:                                         ; preds = %bb.ag
  %i.ii = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true)
  switch i64 %i.ii, label %getDivisor.exit.thread [
    i64 0, label %bb.ah
    i64 1, label %bb.an
    i64 2, label %bb.at
    i64 3, label %bb.az
  ]

bb.ah:                                            ; preds = %.split.i
  %i.ij = icmp ult i64 %.057, 256
  br i1 %i.ij, label %bb.aj, label %bb.ai, !prof !39

bb.ai:                                            ; preds = %bb.ah
  %i.ik = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 35, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %.057, i64 noundef 255) #7 ; 2 uses
  %i.il = extractvalue { i32, ptr } %i.ik, 0      ; 2 uses
  %i.im = extractvalue { i32, ptr } %i.ik, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.il, ptr %i.im, ptr noundef nonnull @.str.24) #7
  br label %getDivisor.exit

bb.aj:                                            ; preds = %bb.ah
  %.rhs.trunc.i = trunc nuw i64 %.057 to i8
  %i.in = udiv i8 -1, %.rhs.trunc.i
  %8 = zext i8 %i.in to i32
  %i.io = trunc nuw nsw i64 %.057 to i32          ; 3 uses
  %i.ip = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.io, i1 true) ; 2 uses
  %i.iq = lshr exact i32 %i.io, %i.ip             ; 4 uses
  %i.ir = icmp eq i32 %i.iq, 1
  br i1 %i.ir, label %ZL_getMultiplicativeInverse8.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.rhs.trunc.i.i.i = trunc nuw i32 %i.iq to i8
  %i.is = udiv i8 -1, %.rhs.trunc.i.i.i
  %.zext.i.i.i = zext i8 %i.is to i32             ; 2 uses
  %i.it = mul nuw nsw i32 %i.iq, %.zext.i.i.i
  %i.iu = sub nsw i32 0, %i.it
  %i.iv = and i32 %i.iu, 255                      ; 2 uses
  %.not42.i.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not42.i.i.i, label %ZL_getMultiplicativeInverse8.exit.i.i, label %.lr.ph.i.i92.i

.lr.ph.i.i92.i:                                   ; preds = %bb.ak, %.lr.ph.i.i92.i
  %.0.in47.i.i.i = phi i32 [ %i.jb, %.lr.ph.i.i92.i ], [ %.zext.i.i.i, %bb.ak ] ; 4 uses
  %.03546.i.i.i = phi i32 [ %.0.in47.i.i.i, %.lr.ph.i.i92.i ], [ 1, %bb.ak ]
  %.03645.i.i.i = phi i32 [ %i.jc, %.lr.ph.i.i92.i ], [ 1, %bb.ak ] ; 2 uses
  %.037.in44.i.i.i = phi i32 [ %.03843.i.i.i, %.lr.ph.i.i92.i ], [ %i.iq, %bb.ak ] ; 2 uses
  %.03843.i.i.i = phi i32 [ %i.iz, %.lr.ph.i.i92.i ], [ %i.iv, %bb.ak ] ; 3 uses
  %.lhs.trunc.i.i.i = trunc nuw i32 %.037.in44.i.i.i to i8
  %.rhs.trunc54.i.i.i = trunc nuw i32 %.03843.i.i.i to i8
  %i.iw = udiv i8 %.lhs.trunc.i.i.i, %.rhs.trunc54.i.i.i
  %.zext55.i.i.i = zext i8 %i.iw to i32           ; 2 uses
  %i.ix = mul nuw nsw i32 %.03843.i.i.i, %.zext55.i.i.i
  %i.iy = sub nsw i32 %.037.in44.i.i.i, %i.ix
  %i.iz = and i32 %i.iy, 255                      ; 2 uses
  %i.ja = mul i32 %.0.in47.i.i.i, %.zext55.i.i.i
  %i.jb = add i32 %i.ja, %.03546.i.i.i
  %i.jc = xor i32 %.03645.i.i.i, 1
  %.not.i.i93.i = icmp eq i32 %i.iz, 0
  br i1 %.not.i.i93.i, label %._crit_edge.i.i94.i, label %.lr.ph.i.i92.i, !llvm.loop !22

._crit_edge.i.i94.i:                              ; preds = %.lr.ph.i.i92.i
  %i.jd = icmp eq i32 %.03645.i.i.i, 1
  %i.je = sub i32 0, %.0.in47.i.i.i
  %spec.select.i.i95.i = select i1 %i.jd, i32 %i.je, i32 %.0.in47.i.i.i
  %i.jf = and i32 %spec.select.i.i95.i, 255
  br label %ZL_getMultiplicativeInverse8.exit.i.i

ZL_getMultiplicativeInverse8.exit.i.i:            ; preds = %._crit_edge.i.i94.i, %bb.ak, %bb.aj
  %.1.i.i.i = phi i32 [ 1, %bb.aj ], [ 1, %bb.ak ], [ %i.jf, %._crit_edge.i.i94.i ]
  %.not2326.not.i.i.a = icmp eq i64 %i.f, 0
  br i1 %.not2326.not.i.i.a, label %ZL_firstIndexNotDivisibleBy8.exit.i, label %.lr.ph.i.i.a

bb.al:                                            ; preds = %.lr.ph.i.i.a
  %i.jg = add nuw i64 %.02028.i.i.a, 1            ; 2 uses
  %exitcond.not.i97.i = icmp eq i64 %i.jg, %i.f
  br i1 %exitcond.not.i97.i, label %getDivisor.exit.thread, label %.lr.ph.i.i.a, !llvm.loop !23

.lr.ph.i.i.a:                                     ; preds = %ZL_getMultiplicativeInverse8.exit.i.i, %bb.al
  %.02028.i.i.a = phi i64 [ %i.jg, %bb.al ], [ 0, %ZL_getMultiplicativeInverse8.exit.i.i ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.l, i64 %.02028.i.i.a
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !40  ; 2 uses
  %i.jj = zext i8 %i.ji to i32
  %i.jk = mul nuw nsw i32 %.1.i.i.i, %i.jj
  %i.jl = lshr i32 %i.jk, %i.ip                   ; 2 uses
  %i.jm = mul nuw nsw i32 %i.jl, %i.io
  %i.jn = trunc i32 %i.jm to i8
  %.not.i96.i = icmp eq i8 %i.ji, %i.jn
  %i.jo = and i32 %i.jl, 255
  %i.jp = icmp samesign ule i32 %i.jo, %8
  %or.cond.not.i.i = select i1 %.not.i96.i, i1 %i.jp, i1 false
  br i1 %or.cond.not.i.i, label %bb.al, label %ZL_firstIndexNotDivisibleBy8.exit.i

ZL_firstIndexNotDivisibleBy8.exit.i:              ; preds = %.lr.ph.i.i.a, %ZL_getMultiplicativeInverse8.exit.i.i
  %spec.select.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse8.exit.i.i ], [ %.02028.i.i.a, %.lr.ph.i.i.a ] ; 2 uses
  %.not91.i = icmp eq i64 %spec.select.i.i, %i.f
  br i1 %.not91.i, label %getDivisor.exit.thread, label %bb.am, !prof !45

bb.am:                                            ; preds = %ZL_firstIndexNotDivisibleBy8.exit.i
  %i.jq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.25, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 39, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i.i, i64 noundef %i.f) #7 ; 2 uses
  %i.jr = extractvalue { i32, ptr } %i.jq, 0      ; 2 uses
  %i.js = extractvalue { i32, ptr } %i.jq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.jr, ptr %i.js, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

bb.an:                                            ; preds = %.split.i
  %i.jt = icmp ult i64 %.057, 65536
  br i1 %i.jt, label %bb.ap, label %bb.ao, !prof !39

bb.ao:                                            ; preds = %bb.an
  %i.ju = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.29, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 46, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.31, i64 noundef %.057, i64 noundef 65535) #7 ; 2 uses
  %i.jv = extractvalue { i32, ptr } %i.ju, 0      ; 2 uses
  %i.jw = extractvalue { i32, ptr } %i.ju, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.jv, ptr %i.jw, ptr noundef nonnull @.str.24) #7
  br label %getDivisor.exit

bb.ap:                                            ; preds = %bb.an
  %.rhs.trunc190.i.a = trunc nuw i64 %.057 to i16
  %i.jx = udiv i16 -1, %.rhs.trunc190.i.a
  %9 = zext i16 %i.jx to i32
  %i.jy = trunc nuw nsw i64 %.057 to i32          ; 3 uses
  %i.jz = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.jy, i1 true) ; 2 uses
  %i.ka = lshr exact i32 %i.jy, %i.jz             ; 4 uses
  %i.kb = icmp eq i32 %i.ka, 1
  br i1 %i.kb, label %ZL_getMultiplicativeInverse32.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kc = udiv i32 -1, %i.ka                      ; 2 uses
  %i.kd = mul i32 %i.kc, %i.ka                    ; 2 uses
  %.not41.i.i.i = icmp eq i32 %i.kd, 0
  br i1 %.not41.i.i.i, label %ZL_getMultiplicativeInverse32.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aq
  %i.ke = sub i32 0, %i.kd
  br label %.lr.ph.i.i98.i

.lr.ph.i.i98.i:                                   ; preds = %.lr.ph.i.i98.i, %.lr.ph.preheader.i.i.i
  %.046.i.i.i = phi i32 [ %i.ki, %.lr.ph.i.i98.i ], [ %i.kc, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.03545.i.i.i = phi i32 [ %.046.i.i.i, %.lr.ph.i.i98.i ], [ 1, %.lr.ph.preheader.i.i.i ]
  %.03644.i.i.i = phi i32 [ %i.kj, %.lr.ph.i.i98.i ], [ 1, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.03743.i.i.i = phi i32 [ %.03842.i.i.i, %.lr.ph.i.i98.i ], [ %i.ka, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.03842.i.i.i = phi i32 [ %.recomposed303, %.lr.ph.i.i98.i ], [ %i.ke, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.kf = udiv i32 %.03743.i.i.i, %.03842.i.i.i   ; 2 uses
  %i.kg = mul nuw i32 %i.kf, %.03842.i.i.i        ; 0 uses
  %.recomposed303 = urem i32 %.03743.i.i.i, %.03842.i.i.i ; 2 uses
  %i.kh = mul i32 %i.kf, %.046.i.i.i
  %i.ki = add i32 %i.kh, %.03545.i.i.i
  %i.kj = xor i32 %.03644.i.i.i, 1
  %.not.i.i99.i = icmp eq i32 %.recomposed303, 0
  br i1 %.not.i.i99.i, label %._crit_edge.i.i100.i, label %.lr.ph.i.i98.i, !llvm.loop !26

._crit_edge.i.i100.i:                             ; preds = %.lr.ph.i.i98.i
  %i.kk = icmp eq i32 %.03644.i.i.i, 1
  %i.kl = sub i32 0, %.046.i.i.i
  %spec.select.i.i101.i = select i1 %i.kk, i32 %i.kl, i32 %.046.i.i.i
  br label %ZL_getMultiplicativeInverse32.exit.i.i

ZL_getMultiplicativeInverse32.exit.i.i:           ; preds = %._crit_edge.i.i100.i, %bb.aq, %bb.ap
  %.1.i.i102.i = phi i32 [ 1, %bb.ap ], [ 1, %bb.aq ], [ %spec.select.i.i101.i, %._crit_edge.i.i100.i ]
  %.not2326.not.i103.i = icmp eq i64 %i.f, 0
  br i1 %.not2326.not.i103.i, label %ZL_firstIndexNotDivisibleBy16.exit.i, label %.lr.ph.i104.i.a

bb.ar:                                            ; preds = %.lr.ph.i104.i.a
  %i.km = add nuw i64 %.02028.i105.i, 1           ; 2 uses
  %exitcond.not.i109.i = icmp eq i64 %i.km, %i.f
  br i1 %exitcond.not.i109.i, label %getDivisor.exit.thread, label %.lr.ph.i104.i.a, !llvm.loop !27

.lr.ph.i104.i.a:                                  ; preds = %ZL_getMultiplicativeInverse32.exit.i.i, %bb.ar
  %.02028.i105.i = phi i64 [ %i.km, %bb.ar ], [ 0, %ZL_getMultiplicativeInverse32.exit.i.i ] ; 3 uses
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.02028.i105.i
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !43 ; 2 uses
  %i.kp = zext i16 %i.ko to i32
  %i.kq = mul i32 %.1.i.i102.i, %i.kp
  %i.kr = lshr i32 %i.kq, %i.jz                   ; 2 uses
  %i.ks = mul i32 %i.kr, %i.jy
  %i.kt = trunc i32 %i.ks to i16
  %.not.i106.i = icmp eq i16 %i.ko, %i.kt
  %i.ku = and i32 %i.kr, 65535
  %i.kv = icmp samesign ule i32 %i.ku, %9
  %or.cond.not.i107.i = select i1 %.not.i106.i, i1 %i.kv, i1 false
  br i1 %or.cond.not.i107.i, label %bb.ar, label %ZL_firstIndexNotDivisibleBy16.exit.i

ZL_firstIndexNotDivisibleBy16.exit.i:             ; preds = %.lr.ph.i104.i.a, %ZL_getMultiplicativeInverse32.exit.i.i
  %spec.select.i108.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i.i ], [ %.02028.i105.i, %.lr.ph.i104.i.a ] ; 2 uses
  %.not90.i = icmp eq i64 %spec.select.i108.i, %i.f
  br i1 %.not90.i, label %getDivisor.exit.thread, label %bb.as, !prof !46

bb.as:                                            ; preds = %ZL_firstIndexNotDivisibleBy16.exit.i
  %i.kw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.32, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 50, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i108.i, i64 noundef %i.f) #7 ; 2 uses
  %i.kx = extractvalue { i32, ptr } %i.kw, 0      ; 2 uses
  %i.ky = extractvalue { i32, ptr } %i.kw, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kx, ptr %i.ky, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

bb.at:                                            ; preds = %.split.i
  %i.kz = icmp ult i64 %.057, 4294967296
  br i1 %i.kz, label %bb.av, label %bb.au, !prof !39

bb.au:                                            ; preds = %bb.at
  %i.la = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.35, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 54, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.37, i64 noundef %.057, i64 noundef 4294967295) #7 ; 2 uses
  %i.lb = extractvalue { i32, ptr } %i.la, 0      ; 2 uses
  %i.lc = extractvalue { i32, ptr } %i.la, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.lb, ptr %i.lc, ptr noundef nonnull @.str.24) #7
  br label %getDivisor.exit

bb.av:                                            ; preds = %bb.at
  %.rhs.trunc192.i = trunc nuw i64 %.057 to i32   ; 4 uses
  %i.ld = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.rhs.trunc192.i, i1 true) ; 2 uses
  %i.le = lshr exact i32 %.rhs.trunc192.i, %i.ld  ; 4 uses
  %i.lf = icmp eq i32 %i.le, 1
  br i1 %i.lf, label %ZL_getMultiplicativeInverse32.exit.i121.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lg = udiv i32 -1, %i.le                      ; 2 uses
  %i.lh = mul i32 %i.lg, %i.le                    ; 2 uses
  %.not41.i.i110.i = icmp eq i32 %i.lh, 0
  br i1 %.not41.i.i110.i, label %ZL_getMultiplicativeInverse32.exit.i121.i, label %.lr.ph.preheader.i.i111.i

.lr.ph.preheader.i.i111.i:                        ; preds = %bb.aw
  %i.li = sub i32 0, %i.lh
  br label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %.lr.ph.i.i112.i, %.lr.ph.preheader.i.i111.i
  %.046.i.i113.i = phi i32 [ %i.lm, %.lr.ph.i.i112.i ], [ %i.lg, %.lr.ph.preheader.i.i111.i ] ; 4 uses
  %.03545.i.i114.i = phi i32 [ %.046.i.i113.i, %.lr.ph.i.i112.i ], [ 1, %.lr.ph.preheader.i.i111.i ]
  %.03644.i.i115.i = phi i32 [ %i.ln, %.lr.ph.i.i112.i ], [ 1, %.lr.ph.preheader.i.i111.i ] ; 2 uses
  %.03743.i.i116.i = phi i32 [ %.03842.i.i117.i, %.lr.ph.i.i112.i ], [ %i.le, %.lr.ph.preheader.i.i111.i ] ; 2 uses
  %.03842.i.i117.i = phi i32 [ %.recomposed304, %.lr.ph.i.i112.i ], [ %i.li, %.lr.ph.preheader.i.i111.i ] ; 4 uses
  %i.lj = udiv i32 %.03743.i.i116.i, %.03842.i.i117.i ; 2 uses
  %i.lk = mul nuw i32 %i.lj, %.03842.i.i117.i     ; 0 uses
  %.recomposed304 = urem i32 %.03743.i.i116.i, %.03842.i.i117.i ; 2 uses
  %i.ll = mul i32 %i.lj, %.046.i.i113.i
  %i.lm = add i32 %i.ll, %.03545.i.i114.i
  %i.ln = xor i32 %.03644.i.i115.i, 1
  %.not.i.i118.i = icmp eq i32 %.recomposed304, 0
  br i1 %.not.i.i118.i, label %._crit_edge.i.i119.i, label %.lr.ph.i.i112.i, !llvm.loop !26

._crit_edge.i.i119.i:                             ; preds = %.lr.ph.i.i112.i
  %i.lo = icmp eq i32 %.03644.i.i115.i, 1
  %i.lp = sub i32 0, %.046.i.i113.i
  %spec.select.i.i120.i = select i1 %i.lo, i32 %i.lp, i32 %.046.i.i113.i
  br label %ZL_getMultiplicativeInverse32.exit.i121.i

ZL_getMultiplicativeInverse32.exit.i121.i:        ; preds = %._crit_edge.i.i119.i, %bb.aw, %bb.av
  %.1.i.i122.i = phi i32 [ 1, %bb.av ], [ 1, %bb.aw ], [ %spec.select.i.i120.i, %._crit_edge.i.i119.i ]
  %.not2325.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not2325.not.i.i, label %ZL_firstIndexNotDivisibleBy32.exit.i, label %.lr.ph.i123.i

bb.ax:                                            ; preds = %.lr.ph.i123.i
  %i.lq = add nuw i64 %.02027.i.i, 1              ; 2 uses
  %exitcond.not.i127.i = icmp eq i64 %i.lq, %i.f
  br i1 %exitcond.not.i127.i, label %getDivisor.exit.thread, label %.lr.ph.i123.i, !llvm.loop !29

.lr.ph.i123.i:                                    ; preds = %ZL_getMultiplicativeInverse32.exit.i121.i, %bb.ax
  %.02027.i.i = phi i64 [ %i.lq, %bb.ax ], [ 0, %ZL_getMultiplicativeInverse32.exit.i121.i ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02027.i.i
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !44 ; 2 uses
  %i.lt = mul i32 %i.ls, %.1.i.i122.i
  %i.lu = lshr i32 %i.lt, %i.ld                   ; 2 uses
  %i.lv = mul i32 %i.lu, %.rhs.trunc192.i
  %.not.i124.i = icmp ne i32 %i.lv, %i.ls
  %mul.i = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.rhs.trunc192.i, i32 %i.lu)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  %or.cond.not.i125.not.i = or i1 %.not.i124.i, %mul.ov.i
  br i1 %or.cond.not.i125.not.i, label %ZL_firstIndexNotDivisibleBy32.exit.i, label %bb.ax

ZL_firstIndexNotDivisibleBy32.exit.i:             ; preds = %.lr.ph.i123.i, %ZL_getMultiplicativeInverse32.exit.i121.i
  %spec.select.i126.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i121.i ], [ %.02027.i.i, %.lr.ph.i123.i ] ; 2 uses
  %.not89.i = icmp eq i64 %spec.select.i126.i, %i.f
  br i1 %.not89.i, label %getDivisor.exit.thread, label %bb.ay, !prof !46

bb.ay:                                            ; preds = %ZL_firstIndexNotDivisibleBy32.exit.i
  %i.lw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.38, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 58, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i126.i, i64 noundef %i.f) #7 ; 2 uses
  %i.lx = extractvalue { i32, ptr } %i.lw, 0      ; 2 uses
  %i.ly = extractvalue { i32, ptr } %i.lw, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.lx, ptr %i.ly, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

bb.az:                                            ; preds = %.split.i
  %i.lz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.057, i1 true) ; 2 uses
  %i.ma = lshr exact i64 %.057, %i.lz             ; 4 uses
  %i.mb = icmp eq i64 %i.ma, 1
  br i1 %i.mb, label %ZL_getMultiplicativeInverse64.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mc = udiv i64 -1, %i.ma                      ; 2 uses
  %i.md = mul i64 %i.mc, %i.ma                    ; 2 uses
  %.not41.i.i128.i = icmp eq i64 %i.md, 0
  br i1 %.not41.i.i128.i, label %ZL_getMultiplicativeInverse64.exit.i.i, label %.lr.ph.preheader.i.i129.i

.lr.ph.preheader.i.i129.i:                        ; preds = %bb.ba
  %i.me = sub i64 0, %i.md
  br label %.lr.ph.i.i130.i

.lr.ph.i.i130.i:                                  ; preds = %.lr.ph.i.i130.i, %.lr.ph.preheader.i.i129.i
  %.046.i.i131.i = phi i64 [ %i.mi, %.lr.ph.i.i130.i ], [ %i.mc, %.lr.ph.preheader.i.i129.i ] ; 4 uses
  %.03545.i.i132.i = phi i64 [ %.046.i.i131.i, %.lr.ph.i.i130.i ], [ 1, %.lr.ph.preheader.i.i129.i ]
  %.03644.i.i133.i = phi i64 [ %i.mj, %.lr.ph.i.i130.i ], [ 1, %.lr.ph.preheader.i.i129.i ] ; 2 uses
  %.03743.i.i134.i = phi i64 [ %.03842.i.i135.i, %.lr.ph.i.i130.i ], [ %i.ma, %.lr.ph.preheader.i.i129.i ] ; 2 uses
  %.03842.i.i135.i = phi i64 [ %.recomposed305, %.lr.ph.i.i130.i ], [ %i.me, %.lr.ph.preheader.i.i129.i ] ; 4 uses
  %i.mf = udiv i64 %.03743.i.i134.i, %.03842.i.i135.i ; 2 uses
  %i.mg = mul nuw i64 %i.mf, %.03842.i.i135.i     ; 0 uses
  %.recomposed305 = urem i64 %.03743.i.i134.i, %.03842.i.i135.i ; 2 uses
  %i.mh = mul i64 %i.mf, %.046.i.i131.i
  %i.mi = add i64 %i.mh, %.03545.i.i132.i
  %i.mj = xor i64 %.03644.i.i133.i, 1
  %.not.i.i136.i = icmp eq i64 %.recomposed305, 0
  br i1 %.not.i.i136.i, label %._crit_edge.i.i137.i, label %.lr.ph.i.i130.i, !llvm.loop !31

._crit_edge.i.i137.i:                             ; preds = %.lr.ph.i.i130.i
  %i.mk = icmp eq i64 %.03644.i.i133.i, 1
  %i.ml = sub i64 0, %.046.i.i131.i
  %spec.select.i.i138.i = select i1 %i.mk, i64 %i.ml, i64 %.046.i.i131.i
  br label %ZL_getMultiplicativeInverse64.exit.i.i

ZL_getMultiplicativeInverse64.exit.i.i:           ; preds = %._crit_edge.i.i137.i, %bb.ba, %bb.az
  %.1.i.i139.i = phi i64 [ 1, %bb.az ], [ 1, %bb.ba ], [ %spec.select.i.i138.i, %._crit_edge.i.i137.i ]
  %.not2326.not.i140.i = icmp eq i64 %i.f, 0
  br i1 %.not2326.not.i140.i, label %ZL_firstIndexNotDivisibleBy64.exit.i, label %.lr.ph.i141.i

bb.bb:                                            ; preds = %.lr.ph.i141.i
  %i.mm = add nuw i64 %.02028.i142.i, 1           ; 2 uses
  %exitcond.not.i144.i = icmp eq i64 %i.mm, %i.f
  br i1 %exitcond.not.i144.i, label %getDivisor.exit.thread, label %.lr.ph.i141.i, !llvm.loop !32

.lr.ph.i141.i:                                    ; preds = %ZL_getMultiplicativeInverse64.exit.i.i, %bb.bb
  %.02028.i142.i = phi i64 [ %i.mm, %bb.bb ], [ 0, %ZL_getMultiplicativeInverse64.exit.i.i ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.02028.i142.i
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !20 ; 2 uses
  %i.mp = mul i64 %i.mo, %.1.i.i139.i
  %i.mq = lshr i64 %i.mp, %i.lz                   ; 2 uses
  %i.mr = mul i64 %i.mq, %.057
  %.not.i143.i = icmp ne i64 %i.mr, %i.mo
  %mul.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.057, i64 %i.mq)
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %.not34.i.i = or i1 %.not.i143.i, %mul.ov.i.i
  br i1 %.not34.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i, label %bb.bb

ZL_firstIndexNotDivisibleBy64.exit.i:             ; preds = %.lr.ph.i141.i, %ZL_getMultiplicativeInverse64.exit.i.i
  %spec.select.i145.i = phi i64 [ 0, %ZL_getMultiplicativeInverse64.exit.i.i ], [ %.02028.i142.i, %.lr.ph.i141.i ] ; 2 uses
  %.not.i = icmp eq i64 %spec.select.i145.i, %i.f
  br i1 %.not.i, label %getDivisor.exit.thread, label %bb.bc, !prof !46

bb.bc:                                            ; preds = %ZL_firstIndexNotDivisibleBy64.exit.i
  %i.ms = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.41, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 64, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i145.i, i64 noundef %i.f) #7 ; 2 uses
  %i.mt = extractvalue { i32, ptr } %i.ms, 0      ; 2 uses
  %i.mu = extractvalue { i32, ptr } %i.ms, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.mt, ptr %i.mu, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

getDivisor.exit.thread:                           ; preds = %bb.bb, %bb.ax, %bb.ar, %bb.al, %bb.aa, %ZL_firstIndexNotDivisibleBy64.exit.i.i, %bb.u, %ZL_firstIndexNotDivisibleBy32.exit.i.i, %bb.o, %ZL_firstIndexNotDivisibleBy16.exit.i.i, %bb.i, %ZL_firstIndexNotDivisibleBy8.exit.i.i, %bb.g, %bb.h, %.split.i.i, %ZL_firstIndexNotDivisibleBy8.exit.i, %ZL_firstIndexNotDivisibleBy16.exit.i, %ZL_firstIndexNotDivisibleBy32.exit.i, %ZL_firstIndexNotDivisibleBy64.exit.i, %bb.ag, %.split.i
  %.sroa.19.7.i.ph = phi i64 [ 1, %bb.i ], [ %.057, %.split.i ], [ %.057, %bb.ag ], [ 1, %bb.o ], [ %.4.i.i, %ZL_firstIndexNotDivisibleBy32.exit.i.i ], [ 1, %bb.u ], [ 1, %bb.aa ], [ %.2106.i.i, %ZL_firstIndexNotDivisibleBy16.exit.i.i ], [ %.057, %bb.ax ], [ %.057, %ZL_firstIndexNotDivisibleBy64.exit.i ], [ %.0104.i.i, %ZL_firstIndexNotDivisibleBy8.exit.i.i ], [ %.057, %bb.al ], [ %.057, %ZL_firstIndexNotDivisibleBy32.exit.i ], [ %.057, %bb.ar ], [ %.6.i.i, %ZL_firstIndexNotDivisibleBy64.exit.i.i ], [ %.057, %ZL_firstIndexNotDivisibleBy16.exit.i ], [ %.057, %ZL_firstIndexNotDivisibleBy8.exit.i ], [ 0, %.split.i.i ], [ 0, %bb.h ], [ 1, %bb.g ], [ %.057, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.be

getDivisor.exit:                                  ; preds = %bb.ai, %bb.am, %bb.ao, %bb.as, %bb.au, %bb.ay, %bb.bc
  %.sroa.079.7.i = phi i32 [ %i.mt, %bb.bc ], [ %i.lb, %bb.au ], [ %i.jr, %bb.am ], [ %i.il, %bb.ai ], [ %i.kx, %bb.as ], [ %i.jv, %bb.ao ], [ %i.lx, %bb.ay ] ; 2 uses
  %.sroa.19.7.i.in = phi ptr [ %i.mu, %bb.bc ], [ %i.lc, %bb.au ], [ %i.js, %bb.am ], [ %i.im, %bb.ai ], [ %i.ky, %bb.as ], [ %i.jw, %bb.ao ], [ %i.ly, %bb.ay ] ; 2 uses
  %.sroa.19.7.i = ptrtoint ptr %.sroa.19.7.i.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not65 = icmp eq i32 %.sroa.079.7.i, 0
  br i1 %.not65, label %bb.be, label %bb.bd, !prof !47

bb.bd:                                            ; preds = %getDivisor.exit
  %i.mv = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.079.7.i, ptr %.sroa.19.7.i.in, ptr nonnull @EI_divide_by_int.__zl_static_error_info.15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 101, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8) #7 ; 2 uses
  %i.mw = extractvalue { i32, ptr } %i.mv, 0
  %i.mx = extractvalue { i32, ptr } %i.mv, 1
  %i.my = ptrtoint ptr %i.mx to i64
  br label %bb.bg
end_hunk_0
