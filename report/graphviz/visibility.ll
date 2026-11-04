Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/visibility?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@visibility:bb.a
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.1, i64 noundef %i.k) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.c
  %i.m = sext i32 %i.b to i64                     ; 12 uses
  %i.n = mul nsw i64 %i.m, %i.m                   ; 4 uses
  %mul.ov.i21.i = icmp samesign ugt i64 %i.n, 2305843009213693951
  br i1 %mul.ov.i21.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gv_calloc.exit.i
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.n, i64 noundef 8) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.f:                                             ; preds = %gv_calloc.exit.i
  %i.q = icmp ne i32 %i.b, 0
  %i.r = tail call noalias ptr @calloc(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.n, i64 noundef 8) #14 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  %or.cond3.i22.i = and i1 %i.q, %i.s
  br i1 %or.cond3.i22.i, label %bb.g, label %gv_calloc.exit23.preheader.i

gv_calloc.exit23.preheader.i:                     ; preds = %bb.f
  %i.t = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.t, label %gv_calloc.exit23.preheader27.i, label %allocArray.exit

gv_calloc.exit23.preheader27.i:                   ; preds = %gv_calloc.exit23.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.u = icmp ult i32 %i.b, 8
  br i1 %i.u, label %gv_calloc.exit23.i.epil.preheader, label %gv_calloc.exit23.preheader27.i.new

gv_calloc.exit23.preheader27.i.new:               ; preds = %gv_calloc.exit23.preheader27.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %gv_calloc.exit23.i

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.w = shl nuw i64 %i.n, 3
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.1, i64 noundef %i.w) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit23.i:                               ; preds = %gv_calloc.exit23.i, %gv_calloc.exit23.preheader27.i.new
  %indvars.iv.i = phi i64 [ 0, %gv_calloc.exit23.preheader27.i.new ], [ %indvars.iv.next.i.7, %gv_calloc.exit23.i ] ; 9 uses
  %.025.i = phi ptr [ %i.r, %gv_calloc.exit23.preheader27.i.new ], [ %i.au, %gv_calloc.exit23.i ] ; 2 uses
  %niter = phi i64 [ 0, %gv_calloc.exit23.preheader27.i.new ], [ %niter.next.7, %gv_calloc.exit23.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  store ptr %.025.i, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.025.i, i64 %i.m ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.m ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.m ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.m ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.m ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.m ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.m ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.m ; 2 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %allocArray.exit.loopexit.unr-lcssa, label %gv_calloc.exit23.i, !llvm.loop !26

allocArray.exit.loopexit.unr-lcssa:               ; preds = %gv_calloc.exit23.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %allocArray.exit, label %gv_calloc.exit23.i.epil.preheader

gv_calloc.exit23.i.epil.preheader:                ; preds = %allocArray.exit.loopexit.unr-lcssa, %gv_calloc.exit23.preheader27.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %gv_calloc.exit23.preheader27.i ], [ %indvars.iv.next.i.7, %allocArray.exit.loopexit.unr-lcssa ]
  %.025.i.epil.init = phi ptr [ %i.r, %gv_calloc.exit23.preheader27.i ], [ %i.au, %allocArray.exit.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %gv_calloc.exit23.i.epil

gv_calloc.exit23.i.epil:                          ; preds = %gv_calloc.exit23.i.epil, %gv_calloc.exit23.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %gv_calloc.exit23.i.epil.preheader ], [ %indvars.iv.next.i.epil, %gv_calloc.exit23.i.epil ] ; 2 uses
  %.025.i.epil = phi ptr [ %.025.i.epil.init, %gv_calloc.exit23.i.epil.preheader ], [ %i.aw, %gv_calloc.exit23.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %gv_calloc.exit23.i.epil.preheader ], [ %epil.iter.next, %gv_calloc.exit23.i.epil ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.epil
  store ptr %.025.i.epil, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.025.i.epil, i64 %i.m
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %allocArray.exit, label %gv_calloc.exit23.i.epil, !llvm.loop !27

allocArray.exit:                                  ; preds = %allocArray.exit.loopexit.unr-lcssa, %gv_calloc.exit23.i.epil, %gv_calloc.exit23.preheader.i
  %i.ax = shl nsw i64 %i.m, 3
  %scevgep.i = getelementptr i8, ptr %i.h, i64 %i.ax
  %i.ay = add i32 %i.b, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.ay)
  %i.az = xor i32 %i.b, -1
  %i.ba = add i32 %smax.i, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 range(i64 0, 17) %i.bd, i1 false), !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.be, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  br i1 %i.t, label %.lr.ph68.i, label %compVis.exit

.lr.ph68.i:                                       ; preds = %allocArray.exit
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph68.i
  %indvars.iv71.i = phi i64 [ 0, %.lr.ph68.i ], [ %indvars.iv.next72.i, %._crit_edge.i ] ; 8 uses
  %indvars73.i = trunc i64 %indvars.iv71.i to i32 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv71.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv71.i ; 3 uses
  %i.bo = sext i32 %i.bm to i64                   ; 3 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bo ; 3 uses
  %i.bq = load double, ptr %i.bn, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = load double, ptr %i.bp, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fsub double %i.bq, %i.bt                ; 2 uses
  %i.bx = fsub double %i.bs, %i.bv                ; 2 uses
  %i.by = fmul double %i.bx, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.by)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bz) ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv71.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bo
  store double %sqrt.i.i, ptr %i.cc, align 8, !tbaa !24
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bo
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv71.i
  store double %sqrt.i.i, ptr %i.cf, align 8, !tbaa !24
  %i.cg = add i32 %indvars73.i, -1                ; 2 uses
  %i.ch = icmp eq i32 %i.bm, %i.cg
  %i.ci = add i32 %indvars73.i, -2
  %.058.i = select i1 %i.ch, i32 %i.ci, i32 %i.cg ; 2 uses
  %i.cj = icmp sgt i32 %.058.i, -1
  br i1 %i.cj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv71.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.cm
  %i.co = zext nneg i32 %.058.i to i64
  br label %bb.i

