Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CSceneManager?download=true
inline.NumInlined: 1664
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5scene12SViewFrustum25recalculateBoundingSphereEv:bb.a
  %i.on = call noundef zeroext i1 @_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4)
  br i1 %i.on, label %bb.v, label %_ZNK5scene12SViewFrustum14getNearRightUpEv.exit240

bb.v:                                             ; preds = %_ZNK5scene12SViewFrustum15getNearLeftDownEv.exit
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.op = load float, ptr %i.oo, align 4, !tbaa !139 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.or = load float, ptr %i.oq, align 4, !tbaa !140 ; 2 uses
  %i.os = load <2 x float>, ptr %4, align 8, !tbaa !19 ; 3 uses
  %i.ot = extractelement <2 x float> %i.os, i64 1
  %i.ou = fmul float %i.or, %i.ot
  %i.ov = extractelement <2 x float> %i.os, i64 0
  %i.ow = call float @llvm.fmuladd.f32(float %i.op, float %i.ov, float %i.ou)
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !141 ; 2 uses
  %i.oz = load float, ptr %i.om, align 8, !tbaa !141 ; 2 uses
  %i.pa = call noundef float @llvm.fmuladd.f32(float %i.oy, float %i.oz, float %i.ow) ; 2 uses
  %i.pb = fcmp une float %i.pa, 0.000000e+00
  br i1 %i.pb, label %bb.w, label %_ZNK5scene12SViewFrustum14getNearRightUpEv.exit240

bb.w:                                             ; preds = %bb.v
  %i.pc = load float, ptr %i.ol, align 8, !tbaa !141 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !148
  %i.pf = load <2 x float>, ptr %3, align 8, !tbaa !19 ; 3 uses
  %i.pg = extractelement <2 x float> %i.pf, i64 1
  %i.ph = fmul float %i.or, %i.pg
  %i.pi = extractelement <2 x float> %i.pf, i64 0
  %i.pj = call float @llvm.fmuladd.f32(float %i.op, float %i.pi, float %i.ph)
  %i.pk = call noundef float @llvm.fmuladd.f32(float %i.oy, float %i.pc, float %i.pj)
  %i.pl = fadd float %i.pe, %i.pk
  %i.pm = fneg float %i.pl
  %i.pn = fdiv float %i.pm, %i.pa                 ; 2 uses
  %i.po = insertelement <2 x float> poison, float %i.pn, i64 0
  %i.pp = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pq = fmul <2 x float> %i.os, %i.pp
  %i.pr = fmul float %i.oz, %i.pn
  %i.ps = fadd <2 x float> %i.pf, %i.pq
  %i.pt = fadd float %i.pc, %i.pr
  br label %_ZNK5scene12SViewFrustum14getNearRightUpEv.exit240

