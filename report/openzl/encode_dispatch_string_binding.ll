Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_dispatch_string_binding?download=true
inline.NumInlined: 19
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_RefParam = type { i32, ptr, i64 }
%struct.ZL_LocalParams = type { %struct.ZL_LocalIntParams, %struct.ZL_LocalCopyParams, %struct.ZL_LocalRefParams }
%struct.ZL_LocalIntParams = type { ptr, i64 }
%struct.ZL_LocalCopyParams = type { ptr, i64 }
%struct.ZL_LocalRefParams = type { ptr, i64 }
%struct.ZL_IntParam = type { i32, i32 }
%struct.ZL_ParameterizedNodeDesc = type { ptr, %struct.ZL_NodeID, ptr, %struct.ZL_DictID, %struct.ZL_MParam }
%struct.ZL_DictID = type { %struct.ZL_UniqueID }
%struct.ZL_UniqueID = type { [32 x i8] }
%struct.ZL_MParam = type { ptr, i64, %struct.ZL_MParamID }
%struct.ZL_MParamID = type { %struct.ZL_UniqueID }
%union.ZL_Result_ZL_EdgeList_u = type { %struct.ZL_Result_ZL_EdgeList_inner }
%struct.ZL_Result_ZL_EdgeList_inner = type { i32, %struct.ZL_EdgeList }
%struct.ZL_EdgeList = type { %union.anon, %union.anon.0 }
%union.anon = type { ptr }
%union.anon.0 = type { i64 }

