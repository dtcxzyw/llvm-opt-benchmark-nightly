Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed4?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dlaed4_:bb.a
  %i.pn = fmul double %i.pm, 5.000000e-01
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.po = fsub double %.11212, %.21176
  %i.pp = fmul double %i.po, 5.000000e-01
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v
  %i.pq = phi double [ %i.ph, %bb.s ], [ %i.pn, %bb.u ], [ %i.pp, %bb.v ] ; 4 uses
  %i.pr = load i32, ptr %0, align 4, !tbaa !84    ; 7 uses
  %.not13181482 = icmp slt i32 %i.pr, 1
  br i1 %.not13181482, label %._crit_edge1486, label %iter.check2129

iter.check2129:                                   ; preds = %bb.w
  %i.ps = add nuw i32 %i.pr, 1
  %wide.trip.count1649 = zext i32 %i.ps to i64
  %i.pt = zext nneg i32 %i.pr to i64              ; 5 uses
  %min.iters.check2113 = icmp ult i32 %i.pr, 4
  br i1 %min.iters.check2113, label %vec.epilog.scalar.ph2131.preheader, label %vector.main.loop.iter.check2114

vector.main.loop.iter.check2114:                  ; preds = %iter.check2129
  %min.iters.check2115 = icmp ult i32 %i.pr, 16
  br i1 %min.iters.check2115, label %vec.epilog.ph2133, label %vector.ph2116

vector.ph2116:                                    ; preds = %vector.main.loop.iter.check2114
  %i.pu = and i64 %i.pt, 12
  %n.vec2117 = and i64 %i.pt, 2147483632          ; 4 uses
  %i.pv = or disjoint i64 %n.vec2117, 1
  %broadcast.splatinsert2118 = insertelement <4 x double> poison, double %i.pq, i64 0
  %broadcast.splat2119 = shufflevector <4 x double> %broadcast.splatinsert2118, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2120

vector.body2120:                                  ; preds = %vector.ph2116, %vector.body2120
  %index2121 = phi i64 [ 0, %vector.ph2116 ], [ %index.next2126, %vector.body2120 ] ; 2 uses
  %i.pw = getelementptr [8 x i8], ptr %4, i64 %index2121 ; 5 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 32 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 64 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 96 ; 2 uses
  %wide.load2122 = load <4 x double>, ptr %i.pw, align 8, !tbaa !86
  %wide.load2123 = load <4 x double>, ptr %i.px, align 8, !tbaa !86
  %wide.load2124 = load <4 x double>, ptr %i.py, align 8, !tbaa !86
  %wide.load2125 = load <4 x double>, ptr %i.pz, align 8, !tbaa !86
  %i.qa = fsub <4 x double> %wide.load2122, %broadcast.splat2119
  %i.qb = fsub <4 x double> %wide.load2123, %broadcast.splat2119
  %i.qc = fsub <4 x double> %wide.load2124, %broadcast.splat2119
  %i.qd = fsub <4 x double> %wide.load2125, %broadcast.splat2119
  store <4 x double> %i.qa, ptr %i.pw, align 8, !tbaa !86
  store <4 x double> %i.qb, ptr %i.px, align 8, !tbaa !86
  store <4 x double> %i.qc, ptr %i.py, align 8, !tbaa !86
  store <4 x double> %i.qd, ptr %i.pz, align 8, !tbaa !86
  %index.next2126 = add nuw i64 %index2121, 16    ; 2 uses
  %i.qe = icmp eq i64 %index.next2126, %n.vec2117
  br i1 %i.qe, label %middle.block2127, label %vector.body2120, !llvm.loop !28

middle.block2127:                                 ; preds = %vector.body2120
  %cmp.n2128 = icmp eq i64 %n.vec2117, %i.pt
  br i1 %cmp.n2128, label %._crit_edge1486, label %vec.epilog.iter.check2130

vec.epilog.iter.check2130:                        ; preds = %middle.block2127
  %min.epilog.iters.check2132 = icmp eq i64 %i.pu, 0
  br i1 %min.epilog.iters.check2132, label %vec.epilog.scalar.ph2131.preheader, label %vec.epilog.ph2133, !prof !94

vec.epilog.ph2133:                                ; preds = %vector.main.loop.iter.check2114, %vec.epilog.iter.check2130
  %vec.epilog.resume.val2134 = phi i64 [ %n.vec2117, %vec.epilog.iter.check2130 ], [ 0, %vector.main.loop.iter.check2114 ]
  %n.vec2135 = and i64 %i.pt, 2147483644          ; 3 uses
  %i.qf = or disjoint i64 %n.vec2135, 1
  %broadcast.splatinsert2136 = insertelement <4 x double> poison, double %i.pq, i64 0
  %broadcast.splat2137 = shufflevector <4 x double> %broadcast.splatinsert2136, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2138

vec.epilog.vector.body2138:                       ; preds = %vec.epilog.vector.body2138, %vec.epilog.ph2133
  %index2139 = phi i64 [ %vec.epilog.resume.val2134, %vec.epilog.ph2133 ], [ %index.next2141, %vec.epilog.vector.body2138 ] ; 2 uses
  %i.qg = getelementptr [8 x i8], ptr %4, i64 %index2139 ; 2 uses
  %wide.load2140 = load <4 x double>, ptr %i.qg, align 8, !tbaa !86
  %i.qh = fsub <4 x double> %wide.load2140, %broadcast.splat2137
  store <4 x double> %i.qh, ptr %i.qg, align 8, !tbaa !86
  %index.next2141 = add nuw i64 %index2139, 4     ; 2 uses
  %i.qi = icmp eq i64 %index.next2141, %n.vec2135
  br i1 %i.qi, label %vec.epilog.middle.block2142, label %vec.epilog.vector.body2138, !llvm.loop !29

vec.epilog.middle.block2142:                      ; preds = %vec.epilog.vector.body2138
  %cmp.n2143 = icmp eq i64 %n.vec2135, %i.pt
  br i1 %cmp.n2143, label %._crit_edge1486, label %vec.epilog.scalar.ph2131.preheader