bb.i:                                             ; preds = %clear.exit.i, %.lr.ph.i
  %indvars.iv.i4 = phi i64 [ %i.co, %.lr.ph.i ], [ %indvars.iv.next.i5, %clear.exit.i ] ; 7 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load <2 x double>, ptr %i.bn, align 8   ; 7 uses
  %i.cs = load double, ptr %i.br, align 8         ; 7 uses
  %i.ct = load <2 x double>, ptr %i.cp, align 8   ; 8 uses
  %i.cu = load double, ptr %i.cq, align 8         ; 8 uses
  %i.cv = extractelement <2 x double> %i.cr, i64 0 ; 5 uses
  %i.cw = load <2 x double>, ptr %i.bp, align 8   ; 3 uses
  %i.cx = load double, ptr %i.bu, align 8
  %i.cy = load <2 x double>, ptr %i.cn, align 8   ; 2 uses
  %i.cz = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x double> %i.cw, double %i.cs, i64 0 ; 3 uses
  %i.dc = fsub <2 x double> %i.da, %i.db
  %i.dd = shufflevector <2 x double> %i.cy, <2 x double> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.de = shufflevector <2 x double> %i.cr, <2 x double> %i.cw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.df = fsub <2 x double> %i.dd, %i.de          ; 2 uses
  %i.dg = shufflevector <2 x double> %i.cy, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %i.dh = fsub <2 x double> %i.dg, %i.db          ; 2 uses
  %i.di = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fsub <2 x double> %i.di, %i.de
  %i.dk = fneg <2 x double> %i.dj
  %i.dl = fmul <2 x double> %i.dh, %i.dk
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.df, <2 x double> %i.dl)
  %i.dn = fcmp uge <2 x double> %i.dm, splat (double -1.000000e-04) ; 2 uses
  %i.do = fsub double %i.cx, %i.cs
  %foldExtExtBinop = fsub <2 x double> %i.cw, %i.cr
  %i.dp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dq = fneg double %i.dp
  %i.dr = extractelement <2 x double> %i.dh, i64 0
  %i.ds = fmul double %i.dr, %i.dq
  %i.dt = extractelement <2 x double> %i.df, i64 0
  %i.du = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dt, double %i.ds)
  %i.dv = fcmp ogt double %i.du, 1.000000e-04
  %1 = extractelement <2 x i1> %i.dn, i64 0       ; 2 uses
  %2 = extractelement <2 x i1> %i.dn, i64 1       ; 2 uses
  %3 = select i1 %2, i1 %1, i1 false
  %4 = select i1 %2, i1 true, i1 %1
  %.0.i.i.i = select i1 %i.dv, i1 %3, i1 %4
  br i1 %.0.i.i.i, label %bb.j, label %clear.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dw = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !22
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !22
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eg = extractelement <2 x double> %i.ct, i64 0 ; 5 uses
  %i.eh = load <2 x double>, ptr %i.ea, align 8   ; 3 uses
  %i.ei = load double, ptr %i.ef, align 8
  %i.ej = load <2 x double>, ptr %i.ee, align 8   ; 2 uses
  %i.ek = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> %i.eh, double %i.cu, i64 0 ; 3 uses
  %i.en = fsub <2 x double> %i.el, %i.em          ; 4 uses
  %i.eo = shufflevector <2 x double> %i.ej, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.ep = shufflevector <2 x double> %i.ct, <2 x double> %i.eh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eq = fsub <2 x double> %i.eo, %i.ep          ; 2 uses
  %i.er = shufflevector <2 x double> %i.ej, <2 x double> %i.em, <2 x i32> <i32 1, i32 2>
  %i.es = fsub <2 x double> %i.er, %i.em          ; 2 uses
  %i.et = fsub <2 x double> %i.dw, %i.ep          ; 2 uses
  %i.eu = fneg <2 x double> %i.et                 ; 3 uses
  %i.ev = fmul <2 x double> %i.es, %i.eu
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.eq, <2 x double> %i.ev)
  %i.ex = fcmp uge <2 x double> %i.ew, splat (double -1.000000e-04) ; 2 uses
  %i.ey = fsub double %i.ei, %i.cu
  %foldExtExtBinop12 = fsub <2 x double> %i.eh, %i.ct
  %i.ez = extractelement <2 x double> %foldExtExtBinop12, i64 0
  %i.fa = fneg double %i.ez
  %i.fb = extractelement <2 x double> %i.es, i64 0
  %i.fc = fmul double %i.fb, %i.fa
  %i.fd = extractelement <2 x double> %i.eq, i64 0
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.fd, double %i.fc)
  %i.ff = fcmp ogt double %i.fe, 1.000000e-04
  %5 = extractelement <2 x i1> %i.ex, i64 0       ; 2 uses
  %6 = extractelement <2 x i1> %i.ex, i64 1       ; 2 uses
  %7 = select i1 %6, i1 %5, i1 false
  %8 = select i1 %6, i1 true, i1 %5
  %.0.i.i61.i = select i1 %i.ff, i1 %7, i1 %8
  br i1 %.0.i.i61.i, label %.lr.ph.preheader.i.i, label %clear.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.fg = fcmp une double %i.cv, %i.eg            ; 2 uses
  %i.fh = shufflevector <2 x double> %i.ct, <2 x double> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x double> %i.ct, <2 x double> %i.cr, <2 x i32> <i32 1, i32 3>
  %i.fj = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.fk = insertelement <2 x double> %i.ct, double %i.cu, i64 1 ; 2 uses
  br label %.lr.ph.i.i

bb.k:                                             ; preds = %intersect.exit.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !22
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.fo
  %i.fq = load <2 x double>, ptr %i.fl, align 8   ; 4 uses
  %i.fr = load <2 x double>, ptr %i.fp, align 8   ; 6 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 1 ; 4 uses
  %i.ft = extractelement <2 x double> %i.fr, i64 0 ; 4 uses
  %i.fu = fsub <2 x double> %i.fq, %i.fk          ; 2 uses
  %shift = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14 = fmul <2 x double> %shift, %i.eu
  %i.fv = extractelement <2 x double> %foldExtExtBinop14, i64 0
  %i.fw = extractelement <2 x double> %i.fu, i64 0
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fw, double %i.fv) ; 2 uses
  %i.fy = fcmp ogt double %i.fx, 1.000000e-04
  %i.fz = fcmp olt double %i.fx, -1.000000e-04
  %i.ga = sext i1 %i.fz to i32
  %i.gb = select i1 %i.fy, i32 1, i32 %i.ga       ; 2 uses
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  br i1 %i.fg, label %.split.i.i, label %inBetween.exit.i.i

.split.i.i:                                       ; preds = %bb.l
  %i.gd = extractelement <2 x double> %i.fq, i64 0 ; 4 uses
  %i.ge = fcmp olt double %i.cv, %i.gd
  %i.gf = fcmp olt double %i.gd, %i.eg
  %or.cond.i.i.i = and i1 %i.ge, %i.gf
  %i.gg = fcmp olt double %i.eg, %i.gd
  %i.gh = fcmp olt double %i.gd, %i.cv
  %i.gi = and i1 %i.gg, %i.gh
  %i.gj = or i1 %or.cond.i.i.i, %i.gi
  br i1 %i.gj, label %clear.exit.i, label %bb.m

