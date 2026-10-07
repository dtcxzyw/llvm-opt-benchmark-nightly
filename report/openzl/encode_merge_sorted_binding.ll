Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_merge_sorted_binding?download=true
inline.NumInlined: 45
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_GraphParameters_s = type { ptr, ptr, i64, ptr, i64, ptr, %struct.ZL_MParam }
%struct.ZL_MParam = type { ptr, i64, %struct.ZL_MParamID }
%struct.ZL_MParamID = type { %struct.ZL_UniqueID }
%struct.ZL_UniqueID = type { [32 x i8] }

@EI_mergeSorted.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [95 x i8] c"Check `ZL_Input_eltWidth(in) != 4' failed: Input does not respect conditions for this node: %s\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/merge_sorted/encode_merge_sorted_binding.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"EI_mergeSorted\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ZL_Input_eltWidth(in)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EI_mergeSorted.__zl_static_error_info.9 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 78, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EI_mergeSorted.__zl_static_error_info.12 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 87, [4 x i8] zeroinitializer }, align 8
@.str.13 = private unnamed_addr constant [82 x i8] c"Check `(const char*)(const void*)bitset == (const char*)0' failed: Allocation: %s\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"(const char*)(const void*)bitset\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@EI_mergeSorted.__zl_static_error_info.18 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 88, [4 x i8] zeroinitializer }, align 8
@.str.19 = private unnamed_addr constant [82 x i8] c"Check `(const char*)(const void*)merged == (const char*)0' failed: Allocation: %s\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"(const char*)(const void*)merged\00", align 1
@EI_mergeSorted.__zl_static_error_info.21 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 90, [4 x i8] zeroinitializer }, align 8
@EI_mergeSorted.__zl_static_error_info.22 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 133, [4 x i8] zeroinitializer }, align 8
@EI_mergeSorted.__zl_static_error_info.23 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 135, [4 x i8] zeroinitializer }, align 8
@EI_mergeSorted.__zl_static_error_info.24 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 136, [4 x i8] zeroinitializer }, align 8
@mergeSortedSelectorFnGraph.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 44, [4 x i8] zeroinitializer, ptr @.str.25, ptr @.str.1, ptr @.str.26, i32 156, [4 x i8] zeroinitializer }, align 8
@.str.25 = private unnamed_addr constant [95 x i8] c"Check `customGraphs.nbGraphIDs != 2' failed: Graph was assigned an invalid Local Parameter: %s\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"mergeSortedSelectorFnGraph\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"customGraphs.nbGraphIDs\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@mergeSortedSelectorFnGraph.__zl_static_error_info.29 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.26, i32 164, [4 x i8] zeroinitializer }, align 8
@mergeSortedSelectorFnGraph.__zl_static_error_info.30 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.26, i32 186, [4 x i8] zeroinitializer }, align 8
@mergeSortedSelectorFnGraph.__zl_static_error_info.31 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.26, i32 188, [4 x i8] zeroinitializer }, align 8
@getSortedRuns.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.1, ptr @.str.33, i32 38, [4 x i8] zeroinitializer }, align 8
@.str.32 = private unnamed_addr constant [89 x i8] c"Check `nbSrcs >= kMaxNbSrcs' failed: Input does not respect conditions for this node: %s\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"getSortedRuns\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"nbSrcs\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"kMaxNbSrcs\00", align 1
@writeHeader.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.37, ptr @.str.1, ptr @.str.38, i32 59, [4 x i8] zeroinitializer }, align 8
@.str.37 = private unnamed_addr constant [82 x i8] c"Check `(const char*)(const void*)header == (const char*)0' failed: Allocation: %s\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"writeHeader\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"(const char*)(const void*)header\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_mergeSorted(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 12 uses
  %i.a = alloca [64 x ptr], align 16              ; 11 uses
  %i.b = alloca [64 x ptr], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #8 ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !17
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 4 uses
  %i.f = tail call i64 @ZL_Data_numElts(ptr noundef %i.e) #7 ; 2 uses
  %i.g = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.e) #7 ; 2 uses
  %.not = icmp eq i64 %i.g, 4
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.h = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_mergeSorted.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 75, i32 noundef 55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %i.g, i64 noundef 4) #7 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.h, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.i, ptr %i.j, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #8
  store ptr %i.m, ptr %4, align 8, !tbaa !17
  %i.n = tail call ptr @ZL_Data_rPtr(ptr noundef %i.e) #7 ; 4 uses
  %i.o = tail call i64 @ZL_Data_numElts(ptr noundef %i.e) #7
  %.fr = freeze i64 %i.o                          ; 4 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i ; 3 uses
  %i.q = icmp eq i64 %.fr, 0
  br i1 %i.q, label %getSortedRuns.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.a, align 16, !tbaa !27
  %.03344.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %.not45.i = icmp eq i64 %.fr, 1
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !19 ; 2 uses
  %i.r = add i64 %.idx.i, -8                      ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.t, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i.new
  %i.v = phi i32 [ %.pre.i, %.lr.ph.preheader.i.new ], [ %i.ab, %bb.i ]
  %.03348.i = phi ptr [ %.03344.i, %.lr.ph.preheader.i.new ], [ %.033.i.1, %bb.i ] ; 5 uses
  %.047.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.i ]
  %i.w = load i32, ptr %.03348.i, align 4, !tbaa !19 ; 2 uses
  %.not37.i = icmp ugt i32 %i.w, %i.v
  br i1 %.not37.i, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.047.i
  store ptr %.03348.i, ptr %i.x, align 8, !tbaa !27
  %i.y = add nuw nsw i64 %.047.i, 1               ; 3 uses
  %i.z = icmp ult i64 %.047.i, 63
  br i1 %i.z, label %bb.f, label %getSortedRuns.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y
  store ptr %.03348.i, ptr %i.aa, align 8, !tbaa !27
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.1.i = phi i64 [ %i.y, %bb.f ], [ %.047.i, %.lr.ph.i ] ; 4 uses
  %.033.i = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 3 uses
  %i.ab = load i32, ptr %.033.i, align 4, !tbaa !19 ; 3 uses
  %.not37.i.1 = icmp ugt i32 %i.ab, %i.w
  br i1 %.not37.i.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.1.i
  store ptr %.033.i, ptr %i.ac, align 8, !tbaa !27
  %i.ad = add nuw nsw i64 %.1.i, 1                ; 3 uses
  %i.ae = icmp ult i64 %.1.i, 63
  br i1 %i.ae, label %bb.h, label %getSortedRuns.exit, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  store ptr %.033.i, ptr %i.af, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.1
  %.1.i.1 = phi i64 [ %i.ad, %bb.h ], [ %.1.i, %.lr.ph.i.1 ] ; 3 uses
  %.033.i.1 = getelementptr inbounds nuw i8, ptr %.03348.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !21

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.i
  %6 = and i64 %.fr, 1
  %lcmp.mod.not.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.ab, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03348.i.epil.init = phi ptr [ %.03344.i, %.lr.ph.preheader.i ], [ %.033.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %.047.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod196 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.ag = load i32, ptr %.03348.i.epil.init, align 4, !tbaa !19
  %.not37.i.epil = icmp ugt i32 %i.ag, %.epil.init
  br i1 %.not37.i.epil, label %._crit_edge.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.047.i.epil.init
  store ptr %.03348.i.epil.init, ptr %i.ah, align 8, !tbaa !27
  %i.ai = add nuw nsw i64 %.047.i.epil.init, 1    ; 3 uses
  %i.aj = icmp ult i64 %.047.i.epil.init, 63
  br i1 %i.aj, label %bb.k, label %getSortedRuns.exit, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai
  store ptr %.03348.i.epil.init, ptr %i.ak, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.k, %.lr.ph.i.epil.preheader, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ai, %bb.k ], [ %.047.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.033.lcssa.i = phi ptr [ %.03344.i, %bb.d ], [ %i.p, %.lr.ph.i.epil.preheader ], [ %i.p, %bb.k ], [ %i.p, %._crit_edge.i.loopexit.unr-lcssa ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.lcssa.i
  store ptr %.033.lcssa.i, ptr %i.al, align 8, !tbaa !27
  %i.am = add nuw nsw i64 %.0.lcssa.i, 1
  br label %getSortedRuns.exit.thread

getSortedRuns.exit.thread:                        ; preds = %._crit_edge.i, %bb.c
  %.sroa.531.4.i.ph = phi i64 [ 0, %bb.c ], [ %i.am, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.m

getSortedRuns.exit:                               ; preds = %bb.e, %bb.g, %bb.j
  %.lcssa194 = phi i64 [ %i.ai, %bb.j ], [ %i.y, %bb.e ], [ %i.ad, %bb.g ]
  %i.an = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getSortedRuns.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33, i32 noundef 38, i32 noundef 55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i64 noundef %.lcssa194, i64 noundef 64) #7 ; 2 uses
  %i.ao = extractvalue { i32, ptr } %i.an, 0      ; 3 uses
  %i.ap = extractvalue { i32, ptr } %i.an, 1      ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ao, ptr %i.ap, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %i.aq = ptrtoint ptr %i.ap to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not122 = icmp eq i32 %i.ao, 0
  br i1 %.not122, label %bb.m, label %bb.l, !prof !28

bb.l:                                             ; preds = %getSortedRuns.exit
  %i.ar = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %i.ao, ptr %i.ap, ptr nonnull @EI_mergeSorted.__zl_static_error_info.9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 78, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #7 ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0
  %i.at = extractvalue { i32, ptr } %i.ar, 1
  %i.au = ptrtoint ptr %i.at to i64
  br label %bb.ac

bb.m:                                             ; preds = %getSortedRuns.exit, %getSortedRuns.exit.thread
  %.0113.ph = phi i64 [ %.sroa.531.4.i.ph, %getSortedRuns.exit.thread ], [ %i.aq, %getSortedRuns.exit ] ; 8 uses
  %i.av = icmp eq i64 %.0113.ph, 0                ; 3 uses
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = add i64 %.0113.ph, 7                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = icmp ult i64 %i.aw, 16
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = call range(i64 3, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 2305843009213693951) %i.az, i1 true)
  %i.bb = sub nuw nsw i64 64, %i.ba
  %i.bc = select i1 %i.ay, i64 0, i64 %i.bb
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bd = phi i64 [ %i.bc, %bb.n ], [ 1, %bb.m ]  ; 2 uses
  %i.be = shl nuw nsw i64 1, %i.bd
  %i.bf = call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.be) #7 ; 6 uses
  %i.bg = call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 1, i64 noundef %i.f, i64 noundef 4) #7 ; 6 uses
  %.not123 = icmp eq ptr %i.bf, null
  br i1 %.not123, label %.thread150, label %bb.p, !prof !29

