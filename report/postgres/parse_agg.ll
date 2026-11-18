Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/parse_agg?download=true
inline.NumInlined: 49
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.check_agg_arguments_context = type { ptr, i32, i32, i32, ptr, i32 }
%struct.substitute_grouped_columns_context = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, i8, ptr, i32, i8 }

@.str = private unnamed_addr constant [52 x i8] c"could not identify an ordering operator for type %s\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Aggregates with DISTINCT must be able to sort their inputs.\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"parse_agg.c\00", align 1
@__func__.transformAggregateCall = private unnamed_addr constant [23 x i8] c"transformAggregateCall\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"GROUPING must have fewer than 32 arguments\00", align 1
@__func__.transformGroupingFunc = private unnamed_addr constant [22 x i8] c"transformGroupingFunc\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"window function calls cannot be nested\00", align 1
@__func__.transformWindowFuncCall = private unnamed_addr constant [24 x i8] c"transformWindowFuncCall\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"window functions are not allowed in JOIN conditions\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"window functions are not allowed in functions in FROM\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"window functions are not allowed in policy expressions\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"window functions are not allowed in window definitions\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"window functions are not allowed in MERGE WHEN conditions\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"window functions are not allowed in check constraints\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"window functions are not allowed in DEFAULT expressions\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"window functions are not allowed in index expressions\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"window functions are not allowed in statistics expressions\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"window functions are not allowed in index predicates\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"window functions are not allowed in transform expressions\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"window functions are not allowed in EXECUTE parameters\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"window functions are not allowed in trigger WHEN conditions\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"window functions are not allowed in partition bound\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"window functions are not allowed in partition key expressions\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"window functions are not allowed in CALL arguments\00", align 1
@.str.21 = private unnamed_addr constant [63 x i8] c"window functions are not allowed in COPY FROM WHERE conditions\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"window functions are not allowed in column generation expressions\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"window functions are not allowed in property definition expressions\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"window functions are not allowed in FOR PORTION OF expressions\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"window functions are not allowed in %s\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"window \22%s\22 does not exist\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"too many grouping sets present (maximum 4096)\00", align 1
@__func__.parseCheckAggregates = private unnamed_addr constant [21 x i8] c"parseCheckAggregates\00", align 1
@.str.29 = private unnamed_addr constant [74 x i8] c"aggregate functions are not allowed in a recursive query's recursive term\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@__func__.agg_args_support_sendreceive = private unnamed_addr constant [29 x i8] c"agg_args_support_sendreceive\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"aggregate functions are not allowed in JOIN conditions\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"grouping operations are not allowed in JOIN conditions\00", align 1
@.str.33 = private unnamed_addr constant [76 x i8] c"aggregate functions are not allowed in FROM clause of their own query level\00", align 1
@.str.34 = private unnamed_addr constant [76 x i8] c"grouping operations are not allowed in FROM clause of their own query level\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"aggregate functions are not allowed in functions in FROM\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"grouping operations are not allowed in functions in FROM\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"aggregate functions are not allowed in policy expressions\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"grouping operations are not allowed in policy expressions\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"aggregate functions are not allowed in window RANGE\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"grouping operations are not allowed in window RANGE\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"aggregate functions are not allowed in window ROWS\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"grouping operations are not allowed in window ROWS\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"aggregate functions are not allowed in window GROUPS\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"grouping operations are not allowed in window GROUPS\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"aggregate functions are not allowed in MERGE WHEN conditions\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"grouping operations are not allowed in MERGE WHEN conditions\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"aggregate functions are not allowed in check constraints\00", align 1
@.str.48 = private unnamed_addr constant [57 x i8] c"grouping operations are not allowed in check constraints\00", align 1
@.str.49 = private unnamed_addr constant [59 x i8] c"aggregate functions are not allowed in DEFAULT expressions\00", align 1
@.str.50 = private unnamed_addr constant [59 x i8] c"grouping operations are not allowed in DEFAULT expressions\00", align 1
@.str.51 = private unnamed_addr constant [57 x i8] c"aggregate functions are not allowed in index expressions\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"grouping operations are not allowed in index expressions\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"aggregate functions are not allowed in index predicates\00", align 1
@.str.54 = private unnamed_addr constant [56 x i8] c"grouping operations are not allowed in index predicates\00", align 1
@.str.55 = private unnamed_addr constant [62 x i8] c"aggregate functions are not allowed in statistics expressions\00", align 1
@.str.56 = private unnamed_addr constant [62 x i8] c"grouping operations are not allowed in statistics expressions\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"aggregate functions are not allowed in transform expressions\00", align 1
@.str.58 = private unnamed_addr constant [61 x i8] c"grouping operations are not allowed in transform expressions\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"aggregate functions are not allowed in EXECUTE parameters\00", align 1
@.str.60 = private unnamed_addr constant [58 x i8] c"grouping operations are not allowed in EXECUTE parameters\00", align 1
@.str.61 = private unnamed_addr constant [63 x i8] c"aggregate functions are not allowed in trigger WHEN conditions\00", align 1
@.str.62 = private unnamed_addr constant [63 x i8] c"grouping operations are not allowed in trigger WHEN conditions\00", align 1
@.str.63 = private unnamed_addr constant [55 x i8] c"aggregate functions are not allowed in partition bound\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"grouping operations are not allowed in partition bound\00", align 1
@.str.65 = private unnamed_addr constant [65 x i8] c"aggregate functions are not allowed in partition key expressions\00", align 1
@.str.66 = private unnamed_addr constant [65 x i8] c"grouping operations are not allowed in partition key expressions\00", align 1
@.str.67 = private unnamed_addr constant [69 x i8] c"aggregate functions are not allowed in column generation expressions\00", align 1
@.str.68 = private unnamed_addr constant [69 x i8] c"grouping operations are not allowed in column generation expressions\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"aggregate functions are not allowed in CALL arguments\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"grouping operations are not allowed in CALL arguments\00", align 1
@.str.71 = private unnamed_addr constant [66 x i8] c"aggregate functions are not allowed in COPY FROM WHERE conditions\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"grouping operations are not allowed in COPY FROM WHERE conditions\00", align 1
@.str.73 = private unnamed_addr constant [66 x i8] c"aggregate functions are not allowed in FOR PORTION OF expressions\00", align 1
@.str.74 = private unnamed_addr constant [66 x i8] c"grouping operations are not allowed in FOR PORTION OF expressions\00", align 1
@.str.75 = private unnamed_addr constant [71 x i8] c"aggregate functions are not allowed in property definition expressions\00", align 1
@.str.76 = private unnamed_addr constant [71 x i8] c"grouping operations are not allowed in property definition expressions\00", align 1
@__func__.check_agglevels_and_constraints = private unnamed_addr constant [32 x i8] c"check_agglevels_and_constraints\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"aggregate functions are not allowed in %s\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"grouping operations are not allowed in %s\00", align 1
@.str.79 = private unnamed_addr constant [42 x i8] c"aggregate function calls cannot be nested\00", align 1
@__func__.check_agg_arguments = private unnamed_addr constant [20 x i8] c"check_agg_arguments\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"outer-level aggregate cannot use a nested CTE\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"CTE \22%s\22 is below the aggregate's semantic level.\00", align 1
@.str.82 = private unnamed_addr constant [84 x i8] c"outer-level aggregate cannot contain a lower-level variable in its direct arguments\00", align 1
@.str.83 = private unnamed_addr constant [69 x i8] c"aggregate function calls cannot contain set-returning function calls\00", align 1
@.str.84 = private unnamed_addr constant [79 x i8] c"You might be able to move the set-returning function into a LATERAL FROM item.\00", align 1
@__func__.check_agg_arguments_walker = private unnamed_addr constant [27 x i8] c"check_agg_arguments_walker\00", align 1
@.str.85 = private unnamed_addr constant [62 x i8] c"aggregate function calls cannot contain window function calls\00", align 1
@.str.86 = private unnamed_addr constant [86 x i8] c"column \22%s.%s\22 must appear in the GROUP BY clause or be used in an aggregate function\00", align 1
@.str.87 = private unnamed_addr constant [76 x i8] c"Direct arguments of an ordered-set aggregate must use only grouped columns.\00", align 1
@__func__.substitute_grouped_columns_mutator = private unnamed_addr constant [35 x i8] c"substitute_grouped_columns_mutator\00", align 1
@.str.88 = private unnamed_addr constant [56 x i8] c"subquery uses ungrouped column \22%s.%s\22 from outer query\00", align 1
@.str.89 = private unnamed_addr constant [81 x i8] c"arguments to GROUPING must be grouping expressions of the associated query level\00", align 1
@__func__.finalize_grouping_exprs_walker = private unnamed_addr constant [31 x i8] c"finalize_grouping_exprs_walker\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @transformAggregateCall(ptr noundef %0, ptr nofree noundef captures(none) initializes((32, 40)) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.c = load i8, ptr %i.b, align 2
  %.not = icmp eq i8 %i.c, 110
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %list_length.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.e, %bb.c ], [ 0, %bb.b ]    ; 3 uses
  %.not.i129 = icmp eq ptr %3, null
  br i1 %.not.i129, label %.thread.critedge, label %list_length.exit130

