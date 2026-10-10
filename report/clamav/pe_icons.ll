Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@getmetrics:bb.a
  br i1 %exitcond1549.not, label %._crit_edge1221.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mf = load i32, ptr %i.bb, align 4, !tbaa !56 ; 2 uses
  %i.mg = icmp ugt i32 %i.lv, %i.mf
  %i.mh = add i32 %i.mf, %i.h
  %i.mi = zext i32 %i.mh to i64
  %i.mj = icmp samesign ult i64 %indvars.iv1560, %i.mi
  %or.cond992.1 = and i1 %i.mg, %i.mj
  br i1 %or.cond992.1, label %bb.ac, label %._crit_edge1221.thread

bb.ac:                                            ; preds = %bb.ab
  %i.mk = load i32, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %i.ml = icmp ugt i32 %i.km, %i.mk
  %i.mm = add i32 %i.mk, %i.h
  %i.mn = icmp ult i32 %.18861243, %i.mm
  %or.cond995.1 = and i1 %i.ml, %i.mn
  br i1 %or.cond995.1, label %._crit_edge1221, label %._crit_edge1221.thread

._crit_edge1221.thread:                           ; preds = %bb.aa, %bb.ac, %bb.ab, %.preheader1178
  store i32 %i.ku, ptr %i.jx, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.kc, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.kd, align 4, !tbaa !56
  br label %._crit_edge1221

._crit_edge1221:                                  ; preds = %bb.z, %bb.ac, %._crit_edge1221.thread, %._crit_edge
  %.promoted12401249 = phi i32 [ %.promoted12401250, %._crit_edge ], [ %i.ku, %._crit_edge1221.thread ], [ %.promoted12401250, %bb.ac ], [ %.promoted12401250, %bb.z ] ; 2 uses
  %i.mo = phi i32 [ %i.kp, %._crit_edge ], [ %i.ku, %._crit_edge1221.thread ], [ %i.kp, %bb.ac ], [ %i.kp, %bb.z ]
  %i.mp = icmp ugt i32 %i.ky, %i.ko
  br i1 %i.mp, label %.preheader1177, label %._crit_edge1227

.preheader1177:                                   ; preds = %._crit_edge1221
  br i1 %.not1472, label %._crit_edge1227.thread, label %.lr.ph1226

.lr.ph1226:                                       ; preds = %.preheader1177
  %i.mq = add i32 %i.h, %indvars1562              ; 2 uses
  %i.mr = load i32, ptr %i.av, align 4, !tbaa !56 ; 2 uses
  %i.ms = icmp ugt i32 %i.mq, %i.mr
  %i.mt = add i32 %i.mr, %i.h
  %i.mu = zext i32 %i.mt to i64
  %i.mv = icmp samesign ult i64 %indvars.iv1560, %i.mu
  %or.cond998 = and i1 %i.ms, %i.mv
  br i1 %or.cond998, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph1226
  %i.mw = load i32, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %i.mx = icmp ugt i32 %i.km, %i.mw
  %i.my = add i32 %i.mw, %i.h
  %i.mz = icmp ult i32 %.18861243, %i.my
  %or.cond1001 = and i1 %i.mx, %i.mz
  br i1 %or.cond1001, label %._crit_edge1227, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1226, %bb.ad
  br i1 %exitcond1554.not, label %._crit_edge1227.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.na = load i32, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.nb = icmp ugt i32 %i.mq, %i.na
  %i.nc = add i32 %i.na, %i.h
  %i.nd = zext i32 %i.nc to i64
  %i.ne = icmp samesign ult i64 %indvars.iv1560, %i.nd
  %or.cond998.1 = and i1 %i.nb, %i.ne
  br i1 %or.cond998.1, label %bb.ag, label %._crit_edge1227.thread

bb.ag:                                            ; preds = %bb.af
  %i.nf = load i32, ptr %i.be, align 4, !tbaa !56 ; 2 uses
  %i.ng = icmp ugt i32 %i.km, %i.nf
  %i.nh = add i32 %i.nf, %i.h
  %i.ni = icmp ult i32 %.18861243, %i.nh
  %or.cond1001.1 = and i1 %i.ng, %i.ni
  br i1 %or.cond1001.1, label %._crit_edge1227, label %._crit_edge1227.thread

._crit_edge1227.thread:                           ; preds = %bb.ae, %bb.ag, %bb.af, %.preheader1177
  store i32 %i.ky, ptr %i.ke, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.kf, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.kg, align 4, !tbaa !56
  br label %._crit_edge1227

._crit_edge1227:                                  ; preds = %bb.ad, %bb.ag, %._crit_edge1227.thread, %._crit_edge1221
  %.promoted12411253 = phi i32 [ %.promoted12411254, %._crit_edge1221 ], [ %i.ky, %._crit_edge1227.thread ], [ %.promoted12411254, %bb.ag ], [ %.promoted12411254, %bb.ad ] ; 2 uses
  %i.nj = phi i32 [ %i.ko, %._crit_edge1221 ], [ %i.ky, %._crit_edge1227.thread ], [ %i.ko, %bb.ag ], [ %i.ko, %bb.ad ]
  %i.nk = icmp ult i32 %i.ky, %i.kn
  br i1 %i.nk, label %.preheader1176, label %bb.am

.preheader1176:                                   ; preds = %._crit_edge1227
  br i1 %.not1472, label %._crit_edge1233.thread, label %.lr.ph1232

