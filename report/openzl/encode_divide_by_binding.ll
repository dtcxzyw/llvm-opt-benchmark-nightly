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
    i64 1, label %.preheader231.i.i
    i64 2, label %.preheader233.i.i
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
  %exitcond245.not.i.i.a = icmp eq i64 %i.ag, %i.f
  br i1 %exitcond245.not.i.i.a, label %getDivisor.exit.thread, label %.preheader.i.i, !llvm.loop !21

.critedge.i.i:                                    ; preds = %.preheader.i.i
  %i.ah = zext i8 %i.ae to i64
  br label %ZL_gcdImpl.exit.i.i

ZL_gcdImpl.exit.i.i:                              ; preds = %ZL_gcdImpl.exit.i.i.backedge, %.critedge.i.i
  %.1109.in.i.i = phi i64 [ %.0108239.i.i, %.critedge.i.i ], [ %i.bj, %ZL_gcdImpl.exit.i.i.backedge ]
  %.0104.i.i = phi i64 [ %i.ah, %.critedge.i.i ], [ %.0104.i.i.be, %ZL_gcdImpl.exit.i.i.backedge ] ; 5 uses
  %.1109.i.i = add i64 %.1109.in.i.i, 1           ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1109.i.i
  %i.aj = sub i64 %i.f, %.1109.i.i                ; 3 uses
  %i.ak = udiv i64 255, %.0104.i.i
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = trunc nuw nsw i64 %.0104.i.i to i32     ; 2 uses
  %i.an = and i32 %i.am, 255                      ; 2 uses
  %i.ao = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.an, i1 true) ; 2 uses
  %i.ap = lshr exact i32 %i.an, %i.ao             ; 4 uses
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %ZL_getMultiplicativeInverse8.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %ZL_gcdImpl.exit.i.i
  %.rhs.trunc.i.i.i.i = trunc nuw i32 %i.ap to i8
  %i.ar = udiv i8 -1, %.rhs.trunc.i.i.i.i         ; 2 uses
  %.zext.i.i.i.i = zext i8 %i.ar to i32
  %i.as = mul nuw nsw i32 %i.ap, %.zext.i.i.i.i
  %i.at = sub nsw i32 0, %i.as                    ; 2 uses
  %i.au = and i32 %i.at, 255                      ; 2 uses
  %.not42.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not42.i.i.i.i, label %ZL_getMultiplicativeInverse8.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.0.in47.i.i.i.i = phi i32 [ %.038.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.au, %bb.j ] ; 2 uses
  %.0.in50.i.i.i.i = phi i8 [ %7, %.lr.ph.i.i.i.i ], [ %i.ar, %bb.j ] ; 4 uses
  %.03549.i.i.i.i = phi i8 [ %.0.in50.i.i.i.i, %.lr.ph.i.i.i.i ], [ 1, %bb.j ]
  %.03645.i.i.i.i = phi i32 [ %8, %.lr.ph.i.i.i.i ], [ 1, %bb.j ] ; 2 uses
  %.037.in44.i.i.i.i = phi i32 [ %.0.in47.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ap, %bb.j ] ; 2 uses
  %.03843.i.i.i.i = phi i32 [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.at, %bb.j ]
  %.lhs.trunc.i.i.i.i = trunc nuw i32 %.037.in44.i.i.i.i to i8
  %.rhs.trunc54.i.i.i.i = trunc i32 %.03843.i.i.i.i to i8
  %i.av = udiv i8 %.lhs.trunc.i.i.i.i, %.rhs.trunc54.i.i.i.i ; 2 uses
  %.zext55.i.i.i.i = zext i8 %i.av to i32
  %i.aw = mul nuw nsw i32 %.0.in47.i.i.i.i, %.zext55.i.i.i.i
  %i.ax = sub nsw i32 %.037.in44.i.i.i.i, %i.aw   ; 2 uses
  %6 = mul i8 %i.av, %.0.in50.i.i.i.i
  %7 = add i8 %6, %.03549.i.i.i.i
  %8 = xor i32 %.03645.i.i.i.i, 1
  %.038.i.i.i.i = and i32 %i.ax, 255              ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.038.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.ay = icmp eq i32 %.03645.i.i.i.i, 0
  %9 = sub i8 0, %.0.in50.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ay, i8 %.0.in50.i.i.i.i, i8 %9
  %10 = zext i8 %spec.select.i.i.i.i to i32
  br label %ZL_getMultiplicativeInverse8.exit.i.i.i

ZL_getMultiplicativeInverse8.exit.i.i.i:          ; preds = %._crit_edge.i.i.i.i, %bb.j, %ZL_gcdImpl.exit.i.i
  %.1.i.i.i.i = phi i32 [ 1, %ZL_gcdImpl.exit.i.i ], [ 1, %bb.j ], [ %10, %._crit_edge.i.i.i.i ]
  %.not2326.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not2326.not.i.i.i, label %ZL_firstIndexNotDivisibleBy8.exit.i.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.az = add nuw i64 %.02028.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %i.aj
  br i1 %exitcond.not.i.i.i, label %ZL_firstIndexNotDivisibleBy8.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !23

.lr.ph.i.i.i:                                     ; preds = %ZL_getMultiplicativeInverse8.exit.i.i.i, %bb.k
  %.02028.i.i.i = phi i64 [ %i.az, %bb.k ], [ 0, %ZL_getMultiplicativeInverse8.exit.i.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.02028.i.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !40  ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = mul nuw nsw i32 %.1.i.i.i.i, %i.bc
  %i.be = lshr i32 %i.bd, %i.ao                   ; 2 uses
  %i.bf = mul nuw nsw i32 %i.be, %i.am
  %i.bg = trunc i32 %i.bf to i8
  %.not.i.i.i = icmp eq i8 %i.bb, %i.bg
  %i.bh = and i32 %i.be, 255
  %i.bi = icmp samesign ule i32 %i.bh, %i.al
  %or.cond.not.i.i.i = select i1 %.not.i.i.i, i1 %i.bi, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.k, label %ZL_firstIndexNotDivisibleBy8.exit.i.i

ZL_firstIndexNotDivisibleBy8.exit.i.i:            ; preds = %.lr.ph.i.i.i, %bb.k, %ZL_getMultiplicativeInverse8.exit.i.i.i
  %spec.select.i.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse8.exit.i.i.i ], [ %.02028.i.i.i, %.lr.ph.i.i.i ], [ %i.aj, %bb.k ]
  %i.bj = add i64 %spec.select.i.i.i, %.1109.i.i  ; 3 uses
  %i.bk = icmp eq i64 %i.bj, %i.f
  br i1 %i.bk, label %getDivisor.exit.thread, label %bb.l

bb.l:                                             ; preds = %ZL_firstIndexNotDivisibleBy8.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !40  ; 2 uses
  %i.bn = zext i8 %i.bm to i64                    ; 2 uses
  %spec.select.i130.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 %.0104.i.i) ; 2 uses
  %spec.select44.i.i.i = call i64 @llvm.umin.i64(i64 %i.bn, i64 %.0104.i.i) ; 4 uses
  %i.bo = icmp eq i8 %i.bm, 0
  br i1 %i.bo, label %ZL_gcdImpl.exit.i.i.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = urem i64 %spec.select.i130.i.i, %spec.select44.i.i.i ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %ZL_gcdImpl.exit.i.i.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bp, i1 true) ; 2 uses
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i.i.i, i1 true) ; 2 uses
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = call i32 @llvm.umin.i32(i32 %i.bs, i32 %i.bu)
  %i.bw = lshr exact i64 %i.bp, %i.br             ; 3 uses
  %i.bx = lshr exact i64 %spec.select44.i.i.i, %i.bt ; 2 uses
  %.not45.i.i.i = icmp eq i64 %i.bw, %i.bx
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i131.i.i

.lr.ph.i131.i.i:                                  ; preds = %bb.n, %.lr.ph.i131.i.i
  %.147.i.i.i = phi i64 [ %i.cc, %.lr.ph.i131.i.i ], [ %i.bx, %bb.n ] ; 4 uses
  %.13846.i.i.i = phi i64 [ %.2.i.i.i, %.lr.ph.i131.i.i ], [ %i.bw, %bb.n ] ; 4 uses
  %i.by = icmp ult i64 %.13846.i.i.i, %.147.i.i.i
  %i.bz = sub nuw nsw i64 %.147.i.i.i, %.13846.i.i.i
  %i.ca = sub nuw nsw i64 %.13846.i.i.i, %.147.i.i.i
  %.2.i.i.i = call i64 @llvm.umin.i64(i64 %.13846.i.i.i, i64 %.147.i.i.i) ; 3 uses
  %.0.i.i.i = select i1 %i.by, i64 %i.bz, i64 %i.ca ; 2 uses
  %i.cb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i.i, i1 true)
  %i.cc = lshr exact i64 %.0.i.i.i, %i.cb         ; 2 uses
  %.not.i132.i.i = icmp eq i64 %.2.i.i.i, %i.cc
  br i1 %.not.i132.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i131.i.i, !llvm.loop !24

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i131.i.i, %bb.n
  %.138.lcssa.i.i.i = phi i64 [ %i.bw, %bb.n ], [ %.2.i.i.i, %.lr.ph.i131.i.i ]
  %i.cd = zext nneg i32 %i.bv to i64
  %i.ce = shl nuw nsw i64 %.138.lcssa.i.i.i, %i.cd
  br label %ZL_gcdImpl.exit.i.i.backedge