list_length.exit130:                              ; preds = %list_length.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i32 %i.f, %i.h                       ; 2 uses
  %i.j = tail call ptr @list_copy_tail(ptr noundef %2, i32 noundef %i.i) #11 ; 3 uses
  %i.k = tail call ptr @list_truncate(ptr noundef %2, i32 noundef %i.i) #11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.not117 = icmp eq ptr %i.j, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %list_length.exit130.split

list_length.exit130.split:                        ; preds = %list_length.exit130, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %list_length.exit130 ] ; 5 uses
  %i.q = phi ptr [ %i.aj, %bb.h ], [ null, %list_length.exit130 ] ; 3 uses
  %.099 = phi i16 [ %i.ah, %bb.h ], [ 1, %list_length.exit130 ] ; 2 uses
  %.095 = phi ptr [ %i.ak, %bb.h ], [ null, %list_length.exit130 ] ; 3 uses
  br i1 %.not117, label %bb.f, label %bb.d

bb.d:                                             ; preds = %list_length.exit130.split
  %i.r = load i32, ptr %i.n, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  br label %bb.f

bb.f:                                             ; preds = %list_length.exit130.split, %bb.d, %bb.e
  %i.w = phi ptr [ %i.v, %bb.e ], [ null, %bb.d ], [ null, %list_length.exit130.split ] ; 2 uses
  %i.x = load i32, ptr %i.m, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv, %i.y
  br i1 %i.z, label %bb.g, label %.thread.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ab = icmp ne ptr %i.w, null
  %i.ac = icmp ne ptr %i.aa, null
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.h, label %.thread.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.af = load ptr, ptr %i.w, align 8
  %i.ag = load ptr, ptr %i.ae, align 8
  %i.ah = add i16 %.099, 1
  %i.ai = tail call ptr @makeTargetEntry(ptr noundef %i.af, i16 noundef signext %.099, ptr noundef null, i1 noundef zeroext false) #11 ; 2 uses
  %i.aj = tail call ptr @lappend(ptr noundef %i.q, ptr noundef %i.ai) #11 ; 2 uses
  %i.ak = tail call ptr @addTargetToSortList(ptr noundef %0, ptr noundef %i.ai, ptr noundef %.095, ptr noundef %i.aj, ptr noundef %i.ag) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %list_length.exit130.split, !llvm.loop !7

