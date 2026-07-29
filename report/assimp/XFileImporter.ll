inline.NumInlined: 969
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.kd = shufflevector <4 x float> %i.jz, <4 x float> %i.kc, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.ke = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kg = fdiv <4 x float> %i.kd, %i.kf
  %i.kh = fmul <4 x float> %i.kd, %i.kf
  %i.ki = shufflevector <4 x float> %i.kg, <4 x float> %i.kh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.x, %bb.z, %bb.ab, %bb.ac
  %i.kj = phi <4 x float> [ %i.ia, %bb.x ], [ %i.it, %bb.z ], [ %i.jo, %bb.ab ], [ %i.ki, %bb.ac ]
  %i.kk = load ptr, ptr %i.bo, align 8
  %i.kl = getelementptr inbounds nuw [32 x i8], ptr %i.kk, i64 %i.fo
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store <4 x float> %i.kj, ptr %i.km, align 8
  %i.kn = add i32 %.0134296, 1                    ; 2 uses
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %i.kp = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.kq = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = sdiv exact i64 %i.kt, 72
  %i.kv = icmp ugt i64 %i.ku, %i.ko
  br i1 %i.kv, label %.lr.ph, label %._crit_edge, !llvm.loop !19

bb.ad:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = load ptr, ptr %i.kw, align 8
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = sdiv exact i64 %i.lc, 24                ; 2 uses
  %i.le = trunc i64 %i.ld to i32                  ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bn, i64 1028 ; 2 uses
  store i32 %i.le, ptr %i.lf, align 4
  %.not146 = icmp eq i32 %i.le, 0
  br i1 %.not146, label %.loopexit281, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lg = and i64 %i.ld, 4294967295               ; 2 uses
  %i.lh = mul nuw nsw i64 %i.lg, 24
  %i.li = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lh) #21
          to label %bb.af unwind label %bb.w      ; 3 uses

bb.af:                                            ; preds = %bb.ae
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.li, i64 %i.lg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %i.lk = phi ptr [ %i.li, %bb.af ], [ %i.lm, %bb.ag ] ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ll, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 24 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.lj
  br i1 %i.ln, label %.lr.ph299.preheader, label %bb.ag

.lr.ph299.preheader:                              ; preds = %bb.ag
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1032 ; 3 uses
  store ptr %i.li, ptr %i.lo, align 8
  br label %.lr.ph299

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %.lr.ph299
  %indvars.iv = phi i64 [ 0, %.lr.ph299.preheader ], [ %indvars.iv.next, %.lr.ph299 ] ; 4 uses
  %i.lp = load ptr, ptr %i.kw, align 8
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %indvars.iv ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.sroa.0.0.copyload = load <3 x float>, ptr %i.lr, align 8
  %i.ls = load double, ptr %i.lq, align 8
  %i.lt = load ptr, ptr %i.lo, align 8
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %i.lt, i64 %indvars.iv
  store double %i.ls, ptr %i.lu, align 8
  %i.lv = load ptr, ptr %i.lo, align 8
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %indvars.iv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store <3 x float> %.sroa.0.0.copyload, ptr %i.lx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ly = load i32, ptr %i.lf, align 4
  %i.lz = zext i32 %i.ly to i64
  %i.ma = icmp samesign ult i64 %indvars.iv.next, %i.lz
  br i1 %i.ma, label %.lr.ph299, label %.loopexit281, !llvm.loop !20

.loopexit281:                                     ; preds = %.lr.ph299, %bb.ad
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bm, i64 56 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = load ptr, ptr %i.mb, align 8
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = ashr exact i64 %i.mh, 5                 ; 3 uses
  %i.mj = trunc i64 %i.mi to i32                  ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bn, i64 1040 ; 2 uses
  store i32 %i.mj, ptr %i.mk, align 8
  %.not147 = icmp eq i32 %i.mj, 0
  br i1 %.not147, label %.loopexit280, label %bb.ah

bb.ah:                                            ; preds = %.loopexit281
  %i.ml = and i64 %i.mi, 4294967295               ; 3 uses
  %i.mm = shl nuw nsw i64 %i.ml, 5
  %i.mn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mm) #21
          to label %bb.ai unwind label %bb.w      ; 4 uses