.lr.ph1232:                                       ; preds = %.preheader1176
  %i.nl = add i32 %i.h, %indvars1562              ; 2 uses
  %i.nm = load i32, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %i.nn = icmp ugt i32 %i.nl, %i.nm
  %i.no = add i32 %i.nm, %i.h
  %i.np = zext i32 %i.no to i64
  %i.nq = icmp samesign ult i64 %indvars.iv1560, %i.np
  %or.cond1004 = and i1 %i.nn, %i.nq
  br i1 %or.cond1004, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1232
  %i.nr = load i32, ptr %i.ay, align 4, !tbaa !56 ; 2 uses
  %i.ns = icmp ugt i32 %i.km, %i.nr
  %i.nt = add i32 %i.nr, %i.h
  %i.nu = icmp ult i32 %.18861243, %i.nt
  %or.cond1007 = and i1 %i.ns, %i.nu              ; 2 uses
  %brmerge = or i1 %or.cond1007, %exitcond1559.not
  %.mux = select i1 %or.cond1007, i64 0, i64 %indvars.iv1566
  br i1 %brmerge, label %._crit_edge1233, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1232
  br i1 %exitcond1559.not, label %._crit_edge1233, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.nv = load i32, ptr %i.bf, align 4, !tbaa !56 ; 2 uses
  %i.nw = icmp ugt i32 %i.nl, %i.nv
  %i.nx = add i32 %i.nv, %i.h
  %i.ny = zext i32 %i.nx to i64
  %i.nz = icmp samesign ult i64 %indvars.iv1560, %i.ny
  %or.cond1004.1 = and i1 %i.nw, %i.nz
  br i1 %or.cond1004.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.oa = load i32, ptr %i.bg, align 8, !tbaa !56 ; 2 uses
  %i.ob = icmp ugt i32 %i.km, %i.oa
  %i.oc = add i32 %i.oa, %i.h
  %i.od = icmp ult i32 %.18861243, %i.oc
  %or.cond1007.1 = and i1 %i.ob, %i.od
  br i1 %or.cond1007.1, label %._crit_edge1233, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br label %._crit_edge1233

._crit_edge1233:                                  ; preds = %bb.ah, %bb.al, %bb.ak, %bb.ai
  %.3909.lcssa.ph.in = phi i64 [ %indvars.iv1566, %bb.ai ], [ %.mux, %bb.ah ], [ 1, %bb.ak ], [ %indvars.iv1566, %bb.al ]
  %i.oe = and i64 %.3909.lcssa.ph.in, 4294967295
  %i.of = icmp eq i64 %i.oe, %indvars.iv1566
  br i1 %i.of, label %._crit_edge1233.thread, label %bb.am

._crit_edge1233.thread:                           ; preds = %.preheader1176, %._crit_edge1233
  store i32 %i.ky, ptr %i.jy, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.kh, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.ki, align 4, !tbaa !56
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1233, %._crit_edge1233.thread, %._crit_edge1227
  %.promoted12421257 = phi i32 [ %.promoted12421258, %._crit_edge1233 ], [ %i.ky, %._crit_edge1233.thread ], [ %.promoted12421258, %._crit_edge1227 ] ; 2 uses
  %i.og = phi i32 [ %i.kn, %._crit_edge1233 ], [ %i.ky, %._crit_edge1233.thread ], [ %i.kn, %._crit_edge1227 ]
  %indvars.iv.next1561 = add nuw nsw i64 %indvars.iv1560, 1 ; 2 uses
  %exitcond1564.not = icmp eq i64 %indvars.iv.next1561, %wide.trip.count1563
  br i1 %exitcond1564.not, label %._crit_edge1239, label %bb.u

._crit_edge1239:                                  ; preds = %bb.am
  %i.oh = add nuw i32 %.18861243, 1               ; 2 uses
  %exitcond1565.not = icmp eq i32 %i.oh, %umax
  br i1 %exitcond1565.not, label %._crit_edge1244.split, label %.preheader1180

._crit_edge1244.split:                            ; preds = %._crit_edge1239, %.preheader1180.lr.ph
  %indvars.iv.next1567 = add nuw nsw i64 %indvars.iv1566, 1 ; 2 uses
  %exitcond1569.not = icmp eq i64 %indvars.iv.next1567, 3
  br i1 %exitcond1569.not, label %.preheader1175, label %.preheader1180.lr.ph

bb.an:                                            ; preds = %.preheader1175
  %i.oi = load i32, ptr %i.r, align 8, !tbaa !138
  %i.oj = udiv i32 %i.oi, %i.js
  store i32 %i.oj, ptr %i.r, align 8, !tbaa !138
  %i.ok = load i32, ptr %i.s, align 4, !tbaa !139
  %i.ol = udiv i32 %i.ok, %i.js
  store i32 %i.ol, ptr %i.s, align 4, !tbaa !139
  %i.om = load i32, ptr %i.t, align 8, !tbaa !140
  %i.on = udiv i32 %i.om, %i.js
  br label %bb.ap

bb.ao:                                            ; preds = %.preheader1175
  store i32 0, ptr %i.r, align 8, !tbaa !138
  store i32 0, ptr %i.s, align 4, !tbaa !139
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %storemerge = phi i32 [ 0, %bb.ao ], [ %i.on, %bb.an ]
  %.sink = phi i32 [ 0, %bb.ao ], [ %i.jv, %bb.an ]
  %.0905 = phi i64 [ 6, %bb.ao ], [ 3, %bb.an ]
  store i32 %storemerge, ptr %i.t, align 8, !tbaa !140
  store i32 %.sink, ptr %i.q, align 4, !tbaa !80
  %i.oo = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 11 uses
  %.not965 = icmp eq ptr %i.oo, null
  br i1 %.not965, label %bb.aq, label %.preheader1173

bb.aq:                                            ; preds = %bb.ap
  %i.op = shl nuw nsw i32 %i.ju, 3
  %i.oq = zext nneg i32 %i.op to i64
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.oq) #13
  tail call void @free(ptr noundef %i.l) #13
  br label %bb.cv

.preheader1173:                                   ; preds = %bb.ap, %bb.bj
  %indvars.iv1579 = phi i64 [ %indvars.iv.next1580, %bb.bj ], [ 0, %bb.ap ] ; 2 uses
  %i.or = mul nuw nsw i64 %indvars.iv1579, %i.i
  br label %bb.ar