bb.i:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not112 = icmp eq ptr %2, null
  br i1 %.not112, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load i32, ptr %i.am, align 4
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph140, label %.critedge

.lr.ph140:                                        ; preds = %.lr.ph, %.lr.ph140
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph140 ], [ 0, %.lr.ph ] ; 2 uses
  %i.aq = phi ptr [ %i.aw, %.lr.ph140 ], [ null, %.lr.ph ]
  %.1100133138 = phi i16 [ %i.au, %.lr.ph140 ], [ 1, %.lr.ph ] ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv179
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = add i16 %.1100133138, 1                 ; 2 uses
  %i.av = tail call ptr @makeTargetEntry(ptr noundef %i.at, i16 noundef signext %.1100133138, ptr noundef null, i1 noundef zeroext false) #11
  %i.aw = tail call ptr @lappend(ptr noundef %i.aq, ptr noundef %i.av) #11 ; 2 uses
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.ax = load i32, ptr %i.am, align 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next180, %i.ay
  br i1 %i.az, label %.lr.ph140, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph140
  %i.ba = sext i16 %i.au to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %bb.i
  %.lcssa134 = phi ptr [ null, %bb.i ], [ null, %.lr.ph ], [ %i.aw, %.critedge.loopexit ]
  %.1100.lcssa = phi i32 [ 1, %bb.i ], [ 1, %.lr.ph ], [ %i.ba, %.critedge.loopexit ]
  store ptr %.lcssa134, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4
  store i32 %.1100.lcssa, ptr %i.bb, align 4
  %i.bd = call ptr @transformSortClause(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef 21, i1 noundef zeroext true) #11 ; 2 uses
  br i1 %4, label %bb.j, label %.critedge124

