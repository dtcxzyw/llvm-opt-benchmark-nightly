Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@getmetrics:bb.a
  %i.lq = icmp ugt i32 %i.km, %i.lp
  %i.lr = add i32 %i.lp, %i.h
  %i.ls = icmp ult i32 %.18861242, %i.lr
  %or.cond989.1 = and i1 %i.lq, %i.ls
  br i1 %or.cond989.1, label %._crit_edge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.y, %bb.x, %.preheader1178.a
  store i32 %i.ku, ptr %i.jz, align 4, !tbaa !56
  store i32 %indvars1561, ptr %i.ka, align 4, !tbaa !56
  store i32 %.18861242, ptr %i.kb, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.y, %._crit_edge.thread, %bb.u
  %.promoted1245 = phi i32 [ %.promoted1246.a, %bb.u ], [ %i.ku, %._crit_edge.thread ], [ %.promoted1246.a, %bb.y ], [ %.promoted1246.a, %bb.v ] ; 2 uses
  %i.lt = phi i32 [ %i.kq, %bb.u ], [ %i.ku, %._crit_edge.thread ], [ %i.kq, %bb.y ], [ %i.kq, %bb.v ]
  %i.lu = icmp ult i32 %i.ku, %i.kp
  br i1 %i.lu, label %.preheader1177.a, label %._crit_edge1220

.preheader1177.a:                                 ; preds = %._crit_edge
  br i1 %.not1471, label %._crit_edge1220.thread, label %.lr.ph1219

.lr.ph1219:                                       ; preds = %.preheader1177.a
  %i.lv = add i32 %i.h, %indvars1561              ; 2 uses
  %i.lw = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.lx = icmp ugt i32 %i.lv, %i.lw
  %i.ly = add i32 %i.lw, %i.h
  %i.lz = zext i32 %i.ly to i64
  %i.ma = icmp samesign ult i64 %indvars.iv1559, %i.lz
  %or.cond992 = and i1 %i.lx, %i.ma
  br i1 %or.cond992, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph1219
  %i.mb = load i32, ptr %i.at, align 4, !tbaa !56 ; 2 uses
  %i.mc = icmp ugt i32 %i.km, %i.mb
  %i.md = add i32 %i.mb, %i.h
  %i.me = icmp ult i32 %.18861242, %i.md
  %or.cond995 = and i1 %i.mc, %i.me
  br i1 %or.cond995, label %._crit_edge1220, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1219, %bb.z
  br i1 %exitcond1548.not, label %._crit_edge1220.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mf = load i32, ptr %i.bb, align 4, !tbaa !56 ; 2 uses
  %i.mg = icmp ugt i32 %i.lv, %i.mf
  %i.mh = add i32 %i.mf, %i.h
  %i.mi = zext i32 %i.mh to i64
  %i.mj = icmp samesign ult i64 %indvars.iv1559, %i.mi
  %or.cond992.1 = and i1 %i.mg, %i.mj
  br i1 %or.cond992.1, label %bb.ac, label %._crit_edge1220.thread

bb.ac:                                            ; preds = %bb.ab
  %i.mk = load i32, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %i.ml = icmp ugt i32 %i.km, %i.mk
  %i.mm = add i32 %i.mk, %i.h
  %i.mn = icmp ult i32 %.18861242, %i.mm
  %or.cond995.1 = and i1 %i.ml, %i.mn
  br i1 %or.cond995.1, label %._crit_edge1220, label %._crit_edge1220.thread

._crit_edge1220.thread:                           ; preds = %bb.aa, %bb.ac, %bb.ab, %.preheader1177.a
  store i32 %i.ku, ptr %i.jx, align 4, !tbaa !56
  store i32 %indvars1561, ptr %i.kc, align 4, !tbaa !56
  store i32 %.18861242, ptr %i.kd, align 4, !tbaa !56
  br label %._crit_edge1220

._crit_edge1220:                                  ; preds = %bb.z, %bb.ac, %._crit_edge1220.thread, %._crit_edge
  %.promoted12391248 = phi i32 [ %.promoted12391249, %._crit_edge ], [ %i.ku, %._crit_edge1220.thread ], [ %.promoted12391249, %bb.ac ], [ %.promoted12391249, %bb.z ] ; 2 uses
  %i.mo = phi i32 [ %i.kp, %._crit_edge ], [ %i.ku, %._crit_edge1220.thread ], [ %i.kp, %bb.ac ], [ %i.kp, %bb.z ]
  %i.mp = icmp ugt i32 %i.ky, %i.ko
  br i1 %i.mp, label %.preheader1176.a, label %._crit_edge1226

.preheader1176.a:                                 ; preds = %._crit_edge1220
  br i1 %.not1471, label %._crit_edge1226.thread, label %.lr.ph1225

.lr.ph1225:                                       ; preds = %.preheader1176.a
  %i.mq = add i32 %i.h, %indvars1561              ; 2 uses
  %i.mr = load i32, ptr %i.av, align 4, !tbaa !56 ; 2 uses
  %i.ms = icmp ugt i32 %i.mq, %i.mr
  %i.mt = add i32 %i.mr, %i.h
  %i.mu = zext i32 %i.mt to i64
  %i.mv = icmp samesign ult i64 %indvars.iv1559, %i.mu
  %or.cond998 = and i1 %i.ms, %i.mv
  br i1 %or.cond998, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph1225
  %i.mw = load i32, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %i.mx = icmp ugt i32 %i.km, %i.mw
  %i.my = add i32 %i.mw, %i.h
  %i.mz = icmp ult i32 %.18861242, %i.my
  %or.cond1001 = and i1 %i.mx, %i.mz
  br i1 %or.cond1001, label %._crit_edge1226, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1225, %bb.ad
  br i1 %exitcond1553.not, label %._crit_edge1226.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.na = load i32, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.nb = icmp ugt i32 %i.mq, %i.na
  %i.nc = add i32 %i.na, %i.h
  %i.nd = zext i32 %i.nc to i64
  %i.ne = icmp samesign ult i64 %indvars.iv1559, %i.nd
  %or.cond998.1 = and i1 %i.nb, %i.ne
  br i1 %or.cond998.1, label %bb.ag, label %._crit_edge1226.thread

bb.ag:                                            ; preds = %bb.af
  %i.nf = load i32, ptr %i.be, align 4, !tbaa !56 ; 2 uses
  %i.ng = icmp ugt i32 %i.km, %i.nf
  %i.nh = add i32 %i.nf, %i.h
  %i.ni = icmp ult i32 %.18861242, %i.nh
  %or.cond1001.1 = and i1 %i.ng, %i.ni
  br i1 %or.cond1001.1, label %._crit_edge1226, label %._crit_edge1226.thread

._crit_edge1226.thread:                           ; preds = %bb.ae, %bb.ag, %bb.af, %.preheader1176.a
  store i32 %i.ky, ptr %i.ke, align 4, !tbaa !56
  store i32 %indvars1561, ptr %i.kf, align 4, !tbaa !56
  store i32 %.18861242, ptr %i.kg, align 4, !tbaa !56
  br label %._crit_edge1226

._crit_edge1226:                                  ; preds = %bb.ad, %bb.ag, %._crit_edge1226.thread, %._crit_edge1220
  %.promoted12401252 = phi i32 [ %.promoted12401253, %._crit_edge1220 ], [ %i.ky, %._crit_edge1226.thread ], [ %.promoted12401253, %bb.ag ], [ %.promoted12401253, %bb.ad ] ; 2 uses
  %i.nj = phi i32 [ %i.ko, %._crit_edge1220 ], [ %i.ky, %._crit_edge1226.thread ], [ %i.ko, %bb.ag ], [ %i.ko, %bb.ad ]
  %i.nk = icmp ult i32 %i.ky, %i.kn
  br i1 %i.nk, label %.preheader1175, label %bb.am

.preheader1175:                                   ; preds = %._crit_edge1226
  br i1 %.not1471, label %._crit_edge1232.thread, label %.lr.ph1231

.lr.ph1231:                                       ; preds = %.preheader1175
  %i.nl = add i32 %i.h, %indvars1561              ; 2 uses
  %i.nm = load i32, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %i.nn = icmp ugt i32 %i.nl, %i.nm
  %i.no = add i32 %i.nm, %i.h
  %i.np = zext i32 %i.no to i64
  %i.nq = icmp samesign ult i64 %indvars.iv1559, %i.np
  %or.cond1004 = and i1 %i.nn, %i.nq
  br i1 %or.cond1004, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1231
  %i.nr = load i32, ptr %i.ay, align 4, !tbaa !56 ; 2 uses
  %i.ns = icmp ugt i32 %i.km, %i.nr
  %i.nt = add i32 %i.nr, %i.h
  %i.nu = icmp ult i32 %.18861242, %i.nt
  %or.cond1007 = and i1 %i.ns, %i.nu              ; 2 uses
  %brmerge = or i1 %or.cond1007, %exitcond1558.not
  %.mux = select i1 %or.cond1007, i64 0, i64 %indvars.iv1565
  br i1 %brmerge, label %._crit_edge1232, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1231
  br i1 %exitcond1558.not, label %._crit_edge1232, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.nv = load i32, ptr %i.bf, align 4, !tbaa !56 ; 2 uses
  %i.nw = icmp ugt i32 %i.nl, %i.nv
  %i.nx = add i32 %i.nv, %i.h
  %i.ny = zext i32 %i.nx to i64
  %i.nz = icmp samesign ult i64 %indvars.iv1559, %i.ny
  %or.cond1004.1 = and i1 %i.nw, %i.nz
  br i1 %or.cond1004.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.oa = load i32, ptr %i.bg, align 8, !tbaa !56 ; 2 uses
  %i.ob = icmp ugt i32 %i.km, %i.oa
  %i.oc = add i32 %i.oa, %i.h
  %i.od = icmp ult i32 %.18861242, %i.oc
  %or.cond1007.1 = and i1 %i.ob, %i.od
  br i1 %or.cond1007.1, label %._crit_edge1232, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br label %._crit_edge1232

._crit_edge1232:                                  ; preds = %bb.ah, %bb.al, %bb.ak, %bb.ai
  %.3909.lcssa.ph.in = phi i64 [ %indvars.iv1565, %bb.ai ], [ %.mux, %bb.ah ], [ 1, %bb.ak ], [ %indvars.iv1565, %bb.al ]
  %i.oe = and i64 %.3909.lcssa.ph.in, 4294967295
  %i.of = icmp eq i64 %i.oe, %indvars.iv1565
  br i1 %i.of, label %._crit_edge1232.thread, label %bb.am

._crit_edge1232.thread:                           ; preds = %.preheader1175, %._crit_edge1232
  store i32 %i.ky, ptr %i.jy, align 4, !tbaa !56
  store i32 %indvars1561, ptr %i.kh, align 4, !tbaa !56
  store i32 %.18861242, ptr %i.ki, align 4, !tbaa !56
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1232, %._crit_edge1232.thread, %._crit_edge1226
  %.promoted12411256 = phi i32 [ %.promoted12411257, %._crit_edge1232 ], [ %i.ky, %._crit_edge1232.thread ], [ %.promoted12411257, %._crit_edge1226 ] ; 2 uses
  %i.og = phi i32 [ %i.kn, %._crit_edge1232 ], [ %i.ky, %._crit_edge1232.thread ], [ %i.kn, %._crit_edge1226 ]
  %indvars.iv.next1560 = add nuw nsw i64 %indvars.iv1559, 1 ; 2 uses
  %exitcond1563.not = icmp eq i64 %indvars.iv.next1560, %wide.trip.count1562
  br i1 %exitcond1563.not, label %._crit_edge1238, label %bb.u

._crit_edge1238:                                  ; preds = %bb.am
  %i.oh = add nuw i32 %.18861242, 1               ; 2 uses
  %exitcond1564.not = icmp eq i32 %i.oh, %umax
  br i1 %exitcond1564.not, label %._crit_edge1243.split, label %.preheader1179.a

._crit_edge1243.split:                            ; preds = %._crit_edge1238, %.preheader1179.lr.ph
  %indvars.iv.next1566 = add nuw nsw i64 %indvars.iv1565, 1 ; 2 uses
  %exitcond1568.not = icmp eq i64 %indvars.iv.next1566, 3
  br i1 %exitcond1568.not, label %.preheader1174, label %.preheader1179.lr.ph

bb.an:                                            ; preds = %.preheader1174
  %i.oi = load i32, ptr %i.r, align 8, !tbaa !138
  %i.oj = udiv i32 %i.oi, %i.js
  store i32 %i.oj, ptr %i.r, align 8, !tbaa !138
  %i.ok = load i32, ptr %i.s, align 4, !tbaa !139
  %i.ol = udiv i32 %i.ok, %i.js
  store i32 %i.ol, ptr %i.s, align 4, !tbaa !139
  %i.om = load i32, ptr %i.t, align 8, !tbaa !140
  %i.on = udiv i32 %i.om, %i.js
  br label %bb.ap

bb.ao:                                            ; preds = %.preheader1174
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
  br i1 %.not965, label %bb.aq, label %.preheader1172

bb.aq:                                            ; preds = %bb.ap
  %i.op = shl nuw nsw i32 %i.ju, 3
  %i.oq = zext nneg i32 %i.op to i64
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.oq) #13
  tail call void @free(ptr noundef %i.l) #13
  br label %bb.cw

.preheader1172:                                   ; preds = %bb.ap, %bb.bk
  %indvars.iv1578 = phi i64 [ %indvars.iv.next1579, %bb.bk ], [ 0, %bb.ap ] ; 2 uses
  %i.or = mul nuw nsw i64 %indvars.iv1578, %i.i
  br label %bb.as

.preheader1170.us.preheader:                      ; preds = %bb.bk
  %i.os = add nsw i32 %0, -1                      ; 8 uses
  %i.ot = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1591 = zext i32 %i.os to i64    ; 5 uses
  %4 = add nsw i64 %wide.trip.count1591, -1       ; 3 uses
  %n.vec = and i64 %4, -2                         ; 2 uses
  %5 = or i64 %4, 1
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.preheader1170.us

.preheader1170.us:                                ; preds = %.preheader1170.us.preheader, %._crit_edge1267.us
  %indvars.iv1588 = phi i64 [ 1, %.preheader1170.us.preheader ], [ %indvars.iv.next1589, %._crit_edge1267.us ] ; 3 uses
  %.29141269.us = phi i32 [ 0, %.preheader1170.us.preheader ], [ %spec.select.us.lcssa, %._crit_edge1267.us ]
  %i.ou = add nsw i64 %indvars.iv1588, -1
  %i.ov = mul nuw nsw i64 %i.ou, %i.ot            ; 3 uses
  %i.ow = mul nuw nsw i64 %indvars.iv1588, %i.ot  ; 3 uses
  %indvars.iv.next1589 = add nuw nsw i64 %indvars.iv1588, 1 ; 3 uses
  %i.ox = mul nuw nsw i64 %indvars.iv.next1589, %i.ot ; 3 uses
  %invariant.gep1891 = getelementptr [8 x i8], ptr %i.oo, i64 %i.ov ; 2 uses
  %invariant.gep1893 = getelementptr [8 x i8], ptr %i.oo, i64 %i.ow ; 2 uses
  %invariant.gep1895 = getelementptr [8 x i8], ptr %i.oo, i64 %i.ox ; 2 uses
  %invariant.gep1897 = getelementptr [8 x i8], ptr %i.oo, i64 %i.ov ; 2 uses
  %invariant.gep1899 = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.ow ; 2 uses
  %invariant.gep1901 = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.ox ; 2 uses
  %invariant.gep1903 = getelementptr [8 x i8], ptr %i.oo, i64 %i.ov ; 2 uses
  %invariant.gep1905 = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.ox ; 2 uses
  %invariant.gep1907 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ow ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.29141269.us, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader1170.us
  %index = phi i64 [ 0, %.preheader1170.us ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %.preheader1170.us ], [ %33, %vector.body ]
  %6 = or disjoint i64 %index, 1                  ; 3 uses
  %7 = getelementptr [8 x i8], ptr %invariant.gep1891, i64 %index
  %wide.load = load <2 x double>, ptr %7, align 8, !tbaa !142 ; 2 uses
  %8 = getelementptr [8 x i8], ptr %invariant.gep1893, i64 %index
  %wide.load22 = load <2 x double>, ptr %8, align 8, !tbaa !142
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load22, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %10 = getelementptr [8 x i8], ptr %invariant.gep1895, i64 %index
  %wide.load23 = load <2 x double>, ptr %10, align 8, !tbaa !142 ; 2 uses
  %11 = fadd <2 x double> %9, %wide.load23
  %12 = add nuw nsw i64 %index, 2                 ; 3 uses
  %13 = getelementptr [8 x i8], ptr %invariant.gep1897, i64 %12
  %wide.load24 = load <2 x double>, ptr %13, align 8, !tbaa !142 ; 2 uses
  %14 = fsub <2 x double> %11, %wide.load24
  %15 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1899, i64 %12
  %wide.load25 = load <2 x double>, ptr %15, align 8, !tbaa !142
  %16 = fneg <2 x double> %wide.load25
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> splat (double 2.000000e+00), <2 x double> %14)
  %18 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1901, i64 %12
  %wide.load26 = load <2 x double>, ptr %18, align 8, !tbaa !142 ; 2 uses
  %19 = fsub <2 x double> %17, %wide.load26       ; 2 uses
  %20 = getelementptr [8 x i8], ptr %invariant.gep1903, i64 %6
  %wide.load27 = load <2 x double>, ptr %20, align 8, !tbaa !142
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load27, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %22 = fadd <2 x double> %wide.load24, %21
  %23 = fsub <2 x double> %22, %wide.load23
  %24 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1905, i64 %6
  %wide.load28 = load <2 x double>, ptr %24, align 8, !tbaa !142
  %25 = fneg <2 x double> %wide.load28
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> splat (double 2.000000e+00), <2 x double> %23)
  %27 = fsub <2 x double> %26, %wide.load26       ; 2 uses
  %28 = fmul <2 x double> %27, %27
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %19, <2 x double> %28)
  %30 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %29)
  %31 = fptosi <2 x double> %30 to <2 x i32>      ; 2 uses
  %32 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1907, i64 %6
  store <2 x i32> %31, ptr %32, align 4, !tbaa !56
  %33 = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi, <2 x i32> %31) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %35 = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %33) ; 2 uses
  br i1 %cmp.n, label %._crit_edge1267.us, label %bb.ar