.thread150:                                       ; preds = %bb.o
  %i.bh = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_mergeSorted.__zl_static_error_info.12, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 87, i32 noundef 70, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.bi = extractvalue { i32, ptr } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i32, ptr } %i.bh, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bi, ptr %i.bj, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %i.bk = ptrtoint ptr %i.bj to i64
  br label %bb.ac

bb.p:                                             ; preds = %bb.o
  %.not124 = icmp eq ptr %i.bg, null
  br i1 %.not124, label %.thread153, label %bb.q, !prof !29

.thread153:                                       ; preds = %bb.p
  %i.bl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_mergeSorted.__zl_static_error_info.18, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 88, i32 noundef 70, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.bm = extractvalue { i32, ptr } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { i32, ptr } %i.bl, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bm, ptr %i.bn, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %i.bo = ptrtoint ptr %i.bn to i64
  br label %bb.ac

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %3, align 8, !tbaa !17
  %i.bq = mul i64 %.0113.ph, 10
  %i.br = call ptr @ZL_Encoder_getScratchSpace(ptr noundef %0, i64 noundef %i.bq) #7 ; 5 uses
  %.not.i130 = icmp eq ptr %i.br, null
  br i1 %.not.i130, label %writeHeader.exit, label %.preheader.i, !prof !29

