inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@getmetrics:bb.a
  store i32 %.18831213, ptr %i.jx, align 4, !tbaa !57
  br label %._crit_edge1191

._crit_edge1191:                                  ; preds = %bb.z, %bb.ac, %._crit_edge1191.thread, %._crit_edge
  %.promoted12101219 = phi i32 [ %.promoted12101220, %._crit_edge ], [ %i.ko, %._crit_edge1191.thread ], [ %.promoted12101220, %bb.ac ], [ %.promoted12101220, %bb.z ] ; 2 uses
  %i.mi = phi i32 [ %i.kj, %._crit_edge ], [ %i.ko, %._crit_edge1191.thread ], [ %i.kj, %bb.ac ], [ %i.kj, %bb.z ]
  %i.mj = icmp ugt i32 %i.ks, %i.ki
  br i1 %i.mj, label %.preheader1147, label %._crit_edge1197

.preheader1147:                                   ; preds = %._crit_edge1191
  br i1 %.not1442, label %._crit_edge1197.thread, label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.preheader1147
  %i.mk = add i32 %i.h, %indvars1532              ; 2 uses
  %i.ml = load i32, ptr %i.av, align 4, !tbaa !57 ; 2 uses
  %i.mm = icmp ugt i32 %i.mk, %i.ml
  %i.mn = add i32 %i.ml, %i.h
  %i.mo = zext i32 %i.mn to i64
  %i.mp = icmp samesign ult i64 %indvars.iv1530, %i.mo
  %or.cond998 = and i1 %i.mm, %i.mp
  br i1 %or.cond998, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph1196
  %i.mq = load i32, ptr %i.aw, align 4, !tbaa !57 ; 2 uses
  %i.mr = icmp ugt i32 %i.kg, %i.mq
  %i.ms = add i32 %i.mq, %i.h
  %i.mt = icmp ult i32 %.18831213, %i.ms
  %or.cond1001 = and i1 %i.mr, %i.mt
  br i1 %or.cond1001, label %._crit_edge1197, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1196, %bb.ad
  br i1 %exitcond1524.not, label %._crit_edge1197.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mu = load i32, ptr %i.bd, align 4, !tbaa !57 ; 2 uses
  %i.mv = icmp ugt i32 %i.mk, %i.mu
  %i.mw = add i32 %i.mu, %i.h
  %i.mx = zext i32 %i.mw to i64
  %i.my = icmp samesign ult i64 %indvars.iv1530, %i.mx
  %or.cond998.1 = and i1 %i.mv, %i.my
  br i1 %or.cond998.1, label %bb.ag, label %._crit_edge1197.thread

bb.ag:                                            ; preds = %bb.af
  %i.mz = load i32, ptr %i.be, align 4, !tbaa !57 ; 2 uses
  %i.na = icmp ugt i32 %i.kg, %i.mz
  %i.nb = add i32 %i.mz, %i.h
  %i.nc = icmp ult i32 %.18831213, %i.nb
  %or.cond1001.1 = and i1 %i.na, %i.nc
  br i1 %or.cond1001.1, label %._crit_edge1197, label %._crit_edge1197.thread

._crit_edge1197.thread:                           ; preds = %bb.ae, %bb.ag, %bb.af, %.preheader1147
  store i32 %i.ks, ptr %i.jy, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.jz, align 4, !tbaa !57
  store i32 %.18831213, ptr %i.ka, align 4, !tbaa !57
  br label %._crit_edge1197

._crit_edge1197:                                  ; preds = %bb.ad, %bb.ag, %._crit_edge1197.thread, %._crit_edge1191
  %.promoted12111223 = phi i32 [ %.promoted12111224, %._crit_edge1191 ], [ %i.ks, %._crit_edge1197.thread ], [ %.promoted12111224, %bb.ag ], [ %.promoted12111224, %bb.ad ] ; 2 uses
  %i.nd = phi i32 [ %i.ki, %._crit_edge1191 ], [ %i.ks, %._crit_edge1197.thread ], [ %i.ki, %bb.ag ], [ %i.ki, %bb.ad ]
  %i.ne = icmp ult i32 %i.ks, %i.kh
  br i1 %i.ne, label %.preheader1146, label %bb.am

.preheader1146:                                   ; preds = %._crit_edge1197
  br i1 %.not1442, label %._crit_edge1203.thread, label %.lr.ph1202