ZL_gcdImpl.exit.i.i.backedge:                     ; preds = %._crit_edge.i.i.i, %bb.m, %bb.l
  %.0104.i.i.be = phi i64 [ %i.ce, %._crit_edge.i.i.i ], [ %spec.select44.i.i.i, %bb.m ], [ %spec.select.i130.i.i, %bb.l ]
  br label %ZL_gcdImpl.exit.i.i

.preheader231.i.i:                                ; preds = %.split.i.i, %bb.o
  %.2110238.i.i = phi i64 [ %i.ci, %bb.o ], [ 0, %.split.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.2110238.i.i
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !43 ; 2 uses
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %.critedge5.i.i

bb.o:                                             ; preds = %.preheader231.i.i
  %i.ci = add nuw i64 %.2110238.i.i, 1            ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond244.not.i.i, label %getDivisor.exit.thread, label %.preheader231.i.i, !llvm.loop !25

.critedge5.i.i:                                   ; preds = %.preheader231.i.i
  %i.cj = zext i16 %i.cg to i64
  br label %ZL_gcdImpl.exit158.i.i

ZL_gcdImpl.exit158.i.i:                           ; preds = %ZL_gcdImpl.exit158.i.i.backedge, %.critedge5.i.i
  %.3111.in.i.i = phi i64 [ %.2110238.i.i, %.critedge5.i.i ], [ %i.dm, %ZL_gcdImpl.exit158.i.i.backedge ]
  %.2106.i.i = phi i64 [ %i.cj, %.critedge5.i.i ], [ %.2106.i.i.be, %ZL_gcdImpl.exit158.i.i.backedge ] ; 5 uses
  %.3111.i.i = add i64 %.3111.in.i.i, 1           ; 3 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.3111.i.i
  %i.cl = sub i64 %i.f, %.3111.i.i                ; 3 uses
  %i.cm = udiv i64 65535, %.2106.i.i
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = trunc nuw nsw i64 %.2106.i.i to i32     ; 3 uses
  %i.cp = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.co, i1 true) ; 2 uses
  %i.cq = lshr exact i32 %i.co, %i.cp             ; 4 uses
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %ZL_getMultiplicativeInverse32.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %ZL_gcdImpl.exit158.i.i
  %i.cs = udiv i32 -1, %i.cq                      ; 2 uses
  %i.ct = mul i32 %i.cs, %i.cq                    ; 2 uses
  %.not41.i.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not41.i.i.i.i, label %ZL_getMultiplicativeInverse32.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.p
  %i.cu = sub i32 0, %i.ct
  br label %.lr.ph.i.i133.i.i

.lr.ph.i.i133.i.i:                                ; preds = %.lr.ph.i.i133.i.i, %.lr.ph.preheader.i.i.i.i
  %.046.i.i.i.i = phi i32 [ %i.cy, %.lr.ph.i.i133.i.i ], [ %i.cs, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %.03545.i.i.i.i = phi i32 [ %.046.i.i.i.i, %.lr.ph.i.i133.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i ]
  %.03644.i.i.i.i = phi i32 [ %i.cz, %.lr.ph.i.i133.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.03743.i.i.i.i = phi i32 [ %.03842.i.i.i.i, %.lr.ph.i.i133.i.i ], [ %i.cq, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.03842.i.i.i.i = phi i32 [ %.recomposed, %.lr.ph.i.i133.i.i ], [ %i.cu, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.cv = udiv i32 %.03743.i.i.i.i, %.03842.i.i.i.i ; 2 uses
  %i.cw = mul nuw i32 %i.cv, %.03842.i.i.i.i      ; 0 uses
  %.recomposed = urem i32 %.03743.i.i.i.i, %.03842.i.i.i.i ; 2 uses
  %i.cx = mul i32 %i.cv, %.046.i.i.i.i
  %i.cy = add i32 %i.cx, %.03545.i.i.i.i
  %i.cz = xor i32 %.03644.i.i.i.i, 1
  %.not.i.i134.i.i = icmp eq i32 %.recomposed, 0
  br i1 %.not.i.i134.i.i, label %._crit_edge.i.i135.i.i, label %.lr.ph.i.i133.i.i, !llvm.loop !26

._crit_edge.i.i135.i.i:                           ; preds = %.lr.ph.i.i133.i.i
  %i.da = icmp eq i32 %.03644.i.i.i.i, 0
  %i.db = sub i32 0, %.046.i.i.i.i
  %spec.select.i.i136.i.i = select i1 %i.da, i32 %.046.i.i.i.i, i32 %i.db
  br label %ZL_getMultiplicativeInverse32.exit.i.i.i

ZL_getMultiplicativeInverse32.exit.i.i.i:         ; preds = %._crit_edge.i.i135.i.i, %bb.p, %ZL_gcdImpl.exit158.i.i
  %.1.i.i137.i.i = phi i32 [ 1, %ZL_gcdImpl.exit158.i.i ], [ 1, %bb.p ], [ %spec.select.i.i136.i.i, %._crit_edge.i.i135.i.i ]
  %.not2326.not.i138.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not2326.not.i138.i.i, label %ZL_firstIndexNotDivisibleBy16.exit.i.i, label %.lr.ph.i139.i.i

bb.q:                                             ; preds = %.lr.ph.i139.i.i
  %i.dc = add nuw i64 %.02028.i140.i.i, 1         ; 2 uses
  %exitcond.not.i145.i.i = icmp eq i64 %i.dc, %i.cl
  br i1 %exitcond.not.i145.i.i, label %ZL_firstIndexNotDivisibleBy16.exit.i.i, label %.lr.ph.i139.i.i, !llvm.loop !27

.lr.ph.i139.i.i:                                  ; preds = %ZL_getMultiplicativeInverse32.exit.i.i.i, %bb.q
  %.02028.i140.i.i = phi i64 [ %i.dc, %bb.q ], [ 0, %ZL_getMultiplicativeInverse32.exit.i.i.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %.02028.i140.i.i
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !43 ; 2 uses
  %i.df = zext i16 %i.de to i32
  %i.dg = mul i32 %.1.i.i137.i.i, %i.df
  %i.dh = lshr i32 %i.dg, %i.cp                   ; 2 uses
  %i.di = mul i32 %i.dh, %i.co
  %i.dj = trunc i32 %i.di to i16
  %.not.i141.i.i = icmp eq i16 %i.de, %i.dj
  %i.dk = and i32 %i.dh, 65535
  %i.dl = icmp samesign ule i32 %i.dk, %i.cn
  %or.cond.not.i142.i.i = select i1 %.not.i141.i.i, i1 %i.dl, i1 false
  br i1 %or.cond.not.i142.i.i, label %bb.q, label %ZL_firstIndexNotDivisibleBy16.exit.i.i

ZL_firstIndexNotDivisibleBy16.exit.i.i:           ; preds = %.lr.ph.i139.i.i, %bb.q, %ZL_getMultiplicativeInverse32.exit.i.i.i
  %spec.select.i144.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i.i.i ], [ %.02028.i140.i.i, %.lr.ph.i139.i.i ], [ %i.cl, %bb.q ]
  %i.dm = add i64 %spec.select.i144.i.i, %.3111.i.i ; 3 uses
  %i.dn = icmp eq i64 %i.dm, %i.f
  br i1 %i.dn, label %getDivisor.exit.thread, label %bb.r

bb.r:                                             ; preds = %ZL_firstIndexNotDivisibleBy16.exit.i.i
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dm
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !43 ; 2 uses
  %i.dq = zext i16 %i.dp to i64                   ; 2 uses
  %spec.select.i146.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 %.2106.i.i) ; 2 uses
  %spec.select44.i147.i.i = call i64 @llvm.umin.i64(i64 %i.dq, i64 %.2106.i.i) ; 4 uses
  %i.dr = icmp eq i16 %i.dp, 0
  br i1 %i.dr, label %ZL_gcdImpl.exit158.i.i.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = urem i64 %spec.select.i146.i.i, %spec.select44.i147.i.i ; 3 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %ZL_gcdImpl.exit158.i.i.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ds, i1 true) ; 2 uses
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i147.i.i, i1 true) ; 2 uses
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = call i32 @llvm.umin.i32(i32 %i.dv, i32 %i.dx)
  %i.dz = lshr exact i64 %i.ds, %i.du             ; 3 uses
  %i.ea = lshr exact i64 %spec.select44.i147.i.i, %i.dw ; 2 uses
  %.not45.i148.i.i = icmp eq i64 %i.dz, %i.ea
  br i1 %.not45.i148.i.i, label %._crit_edge.i155.i.i, label %.lr.ph.i149.i.i

.lr.ph.i149.i.i:                                  ; preds = %bb.t, %.lr.ph.i149.i.i
  %.147.i150.i.i = phi i64 [ %i.ef, %.lr.ph.i149.i.i ], [ %i.ea, %bb.t ] ; 4 uses
  %.13846.i151.i.i = phi i64 [ %.2.i152.i.i, %.lr.ph.i149.i.i ], [ %i.dz, %bb.t ] ; 4 uses
  %i.eb = icmp ult i64 %.13846.i151.i.i, %.147.i150.i.i
  %i.ec = sub nuw nsw i64 %.147.i150.i.i, %.13846.i151.i.i
  %i.ed = sub nuw nsw i64 %.13846.i151.i.i, %.147.i150.i.i
  %.2.i152.i.i = call i64 @llvm.umin.i64(i64 %.13846.i151.i.i, i64 %.147.i150.i.i) ; 3 uses
  %.0.i153.i.i = select i1 %i.eb, i64 %i.ec, i64 %i.ed ; 2 uses
  %i.ee = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i153.i.i, i1 true)
  %i.ef = lshr exact i64 %.0.i153.i.i, %i.ee      ; 2 uses
  %.not.i154.i.i = icmp eq i64 %.2.i152.i.i, %i.ef
  br i1 %.not.i154.i.i, label %._crit_edge.i155.i.i, label %.lr.ph.i149.i.i, !llvm.loop !24