bb.ar:                                            ; preds = %middle.block, %bb.ar
  %indvars.iv1583 = phi i64 [ %indvars.iv.next1584, %bb.ar ], [ %5, %middle.block ] ; 5 uses
  %.39151264.us = phi i32 [ %spec.select.us, %bb.ar ], [ %35, %middle.block ]
  %i.oy = add nsw i64 %indvars.iv1583, -1         ; 3 uses
  %gep1892 = getelementptr [8 x i8], ptr %invariant.gep1891, i64 %i.oy
  %i.oz = load double, ptr %gep1892, align 8, !tbaa !142
  %gep1894 = getelementptr [8 x i8], ptr %invariant.gep1893, i64 %i.oy
  %i.pa = load double, ptr %gep1894, align 8, !tbaa !142
  %gep1896 = getelementptr [8 x i8], ptr %invariant.gep1895, i64 %i.oy
  %i.pb = load double, ptr %gep1896, align 8, !tbaa !142 ; 2 uses
  %indvars.iv.next1584 = add nuw nsw i64 %indvars.iv1583, 1 ; 5 uses
  %gep1898 = getelementptr [8 x i8], ptr %invariant.gep1897, i64 %indvars.iv.next1584
  %gep1900 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1899, i64 %indvars.iv.next1584
  %i.pc = load double, ptr %gep1900, align 8, !tbaa !142
  %i.pd = fneg double %i.pc
  %gep1902 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1901, i64 %indvars.iv.next1584
  %i.pe = load double, ptr %gep1902, align 8, !tbaa !142 ; 2 uses
  %gep1904 = getelementptr [8 x i8], ptr %invariant.gep1903, i64 %indvars.iv1583
  %i.pf = load <2 x double>, ptr %gep1904, align 8, !tbaa !142 ; 2 uses
  %i.pg = load double, ptr %gep1898, align 8, !tbaa !142
  %i.ph = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pi = insertelement <2 x double> %i.ph, double %i.pa, i64 0
  %i.pj = insertelement <2 x double> poison, double %i.oz, i64 0
  %i.pk = shufflevector <2 x double> %i.pj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pk)
  %i.pm = insertelement <2 x double> %i.pf, double %i.pb, i64 0
  %i.pn = fadd <2 x double> %i.pl, %i.pm
  %i.po = insertelement <2 x double> poison, double %i.pg, i64 0
  %i.pp = insertelement <2 x double> %i.po, double %i.pb, i64 1
  %i.pq = fsub <2 x double> %i.pn, %i.pp          ; 2 uses
  %i.pr = extractelement <2 x double> %i.pq, i64 0
  %i.ps = tail call double @llvm.fmuladd.f64(double %i.pd, double 2.000000e+00, double %i.pr)
  %i.pt = fsub double %i.ps, %i.pe                ; 2 uses
  %gep1906 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1905, i64 %indvars.iv1583
  %i.pu = load double, ptr %gep1906, align 8, !tbaa !142
  %i.pv = fneg double %i.pu
  %i.pw = extractelement <2 x double> %i.pq, i64 1
  %i.px = tail call double @llvm.fmuladd.f64(double %i.pv, double 2.000000e+00, double %i.pw)
  %i.py = fsub double %i.px, %i.pe                ; 2 uses
  %i.pz = fmul double %i.py, %i.py
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.pt, double %i.pt, double %i.pz)
  %i.qb = tail call double @llvm.sqrt.f64(double %i.qa)
  %i.qc = fptosi double %i.qb to i32              ; 2 uses
  %gep1908 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1907, i64 %indvars.iv1583
  store i32 %i.qc, ptr %gep1908, align 4, !tbaa !56
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.39151264.us, i32 %i.qc) ; 2 uses
  %exitcond1587.not = icmp eq i64 %indvars.iv.next1584, %wide.trip.count1591
  br i1 %exitcond1587.not, label %._crit_edge1267.us, label %bb.ar, !llvm.loop !130

._crit_edge1267.us:                               ; preds = %bb.ar, %middle.block
  %spec.select.us.lcssa = phi i32 [ %35, %middle.block ], [ %spec.select.us, %bb.ar ] ; 5 uses
  %exitcond1592.not = icmp eq i64 %indvars.iv.next1589, %wide.trip.count1591
  br i1 %exitcond1592.not, label %._crit_edge1271, label %.preheader1170.us

bb.as:                                            ; preds = %.preheader1172, %labdiff.exit
  %indvars.iv1573 = phi i64 [ 0, %.preheader1172 ], [ %indvars.iv.next1574, %labdiff.exit ] ; 2 uses
  %i.qd = add nuw nsw i64 %indvars.iv1573, %i.or  ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !56 ; 3 uses
  %i.qg = lshr i32 %i.qf, 16
  %i.qh = and i32 %i.qg, 255
  %i.qi = lshr i32 %i.qf, 8
  %i.qj = uitofp nneg i32 %i.qh to double
  %i.qk = and i32 %i.qi, 255
  %i.ql = and i32 %i.qf, 255
  %i.qm = uitofp nneg i32 %i.qk to double
  %i.qn = uitofp nneg i32 %i.ql to double
  %i.qo = fdiv double %i.qj, 2.550000e+02         ; 3 uses
  %i.qp = insertelement <2 x double> poison, double %i.qm, i64 0
  %i.qq = insertelement <2 x double> %i.qp, double %i.qn, i64 1
  %i.qr = fdiv <2 x double> %i.qq, splat (double 2.550000e+02) ; 2 uses
  %i.qs = fcmp ogt double %i.qo, f0x3FA4B5DCC0000000
  br i1 %i.qs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qt = fadd double %i.qo, f0x3FAC28F5C0000000
  %i.qu = fdiv double %i.qt, f0x3FF0E147A0000000
  %i.qv = tail call double @pow(double noundef %i.qu, double noundef f0x4003333340000000) #13
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.qw = fdiv nnan double %i.qo, f0x4029D70A40000000
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.046.i.i = phi double [ %i.qv, %bb.at ], [ %i.qw, %bb.au ]
  %i.qx = extractelement <2 x double> %i.qr, i64 0 ; 3 uses
  %i.qy = fcmp ogt double %i.qx, f0x3FA4B5DCC0000000
  br i1 %i.qy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.qz = fadd double %i.qx, f0x3FAC28F5C0000000
  %i.ra = fdiv double %i.qz, f0x3FF0E147A0000000
  %i.rb = tail call double @pow(double noundef %i.ra, double noundef f0x4003333340000000) #13
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.rc = fdiv nnan double %i.qx, f0x4029D70A40000000
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.047.i.i = phi double [ %i.rb, %bb.aw ], [ %i.rc, %bb.ax ]
  %i.rd = extractelement <2 x double> %i.qr, i64 1 ; 3 uses
  %i.re = fcmp ogt double %i.rd, f0x3FA4B5DCC0000000
  br i1 %i.re, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.rf = fadd double %i.rd, f0x3FAC28F5C0000000
  %i.rg = fdiv double %i.rf, f0x3FF0E147A0000000
  %i.rh = tail call double @pow(double noundef %i.rg, double noundef f0x4003333340000000) #13
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ri = fdiv nnan double %i.rd, f0x4029D70A40000000
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.048.i.i = phi double [ %i.rh, %bb.az ], [ %i.ri, %bb.ba ]
  %i.rj = fmul double %.046.i.i, 1.000000e+02     ; 2 uses
  %i.rk = fmul double %.047.i.i, 1.000000e+02     ; 2 uses
  %i.rl = fmul double %.048.i.i, 1.000000e+02     ; 2 uses
  %i.rm = fmul double %i.rk, f0x3FBE83E420000000
  %i.rn = tail call double @llvm.fmuladd.f64(double %i.rj, double f0x3F93C36120000000, double %i.rm)
  %i.ro = tail call double @llvm.fmuladd.f64(double %i.rl, double f0x3FEE6A7F00000000, double %i.rn)
  %i.rp = insertelement <2 x double> poison, double %i.rk, i64 0
  %i.rq = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rr = fmul <2 x double> %i.rq, <double f0x3FD6E2EB20000000, double f0x3FE6E2EB20000000>
  %i.rs = insertelement <2 x double> poison, double %i.rj, i64 0
  %i.rt = shufflevector <2 x double> %i.rs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ru = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rt, <2 x double> <double f0x3FDA64C300000000, double f0x3FCB367A00000000>, <2 x double> %i.rr)
  %i.rv = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.rw = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rw, <2 x double> <double f0x3FC71A9FC0000000, double f0x3FB27BB300000000>, <2 x double> %i.ru)
  %i.ry = fdiv <2 x double> %i.rx, <double f0x4057C30200000000, double 1.000000e+02> ; 2 uses
  %i.rz = fdiv double %i.ro, f0x405B388320000000  ; 3 uses
  %i.sa = extractelement <2 x double> %i.ry, i64 0 ; 3 uses
  %i.sb = fcmp ogt double %i.sa, f0x3F82231840000000
  br i1 %i.sb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.sc = tail call double @pow(double noundef %i.sa, double noundef f0x3FD5555560000000) #13
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.sa, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.045.i.i = phi double [ %i.sc, %bb.bc ], [ %i.sd, %bb.bd ]
  %i.se = extractelement <2 x double> %i.ry, i64 1 ; 3 uses
  %i.sf = fcmp ogt double %i.se, f0x3F82231840000000
  br i1 %i.sf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.sg = tail call double @pow(double noundef %i.se, double noundef f0x3FD5555560000000) #13
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.se, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.044.i.i = phi double [ %i.sg, %bb.bf ], [ %i.sh, %bb.bg ] ; 3 uses
  %i.si = fcmp ogt double %i.rz, f0x3F82231840000000
  br i1 %i.si, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.sj = tail call double @pow(double noundef %i.rz, double noundef f0x3FD5555560000000) #13
  br label %labdiff.exit

