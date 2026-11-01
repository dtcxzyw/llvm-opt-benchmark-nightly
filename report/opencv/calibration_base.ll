Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d:bb.a
  unreachable

bb.ha:                                            ; preds = %.noexc1043
  %i.qi = landingpad { ptr, i32 }
          cleanup
  %i.qj = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1036

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1036: ; preds = %bb.ha
  %i.qm = load i64, ptr %i.qk, align 8, !tbaa !25
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1037: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1036
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.body1044

bb.hb:                                            ; preds = %.thread1211
  %i.qo = icmp sgt i32 %i.qg, 0
  br i1 %i.qo, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.qp = icmp eq i32 %i.qg, 2
  %.sroa.sel1202.v.sroa.sel.v.sroa.sel.v = select i1 %i.qp, i64 88, i64 84
  %.sroa.sel1202.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %24, i64 %.sroa.sel1202.v.sroa.sel.v.sroa.sel.v
  %i.qq = load i32, ptr %.sroa.sel1202.v.sroa.sel.v.sroa.sel, align 4, !tbaa !41
  br label %bb.he

bb.hd:                                            ; preds = %bb.hb
  %i.qr = icmp eq i32 %i.qg, 0
  %i.qs = zext i1 %i.qr to i32
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.qt = phi i32 [ %i.qq, %bb.hc ], [ %i.qs, %bb.hd ]
  %i.qu = icmp eq i32 %i.qg, 2
  %i.qv = getelementptr inbounds nuw i8, ptr %24, i64 84
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = icmp sgt i32 %i.qg, -1
  %i.qy = zext i1 %i.qx to i32
  %i.qz = select i1 %i.qu, i32 %i.qw, i32 %i.qy
  %.sroa.2.0.insert.ext.i1039 = zext i32 %i.qz to i64
  %.sroa.2.0.insert.shift.i1040 = shl nuw i64 %.sroa.2.0.insert.ext.i1039, 32
  %.sroa.0.0.insert.ext.i1041 = zext i32 %i.qt to i64
  %.sroa.0.0.insert.insert.i1042 = or disjoint i64 %.sroa.2.0.insert.shift.i1040, %.sroa.0.0.insert.ext.i1041
  %i.ra = shl nuw nsw i32 %i.ai, 5
  %i.rb = add nsw i32 %i.ra, -26
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %84, i64 %.sroa.0.0.insert.insert.i1042, i32 noundef %i.rb)
          to label %bb.hf unwind label %bb.hl

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #20
  %i.rc = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.rd = getelementptr inbounds nuw i8, ptr %85, i64 16
  store i64 0, ptr %i.rd, align 8
  store i32 33619968, ptr %85, align 8, !tbaa !50
  store ptr %84, ptr %i.rc, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(24) %85, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.hg unwind label %bb.hm

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #20
  %i.re = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %86, i64 16
  store i64 0, ptr %i.rf, align 8
  store i32 33619968, ptr %86, align 8, !tbaa !50
  store ptr %23, ptr %i.re, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(24) %86, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.hh unwind label %bb.hn

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  %i.rg = getelementptr inbounds nuw i8, ptr %84, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !29
  %i.ri = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !29
  %i.rk = icmp sgt i32 %i.ap, 2
  br i1 %i.rk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.hh
  %i.rl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.rm = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.rp = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.rr = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 10 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 10 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 10 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 10 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 10 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 6 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 7 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 7 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.sd = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.sf = sext i32 %.0729 to i64
  %i.sg = shl nsw i32 %.0729, 1
  %i.sh = sext i32 %i.sg to i64
  %i.si = sext i32 %.0730 to i64
  %i.sj = shl nsw i32 %.0730, 1
  %i.sk = sext i32 %i.sj to i64
  %i.sl = sext i32 %.0731 to i64
  %i.sm = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.sn = shl nsw i32 %.0731, 1
  %i.so = sext i32 %i.sn to i64
  %i.sp = shl nsw i32 %.0732, 1
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ss = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.st = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.su = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.sw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.sx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.sy = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.sz = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ta = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.tb = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.tc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.td = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.te = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.tf = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.th = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ti = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.tj = shl nsw i32 %.0733, 1
  %i.tk = sext i32 %i.tj to i64
  %i.tl = shl nsw i32 %.0728, 1
  %i.tm = sext i32 %i.tl to i64
  %i.tn = sext i32 %.0732 to i64                  ; 3 uses
  %i.to = sext i32 %.0733 to i64                  ; 3 uses
  %i.tp = sext i32 %.0728 to i64
  %wide.trip.count = zext nneg i32 %i.ar to i64
  %i.tq = insertelement <2 x double> %i.kj, double %.0758, i64 1
  %i.tr = insertelement <2 x double> %i.kj, double %.0758, i64 1 ; 3 uses
  %i.ts = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tt = insertelement <2 x double> %i.ts, double %i.ki, i64 1
  %i.tu = insertelement <2 x double> %i.ts, double %.0758, i64 0
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph, %bb.ig
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ig ] ; 4 uses
  %.17351231 = phi ptr [ %.0734, %.lr.ph ], [ %.3737, %bb.ig ] ; 9 uses
  %.17391230 = phi ptr [ %.0738, %.lr.ph ], [ %.3741, %bb.ig ] ; 5 uses
  %.17431229 = phi ptr [ %.0742, %.lr.ph ], [ %.3745, %bb.ig ] ; 7 uses
  %.17471228 = phi ptr [ %.0746, %.lr.ph ], [ %.3749, %bb.ig ] ; 18 uses
  %.17511227 = phi ptr [ %.0750, %.lr.ph ], [ %.3753, %bb.ig ] ; 9 uses
  %.17551226 = phi ptr [ %.0754, %.lr.ph ], [ %.3757, %bb.ig ] ; 9 uses
  %i.tv = getelementptr inbounds nuw [24 x i8], ptr %i.rh, i64 %indvars.iv ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.ty = load double, ptr %i.rn, align 16, !tbaa !31
  %i.tz = load double, ptr %i.ro, align 8, !tbaa !31
  %i.ua = load double, ptr %i.rp, align 16, !tbaa !31
  %i.ub = load double, ptr %i.rq, align 16, !tbaa !31
  %i.uc = load double, ptr %i.tv, align 8, !tbaa !58 ; 3 uses
  %i.ud = load double, ptr %i.tw, align 8, !tbaa !59 ; 3 uses
  %i.ue = load double, ptr %i.tx, align 8, !tbaa !60 ; 3 uses
  %i.uf = load <4 x double>, ptr %i.a, align 16, !tbaa !31 ; 3 uses
  %i.ug = load <2 x double>, ptr %i.rm, align 16, !tbaa !31
  %i.uh = insertelement <2 x double> poison, double %i.ud, i64 0
  %i.ui = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.uj = shufflevector <2 x double> %i.ug, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uk = shufflevector <4 x double> %i.uf, <4 x double> %i.uj, <2 x i32> <i32 1, i32 4>
  %i.ul = fmul <2 x double> %i.ui, %i.uk
  %i.um = shufflevector <4 x double> %i.uf, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.un = insertelement <2 x double> poison, double %i.uc, i64 0
  %i.uo = shufflevector <2 x double> %i.un, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.up = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.um, <2 x double> %i.uo, <2 x double> %i.ul)
  %i.uq = shufflevector <4 x double> %i.uf, <4 x double> %i.uj, <2 x i32> <i32 2, i32 5>
  %i.ur = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.us = shufflevector <2 x double> %i.ur, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ut = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uq, <2 x double> %i.us, <2 x double> %i.up)
  %i.uu = load <2 x double>, ptr %i.c, align 16, !tbaa !31
  %i.uv = fadd <2 x double> %i.uu, %i.ut
  %i.uw = fmul double %i.ud, %i.tz
  %i.ux = call double @llvm.fmuladd.f64(double %i.ty, double %i.uc, double %i.uw)
  %i.uy = call double @llvm.fmuladd.f64(double %i.ua, double %i.ue, double %i.ux)
  %i.uz = fadd double %i.ub, %i.uy                ; 3 uses
  %i.va = fcmp une double %i.uz, 0.000000e+00
  %i.vb = fdiv double 1.000000e+00, %i.uz
  %i.vc = load double, ptr %i.e, align 16, !tbaa !31
  %i.vd = load double, ptr %i.rr, align 8, !tbaa !31
  %i.ve = load double, ptr %i.rs, align 16, !tbaa !31
  %i.vf = select i1 %i.va, double %i.vb, double 1.000000e+00 ; 14 uses
  %i.vg = insertelement <2 x double> poison, double %i.vf, i64 0 ; 2 uses
  %i.vh = shufflevector <2 x double> %i.vg, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.vi = fmul <2 x double> %i.uv, %i.vh          ; 24 uses
  %i.vj = extractelement <2 x double> %i.vi, i64 1 ; 12 uses
  %i.vk = fmul double %i.vj, %i.vj
  %i.vl = extractelement <2 x double> %i.vi, i64 0 ; 4 uses
  %i.vm = fmul <2 x double> %i.vi, splat (double 2.000000e+00) ; 10 uses
  %i.vn = extractelement <2 x double> %i.vm, i64 1 ; 6 uses
  %i.vo = extractelement <2 x double> %i.vm, i64 0 ; 4 uses
  %i.vp = fmul double %i.vj, %i.vo                ; 5 uses
  %i.vq = call double @llvm.fmuladd.f64(double %i.vl, double %i.vl, double %i.vk) ; 16 uses
  %i.vr = fmul double %i.vq, %i.vq                ; 10 uses
  %i.vs = fmul double %i.vq, %i.vr                ; 5 uses
  %i.vt = call double @llvm.fmuladd.f64(double %i.vo, double %i.vl, double %i.vq) ; 3 uses
  %i.vu = call double @llvm.fmuladd.f64(double %i.vn, double %i.vj, double %i.vq) ; 3 uses
  %i.vv = call double @llvm.fmuladd.f64(double %i.vc, double %i.vq, double 1.000000e+00)
  %i.vw = call double @llvm.fmuladd.f64(double %i.vd, double %i.vr, double %i.vv)
  %i.vx = call double @llvm.fmuladd.f64(double %i.ve, double %i.vs, double %i.vw) ; 8 uses
  %i.vy = load double, ptr %i.rt, align 8, !tbaa !31
  %i.vz = call double @llvm.fmuladd.f64(double %i.vy, double %i.vq, double 1.000000e+00)
  %i.wa = load double, ptr %i.ru, align 16, !tbaa !31
  %i.wb = call double @llvm.fmuladd.f64(double %i.wa, double %i.vr, double %i.vz)
  %i.wc = load double, ptr %i.rv, align 8, !tbaa !31
  %i.wd = call double @llvm.fmuladd.f64(double %i.wc, double %i.vs, double %i.wb)
  %i.we = fdiv double 1.000000e+00, %i.wd         ; 27 uses
  %i.wf = load <1 x double>, ptr %i.rw, align 16
  %i.wg = load <1 x double>, ptr %i.rx, align 8
  %i.wh = load <2 x double>, ptr %i.ry, align 16
  %i.wi = load <2 x double>, ptr %i.rz, align 8
  %i.wj = insertelement <2 x double> poison, double %i.vx, i64 0
  %i.wk = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.wl = fmul <2 x double> %i.vi, %i.wk          ; 13 uses
  %i.wm = insertelement <2 x double> poison, double %i.vp, i64 0 ; 2 uses
  %i.wn = insertelement <2 x double> %i.wm, double %i.vu, i64 1
  %i.wo = shufflevector <1 x double> %i.wf, <1 x double> poison, <2 x i32> zeroinitializer
  %i.wp = fmul <2 x double> %i.wn, %i.wo
  %i.wq = insertelement <2 x double> poison, double %i.we, i64 0
  %i.wr = shufflevector <2 x double> %i.wq, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.ws = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wl, <2 x double> %i.wr, <2 x double> %i.wp)
  %i.wt = shufflevector <1 x double> %i.wg, <1 x double> poison, <2 x i32> zeroinitializer
  %i.wu = insertelement <2 x double> poison, double %i.vt, i64 0
  %i.wv = insertelement <2 x double> %i.wu, double %i.vp, i64 1
  %i.ww = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wt, <2 x double> %i.wv, <2 x double> %i.ws)
  %i.wx = load double, ptr %i.sa, align 16, !tbaa !31
  %i.wy = insertelement <2 x double> %i.wh, double %i.wx, i64 1
  %i.wz = insertelement <2 x double> poison, double %i.vq, i64 0 ; 2 uses
  %i.xa = shufflevector <2 x double> %i.wz, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.xb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wy, <2 x double> %i.xa, <2 x double> %i.ww)
  %i.xc = load double, ptr %i.sb, align 8, !tbaa !31
  %i.xd = insertelement <2 x double> %i.wi, double %i.xc, i64 1
  %i.xe = insertelement <2 x double> poison, double %i.vr, i64 0 ; 3 uses
  %i.xf = shufflevector <2 x double> %i.xe, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.xg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xd, <2 x double> %i.xf, <2 x double> %i.xb) ; 5 uses
  %i.xh = load <4 x double>, ptr %31, align 16, !tbaa !31, !noalias !199 ; 3 uses
  %i.xi = shufflevector <4 x double> %i.xh, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.xj = shufflevector <2 x double> %i.xg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xi, <2 x double> %i.xj, <2 x double> zeroinitializer)
  %i.xl = load <2 x double>, ptr %i.l, align 16, !tbaa !31, !noalias !199
  %i.xm = shufflevector <2 x double> %i.xl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.xn = shufflevector <4 x double> %i.xm, <4 x double> %i.xh, <2 x i32> <i32 0, i32 5>
  %i.xo = shufflevector <2 x double> %i.xg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.xp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xn, <2 x double> %i.xo, <2 x double> %i.xk)
  %i.xq = shufflevector <4 x double> %i.xm, <4 x double> %i.xh, <2 x i32> <i32 1, i32 6>
  %i.xr = fadd <2 x double> %i.xq, %i.xp          ; 2 uses
  %i.xs = load double, ptr %i.sd, align 16, !tbaa !31, !noalias !199
  %i.xt = extractelement <2 x double> %i.xg, i64 0 ; 4 uses
  %i.xu = call double @llvm.fmuladd.f64(double %i.xs, double %i.xt, double 0.000000e+00)
  %i.xv = load double, ptr %i.se, align 8, !tbaa !31, !noalias !199
  %i.xw = extractelement <2 x double> %i.xg, i64 1 ; 4 uses
  %i.xx = call double @llvm.fmuladd.f64(double %i.xv, double %i.xw, double %i.xu)
  %i.xy = load double, ptr %i.m, align 16, !tbaa !31, !noalias !199
  %i.xz = fadd double %i.xy, %i.xx                ; 7 uses
  %i.ya = fcmp une double %i.xz, 0.000000e+00
  %i.yb = fdiv double 1.000000e+00, %i.xz
  %i.yc = select i1 %i.ya, double %i.yb, double 1.000000e+00 ; 3 uses
  %i.yd = getelementptr inbounds nuw [16 x i8], ptr %i.rj, i64 %indvars.iv
  %i.ye = insertelement <2 x double> poison, double %i.yc, i64 0
  %i.yf = shufflevector <2 x double> %i.ye, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yg = fmul <2 x double> %i.xr, %i.yf          ; 4 uses
  %i.yh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yg, <2 x double> %i.tr, <2 x double> %i.tt)
  %i.yi = shufflevector <2 x double> %i.yh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.yi, ptr %i.yd, align 8, !tbaa !31
  br i1 %op.rdx1417, label %bb.hj, label %bb.ig

