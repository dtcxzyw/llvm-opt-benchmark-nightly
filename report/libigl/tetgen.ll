Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 555
begin_hunk_0_@_ZN10tetgenmesh11get_tetqualEPNS_7trifaceEPdPNS_7badfaceE:bb.a
  %i.oc = shufflevector <2 x double> %i.mq, <2 x double> %i.na, <2 x i32> <i32 1, i32 3>
  %i.od = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.oc, <2 x double> %i.oa) ; 2 uses
  %i.oe = fneg <2 x double> %i.np
  store <2 x double> %i.oe, ptr %.sroa.14, align 16, !tbaa !58
  %i.of = extractelement <2 x double> %i.od, i64 0
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 16
  store double %i.of, ptr %.sroa.14.16..sroa_idx, align 16, !tbaa !58
  %i.og = extractelement <2 x double> %i.od, i64 1
  %i.oh = fneg double %i.og
  %i.oi = shufflevector <2 x double> %i.kn, <2 x double> %i.kk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.oj = shufflevector <2 x double> %i.kk, <2 x double> %i.kn, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ok = fsub <2 x double> %i.oi, %i.oj          ; 4 uses
  %i.ol = shufflevector <2 x double> %i.kn, <2 x double> %i.kk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.om = shufflevector <2 x double> %i.kk, <2 x double> %i.kn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.on = fsub <2 x double> %i.ol, %i.om          ; 4 uses
  %i.oo = shufflevector <2 x double> %i.ko, <2 x double> %i.kq, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.op = shufflevector <2 x double> %i.ko, <2 x double> %i.kq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.oq = fsub <2 x double> %i.oo, %i.op          ; 4 uses
  %i.or = shufflevector <2 x double> %i.km, <2 x double> %i.kl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.os = fsub <2 x double> %i.oj, %i.or          ; 4 uses
  %i.ot = shufflevector <2 x double> %i.km, <2 x double> %i.kl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ou = fsub <2 x double> %i.om, %i.ot          ; 4 uses
  %i.ov = shufflevector <2 x double> %i.ku, <2 x double> %i.kp, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ow = fsub <2 x double> %i.op, %i.ov          ; 4 uses
  %i.ox = fsub <2 x double> %i.ov, %i.oo          ; 4 uses
  %i.oy = fmul <2 x double> %i.on, %i.on
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ok, <2 x double> %i.ok, <2 x double> %i.oy)
  %i.pa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.oq, <2 x double> %i.oz) ; 2 uses
  %i.pb = fmul <2 x double> %i.ou, %i.ou
  %i.pc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.os, <2 x double> %i.pb)
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ow, <2 x double> %i.ow, <2 x double> %i.pc) ; 2 uses
  %i.pe = fcmp olt <2 x double> %i.pa, %i.pd      ; 7 uses
  %i.pf = extractelement <2 x i1> %i.pe, i64 0    ; 2 uses
  %i.pg = extractelement <2 x double> %i.oq, i64 0 ; 2 uses
  %i.ph = extractelement <2 x double> %i.ox, i64 0 ; 2 uses
  %.57.i198.sroa.sel268.val = select i1 %i.pf, double %i.pg, double %i.ph
  %i.pi = fsub <2 x double> %i.or, %i.oi          ; 4 uses
  %i.pj = fsub <2 x double> %i.ot, %i.ol          ; 4 uses
  %i.pk = fmul <2 x double> %i.pj, %i.pj
  %i.pl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> %i.pi, <2 x double> %i.pk)
  %i.pm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.ox, <2 x double> %i.pl)
  %i.pn = select <2 x i1> %i.pe, <2 x double> %i.pd, <2 x double> %i.pa
  %i.po = fcmp olt <2 x double> %i.pn, %i.pm      ; 6 uses
  %i.pp = extractelement <2 x i1> %i.po, i64 0    ; 2 uses
  %i.pq = extractelement <2 x double> %i.ow, i64 0 ; 2 uses
  %i.pr = select i1 %i.pp, double %i.pq, double %.57.i198.sroa.sel268.val
  %.56.i197.sroa.sel.val = select i1 %i.pf, double %i.ph, double %i.pq
  %i.ps = select i1 %i.pp, double %i.pg, double %.56.i197.sroa.sel.val
  %i.pt = fneg double %i.ps
  %i.pu = select <2 x i1> %i.pe, <2 x double> %i.on, <2 x double> %i.pj
  %i.pv = select <2 x i1> %i.po, <2 x double> %i.ou, <2 x double> %i.pu ; 3 uses
  %i.pw = select <2 x i1> %i.pe, <2 x double> %i.pj, <2 x double> %i.ou
  %i.px = select <2 x i1> %i.po, <2 x double> %i.on, <2 x double> %i.pw ; 3 uses
  %i.py = select <2 x i1> %i.pe, <2 x double> %i.ok, <2 x double> %i.pi
  %i.pz = select <2 x i1> %i.po, <2 x double> %i.os, <2 x double> %i.py ; 3 uses
  %i.qa = select <2 x i1> %i.pe, <2 x double> %i.pi, <2 x double> %i.os
  %i.qb = select <2 x i1> %i.po, <2 x double> %i.ok, <2 x double> %i.qa ; 3 uses
  %i.qc = shufflevector <2 x double> %i.pv, <2 x double> %i.pz, <2 x i32> <i32 0, i32 2>
  %i.qd = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.qe = shufflevector <2 x double> %i.qd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qf = fmul <2 x double> %i.qc, %i.qe
  %i.qg = shufflevector <2 x double> %i.px, <2 x double> %i.qb, <2 x i32> <i32 0, i32 2>
  %i.qh = insertelement <2 x double> poison, double %i.pr, i64 0
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.qi, <2 x double> %i.qf) ; 2 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 0
  %i.ql = fneg double %i.qk
  %i.qm = fneg <2 x double> %i.px
  %i.qn = fmul <2 x double> %i.pz, %i.qm
  %i.qo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qb, <2 x double> %i.pv, <2 x double> %i.qn)
  %i.qp = extractelement <2 x i1> %i.pe, i64 1    ; 2 uses
  %i.qq = extractelement <2 x double> %i.oq, i64 1 ; 2 uses
  %i.qr = extractelement <2 x double> %i.ox, i64 1 ; 2 uses
  %.57.i203.sroa.sel291.val = select i1 %i.qp, double %i.qq, double %i.qr
  %i.qs = extractelement <2 x i1> %i.po, i64 1    ; 2 uses
  %i.qt = extractelement <2 x double> %i.ow, i64 1 ; 2 uses
  %i.qu = select i1 %i.qs, double %i.qt, double %.57.i203.sroa.sel291.val
  %.56.i202.sroa.sel.val = select i1 %i.qp, double %i.qr, double %i.qt
  %i.qv = select i1 %i.qs, double %i.qq, double %.56.i202.sroa.sel.val
  %i.qw = fneg double %i.qv
  %i.qx = shufflevector <2 x double> %i.pv, <2 x double> %i.pz, <2 x i32> <i32 1, i32 3>
  %i.qy = insertelement <2 x double> poison, double %i.qw, i64 0
  %i.qz = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ra = fmul <2 x double> %i.qx, %i.qz
  %i.rb = shufflevector <2 x double> %i.px, <2 x double> %i.qb, <2 x i32> <i32 1, i32 3>
  %i.rc = insertelement <2 x double> poison, double %i.qu, i64 0
  %i.rd = shufflevector <2 x double> %i.rc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.re = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> %i.rd, <2 x double> %i.ra) ; 2 uses
  %i.rf = extractelement <2 x double> %i.re, i64 0
  %i.rg = fneg double %i.rf
  %i.rh = fneg <2 x double> %i.qo
  %.sroa.14.0..sroa.14.16..pre545 = load double, ptr %.sroa.14, align 16, !tbaa !58
  %i.ri = insertelement <2 x double> %i.re, double %i.rg, i64 0
  %i.rj = insertelement <2 x double> %i.qj, double %i.ql, i64 0
  br label %.loopexit347