vec.epilog.scalar.ph2131.preheader:               ; preds = %iter.check2129, %vec.epilog.iter.check2130, %vec.epilog.middle.block2142
  %indvars.iv1646.ph = phi i64 [ 1, %iter.check2129 ], [ %i.pv, %vec.epilog.iter.check2130 ], [ %i.qf, %vec.epilog.middle.block2142 ]
  br label %vec.epilog.scalar.ph2131

vec.epilog.scalar.ph2131:                         ; preds = %vec.epilog.scalar.ph2131.preheader, %vec.epilog.scalar.ph2131
  %indvars.iv1646 = phi i64 [ %indvars.iv.next1647, %vec.epilog.scalar.ph2131 ], [ %indvars.iv1646.ph, %vec.epilog.scalar.ph2131.preheader ] ; 2 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1646 ; 2 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !86
  %i.ql = fsub double %i.qk, %i.pq
  store double %i.ql, ptr %i.qj, align 8, !tbaa !86
  %indvars.iv.next1647 = add nuw nsw i64 %indvars.iv1646, 1 ; 2 uses
  %exitcond1650.not = icmp eq i64 %indvars.iv.next1647, %wide.trip.count1649
  br i1 %exitcond1650.not, label %._crit_edge1486, label %vec.epilog.scalar.ph2131, !llvm.loop !30

._crit_edge1486:                                  ; preds = %vec.epilog.scalar.ph2131, %middle.block2127, %vec.epilog.middle.block2142, %bb.w
  %i.qm = fadd double %.21176, %i.pq              ; 4 uses
  br i1 %.not1317.not1472, label %.lr.ph1493.preheader, label %.lr.ph1529

.lr.ph1493.preheader:                             ; preds = %._crit_edge1486
  %wide.trip.count1654 = zext nneg i32 %i.s to i64
  %i.qn = add nsw i64 %wide.trip.count1654, -1    ; 2 uses
  %xtraiter2276 = and i64 %i.qn, 3                ; 3 uses
  %i.qo = add nsw i32 %i.s, -2
  %i.qp = icmp ult i32 %i.qo, 3
  br i1 %i.qp, label %.lr.ph1493.epil.preheader, label %.lr.ph1493.preheader.new

.lr.ph1493.preheader.new:                         ; preds = %.lr.ph1493.preheader
  %unroll_iter2283 = and i64 %i.qn, -4
  br label %.lr.ph1493

.lr.ph1493:                                       ; preds = %.lr.ph1493, %.lr.ph1493.preheader.new
  %indvars.iv1651 = phi i64 [ 1, %.lr.ph1493.preheader.new ], [ %indvars.iv.next1652.3, %.lr.ph1493 ] ; 7 uses
  %.21491 = phi double [ 0.000000e+00, %.lr.ph1493.preheader.new ], [ %i.rt, %.lr.ph1493 ]
  %.111881490 = phi double [ 0.000000e+00, %.lr.ph1493.preheader.new ], [ %i.rv, %.lr.ph1493 ]
  %.112331488 = phi double [ 0.000000e+00, %.lr.ph1493.preheader.new ], [ %i.ru, %.lr.ph1493 ]
  %niter2284 = phi i64 [ 0, %.lr.ph1493.preheader.new ], [ %niter2284.next.3, %.lr.ph1493 ]
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1651
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !86 ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1651
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !86
  %i.qu = fdiv double %i.qr, %i.qt                ; 3 uses
  %i.qv = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.qu, double %.21491) ; 2 uses
  %i.qw = tail call double @llvm.fmuladd.f64(double %i.qu, double %i.qu, double %.112331488)
  %i.qx = fadd double %.111881490, %i.qv
  %i.qy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1651
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !86 ; 2 uses
  %i.ra = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1651
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !86
  %i.rc = fdiv double %i.qz, %i.rb                ; 3 uses
  %i.rd = tail call double @llvm.fmuladd.f64(double %i.qz, double %i.rc, double %i.qv) ; 2 uses
  %i.re = tail call double @llvm.fmuladd.f64(double %i.rc, double %i.rc, double %i.qw)
  %i.rf = fadd double %i.qx, %i.rd
  %indvars.iv.next1652.1 = add nuw nsw i64 %indvars.iv1651, 2 ; 2 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1652.1
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !86 ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next1652.1
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !86
  %i.rk = fdiv double %i.rh, %i.rj                ; 3 uses
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.rk, double %i.rd) ; 2 uses
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.rk, double %i.rk, double %i.re)
  %i.rn = fadd double %i.rf, %i.rl
  %indvars.iv.next1652.2 = add nuw nsw i64 %indvars.iv1651, 3 ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1652.2
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !86 ; 2 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next1652.2
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !86
  %i.rs = fdiv double %i.rp, %i.rr                ; 3 uses
  %i.rt = tail call double @llvm.fmuladd.f64(double %i.rp, double %i.rs, double %i.rl) ; 4 uses
  %i.ru = tail call double @llvm.fmuladd.f64(double %i.rs, double %i.rs, double %i.rm) ; 3 uses
  %i.rv = fadd double %i.rn, %i.rt                ; 3 uses
  %indvars.iv.next1652.3 = add nuw nsw i64 %indvars.iv1651, 4 ; 2 uses
  %niter2284.next.3 = add i64 %niter2284, 4       ; 2 uses
  %niter2284.ncmp.3 = icmp eq i64 %niter2284.next.3, %unroll_iter2283
  br i1 %niter2284.ncmp.3, label %.lr.ph1529.loopexit.unr-lcssa, label %.lr.ph1493, !llvm.loop !31

.lr.ph1529.loopexit.unr-lcssa:                    ; preds = %.lr.ph1493
  %lcmp.mod2278.not = icmp eq i64 %xtraiter2276, 0
  br i1 %lcmp.mod2278.not, label %.lr.ph1529, label %.lr.ph1493.epil.preheader