._crit_edge.i155.i.i:                             ; preds = %.lr.ph.i149.i.i, %bb.t
  %.138.lcssa.i156.i.i = phi i64 [ %i.dz, %bb.t ], [ %.2.i152.i.i, %.lr.ph.i149.i.i ]
  %i.eg = zext nneg i32 %i.dy to i64
  %i.eh = shl nuw nsw i64 %.138.lcssa.i156.i.i, %i.eg
  br label %ZL_gcdImpl.exit158.i.i.backedge

ZL_gcdImpl.exit158.i.i.backedge:                  ; preds = %._crit_edge.i155.i.i, %bb.s, %bb.r
  %.2106.i.i.be = phi i64 [ %i.eh, %._crit_edge.i155.i.i ], [ %spec.select44.i147.i.i, %bb.s ], [ %spec.select.i146.i.i, %bb.r ]
  br label %ZL_gcdImpl.exit158.i.i

.preheader233.i.i:                                ; preds = %.split.i.i, %bb.u
  %.4112237.i.i = phi i64 [ %i.el, %bb.u ], [ 0, %.split.i.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.4112237.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !44 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.u, label %.critedge7.i.i

bb.u:                                             ; preds = %.preheader233.i.i
  %i.el = add nuw i64 %.4112237.i.i, 1            ; 2 uses
  %exitcond243.not.i.i = icmp eq i64 %i.el, %i.f
  br i1 %exitcond243.not.i.i, label %getDivisor.exit.thread, label %.preheader233.i.i, !llvm.loop !28

.critedge7.i.i:                                   ; preds = %.preheader233.i.i
  %i.em = zext i32 %i.ej to i64
  br label %ZL_gcdImpl.exit190.i.i

ZL_gcdImpl.exit190.i.i:                           ; preds = %ZL_gcdImpl.exit190.i.i.backedge, %.critedge7.i.i
  %.5113.in.i.i = phi i64 [ %.4112237.i.i, %.critedge7.i.i ], [ %i.fm, %ZL_gcdImpl.exit190.i.i.backedge ]
  %.4.i.i = phi i64 [ %i.em, %.critedge7.i.i ], [ %.4.i.i.be, %ZL_gcdImpl.exit190.i.i.backedge ] ; 5 uses
  %.5113.i.i = add i64 %.5113.in.i.i, 1           ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.5113.i.i
  %i.eo = sub i64 %i.f, %.5113.i.i                ; 3 uses
  %i.ep = udiv i64 4294967295, %.4.i.i
  %i.eq = trunc nuw i64 %i.ep to i32
  %i.er = trunc i64 %.4.i.i to i32                ; 3 uses
  %i.es = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.er, i1 true) ; 2 uses
  %i.et = lshr exact i32 %i.er, %i.es             ; 4 uses
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %ZL_getMultiplicativeInverse32.exit.i170.i.i, label %bb.v

bb.v:                                             ; preds = %ZL_gcdImpl.exit190.i.i
  %i.ev = udiv i32 -1, %i.et                      ; 2 uses
  %i.ew = mul i32 %i.ev, %i.et                    ; 2 uses
  %.not41.i.i159.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not41.i.i159.i.i, label %ZL_getMultiplicativeInverse32.exit.i170.i.i, label %.lr.ph.preheader.i.i160.i.i

.lr.ph.preheader.i.i160.i.i:                      ; preds = %bb.v
  %i.ex = sub i32 0, %i.ew
  br label %.lr.ph.i.i161.i.i

.lr.ph.i.i161.i.i:                                ; preds = %.lr.ph.i.i161.i.i, %.lr.ph.preheader.i.i160.i.i
  %.046.i.i162.i.i = phi i32 [ %i.fb, %.lr.ph.i.i161.i.i ], [ %i.ev, %.lr.ph.preheader.i.i160.i.i ] ; 4 uses
  %.03545.i.i163.i.i = phi i32 [ %.046.i.i162.i.i, %.lr.ph.i.i161.i.i ], [ 1, %.lr.ph.preheader.i.i160.i.i ]
  %.03644.i.i164.i.i = phi i32 [ %i.fc, %.lr.ph.i.i161.i.i ], [ 1, %.lr.ph.preheader.i.i160.i.i ] ; 2 uses
  %.03743.i.i165.i.i = phi i32 [ %.03842.i.i166.i.i, %.lr.ph.i.i161.i.i ], [ %i.et, %.lr.ph.preheader.i.i160.i.i ] ; 2 uses
  %.03842.i.i166.i.i = phi i32 [ %.recomposed301.a, %.lr.ph.i.i161.i.i ], [ %i.ex, %.lr.ph.preheader.i.i160.i.i ] ; 4 uses
  %i.ey = udiv i32 %.03743.i.i165.i.i, %.03842.i.i166.i.i ; 2 uses
  %i.ez = mul nuw i32 %i.ey, %.03842.i.i166.i.i   ; 0 uses
  %.recomposed301.a = urem i32 %.03743.i.i165.i.i, %.03842.i.i166.i.i ; 2 uses
  %i.fa = mul i32 %i.ey, %.046.i.i162.i.i
  %i.fb = add i32 %i.fa, %.03545.i.i163.i.i
  %i.fc = xor i32 %.03644.i.i164.i.i, 1
  %.not.i.i167.i.i = icmp eq i32 %.recomposed301.a, 0
  br i1 %.not.i.i167.i.i, label %._crit_edge.i.i168.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !26

._crit_edge.i.i168.i.i:                           ; preds = %.lr.ph.i.i161.i.i
  %i.fd = icmp eq i32 %.03644.i.i164.i.i, 0
  %i.fe = sub i32 0, %.046.i.i162.i.i
  %spec.select.i.i169.i.i = select i1 %i.fd, i32 %.046.i.i162.i.i, i32 %i.fe
  br label %ZL_getMultiplicativeInverse32.exit.i170.i.i

ZL_getMultiplicativeInverse32.exit.i170.i.i:      ; preds = %._crit_edge.i.i168.i.i, %bb.v, %ZL_gcdImpl.exit190.i.i
  %.1.i.i171.i.i = phi i32 [ 1, %ZL_gcdImpl.exit190.i.i ], [ 1, %bb.v ], [ %spec.select.i.i169.i.i, %._crit_edge.i.i168.i.i ]
  %.not2325.not.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not2325.not.i.i.i, label %ZL_firstIndexNotDivisibleBy32.exit.i.i, label %.lr.ph.i172.i.i

bb.w:                                             ; preds = %.lr.ph.i172.i.i
  %i.ff = add nuw i64 %.02027.i.i.i, 1            ; 2 uses
  %exitcond.not.i177.i.i = icmp eq i64 %i.ff, %i.eo
  br i1 %exitcond.not.i177.i.i, label %ZL_firstIndexNotDivisibleBy32.exit.i.i, label %.lr.ph.i172.i.i, !llvm.loop !29

.lr.ph.i172.i.i:                                  ; preds = %ZL_getMultiplicativeInverse32.exit.i170.i.i, %bb.w
  %.02027.i.i.i = phi i64 [ %i.ff, %bb.w ], [ 0, %ZL_getMultiplicativeInverse32.exit.i170.i.i ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.02027.i.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !44 ; 2 uses
  %i.fi = mul i32 %i.fh, %.1.i.i171.i.i
  %i.fj = lshr i32 %i.fi, %i.es                   ; 2 uses
  %i.fk = mul i32 %i.fj, %i.er
  %.not.i173.i.i = icmp eq i32 %i.fk, %i.fh
  %i.fl = icmp ule i32 %i.fj, %i.eq
  %or.cond.not.i174.i.i = select i1 %.not.i173.i.i, i1 %i.fl, i1 false
  br i1 %or.cond.not.i174.i.i, label %bb.w, label %ZL_firstIndexNotDivisibleBy32.exit.i.i

ZL_firstIndexNotDivisibleBy32.exit.i.i:           ; preds = %.lr.ph.i172.i.i, %bb.w, %ZL_getMultiplicativeInverse32.exit.i170.i.i
  %spec.select.i176.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i170.i.i ], [ %.02027.i.i.i, %.lr.ph.i172.i.i ], [ %i.eo, %bb.w ]
  %i.fm = add i64 %spec.select.i176.i.i, %.5113.i.i ; 3 uses
  %i.fn = icmp eq i64 %i.fm, %i.f
  br i1 %i.fn, label %getDivisor.exit.thread, label %bb.x

bb.x:                                             ; preds = %ZL_firstIndexNotDivisibleBy32.exit.i.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.fm
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !44 ; 2 uses
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %spec.select.i178.i.i = call i64 @llvm.umax.i64(i64 %i.fq, i64 %.4.i.i) ; 2 uses
  %spec.select44.i179.i.i = call i64 @llvm.umin.i64(i64 %i.fq, i64 %.4.i.i) ; 4 uses
  %i.fr = icmp eq i32 %i.fp, 0
  br i1 %i.fr, label %ZL_gcdImpl.exit190.i.i.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = urem i64 %spec.select.i178.i.i, %spec.select44.i179.i.i ; 3 uses
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %ZL_gcdImpl.exit190.i.i.backedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fs, i1 true) ; 2 uses
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i179.i.i, i1 true) ; 2 uses
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = call i32 @llvm.umin.i32(i32 %i.fv, i32 %i.fx)
  %i.fz = lshr exact i64 %i.fs, %i.fu             ; 3 uses
  %i.ga = lshr exact i64 %spec.select44.i179.i.i, %i.fw ; 2 uses
  %.not45.i180.i.i = icmp eq i64 %i.fz, %i.ga
  br i1 %.not45.i180.i.i, label %._crit_edge.i187.i.i, label %.lr.ph.i181.i.i