inBetween.exit.i.i:                               ; preds = %bb.l
  %i.gk = extractelement <2 x double> %i.fq, i64 1 ; 4 uses
  %i.gl = fcmp olt double %i.cs, %i.gk
  %i.gm = fcmp olt double %i.gk, %i.cu
  %or.cond20.i.i.i = and i1 %i.gl, %i.gm
  %i.gn = fcmp olt double %i.cu, %i.gk
  %i.go = fcmp olt double %i.gk, %i.cs
  %i.gp = and i1 %i.gn, %i.go
  %i.gq = or i1 %or.cond20.i.i.i, %i.gp
  br i1 %i.gq, label %clear.exit.i, label %bb.m

bb.m:                                             ; preds = %inBetween.exit.i.i, %.split.i.i, %.lr.ph.i.i
  %i.gr = fsub <2 x double> %i.fr, %i.fk          ; 2 uses
  %shift16 = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fmul <2 x double> %shift16, %i.eu
  %i.gs = extractelement <2 x double> %foldExtExtBinop17, i64 0
  %i.gt = extractelement <2 x double> %i.gr, i64 0
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.gt, double %i.gs) ; 2 uses
  %i.gv = fcmp ogt double %i.gu, 1.000000e-04
  %i.gw = fcmp olt double %i.gu, -1.000000e-04
  %i.gx = sext i1 %i.gw to i32
  %i.gy = select i1 %i.gv, i32 1, i32 %i.gx       ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.n, label %intersect.exit.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.fg, label %.split43.i.i, label %inBetween.exit42.i.i

.split43.i.i:                                     ; preds = %bb.n
  %i.ha = fcmp olt double %i.cv, %i.ft
  %i.hb = fcmp olt double %i.ft, %i.eg
  %or.cond.i41.i.i = and i1 %i.ha, %i.hb
  %i.hc = fcmp olt double %i.eg, %i.ft
  %i.hd = fcmp olt double %i.ft, %i.cv
  %i.he = and i1 %i.hc, %i.hd
  %i.hf = or i1 %or.cond.i41.i.i, %i.he
  br i1 %i.hf, label %clear.exit.i, label %intersect.exit.i

inBetween.exit42.i.i:                             ; preds = %bb.n
  %i.hg = fcmp olt double %i.cs, %i.fs
  %i.hh = fcmp olt double %i.fs, %i.cu
  %or.cond20.i39.i.i = and i1 %i.hg, %i.hh
  %i.hi = fcmp olt double %i.cu, %i.fs
  %i.hj = fcmp olt double %i.fs, %i.cs
  %i.hk = and i1 %i.hi, %i.hj
  %i.hl = or i1 %or.cond20.i39.i.i, %i.hk
  br i1 %i.hl, label %clear.exit.i, label %intersect.exit.i

intersect.exit.i:                                 ; preds = %inBetween.exit42.i.i, %.split43.i.i, %bb.m
  %i.hm = fsub <2 x double> %i.fq, %i.fr          ; 2 uses
  %i.hn = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fsub <2 x double> %i.fh, %i.hn
  %i.hp = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hq = fsub <2 x double> %i.fi, %i.hp
  %i.hr = extractelement <2 x double> %i.hm, i64 0
  %i.hs = fneg double %i.hr
  %i.ht = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x double> %i.hq, %i.hu
  %i.hw = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.ho, <2 x double> %i.hv) ; 3 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 1
  %i.hz = fcmp ogt double %i.hy, 1.000000e-04
  %i.ia = fcmp olt <2 x double> %i.hx, splat (double -1.000000e-04) ; 2 uses
  %i.ib = extractelement <2 x i1> %i.ia, i64 1
  %i.ic = sext i1 %i.ib to i32
  %i.id = select i1 %i.hz, i32 1, i32 %i.ic
  %i.ie = extractelement <2 x double> %i.hx, i64 0
  %i.if = fcmp ogt double %i.ie, 1.000000e-04
  %i.ig = extractelement <2 x i1> %i.ia, i64 0
  %i.ih = sext i1 %i.ig to i32
  %i.ii = select i1 %i.if, i32 1, i32 %i.ih
  %i.ij = mul nsw i32 %i.gy, %i.gb
  %i.ik = icmp slt i32 %i.ij, 0
  %i.il = mul nsw i32 %i.id, %i.ii
  %i.im = icmp slt i32 %i.il, 0
  %i.in = select i1 %i.ik, i1 %i.im, i1 false
  br i1 %i.in, label %clear.exit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  %foldExtExtBinop19 = fmul <2 x double> %i.en, %i.en
  %i.io = extractelement <2 x double> %foldExtExtBinop19, i64 0
  %i.ip = extractelement <2 x double> %i.et, i64 0 ; 2 uses
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.ip, double %i.io)
  %sqrt.i62.i = tail call double @llvm.sqrt.f64(double %i.iq) ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i4
  store double %sqrt.i62.i, ptr %i.ir, align 8, !tbaa !24
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i4
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !31
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv71.i
  store double %sqrt.i62.i, ptr %i.iu, align 8, !tbaa !24
  br label %clear.exit.i

clear.exit.i:                                     ; preds = %intersect.exit.i, %inBetween.exit42.i.i, %.split43.i.i, %inBetween.exit.i.i, %.split.i.i, %.loopexit.i, %bb.j, %bb.i
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i4, -1
  %i.iv = icmp sgt i64 %indvars.iv.i4, 0
  br i1 %i.iv, label %bb.i, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %clear.exit.i, %bb.h
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i3, label %compVis.exit, label %bb.h, !llvm.loop !29

compVis.exit:                                     ; preds = %._crit_edge.i, %allocArray.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @ptVis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double %2, double %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = add nsw i32 %i.b, 2                      ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %mul.ov.i = icmp slt i32 %i.b, -2
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.j, i64 noundef 8) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ne i32 %i.i, 0
  %i.n = tail call noalias ptr @calloc(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.j, i64 noundef 8) #14 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  %or.cond3.i = and i1 %i.m, %i.o
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.q = shl nuw nsw i64 %i.j, 3
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.1, i64 noundef %i.q) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit:                                   ; preds = %bb.c
  %i.s = icmp eq i32 %1, -2222
  br i1 %i.s, label %bb.e, label %polyhit.exit

bb.e:                                             ; preds = %gv_calloc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !38
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.i, %i.v
  br i1 %i.w, label %bb.g, label %polyhit.exit.thread154

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ab
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22
  %i.af = sub nsw i32 %i.ae, %i.aa
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call zeroext i1 @in_poly(ptr %i.ac, i64 %i.ag, double %2, double %3) #15
  br i1 %i.ah, label %polyhit.exit.thread, label %bb.f, !llvm.loop !34

polyhit.exit.thread:                              ; preds = %bb.g
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.h

polyhit.exit:                                     ; preds = %gv_calloc.exit
  %i.aj = icmp sgt i32 %1, -1
  br i1 %i.aj, label %bb.h, label %polyhit.exit.thread154

