Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/planner?download=true
inline.NumInlined: 215
inline.NumDeleted: 51
begin_hunk_0_@preprocess_expression:bb.a
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call ptr @make_ands_implicit(ptr noundef %.4) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.ab, %bb.l ], [ %.4, %bb.k ]
  ret ptr %.0
}

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @preprocess_qual_conditions(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %common.ret, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  switch i32 %i.b, label %bb.e [
    i32 65, label %common.ret
    i32 67, label %bb.c
    i32 66, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %common.ret.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i32, ptr %i.e, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph31, label %common.ret.sink.split

.lr.ph31:                                         ; preds = %.lr.ph, %.lr.ph31
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph31 ], [ 0, %.lr.ph ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  tail call fastcc void @preprocess_qual_conditions(ptr noundef %0, ptr noundef %i.k)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.e, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph31, label %common.ret.sink.split

common.ret.sink.split:                            ; preds = %.lr.ph31, %bb.c, %.lr.ph, %bb.d
  %.sink36 = phi i64 [ 48, %bb.d ], [ 16, %bb.c ], [ 16, %.lr.ph ], [ 16, %.lr.ph31 ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.sink36 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call fastcc ptr @preprocess_expression(ptr noundef %0, ptr noundef %i.p, i32 noundef 0)
  store ptr %i.q, ptr %i.o, align 8
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call fastcc void @preprocess_qual_conditions(ptr noundef %0, ptr noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call fastcc void @preprocess_qual_conditions(ptr noundef %0, ptr noundef %i.u)
  br label %common.ret.sink.split

bb.e:                                             ; preds = %bb.b
  %i.v = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.w = load i32, ptr %1, align 4
  %i.x = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8, i32 noundef %i.w) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1560, ptr noundef nonnull @__func__.preprocess_qual_conditions) #10
  unreachable
}

declare zeroext i1 @contain_volatile_functions(ptr noundef) local_unnamed_addr #2

declare ptr @flatten_join_alias_vars(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @flatten_group_exprs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @expression_returns_set(ptr noundef) local_unnamed_addr #2

declare ptr @expand_grouping_sets(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @contain_agg_clause(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_subplans(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pull_varnos(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_concat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #2

declare void @reduce_outer_joins(ptr noundef) local_unnamed_addr #2

declare void @remove_useless_result_rtes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @grouping_planner(ptr noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.AppendPathInput, align 8    ; 5 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %struct.AggClauseCosts, align 8     ; 5 uses
  %5 = alloca %struct.GroupPathExtraData, align 8 ; 9 uses
  %6 = alloca %struct.QualCost, align 8           ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 7 uses
  %7 = alloca %struct.SupportRequestOptimizeWindowClause, align 8 ; 11 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %struct.FinalPathExtraData, align 8 ; 8 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 6 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %struct.standard_qp_extra, align 8  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 240 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.v = load ptr, ptr %i.u, align 8
  %.not442 = icmp eq ptr %i.v, null
  br i1 %.not442, label %preprocess_limit.exit.thread, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.w = tail call ptr @estimate_expression_value(ptr noundef nonnull %0, ptr noundef nonnull %i.t) #10 ; 4 uses
  %.not72.i.a = icmp eq ptr %i.w, null
  br i1 %.not72.i.a, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 7
  br i1 %i.y, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %spec.store.select.i.a = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 1)
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.c
  %spec.store.select.sink.i = phi i64 [ %spec.store.select.i.a, %bb.f ], [ 0, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ 0, %bb.b ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not73.i.a = icmp eq ptr %i.af, null
  br i1 %.not73.i.a, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ag = tail call ptr @estimate_expression_value(ptr noundef nonnull %0, ptr noundef nonnull %i.af) #10 ; 4 uses
  %.not74.i.a = icmp eq ptr %i.ag, null
  br i1 %.not74.i.a, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, 7
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !range !4, !noundef !5
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %spec.store.select76.i = tail call i64 @llvm.smax.i64(i64 %i.an, i64 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %.thread
  %spec.store.select76.sink.i = phi i64 [ %spec.store.select76.i, %bb.j ], [ 0, %bb.i ], [ -1, %bb.g ], [ -1, %bb.h ], [ 0, %.thread ] ; 13 uses
  %.not75.i = icmp eq i64 %spec.store.select.sink.i, 0
  br i1 %.not75.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp slt i64 %spec.store.select.sink.i, 0
  %i.ap = icmp slt i64 %spec.store.select76.sink.i, 0
  %or.cond87.i = select i1 %i.ao, i1 true, i1 %i.ap
  %i.aq = uitofp nneg i64 %spec.store.select.sink.i to double
  %i.ar = uitofp nneg i64 %spec.store.select76.sink.i to double
  %i.as = fadd double %i.aq, %i.ar                ; 2 uses
  %.0.i = select i1 %or.cond87.i, double 1.000000e-01, double %i.as ; 7 uses
  %i.at = fcmp ult double %1, 1.000000e+00
  br i1 %i.at, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = fcmp ult double %.0.i, 1.000000e+00
  br i1 %i.au, label %preprocess_limit.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = fcmp olt double %1, %.0.i
  %i.aw = select i1 %i.av, double %1, double %.0.i
  br label %preprocess_limit.exit

bb.o:                                             ; preds = %bb.l
  %i.ax = fcmp ogt double %1, 0.000000e+00
  %i.ay = fcmp ult double %.0.i, 1.000000e+00
  %or.cond77.i = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond77.i, label %bb.p, label %preprocess_limit.exit

bb.p:                                             ; preds = %bb.o
  %i.az = fcmp olt double %1, %.0.i
  %i.ba = select i1 %i.az, double %1, double %.0.i
  br label %preprocess_limit.exit

bb.q:                                             ; preds = %bb.k
  %i.bb = icmp ne i64 %spec.store.select76.sink.i, 0
  %i.bc = fcmp ogt double %1, 0.000000e+00
  %or.cond.i = and i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %bb.r, label %preprocess_limit.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bd = icmp slt i64 %spec.store.select76.sink.i, 0
  %i.be = uitofp nneg i64 %spec.store.select76.sink.i to double
  %.1.i = select i1 %i.bd, double 1.000000e-01, double %i.be ; 4 uses
  %i.bf = fcmp ult double %1, 1.000000e+00
  %i.bg = fcmp ult double %.1.i, 1.000000e+00     ; 2 uses
  br i1 %i.bf, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.bg, label %preprocess_limit.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = fadd double %1, %.1.i
  br label %preprocess_limit.exit.thread

bb.u:                                             ; preds = %bb.r
  br i1 %i.bg, label %bb.v, label %preprocess_limit.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bi = fadd double %1, %.1.i                   ; 2 uses
  %10 = fcmp oge double %i.bi, 1.000000e+00
  %spec.store.select.i = select i1 %10, double 0.000000e+00, double %i.bi
  br label %preprocess_limit.exit.thread

preprocess_limit.exit:                            ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.061.i = phi double [ %i.aw, %bb.n ], [ %1, %bb.m ], [ %.0.i, %bb.o ], [ %i.ba, %bb.p ] ; 2 uses
  %i.bj = icmp sgt i64 %spec.store.select.sink.i, 0
  %i.bk = icmp sgt i64 %spec.store.select76.sink.i, -1
  %or.cond = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond, label %bb.w, label %preprocess_limit.exit.thread

bb.w:                                             ; preds = %preprocess_limit.exit
  br label %preprocess_limit.exit.thread

preprocess_limit.exit.thread:                     ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %preprocess_limit.exit, %bb.w, %bb.b
  %.0649 = phi i64 [ 0, %bb.b ], [ %spec.store.select76.sink.i, %bb.w ], [ %spec.store.select76.sink.i, %preprocess_limit.exit ], [ %spec.store.select76.sink.i, %bb.q ], [ %spec.store.select76.sink.i, %bb.s ], [ %spec.store.select76.sink.i, %bb.t ], [ %spec.store.select76.sink.i, %bb.u ], [ %spec.store.select76.sink.i, %bb.v ] ; 2 uses
  %.0648 = phi i64 [ 0, %bb.b ], [ %spec.store.select.sink.i, %bb.w ], [ %spec.store.select.sink.i, %preprocess_limit.exit ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ] ; 2 uses
  %.0351 = phi double [ -1.000000e+00, %bb.b ], [ %i.as, %bb.w ], [ -1.000000e+00, %preprocess_limit.exit ], [ -1.000000e+00, %bb.q ], [ -1.000000e+00, %bb.s ], [ -1.000000e+00, %bb.t ], [ -1.000000e+00, %bb.u ], [ -1.000000e+00, %bb.v ] ; 9 uses
  %.0 = phi double [ %1, %bb.b ], [ %.061.i, %bb.w ], [ %.061.i, %preprocess_limit.exit ], [ %1, %bb.q ], [ %.1.i, %bb.s ], [ %i.bh, %bb.t ], [ %1, %bb.u ], [ %spec.store.select.i, %bb.v ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  store double %.0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not443 = icmp eq ptr %i.bn, null
  br i1 %.not443, label %bb.af, label %bb.x

bb.x:                                             ; preds = %preprocess_limit.exit.thread
  %i.bo = tail call ptr @plan_set_operations(ptr noundef nonnull %0) #10 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call ptr @copyObjectImpl(ptr noundef %i.bq) #10 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %list_head.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  br label %list_head.exit.i

list_head.exit.i:                                 ; preds = %bb.y, %bb.x
  %i.bw = phi ptr [ %i.bv, %bb.y ], [ null, %bb.x ] ; 3 uses
  %.not.i492 = icmp eq ptr %i.br, null
  br i1 %.not.i492, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %list_head.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bz = getelementptr i8, ptr %i.bt, i64 16
  %i.ca = getelementptr i8, ptr %i.bt, i64 4
  %i.cb = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph29.i, label %.critedge.i

.lr.ph29.i:                                       ; preds = %.lr.ph.i, %bb.ab
  %i.cd = phi i32 [ %i.cx, %bb.ab ], [ %i.cb, %.lr.ph.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ 0, %.lr.ph.i ] ; 2 uses
  %.02228.i = phi ptr [ %.1.i493, %bb.ab ], [ %i.bw, %.lr.ph.i ] ; 3 uses
  %i.ce = load ptr, ptr %i.by, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 42
  %i.ci = load i8, ptr %i.ch, align 2, !range !4, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ab, label %bb.z

.critedge.i:                                      ; preds = %bb.ab, %.lr.ph.i, %list_head.exit.i
  %.0.lcssa.i = phi ptr [ %i.bw, %list_head.exit.i ], [ %i.bw, %.lr.ph.i ], [ %.1.i493, %bb.ab ]
  %.not19.i = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not19.i, label %postprocess_setop_tlist.exit, label %bb.ac

bb.z:                                             ; preds = %.lr.ph29.i
  %i.ck = load ptr, ptr %.02228.i, align 8        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 42
  %i.cm = load i8, ptr %i.cl, align 2, !range !4, !noundef !5
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.split.i, label %bb.aa

.split.i:                                         ; preds = %bb.z
  %i.co = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.cp = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 6062, ptr noundef nonnull @__func__.postprocess_setop_tlist) #10
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %.02228.i, i64 8 ; 2 uses
  %.val20.i = load ptr, ptr %i.bz, align 8
  %.val.i = load i32, ptr %i.ca, align 4
  %i.cr = sext i32 %.val.i to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %.val20.i, i64 %i.cr
  %i.ct = icmp ult ptr %i.cq, %i.cs
  %..i.i = select i1 %i.ct, ptr %i.cq, ptr null
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i32 %i.cv, ptr %i.cw, align 8
  %.pre.i = load i32, ptr %i.bx, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph29.i
  %i.cx = phi i32 [ %.pre.i, %bb.aa ], [ %i.cd, %.lr.ph29.i ] ; 2 uses
  %.1.i493 = phi ptr [ %..i.i, %bb.aa ], [ %.02228.i, %.lr.ph29.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next.i, %i.cy
  br i1 %i.cz, label %.lr.ph29.i, label %.critedge.i

bb.ac:                                            ; preds = %.critedge.i
  %i.da = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.db = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 6067, ptr noundef nonnull @__func__.postprocess_setop_tlist) #10
  unreachable

postprocess_setop_tlist.exit:                     ; preds = %.critedge.i
  store ptr %i.br, ptr %i.bp, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call zeroext i1 @is_parallel_safe(ptr noundef %0, ptr noundef %i.dh) #10
  store ptr null, ptr %i.j, align 8
  store ptr null, ptr %i.i, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 256 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %.not454 = icmp eq ptr %i.dk, null
  br i1 %.not454, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %postprocess_setop_tlist.exit
  %i.dl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.dm = tail call i32 @errcode(i32 noundef 1088) #10 ; 0 uses
  %i.dn = load ptr, ptr %i.dj, align 8
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %.val488 = load ptr, ptr %i.do, align 8
  %i.dp = load ptr, ptr %.val488, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = tail call ptr @LCS_asString(i32 noundef %i.dr) #10
  %i.dt = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10, ptr noundef %i.ds) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1784, ptr noundef nonnull @__func__.grouping_planner) #10
  unreachable

bb.ae:                                            ; preds = %postprocess_setop_tlist.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = load ptr, ptr %i.bp, align 8
  %i.dx = tail call ptr @make_pathkeys_for_sortclauses(ptr noundef nonnull %0, ptr noundef %i.dv, ptr noundef %i.dw) #10
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.dx, ptr %i.dy, align 8
  br label %bb.ij

bb.af:                                            ; preds = %preprocess_limit.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not444 = icmp eq ptr %i.ea, null
  br i1 %.not444, label %bb.br, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.ec = tail call ptr @palloc0(i64 noundef 64) #10 ; 10 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 176 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 3 uses
  store i8 0, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i8 0, i64 24, i1 false)
  %i.ek = load ptr, ptr %i.ed, align 8            ; 3 uses
  %.not.i494 = icmp eq ptr %i.ek, null
  br i1 %.not.i494, label %.critedge.i495, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4
  %.not104159.i = icmp sgt i32 %i.em, 0
  br i1 %.not104159.i, label %.lr.ph.i499, label %.critedge.i495

.lr.ph.i499:                                      ; preds = %.preheader.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %.lr.ph.i499
  %indvars.iv.i500 = phi i64 [ 0, %.lr.ph.i499 ], [ %indvars.iv.next.i501, %bb.al ] ; 2 uses
  %.093160.i = phi i32 [ 0, %.lr.ph.i499 ], [ %spec.select.i, %bb.al ]
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i500
  %i.eq = load ptr, ptr %i.ep, align 8            ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4            ; 3 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.es, i32 %.093160.i) ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 18
  %i.eu = load i8, ptr %i.et, align 2, !range !4, !noundef !5
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.aj, label %bb.ai

.critedge.loopexit.i:                             ; preds = %bb.al
  %i.ew = add i32 %spec.select.i, 1
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 2
  br label %.critedge.i495

bb.ai:                                            ; preds = %bb.ah
  %i.ez = load ptr, ptr %i.eh, align 8
  %i.fa = tail call ptr @bms_add_member(ptr noundef %i.ez, i32 noundef %i.es) #10
  store ptr %i.fa, ptr %i.eh, align 8
  br label %bb.aj

end_hunk_0