.lr.ph.i181.i.i:                                  ; preds = %bb.z, %.lr.ph.i181.i.i
  %.147.i182.i.i = phi i64 [ %i.gf, %.lr.ph.i181.i.i ], [ %i.ga, %bb.z ] ; 4 uses
  %.13846.i183.i.i = phi i64 [ %.2.i184.i.i, %.lr.ph.i181.i.i ], [ %i.fz, %bb.z ] ; 4 uses
  %i.gb = icmp ult i64 %.13846.i183.i.i, %.147.i182.i.i
  %i.gc = sub nuw nsw i64 %.147.i182.i.i, %.13846.i183.i.i
  %i.gd = sub nuw nsw i64 %.13846.i183.i.i, %.147.i182.i.i
  %.2.i184.i.i = call i64 @llvm.umin.i64(i64 %.13846.i183.i.i, i64 %.147.i182.i.i) ; 3 uses
  %.0.i185.i.i = select i1 %i.gb, i64 %i.gc, i64 %i.gd ; 2 uses
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i185.i.i, i1 true)
  %i.gf = lshr exact i64 %.0.i185.i.i, %i.ge      ; 2 uses
  %.not.i186.i.i = icmp eq i64 %.2.i184.i.i, %i.gf
  br i1 %.not.i186.i.i, label %._crit_edge.i187.i.i, label %.lr.ph.i181.i.i, !llvm.loop !24

._crit_edge.i187.i.i:                             ; preds = %.lr.ph.i181.i.i, %bb.z
  %.138.lcssa.i188.i.i = phi i64 [ %i.fz, %bb.z ], [ %.2.i184.i.i, %.lr.ph.i181.i.i ]
  %i.gg = zext nneg i32 %i.fy to i64
  %i.gh = shl nuw nsw i64 %.138.lcssa.i188.i.i, %i.gg
  br label %ZL_gcdImpl.exit190.i.i.backedge

ZL_gcdImpl.exit190.i.i.backedge:                  ; preds = %._crit_edge.i187.i.i, %bb.y, %bb.x
  %.4.i.i.be = phi i64 [ %i.gh, %._crit_edge.i187.i.i ], [ %spec.select44.i179.i.i, %bb.y ], [ %spec.select.i178.i.i, %bb.x ]
  br label %ZL_gcdImpl.exit190.i.i

.preheader235.i.i:                                ; preds = %.split.i.i, %bb.aa
  %.6114236.i.i = phi i64 [ %i.gl, %bb.aa ], [ 0, %.split.i.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.6114236.i.i
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !20 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.aa, label %.preheader.i

bb.aa:                                            ; preds = %.preheader235.i.i
  %i.gl = add nuw i64 %.6114236.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gl, %i.f
  br i1 %exitcond.not.i.i, label %getDivisor.exit.thread, label %.preheader235.i.i, !llvm.loop !30

.preheader.i:                                     ; preds = %.preheader235.i.i, %.preheader.i.backedge
  %.7115.in.i.i = phi i64 [ %i.hh, %.preheader.i.backedge ], [ %.6114236.i.i, %.preheader235.i.i ]
  %.6.i.i = phi i64 [ %.6.i.i.be, %.preheader.i.backedge ], [ %i.gj, %.preheader235.i.i ] ; 7 uses
  %.7115.i.i = add i64 %.7115.in.i.i, 1           ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.7115.i.i
  %i.gn = sub i64 %i.f, %.7115.i.i                ; 3 uses
  %i.go = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.6.i.i, i1 true) ; 2 uses
  %i.gp = lshr exact i64 %.6.i.i, %i.go           ; 4 uses
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %ZL_getMultiplicativeInverse64.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i
  %i.gr = udiv i64 -1, %i.gp                      ; 2 uses
  %i.gs = mul i64 %i.gr, %i.gp                    ; 2 uses
  %.not41.i.i191.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not41.i.i191.i.i, label %ZL_getMultiplicativeInverse64.exit.i.i.i, label %.lr.ph.preheader.i.i192.i.i

.lr.ph.preheader.i.i192.i.i:                      ; preds = %bb.ab
  %i.gt = sub i64 0, %i.gs
  br label %.lr.ph.i.i193.i.i

.lr.ph.i.i193.i.i:                                ; preds = %.lr.ph.i.i193.i.i, %.lr.ph.preheader.i.i192.i.i
  %.046.i.i194.i.i = phi i64 [ %i.gx, %.lr.ph.i.i193.i.i ], [ %i.gr, %.lr.ph.preheader.i.i192.i.i ] ; 4 uses
  %.03545.i.i195.i.i = phi i64 [ %.046.i.i194.i.i, %.lr.ph.i.i193.i.i ], [ 1, %.lr.ph.preheader.i.i192.i.i ]
  %.03644.i.i196.i.i = phi i64 [ %i.gy, %.lr.ph.i.i193.i.i ], [ 1, %.lr.ph.preheader.i.i192.i.i ] ; 2 uses
  %.03743.i.i197.i.i = phi i64 [ %.03842.i.i198.i.i, %.lr.ph.i.i193.i.i ], [ %i.gp, %.lr.ph.preheader.i.i192.i.i ] ; 2 uses
  %.03842.i.i198.i.i = phi i64 [ %.recomposed302.a, %.lr.ph.i.i193.i.i ], [ %i.gt, %.lr.ph.preheader.i.i192.i.i ] ; 4 uses
  %i.gu = udiv i64 %.03743.i.i197.i.i, %.03842.i.i198.i.i ; 2 uses
  %i.gv = mul nuw i64 %i.gu, %.03842.i.i198.i.i   ; 0 uses
  %.recomposed302.a = urem i64 %.03743.i.i197.i.i, %.03842.i.i198.i.i ; 2 uses
  %i.gw = mul i64 %i.gu, %.046.i.i194.i.i
  %i.gx = add i64 %i.gw, %.03545.i.i195.i.i
  %i.gy = xor i64 %.03644.i.i196.i.i, 1
  %.not.i.i199.i.i = icmp eq i64 %.recomposed302.a, 0
  br i1 %.not.i.i199.i.i, label %._crit_edge.i.i200.i.i, label %.lr.ph.i.i193.i.i, !llvm.loop !31

._crit_edge.i.i200.i.i:                           ; preds = %.lr.ph.i.i193.i.i
  %i.gz = icmp eq i64 %.03644.i.i196.i.i, 0
  %i.ha = sub i64 0, %.046.i.i194.i.i
  %spec.select.i.i201.i.i = select i1 %i.gz, i64 %.046.i.i194.i.i, i64 %i.ha
  br label %ZL_getMultiplicativeInverse64.exit.i.i.i

ZL_getMultiplicativeInverse64.exit.i.i.i:         ; preds = %._crit_edge.i.i200.i.i, %bb.ab, %.preheader.i
  %.1.i.i202.i.i = phi i64 [ 1, %.preheader.i ], [ 1, %bb.ab ], [ %spec.select.i.i201.i.i, %._crit_edge.i.i200.i.i ]
  %.not2326.not.i203.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not2326.not.i203.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %.lr.ph.i204.i.i

bb.ac:                                            ; preds = %.lr.ph.i204.i.i
  %i.hb = add nuw i64 %.02028.i205.i.i, 1         ; 2 uses
  %exitcond.not.i207.i.i = icmp eq i64 %i.hb, %i.gn
  br i1 %exitcond.not.i207.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %.lr.ph.i204.i.i, !llvm.loop !32

.lr.ph.i204.i.i:                                  ; preds = %ZL_getMultiplicativeInverse64.exit.i.i.i, %bb.ac
  %.02028.i205.i.i = phi i64 [ %i.hb, %bb.ac ], [ 0, %ZL_getMultiplicativeInverse64.exit.i.i.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.02028.i205.i.i
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !20 ; 2 uses
  %i.he = mul i64 %i.hd, %.1.i.i202.i.i
  %i.hf = lshr i64 %i.he, %i.go                   ; 2 uses
  %i.hg = mul i64 %i.hf, %.6.i.i
  %.not.i206.i.i = icmp ne i64 %i.hg, %i.hd
  %mul.i.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.6.i.i, i64 %i.hf)
  %mul.ov.i.i.i = extractvalue { i64, i1 } %mul.i.i.i, 1
  %.not34.i.i.i = or i1 %.not.i206.i.i, %mul.ov.i.i.i
  br i1 %.not34.i.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %bb.ac

