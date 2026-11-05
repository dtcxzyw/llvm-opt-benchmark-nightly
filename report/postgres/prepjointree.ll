Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/prepjointree?download=true
inline.NumInlined: 122
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pullup_replace_vars_context = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, ptr }
%struct.reduce_outer_joins_pass2_state = type { ptr, ptr }
%struct.find_dependent_phvs_context = type { ptr, i32 }
%struct.substitute_phv_relids_context = type { i32, i32, ptr }

@.str = private unnamed_addr constant [8 x i8] c"*MERGE*\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unrecognized source node type: %d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"prepjointree.c\00", align 1
@__func__.transform_MERGE_to_join = private unnamed_addr constant [24 x i8] c"transform_MERGE_to_join\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"*RESULT*\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"so where are the outer joins?\00", align 1
@__func__.reduce_outer_joins = private unnamed_addr constant [19 x i8] c"reduce_outer_joins\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1
@__func__.get_relids_in_jointree = private unnamed_addr constant [23 x i8] c"get_relids_in_jointree\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"could not find join node %d\00", align 1
@__func__.get_relids_for_join = private unnamed_addr constant [20 x i8] c"get_relids_for_join\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"unrecognized join type: %d\00", align 1
@__func__.pull_up_sublinks_jointree_recurse = private unnamed_addr constant [34 x i8] c"pull_up_sublinks_jointree_recurse\00", align 1
@InterruptPending = external global i32, align 4
@__func__.pull_up_subqueries_recurse = private unnamed_addr constant [27 x i8] c"pull_up_subqueries_recurse\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"subquery is bogus\00", align 1
@__func__.is_simple_subquery = private unnamed_addr constant [19 x i8] c"is_simple_subquery\00", align 1
@__func__.jointree_contains_lateral_outer_refs = private unnamed_addr constant [37 x i8] c"jointree_contains_lateral_outer_refs\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@__func__.get_nullingrels_recurse = private unnamed_addr constant [24 x i8] c"get_nullingrels_recurse\00", align 1
@__func__.replace_vars_in_jointree = private unnamed_addr constant [25 x i8] c"replace_vars_in_jointree\00", align 1
@__func__.is_simple_union_all = private unnamed_addr constant [20 x i8] c"is_simple_union_all\00", align 1
@__func__.is_simple_union_all_recurse = private unnamed_addr constant [28 x i8] c"is_simple_union_all_recurse\00", align 1
@__func__.pull_up_union_leaf_queries = private unnamed_addr constant [27 x i8] c"pull_up_union_leaf_queries\00", align 1
@__func__.reduce_outer_joins_pass1 = private unnamed_addr constant [25 x i8] c"reduce_outer_joins_pass1\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"reached empty jointree\00", align 1
@__func__.reduce_outer_joins_pass2 = private unnamed_addr constant [25 x i8] c"reduce_outer_joins_pass2\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"reached base rel\00", align 1
@__func__.remove_useless_results_recurse = private unnamed_addr constant [31 x i8] c"remove_useless_results_recurse\00", align 1
@__func__.find_jointree_node_for_rel = private unnamed_addr constant [27 x i8] c"find_jointree_node_for_rel\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @transform_MERGE_to_join(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 5
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not122 = icmp eq ptr %i.g, null
  br i1 %.not122, label %.thread156, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph133, label %.thread156

.lr.ph133:                                        ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph133.new