bb.bj:                                            ; preds = %bb.bh
  %i.sk = tail call double @llvm.fmuladd.f64(double %i.rz, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %labdiff.exit

labdiff.exit:                                     ; preds = %bb.bi, %bb.bj
  %.0.i.i = phi double [ %i.sj, %bb.bi ], [ %i.sk, %bb.bj ]
  %i.sl = tail call double @llvm.fmuladd.f64(double %.044.i.i, double 1.160000e+02, double -1.600000e+01)
  %i.sm = fsub double %.045.i.i, %.044.i.i
  %i.sn = fmul double %i.sm, 5.000000e+02
  %i.so = fsub double %.044.i.i, %.0.i.i
  %i.sp = fmul double %i.so, 2.000000e+02
  %i.sq = fsub double f0x404A98AD00000000, %i.sl
  %i.sr = tail call double @pow(double noundef %i.sq, double noundef 2.000000e+00) #13
  %i.ss = fsub double f0x3F69BD7300000000, %i.sn
  %i.st = tail call double @pow(double noundef %i.ss, double noundef 2.000000e+00) #13
  %i.su = fadd double %i.sr, %i.st
  %i.sv = fsub double f0xBF796D20A0000000, %i.sp
  %i.sw = tail call double @pow(double noundef %i.sv, double noundef 2.000000e+00) #13
  %i.sx = fadd double %i.su, %i.sw
  %i.sy = tail call double @sqrt(double noundef %i.sx) #13
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.qd
  store double %i.sy, ptr %i.sz, align 8, !tbaa !142
  %indvars.iv.next1574 = add nuw nsw i64 %indvars.iv1573, 1 ; 2 uses
  %exitcond1577.not = icmp eq i64 %indvars.iv.next1574, %i.i
  br i1 %exitcond1577.not, label %bb.bk, label %bb.as

bb.bk:                                            ; preds = %labdiff.exit
  %indvars.iv.next1579 = add nuw nsw i64 %indvars.iv1578, 1 ; 2 uses
  %exitcond1582.not = icmp eq i64 %indvars.iv.next1579, %i.i
  br i1 %exitcond1582.not, label %.preheader1170.us.preheader, label %.preheader1172

._crit_edge1271:                                  ; preds = %._crit_edge1267.us
  tail call void @free(ptr noundef nonnull %i.oo) #13
  %.not966.not = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %.not966.not, label %.loopexit1169, label %.preheader1167.preheader.a

.preheader1167.preheader.a:                       ; preds = %._crit_edge1271
  %wide.trip.count1601 = zext nneg i32 %i.os to i64
  %i.ta = add nsw i64 %wide.trip.count1591, -1    ; 3 uses
  %xtraiter = and i64 %i.ta, 1
  %i.tb = icmp eq i32 %i.os, 2
  %unroll_iter = and i64 %i.ta, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i64 %i.ta to i1
  br label %.preheader1167.a

.preheader1167.a:                                 ; preds = %.preheader1167.preheader.a, %._crit_edge1277
  %indvars.iv1598 = phi i64 [ 1, %.preheader1167.preheader.a ], [ %indvars.iv.next1599, %._crit_edge1277 ] ; 2 uses
  %i.tc = mul nuw nsw i64 %indvars.iv1598, %i.i   ; 3 uses
  br i1 %i.tb, label %.epil.preheader, label %.preheader1167.new

.preheader1167.new:                               ; preds = %.preheader1167.a
  %invariant.op = add nuw nsw i64 1, %i.tc
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.preheader1167.new
  %indvars.iv1593 = phi i64 [ 1, %.preheader1167.new ], [ %indvars.iv.next1594.1, %bb.bl ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader1167.new ], [ %niter.next.1, %bb.bl ]
  %i.td = add nuw nsw i64 %indvars.iv1593, %i.tc  ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !56
  %i.tg = mul i32 %i.tf, 255
  %i.th = udiv i32 %i.tg, %spec.select.us.lcssa   ; 3 uses
  %i.ti = shl i32 %i.th, 8
  %i.tj = shl i32 %i.th, 16
  %i.tk = or i32 %i.tj, %i.ti
  %i.tl = or i32 %i.tk, %i.th
  %i.tm = or i32 %i.tl, -16777216
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.td
  store i32 %i.tm, ptr %i.tn, align 4, !tbaa !56
  %.reass = add nuw nsw i64 %indvars.iv1593, %invariant.op ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.reass
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !56
  %i.tq = mul i32 %i.tp, 255
  %i.tr = udiv i32 %i.tq, %spec.select.us.lcssa   ; 3 uses
  %i.ts = shl i32 %i.tr, 8
  %i.tt = shl i32 %i.tr, 16
  %i.tu = or i32 %i.tt, %i.ts
  %i.tv = or i32 %i.tu, %i.tr
  %i.tw = or i32 %i.tv, -16777216
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.reass
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !56
  %indvars.iv.next1594.1 = add nuw nsw i64 %indvars.iv1593, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1277.unr-lcssa, label %bb.bl

._crit_edge1277.unr-lcssa:                        ; preds = %bb.bl
  br i1 %lcmp.mod.not, label %._crit_edge1277, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1277.unr-lcssa, %.preheader1167.a
  %indvars.iv1593.epil.init = phi i64 [ 1, %.preheader1167.a ], [ %indvars.iv.next1594.1, %._crit_edge1277.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.ty = add nuw nsw i64 %indvars.iv1593.epil.init, %i.tc ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !56
  %i.ub = mul i32 %i.ua, 255
  %i.uc = udiv i32 %i.ub, %spec.select.us.lcssa   ; 3 uses
  %i.ud = shl i32 %i.uc, 8
  %i.ue = shl i32 %i.uc, 16
  %i.uf = or i32 %i.ue, %i.ud
  %i.ug = or i32 %i.uf, %i.uc
  %i.uh = or i32 %i.ug, -16777216
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ty
  store i32 %i.uh, ptr %i.ui, align 4, !tbaa !56
  br label %._crit_edge1277

._crit_edge1277:                                  ; preds = %._crit_edge1277.unr-lcssa, %.epil.preheader
  %indvars.iv.next1599 = add nuw nsw i64 %indvars.iv1598, 1 ; 2 uses
  %exitcond1602.not = icmp eq i64 %indvars.iv.next1599, %wide.trip.count1601
  br i1 %exitcond1602.not, label %.loopexit1169, label %.preheader1167.a

.loopexit1169:                                    ; preds = %._crit_edge1277, %._crit_edge1271
  %i.uj = mul nuw nsw i32 %i.os, %0
  %i.uk = zext nneg i32 %i.uj to i64
  %invariant.gep1909 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uk ; 2 uses
  %n.vec.a = and i64 %i.i, 508                    ; 3 uses
  br label %vector.body.a

vector.body.a:                                    ; preds = %vector.body.a, %.loopexit1169
  %index.a = phi i64 [ 0, %.loopexit1169 ], [ %index.next.a, %vector.body.a ] ; 3 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.a
  store <4 x i32> splat (i32 -16777216), ptr %i.ul, align 4, !tbaa !56
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1909, i64 %index.a
  store <4 x i32> splat (i32 -16777216), ptr %i.um, align 4, !tbaa !56
  %index.next.a = add nuw i64 %index.a, 4         ; 2 uses
  %i.un = icmp eq i64 %index.next.a, %n.vec.a
  br i1 %i.un, label %middle.block.a, label %vector.body.a, !llvm.loop !131

middle.block.a:                                   ; preds = %vector.body.a
  %cmp.n.a = icmp eq i64 %n.vec.a, %i.i
  br i1 %cmp.n.a, label %.preheader1166.preheader.a, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block.a, %scalar.ph
  %indvars.iv1603 = phi i64 [ %indvars.iv.next1604, %scalar.ph ], [ %n.vec.a, %middle.block.a ] ; 3 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1603
  store i32 -16777216, ptr %i.uo, align 4, !tbaa !56
  %gep1910 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1909, i64 %indvars.iv1603
  store i32 -16777216, ptr %gep1910, align 4, !tbaa !56
  %indvars.iv.next1604 = add nuw nsw i64 %indvars.iv1603, 1 ; 2 uses
  %exitcond1607.not = icmp eq i64 %indvars.iv.next1604, %i.i
  br i1 %exitcond1607.not, label %.preheader1166.preheader.a, label %scalar.ph, !llvm.loop !132

.preheader1166.preheader.a:                       ; preds = %scalar.ph, %middle.block.a
  %invariant.gep1911 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter89 = and i64 %i.i, 3                   ; 3 uses
  %unroll_iter92 = and i64 %i.i, 508
  br label %.preheader1166.a

.preheader1166.a:                                 ; preds = %.preheader1166.a, %.preheader1166.preheader.a
  %indvars.iv1608 = phi i64 [ 0, %.preheader1166.preheader.a ], [ %indvars.iv.next1609.3, %.preheader1166.a ] ; 5 uses
  %niter93 = phi i64 [ 0, %.preheader1166.preheader.a ], [ %niter93.next.3, %.preheader1166.a ]
  %i.up = mul nuw nsw i64 %indvars.iv1608, %i.i   ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.up
  store i32 -16777216, ptr %i.uq, align 4, !tbaa !56
  %gep1912 = getelementptr [4 x i8], ptr %invariant.gep1911, i64 %i.up
  %i.ur = getelementptr i8, ptr %gep1912, i64 -4
  store i32 -16777216, ptr %i.ur, align 4, !tbaa !56
  %indvars.iv.next1609 = or disjoint i64 %indvars.iv1608, 1
  %i.us = mul nuw nsw i64 %indvars.iv.next1609, %i.i ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.us
  store i32 -16777216, ptr %i.ut, align 4, !tbaa !56
  %gep1912.1 = getelementptr [4 x i8], ptr %invariant.gep1911, i64 %i.us
  %i.uu = getelementptr i8, ptr %gep1912.1, i64 -4
  store i32 -16777216, ptr %i.uu, align 4, !tbaa !56
  %indvars.iv.next1609.1 = or disjoint i64 %indvars.iv1608, 2
  %i.uv = mul nuw nsw i64 %indvars.iv.next1609.1, %i.i ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uv
  store i32 -16777216, ptr %i.uw, align 4, !tbaa !56
  %gep1912.2 = getelementptr [4 x i8], ptr %invariant.gep1911, i64 %i.uv
  %i.ux = getelementptr i8, ptr %gep1912.2, i64 -4
  store i32 -16777216, ptr %i.ux, align 4, !tbaa !56
  %indvars.iv.next1609.2 = or disjoint i64 %indvars.iv1608, 3
  %i.uy = mul nuw nsw i64 %indvars.iv.next1609.2, %i.i ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uy
  store i32 -16777216, ptr %i.uz, align 4, !tbaa !56
  %gep1912.3 = getelementptr [4 x i8], ptr %invariant.gep1911, i64 %i.uy
  %i.va = getelementptr i8, ptr %gep1912.3, i64 -4
  store i32 -16777216, ptr %i.va, align 4, !tbaa !56
  %indvars.iv.next1609.3 = add nuw nsw i64 %indvars.iv1608, 4 ; 2 uses
  %niter93.next.3 = add nuw nsw i64 %niter93, 4   ; 2 uses
  %niter93.ncmp.3 = icmp eq i64 %niter93.next.3, %unroll_iter92
  br i1 %niter93.ncmp.3, label %.preheader1165.preheader.unr-lcssa, label %.preheader1166.a

.preheader1165.preheader.unr-lcssa:               ; preds = %.preheader1166.a
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.preheader1165.preheader, label %.preheader1166.epil.preheader

.preheader1166.epil.preheader:                    ; preds = %.preheader1165.preheader.unr-lcssa
  %lcmp.mod91 = icmp ne i64 %xtraiter89, 0
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %.preheader1166.epil

.preheader1166.epil:                              ; preds = %.preheader1166.epil, %.preheader1166.epil.preheader
  %indvars.iv1608.epil = phi i64 [ %indvars.iv.next1609.3, %.preheader1166.epil.preheader ], [ %indvars.iv.next1609.epil, %.preheader1166.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1166.epil.preheader ], [ %epil.iter.next, %.preheader1166.epil ]
  %i.vb = mul nuw nsw i64 %indvars.iv1608.epil, %i.i ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vb
  store i32 -16777216, ptr %i.vc, align 4, !tbaa !56
  %gep1912.epil = getelementptr [4 x i8], ptr %invariant.gep1911, i64 %i.vb
  %i.vd = getelementptr i8, ptr %gep1912.epil, i64 -4
  store i32 -16777216, ptr %i.vd, align 4, !tbaa !56
  %indvars.iv.next1609.epil = add nuw nsw i64 %indvars.iv1608.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter89
  br i1 %epil.iter.cmp.not, label %.preheader1165.preheader, label %.preheader1166.epil, !llvm.loop !133

.preheader1165.preheader:                         ; preds = %.preheader1166.epil, %.preheader1165.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.ve = zext nneg i32 %0 to i64
  %wide.trip.count1625 = zext nneg i32 %i.os to i64 ; 2 uses
  %i.vf = shl nuw nsw i64 %i.i, 2
  %i.vg = shl nuw nsw i64 %i.i, 2
  %i.vh = getelementptr i8, ptr %1, i64 %i.vf
  br label %.preheader1165.a

.preheader1165.a:                                 ; preds = %.preheader1165.preheader, %._crit_edge1285
  %indvar = phi i64 [ 0, %.preheader1165.preheader ], [ %indvar.next, %._crit_edge1285 ] ; 2 uses
  %indvars.iv1622 = phi i64 [ 1, %.preheader1165.preheader ], [ %indvars.iv.next1623, %._crit_edge1285 ] ; 2 uses
  %i.vi = mul i64 %i.vg, %indvar
  %scevgep = getelementptr i8, ptr %i.vh, i64 %i.vi
  %i.vj = mul nuw nsw i64 %indvars.iv1622, %i.ve
  %load_initial = load i32, ptr %scevgep, align 4
  %i.vk = and i32 %load_initial, 255
  br label %.preheader1164

.preheader1162.preheader:                         ; preds = %._crit_edge1285
  %i.vl = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1639 = zext nneg i32 %i.os to i64 ; 2 uses
  %i.vm = add nsw i64 %wide.trip.count1591, -1    ; 2 uses
  %n.vec24 = and i64 %i.vm, -4                    ; 3 uses
  %i.vn = or disjoint i64 %n.vec24, 1
  %cmp.n31 = icmp eq i64 %i.vm, %n.vec24
  br label %.preheader1162.a

.preheader1164:                                   ; preds = %.preheader1165.a, %.preheader1164
  %store_forwarded = phi i32 [ %i.vk, %.preheader1165.a ], [ %i.vr, %.preheader1164 ]
  %indvars.iv1617 = phi i64 [ 1, %.preheader1165.a ], [ %indvars.iv.next1618, %.preheader1164 ] ; 2 uses
  %i.vo = add nuw nsw i64 %indvars.iv1617, %i.vj  ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vo ; 2 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !56
  %i.vr = and i32 %i.vq, 255                      ; 3 uses
  %i.vs = shl nuw nsw i32 %i.vr, 1
  %i.vt = add nuw nsw i32 %i.vs, %store_forwarded
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vo
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !56
  %i.vx = and i32 %i.vw, 255
  %i.vy = add nuw nsw i32 %i.vx, %i.vt
  %i.vz = shl nuw nsw i32 %i.vy, 6
  %i.wa = and i32 %i.vz, 130816
  %i.wb = or disjoint i32 %i.vr, %i.wa
  store i32 %i.wb, ptr %i.vp, align 4, !tbaa !56
  %indvars.iv.next1618 = add nuw nsw i64 %indvars.iv1617, 1 ; 2 uses
  %exitcond1621.not = icmp eq i64 %indvars.iv.next1618, %wide.trip.count1625
  br i1 %exitcond1621.not, label %._crit_edge1285, label %.preheader1164

._crit_edge1285:                                  ; preds = %.preheader1164
  %indvars.iv.next1623 = add nuw nsw i64 %indvars.iv1622, 1 ; 2 uses
  %exitcond1626.not = icmp eq i64 %indvars.iv.next1623, %wide.trip.count1625
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1626.not, label %.preheader1162.preheader, label %.preheader1165.a

.preheader1162.a:                                 ; preds = %.preheader1162.preheader, %._crit_edge1292
  %indvars.iv1636 = phi i64 [ 1, %.preheader1162.preheader ], [ %i.wh, %._crit_edge1292 ] ; 3 uses
  %i.wc = mul nuw nsw i64 %indvars.iv1636, %i.vl
  %i.wd = add nsw i64 %indvars.iv1636, -1
  %i.we = mul nuw nsw i64 %i.wd, %i.vl
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.we ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wc ; 2 uses
  %i.wh = add nuw nsw i64 %indvars.iv1636, 1      ; 3 uses
  %i.wi = mul nuw nsw i64 %i.wh, %i.vl
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wi ; 2 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %.preheader1162.a
  %index26 = phi i64 [ 0, %.preheader1162.a ], [ %index.next29, %vector.body25 ] ; 2 uses
  %i.wk = or disjoint i64 %index26, 1             ; 3 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.wk
  %wide.load.a = load <4 x i32>, ptr %i.wl, align 4, !tbaa !56
  %i.wm = lshr <4 x i32> %wide.load.a, splat (i32 8)
  %i.wn = and <4 x i32> %i.wm, splat (i32 255)
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.wk ; 2 uses
  %wide.load27.a = load <4 x i32>, ptr %i.wo, align 4, !tbaa !56
  %i.wp = lshr <4 x i32> %wide.load27.a, splat (i32 7)
  %i.wq = and <4 x i32> %i.wp, splat (i32 510)
  %i.wr = add nuw nsw <4 x i32> %i.wq, %i.wn
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.wk
  %wide.load28.a = load <4 x i32>, ptr %i.ws, align 4, !tbaa !56
  %i.wt = lshr <4 x i32> %wide.load28.a, splat (i32 8)
  %i.wu = and <4 x i32> %i.wt, splat (i32 255)
  %i.wv = add nuw nsw <4 x i32> %i.wu, %i.wr
  %i.ww = lshr <4 x i32> %i.wv, splat (i32 2)     ; 3 uses
  %i.wx = shl nuw nsw <4 x i32> %i.ww, splat (i32 8)
  %i.wy = shl nuw nsw <4 x i32> %i.ww, splat (i32 16)
  %i.wz = or <4 x i32> %i.wy, %i.wx
  %i.xa = or <4 x i32> %i.wz, %i.ww
  %i.xb = or <4 x i32> %i.xa, splat (i32 -16777216)
  store <4 x i32> %i.xb, ptr %i.wo, align 4, !tbaa !56
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.xc = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.xc, label %middle.block30, label %vector.body25, !llvm.loop !134

middle.block30:                                   ; preds = %vector.body25
  br i1 %cmp.n31, label %._crit_edge1292, label %.preheader1161

.preheader1161:                                   ; preds = %middle.block30, %.preheader1161
  %indvars.iv1631 = phi i64 [ %indvars.iv.next1632, %.preheader1161 ], [ %i.vn, %middle.block30 ] ; 4 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv1631
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !56
  %i.xf = lshr i32 %i.xe, 8
  %i.xg = and i32 %i.xf, 255
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv1631 ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !56
  %i.xj = lshr i32 %i.xi, 7
  %i.xk = and i32 %i.xj, 510
  %i.xl = add nuw nsw i32 %i.xk, %i.xg
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv1631
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !56
  %i.xo = lshr i32 %i.xn, 8
  %i.xp = and i32 %i.xo, 255
  %i.xq = add nuw nsw i32 %i.xp, %i.xl
  %i.xr = lshr i32 %i.xq, 2                       ; 3 uses
  %i.xs = shl nuw nsw i32 %i.xr, 8
  %i.xt = shl nuw nsw i32 %i.xr, 16
  %i.xu = or i32 %i.xt, %i.xs
  %i.xv = or i32 %i.xu, %i.xr
  %i.xw = or i32 %i.xv, -16777216
  store i32 %i.xw, ptr %i.xh, align 4, !tbaa !56
  %indvars.iv.next1632 = add nuw nsw i64 %indvars.iv1631, 1 ; 2 uses
  %exitcond1635.not = icmp eq i64 %indvars.iv.next1632, %wide.trip.count1639
  br i1 %exitcond1635.not, label %._crit_edge1292, label %.preheader1161, !llvm.loop !135

._crit_edge1292:                                  ; preds = %.preheader1161, %middle.block30
  %exitcond1640.not = icmp eq i64 %i.wh, %wide.trip.count1639
  br i1 %exitcond1640.not, label %._crit_edge1296.split, label %.preheader1162.a

._crit_edge1296.split:                            ; preds = %._crit_edge1292
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.38, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.xx = sub nsw i32 %i.os, %i.h
  %wide.trip.count1649 = zext nneg i32 %i.h to i64
  %wide.trip.count1659 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.xy = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter95 = and i64 %wide.trip.count, 1
  %i.xz = icmp eq i64 %i.xy, 0
  %unroll_iter100 = and i64 %wide.trip.count, 126
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  %lcmp.mod99 = trunc i32 %i.h to i1
  %min.iters.check44 = icmp samesign ult i32 %0, 48
  %i.ya = trunc nsw i64 %i.xy to i32              ; 2 uses
  %i.yb = icmp ugt i64 %i.xy, 4294967295
  %n.vec46 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yc = icmp eq i64 %n.vec46, 8
  %i.yd = icmp eq i64 %n.vec46, 16
  %i.ye = icmp eq i64 %n.vec46, 24
  %i.yf = icmp eq i64 %n.vec46, 32
  %i.yg = icmp eq i64 %n.vec46, 40
  %i.yh = icmp eq i64 %n.vec46, 48
  %i.yi = icmp eq i64 %n.vec46, 56
  %cmp.n58 = icmp eq i64 %n.vec46, %wide.trip.count
  %xtraiter102 = and i64 %wide.trip.count, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  %i.yj = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %0, 32
  %n.vec34 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yk = icmp eq i64 %n.vec34, 8
  %i.yl = icmp eq i64 %n.vec34, 16
  %i.ym = icmp eq i64 %n.vec34, 24
  %i.yn = icmp eq i64 %n.vec34, 32
  %i.yo = icmp eq i64 %n.vec34, 40
  %i.yp = icmp eq i64 %n.vec34, 48
  %i.yq = icmp eq i64 %n.vec34, 56
  %cmp.n42 = icmp eq i64 %n.vec34, %wide.trip.count
  br label %.preheader1160.split.us.preheader

.preheader1160.split.us.preheader:                ; preds = %.split.us, %._crit_edge1296.split
  %.88931318 = phi i32 [ 0, %._crit_edge1296.split ], [ %i.ako, %.split.us ] ; 8 uses
  %i.yr = mul i32 %.88931318, %0                  ; 2 uses
  %i.ys = add i32 %i.yr, -1
  %i.yt = add i32 %.88931318, -1
  %i.yu = mul i32 %i.yt, %0                       ; 13 uses
  %i.yv = zext i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.yv
  %i.yx = add i32 %i.p, %.88931318
  %i.yy = mul i32 %i.yx, %0                       ; 12 uses
  %i.yz = xor i32 %i.yu, -1
  %i.za = icmp ult i32 %i.yz, %i.ya
  %i.zb = xor i32 %i.yy, -1
  %i.zc = icmp ult i32 %i.zb, %i.ya
  %i.zd = or i1 %i.zc, %i.yb
  %i.ze = or i1 %i.za, %i.zd
  %i.zf = zext i32 %i.yu to i64
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zf ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zi = zext i32 %i.yy to i64
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zi ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zl = add i32 %i.yu, 8
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zp = add i32 %i.yy, 8
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zq ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zt = add i32 %i.yu, 16
  %i.zu = zext i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zu ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zx = add i32 %i.yy, 16
  %i.zy = zext i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zy ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %i.aab = add i32 %i.yu, 24
  %i.aac = zext i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aac ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  %i.aaf = add i32 %i.yy, 24
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aag ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = add i32 %i.yu, 32
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aak ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aan = add i32 %i.yy, 32
  %i.aao = zext i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aao ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %i.aar = add i32 %i.yu, 40
  %i.aas = zext i32 %i.aar to i64
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aas ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = add i32 %i.yy, 40
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaw ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = add i32 %i.yu, 48
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aba ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %i.abd = add i32 %i.yy, 48
  %i.abe = zext i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abe ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abh = add i32 %i.yu, 56
  %i.abi = zext i32 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abi ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = add i32 %i.yy, 56
  %i.abm = zext i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abm ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  br label %.preheader1160.split.us

.preheader1160.split.us:                          ; preds = %.preheader1160.split.us.preheader, %..loopexit1159_crit_edge.us
  %.81316.us = phi i32 [ %i.ajx, %..loopexit1159_crit_edge.us ], [ 0, %.preheader1160.split.us.preheader ] ; 8 uses
  %i.abp = or i32 %.81316.us, %.88931318
  %or.cond11.us = icmp eq i32 %i.abp, 0
  br i1 %or.cond11.us, label %.preheader1155.us.us, label %bb.bm

bb.bm:                                            ; preds = %.preheader1160.split.us
  %.not971.us = icmp eq i32 %.81316.us, 0
  br i1 %.not971.us, label %.lr.ph1305.us.preheader, label %.lr.ph1300.us

.lr.ph1300.us:                                    ; preds = %bb.bm
  %i.abq = add i32 %i.ys, %.81316.us
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !56 ; 2 uses
  br i1 %i.xz, label %.epil.preheader94, label %.lr.ph1300.us.new

.lr.ph1300.us.new:                                ; preds = %.lr.ph1300.us, %.lr.ph1300.us.new
  %indvars.iv1641 = phi i64 [ %indvars.iv.next1642.1, %.lr.ph1300.us.new ], [ 0, %.lr.ph1300.us ] ; 3 uses
  %.28691298.us = phi i32 [ %i.ada, %.lr.ph1300.us.new ], [ %i.abt, %.lr.ph1300.us ]
  %niter101 = phi i64 [ %niter101.next.1, %.lr.ph1300.us.new ], [ 0, %.lr.ph1300.us ]
  %i.abu = trunc nuw nsw i64 %indvars.iv1641 to i32
  %i.abv = add i32 %.88931318, %i.abu
  %i.abw = mul i32 %i.abv, %0
  %i.abx = add i32 %i.abw, %.81316.us             ; 2 uses
  %i.aby = add i32 %i.abx, -1
  %i.abz = zext i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !56
  %i.acc = and i32 %i.acb, 255
  %i.acd = add i32 %i.p, %i.abx
  %i.ace = zext i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ace
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !56
  %i.ach = and i32 %i.acg, 255
  %i.aci = trunc i64 %indvars.iv1641 to i32
  %i.acj = or disjoint i32 %i.aci, 1
  %i.ack = add i32 %.88931318, %i.acj
  %i.acl = mul i32 %i.ack, %0
  %i.acm = add i32 %i.acl, %.81316.us             ; 2 uses
  %i.acn = add i32 %i.acm, -1
  %i.aco = zext i32 %i.acn to i64
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aco
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !56
  %i.acr = and i32 %i.acq, 255
  %i.acs = add i32 %.28691298.us, %i.ach
  %i.act = add nuw nsw i32 %i.acc, %i.acr
  %i.acu = sub i32 %i.acs, %i.act
  %i.acv = add i32 %i.p, %i.acm
  %i.acw = zext i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !56
  %i.acz = and i32 %i.acy, 255
  %i.ada = add i32 %i.acu, %i.acz                 ; 3 uses
  %indvars.iv.next1642.1 = add nuw nsw i64 %indvars.iv1641, 2 ; 2 uses
  %niter101.next.1 = add nuw nsw i64 %niter101, 2 ; 2 uses
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %..loopexit1159_crit_edge.us.loopexit69.unr-lcssa, label %.lr.ph1300.us.new

.lr.ph1305.us.preheader:                          ; preds = %bb.bm
  %i.adb = load i32, ptr %i.yw, align 4, !tbaa !56 ; 2 uses
  %brmerge116 = select i1 %min.iters.check44, i1 true, i1 %i.ze
  br i1 %brmerge116, label %.lr.ph1305.us.preheader67, label %vector.body47

vector.body47:                                    ; preds = %.lr.ph1305.us.preheader
  %i.adc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.adb, i64 0
  %wide.load51 = load <4 x i32>, ptr %i.zg, align 4, !tbaa !56
  %wide.load52 = load <4 x i32>, ptr %i.zh, align 4, !tbaa !56
  %i.add = and <4 x i32> %wide.load51, splat (i32 255)
  %i.ade = and <4 x i32> %wide.load52, splat (i32 255)
  %i.adf = sub <4 x i32> %i.adc, %i.add
  %wide.load53 = load <4 x i32>, ptr %i.zj, align 4, !tbaa !56
  %wide.load54 = load <4 x i32>, ptr %i.zk, align 4, !tbaa !56
  %i.adg = and <4 x i32> %wide.load53, splat (i32 255)
  %i.adh = and <4 x i32> %wide.load54, splat (i32 255)
  %i.adi = add <4 x i32> %i.adf, %i.adg           ; 2 uses
  %i.adj = sub nsw <4 x i32> %i.adh, %i.ade       ; 2 uses
  br i1 %i.yc, label %middle.block56, label %vector.body47.1

vector.body47.1:                                  ; preds = %vector.body47
  %wide.load51.1 = load <4 x i32>, ptr %i.zn, align 4, !tbaa !56
  %wide.load52.1 = load <4 x i32>, ptr %i.zo, align 4, !tbaa !56
  %i.adk = and <4 x i32> %wide.load51.1, splat (i32 255)
  %i.adl = and <4 x i32> %wide.load52.1, splat (i32 255)
  %i.adm = sub <4 x i32> %i.adi, %i.adk
  %i.adn = sub nsw <4 x i32> %i.adj, %i.adl
  %wide.load53.1 = load <4 x i32>, ptr %i.zr, align 4, !tbaa !56
  %wide.load54.1 = load <4 x i32>, ptr %i.zs, align 4, !tbaa !56
  %i.ado = and <4 x i32> %wide.load53.1, splat (i32 255)
  %i.adp = and <4 x i32> %wide.load54.1, splat (i32 255)
  %i.adq = add <4 x i32> %i.adm, %i.ado           ; 2 uses
  %i.adr = add nsw <4 x i32> %i.adn, %i.adp       ; 2 uses
  br i1 %i.yd, label %middle.block56, label %vector.body47.2

vector.body47.2:                                  ; preds = %vector.body47.1
  %wide.load51.2 = load <4 x i32>, ptr %i.zv, align 4, !tbaa !56
  %wide.load52.2 = load <4 x i32>, ptr %i.zw, align 4, !tbaa !56
  %i.ads = and <4 x i32> %wide.load51.2, splat (i32 255)
  %i.adt = and <4 x i32> %wide.load52.2, splat (i32 255)
  %i.adu = sub <4 x i32> %i.adq, %i.ads
  %i.adv = sub nsw <4 x i32> %i.adr, %i.adt
  %wide.load53.2 = load <4 x i32>, ptr %i.zz, align 4, !tbaa !56
  %wide.load54.2 = load <4 x i32>, ptr %i.aaa, align 4, !tbaa !56
  %i.adw = and <4 x i32> %wide.load53.2, splat (i32 255)
  %i.adx = and <4 x i32> %wide.load54.2, splat (i32 255)
  %i.ady = add <4 x i32> %i.adu, %i.adw           ; 2 uses
  %i.adz = add nsw <4 x i32> %i.adv, %i.adx       ; 2 uses
  br i1 %i.ye, label %middle.block56, label %vector.body47.3

vector.body47.3:                                  ; preds = %vector.body47.2
  %wide.load51.3 = load <4 x i32>, ptr %i.aad, align 4, !tbaa !56
  %wide.load52.3 = load <4 x i32>, ptr %i.aae, align 4, !tbaa !56
  %i.aea = and <4 x i32> %wide.load51.3, splat (i32 255)
  %i.aeb = and <4 x i32> %wide.load52.3, splat (i32 255)
  %i.aec = sub <4 x i32> %i.ady, %i.aea
  %i.aed = sub nsw <4 x i32> %i.adz, %i.aeb
  %wide.load53.3 = load <4 x i32>, ptr %i.aah, align 4, !tbaa !56
  %wide.load54.3 = load <4 x i32>, ptr %i.aai, align 4, !tbaa !56
  %i.aee = and <4 x i32> %wide.load53.3, splat (i32 255)
  %i.aef = and <4 x i32> %wide.load54.3, splat (i32 255)
  %i.aeg = add <4 x i32> %i.aec, %i.aee           ; 2 uses
  %i.aeh = add <4 x i32> %i.aed, %i.aef           ; 2 uses
  br i1 %i.yf, label %middle.block56, label %vector.body47.4

vector.body47.4:                                  ; preds = %vector.body47.3
  %wide.load51.4 = load <4 x i32>, ptr %i.aal, align 4, !tbaa !56
  %wide.load52.4 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !56
  %i.aei = and <4 x i32> %wide.load51.4, splat (i32 255)
  %i.aej = and <4 x i32> %wide.load52.4, splat (i32 255)
  %i.aek = sub <4 x i32> %i.aeg, %i.aei
  %i.ael = sub <4 x i32> %i.aeh, %i.aej
  %wide.load53.4 = load <4 x i32>, ptr %i.aap, align 4, !tbaa !56
  %wide.load54.4 = load <4 x i32>, ptr %i.aaq, align 4, !tbaa !56
  %i.aem = and <4 x i32> %wide.load53.4, splat (i32 255)
  %i.aen = and <4 x i32> %wide.load54.4, splat (i32 255)
  %i.aeo = add <4 x i32> %i.aek, %i.aem           ; 2 uses
  %i.aep = add <4 x i32> %i.ael, %i.aen           ; 2 uses
  br i1 %i.yg, label %middle.block56, label %vector.body47.5

vector.body47.5:                                  ; preds = %vector.body47.4
  %wide.load51.5 = load <4 x i32>, ptr %i.aat, align 4, !tbaa !56
  %wide.load52.5 = load <4 x i32>, ptr %i.aau, align 4, !tbaa !56
  %i.aeq = and <4 x i32> %wide.load51.5, splat (i32 255)
  %i.aer = and <4 x i32> %wide.load52.5, splat (i32 255)
  %i.aes = sub <4 x i32> %i.aeo, %i.aeq
  %i.aet = sub <4 x i32> %i.aep, %i.aer
  %wide.load53.5 = load <4 x i32>, ptr %i.aax, align 4, !tbaa !56
  %wide.load54.5 = load <4 x i32>, ptr %i.aay, align 4, !tbaa !56
  %i.aeu = and <4 x i32> %wide.load53.5, splat (i32 255)
  %i.aev = and <4 x i32> %wide.load54.5, splat (i32 255)
  %i.aew = add <4 x i32> %i.aes, %i.aeu           ; 2 uses
  %i.aex = add <4 x i32> %i.aet, %i.aev           ; 2 uses
  br i1 %i.yh, label %middle.block56, label %vector.body47.6

vector.body47.6:                                  ; preds = %vector.body47.5
  %wide.load51.6 = load <4 x i32>, ptr %i.abb, align 4, !tbaa !56
  %wide.load52.6 = load <4 x i32>, ptr %i.abc, align 4, !tbaa !56
  %i.aey = and <4 x i32> %wide.load51.6, splat (i32 255)
  %i.aez = and <4 x i32> %wide.load52.6, splat (i32 255)
  %i.afa = sub <4 x i32> %i.aew, %i.aey
  %i.afb = sub <4 x i32> %i.aex, %i.aez
  %wide.load53.6 = load <4 x i32>, ptr %i.abf, align 4, !tbaa !56
  %wide.load54.6 = load <4 x i32>, ptr %i.abg, align 4, !tbaa !56
  %i.afc = and <4 x i32> %wide.load53.6, splat (i32 255)
  %i.afd = and <4 x i32> %wide.load54.6, splat (i32 255)
  %i.afe = add <4 x i32> %i.afa, %i.afc           ; 2 uses
  %i.aff = add <4 x i32> %i.afb, %i.afd           ; 2 uses
  br i1 %i.yi, label %middle.block56, label %vector.body47.7

vector.body47.7:                                  ; preds = %vector.body47.6
  %wide.load51.7 = load <4 x i32>, ptr %i.abj, align 4, !tbaa !56
  %wide.load52.7 = load <4 x i32>, ptr %i.abk, align 4, !tbaa !56
  %i.afg = and <4 x i32> %wide.load51.7, splat (i32 255)
  %i.afh = and <4 x i32> %wide.load52.7, splat (i32 255)
  %i.afi = sub <4 x i32> %i.afe, %i.afg
  %i.afj = sub <4 x i32> %i.aff, %i.afh
  %wide.load53.7 = load <4 x i32>, ptr %i.abn, align 4, !tbaa !56
  %wide.load54.7 = load <4 x i32>, ptr %i.abo, align 4, !tbaa !56
  %i.afk = and <4 x i32> %wide.load53.7, splat (i32 255)
  %i.afl = and <4 x i32> %wide.load54.7, splat (i32 255)
  %i.afm = add <4 x i32> %i.afi, %i.afk
  %i.afn = add <4 x i32> %i.afj, %i.afl
  br label %middle.block56

middle.block56:                                   ; preds = %vector.body47.7, %vector.body47.6, %vector.body47.5, %vector.body47.4, %vector.body47.3, %vector.body47.2, %vector.body47.1, %vector.body47
  %.lcssa72 = phi <4 x i32> [ %i.adi, %vector.body47 ], [ %i.adq, %vector.body47.1 ], [ %i.ady, %vector.body47.2 ], [ %i.aeg, %vector.body47.3 ], [ %i.aeo, %vector.body47.4 ], [ %i.aew, %vector.body47.5 ], [ %i.afe, %vector.body47.6 ], [ %i.afm, %vector.body47.7 ]
  %.lcssa71 = phi <4 x i32> [ %i.adj, %vector.body47 ], [ %i.adr, %vector.body47.1 ], [ %i.adz, %vector.body47.2 ], [ %i.aeh, %vector.body47.3 ], [ %i.aep, %vector.body47.4 ], [ %i.aex, %vector.body47.5 ], [ %i.aff, %vector.body47.6 ], [ %i.afn, %vector.body47.7 ]
  %bin.rdx57 = add <4 x i32> %.lcssa71, %.lcssa72
  %i.afo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  br i1 %cmp.n58, label %..loopexit1159_crit_edge.us, label %.lr.ph1305.us.preheader67

.lr.ph1305.us.preheader67:                        ; preds = %.lr.ph1305.us.preheader, %middle.block56
  %indvars.iv1646.ph = phi i64 [ %n.vec46, %middle.block56 ], [ 0, %.lr.ph1305.us.preheader ] ; 4 uses
  %.38701303.us.ph = phi i32 [ %i.afo, %middle.block56 ], [ %i.adb, %.lr.ph1305.us.preheader ] ; 2 uses
  br i1 %lcmp.mod103.not, label %.lr.ph1305.us.prol.loopexit, label %.lr.ph1305.us.prol

.lr.ph1305.us.prol:                               ; preds = %.lr.ph1305.us.preheader67
  %i.afp = trunc nuw nsw i64 %indvars.iv1646.ph to i32 ; 2 uses
  %i.afq = add i32 %i.yu, %i.afp
  %i.afr = zext i32 %i.afq to i64
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.afr
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !56
  %i.afu = and i32 %i.aft, 255
  %i.afv = sub i32 %.38701303.us.ph, %i.afu
  %i.afw = add i32 %i.yy, %i.afp
  %i.afx = zext i32 %i.afw to i64
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.afx
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !56
  %i.aga = and i32 %i.afz, 255
  %i.agb = add i32 %i.afv, %i.aga                 ; 2 uses
  %indvars.iv.next1647.prol = or disjoint i64 %indvars.iv1646.ph, 1
  br label %.lr.ph1305.us.prol.loopexit

.lr.ph1305.us.prol.loopexit:                      ; preds = %.lr.ph1305.us.prol, %.lr.ph1305.us.preheader67
  %.lcssa73.unr = phi i32 [ poison, %.lr.ph1305.us.preheader67 ], [ %i.agb, %.lr.ph1305.us.prol ]
  %indvars.iv1646.unr = phi i64 [ %indvars.iv1646.ph, %.lr.ph1305.us.preheader67 ], [ %indvars.iv.next1647.prol, %.lr.ph1305.us.prol ]
  %.38701303.us.unr = phi i32 [ %.38701303.us.ph, %.lr.ph1305.us.preheader67 ], [ %i.agb, %.lr.ph1305.us.prol ]
  %i.agc = icmp eq i64 %indvars.iv1646.ph, %i.yj
  br i1 %i.agc, label %..loopexit1159_crit_edge.us, label %.lr.ph1305.us

.lr.ph1305.us:                                    ; preds = %.lr.ph1305.us.prol.loopexit, %.lr.ph1305.us
  %indvars.iv1646 = phi i64 [ %indvars.iv.next1647.1, %.lr.ph1305.us ], [ %indvars.iv1646.unr, %.lr.ph1305.us.prol.loopexit ] ; 3 uses
  %.38701303.us = phi i32 [ %i.ahd, %.lr.ph1305.us ], [ %.38701303.us.unr, %.lr.ph1305.us.prol.loopexit ]
  %i.agd = trunc nuw nsw i64 %indvars.iv1646 to i32 ; 2 uses
  %i.age = add i32 %i.yu, %i.agd
  %i.agf = zext i32 %i.age to i64
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.agf
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !56
  %i.agi = and i32 %i.agh, 255
  %i.agj = add i32 %i.yy, %i.agd
  %i.agk = zext i32 %i.agj to i64
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.agk
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !56
  %i.agn = and i32 %i.agm, 255
  %i.ago = trunc i64 %indvars.iv1646 to i32
  %i.agp = add i32 %i.ago, 1                      ; 2 uses
  %i.agq = add i32 %i.yu, %i.agp
  %i.agr = zext i32 %i.agq to i64
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.agr
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !56
  %i.agu = and i32 %i.agt, 255
  %i.agv = add i32 %.38701303.us, %i.agn
  %i.agw = add nuw nsw i32 %i.agi, %i.agu
  %i.agx = sub i32 %i.agv, %i.agw
  %i.agy = add i32 %i.yy, %i.agp
  %i.agz = zext i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !56
  %i.ahc = and i32 %i.ahb, 255
  %i.ahd = add i32 %i.agx, %i.ahc                 ; 2 uses
  %indvars.iv.next1647.1 = add nuw nsw i64 %indvars.iv1646, 2 ; 2 uses
  %exitcond1650.not.1 = icmp eq i64 %indvars.iv.next1647.1, %wide.trip.count1649
  br i1 %exitcond1650.not.1, label %..loopexit1159_crit_edge.us, label %.lr.ph1305.us, !llvm.loop !136

.preheader1155.us.us:                             ; preds = %.preheader1160.split.us, %._crit_edge1310.us.us
  %indvars.iv1656 = phi i64 [ %indvars.iv.next1657, %._crit_edge1310.us.us ], [ 0, %.preheader1160.split.us ] ; 2 uses
  %.08671313.us.us = phi i32 [ %.lcssa12, %._crit_edge1310.us.us ], [ 0, %.preheader1160.split.us ] ; 2 uses
  %i.ahe = mul nuw nsw i64 %indvars.iv1656, %i.i
  %invariant.gep1913 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ahe ; 17 uses
  br i1 %min.iters.check, label %scalar.ph32.preheader, label %vector.body35

vector.body35:                                    ; preds = %.preheader1155.us.us
  %i.ahf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.08671313.us.us, i64 0
  %i.ahg = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 16
  %wide.load38 = load <4 x i32>, ptr %invariant.gep1913, align 4, !tbaa !56
  %wide.load39 = load <4 x i32>, ptr %i.ahg, align 4, !tbaa !56
  %i.ahh = and <4 x i32> %wide.load38, splat (i32 255)
  %i.ahi = and <4 x i32> %wide.load39, splat (i32 255) ; 2 uses
  %i.ahj = add <4 x i32> %i.ahh, %i.ahf           ; 2 uses
  br i1 %i.yk, label %middle.block41, label %vector.body35.1

vector.body35.1:                                  ; preds = %vector.body35
  %i.ahk = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 32
  %i.ahl = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 48
  %wide.load38.1 = load <4 x i32>, ptr %i.ahk, align 4, !tbaa !56
  %wide.load39.1 = load <4 x i32>, ptr %i.ahl, align 4, !tbaa !56
  %i.ahm = and <4 x i32> %wide.load38.1, splat (i32 255)
  %i.ahn = and <4 x i32> %wide.load39.1, splat (i32 255)
  %i.aho = add <4 x i32> %i.ahm, %i.ahj           ; 2 uses
  %i.ahp = add nuw nsw <4 x i32> %i.ahn, %i.ahi   ; 2 uses
  br i1 %i.yl, label %middle.block41, label %vector.body35.2

vector.body35.2:                                  ; preds = %vector.body35.1
  %i.ahq = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 64
  %i.ahr = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 80
  %wide.load38.2 = load <4 x i32>, ptr %i.ahq, align 4, !tbaa !56
  %wide.load39.2 = load <4 x i32>, ptr %i.ahr, align 4, !tbaa !56
  %i.ahs = and <4 x i32> %wide.load38.2, splat (i32 255)
  %i.aht = and <4 x i32> %wide.load39.2, splat (i32 255)
  %i.ahu = add <4 x i32> %i.ahs, %i.aho           ; 2 uses
  %i.ahv = add nuw nsw <4 x i32> %i.aht, %i.ahp   ; 2 uses
  br i1 %i.ym, label %middle.block41, label %vector.body35.3

vector.body35.3:                                  ; preds = %vector.body35.2
  %i.ahw = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 96
  %i.ahx = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 112
  %wide.load38.3 = load <4 x i32>, ptr %i.ahw, align 4, !tbaa !56
  %wide.load39.3 = load <4 x i32>, ptr %i.ahx, align 4, !tbaa !56
  %i.ahy = and <4 x i32> %wide.load38.3, splat (i32 255)
  %i.ahz = and <4 x i32> %wide.load39.3, splat (i32 255)
  %i.aia = add <4 x i32> %i.ahy, %i.ahu           ; 2 uses
  %i.aib = add nuw nsw <4 x i32> %i.ahz, %i.ahv   ; 2 uses
  br i1 %i.yn, label %middle.block41, label %vector.body35.4

vector.body35.4:                                  ; preds = %vector.body35.3
  %i.aic = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 128
  %i.aid = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 144
  %wide.load38.4 = load <4 x i32>, ptr %i.aic, align 4, !tbaa !56
  %wide.load39.4 = load <4 x i32>, ptr %i.aid, align 4, !tbaa !56
  %i.aie = and <4 x i32> %wide.load38.4, splat (i32 255)
  %i.aif = and <4 x i32> %wide.load39.4, splat (i32 255)
  %i.aig = add <4 x i32> %i.aie, %i.aia           ; 2 uses
  %i.aih = add nuw nsw <4 x i32> %i.aif, %i.aib   ; 2 uses
  br i1 %i.yo, label %middle.block41, label %vector.body35.5

vector.body35.5:                                  ; preds = %vector.body35.4
  %i.aii = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 160
  %i.aij = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 176
  %wide.load38.5 = load <4 x i32>, ptr %i.aii, align 4, !tbaa !56
  %wide.load39.5 = load <4 x i32>, ptr %i.aij, align 4, !tbaa !56
  %i.aik = and <4 x i32> %wide.load38.5, splat (i32 255)
  %i.ail = and <4 x i32> %wide.load39.5, splat (i32 255)
  %i.aim = add <4 x i32> %i.aik, %i.aig           ; 2 uses
  %i.ain = add nuw nsw <4 x i32> %i.ail, %i.aih   ; 2 uses
  br i1 %i.yp, label %middle.block41, label %vector.body35.6

vector.body35.6:                                  ; preds = %vector.body35.5
  %i.aio = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 192
  %i.aip = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 208
  %wide.load38.6 = load <4 x i32>, ptr %i.aio, align 4, !tbaa !56
  %wide.load39.6 = load <4 x i32>, ptr %i.aip, align 4, !tbaa !56
  %i.aiq = and <4 x i32> %wide.load38.6, splat (i32 255)
  %i.air = and <4 x i32> %wide.load39.6, splat (i32 255)
  %i.ais = add <4 x i32> %i.aiq, %i.aim           ; 2 uses
  %i.ait = add nuw nsw <4 x i32> %i.air, %i.ain   ; 2 uses
  br i1 %i.yq, label %middle.block41, label %vector.body35.7

vector.body35.7:                                  ; preds = %vector.body35.6
  %i.aiu = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 224
  %i.aiv = getelementptr inbounds nuw i8, ptr %invariant.gep1913, i64 240
  %wide.load38.7 = load <4 x i32>, ptr %i.aiu, align 4, !tbaa !56
  %wide.load39.7 = load <4 x i32>, ptr %i.aiv, align 4, !tbaa !56
  %i.aiw = and <4 x i32> %wide.load38.7, splat (i32 255)
  %i.aix = and <4 x i32> %wide.load39.7, splat (i32 255)
  %i.aiy = add <4 x i32> %i.aiw, %i.ais
  %i.aiz = add <4 x i32> %i.aix, %i.ait
  br label %middle.block41

middle.block41:                                   ; preds = %vector.body35.7, %vector.body35.6, %vector.body35.5, %vector.body35.4, %vector.body35.3, %vector.body35.2, %vector.body35.1, %vector.body35
  %.lcssa75 = phi <4 x i32> [ %i.ahj, %vector.body35 ], [ %i.aho, %vector.body35.1 ], [ %i.ahu, %vector.body35.2 ], [ %i.aia, %vector.body35.3 ], [ %i.aig, %vector.body35.4 ], [ %i.aim, %vector.body35.5 ], [ %i.ais, %vector.body35.6 ], [ %i.aiy, %vector.body35.7 ]
  %.lcssa74 = phi <4 x i32> [ %i.ahi, %vector.body35 ], [ %i.ahp, %vector.body35.1 ], [ %i.ahv, %vector.body35.2 ], [ %i.aib, %vector.body35.3 ], [ %i.aih, %vector.body35.4 ], [ %i.ain, %vector.body35.5 ], [ %i.ait, %vector.body35.6 ], [ %i.aiz, %vector.body35.7 ]
  %bin.rdx = add <4 x i32> %.lcssa74, %.lcssa75
  %i.aja = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n42, label %._crit_edge1310.us.us, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %.preheader1155.us.us, %middle.block41
  %indvars.iv1651.ph = phi i64 [ 0, %.preheader1155.us.us ], [ %n.vec34, %middle.block41 ]
  %.18681308.us.us.ph = phi i32 [ %.08671313.us.us, %.preheader1155.us.us ], [ %i.aja, %middle.block41 ]
  br label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %indvars.iv1651 = phi i64 [ %indvars.iv.next1652, %scalar.ph32 ], [ %indvars.iv1651.ph, %scalar.ph32.preheader ] ; 2 uses
  %.18681308.us.us = phi i32 [ %i.ajd, %scalar.ph32 ], [ %.18681308.us.us.ph, %scalar.ph32.preheader ]
  %gep1914 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1913, i64 %indvars.iv1651
  %i.ajb = load i32, ptr %gep1914, align 4, !tbaa !56
  %i.ajc = and i32 %i.ajb, 255
  %i.ajd = add i32 %i.ajc, %.18681308.us.us       ; 2 uses
  %indvars.iv.next1652 = add nuw nsw i64 %indvars.iv1651, 1 ; 2 uses
  %exitcond1655.not = icmp eq i64 %indvars.iv.next1652, %wide.trip.count1659
  br i1 %exitcond1655.not, label %._crit_edge1310.us.us, label %scalar.ph32, !llvm.loop !137

._crit_edge1310.us.us:                            ; preds = %scalar.ph32, %middle.block41
  %.lcssa12 = phi i32 [ %i.aja, %middle.block41 ], [ %i.ajd, %scalar.ph32 ] ; 2 uses
  %indvars.iv.next1657 = add nuw nsw i64 %indvars.iv1656, 1 ; 2 uses
  %exitcond1660.not = icmp eq i64 %indvars.iv.next1657, %wide.trip.count1659
  br i1 %exitcond1660.not, label %..loopexit1159_crit_edge.us, label %.preheader1155.us.us

..loopexit1159_crit_edge.us.loopexit69.unr-lcssa: ; preds = %.lr.ph1300.us.new
  br i1 %lcmp.mod97.not, label %..loopexit1159_crit_edge.us, label %.epil.preheader94

.epil.preheader94:                                ; preds = %..loopexit1159_crit_edge.us.loopexit69.unr-lcssa, %.lr.ph1300.us
  %indvars.iv1641.epil.init = phi i64 [ 0, %.lr.ph1300.us ], [ %indvars.iv.next1642.1, %..loopexit1159_crit_edge.us.loopexit69.unr-lcssa ]
  %.28691298.us.epil.init = phi i32 [ %i.abt, %.lr.ph1300.us ], [ %i.ada, %..loopexit1159_crit_edge.us.loopexit69.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.aje = trunc nuw nsw i64 %indvars.iv1641.epil.init to i32
  %i.ajf = add i32 %.88931318, %i.aje
  %i.ajg = mul i32 %i.ajf, %0
  %i.ajh = add i32 %i.ajg, %.81316.us             ; 2 uses
  %i.aji = add i32 %i.ajh, -1
  %i.ajj = zext i32 %i.aji to i64
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ajj
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !56
  %i.ajm = and i32 %i.ajl, 255
  %i.ajn = sub i32 %.28691298.us.epil.init, %i.ajm
  %i.ajo = add i32 %i.p, %i.ajh
  %i.ajp = zext i32 %i.ajo to i64
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ajp
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !56
  %i.ajs = and i32 %i.ajr, 255
  %i.ajt = add i32 %i.ajn, %i.ajs
  br label %..loopexit1159_crit_edge.us

..loopexit1159_crit_edge.us:                      ; preds = %.epil.preheader94, %..loopexit1159_crit_edge.us.loopexit69.unr-lcssa, %.lr.ph1305.us.prol.loopexit, %.lr.ph1305.us, %._crit_edge1310.us.us, %middle.block56
  %.4871.us = phi i32 [ %i.ahd, %.lr.ph1305.us ], [ %.lcssa12, %._crit_edge1310.us.us ], [ %i.afo, %middle.block56 ], [ %.lcssa73.unr, %.lr.ph1305.us.prol.loopexit ], [ %i.ada, %..loopexit1159_crit_edge.us.loopexit69.unr-lcssa ], [ %i.ajt, %.epil.preheader94 ]
  %i.aju = add i32 %.81316.us, %i.yr
  %i.ajv = zext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ajv
  store i32 %.4871.us, ptr %i.ajw, align 4, !tbaa !56
  %i.ajx = add i32 %.81316.us, 1                  ; 2 uses
  %.not970.us = icmp ugt i32 %i.ajx, %i.xx
  br i1 %.not970.us, label %.split.us, label %.preheader1160.split.us

.preheader1154:                                   ; preds = %.split.us
  %.not1479 = icmp eq i32 %i.os, %i.h
  %umax1689 = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 1) ; 2 uses
  %wide.trip.count1690 = zext i32 %umax1689 to i64
  %wide.trip.count1743 = zext i32 %umax1689 to i64
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aka = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.akb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.akc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.akd = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ake = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.akf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.akg = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.akh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aki = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.akk = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.akl = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.akm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.akn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %.preheader1153.lr.ph

.split.us:                                        ; preds = %..loopexit1159_crit_edge.us
  %i.ako = add i32 %.88931318, 1                  ; 2 uses
  %.not967 = icmp ugt i32 %i.ako, %i.o
  br i1 %.not967, label %.preheader1154, label %.preheader1160.split.us.preheader

.preheader1153.lr.ph:                             ; preds = %._crit_edge1379, %.preheader1154
  %indvars.iv1747 = phi i64 [ 0, %.preheader1154 ], [ %indvars.iv.next1748, %._crit_edge1379 ] ; 26 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1747 ; 2 uses
  store i32 0, ptr %i.akp, align 4, !tbaa !56
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1747 ; 2 uses
  store i32 -1, ptr %i.akq, align 4, !tbaa !56
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv1747 ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv1747 ; 2 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv1747 ; 2 uses
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv1747 ; 2 uses
  br i1 %.not1479, label %._crit_edge1379, label %.preheader1153.lr.ph.split.us

.preheader1153.lr.ph.split.us:                    ; preds = %.preheader1153.lr.ph
  %.not1481 = icmp eq i64 %indvars.iv1747, 0
  br i1 %.not1481, label %.preheader1153.us.us1405.us, label %.lr.ph1332.split.us.us.us.split.us.preheader.preheader

.lr.ph1332.split.us.us.us.split.us.preheader.preheader: ; preds = %.preheader1153.lr.ph.split.us
  %exitcond1680.not = icmp eq i64 %indvars.iv1747, 1
  %exitcond1680.not.1 = icmp eq i64 %indvars.iv1747, 2
  %exitcond1680.not.2 = icmp eq i64 %indvars.iv1747, 3
  %exitcond1680.not.3 = icmp eq i64 %indvars.iv1747, 4
  %exitcond1685.not = icmp eq i64 %indvars.iv1747, 1 ; 2 uses
  %exitcond1685.not.1 = icmp eq i64 %indvars.iv1747, 2 ; 2 uses
  %exitcond1685.not.2 = icmp eq i64 %indvars.iv1747, 3 ; 2 uses
  %exitcond1685.not.3 = icmp eq i64 %indvars.iv1747, 4 ; 2 uses
  br label %.lr.ph1332.split.us.us.us.split.us.preheader

.lr.ph1332.split.us.us.us.split.us.preheader:     ; preds = %.lr.ph1332.split.us.us.us.split.us.preheader.preheader, %._crit_edge1333.split.us.us.us
  %.us-phi1338.us1394.us = phi i32 [ %i.aow, %._crit_edge1333.split.us.us.us ], [ -1, %.lr.ph1332.split.us.us.us.split.us.preheader.preheader ]
  %.us-phi1339.us1392.us = phi i32 [ %i.amy, %._crit_edge1333.split.us.us.us ], [ 0, %.lr.ph1332.split.us.us.us.split.us.preheader.preheader ]
  %.98941374.us.us = phi i32 [ %i.aox, %._crit_edge1333.split.us.us.us ], [ 0, %.lr.ph1332.split.us.us.us.split.us.preheader.preheader ] ; 15 uses
  %i.akv = mul i32 %.98941374.us.us, %0
  %i.akw = add i32 %.98941374.us.us, %i.h         ; 10 uses
  br label %.lr.ph1332.split.us.us.us.split.us

.lr.ph1332.split.us.us.us.split.us:               ; preds = %.lr.ph1332.split.us.us.us.split.us.preheader, %bb.cp
  %indvars.iv1686 = phi i64 [ 0, %.lr.ph1332.split.us.us.us.split.us.preheader ], [ %indvars.iv.next1687, %bb.cp ] ; 12 uses
  %i.akx = phi i32 [ %.us-phi1338.us1394.us, %.lr.ph1332.split.us.us.us.split.us.preheader ], [ %i.aow, %bb.cp ] ; 3 uses
  %i.aky = phi i32 [ %.us-phi1339.us1392.us, %.lr.ph1332.split.us.us.us.split.us.preheader ], [ %i.amy, %bb.cp ] ; 7 uses
  %indvars1688 = trunc i64 %indvars.iv1686 to i32 ; 5 uses
  %i.akz = add i32 %i.akv, %indvars1688
  %i.ala = zext i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ala
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !56 ; 4 uses
  %i.ald = icmp ugt i32 %i.alc, %i.aky
  br i1 %i.ald, label %.preheader1152.us.us.us.us.a, label %._crit_edge1323.us.us.us.us

.preheader1152.us.us.us.us.a:                     ; preds = %.lr.ph1332.split.us.us.us.split.us
  %i.ale = add i32 %i.h, %indvars1688             ; 5 uses
  %i.alf = load i32, ptr %i.b, align 16, !tbaa !56 ; 2 uses
  %i.alg = icmp ugt i32 %i.ale, %i.alf
  %i.alh = add i32 %i.alf, %i.h
  %i.ali = zext i32 %i.alh to i64
  %i.alj = icmp samesign ult i64 %indvars.iv1686, %i.ali
  %or.cond1011.us.us.us.us = and i1 %i.alg, %i.alj
  br i1 %or.cond1011.us.us.us.us, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.preheader1152.us.us.us.us.a
  %i.alk = load i32, ptr %i.c, align 16, !tbaa !56 ; 2 uses
  %i.all = icmp ugt i32 %i.akw, %i.alk
  %i.alm = add i32 %i.alk, %i.h
  %i.aln = icmp ult i32 %.98941374.us.us, %i.alm
  %or.cond1014.us.us.us.us = and i1 %i.all, %i.aln
  br i1 %or.cond1014.us.us.us.us, label %._crit_edge1323.us.us.us.us, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.preheader1152.us.us.us.us.a
  br i1 %exitcond1680.not, label %._crit_edge1323.us.us.us.us.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.alo = load i32, ptr %i.ajy, align 4, !tbaa !56 ; 2 uses
  %i.alp = icmp ugt i32 %i.ale, %i.alo
  %i.alq = add i32 %i.alo, %i.h
  %i.alr = zext i32 %i.alq to i64
  %i.als = icmp samesign ult i64 %indvars.iv1686, %i.alr
  %or.cond1011.us.us.us.us.1 = and i1 %i.alp, %i.als
  br i1 %or.cond1011.us.us.us.us.1, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.alt = load i32, ptr %i.ajz, align 4, !tbaa !56 ; 2 uses
  %i.alu = icmp ugt i32 %i.akw, %i.alt
  %i.alv = add i32 %i.alt, %i.h
  %i.alw = icmp ult i32 %.98941374.us.us, %i.alv
  %or.cond1014.us.us.us.us.1 = and i1 %i.alu, %i.alw
  br i1 %or.cond1014.us.us.us.us.1, label %._crit_edge1323.us.us.us.us, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %exitcond1680.not.1, label %._crit_edge1323.us.us.us.us.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.alx = load i32, ptr %i.aka, align 8, !tbaa !56 ; 2 uses
  %i.aly = icmp ugt i32 %i.ale, %i.alx
  %i.alz = add i32 %i.alx, %i.h
  %i.ama = zext i32 %i.alz to i64
  %i.amb = icmp samesign ult i64 %indvars.iv1686, %i.ama
  %or.cond1011.us.us.us.us.2 = and i1 %i.aly, %i.amb
  br i1 %or.cond1011.us.us.us.us.2, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.amc = load i32, ptr %i.akb, align 8, !tbaa !56 ; 2 uses
  %i.amd = icmp ugt i32 %i.akw, %i.amc
  %i.ame = add i32 %i.amc, %i.h
  %i.amf = icmp ult i32 %.98941374.us.us, %i.ame
  %or.cond1014.us.us.us.us.2 = and i1 %i.amd, %i.amf
  br i1 %or.cond1014.us.us.us.us.2, label %._crit_edge1323.us.us.us.us, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br i1 %exitcond1680.not.2, label %._crit_edge1323.us.us.us.us.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.amg = load i32, ptr %i.akc, align 4, !tbaa !56 ; 2 uses
  %i.amh = icmp ugt i32 %i.ale, %i.amg
  %i.ami = add i32 %i.amg, %i.h
  %i.amj = zext i32 %i.ami to i64
  %i.amk = icmp samesign ult i64 %indvars.iv1686, %i.amj
  %or.cond1011.us.us.us.us.3 = and i1 %i.amh, %i.amk
  br i1 %or.cond1011.us.us.us.us.3, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.aml = load i32, ptr %i.akd, align 4, !tbaa !56 ; 2 uses
  %i.amm = icmp ugt i32 %i.akw, %i.aml
  %i.amn = add i32 %i.aml, %i.h
  %i.amo = icmp ult i32 %.98941374.us.us, %i.amn
  %or.cond1014.us.us.us.us.3 = and i1 %i.amm, %i.amo
  br i1 %or.cond1014.us.us.us.us.3, label %._crit_edge1323.us.us.us.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %exitcond1680.not.3, label %._crit_edge1323.us.us.us.us.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.amp = load i32, ptr %i.ake, align 16, !tbaa !56 ; 2 uses
end_hunk_0
begin_hunk_1_@getmetrics:bb.a
  %i.apw = udiv i32 %i.apv, %i.il
  store i32 %i.apw, ptr %i.apo, align 4, !tbaa !56
  %i.apx = load i32, ptr %i.e, align 16, !tbaa !56
  store i32 %i.apx, ptr %i.app, align 8, !tbaa !56
  %i.apy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !56
  %i.aqa = udiv i32 %i.apz, %i.il                 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 2 uses
  store i32 %i.aqa, ptr %i.aqb, align 4, !tbaa !56
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !56 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  store i32 %i.aqd, ptr %i.aqe, align 8, !tbaa !56
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !56 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  store i32 %i.aqg, ptr %i.aqh, align 4, !tbaa !56
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !56
  %i.aqk = udiv i32 %i.aqj, %i.il
  %i.aql = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  store i32 %i.aqk, ptr %i.aql, align 8, !tbaa !56
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aqn = getelementptr inbounds nuw i8, ptr %2, i64 204 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aqq = load i32, ptr %i.aqp, align 8, !tbaa !56
  %i.aqr = udiv i32 %i.aqq, %i.il                 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store i32 %i.aqr, ptr %i.aqs, align 8, !tbaa !56
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aqu = load i32, ptr %i.aqt, align 8, !tbaa !56 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  store i32 %i.aqu, ptr %i.aqv, align 4, !tbaa !56
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aqx = load i32, ptr %i.aqw, align 8, !tbaa !56 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  store i32 %i.aqx, ptr %i.aqy, align 8, !tbaa !56
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ara = load i32, ptr %i.aqz, align 8, !tbaa !56
  %i.arb = udiv i32 %i.ara, %i.il
  %i.arc = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 2 uses
  store i32 %i.arb, ptr %i.arc, align 4, !tbaa !56
  %i.ard = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.are = load <2 x i32>, ptr %i.f, align 16, !tbaa !56
  %i.arf = load <2 x i32>, ptr %i.aqm, align 4, !tbaa !56
  %i.arg = shufflevector <2 x i32> %i.arf, <2 x i32> %i.are, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.arg, ptr %i.aqn, align 4, !tbaa !56
  %i.arh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ari = load i32, ptr %i.arh, align 8, !tbaa !56
  %i.arj = getelementptr inbounds nuw i8, ptr %2, i64 220 ; 2 uses
  store i32 %i.ari, ptr %i.arj, align 4, !tbaa !56
  br i1 %i.jw, label %.loopexit, label %.preheader1150

.preheader1150:                                   ; preds = %bb.ct
  %i.ark = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !56
  %i.arm = udiv i32 %i.arl, %i.il
  store i32 %i.arm, ptr %i.ap, align 8, !tbaa !56
  %i.arn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !56 ; 2 uses
  store i32 %i.aro, ptr %i.aq, align 4, !tbaa !56
  %i.arp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !56 ; 2 uses
  store i32 %i.arq, ptr %i.ar, align 8, !tbaa !56
  %i.arr = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !56
  %i.art = udiv i32 %i.ars, %i.il
  store i32 %i.art, ptr %i.al, align 4, !tbaa !56
  store i32 %i.aro, ptr %i.as, align 8, !tbaa !56
  store i32 %i.arq, ptr %i.at, align 4, !tbaa !56
  %i.aru = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.arv = load i32, ptr %i.aru, align 16, !tbaa !56
  %i.arw = udiv i32 %i.arv, %i.il
  store i32 %i.arw, ptr %i.iu, align 4, !tbaa !56
  %i.arx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ary = load i32, ptr %i.arx, align 16, !tbaa !56 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ary, ptr %i.arz, align 8, !tbaa !56
  %i.asa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.asb = load i32, ptr %i.asa, align 16, !tbaa !56 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.asb, ptr %i.asc, align 4, !tbaa !56
  %i.asd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ase = load i32, ptr %i.asd, align 16, !tbaa !56
  %i.asf = udiv i32 %i.ase, %i.il
  store i32 %i.asf, ptr %i.ix, align 8, !tbaa !56
  %i.asg = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.ary, ptr %i.asg, align 4, !tbaa !56
  %i.ash = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %i.asb, ptr %i.ash, align 8, !tbaa !56
  %i.asi = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !56
  %i.ask = udiv i32 %i.asj, %i.il
  store i32 %i.ask, ptr %i.jg, align 8, !tbaa !56
  %i.asl = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !56 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.asm, ptr %i.asn, align 4, !tbaa !56
  %i.aso = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !56 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.asp, ptr %i.asq, align 8, !tbaa !56
  %i.asr = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !56
  %i.ast = udiv i32 %i.ass, %i.il
  store i32 %i.ast, ptr %i.jj, align 4, !tbaa !56
  %i.asu = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.asm, ptr %i.asu, align 8, !tbaa !56
  %i.asv = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 %i.asp, ptr %i.asv, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1150, %bb.ct
  %i.asw = phi ptr [ @.str.45, %bb.ct ], [ @.str.44, %.preheader1150 ]
  %i.asx = phi ptr [ @.str.43, %bb.ct ], [ @.str.42, %.preheader1150 ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39, i32 noundef %i.aps, i32 noundef %i.apt, i32 noundef %i.apu, i32 noundef %i.aqa, i32 noundef %i.aqd, i32 noundef %i.aqg, i32 noundef %i.aqr, i32 noundef %i.aqu, i32 noundef %i.aqx) #13
  %i.asy = load i32, ptr %i.apo, align 4, !tbaa !56
  %i.asz = load i32, ptr %i.app, align 8, !tbaa !56
  %i.ata = load i32, ptr %i.apq, align 4, !tbaa !56
  %i.atb = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !56
  %i.atd = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !56
  %i.atf = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.atg = load i32, ptr %i.atf, align 8, !tbaa !56
  %i.ath = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !56
  %i.atj = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.atk = load i32, ptr %i.atj, align 8, !tbaa !56
  %i.atl = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !56
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40, i32 noundef %i.asy, i32 noundef %i.asz, i32 noundef %i.ata, i32 noundef %i.atc, i32 noundef %i.ate, i32 noundef %i.atg, i32 noundef %i.ati, i32 noundef %i.atk, i32 noundef %i.atm) #13
  %i.atn = load i32, ptr %i.ap, align 8, !tbaa !56
  %i.ato = load i32, ptr %i.aq, align 4, !tbaa !56
  %i.atp = load i32, ptr %i.ar, align 8, !tbaa !56
  %i.atq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !56
  %i.ats = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.att = load i32, ptr %i.ats, align 8, !tbaa !56
  %i.atu = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !56
  %i.atw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !56
  %i.aty = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !56
  %i.aua = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !56
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.asx, i32 noundef %i.atn, i32 noundef %i.ato, i32 noundef %i.atp, i32 noundef %i.atr, i32 noundef %i.att, i32 noundef %i.atv, i32 noundef %i.atx, i32 noundef %i.atz, i32 noundef %i.aub) #13
  %i.auc = load i32, ptr %i.al, align 4, !tbaa !56
  %i.aud = load i32, ptr %i.as, align 8, !tbaa !56
  %i.aue = load i32, ptr %i.at, align 4, !tbaa !56
  %i.auf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aug = load i32, ptr %i.auf, align 8, !tbaa !56
  %i.auh = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !56
  %i.auj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.auk = load i32, ptr %i.auj, align 8, !tbaa !56
  %i.aul = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !56
  %i.aun = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.auo = load i32, ptr %i.aun, align 8, !tbaa !56
  %i.aup = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !56
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.asw, i32 noundef %i.auc, i32 noundef %i.aud, i32 noundef %i.aue, i32 noundef %i.aug, i32 noundef %i.aui, i32 noundef %i.auk, i32 noundef %i.aum, i32 noundef %i.auo, i32 noundef %i.auq) #13
  %i.aur = load i32, ptr %i.au, align 8, !tbaa !56
  %i.aus = load i32, ptr %i.av, align 4, !tbaa !56
  %i.aut = load i32, ptr %i.aw, align 8, !tbaa !56
  %i.auu = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !56
  %i.auw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aux = load i32, ptr %i.auw, align 8, !tbaa !56
  %i.auy = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !56
  %i.ava = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.avb = load i32, ptr %i.ava, align 8, !tbaa !56
  %i.avc = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !56
  %i.ave = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.avf = load i32, ptr %i.ave, align 8, !tbaa !56
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46, i32 noundef %i.aur, i32 noundef %i.aus, i32 noundef %i.aut, i32 noundef %i.auv, i32 noundef %i.aux, i32 noundef %i.auz, i32 noundef %i.avb, i32 noundef %i.avd, i32 noundef %i.avf) #13
  %i.avg = load i32, ptr %i.am, align 4, !tbaa !56
  %i.avh = load i32, ptr %i.ax, align 8, !tbaa !56
  %i.avi = load i32, ptr %i.ay, align 4, !tbaa !56
  %i.avj = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.avk = load i32, ptr %i.avj, align 8, !tbaa !56
  %i.avl = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !56
  %i.avn = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.avo = load i32, ptr %i.avn, align 8, !tbaa !56
  %i.avp = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !56
  %i.avr = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.avs = load i32, ptr %i.avr, align 8, !tbaa !56
  %i.avt = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !56
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47, i32 noundef %i.avg, i32 noundef %i.avh, i32 noundef %i.avi, i32 noundef %i.avk, i32 noundef %i.avm, i32 noundef %i.avo, i32 noundef %i.avq, i32 noundef %i.avs, i32 noundef %i.avu) #13
  br i1 %i.jw, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.loopexit
  %i.avv = load i32, ptr %i.r, align 8, !tbaa !138
  %i.avw = load i32, ptr %i.s, align 4, !tbaa !139
  %i.avx = load i32, ptr %i.t, align 8, !tbaa !140
  %i.avy = load i32, ptr %i.q, align 4, !tbaa !80
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48, i32 noundef %i.avv, i32 noundef %i.avw, i32 noundef %i.avx, i32 noundef %i.avy) #13
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit
  %i.avz = load i8, ptr @cli_debug_flag, align 1, !tbaa !74
  %.not969 = icmp eq i8 %i.avz, 0
  br i1 %.not969, label %bb.cw, label %.preheader1149.preheader