.loopexit347:                                     ; preds = %._crit_edge76.i.2.2, %bb.g
  %.sroa.32.0 = phi double [ %i.oh, %bb.g ], [ %i.hu, %._crit_edge76.i.2.2 ] ; 3 uses
  %i.rk = phi double [ %.sroa.14.0..sroa.14.16..pre545, %bb.g ], [ %.sroa.14.0..sroa.14.16.569, %._crit_edge76.i.2.2 ] ; 3 uses
  %.0177296 = phi i1 [ true, %bb.g ], [ false, %._crit_edge76.i.2.2 ]
  %i.rl = phi <2 x double> [ %i.ri, %bb.g ], [ %i.jp, %._crit_edge76.i.2.2 ] ; 4 uses
  %i.rm = phi <2 x double> [ %i.rj, %bb.g ], [ %.sroa.39.48.copyload, %._crit_edge76.i.2.2 ] ; 4 uses
  %i.rn = phi <2 x double> [ %.sroa.0.8.vec.insert, %bb.g ], [ %.sroa.0.0.copyload, %._crit_edge76.i.2.2 ] ; 4 uses
  %i.ro = phi <2 x double> [ %i.rh, %bb.g ], [ %i.ju, %._crit_edge76.i.2.2 ] ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.rn, %i.rn
  %i.rp = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.rq = extractelement <2 x double> %i.rn, i64 0 ; 2 uses
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.rq, double %i.rq, double %i.rp)
  %i.rs = tail call noundef double @llvm.fmuladd.f64(double %i.rk, double %i.rk, double %i.rr) ; 2 uses
  %sqrt = tail call double @llvm.sqrt.f64(double %i.rs) ; 4 uses
  %i.rt = fcmp ogt double %i.rs, 0.000000e+00
  br i1 %i.rt, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit347
  %i.ru = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rw = fdiv <2 x double> %i.rn, %i.rv          ; 6 uses
  %i.rx = fdiv double %i.rk, %sqrt
  store double %i.rx, ptr %.sroa.14, align 16, !tbaa !58
  %.sroa.14.8.gep.sroa_idx613 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.8..sroa.14.24.571 = load <2 x double>, ptr %.sroa.14.8.gep.sroa_idx613, align 8, !tbaa !58 ; 4 uses
  %foldExtExtBinop549 = fmul <2 x double> %.sroa.14.8..sroa.14.24.571, %.sroa.14.8..sroa.14.24.571
  %i.ry = extractelement <2 x double> %foldExtExtBinop549, i64 1
  %i.rz = extractelement <2 x double> %.sroa.14.8..sroa.14.24.571, i64 0 ; 2 uses
  %i.sa = tail call double @llvm.fmuladd.f64(double %i.rz, double %i.rz, double %i.ry)
  %i.sb = tail call noundef double @llvm.fmuladd.f64(double %.sroa.32.0, double %.sroa.32.0, double %i.sa) ; 2 uses
  %sqrt.1 = tail call double @llvm.sqrt.f64(double %i.sb) ; 4 uses
  %i.sc = fcmp ogt double %i.sb, 0.000000e+00
  br i1 %i.sc, label %.preheader.preheader.1, label %.loopexit