bb.ai:                                            ; preds = %bb.ah
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr %i.mn, i64 %i.ml
  %i.mp = add nuw nsw i64 %i.ml, 576460752303423487
  %i.mq = and i64 %i.mp, 576460752303423487
  %xtraiter410 = and i64 %i.mi, 7                 ; 2 uses
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.prol.loopexit408, label %.prol.preheader407

.prol.preheader407:                               ; preds = %bb.ai, %.prol.preheader407
  %i.mr = phi ptr [ %i.mu, %.prol.preheader407 ], [ %i.mn, %bb.ai ] ; 4 uses
  %prol.iter412 = phi i64 [ %prol.iter412.next, %.prol.preheader407 ], [ 0, %bb.ai ]
  store double 0.000000e+00, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ms, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store i32 1, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32 ; 2 uses
  %prol.iter412.next = add i64 %prol.iter412, 1   ; 2 uses
  %prol.iter412.cmp.not = icmp eq i64 %prol.iter412.next, %xtraiter410
  br i1 %prol.iter412.cmp.not, label %.prol.loopexit408, label %.prol.preheader407, !llvm.loop !21

.prol.loopexit408:                                ; preds = %.prol.preheader407, %bb.ai
  %.unr413 = phi ptr [ %i.mn, %bb.ai ], [ %i.mu, %.prol.preheader407 ]
  %i.mv = icmp samesign ult i64 %i.mq, 7
  br i1 %i.mv, label %.lr.ph302.preheader, label %.new409

.new409:                                          ; preds = %.prol.loopexit408, %.new409
  %i.mw = phi ptr [ %i.nu, %.new409 ], [ %.unr413, %.prol.loopexit408 ] ; 25 uses
  store double 0.000000e+00, ptr %i.mw, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store i32 1, ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  store double 0.000000e+00, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 56
  store i32 1, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  store double 0.000000e+00, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nd, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 88
  store i32 1, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mw, i64 96
  store double 0.000000e+00, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mw, i64 120
  store i32 1, ptr %i.nh, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 128
  store double 0.000000e+00, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mw, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nj, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mw, i64 152
  store i32 1, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mw, i64 160
  store double 0.000000e+00, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mw, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nm, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mw, i64 184
  store i32 1, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.mw, i64 192
  store double 0.000000e+00, ptr %i.no, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.mw, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.np, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mw, i64 216
  store i32 1, ptr %i.nq, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mw, i64 224
  store double 0.000000e+00, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mw, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mw, i64 248
  store i32 1, ptr %i.nt, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mw, i64 256 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.mo
  br i1 %i.nv, label %.lr.ph302.preheader, label %.new409

