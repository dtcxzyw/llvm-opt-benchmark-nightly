Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d:bb.a

.noexc1043:                                       ; preds = %bb.ha
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.46, i32 noundef 109) #21
          to label %bb.hb unwind label %bb.hc

bb.hb:                                            ; preds = %.noexc1043
  unreachable

bb.hc:                                            ; preds = %.noexc1043
  %i.qk = landingpad { ptr, i32 }
          cleanup
  %i.ql = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1036

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1036: ; preds = %bb.hc
  %i.qo = load i64, ptr %i.qm, align 8, !tbaa !25
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037: ; preds = %bb.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1036
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.body1044

bb.hd:                                            ; preds = %.thread1211
  %i.qq = icmp sgt i32 %i.qi, 0
  br i1 %i.qq, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.qr = icmp eq i32 %i.qi, 2
  %.sroa.sel1202.v.sroa.sel.v.sroa.sel.v = select i1 %i.qr, i64 88, i64 84
  %.sroa.sel1202.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %24, i64 %.sroa.sel1202.v.sroa.sel.v.sroa.sel.v
  %i.qs = load i32, ptr %.sroa.sel1202.v.sroa.sel.v.sroa.sel, align 4, !tbaa !41
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  %i.qt = icmp eq i32 %i.qi, 0
  %i.qu = zext i1 %i.qt to i32
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.qv = phi i32 [ %i.qs, %bb.he ], [ %i.qu, %bb.hf ]
  %i.qw = icmp eq i32 %i.qi, 2
  %i.qx = getelementptr inbounds nuw i8, ptr %24, i64 84
  %i.qy = load i32, ptr %i.qx, align 4
  %i.qz = icmp sgt i32 %i.qi, -1
  %i.ra = zext i1 %i.qz to i32
  %i.rb = select i1 %i.qw, i32 %i.qy, i32 %i.ra
  %.sroa.2.0.insert.ext.i1039 = zext i32 %i.rb to i64
  %.sroa.2.0.insert.shift.i1040 = shl nuw i64 %.sroa.2.0.insert.ext.i1039, 32
  %.sroa.0.0.insert.ext.i1041 = zext i32 %i.qv to i64
  %.sroa.0.0.insert.insert.i1042 = or disjoint i64 %.sroa.2.0.insert.shift.i1040, %.sroa.0.0.insert.ext.i1041
  %i.rc = shl nuw nsw i32 %i.ai, 5
  %i.rd = add nsw i32 %i.rc, -26
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %84, i64 %.sroa.0.0.insert.insert.i1042, i32 noundef %i.rd)
          to label %bb.hh unwind label %bb.hn

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #20
  %i.re = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %85, i64 16
  store i64 0, ptr %i.rf, align 8
  store i32 33619968, ptr %85, align 8, !tbaa !50
  store ptr %84, ptr %i.re, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(24) %85, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.hi unwind label %bb.ho

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #20
  %i.rg = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.rh = getelementptr inbounds nuw i8, ptr %86, i64 16
  store i64 0, ptr %i.rh, align 8
  store i32 33619968, ptr %86, align 8, !tbaa !50
  store ptr %23, ptr %i.rg, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(24) %86, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.hj unwind label %bb.hp

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  %i.ri = getelementptr inbounds nuw i8, ptr %84, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !29
  %i.rk = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !29
  %i.rm = icmp sgt i32 %i.ap, 2
  br i1 %i.rm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.hj
  %i.rn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.rr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.rt = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 10 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 6 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 7 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 7 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 10 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 10 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 10 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 9 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 9 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 9 uses
  %i.se = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.sf = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.sh = sext i32 %.0729 to i64
  %i.si = shl nsw i32 %.0729, 1
  %i.sj = sext i32 %i.si to i64
  %i.sk = sext i32 %.0730 to i64
  %i.sl = shl nsw i32 %.0730, 1
  %i.sm = sext i32 %i.sl to i64
  %i.sn = sext i32 %.0731 to i64
  %i.so = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.sp = shl nsw i32 %.0731, 1
  %i.sq = sext i32 %i.sp to i64
  %i.sr = shl nsw i32 %.0732, 1
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.sw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.sx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.sy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.sz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ta = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.tb = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.tc = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.td = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.te = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.tf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.th = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ti = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.tj = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.tk = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.tl = shl nsw i32 %.0733, 1
  %i.tm = sext i32 %i.tl to i64
  %i.tn = shl nsw i32 %.0728, 1
  %i.to = sext i32 %i.tn to i64
  %i.tp = sext i32 %.0732 to i64                  ; 3 uses
  %i.tq = sext i32 %.0733 to i64                  ; 3 uses
  %i.tr = sext i32 %.0728 to i64
  %wide.trip.count = zext nneg i32 %i.ar to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.tt = insertelement <2 x double> %i.kk, double %.0758, i64 1
  %i.tu = insertelement <2 x double> %i.kk, double %.0758, i64 1 ; 14 uses
  %i.tv = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.tw = insertelement <2 x double> %i.tv, double %i.kj, i64 1
  br label %bb.hk