.lr.ph1493.epil.preheader:                        ; preds = %.lr.ph1529.loopexit.unr-lcssa, %.lr.ph1493.preheader
  %indvars.iv1651.epil.init = phi i64 [ 1, %.lr.ph1493.preheader ], [ %indvars.iv.next1652.3, %.lr.ph1529.loopexit.unr-lcssa ]
  %.21491.epil.init = phi double [ 0.000000e+00, %.lr.ph1493.preheader ], [ %i.rt, %.lr.ph1529.loopexit.unr-lcssa ]
  %.111881490.epil.init = phi double [ 0.000000e+00, %.lr.ph1493.preheader ], [ %i.rv, %.lr.ph1529.loopexit.unr-lcssa ]
  %.112331488.epil.init = phi double [ 0.000000e+00, %.lr.ph1493.preheader ], [ %i.ru, %.lr.ph1529.loopexit.unr-lcssa ]
  %lcmp.mod2282 = icmp ne i64 %xtraiter2276, 0
  tail call void @llvm.assume(i1 %lcmp.mod2282)
  br label %.lr.ph1493.epil

.lr.ph1493.epil:                                  ; preds = %.lr.ph1493.epil, %.lr.ph1493.epil.preheader
  %indvars.iv1651.epil = phi i64 [ %indvars.iv1651.epil.init, %.lr.ph1493.epil.preheader ], [ %indvars.iv.next1652.epil, %.lr.ph1493.epil ] ; 3 uses
  %.21491.epil = phi double [ %.21491.epil.init, %.lr.ph1493.epil.preheader ], [ %i.sb, %.lr.ph1493.epil ]
  %.111881490.epil = phi double [ %.111881490.epil.init, %.lr.ph1493.epil.preheader ], [ %i.sd, %.lr.ph1493.epil ]
  %.112331488.epil = phi double [ %.112331488.epil.init, %.lr.ph1493.epil.preheader ], [ %i.sc, %.lr.ph1493.epil ]
  %epil.iter2277 = phi i64 [ 0, %.lr.ph1493.epil.preheader ], [ %epil.iter2277.next, %.lr.ph1493.epil ]
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1651.epil
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !86 ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1651.epil
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !86
  %i.sa = fdiv double %i.rx, %i.rz                ; 3 uses
  %i.sb = tail call double @llvm.fmuladd.f64(double %i.rx, double %i.sa, double %.21491.epil) ; 3 uses
  %i.sc = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.sa, double %.112331488.epil) ; 2 uses
  %i.sd = fadd double %.111881490.epil, %i.sb     ; 2 uses
  %indvars.iv.next1652.epil = add nuw nsw i64 %indvars.iv1651.epil, 1
  %epil.iter2277.next = add i64 %epil.iter2277, 1 ; 2 uses
  %epil.iter2277.cmp.not = icmp eq i64 %epil.iter2277.next, %xtraiter2276
  br i1 %epil.iter2277.cmp.not, label %.lr.ph1529, label %.lr.ph1493.epil, !llvm.loop !32

