Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas?download=true
inline.NumInlined: 61
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@IDARcheck3:bb.a
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !24 ; 3 uses
  %i.bu = bitcast double %i.bt to i64
  %i.bv = bitcast double %i.bg to i64
  %.unshifted249.i = xor i64 %i.bu, %i.bv
  %i.bw = icmp sgt i64 %.unshifted249.i, -1
  br i1 %i.bw, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.ba, align 8, !tbaa !165
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29
  %i.ca = sitofp i32 %i.bz to double
  %i.cb = fmul double %i.bt, %i.ca
  %i.cc = fcmp ugt double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = fsub double %i.bg, %i.bt
  %i.ce = fdiv double %i.bg, %i.cd
  %i.cf = tail call double @llvm.fabs.f64(double %i.ce) ; 2 uses
  %i.cg = fcmp ogt double %i.cf, %.0226267.ph.i
  br i1 %i.cg, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %.1212.i = phi i32 [ %.0211270.i, %bb.f ], [ %spec.select.i, %bb.h ], [ %.0211270.i, %bb.i ], [ %.0211270.i, %bb.j ], [ %.0211270.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f

.thread.i:                                        ; preds = %bb.k
  %i.ch = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %indvars.iv.next386.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not387.i = icmp eq i64 %indvars.iv.next386.i, %wide.trip.count.i
  br i1 %exitcond.not387.i, label %.preheader254.i, label %.outer433.i

._crit_edge.i:                                    ; preds = %bb.l
  %.not55 = icmp eq i32 %.1212.i, 0
  br i1 %i.bb, label %bb.m, label %.preheader254.i

.preheader254.i:                                  ; preds = %.thread.i, %._crit_edge.i
  %.1218388395.i = phi i32 [ %.0217269.ph.i, %._crit_edge.i ], [ %i.ch, %.thread.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 5 uses
  %i.cj = load double, ptr %i.m, align 8, !tbaa !349 ; 3 uses
  %i.ck = load double, ptr %i.ci, align 8, !tbaa !178 ; 2 uses
  %i.cl = fsub double %i.cj, %i.ck                ; 2 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl) ; 2 uses
  %i.cn = fcmp ugt double %i.cm, %i.ap
  br i1 %i.cn, label %.lr.ph299.i, label %.loopexit252.i..lr.ph310.i_crit_edge.critedge

.lr.ph299.i:                                      ; preds = %.preheader254.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1984 ; 5 uses
  br label %bb.s

bb.m:                                             ; preds = %._crit_edge.i
  %i.cp = load double, ptr %i.m, align 8, !tbaa !349
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store double %i.cp, ptr %i.cq, align 8, !tbaa !350
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !162 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !163 ; 7 uses
  %min.iters.check214 = icmp ult i32 %i.as, 8
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = ptrtoaddr ptr %i.cr to i64
  %i.cw = sub i64 %i.cv, %i.cu
  %diff.check216 = icmp ugt i64 %i.cw, -32
  %or.cond = select i1 %min.iters.check214, i1 true, i1 %diff.check216
  br i1 %or.cond, label %scalar.ph213.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %bb.m
  %n.vec218 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next223, %vector.body219 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index220 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load221.a = load <2 x double>, ptr %i.cx, align 8, !tbaa !24
  %wide.load222 = load <2 x double>, ptr %i.cy, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index220 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <2 x double> %wide.load221.a, ptr %i.cz, align 8, !tbaa !24
  store <2 x double> %wide.load222, ptr %i.da, align 8, !tbaa !24
  %index.next223 = add nuw i64 %index220, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.db, label %middle.block224, label %vector.body219, !llvm.loop !333

middle.block224:                                  ; preds = %vector.body219
  %cmp.n225 = icmp eq i64 %n.vec218, %wide.trip.count.i
  br i1 %cmp.n225, label %._crit_edge314.i, label %scalar.ph213.preheader

scalar.ph213.preheader:                           ; preds = %bb.m, %middle.block224
  %indvars.iv348.i.ph = phi i64 [ 0, %bb.m ], [ %n.vec218, %middle.block224 ] ; 3 uses
  %xtraiter286 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %scalar.ph213.prol.loopexit, label %scalar.ph213.prol

scalar.ph213.prol:                                ; preds = %scalar.ph213.preheader, %scalar.ph213.prol
  %indvars.iv348.i.prol = phi i64 [ %indvars.iv.next349.i.prol, %scalar.ph213.prol ], [ %indvars.iv348.i.ph, %scalar.ph213.preheader ] ; 3 uses
  %prol.iter288 = phi i64 [ %prol.iter288.next, %scalar.ph213.prol ], [ 0, %scalar.ph213.preheader ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv348.i.prol
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv348.i.prol
  store double %i.dd, ptr %i.de, align 8, !tbaa !24
  %indvars.iv.next349.i.prol = add nuw nsw i64 %indvars.iv348.i.prol, 1 ; 2 uses
  %prol.iter288.next = add i64 %prol.iter288, 1   ; 2 uses
  %prol.iter288.cmp.not = icmp eq i64 %prol.iter288.next, %xtraiter286
  br i1 %prol.iter288.cmp.not, label %scalar.ph213.prol.loopexit, label %scalar.ph213.prol, !llvm.loop !334

scalar.ph213.prol.loopexit:                       ; preds = %scalar.ph213.prol, %scalar.ph213.preheader
  %indvars.iv348.i.unr = phi i64 [ %indvars.iv348.i.ph, %scalar.ph213.preheader ], [ %indvars.iv.next349.i.prol, %scalar.ph213.prol ]
  %i.df = sub nsw i64 %indvars.iv348.i.ph, %wide.trip.count.i
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge314.i, label %scalar.ph213

scalar.ph213:                                     ; preds = %scalar.ph213.prol.loopexit, %scalar.ph213
  %indvars.iv348.i = phi i64 [ %indvars.iv.next349.i.3, %scalar.ph213 ], [ %indvars.iv348.i.unr, %scalar.ph213.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv348.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv348.i
  store double %i.di, ptr %i.dj, align 8, !tbaa !24
  %indvars.iv.next349.i = add nuw nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next349.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !24
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next349.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !24
  %indvars.iv.next349.i.1 = add nuw nsw i64 %indvars.iv348.i, 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next349.i.1
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next349.i.1
  store double %i.do, ptr %i.dp, align 8, !tbaa !24
  %indvars.iv.next349.i.2 = add nuw nsw i64 %indvars.iv348.i, 3 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next349.i.2
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !24
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next349.i.2
  store double %i.dr, ptr %i.ds, align 8, !tbaa !24
  %indvars.iv.next349.i.3 = add nuw nsw i64 %indvars.iv348.i, 4 ; 2 uses
  %exitcond352.not.i.3 = icmp eq i64 %indvars.iv.next349.i.3, %wide.trip.count.i
  br i1 %exitcond352.not.i.3, label %._crit_edge314.i, label %scalar.ph213, !llvm.loop !335

._crit_edge314.i:                                 ; preds = %scalar.ph213.prol.loopexit, %scalar.ph213, %middle.block224
  br i1 %.not55, label %IDARootfind.exit, label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %._crit_edge314.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !164
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph316.i
  %indvars.iv353.i = phi i64 [ 0, %.lr.ph316.i ], [ %indvars.iv.next354.i, %bb.r ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv353.i ; 2 uses
  store i32 0, ptr %i.dv, align 4, !tbaa !29
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv353.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !29
  %.not238.i = icmp eq i32 %i.dx, 0
  br i1 %.not238.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv353.i
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !24
  %i.ea = fcmp oeq double %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %i.ba, align 8, !tbaa !165
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv353.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !29
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv353.i
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !24 ; 2 uses
  %i.ei = fmul double %i.eh, %i.ee
  %i.ej = fcmp ugt double %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ek = fcmp ogt double %i.eh, 0.000000e+00
  %i.el = select i1 %i.ek, i32 -1, i32 1
  store i32 %i.el, ptr %i.dv, align 4, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next354.i = add nuw nsw i64 %indvars.iv353.i, 1 ; 2 uses
  %i.em = load i32, ptr %i.ar, align 8, !tbaa !87 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next354.i, %i.en
  br i1 %i.eo, label %bb.n, label %IDARootfind.exit

bb.s:                                             ; preds = %.backedge.i, %.lr.ph299.i
  %i.ep = phi double [ %i.ap, %.lr.ph299.i ], [ %i.iy, %.backedge.i ] ; 3 uses
  %i.eq = phi double [ %i.cm, %.lr.ph299.i ], [ %.pre-phi361.i, %.backedge.i ] ; 2 uses
  %i.er = phi double [ %i.cl, %.lr.ph299.i ], [ %.pre-phi.i, %.backedge.i ] ; 3 uses
  %i.es = phi double [ %i.ck, %.lr.ph299.i ], [ %i.iz, %.backedge.i ] ; 2 uses
  %i.et = phi double [ %i.cj, %.lr.ph299.i ], [ %i.ja, %.backedge.i ] ; 3 uses
  %.0215298.i = phi i32 [ -1, %.lr.ph299.i ], [ %.0216297.i, %.backedge.i ]
  %.0216297.i = phi i32 [ 0, %.lr.ph299.i ], [ %.0216.be.i, %.backedge.i ] ; 2 uses
  %.v296.i = phi double [ 5.000000e-01, %.lr.ph299.i ], [ %.v.be.i, %.backedge.i ]
  %.2219295.i = phi i32 [ %.1218388395.i, %.lr.ph299.i ], [ %.3220.lcssa405.i, %.backedge.i ] ; 3 uses
  %.0232294.i = phi double [ 1.000000e+00, %.lr.ph299.i ], [ %.1233.i, %.backedge.i ]
  %i.eu = icmp eq i32 %.0215298.i, %.0216297.i
  %3 = fmul double %.v296.i, %.0232294.i
  %.1233.i = select i1 %i.eu, double %3, double 1.000000e+00 ; 2 uses
  %i.ev = load ptr, ptr %i.x, align 8, !tbaa !162
  %i.ew = sext i32 %.2219295.i to i64             ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !24 ; 2 uses
  %i.ez = fmul double %i.er, %i.ey
  %i.fa = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ew
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !24
  %i.fd = fneg double %.1233.i
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.fc, double %i.ey)
  %i.ff = fdiv double %i.ez, %i.fe
  %i.fg = fsub double %i.et, %i.ff                ; 2 uses
  %i.fh = fsub double %i.fg, %i.es
  %i.fi = tail call double @llvm.fabs.f64(double %i.fh)
  %i.fj = fmul double %i.ep, 5.000000e-01         ; 2 uses
  %i.fk = fcmp olt double %i.fi, %i.fj
  br i1 %i.fk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fl = fdiv double %i.eq, %i.ep                ; 2 uses
  %i.fm = fcmp ogt double %i.fl, 5.000000e+00
  %i.fn = fdiv double 5.000000e-01, %i.fl
  %i.fo = select i1 %i.fm, double 1.000000e-01, double %i.fn
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.er, double %i.es)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0230.i = phi double [ %i.fp, %bb.t ], [ %i.fg, %bb.s ] ; 2 uses
  %i.fq = fsub double %i.et, %.0230.i
  %i.fr = tail call double @llvm.fabs.f64(double %i.fq)
  %i.fs = fcmp olt double %i.fr, %i.fj
  br i1 %i.fs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ft = fdiv double %i.eq, %i.ep                ; 2 uses
  %i.fu = fcmp ogt double %i.ft, 5.000000e+00
  %.neg.i = fdiv double -5.000000e-01, %i.ft
  %i.fv = select i1 %i.fu, double -1.000000e-01, double %.neg.i
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.er, double %i.et)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1231.i = phi double [ %i.fw, %bb.v ], [ %.0230.i, %bb.u ] ; 7 uses
  %i.fx = load ptr, ptr %i.n, align 8, !tbaa !167
  %i.fy = load ptr, ptr %i.p, align 8, !tbaa !168
  %i.fz = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %.1231.i, ptr noundef %i.fx, ptr noundef %i.fy) ; 0 uses
  %i.ga = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.gb = load ptr, ptr %i.n, align 8, !tbaa !167
  %i.gc = load ptr, ptr %i.p, align 8, !tbaa !168
  %i.gd = load ptr, ptr %i.co, align 8, !tbaa !163
  %i.ge = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.gf = tail call i32 %i.ga(double noundef %.1231.i, ptr noundef %i.gb, ptr noundef %i.gc, ptr noundef %i.gd, ptr noundef %i.ge) #14, !inline_history !336
  %i.gg = load i64, ptr %i.ac, align 8, !tbaa !95
  %i.gh = add nsw i64 %i.gg, 1
  store i64 %i.gh, ptr %i.ac, align 8, !tbaa !95
  %.not239.i = icmp eq i32 %i.gf, 0
  br i1 %.not239.i, label %.preheader253.i, label %IDARootfind.exit.thread