bb.hk:                                            ; preds = %.lr.ph, %bb.ij
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ij ] ; 4 uses
  %.17351231 = phi ptr [ %.0734, %.lr.ph ], [ %.3737, %bb.ij ] ; 9 uses
  %.17391230 = phi ptr [ %.0738, %.lr.ph ], [ %.3741, %bb.ij ] ; 5 uses
  %.17431229 = phi ptr [ %.0742, %.lr.ph ], [ %.3745, %bb.ij ] ; 7 uses
  %.17471228 = phi ptr [ %.0746, %.lr.ph ], [ %.3749, %bb.ij ] ; 18 uses
  %.17511227 = phi ptr [ %.0750, %.lr.ph ], [ %.3753, %bb.ij ] ; 9 uses
  %.17551226 = phi ptr [ %.0754, %.lr.ph ], [ %.3757, %bb.ij ] ; 9 uses
  %i.tx = getelementptr inbounds nuw [24 x i8], ptr %i.rj, i64 %indvars.iv ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.ua = load double, ptr %i.rp, align 16, !tbaa !31
  %i.ub = load double, ptr %i.rq, align 8, !tbaa !31
  %i.uc = load double, ptr %i.rr, align 16, !tbaa !31
  %i.ud = load double, ptr %i.rs, align 16, !tbaa !31
  %i.ue = load double, ptr %i.tx, align 8, !tbaa !58 ; 3 uses
  %i.uf = load double, ptr %i.ty, align 8, !tbaa !59 ; 3 uses
  %i.ug = load double, ptr %i.tz, align 8, !tbaa !60 ; 5 uses
  %i.uh = load <4 x double>, ptr %i.a, align 16, !tbaa !31 ; 3 uses
  %i.ui = load <2 x double>, ptr %i.ro, align 16, !tbaa !31
  %i.uj = insertelement <2 x double> poison, double %i.uf, i64 0
  %i.uk = shufflevector <2 x double> %i.uj, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ul = shufflevector <2 x double> %i.ui, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.um = shufflevector <4 x double> %i.uh, <4 x double> %i.ul, <2 x i32> <i32 1, i32 4>
  %i.un = fmul <2 x double> %i.uk, %i.um
  %i.uo = shufflevector <4 x double> %i.uh, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.up = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.uq = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.uq, <2 x double> %i.un)
  %i.us = shufflevector <4 x double> %i.uh, <4 x double> %i.ul, <2 x i32> <i32 2, i32 5>
  %i.ut = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.uu = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.uv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.uu, <2 x double> %i.ur)
  %i.uw = load <2 x double>, ptr %i.c, align 16, !tbaa !31
  %i.ux = fadd <2 x double> %i.uw, %i.uv
  %i.uy = fmul double %i.uf, %i.ub
  %i.uz = call double @llvm.fmuladd.f64(double %i.ua, double %i.ue, double %i.uy)
  %i.va = call double @llvm.fmuladd.f64(double %i.uc, double %i.ug, double %i.uz)
  %i.vb = fadd double %i.ud, %i.va                ; 3 uses
  %i.vc = fcmp une double %i.vb, 0.000000e+00
  %i.vd = fdiv double 1.000000e+00, %i.vb
  %i.ve = select i1 %i.vc, double %i.vd, double 1.000000e+00 ; 14 uses
  %i.vf = insertelement <2 x double> poison, double %i.ve, i64 0
  %i.vg = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.vh = fmul <2 x double> %i.ux, %i.vg          ; 18 uses
  %i.vi = extractelement <2 x double> %i.vh, i64 1 ; 14 uses
  %i.vj = fmul double %i.vi, %i.vi
  %i.vk = extractelement <2 x double> %i.vh, i64 0 ; 9 uses
  %i.vl = fmul <2 x double> %i.vh, splat (double 2.000000e+00) ; 13 uses
  %i.vm = extractelement <2 x double> %i.vl, i64 1 ; 3 uses
  %i.vn = extractelement <2 x double> %i.vl, i64 0
  %i.vo = fmul double %i.vi, %i.vn                ; 3 uses
  %i.vp = load double, ptr %i.rw, align 16, !tbaa !31
  %i.vq = load double, ptr %i.rx, align 8, !tbaa !31
  %i.vr = load <2 x double>, ptr %i.ry, align 16
  %i.vs = load <2 x double>, ptr %i.rz, align 8
  %i.vt = insertelement <2 x double> poison, double %i.vo, i64 0
  %i.vu = shufflevector <2 x double> %i.vr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vv = shufflevector <2 x double> %i.vs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vw = load <4 x double>, ptr %i.sa, align 16, !tbaa !31 ; 2 uses
  %i.vx = shufflevector <4 x double> %i.vw, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.vy = shufflevector <4 x double> %i.vw, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.vz = load <4 x double>, ptr %31, align 8, !tbaa !31, !noalias !197 ; 3 uses
  %i.wa = shufflevector <4 x double> %i.vz, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.wb = load <2 x double>, ptr %i.l, align 8, !tbaa !31, !noalias !197
  %i.wc = shufflevector <2 x double> %i.wb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wd = shufflevector <4 x double> %i.wc, <4 x double> %i.vz, <2 x i32> <i32 0, i32 5>
  %i.we = shufflevector <4 x double> %i.wc, <4 x double> %i.vz, <2 x i32> <i32 1, i32 6>
  %i.wf = load double, ptr %i.sf, align 8, !tbaa !31, !noalias !197
  %i.wg = load double, ptr %i.sg, align 8, !tbaa !31, !noalias !197
  %i.wh = load double, ptr %i.m, align 8, !tbaa !31, !noalias !197
  %i.wi = load double, ptr %i.e, align 16, !tbaa !31
  %i.wj = load double, ptr %i.rt, align 8, !tbaa !31
  %i.wk = call double @llvm.fmuladd.f64(double %i.vk, double %i.vk, double %i.vj) ; 18 uses
  %i.wl = insertelement <2 x double> poison, double %i.wk, i64 0
  %i.wm = shufflevector <2 x double> %i.wl, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vl, <2 x double> %i.vh, <2 x double> %i.wm) ; 5 uses
  %i.wo = call double @llvm.fmuladd.f64(double %i.wi, double %i.wk, double 1.000000e+00)
  %i.wp = load <2 x double>, ptr %i.ru, align 16, !tbaa !31 ; 2 uses
  %i.wq = insertelement <2 x double> %i.wn, double %i.vo, i64 0
  %i.wr = fmul <2 x double> %i.wq, %i.vu
  %i.ws = insertelement <2 x double> %i.wn, double %i.vo, i64 1
  %i.wt = fmul double %i.wk, %i.wk                ; 15 uses
  %i.wu = fmul double %i.wk, %i.wt                ; 2 uses
  %i.wv = insertelement <2 x double> %i.wp, double %i.wj, i64 0
  %i.ww = insertelement <2 x double> poison, double %i.wt, i64 0 ; 2 uses
  %i.wx = insertelement <2 x double> %i.ww, double %i.wk, i64 1 ; 6 uses
  %i.wy = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.wo, i64 0
  %i.wz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wv, <2 x double> %i.wx, <2 x double> %i.wy)
  %i.xa = insertelement <2 x double> %i.wp, double %i.vp, i64 1
  %i.xb = insertelement <2 x double> poison, double %i.wu, i64 0 ; 2 uses
  %i.xc = insertelement <2 x double> %i.xb, double %i.wt, i64 1
  %i.xd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xa, <2 x double> %i.xc, <2 x double> %i.wz) ; 8 uses
  %i.xe = extractelement <2 x double> %i.xd, i64 0 ; 6 uses
  %i.xf = extractelement <2 x double> %i.xd, i64 1
  %i.xg = call double @llvm.fmuladd.f64(double %i.vq, double %i.wu, double %i.xf)
  %i.xh = fdiv double 1.000000e+00, %i.xg         ; 33 uses
  %i.xi = shufflevector <2 x double> %i.xd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xj = fmul <2 x double> %i.vh, %i.xi          ; 9 uses
  %i.xk = insertelement <2 x double> poison, double %i.xh, i64 0
  %i.xl = shufflevector <2 x double> %i.xk, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.xm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xj, <2 x double> %i.xl, <2 x double> %i.wr)
  %i.xn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vv, <2 x double> %i.ws, <2 x double> %i.xm)
  %i.xo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vx, <2 x double> %i.wm, <2 x double> %i.xn)
  %i.xp = shufflevector <2 x double> %i.ww, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.xq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vy, <2 x double> %i.xp, <2 x double> %i.xo) ; 6 uses
  %i.xr = shufflevector <2 x double> %i.xq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.xs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wa, <2 x double> %i.xr, <2 x double> zeroinitializer)
  %i.xt = shufflevector <2 x double> %i.xq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wd, <2 x double> %i.xt, <2 x double> %i.xs)
  %i.xv = fadd <2 x double> %i.we, %i.xu          ; 2 uses
  %i.xw = extractelement <2 x double> %i.xq, i64 0
  %i.xx = call double @llvm.fmuladd.f64(double %i.wf, double %i.xw, double 0.000000e+00)
  %i.xy = extractelement <2 x double> %i.xq, i64 1 ; 5 uses
  %i.xz = call double @llvm.fmuladd.f64(double %i.wg, double %i.xy, double %i.xx)
  %i.ya = fadd double %i.wh, %i.xz                ; 3 uses
  %i.yb = fcmp une double %i.ya, 0.000000e+00
  %i.yc = fdiv double 1.000000e+00, %i.ya
  %i.yd = select i1 %i.yb, double %i.yc, double 1.000000e+00 ; 3 uses
  %i.ye = getelementptr inbounds nuw [16 x i8], ptr %i.rl, i64 %indvars.iv
  %i.yf = insertelement <2 x double> poison, double %i.yd, i64 0
  %i.yg = shufflevector <2 x double> %i.yf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yh = fmul <2 x double> %i.xv, %i.yg          ; 4 uses
  %i.yi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yh, <2 x double> %i.tu, <2 x double> %i.tw)
  %i.yj = shufflevector <2 x double> %i.yi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.yj, ptr %i.ye, align 8, !tbaa !31
  br i1 %op.rdx1417, label %bb.hl, label %bb.ij

bb.hl:                                            ; preds = %bb.hk
  %i.yk = load ptr, ptr %i.pa, align 8, !tbaa !29
  %.not826 = icmp eq ptr %i.yk, null
  br i1 %.not826, label %bb.hr, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.17391230, align 8, !tbaa !31
  %i.yl = getelementptr inbounds [8 x i8], ptr %.17391230, i64 %i.sh
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.yl, align 8, !tbaa !31
  %i.ym = getelementptr inbounds [8 x i8], ptr %.17391230, i64 %i.sj
  br label %bb.hr

bb.hn:                                            ; preds = %bb.ha, %bb.hg
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %.body1044

bb.ho:                                            ; preds = %bb.hh
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  br label %bb.je

bb.hp:                                            ; preds = %bb.hi
  %i.yp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  br label %bb.je