.lr.ph1529:                                       ; preds = %.lr.ph1529.loopexit.unr-lcssa, %.lr.ph1493.epil, %._crit_edge1486
  %.11233.lcssa = phi double [ 0.000000e+00, %._crit_edge1486 ], [ %i.ru, %.lr.ph1529.loopexit.unr-lcssa ], [ %i.sc, %.lr.ph1493.epil ] ; 2 uses
  %.11188.lcssa = phi double [ 0.000000e+00, %._crit_edge1486 ], [ %i.rv, %.lr.ph1529.loopexit.unr-lcssa ], [ %i.sd, %.lr.ph1493.epil ] ; 3 uses
  %.2.lcssa = phi double [ 0.000000e+00, %._crit_edge1486 ], [ %i.rt, %.lr.ph1529.loopexit.unr-lcssa ], [ %i.sb, %.lr.ph1493.epil ] ; 2 uses
  %i.se = sext i32 %i.pr to i64                   ; 2 uses
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.se
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !86 ; 2 uses
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.se
  %i.si = load double, ptr %i.sh, align 8, !tbaa !86
  %i.sj = fdiv double %i.sg, %i.si                ; 3 uses
  %i.sk = fmul double %i.sg, %i.sj                ; 3 uses
  %i.sl = fadd double %i.r, %i.sk
  %i.sm = fadd double %.2.lcssa, %i.sl
  %i.sn = fcmp oge double %i.qm, 0.000000e+00
  %i.so = fneg double %i.qm
  %i.sp = select i1 %i.sn, double %i.qm, double %i.so
  %i.sq = fmul double %i.sj, %i.sj                ; 2 uses
  %i.sr = fadd double %.11233.lcssa, %i.sq
  %i.ss = fneg double %i.sk
  %i.st = fsub double %i.ss, %.2.lcssa
  %i.su = fcmp oge double %.11188.lcssa, 0.000000e+00
  %i.sv = fneg double %.11188.lcssa
  %i.sw = select i1 %i.su, double %.11188.lcssa, double %i.sv
  %i.sx = tail call double @llvm.fmuladd.f64(double %i.st, double 8.000000e+00, double %i.sw)
  %i.sy = fsub double %i.sx, %i.sk
  %i.sz = fadd double %i.r, %i.sy
  %i.ta = tail call double @llvm.fmuladd.f64(double %i.sp, double %i.sr, double %i.sz)
  %wide.trip.count1664 = zext i32 %i.s to i64
  %i.tb = add nsw i64 %wide.trip.count1664, -1    ; 2 uses
  %xtraiter2285 = and i64 %i.tb, 3                ; 3 uses
  %i.tc = add nsw i32 %i.s, -2
  %i.td = icmp ult i32 %i.tc, 3
  %unroll_iter2292 = and i64 %i.tb, -4
  %lcmp.mod2287.not = icmp eq i64 %xtraiter2285, 0
  %lcmp.mod2291 = icmp ne i64 %xtraiter2285, 0
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph1529, %._crit_edge1510
  %i.te = phi i32 [ %i.pr, %.lr.ph1529 ], [ %i.vq, %._crit_edge1510 ]
  %storemerge13201527 = phi i32 [ 3, %.lr.ph1529 ], [ %storemerge1320, %._crit_edge1510 ]
  %.311771526 = phi double [ %i.qm, %.lr.ph1529 ], [ %i.wl, %._crit_edge1510 ] ; 9 uses
  %.211891525 = phi double [ %i.ta, %.lr.ph1529 ], [ %i.yu, %._crit_edge1510 ]
  %.212051524 = phi double [ %.11204, %.lr.ph1529 ], [ %.31206, %._crit_edge1510 ] ; 2 uses
  %.212131523 = phi double [ %.11212, %.lr.ph1529 ], [ %.31214, %._crit_edge1510 ] ; 2 uses
  %.212341522 = phi double [ %.11233.lcssa, %.lr.ph1529 ], [ %.31235.lcssa, %._crit_edge1510 ] ; 2 uses
  %.012421521 = phi double [ %i.sq, %.lr.ph1529 ], [ %i.yk, %._crit_edge1510 ] ; 2 uses
  %storemerge13211520 = phi double [ %i.sm, %.lr.ph1529 ], [ %i.yw, %._crit_edge1510 ] ; 8 uses
  %i.tf = tail call double @llvm.fabs.f64(double %storemerge13211520)
  %i.tg = fmul double %i.p, %.211891525
  %i.th = fcmp ugt double %i.tf, %i.tg
  br i1 %i.th, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ti = load i32, ptr %1, align 4, !tbaa !84
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.tj
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !86
  %i.tm = fadd double %.311771526, %i.tl
  store double %i.tm, ptr %6, align 8, !tbaa !86
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.tn = fcmp ugt double %storemerge13211520, 0.000000e+00 ; 2 uses
  %i.to = fcmp oge double %.212131523, %.311771526
  %i.tp = fcmp ugt double %.212051524, %.311771526
  %i.tq = select i1 %i.tn, i1 true, i1 %i.to
  %.31214 = select i1 %i.tq, double %.212131523, double %.311771526 ; 3 uses
  %i.tr = select i1 %i.tn, i1 %i.tp, i1 false
  %.31206 = select i1 %i.tr, double %.311771526, double %.212051524 ; 3 uses
  %i.ts = sext i32 %i.te to i64
  %i.tt = getelementptr [8 x i8], ptr %i.g, i64 %i.ts ; 2 uses
  %i.tu = getelementptr i8, ptr %i.tt, i64 -8
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !86 ; 3 uses
  %i.tw = fneg double %i.tv
  %i.tx = tail call double @llvm.fmuladd.f64(double %i.tw, double %.212341522, double %storemerge13211520)
  %8 = load double, ptr %i.tt, align 8, !tbaa !86 ; 3 uses
  %i.ty = fneg double %8
  %i.tz = tail call double @llvm.fmuladd.f64(double %i.ty, double %.012421521, double %i.tx) ; 3 uses
  %i.ua = fadd double %i.tv, %8
  %i.ub = fmul double %i.tv, %8                   ; 2 uses
  %i.uc = fadd double %.012421521, %.212341522    ; 2 uses
  %i.ud = fneg double %i.uc
  %i.ue = fmul double %i.ub, %i.ud
  %i.uf = tail call double @llvm.fmuladd.f64(double %i.ua, double %storemerge13211520, double %i.ue) ; 7 uses
  %i.ug = fmul double %storemerge13211520, %i.ub  ; 3 uses
  %i.uh = fcmp ult double %i.uf, 0.000000e+00
  br i1 %i.uh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ui = fmul double %i.ug, 4.000000e+00
  %i.uj = fneg double %i.tz
  %i.uk = fmul double %i.ui, %i.uj
  %i.ul = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.uf, double %i.uk) ; 3 uses
  %i.um = fcmp oge double %i.ul, 0.000000e+00
  %i.un = fneg double %i.ul
  %i.uo = select i1 %i.um, double %i.ul, double %i.un
  %i.up = tail call double @sqrt(double noundef %i.uo) #6
  %i.uq = fadd double %i.uf, %i.up
  %i.ur = fmul double %i.tz, 2.000000e+00
  %i.us = fdiv double %i.uq, %i.ur
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ut = fmul double %i.ug, 2.000000e+00
  %i.uu = fmul double %i.ug, 4.000000e+00
  %i.uv = fneg double %i.tz
  %i.uw = fmul double %i.uu, %i.uv
  %i.ux = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.uf, double %i.uw) ; 3 uses
  %i.uy = fcmp oge double %i.ux, 0.000000e+00
  %i.uz = fneg double %i.ux
  %i.va = select i1 %i.uy, double %i.ux, double %i.uz
  %i.vb = tail call double @sqrt(double noundef %i.va) #6
  %i.vc = fsub double %i.uf, %i.vb
  %i.vd = fdiv double %i.ut, %i.vc
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %storemerge1322 = phi double [ %i.vd, %bb.ab ], [ %i.us, %bb.aa ] ; 2 uses
  %i.ve = fmul double %storemerge13211520, %storemerge1322
  %i.vf = fcmp ogt double %i.ve, 0.000000e+00
  %i.vg = fneg double %storemerge13211520
  %i.vh = fdiv double %i.vg, %i.uc
  %storemerge1337 = select i1 %i.vf, double %i.vh, double %storemerge1322 ; 2 uses
  %i.vi = fadd double %.311771526, %storemerge1337 ; 2 uses
  %i.vj = fcmp ogt double %i.vi, %.31206
  %i.vk = fcmp olt double %i.vi, %.31214
  %or.cond1325 = select i1 %i.vj, i1 true, i1 %i.vk
  br i1 %or.cond1325, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.vl = fcmp olt double %storemerge13211520, 0.000000e+00
  br i1 %i.vl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.vm = fsub double %.31206, %.311771526
  %i.vn = fmul double %i.vm, 5.000000e-01
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.vo = fsub double %.31214, %.311771526
  %i.vp = fmul double %i.vo, 5.000000e-01
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.ae, %bb.af
  %storemerge13371518 = phi double [ %storemerge1337, %bb.ac ], [ %i.vn, %bb.ae ], [ %i.vp, %bb.af ] ; 4 uses
  %i.vq = load i32, ptr %0, align 4, !tbaa !84    ; 7 uses
  %.not13231498 = icmp slt i32 %i.vq, 1
  br i1 %.not13231498, label %._crit_edge1502, label %iter.check2161