.preheader1149.preheader:                         ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.awa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %0) #13 ; 0 uses
  %.01440 = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.awb = load i32, ptr %i.ap, align 8, !tbaa !56
  %i.awc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.01440, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.awb) #13 ; 0 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.awe = load i32, ptr %i.aq, align 4, !tbaa !56
  %i.awf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awd, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.awe) #13 ; 0 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.awh = load i32, ptr %i.ar, align 8, !tbaa !56
  %i.awi = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awg, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.awh) #13 ; 0 uses
  %.0 = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.awj = load i32, ptr %i.iu, align 4, !tbaa !56
  %i.awk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.awj) #13 ; 0 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.awm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.awn = load i32, ptr %i.awm, align 8, !tbaa !56
  %i.awo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awl, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.awn) #13 ; 0 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.awq = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !56
  %i.aws = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awp, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.awr) #13 ; 0 uses
  %.0.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.awt = load i32, ptr %i.jg, align 8, !tbaa !56
  %i.awu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.0.1, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.awt) #13 ; 0 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  %i.aww = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !56
  %i.awy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awv, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.awx) #13 ; 0 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  %i.axa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.axb = load i32, ptr %i.axa, align 8, !tbaa !56
  %i.axc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awz, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axb) #13 ; 0 uses
  %.0.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  %i.axd = load i32, ptr %i.al, align 4, !tbaa !56
  %i.axe = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.0.2, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.axd) #13 ; 0 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %i.axg = load i32, ptr %i.as, align 8, !tbaa !56
  %i.axh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axf, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axg) #13 ; 0 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.axj = load i32, ptr %i.at, align 4, !tbaa !56
  %i.axk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axi, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axj) #13 ; 0 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.g, i64 30
  %i.axm = load i32, ptr %i.ix, align 8, !tbaa !56
  %i.axn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axl, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.axm) #13 ; 0 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  %i.axp = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !56
  %i.axr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axo, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axq) #13 ; 0 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %i.axt = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.axu = load i32, ptr %i.axt, align 8, !tbaa !56
  %i.axv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axs, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axu) #13 ; 0 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  %i.axx = load i32, ptr %i.jj, align 4, !tbaa !56
  %i.axy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axw, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.axx) #13 ; 0 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.aya = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ayb = load i32, ptr %i.aya, align 8, !tbaa !56
  %i.ayc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axz, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayb) #13 ; 0 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.g, i64 42
  %i.aye = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !56
  %i.ayg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayd, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayf) #13 ; 0 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.ayi = load i32, ptr %i.au, align 8, !tbaa !56
  %i.ayj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayh, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayi) #13 ; 0 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.g, i64 46
  %i.ayl = load i32, ptr %i.av, align 4, !tbaa !56
  %i.aym = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayk, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayl) #13 ; 0 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ayo = load i32, ptr %i.aw, align 8, !tbaa !56
  %i.ayp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayn, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayo) #13 ; 0 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.ayr = load i32, ptr %i.ja, align 4, !tbaa !56
  %i.ays = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayq, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayr) #13 ; 0 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.ayu = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ayv = load i32, ptr %i.ayu, align 8, !tbaa !56
  %i.ayw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayt, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayv) #13 ; 0 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.g, i64 54
  %i.ayy = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !56
  %i.aza = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayx, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayz) #13 ; 0 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.azc = load i32, ptr %i.jm, align 8, !tbaa !56
  %i.azd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azb, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azc) #13 ; 0 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  %i.azf = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !56
  %i.azh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aze, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azg) #13 ; 0 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.azj = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.azk = load i32, ptr %i.azj, align 8, !tbaa !56
  %i.azl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azi, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azk) #13 ; 0 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.g, i64 62
  %i.azn = load i32, ptr %i.am, align 4, !tbaa !56
  %i.azo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azm, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azn) #13 ; 0 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.azq = load i32, ptr %i.ax, align 8, !tbaa !56
  %i.azr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azp, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azq) #13 ; 0 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.g, i64 66
  %i.azt = load i32, ptr %i.ay, align 4, !tbaa !56
  %i.azu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azs, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azt) #13 ; 0 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.azw = load i32, ptr %i.jd, align 8, !tbaa !56
  %i.azx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azv, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azw) #13 ; 0 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.g, i64 70
  %i.azz = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !56
  %i.bab = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azy, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.baa) #13 ; 0 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bad = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bae = load i32, ptr %i.bad, align 8, !tbaa !56
  %i.baf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bac, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bae) #13 ; 0 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.g, i64 74
  %i.bah = load i32, ptr %i.jp, align 4, !tbaa !56
  %i.bai = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bag, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bah) #13 ; 0 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.bak = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bal = load i32, ptr %i.bak, align 8, !tbaa !56
  %i.bam = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.baj, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bal) #13 ; 0 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.g, i64 78
  %i.bao = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !56
  %i.baq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ban, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bap) #13 ; 0 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.bas = load i32, ptr %i.apl, align 8, !tbaa !56
  %i.bat = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bar, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bas) #13 ; 0 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.g, i64 82
  %i.bav = load i32, ptr %i.apm, align 4, !tbaa !56
  %i.baw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bau, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bav) #13 ; 0 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.bay = load i32, ptr %i.apn, align 8, !tbaa !56
  %i.baz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bax, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bay) #13 ; 0 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.g, i64 86
  %i.bbb = load i32, ptr %i.aqb, align 4, !tbaa !56
  %i.bbc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bba, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbb) #13 ; 0 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.bbe = load i32, ptr %i.aqe, align 8, !tbaa !56
  %i.bbf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bbd, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbe) #13 ; 0 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.g, i64 90
  %i.bbh = load i32, ptr %i.aqh, align 4, !tbaa !56
  %i.bbi = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bbg, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbh) #13 ; 0 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  %i.bbk = load i32, ptr %i.aqs, align 8, !tbaa !56
  %i.bbl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bbj, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbk) #13 ; 0 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.g, i64 94
  %i.bbn = load i32, ptr %i.aqv, align 4, !tbaa !56
  %i.bbo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bbm, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbn) #13 ; 0 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.bbq = load i32, ptr %i.aqy, align 8, !tbaa !56
  %i.bbr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bbp, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbq) #13 ; 0 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.g, i64 98
  %i.bbt = load i32, ptr %i.apo, align 4, !tbaa !56
  %i.bbu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bbs, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbt) #13 ; 0 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.bbw = load i32, ptr %i.app, align 8, !tbaa !56
  %i.bbx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bbv, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbw) #13 ; 0 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.g, i64 102
  %i.bbz = load i32, ptr %i.apq, align 4, !tbaa !56
  %i.bca = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bby, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bbz) #13 ; 0 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.bcc = load i32, ptr %i.aql, align 8, !tbaa !56
  %i.bcd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bcb, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bcc) #13 ; 0 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.g, i64 106
  %i.bcf = load i32, ptr %i.aqn, align 4, !tbaa !56
  %i.bcg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bce, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bcf) #13 ; 0 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.bci = load i32, ptr %i.aqo, align 8, !tbaa !56
  %i.bcj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bch, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bci) #13 ; 0 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.g, i64 110
  %i.bcl = load i32, ptr %i.arc, align 4, !tbaa !56
  %i.bcm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bck, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bcl) #13 ; 0 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.bco = load i32, ptr %i.ard, align 8, !tbaa !56
  %i.bcp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bcn, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bco) #13 ; 0 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.g, i64 114
  %i.bcr = load i32, ptr %i.arj, align 4, !tbaa !56
  %i.bcs = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bcq, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bcr) #13 ; 0 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.bcu = load i32, ptr %i.r, align 8, !tbaa !138
  %i.bcv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bct, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bcu) #13 ; 0 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.g, i64 118
  %i.bcx = load i32, ptr %i.s, align 4, !tbaa !139
  %i.bcy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bcw, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bcx) #13 ; 0 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.bda = load i32, ptr %i.t, align 8, !tbaa !140
  %i.bdb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bcz, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bda) #13 ; 0 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.g, i64 122
  %i.bdd = load i32, ptr %i.q, align 4, !tbaa !80
  %i.bde = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bdc, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bdd) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.preheader1149.preheader, %bb.aq, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 715827883) i32 @matchbwpoint(i32 noundef range(i32 16, 257) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12) unnamed_addr #7 {