bb.h:                                             ; preds = %polyhit.exit.thread, %polyhit.exit
  %.095153 = phi i32 [ %i.ai, %polyhit.exit.thread ], [ %1, %polyhit.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = zext nneg i32 %.095153 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  br label %polyhit.exit.thread154

polyhit.exit.thread154:                           ; preds = %bb.f, %polyhit.exit, %bb.h
  %.093 = phi i32 [ %i.ao, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %.0 = phi i32 [ %i.aq, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %i.ar = icmp sgt i32 %.093, 0                   ; 2 uses
  br i1 %i.ar, label %.lr.ph, label %.preheader183

.lr.ph:                                           ; preds = %polyhit.exit.thread154
  %wide.trip.count.i = zext nneg i32 %.093 to i64 ; 2 uses
  %i.as = icmp slt i32 %.0, %i.b
  %i.at = sext i32 %.0 to i64
  %i.au = insertelement <2 x double> poison, double %3, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> poison, double %2, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.i

.preheader183:                                    ; preds = %clear.exit.thread166, %polyhit.exit.thread154
  %i.az = icmp slt i32 %.093, %.0
  br i1 %i.az, label %.lr.ph189.preheader, label %.preheader

.lr.ph189.preheader:                              ; preds = %.preheader183
  %i.ba = sext i32 %.093 to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.bb
  %i.bc = xor i32 %.093, -1
  %i.bd = add i32 %.0, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false), !tbaa !24
  br label %.preheader

bb.i:                                             ; preds = %.lr.ph, %clear.exit.thread166
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clear.exit.thread166 ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !24 ; 7 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0 ; 9 uses
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !24 ; 12 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !22
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load <2 x double>, ptr %i.bn, align 8   ; 3 uses
  %i.bu = load double, ptr %i.bs, align 8
  %i.bv = load <2 x double>, ptr %i.br, align 8   ; 2 uses
  %i.bw = insertelement <2 x double> %i.bt, double %.sroa.10.0.copyload, i64 0 ; 3 uses
  %i.bx = fsub <2 x double> %i.av, %i.bw          ; 4 uses
  %i.by = shufflevector <2 x double> %i.bv, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bz = shufflevector <2 x double> %i.bi, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ca = fsub <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.cc = fsub <2 x double> %i.cb, %i.bw          ; 2 uses
  %i.cd = fsub <2 x double> %i.ax, %i.bz          ; 2 uses
  %i.ce = fneg <2 x double> %i.cd                 ; 5 uses
  %i.cf = fmul <2 x double> %i.cc, %i.ce
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ca, <2 x double> %i.cf)
  %i.ch = fcmp uge <2 x double> %i.cg, splat (double -1.000000e-04) ; 2 uses
  %i.ci = fsub double %i.bu, %.sroa.10.0.copyload
  %foldExtExtBinop = fsub <2 x double> %i.bt, %i.bi
  %i.cj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ck = fneg double %i.cj
  %i.cl = extractelement <2 x double> %i.cc, i64 0
  %i.cm = fmul double %i.cl, %i.ck
  %i.cn = extractelement <2 x double> %i.ca, i64 0
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cn, double %i.cm)
  %i.cp = fcmp ogt double %i.co, 1.000000e-04
  %4 = extractelement <2 x i1> %i.ch, i64 0       ; 2 uses
  %5 = extractelement <2 x i1> %i.ch, i64 1       ; 2 uses
  %6 = select i1 %5, i1 %4, i1 false
  %7 = select i1 %5, i1 true, i1 %4
  %.0.i = select i1 %i.cp, i1 %6, i1 %7
  br i1 %.0.i, label %.lr.ph.preheader.i, label %clear.exit.thread166

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.cq = fcmp une double %2, %i.bj               ; 4 uses
  %i.cr = insertelement <2 x double> %i.bi, double %2, i64 1 ; 2 uses
  %i.cs = insertelement <2 x double> %i.ay, double %.sroa.10.0.copyload, i64 0
  %i.ct = extractelement <2 x double> %i.bx, i64 0 ; 4 uses
  %i.cu = insertelement <2 x double> %i.bi, double %.sroa.10.0.copyload, i64 1 ; 4 uses
  br label %.lr.ph.i

bb.j:                                             ; preds = %intersect.exit131
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !0

.preheader.i.loopexit:                            ; preds = %bb.j
  br i1 %i.as, label %.lr.ph27.i.preheader, label %clear.exit.thread164

.lr.ph27.i.preheader:                             ; preds = %.preheader.i.loopexit
  %i.cv = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x double> %i.cv, double %3, i64 1
  br label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i100, %bb.j ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i99
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i99
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !22
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.da
  %i.dc = load <2 x double>, ptr %i.cx, align 8   ; 4 uses
  %i.dd = load <2 x double>, ptr %i.db, align 8   ; 6 uses
  %i.de = extractelement <2 x double> %i.dd, i64 1 ; 4 uses
  %i.df = extractelement <2 x double> %i.dd, i64 0 ; 4 uses
  %i.dg = fsub <2 x double> %i.dc, %i.cu          ; 2 uses
  %shift = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fmul <2 x double> %shift, %i.ce
  %i.dh = extractelement <2 x double> %foldExtExtBinop217, i64 0
  %i.di = extractelement <2 x double> %i.dg, i64 0
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.di, double %i.dh) ; 2 uses
  %i.dk = fcmp ogt double %i.dj, 1.000000e-04
  %i.dl = fcmp olt double %i.dj, -1.000000e-04
  %i.dm = sext i1 %i.dl to i32
  %i.dn = select i1 %i.dk, i32 1, i32 %i.dm       ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %i.cq, label %.split.i129, label %inBetween.exit.i127

.split.i129:                                      ; preds = %bb.k
  %i.dp = extractelement <2 x double> %i.dc, i64 0 ; 4 uses
  %i.dq = fcmp olt double %2, %i.dp
  %i.dr = fcmp olt double %i.dp, %i.bj
  %or.cond.i.i130 = and i1 %i.dq, %i.dr
  %i.ds = fcmp olt double %i.bj, %i.dp
  %i.dt = fcmp olt double %i.dp, %2
  %i.du = and i1 %i.ds, %i.dt
  %i.dv = or i1 %or.cond.i.i130, %i.du
  br i1 %i.dv, label %clear.exit.thread166, label %bb.l

inBetween.exit.i127:                              ; preds = %bb.k
  %i.dw = extractelement <2 x double> %i.dc, i64 1 ; 4 uses
  %i.dx = fcmp olt double %3, %i.dw
  %i.dy = fcmp olt double %i.dw, %.sroa.10.0.copyload
  %or.cond20.i.i128 = and i1 %i.dx, %i.dy
  %i.dz = fcmp olt double %.sroa.10.0.copyload, %i.dw
  %i.ea = fcmp olt double %i.dw, %3
  %i.eb = and i1 %i.dz, %i.ea
  %i.ec = or i1 %or.cond20.i.i128, %i.eb
  br i1 %i.ec, label %clear.exit.thread166, label %bb.l