iter.check2161:                                   ; preds = %bb.ag
  %i.vr = add nuw i32 %i.vq, 1
  %wide.trip.count1659 = zext i32 %i.vr to i64
  %i.vs = zext nneg i32 %i.vq to i64              ; 5 uses
  %min.iters.check2145 = icmp ult i32 %i.vq, 4
  br i1 %min.iters.check2145, label %.lr.ph1501.preheader, label %vector.main.loop.iter.check2146

vector.main.loop.iter.check2146:                  ; preds = %iter.check2161
  %min.iters.check2147 = icmp ult i32 %i.vq, 16
  br i1 %min.iters.check2147, label %vec.epilog.ph2165, label %vector.ph2148

vector.ph2148:                                    ; preds = %vector.main.loop.iter.check2146
  %i.vt = and i64 %i.vs, 12
  %n.vec2149 = and i64 %i.vs, 2147483632          ; 4 uses
  %i.vu = or disjoint i64 %n.vec2149, 1
  %broadcast.splatinsert2150 = insertelement <4 x double> poison, double %storemerge13371518, i64 0
  %broadcast.splat2151 = shufflevector <4 x double> %broadcast.splatinsert2150, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2152

vector.body2152:                                  ; preds = %vector.ph2148, %vector.body2152
  %index2153 = phi i64 [ 0, %vector.ph2148 ], [ %index.next2158, %vector.body2152 ] ; 2 uses
  %i.vv = getelementptr [8 x i8], ptr %4, i64 %index2153 ; 5 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 32 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 64 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 96 ; 2 uses
  %wide.load2154 = load <4 x double>, ptr %i.vv, align 8, !tbaa !86
  %wide.load2155 = load <4 x double>, ptr %i.vw, align 8, !tbaa !86
  %wide.load2156 = load <4 x double>, ptr %i.vx, align 8, !tbaa !86
  %wide.load2157 = load <4 x double>, ptr %i.vy, align 8, !tbaa !86
  %i.vz = fsub <4 x double> %wide.load2154, %broadcast.splat2151
  %i.wa = fsub <4 x double> %wide.load2155, %broadcast.splat2151
  %i.wb = fsub <4 x double> %wide.load2156, %broadcast.splat2151
  %i.wc = fsub <4 x double> %wide.load2157, %broadcast.splat2151
  store <4 x double> %i.vz, ptr %i.vv, align 8, !tbaa !86
  store <4 x double> %i.wa, ptr %i.vw, align 8, !tbaa !86
  store <4 x double> %i.wb, ptr %i.vx, align 8, !tbaa !86
  store <4 x double> %i.wc, ptr %i.vy, align 8, !tbaa !86
  %index.next2158 = add nuw i64 %index2153, 16    ; 2 uses
  %i.wd = icmp eq i64 %index.next2158, %n.vec2149
  br i1 %i.wd, label %middle.block2159, label %vector.body2152, !llvm.loop !33

middle.block2159:                                 ; preds = %vector.body2152
  %cmp.n2160 = icmp eq i64 %n.vec2149, %i.vs
  br i1 %cmp.n2160, label %._crit_edge1502, label %vec.epilog.iter.check2162

vec.epilog.iter.check2162:                        ; preds = %middle.block2159
  %min.epilog.iters.check2164 = icmp eq i64 %i.vt, 0
  br i1 %min.epilog.iters.check2164, label %.lr.ph1501.preheader, label %vec.epilog.ph2165, !prof !94

vec.epilog.ph2165:                                ; preds = %vector.main.loop.iter.check2146, %vec.epilog.iter.check2162
  %vec.epilog.resume.val2166 = phi i64 [ %n.vec2149, %vec.epilog.iter.check2162 ], [ 0, %vector.main.loop.iter.check2146 ]
  %n.vec2167 = and i64 %i.vs, 2147483644          ; 3 uses
  %i.we = or disjoint i64 %n.vec2167, 1
  %broadcast.splatinsert2168 = insertelement <4 x double> poison, double %storemerge13371518, i64 0
  %broadcast.splat2169 = shufflevector <4 x double> %broadcast.splatinsert2168, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2170

vec.epilog.vector.body2170:                       ; preds = %vec.epilog.vector.body2170, %vec.epilog.ph2165
  %index2171 = phi i64 [ %vec.epilog.resume.val2166, %vec.epilog.ph2165 ], [ %index.next2173, %vec.epilog.vector.body2170 ] ; 2 uses
  %i.wf = getelementptr [8 x i8], ptr %4, i64 %index2171 ; 2 uses
  %wide.load2172 = load <4 x double>, ptr %i.wf, align 8, !tbaa !86
  %i.wg = fsub <4 x double> %wide.load2172, %broadcast.splat2169
  store <4 x double> %i.wg, ptr %i.wf, align 8, !tbaa !86
  %index.next2173 = add nuw i64 %index2171, 4     ; 2 uses
  %i.wh = icmp eq i64 %index.next2173, %n.vec2167
  br i1 %i.wh, label %vec.epilog.middle.block2174, label %vec.epilog.vector.body2170, !llvm.loop !34

vec.epilog.middle.block2174:                      ; preds = %vec.epilog.vector.body2170
  %cmp.n2175 = icmp eq i64 %n.vec2167, %i.vs
  br i1 %cmp.n2175, label %._crit_edge1502, label %.lr.ph1501.preheader

.lr.ph1501.preheader:                             ; preds = %iter.check2161, %vec.epilog.iter.check2162, %vec.epilog.middle.block2174
  %indvars.iv1656.ph = phi i64 [ 1, %iter.check2161 ], [ %i.vu, %vec.epilog.iter.check2162 ], [ %i.we, %vec.epilog.middle.block2174 ]
  br label %.lr.ph1501