.lr.ph133.new:                                    ; preds = %.lr.ph133
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %17, %.lr.ph133.new
  %indvars.iv = phi i64 [ 0, %.lr.ph133.new ], [ %indvars.iv.next.1, %17 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph133.new ], [ %niter.next.1, %17 ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %.not123 = icmp eq i32 %i.q, 7
  br i1 %.not123, label %6, label %1

.critedge.unr-lcssa:                              ; preds = %17
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.unr-lcssa, %.lr.ph133
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next.1, %.critedge.unr-lcssa ]
  %lcmp.mod165 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod165)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.epil.init
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %.not123.epil = icmp eq i32 %i.u, 7
  br i1 %.not123.epil, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.epil.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  store i8 1, ptr %i.y, align 1
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %bb.d, %.critedge.unr-lcssa
  %.pre = load i8, ptr %i.d, align 1, !range !5
  %.pre143 = load i8, ptr %i.e, align 1, !range !5
  %.pre.fr = freeze i8 %.pre
  %i.z = trunc i8 %.pre.fr to i1                  ; 2 uses
  %.pre143.fr = freeze i8 %.pre143
  %i.aa = trunc i8 %.pre143.fr to i1              ; 3 uses
  %.164 = select i1 %i.aa, i32 3, i32 0
  %. = select i1 %i.aa, i32 2, i32 1
  %spec.select = select i1 %i.z, i1 true, i1 false
  %spec.select166 = select i1 %i.z, i32 %., i32 %.164
  br label %.thread156

.thread156:                                       ; preds = %.critedge, %bb.b, %.lr.ph
  %i.ab = phi i1 [ false, %.lr.ph ], [ false, %bb.b ], [ %spec.select, %.critedge ]
  %i.ac = phi i1 [ false, %.lr.ph ], [ false, %bb.b ], [ %i.aa, %.critedge ]
  %i.ad = phi i32 [ 0, %.lr.ph ], [ 0, %bb.b ], [ %spec.select166, %.critedge ] ; 2 uses
  %i.ae = tail call noundef ptr @palloc0(i64 noundef 240) #6 ; 11 uses
  store i32 108, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 68
  store i32 %i.ad, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %i.aj, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  %i.ak = tail call ptr @makeAlias(ptr noundef nonnull @.str, ptr noundef null) #6
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  store i8 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i8 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 225
  store i8 1, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call ptr @lappend(ptr noundef %i.aq, ptr noundef nonnull %i.ae) #6 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %list_length.exit, label %bb.e

1:                                                ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %3 = load i32, ptr %2, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  store i8 1, ptr %5, align 1
  br label %6

6:                                                ; preds = %bb.c, %1
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8                  ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load i32, ptr %10, align 8
  %.not123.1 = icmp eq i32 %11, 7
  br i1 %.not123.1, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 %15
  store i8 1, ptr %16, align 1
  br label %17

17:                                               ; preds = %12, %6
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.unr-lcssa, label %bb.c

bb.e:                                             ; preds = %.thread156
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %.thread156, %bb.e
  %i.au = phi i32 [ %i.at, %bb.e ], [ 0, %.thread156 ] ; 7 uses
  %i.av = tail call noundef ptr @palloc0(i64 noundef 8) #6 ; 3 uses
  store i32 65, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.av) #6
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call ptr @makeFromExpr(ptr noundef %i.az, ptr noundef %i.bd) #6
  %i.bf = load ptr, ptr %i.ba, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %.val = load ptr, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %.val, align 8            ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4
  switch i32 %i.bk, label %bb.g [
    i32 65, label %bb.h
    i32 66, label %bb.f
  ]

bb.f:                                             ; preds = %list_length.exit
  br label %bb.h

bb.g:                                             ; preds = %list_length.exit
  %i.bl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bm = load i32, ptr %i.bj, align 4
  %i.bn = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.1, i32 noundef %i.bm) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 291, ptr noundef nonnull @__func__.transform_MERGE_to_join) #6
  unreachable