bb.j:                                             ; preds = %.critedge
  %i.be = call ptr @transformDistinctClause(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.bd, i1 noundef zeroext true) #11 ; 5 uses
  %.not114 = icmp eq ptr %i.be, null
  br i1 %.not114, label %.critedge124, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph150, label %.critedge124

.lr.ph150:                                        ; preds = %.lr.ph142
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %wide.trip.count = zext nneg i32 %i.bg to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count
  br i1 %exitcond.not, label %.critedge124, label %bb.l

bb.l:                                             ; preds = %.lr.ph150, %bb.k
  %indvars.iv181 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next182, %bb.k ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv181
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4
  %.not116 = icmp eq i32 %i.bn, 0
  br i1 %.not116, label %.split, label %bb.k

.split:                                           ; preds = %bb.l
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = call ptr @get_sortgroupclause_expr(ptr noundef nonnull %i.bl, ptr noundef %i.bo) #11 ; 2 uses
  %i.bq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.br = call i32 @errcode(i32 noundef 52461700) #11 ; 0 uses
  %i.bs = call i32 @exprType(ptr noundef %i.bp) #11
  %i.bt = call ptr @format_type_be(i32 noundef %i.bs) #11
  %i.bu = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.bt) #11 ; 0 uses
  %i.bv = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.1) #11 ; 0 uses
  %i.bw = call i32 @exprLocation(ptr noundef %i.bp) #11
  %i.bx = call i32 @parser_errposition(ptr noundef nonnull %0, i32 noundef %i.bw) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 222, ptr noundef nonnull @__func__.transformAggregateCall) #11
  unreachable

.critedge124:                                     ; preds = %bb.k, %bb.j, %.lr.ph142, %.critedge
  %.097 = phi ptr [ null, %.critedge ], [ null, %bb.j ], [ %i.be, %.lr.ph142 ], [ %i.be, %bb.k ]
  store i32 %i.bc, ptr %i.bb, align 4
  %.pre = load ptr, ptr %i.a, align 8
  br label %.thread

.thread.critedge:                                 ; preds = %list_length.exit
  %i.by = tail call ptr @list_copy_tail(ptr noundef %2, i32 noundef %i.f) #11 ; 0 uses
  %i.bz = tail call ptr @list_truncate(ptr noundef %2, i32 noundef %i.f) #11
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bz, ptr %i.ca, align 8
  br label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.f, %bb.g, %.thread.critedge
  %.us-phi = phi ptr [ null, %.thread.critedge ], [ %i.q, %bb.g ], [ %i.q, %bb.f ] ; 2 uses
  %.us-phi132 = phi ptr [ null, %.thread.critedge ], [ %.095, %bb.g ], [ %.095, %bb.f ]
  store ptr %.us-phi, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.critedge124
  %5 = phi ptr [ %.pre, %.critedge124 ], [ %.us-phi, %.thread.loopexit ] ; 3 uses
  %.198 = phi ptr [ %.097, %.critedge124 ], [ null, %.thread.loopexit ]
  %.196 = phi ptr [ %i.bd, %.critedge124 ], [ %.us-phi132, %.thread.loopexit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %5, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %.196, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %.198, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %.not119 = icmp eq ptr %i.cf, null
  br i1 %.not119, label %.critedge126, label %.lr.ph154

.lr.ph154:                                        ; preds = %.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load i32, ptr %i.cg, align 4
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph162, label %.critedge126

.lr.ph162:                                        ; preds = %.lr.ph154, %.lr.ph162
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph162 ], [ 0, %.lr.ph154 ] ; 2 uses
  %.0153160 = phi ptr [ %i.co, %.lr.ph162 ], [ null, %.lr.ph154 ]
  %i.ck = load ptr, ptr %i.ch, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv184
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call i32 @exprType(ptr noundef %i.cm) #11
  %i.co = call ptr @lappend_oid(ptr noundef %.0153160, i32 noundef %i.cn) #11 ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.cp = load i32, ptr %i.cg, align 4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next185, %i.cq
  br i1 %i.cr, label %.lr.ph162, label %.critedge126.loopexit