.lr.ph302.preheader:                              ; preds = %.new409, %.prol.loopexit408
  store ptr %i.mn, ptr %i.bo, align 8
  br label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162
  %indvars.iv336 = phi i64 [ 0, %.lr.ph302.preheader ], [ %indvars.iv.next337, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162 ] ; 5 uses
  %i.nw = load ptr, ptr %i.mb, align 8
  %i.nx = getelementptr inbounds nuw [32 x i8], ptr %i.nw, i64 %indvars.iv336 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  %i.ob = load float, ptr %i.ny, align 4, !noalias !22 ; 3 uses
  %i.oc = fneg float %i.ob                        ; 2 uses
  %i.od = load float, ptr %i.oa, align 4, !noalias !22 ; 5 uses
  %i.oe = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.of = shufflevector <2 x float> %i.oe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.og = insertelement <2 x float> poison, float %i.od, i64 0 ; 2 uses
  %i.oh = fmul float %i.od, %i.oc
  %3 = insertelement <2 x float> poison, float %i.oc, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oi = fmul float %i.od, %i.ob
  %i.oj = load <2 x float>, ptr %i.nz, align 4, !noalias !22 ; 8 uses
  %i.ok = fmul <2 x float> %i.oj, %i.oj           ; 2 uses
  %i.ol = extractelement <2 x float> %i.ok, i64 1
  %5 = extractelement <2 x float> %i.oj, i64 0    ; 4 uses
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %i.ol)
  %i.om = tail call float @llvm.fmuladd.f32(float %6, float -2.000000e+00, float 1.000000e+00) ; 5 uses
  %7 = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.on = fmul <2 x float> %7, %i.of
  %i.oo = insertelement <2 x float> %i.oj, float %i.od, i64 1
  %i.op = insertelement <2 x float> %i.oj, float %i.od, i64 0
  %i.oq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oo, <2 x float> %i.op, <2 x float> %i.on)
  %i.or = fmul <2 x float> %i.oq, splat (float 2.000000e+00) ; 6 uses
  %8 = extractelement <2 x float> %i.oj, i64 1    ; 2 uses
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %8, float %i.oh)
  %i.os = fmul <2 x float> %i.oj, %4
  %i.ot = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ot, <2 x float> %7, <2 x float> %i.os)
  %i.ov = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %9, i64 1
  %i.ow = shufflevector <2 x float> %i.ou, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ox = shufflevector <4 x float> %i.ov, <4 x float> %i.ow, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oy = fmul <4 x float> %i.ox, splat (float 2.000000e+00) ; 8 uses
  %i.oz = tail call float @llvm.fmuladd.f32(float %5, float %8, float %i.oi)
  %i.pa = fmul float %i.oz, 2.000000e+00          ; 4 uses
  %10 = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %10, <2 x float> %i.ok)
  %i.pc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pb, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.pd = load double, ptr %i.nx, align 8
  %i.pe = load ptr, ptr %i.bo, align 8
  %i.pf = getelementptr inbounds nuw [32 x i8], ptr %i.pe, i64 %indvars.iv336
  store double %i.pd, ptr %i.pf, align 8
  %i.pg = extractelement <2 x float> %i.pc, i64 1 ; 5 uses
  %i.ph = fadd float %i.om, %i.pg
  %i.pi = extractelement <2 x float> %i.pc, i64 0 ; 5 uses
  %i.pj = fadd float %i.pi, %i.ph                 ; 2 uses
  %i.pk = fcmp ogt float %i.pj, 0.000000e+00
  br i1 %i.pk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph302
  %i.pl = fadd float %i.pj, 1.000000e+00
  %i.pm = tail call noundef float @sqrtf(float noundef %i.pl) #18
  %i.pn = shufflevector <2 x float> %i.or, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %i.po = insertelement <4 x float> %i.pn, float %i.pm, i64 0
  %i.pp = insertelement <4 x float> %i.po, float %i.pa, i64 1 ; 2 uses
  %i.pq = fmul <4 x float> %i.pp, %i.oy           ; 2 uses
  %i.pr = fsub <4 x float> %i.pp, %i.oy
  %i.ps = shufflevector <4 x float> %i.pq, <4 x float> %i.pr, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.pt = shufflevector <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x float> %i.pq, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %i.pu = fmul <4 x float> %i.ps, %i.pt
  %i.pv = fdiv <4 x float> %i.ps, %i.pt
  %i.pw = shufflevector <4 x float> %i.pu, <4 x float> %i.pv, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.ak:                                            ; preds = %.lr.ph302
  %i.px = insertelement <2 x float> poison, float %i.om, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = fcmp ule <2 x float> %i.py, %i.pc
  %i.qa = bitcast <2 x i1> %i.pz to i2
  %or.cond.i160 = icmp eq i2 %i.qa, 0
  br i1 %or.cond.i160, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.qb = fadd float %i.om, 1.000000e+00
  %i.qc = fsub float %i.qb, %i.pg
  %i.qd = fsub float %i.qc, %i.pi
  %i.qe = tail call noundef float @sqrtf(float noundef %i.qd) #18
  %i.qf = fmul float %i.qe, 2.000000e+00
  %i.qg = extractelement <4 x float> %i.oy, i64 1
  %i.qh = fsub float %i.pa, %i.qg
  %i.qi = insertelement <4 x float> poison, float %i.qh, i64 0
  %i.qj = insertelement <4 x float> %i.qi, float %i.qf, i64 1 ; 2 uses
  %i.qk = shufflevector <2 x float> %i.or, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ql = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.qm = fadd <4 x float> %i.qk, %i.ql
  %i.qn = shufflevector <4 x float> %i.qj, <4 x float> %i.qm, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.qo = shufflevector <4 x float> %i.qj, <4 x float> <float poison, float 2.500000e-01, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1> ; 2 uses
  %i.qp = fdiv <4 x float> %i.qn, %i.qo
  %i.qq = fmul <4 x float> %i.qn, %i.qo
  %i.qr = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.am:                                            ; preds = %bb.ak
  %i.qs = fcmp ogt float %i.pg, %i.pi
  br i1 %i.qs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qt = fadd float %i.pg, 1.000000e+00
  %i.qu = fsub float %i.qt, %i.om
  %i.qv = fsub float %i.qu, %i.pi
  %i.qw = tail call noundef float @sqrtf(float noundef %i.qv) #18
  %i.qx = fmul float %i.qw, 2.000000e+00
  %i.qy = insertelement <2 x float> %i.or, float %i.pa, i64 1
  %i.qz = extractelement <4 x float> %i.oy, i64 2
  %i.ra = extractelement <2 x float> %i.or, i64 1
  %i.rb = fsub float %i.ra, %i.qz
  %i.rc = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.rb, i64 0
  %i.rd = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.re = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 1, i32 poison>
  %i.rf = fadd <4 x float> %i.rd, %i.re
  %i.rg = shufflevector <4 x float> %i.rc, <4 x float> %i.rf, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.rh = insertelement <4 x float> poison, float %i.qx, i64 0
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rj = fdiv <4 x float> %i.rg, %i.ri
  %i.rk = fmul <4 x float> %i.rg, %i.ri
  %i.rl = shufflevector <4 x float> %i.rj, <4 x float> %i.rk, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.ao:                                            ; preds = %bb.am
  %i.rm = fadd float %i.pi, 1.000000e+00
  %i.rn = fsub float %i.rm, %i.om
  %i.ro = fsub float %i.rn, %i.pg
  %i.rp = tail call noundef float @sqrtf(float noundef %i.ro) #18
  %i.rq = fmul float %i.rp, 2.000000e+00
  %i.rr = insertelement <2 x float> %i.or, float %i.pa, i64 0
  %i.rs = extractelement <4 x float> %i.oy, i64 3
  %i.rt = extractelement <2 x float> %i.or, i64 0
  %i.ru = fsub float %i.rt, %i.rs
  %i.rv = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.ru, i64 0
  %i.rw = shufflevector <2 x float> %i.rr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.rx = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.ry = fadd <4 x float> %i.rw, %i.rx
  %i.rz = shufflevector <4 x float> %i.rv, <4 x float> %i.ry, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.sa = insertelement <4 x float> poison, float %i.rq, i64 0
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sc = fdiv <4 x float> %i.rz, %i.sb
  %i.sd = fmul <4 x float> %i.rz, %i.sb
  %i.se = shufflevector <4 x float> %i.sc, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162: ; preds = %bb.aj, %bb.al, %bb.an, %bb.ao
  %i.sf = phi <4 x float> [ %i.pw, %bb.aj ], [ %i.qr, %bb.al ], [ %i.rl, %bb.an ], [ %i.se, %bb.ao ]
  %i.sg = load ptr, ptr %i.bo, align 8
  %i.sh = getelementptr inbounds nuw [32 x i8], ptr %i.sg, i64 %indvars.iv336
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store <4 x float> %i.sf, ptr %i.si, align 8
  %i.sj = load ptr, ptr %i.bo, align 8
  %i.sk = getelementptr inbounds nuw [32 x i8], ptr %i.sj, i64 %indvars.iv336
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 2 uses
  %i.sm = load float, ptr %i.sl, align 8
  %i.sn = fneg float %i.sm
  store float %i.sn, ptr %i.sl, align 8
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %i.so = load i32, ptr %i.mk, align 8
  %i.sp = zext i32 %i.so to i64
  %i.sq = icmp samesign ult i64 %indvars.iv.next337, %i.sp
  br i1 %i.sq, label %.lr.ph302, label %.loopexit280, !llvm.loop !25

