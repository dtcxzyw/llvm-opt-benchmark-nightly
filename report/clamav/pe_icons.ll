Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@getmetrics:bb.a
  %i.or = mul nuw nsw i64 %indvars.iv1579, %i.i
  br label %bb.ar

.preheader1171.us.preheader:                      ; preds = %bb.bj
  %i.os = add nsw i32 %0, -1                      ; 7 uses
  %i.ot = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1592 = zext i32 %i.os to i64    ; 3 uses
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
  %wide.load = load <2 x double>, ptr %i.pb, align 8, !tbaa !132 ; 2 uses
  %i.pc = getelementptr [8 x i8], ptr %invariant.gep1894, i64 %index
  %wide.load22 = load <2 x double>, ptr %i.pc, align 8, !tbaa !132
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load22, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.pe = getelementptr [8 x i8], ptr %invariant.gep1896, i64 %index
  %wide.load23 = load <2 x double>, ptr %i.pe, align 8, !tbaa !132 ; 2 uses
  %i.pf = fadd <2 x double> %i.pd, %wide.load23
  %i.pg = add nuw nsw i64 %index, 2               ; 3 uses
  %i.ph = getelementptr [8 x i8], ptr %invariant.gep1898, i64 %i.pg
  %wide.load24 = load <2 x double>, ptr %i.ph, align 8, !tbaa !132 ; 2 uses
  %i.pi = fsub <2 x double> %i.pf, %wide.load24
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1900, i64 %i.pg
  %wide.load25 = load <2 x double>, ptr %i.pj, align 8, !tbaa !132
  %i.pk = fneg <2 x double> %wide.load25
  %i.pl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pi)
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1902, i64 %i.pg
  %wide.load26 = load <2 x double>, ptr %i.pm, align 8, !tbaa !132 ; 2 uses
  %i.pn = fsub <2 x double> %i.pl, %wide.load26   ; 2 uses
  %i.po = getelementptr [8 x i8], ptr %invariant.gep1904, i64 %i.pa
  %wide.load27 = load <2 x double>, ptr %i.po, align 8, !tbaa !132
  %i.pp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load27, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.pq = fadd <2 x double> %wide.load24, %i.pp
  %i.pr = fsub <2 x double> %i.pq, %wide.load23
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1906, i64 %i.pa
  %wide.load28 = load <2 x double>, ptr %i.ps, align 8, !tbaa !132
  %i.pt = fneg <2 x double> %wide.load28
  %i.pu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pr)
  %i.pv = fsub <2 x double> %i.pu, %wide.load26   ; 2 uses
  %i.pw = fmul <2 x double> %i.pv, %i.pv
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.pn, <2 x double> %i.pw)
  %i.py = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.px)
  %i.pz = fptosi <2 x double> %i.py to <2 x i32>  ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1908, i64 %i.pa
  store <2 x i32> %i.pz, ptr %i.qa, align 4, !tbaa !57
  %i.qb = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi, <2 x i32> %i.pz) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qc = icmp eq i64 %index.next, %n.vec
  br i1 %i.qc, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %i.qd = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %i.qb) ; 2 uses
  br i1 %cmp.n, label %._crit_edge1268.us, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv1584 = phi i64 [ %indvars.iv.next1585, %scalar.ph ], [ %i.ov, %middle.block ] ; 5 uses
  %.39151265.us = phi i32 [ %spec.select.us, %scalar.ph ], [ %i.qd, %middle.block ]
  %i.qe = add nsw i64 %indvars.iv1584, -1         ; 3 uses
  %gep1893 = getelementptr [8 x i8], ptr %invariant.gep1892, i64 %i.qe
  %i.qf = load double, ptr %gep1893, align 8, !tbaa !132
  %gep1895 = getelementptr [8 x i8], ptr %invariant.gep1894, i64 %i.qe
  %i.qg = load double, ptr %gep1895, align 8, !tbaa !132
  %gep1897 = getelementptr [8 x i8], ptr %invariant.gep1896, i64 %i.qe
  %i.qh = load double, ptr %gep1897, align 8, !tbaa !132 ; 2 uses
  %indvars.iv.next1585 = add nuw nsw i64 %indvars.iv1584, 1 ; 5 uses
  %gep1899 = getelementptr [8 x i8], ptr %invariant.gep1898, i64 %indvars.iv.next1585
  %gep1901 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1900, i64 %indvars.iv.next1585
  %i.qi = load double, ptr %gep1901, align 8, !tbaa !132
  %i.qj = fneg double %i.qi
  %gep1903 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1902, i64 %indvars.iv.next1585
  %i.qk = load double, ptr %gep1903, align 8, !tbaa !132 ; 2 uses
  %gep1905 = getelementptr [8 x i8], ptr %invariant.gep1904, i64 %indvars.iv1584
  %i.ql = load <2 x double>, ptr %gep1905, align 8, !tbaa !132 ; 2 uses
  %i.qm = load double, ptr %gep1899, align 8, !tbaa !132
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
  %i.ra = load double, ptr %gep1907, align 8, !tbaa !132
  %i.rb = fneg double %i.ra
  %i.rc = extractelement <2 x double> %i.qw, i64 1
  %i.rd = tail call double @llvm.fmuladd.f64(double %i.rb, double 2.000000e+00, double %i.rc)
  %i.re = fsub double %i.rd, %i.qk                ; 2 uses
  %i.rf = fmul double %i.re, %i.re
  %i.rg = tail call double @llvm.fmuladd.f64(double %i.qz, double %i.qz, double %i.rf)
  %sqrt1141.us = tail call double @llvm.sqrt.f64(double %i.rg)
  %i.rh = fptosi double %sqrt1141.us to i32       ; 2 uses
  %gep1909 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1908, i64 %indvars.iv1584
  store i32 %i.rh, ptr %gep1909, align 4, !tbaa !57
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.39151265.us, i32 %i.rh) ; 2 uses
  %exitcond1588.not = icmp eq i64 %indvars.iv.next1585, %wide.trip.count1592
  br i1 %exitcond1588.not, label %._crit_edge1268.us, label %scalar.ph, !llvm.loop !135