.preheader253.i:                                  ; preds = %bb.w
  %i.gi = load i32, ptr %i.ar, align 8, !tbaa !87 ; 6 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph280.i, label %.thread427.i

.thread427.i:                                     ; preds = %.preheader253.i
  store double %.1231.i, ptr %i.ci, align 8, !tbaa !178
  br label %._crit_edge293.i

.lr.ph280.i:                                      ; preds = %.preheader253.i
  %i.gk = load ptr, ptr %i.ax, align 8, !tbaa !166 ; 2 uses
  %wide.trip.count327.i = zext nneg i32 %i.gi to i64 ; 17 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread408.i, %.lr.ph280.i
  %indvars.iv324.ph.i = phi i64 [ %indvars.iv.next325413.i, %.thread408.i ], [ 0, %.lr.ph280.i ]
  %i.gl = phi i1 [ false, %.thread408.i ], [ true, %.lr.ph280.i ]
  %.2213278.ph.i = phi i32 [ %.2213278.i, %.thread408.i ], [ 0, %.lr.ph280.i ]
  %.3220277.ph.i = phi i32 [ %i.hr, %.thread408.i ], [ %.2219295.i, %.lr.ph280.i ] ; 2 uses
  %.2228275.ph.i = phi double [ %i.hp, %.thread408.i ], [ 0.000000e+00, %.lr.ph280.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.outer.i
  %indvars.iv324.i = phi i64 [ %indvars.iv.next325.i, %bb.ad ], [ %indvars.iv324.ph.i, %.outer.i ] ; 9 uses
  %.2213278.i = phi i32 [ %.3214.i, %bb.ad ], [ %.2213278.ph.i, %.outer.i ] ; 6 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv324.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !29
  %.not242.i = icmp eq i32 %i.gn, 0
  br i1 %.not242.i, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.go = load ptr, ptr %i.co, align 8, !tbaa !163 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv324.i
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !24 ; 4 uses
  %i.gr = fcmp oeq double %i.gq, 0.000000e+00
  br i1 %i.gr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gs = load ptr, ptr %i.ba, align 8, !tbaa !165
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv324.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !29
  %i.gv = sitofp i32 %i.gu to double
  %i.gw = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv324.i
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !24
  %i.gz = fmul double %i.gy, %i.gv
  %i.ha = fcmp ugt double %i.gz, 0.000000e+00
  %spec.select250.i = select i1 %i.ha, i32 %.2213278.i, i32 1
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.hb = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv324.i
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !24 ; 3 uses
  %i.he = bitcast double %i.hd to i64
  %i.hf = bitcast double %i.gq to i64
  %.unshifted.i = xor i64 %i.he, %i.hf
  %i.hg = icmp sgt i64 %.unshifted.i, -1
  br i1 %i.hg, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hh = load ptr, ptr %i.ba, align 8, !tbaa !165
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv324.i
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !29
  %i.hk = sitofp i32 %i.hj to double
  %i.hl = fmul double %i.hd, %i.hk
  %i.hm = fcmp ugt double %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hn = fsub double %i.gq, %i.hd
  %i.ho = fdiv double %i.gq, %i.hn
  %i.hp = tail call double @llvm.fabs.f64(double %i.ho) ; 2 uses
  %i.hq = fcmp ogt double %i.hp, %.2228275.ph.i
  br i1 %i.hq, label %.thread408.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x
  %.3214.i = phi i32 [ %.2213278.i, %bb.x ], [ %spec.select250.i, %bb.z ], [ %.2213278.i, %bb.aa ], [ %.2213278.i, %bb.ab ], [ %.2213278.i, %bb.ac ] ; 2 uses
  %indvars.iv.next325.i = add nuw nsw i64 %indvars.iv324.i, 1 ; 2 uses
  %exitcond328.not.i = icmp eq i64 %indvars.iv.next325.i, %wide.trip.count327.i
  br i1 %exitcond328.not.i, label %._crit_edge281.i, label %bb.x

.thread408.i:                                     ; preds = %bb.ac
  %i.hr = trunc nuw nsw i64 %indvars.iv324.i to i32 ; 2 uses
  %indvars.iv.next325413.i = add nuw nsw i64 %indvars.iv324.i, 1 ; 2 uses
  %exitcond328.not414.i = icmp eq i64 %indvars.iv.next325413.i, %wide.trip.count327.i
  br i1 %exitcond328.not414.i, label %._crit_edge281.thread418.i, label %.outer.i

._crit_edge281.i:                                 ; preds = %bb.ad
  br i1 %i.gl, label %bb.ae, label %._crit_edge281.i.._crit_edge281.thread418.i_crit_edge

._crit_edge281.i.._crit_edge281.thread418.i_crit_edge: ; preds = %._crit_edge281.i
  %.pre105 = load ptr, ptr %i.co, align 8, !tbaa !163
  br label %._crit_edge281.thread418.i

._crit_edge281.thread418.i:                       ; preds = %.thread408.i, %._crit_edge281.i.._crit_edge281.thread418.i_crit_edge
  %i.hs = phi ptr [ %.pre105, %._crit_edge281.i.._crit_edge281.thread418.i_crit_edge ], [ %i.go, %.thread408.i ] ; 7 uses
  %.4415422.i = phi i32 [ %.3220277.ph.i, %._crit_edge281.i.._crit_edge281.thread418.i_crit_edge ], [ %i.hr, %.thread408.i ]
  store double %.1231.i, ptr %i.m, align 8, !tbaa !349
  %i.ht = load ptr, ptr %i.x, align 8, !tbaa !162 ; 7 uses
  %min.iters.check184 = icmp ult i32 %i.gi, 4
  %i.hu = ptrtoaddr ptr %i.ht to i64
  %i.hv = ptrtoaddr ptr %i.hs to i64
  %i.hw = sub i64 %i.hv, %i.hu
  %diff.check182 = icmp ugt i64 %i.hw, -32
  %or.cond247 = select i1 %min.iters.check184, i1 true, i1 %diff.check182
  br i1 %or.cond247, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %._crit_edge281.thread418.i
  %n.vec186 = and i64 %wide.trip.count327.i, 2147483644 ; 3 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next191, %vector.body187 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index188 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load189.a = load <2 x double>, ptr %i.hx, align 8, !tbaa !24
  %wide.load190 = load <2 x double>, ptr %i.hy, align 8, !tbaa !24
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index188 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <2 x double> %wide.load189.a, ptr %i.hz, align 8, !tbaa !24
  store <2 x double> %wide.load190, ptr %i.ia, align 8, !tbaa !24
  %index.next191 = add nuw i64 %index188, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.ib, label %middle.block192, label %vector.body187, !llvm.loop !337

middle.block192:                                  ; preds = %vector.body187
  %cmp.n193 = icmp eq i64 %n.vec186, %wide.trip.count327.i
  br i1 %cmp.n193, label %._crit_edge289.loopexit.i, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %._crit_edge281.thread418.i, %middle.block192
  %indvars.iv329.i.ph = phi i64 [ 0, %._crit_edge281.thread418.i ], [ %n.vec186, %middle.block192 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count327.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol

scalar.ph183.prol:                                ; preds = %scalar.ph183.preheader, %scalar.ph183.prol
  %indvars.iv329.i.prol = phi i64 [ %indvars.iv.next330.i.prol, %scalar.ph183.prol ], [ %indvars.iv329.i.ph, %scalar.ph183.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph183.prol ], [ 0, %scalar.ph183.preheader ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv329.i.prol
  %i.id = load double, ptr %i.ic, align 8, !tbaa !24
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv329.i.prol
  store double %i.id, ptr %i.ie, align 8, !tbaa !24
  %indvars.iv.next330.i.prol = add nuw nsw i64 %indvars.iv329.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol, !llvm.loop !338

scalar.ph183.prol.loopexit:                       ; preds = %scalar.ph183.prol, %scalar.ph183.preheader
  %indvars.iv329.i.unr = phi i64 [ %indvars.iv329.i.ph, %scalar.ph183.preheader ], [ %indvars.iv.next330.i.prol, %scalar.ph183.prol ]
  %i.if = sub nsw i64 %indvars.iv329.i.ph, %wide.trip.count327.i
  %i.ig = icmp ugt i64 %i.if, -4
  br i1 %i.ig, label %._crit_edge289.loopexit.i, label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183
  %indvars.iv329.i = phi i64 [ %indvars.iv.next330.i.3, %scalar.ph183 ], [ %indvars.iv329.i.unr, %scalar.ph183.prol.loopexit ] ; 6 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv329.i
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !24
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv329.i
  store double %i.ii, ptr %i.ij, align 8, !tbaa !24
  %indvars.iv.next330.i = add nuw nsw i64 %indvars.iv329.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next330.i
  %i.il = load double, ptr %i.ik, align 8, !tbaa !24
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next330.i
  store double %i.il, ptr %i.im, align 8, !tbaa !24
  %indvars.iv.next330.i.1 = add nuw nsw i64 %indvars.iv329.i, 2 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next330.i.1
  %i.io = load double, ptr %i.in, align 8, !tbaa !24
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next330.i.1
  store double %i.io, ptr %i.ip, align 8, !tbaa !24
  %indvars.iv.next330.i.2 = add nuw nsw i64 %indvars.iv329.i, 3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next330.i.2
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !24
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next330.i.2
  store double %i.ir, ptr %i.is, align 8, !tbaa !24
  %indvars.iv.next330.i.3 = add nuw nsw i64 %indvars.iv329.i, 4 ; 2 uses
  %exitcond333.not.i.3 = icmp eq i64 %indvars.iv.next330.i.3, %wide.trip.count327.i
  br i1 %exitcond333.not.i.3, label %._crit_edge289.loopexit.i, label %scalar.ph183, !llvm.loop !339

._crit_edge289.loopexit.i:                        ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183, %middle.block192
  %.pre.i = load double, ptr %i.m, align 8, !tbaa !349 ; 3 uses
  %i.it = load double, ptr %i.ci, align 8, !tbaa !178 ; 2 uses
  %i.iu = fsub double %.pre.i, %i.it              ; 2 uses
  %i.iv = tail call double @llvm.fabs.f64(double %i.iu) ; 2 uses
  %i.iw = load double, ptr %i.aq, align 8, !tbaa !196 ; 2 uses
  %i.ix = fcmp ugt double %i.iv, %i.iw
  br i1 %i.ix, label %.backedge.i, label %.loopexit252.i.loopexit

.backedge.i:                                      ; preds = %._crit_edge293.i, %._crit_edge289.loopexit.i
  %.3220.lcssa405.i = phi i32 [ %.4415422.i, %._crit_edge289.loopexit.i ], [ %.3220.lcssa406426429.i, %._crit_edge293.i ]
  %.pre-phi361.i = phi double [ %i.iv, %._crit_edge289.loopexit.i ], [ %i.lh, %._crit_edge293.i ] ; 2 uses
  %.pre-phi.i = phi double [ %i.iu, %._crit_edge289.loopexit.i ], [ %i.lg, %._crit_edge293.i ]
  %i.iy = phi double [ %i.iw, %._crit_edge289.loopexit.i ], [ %i.li, %._crit_edge293.i ] ; 2 uses
  %i.iz = phi double [ %i.it, %._crit_edge289.loopexit.i ], [ %i.le, %._crit_edge293.i ]
  %i.ja = phi double [ %.pre.i, %._crit_edge289.loopexit.i ], [ %i.lf, %._crit_edge293.i ] ; 2 uses
  %.v.be.i = phi double [ 5.000000e-01, %._crit_edge289.loopexit.i ], [ 2.000000e+00, %._crit_edge293.i ]
  %.0216.be.i = phi i32 [ 1, %._crit_edge289.loopexit.i ], [ 2, %._crit_edge293.i ]
  %4 = fcmp ugt double %.pre-phi361.i, %i.iy
  br i1 %4, label %bb.s, label %.loopexit252.i.loopexit

bb.ae:                                            ; preds = %._crit_edge281.i
  %i.jb = icmp eq i32 %.3214.i, 0
  br i1 %i.jb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double %.1231.i, ptr %i.m, align 8, !tbaa !349
  %i.jc = load ptr, ptr %i.co, align 8, !tbaa !163 ; 8 uses
  %i.jd = load ptr, ptr %i.x, align 8, !tbaa !162 ; 8 uses
  %min.iters.check198 = icmp ult i32 %i.gi, 8
  %i.je = ptrtoaddr ptr %i.jd to i64
  %i.jf = ptrtoaddr ptr %i.jc to i64
  %i.jg = sub i64 %i.jf, %i.je
  %diff.check200 = icmp ugt i64 %i.jg, -32
  %or.cond250 = select i1 %min.iters.check198, i1 true, i1 %diff.check200
  br i1 %or.cond250, label %scalar.ph197.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %bb.af
  %n.vec202 = and i64 %wide.trip.count327.i, 2147483644 ; 3 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph201
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next207, %vector.body203 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %index204 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load205.a = load <2 x double>, ptr %i.jh, align 8, !tbaa !24
  %wide.load206 = load <2 x double>, ptr %i.ji, align 8, !tbaa !24
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %index204 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store <2 x double> %wide.load205.a, ptr %i.jj, align 8, !tbaa !24
  store <2 x double> %wide.load206, ptr %i.jk, align 8, !tbaa !24
  %index.next207 = add nuw i64 %index204, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next207, %n.vec202
  br i1 %i.jl, label %middle.block208, label %vector.body203, !llvm.loop !340

middle.block208:                                  ; preds = %vector.body203
  %cmp.n209 = icmp eq i64 %n.vec202, %wide.trip.count327.i
  br i1 %cmp.n209, label %.loopexit252.thread.i, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %bb.af, %middle.block208
  %indvars.iv339.i.ph = phi i64 [ 0, %bb.af ], [ %n.vec202, %middle.block208 ] ; 3 uses
  %xtraiter283 = and i64 %wide.trip.count327.i, 3 ; 2 uses
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol

scalar.ph197.prol:                                ; preds = %scalar.ph197.preheader, %scalar.ph197.prol
  %indvars.iv339.i.prol = phi i64 [ %indvars.iv.next340.i.prol, %scalar.ph197.prol ], [ %indvars.iv339.i.ph, %scalar.ph197.preheader ] ; 3 uses
  %prol.iter285 = phi i64 [ %prol.iter285.next, %scalar.ph197.prol ], [ 0, %scalar.ph197.preheader ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv339.i.prol
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !24
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv339.i.prol
  store double %i.jn, ptr %i.jo, align 8, !tbaa !24
  %indvars.iv.next340.i.prol = add nuw nsw i64 %indvars.iv339.i.prol, 1 ; 2 uses
  %prol.iter285.next = add i64 %prol.iter285, 1   ; 2 uses
  %prol.iter285.cmp.not = icmp eq i64 %prol.iter285.next, %xtraiter283
  br i1 %prol.iter285.cmp.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol, !llvm.loop !341

scalar.ph197.prol.loopexit:                       ; preds = %scalar.ph197.prol, %scalar.ph197.preheader
  %indvars.iv339.i.unr = phi i64 [ %indvars.iv339.i.ph, %scalar.ph197.preheader ], [ %indvars.iv.next340.i.prol, %scalar.ph197.prol ]
  %i.jp = sub nsw i64 %indvars.iv339.i.ph, %wide.trip.count327.i
  %i.jq = icmp ugt i64 %i.jp, -4
  br i1 %i.jq, label %.loopexit252.thread.i, label %scalar.ph197

scalar.ph197:                                     ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197
  %indvars.iv339.i = phi i64 [ %indvars.iv.next340.i.3, %scalar.ph197 ], [ %indvars.iv339.i.unr, %scalar.ph197.prol.loopexit ] ; 6 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv339.i
  %i.js = load double, ptr %i.jr, align 8, !tbaa !24
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv339.i
  store double %i.js, ptr %i.jt, align 8, !tbaa !24
  %indvars.iv.next340.i = add nuw nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next340.i
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !24
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.next340.i
  store double %i.jv, ptr %i.jw, align 8, !tbaa !24
  %indvars.iv.next340.i.1 = add nuw nsw i64 %indvars.iv339.i, 2 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next340.i.1
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !24
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.next340.i.1
  store double %i.jy, ptr %i.jz, align 8, !tbaa !24
  %indvars.iv.next340.i.2 = add nuw nsw i64 %indvars.iv339.i, 3 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next340.i.2
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !24
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.next340.i.2
  store double %i.kb, ptr %i.kc, align 8, !tbaa !24
  %indvars.iv.next340.i.3 = add nuw nsw i64 %indvars.iv339.i, 4 ; 2 uses
  %exitcond344.not.i.3 = icmp eq i64 %indvars.iv.next340.i.3, %wide.trip.count327.i
  br i1 %exitcond344.not.i.3, label %.loopexit252.thread.i, label %scalar.ph197, !llvm.loop !342

bb.ag:                                            ; preds = %bb.ae
  store double %.1231.i, ptr %i.ci, align 8, !tbaa !178
  %i.kd = load ptr, ptr %i.co, align 8, !tbaa !163 ; 7 uses
  %i.ke = load ptr, ptr %i.az, align 8, !tbaa !161 ; 7 uses
  %min.iters.check = icmp ult i32 %i.gi, 4
  %i.kf = ptrtoaddr ptr %i.ke to i64
  %i.kg = ptrtoaddr ptr %i.kd to i64
  %i.kh = sub i64 %i.kg, %i.kf
  %diff.check = icmp ugt i64 %i.kh, -32
  %or.cond253 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond253, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ag
  %n.vec = and i64 %wide.trip.count327.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %index ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %wide.load = load <2 x double>, ptr %i.ki, align 8, !tbaa !24
  %wide.load180 = load <2 x double>, ptr %i.kj, align 8, !tbaa !24
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %index ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <2 x double> %wide.load, ptr %i.kk, align 8, !tbaa !24
  store <2 x double> %wide.load180, ptr %i.kl, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count327.i
  br i1 %cmp.n, label %._crit_edge293.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ag, %middle.block
  %indvars.iv334.i.ph = phi i64 [ 0, %bb.ag ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter280 = and i64 %wide.trip.count327.i, 3 ; 2 uses
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv334.i.prol = phi i64 [ %indvars.iv.next335.i.prol, %scalar.ph.prol ], [ %indvars.iv334.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter282 = phi i64 [ %prol.iter282.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv334.i.prol
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !24
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv334.i.prol
  store double %i.ko, ptr %i.kp, align 8, !tbaa !24
  %indvars.iv.next335.i.prol = add nuw nsw i64 %indvars.iv334.i.prol, 1 ; 2 uses
  %prol.iter282.next = add i64 %prol.iter282, 1   ; 2 uses
  %prol.iter282.cmp.not = icmp eq i64 %prol.iter282.next, %xtraiter280
  br i1 %prol.iter282.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !344

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv334.i.unr = phi i64 [ %indvars.iv334.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next335.i.prol, %scalar.ph.prol ]
  %i.kq = sub nsw i64 %indvars.iv334.i.ph, %wide.trip.count327.i
  %i.kr = icmp ugt i64 %i.kq, -4
  br i1 %i.kr, label %._crit_edge293.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i.3, %scalar.ph ], [ %indvars.iv334.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv334.i
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !24
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv334.i
  store double %i.kt, ptr %i.ku, align 8, !tbaa !24
  %indvars.iv.next335.i = add nuw nsw i64 %indvars.iv334.i, 1 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next335.i
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !24
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.next335.i
  store double %i.kw, ptr %i.kx, align 8, !tbaa !24
  %indvars.iv.next335.i.1 = add nuw nsw i64 %indvars.iv334.i, 2 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next335.i.1
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !24
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.next335.i.1
  store double %i.kz, ptr %i.la, align 8, !tbaa !24
  %indvars.iv.next335.i.2 = add nuw nsw i64 %indvars.iv334.i, 3 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next335.i.2
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !24
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.next335.i.2
  store double %i.lc, ptr %i.ld, align 8, !tbaa !24
  %indvars.iv.next335.i.3 = add nuw nsw i64 %indvars.iv334.i, 4 ; 2 uses
  %exitcond338.not.i.3 = icmp eq i64 %indvars.iv.next335.i.3, %wide.trip.count327.i
  br i1 %exitcond338.not.i.3, label %._crit_edge293.loopexit.i, label %scalar.ph, !llvm.loop !345

._crit_edge293.loopexit.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre356.i = load double, ptr %i.ci, align 8, !tbaa !178
  br label %._crit_edge293.i

._crit_edge293.i:                                 ; preds = %._crit_edge293.loopexit.i, %.thread427.i
  %.3220.lcssa406426429.i = phi i32 [ %.3220277.ph.i, %._crit_edge293.loopexit.i ], [ %.2219295.i, %.thread427.i ]
  %i.le = phi double [ %.pre356.i, %._crit_edge293.loopexit.i ], [ %.1231.i, %.thread427.i ] ; 2 uses
  %i.lf = load double, ptr %i.m, align 8, !tbaa !349 ; 3 uses
  %i.lg = fsub double %i.lf, %i.le                ; 2 uses
  %i.lh = tail call double @llvm.fabs.f64(double %i.lg) ; 2 uses
  %i.li = load double, ptr %i.aq, align 8, !tbaa !196 ; 2 uses
  %i.lj = fcmp ugt double %i.lh, %i.li
  br i1 %i.lj, label %.backedge.i, label %.loopexit252.i.loopexit

.loopexit252.thread.i:                            ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197, %middle.block208
  %.pre357.i = load double, ptr %i.m, align 8, !tbaa !349
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store double %.pre357.i, ptr %i.lk, align 8, !tbaa !350
  br label %.lr.ph310.i

.loopexit252.i.loopexit:                          ; preds = %._crit_edge289.loopexit.i, %.backedge.i, %._crit_edge293.i
  %.ph = phi double [ %i.lf, %._crit_edge293.i ], [ %i.ja, %.backedge.i ], [ %.pre.i, %._crit_edge289.loopexit.i ]
  %i.ll = icmp sgt i32 %i.gi, 0
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store double %.ph, ptr %i.lm, align 8, !tbaa !350
  br i1 %i.ll, label %.loopexit252.i..lr.ph310.i_crit_edge, label %._crit_edge.thread.thread132

._crit_edge.thread.thread132:                     ; preds = %.loopexit252.i.loopexit
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !350
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1944
  store double %i.lo, ptr %i.lp, align 8, !tbaa !178
  br label %bb.at

.loopexit252.i..lr.ph310.i_crit_edge.critedge:    ; preds = %.preheader254.i
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store double %i.cj, ptr %i.lq, align 8, !tbaa !350
  br label %.loopexit252.i..lr.ph310.i_crit_edge

.loopexit252.i..lr.ph310.i_crit_edge:             ; preds = %.loopexit252.i..lr.ph310.i_crit_edge.critedge, %.loopexit252.i.loopexit
  %.pre106 = load ptr, ptr %i.x, align 8, !tbaa !162
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %.pre108 = load ptr, ptr %.phi.trans.insert107, align 8, !tbaa !163
  %.pre109 = load ptr, ptr %i.ax, align 8, !tbaa !166
  br label %.lr.ph310.i

.lr.ph310.i:                                      ; preds = %.loopexit252.i..lr.ph310.i_crit_edge, %.loopexit252.thread.i
  %i.lr = phi ptr [ %.pre109, %.loopexit252.i..lr.ph310.i_crit_edge ], [ %i.gk, %.loopexit252.thread.i ]
  %i.ls = phi ptr [ %.pre108, %.loopexit252.i..lr.ph310.i_crit_edge ], [ %i.jc, %.loopexit252.thread.i ]
  %i.lt = phi ptr [ %.pre106, %.loopexit252.i..lr.ph310.i_crit_edge ], [ %i.jd, %.loopexit252.thread.i ]
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !164
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ao, %.lr.ph310.i
  %indvars.iv345.i = phi i64 [ 0, %.lr.ph310.i ], [ %indvars.iv.next346.i, %bb.ao ] ; 9 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv345.i
  %i.lx = load double, ptr %i.lw, align 8         ; 3 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv345.i
  store double %i.lx, ptr %i.ly, align 8, !tbaa !24
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv345.i ; 3 uses
  store i32 0, ptr %i.lz, align 4, !tbaa !29
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv345.i
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !29
  %.not244.i = icmp eq i32 %i.mb, 0
  %i.mc = bitcast double %i.lx to i64
  br i1 %.not244.i, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.md = fcmp oeq double %i.lx, 0.000000e+00
  %.pre358.i = load ptr, ptr %i.az, align 8, !tbaa !161 ; 2 uses
  br i1 %i.md, label %bb.aj, label %._crit_edge359.i

._crit_edge359.i:                                 ; preds = %bb.ai
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre358.i, i64 %indvars.iv345.i
  %.pre360.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.me = load ptr, ptr %i.ba, align 8, !tbaa !165
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv345.i
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !29
  %i.mh = sitofp i32 %i.mg to double
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.pre358.i, i64 %indvars.iv345.i
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !24 ; 4 uses
  %i.mk = fmul double %i.mj, %i.mh
  %i.ml = fcmp ugt double %i.mk, 0.000000e+00
  br i1 %i.ml, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mm = fcmp ogt double %i.mj, 0.000000e+00
  %i.mn = select i1 %i.mm, i32 -1, i32 1
  store i32 %i.mn, ptr %i.lz, align 4, !tbaa !29
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge359.i
  %i.mo = phi double [ %.pre360.i, %._crit_edge359.i ], [ %i.mj, %bb.ak ], [ %i.mj, %bb.aj ] ; 3 uses
  %i.mp = bitcast double %i.mo to i64
  %.unshifted246.i = xor i64 %i.mp, %i.mc
  %i.mq = icmp sgt i64 %.unshifted246.i, -1
  br i1 %i.mq, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mr = load ptr, ptr %i.ba, align 8, !tbaa !165
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv345.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !29
  %i.mu = sitofp i32 %i.mt to double
  %i.mv = fmul double %i.mo, %i.mu
  %i.mw = fcmp ugt double %i.mv, 0.000000e+00
  br i1 %i.mw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mx = fcmp ogt double %i.mo, 0.000000e+00
  %i.my = select i1 %i.mx, i32 -1, i32 1
  store i32 %i.my, ptr %i.lz, align 4, !tbaa !29
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ah
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 1 ; 2 uses
  %i.mz = load i32, ptr %i.ar, align 8, !tbaa !87 ; 2 uses
  %i.na = sext i32 %i.mz to i64
  %i.nb = icmp slt i64 %indvars.iv.next346.i, %i.na
  br i1 %i.nb, label %bb.ah, label %IDARootfind.exit

IDARootfind.exit:                                 ; preds = %bb.ao, %bb.r, %._crit_edge314.i
  %i.nc = phi i32 [ %i.as, %._crit_edge314.i ], [ %i.em, %bb.r ], [ %i.mz, %bb.ao ] ; 2 uses
  %i.nd = phi i1 [ true, %._crit_edge314.i ], [ false, %bb.r ], [ false, %bb.ao ] ; 2 uses
  %i.ne = icmp sgt i32 %i.nc, 0
  br i1 %i.ne, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %IDARootfind.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !166
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 1984
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.as
  %i.ni = phi i32 [ %i.nc, %.lr.ph ], [ %i.np, %bb.as ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !29
  %.not53 = icmp eq i32 %i.nk, 0
  br i1 %.not53, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.nl = load ptr, ptr %i.nh, align 8, !tbaa !163
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !24
  %i.no = fcmp une double %i.nn, 0.000000e+00
  br i1 %i.no, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 1, ptr %i.nj, align 4, !tbaa !29
  %.pre110 = load i32, ptr %i.ar, align 8, !tbaa !87
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.np = phi i32 [ %i.ni, %bb.ap ], [ %i.ni, %bb.aq ], [ %.pre110, %bb.ar ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nq = sext i32 %i.np to i64
  %i.nr = icmp slt i64 %indvars.iv.next, %i.nq
  br i1 %i.nr, label %bb.ap, label %._crit_edge

._crit_edge.thread:                               ; preds = %IDARootfind.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !350
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 1944
  store double %i.nt, ptr %i.nu, align 8, !tbaa !178
  br i1 %i.nd, label %IDARootfind.exit.thread, label %bb.at

._crit_edge:                                      ; preds = %bb.as
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !350
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 1944
  store double %i.nw, ptr %i.nx, align 8, !tbaa !178
  %i.ny = icmp sgt i32 %i.np, 0
  br i1 %i.ny, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %._crit_edge
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !163 ; 7 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.np to i64   ; 5 uses
  %min.iters.check230 = icmp ult i32 %i.np, 8
  %i.od = ptrtoaddr ptr %i.oc to i64
  %i.oe = ptrtoaddr ptr %i.oa to i64
  %i.of = sub i64 %i.oe, %i.od
  %diff.check232 = icmp ugt i64 %i.of, -32
  %or.cond256 = select i1 %min.iters.check230, i1 true, i1 %diff.check232
  br i1 %or.cond256, label %scalar.ph229.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %.lr.ph78
  %n.vec234 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next239, %vector.body235 ] ; 3 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %index236 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load237.a = load <2 x double>, ptr %i.og, align 8, !tbaa !24
  %wide.load238 = load <2 x double>, ptr %i.oh, align 8, !tbaa !24
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %index236 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store <2 x double> %wide.load237.a, ptr %i.oi, align 8, !tbaa !24
  store <2 x double> %wide.load238, ptr %i.oj, align 8, !tbaa !24
  %index.next239 = add nuw i64 %index236, 4       ; 2 uses
  %i.ok = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.ok, label %middle.block240, label %vector.body235, !llvm.loop !346

middle.block240:                                  ; preds = %vector.body235
  %cmp.n241 = icmp eq i64 %n.vec234, %wide.trip.count
  br i1 %cmp.n241, label %._crit_edge79, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.lr.ph78, %middle.block240
  %indvars.iv101.ph = phi i64 [ 0, %.lr.ph78 ], [ %n.vec234, %middle.block240 ] ; 3 uses
  %xtraiter289 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %scalar.ph229.prol.loopexit, label %scalar.ph229.prol

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader, %scalar.ph229.prol
  %indvars.iv101.prol = phi i64 [ %indvars.iv.next102.prol, %scalar.ph229.prol ], [ %indvars.iv101.ph, %scalar.ph229.preheader ] ; 3 uses
end_hunk_0
