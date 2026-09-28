Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/costsize?download=true
inline.NumInlined: 163
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@initial_cost_nestloop:bb.a
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
  %8 = load double, ptr @cpu_tuple_cost, align 8  ; 3 uses
  %i.fp = fdiv double %i.fo, 1.000000e+01
  %i.fq = fmul double %i.fp, %i.fg
  %i.fr = call double @llvm.fmuladd.f64(double %i.ca, double %i.fn, double %i.fo)
  %i.fs = call double @llvm.fmuladd.f64(double %8, double %i.fg, double %i.fr)
  %i.ft = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fq, i64 1
  %i.fv = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = insertelement <2 x double> poison, double %8, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.fs, i64 1
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.fw, <2 x double> %i.fy)
  %i.ga = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fz)
  %i.gb = fmul double %i.by, %i.fn
  %i.gc = fadd double %8, %i.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %cost_rescan.exit

bb.r:                                             ; preds = %bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ge = load double, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gg = load double, ptr %i.gf, align 8
  br label %cost_rescan.exit

cost_rescan.exit:                                 ; preds = %bb.h, %bb.i, %bb.f, %bb.g, %bb.b, %bb.d, %bb.e, %cost_memoize_rescan.exit.i, %bb.r
  %.048 = phi double [ %i.ge, %bb.r ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.d ], [ %i.y, %bb.e ], [ %i.gc, %cost_memoize_rescan.exit.i ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %.047 = phi double [ %i.gg, %bb.r ], [ %i.o, %bb.b ], [ %i.w, %bb.d ], [ %i.aa, %bb.e ], [ %i.ga, %cost_memoize_rescan.exit.i ], [ %i.ae, %bb.f ], [ %i.ax, %bb.g ], [ %i.bu, %bb.i ], [ %i.bb, %bb.h ]
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gi = load double, ptr %i.gh, align 8         ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.gk = load double, ptr %i.gj, align 8         ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gm = load double, ptr %i.gl, align 8
  %i.gn = fsub double %i.gm, %i.gi
  %i.go = fadd double %i.gn, 0.000000e+00         ; 2 uses
  %i.gp = fcmp ogt double %i.b, 1.000000e+00      ; 2 uses
  %i.gq = fadd double %i.b, -1.000000e+00         ; 2 uses
  %i.gr = call double @llvm.fmuladd.f64(double %i.gq, double %.048, double %i.go)
  %.0 = select i1 %i.gp, double %i.gr, double %i.go ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gt = load double, ptr %i.gs, align 8
  %i.gu = fsub double %i.gt, %i.gk                ; 2 uses
  %i.gv = fsub double %.047, %.048                ; 2 uses
  %i.gw = and i32 %2, -2
  %or.cond = icmp eq i32 %i.gw, 4
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %cost_rescan.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gy = load i8, ptr %i.gx, align 8, !range !4, !noundef !5
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %cost_rescan.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.gu, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.gv, ptr %i.hb, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.hc = fadd double %i.gu, %.0                  ; 2 uses
  br i1 %i.gp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hd = call double @llvm.fmuladd.f64(double %i.gq, double %i.gv, double %i.hc)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.1 = phi double [ %.0, %bb.t ], [ %i.hd, %bb.v ], [ %i.hc, %bb.u ] ; 2 uses
  %i.he = fadd double %i.gi, %i.gk
  %i.hf = fadd double %i.he, 0.000000e+00         ; 2 uses
  %i.hg = and i64 %i.d, %3
  %i.hh = icmp ne i64 %i.hg, %3
  %i.hi = zext i1 %i.hh to i32
  %i.hj = add i32 %i.h, %i.f
  %i.hk = add i32 %i.hj, %i.hi
  store i32 %i.hk, ptr %1, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.hf, ptr %i.hl, align 8
  %i.hm = fadd double %i.hf, %.1
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.hm, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %.1, ptr %i.ho, align 8
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
end_hunk_0