.lr.ph1501:                                       ; preds = %.lr.ph1501.preheader, %.lr.ph1501
  %indvars.iv1656 = phi i64 [ %indvars.iv.next1657, %.lr.ph1501 ], [ %indvars.iv1656.ph, %.lr.ph1501.preheader ] ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1656 ; 2 uses
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !86
  %i.wk = fsub double %i.wj, %storemerge13371518
  store double %i.wk, ptr %i.wi, align 8, !tbaa !86
  %indvars.iv.next1657 = add nuw nsw i64 %indvars.iv1656, 1 ; 2 uses
  %exitcond1660.not = icmp eq i64 %indvars.iv.next1657, %wide.trip.count1659
  br i1 %exitcond1660.not, label %._crit_edge1502, label %.lr.ph1501, !llvm.loop !35

._crit_edge1502:                                  ; preds = %.lr.ph1501, %middle.block2159, %vec.epilog.middle.block2174, %bb.ag
  %i.wl = fadd double %.311771526, %storemerge13371518 ; 5 uses
  br i1 %.not1317.not1472, label %.lr.ph1509.preheader, label %._crit_edge1510

.lr.ph1509.preheader:                             ; preds = %._crit_edge1502
  br i1 %i.td, label %.lr.ph1509.epil.preheader, label %.lr.ph1509

.lr.ph1509:                                       ; preds = %.lr.ph1509.preheader, %.lr.ph1509
  %indvars.iv1661 = phi i64 [ %indvars.iv.next1662.3, %.lr.ph1509 ], [ 1, %.lr.ph1509.preheader ] ; 7 uses
  %.31507 = phi double [ %i.xp, %.lr.ph1509 ], [ 0.000000e+00, %.lr.ph1509.preheader ]
  %.311901506 = phi double [ %i.xr, %.lr.ph1509 ], [ 0.000000e+00, %.lr.ph1509.preheader ]
  %.312351504 = phi double [ %i.xq, %.lr.ph1509 ], [ 0.000000e+00, %.lr.ph1509.preheader ]
  %niter2293 = phi i64 [ %niter2293.next.3, %.lr.ph1509 ], [ 0, %.lr.ph1509.preheader ]
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1661
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !86 ; 2 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1661
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !86
  %i.wq = fdiv double %i.wn, %i.wp                ; 3 uses
  %i.wr = tail call double @llvm.fmuladd.f64(double %i.wn, double %i.wq, double %.31507) ; 2 uses
  %i.ws = tail call double @llvm.fmuladd.f64(double %i.wq, double %i.wq, double %.312351504)
  %i.wt = fadd double %.311901506, %i.wr
  %i.wu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1661
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !86 ; 2 uses
  %i.ww = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1661
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !86
  %i.wy = fdiv double %i.wv, %i.wx                ; 3 uses
  %i.wz = tail call double @llvm.fmuladd.f64(double %i.wv, double %i.wy, double %i.wr) ; 2 uses
  %i.xa = tail call double @llvm.fmuladd.f64(double %i.wy, double %i.wy, double %i.ws)
  %i.xb = fadd double %i.wt, %i.wz
  %indvars.iv.next1662.1 = add nuw nsw i64 %indvars.iv1661, 2 ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1662.1
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !86 ; 2 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next1662.1
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !86
  %i.xg = fdiv double %i.xd, %i.xf                ; 3 uses
  %i.xh = tail call double @llvm.fmuladd.f64(double %i.xd, double %i.xg, double %i.wz) ; 2 uses
  %i.xi = tail call double @llvm.fmuladd.f64(double %i.xg, double %i.xg, double %i.xa)
  %i.xj = fadd double %i.xb, %i.xh
  %indvars.iv.next1662.2 = add nuw nsw i64 %indvars.iv1661, 3 ; 2 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1662.2
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !86 ; 2 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next1662.2
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !86
  %i.xo = fdiv double %i.xl, %i.xn                ; 3 uses
  %i.xp = tail call double @llvm.fmuladd.f64(double %i.xl, double %i.xo, double %i.xh) ; 4 uses
  %i.xq = tail call double @llvm.fmuladd.f64(double %i.xo, double %i.xo, double %i.xi) ; 3 uses
  %i.xr = fadd double %i.xj, %i.xp                ; 3 uses
  %indvars.iv.next1662.3 = add nuw nsw i64 %indvars.iv1661, 4 ; 2 uses
  %niter2293.next.3 = add i64 %niter2293, 4       ; 2 uses
  %niter2293.ncmp.3 = icmp eq i64 %niter2293.next.3, %unroll_iter2292
  br i1 %niter2293.ncmp.3, label %._crit_edge1510.loopexit.unr-lcssa, label %.lr.ph1509, !llvm.loop !36

._crit_edge1510.loopexit.unr-lcssa:               ; preds = %.lr.ph1509
  br i1 %lcmp.mod2287.not, label %._crit_edge1510, label %.lr.ph1509.epil.preheader

.lr.ph1509.epil.preheader:                        ; preds = %._crit_edge1510.loopexit.unr-lcssa, %.lr.ph1509.preheader
  %indvars.iv1661.epil.init = phi i64 [ 1, %.lr.ph1509.preheader ], [ %indvars.iv.next1662.3, %._crit_edge1510.loopexit.unr-lcssa ]
  %.31507.epil.init = phi double [ 0.000000e+00, %.lr.ph1509.preheader ], [ %i.xp, %._crit_edge1510.loopexit.unr-lcssa ]
  %.311901506.epil.init = phi double [ 0.000000e+00, %.lr.ph1509.preheader ], [ %i.xr, %._crit_edge1510.loopexit.unr-lcssa ]
  %.312351504.epil.init = phi double [ 0.000000e+00, %.lr.ph1509.preheader ], [ %i.xq, %._crit_edge1510.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2291)
  br label %.lr.ph1509.epil

