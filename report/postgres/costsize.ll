Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/costsize?download=true
inline.NumInlined: 163
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@estimate_hash_bucket_stats
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
  %i.af = load double, ptr %i.ae, align 8         ; 4 uses
  %i.ag = fcmp ogt double %i.af, 1.000000e+100
  %i.ah = fcmp uno double %i.af, 0.000000e+00
  %or.cond.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = fcmp ugt double %i.af, 1.000000e+00
  br i1 %i.ai, label %bb.f, label %clamp_row_est.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = call double @llvm.rint.f64(double %i.af)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi double [ %i.aj, %bb.f ], [ 1.000000e+100, %bb.d ], [ 1.000000e+00, %bb.e ]
  %i.ak = fdiv double %i.ab, %.0.i
  %i.al = fadd double %.sroa.8.0.copyload, %i.ak
  br label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.c
  %i.am = call double @llvm.fmuladd.f64(double %i.ab, double 5.000000e-01, double %.sroa.8.0.copyload)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = fmul double %i.ao, 5.000000e-01
  %i.aq = load double, ptr @cpu_operator_cost, align 8
  %i.ar = call double @llvm.fmuladd.f64(double %i.ap, double %i.aq, double %i.am)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.as = fadd double %.sroa.8.0.copyload, %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %clamp_row_est.exit
  %.sroa.8.0 = phi double [ %i.as, %bb.h ], [ %i.al, %clamp_row_est.exit ], [ %i.ar, %bb.g ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %2, align 8
  %i.ax = call zeroext i1 @ExecMaterializesOutput(i32 noundef %i.aw) #14
  %.pre = load double, ptr %i.z, align 8          ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = fadd double %.sroa.0.0.copyload, %.pre
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.az = phi double [ %.pre, %bb.j ], [ %i.aa, %bb.i ]
  %i.ba = fadd double %.sroa.8.0, %i.az
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.b
  %.sroa.8.1 = phi double [ %.sroa.8.0.copyload, %bb.b ], [ %.sroa.8.0, %bb.k ], [ %i.ba, %bb.l ]
  %.sroa.0.0 = phi double [ %i.y, %bb.b ], [ %i.ay, %bb.k ], [ %.sroa.0.0.copyload, %bb.l ]
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88
  store double %.sroa.0.0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96
  store double %.sroa.8.1, ptr %i.bf, align 8
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
  %.tr123 = phi ptr [ %i.ek, %tailrecurse ], [ %0, %bb.a ] ; 24 uses
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
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
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
  %6 = load double, ptr %i.k, align 8
  %7 = load double, ptr %i.j, align 8
  %8 = fadd double %6, %7
  store double %8, ptr %i.j, align 8
  store double 0.000000e+00, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.pre = load double, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.t = phi double [ %.pre, %bb.g ], [ %i.g, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load double, ptr %i.u, align 8
  %i.w = fadd double %i.t, %i.v
  store double %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.tr123, i64 120
  %i.y = load double, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = fadd double %i.y, %i.aa
  store double %i.ab, ptr %i.z, align 8
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr123, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @add_function_cost(ptr noundef %i.ac, i32 noundef %i.ae, ptr noundef nonnull %.tr123, ptr noundef nonnull %i.af) #14
  br label %.critedge

bb.j:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  tail call void @set_opfuncid(ptr noundef nonnull %.tr123) #14
  %i.ag = load ptr, ptr %1, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @add_function_cost(ptr noundef %i.ag, i32 noundef %i.ai, ptr noundef nonnull %.tr123, ptr noundef nonnull %i.aj) #14
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr123, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %.val107 = load ptr, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.val107, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ap = load ptr, ptr %1, align 8
  %i.aq = tail call double @estimate_array_length(ptr noundef %i.ap, ptr noundef %i.ao) #14
  tail call void @set_sa_opfuncid(ptr noundef nonnull %.tr123) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.au = load i32, ptr %i.at, align 8
  call void @add_function_cost(ptr noundef %i.as, i32 noundef %i.au, ptr noundef null, ptr noundef nonnull %4) #14
  %i.av = getelementptr inbounds nuw i8, ptr %.tr123, i64 12
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %.not105 = icmp eq i32 %i.aw, 0
  br i1 %.not105, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ay = load ptr, ptr %1, align 8
  call void @add_function_cost(ptr noundef %i.ay, i32 noundef %i.aw, ptr noundef null, ptr noundef nonnull %5) #14
  %i.az = load double, ptr %4, align 8
  %i.ba = load double, ptr %5, align 8
  %i.bb = fadd double %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8
  %i.be = fadd double %i.bd, %i.bb
  %i.bf = load double, ptr %i.ax, align 8         ; 2 uses
  %i.bg = call double @llvm.fmuladd.f64(double %i.aq, double %i.bf, double %i.be)
  store double %i.bg, ptr %i.bc, align 8
  %i.bh = load double, ptr %i.ar, align 8
  %i.bi = fadd double %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fadd double %i.bk, %i.bi
  store double %i.bl, ptr %i.bj, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bm = load double, ptr %4, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = fadd double %i.bm, %i.bo
  store double %i.bp, ptr %i.bn, align 8
  %i.bq = load double, ptr %i.ar, align 8
  %i.br = load ptr, ptr %1, align 8
  %i.bs = call double @estimate_array_length(ptr noundef %i.br, ptr noundef %i.ao) #14
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = call double @llvm.fmuladd.f64(double %i.bt, double 5.000000e-01, double %i.bv)
  store double %i.bw, ptr %i.bu, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.critedge

bb.o:                                             ; preds = %.lr.ph
  %i.bx = load double, ptr @cpu_operator_cost, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load double, ptr %i.by, align 8
  %i.ca = fadd double %i.bx, %i.bz
  store double %i.ca, ptr %i.by, align 8
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr123, i64 16
  %i.cc = load i32, ptr %i.cb, align 8
  call void @getTypeInputInfo(i32 noundef %i.cc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %i.cd = load ptr, ptr %1, align 8
  %i.ce = load i32, ptr %i.a, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @add_function_cost(ptr noundef %i.cd, i32 noundef %i.ce, ptr noundef null, ptr noundef nonnull %i.cf) #14
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call i32 @exprType(ptr noundef %i.ch) #14
  call void @getTypeOutputInfo(i32 noundef %i.ci, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #14
  %i.cj = load ptr, ptr %1, align 8
  %i.ck = load i32, ptr %i.a, align 4
  call void @add_function_cost(ptr noundef %i.cj, i32 noundef %i.ck, ptr noundef null, ptr noundef nonnull %i.cf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge

bb.q:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr123, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.cn, ptr %2, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  %i.cq = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.cm, ptr noundef nonnull %2), !inline_history !7 ; 0 uses
  %.sroa.0.0.copyload = load double, ptr %i.co, align 8
  %.sroa.4.0.copyload = load double, ptr %i.cp, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8
  %i.ct = fadd double %.sroa.0.0.copyload, %i.cs
  store double %i.ct, ptr %i.cr, align 8
  %i.cu = fcmp ogt double %.sroa.4.0.copyload, 0.000000e+00
  br i1 %i.cu, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %1, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call double @estimate_array_length(ptr noundef %i.cv, ptr noundef %i.cx) #14
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8
  %i.db = call double @llvm.fmuladd.f64(double %.sroa.4.0.copyload, double %i.cy, double %i.da)
  store double %i.db, ptr %i.cz, align 8
  br label %.critedge

bb.s:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr123, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %.critedge, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load i32, ptr %i.de, align 4
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph130, label %.critedge

.lr.ph130:                                        ; preds = %.lr.ph127, %.lr.ph130
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph130 ], [ 0, %.lr.ph127 ] ; 2 uses
  %i.dj = load ptr, ptr %i.df, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = load ptr, ptr %1, align 8
  %i.dn = tail call i32 @get_opcode(i32 noundef %i.dl) #14
  tail call void @add_function_cost(ptr noundef %i.dm, i32 noundef %i.dn, ptr noundef null, ptr noundef nonnull %i.dg) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = load i32, ptr %i.de, align 4
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next, %i.dp
  br i1 %i.dq, label %.lr.ph130, label %.critedge

bb.t:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.dr = load double, ptr @cpu_operator_cost, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8
end_hunk_0