bb.l:                                             ; preds = %inBetween.exit.i127, %.split.i129, %.lr.ph.i
  %i.ed = fsub <2 x double> %i.dd, %i.cu          ; 2 uses
  %shift219 = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop220 = fmul <2 x double> %shift219, %i.ce
  %i.ee = extractelement <2 x double> %foldExtExtBinop220, i64 0
  %i.ef = extractelement <2 x double> %i.ed, i64 0
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ef, double %i.ee) ; 2 uses
  %i.eh = fcmp ogt double %i.eg, 1.000000e-04
  %i.ei = fcmp olt double %i.eg, -1.000000e-04
  %i.ej = sext i1 %i.ei to i32
  %i.ek = select i1 %i.eh, i32 1, i32 %i.ej       ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.m, label %intersect.exit131

bb.m:                                             ; preds = %bb.l
  br i1 %i.cq, label %.split43.i125, label %inBetween.exit42.i123

.split43.i125:                                    ; preds = %bb.m
  %i.em = fcmp olt double %2, %i.df
  %i.en = fcmp olt double %i.df, %i.bj
  %or.cond.i41.i126 = and i1 %i.em, %i.en
  %i.eo = fcmp olt double %i.bj, %i.df
  %i.ep = fcmp olt double %i.df, %2
  %i.eq = and i1 %i.eo, %i.ep
  %i.er = or i1 %or.cond.i41.i126, %i.eq
  br i1 %i.er, label %clear.exit.thread166, label %intersect.exit131

inBetween.exit42.i123:                            ; preds = %bb.m
  %i.es = fcmp olt double %3, %i.de
  %i.et = fcmp olt double %i.de, %.sroa.10.0.copyload
  %or.cond20.i39.i124 = and i1 %i.es, %i.et
  %i.eu = fcmp olt double %.sroa.10.0.copyload, %i.de
  %i.ev = fcmp olt double %i.de, %3
  %i.ew = and i1 %i.eu, %i.ev
  %i.ex = or i1 %or.cond20.i39.i124, %i.ew
  br i1 %i.ex, label %clear.exit.thread166, label %intersect.exit131

intersect.exit131:                                ; preds = %bb.l, %.split43.i125, %inBetween.exit42.i123
  %i.ey = fsub <2 x double> %i.dc, %i.dd          ; 2 uses
  %i.ez = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fsub <2 x double> %i.cr, %i.ez
  %i.fb = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = fsub <2 x double> %i.cs, %i.fb
  %i.fd = extractelement <2 x double> %i.ey, i64 0
  %i.fe = fneg double %i.fd
  %i.ff = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %i.fc, %i.fg
  %i.fi = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fa, <2 x double> %i.fh) ; 3 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1
  %i.fl = fcmp ogt double %i.fk, 1.000000e-04
  %i.fm = fcmp olt <2 x double> %i.fj, splat (double -1.000000e-04) ; 2 uses
  %i.fn = extractelement <2 x i1> %i.fm, i64 1
  %i.fo = sext i1 %i.fn to i32
  %i.fp = select i1 %i.fl, i32 1, i32 %i.fo
  %i.fq = extractelement <2 x double> %i.fj, i64 0
  %i.fr = fcmp ogt double %i.fq, 1.000000e-04
  %i.fs = extractelement <2 x i1> %i.fm, i64 0
  %i.ft = sext i1 %i.fs to i32
  %i.fu = select i1 %i.fr, i32 1, i32 %i.ft
  %i.fv = mul nsw i32 %i.ek, %i.dn
  %i.fw = icmp slt i32 %i.fv, 0
  %i.fx = mul nsw i32 %i.fp, %i.fu
  %i.fy = icmp slt i32 %i.fx, 0
  %i.fz = select i1 %i.fw, i1 %i.fy, i1 false
  br i1 %i.fz, label %clear.exit.thread166, label %bb.j

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.preheader, %intersect.exit
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %intersect.exit ], [ %i.at, %.lr.ph27.i.preheader ] ; 3 uses
  %i.ga = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !22
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.gd
  %i.gf = load <2 x double>, ptr %i.ga, align 8   ; 4 uses
  %i.gg = load <2 x double>, ptr %i.ge, align 8   ; 6 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 1 ; 4 uses
  %i.gi = extractelement <2 x double> %i.gg, i64 0 ; 4 uses
  %i.gj = fsub <2 x double> %i.gf, %i.cu          ; 2 uses
  %shift222 = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop223 = fmul <2 x double> %shift222, %i.ce
  %i.gk = extractelement <2 x double> %foldExtExtBinop223, i64 0
  %i.gl = extractelement <2 x double> %i.gj, i64 0
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.gl, double %i.gk) ; 2 uses
  %i.gn = fcmp ogt double %i.gm, 1.000000e-04
  %i.go = fcmp olt double %i.gm, -1.000000e-04
  %i.gp = sext i1 %i.go to i32
  %i.gq = select i1 %i.gn, i32 1, i32 %i.gp       ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph27.i
  br i1 %i.cq, label %.split.i, label %inBetween.exit.i

.split.i:                                         ; preds = %bb.n
  %i.gs = extractelement <2 x double> %i.gf, i64 0 ; 4 uses
  %i.gt = fcmp olt double %2, %i.gs
  %i.gu = fcmp olt double %i.gs, %i.bj
  %or.cond.i.i = and i1 %i.gt, %i.gu
  %i.gv = fcmp olt double %i.bj, %i.gs
  %i.gw = fcmp olt double %i.gs, %2
  %i.gx = and i1 %i.gv, %i.gw
  %i.gy = or i1 %or.cond.i.i, %i.gx
  br i1 %i.gy, label %clear.exit.thread166, label %bb.o

inBetween.exit.i:                                 ; preds = %bb.n
  %i.gz = extractelement <2 x double> %i.gf, i64 1 ; 4 uses
  %i.ha = fcmp olt double %3, %i.gz
  %i.hb = fcmp olt double %i.gz, %.sroa.10.0.copyload
  %or.cond20.i.i = and i1 %i.ha, %i.hb
  %i.hc = fcmp olt double %.sroa.10.0.copyload, %i.gz
  %i.hd = fcmp olt double %i.gz, %3
  %i.he = and i1 %i.hc, %i.hd
  %i.hf = or i1 %or.cond20.i.i, %i.he
  br i1 %i.hf, label %clear.exit.thread166, label %bb.o

bb.o:                                             ; preds = %inBetween.exit.i, %.split.i, %.lr.ph27.i
  %i.hg = fsub <2 x double> %i.gg, %i.cu          ; 2 uses
  %shift225 = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop226 = fmul <2 x double> %shift225, %i.ce
  %i.hh = extractelement <2 x double> %foldExtExtBinop226, i64 0
  %i.hi = extractelement <2 x double> %i.hg, i64 0
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.hi, double %i.hh) ; 2 uses
  %i.hk = fcmp ogt double %i.hj, 1.000000e-04
  %i.hl = fcmp olt double %i.hj, -1.000000e-04
  %i.hm = sext i1 %i.hl to i32
  %i.hn = select i1 %i.hk, i32 1, i32 %i.hm       ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.p, label %intersect.exit