ZL_firstIndexNotDivisibleBy64.exit.i.i:           ; preds = %.lr.ph.i204.i.i, %bb.ac, %ZL_getMultiplicativeInverse64.exit.i.i.i
  %spec.select.i209.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse64.exit.i.i.i ], [ %.02028.i205.i.i, %.lr.ph.i204.i.i ], [ %i.gn, %bb.ac ]
  %i.hh = add i64 %spec.select.i209.i.i, %.7115.i.i ; 3 uses
  %i.hi = icmp eq i64 %i.hh, %i.f
  br i1 %i.hi, label %getDivisor.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %ZL_firstIndexNotDivisibleBy64.exit.i.i
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.hh
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !20 ; 2 uses
  %spec.select.i210.i.i = call i64 @llvm.umax.i64(i64 %i.hk, i64 %.6.i.i) ; 2 uses
  %spec.select44.i211.i.i = call i64 @llvm.umin.i64(i64 %i.hk, i64 %.6.i.i) ; 5 uses
  %i.hl = icmp eq i64 %spec.select44.i211.i.i, 0
  br i1 %i.hl, label %.preheader.i.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hm = urem i64 %spec.select.i210.i.i, %spec.select44.i211.i.i ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %.preheader.i.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ho = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hm, i1 true) ; 2 uses
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i211.i.i, i1 true) ; 2 uses
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %i.hs = call i32 @llvm.umin.i32(i32 %i.hp, i32 %i.hr)
  %i.ht = lshr exact i64 %i.hm, %i.ho             ; 3 uses
  %i.hu = lshr exact i64 %spec.select44.i211.i.i, %i.hq ; 2 uses
  %.not45.i212.i.i = icmp eq i64 %i.ht, %i.hu
  br i1 %.not45.i212.i.i, label %._crit_edge.i219.i.i, label %.lr.ph.i213.i.i

.lr.ph.i213.i.i:                                  ; preds = %bb.af, %.lr.ph.i213.i.i
  %.147.i214.i.i = phi i64 [ %i.hz, %.lr.ph.i213.i.i ], [ %i.hu, %bb.af ] ; 4 uses
  %.13846.i215.i.i = phi i64 [ %.2.i216.i.i, %.lr.ph.i213.i.i ], [ %i.ht, %bb.af ] ; 4 uses
  %i.hv = icmp ult i64 %.13846.i215.i.i, %.147.i214.i.i
  %i.hw = sub nuw i64 %.147.i214.i.i, %.13846.i215.i.i
  %i.hx = sub nuw i64 %.13846.i215.i.i, %.147.i214.i.i
  %.2.i216.i.i = call i64 @llvm.umin.i64(i64 %.13846.i215.i.i, i64 %.147.i214.i.i) ; 3 uses
  %.0.i217.i.i = select i1 %i.hv, i64 %i.hw, i64 %i.hx ; 2 uses
  %i.hy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i217.i.i, i1 true)
  %i.hz = lshr exact i64 %.0.i217.i.i, %i.hy      ; 2 uses
  %.not.i218.i.i = icmp eq i64 %.2.i216.i.i, %i.hz
  br i1 %.not.i218.i.i, label %._crit_edge.i219.i.i, label %.lr.ph.i213.i.i, !llvm.loop !24

._crit_edge.i219.i.i:                             ; preds = %.lr.ph.i213.i.i, %bb.af
  %.138.lcssa.i220.i.i = phi i64 [ %i.ht, %bb.af ], [ %.2.i216.i.i, %.lr.ph.i213.i.i ]
  %i.ia = zext nneg i32 %i.hs to i64
  %i.ib = shl i64 %.138.lcssa.i220.i.i, %i.ia
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %._crit_edge.i219.i.i, %bb.ae, %bb.ad
  %.6.i.i.be = phi i64 [ %spec.select.i210.i.i, %bb.ad ], [ %i.ib, %._crit_edge.i219.i.i ], [ %spec.select44.i211.i.i, %bb.ae ]
  br label %.preheader.i

bb.ag:                                            ; preds = %bb.f
  %i.ic = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.e)
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %.split.i, label %getDivisor.exit.thread

.split.i:                                         ; preds = %bb.ag
  %i.ie = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true)
  switch i64 %i.ie, label %getDivisor.exit.thread [
    i64 0, label %bb.ah
    i64 1, label %bb.an
    i64 2, label %bb.at
    i64 3, label %bb.az
  ]

bb.ah:                                            ; preds = %.split.i
  %i.if = icmp ult i64 %.057, 256
  br i1 %i.if, label %bb.aj, label %bb.ai, !prof !39

bb.ai:                                            ; preds = %bb.ah
  %i.ig = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 35, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %.057, i64 noundef 255) #7 ; 2 uses
  %i.ih = extractvalue { i32, ptr } %i.ig, 0      ; 2 uses
  %i.ii = extractvalue { i32, ptr } %i.ig, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ih, ptr %i.ii, ptr noundef nonnull @.str.24) #7
  br label %getDivisor.exit

bb.aj:                                            ; preds = %bb.ah
  %.rhs.trunc.i = trunc nuw i64 %.057 to i8
  %i.ij = udiv i8 -1, %.rhs.trunc.i
  %i.ik = zext i8 %i.ij to i32
  %i.il = trunc nuw nsw i64 %.057 to i32          ; 3 uses
  %i.im = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.il, i1 true) ; 2 uses
  %i.in = lshr exact i32 %i.il, %i.im             ; 4 uses
  %i.io = icmp eq i32 %i.in, 1
  br i1 %i.io, label %ZL_getMultiplicativeInverse8.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.rhs.trunc.i.i.i = trunc nuw i32 %i.in to i8
  %i.ip = udiv i8 -1, %.rhs.trunc.i.i.i           ; 2 uses
  %.zext.i.i.i = zext i8 %i.ip to i32
  %i.iq = mul nuw nsw i32 %i.in, %.zext.i.i.i
  %i.ir = sub nsw i32 0, %i.iq                    ; 2 uses
  %i.is = and i32 %i.ir, 255                      ; 2 uses
  %.not42.i.i.i = icmp eq i32 %i.is, 0
  br i1 %.not42.i.i.i, label %ZL_getMultiplicativeInverse8.exit.i.i, label %.lr.ph.i.i92.i

.lr.ph.i.i92.i:                                   ; preds = %bb.ak, %.lr.ph.i.i92.i
  %.0.in47.i.i.i = phi i32 [ %.038.i.i.i, %.lr.ph.i.i92.i ], [ %i.is, %bb.ak ] ; 2 uses
  %.0.in50.i.i.i = phi i8 [ %12, %.lr.ph.i.i92.i ], [ %i.ip, %bb.ak ] ; 4 uses
  %.03549.i.i.i = phi i8 [ %.0.in50.i.i.i, %.lr.ph.i.i92.i ], [ 1, %bb.ak ]
  %.03645.i.i.i = phi i32 [ %13, %.lr.ph.i.i92.i ], [ 1, %bb.ak ] ; 2 uses
  %.037.in44.i.i.i = phi i32 [ %.0.in47.i.i.i, %.lr.ph.i.i92.i ], [ %i.in, %bb.ak ] ; 2 uses
  %.03843.i.i.i = phi i32 [ %i.iv, %.lr.ph.i.i92.i ], [ %i.ir, %bb.ak ]
  %.lhs.trunc.i.i.i = trunc nuw i32 %.037.in44.i.i.i to i8
  %.rhs.trunc54.i.i.i = trunc i32 %.03843.i.i.i to i8
  %i.it = udiv i8 %.lhs.trunc.i.i.i, %.rhs.trunc54.i.i.i ; 2 uses
  %.zext55.i.i.i = zext i8 %i.it to i32
  %i.iu = mul nuw nsw i32 %.0.in47.i.i.i, %.zext55.i.i.i
  %i.iv = sub nsw i32 %.037.in44.i.i.i, %i.iu     ; 2 uses
  %11 = mul i8 %i.it, %.0.in50.i.i.i
  %12 = add i8 %11, %.03549.i.i.i
  %13 = xor i32 %.03645.i.i.i, 1
  %.038.i.i.i = and i32 %i.iv, 255                ; 2 uses
  %.not.i.i93.i = icmp eq i32 %.038.i.i.i, 0
  br i1 %.not.i.i93.i, label %._crit_edge.i.i94.i, label %.lr.ph.i.i92.i, !llvm.loop !22

._crit_edge.i.i94.i:                              ; preds = %.lr.ph.i.i92.i
  %i.iw = icmp eq i32 %.03645.i.i.i, 0
  %14 = sub i8 0, %.0.in50.i.i.i
  %spec.select.i.i96.i = select i1 %i.iw, i8 %.0.in50.i.i.i, i8 %14
  %15 = zext i8 %spec.select.i.i96.i to i32
  br label %ZL_getMultiplicativeInverse8.exit.i.i