.lr.ph1202:                                       ; preds = %.preheader1146
  %i.nf = add i32 %i.h, %indvars1532              ; 2 uses
  %i.ng = load i32, ptr %i.ax, align 4, !tbaa !57 ; 2 uses
  %i.nh = icmp ugt i32 %i.nf, %i.ng
  %i.ni = add i32 %i.ng, %i.h
  %i.nj = zext i32 %i.ni to i64
  %i.nk = icmp samesign ult i64 %indvars.iv1530, %i.nj
  %or.cond1004 = and i1 %i.nh, %i.nk
  br i1 %or.cond1004, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1202
  %i.nl = load i32, ptr %i.ay, align 4, !tbaa !57 ; 2 uses
  %i.nm = icmp ugt i32 %i.kg, %i.nl
  %i.nn = add i32 %i.nl, %i.h
  %i.no = icmp ult i32 %.18831213, %i.nn
  %or.cond1007 = and i1 %i.nm, %i.no              ; 2 uses
  %brmerge = or i1 %or.cond1007, %exitcond1529.not
  %.mux = select i1 %or.cond1007, i64 0, i64 %indvars.iv1536
  br i1 %brmerge, label %._crit_edge1203, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1202
  br i1 %exitcond1529.not, label %._crit_edge1203, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.np = load i32, ptr %i.bf, align 4, !tbaa !57 ; 2 uses
  %i.nq = icmp ugt i32 %i.nf, %i.np
  %i.nr = add i32 %i.np, %i.h
  %i.ns = zext i32 %i.nr to i64
  %i.nt = icmp samesign ult i64 %indvars.iv1530, %i.ns
  %or.cond1004.1 = and i1 %i.nq, %i.nt
  br i1 %or.cond1004.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nu = load i32, ptr %i.bg, align 4, !tbaa !57 ; 2 uses
  %i.nv = icmp ugt i32 %i.kg, %i.nu
  %i.nw = add i32 %i.nu, %i.h
  %i.nx = icmp ult i32 %.18831213, %i.nw
  %or.cond1007.1 = and i1 %i.nv, %i.nx
  br i1 %or.cond1007.1, label %._crit_edge1203, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br label %._crit_edge1203

._crit_edge1203:                                  ; preds = %bb.ah, %bb.al, %bb.ak, %bb.ai
  %.3916.lcssa.ph.in = phi i64 [ %indvars.iv1536, %bb.ai ], [ %.mux, %bb.ah ], [ 1, %bb.ak ], [ %indvars.iv1536, %bb.al ]
  %i.ny = and i64 %.3916.lcssa.ph.in, 4294967295
  %i.nz = icmp eq i64 %i.ny, %indvars.iv1536
  br i1 %i.nz, label %._crit_edge1203.thread, label %bb.am

._crit_edge1203.thread:                           ; preds = %.preheader1146, %._crit_edge1203
  store i32 %i.ks, ptr %i.js, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.kb, align 4, !tbaa !57
  store i32 %.18831213, ptr %i.kc, align 4, !tbaa !57
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1203, %._crit_edge1203.thread, %._crit_edge1197
  %.promoted12121227 = phi i32 [ %.promoted12121228, %._crit_edge1203 ], [ %i.ks, %._crit_edge1203.thread ], [ %.promoted12121228, %._crit_edge1197 ] ; 2 uses
  %i.oa = phi i32 [ %i.kh, %._crit_edge1203 ], [ %i.ks, %._crit_edge1203.thread ], [ %i.kh, %._crit_edge1197 ]
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1 ; 2 uses
  %exitcond1534.not = icmp eq i64 %indvars.iv.next1531, %wide.trip.count1533
  br i1 %exitcond1534.not, label %._crit_edge1209, label %bb.u

._crit_edge1209:                                  ; preds = %bb.am
  %i.ob = add nuw i32 %.18831213, 1               ; 2 uses
  %exitcond1535.not = icmp eq i32 %i.ob, %umax
  br i1 %exitcond1535.not, label %._crit_edge1214.split, label %.preheader1150

._crit_edge1214.split:                            ; preds = %._crit_edge1209, %.preheader1150.lr.ph
  %indvars.iv.next1537 = add nuw nsw i64 %indvars.iv1536, 1 ; 2 uses
  %exitcond1539.not = icmp eq i64 %indvars.iv.next1537, 3
  br i1 %exitcond1539.not, label %.preheader1145, label %.preheader1150.lr.ph

