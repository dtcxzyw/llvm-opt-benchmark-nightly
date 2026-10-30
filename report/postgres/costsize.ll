Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/costsize?download=true
inline.NumInlined: 163
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cost_qual_eval_context = type { ptr, %struct.QualCost }
%struct.QualCost = type { double, double }
%struct.Path = type { i32, i32, ptr, ptr, ptr, i8, i8, i32, double, i32, double, double, ptr }
%struct.EstimationInfo = type { i32 }
%struct.SpecialJoinInfo = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr }

@seq_page_cost = dso_local local_unnamed_addr global double 1.000000e+00, align 8
@random_page_cost = dso_local local_unnamed_addr global double 4.000000e+00, align 8
@cpu_tuple_cost = dso_local local_unnamed_addr global double 1.000000e-02, align 8
@cpu_index_tuple_cost = dso_local local_unnamed_addr global double 5.000000e-03, align 8
@cpu_operator_cost = dso_local local_unnamed_addr global double 2.500000e-03, align 8
@parallel_tuple_cost = dso_local local_unnamed_addr global double 1.000000e-01, align 8
@parallel_setup_cost = dso_local local_unnamed_addr global double 1.000000e+03, align 8
@recursive_worktable_factor = dso_local local_unnamed_addr global double 1.000000e+01, align 8
@effective_cache_size = dso_local local_unnamed_addr global i32 524288, align 4
@disable_cost = dso_local local_unnamed_addr global double 1.000000e+10, align 8
@max_parallel_workers_per_gather = dso_local local_unnamed_addr global i32 2, align 4
@enable_seqscan = dso_local local_unnamed_addr global i8 1, align 1
@enable_indexscan = dso_local local_unnamed_addr global i8 1, align 1
@enable_indexonlyscan = dso_local local_unnamed_addr global i8 1, align 1
@enable_bitmapscan = dso_local local_unnamed_addr global i8 1, align 1
@enable_tidscan = dso_local local_unnamed_addr global i8 1, align 1
@enable_sort = dso_local local_unnamed_addr global i8 1, align 1
@enable_incremental_sort = dso_local local_unnamed_addr global i8 1, align 1
@enable_hashagg = dso_local local_unnamed_addr global i8 1, align 1
@enable_nestloop = dso_local local_unnamed_addr global i8 1, align 1
@enable_material = dso_local local_unnamed_addr global i8 1, align 1
@enable_memoize = dso_local local_unnamed_addr global i8 1, align 1
@enable_mergejoin = dso_local local_unnamed_addr global i8 1, align 1
@enable_hashjoin = dso_local local_unnamed_addr global i8 1, align 1
@enable_gathermerge = dso_local local_unnamed_addr global i8 1, align 1
@enable_partitionwise_join = dso_local local_unnamed_addr global i8 0, align 1
@enable_partitionwise_aggregate = dso_local local_unnamed_addr global i8 0, align 1
@enable_parallel_append = dso_local local_unnamed_addr global i8 1, align 1
@enable_parallel_hash = dso_local local_unnamed_addr global i8 1, align 1
@enable_partition_pruning = dso_local local_unnamed_addr global i8 1, align 1
@enable_presorted_aggregate = dso_local local_unnamed_addr global i8 1, align 1
@enable_async_append = dso_local local_unnamed_addr global i8 1, align 1
@.str = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"costsize.c\00", align 1
@__func__.cost_bitmap_tree_node = private unnamed_addr constant [22 x i8] c"cost_bitmap_tree_node\00", align 1
@work_mem = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"left and right pathkeys do not match in mergejoin\00", align 1
@__func__.initial_cost_mergejoin = private unnamed_addr constant [23 x i8] c"initial_cost_mergejoin\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"cannot handle unplanned sub-select\00", align 1
@__func__.cost_qual_eval_walker = private unnamed_addr constant [22 x i8] c"cost_qual_eval_walker\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unrecognized join type: %d\00", align 1
@__func__.calc_joinrel_size_estimate = private unnamed_addr constant [27 x i8] c"calc_joinrel_size_estimate\00", align 1
@parallel_leader_participation = external local_unnamed_addr global i8, align 1
@__func__.get_indexpath_pages = private unnamed_addr constant [20 x i8] c"get_indexpath_pages\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @clamp_row_est(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond = fcmp ugt double %0, 1.000000e+100
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp ugt double %0, 1.000000e+00
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call double @llvm.rint.f64(double %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi double [ %i.b, %bb.c ], [ 1.000000e+100, %bb.a ], [ 1.000000e+00, %bb.b ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 1073741824) i32 @clamp_width_est(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.04 = tail call i64 @llvm.umin.i64(i64 %0, i64 1073741823)
  %.0 = trunc nuw nsw i64 %.04 to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @cost_seqscan(ptr nofree noundef captures(none) initializes((40, 48)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %spec.select = select i1 %.not, ptr %2, ptr %3
  %.sink.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %.sink = load double, ptr %.sink.in, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store double %.sink, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.d = load i32, ptr %i.c, align 4
  call void @get_tablespace_page_costs(i32 noundef %i.d, ptr noundef null, ptr noundef nonnull %i.a) #14
  %i.e = load double, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.g = load i32, ptr %i.f, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %1, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %cost_qual_eval.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i32, ptr %i.k, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.q, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.k, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i.i, %i.t
  br i1 %i.u, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i.loopexit

cost_qual_eval.exit.i.loopexit:                   ; preds = %.lr.ph14.i.i
  %i.v = load <2 x double>, ptr %i.j, align 8
  br label %cost_qual_eval.exit.i

cost_qual_eval.exit.i:                            ; preds = %cost_qual_eval.exit.i.loopexit, %.lr.ph.i.i, %bb.b
  %i.w = phi <2 x double> [ %i.v, %cost_qual_eval.exit.i.loopexit ], [ zeroinitializer, %.lr.ph.i.i ], [ zeroinitializer, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.y = load <2 x double>, ptr %i.x, align 8
  %i.z = fadd <2 x double> %i.w, %i.y
  br label %get_restriction_qual_cost.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ab = load <2 x double>, ptr %i.aa, align 8
  br label %get_restriction_qual_cost.exit

get_restriction_qual_cost.exit:                   ; preds = %cost_qual_eval.exit.i, %bb.c
  %i.ac = phi <2 x double> [ %i.ab, %bb.c ], [ %i.z, %cost_qual_eval.exit.i ] ; 2 uses
  %i.ad = load double, ptr @cpu_tuple_cost, align 8
  %i.ae = extractelement <2 x double> %i.ac, i64 1
  %i.af = fadd double %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ah = load double, ptr %i.ag, align 8
  %i.ai = fmul double %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load double, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = load double, ptr %i.b, align 8          ; 2 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.ai) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.d, label %bb.h

bb.d:                                             ; preds = %get_restriction_qual_cost.exit
  %i.au = uitofp nneg i32 %i.as to double         ; 3 uses
  %i.av = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.e, label %get_parallel_divisor.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = call double @llvm.fmuladd.f64(double %i.au, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.ay = fcmp ogt double %i.ax, 0.000000e+00
  %i.az = select i1 %i.ay, double %i.ax, double -0.000000e+00
  %.0.i = fadd double %i.az, %i.au
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.d, %bb.e
  %.1.i = phi double [ %.0.i, %bb.e ], [ %i.au, %bb.d ] ; 2 uses
  %i.ba = fdiv double %i.aq, %.1.i
  %i.bb = fdiv double %i.ap, %.1.i                ; 3 uses
  %or.cond.i = fcmp ugt double %i.bb, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.f

bb.f:                                             ; preds = %get_parallel_divisor.exit
  %i.bc = fcmp ugt double %i.bb, 1.000000e+00
  br i1 %i.bc, label %bb.g, label %clamp_row_est.exit

bb.g:                                             ; preds = %bb.f
  %i.bd = call double @llvm.rint.f64(double %i.bb)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.f, %bb.g
  %.0.i37 = phi double [ %i.bd, %bb.g ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.f ]
  store double %.0.i37, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %get_restriction_qual_cost.exit, %clamp_row_est.exit
  %.035 = phi double [ %i.ba, %clamp_row_est.exit ], [ %i.aq, %get_restriction_qual_cost.exit ]
  %i.be = phi i64 [ -2, %clamp_row_est.exit ], [ -262146, %get_restriction_qual_cost.exit ]
  %i.bf = extractelement <2 x double> %i.ac, i64 0
  %i.bg = fadd double %i.bf, 0.000000e+00
  %i.bh = fadd double %i.bg, %i.am                ; 2 uses
  %i.bi = uitofp i32 %i.g to double
  %i.bj = fmul double %i.e, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = or i64 %i.bl, %i.be
  %i.bn = icmp ne i64 %i.bm, -1
  %i.bo = zext i1 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.bh, ptr %i.bq, align 8
  %i.br = fadd double %i.bh, %.035
  %i.bs = fadd double %i.bj, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.bs, ptr %i.bt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @get_tablespace_page_costs(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @cost_samplescan(ptr nofree noundef captures(none) initializes((40, 48)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, -1
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %.val = load ptr, ptr %i.p, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.h, %bb.b ], [ %i.r, %bb.c ]
  %i.s = load ptr, ptr %.in, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call ptr @GetTsmRoutine(i32 noundef %i.w) #14
  %.not41 = icmp eq ptr %3, null                  ; 2 uses
  %spec.select52 = select i1 %.not41, ptr %2, ptr %3
  %.sink.in = getelementptr inbounds nuw i8, ptr %spec.select52, i64 16
  %.sink = load double, ptr %.sink.in, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double %.sink, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.aa = load i32, ptr %i.z, align 4
  call void @get_tablespace_page_costs(i32 noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load double, ptr %i.b, align 8
  %i.ae = load double, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ag = load i32, ptr %i.af, align 8
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %1, ptr %4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %cost_qual_eval.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load i32, ptr %i.ak, align 4
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.aq, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.as = load i32, ptr %i.ak, align 4
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next.i.i, %i.at
  br i1 %i.au, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i.loopexit

cost_qual_eval.exit.i.loopexit:                   ; preds = %.lr.ph14.i.i
  %i.av = load <2 x double>, ptr %i.aj, align 8
  br label %cost_qual_eval.exit.i

cost_qual_eval.exit.i:                            ; preds = %cost_qual_eval.exit.i.loopexit, %.lr.ph.i.i, %bb.e
  %i.aw = phi <2 x double> [ %i.av, %cost_qual_eval.exit.i.loopexit ], [ zeroinitializer, %.lr.ph.i.i ], [ zeroinitializer, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ay = load <2 x double>, ptr %i.ax, align 8
  %i.az = fadd <2 x double> %i.aw, %i.ay
  br label %get_restriction_qual_cost.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.bb = load <2 x double>, ptr %i.ba, align 8
  br label %get_restriction_qual_cost.exit

get_restriction_qual_cost.exit:                   ; preds = %cost_qual_eval.exit.i, %bb.f
  %i.bc = phi <2 x double> [ %i.bb, %bb.f ], [ %i.az, %cost_qual_eval.exit.i ]
  %i.bd = load double, ptr @cpu_tuple_cost, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = load double, ptr %i.y, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bo, 0
  %spec.select = select i1 %i.bp, i64 -262145, i64 -1
  %.not42 = icmp eq ptr %i.ac, null
  %i.bq = select i1 %.not42, double %i.ae, double %i.ad
  %i.br = uitofp i32 %i.ag to double
  %i.bs = call double @llvm.fmuladd.f64(double %i.bq, double %i.br, double 0.000000e+00)
  %i.bt = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bd, i64 1
  %i.bu = fadd <2 x double> %i.bc, %i.bt          ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 1
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double %i.bf, double %i.bs)
  %i.bx = call double @llvm.fmuladd.f64(double %i.bl, double %i.bm, double %i.bw)
  %i.by = extractelement <2 x double> %i.bu, i64 0
  %i.bz = fadd double %i.by, %i.bj                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = or i64 %spec.select, %i.cb
  %i.cd = icmp ne i64 %i.cc, -1
  %i.ce = zext i1 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.bz, ptr %i.cg, align 8
  %i.ch = fadd double %i.bz, %i.bx
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ch, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

end_hunk_0
begin_hunk_1_@log

; Function Attrs: nounwind uwtable
define dso_local void @cost_index(ptr noundef initializes((40, 48)) %0, ptr noundef %1, double noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 360                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %.not = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 160 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load double, ptr %i.t, align 8
  store double %i.u, ptr %i.q, align 8
  %i.v = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %extract_nonindex_conditions.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load i32, ptr %i.x, align 4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph22.i, label %extract_nonindex_conditions.exit

.lr.ph22.i:                                       ; preds = %.lr.ph.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0121521.i = phi ptr [ %.1.i, %bb.e ], [ null, %.lr.ph.i ] ; 3 uses
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %i.af = load i8, ptr %i.ae, align 2, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph22.i
  %i.ah = tail call zeroext i1 @is_redundant_with_indexclauses(ptr noundef nonnull %i.ad, ptr noundef %i.w) #14
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call ptr @lappend(ptr noundef %.0121521.i, ptr noundef nonnull %i.ad) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph22.i
  %.1.i = phi ptr [ %i.ai, %bb.d ], [ %.0121521.i, %.lr.ph22.i ], [ %.0121521.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = load i32, ptr %i.x, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %.lr.ph22.i, label %extract_nonindex_conditions.exit.loopexit

extract_nonindex_conditions.exit.loopexit:        ; preds = %bb.e
  %.pre = load ptr, ptr %i.o, align 8
  %.pre152 = load ptr, ptr %i.s, align 8
  br label %extract_nonindex_conditions.exit

extract_nonindex_conditions.exit:                 ; preds = %extract_nonindex_conditions.exit.loopexit, %bb.b, %.lr.ph.i
  %i.am = phi ptr [ %i.w, %bb.b ], [ %i.w, %.lr.ph.i ], [ %.pre152, %extract_nonindex_conditions.exit.loopexit ]
  %i.an = phi ptr [ %i.p, %bb.b ], [ %i.p, %.lr.ph.i ], [ %.pre, %extract_nonindex_conditions.exit.loopexit ]
  %.012.lcssa.i = phi ptr [ null, %bb.b ], [ null, %.lr.ph.i ], [ %.1.i, %extract_nonindex_conditions.exit.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %.not.i115 = icmp eq ptr %i.ap, null
  br i1 %.not.i115, label %extract_nonindex_conditions.exit123, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %extract_nonindex_conditions.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load i32, ptr %i.aq, align 4
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph22.i118, label %extract_nonindex_conditions.exit123

.lr.ph22.i118:                                    ; preds = %.lr.ph.i116, %bb.h
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i122, %bb.h ], [ 0, %.lr.ph.i116 ] ; 2 uses
  %.0121521.i120 = phi ptr [ %.1.i121, %bb.h ], [ null, %.lr.ph.i116 ] ; 3 uses
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i119
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.ay = load i8, ptr %i.ax, align 2, !range !4, !noundef !5
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph22.i118
  %i.ba = tail call zeroext i1 @is_redundant_with_indexclauses(ptr noundef nonnull %i.aw, ptr noundef %i.am) #14
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = tail call ptr @lappend(ptr noundef %.0121521.i120, ptr noundef nonnull %i.aw) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph22.i118
  %.1.i121 = phi ptr [ %i.bb, %bb.g ], [ %.0121521.i120, %.lr.ph22.i118 ], [ %.0121521.i120, %bb.f ] ; 2 uses
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %i.bc = load i32, ptr %i.aq, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i122, %i.bd
  br i1 %i.be, label %.lr.ph22.i118, label %extract_nonindex_conditions.exit123

extract_nonindex_conditions.exit123:              ; preds = %bb.h, %extract_nonindex_conditions.exit, %.lr.ph.i116
  %.012.lcssa.i117 = phi ptr [ null, %extract_nonindex_conditions.exit ], [ null, %.lr.ph.i116 ], [ %.1.i121, %bb.h ]
  %i.bf = tail call ptr @list_concat(ptr noundef %.012.lcssa.i, ptr noundef %.012.lcssa.i117) #14
  br label %extract_nonindex_conditions.exit132

bb.i:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bh = load double, ptr %i.bg, align 8
  store double %i.bh, ptr %i.q, align 8
  %i.bi = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.bj = load ptr, ptr %i.s, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not.i124 = icmp eq ptr %i.bi, null
  br i1 %.not.i124, label %extract_nonindex_conditions.exit132, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load i32, ptr %i.bk, align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph22.i127, label %extract_nonindex_conditions.exit132

.lr.ph22.i127:                                    ; preds = %.lr.ph.i125, %bb.l
  %indvars.iv.i128 = phi i64 [ %indvars.iv.next.i131, %bb.l ], [ 0, %.lr.ph.i125 ] ; 2 uses
  %.0121521.i129 = phi ptr [ %.1.i130, %bb.l ], [ null, %.lr.ph.i125 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bl, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i128
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 18
  %i.bs = load i8, ptr %i.br, align 2, !range !4, !noundef !5
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph22.i127
  %i.bu = tail call zeroext i1 @is_redundant_with_indexclauses(ptr noundef nonnull %i.bq, ptr noundef %i.bj) #14
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call ptr @lappend(ptr noundef %.0121521.i129, ptr noundef nonnull %i.bq) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph22.i127
  %.1.i130 = phi ptr [ %i.bv, %bb.k ], [ %.0121521.i129, %.lr.ph22.i127 ], [ %.0121521.i129, %bb.j ] ; 2 uses
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i128, 1 ; 2 uses
  %i.bw = load i32, ptr %i.bk, align 4
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next.i131, %i.bx
  br i1 %i.by, label %.lr.ph22.i127, label %extract_nonindex_conditions.exit132

extract_nonindex_conditions.exit132:              ; preds = %bb.l, %.lr.ph.i125, %bb.i, %extract_nonindex_conditions.exit123
  %.0112 = phi ptr [ %i.bf, %extract_nonindex_conditions.exit123 ], [ null, %bb.i ], [ null, %.lr.ph.i125 ], [ %.1.i130, %bb.l ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = select i1 %i.n, i64 -5, i64 -3
  %i.cc = select i1 %3, i64 -1, i64 -262145
  %i.cd = and i64 %i.cb, %i.cc
  %i.ce = or i64 %i.ca, %i.cd
  %i.cf = icmp ne i64 %i.ce, -1
  %i.cg = zext i1 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef %1, ptr noundef %0, double noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g) #14
  %i.ck = load double, ptr %i.b, align 8          ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.ck, ptr %i.cl, align 8
  %i.cm = load double, ptr %i.c, align 8          ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.cm, ptr %i.cn, align 8
  %i.co = load double, ptr %i.a, align 8          ; 2 uses
  %i.cp = fadd double %i.co, 0.000000e+00         ; 3 uses
  %i.cq = fsub double %i.ck, %i.co
  %i.cr = fadd double %i.cq, 0.000000e+00
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.ct = load double, ptr %i.cs, align 8
  %i.cu = fmul double %i.cm, %i.ct                ; 3 uses
  %or.cond.i = fcmp ugt double %i.cu, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.m

bb.m:                                             ; preds = %extract_nonindex_conditions.exit132
  %i.cv = fcmp ugt double %i.cu, 1.000000e+00
  br i1 %i.cv, label %bb.n, label %clamp_row_est.exit

bb.n:                                             ; preds = %bb.m
  %i.cw = call double @llvm.rint.f64(double %i.cu)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %extract_nonindex_conditions.exit132, %bb.m, %bb.n
  %.0.i = phi double [ %i.cw, %bb.n ], [ 1.000000e+100, %extract_nonindex_conditions.exit132 ], [ 1.000000e+00, %bb.m ] ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 116
  %i.cy = load i32, ptr %i.cx, align 4
  call void @get_tablespace_page_costs(i32 noundef %i.cy, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #14
  %i.cz = fcmp ogt double %2, 1.000000e+00
  br i1 %i.cz, label %bb.o, label %bb.af

bb.o:                                             ; preds = %clamp_row_est.exit
  %i.da = fmul double %2, %.0.i                   ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.dc = load i32, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = uitofp i32 %i.de to double
  %i.dg = call i32 @llvm.umax.i32(i32 %i.dc, i32 1)
  %i.dh = uitofp i32 %i.dg to double              ; 17 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.dj = load double, ptr %i.di, align 8
  %i.dk = fadd double %i.dj, %i.df                ; 2 uses
  %i.dl = fcmp ogt double %i.dk, 1.000000e+00
  %i.dm = select i1 %i.dl, double %i.dk, double 1.000000e+00
  %i.dn = load i32, ptr @effective_cache_size, align 4
  %i.do = sitofp i32 %i.dn to double
  %i.dp = fmul nnan double %i.dh, %i.do
  %i.dq = fdiv double %i.dp, %i.dm                ; 2 uses
  %i.dr = fcmp ugt double %i.dq, 1.000000e+00
  %i.ds = call double @llvm.ceil.f64(double %i.dq)
  %.0.i133 = select i1 %i.dr, double %i.ds, double 1.000000e+00 ; 9 uses
  %i.dt = fcmp ult double %.0.i133, %i.dh         ; 2 uses
  %i.du = fmul nnan double %i.dh, 2.000000e+00    ; 6 uses
  br i1 %i.dt, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = fmul double %i.da, %i.du
  %i.dw = call double @llvm.fmuladd.f64(double %i.dh, double 2.000000e+00, double %i.da)
  %i.dx = fdiv double %i.dv, %i.dw                ; 2 uses
  %i.dy = fcmp ult double %i.dx, %i.dh
  br i1 %i.dy, label %bb.q, label %index_pages_fetched.exit

bb.q:                                             ; preds = %bb.p
  %i.dz = call double @llvm.ceil.f64(double %i.dx)
  br label %index_pages_fetched.exit

bb.r:                                             ; preds = %bb.o
  %i.ea = fmul double %i.du, %.0.i133
  %i.eb = fneg double %.0.i133
  %i.ec = call double @llvm.fmuladd.f64(double %i.dh, double 2.000000e+00, double %i.eb)
  %i.ed = fdiv double %i.ea, %i.ec                ; 2 uses
  %i.ee = fcmp ugt double %i.da, %i.ed
  br i1 %i.ee, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = fmul double %i.da, %i.du
  %i.eg = call double @llvm.fmuladd.f64(double %i.dh, double 2.000000e+00, double %i.da)
  %i.eh = fdiv double %i.ef, %i.eg
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ei = fsub double %i.da, %i.ed
  %i.ej = fsub double %i.dh, %.0.i133
  %i.ek = fmul double %i.ej, %i.ei
  %i.el = fdiv double %i.ek, %i.dh
  %i.em = fadd double %.0.i133, %i.el
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.037.i = phi double [ %i.eh, %bb.s ], [ %i.em, %bb.t ]
  %i.en = call double @llvm.ceil.f64(double %.037.i)
  br label %index_pages_fetched.exit

index_pages_fetched.exit:                         ; preds = %bb.p, %bb.q, %bb.u
  %.1.i134 = phi double [ %i.en, %bb.u ], [ %i.dz, %bb.q ], [ %i.dh, %bb.p ] ; 2 uses
  br i1 %i.n, label %bb.v, label %bb.w

bb.v:                                             ; preds = %index_pages_fetched.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ep = load double, ptr %i.eo, align 8
  %i.eq = fsub double 1.000000e+00, %i.ep
  %i.er = fmul double %.1.i134, %i.eq
  %i.es = call double @llvm.ceil.f64(double %i.er)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %index_pages_fetched.exit
  %.0107 = phi double [ %i.es, %bb.v ], [ %.1.i134, %index_pages_fetched.exit ] ; 2 uses
  %i.et = load double, ptr %i.f, align 8          ; 2 uses
  %i.eu = fmul double %.0107, %i.et
  %i.ev = fdiv double %i.eu, %2
  %i.ew = load double, ptr %i.c, align 8
  %i.ex = uitofp i32 %i.dc to double
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = call double @llvm.ceil.f64(double %i.ey)
  %i.fa = fmul double %2, %i.ez                   ; 6 uses
  br i1 %i.dt, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = fmul double %i.du, %i.fa
  %i.fc = call double @llvm.fmuladd.f64(double %i.dh, double 2.000000e+00, double %i.fa)
  %i.fd = fdiv double %i.fb, %i.fc                ; 2 uses
  %i.fe = fcmp ult double %i.fd, %i.dh
  br i1 %i.fe, label %bb.y, label %index_pages_fetched.exit138

bb.y:                                             ; preds = %bb.x
  %i.ff = call double @llvm.ceil.f64(double %i.fd)
  br label %index_pages_fetched.exit138

bb.z:                                             ; preds = %bb.w
  %i.fg = fmul double %i.du, %.0.i133
  %i.fh = fneg double %.0.i133
  %i.fi = call double @llvm.fmuladd.f64(double %i.dh, double 2.000000e+00, double %i.fh)
  %i.fj = fdiv double %i.fg, %i.fi                ; 2 uses
  %i.fk = fcmp ugt double %i.fa, %i.fj
  br i1 %i.fk, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = fmul double %i.du, %i.fa
  %i.fm = call double @llvm.fmuladd.f64(double %i.dh, double 2.000000e+00, double %i.fa)
  %i.fn = fdiv double %i.fl, %i.fm
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.fo = fsub double %i.fa, %i.fj
  %i.fp = fsub double %i.dh, %.0.i133
  %i.fq = fmul double %i.fp, %i.fo
  %i.fr = fdiv double %i.fq, %i.dh
  %i.fs = fadd double %.0.i133, %i.fr
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.037.i137 = phi double [ %i.fn, %bb.aa ], [ %i.fs, %bb.ab ]
  %i.ft = call double @llvm.ceil.f64(double %.037.i137)
  br label %index_pages_fetched.exit138

index_pages_fetched.exit138:                      ; preds = %bb.x, %bb.y, %bb.ac
  %.1.i136 = phi double [ %i.ft, %bb.ac ], [ %i.ff, %bb.y ], [ %i.dh, %bb.x ] ; 2 uses
  br i1 %i.n, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %index_pages_fetched.exit138
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.fv = load double, ptr %i.fu, align 8
  %i.fw = fsub double 1.000000e+00, %i.fv
  %i.fx = fmul double %.1.i136, %i.fw
  %i.fy = call double @llvm.ceil.f64(double %i.fx)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %index_pages_fetched.exit138
  %.1108 = phi double [ %i.fy, %bb.ad ], [ %.1.i136, %index_pages_fetched.exit138 ]
  %i.fz = fmul double %i.et, %.1108
  %i.ga = fdiv double %i.fz, %2
  br label %bb.as

bb.af:                                            ; preds = %clamp_row_est.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.gc = load i32, ptr %i.gb, align 8            ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ge = load i32, ptr %i.gd, align 8
  %i.gf = uitofp i32 %i.ge to double
  %i.gg = call i32 @llvm.umax.i32(i32 %i.gc, i32 1)
  %i.gh = uitofp i32 %i.gg to double              ; 10 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.gj = load double, ptr %i.gi, align 8
  %i.gk = fadd double %i.gj, %i.gf                ; 2 uses
  %i.gl = fcmp ogt double %i.gk, 1.000000e+00
  %i.gm = select i1 %i.gl, double %i.gk, double 1.000000e+00
  %i.gn = load i32, ptr @effective_cache_size, align 4
  %i.go = sitofp i32 %i.gn to double
  %i.gp = fmul nnan double %i.gh, %i.go
  %i.gq = fdiv double %i.gp, %i.gm                ; 2 uses
  %i.gr = fcmp ugt double %i.gq, 1.000000e+00
  %i.gs = call double @llvm.ceil.f64(double %i.gq)
  %.0.i139 = select i1 %i.gr, double %i.gs, double 1.000000e+00 ; 5 uses
  %i.gt = fcmp ult double %.0.i139, %i.gh
  %i.gu = fmul nnan double %i.gh, 2.000000e+00    ; 3 uses
  br i1 %i.gt, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gv = fmul double %.0.i, %i.gu
  %i.gw = call double @llvm.fmuladd.f64(double %i.gh, double 2.000000e+00, double %.0.i)
  %i.gx = fdiv double %i.gv, %i.gw                ; 2 uses
  %i.gy = fcmp ult double %i.gx, %i.gh
  br i1 %i.gy, label %bb.ah, label %index_pages_fetched.exit142

bb.ah:                                            ; preds = %bb.ag
  %i.gz = call double @llvm.ceil.f64(double %i.gx)
  br label %index_pages_fetched.exit142

bb.ai:                                            ; preds = %bb.af
  %i.ha = fmul double %i.gu, %.0.i139
  %i.hb = fneg double %.0.i139
  %i.hc = call double @llvm.fmuladd.f64(double %i.gh, double 2.000000e+00, double %i.hb)
  %i.hd = fdiv double %i.ha, %i.hc                ; 2 uses
  %i.he = fcmp ugt double %.0.i, %i.hd
  br i1 %i.he, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hf = fmul double %.0.i, %i.gu
  %i.hg = call double @llvm.fmuladd.f64(double %i.gh, double 2.000000e+00, double %.0.i)
  %i.hh = fdiv double %i.hf, %i.hg
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.hi = fsub double %.0.i, %i.hd
  %i.hj = fsub double %i.gh, %.0.i139
  %i.hk = fmul double %i.hj, %i.hi
  %i.hl = fdiv double %i.hk, %i.gh
  %i.hm = fadd double %.0.i139, %i.hl
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.037.i141 = phi double [ %i.hh, %bb.aj ], [ %i.hm, %bb.ak ]
  %i.hn = call double @llvm.ceil.f64(double %.037.i141)
  br label %index_pages_fetched.exit142

index_pages_fetched.exit142:                      ; preds = %bb.ag, %bb.ah, %bb.al
  %.1.i140 = phi double [ %i.hn, %bb.al ], [ %i.gz, %bb.ah ], [ %i.gh, %bb.ag ] ; 2 uses
  br i1 %i.n, label %bb.am, label %bb.an

bb.am:                                            ; preds = %index_pages_fetched.exit142
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.hp = load double, ptr %i.ho, align 8
  %i.hq = fsub double 1.000000e+00, %i.hp
  %i.hr = fmul double %.1.i140, %i.hq
  %i.hs = call double @llvm.ceil.f64(double %i.hr)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %index_pages_fetched.exit142
  %.2 = phi double [ %i.hs, %bb.am ], [ %.1.i140, %index_pages_fetched.exit142 ] ; 4 uses
  %i.ht = load double, ptr %i.f, align 8          ; 3 uses
  %i.hu = fmul double %.2, %i.ht                  ; 3 uses
  %i.hv = load double, ptr %i.c, align 8
  %i.hw = uitofp i32 %i.gc to double
  %i.hx = fmul double %i.hv, %i.hw
  %i.hy = call double @llvm.ceil.f64(double %i.hx) ; 2 uses
  br i1 %i.n, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ia = load double, ptr %i.hz, align 8
  %i.ib = fsub double 1.000000e+00, %i.ia
  %i.ic = fmul double %i.hy, %i.ib
  %i.id = call double @llvm.ceil.f64(double %i.ic)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.3 = phi double [ %i.id, %bb.ao ], [ %i.hy, %bb.an ] ; 3 uses
  %i.ie = fcmp ogt double %.3, 0.000000e+00
  br i1 %i.ie, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.if = fcmp ogt double %.3, 1.000000e+00
  br i1 %i.if, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ig = fadd double %.3, -1.000000e+00
  %i.ih = load double, ptr %i.e, align 8
  %i.ii = call double @llvm.fmuladd.f64(double %i.ig, double %i.ih, double %i.ht)
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar, %bb.aq, %bb.ae
  %.0110 = phi double [ %i.ga, %bb.ae ], [ %i.ii, %bb.ar ], [ %i.ht, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %.0109 = phi double [ %i.ev, %bb.ae ], [ %i.hu, %bb.ar ], [ %i.hu, %bb.aq ], [ %i.hu, %bb.ap ] ; 2 uses
  %.0 = phi double [ %.0107, %bb.ae ], [ %.2, %bb.ar ], [ %.2, %bb.aq ], [ %.2, %bb.ap ]
  br i1 %3, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.1 = select i1 %i.n, double -1.000000e+00, double %.0
  %i.ij = load double, ptr %i.g, align 8
  %i.ik = load i32, ptr @max_parallel_workers_per_gather, align 4
  %i.il = call i32 @compute_parallel_worker(ptr noundef nonnull %i.k, double noundef %.1, double noundef %i.ij, i32 noundef %i.ik) #14 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.il, ptr %i.im, align 4
  %i.in = icmp slt i32 %i.il, 1
  br i1 %i.in, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.io, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.ip = load double, ptr %i.d, align 8          ; 2 uses
  %i.iq = fmul double %i.ip, %i.ip
  %i.ir = fsub double %.0110, %.0109
  %i.is = call double @llvm.fmuladd.f64(double %i.iq, double %i.ir, double %.0109)
  %i.it = fadd double %i.cr, %i.is
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %1, ptr %4, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0112, i64 4 ; 2 uses
  %.not.i143 = icmp eq ptr %.0112, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, i8 0, i64 16, i1 false)
  br i1 %.not.i143, label %cost_qual_eval.exit, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.av
  %i.iw = getelementptr inbounds nuw i8, ptr %.0112, i64 16
  %i.ix = load i32, ptr %i.iv, align 4
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i144, %.lr.ph14.i
  %indvars.iv.i145 = phi i64 [ %indvars.iv.next.i146, %.lr.ph14.i ], [ 0, %.lr.ph.i144 ] ; 2 uses
  %i.iz = load ptr, ptr %i.iw, align 8
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.i145
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.jb, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %i.jd = load i32, ptr %i.iv, align 4
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next.i146, %i.je
  br i1 %i.jf, label %.lr.ph14.i, label %cost_qual_eval.exit.loopexit

cost_qual_eval.exit.loopexit:                     ; preds = %.lr.ph14.i
  %.sroa.0.0.copyload.pre = load double, ptr %i.iu, align 8
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.4.0.copyload.pre = load double, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8
  %i.jg = fadd double %i.cp, %.sroa.0.0.copyload.pre
  br label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %cost_qual_eval.exit.loopexit, %bb.av, %.lr.ph.i144
  %.sroa.4.0.copyload = phi double [ %.sroa.4.0.copyload.pre, %cost_qual_eval.exit.loopexit ], [ 0.000000e+00, %bb.av ], [ 0.000000e+00, %.lr.ph.i144 ]
  %.sroa.0.0.copyload = phi double [ %i.jg, %cost_qual_eval.exit.loopexit ], [ %i.cp, %bb.av ], [ %i.cp, %.lr.ph.i144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.jh = load double, ptr @cpu_tuple_cost, align 8
  %i.ji = fadd double %.sroa.4.0.copyload, %i.jh
  %i.jj = call double @llvm.fmuladd.f64(double %i.ji, double %.0.i, double 0.000000e+00)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8            ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load double, ptr %i.jm, align 8
  %i.jo = fadd double %.sroa.0.0.copyload, %i.jn  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jq = load double, ptr %i.jp, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.js = load double, ptr %i.jr, align 8         ; 2 uses
  %i.jt = call double @llvm.fmuladd.f64(double %i.jq, double %i.js, double %i.jj) ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jv = load i32, ptr %i.ju, align 4            ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %cost_qual_eval.exit
  %i.jx = uitofp nneg i32 %i.jv to double         ; 3 uses
  %i.jy = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.ax, label %get_parallel_divisor.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ka = call double @llvm.fmuladd.f64(double %i.jx, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.kb = fcmp ogt double %i.ka, 0.000000e+00
  %i.kc = select i1 %i.kb, double %i.ka, double -0.000000e+00
  %.0.i148 = fadd double %i.kc, %i.jx
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.aw, %bb.ax
  %.1.i147 = phi double [ %.0.i148, %bb.ax ], [ %i.jx, %bb.aw ] ; 2 uses
  %i.kd = fdiv double %i.js, %.1.i147             ; 3 uses
  %or.cond.i149 = fcmp ugt double %i.kd, 1.000000e+100
  br i1 %or.cond.i149, label %clamp_row_est.exit151, label %bb.ay

bb.ay:                                            ; preds = %get_parallel_divisor.exit
  %i.ke = fcmp ugt double %i.kd, 1.000000e+00
  br i1 %i.ke, label %bb.az, label %clamp_row_est.exit151

bb.az:                                            ; preds = %bb.ay
  %i.kf = call double @llvm.rint.f64(double %i.kd)
  br label %clamp_row_est.exit151

clamp_row_est.exit151:                            ; preds = %get_parallel_divisor.exit, %bb.ay, %bb.az
  %.0.i150 = phi double [ %i.kf, %bb.az ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.ay ]
  store double %.0.i150, ptr %i.jr, align 8
  %i.kg = fdiv double %i.jt, %.1.i147
  br label %bb.ba

bb.ba:                                            ; preds = %clamp_row_est.exit151, %cost_qual_eval.exit
  %.0111 = phi double [ %i.kg, %clamp_row_est.exit151 ], [ %i.jt, %cost_qual_eval.exit ]
  %i.kh = fadd double %i.it, %.0111
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.jo, ptr %i.ki, align 8
  %i.kj = fadd double %i.jo, %i.kh
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.kj, ptr %i.kk, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.at, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @list_concat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @index_pages_fetched(double noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.b = uitofp i32 %i.a to double                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.d = load double, ptr %i.c, align 8
  %i.e = fadd double %2, %i.d                     ; 2 uses
  %i.f = fcmp ogt double %i.e, 1.000000e+00
  %i.g = select i1 %i.f, double %i.e, double 1.000000e+00
  %i.h = load i32, ptr @effective_cache_size, align 4
  %i.i = sitofp i32 %i.h to double
  %i.j = fmul nnan double %i.b, %i.i
  %i.k = fdiv double %i.j, %i.g                   ; 2 uses
  %i.l = fcmp ugt double %i.k, 1.000000e+00
  %i.m = tail call double @llvm.ceil.f64(double %i.k)
  %.0 = select i1 %i.l, double %i.m, double 1.000000e+00 ; 5 uses
  %i.n = fcmp ult double %.0, %i.b
  %i.o = fmul nnan double %i.b, 2.000000e+00      ; 3 uses
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = fmul double %0, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.b, double 2.000000e+00, double %0)
  %i.r = fdiv double %i.p, %i.q                   ; 2 uses
  %i.s = fcmp ult double %i.r, %i.b
  br i1 %i.s, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.t = tail call double @llvm.ceil.f64(double %i.r)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.u = fmul double %i.o, %.0
  %i.v = fneg double %.0
  %i.w = tail call double @llvm.fmuladd.f64(double %i.b, double 2.000000e+00, double %i.v)
  %i.x = fdiv double %i.u, %i.w                   ; 2 uses
  %i.y = fcmp ugt double %0, %i.x
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = fmul double %0, %i.o
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.b, double 2.000000e+00, double %0)
  %i.ab = fdiv double %i.z, %i.aa
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = fsub double %0, %i.x
  %i.ad = fsub double %i.b, %.0
  %i.ae = fmul double %i.ad, %i.ac
  %i.af = fdiv double %i.ae, %i.b
  %i.ag = fadd double %.0, %i.af
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.037 = phi double [ %i.ab, %bb.e ], [ %i.ag, %bb.f ]
  %i.ah = tail call double @llvm.ceil.f64(double %.037)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.g
  %.1 = phi double [ %i.ah, %bb.g ], [ %i.t, %bb.c ], [ %i.b, %bb.b ]
  ret double %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #1

declare i32 @compute_parallel_worker(ptr noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @cost_qual_eval(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.not = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.b, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph14, label %.critedge

.lr.ph14:                                         ; preds = %.lr.ph, %.lr.ph14
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph14 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.h, ptr noundef nonnull %3) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.b, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph14, label %.critedge

.critedge:                                        ; preds = %.lr.ph14, %.lr.ph, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cost_bitmap_heap_scan(ptr nofree noundef captures(none) initializes((40, 48)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, double noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %spec.select = select i1 %.not, ptr %2, ptr %3
  %.sink.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %.sink = load double, ptr %.sink.in, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store double %.sink, ptr %i.e, align 8
  %i.f = call double @compute_bitmap_pages(ptr noundef %1, ptr noundef %2, ptr noundef %4, double noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %i.g = load double, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.k = load i32, ptr %i.j, align 4
  call void @get_tablespace_page_costs(i32 noundef %i.k, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #14
  %i.l = fcmp ult double %i.f, 2.000000e+00
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @llvm.umax.i32(i32 %i.i, i32 1)
  %i.n = uitofp i32 %i.m to double
  %i.o = load double, ptr %i.d, align 8           ; 2 uses
  %i.p = load double, ptr %i.c, align 8
  %i.q = fsub double %i.o, %i.p
  %i.r = fdiv double %i.f, %i.n
  %i.s = call double @sqrt(double noundef %i.r) #14
  %i.t = fneg double %i.q
  %i.u = call double @llvm.fmuladd.f64(double %i.t, double %i.s, double %i.o)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = load double, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.048 = phi double [ %i.u, %bb.b ], [ %i.v, %bb.c ]
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %1, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %cost_qual_eval.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i32, ptr %i.z, align 4
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.af, ptr noundef nonnull %6) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ah = load i32, ptr %i.z, align 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next.i.i, %i.ai
  br i1 %i.aj, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i.loopexit

cost_qual_eval.exit.i.loopexit:                   ; preds = %.lr.ph14.i.i
  %i.ak = load <2 x double>, ptr %i.y, align 8
  br label %cost_qual_eval.exit.i

cost_qual_eval.exit.i:                            ; preds = %cost_qual_eval.exit.i.loopexit, %.lr.ph.i.i, %bb.e
  %i.al = phi <2 x double> [ %i.ak, %cost_qual_eval.exit.i.loopexit ], [ zeroinitializer, %.lr.ph.i.i ], [ zeroinitializer, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.an = load <2 x double>, ptr %i.am, align 8
  %i.ao = fadd <2 x double> %i.al, %i.an
  br label %get_restriction_qual_cost.exit

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.aq = load <2 x double>, ptr %i.ap, align 8
  br label %get_restriction_qual_cost.exit

get_restriction_qual_cost.exit:                   ; preds = %cost_qual_eval.exit.i, %bb.f
  %i.ar = phi <2 x double> [ %i.aq, %bb.f ], [ %i.ao, %cost_qual_eval.exit.i ] ; 2 uses
  %i.as = load double, ptr @cpu_tuple_cost, align 8
  %i.at = extractelement <2 x double> %i.ar, i64 1
  %i.au = fadd double %i.at, %i.as
  %i.av = load double, ptr %i.b, align 8
  %i.aw = fmul double %i.au, %i.av                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.g, label %get_restriction_qual_cost.exit._crit_edge

get_restriction_qual_cost.exit._crit_edge:        ; preds = %get_restriction_qual_cost.exit
  %.pre = load double, ptr %i.e, align 8
  br label %bb.k

bb.g:                                             ; preds = %get_restriction_qual_cost.exit
  %i.ba = uitofp nneg i32 %i.ay to double         ; 3 uses
  %i.bb = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.h, label %get_parallel_divisor.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = call double @llvm.fmuladd.f64(double %i.ba, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.be = fcmp ogt double %i.bd, 0.000000e+00
  %i.bf = select i1 %i.be, double %i.bd, double -0.000000e+00
  %.0.i = fadd double %i.bf, %i.ba
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.g, %bb.h
  %.1.i = phi double [ %.0.i, %bb.h ], [ %i.ba, %bb.g ] ; 2 uses
  %i.bg = fdiv double %i.aw, %.1.i
  %i.bh = load double, ptr %i.e, align 8
  %i.bi = fdiv double %i.bh, %.1.i                ; 3 uses
  %or.cond.i = fcmp ugt double %i.bi, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.i

bb.i:                                             ; preds = %get_parallel_divisor.exit
  %i.bj = fcmp ugt double %i.bi, 1.000000e+00
  br i1 %i.bj, label %bb.j, label %clamp_row_est.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = call double @llvm.rint.f64(double %i.bi)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.i, %bb.j
  %.0.i52 = phi double [ %i.bk, %bb.j ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.i ] ; 2 uses
  store double %.0.i52, ptr %i.e, align 8
  br label %bb.k

bb.k:                                             ; preds = %get_restriction_qual_cost.exit._crit_edge, %clamp_row_est.exit
  %i.bl = phi double [ %.0.i52, %clamp_row_est.exit ], [ %.pre, %get_restriction_qual_cost.exit._crit_edge ]
  %.047 = phi double [ %i.bg, %clamp_row_est.exit ], [ %i.aw, %get_restriction_qual_cost.exit._crit_edge ]
  %i.bm = phi i64 [ -9, %clamp_row_est.exit ], [ -262153, %get_restriction_qual_cost.exit._crit_edge ]
  %i.bn = fadd double %i.g, 0.000000e+00
  %i.bo = extractelement <2 x double> %i.ar, i64 0
  %i.bp = fadd double %i.bn, %i.bo
  %i.bq = call double @llvm.fmuladd.f64(double %i.f, double %.048, double 0.000000e+00)
  %i.br = fadd double %i.bq, %.047
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fadd double %i.bp, %i.bv                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load double, ptr %i.bx, align 8
  %i.bz = call double @llvm.fmuladd.f64(double %i.by, double %i.bl, double %i.br)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = or i64 %i.cb, %i.bm
  %i.cd = icmp ne i64 %i.cc, -1
  %i.ce = zext i1 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.bw, ptr %i.cg, align 8
  %i.ch = fadd double %i.bw, %i.bz
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ch, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @compute_bitmap_pages(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  switch i32 %i.a, label %bb.e [
    i32 297, label %bb.b
    i32 300, label %bb.c
    i32 301, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.c = load double, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.e = load double, ptr @cpu_operator_cost, align 8
  %i.f = fmul double %i.e, 1.000000e-01
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load double, ptr %i.g, align 8
  %i.i = tail call double @llvm.fmuladd.f64(double %i.f, double %i.h, double %i.c)
  br label %cost_bitmap_tree_node.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %cost_bitmap_tree_node.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load double, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %cost_bitmap_tree_node.exit

bb.e:                                             ; preds = %bb.a
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.q = load i32, ptr %2, align 4
  %i.r = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.q) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1142, ptr noundef nonnull @__func__.cost_bitmap_tree_node) #14
  unreachable

cost_bitmap_tree_node.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.065 = phi double [ %i.i, %bb.b ], [ %i.k, %bb.c ], [ %i.n, %bb.d ]
  %.0.in = phi ptr [ %i.d, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ]
  %.0 = load double, ptr %.0.in, align 8          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.t = load double, ptr %i.s, align 8
  %i.u = fmul double %.0, %i.t                    ; 3 uses
  %or.cond.i = fcmp ugt double %i.u, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.f

bb.f:                                             ; preds = %cost_bitmap_tree_node.exit
  %i.v = fcmp ugt double %i.u, 1.000000e+00
  br i1 %i.v, label %bb.g, label %clamp_row_est.exit

bb.g:                                             ; preds = %bb.f
  %i.w = tail call double @llvm.rint.f64(double %i.u)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %cost_bitmap_tree_node.exit, %bb.f, %bb.g
  %.0.i = phi double [ %i.w, %bb.g ], [ 1.000000e+100, %cost_bitmap_tree_node.exit ], [ 1.000000e+00, %bb.f ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = uitofp i32 %i.y to double                ; 2 uses
  %i.aa = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1)
  %i.ab = uitofp i32 %i.aa to double              ; 4 uses
  %i.ac = fmul nnan double %i.ab, 2.000000e+00
  %i.ad = fmul double %.0.i, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ab, double 2.000000e+00, double %.0.i)
  %i.af = fdiv double %i.ad, %i.ae                ; 3 uses
  %i.ag = fcmp olt double %i.af, %i.z
  %i.ah = select i1 %i.ag, double %i.af, double %i.z ; 4 uses
  %i.ai = load i32, ptr @work_mem, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 10
  %i.al = tail call i32 @tbm_calculate_entries(i64 noundef %i.ak) #14
  %i.am = sitofp i32 %i.al to double              ; 2 uses
  %i.an = fcmp ogt double %3, 1.000000e+00
  br i1 %i.an, label %bb.h, label %bb.o

bb.h:                                             ; preds = %clamp_row_est.exit
  %i.ao = fmul double %3, %.0.i                   ; 6 uses
  %i.ap = load i32, ptr %i.x, align 8
  %i.aq = tail call fastcc double @get_indexpath_pages(ptr noundef nonnull %2)
  %i.ar = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 1)
  %i.as = uitofp i32 %i.ar to double              ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.au = load double, ptr %i.at, align 8
  %i.av = fadd double %i.aq, %i.au                ; 2 uses
  %i.aw = fcmp ogt double %i.av, 1.000000e+00
  %i.ax = select i1 %i.aw, double %i.av, double 1.000000e+00
  %i.ay = load i32, ptr @effective_cache_size, align 4
  %i.az = sitofp i32 %i.ay to double
  %i.ba = fmul nnan double %i.as, %i.az
  %i.bb = fdiv double %i.ba, %i.ax                ; 2 uses
  %i.bc = fcmp ugt double %i.bb, 1.000000e+00
  %i.bd = tail call double @llvm.ceil.f64(double %i.bb)
  %.0.i58 = select i1 %i.bc, double %i.bd, double 1.000000e+00 ; 5 uses
  %i.be = fcmp ult double %.0.i58, %i.as
  %i.bf = fmul nnan double %i.as, 2.000000e+00    ; 3 uses
  br i1 %i.be, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = fmul double %i.ao, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.as, double 2.000000e+00, double %i.ao)
  %i.bi = fdiv double %i.bg, %i.bh                ; 2 uses
  %i.bj = fcmp ult double %i.bi, %i.as
  br i1 %i.bj, label %bb.j, label %index_pages_fetched.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call double @llvm.ceil.f64(double %i.bi)
  br label %index_pages_fetched.exit

bb.k:                                             ; preds = %bb.h
  %i.bl = fmul double %i.bf, %.0.i58
  %i.bm = fneg double %.0.i58
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.as, double 2.000000e+00, double %i.bm)
  %i.bo = fdiv double %i.bl, %i.bn                ; 2 uses
  %i.bp = fcmp ugt double %i.ao, %i.bo
  br i1 %i.bp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = fmul double %i.ao, %i.bf
  %i.br = tail call double @llvm.fmuladd.f64(double %i.as, double 2.000000e+00, double %i.ao)
  %i.bs = fdiv double %i.bq, %i.br
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bt = fsub double %i.ao, %i.bo
  %i.bu = fsub double %i.as, %.0.i58
  %i.bv = fmul double %i.bu, %i.bt
  %i.bw = fdiv double %i.bv, %i.as
  %i.bx = fadd double %.0.i58, %i.bw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.037.i = phi double [ %i.bs, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = tail call double @llvm.ceil.f64(double %.037.i)
  br label %index_pages_fetched.exit

index_pages_fetched.exit:                         ; preds = %bb.i, %bb.j, %bb.n
  %.1.i = phi double [ %i.by, %bb.n ], [ %i.bk, %bb.j ], [ %i.as, %bb.i ]
  %i.bz = fdiv double %.1.i, %3
  br label %bb.o

bb.o:                                             ; preds = %index_pages_fetched.exit, %clamp_row_est.exit
  %.045 = phi double [ %i.bz, %index_pages_fetched.exit ], [ %i.af, %clamp_row_est.exit ] ; 2 uses
  %i.ca = fcmp ogt double %i.ah, %i.am
  br i1 %i.ca, label %bb.p, label %clamp_row_est.exit61

bb.p:                                             ; preds = %bb.o
  %i.cb = fmul nnan double %i.am, 5.000000e-01
  %i.cc = fsub double %i.ah, %i.cb                ; 2 uses
  %i.cd = fcmp olt double %i.cc, 0.000000e+00
  %i.ce = select i1 %i.cd, double 0.000000e+00, double %i.cc ; 3 uses
  %i.cf = fcmp ogt double %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.q, label %clamp_row_est.exit61

bb.q:                                             ; preds = %bb.p
  %i.cg = fsub double %i.ah, %i.ce
  %i.ch = load double, ptr %i.s, align 8          ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ce, i64 1
  %i.ck = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fdiv <2 x double> %i.cj, %i.cl
  %i.cn = insertelement <2 x double> poison, double %.0, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.ch, i64 1
  %i.cp = fmul <2 x double> %i.co, %i.cm          ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = extractelement <2 x double> %i.cp, i64 1
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.ch, double %i.cr) ; 3 uses
  %or.cond.i59 = fcmp ugt double %i.cs, 1.000000e+100
  br i1 %or.cond.i59, label %clamp_row_est.exit61, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = fcmp ugt double %i.cs, 1.000000e+00
  br i1 %i.ct, label %bb.s, label %clamp_row_est.exit61

bb.s:                                             ; preds = %bb.r
  %i.cu = tail call double @llvm.rint.f64(double %i.cs)
  br label %clamp_row_est.exit61

clamp_row_est.exit61:                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.1 = phi double [ %.0.i, %bb.o ], [ %.0.i, %bb.p ], [ %i.cu, %bb.s ], [ 1.000000e+100, %bb.q ], [ 1.000000e+00, %bb.r ]
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %clamp_row_est.exit61
  store double %.065, ptr %4, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %clamp_row_est.exit61
  %.not57 = icmp eq ptr %5, null
  br i1 %.not57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store double %.1, ptr %5, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cv = fcmp ult double %.045, %i.ab
  %i.cw = tail call double @llvm.ceil.f64(double %.045)
  %.146 = select i1 %i.cv, double %i.cw, double %i.ab
  ret double %.146
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @cost_bitmap_tree_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  switch i32 %i.a, label %bb.e [
    i32 297, label %bb.b
    i32 300, label %bb.c
    i32 301, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load double, ptr %i.b, align 8
  store double %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load double, ptr %i.d, align 8
  store double %i.e, ptr %2, align 8
  %i.f = load double, ptr @cpu_operator_cost, align 8
  %i.g = fmul double %i.f, 1.000000e-01
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load double, ptr %i.h, align 8
  %i.j = load double, ptr %1, align 8
  %i.k = tail call double @llvm.fmuladd.f64(double %i.g, double %i.i, double %i.j)
  store double %i.k, ptr %1, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load double, ptr %i.l, align 8
  store double %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load double, ptr %i.n, align 8
  store double %i.o, ptr %2, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load double, ptr %i.p, align 8
  store double %i.q, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load double, ptr %i.r, align 8
  store double %i.s, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.u = load i32, ptr %0, align 4
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.u) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1142, ptr noundef nonnull @__func__.cost_bitmap_tree_node) #14
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #4

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @cost_bitmap_and_node(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = load double, ptr @cpu_operator_cost, align 8 ; 2 uses
  %i.f = fmul double %i.e, 1.000000e-01           ; 2 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph44, label %.critedge

.lr.ph44:                                         ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.j = load ptr, ptr %i.i, align 8              ; 9 uses
  %i.k = load i32, ptr %i.j, align 4
  switch i32 %i.k, label %.split [
    i32 297, label %bb.d
    i32 300, label %bb.c
    i32 301, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph44
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  br label %list_head.exit.peel

bb.c:                                             ; preds = %.lr.ph44
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.p = load double, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  br label %list_head.exit.peel

bb.d:                                             ; preds = %.lr.ph44
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.s = load double, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.v = load double, ptr %i.u, align 8
  %i.w = tail call double @llvm.fmuladd.f64(double %i.f, double %i.v, double %i.s)
  br label %list_head.exit.peel

list_head.exit.peel:                              ; preds = %bb.d, %bb.c, %bb.b
  %.027.peel = phi double [ %i.w, %bb.d ], [ %i.p, %bb.c ], [ %i.m, %bb.b ]
  %.0.in.peel = phi ptr [ %i.t, %bb.d ], [ %i.q, %bb.c ], [ %i.n, %bb.b ]
  %.0.peel = load double, ptr %.0.in.peel, align 8 ; 2 uses
  %i.x = fadd double %.027.peel, 0.000000e+00     ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %list_head.exit.peel, %list_head.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %list_head.exit ], [ 1, %list_head.exit.peel ] ; 2 uses
  %.0213043 = phi double [ %i.as, %list_head.exit ], [ %i.x, %list_head.exit.peel ]
  %.0203142 = phi double [ %i.aq, %list_head.exit ], [ %.0.peel, %list_head.exit.peel ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.z = load ptr, ptr %i.y, align 8              ; 9 uses
  %i.aa = load i32, ptr %i.z, align 4
  switch i32 %i.aa, label %.split [
    i32 297, label %bb.e
    i32 300, label %bb.f
    i32 301, label %bb.g
  ]

bb.e:                                             ; preds = %.peel.next
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.f, double %i.af, double %i.ac)
  br label %list_head.exit

bb.f:                                             ; preds = %.peel.next
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  br label %list_head.exit

bb.g:                                             ; preds = %.peel.next
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.al = load double, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  br label %list_head.exit

.split:                                           ; preds = %.peel.next, %.lr.ph44
  %.lcssa = phi ptr [ %i.j, %.lr.ph44 ], [ %i.z, %.peel.next ]
  %i.an = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.ao = load i32, ptr %.lcssa, align 4
  %i.ap = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.ao) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1142, ptr noundef nonnull @__func__.cost_bitmap_tree_node) #14
  unreachable

list_head.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
end_hunk_1
begin_hunk_2_@cost_tidscan:bb.a
  %i.bb = load double, ptr %i.ba, align 8
  %i.bc = load double, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = select i1 %i.bf, i64 -262145, i64 -1
  %i.bh = extractelement <2 x double> %i.au, i64 1
  %i.bi = fadd double %i.bh, %i.av
  %i.bj = fsub double %i.bi, %.sroa.3.0.copyload
  %i.bk = call double @llvm.fmuladd.f64(double %i.y, double %.04964, double 0.000000e+00)
  %i.bl = call double @llvm.fmuladd.f64(double %i.bj, double %.04964, double %i.bk)
  %i.bm = call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double %i.bl)
  %i.bn = extractelement <2 x double> %i.au, i64 0
  %i.bo = fadd double %.sroa.3.0.copyload, %i.bn
  %i.bp = fadd double %i.bo, 0.000000e+00
  %i.bq = fadd double %i.bp, %i.az                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = or i64 %i.bg, %i.bs
  %.not55 = icmp ne i64 %i.bt, -1
  %i.bu = zext i1 %.not55 to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.bq, ptr %i.bw, align 8
  %i.bx = fadd double %i.bq, %i.bm
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.bx, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.d:                                             ; preds = %.lr.ph70
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %.val = load ptr, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call double @estimate_array_length(ptr noundef %1, ptr noundef %i.cd) #14
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph70, %bb.d
  %i.cf = phi i32 [ %.pre, %bb.d ], [ %i.g, %.lr.ph70 ] ; 3 uses
  %.pn = phi double [ %i.ce, %bb.d ], [ 1.000000e+00, %.lr.ph70 ]
  %.1 = fadd double %.0496569, %.pn               ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next, %i.cg
  br i1 %i.ch, label %.lr.ph70, label %.lr.ph.i
}

declare double @estimate_array_length(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @cost_tidrangescan(ptr nofree noundef captures(none) initializes((40, 48)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %6 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %spec.select64 = select i1 %.not, ptr %2, ptr %4
  %.sink.in = getelementptr inbounds nuw i8, ptr %spec.select64, i64 16
  %.sink = load double, ptr %.sink.in, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store double %.sink, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call double @clauselist_selectivity(ptr noundef %1, ptr noundef %3, i32 noundef %i.e, i32 noundef 0, ptr noundef null) #14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.j = load double, ptr %i.i, align 8
  %i.k = fmul double %i.f, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %1, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %3, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %cost_qual_eval.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i32, ptr %i.m, align 4
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph14.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.s, ptr noundef nonnull %6) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = load i32, ptr %i.m, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.w, label %.lr.ph14.i, label %cost_qual_eval.exit.loopexit

cost_qual_eval.exit.loopexit:                     ; preds = %.lr.ph14.i
  %.sroa.3.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.3.0.copyload.pre = load double, ptr %.sroa.3.0..sroa_idx.phi.trans.insert, align 8
  br label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %cost_qual_eval.exit.loopexit, %bb.a, %.lr.ph.i
  %.sroa.3.0.copyload = phi double [ %.sroa.3.0.copyload.pre, %cost_qual_eval.exit.loopexit ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.y = load i32, ptr %i.x, align 4
  call void @get_tablespace_page_costs(i32 noundef %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %i.z = load double, ptr %i.a, align 8
  %i.aa = load double, ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %cost_qual_eval.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %1, ptr %5, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %cost_qual_eval.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i32, ptr %i.ae, align 4
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.ak, ptr noundef nonnull %5) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next.i.i, %i.an
  br i1 %i.ao, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i.loopexit

cost_qual_eval.exit.i.loopexit:                   ; preds = %.lr.ph14.i.i
  %i.ap = load <2 x double>, ptr %i.ad, align 8
  br label %cost_qual_eval.exit.i

cost_qual_eval.exit.i:                            ; preds = %cost_qual_eval.exit.i.loopexit, %.lr.ph.i.i, %bb.b
  %i.aq = phi <2 x double> [ %i.ap, %cost_qual_eval.exit.i.loopexit ], [ zeroinitializer, %.lr.ph.i.i ], [ zeroinitializer, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.as = load <2 x double>, ptr %i.ar, align 8
  %i.at = fadd <2 x double> %i.aq, %i.as
  br label %get_restriction_qual_cost.exit

bb.c:                                             ; preds = %cost_qual_eval.exit
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.av = load <2 x double>, ptr %i.au, align 8
  br label %get_restriction_qual_cost.exit

get_restriction_qual_cost.exit:                   ; preds = %cost_qual_eval.exit.i, %bb.c
  %i.aw = phi <2 x double> [ %i.av, %bb.c ], [ %i.at, %cost_qual_eval.exit.i ] ; 2 uses
  %i.ax = load double, ptr @cpu_tuple_cost, align 8
  %i.ay = extractelement <2 x double> %i.aw, i64 1
  %i.az = fadd double %i.ay, %i.ax
  %i.ba = fsub double %i.az, %.sroa.3.0.copyload
  %i.bb = fmul double %i.k, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bh = load double, ptr %i.bg, align 8
  %i.bi = load double, ptr %i.c, align 8          ; 2 uses
  %i.bj = call double @llvm.fmuladd.f64(double %i.bh, double %i.bi, double %i.bb) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bl = load i32, ptr %i.bk, align 4            ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.d, label %bb.h

bb.d:                                             ; preds = %get_restriction_qual_cost.exit
  %i.bn = uitofp nneg i32 %i.bl to double         ; 3 uses
  %i.bo = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %get_parallel_divisor.exit

bb.e:                                             ; preds = %bb.d
  %i.bq = call double @llvm.fmuladd.f64(double %i.bn, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.br = fcmp ogt double %i.bq, 0.000000e+00
  %i.bs = select i1 %i.br, double %i.bq, double -0.000000e+00
  %.0.i = fadd double %i.bs, %i.bn
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.d, %bb.e
  %.1.i = phi double [ %.0.i, %bb.e ], [ %i.bn, %bb.d ] ; 2 uses
  %i.bt = fdiv double %i.bj, %.1.i
  %i.bu = fdiv double %i.bi, %.1.i                ; 3 uses
  %or.cond.i = fcmp ugt double %i.bu, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.f

bb.f:                                             ; preds = %get_parallel_divisor.exit
  %i.bv = fcmp ugt double %i.bu, 1.000000e+00
  br i1 %i.bv, label %bb.g, label %clamp_row_est.exit

bb.g:                                             ; preds = %bb.f
  %i.bw = call double @llvm.rint.f64(double %i.bu)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.f, %bb.g
  %.0.i50 = phi double [ %i.bw, %bb.g ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.f ]
  store double %.0.i50, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %clamp_row_est.exit, %get_restriction_qual_cost.exit
  %.046 = phi double [ %i.bt, %clamp_row_est.exit ], [ %i.bj, %get_restriction_qual_cost.exit ]
  %i.bx = icmp eq i32 %i.bl, 0
  %spec.select = select i1 %i.bx, i64 -262161, i64 -17
  %i.by = extractelement <2 x double> %i.aw, i64 0
  %i.bz = fadd double %.sroa.3.0.copyload, %i.by
  %i.ca = fadd double %i.bz, %i.bf                ; 2 uses
  %i.cb = uitofp i32 %i.h to double
  %i.cc = fmul double %i.f, %i.cb
  %i.cd = call double @llvm.ceil.f64(double %i.cc) ; 2 uses
  %i.ce = fcmp ole double %i.cd, 0.000000e+00
  %i.cf = fadd double %i.cd, -1.000000e+00
  %i.cg = select i1 %i.ce, double 0.000000e+00, double %i.cf
  %i.ch = call double @llvm.fmuladd.f64(double %i.aa, double %i.cg, double %i.z)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = or i64 %i.cj, %spec.select
  %.not48 = icmp ne i64 %i.ck, -1
  %i.cl = zext i1 %.not48 to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ca, ptr %i.cn, align 8
  %i.co = fadd double %i.ca, %.046
  %i.cp = fadd double %i.ch, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.cp, ptr %i.cq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare double @clauselist_selectivity(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @cost_subqueryscan(ptr nofree noundef captures(none) initializes((40, 52), (56, 72)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @list_concat_copy(ptr noundef %i.b, ptr noundef %i.d) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.036 = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load double, ptr %i.j, align 8
  %i.l = tail call double @clauselist_selectivity(ptr noundef %1, ptr noundef %.036, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.m = fmul double %i.k, %i.l                   ; 3 uses
  %or.cond.i = fcmp ugt double %i.m, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp ugt double %i.m, 1.000000e+00
  br i1 %i.n, label %bb.f, label %clamp_row_est.exit

bb.f:                                             ; preds = %bb.e
  %i.o = tail call double @llvm.rint.f64(double %i.m)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi double [ %i.o, %bb.f ], [ 1.000000e+100, %bb.d ], [ 1.000000e+00, %bb.e ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double %.0.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 0
  %spec.select = select i1 %i.s, i64 -262145, i64 -1
  %i.t = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, %spec.select
  %.not38 = icmp ne i64 %i.y, -1
  %i.z = zext i1 %.not38 to i32
  %i.aa = add i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ad = load double, ptr %i.ac, align 8         ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store double %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ag = load double, ptr %i.af, align 8         ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store double %i.ag, ptr %i.ah, align 8
  %i.ai = icmp eq ptr %.036, null
  %or.cond = and i1 %4, %i.ai
  br i1 %or.cond, label %bb.j, label %bb.g

bb.g:                                             ; preds = %clamp_row_est.exit
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %1, ptr %5, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %cost_qual_eval.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load i32, ptr %i.am, align 4
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.as, ptr noundef nonnull %5) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.am, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i.i, %i.av
  br i1 %i.aw, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i.loopexit

cost_qual_eval.exit.i.loopexit:                   ; preds = %.lr.ph14.i.i
  %i.ax = load <2 x double>, ptr %i.al, align 8
  %.pre.pre = load ptr, ptr %i.h, align 8
  %.pre46.pre = load double, ptr %i.p, align 8
  %.pre47.pre = load double, ptr %i.ae, align 8
  %.pre48.pre = load double, ptr %i.ah, align 8
  br label %cost_qual_eval.exit.i

cost_qual_eval.exit.i:                            ; preds = %cost_qual_eval.exit.i.loopexit, %.lr.ph.i.i, %bb.h
  %.pre48 = phi double [ %.pre48.pre, %cost_qual_eval.exit.i.loopexit ], [ %i.ag, %.lr.ph.i.i ], [ %i.ag, %bb.h ]
  %.pre47 = phi double [ %.pre47.pre, %cost_qual_eval.exit.i.loopexit ], [ %i.ad, %.lr.ph.i.i ], [ %i.ad, %bb.h ]
  %.pre46 = phi double [ %.pre46.pre, %cost_qual_eval.exit.i.loopexit ], [ %.0.i, %.lr.ph.i.i ], [ %.0.i, %bb.h ]
  %.pre = phi ptr [ %.pre.pre, %cost_qual_eval.exit.i.loopexit ], [ %i.t, %.lr.ph.i.i ], [ %i.t, %bb.h ]
  %i.ay = phi <2 x double> [ %i.ax, %cost_qual_eval.exit.i.loopexit ], [ zeroinitializer, %.lr.ph.i.i ], [ zeroinitializer, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ba = load <2 x double>, ptr %i.az, align 8
  %i.bb = fadd <2 x double> %i.ay, %i.ba
  br label %get_restriction_qual_cost.exit

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.bd = load <2 x double>, ptr %i.bc, align 8
  br label %get_restriction_qual_cost.exit

get_restriction_qual_cost.exit:                   ; preds = %cost_qual_eval.exit.i, %bb.i
  %i.be = phi double [ %i.ag, %bb.i ], [ %.pre48, %cost_qual_eval.exit.i ]
  %i.bf = phi double [ %i.ad, %bb.i ], [ %.pre47, %cost_qual_eval.exit.i ]
  %i.bg = phi double [ %.0.i, %bb.i ], [ %.pre46, %cost_qual_eval.exit.i ]
  %i.bh = phi ptr [ %i.t, %bb.i ], [ %.pre, %cost_qual_eval.exit.i ]
  %i.bi = phi <2 x double> [ %i.bd, %bb.i ], [ %i.bb, %cost_qual_eval.exit.i ] ; 2 uses
  %i.bj = load double, ptr @cpu_tuple_cost, align 8
  %i.bk = extractelement <2 x double> %i.bi, i64 1
  %i.bl = fadd double %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bn = load double, ptr %i.bm, align 8
  %i.bo = fmul double %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = extractelement <2 x double> %i.bi, i64 0
  %i.bu = fadd double %i.bt, %i.bs                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bw = load double, ptr %i.bv, align 8
  %i.bx = call double @llvm.fmuladd.f64(double %i.bw, double %i.bg, double %i.bo)
  %i.by = fadd double %i.bu, %i.bf
  store double %i.by, ptr %i.ae, align 8
  %i.bz = fadd double %i.bu, %i.bx
  %i.ca = fadd double %i.bz, %i.be
  store double %i.ca, ptr %i.ah, align 8
  br label %bb.j

bb.j:                                             ; preds = %clamp_row_est.exit, %get_restriction_qual_cost.exit
  ret void
}

declare ptr @list_concat_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @cost_functionscan(ptr nofree noundef captures(none) initializes((40, 48)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %5 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %.val = load ptr, ptr %i.n, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ]
  %i.q = load ptr, ptr %.in, align 8
  %.not37 = icmp eq ptr %3, null                  ; 2 uses
  %spec.select49 = select i1 %.not37, ptr %2, ptr %3
  %.sink.in = getelementptr inbounds nuw i8, ptr %spec.select49, i64 16
  %.sink = load double, ptr %.sink.in, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double %.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.t = load ptr, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %1, ptr %5, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.t, ptr noundef nonnull %5), !inline_history !7 ; 0 uses
  %.sroa.0.0.copyload = load double, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %1, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %cost_qual_eval.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i32, ptr %i.z, align 4
  %i.ac = icmp sgt i32 %i.ab, 0
end_hunk_2
begin_hunk_3_@cost_append:bb.a
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph142, label %.critedge

.lr.ph142:                                        ; preds = %bb.d, %.lr.ph142
  %i.ap = phi double [ %i.bd, %.lr.ph142 ], [ 0.000000e+00, %bb.d ]
  %i.aq = phi i32 [ %i.ba, %.lr.ph142 ], [ %i.m, %bb.d ]
  %i.ar = phi double [ %i.ax, %.lr.ph142 ], [ 0.000000e+00, %bb.d ]
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %.lr.ph142 ], [ 0, %bb.d ] ; 2 uses
  %i.as = load ptr, ptr %i.ai, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv158
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = fadd double %i.aw, %i.ar                ; 3 uses
  store double %i.ax, ptr %i.q, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add i32 %i.aq, %i.az                    ; 2 uses
  store i32 %i.ba, ptr %i.n, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = fadd double %i.bc, %i.ap                ; 3 uses
  store double %i.bd, ptr %i.p, align 8
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.be = load i32, ptr %i.am, align 4
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next159, %i.bf
  br i1 %i.bg, label %.lr.ph142, label %.critedge, !llvm.loop !11

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.bh = load ptr, ptr %i.ac, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call zeroext i1 @pathkeys_count_contained_in(ptr noundef nonnull %i.y, ptr noundef %i.bl, ptr noundef nonnull %i.c) #14
  br i1 %i.bm, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i8, ptr @enable_incremental_sort, align 1, !range !4, !noundef !5
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  %or.cond = select i1 %i.bo, i1 %i.bq, i1 false
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bu = load double, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bw = load double, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.by = load double, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = load i32, ptr @work_mem, align 4
  %i.ce = load double, ptr %i.ad, align 8
  call void @cost_incremental_sort(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %i.y, i32 noundef %i.bp, i32 noundef %i.bs, double noundef %i.bu, double noundef %i.bw, double noundef %i.by, i32 noundef %i.cc, double noundef 0.000000e+00, i32 noundef %i.cd, double noundef %i.ce)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.cg = load double, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.ci = load double, ptr %i.ch, align 8         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = load i32, ptr @work_mem, align 4
  %i.co = load double, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call fastcc void @cost_tuplesort(ptr noundef %i.a, ptr noundef %i.b, double noundef %i.ci, i32 noundef %i.cm, double noundef 0.000000e+00, i32 noundef %i.cn, double noundef %i.co)
  %i.cp = load double, ptr %i.a, align 8
  %i.cq = fadd double %i.cg, %i.cp                ; 2 uses
  store double %i.ci, ptr %i.ae, align 8
  %i.cr = load i8, ptr @enable_sort, align 1, !range !4, !noundef !5
  %i.cs = xor i8 %i.cr, 1
  %not..i = zext nneg i8 %i.cs to i32
  %i.ct = add i32 %i.bs, %not..i
  store i32 %i.ct, ptr %i.af, align 8
  store double %i.cq, ptr %i.ag, align 8
  %i.cu = load double, ptr %i.b, align 8
  %i.cv = fadd double %i.cq, %i.cu
  store double %i.cv, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.0106 = phi ptr [ %i.bj, %bb.e ], [ %2, %bb.h ], [ %2, %bb.g ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0106, i64 40
  %i.cx = load double, ptr %i.cw, align 8
  %i.cy = load double, ptr %i.q, align 8
  %i.cz = fadd double %i.cx, %i.cy                ; 2 uses
  store double %i.cz, ptr %i.q, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %.0106, i64 48
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = load i32, ptr %i.n, align 8
  %i.dd = add i32 %i.dc, %i.db
  store i32 %i.dd, ptr %i.n, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0106, i64 56
  %i.df = load double, ptr %i.de, align 8
  %i.dg = load double, ptr %i.o, align 8
  %i.dh = fadd double %i.df, %i.dg
  store double %i.dh, ptr %i.o, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0106, i64 64
  %i.dj = load double, ptr %i.di, align 8
  %i.dk = load double, ptr %i.p, align 8
  %i.dl = fadd double %i.dj, %i.dk                ; 2 uses
  store double %i.dl, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = load i32, ptr %i.aa, align 4
  %i.dn = sext i32 %i.dm to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.dn
  br i1 %.not, label %bb.e, label %.critedge, !llvm.loop !12

bb.j:                                             ; preds = %bb.b
  %i.do = sitofp i32 %i.g to double               ; 3 uses
  %i.dp = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.dq = trunc nuw i8 %i.dp to i1                ; 3 uses
  br i1 %i.dq, label %bb.k, label %get_parallel_divisor.exit

bb.k:                                             ; preds = %bb.j
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.do, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.ds = fcmp ogt double %i.dr, 0.000000e+00
  %i.dt = select i1 %i.ds, double %i.dr, double -0.000000e+00
  %.0.i = fadd double %i.dt, %i.do
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.j, %bb.k
  %.1.i = phi double [ %.0.i, %bb.k ], [ %i.do, %bb.j ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 8 uses
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %bb.l, label %get_parallel_divisor.exit..critedge123_crit_edge

get_parallel_divisor.exit..critedge123_crit_edge: ; preds = %get_parallel_divisor.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %.critedge123

bb.l:                                             ; preds = %get_parallel_divisor.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dz = load i32, ptr %i.dy, align 8            ; 4 uses
  %i.ea = load ptr, ptr %i.dx, align 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load double, ptr %i.ec, align 8         ; 2 uses
  store double %i.ed, ptr %i.o, align 8
  %i.ee = icmp sgt i32 %i.dz, 0
  br i1 %i.ee, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ef = getelementptr i8, ptr %i.eb, i64 36
  %.val124.peel = load i32, ptr %i.ef, align 4
  %i.eg = sitofp i32 %.val124.peel to double      ; 3 uses
  br i1 %i.dq, label %bb.n, label %get_parallel_divisor.exit128.peel

bb.n:                                             ; preds = %bb.m
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.ei = fcmp ogt double %i.eh, 0.000000e+00
  %i.ej = select i1 %i.ei, double %i.eh, double -0.000000e+00
  %.0.i127.peel = fadd double %i.ej, %i.eg
  br label %get_parallel_divisor.exit128.peel

get_parallel_divisor.exit128.peel:                ; preds = %bb.n, %bb.m
  %.1.i126.peel = phi double [ %.0.i127.peel, %bb.n ], [ %i.eg, %bb.m ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.el = load double, ptr %i.ek, align 8
  %i.em = fdiv double %.1.i126.peel, %.1.i
  %i.en = tail call double @llvm.fmuladd.f64(double %i.el, double %i.em, double 0.000000e+00) ; 2 uses
  store double %i.en, ptr %i.q, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ep = load double, ptr %i.eo, align 8
  %i.eq = fadd double %i.ep, 0.000000e+00         ; 2 uses
  store double %i.eq, ptr %i.p, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.es = load double, ptr %i.er, align 8
  %i.et = fdiv double %i.es, %.1.i
  %i.eu = fadd double %i.et, 0.000000e+00         ; 2 uses
  store double %i.eu, ptr %i.q, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %get_parallel_divisor.exit128.peel
  %i.ev = phi double [ %i.eq, %get_parallel_divisor.exit128.peel ], [ 0.000000e+00, %bb.o ] ; 2 uses
  %i.ew = phi double [ %i.en, %get_parallel_divisor.exit128.peel ], [ %i.eu, %bb.o ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = add i32 %i.ey, %i.m                     ; 2 uses
  store i32 %i.ez, ptr %i.n, align 8
  %or.cond.i129.peel = fcmp ugt double %i.ew, 1.000000e+100
  br i1 %or.cond.i129.peel, label %clamp_row_est.exit.peel, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fa = fcmp ugt double %i.ew, 1.000000e+00
  br i1 %i.fa, label %bb.r, label %clamp_row_est.exit.peel

bb.r:                                             ; preds = %bb.q
  %i.fb = tail call double @llvm.rint.f64(double %i.ew)
  br label %clamp_row_est.exit.peel

clamp_row_est.exit.peel:                          ; preds = %bb.r, %bb.q, %bb.p
  %.0.i130.peel = phi double [ %i.fb, %bb.r ], [ 1.000000e+100, %bb.p ], [ 1.000000e+00, %bb.q ] ; 3 uses
  store double %.0.i130.peel, ptr %i.q, align 8
  %i.fc = load i32, ptr %i.du, align 4
  %i.fd = icmp sgt i32 %i.fc, 1
  br i1 %i.fd, label %.peel.next, label %.critedge123

.peel.next:                                       ; preds = %clamp_row_est.exit.peel
  %sext = sext i32 %i.g to i64
  %sext167 = sext i32 %i.dz to i64
  br label %bb.t

.critedge123:                                     ; preds = %clamp_row_est.exit, %clamp_row_est.exit.peel, %get_parallel_divisor.exit..critedge123_crit_edge
  %.pre169171 = phi double [ 0.000000e+00, %get_parallel_divisor.exit..critedge123_crit_edge ], [ %.0.i130.peel, %clamp_row_est.exit.peel ], [ %.0.i130, %clamp_row_est.exit ]
  %i.fe = phi double [ 0.000000e+00, %get_parallel_divisor.exit..critedge123_crit_edge ], [ %i.ev, %clamp_row_est.exit.peel ], [ %i.kc, %clamp_row_est.exit ]
  %i.ff = phi i32 [ %.pre, %get_parallel_divisor.exit..critedge123_crit_edge ], [ %i.dz, %clamp_row_est.exit.peel ], [ %i.dz, %clamp_row_est.exit ] ; 7 uses
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %append_nonpartial_cost.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge123
  %i.fh = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.ff) ; 13 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.fi) #14 ; 14 uses
  %i.fk = getelementptr i8, ptr %i.s, i64 16      ; 5 uses
  %i.fl = load i32, ptr %i.du, align 4            ; 3 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph116.preheader.i, label %.lr.ph125.i

.lr.ph116.preheader.i:                            ; preds = %.lr.ph.i
  %i.fn = zext i32 %i.fh to i64
  %i.fo = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not71.i146 = icmp eq i32 %i.fh, 0
  br i1 %.not71.i146, label %.split107.i, label %.lr.ph148

.lr.ph116.i:                                      ; preds = %.lr.ph148
  %i.fp = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not71.i = icmp eq i64 %indvars.iv.next.i, %i.fn
  br i1 %.not71.i, label %.split107.i, label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph116.preheader.i, %.lr.ph116.i
  %i.fq = phi ptr [ %i.fp, %.lr.ph116.i ], [ %i.fo, %.lr.ph116.preheader.i ]
  %indvars.iv.i147 = phi i64 [ %indvars.iv.next.i, %.lr.ph116.i ], [ 0, %.lr.ph116.preheader.i ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i147
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.fu = load double, ptr %i.ft, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i147, 1 ; 4 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.i147
  store double %i.fu, ptr %i.fv, align 8
  %i.fw = load i32, ptr %i.du, align 4            ; 3 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next.i, %i.fx
  br i1 %i.fy, label %.lr.ph116.i, label %.split.loopexit.i

.split107.i:                                      ; preds = %.lr.ph116.i, %.lr.ph116.preheader.i
  %.lcssa136 = phi i32 [ %i.fl, %.lr.ph116.preheader.i ], [ %i.fw, %.lr.ph116.i ] ; 2 uses
  %.lcssa = phi ptr [ %i.fo, %.lr.ph116.preheader.i ], [ %i.fp, %.lr.ph116.i ]
  %.not.i.i = icmp eq ptr %.lcssa, null
  %spec.select131 = select i1 %.not.i.i, i32 %.lcssa136, i32 %i.fh ; 2 uses
  %i.fz = icmp sge i32 %spec.select131, %.lcssa136
  br label %.lr.ph125.i

.split.loopexit.i:                                ; preds = %.lr.ph148
  %i.ga = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.split107.i, %.lr.ph.i, %.split.loopexit.i
  %i.gb = phi i1 [ %i.fz, %.split107.i ], [ true, %.split.loopexit.i ], [ true, %.lr.ph.i ] ; 2 uses
  %.06199.ph.i = phi i32 [ %i.fh, %.split107.i ], [ %i.ga, %.split.loopexit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %.ph178.i = phi i32 [ %spec.select131, %.split107.i ], [ %i.fw, %.split.loopexit.i ], [ %i.fl, %.lr.ph.i ] ; 2 uses
  %.ph.i = add i32 %i.fh, -1                      ; 2 uses
  %i.gc = icmp sgt i32 %i.fh, 0                   ; 2 uses
  br i1 %i.gc, label %.lr.ph125.split.us.split.i, label %.lr.ph125.split.split.i

.lr.ph125.split.us.split.i:                       ; preds = %.lr.ph125.i
  br i1 %i.gb, label %.lr.ph142.preheader.i, label %.lr.ph139.preheader.i

.lr.ph139.preheader.i:                            ; preds = %.lr.ph125.split.us.split.i
  %wide.trip.count.i = zext nneg i32 %i.fh to i64 ; 2 uses
  %.not74.us.i208 = icmp eq i32 %.06199.ph.i, %i.ff
  br i1 %.not74.us.i208, label %.critedge76.i, label %.lr.ph120.us.i.lr.ph

.lr.ph120.us.i.lr.ph:                             ; preds = %.lr.ph139.preheader.i
  %i.gd = sext i32 %.ph178.i to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ge = icmp eq i32 %i.fh, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod224 = trunc i32 %i.fh to i1
  br label %.lr.ph120.us.i

.lr.ph120.us.i:                                   ; preds = %._crit_edge.us.i, %.lr.ph120.us.i.lr.ph
  %.in = phi i32 [ %.06199.ph.i, %.lr.ph120.us.i.lr.ph ], [ %i.gf, %._crit_edge.us.i ]
  %.059123.us137.i210 = phi i32 [ %.ph.i, %.lr.ph120.us.i.lr.ph ], [ %spec.select.us.i.lcssa, %._crit_edge.us.i ]
  %indvars.iv161.i209 = phi i64 [ %i.gd, %.lr.ph120.us.i.lr.ph ], [ %indvars.iv.next162.i, %._crit_edge.us.i ] ; 2 uses
  %i.gf = add i32 %.in, 1                         ; 2 uses
  %i.gg = load ptr, ptr %i.fk, align 8
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %indvars.iv161.i209
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gk = load double, ptr %i.gj, align 8
  %i.gl = sext i32 %.059123.us137.i210 to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.gl ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8
  %i.go = fadd double %i.gk, %i.gn
  store double %i.go, ptr %i.gm, align 8
  %.pre.i = load double, ptr %i.fj, align 8       ; 2 uses
  br i1 %i.ge, label %.epil.preheader, label %.lr.ph120.us.i.new

.lr.ph120.us.i.new:                               ; preds = %.lr.ph120.us.i, %.lr.ph120.us.i.new
  %i.gp = phi double [ %i.gz, %.lr.ph120.us.i.new ], [ %.pre.i, %.lr.ph120.us.i ] ; 2 uses
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i.1, %.lr.ph120.us.i.new ], [ 0, %.lr.ph120.us.i ] ; 4 uses
  %.160118.us.i = phi i32 [ %spec.select.us.i.1, %.lr.ph120.us.i.new ], [ 0, %.lr.ph120.us.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph120.us.i.new ], [ 0, %.lr.ph120.us.i ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv158.i
  %i.gr = load double, ptr %i.gq, align 8         ; 2 uses
  %i.gs = fcmp olt double %i.gr, %i.gp            ; 2 uses
  %i.gt = trunc nuw nsw i64 %indvars.iv158.i to i32
  %spec.select.us.i = select i1 %i.gs, i32 %i.gt, i32 %.160118.us.i
  %indvars.iv.next159.i = or disjoint i64 %indvars.iv158.i, 1 ; 2 uses
  %i.gu = select i1 %i.gs, double %i.gr, double %i.gp ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next159.i
  %i.gw = load double, ptr %i.gv, align 8         ; 2 uses
  %i.gx = fcmp olt double %i.gw, %i.gu            ; 2 uses
  %i.gy = trunc nuw nsw i64 %indvars.iv.next159.i to i32
  %spec.select.us.i.1 = select i1 %i.gx, i32 %i.gy, i32 %spec.select.us.i ; 3 uses
  %indvars.iv.next159.i.1 = add nuw nsw i64 %indvars.iv158.i, 2 ; 2 uses
  %i.gz = select i1 %i.gx, double %i.gw, double %i.gu ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph120.us.i.new, !llvm.loop !13

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph120.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph120.us.i
  %.epil.init = phi double [ %.pre.i, %.lr.ph120.us.i ], [ %i.gz, %._crit_edge.us.i.unr-lcssa ]
  %indvars.iv158.i.epil.init = phi i64 [ 0, %.lr.ph120.us.i ], [ %indvars.iv.next159.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.160118.us.i.epil.init = phi i32 [ 0, %.lr.ph120.us.i ], [ %spec.select.us.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv158.i.epil.init
  %i.hb = load double, ptr %i.ha, align 8
  %i.hc = fcmp olt double %i.hb, %.epil.init
  %i.hd = trunc nuw nsw i64 %indvars.iv158.i.epil.init to i32
  %spec.select.us.i.epil = select i1 %i.hc, i32 %i.hd, i32 %.160118.us.i.epil.init
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %spec.select.us.i.lcssa = phi i32 [ %spec.select.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %spec.select.us.i.epil, %.epil.preheader ]
  %indvars.iv.next162.i = add nsw i64 %indvars.iv161.i209, 1 ; 2 uses
  %i.he = load i32, ptr %i.du, align 4
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp sge i64 %indvars.iv.next162.i, %i.hf
  %.not74.us.i = icmp eq i32 %i.gf, %i.ff
  %or.cond211 = select i1 %i.hg, i1 true, i1 %.not74.us.i
  br i1 %or.cond211, label %.critedge76.i, label %.lr.ph120.us.i

.lr.ph125.split.split.i:                          ; preds = %.lr.ph125.i
  %.not74.peel.i = icmp eq i32 %.06199.ph.i, %i.ff
  %or.cond.i = select i1 %i.gb, i1 true, i1 %.not74.peel.i
  br i1 %or.cond.i, label %._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph125.split.split.i
  %i.hh = sext i32 %.ph178.i to i64               ; 2 uses
  %i.hi = load ptr, ptr %i.fk, align 8
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.hm = load double, ptr %i.hl, align 8
  %i.hn = sext i32 %.ph.i to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.hn ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8
  %i.hq = fadd double %i.hm, %i.hp
  store double %i.hq, ptr %i.ho, align 8
  %indvars.iv.next155.peel.i = add nsw i64 %i.hh, 1 ; 2 uses
  %i.hr = load i32, ptr %i.du, align 4
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next155.peel.i, %i.hs
  br i1 %i.ht, label %.lr.ph135.i.preheader, label %._crit_edge.i

.lr.ph135.i.preheader:                            ; preds = %bb.s
  %.364122134.i203 = add i32 %.06199.ph.i, 1      ; 2 uses
  %.not74.i204 = icmp eq i32 %.364122134.i203, %i.ff
  br i1 %.not74.i204, label %.critedge76.i, label %.lr.ph207

.lr.ph135.i:                                      ; preds = %.lr.ph207
  %.364122134.i = add i32 %.364122134.i206, 1     ; 2 uses
  %.not74.i = icmp eq i32 %.364122134.i, %i.ff
  br i1 %.not74.i, label %.critedge76.i, label %.lr.ph207, !llvm.loop !14

.lr.ph207:                                        ; preds = %.lr.ph135.i.preheader, %.lr.ph135.i
  %.364122134.i206 = phi i32 [ %.364122134.i, %.lr.ph135.i ], [ %.364122134.i203, %.lr.ph135.i.preheader ]
  %indvars.iv154.i205 = phi i64 [ %indvars.iv.next155.i, %.lr.ph135.i ], [ %indvars.iv.next155.peel.i, %.lr.ph135.i.preheader ] ; 2 uses
  %i.hu = load ptr, ptr %i.fk, align 8
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %indvars.iv154.i205
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 64
  %i.hy = load double, ptr %i.hx, align 8
  %i.hz = load double, ptr %i.fj, align 8
  %i.ia = fadd double %i.hy, %i.hz
  store double %i.ia, ptr %i.fj, align 8
  %indvars.iv.next155.i = add nsw i64 %indvars.iv154.i205, 1 ; 2 uses
  %i.ib = load i32, ptr %i.du, align 4
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv.next155.i, %i.ic
  br i1 %i.id, label %.lr.ph135.i, label %..critedge76.i.loopexit192_crit_edge, !llvm.loop !14

..critedge76.i.loopexit192_crit_edge:             ; preds = %.lr.ph207
  br label %.critedge76.i, !llvm.loop !14

.critedge76.i:                                    ; preds = %.lr.ph135.i, %._crit_edge.us.i, %.lr.ph135.i.preheader, %..critedge76.i.loopexit192_crit_edge, %.lr.ph139.preheader.i
  br i1 %i.gc, label %.lr.ph142.preheader.i, label %._crit_edge.i

.lr.ph142.preheader.i:                            ; preds = %.critedge76.i, %.lr.ph125.split.us.split.i
  %wide.trip.count167.i = zext nneg i32 %i.fh to i64 ; 2 uses
  %.pre169.i = load double, ptr %i.fj, align 8    ; 2 uses
  %xtraiter225 = and i64 %wide.trip.count167.i, 1
  %i.ie = icmp eq i32 %i.fh, 1
  br i1 %i.ie, label %.lr.ph142.i.epil.preheader, label %.lr.ph142.preheader.i.new

.lr.ph142.preheader.i.new:                        ; preds = %.lr.ph142.preheader.i
  %unroll_iter231 = and i64 %wide.trip.count167.i, 2147483646
  br label %.lr.ph142.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph142.i
  %lcmp.mod228.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod228.not, label %._crit_edge.loopexit.i, label %.lr.ph142.i.epil.preheader

.lr.ph142.i.epil.preheader:                       ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph142.preheader.i
  %.epil.init227 = phi double [ %.pre169.i, %.lr.ph142.preheader.i ], [ %i.iw, %._crit_edge.loopexit.i.unr-lcssa ]
  %indvars.iv164.i.epil.init = phi i64 [ 0, %.lr.ph142.preheader.i ], [ %indvars.iv.next165.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.057140.i.epil.init = phi i32 [ 0, %.lr.ph142.preheader.i ], [ %spec.select77.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod230 = trunc i32 %i.fh to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv164.i.epil.init
  %i.ig = load double, ptr %i.if, align 8
  %i.ih = fcmp ogt double %i.ig, %.epil.init227
  %i.ii = trunc nuw nsw i64 %indvars.iv164.i.epil.init to i32
  %spec.select77.i.epil = select i1 %i.ih, i32 %i.ii, i32 %.057140.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph142.i.epil.preheader
  %spec.select77.i.lcssa = phi i32 [ %spec.select77.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %spec.select77.i.epil, %.lr.ph142.i.epil.preheader ]
  %i.ij = zext nneg i32 %spec.select77.i.lcssa to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge76.i, %bb.s, %.lr.ph125.split.split.i
  %.057.lcssa.i = phi i64 [ 0, %.critedge76.i ], [ %i.ij, %._crit_edge.loopexit.i ], [ 0, %.lr.ph125.split.split.i ], [ 0, %bb.s ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.057.lcssa.i
  %i.il = load double, ptr %i.ik, align 8
  %.pre168 = load double, ptr %i.p, align 8
  %.pre169.pre = load double, ptr %i.q, align 8
  br label %append_nonpartial_cost.exit

.lr.ph142.i:                                      ; preds = %.lr.ph142.i, %.lr.ph142.preheader.i.new
  %i.im = phi double [ %.pre169.i, %.lr.ph142.preheader.i.new ], [ %i.iw, %.lr.ph142.i ] ; 2 uses
  %indvars.iv164.i = phi i64 [ 0, %.lr.ph142.preheader.i.new ], [ %indvars.iv.next165.i.1, %.lr.ph142.i ] ; 4 uses
  %.057140.i = phi i32 [ 0, %.lr.ph142.preheader.i.new ], [ %spec.select77.i.1, %.lr.ph142.i ]
  %niter232 = phi i64 [ 0, %.lr.ph142.preheader.i.new ], [ %niter232.next.1, %.lr.ph142.i ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv164.i
  %i.io = load double, ptr %i.in, align 8         ; 2 uses
  %i.ip = fcmp ogt double %i.io, %i.im            ; 2 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv164.i to i32
  %spec.select77.i = select i1 %i.ip, i32 %i.iq, i32 %.057140.i
  %indvars.iv.next165.i = or disjoint i64 %indvars.iv164.i, 1 ; 2 uses
  %i.ir = select i1 %i.ip, double %i.io, double %i.im ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next165.i
  %i.it = load double, ptr %i.is, align 8         ; 2 uses
  %i.iu = fcmp ogt double %i.it, %i.ir            ; 2 uses
  %i.iv = trunc nuw nsw i64 %indvars.iv.next165.i to i32
  %spec.select77.i.1 = select i1 %i.iu, i32 %i.iv, i32 %spec.select77.i ; 3 uses
  %indvars.iv.next165.i.1 = add nuw nsw i64 %indvars.iv164.i, 2 ; 2 uses
  %i.iw = select i1 %i.iu, double %i.it, double %i.ir ; 2 uses
  %niter232.next.1 = add i64 %niter232, 2         ; 2 uses
  %niter232.ncmp.1 = icmp eq i64 %niter232.next.1, %unroll_iter231
  br i1 %niter232.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph142.i, !llvm.loop !15

append_nonpartial_cost.exit:                      ; preds = %.critedge123, %._crit_edge.i
  %.pre169 = phi double [ %.pre169.pre, %._crit_edge.i ], [ %.pre169171, %.critedge123 ]
  %i.ix = phi double [ %.pre168, %._crit_edge.i ], [ %i.fe, %.critedge123 ]
  %.055.i = phi double [ %i.il, %._crit_edge.i ], [ 0.000000e+00, %.critedge123 ]
  %i.iy = fadd double %.055.i, %i.ix
  br label %.critedge

bb.t:                                             ; preds = %clamp_row_est.exit, %.peel.next
  %i.iz = phi i32 [ %i.ez, %.peel.next ], [ %i.kg, %clamp_row_est.exit ]
  %i.ja = phi double [ %i.ev, %.peel.next ], [ %i.kc, %clamp_row_est.exit ] ; 2 uses
  %i.jb = phi double [ %.0.i130.peel, %.peel.next ], [ %.0.i130, %clamp_row_est.exit ] ; 2 uses
  %i.jc = phi double [ %i.ed, %.peel.next ], [ %i.jk, %clamp_row_est.exit ] ; 3 uses
  %indvars.iv161 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next162, %clamp_row_est.exit ] ; 4 uses
  %i.jd = load ptr, ptr %i.dx, align 8
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv161
  %i.jf = load ptr, ptr %i.je, align 8            ; 6 uses
  %i.jg = icmp slt i64 %indvars.iv161, %sext
  br i1 %i.jg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.ji = load double, ptr %i.jh, align 8         ; 2 uses
  %i.jj = fcmp olt double %i.jc, %i.ji
  %. = select i1 %i.jj, double %i.jc, double %i.ji ; 2 uses
  store double %., ptr %i.o, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.jk = phi double [ %i.jc, %bb.t ], [ %., %bb.u ]
  %i.jl = icmp slt i64 %indvars.iv161, %sext167
  br i1 %i.jl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jn = load double, ptr %i.jm, align 8
  %i.jo = fdiv double %i.jn, %.1.i
  %i.jp = fadd double %i.jb, %i.jo                ; 2 uses
  store double %i.jp, ptr %i.q, align 8
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.jq = getelementptr i8, ptr %i.jf, i64 36
  %.val124 = load i32, ptr %i.jq, align 4
  %i.jr = sitofp i32 %.val124 to double           ; 3 uses
  br i1 %i.dq, label %bb.y, label %get_parallel_divisor.exit128

bb.y:                                             ; preds = %bb.x
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jr, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.jt = fcmp ogt double %i.js, 0.000000e+00
  %i.ju = select i1 %i.jt, double %i.js, double -0.000000e+00
  %.0.i127 = fadd double %i.ju, %i.jr
  br label %get_parallel_divisor.exit128

get_parallel_divisor.exit128:                     ; preds = %bb.x, %bb.y
  %.1.i126 = phi double [ %.0.i127, %bb.y ], [ %i.jr, %bb.x ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jw = load double, ptr %i.jv, align 8
  %i.jx = fdiv double %.1.i126, %.1.i
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.jx, double %i.jb) ; 2 uses
  store double %i.jy, ptr %i.q, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %i.ka = load double, ptr %i.jz, align 8
  %i.kb = fadd double %i.ka, %i.ja                ; 2 uses
  store double %i.kb, ptr %i.p, align 8
  br label %bb.z

bb.z:                                             ; preds = %get_parallel_divisor.exit128, %bb.w
  %i.kc = phi double [ %i.kb, %get_parallel_divisor.exit128 ], [ %i.ja, %bb.w ] ; 2 uses
  %i.kd = phi double [ %i.jy, %get_parallel_divisor.exit128 ], [ %i.jp, %bb.w ] ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.kf = load i32, ptr %i.ke, align 8
  %i.kg = add i32 %i.iz, %i.kf                    ; 2 uses
  store i32 %i.kg, ptr %i.n, align 8
  %or.cond.i129 = fcmp ugt double %i.kd, 1.000000e+100
  br i1 %or.cond.i129, label %clamp_row_est.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kh = fcmp ugt double %i.kd, 1.000000e+00
  br i1 %i.kh, label %bb.ab, label %clamp_row_est.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ki = tail call double @llvm.rint.f64(double %i.kd)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.z, %bb.aa, %bb.ab
  %.0.i130 = phi double [ %i.ki, %bb.ab ], [ 1.000000e+100, %bb.z ], [ 1.000000e+00, %bb.aa ] ; 3 uses
  store double %.0.i130, ptr %i.q, align 8
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.kj = load i32, ptr %i.du, align 4
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %indvars.iv.next162, %i.kk
  br i1 %i.kl, label %bb.t, label %.critedge123, !llvm.loop !16

.critedge:                                        ; preds = %bb.i, %.lr.ph142, %.preheader, %bb.d, %append_nonpartial_cost.exit
  %i.km = phi double [ %i.bd, %.lr.ph142 ], [ %i.iy, %append_nonpartial_cost.exit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %bb.d ], [ %i.dl, %bb.i ]
  %i.kn = phi double [ %i.ax, %.lr.ph142 ], [ %.pre169, %append_nonpartial_cost.exit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %bb.d ], [ %i.cz, %bb.i ]
  %i.ko = load double, ptr @cpu_tuple_cost, align 8
  %i.kp = fmul double %i.ko, 5.000000e-01
  %i.kq = call double @llvm.fmuladd.f64(double %i.kp, double %i.kn, double %i.km)
  store double %i.kq, ptr %i.p, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %.critedge
  ret void
}

declare zeroext i1 @pathkeys_count_contained_in(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @cost_merge_append(ptr nofree noundef captures(none) initializes((48, 52), (56, 72)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  %spec.select = select i1 %i.e, i64 -270337, i64 -8193
  %i.f = tail call i32 @llvm.smax.i32(i32 %3, i32 2)
  %i.g = uitofp nneg i32 %i.f to double           ; 2 uses
  %i.h = tail call double @log(double noundef %i.g) #14
  %i.i = load double, ptr @cpu_operator_cost, align 8
  %i.j = fdiv double %i.h, f0x3FE62E42FEFA39EC
  %i.k = fmul double %i.i, 2.000000e+00
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = insertelement <2 x double> poison, double %i.g, i64 0
  %i.o = insertelement <2 x double> %i.n, double %7, i64 1
  %i.p = fmul <2 x double> %i.m, %i.o
  %i.q = insertelement <2 x double> poison, double %i.j, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> zeroinitializer) ; 2 uses
  %i.t = load double, ptr @cpu_tuple_cost, align 8
  %i.u = fmul double %i.t, 5.000000e-01
  %i.v = extractelement <2 x double> %i.s, i64 1
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %7, double %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = load i64, ptr %i.x, align 8
  %i.z = or i64 %i.y, %spec.select
  %i.aa = icmp ne i64 %i.z, -1
  %i.ab = zext i1 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = add i32 %4, %i.ab
  store i32 %i.ad, ptr %i.ac, align 8
  %i.ae = extractelement <2 x double> %i.s, i64 0 ; 2 uses
  %i.af = fadd double %5, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.af, ptr %i.ag, align 8
  %i.ah = fadd double %i.ae, %i.w
  %i.ai = fadd double %6, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ai, ptr %i.aj, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cost_material(ptr nofree noundef writeonly captures(none) initializes((40, 52), (56, 72)) %0, i1 noundef zeroext %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #12 {
bb.a:
  %i.a = fsub double %4, %3
  %i.b = sext i32 %6 to i64
  %i.c = add nsw i64 %i.b, 7
  %i.d = and i64 %i.c, -8
  %i.e = add nsw i64 %i.d, 24
  %i.f = uitofp i64 %i.e to double
  %i.g = fmul double %5, %i.f                     ; 2 uses
  %i.h = load i32, ptr @work_mem, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 10
  %i.k = uitofp i64 %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %5, ptr %i.l, align 8
  %i.m = load double, ptr @cpu_operator_cost, align 8
  %i.n = fmul double %i.m, 2.000000e+00
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %5, double %i.a) ; 2 uses
  %i.p = fcmp ogt double %i.g, %i.k
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = fmul double %i.g, f0x3F20000000000000
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %i.s = load double, ptr @seq_page_cost, align 8
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.r, double %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.t, %bb.b ], [ %i.o, %bb.a ]
  %not. = xor i1 %1, true
  %i.u = zext i1 %not. to i32
  %i.v = add i32 %2, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %3, ptr %i.x, align 8
  %i.y = fadd double %3, %.0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.y, ptr %i.z, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cost_agg(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11) local_unnamed_addr #2 {
bb.a:
  %12 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp eq ptr %3, null                     ; 6 uses
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %.cont163.thread, label %.else

.cont163.thread:                                  ; preds = %bb.b
  %i.f = fadd double %9, 0.000000e+00
  %i.g = tail call double @llvm.fmuladd.f64(double %10, double 0.000000e+00, double %i.f)
  %i.h = fadd double %i.g, 0.000000e+00
  br label %.thread

.else:                                            ; preds = %bb.b
  %.else.val195 = load double, ptr %3, align 8
  %i.i = fadd double %9, %.else.val195
  %.sroa.gep141 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.else.val176 = load double, ptr %.sroa.gep141, align 8
  %i.j = tail call double @llvm.fmuladd.f64(double %.else.val176, double %10, double %i.i)
  %.sroa.gep144 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.else.val165 = load double, ptr %.sroa.gep144, align 8
  %i.k = fadd double %i.j, %.else.val165
  %.sroa.gep147 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.else.val154 = load double, ptr %.sroa.gep147, align 8
  %i.l = fadd double %i.k, %.else.val154
  br label %.thread

.thread:                                          ; preds = %.else, %.cont163.thread
  %i.m = phi double [ %i.h, %.cont163.thread ], [ %i.l, %.else ] ; 2 uses
  %i.n = load double, ptr @cpu_tuple_cost, align 8
  %i.o = fadd double %i.m, %i.n
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.p = and i32 %2, -3
  %or.cond = icmp eq i32 %i.p, 1
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not210 = icmp eq i32 %2, 3
  %i.q = load i8, ptr @enable_hashagg, align 1, !range !4
  %i.r = xor i8 %i.q, 1
  %i.s = zext nneg i8 %i.r to i32
  %not.or.cond3 = select i1 %.not210, i32 %i.s, i32 0
  br i1 %i.d, label %.cont188.thread, label %.else179

.cont188.thread:                                  ; preds = %bb.d
  %i.t = fadd double %9, 0.000000e+00
  br label %.cont177

.else179:                                         ; preds = %bb.d
  %.else.val191 = load double, ptr %3, align 8
  %i.u = fadd double %9, %.else.val191
  %.sroa.gep132 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.else.val180 = load double, ptr %.sroa.gep132, align 8
  br label %.cont177

.cont177:                                         ; preds = %.cont188.thread, %.else179
  %i.v = phi double [ %i.t, %.cont188.thread ], [ %i.u, %.else179 ]
  %i.w = phi double [ 0.000000e+00, %.cont188.thread ], [ %.else.val180, %.else179 ]
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %10, double %i.v)
  %i.y = load double, ptr @cpu_operator_cost, align 8
  %i.z = sitofp i32 %4 to double
  %i.aa = fmul double %i.y, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %10, double %i.x) ; 2 uses
  br i1 %i.d, label %.cont166.thread, label %.else157

.cont166.thread:                                  ; preds = %.cont177
  %i.ac = fadd double %i.ab, 0.000000e+00
  br label %.cont155

.else157:                                         ; preds = %.cont177
  %.sroa.gep135 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.else.val169 = load double, ptr %.sroa.gep135, align 8
  %i.ad = fadd double %i.ab, %.else.val169
  %.sroa.gep138 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.else.val158 = load double, ptr %.sroa.gep138, align 8
  br label %.cont155

.cont155:                                         ; preds = %.cont166.thread, %.else157
  %i.ae = phi double [ %i.ac, %.cont166.thread ], [ %i.ad, %.else157 ]
  %i.af = phi double [ 0.000000e+00, %.cont166.thread ], [ %.else.val158, %.else157 ]
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %5, double %i.ae)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = load i8, ptr @enable_hashagg, align 1, !range !4, !noundef !5
  %i.ai = xor i8 %i.ah, 1
  %i.aj = zext nneg i8 %i.ai to i32
  br i1 %i.d, label %.cont185.thread, label %.else183

.cont185.thread:                                  ; preds = %bb.e
  %i.ak = fadd double %9, 0.000000e+00
  br label %.cont181

.else183:                                         ; preds = %bb.e
  %.else.val187 = load double, ptr %3, align 8
  %i.al = fadd double %9, %.else.val187
  %.sroa.gep124 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.else.val184 = load double, ptr %.sroa.gep124, align 8
  br label %.cont181

.cont181:                                         ; preds = %.cont185.thread, %.else183
  %i.am = phi double [ %i.ak, %.cont185.thread ], [ %i.al, %.else183 ]
  %i.an = phi double [ 0.000000e+00, %.cont185.thread ], [ %.else.val184, %.else183 ]
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %10, double %i.am)
  %i.ap = load double, ptr @cpu_operator_cost, align 8
  %i.aq = sitofp i32 %4 to double
  %i.ar = fmul double %i.ap, %i.aq
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %10, double %i.ao) ; 2 uses
  br i1 %i.d, label %.cont170.thread, label %.else161

.cont170.thread:                                  ; preds = %.cont181
  %i.at = fadd double %i.as, 0.000000e+00
  br label %.cont159

.else161:                                         ; preds = %.cont181
  %.sroa.gep126 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.else.val173 = load double, ptr %.sroa.gep126, align 8
  %i.au = fadd double %i.as, %.else.val173
  %.sroa.gep129 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.else.val162 = load double, ptr %.sroa.gep129, align 8
  br label %.cont159

.cont159:                                         ; preds = %.cont170.thread, %.else161
  %i.av = phi double [ %i.at, %.cont170.thread ], [ %i.au, %.else161 ] ; 2 uses
  %i.aw = phi double [ 0.000000e+00, %.cont170.thread ], [ %.else.val162, %.else161 ]
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %5, double %i.av)
  br label %bb.f

bb.f:                                             ; preds = %.cont155, %.cont159
  %.sink220 = phi double [ %i.ag, %.cont155 ], [ %i.ax, %.cont159 ]
  %.pn = phi i32 [ %not.or.cond3, %.cont155 ], [ %i.aj, %.cont159 ]
  %.0109 = phi double [ %8, %.cont155 ], [ %i.av, %.cont159 ] ; 2 uses
  %i.ay = load double, ptr @cpu_tuple_cost, align 8
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %5, double %.sink220) ; 2 uses
  %.2116 = add i32 %.pn, %7                       ; 2 uses
  %i.ba = and i32 %2, -2
  %or.cond5 = icmp eq i32 %i.ba, 2
  br i1 %or.cond5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %list_length.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.g, %bb.h
  %i.bf = phi i32 [ %i.be, %bb.h ], [ 0, %bb.g ]
  %i.bg = fptoui double %11 to i64
  br i1 %i.d, label %list_length.exit.cont, label %list_length.exit.else

list_length.exit.else:                            ; preds = %list_length.exit
  %.sroa.gep150 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.else.val = load i64, ptr %.sroa.gep150, align 8
  br label %list_length.exit.cont

list_length.exit.cont:                            ; preds = %list_length.exit, %list_length.exit.else
  %i.bh = phi i64 [ 0, %list_length.exit ], [ %.else.val, %list_length.exit.else ]
  %i.bi = tail call i64 @hash_agg_entry_size(i32 noundef %i.bf, i64 noundef %i.bg, i64 noundef %i.bh) #14
  %i.bj = uitofp i64 %i.bi to double              ; 2 uses
  call void @hash_agg_set_limits(double noundef %i.bj, double noundef %5, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %i.bk = fmul double %5, %i.bj
  %i.bl = load i64, ptr %i.a, align 8
  %i.bm = load i64, ptr %i.b, align 8
  %i.bn = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %i.bo = insertelement <2 x i64> %i.bn, i64 %i.bm, i64 1
  %i.bp = uitofp <2 x i64> %i.bo to <2 x double>
  %i.bq = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %5, i64 1
  %i.bs = fdiv <2 x double> %i.br, %i.bp          ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0 ; 2 uses
  %i.bu = extractelement <2 x double> %i.bs, i64 1 ; 2 uses
  %i.bv = fcmp ogt double %i.bt, %i.bu
  %. = select i1 %i.bv, double %i.bt, double %i.bu
  %i.bw = call double @llvm.ceil.f64(double %.)   ; 2 uses
  %i.bx = fcmp ogt double %i.bw, 1.000000e+00
  %i.by = call double @llvm.log.f64(double %i.bw)
  %i.bz = select i1 %i.bx, double %i.by, double 0.000000e+00
  %i.ca = load i32, ptr %i.c, align 4
  %i.cb = call i32 @llvm.smax.i32(i32 %i.ca, i32 2)
  %i.cc = uitofp nneg i32 %i.cb to double
  %i.cd = call double @log(double noundef %i.cc) #14
  %i.ce = fdiv double %i.bz, %i.cd
  %i.cf = call double @llvm.ceil.f64(double %i.ce)
  %i.cg = fptosi double %i.cf to i32
  %i.ch = fptosi double %11 to i32
  %i.ci = sext i32 %i.ch to i64
  %i.cj = add nsw i64 %i.ci, 7
  %i.ck = and i64 %i.cj, -8
  %i.cl = add nsw i64 %i.ck, 24
  %i.cm = uitofp i64 %i.cl to double
  %i.cn = fmul double %10, %i.cm
  %i.co = fmul double %i.cn, f0x3F20000000000000
  %i.cp = sitofp i32 %i.cg to double              ; 2 uses
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = fmul double %i.cq, 2.000000e+00         ; 3 uses
  %i.cs = load double, ptr @random_page_cost, align 8 ; 2 uses
  %i.ct = call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %.0109)
  %i.cu = call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.az)
  %i.cv = load double, ptr @seq_page_cost, align 8
  %i.cw = call double @llvm.fmuladd.f64(double %i.cr, double %i.cv, double %i.cu)
  %i.cx = fmul double %10, %i.cp
  %i.cy = fmul double %i.cx, 2.000000e+00
  %i.cz = load double, ptr @cpu_tuple_cost, align 8
  %i.da = fmul double %i.cz, %i.cy                ; 2 uses
  %i.db = fadd double %i.ct, %i.da
  %i.dc = fadd double %i.da, %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f, %list_length.exit.cont
  %.0112209 = phi double [ %5, %list_length.exit.cont ], [ %5, %bb.f ], [ 1.000000e+00, %.thread ] ; 3 uses
  %.2116208 = phi i32 [ %.2116, %list_length.exit.cont ], [ %.2116, %bb.f ], [ %7, %.thread ]
  %.1110 = phi double [ %i.db, %list_length.exit.cont ], [ %.0109, %bb.f ], [ %i.m, %.thread ] ; 2 uses
  %.1 = phi double [ %i.dc, %list_length.exit.cont ], [ %i.az, %bb.f ], [ %i.o, %.thread ] ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %clamp_row_est.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store ptr %1, ptr %12, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dg = load i32, ptr %i.de, align 4
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph14.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.dk, ptr noundef nonnull %12) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dm = load i32, ptr %i.de, align 4
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next.i, %i.dn
  br i1 %i.do, label %.lr.ph14.i, label %cost_qual_eval.exit.loopexit

cost_qual_eval.exit.loopexit:                     ; preds = %.lr.ph14.i
  %.sroa.0.0.copyload.pre = load double, ptr %i.dd, align 8
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.4.0.copyload.pre = load double, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8
  br label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %cost_qual_eval.exit.loopexit, %.lr.ph.i
  %.sroa.4.0.copyload = phi double [ %.sroa.4.0.copyload.pre, %cost_qual_eval.exit.loopexit ], [ 0.000000e+00, %.lr.ph.i ]
  %.sroa.0.0.copyload = phi double [ %.sroa.0.0.copyload.pre, %cost_qual_eval.exit.loopexit ], [ 0.000000e+00, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.dp = fadd double %.1110, %.sroa.0.0.copyload ; 3 uses
  %i.dq = call double @llvm.fmuladd.f64(double %.0112209, double %.sroa.4.0.copyload, double %.sroa.0.0.copyload)
  %i.dr = fadd double %.1, %i.dq                  ; 3 uses
  %i.ds = call double @clauselist_selectivity(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.dt = fmul double %.0112209, %i.ds            ; 3 uses
  %or.cond.i = fcmp ugt double %i.dt, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.j

bb.j:                                             ; preds = %cost_qual_eval.exit
  %i.du = fcmp ugt double %i.dt, 1.000000e+00
  br i1 %i.du, label %bb.k, label %clamp_row_est.exit

bb.k:                                             ; preds = %bb.j
  %i.dv = call double @llvm.rint.f64(double %i.dt)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.k, %bb.j, %cost_qual_eval.exit, %bb.i
  %.1113 = phi double [ %.0112209, %bb.i ], [ %i.dv, %bb.k ], [ 1.000000e+100, %cost_qual_eval.exit ], [ 1.000000e+00, %bb.j ]
  %.2111 = phi double [ %.1110, %bb.i ], [ %i.dp, %bb.k ], [ %i.dp, %cost_qual_eval.exit ], [ %i.dp, %bb.j ]
  %.2 = phi double [ %.1, %bb.i ], [ %i.dr, %bb.k ], [ %i.dr, %cost_qual_eval.exit ], [ %i.dr, %bb.j ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.1113, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.2116208, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.2111, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.2, ptr %i.dz, align 8
  ret void
}

declare i64 @hash_agg_entry_size(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @hash_agg_set_limits(double noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @cost_windowagg(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %9 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %10 = alloca %struct.QualCost, align 8          ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %list_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i52 = icmp eq ptr %i.g, null
  br i1 %.not.i52, label %list_length.exit53, label %bb.c

bb.c:                                             ; preds = %list_length.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  br label %list_length.exit53

list_length.exit53:                               ; preds = %list_length.exit, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ 0, %list_length.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %list_length.exit53
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.k, align 4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph73, label %.critedge

.lr.ph73:                                         ; preds = %.lr.ph, %.lr.ph73
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph73 ], [ 0, %.lr.ph ] ; 2 uses
  %.0476171 = phi double [ %i.an, %.lr.ph73 ], [ %6, %.lr.ph ]
  %.06270 = phi double [ %i.ak, %.lr.ph73 ], [ %5, %.lr.ph ]
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.v = load i32, ptr %i.u, align 4
  call void @add_function_cost(ptr noundef %1, i32 noundef %i.v, ptr noundef %i.t, ptr noundef nonnull %10) #14
  %i.w = load double, ptr %10, align 8
  %i.x = fadd double %.06270, %i.w
  %i.y = load double, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %1, ptr %9, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.ab = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.aa, ptr noundef nonnull %9), !inline_history !7 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.ac = load double, ptr %10, align 8
  %i.ad = fadd double %i.x, %i.ac
  %i.ae = load double, ptr %i.m, align 8
  %i.af = fadd double %i.y, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr %1, ptr %8, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.ai = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.ah, ptr noundef nonnull %8), !inline_history !7 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.aj = load double, ptr %10, align 8
  %i.ak = fadd double %i.ad, %i.aj                ; 2 uses
  %i.al = load double, ptr %i.m, align 8
  %i.am = fadd double %i.af, %i.al
  %i.an = call double @llvm.fmuladd.f64(double %i.am, double %7, double %.0476171) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.k, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph73, label %.critedge

.critedge:                                        ; preds = %.lr.ph73, %.lr.ph, %list_length.exit53
  %.047.lcssa = phi double [ %6, %list_length.exit53 ], [ %6, %.lr.ph ], [ %i.an, %.lr.ph73 ]
  %.0.lcssa = phi double [ %5, %list_length.exit53 ], [ %5, %.lr.ph ], [ %i.ak, %.lr.ph73 ] ; 2 uses
  %i.ar = load double, ptr @cpu_operator_cost, align 8
  %i.as = add i32 %i.j, %i.e
  %i.at = sitofp i32 %i.as to double
  %i.au = fmul double %i.ar, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %i.au, double %7, double %.047.lcssa)
  %i.aw = load double, ptr @cpu_tuple_cost, align 8
  %i.ax = call double @llvm.fmuladd.f64(double %i.aw, double %7, double %i.av) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %7, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %4, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store double %.0.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ax, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bd = load i32, ptr %i.bc, align 8            ; 7 uses
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i54 = icmp eq ptr %i.be, null
  br i1 %.not.i54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call ptr @get_sortgrouplist_exprs(ptr noundef nonnull %i.be, ptr noundef %i.bi) #14 ; 2 uses
  %i.bk = call double @estimate_num_groups(ptr noundef %1, ptr noundef %i.bj, double noundef %7, ptr noundef null, ptr noundef null) #14
  call void @list_free(ptr noundef %i.bj) #14
  %i.bl = fdiv double %7, %i.bk
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.056.i = phi double [ %i.bl, %bb.d ], [ %7, %.critedge ] ; 8 uses
  %i.bm = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not61.i = icmp eq ptr %i.bm, null
  br i1 %.not61.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call ptr @get_sortgrouplist_exprs(ptr noundef nonnull %i.bm, ptr noundef %i.bq) #14 ; 2 uses
  %i.bs = call double @estimate_num_groups(ptr noundef %1, ptr noundef %i.br, double noundef %.056.i, ptr noundef null, ptr noundef null) #14
  call void @list_free(ptr noundef %i.br) #14
  %i.bt = fdiv double %.056.i, %i.bs
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.058.i = phi double [ %i.bt, %bb.f ], [ 1.000000e+00, %bb.e ] ; 4 uses
  %i.bu = and i32 %i.bd, 256
  %.not62.i = icmp eq i32 %i.bu, 0
  br i1 %.not62.i, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.bv = and i32 %i.bd, 1024
  %.not63.i = icmp eq i32 %i.bv, 0
  br i1 %.not63.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = and i32 %i.bd, 4
  %.not68.i = icmp ne i32 %i.bw, 0
  %i.bx = and i32 %i.bd, 10
  %.not69.i = icmp eq i32 %i.bx, 0
  %or.cond.i = or i1 %.not68.i, %.not69.i
  br i1 %or.cond.i, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %i.f, align 8
  %i.bz = icmp eq ptr %i.by, null
  %.056..058.i = select i1 %i.bz, double %.056.i, double %.058.i
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.ca = and i32 %i.bd, 20480
  %or.cond72.not.i = icmp eq i32 %i.ca, 16384
  br i1 %or.cond72.not.i, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8            ; 6 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp eq i32 %i.cd, 7
  br i1 %i.ce, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cg = load i8, ptr %i.cf, align 8, !range !4, !noundef !5
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cj = load i32, ptr %i.ci, align 4
  switch i32 %i.cj, label %bb.r [
    i32 21, label %bb.o
    i32 23, label %bb.p
    i32 20, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = trunc i64 %i.cl to i16
  %i.cn = sitofp i16 %i.cm to double
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = sitofp i32 %i.cq to double
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = sitofp i64 %i.ct to double
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.cv = fdiv double %.056.i, %.058.i
  %i.cw = fmul double %i.cv, f0x3FD5555555555555
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  %i.cx = fdiv double %.056.i, %.058.i
  %i.cy = fmul double %i.cx, f0x3FD5555555555555
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i = phi double [ %i.cy, %bb.s ], [ %i.cw, %bb.r ], [ %i.cn, %bb.o ], [ %i.cr, %bb.p ], [ %i.cu, %bb.q ], [ 1.000000e+00, %bb.m ] ; 2 uses
  %i.cz = and i32 %i.bd, 4
  %.not66.i = icmp eq i32 %i.cz, 0
  br i1 %.not66.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = fadd double %.0.i, 1.000000e+00
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.db = and i32 %i.bd, 10
  %.not67.i = icmp eq i32 %i.db, 0
  br i1 %.not67.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = fadd double %.0.i, 1.000000e+00
  %i.dd = fmul double %.058.i, %i.dc
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.k, %bb.j, %bb.i, %bb.g
  %.1.i = phi double [ 1.000000e+00, %bb.v ], [ %.056.i, %bb.g ], [ %.056..058.i, %bb.j ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %bb.k ], [ %i.dd, %bb.w ], [ %i.da, %bb.u ] ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8
  %.not70.i = icmp eq ptr %i.de, null
  br i1 %.not70.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.f, align 8
  %.not71.i = icmp eq ptr %i.df, null
  br i1 %.not71.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dg = fadd double %.1.i, 1.000000e+00
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.sink75.i = phi double [ %i.dg, %bb.z ], [ %.1.i, %bb.y ] ; 2 uses
  %i.dh = fcmp olt double %.1.sink75.i, %.056.i
  %i.di = select i1 %i.dh, double %.1.sink75.i, double %.056.i ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.di, 1.000000e+100
  br i1 %or.cond.i.i, label %get_windowclause_startup_tuples.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = fcmp ugt double %i.di, 1.000000e+00
  %i.dk = call double @llvm.rint.f64(double %i.di) ; 2 uses
  %i.dl = fcmp ogt double %i.dk, 1.000000e+00
  %or.cond = and i1 %i.dj, %i.dl
  br i1 %or.cond, label %get_windowclause_startup_tuples.exit.thread, label %get_windowclause_startup_tuples.exit.thread57

get_windowclause_startup_tuples.exit.thread:      ; preds = %bb.ab, %bb.aa
  %.0.i.i56 = phi double [ %i.dk, %bb.ab ], [ 1.000000e+100, %bb.aa ]
  %i.dm = fsub double %i.ax, %.0.lcssa
  %i.dn = fdiv double %i.dm, %7
  %i.do = fadd double %.0.i.i56, -1.000000e+00
  %i.dp = load double, ptr %i.ba, align 8
  %i.dq = call double @llvm.fmuladd.f64(double %i.dn, double %i.do, double %i.dp)
  store double %i.dq, ptr %i.ba, align 8
  br label %get_windowclause_startup_tuples.exit.thread57

get_windowclause_startup_tuples.exit.thread57:    ; preds = %bb.ab, %get_windowclause_startup_tuples.exit.thread
  ret void
}

declare void @add_function_cost(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @cost_group(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, double noundef %6, double noundef %7, double noundef %8) local_unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = load double, ptr @cpu_operator_cost, align 8
  %i.b = fmul double %8, %i.a
  %i.c = sitofp i32 %2 to double
  %i.d = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %7) ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %clamp_row_est.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %1, ptr %9, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load i32, ptr %i.f, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph14.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.l, ptr noundef nonnull %9) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = load i32, ptr %i.f, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next.i, %i.o
  br i1 %i.p, label %.lr.ph14.i, label %cost_qual_eval.exit.loopexit

cost_qual_eval.exit.loopexit:                     ; preds = %.lr.ph14.i
  %.sroa.0.0.copyload.pre = load double, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0.copyload.pre = load double, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8
  br label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %cost_qual_eval.exit.loopexit, %.lr.ph.i
  %.sroa.4.0.copyload = phi double [ %.sroa.4.0.copyload.pre, %cost_qual_eval.exit.loopexit ], [ 0.000000e+00, %.lr.ph.i ]
  %.sroa.0.0.copyload = phi double [ %.sroa.0.0.copyload.pre, %cost_qual_eval.exit.loopexit ], [ 0.000000e+00, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.q = fadd double %6, %.sroa.0.0.copyload      ; 3 uses
  %i.r = call double @llvm.fmuladd.f64(double %3, double %.sroa.4.0.copyload, double %.sroa.0.0.copyload)
  %i.s = fadd double %i.d, %i.r                   ; 3 uses
  %i.t = call double @clauselist_selectivity(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.u = fmul double %3, %i.t                     ; 3 uses
  %or.cond.i = fcmp ugt double %i.u, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.b

bb.b:                                             ; preds = %cost_qual_eval.exit
  %i.v = fcmp ugt double %i.u, 1.000000e+00
  br i1 %i.v, label %bb.c, label %clamp_row_est.exit

bb.c:                                             ; preds = %bb.b
  %i.w = call double @llvm.rint.f64(double %i.u)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.c, %bb.b, %cost_qual_eval.exit, %bb.a
  %.023 = phi double [ %3, %bb.a ], [ %i.w, %bb.c ], [ 1.000000e+100, %cost_qual_eval.exit ], [ 1.000000e+00, %bb.b ]
  %.022 = phi double [ %6, %bb.a ], [ %i.q, %bb.c ], [ %i.q, %cost_qual_eval.exit ], [ %i.q, %bb.b ]
  %.0 = phi double [ %i.d, %bb.a ], [ %i.s, %bb.c ], [ %i.s, %cost_qual_eval.exit ], [ %i.s, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.023, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %5, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.022, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.0, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initial_cost_nestloop(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.EstimationInfo, align 4     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %bb.r [
    i32 366, label %bb.b
    i32 377, label %bb.c
    i32 369, label %bb.f
    i32 371, label %bb.f
    i32 378, label %bb.h
    i32 380, label %bb.h
    i32 379, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.l = load double, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.n = load double, ptr %i.m, align 8
  %i.o = fsub double %i.l, %i.n
  br label %cost_rescan.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = load double, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.v = load double, ptr %i.u, align 8
  %i.w = fsub double %i.t, %i.v
  br label %cost_rescan.exit

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.y = load double, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aa = load double, ptr %i.z, align 8
  br label %cost_rescan.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.ab = load double, ptr @cpu_tuple_cost, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = load double, ptr %i.ac, align 8         ; 2 uses
  %i.ae = fmul double %i.ab, %i.ad                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.aj, 7
  %i.al = and i64 %i.ak, -8
  %i.am = add nsw i64 %i.al, 24
  %i.an = uitofp i64 %i.am to double
  %i.ao = fmul double %i.ad, %i.an                ; 2 uses
  %i.ap = load i32, ptr @work_mem, align 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 10
  %i.as = uitofp i64 %i.ar to double
  %i.at = fcmp ogt double %i.ao, %i.as
  br i1 %i.at, label %bb.g, label %cost_rescan.exit

bb.g:                                             ; preds = %bb.f
  %i.au = fmul double %i.ao, f0x3F20000000000000
  %i.av = tail call double @llvm.ceil.f64(double %i.au)
  %i.aw = load double, ptr @seq_page_cost, align 8
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.av, double %i.ae)
  br label %cost_rescan.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.ay = load double, ptr @cpu_operator_cost, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ba = load double, ptr %i.az, align 8         ; 2 uses
  %i.bb = fmul double %i.ay, %i.ba                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i64 %i.bg, 7
  %i.bi = and i64 %i.bh, -8
  %i.bj = add nsw i64 %i.bi, 24
  %i.bk = uitofp i64 %i.bj to double
  %i.bl = fmul double %i.ba, %i.bk                ; 2 uses
  %i.bm = load i32, ptr @work_mem, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 10
  %i.bp = uitofp i64 %i.bo to double
  %i.bq = fcmp ogt double %i.bl, %i.bp
  br i1 %i.bq, label %bb.i, label %cost_rescan.exit

bb.i:                                             ; preds = %bb.h
  %i.br = fmul double %i.bl, f0x3F20000000000000
  %i.bs = tail call double @llvm.ceil.f64(double %i.br)
  %i.bt = load double, ptr @seq_page_cost, align 8
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bs, double %i.bb)
  br label %cost_rescan.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8            ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load double, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ca = load double, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load double, ptr %i.cb, align 8         ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ce = load double, ptr %i.cd, align 8         ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = tail call i64 @get_hash_memory_limit() #14
  %i.ck = sext i32 %i.ci to i64
  %i.cl = add nsw i64 %i.ck, 7
  %i.cm = and i64 %i.cl, -8
  %i.cn = add nsw i64 %i.cm, 24
  %i.co = uitofp i64 %i.cn to double
  %i.cp = fmul double %i.cc, %i.co
  %i.cq = tail call double @ExecEstimateCacheEntryOverheadBytes(double noundef %i.cc) #14
  %i.cr = fadd double %i.cq, %i.cp                ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %cost_memoize_rescan.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = load i32, ptr %i.cu, align 4
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph76.i.i, label %cost_memoize_rescan.exit.i

.lr.ph76.i.i:                                     ; preds = %.lr.ph.i.i, %get_expr_width.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %get_expr_width.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.0636975.i.i = phi double [ %i.el, %get_expr_width.exit.i.i ], [ %i.cr, %.lr.ph.i.i ]
  %i.da = load ptr, ptr %i.cv, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.i.i
  %i.dc = load ptr, ptr %i.db, align 8            ; 7 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = icmp eq i32 %i.dd, 6
  br i1 %i.de, label %bb.k, label %bb.q

bb.k:                                             ; preds = %.lr.ph76.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dg = load i32, ptr %i.df, align 4            ; 3 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.thread.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = load i32, ptr %i.cw, align 8
  %i.dj = icmp slt i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.m, label %.thread.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %i.cx, align 8
  %i.dl = zext nneg i32 %i.dg to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl
end_hunk_3
begin_hunk_4_@initial_cost_nestloop:bb.a
  %i.eh = tail call i32 @exprType(ptr noundef nonnull %i.dc) #14
  %i.ei = tail call i32 @exprTypmod(ptr noundef nonnull %i.dc) #14
  %i.ej = tail call i32 @get_typavgwidth(i32 noundef %i.eh, i32 noundef %i.ei) #14
  br label %get_expr_width.exit.i.i

get_expr_width.exit.i.i:                          ; preds = %bb.q, %.thread.i.i.i, %bb.p
  %.4.i.i.i = phi i32 [ %i.ej, %bb.q ], [ %i.eg, %.thread.i.i.i ], [ %i.ea, %bb.p ]
  %i.ek = sitofp i32 %.4.i.i.i to double
  %i.el = fadd double %.0636975.i.i, %i.ek        ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.em = load i32, ptr %i.cu, align 4
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next.i.i, %i.en
  br i1 %i.eo, label %.lr.ph76.i.i, label %.critedge.loopexit.i.i

.critedge.loopexit.i.i:                           ; preds = %get_expr_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.cs, align 8
  br label %cost_memoize_rescan.exit.i

cost_memoize_rescan.exit.i:                       ; preds = %.critedge.loopexit.i.i, %.lr.ph.i.i, %bb.j
  %i.ep = phi ptr [ null, %bb.j ], [ %i.ct, %.lr.ph.i.i ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.063.lcssa.i.i = phi double [ %i.cr, %bb.j ], [ %i.cr, %.lr.ph.i.i ], [ %i.el, %.critedge.loopexit.i.i ]
  %i.eq = uitofp i64 %i.cj to double
  %i.er = fdiv double %i.eq, %.063.lcssa.i.i
  %i.es = tail call double @llvm.floor.f64(double %i.er) ; 6 uses
  %i.et = call double @estimate_num_groups(ptr noundef %0, ptr noundef %i.ep, double noundef %i.ce, ptr noundef null, ptr noundef nonnull %7) #14
  %i.eu = load i32, ptr %7, align 4
  %i.ev = and i32 %i.eu, 1
  %.not68.i.i = icmp eq i32 %i.ev, 0
  %.0.i.i = select i1 %.not68.i.i, double %i.et, double %i.ce ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 120
  store double %.0.i.i, ptr %i.ew, align 8
  %i.ex = fcmp olt double %.0.i.i, %i.es
  %i.ey = select i1 %i.ex, double %.0.i.i, double %i.es ; 2 uses
  %i.ez = fcmp olt double %i.ey, f0x41EFFFFFFFE00000
  %i.fa = select i1 %i.ez, double %i.ey, double f0x41EFFFFFFFE00000
  %i.fb = fptoui double %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 108
  store i32 %i.fb, ptr %i.fc, align 4
  %i.fd = fcmp olt double %i.es, %.0.i.i          ; 2 uses
  %i.fe = select i1 %i.fd, double %i.es, double %.0.i.i
  %i.ff = fdiv double %i.fe, %.0.i.i
  %i.fg = fsub double 1.000000e+00, %i.ff         ; 2 uses
  %i.fh = fsub double %i.ce, %.0.i.i
  %i.fi = fdiv double %i.fh, %i.ce
  %i.fj = select i1 %i.fd, double %.0.i.i, double %i.es
  %i.fk = fdiv double %i.es, %i.fj
  %i.fl = fmul double %i.fi, %i.fk                ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 128
  store double %i.fl, ptr %i.fm, align 8
  %i.fn = fsub double 1.000000e+00, %i.fl         ; 2 uses
  %i.fo = load double, ptr @cpu_operator_cost, align 8 ; 3 uses
  %i.fp = fdiv double %i.fo, 1.000000e+01
  %i.fq = fmul double %i.fp, %i.fg
  %i.fr = call double @llvm.fmuladd.f64(double %i.ca, double %i.fn, double %i.fo)
  %i.fs = load double, ptr @cpu_tuple_cost, align 8 ; 3 uses
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double %i.fg, double %i.fr)
  %i.fu = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fq, i64 1
  %i.fw = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.ft, i64 1
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fx, <2 x double> %i.fz)
  %i.gb = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ga)
  %i.gc = fmul double %i.by, %i.fn
  %i.gd = fadd double %i.fs, %i.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %cost_rescan.exit

bb.r:                                             ; preds = %bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.gf = load double, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gh = load double, ptr %i.gg, align 8
  br label %cost_rescan.exit

cost_rescan.exit:                                 ; preds = %bb.h, %bb.i, %bb.f, %bb.g, %bb.b, %bb.d, %bb.e, %cost_memoize_rescan.exit.i, %bb.r
  %.048 = phi double [ %i.gf, %bb.r ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.d ], [ %i.y, %bb.e ], [ %i.gd, %cost_memoize_rescan.exit.i ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %.047 = phi double [ %i.gh, %bb.r ], [ %i.o, %bb.b ], [ %i.w, %bb.d ], [ %i.aa, %bb.e ], [ %i.gb, %cost_memoize_rescan.exit.i ], [ %i.ae, %bb.f ], [ %i.ax, %bb.g ], [ %i.bu, %bb.i ], [ %i.bb, %bb.h ]
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gj = load double, ptr %i.gi, align 8         ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.gl = load double, ptr %i.gk, align 8         ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gn = load double, ptr %i.gm, align 8
  %i.go = fsub double %i.gn, %i.gj
  %i.gp = fadd double %i.go, 0.000000e+00         ; 2 uses
  %i.gq = fcmp ogt double %i.b, 1.000000e+00      ; 2 uses
  %i.gr = fadd double %i.b, -1.000000e+00         ; 2 uses
  %i.gs = call double @llvm.fmuladd.f64(double %i.gr, double %.048, double %i.gp)
  %.0 = select i1 %i.gq, double %i.gs, double %i.gp ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gu = load double, ptr %i.gt, align 8
  %i.gv = fsub double %i.gu, %i.gl                ; 2 uses
  %i.gw = fsub double %.047, %.048                ; 2 uses
  %i.gx = and i32 %2, -2
  %or.cond = icmp eq i32 %i.gx, 4
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %cost_rescan.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gz = load i8, ptr %i.gy, align 8, !range !4, !noundef !5
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %cost_rescan.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.gv, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.gw, ptr %i.hc, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.hd = fadd double %i.gv, %.0                  ; 2 uses
  br i1 %i.gq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.he = call double @llvm.fmuladd.f64(double %i.gr, double %i.gw, double %i.hd)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.1 = phi double [ %.0, %bb.t ], [ %i.he, %bb.v ], [ %i.hd, %bb.u ] ; 2 uses
  %i.hf = fadd double %i.gj, %i.gl
  %i.hg = fadd double %i.hf, 0.000000e+00         ; 2 uses
  %i.hh = and i64 %i.d, %3
  %i.hi = icmp ne i64 %i.hh, %3
  %i.hj = zext i1 %i.hi to i32
  %i.hk = add i32 %i.h, %i.f
  %i.hl = add i32 %i.hk, %i.hj
  store i32 %i.hl, ptr %1, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.hg, ptr %i.hm, align 8
  %i.hn = fadd double %i.hg, %.1
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.hn, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %.1, ptr %i.hp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @final_cost_nestloop(ptr noundef %0, ptr nofree noundef captures(none) initializes((40, 52)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load double, ptr %i.g, align 8           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load double, ptr %i.k, align 8           ; 3 uses
  %i.m = load i32, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.m, ptr %i.n, align 8
  %i.o = fcmp ole double %i.f, 0.000000e+00
  %spec.store.select = select i1 %i.o, double 1.000000e+00, double %i.f ; 3 uses
  %i.p = fcmp ole double %i.h, 0.000000e+00
  %spec.store.select1 = select i1 %i.p, double 1.000000e+00, double %i.h ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi ptr [ %i.t, %bb.b ], [ %i.r, %bb.a ]
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.u = load double, ptr %.in, align 8           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store double %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.z = uitofp nneg i32 %i.x to double           ; 3 uses
  %i.aa = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %get_parallel_divisor.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.z, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.ad = fcmp ogt double %i.ac, 0.000000e+00
  %i.ae = select i1 %i.ad, double %i.ac, double -0.000000e+00
  %.0.i = fadd double %i.ae, %i.z
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.d, %bb.e
  %.1.i = phi double [ %.0.i, %bb.e ], [ %i.z, %bb.d ]
  %i.af = fdiv double %i.u, %.1.i                 ; 3 uses
  %or.cond.i = fcmp ugt double %i.af, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.f

bb.f:                                             ; preds = %get_parallel_divisor.exit
  %i.ag = fcmp ugt double %i.af, 1.000000e+00
  br i1 %i.ag, label %bb.g, label %clamp_row_est.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call double @llvm.rint.f64(double %i.af)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.f, %bb.g
  %.0.i91 = phi double [ %i.ah, %bb.g ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.f ]
  store double %.0.i91, ptr %i.v, align 8
  br label %bb.h

bb.h:                                             ; preds = %clamp_row_est.exit, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = and i32 %i.aj, -2
  %switch = icmp eq i32 %i.ak, 4
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load i8, ptr %i.al, align 8, !range !4, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load double, ptr %i.ao, align 8         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ar = load double, ptr %i.aq, align 8         ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.at = load double, ptr %i.as, align 8
  %i.au = fmul double %spec.store.select, %i.at
  %i.av = tail call double @llvm.rint.f64(double %i.au) ; 6 uses
  %i.aw = fsub double %spec.store.select, %i.av   ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ay = load double, ptr %i.ax, align 8
  %i.az = fadd double %i.ay, 1.000000e+00
  %i.ba = fdiv double 2.000000e+00, %i.az         ; 4 uses
  %i.bb = fmul double %spec.store.select1, %i.av
  %i.bc = fmul double %i.bb, %i.ba                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.k, label %has_indexed_join_quals.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %has_indexed_join_quals.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  switch i32 %i.bn, label %has_indexed_join_quals.exit.thread [
    i32 359, label %bb.n
    i32 360, label %bb.n
    i32 362, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp eq i32 %i.bq, 297
  br i1 %i.br, label %bb.n, label %has_indexed_join_quals.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.l
  %.pn.i = phi ptr [ %i.d, %bb.l ], [ %i.d, %bb.l ], [ %i.bp, %bb.m ]
  %.132.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 88
  %.132.i = load ptr, ptr %.132.in.i, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 3 uses
  %.not38.i = icmp eq ptr %i.bt, null
  br i1 %.not38.i, label %has_indexed_join_quals.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bx = load i32, ptr %i.bu, align 4
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph62.i.outer, label %has_indexed_join_quals.exit.thread

.lr.ph62.i.outer:                                 ; preds = %.lr.ph.i, %.thread44.i.thread
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i106, %.thread44.i.thread ], [ 0, %.lr.ph.i ]
  %.0285261.i.ph = phi i1 [ true, %.thread44.i.thread ], [ false, %.lr.ph.i ]
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.outer, %.thread44.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread44.i ], [ %indvars.iv.i.ph, %.lr.ph62.i.outer ] ; 3 uses
  %i.bz = load ptr, ptr %i.bv, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call zeroext i1 @join_clause_is_movable_into(ptr noundef %i.cb, ptr noundef %i.ce, ptr noundef %i.bg) #14
  br i1 %i.cf, label %bb.o, label %.thread44.i

bb.o:                                             ; preds = %.lr.ph62.i
  %i.cg = tail call zeroext i1 @is_redundant_with_indexclauses(ptr noundef %i.cb, ptr noundef %.132.i) #14
  br i1 %i.cg, label %.thread44.i.thread, label %has_indexed_join_quals.exit.thread

.thread44.i:                                      ; preds = %.lr.ph62.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ch = load i32, ptr %i.bu, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next.i, %i.ci
  br i1 %i.cj, label %.lr.ph62.i, label %has_indexed_join_quals.exit

.thread44.i.thread:                               ; preds = %bb.o
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ck = load i32, ptr %i.bu, align 4
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next.i106, %i.cl
  br i1 %i.cm, label %.lr.ph62.i.outer, label %has_indexed_join_quals.exit.thread108

has_indexed_join_quals.exit:                      ; preds = %.thread44.i
  br i1 %.0285261.i.ph, label %has_indexed_join_quals.exit.thread108, label %has_indexed_join_quals.exit.thread

has_indexed_join_quals.exit.thread108:            ; preds = %.thread44.i.thread, %has_indexed_join_quals.exit
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ba, double %i.l) ; 2 uses
  %i.co = fcmp ogt double %i.av, 1.000000e+00
  %i.cp = fadd nnan double %i.av, -1.000000e+00
  %i.cq = fmul double %i.ar, %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.ba, double %i.cn)
  %.084 = select i1 %i.co, double %i.cr, double %i.cn
  %i.cs = fmul double %i.ar, %i.aw
  %i.ct = fdiv double %i.cs, %spec.store.select1
  %i.cu = fadd double %i.ct, %.084
  br label %bb.r

has_indexed_join_quals.exit.thread:               ; preds = %bb.o, %.lr.ph.i, %bb.n, %bb.k, %bb.l, %bb.j, %bb.m, %has_indexed_join_quals.exit
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.aw, double %spec.store.select1, double %i.bc) ; 2 uses
  %i.cw = fadd double %i.l, %i.ap                 ; 2 uses
  %i.cx = fcmp ult double %i.aw, 1.000000e+00     ; 2 uses
  %i.cy = fadd double %i.aw, -1.000000e+00
  %i.cz = fadd double %i.av, -1.000000e+00
  %.082 = select i1 %i.cx, double %i.cz, double %i.av ; 2 uses
  %.0 = select i1 %i.cx, double %i.aw, double %i.cy ; 2 uses
  %i.da = fcmp ogt double %.082, 0.000000e+00
  %i.db = fmul double %i.ar, %.082
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.db, double %i.ba, double %i.cw)
  %.185 = select i1 %i.da, double %i.dc, double %i.cw ; 2 uses
  %i.dd = fcmp ogt double %.0, 0.000000e+00
  br i1 %i.dd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %has_indexed_join_quals.exit.thread
  %i.de = tail call double @llvm.fmuladd.f64(double %.0, double %i.ar, double %.185)
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.df = fmul double %spec.store.select, %spec.store.select1
  br label %bb.r

bb.r:                                             ; preds = %has_indexed_join_quals.exit.thread108, %bb.p, %has_indexed_join_quals.exit.thread, %bb.q
  %.3 = phi double [ %i.l, %bb.q ], [ %i.cu, %has_indexed_join_quals.exit.thread108 ], [ %i.de, %bb.p ], [ %.185, %has_indexed_join_quals.exit.thread ]
  %.1 = phi double [ %i.df, %bb.q ], [ %i.bc, %has_indexed_join_quals.exit.thread108 ], [ %i.cv, %bb.p ], [ %i.cv, %has_indexed_join_quals.exit.thread ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %0, ptr %4, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %.not.i92 = icmp eq ptr %i.dh, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  br i1 %.not.i92, label %cost_qual_eval.exit, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load i32, ptr %i.dj, align 4
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i93, %.lr.ph14.i
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95, %.lr.ph14.i ], [ 0, %.lr.ph.i93 ] ; 2 uses
  %i.dn = load ptr, ptr %i.dk, align 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i94
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.dp, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %i.dr = load i32, ptr %i.dj, align 4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next.i95, %i.ds
  br i1 %i.dt, label %.lr.ph14.i, label %cost_qual_eval.exit.loopexit

cost_qual_eval.exit.loopexit:                     ; preds = %.lr.ph14.i
  %.sroa.0.0.copyload.pre = load double, ptr %i.di, align 8
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.4.0.copyload.pre = load double, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8
  br label %cost_qual_eval.exit
end_hunk_4
begin_hunk_5_@initial_cost_mergejoin:bb.a
  %i.z = load ptr, ptr %i.y, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.z, %bb.e ], [ %7, %bb.d ]
  %i.ab = getelementptr i8, ptr %i.x, i64 16
  %.val173 = load ptr, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %.val173, align 8         ; 4 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %.val = load ptr, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %.val, align 8            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %.not167 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not167, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8
  %.not168 = icmp eq i32 %i.am, %i.aq
  br i1 %.not168, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.au = load i32, ptr %i.at, align 4
  %.not169 = icmp eq i32 %i.as, %i.au
  br i1 %.not169, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !range !4, !noundef !5 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !range !4, !noundef !5
  %.not170 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not170, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.az = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.ba = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3721, ptr noundef nonnull @__func__.initial_cost_mergejoin) #14
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 184 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %wide.trip.count.i = zext nneg i32 %i.be to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph52.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph52.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bj = load ptr, ptr %i.bi, align 8            ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp eq i32 %i.bk, %i.ag
  br i1 %i.bl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, %i.am
  br i1 %i.bo, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = icmp eq i32 %i.bq, %i.as
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bt = load i8, ptr %i.bs, align 4, !range !4, !noundef !5
  %i.bu = icmp eq i8 %i.bt, %i.aw
  br i1 %i.bu, label %cached_scansel.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l

._crit_edge.i:                                    ; preds = %bb.p, %.lr.ph.i, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = trunc nuw i8 %i.aw to i1
  call void @mergejoinscansel(ptr noundef %0, ptr noundef %i.bw, i32 noundef %i.ag, i32 noundef %i.as, i1 noundef zeroext %i.bx, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #14
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.bz, ptr @CurrentMemoryContext, align 8
  %i.cb = call ptr @palloc(i64 noundef 48) #14    ; 10 uses
  %i.cc = load i32, ptr %i.af, align 8
  store i32 %i.cc, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.aj, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = load i32, ptr %i.ar, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %i.ch, ptr %i.ci, align 8
  %i.cj = load i8, ptr %i.av, align 8, !range !4, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i8 %i.cj, ptr %i.ck, align 4
  %i.cl = load double, ptr %i.e, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store double %i.cl, ptr %i.cm, align 8
  %i.cn = load double, ptr %i.f, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store double %i.cn, ptr %i.co, align 8
  %i.cp = load double, ptr %i.g, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store double %i.cp, ptr %i.cq, align 8
  %i.cr = load double, ptr %i.h, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store double %i.cr, ptr %i.cs, align 8
  %i.ct = load ptr, ptr %i.bb, align 8
  %i.cu = call ptr @lappend(ptr noundef %i.ct, ptr noundef nonnull %i.cb) #14
  store ptr %i.cu, ptr %i.bb, align 8
  store ptr %i.ca, ptr @CurrentMemoryContext, align 8
  br label %cached_scansel.exit

cached_scansel.exit:                              ; preds = %bb.o, %._crit_edge.i
  %.1.i = phi ptr [ %i.cb, %._crit_edge.i ], [ %i.bj, %bb.o ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call zeroext i1 @bms_is_subset(ptr noundef %i.cw, ptr noundef %i.da) #14 ; 4 uses
  %. = select i1 %i.db, i64 16, i64 32
  %.205 = select i1 %i.db, i64 24, i64 40
  %.206 = select i1 %i.db, i64 32, i64 16
  %.207 = select i1 %i.db, i64 40, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.
  %i.dd = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.205
  %i.de = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.206
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.207
  %.0 = load double, ptr %i.df, align 8           ; 2 uses
  %.0144 = load double, ptr %i.de, align 8        ; 2 uses
  %.0147 = load double, ptr %i.dd, align 8        ; 2 uses
  %.0150 = load double, ptr %i.dc, align 8        ; 2 uses
  %i.dg = and i32 %2, -5
  switch i32 %i.dg, label %.fold.split [
    i32 1, label %bb.r
    i32 3, label %bb.q
  ]

bb.q:                                             ; preds = %cached_scansel.exit
  br label %bb.r

.fold.split:                                      ; preds = %cached_scansel.exit
  br label %bb.r

bb.r:                                             ; preds = %cached_scansel.exit, %.fold.split, %bb.q
  %.1151 = phi double [ 0.000000e+00, %cached_scansel.exit ], [ %.0150, %bb.q ], [ %.0150, %.fold.split ]
  %.1148 = phi double [ 1.000000e+00, %cached_scansel.exit ], [ %.0147, %bb.q ], [ %.0147, %.fold.split ]
  %.1145 = phi double [ %.0144, %cached_scansel.exit ], [ 0.000000e+00, %bb.q ], [ %.0144, %.fold.split ]
  %.1 = phi double [ %.0, %cached_scansel.exit ], [ 1.000000e+00, %bb.q ], [ %.0, %.fold.split ]
  %i.dh = insertelement <2 x double> poison, double %.1148, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %.1, i64 1
  %i.dj = fmul <2 x double> %i.p, %i.di
  %i.dk = insertelement <2 x double> poison, double %.1151, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %.1145, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %i.dm = phi <2 x double> [ %i.dl, %bb.r ], [ zeroinitializer, %bb.a ]
  %i.dn = phi <2 x double> [ %i.dj, %bb.r ], [ %i.p, %bb.a ] ; 2 uses
  %i.do = fmul <2 x double> %i.p, %i.dm
  %i.dp = call <2 x double> @llvm.rint.v2f64(<2 x double> %i.do) ; 3 uses
  %i.dq = extractelement <2 x double> %i.dn, i64 0 ; 3 uses
  %or.cond.i = fcmp ugt double %i.dq, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = fcmp ugt double %i.dq, 1.000000e+00
  br i1 %i.dr, label %bb.u, label %clamp_row_est.exit

bb.u:                                             ; preds = %bb.t
  %i.ds = call double @llvm.rint.f64(double %i.dq)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.s, %bb.t, %bb.u
  %.0.i = phi double [ %i.ds, %bb.u ], [ 1.000000e+100, %bb.s ], [ 1.000000e+00, %bb.t ] ; 2 uses
  %i.dt = extractelement <2 x double> %i.dn, i64 1 ; 3 uses
  %or.cond.i175 = fcmp ugt double %i.dt, 1.000000e+100
  br i1 %or.cond.i175, label %clamp_row_est.exit177, label %bb.v

bb.v:                                             ; preds = %clamp_row_est.exit
  %i.du = fcmp ugt double %i.dt, 1.000000e+00
  br i1 %i.du, label %bb.w, label %clamp_row_est.exit177

bb.w:                                             ; preds = %bb.v
  %i.dv = call double @llvm.rint.f64(double %i.dt)
  br label %clamp_row_est.exit177

clamp_row_est.exit177:                            ; preds = %clamp_row_est.exit, %bb.v, %bb.w
  %.0.i176 = phi double [ %i.dv, %bb.w ], [ 1.000000e+100, %clamp_row_est.exit ], [ 1.000000e+00, %bb.v ] ; 2 uses
  %i.dw = fdiv <2 x double> %i.dp, %i.p           ; 5 uses
  %.not171 = icmp eq ptr %6, null
  br i1 %.not171, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %clamp_row_est.exit177
  %i.dx = load i8, ptr @enable_incremental_sort, align 1, !range !4, !noundef !5
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = icmp sgt i32 %8, 0
  %or.cond7 = and i1 %i.dz, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.eb = load i32, ptr %i.ea, align 8            ; 2 uses
  br i1 %or.cond7, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ed = load double, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ef = load double, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = load i32, ptr @work_mem, align 4
  call void @cost_incremental_sort(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %6, i32 noundef %8, i32 noundef %i.eb, double noundef %i.ed, double noundef %i.ef, double noundef %i.q, i32 noundef %i.ej, double noundef 0.000000e+00, i32 noundef %i.ek, double noundef -1.000000e+00)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %.pre182 = load double, ptr %.phi.trans.insert181, align 8
  %.phi.trans.insert183 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %.pre184 = load double, ptr %.phi.trans.insert183, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.em = load double, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = load i32, ptr @work_mem, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call fastcc void @cost_tuplesort(ptr noundef %i.c, ptr noundef %i.d, double noundef %i.q, i32 noundef %i.eq, double noundef 0.000000e+00, i32 noundef %i.er, double noundef -1.000000e+00)
  %i.es = load double, ptr %i.c, align 8
  %i.et = fadd double %i.em, %i.es                ; 2 uses
  %i.eu = load i8, ptr @enable_sort, align 1, !range !4, !noundef !5
  %i.ev = xor i8 %i.eu, 1
  %not..i = zext nneg i8 %i.ev to i32
  %i.ew = add i32 %i.eb, %not..i
  %i.ex = load double, ptr %i.d, align 8
  %i.ey = fadd double %i.et, %i.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ez = phi double [ %i.ey, %bb.z ], [ %.pre184, %bb.y ]
  %i.fa = phi double [ %i.et, %bb.z ], [ %.pre182, %bb.y ] ; 2 uses
  %i.fb = phi i32 [ %i.ew, %bb.z ], [ %.pre, %bb.y ]
  %i.fc = fadd double %i.fa, 0.000000e+00
  %i.fd = fsub double %i.ez, %i.fa                ; 2 uses
  %i.fe = extractelement <2 x double> %i.dw, i64 0
  %i.ff = call double @llvm.fmuladd.f64(double %i.fd, double %i.fe, double %i.fc)
  br label %bb.ac

bb.ab:                                            ; preds = %clamp_row_est.exit177
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fj = load double, ptr %i.fi, align 8         ; 2 uses
  %i.fk = fadd double %i.fj, 0.000000e+00
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fm = load double, ptr %i.fl, align 8
  %i.fn = fsub double %i.fm, %i.fj                ; 2 uses
  %i.fo = extractelement <2 x double> %i.dw, i64 0
  %i.fp = call double @llvm.fmuladd.f64(double %i.fn, double %i.fo, double %i.fk)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink201 = phi double [ %i.fn, %bb.ab ], [ %i.fd, %bb.aa ]
  %.0157 = phi i32 [ %i.fh, %bb.ab ], [ %i.fb, %bb.aa ]
  %.0155 = phi double [ %i.fp, %bb.ab ], [ %i.ff, %bb.aa ] ; 2 uses
  %.not172 = icmp eq ptr %7, null
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fr = load i32, ptr %i.fq, align 8            ; 2 uses
  br i1 %.not172, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ft = load double, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load i32, ptr %i.fw, align 8
  %i.fy = load i32, ptr @work_mem, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.fz = extractelement <2 x double> %i.p, i64 1
  call fastcc void @cost_tuplesort(ptr noundef %i.a, ptr noundef %i.b, double noundef %i.fz, i32 noundef %i.fx, double noundef 0.000000e+00, i32 noundef %i.fy, double noundef -1.000000e+00)
  %i.ga = load double, ptr %i.a, align 8
  %i.gb = fadd double %i.ft, %i.ga                ; 3 uses
  %i.gc = load i8, ptr @enable_sort, align 1, !range !4, !noundef !5
  %i.gd = xor i8 %i.gc, 1
  %not..i178 = zext nneg i8 %i.gd to i32
  %i.ge = add i32 %i.fr, %not..i178
  %i.gf = load double, ptr %i.b, align 8
  %i.gg = fadd double %i.gb, %i.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.gh = fadd double %.0155, %i.gb
  %i.gi = fsub double %i.gg, %i.gb                ; 2 uses
  %i.gj = extractelement <2 x double> %i.dw, i64 1
  %i.gk = call double @llvm.fmuladd.f64(double %i.gi, double %i.gj, double %i.gh)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.gm = load double, ptr %i.gl, align 8         ; 2 uses
  %i.gn = fadd double %.0155, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gp = load double, ptr %i.go, align 8
  %i.gq = fsub double %i.gp, %i.gm                ; 2 uses
  %i.gr = extractelement <2 x double> %i.dw, i64 1
  %i.gs = call double @llvm.fmuladd.f64(double %i.gq, double %i.gr, double %i.gn)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink204 = phi double [ %i.gq, %bb.ae ], [ %i.gi, %bb.ad ]
  %.pn = phi i32 [ %i.fr, %bb.ae ], [ %i.ge, %bb.ad ]
  %.1156 = phi double [ %i.gs, %bb.ae ], [ %i.gk, %bb.ad ] ; 2 uses
  %i.gt = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %.0.i176, i64 1
  %i.gv = fdiv <2 x double> %i.gu, %i.p
  %i.gw = fsub <2 x double> %i.gv, %i.dw          ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 0
  %i.gy = call double @llvm.fmuladd.f64(double %.sink201, double %i.gx, double 0.000000e+00) ; 2 uses
  %i.gz = extractelement <2 x double> %i.gw, i64 1
  %i.ha = fmul double %i.gz, %.sink204            ; 2 uses
  %.1158 = add i32 %.pn, %.0157
  store i32 %.1158, ptr %1, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %.1156, ptr %i.hb, align 8
  %i.hc = fadd double %i.gy, %.1156
  %i.hd = fadd double %i.hc, %i.ha
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.hd, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.gy, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.ha, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %.0.i, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %.0.i176, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hk = extractelement <2 x double> %i.dp, i64 0
  store double %i.hk, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hm = extractelement <2 x double> %i.dp, i64 1
  store double %i.hm, ptr %i.hl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  ret void
}

declare zeroext i1 @bms_is_subset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @final_cost_mergejoin(ptr noundef %0, ptr nofree noundef captures(none) initializes((40, 48)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.SpecialJoinInfo, align 8    ; 4 uses
  %5 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %6 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load double, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load double, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load double, ptr %i.o, align 8           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load double, ptr %i.s, align 8           ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = load double, ptr %i.u, align 8           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.x = load double, ptr %i.w, align 8           ; 2 uses
  %i.y = fcmp ole double %i.f, 0.000000e+00
  %spec.store.select = select i1 %i.y, double 1.000000e+00, double %i.f ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi ptr [ %i.ac, %bb.b ], [ %i.aa, %bb.a ]
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ad = load double, ptr %.in, align 8          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store double %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ai = uitofp nneg i32 %i.ag to double         ; 3 uses
  %i.aj = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %get_parallel_divisor.exit

bb.e:                                             ; preds = %bb.d
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  %i.an = select i1 %i.am, double %i.al, double -0.000000e+00
  %.0.i = fadd double %i.an, %i.ai
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.d, %bb.e
  %.1.i = phi double [ %.0.i, %bb.e ], [ %i.ai, %bb.d ]
  %i.ao = fdiv double %i.ad, %.1.i                ; 3 uses
  %or.cond.i = fcmp ugt double %i.ao, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.f

bb.f:                                             ; preds = %get_parallel_divisor.exit
  %i.ap = fcmp ugt double %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.g, label %clamp_row_est.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call double @llvm.rint.f64(double %i.ao)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.f, %bb.g
  %.0.i122 = phi double [ %i.aq, %bb.g ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.f ]
  store double %.0.i122, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %clamp_row_est.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %0, ptr %6, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %.not.i = icmp eq ptr %i.h, null                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %cost_qual_eval.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.au = load i32, ptr %i.as, align 4
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph14.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.ay, ptr noundef nonnull %6) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ba = load i32, ptr %i.as, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next.i, %i.bb
  br i1 %i.bc, label %.lr.ph14.i, label %cost_qual_eval.exit.loopexit

cost_qual_eval.exit.loopexit:                     ; preds = %.lr.ph14.i
  %i.bd = load <2 x double>, ptr %i.ar, align 8
  br label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %cost_qual_eval.exit.loopexit, %bb.h, %.lr.ph.i
  %i.be = phi <2 x double> [ %i.bd, %cost_qual_eval.exit.loopexit ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %0, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %.not.i123 = icmp eq ptr %i.bg, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  br i1 %.not.i123, label %cost_qual_eval.exit128, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %cost_qual_eval.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i32, ptr %i.bi, align 4
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph14.i125, label %cost_qual_eval.exit128

.lr.ph14.i125:                                    ; preds = %.lr.ph.i124, %.lr.ph14.i125
  %indvars.iv.i126 = phi i64 [ %indvars.iv.next.i127, %.lr.ph14.i125 ], [ 0, %.lr.ph.i124 ] ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i126
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.bo, ptr noundef nonnull %5) ; 0 uses
  %indvars.iv.next.i127 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %i.bq = load i32, ptr %i.bi, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next.i127, %i.br
  br i1 %i.bs, label %.lr.ph14.i125, label %cost_qual_eval.exit128.loopexit

cost_qual_eval.exit128.loopexit:                  ; preds = %.lr.ph14.i125
  %i.bt = load <2 x double>, ptr %i.bh, align 8
  br label %cost_qual_eval.exit128

cost_qual_eval.exit128:                           ; preds = %cost_qual_eval.exit128.loopexit, %cost_qual_eval.exit, %.lr.ph.i124
  %i.bu = phi <2 x double> [ %i.bt, %cost_qual_eval.exit128.loopexit ], [ zeroinitializer, %cost_qual_eval.exit ], [ zeroinitializer, %.lr.ph.i124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = and i32 %i.bw, -2
  %switch = icmp eq i32 %i.bx, 4
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %cost_qual_eval.exit128
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load i8, ptr %i.by, align 8, !range !4, !noundef !5
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.j, label %bb.m

bb.j:                                             ; preds = %cost_qual_eval.exit128, %bb.i
  %i.cb = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i129 = icmp eq ptr %i.cb, null
  br i1 %.not.i129, label %list_length.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.j, %bb.k
  %i.ce = phi i32 [ %i.cd, %bb.k ], [ 0, %bb.j ]
  %i.cf = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i130 = icmp eq ptr %i.cf, null
  br i1 %.not.i130, label %list_length.exit131, label %bb.l

bb.l:                                             ; preds = %list_length.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  br label %list_length.exit131

list_length.exit131:                              ; preds = %list_length.exit, %bb.l
  %i.ci = phi i32 [ %i.ch, %bb.l ], [ 0, %list_length.exit ]
  %i.cj = icmp eq i32 %i.ce, %i.ci
  br i1 %i.cj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %list_length.exit131, %bb.i
  br label %bb.n

bb.n:                                             ; preds = %list_length.exit131, %bb.m
  %.sink = phi i8 [ 0, %bb.m ], [ 1, %list_length.exit131 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i8 %.sink, ptr %i.ck, align 4
  %.val118 = load ptr, ptr %i.a, align 8          ; 2 uses
  %.val119 = load ptr, ptr %i.c, align 8          ; 2 uses
  %i.cl = getelementptr i8, ptr %.val118, i64 8
  %.val118.val = load ptr, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %.val118, i64 40
  %.val118.val120 = load double, ptr %i.cm, align 8 ; 3 uses
  %i.cn = getelementptr i8, ptr %.val119, i64 8
  %.val119.val = load ptr, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %.val119, i64 40
  %.val119.val121 = load double, ptr %i.co, align 8
  %i.cp = getelementptr i8, ptr %.val118.val, i64 8
  %.val118.val.val = load ptr, ptr %i.cp, align 8
  %i.cq = getelementptr i8, ptr %.val119.val, i64 8
  %.val119.val.val = load ptr, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @init_dummy_sjinfo(ptr noundef nonnull %4, ptr noundef %.val118.val.val, ptr noundef %.val119.val.val) #14
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cs = load i32, ptr %i.as, align 4
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph8.i, label %.critedge.i

.lr.ph8.i:                                        ; preds = %.lr.ph.i133, %.lr.ph8.i
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i135, %.lr.ph8.i ], [ 0, %.lr.ph.i133 ] ; 2 uses
  %.01717.i = phi double [ %i.cy, %.lr.ph8.i ], [ 1.000000e+00, %.lr.ph.i133 ]
  %i.cu = load ptr, ptr %i.cr, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i134
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call double @clause_selectivity(ptr noundef %0, ptr noundef %i.cw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #14
  %i.cy = fmul double %.01717.i, %i.cx            ; 2 uses
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i134, 1 ; 2 uses
  %i.cz = load i32, ptr %i.as, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next.i135, %i.da
  br i1 %i.db, label %.lr.ph8.i, label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %.lr.ph8.i
  %i.dc = fmul double %.val118.val120, %i.cy
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.lr.ph.i133, %bb.n
  %.017.lcssa.i = phi double [ %.val118.val120, %bb.n ], [ %.val118.val120, %.lr.ph.i133 ], [ %i.dc, %.critedge.loopexit.i ]
  %i.dd = fmul double %.val119.val121, %.017.lcssa.i ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.dd, 1.000000e+100
  br i1 %or.cond.i.i, label %approx_tuple_count.exit, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.de = fcmp ugt double %i.dd, 1.000000e+00
  br i1 %i.de, label %bb.p, label %approx_tuple_count.exit

bb.p:                                             ; preds = %bb.o
  %i.df = call double @llvm.rint.f64(double %i.dd)
  br label %approx_tuple_count.exit

approx_tuple_count.exit:                          ; preds = %.critedge.i, %bb.o, %bb.p
  %.0.i.i = phi double [ %i.df, %bb.p ], [ 1.000000e+100, %.critedge.i ], [ 1.000000e+00, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 4, !range !4, !noundef !5
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.u, label %bb.q

bb.q:                                             ; preds = %approx_tuple_count.exit
  %i.dj = load i32, ptr %i.bv, align 8
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = icmp eq i32 %i.do, 4
  br i1 %i.dp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call zeroext i1 @bms_equal(ptr noundef %i.dr, ptr noundef %i.dv) #14
  br i1 %i.dw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.dx = fsub double %.0.i.i, %spec.store.select ; 2 uses
  %i.dy = fcmp olt double %i.dx, 0.000000e+00
  %spec.store.select1 = select i1 %i.dy, double 0.000000e+00, double %i.dx
  br label %bb.u

bb.u:                                             ; preds = %approx_tuple_count.exit, %bb.s, %bb.t
  %.0109 = phi double [ %spec.store.select1, %bb.t ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %approx_tuple_count.exit ]
  %i.dz = fdiv double %.0109, %i.t
  %i.ea = fadd double %i.dz, 1.000000e+00         ; 4 uses
  %i.eb = fmul double %i.p, %i.ea                 ; 5 uses
  %i.ec = load double, ptr @cpu_operator_cost, align 8
  %i.ed = fmul double %i.t, %i.ec
  %i.ee = call double @llvm.fmuladd.f64(double %i.ed, double %i.ea, double %i.p) ; 2 uses
  %i.ef = load i8, ptr %i.dg, align 4, !range !4, !noundef !5
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.ej = and i64 %i.ei, 128
  %.not113 = icmp eq i64 %i.ej, 0
  br i1 %.not113, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = fcmp olt double %i.ee, %i.eb
  %i.el = and i64 %i.ei, 64
  %i.em = icmp eq i64 %i.el, 0
  %or.cond116 = or i1 %i.ek, %i.em
  br i1 %or.cond116, label %bb.aa, label %.thread155

bb.x:                                             ; preds = %bb.v
  %i.en = icmp eq ptr %i.j, null
  br i1 %i.en, label %bb.y, label %.thread

.thread155:                                       ; preds = %bb.w
  %i.eo = icmp eq ptr %i.j, null
  br i1 %i.eo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread155, %bb.x
  %i.ep = call zeroext i1 @ExecSupportsMarkRestore(ptr noundef nonnull %i.d) #14
  br i1 %i.ep, label %.thread, label %bb.aa

bb.z:                                             ; preds = %.thread155
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = sext i32 %i.et to i64
  %i.ev = add nsw i64 %i.eu, 7
  %i.ew = and i64 %i.ev, -8
  %i.ex = add nsw i64 %i.ew, 24
  %i.ey = uitofp i64 %i.ex to double
  %i.ez = fmul double %spec.store.select, %i.ey
  %i.fa = load i32, ptr @work_mem, align 4
  %i.fb = sext i32 %i.fa to i64
  %i.fc = shl nsw i64 %i.fb, 10
  %i.fd = uitofp i64 %i.fc to double
  %i.fe = fcmp ogt double %i.ez, %i.fd
  br i1 %i.fe, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sink163 = phi i8 [ 1, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.u ]
  %. = phi double [ %i.ee, %bb.aa ], [ %i.eb, %bb.z ], [ %i.eb, %bb.y ], [ %i.eb, %bb.x ], [ %i.eb, %bb.u ]
  %i.ff = phi i64 [ 128, %bb.aa ], [ 64, %bb.z ], [ 64, %bb.y ], [ 64, %bb.x ], [ 64, %bb.u ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 141
  store i8 %.sink163, ptr %i.fg, align 1
  %i.fh = load i32, ptr %2, align 8               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i32 %i.fh, ptr %i.fi, align 8
  %i.fj = load i32, ptr %i.af, align 4
  %i.fk = icmp eq i32 %i.fj, 0
  %i.fl = or disjoint i64 %i.ff, 262144
  %.1 = select i1 %i.fk, i64 %i.fl, i64 %i.ff     ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = and i64 %.1, %i.fn
  %.not114 = icmp eq i64 %i.fo, %.1
  br i1 %.not114, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.fp = add i32 %i.fh, 1
  store i32 %i.fp, ptr %i.fi, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread
  %i.fq = fsub <2 x double> %i.bu, %i.be          ; 2 uses
  %.0110 = fadd double %i.n, %.
  %i.fr = extractelement <2 x double> %i.be, i64 0
  %i.fs = fadd double %i.l, %i.fr
  %i.ft = call double @llvm.fmuladd.f64(double %i.x, double %i.ea, double %i.v)
  %i.fu = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %i.fv = call double @llvm.fmuladd.f64(double %i.fu, double %i.ft, double %i.fs)
  %i.fw = fsub double %i.r, %i.v
  %i.fx = fsub double %i.t, %i.x
  %i.fy = call double @llvm.fmuladd.f64(double %i.fx, double %i.ea, double %i.fw)
  %i.fz = call double @llvm.fmuladd.f64(double %i.fu, double %i.fy, double %.0110)
  %i.ga = extractelement <2 x double> %i.fq, i64 0
  %i.gb = fadd double %i.ga, %i.fv
  %i.gc = load double, ptr @cpu_tuple_cost, align 8
  %i.gd = extractelement <2 x double> %i.fq, i64 1
  %i.ge = fadd double %i.gd, %i.gc
  %i.gf = call double @llvm.fmuladd.f64(double %i.ge, double %.0.i.i, double %i.fz)
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load double, ptr %i.gi, align 8
  %i.gk = fadd double %i.gb, %i.gj                ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gm = load double, ptr %i.gl, align 8
  %i.gn = load double, ptr %i.ae, align 8
  %i.go = call double @llvm.fmuladd.f64(double %i.gm, double %i.gn, double %i.gf)
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.gk, ptr %i.gp, align 8
  %i.gq = fadd double %i.gk, %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.gq, ptr %i.gr, align 8
  ret void
}

declare zeroext i1 @bms_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @ExecSupportsMarkRestore(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @initial_cost_hashjoin(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 32), (80, 96)) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i1 noundef zeroext %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.h = load double, ptr %i.g, align 8           ; 4 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %list_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sitofp i32 %i.j to double
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.a, %bb.b
  %i.l = phi double [ %i.k, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.w = load double, ptr %i.v, align 8
  %i.x = load <2 x double>, ptr %i.u, align 8     ; 2 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> <double -0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.z = fsub <2 x double> %i.x, %i.y
  %i.aa = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.w, i64 0
  %i.ab = fadd <2 x double> %i.z, %i.aa
  %i.ac = load double, ptr @cpu_operator_cost, align 8 ; 2 uses
  %i.ad = load double, ptr @cpu_tuple_cost, align 8
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.l, double %i.ad)
  %i.af = fmul double %i.l, %i.ac
  %i.ag = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.af, i64 1
  %i.ai = insertelement <2 x double> poison, double %i.h, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.f, i64 1
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.aj, <2 x double> %i.ab) ; 2 uses
  br i1 %7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %list_length.exit
  %i.al = getelementptr i8, ptr %5, i64 36
  %.val = load i32, ptr %i.al, align 4
  %i.am = sitofp i32 %.val to double              ; 3 uses
  %i.an = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %get_parallel_divisor.exit

bb.d:                                             ; preds = %bb.c
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.am, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.aq = fcmp ogt double %i.ap, 0.000000e+00
  %i.ar = select i1 %i.aq, double %i.ap, double -0.000000e+00
  %.0.i = fadd double %i.ar, %i.am
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.c, %bb.d
  %.1.i = phi double [ %.0.i, %bb.d ], [ %i.am, %bb.c ]
  %i.as = fmul double %i.h, %.1.i
  br label %bb.e

bb.e:                                             ; preds = %get_parallel_divisor.exit, %list_length.exit
  %.055 = phi double [ %i.as, %get_parallel_divisor.exit ], [ %i.h, %list_length.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load i32, ptr %i.av, align 8
  call void @ExecChooseHashTableSize(double noundef %.055, i32 noundef %i.aw, i1 noundef zeroext true, i1 noundef zeroext %7, i32 noundef %i.n, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %i.ax = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.at, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = sext i32 %i.bc to i64
  %i.bh = sext i32 %i.bf to i64
  %i.bi = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %i.bj = insertelement <2 x i64> %i.bi, i64 %i.bh, i64 1
  %i.bk = add nsw <2 x i64> %i.bj, splat (i64 7)
  %i.bl = and <2 x i64> %i.bk, splat (i64 -8)
  %i.bm = add nsw <2 x i64> %i.bl, splat (i64 24)
  %i.bn = uitofp <2 x i64> %i.bm to <2 x double>  ; 2 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0
  %i.bp = fmul double %i.f, %i.bo
  %i.bq = fmul double %i.bp, f0x3F20000000000000
  %i.br = call double @llvm.ceil.f64(double %i.bq)
  %i.bs = extractelement <2 x double> %i.bn, i64 1
  %i.bt = fmul double %i.h, %i.bs
  %i.bu = fmul double %i.bt, f0x3F20000000000000
  %i.bv = call double @llvm.ceil.f64(double %i.bu) ; 2 uses
  %i.bw = load double, ptr @seq_page_cost, align 8
  %i.bx = call double @llvm.fmuladd.f64(double %i.br, double 2.000000e+00, double %i.bv)
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bx, i64 1
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.cb, <2 x double> %i.ak)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cd = phi <2 x double> [ %i.cc, %bb.f ], [ %i.ak, %bb.e ] ; 2 uses
  %i.ce = icmp eq i32 %i.n, 0
  %spec.select = select i1 %i.ce, i64 -264193, i64 -2049
  %i.cf = or i64 %spec.select, %i.p
  %i.cg = icmp ne i64 %i.cf, -1
  %i.ch = zext i1 %i.cg to i32
  %i.ci = add i32 %i.t, %i.r
  %i.cj = add i32 %i.ci, %i.ch
  store i32 %i.cj, ptr %1, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  store double %i.cl, ptr %i.ck, align 8
  %i.cm = extractelement <2 x double> %i.cd, i64 1 ; 2 uses
  %i.cn = fadd double %i.cm, %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.cm, ptr %i.cp, align 8
  %i.cq = load i32, ptr %i.a, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.cq, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 %i.ax, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 88
  store double %.055, ptr %i.ct, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare void @ExecChooseHashTableSize(double noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @final_cost_hashjoin(ptr noundef %0, ptr nofree noundef captures(none) initializes((40, 52), (120, 124), (128, 136)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.SpecialJoinInfo, align 8    ; 4 uses
  %5 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %6 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load double, ptr %i.h, align 8           ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load double, ptr %i.n, align 8           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.v = load i32, ptr %2, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi ptr [ %i.aa, %bb.b ], [ %i.y, %bb.a ]
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ab = load double, ptr %.in, align 8          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store double %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ag = uitofp nneg i32 %i.ae to double         ; 3 uses
  %i.ah = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %get_parallel_divisor.exit

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ag, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.ak = fcmp ogt double %i.aj, 0.000000e+00
  %i.al = select i1 %i.ak, double %i.aj, double -0.000000e+00
  %.0.i = fadd double %i.al, %i.ag
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.d, %bb.e
  %.1.i = phi double [ %.0.i, %bb.e ], [ %i.ag, %bb.d ]
  %i.am = fdiv double %i.ab, %.1.i                ; 3 uses
  %or.cond.i = fcmp ugt double %i.am, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.f

bb.f:                                             ; preds = %get_parallel_divisor.exit
  %i.an = fcmp ugt double %i.am, 1.000000e+00
  br i1 %i.an, label %bb.g, label %clamp_row_est.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call double @llvm.rint.f64(double %i.am)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.f, %bb.g
  %.0.i140 = phi double [ %i.ao, %bb.g ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.f ]
  store double %.0.i140, ptr %i.ac, align 8
  br label %bb.h

bb.h:                                             ; preds = %clamp_row_est.exit, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %i.u, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  store double %i.k, ptr %i.aq, align 8
  %i.ar = sitofp i32 %i.s to double
  %i.as = sitofp i32 %i.u to double
  %i.at = fmul nnan double %i.ar, %i.as           ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, 4
  br i1 %i.bb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call zeroext i1 @bms_equal(ptr noundef %i.bd, ptr noundef %i.bh) #14
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.k, i64 1
  %i.bl = fdiv <2 x double> splat (double 1.000000e+00), %i.bk ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  store double %i.bm, ptr %i.a, align 8
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  store double 1.000000e+00, ptr %i.a, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call ptr @estimate_multivariate_bucketsize(ptr noundef %0, ptr noundef %i.bp, ptr noundef %i.m, ptr noundef nonnull %i.a) #14 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %.not132 = icmp eq ptr %i.bq, null
  br i1 %.not132, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = load i32, ptr %i.br, align 4
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph201, label %.critedge

.lr.ph201:                                        ; preds = %.lr.ph, %bb.u
  %.0119176200 = phi double [ %.1120, %bb.u ], [ 1.000000e+00, %.lr.ph ] ; 2 uses
  %indvars.iv199 = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %.lr.ph ] ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv199
  %i.bx = load ptr, ptr %i.bw, align 8            ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.bo, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call zeroext i1 @bms_is_subset(ptr noundef %i.bz, ptr noundef %i.cc) #14
  br i1 %i.cd, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.lr.ph201
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 208 ; 3 uses
  %i.cf = load double, ptr %i.ce, align 8         ; 2 uses
  %i.cg = fcmp olt double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 32
  %.val138 = load ptr, ptr %i.cj, align 8         ; 3 uses
  %.not.i.i = icmp eq ptr %.val138, null
  br i1 %.not.i.i, label %get_rightop.exit, label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %.val138, i64 4
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.o, label %get_rightop.exit

bb.o:                                             ; preds = %list_length.exit.i
  %i.cn = getelementptr i8, ptr %.val138, i64 16
  %.val.i = load ptr, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  br label %get_rightop.exit

get_rightop.exit:                                 ; preds = %bb.n, %list_length.exit.i, %bb.o
  %.0.i141 = phi ptr [ %i.cp, %bb.o ], [ null, %list_length.exit.i ], [ null, %bb.n ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 224
  call void @estimate_hash_bucket_stats(ptr noundef %0, ptr noundef %.0.i141, double noundef %i.at, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ce) #14
  %i.cr = load double, ptr %i.ce, align 8
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph201
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 200 ; 3 uses
  %i.ct = load double, ptr %i.cs, align 8         ; 2 uses
  %i.cu = fcmp olt double %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 32
  %.val139 = load ptr, ptr %i.cx, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.val139, null
  br i1 %.not.i, label %get_leftop.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr i8, ptr %.val139, i64 16
  %.val.i142 = load ptr, ptr %i.cy, align 8
  %i.cz = load ptr, ptr %.val.i142, align 8
  br label %get_leftop.exit

get_leftop.exit:                                  ; preds = %bb.q, %bb.r
  %.0.i143 = phi ptr [ %i.cz, %bb.r ], [ null, %bb.q ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.bx, i64 216
  call void @estimate_hash_bucket_stats(ptr noundef %0, ptr noundef %.0.i143, double noundef %i.at, ptr noundef nonnull %i.da, ptr noundef nonnull %i.cs) #14
  %i.db = load double, ptr %i.cs, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %get_leftop.exit, %bb.m, %get_rightop.exit
  %.sink = phi i64 [ 224, %bb.m ], [ 224, %get_rightop.exit ], [ 216, %get_leftop.exit ], [ 216, %bb.p ]
  %.2 = phi double [ %i.cf, %bb.m ], [ %i.cr, %get_rightop.exit ], [ %i.db, %get_leftop.exit ], [ %i.ct, %bb.p ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink
  %.0 = load double, ptr %i.dc, align 8           ; 3 uses
  %i.dd = load double, ptr %i.a, align 8
  %i.de = fcmp ogt double %i.dd, %.2
  br i1 %i.de, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %.2, ptr %i.a, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.df = fcmp ogt double %.0, 0.000000e+00
  %i.dg = fcmp ogt double %.0119176200, %.0
  %or.cond = select i1 %i.df, i1 %i.dg, i1 false
  %.1120 = select i1 %or.cond, double %.0, double %.0119176200 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.dh = load i32, ptr %i.br, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %.lr.ph201, label %.critedge

.critedge:                                        ; preds = %bb.u, %.lr.ph, %bb.l, %bb.k
  %.2121 = phi double [ %i.bn, %bb.k ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %.lr.ph ], [ %.1120, %bb.u ]
  %i.dk = fmul double %i.i, %.2121                ; 3 uses
  %or.cond.i144 = fcmp ugt double %i.dk, 1.000000e+100
  br i1 %or.cond.i144, label %clamp_row_est.exit146, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.dl = fcmp ugt double %i.dk, 1.000000e+00
  br i1 %i.dl, label %bb.w, label %clamp_row_est.exit146

bb.w:                                             ; preds = %bb.v
  %i.dm = call nnan ninf double @llvm.rint.f64(double %i.dk)
  br label %clamp_row_est.exit146

clamp_row_est.exit146:                            ; preds = %.critedge, %bb.v, %bb.w
  %.0.i145 = phi double [ %i.dm, %bb.w ], [ 1.000000e+100, %.critedge ], [ 1.000000e+00, %bb.v ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = call i64 @get_hash_memory_limit() #14
  %i.ds = load double, ptr @disable_cost, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %0, ptr %6, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  %.not.i147 = icmp eq ptr %i.m, null             ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  br i1 %.not.i147, label %cost_qual_eval.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %clamp_row_est.exit146
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dw = load i32, ptr %i.du, align 4
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph14.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dy = load ptr, ptr %i.dv, align 8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.i
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.ea, ptr noundef nonnull %6) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ec = load i32, ptr %i.du, align 4
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next.i, %i.ed
  br i1 %i.ee, label %.lr.ph14.i, label %cost_qual_eval.exit.loopexit

cost_qual_eval.exit.loopexit:                     ; preds = %.lr.ph14.i
  %i.ef = load <2 x double>, ptr %i.dt, align 8
  br label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %cost_qual_eval.exit.loopexit, %clamp_row_est.exit146, %.lr.ph.i
  %i.eg = phi <2 x double> [ %i.ef, %cost_qual_eval.exit.loopexit ], [ zeroinitializer, %clamp_row_est.exit146 ], [ zeroinitializer, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ei = load ptr, ptr %i.eh, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %0, ptr %5, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 2 uses
  %.not.i148 = icmp eq ptr %i.ei, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  br i1 %.not.i148, label %cost_qual_eval.exit153, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %cost_qual_eval.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.em = load i32, ptr %i.ek, align 4
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph14.i150, label %cost_qual_eval.exit153

.lr.ph14.i150:                                    ; preds = %.lr.ph.i149, %.lr.ph14.i150
  %indvars.iv.i151 = phi i64 [ %indvars.iv.next.i152, %.lr.ph14.i150 ], [ 0, %.lr.ph.i149 ] ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i151
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.eq, ptr noundef nonnull %5) ; 0 uses
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %i.es = load i32, ptr %i.ek, align 4
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next.i152, %i.et
  br i1 %i.eu, label %.lr.ph14.i150, label %cost_qual_eval.exit153.loopexit

cost_qual_eval.exit153.loopexit:                  ; preds = %.lr.ph14.i150
  %i.ev = load <2 x double>, ptr %i.ej, align 8
  br label %cost_qual_eval.exit153

cost_qual_eval.exit153:                           ; preds = %cost_qual_eval.exit153.loopexit, %cost_qual_eval.exit, %.lr.ph.i149
  %i.ew = phi <2 x double> [ %i.ev, %cost_qual_eval.exit153.loopexit ], [ zeroinitializer, %cost_qual_eval.exit ], [ zeroinitializer, %.lr.ph.i149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ex = load i32, ptr %i.au, align 8            ; 2 uses
  %i.ey = and i32 %i.ex, -2
  %switch = icmp eq i32 %i.ey, 4
  br i1 %switch, label %bb.y, label %bb.x

bb.x:                                             ; preds = %cost_qual_eval.exit153
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fa = load i8, ptr %i.ez, align 8, !range !4, !noundef !5
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %cost_qual_eval.exit153, %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fd = load double, ptr %i.fc, align 8
  %i.fe = fmul double %i.g, %i.fd
  %i.ff = call double @llvm.rint.f64(double %i.fe) ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fh = load double, ptr %i.fg, align 8
  %i.fi = fadd double %i.fh, 1.000000e+00
  %i.fj = fdiv double 2.000000e+00, %i.fi
  %i.fk = extractelement <2 x double> %i.eg, i64 1 ; 2 uses
  %i.fl = fmul double %i.fk, %i.ff
  %i.fm = load double, ptr %i.a, align 8
  %i.fn = fmul double %i.i, %i.fm
  %i.fo = fmul double %i.fn, %i.fj                ; 3 uses
  %or.cond.i154 = fcmp ugt double %i.fo, 1.000000e+100
  br i1 %or.cond.i154, label %clamp_row_est.exit156, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = fcmp ugt double %i.fo, 1.000000e+00
  br i1 %i.fp, label %bb.aa, label %clamp_row_est.exit156

bb.aa:                                            ; preds = %bb.z
  %i.fq = call nnan ninf double @llvm.rint.f64(double %i.fo)
  br label %clamp_row_est.exit156

clamp_row_est.exit156:                            ; preds = %bb.y, %bb.z, %bb.aa
  %.0.i155 = phi double [ %i.fq, %bb.aa ], [ 1.000000e+100, %bb.y ], [ 1.000000e+00, %bb.z ]
  %i.fr = fmul double %i.fl, %.0.i155
  %i.fs = call double @llvm.fmuladd.f64(double %i.fr, double 5.000000e-01, double %i.q)
  %i.ft = fsub double %i.g, %i.ff                 ; 2 uses
  %i.fu = fmul double %i.fk, %i.ft
  %i.fv = fdiv double %i.i, %i.at                 ; 3 uses
  %or.cond.i157 = fcmp ugt double %i.fv, 1.000000e+100
  br i1 %or.cond.i157, label %clamp_row_est.exit159, label %bb.ab

bb.ab:                                            ; preds = %clamp_row_est.exit156
  %i.fw = fcmp ugt double %i.fv, 1.000000e+00
  br i1 %i.fw, label %bb.ac, label %clamp_row_est.exit159

bb.ac:                                            ; preds = %bb.ab
  %i.fx = call nnan ninf double @llvm.rint.f64(double %i.fv)
  br label %clamp_row_est.exit159

clamp_row_est.exit159:                            ; preds = %clamp_row_est.exit156, %bb.ab, %bb.ac
  %.0.i158 = phi double [ %i.fx, %bb.ac ], [ 1.000000e+100, %clamp_row_est.exit156 ], [ 1.000000e+00, %bb.ab ]
  %i.fy = fmul double %i.fu, %.0.i158
  %i.fz = call double @llvm.fmuladd.f64(double %i.fy, double 5.000000e-02, double %i.fs)
  %i.ga = icmp eq i32 %i.ex, 5
  %. = select i1 %i.ga, double %i.ft, double %i.ff
  br label %bb.ai

bb.ad:                                            ; preds = %bb.x
  %i.gb = extractelement <2 x double> %i.eg, i64 1
  %i.gc = fmul double %i.g, %i.gb
  %i.gd = load double, ptr %i.a, align 8
  %i.ge = fmul double %i.i, %i.gd                 ; 3 uses
  %or.cond.i160 = fcmp ugt double %i.ge, 1.000000e+100
  br i1 %or.cond.i160, label %clamp_row_est.exit162, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gf = fcmp ugt double %i.ge, 1.000000e+00
  br i1 %i.gf, label %bb.af, label %clamp_row_est.exit162

bb.af:                                            ; preds = %bb.ae
  %i.gg = call nnan ninf double @llvm.rint.f64(double %i.ge)
  br label %clamp_row_est.exit162

clamp_row_est.exit162:                            ; preds = %bb.ad, %bb.ae, %bb.af
  %.0.i161 = phi double [ %i.gg, %bb.af ], [ 1.000000e+100, %bb.ad ], [ 1.000000e+00, %bb.ae ]
  %i.gh = fmul double %i.gc, %.0.i161
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double 5.000000e-01, double %i.q)
  %.val134 = load ptr, ptr %i.b, align 8          ; 2 uses
  %.val135 = load ptr, ptr %i.d, align 8          ; 2 uses
  %i.gj = getelementptr i8, ptr %.val134, i64 8
  %.val134.val = load ptr, ptr %i.gj, align 8
  %i.gk = getelementptr i8, ptr %.val134, i64 40
  %.val134.val136 = load double, ptr %i.gk, align 8 ; 3 uses
  %i.gl = getelementptr i8, ptr %.val135, i64 8
  %.val135.val = load ptr, ptr %i.gl, align 8
  %i.gm = getelementptr i8, ptr %.val135, i64 40
  %.val135.val137 = load double, ptr %i.gm, align 8
  %i.gn = getelementptr i8, ptr %.val134.val, i64 8
  %.val134.val.val = load ptr, ptr %i.gn, align 8
  %i.go = getelementptr i8, ptr %.val135.val, i64 8
  %.val135.val.val = load ptr, ptr %i.go, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @init_dummy_sjinfo(ptr noundef nonnull %4, ptr noundef %.val134.val.val, ptr noundef %.val135.val.val) #14
  br i1 %.not.i147, label %.critedge.i, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %clamp_row_est.exit162
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.gq = load i32, ptr %i.du, align 4
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph8.i, label %.critedge.i

.lr.ph8.i:                                        ; preds = %.lr.ph.i164, %.lr.ph8.i
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166, %.lr.ph8.i ], [ 0, %.lr.ph.i164 ] ; 2 uses
  %.01717.i = phi double [ %i.gw, %.lr.ph8.i ], [ 1.000000e+00, %.lr.ph.i164 ]
  %i.gs = load ptr, ptr %i.gp, align 8
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.i165
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call double @clause_selectivity(ptr noundef %0, ptr noundef %i.gu, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #14
  %i.gw = fmul double %.01717.i, %i.gv            ; 2 uses
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %i.gx = load i32, ptr %i.du, align 4
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp slt i64 %indvars.iv.next.i166, %i.gy
  br i1 %i.gz, label %.lr.ph8.i, label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %.lr.ph8.i
  %i.ha = fmul double %.val134.val136, %i.gw
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.lr.ph.i164, %clamp_row_est.exit162
  %.017.lcssa.i = phi double [ %.val134.val136, %clamp_row_est.exit162 ], [ %.val134.val136, %.lr.ph.i164 ], [ %i.ha, %.critedge.loopexit.i ]
  %i.hb = fmul double %.val135.val137, %.017.lcssa.i ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.hb, 1.000000e+100
  br i1 %or.cond.i.i, label %approx_tuple_count.exit, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i
  %i.hc = fcmp ugt double %i.hb, 1.000000e+00
  br i1 %i.hc, label %bb.ah, label %approx_tuple_count.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hd = call double @llvm.rint.f64(double %i.hb)
  br label %approx_tuple_count.exit

approx_tuple_count.exit:                          ; preds = %.critedge.i, %bb.ag, %bb.ah
  %.0.i.i = phi double [ %i.hd, %bb.ah ], [ 1.000000e+100, %.critedge.i ], [ 1.000000e+00, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.ai

bb.ai:                                            ; preds = %approx_tuple_count.exit, %clamp_row_est.exit159
  %.0124 = phi double [ %i.fz, %clamp_row_est.exit159 ], [ %i.gi, %approx_tuple_count.exit ]
  %.1123 = phi double [ %., %clamp_row_est.exit159 ], [ %.0.i.i, %approx_tuple_count.exit ]
  %i.he = fsub <2 x double> %i.ew, %i.eg          ; 2 uses
  %i.hf = sext i32 %i.dq to i64
  %i.hg = add nsw i64 %i.hf, 7
  %i.hh = and i64 %i.hg, -8
  %i.hi = add nsw i64 %i.hh, 24
  %i.hj = uitofp i64 %i.hi to double
  %i.hk = fmul nnan double %.0.i145, %i.hj
  %i.hl = uitofp i64 %i.dr to double
  %i.hm = fcmp ogt double %i.hk, %i.hl
  %i.hn = fadd double %i.o, %i.ds
  %.0125 = select i1 %i.hm, double %i.hn, double %i.o
  %i.ho = extractelement <2 x double> %i.eg, i64 0
  %.1126 = fadd double %.0125, %i.ho
  %i.hp = extractelement <2 x double> %i.he, i64 0
  %i.hq = fadd double %.1126, %i.hp
  %i.hr = load double, ptr @cpu_tuple_cost, align 8
  %i.hs = extractelement <2 x double> %i.he, i64 1
  %i.ht = fadd double %i.hs, %i.hr
  %i.hu = call double @llvm.fmuladd.f64(double %i.ht, double %.1123, double %.0124)
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load double, ptr %i.hx, align 8
  %i.hz = fadd double %i.hq, %i.hy                ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.ib = load double, ptr %i.ia, align 8
  %i.ic = load double, ptr %i.ac, align 8
  %i.id = call double @llvm.fmuladd.f64(double %i.ib, double %i.ic, double %i.hu)
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.hz, ptr %i.ie, align 8
  %i.if = fadd double %i.hz, %i.id
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.if, ptr %i.ig, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @estimate_multivariate_bucketsize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @estimate_hash_bucket_stats(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @get_hash_memory_limit() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @cost_subplan(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @make_ands_implicit(ptr noundef %i.b) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %cost_qual_eval.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.e, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph14.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.k, ptr noundef nonnull %3) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = load i32, ptr %i.e, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next.i, %i.n
  br i1 %i.o, label %.lr.ph14.i, label %cost_qual_eval.exit.loopexit

cost_qual_eval.exit.loopexit:                     ; preds = %.lr.ph14.i
  %.sroa.0.0.copyload.pre = load double, ptr %i.d, align 8
  %.sroa.8.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0.copyload.pre = load double, ptr %.sroa.8.0..sroa_idx.phi.trans.insert, align 8
  br label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %cost_qual_eval.exit.loopexit, %bb.a, %.lr.ph.i
  %.sroa.8.0.copyload = phi double [ %.sroa.8.0.copyload.pre, %cost_qual_eval.exit.loopexit ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph.i ] ; 4 uses
  %.sroa.0.0.copyload = phi double [ %.sroa.0.0.copyload.pre, %cost_qual_eval.exit.loopexit ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.q = load i8, ptr %i.p, align 1, !range !4, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load double, ptr %i.s, align 8           ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %cost_qual_eval.exit
  %i.u = load double, ptr @cpu_operator_cost, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load double, ptr %i.v, align 8
  %i.x = call double @llvm.fmuladd.f64(double %i.u, double %i.w, double %i.t)
  %i.y = fadd double %.sroa.0.0.copyload, %i.x
  br label %bb.m

bb.c:                                             ; preds = %cost_qual_eval.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8          ; 2 uses
  %i.ab = fsub double %i.t, %i.aa                 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  switch i32 %i.ad, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.g
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load double, ptr %i.ae, align 8         ; 3 uses
  %or.cond.i = fcmp ugt double %i.af, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = fcmp ugt double %i.af, 1.000000e+00
  br i1 %i.ag, label %bb.f, label %clamp_row_est.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = call double @llvm.rint.f64(double %i.af)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi double [ %i.ah, %bb.f ], [ 1.000000e+100, %bb.d ], [ 1.000000e+00, %bb.e ]
  %i.ai = fdiv double %i.ab, %.0.i
  %i.aj = fadd double %.sroa.8.0.copyload, %i.ai
  br label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.c
  %i.ak = call double @llvm.fmuladd.f64(double %i.ab, double 5.000000e-01, double %.sroa.8.0.copyload)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = load double, ptr %i.al, align 8
  %i.an = fmul double %i.am, 5.000000e-01
  %i.ao = load double, ptr @cpu_operator_cost, align 8
  %i.ap = call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.ak)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.aq = fadd double %.sroa.8.0.copyload, %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %clamp_row_est.exit
  %.sroa.8.0 = phi double [ %i.aq, %bb.h ], [ %i.aj, %clamp_row_est.exit ], [ %i.ap, %bb.g ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %2, align 8
  %i.av = call zeroext i1 @ExecMaterializesOutput(i32 noundef %i.au) #14
  %.pre = load double, ptr %i.z, align 8          ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = fadd double %.sroa.0.0.copyload, %.pre
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ax = phi double [ %.pre, %bb.j ], [ %i.aa, %bb.i ]
  %i.ay = fadd double %.sroa.8.0, %i.ax
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.b
  %.sroa.8.1 = phi double [ %.sroa.8.0.copyload, %bb.b ], [ %.sroa.8.0, %bb.k ], [ %i.ay, %bb.l ]
  %.sroa.0.0 = phi double [ %i.y, %bb.b ], [ %i.aw, %bb.k ], [ %.sroa.0.0.copyload, %bb.l ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  store double %.sroa.0.0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  store double %.sroa.8.1, ptr %i.bd, align 8
  ret void
}

declare ptr @make_ands_implicit(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @ExecMaterializesOutput(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @cost_qual_eval_walker(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %3 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %4 = alloca %struct.QualCost, align 8           ; 7 uses
  %5 = alloca %struct.QualCost, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr123 = phi ptr [ %i.em, %tailrecurse ], [ %0, %bb.a ] ; 24 uses
  %i.e = load i32, ptr %.tr123, align 4
  switch i32 %i.e, label %.critedge [
    i32 334, label %bb.b
    i32 15, label %bb.i
    i32 17, label %bb.j
    i32 18, label %bb.j
    i32 19, label %bb.j
    i32 20, label %bb.k
    i32 9, label %.loopexit
    i32 11, label %.loopexit
    i32 10, label %bb.o
    i32 28, label %bb.p
    i32 29, label %bb.q
    i32 37, label %bb.s
    i32 39, label %bb.t
    i32 40, label %bb.t
    i32 41, label %bb.t
    i32 55, label %bb.t
    i32 59, label %bb.t
    i32 48, label %bb.t
    i32 22, label %bb.u
    i32 23, label %bb.v
    i32 24, label %tailrecurse
    i32 335, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.tr123, i64 112 ; 3 uses
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  %i.h = fcmp olt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.i = load ptr, ptr %1, align 8
  store ptr %i.i, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.tr123, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not106 = icmp eq ptr %i.m, null
  br i1 %.not106, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.o, %bb.d ], [ %i.m, %bb.c ]
  %i.p = call zeroext i1 @cost_qual_eval_walker(ptr noundef %.sink, ptr noundef nonnull %3) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.tr123, i64 18
  %i.r = load i8, ptr %i.q, align 2, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load <2 x double>, ptr %i.j, align 8
  %i.u = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.t)
  store double %i.u, ptr %i.j, align 8
  store double 0.000000e+00, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.pre = load double, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.v = phi double [ %.pre, %bb.g ], [ %i.g, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load double, ptr %i.w, align 8
  %i.y = fadd double %i.v, %i.x
  store double %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr123, i64 120
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = fadd double %i.aa, %i.ac
  store double %i.ad, ptr %i.ab, align 8
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr123, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @add_function_cost(ptr noundef %i.ae, i32 noundef %i.ag, ptr noundef nonnull %.tr123, ptr noundef nonnull %i.ah) #14
  br label %.critedge

bb.j:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  tail call void @set_opfuncid(ptr noundef nonnull %.tr123) #14
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @add_function_cost(ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef nonnull %.tr123, ptr noundef nonnull %i.al) #14
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.tr123, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %.val107 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val107, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ar = load ptr, ptr %1, align 8
  %i.as = tail call double @estimate_array_length(ptr noundef %i.ar, ptr noundef %i.aq) #14
  tail call void @set_sa_opfuncid(ptr noundef nonnull %.tr123) #14
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %1, align 8
end_hunk_5
begin_hunk_6_@cost_qual_eval_walker:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8
  %i.cv = fadd double %.sroa.0.0.copyload, %i.cu
  store double %i.cv, ptr %i.ct, align 8
  %i.cw = fcmp ogt double %.sroa.4.0.copyload, 0.000000e+00
  br i1 %i.cw, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %1, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call double @estimate_array_length(ptr noundef %i.cx, ptr noundef %i.cz) #14
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8
  %i.dd = call double @llvm.fmuladd.f64(double %.sroa.4.0.copyload, double %i.da, double %i.dc)
  store double %i.dd, ptr %i.db, align 8
  br label %.critedge

bb.s:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.df, null
  br i1 %.not, label %.critedge, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.dg, align 4
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph130, label %.critedge

.lr.ph130:                                        ; preds = %.lr.ph127, %.lr.ph130
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph130 ], [ 0, %.lr.ph127 ] ; 2 uses
  %i.dl = load ptr, ptr %i.dh, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = load ptr, ptr %1, align 8
  %i.dp = tail call i32 @get_opcode(i32 noundef %i.dn) #14
  tail call void @add_function_cost(ptr noundef %i.do, i32 noundef %i.dp, ptr noundef null, ptr noundef nonnull %i.di) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = load i32, ptr %i.dg, align 4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %.lr.ph130, label %.critedge

bb.t:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.dt = load double, ptr @cpu_operator_cost, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dv = load double, ptr %i.du, align 8
  %i.dw = fadd double %i.dt, %i.dv
  store double %i.dw, ptr %i.du, align 8
  br label %.critedge

bb.u:                                             ; preds = %.lr.ph
  %i.dx = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.dy = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5150, ptr noundef nonnull @__func__.cost_qual_eval_walker) #14
  unreachable

bb.v:                                             ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr123, i64 88
  %i.ea = load double, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8
  %i.ed = fadd double %i.ea, %i.ec
  store double %i.ed, ptr %i.eb, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.tr123, i64 96
  %i.ef = load double, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8
  %i.ei = fadd double %i.ef, %i.eh
  store double %i.ei, ptr %i.eg, align 8
  br label %.loopexit

tailrecurse:                                      ; preds = %.lr.ph
  %i.ej = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %.val = load ptr, ptr %i.el, align 8
  %i.em = load ptr, ptr %.val, align 8            ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %.loopexit, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %.lr.ph130, %bb.s, %.lr.ph127, %bb.q, %bb.r, %bb.j, %bb.p, %bb.t, %bb.n, %bb.i
  %i.eo = call zeroext i1 @expression_tree_walker_impl(ptr noundef nonnull %.tr123, ptr noundef nonnull @cost_qual_eval_walker, ptr noundef %1) #14
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %.lr.ph, %.lr.ph, %.lr.ph, %bb.a, %.critedge, %bb.v, %bb.o, %bb.h
  %.0 = phi i1 [ false, %bb.o ], [ false, %bb.h ], [ %i.eo, %.critedge ], [ false, %bb.v ], [ false, %bb.a ], [ false, %.lr.ph ], [ false, %.lr.ph ], [ false, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @compute_semi_anti_join_factors(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.SpecialJoinInfo, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.a = shl nuw i32 1, %4
  %i.b = and i32 %i.a, 174
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %.not36 = icmp eq ptr %6, null
  br i1 %.not36, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.c, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph45, label %.critedge

.lr.ph45:                                         ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.0323844 = phi ptr [ %.1, %bb.d ], [ null, %.lr.ph ] ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !4, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph45
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = tail call zeroext i1 @bms_is_subset(ptr noundef %i.o, ptr noundef %i.p) #14
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @lappend(ptr noundef %.0323844, ptr noundef nonnull %i.j) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph45
  %.1 = phi ptr [ %.0323844, %.lr.ph45 ], [ %i.r, %bb.c ], [ %.0323844, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.c, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph45, label %.critedge

.critedge:                                        ; preds = %bb.d, %.preheader, %.lr.ph, %bb.a
  %.2 = phi ptr [ %6, %bb.a ], [ null, %.preheader ], [ null, %.lr.ph ], [ %.1, %bb.d ] ; 3 uses
  %i.v = icmp eq i32 %4, 5
  %i.w = select i1 %i.v, i32 5, i32 4
  %i.x = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %.2, i32 noundef 0, i32 noundef %i.w, ptr noundef %5) #14 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @init_dummy_sjinfo(ptr noundef nonnull %8, ptr noundef %i.z, ptr noundef %i.ab) #14
  %i.ac = call double @clauselist_selectivity(ptr noundef %0, ptr noundef %.2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %8) #14
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  call void @list_free(ptr noundef %.2) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.ad = fcmp ogt double %i.x, 0.000000e+00
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fmul double %i.ac, %i.af
  %i.ah = fdiv double %i.ag, %i.x                 ; 2 uses
  %i.ai = fcmp olt double %i.ah, 1.000000e+00
  %i.aj = select i1 %i.ai, double 1.000000e+00, double %i.ah
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.033 = phi double [ %i.aj, %bb.g ], [ 1.000000e+00, %bb.f ]
  store double %i.x, ptr %7, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %.033, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

declare void @init_dummy_sjinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @list_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @set_baserel_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 24)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %i.d, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.f = fmul double %i.b, %i.e                   ; 3 uses
  %or.cond.i = fcmp ugt double %i.f, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp ugt double %i.f, 1.000000e+00
  br i1 %i.g, label %bb.c, label %clamp_row_est.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call double @llvm.rint.f64(double %i.f)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.h, %bb.c ], [ 1.000000e+100, %bb.a ], [ 1.000000e+00, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %cost_qual_eval.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %clamp_row_est.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load i32, ptr %i.l, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph14.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.r, ptr noundef nonnull %2) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = load i32, ptr %i.l, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.u
  br i1 %i.v, label %.lr.ph14.i, label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %.lr.ph14.i, %clamp_row_est.exit, %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @set_rel_width(ptr noundef %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_rel_width(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %3 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %.val = load ptr, ptr %i.n, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ]
  %i.q = load ptr, ptr %.in, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.s = load i32, ptr %i.r, align 4              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store double 0.000000e+00, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store double 0.000000e+00, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.t, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not97 = icmp eq ptr %i.aa, null
  br i1 %.not97, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %.not101 = icmp ne i32 %i.s, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph133, label %.critedge

.lr.ph133:                                        ; preds = %.lr.ph, %bb.n
  %.083107132 = phi i1 [ %.386, %bb.n ], [ false, %.lr.ph ] ; 5 uses
  %.081108131 = phi i64 [ %.3, %bb.n ], [ 0, %.lr.ph ] ; 6 uses
  %indvars.iv130 = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph ] ; 2 uses
  %i.ak = load ptr, ptr %i.ac, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv130
  %i.am = load ptr, ptr %i.al, align 8            ; 10 uses
  %i.an = load i32, ptr %i.am, align 4
  switch i32 %i.an, label %.thread [
    i32 6, label %bb.e
    i32 335, label %bb.m
  ]

.critedge:                                        ; preds = %bb.n, %.lr.ph
  %.081108.lcssa = phi i64 [ 0, %.lr.ph ], [ %.3, %bb.n ] ; 2 uses
  %.083107.lcssa = phi i1 [ false, %.lr.ph ], [ %.386, %bb.n ]
  br i1 %.083107.lcssa, label %bb.o, label %.critedge.thread

bb.e:                                             ; preds = %.lr.ph133
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = load i32, ptr %i.ae, align 8
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.at = load i16, ptr %i.as, align 8            ; 4 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sext i16 %i.at to i64
  %i.aw = load i16, ptr %i.af, align 4
  %i.ax = sext i16 %i.aw to i64
  %i.ay = sub nsw i64 %i.av, %i.ax                ; 3 uses
  %i.az = load ptr, ptr %i.ag, align 8
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = add i64 %.081108131, %i.bd
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bf = icmp sgt i16 %i.at, 0
  %or.cond = and i1 %.not101, %i.bf
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bg = call i32 @get_attavgwidth(i32 noundef %i.s, i16 noundef signext %i.at) #14 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.ag, align 8
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ay
  store i32 %i.bg, ptr %i.bj, align 4
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = add i64 %.081108131, %i.bk
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = call i32 @get_typavgwidth(i32 noundef %i.bn, i32 noundef %i.bp) #14 ; 2 uses
  %i.br = load ptr, ptr %i.ag, align 8
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ay
  store i32 %i.bq, ptr %i.bs, align 4
  %i.bt = sext i32 %i.bq to i64
  %i.bu = add i64 %.081108131, %i.bt
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph133
  %i.bv = call ptr @find_placeholder_info(ptr noundef %0, ptr noundef nonnull %i.am) #14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.081108131, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %0, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.cc = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.cb, ptr noundef nonnull %3), !inline_history !7 ; 0 uses
  %.sroa.0104.0.copyload = load double, ptr %i.ad, align 8
  %.sroa.4105.0.copyload = load double, ptr %.sroa.4105.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.cd = load ptr, ptr %i.t, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8
  %i.cg = fadd double %.sroa.0104.0.copyload, %i.cf
  store double %i.cg, ptr %i.ce, align 8
  %i.ch = load ptr, ptr %i.t, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8
  %i.ck = fadd double %.sroa.4105.0.copyload, %i.cj
  store double %i.ck, ptr %i.ci, align 8
  br label %bb.n

.thread:                                          ; preds = %.lr.ph133, %bb.e
  %i.cl = call i32 @exprType(ptr noundef nonnull %i.am) #14
  %i.cm = call i32 @exprTypmod(ptr noundef nonnull %i.am) #14
  %i.cn = call i32 @get_typavgwidth(i32 noundef %i.cl, i32 noundef %i.cm) #14
  %i.co = sext i32 %i.cn to i64
  %i.cp = add i64 %.081108131, %i.co
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.cq = call zeroext i1 @cost_qual_eval_walker(ptr noundef nonnull %i.am, ptr noundef nonnull %2), !inline_history !7 ; 0 uses
  %.sroa.0.0.copyload = load double, ptr %i.ah, align 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.cr = load ptr, ptr %i.t, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8
  %i.cu = fadd double %.sroa.0.0.copyload, %i.ct
  store double %i.cu, ptr %i.cs, align 8
  %i.cv = load ptr, ptr %i.t, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8
  %i.cy = fadd double %.sroa.4.0.copyload, %i.cx
  store double %i.cy, ptr %i.cw, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.l, %bb.f, %.thread, %bb.m
  %.386 = phi i1 [ %.083107132, %.thread ], [ %.083107132, %bb.m ], [ %.083107132, %bb.l ], [ %.083107132, %bb.h ], [ %.083107132, %bb.k ], [ true, %bb.f ] ; 2 uses
  %.3 = phi i64 [ %i.cp, %.thread ], [ %i.bz, %bb.m ], [ %i.bu, %bb.l ], [ %i.be, %bb.h ], [ %i.bl, %bb.k ], [ %.081108131, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.cz = load i32, ptr %i.ab, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %.lr.ph133, label %.critedge

bb.o:                                             ; preds = %.critedge
  %.not99 = icmp eq i32 %i.s, 0
  br i1 %.not99, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.dd = load i16, ptr %i.dc, align 2            ; 2 uses
  %.not100113 = icmp slt i16 %i.dd, 1
  br i1 %.not100113, label %.loopexit, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.dh = load i16, ptr %i.dg, align 4
  %i.di = sext i16 %i.dh to i64                   ; 2 uses
  %i.dj = add nuw i16 %i.dd, 1                    ; 2 uses
  %smax = call i16 @llvm.smax.i16(i16 %i.dj, i16 2)
  %wide.trip.count = zext nneg i16 %smax to i64   ; 2 uses
  %i.dk = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp slt i16 %i.dj, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph116
  %n.vec = and i64 %i.dk, -4                      ; 3 uses
  %i.dl = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ <i64 24, i64 0>, %vector.ph ], [ %i.ds, %vector.body ]
  %vec.phi135 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dt, %vector.body ]
  %i.dm = or disjoint i64 %index, 1
  %i.dn = sub nsw i64 %i.dm, %i.di
  %i.do = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %wide.load = load <2 x i32>, ptr %i.do, align 4
  %wide.load136 = load <2 x i32>, ptr %i.dp, align 4
  %i.dq = sext <2 x i32> %wide.load to <2 x i64>
  %i.dr = sext <2 x i32> %wide.load136 to <2 x i64>
  %i.ds = add <2 x i64> %vec.phi, %i.dq           ; 2 uses
  %i.dt = add <2 x i64> %vec.phi135, %i.dr        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dt, %i.ds
  %i.dv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph116, %middle.block
  %indvars.iv118.ph = phi i64 [ 1, %.lr.ph116 ], [ %i.dl, %middle.block ]
  %.080114.ph = phi i64 [ 24, %.lr.ph116 ], [ %i.dv, %middle.block ]
  br label %scalar.ph

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.dz = load i16, ptr %i.dy, align 4
  %i.ea = sext i16 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.eb
  %i.ed = call i32 @get_relation_data_width(i32 noundef %i.s, ptr noundef %i.ec) #14
  %i.ee = sext i32 %i.ed to i64
  %i.ef = add nsw i64 %i.ee, 24
  br label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %scalar.ph ], [ %indvars.iv118.ph, %scalar.ph.preheader ] ; 2 uses
  %.080114 = phi i64 [ %i.ek, %scalar.ph ], [ %.080114.ph, %scalar.ph.preheader ]
  %i.eg = sub nsw i64 %indvars.iv118, %i.di
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = sext i32 %i.ei to i64
  %i.ek = add i64 %.080114, %i.ej                 ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next119, %wide.trip.count
  br i1 %exitcond, label %.loopexit, label %scalar.ph, !llvm.loop !18

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader, %bb.p
  %.1 = phi i64 [ %i.ef, %bb.p ], [ 24, %.preheader ], [ %i.dv, %middle.block ], [ %i.ek, %scalar.ph ] ; 2 uses
  %.04.i = call i64 @llvm.umin.i64(i64 %.1, i64 1073741823)
  %.0.i = trunc nuw nsw i64 %.04.i to i32
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.eo = load i16, ptr %i.en, align 4
  %i.ep = sext i16 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.eq
  store i32 %.0.i, ptr %i.er, align 4
  %i.es = add i64 %.1, %.081108.lcssa
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.loopexit, %.critedge
  %.4 = phi i64 [ %i.es, %.loopexit ], [ %.081108.lcssa, %.critedge ], [ 0, %bb.d ]
  %.04.i102 = call i64 @llvm.umin.i64(i64 %.4, i64 1073741823)
  %.0.i103 = trunc nuw nsw i64 %.04.i102 to i32
  %i.et = load ptr, ptr %i.t, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store i32 %.0.i103, ptr %i.eu, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @get_parameterized_baserel_size(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @list_concat_copy(ptr noundef %2, ptr noundef %i.b) #14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.e = load double, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %i.c, i32 noundef %i.g, i32 noundef 0, ptr noundef null) #14
  %i.i = fmul double %i.e, %i.h                   ; 3 uses
  %or.cond.i = fcmp ugt double %i.i, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ugt double %i.i, 1.000000e+00
  br i1 %i.j, label %bb.c, label %clamp_row_est.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call double @llvm.rint.f64(double %i.i)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.k, %bb.c ], [ 1.000000e+100, %bb.a ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp ogt double %.0.i, %i.m
  %.0 = select i1 %i.n, double %i.m, double %.0.i
  ret double %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @set_joinrel_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load double, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %3, i64 8
  %.val9 = load ptr, ptr %i.f, align 8
  %i.g = tail call fastcc double @calc_joinrel_size_estimate(ptr noundef %0, ptr noundef %1, ptr %.val, ptr %.val9, double noundef %i.b, double noundef %i.d, ptr noundef %4, ptr noundef %5)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @calc_joinrel_size_estimate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %.8.val, ptr %.8.val1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load i32, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %get_foreign_key_join_selectivity.exit, label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = and i32 %i.b, -2
  %or.cond.i = icmp ne i32 %i.g, 4                ; 2 uses
  %i.h = load i32, ptr %i.e, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %get_foreign_key_join_selectivity.exit

.lr.ph:                                           ; preds = %.lr.ph159.i, %.loopexit.i
  %.0103156.i10 = phi double [ %.7.i, %.loopexit.i ], [ 1.000000e+00, %.lr.ph159.i ] ; 5 uses
  %.0101157.i9 = phi ptr [ %.4.i, %.loopexit.i ], [ %5, %.lr.ph159.i ] ; 6 uses
  %indvars.iv174.i8 = phi i64 [ %indvars.iv.next175.i, %.loopexit.i ], [ 0, %.lr.ph159.i ] ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv174.i8
  %i.l = load ptr, ptr %i.k, align 8              ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call zeroext i1 @bms_is_member(i32 noundef %i.n, ptr noundef %.8.val) #14
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = tail call zeroext i1 @bms_is_member(i32 noundef %i.q, ptr noundef %.8.val1) #14
  br i1 %i.r, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = tail call zeroext i1 @bms_is_member(i32 noundef %i.t, ptr noundef %.8.val) #14
  br i1 %i.u, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.m, align 4
  %i.w = tail call zeroext i1 @bms_is_member(i32 noundef %i.v, ptr noundef %.8.val1) #14
  %or.cond137.not.i = select i1 %i.w, i1 %or.cond.i, i1 false
  br i1 %or.cond137.not.i, label %bb.f, label %.loopexit.i

.thread.i:                                        ; preds = %bb.b
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.x = tail call i32 @bms_membership(ptr noundef %.8.val1) #14
  %.not116.i = icmp eq i32 %i.x, 1
  br i1 %.not116.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %.thread.i, %bb.d
  %or.cond130.i = phi i1 [ false, %.thread.i ], [ false, %bb.d ], [ true, %bb.e ]
  %i.y = icmp eq ptr %.0101157.i9, %5
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @list_copy(ptr noundef %.0101157.i9) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1102.i = phi ptr [ %i.z, %bb.g ], [ %.0101157.i9, %bb.f ] ; 3 uses
  %.not117139.i = icmp eq ptr %.1102.i, null
  br i1 %.not117139.i, label %.critedge124.thread.i, label %.lr.ph147.i

.lr.ph147.i:                                      ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 288 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 800
  br label %bb.i

bb.i:                                             ; preds = %.critedge126.i, %.lr.ph147.i
  %.sroa.0.0146.i = phi ptr [ %.1102.i, %.lr.ph147.i ], [ %.sroa.0.1.i, %.critedge126.i ] ; 5 uses
  %.sroa.7.0144.i = phi i32 [ 0, %.lr.ph147.i ], [ %i.bj, %.critedge126.i ] ; 7 uses
  %.098142.i = phi ptr [ null, %.lr.ph147.i ], [ %.1.i, %.critedge126.i ] ; 5 uses
  %.2140.i = phi ptr [ %.1102.i, %.lr.ph147.i ], [ %.3.i, %.critedge126.i ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0146.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp slt i32 %.sroa.7.0144.i, %i.ae
  br i1 %i.af, label %bb.j, label %.critedge124.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0146.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = sext i32 %.sroa.7.0144.i to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %.critedge126.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.aq = zext nneg i32 %i.al to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %i.as, %i.ao
  br i1 %i.at, label %.split.us.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.aq
  br i1 %exitcond.not, label %.critedge126.i, label %bb.k, !llvm.loop !21

.critedge124.i:                                   ; preds = %.critedge126.i, %bb.i
  %.2.lcssa.i = phi ptr [ %.3.i, %.critedge126.i ], [ %.2140.i, %bb.i ] ; 5 uses
  %.098.lcssa.i = phi ptr [ %.1.i, %.critedge126.i ], [ %.098142.i, %bb.i ] ; 3 uses
  %i.au = icmp eq ptr %.098.lcssa.i, null
  br i1 %i.au, label %.critedge124.thread.i, label %list_length.exit.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %bb.o
  %.pr.i = load ptr, ptr %i.an, align 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %i.av = phi ptr [ %.pr.i, %.lr.ph.splitthread-pre-split.i ], [ null, %.lr.ph.i ] ; 2 uses
  %i.aw = phi i32 [ %i.bd, %.lr.ph.splitthread-pre-split.i ], [ %i.al, %.lr.ph.i ]
  %indvars.iv168.i = phi i64 [ %indvars.iv.next169.i, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.not122.i = icmp eq ptr %i.av, null
  br i1 %.not122.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv168.i
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ay, %i.av
  br i1 %i.az, label %.split.us.i, label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv168.i
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call zeroext i1 @list_member_ptr(ptr noundef %i.bb, ptr noundef nonnull %i.ak) #14
  br i1 %i.bc, label %.split.us.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.n
  %.pre.i = load i32, ptr %i.aa, align 4
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %bb.m
  %i.bd = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.aw, %bb.m ] ; 2 uses
  %indvars.iv.next169.i = add nuw nsw i64 %indvars.iv168.i, 1 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next169.i, %i.be
  br i1 %i.bf, label %.lr.ph.splitthread-pre-split.i, label %.critedge126.i, !llvm.loop !22

.split.us.i:                                      ; preds = %bb.k, %bb.n, %bb.m
  %i.bg = add i32 %.sroa.7.0144.i, -1
  %i.bh = tail call ptr @list_delete_nth_cell(ptr noundef %.2140.i, i32 noundef %.sroa.7.0144.i) #14 ; 2 uses
  %i.bi = tail call ptr @lappend(ptr noundef %.098142.i, ptr noundef %i.ak) #14
  br label %.critedge126.i
end_hunk_6
begin_hunk_7_@calc_joinrel_size_estimate:bb.a
  %i.ca = fcmp ogt double %i.bz, 1.000000e+00
  %i.cb = select i1 %i.ca, double %i.bz, double 1.000000e+00
  br i1 %or.cond130.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = load double, ptr %i.cc, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i = phi double [ %i.cd, %bb.q ], [ 1.000000e+00, %bb.p ]
  %i.ce = fdiv double %.sink.i, %i.cb
  %.1104.i = fmul double %.0103156.i10, %i.ce     ; 3 uses
  %i.cf = load i32, ptr %i.bo, align 4
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.r
  %i.ch = load i32, ptr %i.aa, align 4
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph154.i, label %.loopexit.i

.lr.ph154.i:                                      ; preds = %.preheader.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 544
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph154.i
  %indvars.iv171.i = phi i64 [ 0, %.lr.ph154.i ], [ %indvars.iv.next172.i, %bb.w ] ; 3 uses
  %.2105152.i = phi double [ %.1104.i, %.lr.ph154.i ], [ %.5.i, %bb.w ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv171.i
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  %.not120.i = icmp eq ptr %i.cl, null
  br i1 %.not120.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load i8, ptr %i.cm, align 8, !range !4, !noundef !5
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv171.i
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call ptr @find_derived_clause_for_ec_member(ptr noundef %0, ptr noundef nonnull %i.cl, ptr noundef %i.cq) #14 ; 2 uses
  %.not121.i = icmp eq ptr %i.cr, null
  br i1 %.not121.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = tail call double @clause_selectivity(ptr noundef %0, ptr noundef nonnull %i.cr, i32 noundef 0, i32 noundef %i.b, ptr noundef %4) #14 ; 2 uses
  %i.ct = fcmp ogt double %i.cs, 0.000000e+00
  %i.cu = fdiv double %.2105152.i, %i.cs
  %.3106.i = select i1 %i.ct, double %i.cu, double %.2105152.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.5.i = phi double [ %.2105152.i, %bb.s ], [ %.2105152.i, %bb.t ], [ %.3106.i, %bb.v ], [ %.2105152.i, %bb.u ] ; 2 uses
  %indvars.iv.next172.i = add nuw nsw i64 %indvars.iv171.i, 1 ; 2 uses
  %i.cv = load i32, ptr %i.aa, align 4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next172.i, %i.cw
  br i1 %i.cx, label %bb.s, label %.loopexit.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %bb.w, %.preheader.i, %bb.r, %.critedge124.thread.i, %bb.e, %bb.d, %bb.c
  %.7.i = phi double [ %.0103156.i10, %bb.c ], [ %.0103156.i10, %.critedge124.thread.i ], [ %.1104.i, %bb.r ], [ %.0103156.i10, %bb.d ], [ %.0103156.i10, %bb.e ], [ %.1104.i, %.preheader.i ], [ %.5.i, %bb.w ] ; 2 uses
  %.4.i = phi ptr [ %.0101157.i9, %bb.c ], [ %i.bu, %.critedge124.thread.i ], [ %.2.lcssa.i, %bb.r ], [ %.0101157.i9, %bb.d ], [ %.0101157.i9, %bb.e ], [ %.2.lcssa.i, %.preheader.i ], [ %.2.lcssa.i, %bb.w ] ; 2 uses
  %indvars.iv.next175.i = add nuw nsw i64 %indvars.iv174.i8, 1 ; 2 uses
  %i.cy = load i32, ptr %i.e, align 4
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next175.i, %i.cz
  br i1 %i.da, label %.lr.ph, label %get_foreign_key_join_selectivity.exit

get_foreign_key_join_selectivity.exit:            ; preds = %.loopexit.i, %.lr.ph159.i, %bb.a
  %.0103.lcssa.i = phi double [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %.lr.ph159.i ], [ %.7.i, %.loopexit.i ] ; 3 uses
  %.0101.lcssa.i = phi ptr [ %5, %bb.a ], [ %5, %.lr.ph159.i ], [ %.4.i, %.loopexit.i ] ; 4 uses
  %i.db = fcmp olt double %.0103.lcssa.i, 0.000000e+00
  %i.dc = fcmp ogt double %.0103.lcssa.i, 1.000000e+00
  %spec.store.select.i = select i1 %i.dc, double 1.000000e+00, double %.0103.lcssa.i
  %.8.i = select i1 %i.db, double 0.000000e+00, double %spec.store.select.i ; 5 uses
  %i.dd = shl nuw i32 1, %i.b
  %i.de = and i32 %i.dd, 174
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %get_foreign_key_join_selectivity.exit
  %i.df = getelementptr inbounds nuw i8, ptr %.0101.lcssa.i, i64 4 ; 2 uses
  %.not79 = icmp eq ptr %.0101.lcssa.i, null
  br i1 %.not79, label %.critedge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %.0101.lcssa.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = load i32, ptr %i.df, align 4
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %.lr.ph15, %bb.aa
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aa ], [ 0, %.lr.ph15 ] ; 2 uses
  %.0671226 = phi ptr [ %.168, %bb.aa ], [ null, %.lr.ph15 ] ; 2 uses
  %.0661325 = phi ptr [ %.1, %bb.aa ], [ null, %.lr.ph15 ] ; 2 uses
  %i.dk = load ptr, ptr %i.dg, align 8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  %i.dm = load ptr, ptr %i.dl, align 8            ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i8, ptr %i.dn, align 8, !range !4, !noundef !5
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.y, label %bb.x

.critedge:                                        ; preds = %bb.aa, %.lr.ph15, %.preheader
  %.067.lcssa = phi ptr [ null, %.preheader ], [ null, %.lr.ph15 ], [ %.168, %bb.aa ] ; 2 uses
  %.066.lcssa = phi ptr [ null, %.preheader ], [ null, %.lr.ph15 ], [ %.1, %bb.aa ] ; 2 uses
  %i.dq = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %.067.lcssa, i32 noundef 0, i32 noundef %i.b, ptr noundef %4) #14
  %i.dr = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %.066.lcssa, i32 noundef 0, i32 noundef %i.b, ptr noundef %4) #14
  tail call void @list_free(ptr noundef %.067.lcssa) #14
  tail call void @list_free(ptr noundef %.066.lcssa) #14
  br label %bb.ac

bb.x:                                             ; preds = %.lr.ph27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.dh, align 8
  %i.dv = tail call zeroext i1 @bms_is_subset(ptr noundef %i.dt, ptr noundef %i.du) #14
  br i1 %i.dv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph27
  %i.dw = tail call ptr @lappend(ptr noundef %.0661325, ptr noundef nonnull %i.dm) #14
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dx = tail call ptr @lappend(ptr noundef %.0671226, ptr noundef nonnull %i.dm) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.168 = phi ptr [ %.0671226, %bb.y ], [ %i.dx, %bb.z ] ; 2 uses
  %.1 = phi ptr [ %i.dw, %bb.y ], [ %.0661325, %bb.z ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = load i32, ptr %i.df, align 4
  %i.dz = sext i32 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next, %i.dz
  br i1 %i.ea, label %.lr.ph27, label %.critedge

bb.ab:                                            ; preds = %get_foreign_key_join_selectivity.exit
  %i.eb = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %.0101.lcssa.i, i32 noundef 0, i32 noundef %i.b, ptr noundef %4) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  %.072 = phi double [ %i.dq, %.critedge ], [ %i.eb, %bb.ab ] ; 5 uses
  %.071 = phi double [ %i.dr, %.critedge ], [ 0.000000e+00, %bb.ab ] ; 3 uses
  switch i32 %i.b, label %bb.ai [
    i32 0, label %bb.ad
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 4, label %bb.ag
    i32 5, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ec = fmul double %2, %3
  %i.ed = fmul double %i.ec, %.8.i
  %i.ee = fmul double %i.ed, %.072
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.ef = fmul double %2, %3
  %i.eg = fmul double %i.ef, %.8.i
  %i.eh = fmul double %i.eg, %.072                ; 2 uses
  %i.ei = fcmp olt double %i.eh, %2
  %.069 = select i1 %i.ei, double %2, double %i.eh
  %i.ej = fmul double %.071, %.069
  br label %bb.aj

bb.af:                                            ; preds = %bb.ac
  %i.ek = fmul double %2, %3
  %i.el = fmul double %i.ek, %.8.i
  %i.em = fmul double %i.el, %.072                ; 2 uses
  %i.en = fcmp olt double %i.em, %2
  %.170 = select i1 %i.en, double %2, double %i.em ; 2 uses
  %i.eo = fcmp olt double %.170, %3
  %.2 = select i1 %i.eo, double %3, double %.170
  %i.ep = fmul double %.071, %.2
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  %i.eq = fmul double %2, %.8.i
  %i.er = fmul double %i.eq, %.072
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ac
  %i.es = fneg double %.8.i
  %i.et = tail call double @llvm.fmuladd.f64(double %i.es, double %.072, double 1.000000e+00)
  %i.eu = fmul double %2, %i.et
  %i.ev = fmul double %.071, %i.eu
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ac
  %i.ew = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.ex = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %i.b) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5771, ptr noundef nonnull @__func__.calc_joinrel_size_estimate) #14
  unreachable

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.3 = phi double [ %i.ee, %bb.ad ], [ %i.ej, %bb.ae ], [ %i.ep, %bb.af ], [ %i.er, %bb.ag ], [ %i.ev, %bb.ah ] ; 3 uses
  %or.cond.i81 = fcmp ugt double %.3, 1.000000e+100
  br i1 %or.cond.i81, label %clamp_row_est.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ey = fcmp ugt double %.3, 1.000000e+00
  br i1 %i.ey, label %bb.al, label %clamp_row_est.exit

bb.al:                                            ; preds = %bb.ak
  %i.ez = tail call double @llvm.rint.f64(double %.3)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.aj, %bb.ak, %bb.al
  %.0.i = phi double [ %i.ez, %bb.al ], [ 1.000000e+100, %bb.aj ], [ 1.000000e+00, %bb.ak ]
  ret double %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local double @get_parameterized_joinrel_size(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load double, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = load double, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.d, i64 8
  %.val14 = load ptr, ptr %i.j, align 8
  %i.k = tail call fastcc double @calc_joinrel_size_estimate(ptr noundef %0, ptr noundef %1, ptr %.val, ptr %.val14, double noundef %i.f, double noundef %i.h, ptr noundef %4, ptr noundef %5) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp ogt double %i.k, %i.m
  %.0 = select i1 %i.n, double %i.m, double %i.k
  ret double %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @set_subquery_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((200, 208)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call ptr @fetch_upper_rel(ptr noundef %i.b, i32 noundef 7, ptr noundef null) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store double %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load i32, ptr %i.m, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph36, label %.critedge

.lr.ph36:                                         ; preds = %.lr.ph, %bb.j
  %i.t = phi i32 [ %i.cf, %bb.j ], [ %i.r, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 42
  %i.aa = load i8, ptr %i.z, align 2, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %bb.d

.critedge.loopexit:                               ; preds = %bb.j
  %.pre40 = load double, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %bb.a
  %i.ac = phi double [ %.pre40, %.critedge.loopexit ], [ %i.g, %.lr.ph ], [ %i.g, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %i.ae, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.ag = fmul double %i.ac, %i.af                ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.ag, 1.000000e+100
  br i1 %or.cond.i.i, label %clamp_row_est.exit.i, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.ah = fcmp ugt double %i.ag, 1.000000e+00
  br i1 %i.ah, label %bb.c, label %clamp_row_est.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ai = tail call double @llvm.rint.f64(double %i.ag)
  br label %clamp_row_est.exit.i

clamp_row_est.exit.i:                             ; preds = %bb.c, %bb.b, %.critedge
  %.0.i.i = phi double [ %i.ai, %bb.c ], [ 1.000000e+100, %.critedge ], [ 1.000000e+00, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i.i, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.ad, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %set_baserel_size_estimates.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %clamp_row_est.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load i32, ptr %i.am, align 4
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.as, ptr noundef nonnull %2) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.am, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i.i, %i.av
  br i1 %i.aw, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

set_baserel_size_estimates.exit:                  ; preds = %.lr.ph14.i.i, %clamp_row_est.exit.i, %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @set_rel_width(ptr noundef %0, ptr noundef nonnull %1)
  ret void

bb.d:                                             ; preds = %.lr.ph36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8            ; 4 uses
  %i.ba = load i16, ptr %i.o, align 4             ; 3 uses
  %i.bb = icmp slt i16 %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i16, ptr %i.p, align 2
  %i.bd = icmp sgt i16 %i.az, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load i32, ptr %i.y, align 4
  %i.bf = icmp eq i32 %i.be, 6
  br i1 %i.bf, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.i, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 264
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call ptr @find_base_rel(ptr noundef nonnull %i.b, i32 noundef %i.bl) #14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bq = load i16, ptr %i.bp, align 8
  %i.br = sext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 124
  %i.bt = load i16, ptr %i.bs, align 4
  %i.bu = sext i16 %i.bt to i64
  %i.bv = sub nsw i64 %i.br, %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %.pre = load i16, ptr %i.ay, align 8
  %.pre38 = load i16, ptr %i.o, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.by = phi i16 [ %.pre38, %bb.h ], [ %i.ba, %bb.g ], [ %i.ba, %bb.f ]
  %i.bz = phi i16 [ %.pre, %bb.h ], [ %i.az, %bb.g ], [ %i.az, %bb.f ]
  %.0 = phi i32 [ %i.bx, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.ca = load ptr, ptr %i.q, align 8
  %i.cb = sext i16 %i.bz to i64
  %i.cc = sext i16 %i.by to i64
  %i.cd = sub nsw i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cd
  store i32 %.0, ptr %i.ce, align 4
  %.pre39 = load i32, ptr %i.m, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %.lr.ph36, %bb.i
  %i.cf = phi i32 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %.lr.ph36 ], [ %.pre39, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next, %i.cg
  br i1 %i.ch, label %.lr.ph36, label %.critedge.loopexit
}

declare ptr @fetch_upper_rel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @find_base_rel(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @set_function_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((200, 208)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %.val = load ptr, ptr %i.n, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ]
  %i.q = load ptr, ptr %.in, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  store double 0.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %.not23 = icmp eq ptr %i.t, null
  br i1 %.not23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i32, ptr %i.u, align 4
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph28, label %.critedge

.lr.ph28:                                         ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call double @expression_returns_set_rows(ptr noundef %0, ptr noundef %i.ac) #14 ; 3 uses
  %i.ae = load double, ptr %i.r, align 8          ; 2 uses
  %i.af = fcmp ogt double %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

.critedge:                                        ; preds = %bb.h, %.lr.ph, %bb.d
  %i.ag = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %.lr.ph ], [ %i.bc, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %i.ai, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.ak = fmul double %i.ag, %i.aj                ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.ak, 1.000000e+100
  br i1 %or.cond.i.i, label %clamp_row_est.exit.i, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.al = fcmp ugt double %i.ak, 1.000000e+00
  br i1 %i.al, label %bb.f, label %clamp_row_est.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = tail call double @llvm.rint.f64(double %i.ak)
  br label %clamp_row_est.exit.i

clamp_row_est.exit.i:                             ; preds = %bb.f, %bb.e, %.critedge
  %.0.i.i = phi double [ %i.am, %bb.f ], [ 1.000000e+100, %.critedge ], [ 1.000000e+00, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i.i, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.ah, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %set_baserel_size_estimates.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %clamp_row_est.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load i32, ptr %i.aq, align 4
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.aw, ptr noundef nonnull %2) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ay = load i32, ptr %i.aq, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next.i.i, %i.az
  br i1 %i.ba, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

set_baserel_size_estimates.exit:                  ; preds = %.lr.ph14.i.i, %clamp_row_est.exit.i, %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @set_rel_width(ptr noundef %0, ptr noundef nonnull %1)
  ret void

bb.g:                                             ; preds = %.lr.ph28
  store double %i.ad, ptr %i.r, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph28
  %i.bc = phi double [ %i.ad, %bb.g ], [ %i.ae, %.lr.ph28 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %i.u, align 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph28, label %.critedge
}

declare double @expression_returns_set_rows(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @set_tablefunc_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 24), (200, 208)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  store double 1.000000e+02, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %i.c, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.e = fmul double %i.d, 1.000000e+02           ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.e, 1.000000e+100
  br i1 %or.cond.i.i, label %clamp_row_est.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp ugt double %i.e, 1.000000e+00
  br i1 %i.f, label %bb.c, label %clamp_row_est.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @llvm.rint.f64(double %i.e)
  br label %clamp_row_est.exit.i

clamp_row_est.exit.i:                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i = phi double [ %i.g, %bb.c ], [ 1.000000e+100, %bb.a ], [ 1.000000e+00, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i.i, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %set_baserel_size_estimates.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %clamp_row_est.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i32, ptr %i.k, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.q, ptr noundef nonnull %2) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.k, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i.i, %i.t
  br i1 %i.u, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

set_baserel_size_estimates.exit:                  ; preds = %.lr.ph14.i.i, %clamp_row_est.exit.i, %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @set_rel_width(ptr noundef %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_values_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 24), (200, 208)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %.val = load ptr, ptr %i.n, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ]
  %i.q = load ptr, ptr %.in, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %list_length.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sitofp i32 %i.u to double
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.d, %bb.e
  %i.w = phi double [ %i.v, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200
  store double %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call double @clauselist_selectivity(ptr noundef nonnull %0, ptr noundef %i.z, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.ab = fmul double %i.w, %i.aa                 ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.ab, 1.000000e+100
  br i1 %or.cond.i.i, label %clamp_row_est.exit.i, label %bb.f

bb.f:                                             ; preds = %list_length.exit
  %i.ac = fcmp ugt double %i.ab, 1.000000e+00
  br i1 %i.ac, label %bb.g, label %clamp_row_est.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call double @llvm.rint.f64(double %i.ab)
  br label %clamp_row_est.exit.i

clamp_row_est.exit.i:                             ; preds = %bb.g, %bb.f, %list_length.exit
  %.0.i.i = phi double [ %i.ad, %bb.g ], [ 1.000000e+100, %list_length.exit ], [ 1.000000e+00, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i.i, ptr %i.ae, align 8
  %i.af = load ptr, ptr %i.y, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %set_baserel_size_estimates.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %clamp_row_est.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i32, ptr %i.ah, align 4
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.an, ptr noundef nonnull %2) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.ah, align 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i.i, %i.aq
  br i1 %i.ar, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

set_baserel_size_estimates.exit:                  ; preds = %.lr.ph14.i.i, %clamp_row_est.exit.i, %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @set_rel_width(ptr noundef nonnull %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_cte_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 24), (200, 208)) %1, double noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %.val = load ptr, ptr %i.n, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ]
  %i.q = load ptr, ptr %.in, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 172
  %i.s = load i8, ptr %i.r, align 4, !range !4, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %clamp_row_est.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load double, ptr @recursive_worktable_factor, align 8
  %i.v = fmul double %2, %i.u                     ; 3 uses
  %or.cond.i = fcmp ugt double %i.v, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = fcmp ugt double %i.v, 1.000000e+00
  br i1 %i.w, label %bb.g, label %clamp_row_est.exit

bb.g:                                             ; preds = %bb.f
  %i.x = tail call double @llvm.rint.f64(double %i.v)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %.sink = phi double [ 1.000000e+00, %bb.f ], [ %i.x, %bb.g ], [ 1.000000e+100, %bb.e ], [ %2, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  store double %.sink, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call double @clauselist_selectivity(ptr noundef nonnull %0, ptr noundef %i.aa, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.ac = fmul double %.sink, %i.ab               ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.ac, 1.000000e+100
  br i1 %or.cond.i.i, label %clamp_row_est.exit.i, label %bb.h

bb.h:                                             ; preds = %clamp_row_est.exit
  %i.ad = fcmp ugt double %i.ac, 1.000000e+00
  br i1 %i.ad, label %bb.i, label %clamp_row_est.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call double @llvm.rint.f64(double %i.ac)
  br label %clamp_row_est.exit.i

clamp_row_est.exit.i:                             ; preds = %bb.i, %bb.h, %clamp_row_est.exit
  %.0.i.i = phi double [ %i.ae, %bb.i ], [ 1.000000e+100, %clamp_row_est.exit ], [ 1.000000e+00, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i.i, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.z, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %0, ptr %3, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %set_baserel_size_estimates.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %clamp_row_est.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load i32, ptr %i.ai, align 4
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.ao, ptr noundef nonnull %3) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aq = load i32, ptr %i.ai, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next.i.i, %i.ar
  br i1 %i.as, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

set_baserel_size_estimates.exit:                  ; preds = %.lr.ph14.i.i, %clamp_row_est.exit.i, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call fastcc void @set_rel_width(ptr noundef nonnull %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_namedtuplestore_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 24), (200, 208)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %.val = load ptr, ptr %i.n, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ]
  %i.q = load ptr, ptr %.in, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.s = load double, ptr %i.r, align 8           ; 2 uses
  %i.t = fcmp olt double %i.s, 0.000000e+00
  %storemerge = select i1 %i.t, double 1.000000e+03, double %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 200
  store double %storemerge, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call double @clauselist_selectivity(ptr noundef nonnull %0, ptr noundef %i.w, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %i.y = fmul double %storemerge, %i.x            ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.y, 1.000000e+100
  br i1 %or.cond.i.i, label %clamp_row_est.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = fcmp ugt double %i.y, 1.000000e+00
  br i1 %i.z, label %bb.f, label %clamp_row_est.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call double @llvm.rint.f64(double %i.y)
  br label %clamp_row_est.exit.i

clamp_row_est.exit.i:                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi double [ %i.aa, %bb.f ], [ 1.000000e+100, %bb.d ], [ 1.000000e+00, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i.i, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.v, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %set_baserel_size_estimates.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %clamp_row_est.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i32, ptr %i.ae, align 4
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.ak, ptr noundef nonnull %2) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next.i.i, %i.an
  br i1 %i.ao, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

set_baserel_size_estimates.exit:                  ; preds = %.lr.ph14.i.i, %clamp_row_est.exit.i, %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @set_rel_width(ptr noundef nonnull %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_result_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 24), (200, 208)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  store double 1.000000e+00, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call double @clauselist_selectivity(ptr noundef %0, ptr noundef %i.c, i32 noundef 0, i32 noundef 0, ptr noundef null) #14 ; 3 uses
  %or.cond.i.i = fcmp ugt double %i.d, 1.000000e+100
  br i1 %or.cond.i.i, label %clamp_row_est.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %i.d, 1.000000e+00
  br i1 %i.e, label %bb.c, label %clamp_row_est.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call double @llvm.rint.f64(double %i.d)
  br label %clamp_row_est.exit.i

clamp_row_est.exit.i:                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i = phi double [ %i.f, %bb.c ], [ 1.000000e+100, %bb.a ], [ 1.000000e+00, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i.i, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %set_baserel_size_estimates.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %clamp_row_est.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i32, ptr %i.j, align 4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.p, ptr noundef nonnull %2) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.r = load i32, ptr %i.j, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i.i, %i.s
  br i1 %i.t, label %.lr.ph14.i.i, label %set_baserel_size_estimates.exit

set_baserel_size_estimates.exit:                  ; preds = %.lr.ph14.i.i, %clamp_row_est.exit.i, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @set_rel_width(ptr noundef %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_foreign_size_estimates(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 24)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 1.000000e+03, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %cost_qual_eval.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.e, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph14.i, label %cost_qual_eval.exit

.lr.ph14.i:                                       ; preds = %.lr.ph.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph14.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.k, ptr noundef nonnull %2) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = load i32, ptr %i.e, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next.i, %i.n
  br i1 %i.o, label %.lr.ph14.i, label %cost_qual_eval.exit

cost_qual_eval.exit:                              ; preds = %.lr.ph14.i, %bb.a, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @set_rel_width(ptr noundef %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @set_pathtarget_cost_width(ptr noundef %0, ptr nofree noundef returned captures(ret: address, provenance) initializes((24, 40)) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.cost_qual_eval_context, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.d, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph32, label %.critedge

.lr.ph32:                                         ; preds = %.lr.ph, %bb.j
  %.0182131 = phi i64 [ %i.av, %bb.j ], [ 0, %.lr.ph ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv30
  %i.m = load ptr, ptr %i.l, align 8              ; 9 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 6
  br i1 %i.o, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.f, align 8
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = zext nneg i32 %i.q to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load i16, ptr %i.y, align 8              ; 3 uses
  %i.aa = sext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.ac = load i16, ptr %i.ab, align 4            ; 2 uses
  %i.ad = sext i16 %i.ac to i64
  %.not33.i = icmp slt i16 %i.z, %i.ac
  br i1 %.not33.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 126
  %i.af = load i16, ptr %i.ae, align 2
  %.not34.i = icmp sgt i16 %i.z, %i.af
  br i1 %.not34.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sub nsw i64 %i.aa, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %.thread.i, label %get_expr_width.exit

.thread.i:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = call i32 @get_typavgwidth(i32 noundef %i.an, i32 noundef %i.ap) #14
  br label %get_expr_width.exit

bb.h:                                             ; preds = %.lr.ph32
  %i.ar = call i32 @exprType(ptr noundef nonnull %i.m) #14
  %i.as = call i32 @exprTypmod(ptr noundef nonnull %i.m) #14
  %i.at = call i32 @get_typavgwidth(i32 noundef %i.ar, i32 noundef %i.as) #14
  br label %get_expr_width.exit

get_expr_width.exit:                              ; preds = %bb.g, %.thread.i, %bb.h
  %.4.i = phi i32 [ %i.at, %bb.h ], [ %i.aq, %.thread.i ], [ %i.ak, %bb.g ]
  %i.au = sext i32 %.4.i to i64
  %i.av = add i64 %.0182131, %i.au                ; 2 uses
  %i.aw = load i32, ptr %i.m, align 4
  %i.ax = icmp eq i32 %i.aw, 6
  br i1 %i.ax, label %bb.j, label %bb.i

..critedge.loopexit_crit_edge:                    ; preds = %bb.j
  %i.ay = call i64 @llvm.umin.i64(i64 %i.av, i64 1073741823)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %..critedge.loopexit_crit_edge, %bb.a
  %.018.lcssa = phi i32 [ 0, %bb.a ], [ %i.az, %..critedge.loopexit_crit_edge ], [ 0, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.018.lcssa, ptr %i.ba, align 8
  ret ptr %1

bb.i:                                             ; preds = %get_expr_width.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.bb = call zeroext i1 @cost_qual_eval_walker(ptr noundef nonnull %i.m, ptr noundef nonnull %2), !inline_history !7 ; 0 uses
  %i.bc = load <2 x double>, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.bd = load <2 x double>, ptr %i.a, align 8
  %i.be = fadd <2 x double> %i.bc, %i.bd
  store <2 x double> %i.be, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %get_expr_width.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.bf = load i32, ptr %i.d, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %.lr.ph32, label %..critedge.loopexit_crit_edge
}

declare i32 @tbm_calculate_entries(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc double @get_indexpath_pages(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  switch i32 %i.a, label %bb.e [
    i32 300, label %bb.b
    i32 301, label %bb.c
    i32 297, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not32 = icmp eq ptr %i.c, null
  br i1 %.not32, label %.critedge, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i32, ptr %i.d, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph55, label %.critedge

.lr.ph55:                                         ; preds = %.lr.ph47, %.lr.ph55
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %.lr.ph55 ], [ 0, %.lr.ph47 ] ; 2 uses
  %.04653 = phi double [ %i.l, %.lr.ph55 ], [ 0.000000e+00, %.lr.ph47 ]
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv60
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call fastcc double @get_indexpath_pages(ptr noundef %i.j)
  %i.l = fadd double %.04653, %i.k                ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.m = load i32, ptr %i.d, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next61, %i.n
  br i1 %i.o, label %.lr.ph55, label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph44, label %.critedge

.lr.ph44:                                         ; preds = %.lr.ph, %.lr.ph44
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph44 ], [ 0, %.lr.ph ] ; 2 uses
  %.13842 = phi double [ %i.z, %.lr.ph44 ], [ 0.000000e+00, %.lr.ph ]
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call fastcc double @get_indexpath_pages(ptr noundef %i.x)
  %i.z = fadd double %.13842, %i.y                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.r, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph44, label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = uitofp i32 %i.ag to double
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.ai = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.aj = load i32, ptr %0, align 4
  %i.ak = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.aj) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 992, ptr noundef nonnull @__func__.get_indexpath_pages) #14
  unreachable

.critedge:                                        ; preds = %.lr.ph44, %.lr.ph55, %bb.c, %.lr.ph, %bb.b, %.lr.ph47, %bb.d
  %.2 = phi double [ %i.ah, %bb.d ], [ %i.l, %.lr.ph55 ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %.lr.ph47 ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %.lr.ph ], [ %i.z, %.lr.ph44 ]
  ret double %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @compute_gather_rows(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 36
  %.val = load i32, ptr %i.c, align 4
  %i.d = sitofp i32 %.val to double               ; 3 uses
  %i.e = load i8, ptr @parallel_leader_participation, align 1, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %get_parallel_divisor.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.fmuladd.f64(double %i.d, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = select i1 %i.h, double %i.g, double -0.000000e+00
  %.0.i = fadd double %i.i, %i.d
  br label %get_parallel_divisor.exit

get_parallel_divisor.exit:                        ; preds = %bb.a, %bb.b
  %.1.i = phi double [ %.0.i, %bb.b ], [ %i.d, %bb.a ]
  %i.j = fmul double %i.b, %.1.i                  ; 3 uses
  %or.cond.i = fcmp ugt double %i.j, 1.000000e+100
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.c

bb.c:                                             ; preds = %get_parallel_divisor.exit
  %i.k = fcmp ugt double %i.j, 1.000000e+00
  br i1 %i.k, label %bb.d, label %clamp_row_est.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call double @llvm.rint.f64(double %i.j)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.c, %bb.d
  %.0.i2 = phi double [ %i.l, %bb.d ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.c ]
  ret double %.0.i2
}

declare zeroext i1 @is_redundant_with_indexclauses(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @tuplesort_merge_order(i64 noundef) local_unnamed_addr #4

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @get_sortgrouplist_exprs(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mergejoinscansel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @palloc(i64 noundef) local_unnamed_addr #4

declare double @ExecEstimateCacheEntryOverheadBytes(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

declare void @set_opfuncid(ptr noundef) local_unnamed_addr #4

declare void @set_sa_opfuncid(ptr noundef) local_unnamed_addr #4

declare void @getTypeInputInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @getTypeOutputInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exprType(ptr noundef) local_unnamed_addr #4

declare i32 @get_opcode(i32 noundef) local_unnamed_addr #4

declare zeroext i1 @expression_tree_walker_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @join_clause_is_movable_into(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @clause_selectivity(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @bms_membership(ptr noundef) local_unnamed_addr #4

declare ptr @list_copy(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @list_member_ptr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @list_delete_nth_cell(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @find_derived_clause_for_ec_member(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @get_attavgwidth(i32 noundef, i16 noundef signext) local_unnamed_addr #4

declare i32 @get_typavgwidth(i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @find_placeholder_info(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exprTypmod(ptr noundef) local_unnamed_addr #4

declare i32 @get_relation_data_width(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.rint.v2f64(<2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.peeled.count", i32 1}
!7 = !{ptr @cost_qual_eval_node}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8, !6}
!17 = distinct !{!17, !8, !19, !20}
!18 = distinct !{!18, !8, !20, !19}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8, !25}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_7