ZL_getMultiplicativeInverse8.exit.i.i:            ; preds = %._crit_edge.i.i94.i, %bb.ak, %bb.aj
  %.1.i.i.i = phi i32 [ 1, %bb.aj ], [ 1, %bb.ak ], [ %15, %._crit_edge.i.i94.i ]
  %.not2326.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not2326.not.i.i, label %ZL_firstIndexNotDivisibleBy8.exit.i, label %.lr.ph.i.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.ix = add nuw i64 %.02028.i.i, 1              ; 2 uses
  %exitcond.not.i97.i = icmp eq i64 %i.ix, %i.f
  br i1 %exitcond.not.i97.i, label %getDivisor.exit.thread, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.i.i:                                       ; preds = %ZL_getMultiplicativeInverse8.exit.i.i, %bb.al
  %.02028.i.i = phi i64 [ %i.ix, %bb.al ], [ 0, %ZL_getMultiplicativeInverse8.exit.i.i ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.l, i64 %.02028.i.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !40  ; 2 uses
  %i.ja = zext i8 %i.iz to i32
  %i.jb = mul nuw nsw i32 %.1.i.i.i, %i.ja
  %i.jc = lshr i32 %i.jb, %i.im                   ; 2 uses
  %i.jd = mul nuw nsw i32 %i.jc, %i.il
  %i.je = trunc i32 %i.jd to i8
  %.not.i96.i = icmp eq i8 %i.iz, %i.je
  %i.jf = and i32 %i.jc, 255
  %i.jg = icmp samesign ule i32 %i.jf, %i.ik
  %or.cond.not.i.i = select i1 %.not.i96.i, i1 %i.jg, i1 false
  br i1 %or.cond.not.i.i, label %bb.al, label %ZL_firstIndexNotDivisibleBy8.exit.i

ZL_firstIndexNotDivisibleBy8.exit.i:              ; preds = %.lr.ph.i.i, %ZL_getMultiplicativeInverse8.exit.i.i
  %spec.select.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse8.exit.i.i ], [ %.02028.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not91.i = icmp eq i64 %spec.select.i.i, %i.f
  br i1 %.not91.i, label %getDivisor.exit.thread, label %bb.am, !prof !45

bb.am:                                            ; preds = %ZL_firstIndexNotDivisibleBy8.exit.i
  %i.jh = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.25, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 39, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i.i, i64 noundef %i.f) #7 ; 2 uses
  %i.ji = extractvalue { i32, ptr } %i.jh, 0      ; 2 uses
  %i.jj = extractvalue { i32, ptr } %i.jh, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ji, ptr %i.jj, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

bb.an:                                            ; preds = %.split.i
  %i.jk = icmp ult i64 %.057, 65536
  br i1 %i.jk, label %bb.ap, label %bb.ao, !prof !39

bb.ao:                                            ; preds = %bb.an
  %i.jl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.29, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 46, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.31, i64 noundef %.057, i64 noundef 65535) #7 ; 2 uses
  %i.jm = extractvalue { i32, ptr } %i.jl, 0      ; 2 uses
  %i.jn = extractvalue { i32, ptr } %i.jl, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.jm, ptr %i.jn, ptr noundef nonnull @.str.24) #7
  br label %getDivisor.exit

bb.ap:                                            ; preds = %bb.an
  %.rhs.trunc190.i = trunc nuw i64 %.057 to i16
  %i.jo = udiv i16 -1, %.rhs.trunc190.i
  %i.jp = zext i16 %i.jo to i32
  %i.jq = trunc nuw nsw i64 %.057 to i32          ; 3 uses
  %i.jr = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.jq, i1 true) ; 2 uses
  %i.js = lshr exact i32 %i.jq, %i.jr             ; 4 uses
  %i.jt = icmp eq i32 %i.js, 1
  br i1 %i.jt, label %ZL_getMultiplicativeInverse32.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ju = udiv i32 -1, %i.js                      ; 2 uses
  %i.jv = mul i32 %i.ju, %i.js                    ; 2 uses
  %.not41.i.i.i = icmp eq i32 %i.jv, 0
  br i1 %.not41.i.i.i, label %ZL_getMultiplicativeInverse32.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aq
  %i.jw = sub i32 0, %i.jv
  br label %.lr.ph.i.i98.i

.lr.ph.i.i98.i:                                   ; preds = %.lr.ph.i.i98.i, %.lr.ph.preheader.i.i.i
  %.046.i.i.i = phi i32 [ %i.ka, %.lr.ph.i.i98.i ], [ %i.ju, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.03545.i.i.i = phi i32 [ %.046.i.i.i, %.lr.ph.i.i98.i ], [ 1, %.lr.ph.preheader.i.i.i ]
  %.03644.i.i.i = phi i32 [ %i.kb, %.lr.ph.i.i98.i ], [ 1, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.03743.i.i.i = phi i32 [ %.03842.i.i.i, %.lr.ph.i.i98.i ], [ %i.js, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.03842.i.i.i = phi i32 [ %.recomposed303.a, %.lr.ph.i.i98.i ], [ %i.jw, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.jx = udiv i32 %.03743.i.i.i, %.03842.i.i.i   ; 2 uses
  %i.jy = mul nuw i32 %i.jx, %.03842.i.i.i        ; 0 uses
  %.recomposed303.a = urem i32 %.03743.i.i.i, %.03842.i.i.i ; 2 uses
  %i.jz = mul i32 %i.jx, %.046.i.i.i
  %i.ka = add i32 %i.jz, %.03545.i.i.i
  %i.kb = xor i32 %.03644.i.i.i, 1
  %.not.i.i99.i = icmp eq i32 %.recomposed303.a, 0
  br i1 %.not.i.i99.i, label %._crit_edge.i.i100.i, label %.lr.ph.i.i98.i, !llvm.loop !26

._crit_edge.i.i100.i:                             ; preds = %.lr.ph.i.i98.i
  %i.kc = icmp eq i32 %.03644.i.i.i, 0
  %i.kd = sub i32 0, %.046.i.i.i
  %spec.select.i.i101.i = select i1 %i.kc, i32 %.046.i.i.i, i32 %i.kd
  br label %ZL_getMultiplicativeInverse32.exit.i.i

ZL_getMultiplicativeInverse32.exit.i.i:           ; preds = %._crit_edge.i.i100.i, %bb.aq, %bb.ap
  %.1.i.i102.i = phi i32 [ 1, %bb.ap ], [ 1, %bb.aq ], [ %spec.select.i.i101.i, %._crit_edge.i.i100.i ]
  %.not2326.not.i103.i = icmp eq i64 %i.f, 0
  br i1 %.not2326.not.i103.i, label %ZL_firstIndexNotDivisibleBy16.exit.i, label %.lr.ph.i104.i

bb.ar:                                            ; preds = %.lr.ph.i104.i
  %i.ke = add nuw i64 %.02028.i105.i, 1           ; 2 uses
  %exitcond.not.i109.i = icmp eq i64 %i.ke, %i.f
  br i1 %exitcond.not.i109.i, label %getDivisor.exit.thread, label %.lr.ph.i104.i, !llvm.loop !27

.lr.ph.i104.i:                                    ; preds = %ZL_getMultiplicativeInverse32.exit.i.i, %bb.ar
  %.02028.i105.i = phi i64 [ %i.ke, %bb.ar ], [ 0, %ZL_getMultiplicativeInverse32.exit.i.i ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.02028.i105.i
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !43 ; 2 uses
  %i.kh = zext i16 %i.kg to i32
  %i.ki = mul i32 %.1.i.i102.i, %i.kh
  %i.kj = lshr i32 %i.ki, %i.jr                   ; 2 uses
  %i.kk = mul i32 %i.kj, %i.jq
  %i.kl = trunc i32 %i.kk to i16
  %.not.i106.i = icmp eq i16 %i.kg, %i.kl
  %i.km = and i32 %i.kj, 65535
  %i.kn = icmp samesign ule i32 %i.km, %i.jp
  %or.cond.not.i107.i = select i1 %.not.i106.i, i1 %i.kn, i1 false
  br i1 %or.cond.not.i107.i, label %bb.ar, label %ZL_firstIndexNotDivisibleBy16.exit.i

ZL_firstIndexNotDivisibleBy16.exit.i:             ; preds = %.lr.ph.i104.i, %ZL_getMultiplicativeInverse32.exit.i.i
  %spec.select.i108.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i.i ], [ %.02028.i105.i, %.lr.ph.i104.i ] ; 2 uses
  %.not90.i = icmp eq i64 %spec.select.i108.i, %i.f
  br i1 %.not90.i, label %getDivisor.exit.thread, label %bb.as, !prof !46

bb.as:                                            ; preds = %ZL_firstIndexNotDivisibleBy16.exit.i
  %i.ko = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.32, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 50, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i108.i, i64 noundef %i.f) #7 ; 2 uses
  %i.kp = extractvalue { i32, ptr } %i.ko, 0      ; 2 uses
  %i.kq = extractvalue { i32, ptr } %i.ko, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kp, ptr %i.kq, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

bb.at:                                            ; preds = %.split.i
  %i.kr = icmp ult i64 %.057, 4294967296
  br i1 %i.kr, label %bb.av, label %bb.au, !prof !39

bb.au:                                            ; preds = %bb.at
  %i.ks = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.35, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 54, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.37, i64 noundef %.057, i64 noundef 4294967295) #7 ; 2 uses
  %i.kt = extractvalue { i32, ptr } %i.ks, 0      ; 2 uses
  %i.ku = extractvalue { i32, ptr } %i.ks, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kt, ptr %i.ku, ptr noundef nonnull @.str.24) #7
  br label %getDivisor.exit

bb.av:                                            ; preds = %bb.at
  %.rhs.trunc192.i = trunc nuw i64 %.057 to i32   ; 4 uses
  %i.kv = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.rhs.trunc192.i, i1 true) ; 2 uses
  %i.kw = lshr exact i32 %.rhs.trunc192.i, %i.kv  ; 4 uses
  %i.kx = icmp eq i32 %i.kw, 1
  br i1 %i.kx, label %ZL_getMultiplicativeInverse32.exit.i121.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ky = udiv i32 -1, %i.kw                      ; 2 uses
  %i.kz = mul i32 %i.ky, %i.kw                    ; 2 uses
  %.not41.i.i110.i = icmp eq i32 %i.kz, 0
  br i1 %.not41.i.i110.i, label %ZL_getMultiplicativeInverse32.exit.i121.i, label %.lr.ph.preheader.i.i111.i