bb.hj:                                            ; preds = %bb.hi
  %i.yj = load ptr, ptr %i.oy, align 8, !tbaa !29
  %.not826 = icmp eq ptr %i.yj, null
  br i1 %.not826, label %bb.ho, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.17391230, align 8, !tbaa !31
  %i.yk = getelementptr inbounds [8 x i8], ptr %.17391230, i64 %i.sf
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.yk, align 8, !tbaa !31
  %i.yl = getelementptr inbounds [8 x i8], ptr %.17391230, i64 %i.sh
  br label %bb.ho

bb.hl:                                            ; preds = %bb.gy, %bb.he
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %.body1044

bb.hm:                                            ; preds = %bb.hf
  %i.yn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  br label %bb.jb

bb.hn:                                            ; preds = %bb.hg
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  br label %bb.jb

bb.ho:                                            ; preds = %bb.hk, %bb.hj
  %.2740 = phi ptr [ %i.yl, %bb.hk ], [ %.17391230, %bb.hj ] ; 2 uses
  %.not827 = icmp eq ptr %.17431229, null
  br i1 %.not827, label %.preheader, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  br i1 %i.ad, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  store double 0.000000e+00, ptr %.17431229, align 8, !tbaa !31
  %i.yp = extractelement <2 x double> %i.yg, i64 1
  %i.yq = fmul double %12, %i.yp
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hp
  %i.yr = extractelement <2 x double> %i.yg, i64 1
  store double %i.yr, ptr %.17431229, align 8, !tbaa !31
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.sink = phi double [ 0.000000e+00, %bb.hr ], [ %i.yq, %bb.hq ]
  %i.ys = getelementptr inbounds nuw i8, ptr %.17431229, i64 8
  store double %.sink, ptr %i.ys, align 8, !tbaa !31
  %i.yt = getelementptr inbounds [8 x i8], ptr %.17431229, i64 %i.si ; 2 uses
  store double 0.000000e+00, ptr %i.yt, align 8, !tbaa !31
  %i.yu = getelementptr i8, ptr %i.yt, i64 8
  %i.yv = extractelement <2 x double> %i.yg, i64 0
  store double %i.yv, ptr %i.yu, align 8, !tbaa !31
  %i.yw = getelementptr inbounds [8 x i8], ptr %.17431229, i64 %i.sk
  br label %.preheader