@EI_dispatch_string.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 76, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [102 x i8] c"Check `nbOutputs > 2048' failed: Stream parameter invalid: dispatch_string: invalid number of outputs\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/dispatch_string/encode_dispatch_string_binding.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"EI_dispatch_string\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"nbOutputs\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\0A\09dispatch_string: invalid number of outputs\00", align 1
@EI_dispatch_string.__zl_static_error_info.8 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 76, [4 x i8] zeroinitializer, ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 44, [4 x i8] zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [124 x i8] c"Check `nbElts > 0 && nbOutputs == 0' failed: Stream parameter invalid: dispatch_string: ill-formed degenerate case (%u, %i)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"nbElts > 0 && nbOutputs == 0\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"\0A\09dispatch_string: ill-formed degenerate case (%u, %i)\00", align 1
@EI_dispatch_string.__zl_static_error_info.13 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 76, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 52, [4 x i8] zeroinitializer }, align 8
@.str.14 = private unnamed_addr constant [135 x i8] c"Check `(const char*)(const void*)indices == (const char*)0' failed: Stream parameter invalid: dispatch_string: indices pointer is null\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"(const char*)(const void*)indices\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"\0A\09dispatch_string: indices pointer is null\00", align 1
@EI_dispatch_string.__zl_static_error_info.20 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 76, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 65, [4 x i8] zeroinitializer }, align 8
@.str.21 = private unnamed_addr constant [128 x i8] c"Check `!(indicesValid == 1)' failed: Stream parameter invalid: Dispatch index out of bounds. Expected all to be in range [0,%u)\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"!(indicesValid == 1)\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"\0A\09Dispatch index out of bounds. Expected all to be in range [0,%u)\00", align 1
@EI_dispatch_string.__zl_static_error_info.24 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 69, [4 x i8] zeroinitializer }, align 8
@.str.25 = private unnamed_addr constant [87 x i8] c"Check `(const char*)(const void*)outputSizes == (const char*)0' failed: Allocation: %s\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"(const char*)(const void*)outputSizes\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EI_dispatch_string.__zl_static_error_info.29 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 83, [4 x i8] zeroinitializer }, align 8
@.str.30 = private unnamed_addr constant [87 x i8] c"Check `(const char*)(const void*)indices_out == (const char*)0' failed: Allocation: %s\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"(const char*)(const void*)indices_out\00", align 1
@EI_dispatch_string.__zl_static_error_info.32 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 88, [4 x i8] zeroinitializer }, align 8
@.str.33 = private unnamed_addr constant [80 x i8] c"Check `(const char*)(const void*)outs == (const char*)0' failed: Allocation: %s\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"(const char*)(const void*)outs\00", align 1
@EI_dispatch_string.__zl_static_error_info.35 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 92, [4 x i8] zeroinitializer }, align 8
@.str.36 = private unnamed_addr constant [86 x i8] c"Check `(const char*)(const void*)dstBuffers == (const char*)0' failed: Allocation: %s\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"(const char*)(const void*)dstBuffers\00", align 1
@EI_dispatch_string.__zl_static_error_info.38 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 96, [4 x i8] zeroinitializer }, align 8
@.str.39 = private unnamed_addr constant [86 x i8] c"Check `(const char*)(const void*)dstStrLens == (const char*)0' failed: Allocation: %s\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"(const char*)(const void*)dstStrLens\00", align 1
@EI_dispatch_string.__zl_static_error_info.41 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 100, [4 x i8] zeroinitializer }, align 8
@.str.42 = private unnamed_addr constant [85 x i8] c"Check `(const char*)(const void*)dstNbStrs == (const char*)0' failed: Allocation: %s\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"(const char*)(const void*)dstNbStrs\00", align 1
@EI_dispatch_string.__zl_static_error_info.44 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 108, [4 x i8] zeroinitializer }, align 8
@.str.45 = private unnamed_addr constant [79 x i8] c"Check `(const char*)(const void*)out == (const char*)0' failed: Allocation: %s\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"(const char*)(const void*)out\00", align 1
@EI_dispatch_string.__zl_static_error_info.47 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 125, [4 x i8] zeroinitializer }, align 8
@.str.48 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EI_dispatch_string.__zl_static_error_info.50 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 133, [4 x i8] zeroinitializer }, align 8
@ZL_Edge_runDispatchStringNode.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 50, [4 x i8] zeroinitializer, ptr @.str.51, ptr @.str.1, ptr @.str.52, i32 168, [4 x i8] zeroinitializer }, align 8
@.str.51 = private unnamed_addr constant [122 x i8] c"Check `nbOutputs < 0 || nbOutputs > 2048' failed: Node parameter invalid: dispatch_string: invalid number of outputs (%i)\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"ZL_Edge_runDispatchStringNode\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"nbOutputs < 0 || nbOutputs > 2048\00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"\0A\09dispatch_string: invalid number of outputs (%i)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZL_DispatchString_maxDispatches() local_unnamed_addr #0 {
bb.a:
  ret i64 2048
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_dispatch_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 17 uses
  %4 = alloca %struct.ZL_RefParam, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #8
  store ptr %i.b, ptr %3, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 4 uses
  %i.d = tail call i64 @ZL_Data_numElts(ptr noundef %i.c) #7 ; 14 uses
  %i.e = tail call i64 @ZL_Encoder_getLocalIntParam(ptr noundef %0, i32 noundef 47) #7 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %i.e, 32    ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %i.f = ashr i64 %i.e, 32                        ; 12 uses
  %i.g = icmp ult i64 %i.f, 2049
  br i1 %i.g, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.h = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 38, i32 noundef 76, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %i.f, i64 noundef 2048) #7 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.h, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.i, ptr %i.j, ptr noundef nonnull @.str.7) #7
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ne i64 %i.d, 0                      ; 4 uses
  %i.m = icmp eq i64 %i.f, 0                      ; 2 uses
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.o = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.8, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 44, i32 noundef 76, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #7 ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { i32, ptr } %i.o, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.p, ptr %i.q, ptr noundef nonnull @.str.12, i64 noundef %i.d, i32 noundef %.sroa.3.0.extract.trunc) #7
  %i.r = ptrtoint ptr %i.q to i64
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @ZL_Encoder_getLocalParam(ptr dead_on_unwind nonnull writable sret(%struct.ZL_RefParam) align 8 %4, ptr noundef %0, i32 noundef 48) #7
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread217, label %bb.f, !prof !18