bb.hq:                                            ; preds = %._crit_edge
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.hr:                                            ; preds = %bb.hm, %bb.hl
  %.2740 = phi ptr [ %i.ym, %bb.hm ], [ %.17391230, %bb.hl ] ; 2 uses
  %.not827 = icmp eq ptr %.17431229, null
  br i1 %.not827, label %.preheader, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  br i1 %i.ad, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store double 0.000000e+00, ptr %.17431229, align 8, !tbaa !31
  %i.yr = extractelement <2 x double> %i.yh, i64 1
  %i.ys = fmul double %12, %i.yr
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  %i.yt = extractelement <2 x double> %i.yh, i64 1
  store double %i.yt, ptr %.17431229, align 8, !tbaa !31
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.sink = phi double [ 0.000000e+00, %bb.hu ], [ %i.ys, %bb.ht ]
  %i.yu = getelementptr inbounds nuw i8, ptr %.17431229, i64 8
  store double %.sink, ptr %i.yu, align 8, !tbaa !31
  %i.yv = getelementptr inbounds [8 x i8], ptr %.17431229, i64 %i.sk ; 2 uses
  store double 0.000000e+00, ptr %i.yv, align 8, !tbaa !31
  %i.yw = getelementptr i8, ptr %i.yv, i64 8
  %i.yx = extractelement <2 x double> %i.yh, i64 0
  store double %i.yx, ptr %i.yw, align 8, !tbaa !31
  %i.yy = getelementptr inbounds [8 x i8], ptr %.17431229, i64 %i.sm
  br label %.preheader

.preheader:                                       ; preds = %bb.hv, %bb.hr
  %.2744 = phi ptr [ %i.yy, %bb.hv ], [ null, %bb.hr ] ; 2 uses
  %i.yz = fneg <2 x double> %i.xv                 ; 4 uses
  %i.za = load double, ptr %31, align 8, !tbaa !31
  %i.zb = load <2 x double>, ptr %i.sf, align 8
  %i.zc = load double, ptr %i.k, align 8, !tbaa !31
  %i.zd = load <2 x double>, ptr %i.ts, align 8
  %i.ze = load <2 x double>, ptr %i.se, align 8
  %i.zf = shufflevector <2 x double> %i.zb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zg = fmul <2 x double> %i.zf, %i.yz
  %i.zh = insertelement <2 x double> %i.ze, double %i.za, i64 1
  %i.zi = insertelement <2 x double> poison, double %i.ya, i64 0
  %i.zj = shufflevector <2 x double> %i.zi, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.zk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zh, <2 x double> %i.zj, <2 x double> %i.zg)
  %i.zl = load <2 x double>, ptr %i.l, align 8
  %i.zm = shufflevector <2 x double> %i.zd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zn = fmul <2 x double> %i.zm, %i.yz
  %i.zo = insertelement <2 x double> %i.zl, double %i.zc, i64 1
  %i.zp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zo, <2 x double> %i.zj, <2 x double> %i.zn)
  %i.zq = fmul double %i.yd, %i.yd
  %i.zr = insertelement <2 x double> poison, double %i.zq, i64 0
  %i.zs = shufflevector <2 x double> %i.zr, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.zt = fmul <2 x double> %i.zs, %i.zk          ; 21 uses
  %i.zu = fmul <2 x double> %i.zs, %i.zp          ; 18 uses
  %i.zv = extractelement <2 x double> %i.zu, i64 1 ; 7 uses
  %i.zw = extractelement <2 x double> %i.zu, i64 0 ; 4 uses
  %.not828 = icmp eq ptr %.17471228, null
  br i1 %.not828, label %bb.id, label %bb.hw

bb.hw:                                            ; preds = %.preheader
  %i.zx = fmul <2 x double> %i.vh, %i.xl          ; 4 uses
  %i.zy = extractelement <2 x double> %i.zx, i64 0
  %i.zz = fmul double %i.wk, %i.zy
  %i.aaa = extractelement <2 x double> %i.zx, i64 1
  %i.aab = extractelement <2 x double> %i.zt, i64 0 ; 2 uses
  %i.aac = insertelement <2 x double> poison, double %i.zz, i64 0
  %i.aad = shufflevector <2 x double> %i.aac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aae = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.aad, <2 x double> zeroinitializer) ; 2 uses
  %i.aaf = extractelement <2 x double> %i.aae, i64 1
  %i.aag = getelementptr inbounds [8 x i8], ptr %.17471228, i64 %i.sn ; 14 uses
  %i.aah = fmul double %i.wt, %i.aaa              ; 2 uses
  %i.aai = fmul <2 x double> %i.wx, %i.zx         ; 3 uses
  %i.aaj = extractelement <2 x double> %i.aai, i64 1
  %i.aak = call double @llvm.fmuladd.f64(double %i.zv, double %i.aaj, double %i.aaf)
  %i.aal = fmul double %.0758, %i.aak
  store double %i.aal, ptr %.17471228, align 8, !tbaa !31
  %i.aam = shufflevector <2 x double> %i.zt, <2 x double> %i.zu, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.aan = shufflevector <2 x double> %i.aae, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.aao = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aam, <2 x double> %i.aai, <2 x double> %i.aan) ; 2 uses
  %shift = shufflevector <2 x double> %i.aao, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.kk, %shift
  %i.aap = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.aap, ptr %i.aag, align 8, !tbaa !31
  %i.aaq = extractelement <2 x double> %i.aao, i64 0
  %i.aar = call double @llvm.fmuladd.f64(double %i.zv, double %i.aah, double %i.aaq)
  %i.aas = extractelement <2 x double> %i.aai, i64 0
  %i.aat = call double @llvm.fmuladd.f64(double %i.aab, double %i.aas, double 0.000000e+00)
  %i.aau = call double @llvm.fmuladd.f64(double %i.zw, double %i.aah, double %i.aat)
  %i.aav = fmul double %.0758, %i.aar
  %i.aaw = getelementptr inbounds nuw i8, ptr %.17471228, i64 8
  store double %i.aav, ptr %i.aaw, align 8, !tbaa !31
  %i.aax = fmul double %i.kl, %i.aau
  %i.aay = getelementptr i8, ptr %i.aag, i64 8
  store double %i.aax, ptr %i.aay, align 8, !tbaa !31
  %i.aaz = load i32, ptr %i.so, align 4, !tbaa !26 ; 5 uses
  %i.aba = icmp sgt i32 %i.aaz, 2
  br i1 %i.aba, label %bb.hx, label %bb.ic

bb.hx:                                            ; preds = %bb.hw
  %i.abb = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.abb, <2 x double> zeroinitializer) ; 2 uses
  %i.abd = extractelement <2 x double> %i.abc, i64 1
  %i.abe = extractelement <2 x double> %i.wn, i64 1
  %i.abf = call double @llvm.fmuladd.f64(double %i.zv, double %i.abe, double %i.abd)
  %i.abg = fmul double %.0758, %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %.17471228, i64 16
  store double %i.abg, ptr %i.abh, align 8, !tbaa !31
  %i.abi = getelementptr i8, ptr %i.aag, i64 16
  %i.abj = shufflevector <2 x double> %i.abc, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.abk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aam, <2 x double> %i.wn, <2 x double> %i.abj) ; 2 uses
  %shift1419 = shufflevector <2 x double> %i.abk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1420 = fmul <2 x double> %i.kk, %shift1419
  %i.abl = extractelement <2 x double> %foldExtExtBinop1420, i64 0
  store double %i.abl, ptr %i.abi, align 8, !tbaa !31
  %i.abm = extractelement <2 x double> %i.wn, i64 0
  %i.abn = getelementptr inbounds nuw i8, ptr %.17471228, i64 24
  %i.abo = call double @llvm.fmuladd.f64(double %i.aab, double %i.abm, double 0.000000e+00)
  %i.abp = shufflevector <2 x double> %i.abk, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.abq = insertelement <2 x double> %i.abp, double %i.abo, i64 0
  %i.abr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zu, <2 x double> %i.abb, <2 x double> %i.abq)
  %i.abs = fmul <2 x double> %i.tu, %i.abr        ; 2 uses
  %i.abt = extractelement <2 x double> %i.abs, i64 1
  store double %i.abt, ptr %i.abn, align 8, !tbaa !31
  %i.abu = getelementptr i8, ptr %i.aag, i64 24
  %i.abv = extractelement <2 x double> %i.abs, i64 0
  store double %i.abv, ptr %i.abu, align 8, !tbaa !31
  %i.abw = icmp samesign ugt i32 %i.aaz, 4
  br i1 %i.abw, label %bb.hy, label %bb.ic