bb.p:                                             ; preds = %bb.o
  br i1 %i.cq, label %.split43.i, label %inBetween.exit42.i

.split43.i:                                       ; preds = %bb.p
  %i.hp = fcmp olt double %2, %i.gi
  %i.hq = fcmp olt double %i.gi, %i.bj
  %or.cond.i41.i = and i1 %i.hp, %i.hq
  %i.hr = fcmp olt double %i.bj, %i.gi
  %i.hs = fcmp olt double %i.gi, %2
  %i.ht = and i1 %i.hr, %i.hs
  %i.hu = or i1 %or.cond.i41.i, %i.ht
  br i1 %i.hu, label %clear.exit.thread166, label %intersect.exit

inBetween.exit42.i:                               ; preds = %bb.p
  %i.hv = fcmp olt double %3, %i.gh
  %i.hw = fcmp olt double %i.gh, %.sroa.10.0.copyload
  %or.cond20.i39.i = and i1 %i.hv, %i.hw
  %i.hx = fcmp olt double %.sroa.10.0.copyload, %i.gh
  %i.hy = fcmp olt double %i.gh, %3
  %i.hz = and i1 %i.hx, %i.hy
  %i.ia = or i1 %or.cond20.i39.i, %i.hz
  br i1 %i.ia, label %clear.exit.thread166, label %intersect.exit

intersect.exit:                                   ; preds = %bb.o, %.split43.i, %inBetween.exit42.i
  %i.ib = fsub <2 x double> %i.gf, %i.gg          ; 2 uses
  %i.ic = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = fsub <2 x double> %i.cr, %i.ic
  %i.ie = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.if = fsub <2 x double> %i.cw, %i.ie
  %i.ig = extractelement <2 x double> %i.ib, i64 0
  %i.ih = fneg double %i.ig
  %i.ii = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x double> %i.if, %i.ij
  %i.il = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.id, <2 x double> %i.ik) ; 3 uses
  %i.in = extractelement <2 x double> %i.im, i64 1
  %i.io = fcmp ogt double %i.in, 1.000000e-04
  %i.ip = fcmp olt <2 x double> %i.im, splat (double -1.000000e-04) ; 2 uses
  %i.iq = extractelement <2 x i1> %i.ip, i64 1
  %i.ir = sext i1 %i.iq to i32
  %i.is = select i1 %i.io, i32 1, i32 %i.ir
  %i.it = extractelement <2 x double> %i.im, i64 0
  %i.iu = fcmp ogt double %i.it, 1.000000e-04
  %i.iv = extractelement <2 x i1> %i.ip, i64 0
  %i.iw = sext i1 %i.iv to i32
  %i.ix = select i1 %i.iu, i32 1, i32 %i.iw
  %i.iy = mul nsw i32 %i.hn, %i.gq
  %i.iz = icmp slt i32 %i.iy, 0
  %i.ja = mul nsw i32 %i.is, %i.ix
  %i.jb = icmp slt i32 %i.ja, 0
  %i.jc = select i1 %i.iz, i1 %i.jb, i1 false     ; 2 uses
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next33.i to i32
  %exitcond35.not.i = icmp eq i32 %i.b, %lftr.wideiv.i
  %or.cond.i = select i1 %i.jc, i1 true, i1 %exitcond35.not.i
  br i1 %or.cond.i, label %clear.exit, label %.lr.ph27.i, !llvm.loop !35

clear.exit:                                       ; preds = %intersect.exit
  br i1 %i.jc, label %clear.exit.thread166, label %clear.exit.thread164

clear.exit.thread164:                             ; preds = %.preheader.i.loopexit, %clear.exit
  %foldExtExtBinop228 = fmul <2 x double> %i.bx, %i.bx
  %i.jd = extractelement <2 x double> %foldExtExtBinop228, i64 0
  %i.je = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.jf = tail call double @llvm.fmuladd.f64(double %i.je, double %i.je, double %i.jd)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.jf)
  br label %clear.exit.thread166

clear.exit.thread166:                             ; preds = %intersect.exit131, %inBetween.exit.i127, %inBetween.exit42.i123, %.split.i129, %.split43.i125, %.split43.i, %.split.i, %inBetween.exit42.i, %inBetween.exit.i, %bb.i, %clear.exit, %clear.exit.thread164
  %sqrt.i.sink = phi double [ %sqrt.i, %clear.exit.thread164 ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.split43.i ], [ 0.000000e+00, %clear.exit ], [ 0.000000e+00, %inBetween.exit.i ], [ 0.000000e+00, %inBetween.exit42.i ], [ 0.000000e+00, %.split.i ], [ 0.000000e+00, %.split43.i125 ], [ 0.000000e+00, %.split.i129 ], [ 0.000000e+00, %inBetween.exit42.i123 ], [ 0.000000e+00, %inBetween.exit.i127 ], [ 0.000000e+00, %intersect.exit131 ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double %sqrt.i.sink, ptr %i.jg, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.preheader183, label %bb.i, !llvm.loop !36

.preheader:                                       ; preds = %.lr.ph189.preheader, %.preheader183
  %i.jh = icmp slt i32 %.0, %i.b
  br i1 %i.jh, label %.lr.ph191, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph191:                                        ; preds = %.preheader
  %wide.trip.count.i114 = zext nneg i32 %.093 to i64
  %i.ji = sext i32 %.0 to i64                     ; 2 uses
  %wide.trip.count203 = sext i32 %i.b to i64      ; 2 uses
  %i.jj = insertelement <2 x double> poison, double %3, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = insertelement <2 x double> poison, double %2, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph191, %clear.exit119.thread179
  %indvars.iv200 = phi i64 [ %i.ji, %.lr.ph191 ], [ %indvars.iv.next201, %clear.exit119.thread179 ] ; 5 uses
  %i.jo = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv200 ; 2 uses
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jp = load <2 x double>, ptr %i.jo, align 8, !tbaa !24 ; 9 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 0 ; 10 uses
  %.sroa.10.0.copyload17 = load double, ptr %.sroa.10.0..sroa_idx16, align 8, !tbaa !24 ; 13 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv200
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !22
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jt ; 2 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv200
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !22
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.ka = load <2 x double>, ptr %i.ju, align 8   ; 3 uses
  %i.kb = load double, ptr %i.jz, align 8
  %i.kc = load <2 x double>, ptr %i.jy, align 8   ; 2 uses
  %i.kd = insertelement <2 x double> %i.ka, double %.sroa.10.0.copyload17, i64 0 ; 3 uses
  %i.ke = fsub <2 x double> %i.jk, %i.kd          ; 5 uses
  %i.kf = shufflevector <2 x double> %i.kc, <2 x double> %i.jp, <2 x i32> <i32 0, i32 2>
  %i.kg = shufflevector <2 x double> %i.jp, <2 x double> %i.ka, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kh = fsub <2 x double> %i.kf, %i.kg          ; 2 uses
  %i.ki = shufflevector <2 x double> %i.kc, <2 x double> %i.kd, <2 x i32> <i32 1, i32 2>
  %i.kj = fsub <2 x double> %i.ki, %i.kd          ; 2 uses
  %i.kk = fsub <2 x double> %i.jm, %i.kg          ; 2 uses
  %i.kl = fneg <2 x double> %i.kk                 ; 5 uses
  %i.km = fmul <2 x double> %i.kj, %i.kl
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.kh, <2 x double> %i.km)
  %i.ko = fcmp uge <2 x double> %i.kn, splat (double -1.000000e-04) ; 2 uses
  %i.kp = fsub double %i.kb, %.sroa.10.0.copyload17
  %foldExtExtBinop230 = fsub <2 x double> %i.ka, %i.jp
  %i.kq = extractelement <2 x double> %foldExtExtBinop230, i64 0
  %i.kr = fneg double %i.kq
  %i.ks = extractelement <2 x double> %i.kj, i64 0
  %i.kt = fmul double %i.ks, %i.kr
  %i.ku = extractelement <2 x double> %i.kh, i64 0
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.kp, double %i.ku, double %i.kt)
  %i.kw = fcmp ogt double %i.kv, 1.000000e-04
  %8 = extractelement <2 x i1> %i.ko, i64 0       ; 2 uses
  %9 = extractelement <2 x i1> %i.ko, i64 1       ; 2 uses
  %10 = select i1 %9, i1 %8, i1 false
  %11 = select i1 %9, i1 true, i1 %8
  %.0.i101 = select i1 %i.kw, i1 %10, i1 %11
  br i1 %.0.i101, label %bb.r, label %clear.exit119.thread179