.preheader.i:                                     ; preds = %bb.q
  br i1 %i.av, label %writeHeader.exit.thread, label %.lr.ph.i131

writeHeader.exit.thread:                          ; preds = %ZL_varintEncode.exit.i, %.preheader.i
  %.024.lcssa.i = phi ptr [ %i.br, %.preheader.i ], [ %i.co, %ZL_varintEncode.exit.i ]
  %i.bs = ptrtoint ptr %.024.lcssa.i to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @ZL_Encoder_sendCodecHeader(ptr noundef %0, ptr noundef nonnull %i.br, i64 noundef %i.bu) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.s

.lr.ph.i131:                                      ; preds = %.preheader.i, %ZL_varintEncode.exit.i
  %.030.i = phi i64 [ %i.cp, %ZL_varintEncode.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %.02429.i = phi ptr [ %i.co, %ZL_varintEncode.exit.i ], [ %i.br, %.preheader.i ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.030.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.030.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 3 uses
  %i.cd = icmp ugt i64 %i.cc, 127
  br i1 %i.cd, label %.lr.ph.i.i, label %ZL_varintEncode.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i131, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.02429.i, %.lr.ph.i131 ] ; 2 uses
  %.089.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %i.cc, %.lr.ph.i131 ] ; 3 uses
  %i.ce = trunc i64 %.089.i.i to i8
  %i.cf = or i8 %i.ce, -128
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  store i8 %i.cf, ptr %.010.i.i, align 1, !tbaa !30
  %i.ch = lshr i64 %.089.i.i, 7                   ; 2 uses
  %i.ci = icmp ugt i64 %.089.i.i, 16383
  br i1 %i.ci, label %.lr.ph.i.i, label %ZL_varintEncode.exit.i, !llvm.loop !22

