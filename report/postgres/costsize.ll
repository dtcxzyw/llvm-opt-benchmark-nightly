Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/costsize?download=true
inline.NumInlined: 163
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cost_windowagg:bb.a

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
  %i.u = fmul double %3, %i.t                     ; 4 uses
  %i.v = fcmp ogt double %i.u, 1.000000e+100
  %i.w = fcmp uno double %i.u, 0.000000e+00
  %or.cond.i = or i1 %i.v, %i.w
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.b

bb.b:                                             ; preds = %cost_qual_eval.exit
  %i.x = fcmp ugt double %i.u, 1.000000e+00
  br i1 %i.x, label %bb.c, label %clamp_row_est.exit

bb.c:                                             ; preds = %bb.b
  %i.y = call double @llvm.rint.f64(double %i.u)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.c, %bb.b, %cost_qual_eval.exit, %bb.a
  %.023 = phi double [ %3, %bb.a ], [ %i.y, %bb.c ], [ 1.000000e+100, %cost_qual_eval.exit ], [ 1.000000e+00, %bb.b ]
  %.022 = phi double [ %6, %bb.a ], [ %i.q, %bb.c ], [ %i.q, %cost_qual_eval.exit ], [ %i.q, %bb.b ]
  %.0 = phi double [ %i.d, %bb.a ], [ %i.s, %bb.c ], [ %i.s, %cost_qual_eval.exit ], [ %i.s, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.023, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %5, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.022, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.0, ptr %i.ac, align 8
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
  %i.dn = load ptr, ptr %i.dm, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dp = load i16, ptr %i.do, align 8            ; 3 uses
  %i.dq = sext i16 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 124
  %i.ds = load i16, ptr %i.dr, align 4            ; 2 uses
  %i.dt = sext i16 %i.ds to i64
  %.not33.i.i.i = icmp slt i16 %i.dp, %i.ds
  br i1 %.not33.i.i.i, label %.thread.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 126
  %i.dv = load i16, ptr %i.du, align 2
  %.not34.i.i.i = icmp sgt i16 %i.dp, %i.dv
  br i1 %.not34.i.i.i, label %.thread.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = sub nsw i64 %i.dq, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dw
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 1
  br i1 %i.eb, label %.thread.i.i.i, label %get_expr_width.exit.i.i

.thread.i.i.i:                                    ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = tail call i32 @get_typavgwidth(i32 noundef %i.ed, i32 noundef %i.ef) #14
  br label %get_expr_width.exit.i.i

bb.q:                                             ; preds = %.lr.ph76.i.i
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
  %8 = fdiv double %i.fo, 1.000000e+01
  %9 = fmul double %8, %i.fg
  %i.fp = load double, ptr @cpu_tuple_cost, align 8 ; 3 uses
  %10 = call double @llvm.fmuladd.f64(double %i.ca, double %i.fn, double %i.fo)
  %i.fq = call double @llvm.fmuladd.f64(double %i.fp, double %i.fg, double %10)
  %11 = insertelement <2 x double> poison, double %i.fo, i64 0
  %12 = insertelement <2 x double> %11, double %9, i64 1
  %13 = insertelement <2 x double> poison, double %i.cc, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = insertelement <2 x double> poison, double %i.fp, i64 0
  %16 = insertelement <2 x double> %15, double %i.fq, i64 1
  %17 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %14, <2 x double> %16)
  %18 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %17)
  %i.fr = fmul double %i.by, %i.fn
  %i.fs = fadd double %i.fp, %i.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %cost_rescan.exit

bb.r:                                             ; preds = %bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fu = load double, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fw = load double, ptr %i.fv, align 8
  br label %cost_rescan.exit