.preheader.preheader.1:                           ; preds = %.preheader.preheader
  %i.sd = insertelement <2 x double> poison, double %sqrt.1, i64 0
  %i.se = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sf = fdiv <2 x double> %.sroa.14.8..sroa.14.24.571, %i.se
  %.sroa.14.8.gep.sroa_idx614 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  store <2 x double> %i.sf, ptr %.sroa.14.8.gep.sroa_idx614, align 8, !tbaa !58
  %i.sg = fdiv double %.sroa.32.0, %sqrt.1        ; 3 uses
  %foldExtExtBinop551 = fmul <2 x double> %i.rm, %i.rm
  %i.sh = extractelement <2 x double> %foldExtExtBinop551, i64 1
  %i.si = extractelement <2 x double> %i.rm, i64 0 ; 2 uses
  %i.sj = tail call double @llvm.fmuladd.f64(double %i.si, double %i.si, double %i.sh)
  %i.sk = extractelement <2 x double> %i.ro, i64 0 ; 3 uses
  %i.sl = tail call noundef double @llvm.fmuladd.f64(double %i.sk, double %i.sk, double %i.sj) ; 2 uses
  %sqrt.2 = tail call double @llvm.sqrt.f64(double %i.sl) ; 4 uses
  %i.sm = fcmp ogt double %i.sl, 0.000000e+00
  br i1 %i.sm, label %.preheader.preheader.2, label %.loopexit