.thread217:                                       ; preds = %bb.e
  %i.u = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.13, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 76, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.v = extractvalue { i32, ptr } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i32, ptr } %i.u, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.v, ptr %i.w, ptr noundef nonnull @.str.19) #7
  %i.x = ptrtoint ptr %i.w to i64
  br label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.y = call ptr @ZL_Data_rStringLens(ptr noundef %i.c) #7 ; 3 uses
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.z = icmp ult i64 %i.d, 4
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0182248.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.bc, %._crit_edge.unr-lcssa ]
  %.0183247.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bd, %._crit_edge.unr-lcssa ]
  %lcmp.mod299 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod299)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0182248.epil = phi i32 [ %i.ae, %.lr.ph.epil ], [ %.0182248.epil.init, %.lr.ph.epil.preheader ]
  %.0183247.epil = phi i64 [ %i.af, %.lr.ph.epil ], [ %.0183247.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.0183247.epil
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !40
  %i.ac = zext i16 %i.ab to i64
  %i.ad = icmp samesign ugt i64 %i.f, %i.ac
  %i.ae = select i1 %i.ad, i32 %.0182248.epil, i32 0 ; 2 uses
  %i.af = add nuw i64 %.0183247.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa297 = phi i32 [ %i.bc, %._crit_edge.unr-lcssa ], [ %i.ae, %.lr.ph.epil ]
  %.not289 = icmp eq i32 %.lcssa297, 0
  br i1 %.not289, label %bb.g, label %._crit_edge.thread, !prof !42

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0182248 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.bc, %.lr.ph ]
  %.0183247 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bd, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.0183247
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !40
  %i.ai = zext i16 %i.ah to i64
  %i.aj = icmp samesign ugt i64 %i.f, %i.ai
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.0183247
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !40
  %i.an = zext i16 %i.am to i64
  %i.ao = icmp samesign ugt i64 %i.f, %i.an
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.0183247
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !40
  %i.as = zext i16 %i.ar to i64
  %i.at = icmp samesign ugt i64 %i.f, %i.as
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.0183247
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !40
  %i.ax = zext i16 %i.aw to i64
  %i.ay = icmp samesign ugt i64 %i.f, %i.ax
  %i.az = select i1 %i.ay, i1 %i.at, i1 false
  %i.ba = select i1 %i.az, i1 %i.ao, i1 false
  %i.bb = select i1 %i.ba, i1 %i.aj, i1 false
  %i.bc = select i1 %i.bb, i32 %.0182248, i32 0   ; 3 uses
  %i.bd = add nuw i64 %.0183247, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !32

bb.g:                                             ; preds = %._crit_edge
  %i.be = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.20, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 65, i32 noundef 76, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22) #7 ; 2 uses
  %i.bf = extractvalue { i32, ptr } %i.be, 0      ; 2 uses
  %i.bg = extractvalue { i32, ptr } %i.be, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bf, ptr %i.bg, ptr noundef nonnull @.str.23, i64 noundef %i.f) #7
  %i.bh = ptrtoint ptr %i.bg to i64
  br label %bb.q

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  %i.bi = shl nuw nsw i64 %i.f, 3                 ; 6 uses
  %i.bj = call ptr @ZL_Encoder_getScratchSpace(ptr noundef %0, i64 noundef %i.bi) #7 ; 6 uses
  %.not200 = icmp eq ptr %i.bj, null
  br i1 %.not200, label %.thread220, label %bb.h, !prof !18

.thread220:                                       ; preds = %._crit_edge.thread
  %i.bk = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.24, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 70, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.bl = extractvalue { i32, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { i32, ptr } %i.bk, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bl, ptr %i.bm, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.bn = ptrtoint ptr %i.bm to i64
  br label %bb.q

bb.h:                                             ; preds = %._crit_edge.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bj, i8 0, i64 %i.bi, i1 false)
  br i1 %i.l, label %.lr.ph251.preheader, label %._crit_edge252

.lr.ph251.preheader:                              ; preds = %bb.h
  %xtraiter300 = and i64 %i.d, 1
  %i.bo = icmp eq i64 %i.d, 1
  br i1 %i.bo, label %.lr.ph251.epil.preheader, label %.lr.ph251.preheader.new

.lr.ph251.preheader.new:                          ; preds = %.lr.ph251.preheader
  %unroll_iter304 = and i64 %i.d, -2
  br label %.lr.ph251

._crit_edge252.loopexit.unr-lcssa:                ; preds = %.lr.ph251
  %lcmp.mod302.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod302.not, label %._crit_edge252, label %.lr.ph251.epil.preheader