_ZNK5scene12SViewFrustum14getNearRightUpEv.exit240: ; preds = %_ZNK5scene12SViewFrustum15getNearLeftDownEv.exit, %bb.v, %bb.w
  %.sroa.4.0.i234 = phi float [ %i.pt, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %_ZNK5scene12SViewFrustum15getNearLeftDownEv.exit ]
  %.sroa.0.0.i235 = phi <2 x float> [ %i.ps, %bb.w ], [ zeroinitializer, %bb.v ], [ zeroinitializer, %_ZNK5scene12SViewFrustum15getNearLeftDownEv.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.pu = load <2 x float>, ptr %i.fv, align 4, !tbaa !19
  %i.pv = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !19
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.pw, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !19
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.px, align 8, !tbaa !141
  %i.py = call noundef zeroext i1 @_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br i1 %i.py, label %bb.x, label %_ZNK5scene12SViewFrustum13getNearLeftUpEv.exit251

bb.x:                                             ; preds = %_ZNK5scene12SViewFrustum14getNearRightUpEv.exit240
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !139 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !140 ; 2 uses
  %i.qd = load <2 x float>, ptr %2, align 8, !tbaa !19 ; 3 uses
  %i.qe = extractelement <2 x float> %i.qd, i64 1
  %i.qf = fmul float %i.qc, %i.qe
  %i.qg = extractelement <2 x float> %i.qd, i64 0
  %i.qh = call float @llvm.fmuladd.f32(float %i.qa, float %i.qg, float %i.qf)
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !141 ; 2 uses
  %i.qk = load float, ptr %i.px, align 8, !tbaa !141 ; 2 uses
  %i.ql = call noundef float @llvm.fmuladd.f32(float %i.qj, float %i.qk, float %i.qh) ; 2 uses
  %i.qm = fcmp une float %i.ql, 0.000000e+00
  br i1 %i.qm, label %bb.y, label %_ZNK5scene12SViewFrustum13getNearLeftUpEv.exit251

bb.y:                                             ; preds = %bb.x
  %i.qn = load float, ptr %i.pw, align 8, !tbaa !141 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !148
  %i.qq = load <2 x float>, ptr %1, align 8, !tbaa !19 ; 3 uses
  %i.qr = extractelement <2 x float> %i.qq, i64 1
  %i.qs = fmul float %i.qc, %i.qr
  %i.qt = extractelement <2 x float> %i.qq, i64 0
  %i.qu = call float @llvm.fmuladd.f32(float %i.qa, float %i.qt, float %i.qs)
  %i.qv = call noundef float @llvm.fmuladd.f32(float %i.qj, float %i.qn, float %i.qu)
  %i.qw = fadd float %i.qp, %i.qv
  %i.qx = fneg float %i.qw
  %i.qy = fdiv float %i.qx, %i.ql                 ; 2 uses
  %i.qz = insertelement <2 x float> poison, float %i.qy, i64 0
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rb = fmul <2 x float> %i.qd, %i.ra
  %i.rc = fmul float %i.qk, %i.qy
  %i.rd = fadd <2 x float> %i.qq, %i.rb
  %i.re = fadd float %i.qn, %i.rc
  %i.rf = shufflevector <2 x float> %i.rd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %_ZNK5scene12SViewFrustum13getNearLeftUpEv.exit251

_ZNK5scene12SViewFrustum13getNearLeftUpEv.exit251: ; preds = %_ZNK5scene12SViewFrustum14getNearRightUpEv.exit240, %bb.x, %bb.y
  %.sroa.4.0.i245 = phi float [ %i.re, %bb.y ], [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %_ZNK5scene12SViewFrustum14getNearRightUpEv.exit240 ]
  %.sroa.0.0.i246 = phi <4 x float> [ %i.rf, %bb.y ], [ <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, %_ZNK5scene12SViewFrustum14getNearRightUpEv.exit240 ] ; 2 uses
  %i.rg = shufflevector <2 x float> %.sroa.0.0.i235, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rh = shufflevector <2 x float> %.sroa.0.0.i195, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ri = shufflevector <2 x float> %.sroa.0.0.i205, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rj = insertelement <4 x float> poison, float %.sroa.4.0.i172, i64 0
  %i.rk = insertelement <4 x float> %i.rj, float %.sroa.4.0.i183, i64 1
  %i.rl = insertelement <4 x float> %i.rk, float %.sroa.4.0.i194, i64 2
  %i.rm = insertelement <4 x float> %i.rl, float %.sroa.4.0.i204, i64 3
  %i.rn = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.ro = insertelement <4 x float> %i.rn, float %i.ir, i64 1
  %i.rp = insertelement <4 x float> %i.ro, float %i.kd, i64 2
  %i.rq = insertelement <4 x float> %i.rp, float %i.lo, i64 3
  %i.rr = fsub <4 x float> %i.rm, %i.rq           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.rs = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  %i.rt = shufflevector <2 x float> %.sroa.0.0.i173, <2 x float> %.sroa.0.0.i184, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ru = shufflevector <2 x float> %.sroa.0.0.i195, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rv = shufflevector <4 x float> %i.rt, <4 x float> %i.ru, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.rw = shufflevector <2 x float> %.sroa.0.0.i205, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rx = shufflevector <4 x float> %i.rv, <4 x float> %i.rw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ry = shufflevector <2 x float> %i.hf, <2 x float> %i.iq, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.rz = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.sa = shufflevector <4 x float> %i.ry, <4 x float> %i.rz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.sb = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.sc = shufflevector <4 x float> %i.sa, <4 x float> %i.sb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.sd = fsub <4 x float> %i.rx, %i.sc           ; 2 uses
  %i.se = shufflevector <2 x float> %.sroa.0.0.i173, <2 x float> %.sroa.0.0.i184, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> %i.rh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> %i.ri, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.sh = shufflevector <2 x float> %i.hf, <2 x float> %i.iq, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.si = shufflevector <4 x float> %i.sh, <4 x float> %i.rz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> %i.sb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.sk = fsub <4 x float> %i.sg, %i.sj           ; 2 uses
  %i.sl = fmul <4 x float> %i.sd, %i.sd
  %i.sm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sk, <4 x float> %i.sk, <4 x float> %i.sl)
  %i.sn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rr, <4 x float> %i.rr, <4 x float> %i.sm) ; 4 uses
  %i.so = load <2 x float>, ptr %i.fv, align 4, !tbaa !19
  %i.sp = shufflevector <2 x float> %.sroa.0.0.i215, <2 x float> %.sroa.0.0.i225, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> %i.rg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> %.sroa.0.0.i246, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ss = shufflevector <2 x float> %i.my, <2 x float> %i.oj, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.st = shufflevector <2 x float> %i.pu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.su = shufflevector <4 x float> %i.ss, <4 x float> %i.st, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.sv = shufflevector <2 x float> %i.so, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.sw = shufflevector <4 x float> %i.su, <4 x float> %i.sv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.sx = fsub <4 x float> %i.sr, %i.sw           ; 2 uses
  %i.sy = shufflevector <2 x float> %.sroa.0.0.i215, <2 x float> %.sroa.0.0.i225, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.sz = shufflevector <2 x float> %.sroa.0.0.i235, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ta = shufflevector <4 x float> %i.sy, <4 x float> %i.sz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.tb = shufflevector <4 x float> %i.ta, <4 x float> %.sroa.0.0.i246, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.tc = shufflevector <2 x float> %i.my, <2 x float> %i.oj, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.td = shufflevector <4 x float> %i.tc, <4 x float> %i.st, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.te = shufflevector <4 x float> %i.td, <4 x float> %i.sv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.tf = fsub <4 x float> %i.tb, %i.te           ; 2 uses
  %i.tg = fmul <4 x float> %i.tf, %i.tf
  %i.th = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sx, <4 x float> %i.sx, <4 x float> %i.tg)
  %i.ti = insertelement <4 x float> poison, float %.sroa.4.0.i214, i64 0
  %i.tj = insertelement <4 x float> %i.ti, float %.sroa.4.0.i224, i64 1
  %i.tk = insertelement <4 x float> %i.tj, float %.sroa.4.0.i234, i64 2
  %i.tl = insertelement <4 x float> %i.tk, float %.sroa.4.0.i245, i64 3
  %i.tm = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.tn = insertelement <4 x float> %i.tm, float %i.ok, i64 1
  %i.to = insertelement <4 x float> %i.tn, float %i.pv, i64 2
  %i.tp = insertelement <4 x float> %i.to, float %i.rs, i64 3
  %i.tq = fsub <4 x float> %i.tl, %i.tp           ; 2 uses
  %i.tr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tq, <4 x float> %i.tq, <4 x float> %i.th) ; 4 uses
  %i.ts = extractelement <4 x float> %i.sn, i64 0 ; 2 uses
  %i.tt = fcmp ogt float %i.ts, 0.000000e+00
  %.1 = select i1 %i.tt, float %i.ts, float 0.000000e+00 ; 2 uses
  %i.tu = extractelement <4 x float> %i.sn, i64 1 ; 2 uses
  %i.tv = fcmp ogt float %i.tu, %.1
  %.1.1 = select i1 %i.tv, float %i.tu, float %.1 ; 2 uses
  %i.tw = extractelement <4 x float> %i.sn, i64 2 ; 2 uses
  %i.tx = fcmp ogt float %i.tw, %.1.1
  %.1.2 = select i1 %i.tx, float %i.tw, float %.1.1 ; 2 uses
  %i.ty = extractelement <4 x float> %i.sn, i64 3 ; 2 uses
  %i.tz = fcmp ogt float %i.ty, %.1.2
  %.1.3 = select i1 %i.tz, float %i.ty, float %.1.2 ; 2 uses
  %i.ua = extractelement <4 x float> %i.tr, i64 0 ; 2 uses
  %i.ub = fcmp ogt float %i.ua, %.1.3
  %.1.4 = select i1 %i.ub, float %i.ua, float %.1.3 ; 2 uses
  %i.uc = extractelement <4 x float> %i.tr, i64 1 ; 2 uses
  %i.ud = fcmp ogt float %i.uc, %.1.4
  %.1.5 = select i1 %i.ud, float %i.uc, float %.1.4 ; 2 uses
  %i.ue = extractelement <4 x float> %i.tr, i64 2 ; 2 uses
  %i.uf = fcmp ogt float %i.ue, %.1.5
  %.1.6 = select i1 %i.uf, float %i.ue, float %.1.5 ; 2 uses
  %i.ug = extractelement <4 x float> %i.tr, i64 3 ; 2 uses
  %i.uh = fcmp ogt float %i.ug, %.1.6
  %.1.7 = select i1 %i.uh, float %i.ug, float %.1.6
  %i.ui = call float @sqrtf(float noundef %.1.7) #33
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.ui, ptr %i.uj, align 4, !tbaa !143
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %4 = load float, ptr %0, align 4, !tbaa !139    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !19 ; 7 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.c
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = tail call float @llvm.fmuladd.f32(float %4, float %4, float %i.d)
  %5 = extractelement <2 x float> %i.c, i64 1     ; 3 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %5, float %5, float %i.e)
  %i.g = tail call noundef float @sqrtf(float noundef %i.f) #33 ; 2 uses
  %i.h = load float, ptr %1, align 4, !tbaa !139  ; 5 uses
  %i.i = load <2 x float>, ptr %i.b, align 4, !tbaa !19 ; 7 uses
  %foldExtExtBinop54 = fmul <2 x float> %i.c, %i.i
  %i.j = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.k = tail call float @llvm.fmuladd.f32(float %4, float %i.h, float %i.j)
  %i.l = extractelement <2 x float> %i.i, i64 1   ; 3 uses
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %5, float %i.l, float %i.k) ; 3 uses
  %foldExtExtBinop56 = fmul <2 x float> %i.i, %i.i
  %i.n = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.o = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.n)
  %i.p = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.o)
  %i.q = tail call noundef float @sqrtf(float noundef %i.p) #33 ; 2 uses
  %i.r = fneg float %i.m
  %i.s = fmul float %i.m, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.g, float %i.q, float %i.s)
  %i.u = fpext float %i.t to double               ; 2 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp uge double %i.v, 1.000000e-08       ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = extractelement <2 x float> %i.i, i64 0
  %i.y = extractelement <2 x float> %i.c, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = fdiv double 1.000000e+00, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !148 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !148 ; 2 uses
  %i.af = fneg <2 x float> %i.i
  %6 = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %7 = insertelement <2 x float> %6, float %4, i64 1
  %8 = fmul <2 x float> %7, %i.af
  %9 = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x float> %9, float %i.h, i64 1
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %10, <2 x float> %8)
  %12 = fneg float %i.h
  %13 = fmul float %i.y, %12
  %14 = tail call float @llvm.fmuladd.f32(float %4, float %i.x, float %13)
  store <2 x float> %11, ptr %3, align 4, !tbaa !19
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %14, ptr %.sroa.415.0..sroa_idx, align 4, !tbaa !19
  %15 = load <4 x float>, ptr %0, align 4
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %17 = load float, ptr %i.z, align 4, !tbaa !141
  %18 = insertelement <2 x float> poison, float %i.ac, i64 0
  %19 = insertelement <2 x float> %18, float %i.ae, i64 1
  %20 = fneg <2 x float> %19
  %21 = insertelement <2 x float> poison, float %i.m, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = insertelement <2 x float> poison, float %i.ae, i64 0
  %24 = insertelement <2 x float> %23, float %i.ac, i64 1
  %25 = fmul <2 x float> %22, %24
  %26 = insertelement <2 x float> poison, float %i.q, i64 0
  %27 = insertelement <2 x float> %26, float %i.g, i64 1
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %20, <2 x float> %25)
  %i.ag = fpext <2 x float> %28 to <2 x double>
  %i.ah = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.ai, %i.ag
  %i.ak = load <2 x float>, ptr %0, align 4, !tbaa !19
  %i.al = fptrunc <2 x double> %i.aj to <2 x float> ; 3 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.ak, %i.am
  %i.ao = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %i.ao, %i.ap
  %i.ar = insertelement <2 x float> %16, float %17, i64 1
  %i.as = fmul <2 x float> %i.ar, %i.al
  %i.at = fadd <2 x float> %i.an, %i.aq
  %i.au = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.as)
  store <2 x float> %i.at, ptr %2, align 4, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.au, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.w
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17, !range !106, !noundef !107
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !106
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !130
  %i.i = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !131  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.k, ptr %i.a, align 8, !tbaa !170
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !111
  %i.n = load i64, ptr %i.a, align 8, !tbaa !170
  store i64 %i.n, ptr %i.h, align 8, !tbaa !112
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !112
  store i8 %i.p, ptr %i.o, align 1, !tbaa !112
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !131
  %i.s = load ptr, ptr %0, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i8 1, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !17
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !112
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #32
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !174    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !251
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !19
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !173
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #35
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !19
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !144, !alias.scope !252
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !250

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !251
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #32
  br label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !251
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr
end_hunk_0