.preheader.preheader.2:                           ; preds = %.preheader.preheader.1
  %i.sn = insertelement <2 x double> poison, double %sqrt.2, i64 0
  %i.so = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sp = fdiv <2 x double> %i.rm, %i.so          ; 6 uses
  %i.sq = fdiv double %i.sk, %sqrt.2              ; 3 uses
  %foldExtExtBinop553 = fmul <2 x double> %i.rl, %i.rl
  %i.sr = extractelement <2 x double> %foldExtExtBinop553, i64 1
  %i.ss = extractelement <2 x double> %i.rl, i64 0 ; 2 uses
  %i.st = tail call double @llvm.fmuladd.f64(double %i.ss, double %i.ss, double %i.sr)
  %i.su = extractelement <2 x double> %i.ro, i64 1 ; 3 uses
  %i.sv = tail call noundef double @llvm.fmuladd.f64(double %i.su, double %i.su, double %i.st) ; 2 uses
  %sqrt.3 = tail call double @llvm.sqrt.f64(double %i.sv) ; 4 uses
  %i.sw = fcmp ogt double %i.sv, 0.000000e+00
  br i1 %i.sw, label %.preheader.preheader.3, label %.loopexit

.preheader.preheader.3:                           ; preds = %.preheader.preheader.2
  %i.sx = insertelement <2 x double> poison, double %sqrt.3, i64 0
  %i.sy = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sz = fdiv <2 x double> %i.rl, %i.sy          ; 6 uses
  %i.ta = fdiv double %i.su, %sqrt.3              ; 3 uses
  br i1 %.0177296, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.3
  %i.tb = fcmp ogt double %sqrt.1, %sqrt
  %.1176 = select i1 %i.tb, double %sqrt.1, double %sqrt ; 2 uses
  %i.tc = fcmp ogt double %sqrt.2, %.1176
  %.1176.1 = select i1 %i.tc, double %sqrt.2, double %.1176 ; 2 uses
  %i.td = fcmp ogt double %sqrt.3, %.1176.1
  %.1176.2 = select i1 %i.td, double %sqrt.3, double %.1176.1
  %i.te = fmul double %i.et, %.1176.2
  br label %bb.i