._crit_edge1268.us:                               ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i32 [ %i.qd, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 3 uses
  %exitcond1593.not = icmp eq i64 %indvars.iv.next1590, %wide.trip.count1592
  br i1 %exitcond1593.not, label %._crit_edge1272, label %.preheader1171.us

bb.ar:                                            ; preds = %.preheader1173, %labdiff.exit
  %indvars.iv1574 = phi i64 [ 0, %.preheader1173 ], [ %indvars.iv.next1575, %labdiff.exit ] ; 2 uses
  %i.ri = add nuw nsw i64 %indvars.iv1574, %i.or  ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !57 ; 3 uses
  %i.rl = lshr i32 %i.rk, 16
  %i.rm = and i32 %i.rl, 255
  %i.rn = lshr i32 %i.rk, 8
  %i.ro = uitofp nneg i32 %i.rm to double
  %i.rp = and i32 %i.rk, 255
  %i.rq = and i32 %i.rn, 255
  %i.rr = uitofp nneg i32 %i.rp to double
  %i.rs = uitofp nneg i32 %i.rq to double
  %i.rt = fdiv double %i.ro, 2.550000e+02         ; 3 uses
  %i.ru = insertelement <2 x double> poison, double %i.rs, i64 0
  %i.rv = insertelement <2 x double> %i.ru, double %i.rr, i64 1
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
  %4 = insertelement <3 x double> poison, double %.048.i.i, i64 0
  %5 = insertelement <3 x double> %4, double %.046.i.i, i64 1
  %6 = insertelement <3 x double> %5, double %.047.i.i, i64 2
  %7 = fmul <3 x double> %6, splat (double 1.000000e+02) ; 6 uses
  %8 = extractelement <3 x double> %7, i64 2
  %i.so = fmul double %8, f0x3FBE83E420000000
  %9 = extractelement <3 x double> %7, i64 1
  %i.sp = tail call double @llvm.fmuladd.f64(double %9, double f0x3F93C36120000000, double %i.so)
  %10 = extractelement <3 x double> %7, i64 0
  %11 = tail call double @llvm.fmuladd.f64(double %10, double f0x3FEE6A7F00000000, double %i.sp)
  %12 = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %13 = fmul <2 x double> %12, <double f0x3FD6E2EB20000000, double f0x3FE6E2EB20000000>
  %14 = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> <double f0x3FDA64C300000000, double f0x3FCB367A00000000>, <2 x double> %13)
  %i.sr = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ss = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sr, <2 x double> <double f0x3FC71A9FC0000000, double f0x3FB27BB300000000>, <2 x double> %i.sq)
  %i.st = fdiv <2 x double> %i.ss, <double f0x4057C30200000000, double 1.000000e+02> ; 2 uses
  %i.su = fdiv double %11, f0x405B388320000000    ; 3 uses
  %i.sv = extractelement <2 x double> %i.st, i64 0 ; 3 uses
  %i.sw = fcmp ogt double %i.sv, f0x3F82231840000000
  br i1 %i.sw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sx = tail call double @pow(double noundef %i.sv, double noundef f0x3FD5555560000000) #13
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.sy = tail call double @llvm.fmuladd.f64(double %i.sv, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.045.i.i = phi double [ %i.sx, %bb.bb ], [ %i.sy, %bb.bc ]
  %i.sz = extractelement <2 x double> %i.st, i64 1 ; 3 uses
  %i.ta = fcmp ogt double %i.sz, f0x3F82231840000000
  br i1 %i.ta, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.tb = tail call double @pow(double noundef %i.sz, double noundef f0x3FD5555560000000) #13
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.tc = tail call double @llvm.fmuladd.f64(double %i.sz, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.044.i.i = phi double [ %i.tb, %bb.be ], [ %i.tc, %bb.bf ] ; 3 uses
  %i.td = fcmp ogt double %i.su, f0x3F82231840000000
  br i1 %i.td, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.te = tail call double @pow(double noundef %i.su, double noundef f0x3FD5555560000000) #13
  br label %labdiff.exit

bb.bi:                                            ; preds = %bb.bg
  %i.tf = tail call double @llvm.fmuladd.f64(double %i.su, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %labdiff.exit

labdiff.exit:                                     ; preds = %bb.bh, %bb.bi
  %.0.i.i = phi double [ %i.te, %bb.bh ], [ %i.tf, %bb.bi ]
  %i.tg = tail call double @llvm.fmuladd.f64(double %.044.i.i, double 1.160000e+02, double -1.600000e+01)
  %i.th = fsub double %.045.i.i, %.044.i.i
  %i.ti = fmul double %i.th, 5.000000e+02
  %i.tj = fsub double %.044.i.i, %.0.i.i
  %i.tk = fmul double %i.tj, 2.000000e+02
  %i.tl = fsub double f0x404A98AD00000000, %i.tg
  %i.tm = tail call double @pow(double noundef %i.tl, double noundef 2.000000e+00) #13
  %i.tn = fsub double f0x3F69BD7300000000, %i.ti
  %i.to = tail call double @pow(double noundef %i.tn, double noundef 2.000000e+00) #13
  %i.tp = fadd double %i.tm, %i.to
  %i.tq = fsub double f0xBF796D20A0000000, %i.tk
  %i.tr = tail call double @pow(double noundef %i.tq, double noundef 2.000000e+00) #13
  %i.ts = fadd double %i.tp, %i.tr
  %i.tt = tail call double @sqrt(double noundef %i.ts) #13
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.ri
  store double %i.tt, ptr %i.tu, align 8, !tbaa !132
  %indvars.iv.next1575 = add nuw nsw i64 %indvars.iv1574, 1 ; 2 uses
  %exitcond1578.not = icmp eq i64 %indvars.iv.next1575, %i.i
  br i1 %exitcond1578.not, label %bb.bj, label %bb.ar

bb.bj:                                            ; preds = %labdiff.exit
  %indvars.iv.next1580 = add nuw nsw i64 %indvars.iv1579, 1 ; 2 uses
  %exitcond1583.not = icmp eq i64 %indvars.iv.next1580, %i.i
  br i1 %exitcond1583.not, label %.preheader1171.us.preheader, label %.preheader1173

._crit_edge1272:                                  ; preds = %._crit_edge1268.us
  tail call void @free(ptr noundef nonnull %i.oo) #13
  %.not966.not = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %.not966.not, label %.loopexit1170, label %.preheader1168.preheader

.preheader1168.preheader:                         ; preds = %._crit_edge1272
  %wide.trip.count1602 = zext nneg i32 %i.os to i64 ; 2 uses
  br label %.preheader1168

.preheader1168:                                   ; preds = %.preheader1168.preheader, %._crit_edge1278
  %indvars.iv1599 = phi i64 [ 1, %.preheader1168.preheader ], [ %indvars.iv.next1600, %._crit_edge1278 ] ; 2 uses
  %i.tv = mul nuw nsw i64 %indvars.iv1599, %i.i
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader1168, %bb.bk
  %indvars.iv1594 = phi i64 [ 1, %.preheader1168 ], [ %indvars.iv.next1595, %bb.bk ] ; 2 uses
  %i.tw = add nuw nsw i64 %indvars.iv1594, %i.tv  ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.tw
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !57
  %i.tz = mul i32 %i.ty, 255
  %i.ua = udiv i32 %i.tz, %spec.select.us.lcssa   ; 3 uses
  %i.ub = shl i32 %i.ua, 8
  %i.uc = shl i32 %i.ua, 16
  %i.ud = or i32 %i.uc, %i.ub
  %i.ue = or i32 %i.ud, %i.ua
  %i.uf = or i32 %i.ue, -16777216
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tw
  store i32 %i.uf, ptr %i.ug, align 4, !tbaa !57
  %indvars.iv.next1595 = add nuw nsw i64 %indvars.iv1594, 1 ; 2 uses
  %exitcond1598.not = icmp eq i64 %indvars.iv.next1595, %wide.trip.count1602
  br i1 %exitcond1598.not, label %._crit_edge1278, label %bb.bk

._crit_edge1278:                                  ; preds = %bb.bk
  %indvars.iv.next1600 = add nuw nsw i64 %indvars.iv1599, 1 ; 2 uses
  %exitcond1603.not = icmp eq i64 %indvars.iv.next1600, %wide.trip.count1602
  br i1 %exitcond1603.not, label %.loopexit1170, label %.preheader1168

.loopexit1170:                                    ; preds = %._crit_edge1278, %._crit_edge1272
  %i.uh = mul nuw nsw i32 %i.os, %0
  %i.ui = zext nneg i32 %i.uh to i64
  %invariant.gep1910 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ui ; 2 uses
  %n.vec31 = and i64 %i.i, 508                    ; 3 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %.loopexit1170
  %index33 = phi i64 [ 0, %.loopexit1170 ], [ %index.next34, %vector.body32 ] ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.uj, align 4, !tbaa !57
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1910, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.uk, align 4, !tbaa !57
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.ul = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.ul, label %middle.block35, label %vector.body32, !llvm.loop !136

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %n.vec31, %i.i
  br i1 %cmp.n36, label %.preheader1167.preheader, label %scalar.ph29

scalar.ph29:                                      ; preds = %middle.block35, %scalar.ph29
  %indvars.iv1604 = phi i64 [ %indvars.iv.next1605, %scalar.ph29 ], [ %n.vec31, %middle.block35 ] ; 3 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1604
  store i32 -16777216, ptr %i.um, align 4, !tbaa !57
  %gep1911 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1910, i64 %indvars.iv1604
  store i32 -16777216, ptr %gep1911, align 4, !tbaa !57
  %indvars.iv.next1605 = add nuw nsw i64 %indvars.iv1604, 1 ; 2 uses
  %exitcond1608.not = icmp eq i64 %indvars.iv.next1605, %i.i
  br i1 %exitcond1608.not, label %.preheader1167.preheader, label %scalar.ph29, !llvm.loop !137

.preheader1167.preheader:                         ; preds = %scalar.ph29, %middle.block35
  %invariant.gep1912 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %unroll_iter = and i64 %i.i, 508
  br label %.preheader1167

.preheader1167:                                   ; preds = %.preheader1167, %.preheader1167.preheader
  %indvars.iv1609 = phi i64 [ 0, %.preheader1167.preheader ], [ %indvars.iv.next1610.3, %.preheader1167 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader1167.preheader ], [ %niter.next.3, %.preheader1167 ]
  %i.un = mul nuw nsw i64 %indvars.iv1609, %i.i   ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.un
  store i32 -16777216, ptr %i.uo, align 4, !tbaa !57
  %gep1913 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.un
  %i.up = getelementptr i8, ptr %gep1913, i64 -4
  store i32 -16777216, ptr %i.up, align 4, !tbaa !57
  %indvars.iv.next1610 = or disjoint i64 %indvars.iv1609, 1
  %i.uq = mul nuw nsw i64 %indvars.iv.next1610, %i.i ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uq
  store i32 -16777216, ptr %i.ur, align 4, !tbaa !57
  %gep1913.1 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.uq
  %i.us = getelementptr i8, ptr %gep1913.1, i64 -4
  store i32 -16777216, ptr %i.us, align 4, !tbaa !57
  %indvars.iv.next1610.1 = or disjoint i64 %indvars.iv1609, 2
  %i.ut = mul nuw nsw i64 %indvars.iv.next1610.1, %i.i ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ut
  store i32 -16777216, ptr %i.uu, align 4, !tbaa !57
  %gep1913.2 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.ut
  %i.uv = getelementptr i8, ptr %gep1913.2, i64 -4
  store i32 -16777216, ptr %i.uv, align 4, !tbaa !57
  %indvars.iv.next1610.2 = or disjoint i64 %indvars.iv1609, 3
  %i.uw = mul nuw nsw i64 %indvars.iv.next1610.2, %i.i ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uw
  store i32 -16777216, ptr %i.ux, align 4, !tbaa !57
  %gep1913.3 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.uw
  %i.uy = getelementptr i8, ptr %gep1913.3, i64 -4
  store i32 -16777216, ptr %i.uy, align 4, !tbaa !57
  %indvars.iv.next1610.3 = add nuw nsw i64 %indvars.iv1609, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader1166.preheader.unr-lcssa, label %.preheader1167

.preheader1166.preheader.unr-lcssa:               ; preds = %.preheader1167
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1166.preheader, label %.preheader1167.epil.preheader

.preheader1167.epil.preheader:                    ; preds = %.preheader1166.preheader.unr-lcssa
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.preheader1167.epil

.preheader1167.epil:                              ; preds = %.preheader1167.epil, %.preheader1167.epil.preheader
  %indvars.iv1609.epil = phi i64 [ %indvars.iv.next1610.3, %.preheader1167.epil.preheader ], [ %indvars.iv.next1610.epil, %.preheader1167.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1167.epil.preheader ], [ %epil.iter.next, %.preheader1167.epil ]
  %i.uz = mul nuw nsw i64 %indvars.iv1609.epil, %i.i ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uz
  store i32 -16777216, ptr %i.va, align 4, !tbaa !57
  %gep1913.epil = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.uz
  %i.vb = getelementptr i8, ptr %gep1913.epil, i64 -4
  store i32 -16777216, ptr %i.vb, align 4, !tbaa !57
  %indvars.iv.next1610.epil = add nuw nsw i64 %indvars.iv1609.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader1166.preheader, label %.preheader1167.epil, !llvm.loop !138

.preheader1166.preheader:                         ; preds = %.preheader1167.epil, %.preheader1166.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
end_hunk_0