bb.an:                                            ; preds = %.preheader1145
  %i.oc = load i32, ptr %i.r, align 8, !tbaa !129
  %i.od = udiv i32 %i.oc, %i.jm
  store i32 %i.od, ptr %i.r, align 8, !tbaa !129
  %i.oe = load i32, ptr %i.s, align 4, !tbaa !130
  %i.of = udiv i32 %i.oe, %i.jm
  store i32 %i.of, ptr %i.s, align 4, !tbaa !130
  %i.og = load i32, ptr %i.t, align 8, !tbaa !131
  %i.oh = udiv i32 %i.og, %i.jm
  br label %bb.ap

bb.ao:                                            ; preds = %.preheader1145
  store i32 0, ptr %i.r, align 8, !tbaa !129
  store i32 0, ptr %i.s, align 4, !tbaa !130
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %storemerge = phi i32 [ 0, %bb.ao ], [ %i.oh, %bb.an ]
  %.sink = phi i32 [ 0, %bb.ao ], [ %i.jp, %bb.an ]
  %.0919 = phi i64 [ 6, %bb.ao ], [ 3, %bb.an ]
  store i32 %storemerge, ptr %i.t, align 8, !tbaa !131
  store i32 %.sink, ptr %i.q, align 4, !tbaa !124
  %i.oi = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 11 uses
  %.not965 = icmp eq ptr %i.oi, null
  br i1 %.not965, label %bb.aq, label %.preheader1143

bb.aq:                                            ; preds = %bb.ap
  %i.oj = mul nuw nsw i32 %0, %0
  %i.ok = shl nuw nsw i32 %i.oj, 3
  %i.ol = zext nneg i32 %i.ok to i64
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.ol) #13
  tail call void @free(ptr noundef %i.l) #13
  br label %bb.cv

.preheader1143:                                   ; preds = %bb.ap, %bb.bj
  %indvars.iv1549 = phi i64 [ %indvars.iv.next1550, %bb.bj ], [ 0, %bb.ap ] ; 2 uses
  %i.om = mul nuw nsw i64 %indvars.iv1549, %i.i
  br label %bb.ar

.preheader1141.us.preheader:                      ; preds = %bb.bj
  %i.on = add nsw i32 %0, -1                      ; 7 uses
  %i.oo = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1562 = zext i32 %i.on to i64    ; 3 uses
  %i.op = add nsw i64 %wide.trip.count1562, -1    ; 5 uses
  %n.vec = and i64 %i.op, -2                      ; 2 uses
  %i.oq = or i64 %i.op, 1
  %cmp.n = icmp eq i64 %i.op, %n.vec
  br label %.preheader1141.us