.lr.ph.preheader.i.i111.i:                        ; preds = %bb.aw
  %i.la = sub i32 0, %i.kz
  br label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %.lr.ph.i.i112.i, %.lr.ph.preheader.i.i111.i
  %.046.i.i113.i = phi i32 [ %i.le, %.lr.ph.i.i112.i ], [ %i.ky, %.lr.ph.preheader.i.i111.i ] ; 4 uses
  %.03545.i.i114.i = phi i32 [ %.046.i.i113.i, %.lr.ph.i.i112.i ], [ 1, %.lr.ph.preheader.i.i111.i ]
  %.03644.i.i115.i = phi i32 [ %i.lf, %.lr.ph.i.i112.i ], [ 1, %.lr.ph.preheader.i.i111.i ] ; 2 uses
  %.03743.i.i116.i = phi i32 [ %.03842.i.i117.i, %.lr.ph.i.i112.i ], [ %i.kw, %.lr.ph.preheader.i.i111.i ] ; 2 uses
  %.03842.i.i117.i = phi i32 [ %.recomposed304, %.lr.ph.i.i112.i ], [ %i.la, %.lr.ph.preheader.i.i111.i ] ; 4 uses
  %i.lb = udiv i32 %.03743.i.i116.i, %.03842.i.i117.i ; 2 uses
  %i.lc = mul nuw i32 %i.lb, %.03842.i.i117.i     ; 0 uses
  %.recomposed304 = urem i32 %.03743.i.i116.i, %.03842.i.i117.i ; 2 uses
  %i.ld = mul i32 %i.lb, %.046.i.i113.i
  %i.le = add i32 %i.ld, %.03545.i.i114.i
  %i.lf = xor i32 %.03644.i.i115.i, 1
  %.not.i.i118.i = icmp eq i32 %.recomposed304, 0
  br i1 %.not.i.i118.i, label %._crit_edge.i.i119.i, label %.lr.ph.i.i112.i, !llvm.loop !26

._crit_edge.i.i119.i:                             ; preds = %.lr.ph.i.i112.i
  %i.lg = icmp eq i32 %.03644.i.i115.i, 0
  %i.lh = sub i32 0, %.046.i.i113.i
  %spec.select.i.i120.i = select i1 %i.lg, i32 %.046.i.i113.i, i32 %i.lh
  br label %ZL_getMultiplicativeInverse32.exit.i121.i

ZL_getMultiplicativeInverse32.exit.i121.i:        ; preds = %._crit_edge.i.i119.i, %bb.aw, %bb.av
  %.1.i.i122.i = phi i32 [ 1, %bb.av ], [ 1, %bb.aw ], [ %spec.select.i.i120.i, %._crit_edge.i.i119.i ]
  %.not2325.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not2325.not.i.i, label %ZL_firstIndexNotDivisibleBy32.exit.i, label %.lr.ph.i123.i

bb.ax:                                            ; preds = %.lr.ph.i123.i
  %i.li = add nuw i64 %.02027.i.i, 1              ; 2 uses
  %exitcond.not.i127.i = icmp eq i64 %i.li, %i.f
  br i1 %exitcond.not.i127.i, label %getDivisor.exit.thread, label %.lr.ph.i123.i, !llvm.loop !29

.lr.ph.i123.i:                                    ; preds = %ZL_getMultiplicativeInverse32.exit.i121.i, %bb.ax
  %.02027.i.i = phi i64 [ %i.li, %bb.ax ], [ 0, %ZL_getMultiplicativeInverse32.exit.i121.i ] ; 3 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02027.i.i
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !44 ; 2 uses
  %i.ll = mul i32 %i.lk, %.1.i.i122.i
  %i.lm = lshr i32 %i.ll, %i.kv                   ; 2 uses
  %i.ln = mul i32 %i.lm, %.rhs.trunc192.i
  %.not.i124.i = icmp ne i32 %i.ln, %i.lk
  %mul.i = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.rhs.trunc192.i, i32 %i.lm)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  %or.cond.not.i125.not.i = or i1 %.not.i124.i, %mul.ov.i
  br i1 %or.cond.not.i125.not.i, label %ZL_firstIndexNotDivisibleBy32.exit.i, label %bb.ax

ZL_firstIndexNotDivisibleBy32.exit.i:             ; preds = %.lr.ph.i123.i, %ZL_getMultiplicativeInverse32.exit.i121.i
  %spec.select.i126.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i121.i ], [ %.02027.i.i, %.lr.ph.i123.i ] ; 2 uses
  %.not89.i = icmp eq i64 %spec.select.i126.i, %i.f
  br i1 %.not89.i, label %getDivisor.exit.thread, label %bb.ay, !prof !46

bb.ay:                                            ; preds = %ZL_firstIndexNotDivisibleBy32.exit.i
  %i.lo = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.38, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 58, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i126.i, i64 noundef %i.f) #7 ; 2 uses
  %i.lp = extractvalue { i32, ptr } %i.lo, 0      ; 2 uses
  %i.lq = extractvalue { i32, ptr } %i.lo, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.lp, ptr %i.lq, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

bb.az:                                            ; preds = %.split.i
  %i.lr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.057, i1 true) ; 2 uses
  %i.ls = lshr exact i64 %.057, %i.lr             ; 4 uses
  %i.lt = icmp eq i64 %i.ls, 1
  br i1 %i.lt, label %ZL_getMultiplicativeInverse64.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lu = udiv i64 -1, %i.ls                      ; 2 uses
  %i.lv = mul i64 %i.lu, %i.ls                    ; 2 uses
  %.not41.i.i128.i = icmp eq i64 %i.lv, 0
  br i1 %.not41.i.i128.i, label %ZL_getMultiplicativeInverse64.exit.i.i, label %.lr.ph.preheader.i.i129.i

.lr.ph.preheader.i.i129.i:                        ; preds = %bb.ba
  %i.lw = sub i64 0, %i.lv
  br label %.lr.ph.i.i130.i

.lr.ph.i.i130.i:                                  ; preds = %.lr.ph.i.i130.i, %.lr.ph.preheader.i.i129.i
  %.046.i.i131.i = phi i64 [ %i.ma, %.lr.ph.i.i130.i ], [ %i.lu, %.lr.ph.preheader.i.i129.i ] ; 4 uses
  %.03545.i.i132.i = phi i64 [ %.046.i.i131.i, %.lr.ph.i.i130.i ], [ 1, %.lr.ph.preheader.i.i129.i ]
  %.03644.i.i133.i = phi i64 [ %i.mb, %.lr.ph.i.i130.i ], [ 1, %.lr.ph.preheader.i.i129.i ] ; 2 uses
  %.03743.i.i134.i = phi i64 [ %.03842.i.i135.i, %.lr.ph.i.i130.i ], [ %i.ls, %.lr.ph.preheader.i.i129.i ] ; 2 uses
  %.03842.i.i135.i = phi i64 [ %.recomposed305, %.lr.ph.i.i130.i ], [ %i.lw, %.lr.ph.preheader.i.i129.i ] ; 4 uses
  %i.lx = udiv i64 %.03743.i.i134.i, %.03842.i.i135.i ; 2 uses
  %i.ly = mul nuw i64 %i.lx, %.03842.i.i135.i     ; 0 uses
  %.recomposed305 = urem i64 %.03743.i.i134.i, %.03842.i.i135.i ; 2 uses
  %i.lz = mul i64 %i.lx, %.046.i.i131.i
  %i.ma = add i64 %i.lz, %.03545.i.i132.i
  %i.mb = xor i64 %.03644.i.i133.i, 1
  %.not.i.i136.i = icmp eq i64 %.recomposed305, 0
  br i1 %.not.i.i136.i, label %._crit_edge.i.i137.i, label %.lr.ph.i.i130.i, !llvm.loop !31

._crit_edge.i.i137.i:                             ; preds = %.lr.ph.i.i130.i
  %i.mc = icmp eq i64 %.03644.i.i133.i, 0
  %i.md = sub i64 0, %.046.i.i131.i
  %spec.select.i.i138.i = select i1 %i.mc, i64 %.046.i.i131.i, i64 %i.md
  br label %ZL_getMultiplicativeInverse64.exit.i.i

ZL_getMultiplicativeInverse64.exit.i.i:           ; preds = %._crit_edge.i.i137.i, %bb.ba, %bb.az
  %.1.i.i139.i = phi i64 [ 1, %bb.az ], [ 1, %bb.ba ], [ %spec.select.i.i138.i, %._crit_edge.i.i137.i ]
  %.not2326.not.i140.i = icmp eq i64 %i.f, 0
  br i1 %.not2326.not.i140.i, label %ZL_firstIndexNotDivisibleBy64.exit.i, label %.lr.ph.i141.i

bb.bb:                                            ; preds = %.lr.ph.i141.i
  %i.me = add nuw i64 %.02028.i142.i, 1           ; 2 uses
  %exitcond.not.i144.i = icmp eq i64 %i.me, %i.f
  br i1 %exitcond.not.i144.i, label %getDivisor.exit.thread, label %.lr.ph.i141.i, !llvm.loop !32

.lr.ph.i141.i:                                    ; preds = %ZL_getMultiplicativeInverse64.exit.i.i, %bb.bb
  %.02028.i142.i = phi i64 [ %i.me, %bb.bb ], [ 0, %ZL_getMultiplicativeInverse64.exit.i.i ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.02028.i142.i
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !20 ; 2 uses
  %i.mh = mul i64 %i.mg, %.1.i.i139.i
  %i.mi = lshr i64 %i.mh, %i.lr                   ; 2 uses
  %i.mj = mul i64 %i.mi, %.057
  %.not.i143.i = icmp ne i64 %i.mj, %i.mg
  %mul.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.057, i64 %i.mi)
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %.not34.i.i = or i1 %.not.i143.i, %mul.ov.i.i
  br i1 %.not34.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i, label %bb.bb