.preheader69:
  %i.a = alloca [6 x i32], align 16               ; 5 uses
  %i.b = alloca [6 x i32], align 16               ; 5 uses
  %i.c = alloca [6 x i32], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa !56
  %.sroa.089.0.copyload = load i32, ptr %7, align 4, !tbaa !56
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.490.0.copyload = load i32, ptr %.sroa.490.0..sroa_idx, align 4, !tbaa !56
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.591.0.copyload = load i32, ptr %.sroa.591.0..sroa_idx, align 4, !tbaa !56
  %.sroa.083.0.copyload = load i32, ptr %8, align 4, !tbaa !56
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.484.0.copyload = load i32, ptr %.sroa.484.0..sroa_idx, align 4, !tbaa !56
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.585.0.copyload = load i32, ptr %.sroa.585.0..sroa_idx, align 4, !tbaa !56
  %.sroa.0.0.copyload = load i32, ptr %9, align 4, !tbaa !56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !56
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa !56
  %scevgep75 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep75, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa !56
  %scevgep76 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep76, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa !56
  %.sroa.692.12.copyload = load i32, ptr %10, align 4, !tbaa !56
  %.sroa.893.12..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.893.12.copyload = load i32, ptr %.sroa.893.12..sroa_idx, align 4, !tbaa !56
  %.sroa.994.12..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.994.12.copyload = load i32, ptr %.sroa.994.12..sroa_idx, align 4, !tbaa !56
  %.sroa.686.12.copyload = load i32, ptr %11, align 4, !tbaa !56
  %.sroa.887.12..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 4
  %.sroa.887.12.copyload = load i32, ptr %.sroa.887.12..sroa_idx, align 4, !tbaa !56
  %.sroa.988.12..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.988.12.copyload = load i32, ptr %.sroa.988.12..sroa_idx, align 4, !tbaa !56
  %.sroa.6.12.copyload = load i32, ptr %12, align 4, !tbaa !56
  %.sroa.8.12..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.8.12.copyload = load i32, ptr %.sroa.8.12..sroa_idx, align 4, !tbaa !56
  %.sroa.9.12..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.9.12.copyload = load i32, ptr %.sroa.9.12..sroa_idx, align 4, !tbaa !56
  %i.d = lshr i32 %0, 2
  %i.e = mul nuw nsw i32 %i.d, 3
  %i.f = lshr i32 %i.e, 2                         ; 12 uses
  %invariant.op = sub i32 -52, %.sroa.0.0.copyload
  %invariant.op117 = sub i32 -52, %.sroa.4.0.copyload
  %invariant.op118 = sub i32 -52, %.sroa.5.0.copyload
  %invariant.op119 = sub i32 -52, %.sroa.6.12.copyload
  %invariant.op120 = sub i32 -52, %.sroa.8.12.copyload
  %invariant.op121 = sub i32 -52, %.sroa.9.12.copyload
  br label %.preheader