cost_rescan.exit:                                 ; preds = %bb.h, %bb.i, %bb.f, %bb.g, %bb.b, %bb.d, %bb.e, %cost_memoize_rescan.exit.i, %bb.r
  %.048 = phi double [ %i.fu, %bb.r ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.d ], [ %i.y, %bb.e ], [ %i.fs, %cost_memoize_rescan.exit.i ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %.047 = phi double [ %i.fw, %bb.r ], [ %i.o, %bb.b ], [ %i.w, %bb.d ], [ %i.aa, %bb.e ], [ %18, %cost_memoize_rescan.exit.i ], [ %i.ae, %bb.f ], [ %i.ax, %bb.g ], [ %i.bu, %bb.i ], [ %i.bb, %bb.h ]
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fy = load double, ptr %i.fx, align 8         ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ga = load double, ptr %i.fz, align 8         ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gc = load double, ptr %i.gb, align 8
  %i.gd = fsub double %i.gc, %i.fy
  %i.ge = fadd double %i.gd, 0.000000e+00         ; 2 uses
  %i.gf = fcmp ogt double %i.b, 1.000000e+00      ; 2 uses
  %i.gg = fadd double %i.b, -1.000000e+00         ; 2 uses
  %i.gh = call double @llvm.fmuladd.f64(double %i.gg, double %.048, double %i.ge)
  %.0 = select i1 %i.gf, double %i.gh, double %i.ge ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gj = load double, ptr %i.gi, align 8
  %i.gk = fsub double %i.gj, %i.ga                ; 2 uses
  %i.gl = fsub double %.047, %.048                ; 2 uses
  %i.gm = and i32 %2, -2
  %or.cond = icmp eq i32 %i.gm, 4
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %cost_rescan.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.go = load i8, ptr %i.gn, align 8, !range !4, !noundef !5
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %cost_rescan.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.gk, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.gl, ptr %i.gr, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.gs = fadd double %i.gk, %.0                  ; 2 uses
  br i1 %i.gf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gt = call double @llvm.fmuladd.f64(double %i.gg, double %i.gl, double %i.gs)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.1 = phi double [ %.0, %bb.t ], [ %i.gt, %bb.v ], [ %i.gs, %bb.u ] ; 2 uses
  %i.gu = fadd double %i.fy, %i.ga
  %i.gv = fadd double %i.gu, 0.000000e+00         ; 2 uses
  %i.gw = and i64 %i.d, %3
  %i.gx = icmp ne i64 %i.gw, %3
  %i.gy = zext i1 %i.gx to i32
  %i.gz = add i32 %i.h, %i.f
  %i.ha = add i32 %i.gz, %i.gy
  store i32 %i.ha, ptr %1, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.gv, ptr %i.hb, align 8
  %i.hc = fadd double %i.gv, %.1
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.hc, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %.1, ptr %i.he, align 8
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
  %i.af = fdiv double %i.u, %.1.i                 ; 4 uses
  %i.ag = fcmp ogt double %i.af, 1.000000e+100
  %i.ah = fcmp uno double %i.af, 0.000000e+00
  %or.cond.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.f

bb.f:                                             ; preds = %get_parallel_divisor.exit
  %i.ai = fcmp ugt double %i.af, 1.000000e+00
  br i1 %i.ai, label %bb.g, label %clamp_row_est.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call double @llvm.rint.f64(double %i.af)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.f, %bb.g
  %.0.i91 = phi double [ %i.aj, %bb.g ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.f ]
  store double %.0.i91, ptr %i.v, align 8
  br label %bb.h

bb.h:                                             ; preds = %clamp_row_est.exit, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, -2
  %switch = icmp eq i32 %i.am, 4
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !range !4, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load double, ptr %i.aq, align 8         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.at = load double, ptr %i.as, align 8         ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fmul double %spec.store.select, %i.av
  %i.ax = tail call double @llvm.rint.f64(double %i.aw) ; 6 uses
  %i.ay = fsub double %spec.store.select, %i.ax   ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ba = load double, ptr %i.az, align 8
  %i.bb = fadd double %i.ba, 1.000000e+00
  %i.bc = fdiv double 2.000000e+00, %i.bb         ; 4 uses
  %i.bd = fmul double %spec.store.select1, %i.ax
  %i.be = fmul double %i.bd, %i.bc                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.k, label %has_indexed_join_quals.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %has_indexed_join_quals.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  switch i32 %i.bp, label %has_indexed_join_quals.exit.thread [
    i32 359, label %bb.n
    i32 360, label %bb.n
    i32 362, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp eq i32 %i.bs, 297
  br i1 %i.bt, label %bb.n, label %has_indexed_join_quals.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.l
end_hunk_0
begin_hunk_1_@get_indexpath_pages:bb.a
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
  %i.j = fmul double %i.b, %.1.i                  ; 4 uses
  %i.k = fcmp ogt double %i.j, 1.000000e+100
  %i.l = fcmp uno double %i.j, 0.000000e+00
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %clamp_row_est.exit, label %bb.c

bb.c:                                             ; preds = %get_parallel_divisor.exit
  %i.m = fcmp ugt double %i.j, 1.000000e+00
  br i1 %i.m, label %bb.d, label %clamp_row_est.exit

bb.d:                                             ; preds = %bb.c
  %i.n = tail call double @llvm.rint.f64(double %i.j)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %get_parallel_divisor.exit, %bb.c, %bb.d
  %.0.i2 = phi double [ %i.n, %bb.d ], [ 1.000000e+100, %get_parallel_divisor.exit ], [ 1.000000e+00, %bb.c ]
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
end_hunk_1