.loopexit280:                                     ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162, %.loopexit281
  %i.sr = getelementptr inbounds nuw i8, ptr %i.bm, i64 80 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.bm, i64 88 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = load ptr, ptr %i.sr, align 8
  %i.sv = ptrtoint ptr %i.st to i64
  %i.sw = ptrtoint ptr %i.su to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = sdiv exact i64 %i.sx, 24                ; 2 uses
  %i.sz = trunc i64 %i.sy to i32                  ; 2 uses
  store i32 %i.sz, ptr %i.bp, align 8
  %.not148 = icmp eq i32 %i.sz, 0
  br i1 %.not148, label %.loopexit279, label %bb.ap

bb.ap:                                            ; preds = %.loopexit280
  %i.ta = and i64 %i.sy, 4294967295               ; 2 uses
  %i.tb = mul nuw nsw i64 %i.ta, 24
  %i.tc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tb) #21
          to label %bb.aq unwind label %bb.w      ; 3 uses

bb.aq:                                            ; preds = %bb.ap
  %i.td = getelementptr inbounds nuw [24 x i8], ptr %i.tc, i64 %i.ta
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %i.te = phi ptr [ %i.tc, %bb.aq ], [ %i.tg, %bb.ar ] ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.te, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.tf, align 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 24 ; 2 uses
  %i.th = icmp eq ptr %i.tg, %i.td
  br i1 %i.th, label %.lr.ph305.preheader, label %bb.ar