bb.i:                                             ; preds = %.preheader.preheader.3, %bb.h
  %.sink = phi double [ %i.te, %bb.h ], [ 1.000000e+30, %.preheader.preheader.3 ]
  %i.tf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %.sink, ptr %i.tf, align 8, !tbaa !315
  %i.tg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store i32 0, ptr %i.tg, align 8, !tbaa !311
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 68776
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.rw, i64 0
  %.sroa.14.8.gep.sroa_idx617 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.8..sroa.14.24.578 = load double, ptr %.sroa.14.8.gep.sroa_idx617, align 8, !tbaa !58
  %.sroa.0.8.vec.extract = extractelement <2 x double> %i.rw, i64 1
  %.sroa.14.16..sroa_idx618 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 16
  %.sroa.14.16..sroa.14.32. = load double, ptr %.sroa.14.16..sroa_idx618, align 16, !tbaa !58
  %i.ti = fmul double %.sroa.0.8.vec.extract, %.sroa.14.16..sroa.14.32.
  %i.tj = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.vec.extract, double %.sroa.14.8..sroa.14.24.578, double %i.ti)
  %.sroa.14.0..sroa.14.16. = load double, ptr %.sroa.14, align 16, !tbaa !58
  %i.tk = tail call noundef double @llvm.fmuladd.f64(double %.sroa.14.0..sroa.14.16., double %i.sg, double %i.tj)
  %i.tl = fneg double %i.tk                       ; 2 uses
  %i.tm = fcmp olt double %i.tl, -1.000000e+00
  %spec.store.select = select i1 %i.tm, double -1.000000e+00, double %i.tl ; 2 uses
  %i.tn = fcmp ogt double %spec.store.select, 1.000000e+00
  %spec.store.select1.a = select i1 %i.tn, double 1.000000e+00, double %spec.store.select ; 5 uses
  %i.to = fcmp ogt double %spec.store.select1.a, -1.000000e+00
  %i.tp = select i1 %i.to, double %spec.store.select1.a, double -1.000000e+00 ; 2 uses
  %i.tq = load double, ptr %i.th, align 8, !tbaa !418 ; 6 uses
  %i.tr = fcmp olt double %spec.store.select1.a, %i.tq
  br i1 %i.tr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.tg, align 8, !tbaa !311
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ts = phi i32 [ 0, %bb.i ], [ 1, %bb.j ]      ; 2 uses
  %.sroa.14.8.gep.sroa_idx616 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.8..sroa.14.24.576 = load double, ptr %.sroa.14.8.gep.sroa_idx616, align 8, !tbaa !58
  %.sroa.39.48.vec.extract593 = extractelement <2 x double> %i.sp, i64 0
  %.sroa.14.16..sroa_idx619 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 16
  %.sroa.14.16..sroa.14.32.582 = load double, ptr %.sroa.14.16..sroa_idx619, align 16, !tbaa !58
  %.sroa.39.56.vec.extract = extractelement <2 x double> %i.sp, i64 1
  %i.tt = fmul double %.sroa.14.16..sroa.14.32.582, %.sroa.39.56.vec.extract
  %i.tu = tail call double @llvm.fmuladd.f64(double %.sroa.14.8..sroa.14.24.576, double %.sroa.39.48.vec.extract593, double %i.tt)
  %i.tv = tail call noundef double @llvm.fmuladd.f64(double %i.sg, double %i.sq, double %i.tu)
  %i.tw = fneg double %i.tv                       ; 2 uses
  %i.tx = fcmp olt double %i.tw, -1.000000e+00
  %spec.store.select.1 = select i1 %i.tx, double -1.000000e+00, double %i.tw ; 2 uses
  %i.ty = fcmp ogt double %spec.store.select.1, 1.000000e+00
  %spec.store.select1.1 = select i1 %i.ty, double 1.000000e+00, double %spec.store.select.1 ; 5 uses
  %i.tz = fcmp olt double %spec.store.select1.1, %spec.store.select1.a ; 2 uses
  %.1174.1 = select i1 %i.tz, double %spec.store.select1.1, double %spec.store.select1.a ; 2 uses
  %i.ua = fcmp ogt double %spec.store.select1.1, %i.tp
  %i.ub = select i1 %i.ua, double %spec.store.select1.1, double %i.tp ; 2 uses
  %i.uc = fcmp olt double %spec.store.select1.1, %i.tq ; 2 uses
  %i.ud = add nuw nsw i32 %i.ts, 1
  %i.ue = select i1 %i.uc, i32 %i.ud, i32 %i.ts   ; 2 uses
  %.sroa.39.48.vec.extract591 = extractelement <2 x double> %i.sp, i64 0
  %.sroa.53.72.vec.extract604 = extractelement <2 x double> %i.sz, i64 0
  %.sroa.39.56.vec.extract595 = extractelement <2 x double> %i.sp, i64 1
  %.sroa.53.80.vec.extract = extractelement <2 x double> %i.sz, i64 1
  %i.uf = fmul double %.sroa.39.56.vec.extract595, %.sroa.53.80.vec.extract
  %i.ug = tail call double @llvm.fmuladd.f64(double %.sroa.39.48.vec.extract591, double %.sroa.53.72.vec.extract604, double %i.uf)
  %i.uh = tail call noundef double @llvm.fmuladd.f64(double %i.sq, double %i.ta, double %i.ug)
  %i.ui = fneg double %i.uh                       ; 2 uses
  %i.uj = fcmp olt double %i.ui, -1.000000e+00
  %spec.store.select.2 = select i1 %i.uj, double -1.000000e+00, double %i.ui ; 2 uses
  %i.uk = fcmp ogt double %spec.store.select.2, 1.000000e+00
  %spec.store.select1.2 = select i1 %i.uk, double 1.000000e+00, double %spec.store.select.2 ; 5 uses
  %i.ul = fcmp olt double %spec.store.select1.2, %.1174.1 ; 2 uses
  %.1174.2 = select i1 %i.ul, double %spec.store.select1.2, double %.1174.1 ; 2 uses
  %i.um = fcmp ogt double %spec.store.select1.2, %i.ub
  %i.un = select i1 %i.um, double %spec.store.select1.2, double %i.ub ; 2 uses
  %i.uo = fcmp olt double %spec.store.select1.2, %i.tq ; 2 uses
  %i.up = add nuw nsw i32 %i.ue, 1
  %i.uq = select i1 %i.uo, i32 %i.up, i32 %i.ue   ; 3 uses
  %i.ur = or i1 %i.uc, %i.uo
  br i1 %i.ur, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.uq, ptr %i.tg, align 8, !tbaa !311
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.0.0.vec.extract559 = extractelement <2 x double> %i.rw, i64 0
  %.sroa.53.72.vec.extract602 = extractelement <2 x double> %i.sz, i64 0
  %.sroa.0.8.vec.extract564 = extractelement <2 x double> %i.rw, i64 1
  %.sroa.53.80.vec.extract608 = extractelement <2 x double> %i.sz, i64 1
  %i.us = fmul double %.sroa.0.8.vec.extract564, %.sroa.53.80.vec.extract608
  %i.ut = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.vec.extract559, double %.sroa.53.72.vec.extract602, double %i.us)
  %.sroa.14.0..sroa.14.16.567 = load double, ptr %.sroa.14, align 16, !tbaa !58
  %i.uu = tail call noundef double @llvm.fmuladd.f64(double %.sroa.14.0..sroa.14.16.567, double %i.ta, double %i.ut)
  %i.uv = fneg double %i.uu                       ; 2 uses
  %i.uw = fcmp olt double %i.uv, -1.000000e+00
  %spec.store.select.3 = select i1 %i.uw, double -1.000000e+00, double %i.uv ; 2 uses
  %i.ux = fcmp ogt double %spec.store.select.3, 1.000000e+00
  %spec.store.select1.3 = select i1 %i.ux, double 1.000000e+00, double %spec.store.select.3 ; 5 uses
  %i.uy = fcmp olt double %spec.store.select1.3, %.1174.2 ; 2 uses
  %.1174.3 = select i1 %i.uy, double %spec.store.select1.3, double %.1174.2 ; 2 uses
  %i.uz = fcmp ogt double %spec.store.select1.3, %i.un
  %i.va = select i1 %i.uz, double %spec.store.select1.3, double %i.un ; 2 uses
  %i.vb = fcmp olt double %spec.store.select1.3, %i.tq
  br i1 %i.vb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.vc = add nuw nsw i32 %i.uq, 1                ; 2 uses
  store i32 %i.vc, ptr %i.tg, align 8, !tbaa !311
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.vd = phi i32 [ %i.vc, %bb.n ], [ %i.uq, %bb.m ] ; 2 uses
  %.sroa.39.48.vec.extract = extractelement <2 x double> %i.sp, i64 0
  %.sroa.0.0.vec.extract561 = extractelement <2 x double> %i.rw, i64 0
  %.sroa.39.56.vec.extract597 = extractelement <2 x double> %i.sp, i64 1
  %.sroa.0.8.vec.extract566 = extractelement <2 x double> %i.rw, i64 1
  %i.ve = fmul double %.sroa.39.56.vec.extract597, %.sroa.0.8.vec.extract566
  %i.vf = tail call double @llvm.fmuladd.f64(double %.sroa.39.48.vec.extract, double %.sroa.0.0.vec.extract561, double %i.ve)
  %.sroa.14.0..sroa.14.16.568 = load double, ptr %.sroa.14, align 16, !tbaa !58
  %i.vg = tail call noundef double @llvm.fmuladd.f64(double %i.sq, double %.sroa.14.0..sroa.14.16.568, double %i.vf)
  %i.vh = fneg double %i.vg                       ; 2 uses
  %i.vi = fcmp olt double %i.vh, -1.000000e+00
  %spec.store.select.4 = select i1 %i.vi, double -1.000000e+00, double %i.vh ; 2 uses
  %i.vj = fcmp ogt double %spec.store.select.4, 1.000000e+00
  %spec.store.select1.4 = select i1 %i.vj, double 1.000000e+00, double %spec.store.select.4 ; 5 uses
  %i.vk = fcmp olt double %spec.store.select1.4, %.1174.3 ; 2 uses
  %.1174.4 = select i1 %i.vk, double %spec.store.select1.4, double %.1174.3 ; 2 uses
  %i.vl = fcmp ogt double %spec.store.select1.4, %i.va
  %i.vm = select i1 %i.vl, double %spec.store.select1.4, double %i.va ; 2 uses
  %i.vn = fcmp olt double %spec.store.select1.4, %i.tq
  br i1 %i.vn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.vo = add nuw nsw i32 %i.vd, 1                ; 2 uses
  store i32 %i.vo, ptr %i.tg, align 8, !tbaa !311
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.vp = phi i32 [ %i.vo, %bb.p ], [ %i.vd, %bb.o ]
  %.sroa.14.8.gep.sroa_idx615 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.8..sroa.14.24.574 = load double, ptr %.sroa.14.8.gep.sroa_idx615, align 8, !tbaa !58
  %.sroa.53.72.vec.extract = extractelement <2 x double> %i.sz, i64 0
  %.sroa.14.16..sroa_idx620 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 16
  %.sroa.14.16..sroa.14.32.584 = load double, ptr %.sroa.14.16..sroa_idx620, align 16, !tbaa !58
  %.sroa.53.80.vec.extract610 = extractelement <2 x double> %i.sz, i64 1
  %i.vq = fmul double %.sroa.14.16..sroa.14.32.584, %.sroa.53.80.vec.extract610
  %i.vr = tail call double @llvm.fmuladd.f64(double %.sroa.14.8..sroa.14.24.574, double %.sroa.53.72.vec.extract, double %i.vq)
  %i.vs = tail call noundef double @llvm.fmuladd.f64(double %i.sg, double %i.ta, double %i.vr)
  %i.vt = fneg double %i.vs                       ; 2 uses
  %i.vu = fcmp olt double %i.vt, -1.000000e+00
  %spec.store.select.5 = select i1 %i.vu, double -1.000000e+00, double %i.vt ; 2 uses
  %i.vv = fcmp ogt double %spec.store.select.5, 1.000000e+00
  %spec.store.select1.5 = select i1 %i.vv, double 1.000000e+00, double %spec.store.select.5 ; 5 uses
  %i.vw = fcmp olt double %spec.store.select1.5, %.1174.4 ; 2 uses
  %.1174.5 = select i1 %i.vw, double %spec.store.select1.5, double %.1174.4
  %i.vx = fcmp ogt double %spec.store.select1.5, %i.vm
  %i.vy = select i1 %i.vx, double %spec.store.select1.5, double %i.vm
  %i.vz = fcmp olt double %spec.store.select1.5, %i.tq
  br i1 %i.vz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.wa = add nuw nsw i32 %i.vp, 1
  store i32 %i.wa, ptr %i.tg, align 8, !tbaa !311
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store double %.1174.5, ptr %i.ew, align 8, !tbaa !58
  %i.wb = getelementptr inbounds nuw i8, ptr %3, i64 48
  store double %i.vy, ptr %i.wb, align 8, !tbaa !58
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.wc = load ptr, ptr %1, align 8, !tbaa !231
  store ptr %i.wc, ptr %3, align 8, !tbaa !308
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.wd = zext i1 %i.tz to i64
  %i.we = select i1 %i.ul, i64 2, i64 %i.wd
  %i.wf = select i1 %i.uy, i64 3, i64 %i.we
  %i.wg = select i1 %i.vk, i64 4, i64 %i.wf
  %i.wh = select i1 %i.vw, i64 5, i64 %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8edge2verE, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !59
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.wj, ptr %i.wk, align 8, !tbaa !309
  %i.wl = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double 0.000000e+00, ptr %i.wl, align 8, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit347, %.preheader.preheader, %.preheader.preheader.1, %.preheader.preheader.2, %bb.f, %bb.u
  %.0184 = phi i1 [ true, %bb.u ], [ false, %bb.f ], [ false, %.preheader.preheader.2 ], [ false, %.preheader.preheader.1 ], [ false, %.preheader.preheader ], [ false, %.loopexit347 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i1 %.0184
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh14enqueue_badtetEPNS_7badfaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419
  %i.c = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b) ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !231
  store ptr %i.d, ptr %i.c, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !236
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !236
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224
  store ptr %i.j, ptr %i.h, align 8, !tbaa !224
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !225
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.l, ptr %i.m, align 8, !tbaa !225
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 96, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.p, align 8, !tbaa !273
  %i.q = load double, ptr %i.o, align 8, !tbaa !315
  %i.r = tail call double @log(double noundef %i.q) #40
  %i.s = fdiv double 1.000000e+00, %i.r           ; 2 uses
  %i.t = fcmp olt double %i.s, 1.000000e+00
end_hunk_0