.preheader1171.us.preheader:                      ; preds = %bb.bj
  %i.os = add nsw i32 %0, -1                      ; 8 uses
  %i.ot = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1592 = zext i32 %i.os to i64    ; 4 uses
  %i.ou = add nsw i64 %wide.trip.count1592, -1    ; 5 uses
  %n.vec = and i64 %i.ou, -2                      ; 2 uses
  %i.ov = or i64 %i.ou, 1
  %cmp.n = icmp eq i64 %i.ou, %n.vec
  br label %.preheader1171.us

.preheader1171.us:                                ; preds = %.preheader1171.us.preheader, %._crit_edge1268.us
  %indvars.iv1589 = phi i64 [ 1, %.preheader1171.us.preheader ], [ %indvars.iv.next1590, %._crit_edge1268.us ] ; 3 uses
  %.29141270.us = phi i32 [ 0, %.preheader1171.us.preheader ], [ %spec.select.us.lcssa, %._crit_edge1268.us ]
  %i.ow = add nsw i64 %indvars.iv1589, -1
  %i.ox = mul nuw nsw i64 %i.ow, %i.ot            ; 3 uses
  %i.oy = mul nuw nsw i64 %indvars.iv1589, %i.ot  ; 3 uses
  %indvars.iv.next1590 = add nuw nsw i64 %indvars.iv1589, 1 ; 3 uses
  %i.oz = mul nuw nsw i64 %indvars.iv.next1590, %i.ot ; 3 uses
  %invariant.gep1892 = getelementptr [8 x i8], ptr %i.oo, i64 %i.ox ; 2 uses
  %invariant.gep1894 = getelementptr [8 x i8], ptr %i.oo, i64 %i.oy ; 2 uses
  %invariant.gep1896 = getelementptr [8 x i8], ptr %i.oo, i64 %i.oz ; 2 uses
  %invariant.gep1898 = getelementptr [8 x i8], ptr %i.oo, i64 %i.ox ; 2 uses
  %invariant.gep1900 = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.oy ; 2 uses
  %invariant.gep1902 = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.oz ; 2 uses
  %invariant.gep1904 = getelementptr [8 x i8], ptr %i.oo, i64 %i.ox ; 2 uses
  %invariant.gep1906 = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.oz ; 2 uses
  %invariant.gep1908 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.oy ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.29141270.us, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader1171.us
  %index = phi i64 [ 0, %.preheader1171.us ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %.preheader1171.us ], [ %i.qb, %vector.body ]
  %i.pa = or disjoint i64 %index, 1               ; 3 uses
  %i.pb = getelementptr [8 x i8], ptr %invariant.gep1892, i64 %index
  %wide.load = load <2 x double>, ptr %i.pb, align 8, !tbaa !142 ; 2 uses
  %i.pc = getelementptr [8 x i8], ptr %invariant.gep1894, i64 %index
  %wide.load22 = load <2 x double>, ptr %i.pc, align 8, !tbaa !142
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load22, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.pe = getelementptr [8 x i8], ptr %invariant.gep1896, i64 %index
  %wide.load23 = load <2 x double>, ptr %i.pe, align 8, !tbaa !142 ; 2 uses
  %i.pf = fadd <2 x double> %i.pd, %wide.load23
  %i.pg = add nuw nsw i64 %index, 2               ; 3 uses
  %i.ph = getelementptr [8 x i8], ptr %invariant.gep1898, i64 %i.pg
  %wide.load24 = load <2 x double>, ptr %i.ph, align 8, !tbaa !142 ; 2 uses
  %i.pi = fsub <2 x double> %i.pf, %wide.load24
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1900, i64 %i.pg
  %wide.load25 = load <2 x double>, ptr %i.pj, align 8, !tbaa !142
  %i.pk = fneg <2 x double> %wide.load25
  %i.pl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pi)
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1902, i64 %i.pg
  %wide.load26 = load <2 x double>, ptr %i.pm, align 8, !tbaa !142 ; 2 uses
  %i.pn = fsub <2 x double> %i.pl, %wide.load26   ; 2 uses
  %i.po = getelementptr [8 x i8], ptr %invariant.gep1904, i64 %i.pa
  %wide.load27 = load <2 x double>, ptr %i.po, align 8, !tbaa !142
  %i.pp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load27, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.pq = fadd <2 x double> %wide.load24, %i.pp
  %i.pr = fsub <2 x double> %i.pq, %wide.load23
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1906, i64 %i.pa
  %wide.load28 = load <2 x double>, ptr %i.ps, align 8, !tbaa !142
  %i.pt = fneg <2 x double> %wide.load28
  %i.pu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pr)
  %i.pv = fsub <2 x double> %i.pu, %wide.load26   ; 2 uses
  %i.pw = fmul <2 x double> %i.pv, %i.pv
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.pn, <2 x double> %i.pw)
  %i.py = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.px)
  %i.pz = fptosi <2 x double> %i.py to <2 x i32>  ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1908, i64 %i.pa
  store <2 x i32> %i.pz, ptr %i.qa, align 4, !tbaa !56
  %i.qb = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi, <2 x i32> %i.pz) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qc = icmp eq i64 %index.next, %n.vec
  br i1 %i.qc, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %i.qd = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %i.qb) ; 2 uses
  br i1 %cmp.n, label %._crit_edge1268.us, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv1584 = phi i64 [ %indvars.iv.next1585, %scalar.ph ], [ %i.ov, %middle.block ] ; 5 uses
  %.39151265.us = phi i32 [ %spec.select.us, %scalar.ph ], [ %i.qd, %middle.block ]
  %i.qe = add nsw i64 %indvars.iv1584, -1         ; 3 uses
  %gep1893 = getelementptr [8 x i8], ptr %invariant.gep1892, i64 %i.qe
  %i.qf = load double, ptr %gep1893, align 8, !tbaa !142
  %gep1895 = getelementptr [8 x i8], ptr %invariant.gep1894, i64 %i.qe
  %i.qg = load double, ptr %gep1895, align 8, !tbaa !142
  %gep1897 = getelementptr [8 x i8], ptr %invariant.gep1896, i64 %i.qe
  %i.qh = load double, ptr %gep1897, align 8, !tbaa !142 ; 2 uses
  %indvars.iv.next1585 = add nuw nsw i64 %indvars.iv1584, 1 ; 5 uses
  %gep1899 = getelementptr [8 x i8], ptr %invariant.gep1898, i64 %indvars.iv.next1585
  %gep1901 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1900, i64 %indvars.iv.next1585
  %i.qi = load double, ptr %gep1901, align 8, !tbaa !142
  %i.qj = fneg double %i.qi
  %gep1903 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1902, i64 %indvars.iv.next1585
  %i.qk = load double, ptr %gep1903, align 8, !tbaa !142 ; 2 uses
  %gep1905 = getelementptr [8 x i8], ptr %invariant.gep1904, i64 %indvars.iv1584
  %i.ql = load <2 x double>, ptr %gep1905, align 8, !tbaa !142 ; 2 uses
  %i.qm = load double, ptr %gep1899, align 8, !tbaa !142
  %i.qn = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qo = insertelement <2 x double> %i.qn, double %i.qg, i64 0
  %i.qp = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> splat (double 2.000000e+00), <2 x double> %i.qq)
  %i.qs = insertelement <2 x double> %i.ql, double %i.qh, i64 0
  %i.qt = fadd <2 x double> %i.qr, %i.qs
  %i.qu = insertelement <2 x double> poison, double %i.qm, i64 0
  %i.qv = insertelement <2 x double> %i.qu, double %i.qh, i64 1
  %i.qw = fsub <2 x double> %i.qt, %i.qv          ; 2 uses
  %i.qx = extractelement <2 x double> %i.qw, i64 0
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.qj, double 2.000000e+00, double %i.qx)
  %i.qz = fsub double %i.qy, %i.qk                ; 2 uses
  %gep1907 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1906, i64 %indvars.iv1584
  %i.ra = load double, ptr %gep1907, align 8, !tbaa !142
  %i.rb = fneg double %i.ra
  %i.rc = extractelement <2 x double> %i.qw, i64 1
  %i.rd = tail call double @llvm.fmuladd.f64(double %i.rb, double 2.000000e+00, double %i.rc)
  %i.re = fsub double %i.rd, %i.qk                ; 2 uses
  %i.rf = fmul double %i.re, %i.re
  %i.rg = tail call double @llvm.fmuladd.f64(double %i.qz, double %i.qz, double %i.rf)
  %sqrt1141.us = tail call double @llvm.sqrt.f64(double %i.rg)
  %i.rh = fptosi double %sqrt1141.us to i32       ; 2 uses
  %gep1909 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1908, i64 %indvars.iv1584
  store i32 %i.rh, ptr %gep1909, align 4, !tbaa !56
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.39151265.us, i32 %i.rh) ; 2 uses
  %exitcond1588.not = icmp eq i64 %indvars.iv.next1585, %wide.trip.count1592
  br i1 %exitcond1588.not, label %._crit_edge1268.us, label %scalar.ph, !llvm.loop !130