bb.r:                                             ; preds = %bb.q
  br i1 %i.ar, label %.lr.ph.preheader.i113, label %.preheader.i102

.lr.ph.preheader.i113:                            ; preds = %bb.r
  %i.kx = fcmp une double %2, %i.jq               ; 2 uses
  %i.ky = insertelement <2 x double> %i.jp, double %2, i64 1
  %i.kz = insertelement <2 x double> %i.jn, double %.sroa.10.0.copyload17, i64 0
  %i.la = extractelement <2 x double> %i.ke, i64 0 ; 2 uses
  %i.lb = insertelement <2 x double> %i.jp, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph.i115

bb.s:                                             ; preds = %intersect.exit151
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i114
  br i1 %exitcond.not.i118, label %.preheader.i102, label %.lr.ph.i115, !llvm.loop !0

.preheader.i102:                                  ; preds = %bb.s, %bb.r
  %i.lc = fcmp une double %2, %i.jq               ; 2 uses
  %i.ld = insertelement <2 x double> %i.jp, double %2, i64 1
  %i.le = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lf = insertelement <2 x double> %i.le, double %3, i64 1
  %i.lg = extractelement <2 x double> %i.ke, i64 0 ; 2 uses
  %i.lh = insertelement <2 x double> %i.jp, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph27.i105

.lr.ph.i115:                                      ; preds = %bb.s, %.lr.ph.preheader.i113
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i113 ], [ %indvars.iv.next.i117, %bb.s ] ; 3 uses
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i116
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i116
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !22
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ll
  %i.ln = load <2 x double>, ptr %i.li, align 8   ; 4 uses
  %i.lo = load <2 x double>, ptr %i.lm, align 8   ; 6 uses
  %i.lp = extractelement <2 x double> %i.lo, i64 1 ; 4 uses
  %i.lq = extractelement <2 x double> %i.lo, i64 0 ; 4 uses
  %i.lr = fsub <2 x double> %i.ln, %i.lb          ; 2 uses
  %shift232 = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop233 = fmul <2 x double> %shift232, %i.kl
  %i.ls = extractelement <2 x double> %foldExtExtBinop233, i64 0
  %i.lt = extractelement <2 x double> %i.lr, i64 0
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.la, double %i.lt, double %i.ls) ; 2 uses
  %i.lv = fcmp ogt double %i.lu, 1.000000e-04
  %i.lw = fcmp olt double %i.lu, -1.000000e-04
  %i.lx = sext i1 %i.lw to i32
  %i.ly = select i1 %i.lv, i32 1, i32 %i.lx       ; 2 uses
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i115
  br i1 %i.kx, label %.split.i149, label %inBetween.exit.i147

.split.i149:                                      ; preds = %bb.t
  %i.ma = extractelement <2 x double> %i.ln, i64 0 ; 4 uses
  %i.mb = fcmp olt double %2, %i.ma
  %i.mc = fcmp olt double %i.ma, %i.jq
  %or.cond.i.i150 = and i1 %i.mb, %i.mc
  %i.md = fcmp olt double %i.jq, %i.ma
  %i.me = fcmp olt double %i.ma, %2
  %i.mf = and i1 %i.md, %i.me
  %i.mg = or i1 %or.cond.i.i150, %i.mf
  br i1 %i.mg, label %clear.exit119.thread179, label %bb.u

inBetween.exit.i147:                              ; preds = %bb.t
  %i.mh = extractelement <2 x double> %i.ln, i64 1 ; 4 uses
  %i.mi = fcmp olt double %3, %i.mh
  %i.mj = fcmp olt double %i.mh, %.sroa.10.0.copyload17
  %or.cond20.i.i148 = and i1 %i.mi, %i.mj
  %i.mk = fcmp olt double %.sroa.10.0.copyload17, %i.mh
  %i.ml = fcmp olt double %i.mh, %3
  %i.mm = and i1 %i.mk, %i.ml
  %i.mn = or i1 %or.cond20.i.i148, %i.mm
  br i1 %i.mn, label %clear.exit119.thread179, label %bb.u

bb.u:                                             ; preds = %inBetween.exit.i147, %.split.i149, %.lr.ph.i115
  %i.mo = fsub <2 x double> %i.lo, %i.lb          ; 2 uses
  %shift235 = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop236 = fmul <2 x double> %shift235, %i.kl
  %i.mp = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.mq = extractelement <2 x double> %i.mo, i64 0
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.la, double %i.mq, double %i.mp) ; 2 uses
  %i.ms = fcmp ogt double %i.mr, 1.000000e-04
  %i.mt = fcmp olt double %i.mr, -1.000000e-04
  %i.mu = sext i1 %i.mt to i32
  %i.mv = select i1 %i.ms, i32 1, i32 %i.mu       ; 2 uses
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %bb.v, label %intersect.exit151