.critedge126.loopexit:                            ; preds = %.lr.ph162
  %.pre190 = load ptr, ptr %i.a, align 8
  br label %.critedge126

.critedge126:                                     ; preds = %.critedge126.loopexit, %.lr.ph154, %.thread
  %i.cs = phi ptr [ %5, %.thread ], [ %5, %.lr.ph154 ], [ %.pre190, %.critedge126.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ null, %.thread ], [ null, %.lr.ph154 ], [ %i.co, %.critedge126.loopexit ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %.not121 = icmp eq ptr %i.cs, null
  br i1 %.not121, label %.critedge128, label %.lr.ph166

.lr.ph166:                                        ; preds = %.critedge126
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph174, label %.critedge128

.lr.ph174:                                        ; preds = %.lr.ph166, %bb.n
  %i.cx = phi i32 [ %i.dj, %bb.n ], [ %i.cv, %.lr.ph166 ]
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %bb.n ], [ 0, %.lr.ph166 ] ; 2 uses
  %.1164173 = phi ptr [ %.2, %bb.n ], [ %.0.lcssa, %.lr.ph166 ] ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv187
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 42
  %i.dc = load i8, ptr %i.db, align 2, !range !5, !noundef !6
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.n, label %bb.m

.critedge128:                                     ; preds = %bb.n, %.lr.ph166, %.critedge126
  %.1.lcssa = phi ptr [ %.0.lcssa, %.critedge126 ], [ %.0.lcssa, %.lr.ph166 ], [ %.2, %bb.n ]
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.1.lcssa, ptr %i.de, align 8
  call fastcc void @check_agglevels_and_constraints(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.m:                                             ; preds = %.lr.ph174
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call i32 @exprType(ptr noundef %i.dg) #11
  %i.di = call ptr @lappend_oid(ptr noundef %.1164173, i32 noundef %i.dh) #11
  %.pre191 = load i32, ptr %i.ct, align 4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph174, %bb.m
  %i.dj = phi i32 [ %.pre191, %bb.m ], [ %i.cx, %.lr.ph174 ] ; 2 uses
  %.2 = phi ptr [ %i.di, %bb.m ], [ %.1164173, %.lr.ph174 ] ; 2 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next188, %i.dk
  br i1 %i.dl, label %.lr.ph174, label %.critedge128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @list_copy_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @list_truncate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @makeTargetEntry(ptr noundef, i16 noundef signext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @addTargetToSortList(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @transformSortClause(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @transformDistinctClause(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @get_sortgroupclause_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @format_type_be(i32 noundef) local_unnamed_addr #2

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare i32 @parser_errposition(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @exprLocation(ptr noundef) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lappend_oid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @check_agglevels_and_constraints(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.check_agg_arguments_context, align 8 ; 11 uses
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp eq i32 %i.a, 9                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink74 = phi i64 [ 36, %bb.c ], [ 92, %bb.b ]
  %.sink = phi i64 [ 32, %bb.c ], [ 76, %bb.b ]
  %.062.in = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  %.061 = phi ptr [ null, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %.055 = phi ptr [ null, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink74
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.059 = load i32, ptr %i.i, align 4             ; 4 uses
  %.062 = load ptr, ptr %.062.in, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %0, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 -1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i32 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.o, align 8
  %i.p = call zeroext i1 @check_agg_arguments_walker(ptr noundef %.062, ptr noundef nonnull %2) ; 0 uses
  %i.q = call zeroext i1 @check_agg_arguments_walker(ptr noundef %.061, ptr noundef nonnull %2) ; 0 uses
  %i.r = load i32, ptr %i.k, align 8              ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  %i.t = load i32, ptr %i.l, align 4              ; 6 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %..i = call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call i32 @llvm.umin.i32(i32 %i.r, i32 %i.t)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.025.i = phi i32 [ %..i, %bb.e ], [ %i.v, %bb.g ], [ %i.r, %bb.f ] ; 11 uses
  %i.w = icmp eq i32 %.025.i, %i.t
  br i1 %i.w, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @locate_agg_of_level(ptr noundef %.062, i32 noundef %i.t) #11 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.k

end_hunk_0