bb.h:                                             ; preds = %list_length.exit, %bb.f
  %.sink = phi i64 [ 64, %bb.f ], [ 4, %list_length.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink
  %.0113 = load i32, ptr %i.bo, align 4           ; 6 uses
  %i.bp = tail call noundef ptr @palloc0(i64 noundef 72) #6 ; 10 uses
  store i32 66, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.ad, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i8 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.be, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.bj, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store ptr %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store i32 %i.au, ptr %i.bz, align 8
  %i.ca = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.bp) #6
  %i.cb = load ptr, ptr %i.ba, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.ca, ptr %i.cc, align 8
  %i.cd = load ptr, ptr %i.ba, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr null, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not119 = icmp ne ptr %i.cg, null
  %brmerge.not = and i1 %.not119, %i.ac
  br i1 %brmerge.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = load i32, ptr %i.aw, align 8
  %i.ci = tail call ptr @bms_make_singleton(i32 noundef %i.ch) #6
  %i.cj = tail call ptr @bms_make_singleton(i32 noundef %i.au) #6
  %i.ck = tail call ptr @add_nulling_relids(ptr noundef nonnull %i.cg, ptr noundef %i.ci, ptr noundef %i.cj) #6
  store ptr %i.ck, ptr %i.cf, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  br i1 %i.ab, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.bv, align 8
  %i.cm = tail call ptr @bms_make_singleton(i32 noundef %.0113) #6
  %i.cn = tail call ptr @bms_make_singleton(i32 noundef %i.au) #6
  %i.co = tail call ptr @add_nulling_relids(ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %i.cn) #6
  store ptr %i.co, ptr %i.bv, align 8
  %i.cp = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %.not121 = icmp eq ptr %i.cp, null
  br i1 %.not121, label %._crit_edge, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = load i32, ptr %i.cq, align 4
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph138, label %._crit_edge

.lr.ph138:                                        ; preds = %.lr.ph135, %.lr.ph138
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.lr.ph138 ], [ 0, %.lr.ph135 ] ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv140
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call ptr @bms_make_singleton(i32 noundef %.0113) #6
  %i.da = tail call ptr @bms_make_singleton(i32 noundef %i.au) #6
  %i.db = tail call ptr @add_nulling_relids(ptr noundef %i.cy, ptr noundef %i.cz, ptr noundef %i.da) #6
  store ptr %i.db, ptr %i.cx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call ptr @bms_make_singleton(i32 noundef %.0113) #6
  %i.df = tail call ptr @bms_make_singleton(i32 noundef %i.au) #6
  %i.dg = tail call ptr @add_nulling_relids(ptr noundef %i.dd, ptr noundef %i.de, ptr noundef %i.df) #6
  store ptr %i.dg, ptr %i.dc, align 8
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.dh = load i32, ptr %i.cq, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next141, %i.di
  br i1 %i.dj, label %.lr.ph138, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph138, %.lr.ph135, %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call ptr @bms_make_singleton(i32 noundef %.0113) #6
  %i.dn = tail call ptr @bms_make_singleton(i32 noundef %i.au) #6
  %i.do = tail call ptr @add_nulling_relids(ptr noundef %i.dl, ptr noundef %i.dm, ptr noundef %i.dn) #6
  store ptr %i.do, ptr %i.dk, align 8
  %i.dp = load ptr, ptr %i.ap, align 8
  %i.dq = add i32 %.0113, -1
  %i.dr = getelementptr i8, ptr %i.dp, i64 16
  %.val129 = load ptr, ptr %i.dr, align 8
  %i.ds = sext i32 %i.dq to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %.val129, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call ptr @makeWholeRowVar(ptr noundef %i.du, i32 noundef %.0113, i32 noundef 0, i1 noundef zeroext false) #6 ; 2 uses
  %i.dw = tail call ptr @bms_make_singleton(i32 noundef %i.au) #6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = tail call noundef ptr @palloc0(i64 noundef 32) #6 ; 6 uses
  store i32 52, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.dv, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i32 1, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  store i8 0, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i32 -1, ptr %i.ec, align 8
  %i.ed = load ptr, ptr %i.bv, align 8
  %i.ee = tail call ptr @make_and_qual(ptr noundef nonnull %i.dy, ptr noundef %i.ed) #6
  br label %.thread

.thread:                                          ; preds = %bb.j, %._crit_edge
  %storemerge = phi ptr [ %i.ee, %._crit_edge ], [ null, %bb.j ]
  store ptr %storemerge, ptr %i.bv, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @makeAlias(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @makeFromExpr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #3

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @add_nulling_relids(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bms_make_singleton(i32 noundef) local_unnamed_addr #3

declare ptr @makeWholeRowVar(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @make_and_qual(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @preprocess_relation_rtes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pullup_replace_vars_context, align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %._crit_edge, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %list_length.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

end_hunk_0