bb.v:                                             ; preds = %bb.u
  br i1 %i.kx, label %.split43.i145, label %inBetween.exit42.i143

.split43.i145:                                    ; preds = %bb.v
  %i.mx = fcmp olt double %2, %i.lq
  %i.my = fcmp olt double %i.lq, %i.jq
  %or.cond.i41.i146 = and i1 %i.mx, %i.my
  %i.mz = fcmp olt double %i.jq, %i.lq
  %i.na = fcmp olt double %i.lq, %2
  %i.nb = and i1 %i.mz, %i.na
  %i.nc = or i1 %or.cond.i41.i146, %i.nb
  br i1 %i.nc, label %clear.exit119.thread179, label %intersect.exit151

inBetween.exit42.i143:                            ; preds = %bb.v
  %i.nd = fcmp olt double %3, %i.lp
  %i.ne = fcmp olt double %i.lp, %.sroa.10.0.copyload17
  %or.cond20.i39.i144 = and i1 %i.nd, %i.ne
  %i.nf = fcmp olt double %.sroa.10.0.copyload17, %i.lp
  %i.ng = fcmp olt double %i.lp, %3
  %i.nh = and i1 %i.nf, %i.ng
  %i.ni = or i1 %or.cond20.i39.i144, %i.nh
  br i1 %i.ni, label %clear.exit119.thread179, label %intersect.exit151

intersect.exit151:                                ; preds = %bb.u, %.split43.i145, %inBetween.exit42.i143
  %i.nj = fsub <2 x double> %i.ln, %i.lo          ; 2 uses
  %i.nk = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = fsub <2 x double> %i.ky, %i.nk
  %i.nm = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nn = fsub <2 x double> %i.kz, %i.nm
  %i.no = extractelement <2 x double> %i.nj, i64 0
  %i.np = fneg double %i.no
  %i.nq = insertelement <2 x double> poison, double %i.np, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ns = fmul <2 x double> %i.nn, %i.nr
  %i.nt = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.nl, <2 x double> %i.ns) ; 3 uses
  %i.nv = extractelement <2 x double> %i.nu, i64 1
  %i.nw = fcmp ogt double %i.nv, 1.000000e-04
  %i.nx = fcmp olt <2 x double> %i.nu, splat (double -1.000000e-04) ; 2 uses
  %i.ny = extractelement <2 x i1> %i.nx, i64 1
  %i.nz = sext i1 %i.ny to i32
  %i.oa = select i1 %i.nw, i32 1, i32 %i.nz
  %i.ob = extractelement <2 x double> %i.nu, i64 0
  %i.oc = fcmp ogt double %i.ob, 1.000000e-04
  %i.od = extractelement <2 x i1> %i.nx, i64 0
  %i.oe = sext i1 %i.od to i32
  %i.of = select i1 %i.oc, i32 1, i32 %i.oe
  %i.og = mul nsw i32 %i.mv, %i.ly
  %i.oh = icmp slt i32 %i.og, 0
  %i.oi = mul nsw i32 %i.oa, %i.of
  %i.oj = icmp slt i32 %i.oi, 0
  %i.ok = select i1 %i.oh, i1 %i.oj, i1 false
  br i1 %i.ok, label %clear.exit119.thread179, label %bb.s

.lr.ph27.i105:                                    ; preds = %intersect.exit141, %.preheader.i102
  %indvars.iv32.i106 = phi i64 [ %i.ji, %.preheader.i102 ], [ %indvars.iv.next33.i107, %intersect.exit141 ] ; 3 uses
  %i.ol = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i106
  %i.om = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i106
  %i.on = load i32, ptr %i.om, align 4, !tbaa !22
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.oo
  %i.oq = load <2 x double>, ptr %i.ol, align 8   ; 4 uses
  %i.or = load <2 x double>, ptr %i.op, align 8   ; 6 uses
  %i.os = extractelement <2 x double> %i.or, i64 1 ; 4 uses
  %i.ot = extractelement <2 x double> %i.or, i64 0 ; 4 uses
  %i.ou = fsub <2 x double> %i.oq, %i.lh          ; 2 uses
  %shift238 = shufflevector <2 x double> %i.ou, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fmul <2 x double> %shift238, %i.kl
  %i.ov = extractelement <2 x double> %foldExtExtBinop239, i64 0
  %i.ow = extractelement <2 x double> %i.ou, i64 0
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.ow, double %i.ov) ; 2 uses
  %i.oy = fcmp ogt double %i.ox, 1.000000e-04
  %i.oz = fcmp olt double %i.ox, -1.000000e-04
  %i.pa = sext i1 %i.oz to i32
  %i.pb = select i1 %i.oy, i32 1, i32 %i.pa       ; 2 uses
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph27.i105
  br i1 %i.lc, label %.split.i139, label %inBetween.exit.i137

.split.i139:                                      ; preds = %bb.w
  %i.pd = extractelement <2 x double> %i.oq, i64 0 ; 4 uses
  %i.pe = fcmp olt double %2, %i.pd
  %i.pf = fcmp olt double %i.pd, %i.jq
  %or.cond.i.i140 = and i1 %i.pe, %i.pf
  %i.pg = fcmp olt double %i.jq, %i.pd
  %i.ph = fcmp olt double %i.pd, %2
  %i.pi = and i1 %i.pg, %i.ph
  %i.pj = or i1 %or.cond.i.i140, %i.pi
  br i1 %i.pj, label %clear.exit119.thread179, label %bb.x

inBetween.exit.i137:                              ; preds = %bb.w
  %i.pk = extractelement <2 x double> %i.oq, i64 1 ; 4 uses
  %i.pl = fcmp olt double %3, %i.pk
  %i.pm = fcmp olt double %i.pk, %.sroa.10.0.copyload17
  %or.cond20.i.i138 = and i1 %i.pl, %i.pm
  %i.pn = fcmp olt double %.sroa.10.0.copyload17, %i.pk
  %i.po = fcmp olt double %i.pk, %3
  %i.pp = and i1 %i.pn, %i.po
  %i.pq = or i1 %or.cond20.i.i138, %i.pp
  br i1 %i.pq, label %clear.exit119.thread179, label %bb.x

bb.x:                                             ; preds = %inBetween.exit.i137, %.split.i139, %.lr.ph27.i105
  %i.pr = fsub <2 x double> %i.or, %i.lh          ; 2 uses
  %shift241 = shufflevector <2 x double> %i.pr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop242 = fmul <2 x double> %shift241, %i.kl
  %i.ps = extractelement <2 x double> %foldExtExtBinop242, i64 0
  %i.pt = extractelement <2 x double> %i.pr, i64 0
  %i.pu = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.pt, double %i.ps) ; 2 uses
end_hunk_0