.lr.ph305.preheader:                              ; preds = %bb.ar
  store ptr %i.tc, ptr %i.bq, align 8
  br label %.lr.ph305

.lr.ph305:                                        ; preds = %.lr.ph305.preheader, %.lr.ph305
  %indvars.iv339 = phi i64 [ 0, %.lr.ph305.preheader ], [ %indvars.iv.next340, %.lr.ph305 ] ; 3 uses
  %i.ti = load ptr, ptr %i.sr, align 8
  %i.tj = getelementptr inbounds nuw [24 x i8], ptr %i.ti, i64 %indvars.iv339
  %i.tk = load ptr, ptr %i.bq, align 8
  %i.tl = getelementptr inbounds nuw [24 x i8], ptr %i.tk, i64 %indvars.iv339
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, ptr noundef nonnull align 8 dereferenceable(24) %i.tj, i64 24, i1 false)
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %i.tm = load i32, ptr %i.bp, align 8
  %i.tn = zext i32 %i.tm to i64
  %i.to = icmp samesign ult i64 %indvars.iv.next340, %i.tn
  br i1 %i.to, label %.lr.ph305, label %.loopexit279, !llvm.loop !26

.loopexit279:                                     ; preds = %.lr.ph305, %.loopexit280
  %i.tp = load ptr, ptr %i.kx, align 8            ; 2 uses
  %i.tq = load ptr, ptr %i.kw, align 8
  %.not153 = icmp eq ptr %i.tp, %i.tq
  br i1 %.not153, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.loopexit279
  %i.tr = getelementptr inbounds i8, ptr %i.tp, i64 -24
  %i.ts = load double, ptr %i.t, align 8          ; 2 uses
  %i.tt = load double, ptr %i.tr, align 8         ; 2 uses
  %i.tu = fcmp olt double %i.ts, %i.tt
  %i.tv = select i1 %i.tu, double %i.tt, double %i.ts
  store double %i.tv, ptr %i.t, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.loopexit279
  %i.tw = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.tx = load ptr, ptr %i.mb, align 8
  %.not154 = icmp eq ptr %i.tw, %i.tx
  br i1 %.not154, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ty = getelementptr inbounds i8, ptr %i.tw, i64 -32
  %i.tz = load double, ptr %i.t, align 8          ; 2 uses
  %i.ua = load double, ptr %i.ty, align 8         ; 2 uses
  %i.ub = fcmp olt double %i.tz, %i.ua
  %i.uc = select i1 %i.ub, double %i.ua, double %i.tz
  store double %i.uc, ptr %i.t, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ud = load ptr, ptr %i.ss, align 8            ; 2 uses
  %i.ue = load ptr, ptr %i.sr, align 8
  %.not155 = icmp eq ptr %i.ud, %i.ue
  br i1 %.not155, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.uf = getelementptr inbounds i8, ptr %i.ud, i64 -24
  %i.ug = load double, ptr %i.t, align 8          ; 2 uses
  %i.uh = load double, ptr %i.uf, align 8         ; 2 uses
  %i.ui = fcmp olt double %i.ug, %i.uh
  %i.uj = select i1 %i.ui, double %i.uh, double %i.ug
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.aw
  %.sink = phi double [ %i.uj, %bb.aw ], [ %i.fl, %._crit_edge ]
  store double %.sink, ptr %i.t, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.av
  %i.uk = add i32 %.0133306, 1                    ; 2 uses
  %i.ul = zext i32 %i.uk to i64                   ; 2 uses
  %i.um = load ptr, ptr %i.p, align 8
  %i.un = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.uo = ptrtoint ptr %i.um to i64
  %i.up = ptrtoint ptr %i.un to i64
  %i.uq = sub i64 %i.uo, %i.up
  %i.ur = ashr exact i64 %i.uq, 3
  %i.us = icmp ugt i64 %i.ur, %i.ul
  br i1 %i.us, label %.lr.ph308, label %.loopexit285, !llvm.loop !27