.lr.ph1509.epil:                                  ; preds = %.lr.ph1509.epil, %.lr.ph1509.epil.preheader
  %indvars.iv1661.epil = phi i64 [ %indvars.iv.next1662.epil, %.lr.ph1509.epil ], [ %indvars.iv1661.epil.init, %.lr.ph1509.epil.preheader ] ; 3 uses
  %.31507.epil = phi double [ %i.xx, %.lr.ph1509.epil ], [ %.31507.epil.init, %.lr.ph1509.epil.preheader ]
  %.311901506.epil = phi double [ %i.xz, %.lr.ph1509.epil ], [ %.311901506.epil.init, %.lr.ph1509.epil.preheader ]
  %.312351504.epil = phi double [ %i.xy, %.lr.ph1509.epil ], [ %.312351504.epil.init, %.lr.ph1509.epil.preheader ]
  %epil.iter2286 = phi i64 [ %epil.iter2286.next, %.lr.ph1509.epil ], [ 0, %.lr.ph1509.epil.preheader ]
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1661.epil
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !86 ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1661.epil
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !86
  %i.xw = fdiv double %i.xt, %i.xv                ; 3 uses
  %i.xx = tail call double @llvm.fmuladd.f64(double %i.xt, double %i.xw, double %.31507.epil) ; 3 uses
  %i.xy = tail call double @llvm.fmuladd.f64(double %i.xw, double %i.xw, double %.312351504.epil) ; 2 uses
  %i.xz = fadd double %.311901506.epil, %i.xx     ; 2 uses
  %indvars.iv.next1662.epil = add nuw nsw i64 %indvars.iv1661.epil, 1
  %epil.iter2286.next = add i64 %epil.iter2286, 1 ; 2 uses
  %epil.iter2286.cmp.not = icmp eq i64 %epil.iter2286.next, %xtraiter2285
  br i1 %epil.iter2286.cmp.not, label %._crit_edge1510, label %.lr.ph1509.epil, !llvm.loop !37

._crit_edge1510:                                  ; preds = %._crit_edge1510.loopexit.unr-lcssa, %.lr.ph1509.epil, %._crit_edge1502
  %.31235.lcssa = phi double [ 0.000000e+00, %._crit_edge1502 ], [ %i.xq, %._crit_edge1510.loopexit.unr-lcssa ], [ %i.xy, %.lr.ph1509.epil ] ; 2 uses
  %.31190.lcssa = phi double [ 0.000000e+00, %._crit_edge1502 ], [ %i.xr, %._crit_edge1510.loopexit.unr-lcssa ], [ %i.xz, %.lr.ph1509.epil ] ; 3 uses
  %.3.lcssa = phi double [ 0.000000e+00, %._crit_edge1502 ], [ %i.xp, %._crit_edge1510.loopexit.unr-lcssa ], [ %i.xx, %.lr.ph1509.epil ] ; 2 uses
  %i.ya = fcmp oge double %.31190.lcssa, 0.000000e+00
  %i.yb = fneg double %.31190.lcssa
  %i.yc = select i1 %i.ya, double %.31190.lcssa, double %i.yb
  %i.yd = sext i32 %i.vq to i64                   ; 2 uses
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.yd
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !86 ; 2 uses
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.yd
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !86
  %i.yi = fdiv double %i.yf, %i.yh                ; 3 uses
  %i.yj = fmul double %i.yf, %i.yi                ; 3 uses
  %i.yk = fmul double %i.yi, %i.yi                ; 2 uses
  %i.yl = fneg double %i.yj
  %i.ym = fsub double %i.yl, %.3.lcssa
  %i.yn = tail call double @llvm.fmuladd.f64(double %i.ym, double 8.000000e+00, double %i.yc)
  %i.yo = fsub double %i.yn, %i.yj
  %i.yp = fadd double %i.r, %i.yo
  %i.yq = fcmp oge double %i.wl, 0.000000e+00
  %i.yr = fneg double %i.wl
  %i.ys = select i1 %i.yq, double %i.wl, double %i.yr
  %i.yt = fadd double %.31235.lcssa, %i.yk
  %i.yu = tail call double @llvm.fmuladd.f64(double %i.ys, double %i.yt, double %i.yp)
  %i.yv = fadd double %i.r, %i.yj
  %i.yw = fadd double %.3.lcssa, %i.yv
  %storemerge1320 = add i32 %storemerge13201527, 1 ; 2 uses
  %exitcond1666.not = icmp eq i32 %storemerge1320, 31
  br i1 %exitcond1666.not, label %._crit_edge1530, label %bb.x, !llvm.loop !38

._crit_edge1530:                                  ; preds = %._crit_edge1510
  store i32 1, ptr %7, align 4, !tbaa !84
  %i.yx = load i32, ptr %1, align 4, !tbaa !84
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.yy
  %i.za = load double, ptr %i.yz, align 8, !tbaa !86
  %i.zb = fadd double %i.wl, %i.za
  store double %i.zb, ptr %6, align 8, !tbaa !86
  br label %.loopexit