.preheader:                                       ; preds = %.preheader69, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader69 ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %.074 = phi i32 [ 0, %.preheader69 ], [ %i.cl, %bb.r ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56   ; 6 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !56   ; 6 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 6 uses
  %i.l = sub nsw i32 %i.h, %.sroa.089.0.copyload  ; 2 uses
  %i.m = sub nsw i32 %i.j, %.sroa.083.0.copyload  ; 2 uses
  %i.n = mul nsw i32 %i.l, %i.l
  %i.o = mul nsw i32 %i.m, %i.m
  %i.p = add nuw nsw i32 %i.o, %i.n
  %i.q = uitofp nneg i32 %i.p to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.q)
  %i.r = fptoui double %sqrt to i32               ; 2 uses
  %i.s = icmp ult i32 %i.f, %i.r
  br i1 %i.s, label %bb.c, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.t = load i32, ptr %i.k, align 4, !tbaa !56
  %.reass.reass = add i32 %i.t, %invariant.op
  %i.u = icmp ult i32 %.reass.reass, -103
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = mul nuw nsw i32 %i.r, 60
  %i.w = udiv i32 %i.v, %i.f
  %i.x = sub nsw i32 100, %i.w
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.a, %bb.b
  %.2 = phi i32 [ %i.x, %bb.b ], [ 0, %bb.a ], [ 0, %.preheader ] ; 3 uses
  %i.y = sub nsw i32 %i.h, %.sroa.490.0.copyload  ; 2 uses
  %i.z = sub nsw i32 %i.j, %.sroa.484.0.copyload  ; 2 uses
  %i.aa = mul nsw i32 %i.y, %i.y
  %i.ab = mul nsw i32 %i.z, %i.z
  %i.ac = add nuw nsw i32 %i.ab, %i.aa
  %i.ad = uitofp nneg i32 %i.ac to double
  %sqrt.1 = tail call double @llvm.sqrt.f64(double %i.ad)
  %i.ae = fptoui double %sqrt.1 to i32            ; 2 uses
  %i.af = icmp ult i32 %i.f, %i.ae
  br i1 %i.af, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.k, align 4, !tbaa !56
  %.reass103.reass = add i32 %i.ag, %invariant.op117
  %i.ah = icmp ult i32 %.reass103.reass, -103
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = mul nuw nsw i32 %i.ae, 60
  %i.aj = udiv i32 %i.ai, %i.f
  %i.ak = sub nsw i32 100, %i.aj
  %spec.select.1 = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 %.2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.2.1 = phi i32 [ %spec.select.1, %bb.e ], [ %.2, %bb.d ], [ %.2, %bb.c ] ; 3 uses
  %i.al = sub nsw i32 %i.h, %.sroa.591.0.copyload ; 2 uses
  %i.am = sub nsw i32 %i.j, %.sroa.585.0.copyload ; 2 uses
  %i.an = mul nsw i32 %i.al, %i.al
  %i.ao = mul nsw i32 %i.am, %i.am
  %i.ap = add nuw nsw i32 %i.ao, %i.an
  %i.aq = uitofp nneg i32 %i.ap to double
  %sqrt.2 = tail call double @llvm.sqrt.f64(double %i.aq)
  %i.ar = fptoui double %sqrt.2 to i32            ; 2 uses
  %i.as = icmp ult i32 %i.f, %i.ar
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i32, ptr %i.k, align 4, !tbaa !56
  %.reass105.reass = add i32 %i.at, %invariant.op118
  %i.au = icmp ult i32 %.reass105.reass, -103
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = mul nuw nsw i32 %i.ar, 60
  %i.aw = udiv i32 %i.av, %i.f
  %i.ax = sub nsw i32 100, %i.aw
  %spec.select.2 = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %.2.1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.2.2 = phi i32 [ %spec.select.2, %bb.h ], [ %.2.1, %bb.g ], [ %.2.1, %bb.f ] ; 3 uses
  %i.ay = sub nsw i32 %i.h, %.sroa.692.12.copyload ; 2 uses
  %i.az = sub nsw i32 %i.j, %.sroa.686.12.copyload ; 2 uses
  %i.ba = mul nsw i32 %i.ay, %i.ay
  %i.bb = mul nsw i32 %i.az, %i.az
  %i.bc = add nuw nsw i32 %i.bb, %i.ba
  %i.bd = uitofp nneg i32 %i.bc to double
  %sqrt.3 = tail call double @llvm.sqrt.f64(double %i.bd)
  %i.be = fptoui double %sqrt.3 to i32            ; 2 uses
  %i.bf = icmp ult i32 %i.f, %i.be
  br i1 %i.bf, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load i32, ptr %i.k, align 4, !tbaa !56
  %.reass107.reass = add i32 %i.bg, %invariant.op119
  %i.bh = icmp ult i32 %.reass107.reass, -103
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = mul nuw nsw i32 %i.be, 60
  %i.bj = udiv i32 %i.bi, %i.f
  %i.bk = sub nsw i32 100, %i.bj
  %spec.select.3 = tail call i32 @llvm.umax.i32(i32 %i.bk, i32 %.2.2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.2.3 = phi i32 [ %spec.select.3, %bb.k ], [ %.2.2, %bb.j ], [ %.2.2, %bb.i ] ; 3 uses
  %i.bl = sub nsw i32 %i.h, %.sroa.893.12.copyload ; 2 uses
  %i.bm = sub nsw i32 %i.j, %.sroa.887.12.copyload ; 2 uses
  %i.bn = mul nsw i32 %i.bl, %i.bl
  %i.bo = mul nsw i32 %i.bm, %i.bm
  %i.bp = add nuw nsw i32 %i.bo, %i.bn
  %i.bq = uitofp nneg i32 %i.bp to double
  %sqrt.4 = tail call double @llvm.sqrt.f64(double %i.bq)
  %i.br = fptoui double %sqrt.4 to i32            ; 2 uses
  %i.bs = icmp ult i32 %i.f, %i.br
  br i1 %i.bs, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_1
begin_hunk_2_@matchpoint:.preheader
  %i.cy = udiv i16 %.lhs.trunc68, %.rhs.trunc69
  %.zext70 = zext i16 %i.cy to i32
  %i.cz = sub nsw i32 100, %.zext70
  %spec.select.1.1 = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 %.2.144)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.2.1.1 = phi i32 [ %spec.select.1.1, %bb.m ], [ %.2.144, %bb.l ], [ %.2.144, %bb.k ] ; 3 uses
  %i.da = sub nsw i32 %i.bp, %i.au                ; 2 uses
  %i.db = sub nsw i32 %i.br, %i.ax                ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.da
  %i.dd = mul nsw i32 %i.db, %i.db
  %i.de = add nuw nsw i32 %i.dd, %i.dc
  %i.df = uitofp nneg i32 %i.de to double
  %sqrt.2.1 = tail call double @llvm.sqrt.f64(double %i.df)
  %i.dg = fptoui double %sqrt.2.1 to i32          ; 2 uses
  %i.dh = icmp ult i32 %i.c, %i.dg
  br i1 %i.dh, label %.preheader.2, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.di = load i32, ptr %i.bs, align 4, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !56
  %i.dl = sub nsw i32 %i.di, %i.dk
  %i.dm = tail call i32 @llvm.abs.i32(i32 %i.dl, i1 true)
  %i.dn = icmp samesign ugt i32 %i.dm, %.zext
  br i1 %i.dn, label %.preheader.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = trunc i32 %i.dg to i16
  %.lhs.trunc65 = mul i16 %i.do, 60
  %.rhs.trunc66 = trunc nuw nsw i32 %i.c to i16
  %i.dp = udiv i16 %.lhs.trunc65, %.rhs.trunc66
  %.zext67 = zext i16 %i.dp to i32
  %i.dq = sub nsw i32 100, %.zext67
  %spec.select.2.1 = tail call i32 @llvm.umax.i32(i32 %i.dq, i32 %.2.1.1)
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.p, %bb.o, %bb.n
  %.2.2.1 = phi i32 [ %spec.select.2.1, %bb.p ], [ %.2.1.1, %bb.o ], [ %.2.1.1, %bb.n ]
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !56 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !56 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dw = sub nsw i32 %i.ds, %i.g                 ; 2 uses
  %i.dx = sub nsw i32 %i.du, %i.i                 ; 2 uses
  %i.dy = mul nsw i32 %i.dw, %i.dw
  %i.dz = mul nsw i32 %i.dx, %i.dx
  %i.ea = add nuw nsw i32 %i.dz, %i.dy
  %i.eb = uitofp nneg i32 %i.ea to double
  %sqrt.245 = tail call double @llvm.sqrt.f64(double %i.eb)
  %i.ec = fptoui double %sqrt.245 to i32          ; 2 uses
  %i.ed = icmp ult i32 %i.c, %i.ec
  br i1 %i.ed, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.preheader.2
  %i.ee = load i32, ptr %i.dv, align 4, !tbaa !56
  %i.ef = load i32, ptr %6, align 4, !tbaa !56
  %i.eg = sub nsw i32 %i.ee, %i.ef
  %i.eh = tail call i32 @llvm.abs.i32(i32 %i.eg, i1 true)
  %i.ei = icmp samesign ugt i32 %i.eh, %.zext
  br i1 %i.ei, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = trunc i32 %i.ec to i16
  %.lhs.trunc62 = mul i16 %i.ej, 60
  %.rhs.trunc63 = trunc nuw nsw i32 %i.c to i16
  %i.ek = udiv i16 %.lhs.trunc62, %.rhs.trunc63
  %.zext64 = zext i16 %i.ek to i32
  %i.el = sub nsw i32 100, %.zext64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.preheader.2
  %.2.246 = phi i32 [ %i.el, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader.2 ] ; 3 uses
  %i.em = sub nsw i32 %i.ds, %i.z                 ; 2 uses
  %i.en = sub nsw i32 %i.du, %i.ac                ; 2 uses
  %i.eo = mul nsw i32 %i.em, %i.em
  %i.ep = mul nsw i32 %i.en, %i.en
  %i.eq = add nuw nsw i32 %i.ep, %i.eo
  %i.er = uitofp nneg i32 %i.eq to double
  %sqrt.1.2 = tail call double @llvm.sqrt.f64(double %i.er)
  %i.es = fptoui double %sqrt.1.2 to i32          ; 2 uses
  %i.et = icmp ult i32 %i.c, %i.es
  br i1 %i.et, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = load i32, ptr %i.dv, align 4, !tbaa !56
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !56
  %i.ex = sub nsw i32 %i.eu, %i.ew
  %i.ey = tail call i32 @llvm.abs.i32(i32 %i.ex, i1 true)
  %i.ez = icmp samesign ugt i32 %i.ey, %.zext
  br i1 %i.ez, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = trunc i32 %i.es to i16
  %.lhs.trunc59 = mul i16 %i.fa, 60
  %.rhs.trunc60 = trunc nuw nsw i32 %i.c to i16
  %i.fb = udiv i16 %.lhs.trunc59, %.rhs.trunc60
  %.zext61 = zext i16 %i.fb to i32
  %i.fc = sub nsw i32 100, %.zext61
  %spec.select.1.2 = tail call i32 @llvm.umax.i32(i32 %i.fc, i32 %.2.246)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.2.1.2 = phi i32 [ %spec.select.1.2, %bb.u ], [ %.2.246, %bb.t ], [ %.2.246, %bb.s ] ; 3 uses
  %i.fd = sub nsw i32 %i.ds, %i.au                ; 2 uses
  %i.fe = sub nsw i32 %i.du, %i.ax                ; 2 uses
  %i.ff = mul nsw i32 %i.fd, %i.fd
  %i.fg = mul nsw i32 %i.fe, %i.fe
  %i.fh = add nuw nsw i32 %i.fg, %i.ff
  %i.fi = uitofp nneg i32 %i.fh to double
  %sqrt.2.2 = tail call double @llvm.sqrt.f64(double %i.fi)
  %i.fj = fptoui double %sqrt.2.2 to i32          ; 2 uses
  %i.fk = icmp ult i32 %i.c, %i.fj
  br i1 %i.fk, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = load i32, ptr %i.dv, align 4, !tbaa !56
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !56
  %i.fo = sub nsw i32 %i.fl, %i.fn
  %i.fp = tail call i32 @llvm.abs.i32(i32 %i.fo, i1 true)
  %i.fq = icmp samesign ugt i32 %i.fp, %.zext
  br i1 %i.fq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fr = trunc i32 %i.fj to i16
  %.lhs.trunc57 = mul i16 %i.fr, 60
  %.rhs.trunc = trunc nuw nsw i32 %i.c to i16
  %i.fs = udiv i16 %.lhs.trunc57, %.rhs.trunc
  %.zext58 = zext i16 %i.fs to i32
  %i.ft = sub nsw i32 100, %.zext58
  %spec.select.2.2 = tail call i32 @llvm.umax.i32(i32 %i.ft, i32 %.2.1.2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.2.2.2 = phi i32 [ %spec.select.2.2, %bb.x ], [ %.2.1.2, %bb.w ], [ %.2.1.2, %bb.v ]
  %i.fu = add nsw i32 %.2.2.1, %.2.2
  %i.fv = add nsw i32 %.2.2.2, %i.fu
  %i.fw = udiv i32 %i.fv, 3
  ret i32 %i.fw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cli_gentemp_with_prefix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v2i32(<2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 long", !8, i64 0}
!11 = !{!"p1 _ZTS11cli_matcher", !8, i64 0}
!12 = !{!"p1 _ZTS9cl_engine", !8, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"p1 _ZTS15cl_scan_options", !8, i64 0}
!15 = !{!"p1 _ZTS14cli_scan_layer", !8, i64 0}
!16 = !{!"p1 _ZTS7cl_fmap", !8, i64 0}
!17 = !{!"p1 _ZTS9cli_dconf", !8, i64 0}
!18 = !{!"p1 _ZTS10bitset_tag", !8, i64 0}
!19 = !{!"p1 _ZTS10cli_events", !8, i64 0}
!20 = !{!"p1 _ZTS11json_object", !8, i64 0}
!21 = !{!"timeval", !13, i64 0, !13, i64 8}
!22 = !{!"_Bool", !4, i64 0}
!23 = !{!"cli_ctx_tag", !9, i64 0, !9, i64 8, !10, i64 16, !11, i64 24, !12, i64 32, !13, i64 40, !14, i64 48, !5, i64 56, !5, i64 60, !15, i64 64, !5, i64 72, !5, i64 76, !8, i64 80, !16, i64 88, !13, i64 96, !17, i64 104, !18, i64 112, !8, i64 120, !19, i64 128, !20, i64 136, !20, i64 144, !21, i64 152, !22, i64 168, !22, i64 169}
!24 = !{!23, !16, i64 88}
!25 = !{!"p1 _ZTS11cli_ctx_tag", !8, i64 0}
!26 = !{!"p1 _ZTS12cli_exe_info", !8, i64 0}
!27 = !{!"ICON_ENV", !25, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !8, i64 24, !26, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64}
!28 = !{!27, !25, i64 0}
!29 = !{!27, !5, i64 40}
!30 = !{!27, !8, i64 24}
!31 = !{!27, !26, i64 32}
!32 = !{!23, !12, i64 32}
!33 = !{!"any p2 pointer", !8, i64 0}
!34 = !{!"p2 _ZTS11cli_matcher", !33, i64 0}
!35 = !{!"p1 _ZTS7cli_cdb", !8, i64 0}
!36 = !{!"p1 _ZTS13regex_matcher", !8, i64 0}
!37 = !{!"p1 _ZTS10phishcheck", !8, i64 0}
!38 = !{!"p1 _ZTS9cli_ftype", !8, i64 0}
!39 = !{!"p2 _ZTS8cli_pwdb", !33, i64 0}
!40 = !{!"p1 _ZTS12icon_matcher", !8, i64 0}
!41 = !{!"p1 _ZTS5CACHE", !8, i64 0}
!42 = !{!"p1 _ZTS10cli_dbinfo", !8, i64 0}
!43 = !{!"p1 _ZTS2MP", !8, i64 0}
!44 = !{!"p1 _ZTS9cli_crt_t", !8, i64 0}
!45 = !{!"", !44, i64 0, !5, i64 8}
!46 = !{!"p1 _ZTS6cli_bc", !8, i64 0}
!47 = !{!"p1 _ZTS12cli_bcengine", !8, i64 0}
!48 = !{!"cli_environment", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !4, i64 93, !4, i64 158, !4, i64 223, !4, i64 288, !4, i64 353, !4, i64 418, !4, i64 483, !4, i64 484, !4, i64 485, !4, i64 486, !4, i64 487, !4, i64 488, !4, i64 489, !4, i64 490, !4, i64 491}
!49 = !{!"cli_all_bc", !46, i64 0, !5, i64 8, !47, i64 16, !48, i64 24, !5, i64 516}
!50 = !{!"p1 _ZTS12_yara_global", !8, i64 0}
!51 = !{!"cl_engine", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !5, i64 20, !5, i64 24, !5, i64 28, !9, i64 32, !9, i64 40, !5, i64 48, !13, i64 56, !5, i64 64, !5, i64 68, !13, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !34, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !35, i64 144, !36, i64 152, !36, i64 160, !37, i64 168, !17, i64 176, !38, i64 184, !38, i64 192, !39, i64 200, !11, i64 208, !11, i64 216, !9, i64 224, !40, i64 232, !41, i64 240, !42, i64 248, !13, i64 256, !43, i64 264, !45, i64 272, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !49, i64 464, !4, i64 984, !4, i64 1040, !5, i64 1068, !5, i64 1072, !5, i64 1076, !5, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !8, i64 1176, !8, i64 1184, !8, i64 1192, !5, i64 1200, !5, i64 1204, !5, i64 1208, !13, i64 1216, !13, i64 1224, !13, i64 1232, !50, i64 1240}
!52 = !{!27, !5, i64 44}
!53 = !{!27, !5, i64 20}
!54 = !{!27, !5, i64 12}
!55 = !{!27, !5, i64 8}
!56 = !{!5, !5, i64 0}
!57 = !{!27, !5, i64 64}
!58 = !{!27, !5, i64 48}
!59 = !{!27, !5, i64 52}
!60 = !{!27, !5, i64 56}
!61 = !{!27, !5, i64 60}
!62 = !{!"p1 _ZTS15cli_exe_section", !8, i64 0}
!63 = !{!"short", !4, i64 0}
!64 = !{!"p1 int", !8, i64 0}
!65 = !{!"cli_hashset", !64, i64 0, !64, i64 8, !43, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!66 = !{!"pe_image_file_hdr", !5, i64 0, !63, i64 4, !63, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !63, i64 20, !63, i64 22}
!67 = !{!"cli_exe_info", !62, i64 0, !5, i64 8, !5, i64 12, !63, i64 16, !5, i64 20, !5, i64 24, !65, i64 32, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !66, i64 108, !4, i64 136, !4, i64 248}
!68 = !{!67, !62, i64 0}
!69 = !{!67, !63, i64 16}
!70 = !{!"cl_fmap", !8, i64 0, !8, i64 8, !8, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !22, i64 56, !22, i64 57, !22, i64 58, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !4, i64 152, !4, i64 155, !4, i64 158, !10, i64 256, !9, i64 264, !9, i64 272}
!71 = !{!70, !13, i64 88}
!72 = !{!67, !5, i64 24}
!73 = !{!70, !8, i64 104}
!74 = !{!4, !4, i64 0}
!75 = !{!51, !40, i64 232}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!13, !13, i64 0}
!79 = !{!"icomtr", !4, i64 0, !4, i64 8, !4, i64 20, !4, i64 32, !4, i64 44, !4, i64 56, !4, i64 68, !4, i64 80, !4, i64 92, !4, i64 104, !4, i64 116, !4, i64 128, !4, i64 140, !4, i64 152, !4, i64 164, !4, i64 176, !4, i64 188, !4, i64 200, !4, i64 212, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !9, i64 240}
!80 = !{!79, !5, i64 236}
!81 = !{!51, !5, i64 1204}
!82 = !{!27, !5, i64 16}
!83 = distinct !{null}
!84 = !{!"icondir", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !63, i64 4, !63, i64 6, !5, i64 8, !63, i64 12}
!85 = !{!84, !4, i64 0}
!86 = !{!84, !4, i64 1}
!87 = !{!84, !4, i64 2}
!88 = !{!84, !4, i64 3}
!89 = !{!84, !63, i64 12}
!90 = distinct !{null, null}
!91 = distinct !{null, null, null}
!92 = distinct !{null, null}
!93 = distinct !{null, null, null}
!94 = distinct !{!94, i1 false, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !76, !77}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !76, !77}
!102 = distinct !{!102, i1 false, !"LVerDomain"}
!103 = distinct !{!103, !102}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !76, !77}
!106 = distinct !{!106, !76}
!107 = distinct !{!107, !76}
!108 = distinct !{!108, !76}
!109 = distinct !{!109, !76, !77}
!110 = distinct !{!110, !77, !76}
!111 = distinct !{!111, !76, !77}
!112 = distinct !{!112, !77, !76}
!113 = !{!51, !5, i64 48}
!114 = !{!23, !9, i64 8}
!115 = !{!70, !8, i64 16}
!116 = !{!70, !13, i64 72}
!117 = !{!70, !8, i64 128}
!118 = !{!95}
!119 = !{!96}
!120 = !{!99}
!121 = !{!100}
!122 = !{!103}
!123 = !{!104}
!124 = !{!"p1 _ZTS6icomtr", !8, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"p2 omnipotent char", !33, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!9, !9, i64 0}
!129 = distinct !{!129, !76, !77}
!130 = distinct !{!130, !77, !76}
!131 = distinct !{!131, !76, !77}
!132 = distinct !{!132, !77, !76}
!133 = distinct !{!133, !143}
!134 = distinct !{!134, !76, !77}
!135 = distinct !{!135, !77, !76}
!136 = distinct !{!136, !76}
!137 = distinct !{!137, !77, !76}
!138 = !{!79, !5, i64 224}
!139 = !{!79, !5, i64 228}
!140 = !{!79, !5, i64 232}
!141 = !{!"double", !4, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!"llvm.loop.unroll.disable"}
end_hunk_2