.loopexit285:                                     ; preds = %bb.ax, %bb.k, %bb.b
  %.sroa.19264.2 = phi ptr [ %.sroa.19264.0309, %bb.b ], [ %.sroa.19264.5, %bb.k ], [ %.sroa.19264.5, %bb.ax ] ; 3 uses
  %.sroa.12259.1 = phi ptr [ %.sroa.12259.0310, %bb.b ], [ %.sroa.12259.2, %bb.k ], [ %.sroa.12259.2, %bb.ax ] ; 3 uses
  %.sroa.0252.2 = phi ptr [ %.sroa.0252.0311, %bb.b ], [ %.sroa.0252.5, %bb.k ], [ %.sroa.0252.5, %bb.ax ] ; 7 uses
  %i.ut = add i32 %.0127312, 1                    ; 2 uses
  %i.uu = zext i32 %i.ut to i64                   ; 2 uses
  %i.uv = load ptr, ptr %i.b, align 8
  %i.uw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = ptrtoint ptr %i.uw to i64
  %i.uz = sub i64 %i.ux, %i.uy
  %i.va = ashr exact i64 %i.uz, 3
  %i.vb = icmp ugt i64 %i.va, %i.uu
  br i1 %i.vb, label %bb.b, label %._crit_edge315, !llvm.loop !28

bb.ay:                                            ; preds = %._crit_edge315
  %i.vc = trunc i64 %i.i to i32
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.vc, ptr %i.vd, align 8
  %i.ve = and i64 %i.h, 34359738360
  %i.vf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ve) #21
          to label %.lr.ph321.preheader unwind label %bb.az

.lr.ph321.preheader:                              ; preds = %bb.ay
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.vf, ptr %i.vg, align 8
  br label %.lr.ph321

bb.az:                                            ; preds = %bb.ay
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph321:                                        ; preds = %.lr.ph321.preheader, %.lr.ph321
  %indvars.iv342 = phi i64 [ 0, %.lr.ph321.preheader ], [ %indvars.iv.next343, %.lr.ph321 ] ; 3 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0252.2, i64 %indvars.iv342
  %i.vj = load ptr, ptr %i.vi, align 8
  %i.vk = load ptr, ptr %i.vg, align 8
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv342
  store ptr %i.vj, ptr %i.vl, align 8
  %indvars.iv.next343 = add i64 %indvars.iv342, 1 ; 2 uses
  %i.vm = and i64 %indvars.iv.next343, 4294967295
  %i.vn = icmp ugt i64 %i.i, %i.vm
  br i1 %i.vn, label %.lr.ph321, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph321, %._crit_edge315
  %.not.i.i.i166 = icmp eq ptr %.sroa.0252.2, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %.loopexit
  %i.vo = ptrtoint ptr %.sroa.19264.2 to i64
  %i.vp = sub i64 %i.vo, %i.g
end_hunk_0