.lr.ph251.epil.preheader:                         ; preds = %._crit_edge252.loopexit.unr-lcssa, %.lr.ph251.preheader
  %.0184249.epil.init = phi i64 [ 0, %.lr.ph251.preheader ], [ %i.cs, %._crit_edge252.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod303 = trunc i64 %i.d to i1
  call void @llvm.assume(i1 %lcmp.mod303)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.0184249.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.0184249.epil.init
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !40
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !44
  %i.bx = add i64 %i.bw, %i.br
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !44
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %.lr.ph251.epil.preheader, %._crit_edge252.loopexit.unr-lcssa, %bb.h
  %i.by = call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %i.d, i64 noundef 2) #7 ; 3 uses
  %.not201 = icmp eq ptr %i.by, null
  br i1 %.not201, label %.thread223, label %bb.i, !prof !18

.lr.ph251:                                        ; preds = %.lr.ph251, %.lr.ph251.preheader.new
  %.0184249 = phi i64 [ 0, %.lr.ph251.preheader.new ], [ %i.cs, %.lr.ph251 ] ; 4 uses
  %niter305 = phi i64 [ 0, %.lr.ph251.preheader.new ], [ %niter305.next.1, %.lr.ph251 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.0184249
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !22
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.0184249
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !40
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ce ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !44
  %i.ch = add i64 %i.cg, %i.cb
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !44
  %i.ci = or disjoint i64 %.0184249, 1            ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !22
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ci
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !40
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !44
  %i.cr = add i64 %i.cq, %i.cl
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !44
  %i.cs = add nuw i64 %.0184249, 2                ; 2 uses
  %niter305.next.1 = add nuw i64 %niter305, 2     ; 2 uses
  %niter305.ncmp.1 = icmp eq i64 %niter305.next.1, %unroll_iter304
  br i1 %niter305.ncmp.1, label %._crit_edge252.loopexit.unr-lcssa, label %.lr.ph251, !llvm.loop !33

.thread223:                                       ; preds = %._crit_edge252
  %i.ct = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.29, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 83, i32 noundef 70, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.cu = extractvalue { i32, ptr } %i.ct, 0      ; 2 uses
  %i.cv = extractvalue { i32, ptr } %i.ct, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cu, ptr %i.cv, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.cw = ptrtoint ptr %i.cv to i64
  br label %bb.q

bb.i:                                             ; preds = %._crit_edge252
  %i.cx = call ptr @ZL_Encoder_getScratchSpace(ptr noundef %0, i64 noundef %i.bi) #7 ; 3 uses
  %.not202 = icmp eq ptr %i.cx, null
  br i1 %.not202, label %.thread226, label %bb.j, !prof !18

.thread226:                                       ; preds = %bb.i
  %i.cy = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.32, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 88, i32 noundef 70, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.cz = extractvalue { i32, ptr } %i.cy, 0      ; 2 uses
  %i.da = extractvalue { i32, ptr } %i.cy, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cz, ptr %i.da, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.db = ptrtoint ptr %i.da to i64
  br label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.dc = call ptr @ZL_Encoder_getScratchSpace(ptr noundef %0, i64 noundef %i.bi) #7 ; 3 uses
  %.not203 = icmp eq ptr %i.dc, null
  br i1 %.not203, label %.thread229, label %bb.k, !prof !18

.thread229:                                       ; preds = %bb.j
  %i.dd = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.35, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 92, i32 noundef 70, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.de = extractvalue { i32, ptr } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { i32, ptr } %i.dd, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.de, ptr %i.df, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.dg = ptrtoint ptr %i.df to i64
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.dh = call ptr @ZL_Encoder_getScratchSpace(ptr noundef %0, i64 noundef %i.bi) #7 ; 3 uses
  %.not204 = icmp eq ptr %i.dh, null
  br i1 %.not204, label %.thread232, label %bb.l, !prof !18

.thread232:                                       ; preds = %bb.k
  %i.di = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.38, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 96, i32 noundef 70, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.dj = extractvalue { i32, ptr } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { i32, ptr } %i.di, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dj, ptr %i.dk, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.dl = ptrtoint ptr %i.dk to i64
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.dm = call ptr @ZL_Encoder_getScratchSpace(ptr noundef %0, i64 noundef %i.bi) #7 ; 3 uses
  %.not205 = icmp eq ptr %i.dm, null
  br i1 %.not205, label %.thread235, label %bb.m, !prof !18

.thread235:                                       ; preds = %bb.l
  %i.dn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.41, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 100, i32 noundef 70, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.do = extractvalue { i32, ptr } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { i32, ptr } %i.dn, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.do, ptr %i.dp, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.dq = ptrtoint ptr %i.dp to i64
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  br i1 %i.l, label %.preheader, label %.critedge212

.preheader:                                       ; preds = %bb.m
  %.not207253 = icmp sgt i32 %.sroa.3.0.extract.trunc, 0
  br i1 %.not207253, label %.lr.ph255, label %.critedge

.lr.ph255:                                        ; preds = %.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader ] ; 5 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !44
  %i.dt = add i64 %i.ds, 32
  %i.du = call ptr @ZL_Encoder_createStringStream(ptr noundef %0, i32 noundef 1, i64 noundef %i.d, i64 noundef %i.dt) #7 ; 4 uses
  %.not206.not = icmp eq ptr %i.du, null
  br i1 %.not206.not, label %.critedge.thread, label %bb.n, !prof !18