.preheader:                                       ; preds = %bb.hs, %bb.ho
  %.2744 = phi ptr [ %i.yw, %bb.hs ], [ null, %bb.ho ] ; 2 uses
  %i.yx = fneg <2 x double> %i.xr                 ; 4 uses
  %i.yy = load <2 x double>, ptr %31, align 16
  %i.yz = load double, ptr %i.k, align 8, !tbaa !31
  %i.za = load <2 x double>, ptr %i.sc, align 8
  %i.zb = load <2 x double>, ptr %i.sd, align 16, !tbaa !31 ; 2 uses
  %i.zc = shufflevector <2 x double> %i.yx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.zd = fmul <2 x double> %i.zb, %i.yx
  %i.ze = insertelement <2 x double> %i.za, double %i.yz, i64 1
  %i.zf = insertelement <2 x double> poison, double %i.xz, i64 0
  %i.zg = shufflevector <2 x double> %i.zf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ze, <2 x double> %i.zg, <2 x double> %i.zd)
  %i.zi = load double, ptr %i.l, align 16, !tbaa !31
  %i.zj = fmul <2 x double> %i.zb, %i.zc
  %i.zk = insertelement <2 x double> %i.yy, double %i.zi, i64 1
  %i.zl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zk, <2 x double> %i.zg, <2 x double> %i.zj) ; 2 uses
  %i.zm = fmul double %i.yc, %i.yc                ; 5 uses
  %i.zn = extractelement <2 x double> %i.zl, i64 0
  %i.zo = fmul double %i.zm, %i.zn                ; 15 uses
  %i.zp = insertelement <2 x double> poison, double %i.zm, i64 0
  %i.zq = shufflevector <2 x double> %i.zp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zr = fmul <2 x double> %i.zq, %i.zh          ; 19 uses
  %i.zs = extractelement <2 x double> %i.zl, i64 1
  %i.zt = fmul double %i.zm, %i.zs                ; 16 uses
  %.not828 = icmp eq ptr %.17471228, null
  br i1 %.not828, label %bb.ia, label %bb.ht