bb.ah:                                            ; preds = %bb.d
  store i32 1, ptr %i.c, align 4, !tbaa !84
  %i.zc = add nsw i32 %i.s, 1
  %i.zd = sext i32 %i.zc to i64                   ; 4 uses
  %i.ze = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.zd ; 16 uses
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !86
  %i.zg = sext i32 %i.s to i64                    ; 4 uses
  %i.zh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.zg ; 9 uses
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !86
  %i.zj = fsub double %i.zf, %i.zi                ; 5 uses
  %i.zk = fmul double %i.zj, 5.000000e-01         ; 9 uses
  %.not1345 = icmp slt i32 %i.t, 1
  br i1 %.not1345, label %.preheader1341, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %i.zl = add nuw i32 %i.t, 1
  %wide.trip.count = zext i32 %i.zl to i64        ; 3 uses
  %i.zm = zext nneg i32 %i.t to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zn = shl nuw nsw i64 %wide.trip.count, 3
  %i.zo = add nsw i64 %i.zn, -8                   ; 2 uses
  %i.zp = getelementptr i8, ptr %4, i64 %i.zo     ; 2 uses
  %i.zq = shl nsw i64 %i.zg, 3
  %i.zr = getelementptr i8, ptr %2, i64 %i.zq
  %i.zs = getelementptr i8, ptr %2, i64 %i.zo
  %bound0 = icmp ult ptr %4, %i.zr
  %bound1 = icmp ult ptr %i.zh, %i.zp
  %found.conflict = and i1 %bound0, %bound1
  %bound01815 = icmp ult ptr %4, %i.zs
  %bound11816 = icmp ult ptr %2, %i.zp
  %found.conflict1817 = and i1 %bound01815, %bound11816
  %conflict.rdx = or i1 %found.conflict, %found.conflict1817
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1818 = icmp ult i32 %i.t, 16
  br i1 %min.iters.check1818, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zt = and i64 %i.zm, 12
  %n.vec = and i64 %i.zm, 2147483632              ; 4 uses
  %i.zu = or disjoint i64 %n.vec, 1
  %i.zv = load double, ptr %i.zh, align 8, !tbaa !86, !alias.scope !100
  %broadcast.splatinsert1822 = insertelement <4 x double> poison, double %i.zv, i64 0
  %broadcast.splat1823 = shufflevector <4 x double> %broadcast.splatinsert1822, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.zk, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.zw = getelementptr [8 x i8], ptr %2, i64 %index ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 96
  %wide.load = load <4 x double>, ptr %i.zw, align 8, !tbaa !86, !alias.scope !101
  %wide.load1819 = load <4 x double>, ptr %i.zx, align 8, !tbaa !86, !alias.scope !101
  %wide.load1820 = load <4 x double>, ptr %i.zy, align 8, !tbaa !86, !alias.scope !101
  %wide.load1821 = load <4 x double>, ptr %i.zz, align 8, !tbaa !86, !alias.scope !101
  %i.aaa = fsub <4 x double> %wide.load, %broadcast.splat1823
  %i.aab = fsub <4 x double> %wide.load1819, %broadcast.splat1823
  %i.aac = fsub <4 x double> %wide.load1820, %broadcast.splat1823
  %i.aad = fsub <4 x double> %wide.load1821, %broadcast.splat1823
  %i.aae = fsub <4 x double> %i.aaa, %broadcast.splat
  %i.aaf = fsub <4 x double> %i.aab, %broadcast.splat
  %i.aag = fsub <4 x double> %i.aac, %broadcast.splat
  %i.aah = fsub <4 x double> %i.aad, %broadcast.splat
  %i.aai = getelementptr [8 x i8], ptr %4, i64 %index ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 32
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 96
  store <4 x double> %i.aae, ptr %i.aai, align 8, !tbaa !86, !alias.scope !102, !noalias !103
  store <4 x double> %i.aaf, ptr %i.aaj, align 8, !tbaa !86, !alias.scope !102, !noalias !103
  store <4 x double> %i.aag, ptr %i.aak, align 8, !tbaa !86, !alias.scope !102, !noalias !103
  store <4 x double> %i.aah, ptr %i.aal, align 8, !tbaa !86, !alias.scope !102, !noalias !103
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aam = icmp eq i64 %index.next, %n.vec
  br i1 %i.aam, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.zm
  br i1 %cmp.n, label %.preheader1341, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1824 = and i64 %i.zm, 2147483644          ; 3 uses
  %i.aan = or disjoint i64 %n.vec1824, 1
  %i.aao = load double, ptr %i.zh, align 8, !tbaa !86, !alias.scope !100
  %broadcast.splatinsert1829 = insertelement <4 x double> poison, double %i.aao, i64 0
  %broadcast.splat1830 = shufflevector <4 x double> %broadcast.splatinsert1829, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1825 = insertelement <4 x double> poison, double %i.zk, i64 0
  %broadcast.splat1826 = shufflevector <4 x double> %broadcast.splatinsert1825, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1827 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1831, %vec.epilog.vector.body ] ; 3 uses
  %i.aap = getelementptr [8 x i8], ptr %2, i64 %index1827
  %wide.load1828 = load <4 x double>, ptr %i.aap, align 8, !tbaa !86, !alias.scope !101
  %i.aaq = fsub <4 x double> %wide.load1828, %broadcast.splat1830
  %i.aar = fsub <4 x double> %i.aaq, %broadcast.splat1826
  %i.aas = getelementptr [8 x i8], ptr %4, i64 %index1827
  store <4 x double> %i.aar, ptr %i.aas, align 8, !tbaa !86, !alias.scope !102, !noalias !103
  %index.next1831 = add nuw i64 %index1827, 4     ; 2 uses
  %i.aat = icmp eq i64 %index.next1831, %n.vec1824
  br i1 %i.aat, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1832 = icmp eq i64 %n.vec1824, %i.zm
  br i1 %cmp.n1832, label %.preheader1341, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.zu, %vec.epilog.iter.check ], [ %i.aan, %vec.epilog.middle.block ] ; 4 uses
  %i.aau = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.aav = zext nneg i32 %i.t to i64
  %i.aaw = sub nsw i64 %i.aav, %indvars.iv.ph
  %xtraiter = and i64 %i.aau, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !86
  %i.aaz = load double, ptr %i.zh, align 8, !tbaa !86
  %i.aba = fsub double %i.aay, %i.aaz
  %i.abb = fsub double %i.aba, %i.zk
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.prol
  store double %i.abb, ptr %i.abc, align 8, !tbaa !86
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !45

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.abd = icmp ult i64 %i.aaw, 3
  br i1 %i.abd, label %.preheader1341, label %.lr.ph

.preheader1341:                                   ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.ah
  %.not1281.not1347 = icmp sgt i32 %i.s, 1
  br i1 %.not1281.not1347, label %.lr.ph1350.preheader, label %._crit_edge

.lr.ph1350.preheader:                             ; preds = %.preheader1341
  %wide.trip.count1577 = zext nneg i32 %i.s to i64
  %i.abe = add nsw i64 %wide.trip.count1577, -1   ; 2 uses
  %xtraiter2211 = and i64 %i.abe, 7               ; 3 uses
  %i.abf = add nsw i32 %i.s, -2
  %i.abg = icmp ult i32 %i.abf, 7
  br i1 %i.abg, label %.lr.ph1350.epil.preheader, label %.lr.ph1350.preheader.new

.lr.ph1350.preheader.new:                         ; preds = %.lr.ph1350.preheader
  %unroll_iter = and i64 %i.abe, -8
  br label %.lr.ph1350

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !86
  %i.abj = load double, ptr %i.zh, align 8, !tbaa !86
  %i.abk = fsub double %i.abi, %i.abj
  %i.abl = fsub double %i.abk, %i.zk
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store double %i.abl, ptr %i.abm, align 8, !tbaa !86
end_hunk_0