.critedge.thread:                                 ; preds = %.lr.ph255
  %i.dv = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_dispatch_string.__zl_static_error_info.44, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 70, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.dw = extractvalue { i32, ptr } %i.dv, 0      ; 2 uses
  %i.dx = extractvalue { i32, ptr } %i.dv, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dw, ptr %i.dx, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.dy = ptrtoint ptr %i.dx to i64
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph255
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv
  store ptr %i.du, ptr %i.dz, align 8, !tbaa !46
  %i.ea = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.du) #7
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !47
  %i.ec = call ptr @ZL_Data_wStringLens(ptr noundef nonnull %i.du) #7
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next, %.sroa.3.0.extract.shift
  br i1 %exitcond268.not, label %.critedge, label %.lr.ph255, !llvm.loop !34

.critedge:                                        ; preds = %bb.n, %.preheader
  %i.ee = trunc nuw nsw i64 %i.f to i16
  %i.ef = call ptr @ZL_Data_rPtr(ptr noundef %i.c) #7
  %i.eg = call ptr @ZL_Data_rStringLens(ptr noundef %i.c) #7
  call void @ZL_DispatchString_encode16(i16 noundef zeroext %i.ee, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dm, ptr noundef %i.ef, ptr noundef %i.eg, i64 noundef %i.d, ptr noundef nonnull %i.t) #7
  br i1 %i.m, label %._crit_edge259, label %.lr.ph258

bb.o:                                             ; preds = %.lr.ph258
  %i.eh = add nuw i64 %.0180257, 1                ; 2 uses
  %exitcond269.not = icmp eq i64 %i.eh, %i.f
  br i1 %exitcond269.not, label %._crit_edge259, label %.lr.ph258, !llvm.loop !35

.lr.ph258:                                        ; preds = %.critedge, %bb.o
  %.0180257 = phi i64 [ %i.eh, %bb.o ], [ 0, %.critedge ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0180257
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !46
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0180257
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !44
  %i.em = call { i32, i64 } @ZL_Data_commit(ptr noundef %i.ej, i64 noundef %i.el) #7 ; 2 uses
  %i.en = extractvalue { i32, i64 } %i.em, 0      ; 2 uses
  %.not208 = icmp eq i32 %i.en, 0
  br i1 %.not208, label %bb.o, label %.thread243, !prof !38

.thread243:                                       ; preds = %.lr.ph258
  %i.eo = extractvalue { i32, i64 } %i.em, 1
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.en, ptr %i.ep, ptr nonnull @EI_dispatch_string.__zl_static_error_info.47, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 125, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #7 ; 2 uses
  %i.er = extractvalue { i32, ptr } %i.eq, 0
  %i.es = extractvalue { i32, ptr } %i.eq, 1
  %i.et = ptrtoint ptr %i.es to i64
  br label %bb.q

._crit_edge259:                                   ; preds = %bb.o, %.critedge
  %i.eu = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.by) #7
  %i.ev = shl i64 %i.d, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr nonnull align 2 %i.t, i64 %i.ev, i1 false)
  br label %.critedge212

.critedge212:                                     ; preds = %bb.m, %._crit_edge259
end_hunk_0