.preheader1141.us:                                ; preds = %.preheader1141.us.preheader, %._crit_edge1238.us
  %indvars.iv1559 = phi i64 [ 1, %.preheader1141.us.preheader ], [ %indvars.iv.next1560, %._crit_edge1238.us ] ; 3 uses
  %.29051240.us = phi i32 [ 0, %.preheader1141.us.preheader ], [ %spec.select.us.lcssa, %._crit_edge1238.us ]
  %i.or = add nsw i64 %indvars.iv1559, -1
  %i.os = mul nuw nsw i64 %i.or, %i.oo            ; 3 uses
  %i.ot = mul nuw nsw i64 %indvars.iv1559, %i.oo  ; 3 uses
  %indvars.iv.next1560 = add nuw nsw i64 %indvars.iv1559, 1 ; 3 uses
  %i.ou = mul nuw nsw i64 %indvars.iv.next1560, %i.oo ; 3 uses
  %invariant.gep1862 = getelementptr [8 x i8], ptr %i.oi, i64 %i.os ; 2 uses
  %invariant.gep1864 = getelementptr [8 x i8], ptr %i.oi, i64 %i.ot ; 2 uses
  %invariant.gep1866 = getelementptr [8 x i8], ptr %i.oi, i64 %i.ou ; 2 uses
  %invariant.gep1868 = getelementptr [8 x i8], ptr %i.oi, i64 %i.os ; 2 uses
  %invariant.gep1870 = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ot ; 2 uses
  %invariant.gep1872 = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ou ; 2 uses
  %invariant.gep1874 = getelementptr [8 x i8], ptr %i.oi, i64 %i.os ; 2 uses
  %invariant.gep1876 = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ou ; 2 uses
  %invariant.gep1878 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ot ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.29051240.us, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader1141.us
  %index = phi i64 [ 0, %.preheader1141.us ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %.preheader1141.us ], [ %i.pw, %vector.body ]
  %i.ov = or disjoint i64 %index, 1               ; 3 uses
  %i.ow = getelementptr [8 x i8], ptr %invariant.gep1862, i64 %index
  %wide.load = load <2 x double>, ptr %i.ow, align 8, !tbaa !132 ; 2 uses
  %i.ox = getelementptr [8 x i8], ptr %invariant.gep1864, i64 %index
  %wide.load22 = load <2 x double>, ptr %i.ox, align 8, !tbaa !132
  %i.oy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load22, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.oz = getelementptr [8 x i8], ptr %invariant.gep1866, i64 %index
  %wide.load23 = load <2 x double>, ptr %i.oz, align 8, !tbaa !132 ; 2 uses
  %i.pa = fadd <2 x double> %i.oy, %wide.load23
  %i.pb = add nuw nsw i64 %index, 2               ; 3 uses
  %i.pc = getelementptr [8 x i8], ptr %invariant.gep1868, i64 %i.pb
  %wide.load24 = load <2 x double>, ptr %i.pc, align 8, !tbaa !132 ; 2 uses
  %i.pd = fsub <2 x double> %i.pa, %wide.load24
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1870, i64 %i.pb
  %wide.load25 = load <2 x double>, ptr %i.pe, align 8, !tbaa !132
  %i.pf = fneg <2 x double> %wide.load25
  %i.pg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pd)
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1872, i64 %i.pb
  %wide.load26 = load <2 x double>, ptr %i.ph, align 8, !tbaa !132 ; 2 uses
  %i.pi = fsub <2 x double> %i.pg, %wide.load26   ; 2 uses
  %i.pj = getelementptr [8 x i8], ptr %invariant.gep1874, i64 %i.ov
  %wide.load27 = load <2 x double>, ptr %i.pj, align 8, !tbaa !132
  %i.pk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load27, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.pl = fadd <2 x double> %wide.load24, %i.pk
  %i.pm = fsub <2 x double> %i.pl, %wide.load23
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1876, i64 %i.ov
  %wide.load28 = load <2 x double>, ptr %i.pn, align 8, !tbaa !132
  %i.po = fneg <2 x double> %wide.load28
  %i.pp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.po, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pm)
  %i.pq = fsub <2 x double> %i.pp, %wide.load26   ; 2 uses
  %i.pr = fmul <2 x double> %i.pq, %i.pq
  %i.ps = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> %i.pi, <2 x double> %i.pr)
  %i.pt = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ps)
  %i.pu = fptosi <2 x double> %i.pt to <2 x i32>  ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1878, i64 %i.ov
  store <2 x i32> %i.pu, ptr %i.pv, align 4, !tbaa !57
  %i.pw = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi, <2 x i32> %i.pu) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.px = icmp eq i64 %index.next, %n.vec
  br i1 %i.px, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %i.py = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %i.pw) ; 2 uses
  br i1 %cmp.n, label %._crit_edge1238.us, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv1554 = phi i64 [ %indvars.iv.next1555, %scalar.ph ], [ %i.oq, %middle.block ] ; 5 uses
  %.39061235.us = phi i32 [ %spec.select.us, %scalar.ph ], [ %i.py, %middle.block ]
  %i.pz = add nsw i64 %indvars.iv1554, -1         ; 3 uses
  %gep1863 = getelementptr [8 x i8], ptr %invariant.gep1862, i64 %i.pz
  %4 = load double, ptr %gep1863, align 8, !tbaa !132
  %gep1865 = getelementptr [8 x i8], ptr %invariant.gep1864, i64 %i.pz
  %i.qa = load double, ptr %gep1865, align 8, !tbaa !132
  %gep1867 = getelementptr [8 x i8], ptr %invariant.gep1866, i64 %i.pz
  %i.qb = load double, ptr %gep1867, align 8, !tbaa !132 ; 2 uses
  %indvars.iv.next1555 = add nuw nsw i64 %indvars.iv1554, 1 ; 5 uses
  %gep1869 = getelementptr [8 x i8], ptr %invariant.gep1868, i64 %indvars.iv.next1555
  %gep1871 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1870, i64 %indvars.iv.next1555
  %i.qc = load double, ptr %gep1871, align 8, !tbaa !132
  %i.qd = fneg double %i.qc
  %gep1873 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1872, i64 %indvars.iv.next1555
  %i.qe = load double, ptr %gep1873, align 8, !tbaa !132 ; 2 uses
  %gep1875 = getelementptr [8 x i8], ptr %invariant.gep1874, i64 %indvars.iv1554
  %i.qf = load <2 x double>, ptr %gep1875, align 8, !tbaa !132 ; 2 uses
  %5 = load double, ptr %gep1869, align 8, !tbaa !132
  %6 = shufflevector <2 x double> %i.qf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %7 = insertelement <2 x double> %6, double %i.qa, i64 0
  %8 = insertelement <2 x double> poison, double %4, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> splat (double 2.000000e+00), <2 x double> %9)
  %i.qg = insertelement <2 x double> %i.qf, double %i.qb, i64 0
  %11 = fadd <2 x double> %10, %i.qg
  %12 = insertelement <2 x double> poison, double %5, i64 0
  %13 = insertelement <2 x double> %12, double %i.qb, i64 1
  %14 = fsub <2 x double> %11, %13                ; 2 uses
  %i.qh = extractelement <2 x double> %14, i64 0
  %15 = tail call double @llvm.fmuladd.f64(double %i.qd, double 2.000000e+00, double %i.qh)
  %i.qi = fsub double %15, %i.qe                  ; 2 uses
  %gep1877 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1876, i64 %indvars.iv1554
  %i.qj = load double, ptr %gep1877, align 8, !tbaa !132
  %i.qk = fneg double %i.qj
  %16 = extractelement <2 x double> %14, i64 1
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.qk, double 2.000000e+00, double %16)
  %i.qm = fsub double %i.ql, %i.qe                ; 2 uses
  %i.qn = fmul double %i.qm, %i.qm
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qi, double %i.qi, double %i.qn)
  %sqrt1102.us = tail call double @llvm.sqrt.f64(double %i.qo)
  %i.qp = fptosi double %sqrt1102.us to i32       ; 2 uses
  %gep1879 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1878, i64 %indvars.iv1554
  store i32 %i.qp, ptr %gep1879, align 4, !tbaa !57
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.39061235.us, i32 %i.qp) ; 2 uses
  %exitcond1558.not = icmp eq i64 %indvars.iv.next1555, %wide.trip.count1562
  br i1 %exitcond1558.not, label %._crit_edge1238.us, label %scalar.ph, !llvm.loop !135