._crit_edge1268.us:                               ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i32 [ %i.qd, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 5 uses
  %exitcond1593.not = icmp eq i64 %indvars.iv.next1590, %wide.trip.count1592
  br i1 %exitcond1593.not, label %._crit_edge1272, label %.preheader1171.us

bb.ar:                                            ; preds = %.preheader1173, %labdiff.exit
  %indvars.iv1574 = phi i64 [ 0, %.preheader1173 ], [ %indvars.iv.next1575, %labdiff.exit ] ; 2 uses
  %i.ri = add nuw nsw i64 %indvars.iv1574, %i.or  ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !56 ; 3 uses
  %i.rl = lshr i32 %i.rk, 16
  %i.rm = and i32 %i.rl, 255
  %i.rn = lshr i32 %i.rk, 8
  %i.ro = uitofp nneg i32 %i.rm to double
  %i.rp = and i32 %i.rn, 255
  %i.rq = and i32 %i.rk, 255
  %i.rr = uitofp nneg i32 %i.rp to double
  %i.rs = uitofp nneg i32 %i.rq to double
  %i.rt = fdiv double %i.ro, 2.550000e+02         ; 3 uses
  %i.ru = insertelement <2 x double> poison, double %i.rr, i64 0
  %i.rv = insertelement <2 x double> %i.ru, double %i.rs, i64 1
  %i.rw = fdiv <2 x double> %i.rv, splat (double 2.550000e+02) ; 2 uses
  %i.rx = fcmp ogt double %i.rt, f0x3FA4B5DCC0000000
  br i1 %i.rx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ry = fadd double %i.rt, f0x3FAC28F5C0000000
  %i.rz = fdiv double %i.ry, f0x3FF0E147A0000000
  %i.sa = tail call double @pow(double noundef %i.rz, double noundef f0x4003333340000000) #13
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.sb = fdiv nnan double %i.rt, f0x4029D70A40000000
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.046.i.i = phi double [ %i.sa, %bb.as ], [ %i.sb, %bb.at ]
  %i.sc = extractelement <2 x double> %i.rw, i64 0 ; 3 uses
  %i.sd = fcmp ogt double %i.sc, f0x3FA4B5DCC0000000
  br i1 %i.sd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.se = fadd double %i.sc, f0x3FAC28F5C0000000
  %i.sf = fdiv double %i.se, f0x3FF0E147A0000000
  %i.sg = tail call double @pow(double noundef %i.sf, double noundef f0x4003333340000000) #13
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.sh = fdiv nnan double %i.sc, f0x4029D70A40000000
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.047.i.i = phi double [ %i.sg, %bb.av ], [ %i.sh, %bb.aw ]
  %i.si = extractelement <2 x double> %i.rw, i64 1 ; 3 uses
  %i.sj = fcmp ogt double %i.si, f0x3FA4B5DCC0000000
  br i1 %i.sj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.sk = fadd double %i.si, f0x3FAC28F5C0000000
  %i.sl = fdiv double %i.sk, f0x3FF0E147A0000000
  %i.sm = tail call double @pow(double noundef %i.sl, double noundef f0x4003333340000000) #13
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.sn = fdiv nnan double %i.si, f0x4029D70A40000000
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.048.i.i = phi double [ %i.sm, %bb.ay ], [ %i.sn, %bb.az ]
  %i.so = fmul double %.046.i.i, 1.000000e+02     ; 2 uses
  %i.sp = fmul double %.047.i.i, 1.000000e+02     ; 2 uses
  %i.sq = fmul double %.048.i.i, 1.000000e+02     ; 2 uses
  %i.sr = fmul double %i.sp, f0x3FBE83E420000000
  %i.ss = tail call double @llvm.fmuladd.f64(double %i.so, double f0x3F93C36120000000, double %i.sr)
  %i.st = tail call double @llvm.fmuladd.f64(double %i.sq, double f0x3FEE6A7F00000000, double %i.ss)
  %i.su = insertelement <2 x double> poison, double %i.sp, i64 0
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@getmetrics:bb.a
  br i1 %exitcond1583.not, label %.preheader1171.us.preheader, label %.preheader1173

._crit_edge1272:                                  ; preds = %._crit_edge1268.us
  tail call void @free(ptr noundef nonnull %i.oo) #13
  %.not966.not = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %.not966.not, label %.loopexit1170, label %.preheader1168.preheader

.preheader1168.preheader:                         ; preds = %._crit_edge1272
  %wide.trip.count1602 = zext nneg i32 %i.os to i64
  %i.uf = add nsw i64 %wide.trip.count1592, -1    ; 3 uses
  %xtraiter = and i64 %i.uf, 1
  %i.ug = icmp eq i32 %i.os, 2
  %unroll_iter = and i64 %i.uf, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i64 %i.uf to i1
  br label %.preheader1168

.preheader1168:                                   ; preds = %.preheader1168.preheader, %._crit_edge1278
  %indvars.iv1599 = phi i64 [ 1, %.preheader1168.preheader ], [ %indvars.iv.next1600, %._crit_edge1278 ] ; 2 uses
  %i.uh = mul nuw nsw i64 %indvars.iv1599, %i.i   ; 3 uses
  br i1 %i.ug, label %.epil.preheader, label %.preheader1168.new

.preheader1168.new:                               ; preds = %.preheader1168
  %invariant.op = add nuw nsw i64 1, %i.uh
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.preheader1168.new
  %indvars.iv1594 = phi i64 [ 1, %.preheader1168.new ], [ %indvars.iv.next1595.1, %bb.bk ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader1168.new ], [ %niter.next.1, %bb.bk ]
  %i.ui = add nuw nsw i64 %indvars.iv1594, %i.uh  ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !56
  %i.ul = mul i32 %i.uk, 255
  %i.um = udiv i32 %i.ul, %spec.select.us.lcssa   ; 3 uses
  %i.un = shl i32 %i.um, 8
  %i.uo = shl i32 %i.um, 16
  %i.up = or i32 %i.uo, %i.un
  %i.uq = or i32 %i.up, %i.um
  %i.ur = or i32 %i.uq, -16777216
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ui
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !56
  %.reass = add nuw nsw i64 %indvars.iv1594, %invariant.op ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.reass
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !56
  %i.uv = mul i32 %i.uu, 255
  %i.uw = udiv i32 %i.uv, %spec.select.us.lcssa   ; 3 uses
  %i.ux = shl i32 %i.uw, 8
  %i.uy = shl i32 %i.uw, 16
  %i.uz = or i32 %i.uy, %i.ux
  %i.va = or i32 %i.uz, %i.uw
  %i.vb = or i32 %i.va, -16777216
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.reass
  store i32 %i.vb, ptr %i.vc, align 4, !tbaa !56
  %indvars.iv.next1595.1 = add nuw nsw i64 %indvars.iv1594, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1278.unr-lcssa, label %bb.bk

._crit_edge1278.unr-lcssa:                        ; preds = %bb.bk
  br i1 %lcmp.mod.not, label %._crit_edge1278, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1278.unr-lcssa, %.preheader1168
  %indvars.iv1594.epil.init = phi i64 [ 1, %.preheader1168 ], [ %indvars.iv.next1595.1, %._crit_edge1278.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.vd = add nuw nsw i64 %indvars.iv1594.epil.init, %i.uh ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !56
  %i.vg = mul i32 %i.vf, 255
  %i.vh = udiv i32 %i.vg, %spec.select.us.lcssa   ; 3 uses
  %i.vi = shl i32 %i.vh, 8
  %i.vj = shl i32 %i.vh, 16
  %i.vk = or i32 %i.vj, %i.vi
  %i.vl = or i32 %i.vk, %i.vh
  %i.vm = or i32 %i.vl, -16777216
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vd
  store i32 %i.vm, ptr %i.vn, align 4, !tbaa !56
  br label %._crit_edge1278

._crit_edge1278:                                  ; preds = %._crit_edge1278.unr-lcssa, %.epil.preheader
  %indvars.iv.next1600 = add nuw nsw i64 %indvars.iv1599, 1 ; 2 uses
  %exitcond1603.not = icmp eq i64 %indvars.iv.next1600, %wide.trip.count1602
  br i1 %exitcond1603.not, label %.loopexit1170, label %.preheader1168

.loopexit1170:                                    ; preds = %._crit_edge1278, %._crit_edge1272
  %i.vo = mul nuw nsw i32 %i.os, %0
  %i.vp = zext nneg i32 %i.vo to i64
  %invariant.gep1910 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vp ; 2 uses
  %n.vec31 = and i64 %i.i, 508                    ; 3 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %.loopexit1170
  %index33 = phi i64 [ 0, %.loopexit1170 ], [ %index.next34, %vector.body32 ] ; 3 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.vq, align 4, !tbaa !56
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1910, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.vr, align 4, !tbaa !56
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.vs = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.vs, label %middle.block35, label %vector.body32, !llvm.loop !131

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %n.vec31, %i.i
  br i1 %cmp.n36, label %.preheader1167.preheader, label %scalar.ph29

scalar.ph29:                                      ; preds = %middle.block35, %scalar.ph29
  %indvars.iv1604 = phi i64 [ %indvars.iv.next1605, %scalar.ph29 ], [ %n.vec31, %middle.block35 ] ; 3 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1604
  store i32 -16777216, ptr %i.vt, align 4, !tbaa !56
  %gep1911 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1910, i64 %indvars.iv1604
  store i32 -16777216, ptr %gep1911, align 4, !tbaa !56
  %indvars.iv.next1605 = add nuw nsw i64 %indvars.iv1604, 1 ; 2 uses
  %exitcond1608.not = icmp eq i64 %indvars.iv.next1605, %i.i
  br i1 %exitcond1608.not, label %.preheader1167.preheader, label %scalar.ph29, !llvm.loop !132

.preheader1167.preheader:                         ; preds = %scalar.ph29, %middle.block35
  %invariant.gep1912 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter109 = and i64 %i.i, 3                  ; 3 uses
  %unroll_iter112 = and i64 %i.i, 508
  br label %.preheader1167

.preheader1167:                                   ; preds = %.preheader1167, %.preheader1167.preheader
  %indvars.iv1609 = phi i64 [ 0, %.preheader1167.preheader ], [ %indvars.iv.next1610.3, %.preheader1167 ] ; 5 uses
  %niter113 = phi i64 [ 0, %.preheader1167.preheader ], [ %niter113.next.3, %.preheader1167 ]
  %i.vu = mul nuw nsw i64 %indvars.iv1609, %i.i   ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vu
  store i32 -16777216, ptr %i.vv, align 4, !tbaa !56
  %gep1913 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.vu
  %i.vw = getelementptr i8, ptr %gep1913, i64 -4
  store i32 -16777216, ptr %i.vw, align 4, !tbaa !56
  %indvars.iv.next1610 = or disjoint i64 %indvars.iv1609, 1
  %i.vx = mul nuw nsw i64 %indvars.iv.next1610, %i.i ; 2 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vx
  store i32 -16777216, ptr %i.vy, align 4, !tbaa !56
  %gep1913.1 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.vx
  %i.vz = getelementptr i8, ptr %gep1913.1, i64 -4
  store i32 -16777216, ptr %i.vz, align 4, !tbaa !56
  %indvars.iv.next1610.1 = or disjoint i64 %indvars.iv1609, 2
  %i.wa = mul nuw nsw i64 %indvars.iv.next1610.1, %i.i ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wa
  store i32 -16777216, ptr %i.wb, align 4, !tbaa !56
  %gep1913.2 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.wa
  %i.wc = getelementptr i8, ptr %gep1913.2, i64 -4
  store i32 -16777216, ptr %i.wc, align 4, !tbaa !56
  %indvars.iv.next1610.2 = or disjoint i64 %indvars.iv1609, 3
  %i.wd = mul nuw nsw i64 %indvars.iv.next1610.2, %i.i ; 2 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wd
  store i32 -16777216, ptr %i.we, align 4, !tbaa !56
  %gep1913.3 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.wd
  %i.wf = getelementptr i8, ptr %gep1913.3, i64 -4
  store i32 -16777216, ptr %i.wf, align 4, !tbaa !56
  %indvars.iv.next1610.3 = add nuw nsw i64 %indvars.iv1609, 4 ; 2 uses
  %niter113.next.3 = add nuw nsw i64 %niter113, 4 ; 2 uses
  %niter113.ncmp.3 = icmp eq i64 %niter113.next.3, %unroll_iter112
  br i1 %niter113.ncmp.3, label %.preheader1166.preheader.unr-lcssa, label %.preheader1167

.preheader1166.preheader.unr-lcssa:               ; preds = %.preheader1167
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.preheader1166.preheader, label %.preheader1167.epil.preheader

.preheader1167.epil.preheader:                    ; preds = %.preheader1166.preheader.unr-lcssa
  %lcmp.mod111 = icmp ne i64 %xtraiter109, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.preheader1167.epil

.preheader1167.epil:                              ; preds = %.preheader1167.epil, %.preheader1167.epil.preheader
  %indvars.iv1609.epil = phi i64 [ %indvars.iv.next1610.3, %.preheader1167.epil.preheader ], [ %indvars.iv.next1610.epil, %.preheader1167.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1167.epil.preheader ], [ %epil.iter.next, %.preheader1167.epil ]
  %i.wg = mul nuw nsw i64 %indvars.iv1609.epil, %i.i ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wg
  store i32 -16777216, ptr %i.wh, align 4, !tbaa !56
  %gep1913.epil = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.wg
  %i.wi = getelementptr i8, ptr %gep1913.epil, i64 -4
  store i32 -16777216, ptr %i.wi, align 4, !tbaa !56
  %indvars.iv.next1610.epil = add nuw nsw i64 %indvars.iv1609.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter109
  br i1 %epil.iter.cmp.not, label %.preheader1166.preheader, label %.preheader1167.epil, !llvm.loop !133

.preheader1166.preheader:                         ; preds = %.preheader1167.epil, %.preheader1166.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.wj = zext nneg i32 %0 to i64
  %wide.trip.count1626 = zext nneg i32 %i.os to i64 ; 2 uses
  %i.wk = shl nuw nsw i64 %i.i, 2
  %i.wl = shl nuw nsw i64 %i.i, 2
  %i.wm = getelementptr i8, ptr %1, i64 %i.wk
  br label %.preheader1166

.preheader1166:                                   ; preds = %.preheader1166.preheader, %._crit_edge1286
  %indvar = phi i64 [ 0, %.preheader1166.preheader ], [ %indvar.next, %._crit_edge1286 ] ; 2 uses
  %indvars.iv1623 = phi i64 [ 1, %.preheader1166.preheader ], [ %indvars.iv.next1624, %._crit_edge1286 ] ; 2 uses
  %i.wn = mul i64 %i.wl, %indvar
  %scevgep = getelementptr i8, ptr %i.wm, i64 %i.wn
  %i.wo = mul nuw nsw i64 %indvars.iv1623, %i.wj
  %load_initial = load i32, ptr %scevgep, align 4
  %i.wp = and i32 %load_initial, 255
  br label %.preheader1165

.preheader1163.preheader:                         ; preds = %._crit_edge1286
  %i.wq = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1640 = zext nneg i32 %i.os to i64 ; 2 uses
  %n.vec39 = and i64 %i.ou, -4                    ; 3 uses
  %i.wr = or disjoint i64 %n.vec39, 1
  %cmp.n47 = icmp eq i64 %i.ou, %n.vec39
  br label %.preheader1163

.preheader1165:                                   ; preds = %.preheader1166, %.preheader1165
  %store_forwarded = phi i32 [ %i.wp, %.preheader1166 ], [ %i.wv, %.preheader1165 ]
  %indvars.iv1618 = phi i64 [ 1, %.preheader1166 ], [ %indvars.iv.next1619, %.preheader1165 ] ; 2 uses
  %i.ws = add nuw nsw i64 %indvars.iv1618, %i.wo  ; 2 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ws ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !56
  %i.wv = and i32 %i.wu, 255                      ; 3 uses
  %i.ww = shl nuw nsw i32 %i.wv, 1
  %i.wx = add nuw nsw i32 %i.ww, %store_forwarded
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ws
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !56
  %i.xb = and i32 %i.xa, 255
  %i.xc = add nuw nsw i32 %i.xb, %i.wx
  %i.xd = shl nuw nsw i32 %i.xc, 6
  %i.xe = and i32 %i.xd, 130816
  %i.xf = or disjoint i32 %i.wv, %i.xe
  store i32 %i.xf, ptr %i.wt, align 4, !tbaa !56
  %indvars.iv.next1619 = add nuw nsw i64 %indvars.iv1618, 1 ; 2 uses
  %exitcond1622.not = icmp eq i64 %indvars.iv.next1619, %wide.trip.count1626
  br i1 %exitcond1622.not, label %._crit_edge1286, label %.preheader1165

._crit_edge1286:                                  ; preds = %.preheader1165
  %indvars.iv.next1624 = add nuw nsw i64 %indvars.iv1623, 1 ; 2 uses
  %exitcond1627.not = icmp eq i64 %indvars.iv.next1624, %wide.trip.count1626
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1627.not, label %.preheader1163.preheader, label %.preheader1166

.preheader1163:                                   ; preds = %.preheader1163.preheader, %._crit_edge1293
  %indvars.iv1637 = phi i64 [ 1, %.preheader1163.preheader ], [ %i.xl, %._crit_edge1293 ] ; 3 uses
  %i.xg = mul nuw nsw i64 %indvars.iv1637, %i.wq
  %i.xh = add nsw i64 %indvars.iv1637, -1
  %i.xi = mul nuw nsw i64 %i.xh, %i.wq
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xi ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xg ; 2 uses
  %i.xl = add nuw nsw i64 %indvars.iv1637, 1      ; 3 uses
  %i.xm = mul nuw nsw i64 %i.xl, %i.wq
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xm ; 2 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %.preheader1163
  %index41 = phi i64 [ 0, %.preheader1163 ], [ %index.next45, %vector.body40 ] ; 2 uses
  %i.xo = or disjoint i64 %index41, 1             ; 3 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.xo
  %wide.load42 = load <4 x i32>, ptr %i.xp, align 4, !tbaa !56
  %i.xq = lshr <4 x i32> %wide.load42, splat (i32 8)
  %i.xr = and <4 x i32> %i.xq, splat (i32 255)
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.xo ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.xs, align 4, !tbaa !56
  %i.xt = lshr <4 x i32> %wide.load43, splat (i32 7)
  %i.xu = and <4 x i32> %i.xt, splat (i32 510)
  %i.xv = add nuw nsw <4 x i32> %i.xu, %i.xr
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %i.xo
  %wide.load44 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !56
  %i.xx = lshr <4 x i32> %wide.load44, splat (i32 8)
  %i.xy = and <4 x i32> %i.xx, splat (i32 255)
  %i.xz = add nuw nsw <4 x i32> %i.xy, %i.xv
  %i.ya = lshr <4 x i32> %i.xz, splat (i32 2)     ; 3 uses
  %i.yb = shl nuw nsw <4 x i32> %i.ya, splat (i32 8)
  %i.yc = shl nuw nsw <4 x i32> %i.ya, splat (i32 16)
  %i.yd = or <4 x i32> %i.yc, %i.yb
  %i.ye = or <4 x i32> %i.yd, %i.ya
  %i.yf = or <4 x i32> %i.ye, splat (i32 -16777216)
  store <4 x i32> %i.yf, ptr %i.xs, align 4, !tbaa !56
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.yg = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.yg, label %middle.block46, label %vector.body40, !llvm.loop !134

middle.block46:                                   ; preds = %vector.body40
  br i1 %cmp.n47, label %._crit_edge1293, label %.preheader1162

.preheader1162:                                   ; preds = %middle.block46, %.preheader1162
  %indvars.iv1632 = phi i64 [ %indvars.iv.next1633, %.preheader1162 ], [ %i.wr, %middle.block46 ] ; 4 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %indvars.iv1632
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !56
  %i.yj = lshr i32 %i.yi, 8
  %i.yk = and i32 %i.yj, 255
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv1632 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !56
  %i.yn = lshr i32 %i.ym, 7
  %i.yo = and i32 %i.yn, 510
  %i.yp = add nuw nsw i32 %i.yo, %i.yk
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %indvars.iv1632
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !56
  %i.ys = lshr i32 %i.yr, 8
  %i.yt = and i32 %i.ys, 255
  %i.yu = add nuw nsw i32 %i.yt, %i.yp
  %i.yv = lshr i32 %i.yu, 2                       ; 3 uses
  %i.yw = shl nuw nsw i32 %i.yv, 8
  %i.yx = shl nuw nsw i32 %i.yv, 16
  %i.yy = or i32 %i.yx, %i.yw
  %i.yz = or i32 %i.yy, %i.yv
  %i.za = or i32 %i.yz, -16777216
  store i32 %i.za, ptr %i.yl, align 4, !tbaa !56
  %indvars.iv.next1633 = add nuw nsw i64 %indvars.iv1632, 1 ; 2 uses
  %exitcond1636.not = icmp eq i64 %indvars.iv.next1633, %wide.trip.count1640
  br i1 %exitcond1636.not, label %._crit_edge1293, label %.preheader1162, !llvm.loop !135

._crit_edge1293:                                  ; preds = %.preheader1162, %middle.block46
  %exitcond1641.not = icmp eq i64 %i.xl, %wide.trip.count1640
  br i1 %exitcond1641.not, label %._crit_edge1297.split, label %.preheader1163

._crit_edge1297.split:                            ; preds = %._crit_edge1293
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.38, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.zb = sub nsw i32 %i.os, %i.h
  %wide.trip.count1650 = zext nneg i32 %i.h to i64
  %wide.trip.count1660 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.zc = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter115 = and i64 %wide.trip.count, 1
  %i.zd = icmp eq i64 %i.zc, 0
  %unroll_iter120 = and i64 %wide.trip.count, 126
  %lcmp.mod117.not = icmp eq i64 %xtraiter115, 0
  %lcmp.mod119 = trunc i32 %i.h to i1
  %min.iters.check61 = icmp samesign ult i32 %0, 48
  %i.ze = trunc nsw i64 %i.zc to i32              ; 2 uses
  %i.zf = icmp ugt i64 %i.zc, 4294967295
  %n.vec63 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.zg = icmp eq i64 %n.vec63, 8
  %i.zh = icmp eq i64 %n.vec63, 16
  %i.zi = icmp eq i64 %n.vec63, 24
  %i.zj = icmp eq i64 %n.vec63, 32
  %i.zk = icmp eq i64 %n.vec63, 40
  %i.zl = icmp eq i64 %n.vec63, 48
  %i.zm = icmp eq i64 %n.vec63, 56
  %cmp.n75 = icmp eq i64 %n.vec63, %wide.trip.count
  %xtraiter122 = and i64 %wide.trip.count, 1
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  %i.zn = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %0, 32
  %n.vec50 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.zo = icmp eq i64 %n.vec50, 8
  %i.zp = icmp eq i64 %n.vec50, 16
  %i.zq = icmp eq i64 %n.vec50, 24
  %i.zr = icmp eq i64 %n.vec50, 32
  %i.zs = icmp eq i64 %n.vec50, 40
  %i.zt = icmp eq i64 %n.vec50, 48
  %i.zu = icmp eq i64 %n.vec50, 56
  %cmp.n59 = icmp eq i64 %n.vec50, %wide.trip.count
  br label %.preheader1161.split.us.preheader

.preheader1161.split.us.preheader:                ; preds = %.split.us, %._crit_edge1297.split
  %.88931319 = phi i32 [ 0, %._crit_edge1297.split ], [ %i.als, %.split.us ] ; 8 uses
  %i.zv = mul i32 %.88931319, %0                  ; 2 uses
  %i.zw = add i32 %i.zv, -1
  %i.zx = add i32 %.88931319, -1
  %i.zy = mul i32 %i.zx, %0                       ; 13 uses
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.zz
  %i.aab = add i32 %i.p, %.88931319
  %i.aac = mul i32 %i.aab, %0                     ; 12 uses
  %i.aad = xor i32 %i.zy, -1
  %i.aae = icmp ult i32 %i.aad, %i.ze
  %i.aaf = xor i32 %i.aac, -1
  %i.aag = icmp ult i32 %i.aaf, %i.ze
  %i.aah = or i1 %i.aag, %i.zf
  %i.aai = or i1 %i.aae, %i.aah
  %i.aaj = zext i32 %i.zy to i64
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaj ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = zext i32 %i.aac to i64
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aam ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = add i32 %i.zy, 8
  %i.aaq = zext i32 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaq ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.aat = add i32 %i.aac, 8
  %i.aau = zext i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aau ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = add i32 %i.zy, 16
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aay ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %i.abb = add i32 %i.aac, 16
  %i.abc = zext i32 %i.abb to i64
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abc ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.abf = add i32 %i.zy, 24
  %i.abg = zext i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abg ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  %i.abj = add i32 %i.aac, 24
  %i.abk = zext i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abk ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  %i.abn = add i32 %i.zy, 32
  %i.abo = zext i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abo ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  %i.abr = add i32 %i.aac, 32
  %i.abs = zext i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abs ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.abv = add i32 %i.zy, 40
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abw ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
end_hunk_1