ZL_varintEncode.exit.i:                           ; preds = %.lr.ph.i.i, %.lr.ph.i131
  %.08.lcssa.i.i = phi i64 [ %i.cc, %.lr.ph.i131 ], [ %i.ch, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi ptr [ %.02429.i, %.lr.ph.i131 ], [ %i.cg, %.lr.ph.i.i ] ; 2 uses
  %i.cj = trunc nuw nsw i64 %.08.lcssa.i.i to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  store i8 %i.cj, ptr %.0.lcssa.i.i, align 1, !tbaa !30
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %.02429.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.02429.i, i64 %i.cn ; 2 uses
  %i.cp = add nuw nsw i64 %.030.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cp, %.0113.ph
  br i1 %exitcond.not.i, label %writeHeader.exit.thread, label %.lr.ph.i131, !llvm.loop !23

writeHeader.exit:                                 ; preds = %bb.q
  %i.cq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @writeHeader.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, i32 noundef 59, i32 noundef 70, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.cr = extractvalue { i32, ptr } %i.cq, 0      ; 3 uses
  %i.cs = extractvalue { i32, ptr } %i.cq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cr, ptr %i.cs, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not125 = icmp eq i32 %i.cr, 0
  br i1 %.not125, label %bb.s, label %bb.r, !prof !31

bb.r:                                             ; preds = %writeHeader.exit
  %i.ct = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %i.cr, ptr %i.cs, ptr nonnull @EI_mergeSorted.__zl_static_error_info.21, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #7 ; 2 uses
  %i.cu = extractvalue { i32, ptr } %i.ct, 0
  %i.cv = extractvalue { i32, ptr } %i.ct, 1
  %i.cw = ptrtoint ptr %i.cv to i64
  br label %bb.ac

bb.s:                                             ; preds = %writeHeader.exit.thread, %writeHeader.exit
  br i1 %i.av, label %.thread162, label %.split

.split:                                           ; preds = %bb.s
  switch i64 %i.bd, label %.thread162 [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
  ]

bb.t:                                             ; preds = %.split
  %i.cx = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.bf) #7
  %i.cy = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.bg) #7
  %i.cz = call { i32, i64 } @ZL_MergeSorted_merge8x32(ptr noundef %i.cx, ptr noundef %i.cy, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.0113.ph) #7
  br label %bb.x

bb.u:                                             ; preds = %.split
  %i.da = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.bf) #7
  %i.db = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.bg) #7
  %i.dc = call { i32, i64 } @ZL_MergeSorted_merge16x32(ptr noundef %i.da, ptr noundef %i.db, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.0113.ph) #7
  br label %bb.x

bb.v:                                             ; preds = %.split
  %i.dd = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.bf) #7
  %i.de = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.bg) #7
end_hunk_0