._crit_edge1238.us:                               ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i32 [ %i.py, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 3 uses
  %exitcond1563.not = icmp eq i64 %indvars.iv.next1560, %wide.trip.count1562
  br i1 %exitcond1563.not, label %._crit_edge1242, label %.preheader1141.us

bb.ar:                                            ; preds = %.preheader1143, %labdiff.exit
  %indvars.iv1544 = phi i64 [ 0, %.preheader1143 ], [ %indvars.iv.next1545, %labdiff.exit ] ; 2 uses
  %i.qq = add nuw nsw i64 %indvars.iv1544, %i.om  ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !57 ; 3 uses
  %i.qt = lshr i32 %i.qs, 16
  %i.qu = and i32 %i.qt, 255
  %i.qv = lshr i32 %i.qs, 8
  %i.qw = uitofp nneg i32 %i.qu to double
  %i.qx = and i32 %i.qs, 255
  %i.qy = and i32 %i.qv, 255
  %i.qz = uitofp nneg i32 %i.qx to double
  %i.ra = uitofp nneg i32 %i.qy to double
  %i.rb = fdiv double %i.qw, 2.550000e+02         ; 3 uses
  %i.rc = insertelement <2 x double> poison, double %i.ra, i64 0
  %i.rd = insertelement <2 x double> %i.rc, double %i.qz, i64 1
  %i.re = fdiv <2 x double> %i.rd, splat (double 2.550000e+02) ; 2 uses
  %i.rf = fcmp ogt double %i.rb, f0x3FA4B5DCC0000000
  br i1 %i.rf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rg = fadd double %i.rb, f0x3FAC28F5C0000000
  %i.rh = fdiv double %i.rg, f0x3FF0E147A0000000
  %i.ri = tail call double @pow(double noundef %i.rh, double noundef f0x4003333340000000) #13
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.rj = fdiv nnan double %i.rb, f0x4029D70A40000000
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.046.i.i = phi double [ %i.ri, %bb.as ], [ %i.rj, %bb.at ]
  %i.rk = extractelement <2 x double> %i.re, i64 0 ; 3 uses
  %i.rl = fcmp ogt double %i.rk, f0x3FA4B5DCC0000000
  br i1 %i.rl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.rm = fadd double %i.rk, f0x3FAC28F5C0000000
  %i.rn = fdiv double %i.rm, f0x3FF0E147A0000000
  %i.ro = tail call double @pow(double noundef %i.rn, double noundef f0x4003333340000000) #13
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.rp = fdiv nnan double %i.rk, f0x4029D70A40000000
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.047.i.i = phi double [ %i.ro, %bb.av ], [ %i.rp, %bb.aw ]
  %i.rq = extractelement <2 x double> %i.re, i64 1 ; 3 uses
  %i.rr = fcmp ogt double %i.rq, f0x3FA4B5DCC0000000
  br i1 %i.rr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.rs = fadd double %i.rq, f0x3FAC28F5C0000000
  %i.rt = fdiv double %i.rs, f0x3FF0E147A0000000
  %i.ru = tail call double @pow(double noundef %i.rt, double noundef f0x4003333340000000) #13
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.rv = fdiv nnan double %i.rq, f0x4029D70A40000000
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.048.i.i = phi double [ %i.ru, %bb.ay ], [ %i.rv, %bb.az ]
  %i.rw = fmul double %.046.i.i, 1.000000e+02     ; 2 uses
  %i.rx = fmul double %.047.i.i, 1.000000e+02     ; 2 uses
  %i.ry = fmul double %.048.i.i, 1.000000e+02     ; 2 uses
  %i.rz = fmul double %i.rx, f0x3FBE83E420000000
  %i.sa = tail call double @llvm.fmuladd.f64(double %i.rw, double f0x3F93C36120000000, double %i.rz)
  %i.sb = tail call double @llvm.fmuladd.f64(double %i.ry, double f0x3FEE6A7F00000000, double %i.sa)
  %i.sc = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = fmul <2 x double> %i.sd, <double f0x3FD6E2EB20000000, double f0x3FE6E2EB20000000>
  %i.sf = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.sg = shufflevector <2 x double> %i.sf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sg, <2 x double> <double f0x3FDA64C300000000, double f0x3FCB367A00000000>, <2 x double> %i.se)
  %i.si = insertelement <2 x double> poison, double %i.ry, i64 0
  %i.sj = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> <double f0x3FC71A9FC0000000, double f0x3FB27BB300000000>, <2 x double> %i.sh)
  %i.sl = fdiv <2 x double> %i.sk, <double f0x4057C30200000000, double 1.000000e+02> ; 2 uses
  %i.sm = fdiv double %i.sb, f0x405B388320000000  ; 3 uses
  %i.sn = extractelement <2 x double> %i.sl, i64 0 ; 3 uses
  %i.so = fcmp ogt double %i.sn, f0x3F82231840000000
  br i1 %i.so, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sp = tail call double @pow(double noundef %i.sn, double noundef f0x3FD5555560000000) #13
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.sq = tail call double @llvm.fmuladd.f64(double %i.sn, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.045.i.i = phi double [ %i.sp, %bb.bb ], [ %i.sq, %bb.bc ]
  %i.sr = extractelement <2 x double> %i.sl, i64 1 ; 3 uses
  %i.ss = fcmp ogt double %i.sr, f0x3F82231840000000
  br i1 %i.ss, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.st = tail call double @pow(double noundef %i.sr, double noundef f0x3FD5555560000000) #13
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.su = tail call double @llvm.fmuladd.f64(double %i.sr, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.044.i.i = phi double [ %i.st, %bb.be ], [ %i.su, %bb.bf ] ; 3 uses
  %i.sv = fcmp ogt double %i.sm, f0x3F82231840000000
  br i1 %i.sv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.sw = tail call double @pow(double noundef %i.sm, double noundef f0x3FD5555560000000) #13
  br label %labdiff.exit

bb.bi:                                            ; preds = %bb.bg
  %i.sx = tail call double @llvm.fmuladd.f64(double %i.sm, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %labdiff.exit

labdiff.exit:                                     ; preds = %bb.bh, %bb.bi
  %.0.i.i = phi double [ %i.sw, %bb.bh ], [ %i.sx, %bb.bi ]
  %i.sy = tail call double @llvm.fmuladd.f64(double %.044.i.i, double 1.160000e+02, double -1.600000e+01)
  %i.sz = fsub double %.045.i.i, %.044.i.i
  %i.ta = fmul double %i.sz, 5.000000e+02
  %i.tb = fsub double %.044.i.i, %.0.i.i
  %i.tc = fmul double %i.tb, 2.000000e+02
  %i.td = fsub double f0x404A98AD00000000, %i.sy
  %i.te = tail call double @pow(double noundef %i.td, double noundef 2.000000e+00) #13
  %i.tf = fsub double f0x3F69BD7300000000, %i.ta
  %i.tg = tail call double @pow(double noundef %i.tf, double noundef 2.000000e+00) #13
  %i.th = fadd double %i.te, %i.tg
  %i.ti = fsub double f0xBF796D20A0000000, %i.tc
  %i.tj = tail call double @pow(double noundef %i.ti, double noundef 2.000000e+00) #13
  %i.tk = fadd double %i.th, %i.tj
  %i.tl = tail call double @sqrt(double noundef %i.tk) #13
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.qq
  store double %i.tl, ptr %i.tm, align 8, !tbaa !132
  %indvars.iv.next1545 = add nuw nsw i64 %indvars.iv1544, 1 ; 2 uses
  %exitcond1548.not = icmp eq i64 %indvars.iv.next1545, %i.i
  br i1 %exitcond1548.not, label %bb.bj, label %bb.ar

bb.bj:                                            ; preds = %labdiff.exit
  %indvars.iv.next1550 = add nuw nsw i64 %indvars.iv1549, 1 ; 2 uses
  %exitcond1553.not = icmp eq i64 %indvars.iv.next1550, %i.i
  br i1 %exitcond1553.not, label %.preheader1141.us.preheader, label %.preheader1143

._crit_edge1242:                                  ; preds = %._crit_edge1238.us
  tail call void @free(ptr noundef nonnull %i.oi) #13
  %.not966.not = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %.not966.not, label %.loopexit1140, label %.preheader1138.preheader

.preheader1138.preheader:                         ; preds = %._crit_edge1242
  %wide.trip.count1572 = zext nneg i32 %i.on to i64 ; 2 uses
  br label %.preheader1138

.preheader1138:                                   ; preds = %.preheader1138.preheader, %._crit_edge1248
  %indvars.iv1569 = phi i64 [ 1, %.preheader1138.preheader ], [ %indvars.iv.next1570, %._crit_edge1248 ] ; 2 uses
  %i.tn = mul nuw nsw i64 %indvars.iv1569, %i.i
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader1138, %bb.bk
  %indvars.iv1564 = phi i64 [ 1, %.preheader1138 ], [ %indvars.iv.next1565, %bb.bk ] ; 2 uses
  %i.to = add nuw nsw i64 %indvars.iv1564, %i.tn  ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !57
  %i.tr = mul i32 %i.tq, 255
  %i.ts = udiv i32 %i.tr, %spec.select.us.lcssa   ; 3 uses
  %i.tt = shl i32 %i.ts, 8
  %i.tu = shl i32 %i.ts, 16
  %i.tv = or i32 %i.tu, %i.tt
  %i.tw = or i32 %i.tv, %i.ts
  %i.tx = or i32 %i.tw, -16777216
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.to
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !57
  %indvars.iv.next1565 = add nuw nsw i64 %indvars.iv1564, 1 ; 2 uses
  %exitcond1568.not = icmp eq i64 %indvars.iv.next1565, %wide.trip.count1572
  br i1 %exitcond1568.not, label %._crit_edge1248, label %bb.bk

._crit_edge1248:                                  ; preds = %bb.bk
  %indvars.iv.next1570 = add nuw nsw i64 %indvars.iv1569, 1 ; 2 uses
  %exitcond1573.not = icmp eq i64 %indvars.iv.next1570, %wide.trip.count1572
  br i1 %exitcond1573.not, label %.loopexit1140, label %.preheader1138

.loopexit1140:                                    ; preds = %._crit_edge1248, %._crit_edge1242
  %i.tz = mul nuw nsw i32 %i.on, %0
  %i.ua = zext nneg i32 %i.tz to i64
end_hunk_0