bb.ht:                                            ; preds = %.preheader
  %i.zu = fmul <2 x double> %i.vi, %i.wr          ; 3 uses
  %i.zv = extractelement <2 x double> %i.zr, i64 1 ; 4 uses
  %i.zw = extractelement <2 x double> %i.zr, i64 0 ; 3 uses
  %i.zx = getelementptr inbounds [8 x i8], ptr %.17471228, i64 %i.sl ; 14 uses
  %i.zy = insertelement <2 x double> %i.wz, double %i.vr, i64 1 ; 5 uses
  %i.zz = shufflevector <2 x double> %i.zu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aaa = fmul <2 x double> %i.zy, %i.zz         ; 3 uses
  %i.aab = extractelement <2 x double> %i.aaa, i64 0
  %i.aac = call double @llvm.fmuladd.f64(double %i.zo, double %i.aab, double 0.000000e+00)
  %i.aad = insertelement <2 x double> %i.zr, double %i.zo, i64 1 ; 6 uses
  %i.aae = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aad, <2 x double> %i.aaa, <2 x double> zeroinitializer)
  %i.aaf = shufflevector <2 x double> %i.zu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aag = fmul <2 x double> %i.zy, %i.aaf        ; 3 uses
  %i.aah = extractelement <2 x double> %i.aag, i64 0
  %i.aai = call double @llvm.fmuladd.f64(double %i.zv, double %i.aah, double %i.aac)
  %i.aaj = fmul double %.0758, %i.aai
  store double %i.aaj, ptr %.17471228, align 8, !tbaa !31
  %i.aak = insertelement <2 x double> %i.zr, double %i.zt, i64 0 ; 6 uses
  %i.aal = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aak, <2 x double> %i.aag, <2 x double> %i.aae) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.kj, %i.aal
  %i.aam = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.aam, ptr %i.zx, align 8, !tbaa !31
  %i.aan = extractelement <2 x double> %i.aaa, i64 1
  %i.aao = call double @llvm.fmuladd.f64(double %i.zw, double %i.aan, double 0.000000e+00)
  %i.aap = extractelement <2 x double> %i.aag, i64 1
  %i.aaq = call double @llvm.fmuladd.f64(double %i.zt, double %i.aap, double %i.aao)
  %i.aar = extractelement <2 x double> %i.aal, i64 1
  %i.aas = fmul double %.0758, %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %.17471228, i64 8
  store double %i.aas, ptr %i.aat, align 8, !tbaa !31
  %i.aau = fmul double %i.kk, %i.aaq
  %i.aav = getelementptr i8, ptr %i.zx, i64 8
  store double %i.aau, ptr %i.aav, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d:bb.a
  %i.anb = shufflevector <4 x double> %i.ana, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.anc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anb, <2 x double> %i.aju, <2 x double> %i.amz)
  %i.and = shufflevector <4 x double> %i.ana, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ane = fmul <2 x double> %i.akx, %i.and
  %i.anf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ane, <2 x double> %i.aju, <2 x double> %i.anc) ; 2 uses
  %i.ang = insertelement <2 x double> %i.zr, double %i.zo, i64 1
  %i.anh = shufflevector <2 x double> %i.anf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ani = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ang, <2 x double> %i.anh, <2 x double> zeroinitializer)
  %i.anj = insertelement <2 x double> %i.zr, double %i.zt, i64 0
  %i.ank = shufflevector <2 x double> %i.anf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.anl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anj, <2 x double> %i.ank, <2 x double> %i.ani)
  %i.anm = fmul <2 x double> %i.tr, %i.anl        ; 2 uses
  %i.ann = extractelement <2 x double> %i.anm, i64 1
  store double %i.ann, ptr %i.ajz, align 8, !tbaa !31
  %i.ano = extractelement <2 x double> %i.anm, i64 0
  store double %i.ano, ptr %i.akb, align 8, !tbaa !31
  %i.anp = load <2 x double>, ptr %i.rs, align 16
  %i.anq = load double, ptr %i.rv, align 8, !tbaa !31
  %i.anr = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.ans = load <2 x double>, ptr %i.rt, align 8, !tbaa !31 ; 2 uses
  %i.ant = shufflevector <2 x double> %i.anr, <2 x double> %i.ans, <2 x i32> <i32 1, i32 3>
  %i.anu = fmul <2 x double> %i.ant, splat (double 2.000000e+00)
  %i.anv = fmul <2 x double> %i.xa, %i.anu
  %i.anw = fmul <2 x double> %i.akj, %i.anv
  %i.anx = shufflevector <2 x double> %i.anr, <2 x double> %i.ans, <2 x i32> <i32 0, i32 2>
  %i.any = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anx, <2 x double> %i.akj, <2 x double> %i.anw)
  %i.anz = insertelement <2 x double> %i.anp, double %i.anq, i64 1
  %i.aoa = fmul <2 x double> %i.anz, splat (double 3.000000e+00)
  %i.aob = fmul <2 x double> %i.xf, %i.aoa
  %i.aoc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aob, <2 x double> %i.akj, <2 x double> %i.any) ; 3 uses
  %i.aod = extractelement <2 x double> %i.aoc, i64 1
  %i.aoe = fmul double %i.ahr, %i.aod             ; 2 uses
  %i.aof = extractelement <2 x double> %i.aoc, i64 0
  %foldExtExtBinop1431 = fmul <2 x double> %i.vi, %i.aoc
  %i.aog = extractelement <2 x double> %foldExtExtBinop1431, i64 0
  %i.aoh = fmul double %i.we, %i.aog
  %i.aoi = call double @llvm.fmuladd.f64(double %i.akn, double %i.we, double %i.aoh)
  %i.aoj = call double @llvm.fmuladd.f64(double %i.aiw, double %i.aoe, double %i.aoi)
  %i.aok = load double, ptr %i.rw, align 16, !tbaa !31 ; 2 uses
  %i.aol = call double @llvm.fmuladd.f64(double %i.aok, double %i.akl, double %i.aoj)
  %i.aom = load double, ptr %i.rx, align 8, !tbaa !31 ; 2 uses
  %i.aon = call double @llvm.fmuladd.f64(double %i.aom, double %i.akp, double %i.aol)
  %i.aoo = load double, ptr %i.ry, align 16, !tbaa !31
  %i.aop = call double @llvm.fmuladd.f64(double %i.aoo, double %i.aki, double %i.aon)
  %i.aoq = load double, ptr %i.rz, align 8, !tbaa !31
  %i.aor = insertelement <2 x double> %i.akd, double %i.aoq, i64 0
  %i.aos = fmul <2 x double> %i.akr, %i.aor
  %i.aot = fmul double %i.vj, %i.aof
  %i.aou = fmul double %i.we, %i.aot
  %i.aov = insertelement <2 x double> poison, double %i.aop, i64 0
  %i.aow = insertelement <2 x double> %i.aov, double %i.aou, i64 1
  %i.aox = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aos, <2 x double> %i.aks, <2 x double> %i.aow) ; 2 uses
  %i.aoy = shufflevector <2 x double> %i.wl, <2 x double> %i.akd, <2 x i32> <i32 1, i32 3>
  %i.aoz = insertelement <2 x double> poison, double %i.aoe, i64 0
  %i.apa = insertelement <2 x double> %i.aoz, double %i.akt, i64 1
  %i.apb = shufflevector <2 x double> %i.aox, <2 x double> %i.akh, <2 x i32> <i32 1, i32 2>
  %i.apc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aoy, <2 x double> %i.apa, <2 x double> %i.apb) ; 2 uses
  %i.apd = extractelement <2 x double> %i.apc, i64 0
  %i.ape = extractelement <2 x double> %i.apc, i64 1
  %i.apf = call double @llvm.fmuladd.f64(double %i.aok, double %i.ape, double %i.apd)
  %i.apg = call double @llvm.fmuladd.f64(double %i.aom, double %i.akl, double %i.apf)
  %i.aph = load double, ptr %i.sa, align 16, !tbaa !31
  %i.api = call double @llvm.fmuladd.f64(double %i.aph, double %i.aki, double %i.apg)
  %i.apj = load double, ptr %i.sb, align 8, !tbaa !31
  %i.apk = fmul double %i.ako, %i.apj
  %i.apl = call double @llvm.fmuladd.f64(double %i.apk, double %i.aki, double %i.api) ; 2 uses
  %i.apm = extractelement <2 x double> %i.aox, i64 0 ; 2 uses
  %i.apn = call double @llvm.fmuladd.f64(double %i.zo, double %i.apm, double 0.000000e+00)
  %i.apo = call double @llvm.fmuladd.f64(double %i.ajm, double %i.apl, double %i.apn)
  %i.app = call double @llvm.fmuladd.f64(double %i.ajn, double %i.apm, double 0.000000e+00)
  %i.apq = call double @llvm.fmuladd.f64(double %i.zt, double %i.apl, double %i.app)
  %i.apr = fmul double %.0758, %i.apo
  %i.aps = getelementptr inbounds nuw i8, ptr %.17511227, i64 16
  store double %i.apr, ptr %i.aps, align 8, !tbaa !31
  %i.apt = fmul double %i.kk, %i.apq
  %i.apu = getelementptr [8 x i8], ptr %.17511227, i64 %i.tn
  %i.apv = getelementptr i8, ptr %i.apu, i64 16
  store double %i.apt, ptr %i.apv, align 8, !tbaa !31
  %i.apw = getelementptr inbounds [8 x i8], ptr %.17511227, i64 %i.sq
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.2752 = phi ptr [ %i.apw, %bb.ib ], [ null, %bb.ia ] ; 2 uses
  %.not830 = icmp eq ptr %.17551226, null
  br i1 %.not830, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.apx = load <2 x double>, ptr %i.sr, align 16
  %i.apy = load <2 x double>, ptr %i.b, align 16, !tbaa !31 ; 2 uses
  %i.apz = load <2 x double>, ptr %i.ss, align 8, !tbaa !31 ; 2 uses
  %i.aqa = shufflevector <2 x double> %i.apy, <2 x double> %i.apz, <2 x i32> <i32 1, i32 3>
  %i.aqb = fmul <2 x double> %i.ui, %i.aqa
  %i.aqc = shufflevector <2 x double> %i.apy, <2 x double> %i.apz, <2 x i32> <i32 0, i32 2>
  %i.aqd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.aqc, <2 x double> %i.aqb)
  %i.aqe = load double, ptr %i.st, align 8, !tbaa !31
  %i.aqf = insertelement <2 x double> %i.apx, double %i.aqe, i64 1
  %i.aqg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.aqf, <2 x double> %i.aqd) ; 2 uses
  %i.aqh = load <2 x double>, ptr %i.sv, align 16
  %i.aqi = load <2 x double>, ptr %i.su, align 16, !tbaa !31 ; 2 uses
  %i.aqj = load <2 x double>, ptr %i.sw, align 8, !tbaa !31 ; 2 uses
  %i.aqk = shufflevector <2 x double> %i.aqi, <2 x double> %i.aqj, <2 x i32> <i32 1, i32 3>
  %i.aql = fmul <2 x double> %i.ui, %i.aqk
  %i.aqm = shufflevector <2 x double> %i.aqi, <2 x double> %i.aqj, <2 x i32> <i32 0, i32 2>
  %i.aqn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.aqm, <2 x double> %i.aql)
  %i.aqo = load double, ptr %i.sx, align 8, !tbaa !31
  %i.aqp = insertelement <2 x double> %i.aqh, double %i.aqo, i64 1
  %i.aqq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.aqp, <2 x double> %i.aqn) ; 2 uses
  %i.aqr = load <2 x double>, ptr %i.sz, align 16
  %i.aqs = load <2 x double>, ptr %i.sy, align 16, !tbaa !31 ; 2 uses
  %i.aqt = load <2 x double>, ptr %i.ta, align 8, !tbaa !31 ; 2 uses
  %i.aqu = shufflevector <2 x double> %i.aqs, <2 x double> %i.aqt, <2 x i32> <i32 1, i32 3>
  %i.aqv = fmul <2 x double> %i.ui, %i.aqu
  %i.aqw = shufflevector <2 x double> %i.aqs, <2 x double> %i.aqt, <2 x i32> <i32 0, i32 2>
  %i.aqx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.aqw, <2 x double> %i.aqv)
  %i.aqy = load double, ptr %i.tb, align 8, !tbaa !31
  %i.aqz = insertelement <2 x double> %i.aqr, double %i.aqy, i64 1
  %i.ara = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.aqz, <2 x double> %i.aqx) ; 2 uses
  %i.arb = load <2 x double>, ptr %i.td, align 16
  %i.arc = load <2 x double>, ptr %i.tc, align 16, !tbaa !31 ; 2 uses
  %i.ard = load <2 x double>, ptr %i.te, align 8, !tbaa !31 ; 2 uses
  %i.are = shufflevector <2 x double> %i.arc, <2 x double> %i.ard, <2 x i32> <i32 1, i32 3>
  %i.arf = fmul <2 x double> %i.ui, %i.are
  %i.arg = shufflevector <2 x double> %i.arc, <2 x double> %i.ard, <2 x i32> <i32 0, i32 2>
  %i.arh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.arg, <2 x double> %i.arf)
  %i.ari = load double, ptr %i.tf, align 8, !tbaa !31
  %i.arj = insertelement <2 x double> %i.arb, double %i.ari, i64 1
  %i.ark = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.arj, <2 x double> %i.arh) ; 2 uses
  %i.arl = load double, ptr %i.tg, align 16, !tbaa !31
  %i.arm = load double, ptr %i.th, align 8, !tbaa !31
  %i.arn = fmul double %i.ud, %i.arm
  %i.aro = call double @llvm.fmuladd.f64(double %i.uc, double %i.arl, double %i.arn)
  %i.arp = load double, ptr %i.ti, align 16, !tbaa !31
  %i.arq = call double @llvm.fmuladd.f64(double %i.ue, double %i.arp, double %i.aro)
  %i.arr = fneg double %i.we
  %i.ars = fmul double %i.we, %i.arr              ; 3 uses
  %i.art = fmul double %i.vq, 2.000000e+00        ; 5 uses
  %i.aru = extractelement <2 x double> %i.aqg, i64 0
  %i.arv = extractelement <2 x double> %i.ark, i64 0 ; 2 uses
  %i.arw = extractelement <2 x double> %i.aqq, i64 1
  %i.arx = load <2 x double>, ptr %i.rs, align 16
  %i.ary = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.arz = load <2 x double>, ptr %i.rt, align 8, !tbaa !31 ; 2 uses
  %i.asa = shufflevector <2 x double> %i.ary, <2 x double> %i.arz, <2 x i32> <i32 1, i32 3>
  %i.asb = fmul <2 x double> %i.asa, splat (double 2.000000e+00)
  %i.asc = shufflevector <2 x double> %i.ary, <2 x double> %i.arz, <2 x i32> <i32 0, i32 2>
  %i.asd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asb, <2 x double> %i.xa, <2 x double> %i.asc)
  %i.ase = load double, ptr %i.rv, align 8, !tbaa !31
  %i.asf = insertelement <2 x double> %i.arx, double %i.ase, i64 1
  %i.asg = fmul <2 x double> %i.asf, splat (double 3.000000e+00)
  %i.ash = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asg, <2 x double> %i.xf, <2 x double> %i.asd) ; 2 uses
  %i.asi = extractelement <2 x double> %i.ash, i64 0
  %i.asj = extractelement <2 x double> %i.ash, i64 1
  %i.ask = fmul double %i.ars, %i.asj
  %i.asl = insertelement <2 x double> %i.vg, double %i.vx, i64 1
  %i.asm = insertelement <2 x double> %i.vi, double %i.we, i64 1
  %i.asn = extractelement <2 x double> %i.wl, i64 0 ; 2 uses
  %i.aso = load double, ptr %i.rw, align 16, !tbaa !31 ; 2 uses
  %i.asp = load double, ptr %i.rx, align 8, !tbaa !31 ; 2 uses
  %i.asq = insertelement <2 x double> poison, double %i.aso, i64 0
  %i.asr = load <2 x double>, ptr %i.ry, align 16, !tbaa !31 ; 2 uses
  %i.ass = insertelement <2 x double> %i.asr, double %i.asp, i64 0
  %i.ast = extractelement <2 x double> %i.wl, i64 1 ; 2 uses
  %i.asu = load double, ptr %i.sa, align 16, !tbaa !31
  %i.asv = load double, ptr %i.sb, align 8, !tbaa !31
  %i.asw = call double @llvm.fmuladd.f64(double %i.art, double %i.asv, double %i.asu)
  %i.asx = extractelement <2 x double> %i.zr, i64 1 ; 2 uses
  %i.asy = extractelement <2 x double> %i.zr, i64 0 ; 2 uses
  %i.asz = getelementptr inbounds [8 x i8], ptr %.17551226, i64 %i.to
  %i.ata = fneg <2 x double> %i.vi                ; 4 uses
  %i.atb = extractelement <2 x double> %i.ata, i64 0
  %i.atc = call double @llvm.fmuladd.f64(double %i.atb, double %i.arv, double %i.aru)
  %i.atd = extractelement <2 x double> %i.ata, i64 1
  %i.ate = call double @llvm.fmuladd.f64(double %i.atd, double %i.arv, double %i.arw)
  %i.atf = fmul double %i.vf, %i.atc              ; 4 uses
  %i.atg = insertelement <2 x double> poison, double %i.ate, i64 0
  %i.ath = insertelement <2 x double> %i.atg, double %i.atf, i64 1
  %i.ati = fmul <2 x double> %i.asl, %i.ath       ; 2 uses
  %i.atj = extractelement <2 x double> %i.ati, i64 0 ; 3 uses
  %i.atk = fmul double %i.vn, %i.atj
  %i.atl = fmul double %i.vj, %i.atf
  %i.atm = insertelement <2 x double> poison, double %i.atl, i64 0
  %i.atn = call double @llvm.fmuladd.f64(double %i.vo, double %i.atf, double %i.atk) ; 6 uses
  %i.ato = fmul double %i.atn, %i.asi             ; 2 uses
  %i.atp = fmul double %i.atn, %i.ask             ; 2 uses
  %i.atq = insertelement <2 x double> %i.asq, double %i.atf, i64 1
  %i.atr = fmul double %i.vx, %i.atj
  %i.ats = fmul double %i.vj, %i.ato
  %i.att = fmul double %i.we, %i.ats
  %i.atu = call double @llvm.fmuladd.f64(double %i.atr, double %i.we, double %i.att)
  %i.atv = call double @llvm.fmuladd.f64(double %i.ast, double %i.atp, double %i.atu)
  %i.atw = shufflevector <2 x double> %i.ark, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.atx = shufflevector <2 x double> %i.aqg, <2 x double> %i.ara, <2 x i32> <i32 1, i32 2>
  %i.aty = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ata, <2 x double> %i.atw, <2 x double> %i.atx) ; 2 uses
  %i.atz = extractelement <2 x double> %i.aty, i64 1
  %i.aua = fmul double %i.vf, %i.atz              ; 3 uses
  %i.aub = fmul double %i.vn, %i.aua
  %i.auc = insertelement <2 x double> %i.aty, double 2.000000e+00, i64 1
  %i.aud = insertelement <2 x double> %i.vm, double %i.vq, i64 1 ; 2 uses
  %i.aue = insertelement <2 x double> %i.xe, double %i.vq, i64 1 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.17551226, i64 8
  %i.aug = fmul <2 x double> %i.vi, <double 1.000000e+00, double 4.000000e+00> ; 3 uses
  %i.auh = fmul double %i.vl, %i.ato
  %i.aui = fmul double %i.we, %i.auh
  %i.auj = insertelement <2 x double> %i.atm, double %i.aui, i64 1
  %i.auk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asm, <2 x double> %i.ati, <2 x double> %i.auj) ; 2 uses
  %i.aul = shufflevector <2 x double> %i.auk, <2 x double> %i.vi, <2 x i32> <i32 0, i32 2>
  %i.aum = fmul <2 x double> %i.aul, <double 2.000000e+00, double 4.000000e+00> ; 4 uses
  %i.aun = extractelement <2 x double> %i.auk, i64 1
  %i.auo = call double @llvm.fmuladd.f64(double %i.asn, double %i.atp, double %i.aun)
  %i.aup = insertelement <2 x double> poison, double %i.auo, i64 0
  %i.auq = insertelement <2 x double> %i.aup, double %i.atn, i64 1
  %i.aur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.atq, <2 x double> %i.aum, <2 x double> %i.auq) ; 2 uses
  %i.aus = shufflevector <2 x double> %i.aur, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aut = insertelement <2 x double> %i.aus, double %i.art, i64 1
  %i.auu = shufflevector <2 x double> %i.aur, <2 x double> %i.asr, <2 x i32> <i32 0, i32 2>
  %i.auv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ass, <2 x double> %i.aut, <2 x double> %i.auu) ; 2 uses
  %i.auw = extractelement <2 x double> %i.auv, i64 0
  %i.aux = extractelement <2 x double> %i.auv, i64 1
  %i.auy = call double @llvm.fmuladd.f64(double %i.aux, double %i.atn, double %i.auw) ; 2 uses
  %i.auz = extractelement <2 x double> %i.aug, i64 1 ; 2 uses
  %i.ava = call double @llvm.fmuladd.f64(double %i.auz, double %i.atj, double %i.atn)
  %i.avb = call double @llvm.fmuladd.f64(double %i.aso, double %i.ava, double %i.atv)
  %i.avc = extractelement <2 x double> %i.aum, i64 0
  %i.avd = call double @llvm.fmuladd.f64(double %i.asp, double %i.avc, double %i.avb)
  %i.ave = call double @llvm.fmuladd.f64(double %i.asw, double %i.atn, double %i.avd) ; 2 uses
  %i.avf = call double @llvm.fmuladd.f64(double %i.zo, double %i.auy, double 0.000000e+00)
  %i.avg = call double @llvm.fmuladd.f64(double %i.asx, double %i.ave, double %i.avf)
  %i.avh = call double @llvm.fmuladd.f64(double %i.asy, double %i.auy, double 0.000000e+00)
  %i.avi = call double @llvm.fmuladd.f64(double %i.zt, double %i.ave, double %i.avh)
  %i.avj = fmul double %.0758, %i.avg
  store double %i.avj, ptr %.17551226, align 8, !tbaa !31
  %i.avk = fmul double %i.kk, %i.avi
  store double %i.avk, ptr %i.asz, align 8, !tbaa !31
  %i.avl = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.avm = insertelement <2 x double> %i.avl, double %i.vf, i64 0
  %i.avn = fmul <2 x double> %i.avm, %i.auc       ; 3 uses
  %i.avo = shufflevector <2 x double> %i.avl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.avp = insertelement <2 x double> %i.avo, double %i.aub, i64 0
  %i.avq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.avn, <2 x double> %i.avp) ; 6 uses
  %i.avr = extractelement <2 x double> %i.avq, i64 0
  %i.avs = load double, ptr %i.ru, align 16, !tbaa !31
  %i.avt = load <2 x double>, ptr %i.rs, align 16, !tbaa !31 ; 2 uses
  %i.avu = insertelement <2 x double> %i.avt, double %i.avs, i64 1
  %i.avv = fmul <2 x double> %i.avu, <double 3.000000e+00, double 2.000000e+00>
  %i.avw = shufflevector <2 x double> %i.avq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.avx = shufflevector <2 x double> %i.avq, <2 x double> %i.avt, <2 x i32> <i32 1, i32 3>
  %i.avy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avv, <2 x double> %i.aue, <2 x double> %i.avx) ; 2 uses
  %foldExtExtBinop1433 = fmul <2 x double> %i.avq, %i.avy
  %i.avz = load double, ptr %i.rv, align 8, !tbaa !31
  %i.awa = fmul double %i.avz, 3.000000e+00
  %i.awb = extractelement <2 x double> %i.avy, i64 1
  %i.awc = call double @llvm.fmuladd.f64(double %i.awa, double %i.vr, double %i.awb)
  %i.awd = fmul double %i.ars, %i.awc
  %i.awe = fmul double %i.avr, %i.awd
  %i.awf = extractelement <2 x double> %i.avn, i64 0
  %i.awg = fmul double %i.vj, %i.awf              ; 2 uses
  %i.awh = load <1 x double>, ptr %i.rw, align 16
  %i.awi = load <1 x double>, ptr %i.rx, align 8
  %i.awj = extractelement <2 x double> %i.aum, i64 1
  %i.awk = shufflevector <2 x double> %i.aum, <2 x double> %i.vi, <2 x i32> <i32 1, i32 2>
  %i.awl = insertelement <2 x double> %i.avn, double %i.aua, i64 1 ; 2 uses
  %i.awm = insertelement <2 x double> %i.avq, double %i.awg, i64 1
  %i.awn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awk, <2 x double> %i.awl, <2 x double> %i.awm)
  %i.awo = insertelement <2 x double> poison, double %i.aua, i64 0
  %i.awp = shufflevector <2 x double> %i.awo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awq = insertelement <2 x double> %i.avw, double %i.awg, i64 0
  %i.awr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aug, <2 x double> %i.awp, <2 x double> %i.awq)
  %i.aws = fmul <2 x double> %i.awn, <double 1.000000e+00, double 2.000000e+00>
  %i.awt = fmul <2 x double> %i.wk, %i.awl
  %i.awu = shufflevector <2 x double> %foldExtExtBinop1433, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awv = fmul <2 x double> %i.vi, %i.awu
  %i.aww = fmul <2 x double> %i.wr, %i.awv
  %i.awx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awt, <2 x double> %i.wr, <2 x double> %i.aww)
  %i.awy = insertelement <2 x double> poison, double %i.awe, i64 0
  %i.awz = shufflevector <2 x double> %i.awy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wl, <2 x double> %i.awz, <2 x double> %i.awx)
  %i.axb = fmul <2 x double> %i.awr, <double 2.000000e+00, double 1.000000e+00>
  %i.axc = shufflevector <1 x double> %i.awh, <1 x double> poison, <2 x i32> zeroinitializer
  %i.axd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axc, <2 x double> %i.axb, <2 x double> %i.axa)
  %i.axe = shufflevector <1 x double> %i.awi, <1 x double> poison, <2 x i32> zeroinitializer
  %i.axf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axe, <2 x double> %i.aws, <2 x double> %i.axd)
  %i.axg = load <4 x double>, ptr %i.ry, align 16, !tbaa !31 ; 2 uses
  %i.axh = insertelement <2 x double> poison, double %i.art, i64 0
  %i.axi = shufflevector <2 x double> %i.axh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axj = shufflevector <4 x double> %i.axg, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.axk = shufflevector <4 x double> %i.axg, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.axl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axi, <2 x double> %i.axj, <2 x double> %i.axk)
  %i.axm = shufflevector <2 x double> %i.avq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axl, <2 x double> %i.axm, <2 x double> %i.axf) ; 2 uses
  %i.axo = insertelement <2 x double> %i.zr, double %i.zo, i64 1
  %i.axp = shufflevector <2 x double> %i.axn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axo, <2 x double> %i.axp, <2 x double> zeroinitializer)
  %i.axr = insertelement <2 x double> %i.zr, double %i.zt, i64 0
  %i.axs = shufflevector <2 x double> %i.axn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.axt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axr, <2 x double> %i.axs, <2 x double> %i.axq)
  %i.axu = fmul <2 x double> %i.tr, %i.axt        ; 2 uses
  %i.axv = extractelement <2 x double> %i.axu, i64 1
  store double %i.axv, ptr %i.auf, align 8, !tbaa !31
  %i.axw = getelementptr [8 x i8], ptr %.17551226, i64 %i.to
  %i.axx = getelementptr i8, ptr %i.axw, i64 8
  %i.axy = extractelement <2 x double> %i.axu, i64 0
  store double %i.axy, ptr %i.axx, align 8, !tbaa !31
  %i.axz = insertelement <2 x double> poison, double %i.arq, i64 0
  %i.aya = shufflevector <2 x double> %i.axz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayb = shufflevector <2 x double> %i.aqq, <2 x double> %i.ara, <2 x i32> <i32 0, i32 3>
  %i.ayc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ata, <2 x double> %i.aya, <2 x double> %i.ayb) ; 2 uses
  %i.ayd = extractelement <2 x double> %i.ayc, i64 1
  %i.aye = fmul double %i.vf, %i.ayd              ; 4 uses
  %i.ayf = fmul double %i.vn, %i.aye
  %i.ayg = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.ayh = insertelement <2 x double> %i.ayg, double %i.vf, i64 0
  %i.ayi = insertelement <2 x double> %i.ayc, double 2.000000e+00, i64 1
  %i.ayj = fmul <2 x double> %i.ayh, %i.ayi       ; 2 uses
  %i.ayk = shufflevector <2 x double> %i.ayg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ayl = insertelement <2 x double> %i.ayk, double %i.ayf, i64 0
  %i.aym = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aud, <2 x double> %i.ayj, <2 x double> %i.ayl) ; 3 uses
  %i.ayn = extractelement <2 x double> %i.aym, i64 0 ; 5 uses
  %i.ayo = load double, ptr %i.ru, align 16, !tbaa !31
  %i.ayp = load <2 x double>, ptr %i.rs, align 16, !tbaa !31 ; 2 uses
  %i.ayq = insertelement <2 x double> %i.ayp, double %i.ayo, i64 1
  %i.ayr = fmul <2 x double> %i.ayq, <double 3.000000e+00, double 2.000000e+00>
  %i.ays = shufflevector <2 x double> %i.aym, <2 x double> %i.ayp, <2 x i32> <i32 1, i32 3>
  %i.ayt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayr, <2 x double> %i.aue, <2 x double> %i.ays) ; 2 uses
  %foldExtExtBinop1435 = fmul <2 x double> %i.aym, %i.ayt ; 2 uses
  %i.ayu = extractelement <2 x double> %foldExtExtBinop1435, i64 0
  %i.ayv = load double, ptr %i.rv, align 8, !tbaa !31
  %i.ayw = fmul double %i.ayv, 3.000000e+00
  %i.ayx = extractelement <2 x double> %i.ayt, i64 1
  %i.ayy = call double @llvm.fmuladd.f64(double %i.ayw, double %i.vr, double %i.ayx)
  %i.ayz = fmul double %i.ars, %i.ayy
  %i.aza = fmul double %i.ayn, %i.ayz             ; 2 uses
  %i.azb = extractelement <2 x double> %i.ayj, i64 0 ; 3 uses
  %i.azc = fmul double %i.vj, %i.azb
  %87 = extractelement <2 x double> %i.aug, i64 0
  %i.azd = call double @llvm.fmuladd.f64(double %87, double %i.aye, double %i.azc)
  %i.aze = fmul double %i.azd, 2.000000e+00       ; 2 uses
  %i.azf = fmul double %i.vx, %i.azb
  %foldExtExtBinop1437 = fmul <2 x double> %i.vi, %foldExtExtBinop1435
  %i.azg = extractelement <2 x double> %foldExtExtBinop1437, i64 0
  %i.azh = fmul double %i.we, %i.azg
  %i.azi = call double @llvm.fmuladd.f64(double %i.azf, double %i.we, double %i.azh)
  %i.azj = call double @llvm.fmuladd.f64(double %i.asn, double %i.aza, double %i.azi)
  %i.azk = load double, ptr %i.rw, align 16, !tbaa !31 ; 2 uses
  %i.azl = call double @llvm.fmuladd.f64(double %i.azk, double %i.aze, double %i.azj)
  %i.azm = load double, ptr %i.rx, align 8, !tbaa !31 ; 2 uses
  %i.azn = call double @llvm.fmuladd.f64(double %i.awj, double %i.azb, double %i.ayn)
  %i.azo = call double @llvm.fmuladd.f64(double %i.azm, double %i.azn, double %i.azl)
  %i.azp = load double, ptr %i.ry, align 16, !tbaa !31
  %i.azq = load double, ptr %i.rz, align 8, !tbaa !31
  %i.azr = call double @llvm.fmuladd.f64(double %i.art, double %i.azq, double %i.azp)
  %i.azs = call double @llvm.fmuladd.f64(double %i.azr, double %i.ayn, double %i.azo) ; 2 uses
  %i.azt = fmul double %i.vx, %i.aye
  %i.azu = fmul double %i.vj, %i.ayu
  %i.azv = fmul double %i.we, %i.azu
  %i.azw = call double @llvm.fmuladd.f64(double %i.azt, double %i.we, double %i.azv)
  %i.azx = call double @llvm.fmuladd.f64(double %i.ast, double %i.aza, double %i.azw)
  %i.azy = call double @llvm.fmuladd.f64(double %i.auz, double %i.aye, double %i.ayn)
  %i.azz = call double @llvm.fmuladd.f64(double %i.azk, double %i.azy, double %i.azx)
  %i.baa = call double @llvm.fmuladd.f64(double %i.azm, double %i.aze, double %i.azz)
  %i.bab = load double, ptr %i.sa, align 16, !tbaa !31
  %i.bac = load double, ptr %i.sb, align 8, !tbaa !31
  %i.bad = call double @llvm.fmuladd.f64(double %i.art, double %i.bac, double %i.bab)
  %i.bae = call double @llvm.fmuladd.f64(double %i.bad, double %i.ayn, double %i.baa) ; 2 uses
  %i.baf = call double @llvm.fmuladd.f64(double %i.zo, double %i.azs, double 0.000000e+00)
  %i.bag = call double @llvm.fmuladd.f64(double %i.asx, double %i.bae, double %i.baf)
  %i.bah = call double @llvm.fmuladd.f64(double %i.asy, double %i.azs, double 0.000000e+00)
  %i.bai = call double @llvm.fmuladd.f64(double %i.zt, double %i.bae, double %i.bah)
  %i.baj = fmul double %.0758, %i.bag
  %i.bak = getelementptr inbounds nuw i8, ptr %.17551226, i64 16
  store double %i.baj, ptr %i.bak, align 8, !tbaa !31
  %i.bal = fmul double %i.kk, %i.bai
  %i.bam = getelementptr [8 x i8], ptr %.17551226, i64 %i.to
  %i.ban = getelementptr i8, ptr %i.bam, i64 16
  store double %i.bal, ptr %i.ban, align 8, !tbaa !31
  %i.bao = getelementptr inbounds [8 x i8], ptr %.17551226, i64 %i.tk
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.2756 = phi ptr [ %i.bao, %bb.id ], [ null, %bb.ic ] ; 2 uses
  %.not831 = icmp eq ptr %.17351231, null
  br i1 %.not831, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bap = fmul <2 x double> %i.vh, %i.vi
  %i.baq = fneg double %i.uz
  %i.bar = load <2 x double>, ptr %i.a, align 16, !tbaa !31
  %i.bas = load <2 x double>, ptr %i.rn, align 16, !tbaa !31 ; 2 uses
  %i.bat = load double, ptr %i.rp, align 16, !tbaa !31 ; 2 uses
  %i.bau = insertelement <2 x double> poison, double %i.baq, i64 0
  %i.bav = shufflevector <2 x double> %i.bau, <2 x double> poison, <2 x i32> zeroinitializer
  %i.baw = fmul <2 x double> %i.bap, %i.bav       ; 3 uses
  %i.bax = shufflevector <2 x double> %i.baw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bay = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bax, <2 x double> %i.bas, <2 x double> %i.bar) ; 2 uses
  %i.baz = load <2 x double>, ptr %i.rl, align 16, !tbaa !31
  %i.bba = shufflevector <2 x double> %i.bas, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bbb = insertelement <2 x double> %i.bba, double %i.bat, i64 0
  %i.bbc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.baw, <2 x double> %i.bbb, <2 x double> %i.baz) ; 2 uses
  %i.bbd = extractelement <2 x double> %i.bbc, i64 0
  %i.bbe = load <2 x double>, ptr %i.rm, align 16, !tbaa !31
  %i.bbf = shufflevector <2 x double> %i.baw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bbg = insertelement <2 x double> %i.bba, double %i.bat, i64 1
  %i.bbh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbf, <2 x double> %i.bbg, <2 x double> %i.bbe) ; 2 uses
  %i.bbi = extractelement <2 x double> %i.bbh, i64 1
  %i.bbj = fmul double %i.vr, 3.000000e+00        ; 3 uses
  %i.bbk = fneg double %i.we
  %i.bbl = fmul double %i.we, %i.bbk              ; 3 uses
  %i.bbm = mul nuw nsw i64 %indvars.iv, 3         ; 4 uses
  %i.bbn = add nsw i64 %i.bbm, %i.tp              ; 3 uses
  %i.bbo = fmul <2 x double> %i.vi, splat (double 4.000000e+00) ; 2 uses
  %i.bbp = shufflevector <2 x double> %i.bay, <2 x double> %i.bbc, <2 x i32> <i32 0, i32 3>
  %i.bbq = fmul <2 x double> %i.vh, %i.bbp        ; 5 uses
  %i.bbr = shufflevector <2 x double> %i.vm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bbs = shufflevector <2 x double> %i.bbq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bbt = fmul <2 x double> %i.bbr, %i.bbs
  %i.bbu = shufflevector <2 x double> %i.bbq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bbv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vm, <2 x double> %i.bbu, <2 x double> %i.bbt) ; 4 uses
  %i.bbw = extractelement <2 x double> %i.bbv, i64 0 ; 3 uses
  %i.bbx = fmul double %i.bbj, %i.bbw
  %i.bby = shufflevector <2 x double> %i.bbv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bbz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbo, <2 x double> %i.bbq, <2 x double> %i.bby) ; 2 uses
  %i.bca = load <2 x double>, ptr %i.rs, align 16
  %i.bcb = load <2 x double>, ptr %i.e, align 16, !tbaa !31 ; 2 uses
  %i.bcc = load <2 x double>, ptr %i.rt, align 8, !tbaa !31 ; 2 uses
  %i.bcd = shufflevector <2 x double> %i.bcb, <2 x double> %i.bcc, <2 x i32> <i32 1, i32 3>
  %i.bce = shufflevector <2 x double> %i.bcb, <2 x double> %i.bcc, <2 x i32> <i32 0, i32 2>
  %i.bcf = load double, ptr %i.rv, align 8, !tbaa !31
  %i.bcg = insertelement <2 x double> %i.bca, double %i.bcf, i64 1
  %i.bch = insertelement <2 x double> poison, double %i.bbx, i64 0
  %i.bci = shufflevector <2 x double> %i.bch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bcj = extractelement <2 x double> %i.bbq, i64 0
  %i.bck = extractelement <2 x double> %i.bbv, i64 1 ; 2 uses
  %i.bcl = extractelement <2 x double> %i.bbz, i64 0
  %i.bcm = fmul double %i.vq, 2.000000e+00        ; 3 uses
  %i.bcn = insertelement <2 x double> poison, double %i.bcm, i64 0
  %i.bco = insertelement <2 x double> %i.bcn, double %i.vx, i64 1
  %i.bcp = insertelement <2 x double> %i.bbv, double %i.we, i64 1
  %i.bcq = fmul <2 x double> %i.bco, %i.bcp       ; 5 uses
  %i.bcr = shufflevector <2 x double> %i.bcq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bcs = fmul <2 x double> %i.bcd, %i.bcr
  %i.bct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bce, <2 x double> %i.bby, <2 x double> %i.bcs)
  %i.bcu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bcg, <2 x double> %i.bci, <2 x double> %i.bct) ; 3 uses
  %i.bcv = extractelement <2 x double> %i.bcu, i64 1
  %i.bcw = fmul double %i.bbl, %i.bcv             ; 2 uses
  %i.bcx = extractelement <2 x double> %i.bcq, i64 1
  %i.bcy = extractelement <2 x double> %i.wl, i64 0
  %i.bcz = load double, ptr %i.rw, align 16, !tbaa !31 ; 2 uses
  %i.bda = load double, ptr %i.rx, align 8, !tbaa !31 ; 2 uses
  %i.bdb = load double, ptr %i.ry, align 16, !tbaa !31
  %i.bdc = load double, ptr %i.rz, align 8, !tbaa !31
  %i.bdd = insertelement <2 x double> %i.bbq, double %i.bdc, i64 0
  %i.bde = extractelement <2 x double> %i.wl, i64 1
  %i.bdf = extractelement <2 x double> %i.bbz, i64 1
  %i.bdg = load double, ptr %i.sa, align 16, !tbaa !31
  %i.bdh = load double, ptr %i.sb, align 8, !tbaa !31
  %i.bdi = extractelement <2 x double> %i.bcq, i64 0
  %i.bdj = getelementptr inbounds nuw [8 x i8], ptr %.17351231, i64 %i.bbm
  %i.bdk = getelementptr inbounds [8 x i8], ptr %.17351231, i64 %i.bbn
  %i.bdl = extractelement <2 x double> %i.bbo, i64 1 ; 2 uses
  %i.bdm = shufflevector <2 x double> %i.bay, <2 x double> %i.bbh, <2 x i32> <i32 1, i32 2>
  %i.bdn = fmul <2 x double> %i.vh, %i.bdm        ; 4 uses
  %i.bdo = fmul <2 x double> %i.vi, %i.wr         ; 4 uses
  %foldExtExtBinop1439 = fmul <2 x double> %i.bdo, %i.bcu
  %i.bdp = extractelement <2 x double> %foldExtExtBinop1439, i64 0
  %i.bdq = call double @llvm.fmuladd.f64(double %i.bcx, double %i.bcj, double %i.bdp)
  %i.bdr = call double @llvm.fmuladd.f64(double %i.bcy, double %i.bcw, double %i.bdq)
  %i.bds = call double @llvm.fmuladd.f64(double %i.bcz, double %i.bck, double %i.bdr)
  %i.bdt = call double @llvm.fmuladd.f64(double %i.bda, double %i.bcl, double %i.bds)
  %i.bdu = call double @llvm.fmuladd.f64(double %i.bdb, double %i.bbw, double %i.bdt)
  %shift = shufflevector <2 x double> %i.bdo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1441 = fmul <2 x double> %shift, %i.bcu
  %i.bdv = insertelement <2 x double> poison, double %i.bdu, i64 0
  %i.bdw = shufflevector <2 x double> %i.bdv, <2 x double> %foldExtExtBinop1441, <2 x i32> <i32 0, i32 2>
  %i.bdx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdd, <2 x double> %i.bcq, <2 x double> %i.bdw) ; 3 uses
  %i.bdy = extractelement <2 x double> %i.bdx, i64 1
  %i.bdz = call double @llvm.fmuladd.f64(double %i.bde, double %i.bcw, double %i.bdy)
  %i.bea = call double @llvm.fmuladd.f64(double %i.bcz, double %i.bdf, double %i.bdz)
  %i.beb = call double @llvm.fmuladd.f64(double %i.bda, double %i.bck, double %i.bea)
  %i.bec = call double @llvm.fmuladd.f64(double %i.bdg, double %i.bbw, double %i.beb)
  %i.bed = call double @llvm.fmuladd.f64(double %i.bdh, double %i.bdi, double %i.bec) ; 2 uses
  %i.bee = extractelement <2 x double> %i.bdx, i64 0
  %i.bef = call double @llvm.fmuladd.f64(double %i.zo, double %i.bee, double 0.000000e+00)
  %i.beg = insertelement <2 x double> %i.bdx, double %i.bed, i64 1
  %i.beh = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bef, i64 1
  %i.bei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zr, <2 x double> %i.beg, <2 x double> %i.beh) ; 2 uses
  %i.bej = extractelement <2 x double> %i.bei, i64 0
  %i.bek = call double @llvm.fmuladd.f64(double %i.zt, double %i.bed, double %i.bej)
  %i.bel = extractelement <2 x double> %i.bei, i64 1
  %i.bem = fmul double %.0758, %i.bel
  store double %i.bem, ptr %i.bdj, align 8, !tbaa !31
  %i.ben = fmul double %i.kk, %i.bek
  store double %i.ben, ptr %i.bdk, align 8, !tbaa !31
  %i.beo = extractelement <2 x double> %i.bdn, i64 1 ; 2 uses
  %i.bep = fmul double %i.vn, %i.beo
  %i.beq = shufflevector <2 x double> %i.vm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ber = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bep, i64 0
  %i.bes = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.beq, <2 x double> %i.bdn, <2 x double> %i.ber) ; 4 uses
  %i.bet = extractelement <2 x double> %i.bes, i64 0 ; 4 uses
  %i.beu = fmul double %i.bcm, %i.bet             ; 3 uses
  %i.bev = fmul double %i.bbj, %i.bet             ; 2 uses
  %i.bew = fmul <2 x double> %i.vi, <double 4.000000e+00, double 2.000000e+00> ; 2 uses
  %i.bex = shufflevector <2 x double> %i.bdn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bew, <2 x double> %i.bex, <2 x double> %i.bes) ; 2 uses
  %i.bez = call double @llvm.fmuladd.f64(double %i.bdl, double %i.beo, double %i.bet)
  %i.bfa = load double, ptr %i.e, align 16, !tbaa !31
  %i.bfb = load double, ptr %i.rr, align 8, !tbaa !31
  %i.bfc = fmul double %i.bfb, %i.beu
  %i.bfd = load double, ptr %i.ru, align 16, !tbaa !31
  %i.bfe = call double @llvm.fmuladd.f64(double %i.bfa, double %i.bet, double %i.bfc)
  %i.bff = load <2 x double>, ptr %i.rs, align 16, !tbaa !31
  %i.bfg = fmul double %i.beu, %i.bfd
  %i.bfh = insertelement <2 x double> poison, double %i.bev, i64 0
  %i.bfi = shufflevector <2 x double> %i.bfh, <2 x double> %i.bes, <2 x i32> <i32 0, i32 2>
  %i.bfj = insertelement <2 x double> poison, double %i.bfe, i64 0
  %i.bfk = insertelement <2 x double> %i.bfj, double %i.bfg, i64 1
  %i.bfl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bff, <2 x double> %i.bfi, <2 x double> %i.bfk) ; 2 uses
  %i.bfm = load double, ptr %i.rv, align 8, !tbaa !31
  %i.bfn = extractelement <2 x double> %i.bfl, i64 1
  %i.bfo = call double @llvm.fmuladd.f64(double %i.bfm, double %i.bev, double %i.bfn)
  %i.bfp = fmul double %i.bbl, %i.bfo
  %i.bfq = load <1 x double>, ptr %i.rw, align 16
  %i.bfr = load <1 x double>, ptr %i.rx, align 8
  %i.bfs = load <2 x double>, ptr %i.ry, align 16
  %i.bft = load <2 x double>, ptr %i.rz, align 8
  %i.bfu = shufflevector <2 x double> %i.bfl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bfv = fmul <2 x double> %i.bdo, %i.bfu
  %i.bfw = shufflevector <2 x double> %i.bcq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bfx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bfw, <2 x double> %i.bdn, <2 x double> %i.bfv)
  %i.bfy = insertelement <2 x double> poison, double %i.bfp, i64 0
  %i.bfz = shufflevector <2 x double> %i.bfy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wl, <2 x double> %i.bfz, <2 x double> %i.bfx)
  %i.bgb = shufflevector <1 x double> %i.bfq, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bgc = shufflevector <2 x double> %i.bey, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bgd = insertelement <2 x double> %i.bgc, double %i.bez, i64 1
  %i.bge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bgb, <2 x double> %i.bgd, <2 x double> %i.bga)
  %i.bgf = shufflevector <1 x double> %i.bfr, <1 x double> poison, <2 x i32> zeroinitializer
end_hunk_1