ZL_firstIndexNotDivisibleBy64.exit.i:             ; preds = %.lr.ph.i141.i, %ZL_getMultiplicativeInverse64.exit.i.i
  %spec.select.i145.i = phi i64 [ 0, %ZL_getMultiplicativeInverse64.exit.i.i ], [ %.02028.i142.i, %.lr.ph.i141.i ] ; 2 uses
  %.not.i = icmp eq i64 %spec.select.i145.i, %i.f
  br i1 %.not.i, label %getDivisor.exit.thread, label %bb.bc, !prof !46

bb.bc:                                            ; preds = %ZL_firstIndexNotDivisibleBy64.exit.i
  %i.mk = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.41, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 64, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i145.i, i64 noundef %i.f) #7 ; 2 uses
  %i.ml = extractvalue { i32, ptr } %i.mk, 0      ; 2 uses
  %i.mm = extractvalue { i32, ptr } %i.mk, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ml, ptr %i.mm, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

getDivisor.exit.thread:                           ; preds = %bb.bb, %bb.ax, %bb.ar, %bb.al, %bb.aa, %ZL_firstIndexNotDivisibleBy64.exit.i.i, %bb.u, %ZL_firstIndexNotDivisibleBy32.exit.i.i, %bb.o, %ZL_firstIndexNotDivisibleBy16.exit.i.i, %bb.i, %ZL_firstIndexNotDivisibleBy8.exit.i.i, %bb.g, %bb.h, %.split.i.i, %ZL_firstIndexNotDivisibleBy8.exit.i, %ZL_firstIndexNotDivisibleBy16.exit.i, %ZL_firstIndexNotDivisibleBy32.exit.i, %ZL_firstIndexNotDivisibleBy64.exit.i, %bb.ag, %.split.i
  %.sroa.19.7.i.ph = phi i64 [ 1, %bb.i ], [ %.057, %.split.i ], [ %.057, %bb.ag ], [ 1, %bb.o ], [ %.4.i.i, %ZL_firstIndexNotDivisibleBy32.exit.i.i ], [ 1, %bb.u ], [ 1, %bb.aa ], [ %.2106.i.i, %ZL_firstIndexNotDivisibleBy16.exit.i.i ], [ %.057, %bb.ax ], [ %.057, %ZL_firstIndexNotDivisibleBy64.exit.i ], [ %.0104.i.i, %ZL_firstIndexNotDivisibleBy8.exit.i.i ], [ %.057, %bb.al ], [ %.057, %ZL_firstIndexNotDivisibleBy32.exit.i ], [ %.057, %bb.ar ], [ %.6.i.i, %ZL_firstIndexNotDivisibleBy64.exit.i.i ], [ %.057, %ZL_firstIndexNotDivisibleBy16.exit.i ], [ %.057, %ZL_firstIndexNotDivisibleBy8.exit.i ], [ 0, %.split.i.i ], [ 0, %bb.h ], [ 1, %bb.g ], [ %.057, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.be

getDivisor.exit:                                  ; preds = %bb.ai, %bb.am, %bb.ao, %bb.as, %bb.au, %bb.ay, %bb.bc
  %.sroa.079.7.i = phi i32 [ %i.ml, %bb.bc ], [ %i.kt, %bb.au ], [ %i.ji, %bb.am ], [ %i.ih, %bb.ai ], [ %i.kp, %bb.as ], [ %i.jm, %bb.ao ], [ %i.lp, %bb.ay ] ; 2 uses
  %.sroa.19.7.i.in = phi ptr [ %i.mm, %bb.bc ], [ %i.ku, %bb.au ], [ %i.jj, %bb.am ], [ %i.ii, %bb.ai ], [ %i.kq, %bb.as ], [ %i.jn, %bb.ao ], [ %i.lq, %bb.ay ] ; 2 uses
  %.sroa.19.7.i = ptrtoint ptr %.sroa.19.7.i.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not65 = icmp eq i32 %.sroa.079.7.i, 0
  br i1 %.not65, label %bb.be, label %bb.bd, !prof !47

bb.bd:                                            ; preds = %getDivisor.exit
  %i.mn = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.079.7.i, ptr %.sroa.19.7.i.in, ptr nonnull @EI_divide_by_int.__zl_static_error_info.15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 101, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8) #7 ; 2 uses
  %i.mo = extractvalue { i32, ptr } %i.mn, 0
  %i.mp = extractvalue { i32, ptr } %i.mn, 1
  %i.mq = ptrtoint ptr %i.mp to i64
  br label %bb.bg

bb.be:                                            ; preds = %getDivisor.exit, %getDivisor.exit.thread
  %.0.ph = phi i64 [ %.sroa.19.7.i.ph, %getDivisor.exit.thread ], [ %.sroa.19.7.i, %getDivisor.exit ] ; 4 uses
  call void @ZS_divideByEncode(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %i.f, i64 noundef %.0.ph, i64 noundef %i.e) #7
  %i.mr = icmp ugt i64 %.0.ph, 127
  br i1 %i.mr, label %.lr.ph.i, label %ZL_varintEncode.exit

.lr.ph.i:                                         ; preds = %bb.be, %.lr.ph.i
  %.010.i = phi ptr [ %i.mu, %.lr.ph.i ], [ %i.a, %bb.be ] ; 2 uses
  %.089.i = phi i64 [ %i.mv, %.lr.ph.i ], [ %.0.ph, %bb.be ] ; 3 uses
  %i.ms = trunc i64 %.089.i to i8
  %i.mt = or i8 %i.ms, -128
  %i.mu = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  store i8 %i.mt, ptr %.010.i, align 1, !tbaa !40
  %i.mv = lshr i64 %.089.i, 7                     ; 2 uses
  %i.mw = icmp ugt i64 %.089.i, 16383
  br i1 %i.mw, label %.lr.ph.i, label %ZL_varintEncode.exit, !llvm.loop !33

ZL_varintEncode.exit:                             ; preds = %.lr.ph.i, %bb.be
  %.08.lcssa.i = phi i64 [ %.0.ph, %bb.be ], [ %i.mv, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.a, %bb.be ], [ %i.mu, %.lr.ph.i ] ; 2 uses
  %i.mx = trunc nuw nsw i64 %.08.lcssa.i to i8
  %i.my = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  store i8 %i.mx, ptr %.0.lcssa.i, align 1, !tbaa !40
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = ptrtoint ptr %i.a to i64
  %i.nb = sub i64 %i.mz, %i.na
  call void @ZL_Encoder_sendCodecHeader(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.nb) #7
  %i.nc = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.g, i64 noundef %i.f) #7 ; 2 uses
  %i.nd = extractvalue { i32, i64 } %i.nc, 0      ; 2 uses
  %.not66 = icmp eq i32 %i.nd, 0
  br i1 %.not66, label %bb.bg, label %bb.bf, !prof !39

bb.bf:                                            ; preds = %ZL_varintEncode.exit
  %i.ne = extractvalue { i32, i64 } %i.nc, 1
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.nd, ptr %i.nf, ptr nonnull @EI_divide_by_int.__zl_static_error_info.18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 105, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8) #7 ; 2 uses
  %i.nh = extractvalue { i32, ptr } %i.ng, 0
  %i.ni = extractvalue { i32, ptr } %i.ng, 1
  %i.nj = ptrtoint ptr %i.ni to i64
  br label %bb.bg

bb.bg:                                            ; preds = %ZL_varintEncode.exit, %bb.bd, %bb.d, %bb.bf
  %.sroa.050.5 = phi i32 [ %i.s, %bb.d ], [ %i.mo, %bb.bd ], [ %i.nh, %bb.bf ], [ 0, %ZL_varintEncode.exit ]
  %.sroa.18.5 = phi i64 [ %i.u, %bb.d ], [ %i.mq, %bb.bd ], [ %i.nj, %bb.bf ], [ 0, %ZL_varintEncode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bh

bb.bh:                                            ; preds = %.thread, %bb.bg
  %.sroa.050.6 = phi i32 [ %.sroa.050.5, %bb.bg ], [ %i.i, %.thread ]
  %.sroa.18.6 = phi i64 [ %.sroa.18.5, %bb.bg ], [ %i.k, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.050.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.18.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_Encoder_getOperationContext(ptr noundef) local_unnamed_addr #3

declare ptr @ZL_Encoder_createTypedStream(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ZL_Encoder_getLocalParam(ptr dead_on_unwind writable sret(%struct.ZL_RefParam) align 8, ptr noundef, i32 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZS_divideByEncode(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @ZL_Encoder_sendCodecHeader(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_registerDivideByNode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %struct.ZL_CopyParam, align 8       ; 7 uses
  %3 = alloca %struct.ZL_LocalParams, align 8     ; 7 uses
  %4 = alloca %struct.ZL_ParameterizedNodeDesc, align 8 ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i32 112, ptr %2, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 8, ptr %i.d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !49
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 31, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !55
  %i.i = call i32 @ZL_Compressor_registerParameterizedNode(ptr noundef %0, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %i.i
}

declare i32 @ZL_Compressor_registerParameterizedNode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_divide_by_int_as_typedTransform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  %i.b = call { i32, i64 } @EI_divide_by_int(ptr noundef %0, ptr noundef nonnull %i.a, i64 poison)
  ret { i32, i64 } %i.b
}

declare i64 @ZL_Data_eltWidth(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_wPtr(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

end_hunk_0