bb.hy:                                            ; preds = %bb.hx
  %i.abx = shufflevector <2 x double> %i.xb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aby = fmul <2 x double> %i.abx, %i.zx        ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.17471228, i64 32
  %i.aca = shufflevector <2 x double> %i.aby, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.aca, <2 x double> zeroinitializer)
  %i.acc = shufflevector <2 x double> %i.aby, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.acd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zu, <2 x double> %i.acc, <2 x double> %i.acb)
  %i.ace = fmul <2 x double> %i.tt, %i.acd        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d:bb.a
  %i.auv = call double @llvm.fmuladd.f64(double %i.asj, double %i.auu, double %i.aut)
  %i.auw = call double @llvm.fmuladd.f64(double %i.auv, double %i.atd, double %i.aus)
  %i.aux = insertelement <2 x double> poison, double %i.auj, i64 0
  %i.auy = shufflevector <2 x double> %i.aux, <2 x double> poison, <2 x i32> zeroinitializer
  %i.auz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.auy, <2 x double> zeroinitializer)
  %i.ava = insertelement <2 x double> poison, double %i.auw, i64 0
  %i.avb = shufflevector <2 x double> %i.ava, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zu, <2 x double> %i.avb, <2 x double> %i.auz)
  %i.avd = fmul <2 x double> %i.tu, %i.avc        ; 2 uses
  %i.ave = extractelement <2 x double> %i.avd, i64 1
  store double %i.ave, ptr %.17551226, align 8, !tbaa !31
  %i.avf = getelementptr inbounds [8 x i8], ptr %.17551226, i64 %i.tq
  %i.avg = extractelement <2 x double> %i.avd, i64 0
  store double %i.avg, ptr %i.avf, align 8, !tbaa !31
  %i.avh = insertelement <2 x double> %i.aqx, double %i.arg, i64 1
  %i.avi = shufflevector <2 x double> %i.aqw, <2 x double> %i.arm, <2 x i32> <i32 1, i32 2>
  %i.avj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.avh, <2 x double> %i.avi)
  %i.avk = insertelement <2 x double> poison, double %i.arz, i64 0
  %i.avl = shufflevector <2 x double> %i.avk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aso, <2 x double> %i.avl, <2 x double> %i.avj) ; 2 uses
  %i.avn = extractelement <2 x double> %i.avm, i64 1
  %i.avo = fmul double %i.ve, %i.avn              ; 4 uses
  %i.avp = fmul double %i.vm, %i.avo
  %i.avq = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.avr = insertelement <2 x double> %i.avq, double %i.ve, i64 0
  %i.avs = insertelement <2 x double> %i.avm, double 2.000000e+00, i64 1
  %i.avt = fmul <2 x double> %i.avr, %i.avs       ; 3 uses
  %i.avu = shufflevector <2 x double> %i.avq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.avv = insertelement <2 x double> %i.avu, double %i.avp, i64 0
  %i.avw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asz, <2 x double> %i.avt, <2 x double> %i.avv) ; 3 uses
  %i.avx = extractelement <2 x double> %i.avw, i64 0 ; 5 uses
  %i.avy = load double, ptr %i.rw, align 16, !tbaa !31
  %i.avz = load <2 x double>, ptr %i.ru, align 16, !tbaa !31 ; 2 uses
  %i.awa = insertelement <2 x double> %i.avz, double %i.avy, i64 1
  %i.awb = fmul <2 x double> %i.awa, <double 3.000000e+00, double 2.000000e+00>
  %i.awc = shufflevector <2 x double> %i.avw, <2 x double> %i.avz, <2 x i32> <i32 1, i32 3>
  %i.awd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awb, <2 x double> %i.wx, <2 x double> %i.awc) ; 2 uses
  %foldExtExtBinop1435 = fmul <2 x double> %i.avw, %i.awd ; 2 uses
  %i.awe = extractelement <2 x double> %foldExtExtBinop1435, i64 0
  %i.awf = load double, ptr %i.rx, align 8, !tbaa !31
  %i.awg = fmul double %i.awf, 3.000000e+00
  %i.awh = extractelement <2 x double> %i.awd, i64 1
  %i.awi = call double @llvm.fmuladd.f64(double %i.awg, double %i.wt, double %i.awh)
  %i.awj = fmul double %i.ash, %i.awi
  %i.awk = fmul double %i.avx, %i.awj             ; 2 uses
  %i.awl = extractelement <2 x double> %i.avt, i64 0 ; 2 uses
  %i.awm = fmul double %i.vi, %i.awl
  %i.awn = call double @llvm.fmuladd.f64(double %i.vk, double %i.avo, double %i.awm)
  %i.awo = fmul double %i.awn, 2.000000e+00       ; 2 uses
  %foldExtExtBinop1437 = fmul <2 x double> %i.xd, %i.avt
  %i.awp = extractelement <2 x double> %foldExtExtBinop1437, i64 0
  %foldExtExtBinop1439 = fmul <2 x double> %i.vh, %foldExtExtBinop1435
  %i.awq = extractelement <2 x double> %foldExtExtBinop1439, i64 0
  %i.awr = fmul double %i.xh, %i.awq
  %i.aws = call double @llvm.fmuladd.f64(double %i.awp, double %i.xh, double %i.awr)
  %i.awt = call double @llvm.fmuladd.f64(double %i.atz, double %i.awk, double %i.aws)
  %i.awu = load double, ptr %i.ry, align 16, !tbaa !31 ; 2 uses
  %i.awv = call double @llvm.fmuladd.f64(double %i.awu, double %i.awo, double %i.awt)
  %i.aww = load double, ptr %i.rz, align 8, !tbaa !31 ; 2 uses
  %i.awx = call double @llvm.fmuladd.f64(double %i.asi, double %i.awl, double %i.avx)
  %i.awy = call double @llvm.fmuladd.f64(double %i.aww, double %i.awx, double %i.awv)
  %i.awz = load double, ptr %i.sa, align 16, !tbaa !31
  %i.axa = load double, ptr %i.sb, align 8, !tbaa !31
  %i.axb = call double @llvm.fmuladd.f64(double %i.asj, double %i.axa, double %i.awz)
  %i.axc = call double @llvm.fmuladd.f64(double %i.axb, double %i.avx, double %i.awy)
  %i.axd = fmul double %i.xe, %i.avo
  %i.axe = fmul double %i.vi, %i.awe
  %i.axf = fmul double %i.xh, %i.axe
  %i.axg = call double @llvm.fmuladd.f64(double %i.axd, double %i.xh, double %i.axf)
  %i.axh = call double @llvm.fmuladd.f64(double %i.auo, double %i.awk, double %i.axg)
  %i.axi = call double @llvm.fmuladd.f64(double %i.ask, double %i.avo, double %i.avx)
  %i.axj = call double @llvm.fmuladd.f64(double %i.awu, double %i.axi, double %i.axh)
  %i.axk = call double @llvm.fmuladd.f64(double %i.aww, double %i.awo, double %i.axj)
  %i.axl = load double, ptr %i.sc, align 16, !tbaa !31
  %i.axm = load double, ptr %i.sd, align 8, !tbaa !31
  %i.axn = call double @llvm.fmuladd.f64(double %i.asj, double %i.axm, double %i.axl)
  %i.axo = call double @llvm.fmuladd.f64(double %i.axn, double %i.avx, double %i.axk) ; 2 uses
  %i.axp = insertelement <2 x double> poison, double %i.axc, i64 0
  %i.axq = shufflevector <2 x double> %i.axp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.axq, <2 x double> zeroinitializer) ; 2 uses
  %i.axs = extractelement <2 x double> %i.axr, i64 1
  %i.axt = call double @llvm.fmuladd.f64(double %i.zv, double %i.axo, double %i.axs)
  %i.axu = extractelement <2 x double> %i.axr, i64 0
  %i.axv = call double @llvm.fmuladd.f64(double %i.zw, double %i.axo, double %i.axu)
  %i.axw = fmul double %.0758, %i.axt
  %i.axx = getelementptr inbounds nuw i8, ptr %.17551226, i64 8
  store double %i.axw, ptr %i.axx, align 8, !tbaa !31
  %i.axy = fmul double %i.kl, %i.axv
  %i.axz = getelementptr [8 x i8], ptr %.17551226, i64 %i.tq
  %i.aya = getelementptr i8, ptr %i.axz, i64 8
  store double %i.axy, ptr %i.aya, align 8, !tbaa !31
  %i.ayb = insertelement <2 x double> %i.aqy, double %i.arn, i64 1
  %i.ayc = shufflevector <2 x double> %i.are, <2 x double> %i.arm, <2 x i32> <i32 0, i32 3>
  %i.ayd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.ayb, <2 x double> %i.ayc)
  %i.aye = insertelement <2 x double> poison, double %i.asf, i64 0
  %i.ayf = shufflevector <2 x double> %i.aye, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aso, <2 x double> %i.ayf, <2 x double> %i.ayd) ; 2 uses
  %i.ayh = extractelement <2 x double> %i.ayg, i64 1
  %i.ayi = fmul double %i.ve, %i.ayh              ; 4 uses
  %i.ayj = fmul double %i.vm, %i.ayi
  %i.ayk = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.ayl = insertelement <2 x double> %i.ayk, double %i.ve, i64 0
  %i.aym = insertelement <2 x double> %i.ayg, double 2.000000e+00, i64 1
  %i.ayn = fmul <2 x double> %i.ayl, %i.aym       ; 3 uses
  %i.ayo = shufflevector <2 x double> %i.ayk, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ayp = insertelement <2 x double> %i.ayo, double %i.ayj, i64 0
  %i.ayq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asz, <2 x double> %i.ayn, <2 x double> %i.ayp) ; 3 uses
  %i.ayr = extractelement <2 x double> %i.ayq, i64 0 ; 5 uses
  %i.ays = load double, ptr %i.rw, align 16, !tbaa !31
  %i.ayt = load <2 x double>, ptr %i.ru, align 16, !tbaa !31 ; 2 uses
  %i.ayu = insertelement <2 x double> %i.ayt, double %i.ays, i64 1
  %i.ayv = fmul <2 x double> %i.ayu, <double 3.000000e+00, double 2.000000e+00>
  %i.ayw = shufflevector <2 x double> %i.ayq, <2 x double> %i.ayt, <2 x i32> <i32 1, i32 3>
  %i.ayx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayv, <2 x double> %i.wx, <2 x double> %i.ayw) ; 2 uses
  %foldExtExtBinop1441 = fmul <2 x double> %i.ayq, %i.ayx ; 2 uses
  %i.ayy = extractelement <2 x double> %foldExtExtBinop1441, i64 0
  %i.ayz = load double, ptr %i.rx, align 8, !tbaa !31
  %i.aza = fmul double %i.ayz, 3.000000e+00
  %i.azb = extractelement <2 x double> %i.ayx, i64 1
  %i.azc = call double @llvm.fmuladd.f64(double %i.aza, double %i.wt, double %i.azb)
  %i.azd = fmul double %i.ash, %i.azc
  %i.aze = fmul double %i.ayr, %i.azd             ; 2 uses
  %i.azf = extractelement <2 x double> %i.ayn, i64 0 ; 2 uses
  %i.azg = fmul double %i.vi, %i.azf
  %i.azh = call double @llvm.fmuladd.f64(double %i.vk, double %i.ayi, double %i.azg)
  %i.azi = fmul double %i.azh, 2.000000e+00       ; 2 uses
  %foldExtExtBinop1443 = fmul <2 x double> %i.xd, %i.ayn
  %i.azj = extractelement <2 x double> %foldExtExtBinop1443, i64 0
  %foldExtExtBinop1445 = fmul <2 x double> %i.vh, %foldExtExtBinop1441
  %i.azk = extractelement <2 x double> %foldExtExtBinop1445, i64 0
  %i.azl = fmul double %i.xh, %i.azk
  %i.azm = call double @llvm.fmuladd.f64(double %i.azj, double %i.xh, double %i.azl)
  %i.azn = call double @llvm.fmuladd.f64(double %i.atz, double %i.aze, double %i.azm)
  %i.azo = load double, ptr %i.ry, align 16, !tbaa !31 ; 2 uses
  %i.azp = call double @llvm.fmuladd.f64(double %i.azo, double %i.azi, double %i.azn)
  %i.azq = load double, ptr %i.rz, align 8, !tbaa !31 ; 2 uses
  %i.azr = call double @llvm.fmuladd.f64(double %i.asi, double %i.azf, double %i.ayr)
  %i.azs = call double @llvm.fmuladd.f64(double %i.azq, double %i.azr, double %i.azp)
  %i.azt = load double, ptr %i.sa, align 16, !tbaa !31
  %i.azu = load double, ptr %i.sb, align 8, !tbaa !31
  %i.azv = call double @llvm.fmuladd.f64(double %i.asj, double %i.azu, double %i.azt)
  %i.azw = call double @llvm.fmuladd.f64(double %i.azv, double %i.ayr, double %i.azs)
  %i.azx = fmul double %i.xe, %i.ayi
  %i.azy = fmul double %i.vi, %i.ayy
  %i.azz = fmul double %i.xh, %i.azy
  %i.baa = call double @llvm.fmuladd.f64(double %i.azx, double %i.xh, double %i.azz)
  %i.bab = call double @llvm.fmuladd.f64(double %i.auo, double %i.aze, double %i.baa)
  %i.bac = call double @llvm.fmuladd.f64(double %i.ask, double %i.ayi, double %i.ayr)
  %i.bad = call double @llvm.fmuladd.f64(double %i.azo, double %i.bac, double %i.bab)
  %i.bae = call double @llvm.fmuladd.f64(double %i.azq, double %i.azi, double %i.bad)
  %i.baf = load double, ptr %i.sc, align 16, !tbaa !31
  %i.bag = load double, ptr %i.sd, align 8, !tbaa !31
  %i.bah = call double @llvm.fmuladd.f64(double %i.asj, double %i.bag, double %i.baf)
  %i.bai = call double @llvm.fmuladd.f64(double %i.bah, double %i.ayr, double %i.bae)
  %i.baj = insertelement <2 x double> poison, double %i.azw, i64 0
  %i.bak = shufflevector <2 x double> %i.baj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bal = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.bak, <2 x double> zeroinitializer)
  %i.bam = getelementptr inbounds nuw i8, ptr %.17551226, i64 16
  %i.ban = insertelement <2 x double> poison, double %i.bai, i64 0
  %i.bao = shufflevector <2 x double> %i.ban, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bap = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zu, <2 x double> %i.bao, <2 x double> %i.bal)
  %i.baq = fmul <2 x double> %i.tu, %i.bap        ; 2 uses
  %i.bar = extractelement <2 x double> %i.baq, i64 1
  store double %i.bar, ptr %i.bam, align 8, !tbaa !31
  %i.bas = getelementptr [8 x i8], ptr %.17551226, i64 %i.tq
  %i.bat = getelementptr i8, ptr %i.bas, i64 16
  %i.bau = extractelement <2 x double> %i.baq, i64 0
  store double %i.bau, ptr %i.bat, align 8, !tbaa !31
  %i.bav = getelementptr inbounds [8 x i8], ptr %.17551226, i64 %i.tm
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.2756 = phi ptr [ %i.bav, %bb.ig ], [ null, %bb.if ] ; 2 uses
  %.not831 = icmp eq ptr %.17351231, null
  br i1 %.not831, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.baw = fmul <2 x double> %i.vg, %i.vh
  %i.bax = fneg double %i.vb
  %i.bay = load <2 x double>, ptr %i.a, align 16, !tbaa !31
  %i.baz = load <2 x double>, ptr %i.rp, align 16, !tbaa !31 ; 2 uses
  %i.bba = load double, ptr %i.rr, align 16, !tbaa !31 ; 2 uses
  %i.bbb = insertelement <2 x double> poison, double %i.bax, i64 0
  %i.bbc = shufflevector <2 x double> %i.bbb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bbd = fmul <2 x double> %i.baw, %i.bbc       ; 3 uses
  %i.bbe = shufflevector <2 x double> %i.bbd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bbf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbe, <2 x double> %i.baz, <2 x double> %i.bay) ; 2 uses
  %i.bbg = load <2 x double>, ptr %i.rn, align 16, !tbaa !31
  %i.bbh = shufflevector <2 x double> %i.baz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bbi = insertelement <2 x double> %i.bbh, double %i.bba, i64 0
  %i.bbj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbd, <2 x double> %i.bbi, <2 x double> %i.bbg) ; 2 uses
  %i.bbk = load <2 x double>, ptr %i.ro, align 16, !tbaa !31
  %i.bbl = shufflevector <2 x double> %i.bbd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bbm = insertelement <2 x double> %i.bbh, double %i.bba, i64 1
  %i.bbn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbl, <2 x double> %i.bbm, <2 x double> %i.bbk) ; 2 uses
  %i.bbo = fmul double %i.wk, 2.000000e+00        ; 3 uses
  %i.bbp = fmul double %i.wt, 3.000000e+00        ; 3 uses
  %i.bbq = fneg double %i.xh
  %i.bbr = fmul double %i.xh, %i.bbq              ; 3 uses
  %i.bbs = fmul double %i.xe, %i.xh               ; 6 uses
  %i.bbt = mul nuw nsw i64 %indvars.iv, 3         ; 4 uses
  %i.bbu = add nsw i64 %i.bbt, %i.tr              ; 3 uses
  %i.bbv = fmul <2 x double> %i.vh, splat (double 4.000000e+00) ; 3 uses
  %i.bbw = shufflevector <2 x double> %i.bbf, <2 x double> %i.bbj, <2 x i32> <i32 0, i32 3>
  %i.bbx = fmul <2 x double> %i.vg, %i.bbw        ; 5 uses
  %i.bby = shufflevector <2 x double> %i.vl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bbz = shufflevector <2 x double> %i.bbx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bca = fmul <2 x double> %i.bby, %i.bbz
  %i.bcb = shufflevector <2 x double> %i.bbx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bcc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vl, <2 x double> %i.bcb, <2 x double> %i.bca) ; 3 uses
  %i.bcd = extractelement <2 x double> %i.bcc, i64 0 ; 4 uses
  %i.bce = fmul double %i.bbo, %i.bcd             ; 3 uses
  %i.bcf = fmul double %i.bbp, %i.bcd             ; 2 uses
  %i.bcg = shufflevector <2 x double> %i.bcc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbv, <2 x double> %i.bbx, <2 x double> %i.bcg) ; 2 uses
  %i.bci = load double, ptr %i.ru, align 16, !tbaa !31
  %i.bcj = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.bck = load <2 x double>, ptr %i.rv, align 8, !tbaa !31 ; 2 uses
  %i.bcl = shufflevector <2 x double> %i.bcj, <2 x double> %i.bck, <2 x i32> <i32 1, i32 3>
  %i.bcm = insertelement <2 x double> poison, double %i.bce, i64 0
  %i.bcn = shufflevector <2 x double> %i.bcm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bco = fmul <2 x double> %i.bcl, %i.bcn
  %i.bcp = shufflevector <2 x double> %i.bcj, <2 x double> %i.bck, <2 x i32> <i32 0, i32 2>
  %i.bcq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bcp, <2 x double> %i.bcg, <2 x double> %i.bco) ; 2 uses
  %i.bcr = extractelement <2 x double> %i.bcq, i64 0
  %i.bcs = call double @llvm.fmuladd.f64(double %i.bci, double %i.bcf, double %i.bcr)
  %i.bct = load double, ptr %i.rx, align 8, !tbaa !31
  %i.bcu = extractelement <2 x double> %i.bcq, i64 1
  %i.bcv = call double @llvm.fmuladd.f64(double %i.bct, double %i.bcf, double %i.bcu)
  %i.bcw = fmul double %i.bbr, %i.bcv             ; 2 uses
  %87 = extractelement <2 x double> %i.bbx, i64 0
  %88 = extractelement <2 x double> %i.xj, i64 0  ; 3 uses
  %89 = load double, ptr %i.ry, align 16, !tbaa !31 ; 2 uses
  %i.bcx = extractelement <2 x double> %i.bcc, i64 1 ; 2 uses
  %90 = load double, ptr %i.rz, align 8, !tbaa !31 ; 2 uses
  %i.bcy = extractelement <2 x double> %i.bch, i64 0
  %91 = load double, ptr %i.sa, align 16, !tbaa !31
  %i.bcz = load double, ptr %i.sb, align 8, !tbaa !31
  %92 = fmul <2 x double> %i.vh, %i.xl            ; 3 uses
  %93 = insertelement <2 x double> poison, double %i.bcs, i64 0
  %94 = shufflevector <2 x double> %93, <2 x double> poison, <2 x i32> zeroinitializer
  %95 = fmul <2 x double> %92, %94                ; 2 uses
  %i.bda = extractelement <2 x double> %95, i64 0
  %96 = call double @llvm.fmuladd.f64(double %i.bbs, double %87, double %i.bda)
  %i.bdb = call double @llvm.fmuladd.f64(double %88, double %i.bcw, double %96)
  %97 = call double @llvm.fmuladd.f64(double %89, double %i.bcx, double %i.bdb)
  %i.bdc = call double @llvm.fmuladd.f64(double %90, double %i.bcy, double %97)
  %98 = call double @llvm.fmuladd.f64(double %91, double %i.bcd, double %i.bdc)
  %i.bdd = call double @llvm.fmuladd.f64(double %i.bcz, double %i.bce, double %98)
  %99 = extractelement <2 x double> %i.bbx, i64 1
  %i.bde = extractelement <2 x double> %95, i64 1
  %i.bdf = call double @llvm.fmuladd.f64(double %i.bbs, double %99, double %i.bde)
  %i.bdg = extractelement <2 x double> %i.xj, i64 1 ; 3 uses
  %i.bdh = call double @llvm.fmuladd.f64(double %i.bdg, double %i.bcw, double %i.bdf)
  %i.bdi = extractelement <2 x double> %i.bch, i64 1
  %i.bdj = call double @llvm.fmuladd.f64(double %89, double %i.bdi, double %i.bdh)
  %i.bdk = call double @llvm.fmuladd.f64(double %90, double %i.bcx, double %i.bdj)
  %i.bdl = load double, ptr %i.sc, align 16, !tbaa !31
  %i.bdm = call double @llvm.fmuladd.f64(double %i.bdl, double %i.bcd, double %i.bdk)
  %i.bdn = load double, ptr %i.sd, align 8, !tbaa !31
  %i.bdo = call double @llvm.fmuladd.f64(double %i.bdn, double %i.bce, double %i.bdm)
  %i.bdp = insertelement <2 x double> poison, double %i.bdd, i64 0
  %i.bdq = shufflevector <2 x double> %i.bdp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bdr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.bdq, <2 x double> zeroinitializer)
  %i.bds = getelementptr inbounds nuw [8 x i8], ptr %.17351231, i64 %i.bbt
  %i.bdt = insertelement <2 x double> poison, double %i.bdo, i64 0
  %i.bdu = shufflevector <2 x double> %i.bdt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bdv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zu, <2 x double> %i.bdu, <2 x double> %i.bdr)
  %i.bdw = fmul <2 x double> %i.tu, %i.bdv        ; 2 uses
  %i.bdx = extractelement <2 x double> %i.bdw, i64 1
  store double %i.bdx, ptr %i.bds, align 8, !tbaa !31
  %i.bdy = getelementptr inbounds [8 x i8], ptr %.17351231, i64 %i.bbu
  %i.bdz = extractelement <2 x double> %i.bdw, i64 0
  store double %i.bdz, ptr %i.bdy, align 8, !tbaa !31
  %i.bea = shufflevector <2 x double> %i.bbf, <2 x double> %i.bbn, <2 x i32> <i32 1, i32 2>
  %i.beb = fmul <2 x double> %i.vg, %i.bea        ; 5 uses
  %i.bec = shufflevector <2 x double> %i.vl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bed = shufflevector <2 x double> %i.beb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bee = fmul <2 x double> %i.bec, %i.bed
  %i.bef = shufflevector <2 x double> %i.beb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.beg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vl, <2 x double> %i.bef, <2 x double> %i.bee) ; 3 uses
  %i.beh = extractelement <2 x double> %i.beg, i64 0 ; 4 uses
  %i.bei = fmul double %i.bbo, %i.beh             ; 3 uses
  %i.bej = fmul double %i.bbp, %i.beh             ; 2 uses
  %i.bek = shufflevector <2 x double> %i.beg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bel = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbv, <2 x double> %i.beb, <2 x double> %i.bek) ; 2 uses
  %i.bem = load double, ptr %i.ru, align 16, !tbaa !31
  %i.ben = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.beo = load <2 x double>, ptr %i.rv, align 8, !tbaa !31 ; 2 uses
  %i.bep = shufflevector <2 x double> %i.ben, <2 x double> %i.beo, <2 x i32> <i32 1, i32 3>
  %i.beq = insertelement <2 x double> poison, double %i.bei, i64 0
  %i.ber = shufflevector <2 x double> %i.beq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bes = fmul <2 x double> %i.bep, %i.ber
  %i.bet = shufflevector <2 x double> %i.ben, <2 x double> %i.beo, <2 x i32> <i32 0, i32 2>
  %i.beu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bet, <2 x double> %i.bek, <2 x double> %i.bes) ; 2 uses
  %i.bev = extractelement <2 x double> %i.beu, i64 0
  %i.bew = call double @llvm.fmuladd.f64(double %i.bem, double %i.bej, double %i.bev) ; 2 uses
  %i.bex = load double, ptr %i.rx, align 8, !tbaa !31
  %i.bey = extractelement <2 x double> %i.beu, i64 1
  %i.bez = call double @llvm.fmuladd.f64(double %i.bex, double %i.bej, double %i.bey)
  %i.bfa = fmul double %i.bbr, %i.bez             ; 2 uses
  %100 = extractelement <2 x double> %92, i64 0   ; 2 uses
  %i.bfb = fmul double %100, %i.bew
  %i.bfc = extractelement <2 x double> %i.beb, i64 0
  %i.bfd = call double @llvm.fmuladd.f64(double %i.bbs, double %i.bfc, double %i.bfb)
  %i.bfe = call double @llvm.fmuladd.f64(double %88, double %i.bfa, double %i.bfd)
  %i.bff = load double, ptr %i.ry, align 16, !tbaa !31 ; 2 uses
  %i.bfg = extractelement <2 x double> %i.beg, i64 1 ; 2 uses
  %i.bfh = call double @llvm.fmuladd.f64(double %i.bff, double %i.bfg, double %i.bfe)
  %i.bfi = load double, ptr %i.rz, align 8, !tbaa !31 ; 2 uses
  %i.bfj = extractelement <2 x double> %i.bel, i64 0
  %i.bfk = call double @llvm.fmuladd.f64(double %i.bfi, double %i.bfj, double %i.bfh)
  %i.bfl = load double, ptr %i.sa, align 16, !tbaa !31
  %i.bfm = call double @llvm.fmuladd.f64(double %i.bfl, double %i.beh, double %i.bfk)
  %i.bfn = load double, ptr %i.sb, align 8, !tbaa !31
  %i.bfo = call double @llvm.fmuladd.f64(double %i.bfn, double %i.bei, double %i.bfm)
  %101 = extractelement <2 x double> %92, i64 1   ; 2 uses
  %i.bfp = fmul double %101, %i.bew
  %i.bfq = extractelement <2 x double> %i.beb, i64 1
  %i.bfr = call double @llvm.fmuladd.f64(double %i.bbs, double %i.bfq, double %i.bfp)
  %i.bfs = call double @llvm.fmuladd.f64(double %i.bdg, double %i.bfa, double %i.bfr)
  %i.bft = extractelement <2 x double> %i.bel, i64 1
  %i.bfu = call double @llvm.fmuladd.f64(double %i.bff, double %i.bft, double %i.bfs)
  %i.bfv = call double @llvm.fmuladd.f64(double %i.bfi, double %i.bfg, double %i.bfu)
  %i.bfw = load double, ptr %i.sc, align 16, !tbaa !31
  %i.bfx = call double @llvm.fmuladd.f64(double %i.bfw, double %i.beh, double %i.bfv)
  %i.bfy = load double, ptr %i.sd, align 8, !tbaa !31
  %i.bfz = call double @llvm.fmuladd.f64(double %i.bfy, double %i.bei, double %i.bfx)
  %i.bga = insertelement <2 x double> poison, double %i.bfo, i64 0
  %i.bgb = shufflevector <2 x double> %i.bga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bgc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.bgb, <2 x double> zeroinitializer)
  %i.bgd = getelementptr inbounds nuw [8 x i8], ptr %.17351231, i64 %i.bbt
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 8
  %i.bgf = insertelement <2 x double> poison, double %i.bfz, i64 0
  %i.bgg = shufflevector <2 x double> %i.bgf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bgh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zu, <2 x double> %i.bgg, <2 x double> %i.bgc)
  %i.bgi = fmul <2 x double> %i.tu, %i.bgh        ; 2 uses
  %i.bgj = extractelement <2 x double> %i.bgi, i64 1
  store double %i.bgj, ptr %i.bge, align 8, !tbaa !31
  %i.bgk = getelementptr [8 x i8], ptr %.17351231, i64 %i.bbu
  %i.bgl = getelementptr i8, ptr %i.bgk, i64 8
  %i.bgm = extractelement <2 x double> %i.bgi, i64 0
  store double %i.bgm, ptr %i.bgl, align 8, !tbaa !31
  %i.bgn = shufflevector <2 x double> %i.bbj, <2 x double> %i.bbn, <2 x i32> <i32 0, i32 3>
  %i.bgo = fmul <2 x double> %i.vg, %i.bgn        ; 5 uses
  %i.bgp = shufflevector <2 x double> %i.vl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bgq = shufflevector <2 x double> %i.bgo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bgr = fmul <2 x double> %i.bgp, %i.bgq
  %i.bgs = shufflevector <2 x double> %i.bgo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bgt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vl, <2 x double> %i.bgs, <2 x double> %i.bgr) ; 3 uses
  %i.bgu = extractelement <2 x double> %i.bgt, i64 0 ; 4 uses
  %i.bgv = fmul double %i.bbo, %i.bgu             ; 3 uses
  %i.bgw = fmul double %i.bbp, %i.bgu             ; 2 uses
  %i.bgx = shufflevector <2 x double> %i.bgt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbv, <2 x double> %i.bgo, <2 x double> %i.bgx) ; 2 uses
  %i.bgz = load double, ptr %i.ru, align 16, !tbaa !31
  %i.bha = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.bhb = load <2 x double>, ptr %i.rv, align 8, !tbaa !31 ; 2 uses
  %i.bhc = shufflevector <2 x double> %i.bha, <2 x double> %i.bhb, <2 x i32> <i32 1, i32 3>
  %i.bhd = insertelement <2 x double> poison, double %i.bgv, i64 0
  %i.bhe = shufflevector <2 x double> %i.bhd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhf = fmul <2 x double> %i.bhc, %i.bhe
  %i.bhg = shufflevector <2 x double> %i.bha, <2 x double> %i.bhb, <2 x i32> <i32 0, i32 2>
  %i.bhh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bhg, <2 x double> %i.bgx, <2 x double> %i.bhf) ; 2 uses
  %i.bhi = extractelement <2 x double> %i.bhh, i64 0
  %i.bhj = call double @llvm.fmuladd.f64(double %i.bgz, double %i.bgw, double %i.bhi) ; 2 uses
  %i.bhk = load double, ptr %i.rx, align 8, !tbaa !31
  %i.bhl = extractelement <2 x double> %i.bhh, i64 1
  %i.bhm = call double @llvm.fmuladd.f64(double %i.bhk, double %i.bgw, double %i.bhl)
  %i.bhn = fmul double %i.bbr, %i.bhm             ; 2 uses
  %i.bho = fmul double %100, %i.bhj
  %i.bhp = extractelement <2 x double> %i.bgo, i64 0
  %i.bhq = call double @llvm.fmuladd.f64(double %i.bbs, double %i.bhp, double %i.bho)
  %i.bhr = call double @llvm.fmuladd.f64(double %88, double %i.bhn, double %i.bhq)
  %i.bhs = load double, ptr %i.ry, align 16, !tbaa !31 ; 2 uses
  %i.bht = extractelement <2 x double> %i.bgt, i64 1 ; 2 uses
  %i.bhu = call double @llvm.fmuladd.f64(double %i.bhs, double %i.bht, double %i.bhr)
  %i.bhv = load double, ptr %i.rz, align 8, !tbaa !31 ; 2 uses
  %i.bhw = extractelement <2 x double> %i.bgy, i64 0
  %i.bhx = call double @llvm.fmuladd.f64(double %i.bhv, double %i.bhw, double %i.bhu)
  %i.bhy = load double, ptr %i.sa, align 16, !tbaa !31
  %i.bhz = call double @llvm.fmuladd.f64(double %i.bhy, double %i.bgu, double %i.bhx)
  %i.bia = load double, ptr %i.sb, align 8, !tbaa !31
  %i.bib = call double @llvm.fmuladd.f64(double %i.bia, double %i.bgv, double %i.bhz)
  %i.bic = fmul double %101, %i.bhj
  %i.bid = extractelement <2 x double> %i.bgo, i64 1
  %i.bie = call double @llvm.fmuladd.f64(double %i.bbs, double %i.bid, double %i.bic)
  %i.bif = call double @llvm.fmuladd.f64(double %i.bdg, double %i.bhn, double %i.bie)
  %i.big = extractelement <2 x double> %i.bgy, i64 1
  %i.bih = call double @llvm.fmuladd.f64(double %i.bhs, double %i.big, double %i.bif)
  %i.bii = call double @llvm.fmuladd.f64(double %i.bhv, double %i.bht, double %i.bih)
  %i.bij = load double, ptr %i.sc, align 16, !tbaa !31
  %i.bik = call double @llvm.fmuladd.f64(double %i.bij, double %i.bgu, double %i.bii)
  %i.bil = load double, ptr %i.sd, align 8, !tbaa !31
  %i.bim = call double @llvm.fmuladd.f64(double %i.bil, double %i.bgv, double %i.bik)
  %i.bin = insertelement <2 x double> poison, double %i.bib, i64 0
  %i.bio = shufflevector <2 x double> %i.bin, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.bio, <2 x double> zeroinitializer)
  %i.biq = getelementptr inbounds nuw [8 x i8], ptr %.17351231, i64 %i.bbt
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 16
  %i.bis = insertelement <2 x double> poison, double %i.bim, i64 0
  %i.bit = shufflevector <2 x double> %i.bis, <2 x double> poison, <2 x i32> zeroinitializer
  %i.biu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zu, <2 x double> %i.bit, <2 x double> %i.bip)
  %i.biv = fmul <2 x double> %i.tu, %i.biu        ; 2 uses
  %i.biw = extractelement <2 x double> %i.biv, i64 1
  store double %i.biw, ptr %i.bir, align 8, !tbaa !31
  %i.bix = getelementptr [8 x i8], ptr %.17351231, i64 %i.bbu
  %i.biy = getelementptr i8, ptr %i.bix, i64 16
  %i.biz = extractelement <2 x double> %i.biv, i64 0
  store double %i.biz, ptr %i.biy, align 8, !tbaa !31
  %i.bja = getelementptr inbounds [8 x i8], ptr %.17351231, i64 %i.to
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ih, %bb.ii, %bb.hk
  %.3757 = phi ptr [ %.17551226, %bb.hk ], [ %.2756, %bb.ii ], [ %.2756, %bb.ih ]
  %.3753 = phi ptr [ %.17511227, %bb.hk ], [ %.2752, %bb.ii ], [ %.2752, %bb.ih ]
  %.3749 = phi ptr [ %.17471228, %bb.hk ], [ %.2748, %bb.ii ], [ %.2748, %bb.ih ]
  %.3745 = phi ptr [ %.17431229, %bb.hk ], [ %.2744, %bb.ii ], [ %.2744, %bb.ih ]
  %.3741 = phi ptr [ %.17391230, %bb.hk ], [ %.2740, %bb.ii ], [ %.2740, %bb.ih ]
  %.3737 = phi ptr [ %.17351231, %bb.hk ], [ %i.bja, %bb.ii ], [ null, %bb.ih ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.hk, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.ij, %bb.hj
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.af, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ik unwind label %bb.hq

bb.ik:                                            ; preds = %._crit_edge
  %i.bjb = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.il unwind label %bb.in

bb.il:                                            ; preds = %bb.ik
  br i1 %i.bjb, label %bb.im, label %bb.io

bb.im:                                            ; preds = %bb.il
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.io unwind label %bb.in

bb.in:                                            ; preds = %bb.jc, %bb.ja, %bb.iz, %bb.ix, %bb.iw, %bb.iu, %bb.it, %bb.ir, %bb.iq, %bb.io, %bb.im, %bb.ik
  %i.bjc = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.io:                                            ; preds = %bb.im, %bb.il
  %i.bjd = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ip unwind label %bb.in

bb.ip:                                            ; preds = %bb.io
  br i1 %i.bjd, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ir unwind label %bb.in

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %i.bje = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.is unwind label %bb.in

bb.is:                                            ; preds = %bb.ir
  br i1 %i.bje, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.iu unwind label %bb.in

bb.iu:                                            ; preds = %bb.it, %bb.is
  %i.bjf = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.iv unwind label %bb.in

bb.iv:                                            ; preds = %bb.iu
  br i1 %i.bjf, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ix unwind label %bb.in

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.bjg = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.iy unwind label %bb.in

bb.iy:                                            ; preds = %bb.ix
  br i1 %i.bjg, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ja unwind label %bb.in

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.bjh = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.jb unwind label %bb.in

bb.jb:                                            ; preds = %bb.ja
  br i1 %i.bjh, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.jd unwind label %bb.in

bb.jd:                                            ; preds = %bb.jb, %bb.jc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  ret void

bb.je:                                            ; preds = %bb.hq, %bb.in, %bb.hp, %bb.ho
  %.pn832.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yo, %bb.ho ], [ %i.yp, %bb.hp ], [ %i.yq, %bb.hq ], [ %i.bjc, %bb.in ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #20
  br label %.body1044

.body1044:                                        ; preds = %bb.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037, %bb.je
  %.pn832.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn832.pn.pn.pn.pn.pn.pn, %bb.je ], [ %i.yn, %bb.hn ], [ %i.qk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  br label %bb.jf

bb.jf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1025, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1031, %.body1044, %bb.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011, %.body1020, %bb.gj, %bb.fh
  %.pn842.pn.pn = phi { ptr, i32 } [ %.pn806, %bb.gj ], [ %i.lj, %bb.ej ], [ %i.nf, %bb.fh ], [ %.pn842, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011 ], [ %.pn803.pn, %.body1020 ], [ %.pn832.pn.pn.pn.pn.pn.pn.pn, %.body1044 ], [ %.pn819, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1025 ], [ %.pn816, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1031 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #20
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.ei
  %.pn842.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn, %bb.jf ], [ %i.li, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.eb
  %.pn842.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn.pn, %bb.jg ], [ %i.ks, %bb.eb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #20
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.ea
  %.pn842.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn842.pn.pn.pn.pn, %bb.jh ], [ %i.kr, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #20
  br label %.body999

.body999:                                         ; preds = %bb.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i992, %bb.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004
  %.pn849.pn = phi { ptr, i32 } [ %.pn849, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004 ], [ %.pn842.pn.pn.pn.pn.pn, %bb.ji ], [ %i.jw, %bb.ds ], [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i992 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #20
  br label %bb.jj

bb.jj:                                            ; preds = %.body999, %bb.dr
  %.pn849.pn.pn = phi { ptr, i32 } [ %.pn849.pn, %.body999 ], [ %i.jv, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #20
  br label %bb.jk
end_hunk_1
