Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OptimizeGraph?download=true
inline.NumInlined: 624
inline.NumDeleted: 303
begin_hunk_0_@_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE:bb.a
  %i.jo = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jo, <4 x float> %i.jm)
  store <4 x float> %i.jp, ptr %i.il, align 4
  %i.jq = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = fmul <4 x float> %i.jq, %i.jf
  %i.js = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.js, <4 x float> %i.jr)
  %i.ju = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.ju, <4 x float> %i.jt)
  %i.jw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jw, <4 x float> %i.jv)
  store <4 x float> %i.jx, ptr %i.jb, align 4
  %i.jy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = fmul <4 x float> %i.jy, %i.jf
  %i.ka = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.ka, <4 x float> %i.jz)
  %i.kc = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.kc, <4 x float> %i.kb)
  %i.ke = shufflevector <4 x float> %i.iz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.ke, <4 x float> %i.kd)
  store <4 x float> %i.kf, ptr %i.jc, align 4
  %i.kg = insertelement <4 x float> poison, float %.sroa.31323.0.copyload325, i64 0
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ki = fmul <4 x float> %i.kh, %i.jf
  %i.kj = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.kj, <4 x float> %i.ki)
  %i.kl = insertelement <4 x float> poison, float %.sroa.33.0.copyload327, i64 0
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.km, <4 x float> %i.kk)
  %i.ko = insertelement <4 x float> poison, float %.sroa.35328.0.copyload330, i64 0
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.kp, <4 x float> %i.kn)
  store <4 x float> %i.kq, ptr %i.jd, align 4
  %i.kr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.ao unwind label %bb.am     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store ptr %i.gm, ptr %i.ks, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %7) #23
  %i.kt = load i64, ptr %i.gf, align 8
  %i.ku = add i64 %i.kt, 1
  store i64 %i.ku, ptr %i.gf, align 8
  %i.kv = load ptr, ptr %.sroa.0339.0450, align 8
  %i.kw = load i64, ptr %i.j, align 8
  %i.kx = add i64 %i.kw, -1
  store i64 %i.kx, ptr %i.j, align 8
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0339.0450) #23
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0339.0450, i64 noundef 24) #24
  br label %bb.ap

.critedge131.thread:                              ; preds = %._crit_edge444, %bb.al, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.396 = phi ptr [ %.093451, %bb.ab ], [ %i.gm, %bb.al ], [ %.093451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.093451, %._crit_edge444 ]
  %i.ky = load ptr, ptr %.sroa.0339.0450, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge131.thread
  %.sroa.0339.3 = phi ptr [ %i.ky, %.critedge131.thread ], [ %i.kv, %bb.ao ] ; 2 uses
  %.497 = phi ptr [ %.396, %.critedge131.thread ], [ %.093451, %bb.ao ] ; 7 uses
  %.not429 = icmp eq ptr %.sroa.0339.3, %3
  br i1 %.not429, label %._crit_edge454, label %bb.ab

bb.aq:                                            ; preds = %._crit_edge454
  %i.kz = getelementptr inbounds nuw i8, ptr %.497, i64 4
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 8            ; 2 uses
  %i.lc = add i32 %i.lb, 1
  store i32 %i.lc, ptr %i.la, align 8
  %i.ld = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.kz, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.lb) #23
  store i32 %i.ld, ptr %.497, align 8
  %.sroa.0285.0456 = load ptr, ptr %7, align 8    ; 4 uses
  %.not430457 = icmp eq ptr %.sroa.0285.0456, %7
  br i1 %.not430457, label %._crit_edge462.thread, label %.lr.ph461

._crit_edge462:                                   ; preds = %.lr.ph461
  %.not110 = icmp eq i32 %i.li, 0
  br i1 %.not110, label %._crit_edge462.thread, label %bb.ar

.lr.ph461:                                        ; preds = %bb.aq, %.lr.ph461
  %.sroa.0285.0459 = phi ptr [ %.sroa.0285.0, %.lr.ph461 ], [ %.sroa.0285.0456, %bb.aq ] ; 2 uses
  %.098458 = phi i32 [ %i.li, %.lr.ph461 ], [ 0, %bb.aq ]
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0285.0459, i64 16
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 1120
  %i.lh = load i32, ptr %i.lg, align 8
  %i.li = add i32 %i.lh, %.098458                 ; 4 uses
  %.sroa.0285.0 = load ptr, ptr %.sroa.0285.0459, align 8 ; 2 uses
  %.not430 = icmp eq ptr %.sroa.0285.0, %7
  br i1 %.not430, label %._crit_edge462, label %.lr.ph461, !llvm.loop !8

bb.ar:                                            ; preds = %._crit_edge462
  %i.lj = getelementptr inbounds nuw i8, ptr %.497, i64 1120 ; 5 uses
  %i.lk = load i32, ptr %i.lj, align 8
  %i.ll = add i32 %i.lk, %i.li
  %i.lm = zext i32 %i.ll to i64
  %i.ln = shl nuw nsw i64 %i.lm, 2
  %i.lo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ln) #25
          to label %.preheader436 unwind label %bb.as ; 3 uses

.preheader436:                                    ; preds = %bb.ar
  %i.lp = load i32, ptr %i.lj, align 8
  %.not496 = icmp eq i32 %i.lp, 0
  br i1 %.not496, label %.preheader435, label %.lr.ph466

.lr.ph466:                                        ; preds = %.preheader436
  %i.lq = getelementptr inbounds nuw i8, ptr %.497, i64 1128
  br label %bb.at

.preheader435:                                    ; preds = %bb.at, %.preheader436
  %.090.lcssa = phi ptr [ %i.lo, %.preheader436 ], [ %i.lw, %bb.at ]
  %.sroa.0281.0477 = load ptr, ptr %7, align 8    ; 2 uses
  %.not431478 = icmp eq ptr %.sroa.0281.0477, %7
  br i1 %.not431478, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader435
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.at:                                            ; preds = %.lr.ph466, %bb.at
  %indvars.iv505 = phi i64 [ 0, %.lr.ph466 ], [ %indvars.iv.next506, %bb.at ] ; 2 uses
  %.090464 = phi ptr [ %i.lo, %.lr.ph466 ], [ %i.lw, %bb.at ] ; 2 uses
  %i.lt = load ptr, ptr %i.lq, align 8
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv505
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %.090464, i64 4 ; 2 uses
  store i32 %i.lv, ptr %.090464, align 4
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1 ; 2 uses
  %i.lx = load i32, ptr %i.lj, align 8
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next506, %i.ly
  br i1 %i.lz, label %bb.at, label %.preheader435, !llvm.loop !9

._crit_edge482:                                   ; preds = %._crit_edge475, %.preheader435
  %i.ma = getelementptr inbounds nuw i8, ptr %.497, i64 1128 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %bb.bf, label %bb.be

bb.au:                                            ; preds = %.lr.ph481, %._crit_edge475
  %.sroa.0281.0480 = phi ptr [ %.sroa.0281.0477, %.lr.ph481 ], [ %.sroa.0281.0, %._crit_edge475 ] ; 2 uses
  %.191479 = phi ptr [ %.090.lcssa, %.lr.ph481 ], [ %.292.lcssa, %._crit_edge475 ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0281.0480, i64 16
  %i.me = load ptr, ptr %i.md, align 8            ; 19 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 1120 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8
  %.not497 = icmp eq i32 %i.mg, 0
  br i1 %.not497, label %._crit_edge475, label %.lr.ph474

.lr.ph474:                                        ; preds = %bb.au
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 1128
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 1028 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 1048 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 1068 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 1088
  %i.mm = getelementptr inbounds nuw i8, ptr %i.me, i64 1072 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 1084
  %i.mo = getelementptr inbounds nuw i8, ptr %i.me, i64 1080
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 1064 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 1056
  %i.mr = getelementptr inbounds nuw i8, ptr %i.me, i64 1032 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.me, i64 1076
  %i.mt = getelementptr inbounds nuw i8, ptr %i.me, i64 1060 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.me, i64 1044 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.me, i64 1036 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.me, i64 1040
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph474, %._crit_edge470
  %indvars.iv511 = phi i64 [ 0, %.lr.ph474 ], [ %indvars.iv.next512, %._crit_edge470 ] ; 2 uses
  %.292471 = phi ptr [ %.191479, %.lr.ph474 ], [ %i.nd, %._crit_edge470 ] ; 2 uses
  %i.mx = load ptr, ptr %i.mh, align 8
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv511
  %i.mz = load i32, ptr %i.my, align 4            ; 2 uses
  store i32 %i.mz, ptr %.292471, align 4
  %i.na = load ptr, ptr %i.lr, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %.292471, i64 4 ; 2 uses
  %i.ne = zext i32 %i.mz to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.ne
  %i.ng = load ptr, ptr %i.nf, align 8            ; 6 uses
  %i.nh = load float, ptr %i.mk, align 4          ; 5 uses
  %i.ni = load float, ptr %i.ml, align 8          ; 6 uses
  %i.nj = load float, ptr %i.mm, align 8          ; 5 uses
  %i.nk = load float, ptr %i.mn, align 4          ; 6 uses
  %i.nl = fneg float %i.nk
  %i.nm = load float, ptr %i.mo, align 8          ; 6 uses
  %i.nn = load float, ptr %i.mp, align 8          ; 5 uses
  %i.no = fneg float %i.nn                        ; 4 uses
  %i.np = load float, ptr %i.mq, align 8          ; 3 uses
  %i.nq = fneg float %i.nh                        ; 3 uses
  %i.nr = load float, ptr %i.ms, align 4          ; 6 uses
  %i.ns = fneg float %i.nj                        ; 2 uses
  %i.nt = load float, ptr %i.mt, align 4          ; 5 uses
  %i.nu = fneg float %i.nt                        ; 3 uses
  %9 = load float, ptr %i.mi, align 4             ; 5 uses
  %i.nv = load float, ptr %i.mr, align 8          ; 5 uses
  %10 = load float, ptr %i.mu, align 4            ; 5 uses
  %i.nw = load <2 x float>, ptr %i.mj, align 8    ; 5 uses
  %i.nx = extractelement <2 x float> %i.nw, i64 1 ; 4 uses
  %i.ny = extractelement <2 x float> %i.nw, i64 0 ; 4 uses
  %11 = fmul float %9, %i.ny                      ; 3 uses
  %i.nz = fmul float %11, %i.nh
  %i.oa = fmul float %11, %i.nj
  %i.ob = fmul float %i.oa, %i.nl
  %i.oc = call float @llvm.fmuladd.f32(float %i.nz, float %i.ni, float %i.ob)
  %i.od = fmul float %9, %i.nx                    ; 2 uses
  %i.oe = fmul float %i.nj, %i.od
  %i.of = call float @llvm.fmuladd.f32(float %i.oe, float %i.nm, float %i.oc)
  %i.og = fmul float %i.od, %i.no                 ; 2 uses
  %i.oh = call float @llvm.fmuladd.f32(float %i.og, float %i.ni, float %i.of)
  %i.oi = fmul float %9, %i.np                    ; 2 uses
  %i.oj = fmul float %i.nn, %i.oi
  %i.ok = call float @llvm.fmuladd.f32(float %i.oj, float %i.nk, float %i.oh)
  %i.ol = fmul float %i.oi, %i.nq
  %i.om = call float @llvm.fmuladd.f32(float %i.ol, float %i.nm, float %i.ok)
  %i.on = fmul float %i.nx, %i.nv                 ; 3 uses
  %i.oo = fmul float %i.on, %i.ns
  %i.op = call float @llvm.fmuladd.f32(float %i.oo, float %i.nr, float %i.om)
  %i.oq = fmul float %i.on, %i.nt
  %i.or = call float @llvm.fmuladd.f32(float %i.oq, float %i.ni, float %i.op)
  %i.os = fmul float %i.np, %i.nv                 ; 2 uses
  %i.ot = fmul float %i.os, %i.nu
  %i.ou = call float @llvm.fmuladd.f32(float %i.ot, float %i.nk, float %i.or)
  %i.ov = fmul float %i.nh, %i.os
  %i.ow = call float @llvm.fmuladd.f32(float %i.ov, float %i.nr, float %i.ou)
  %i.ox = fmul float %i.nv, %10                   ; 2 uses
  %i.oy = fmul float %i.ox, %i.nq
  %i.oz = call float @llvm.fmuladd.f32(float %i.oy, float %i.ni, float %i.ow)
  %i.pa = fmul float %i.nj, %i.ox
  %i.pb = call float @llvm.fmuladd.f32(float %i.pa, float %i.nk, float %i.oz)
  %i.pc = load float, ptr %i.mv, align 4          ; 5 uses
  %i.pd = fmul float %i.np, %i.pc                 ; 2 uses
  %i.pe = fmul float %i.nt, %i.pd
  %i.pf = call float @llvm.fmuladd.f32(float %i.pe, float %i.nm, float %i.pb)
  %i.pg = fmul float %i.pd, %i.no
  %i.ph = call float @llvm.fmuladd.f32(float %i.pg, float %i.nr, float %i.pf)
  %i.pi = fmul float %10, %i.pc                   ; 3 uses
  %i.pj = fmul float %i.nn, %i.pi
  %i.pk = call float @llvm.fmuladd.f32(float %i.pj, float %i.ni, float %i.ph)
  %i.pl = fmul float %i.pi, %i.ns
  %i.pm = call float @llvm.fmuladd.f32(float %i.pl, float %i.nm, float %i.pk)
  %i.pn = fmul float %i.ny, %i.pc                 ; 2 uses
  %i.po = fmul float %i.nj, %i.pn
  %i.pp = call float @llvm.fmuladd.f32(float %i.po, float %i.nr, float %i.pm)
  %i.pq = fmul float %i.pn, %i.nu
  %i.pr = call float @llvm.fmuladd.f32(float %i.pq, float %i.ni, float %i.pp)
  %i.ps = load float, ptr %i.mw, align 8          ; 3 uses
  %i.pt = fmul float %10, %i.ps                   ; 2 uses
  %i.pu = fmul float %i.pt, %i.no
  %i.pv = call float @llvm.fmuladd.f32(float %i.pu, float %i.nk, float %i.pr)
  %i.pw = fmul float %i.nh, %i.pt
  %i.px = call float @llvm.fmuladd.f32(float %i.pw, float %i.nm, float %i.pv)
  %i.py = fmul float %i.ny, %i.ps                 ; 2 uses
  %i.pz = fmul float %i.py, %i.nq
  %i.qa = call float @llvm.fmuladd.f32(float %i.pz, float %i.nr, float %i.px)
  %i.qb = fmul float %i.nt, %i.py
  %i.qc = call float @llvm.fmuladd.f32(float %i.qb, float %i.nk, float %i.qa)
  %i.qd = fmul float %i.nx, %i.ps                 ; 2 uses
  %i.qe = fmul float %i.qd, %i.nu
  %i.qf = call float @llvm.fmuladd.f32(float %i.qe, float %i.nm, float %i.qc)
  %i.qg = fmul float %i.nn, %i.qd
  %i.qh = call noundef float @llvm.fmuladd.f32(float %i.qg, float %i.nr, float %i.qf)
  %i.qi = fcmp olt float %i.qh, 0.000000e+00
  %12 = insertelement <2 x float> poison, float %9, i64 0
  %13 = insertelement <2 x float> %12, float %10, i64 1
  %i.qj = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.qk = shufflevector <2 x float> %i.qj, <2 x float> %i.nw, <2 x i32> <i32 0, i32 2>
  %i.ql = insertelement <2 x float> %i.nw, float %i.pc, i64 0
  br i1 %i.qi, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef %i.ng)
          to label %._crit_edge516 unwind label %bb.ax

._crit_edge516:                                   ; preds = %bb.aw
  %.pre519 = load float, ptr %i.mv, align 4       ; 3 uses
  %14 = load float, ptr %i.mi, align 4            ; 4 uses
  %.pre518 = load float, ptr %i.mr, align 8       ; 3 uses
  %15 = load float, ptr %i.mu, align 4            ; 3 uses
  %i.qm = load <2 x float>, ptr %i.mj, align 8    ; 5 uses
  %i.qn = extractelement <2 x float> %i.qm, i64 1 ; 3 uses
  %i.qo = extractelement <2 x float> %i.qm, i64 0 ; 2 uses
  %.pre523 = load float, ptr %i.mt, align 4
  %.pre524 = load float, ptr %i.mp, align 8       ; 2 uses
  %.pre525 = load float, ptr %i.mk, align 4
  %.pre538 = fmul float %14, %i.qo
  %.pre540 = fmul float %14, %i.qn
  %.pre542 = fneg float %.pre524                  ; 2 uses
  %.pre544 = fmul float %.pre540, %.pre542
  %.pre546 = fmul float %.pre518, %i.qn
  %.pre548 = fmul float %.pre519, %15
  %16 = insertelement <2 x float> poison, float %14, i64 0
  %17 = insertelement <2 x float> %16, float %15, i64 1
  %i.qp = insertelement <2 x float> poison, float %.pre518, i64 0
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> %i.qm, <2 x i32> <i32 0, i32 2>
  %i.qr = insertelement <2 x float> %i.qm, float %.pre519, i64 0
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge516, %bb.av
  %.pre-phi549 = phi float [ %.pre548, %._crit_edge516 ], [ %i.pi, %bb.av ]
  %.pre-phi547 = phi float [ %.pre546, %._crit_edge516 ], [ %i.on, %bb.av ]
  %.pre-phi545 = phi float [ %.pre544, %._crit_edge516 ], [ %i.og, %bb.av ]
  %.pre-phi543 = phi float [ %.pre542, %._crit_edge516 ], [ %i.no, %bb.av ]
  %.pre-phi539 = phi float [ %.pre538, %._crit_edge516 ], [ %11, %bb.av ]
  %i.qt = phi float [ %.pre525, %._crit_edge516 ], [ %i.nh, %bb.av ] ; 3 uses
  %i.qu = phi float [ %.pre524, %._crit_edge516 ], [ %i.nn, %bb.av ] ; 2 uses
  %i.qv = phi float [ %.pre523, %._crit_edge516 ], [ %i.nt, %bb.av ] ; 3 uses
  %i.qw = phi float [ %i.qn, %._crit_edge516 ], [ %i.nx, %bb.av ]
  %i.qx = phi float [ %i.qo, %._crit_edge516 ], [ %i.ny, %bb.av ]
  %i.qy = phi float [ %15, %._crit_edge516 ], [ %10, %bb.av ]
  %i.qz = phi float [ %.pre519, %._crit_edge516 ], [ %i.pc, %bb.av ] ; 2 uses
  %i.ra = phi float [ %.pre518, %._crit_edge516 ], [ %i.nv, %bb.av ] ; 2 uses
  %i.rb = phi float [ %14, %._crit_edge516 ], [ %9, %bb.av ]
  %i.rc = phi <2 x float> [ %17, %._crit_edge516 ], [ %13, %bb.av ] ; 2 uses
  %i.rd = phi <2 x float> [ %i.qq, %._crit_edge516 ], [ %i.qk, %bb.av ] ; 2 uses
  %i.re = phi <2 x float> [ %i.qr, %._crit_edge516 ], [ %i.ql, %bb.av ] ; 2 uses
  %i.rf = phi <2 x float> [ %i.qm, %._crit_edge516 ], [ %i.nw, %bb.av ]
  %i.rg = call float @llvm.fmuladd.f32(float %.pre-phi539, float %i.qt, float %.pre-phi545)
  %i.rh = call float @llvm.fmuladd.f32(float %.pre-phi547, float %i.qv, float %i.rg)
  %i.ri = fneg float %i.qy                        ; 2 uses
  %i.rj = fmul float %i.ra, %i.ri                 ; 2 uses
  %i.rk = call float @llvm.fmuladd.f32(float %i.rj, float %i.qt, float %i.rh)
  %i.rl = call float @llvm.fmuladd.f32(float %.pre-phi549, float %i.qu, float %i.rk)
  %i.rm = fneg float %i.qx
  %i.rn = fmul float %i.qz, %i.rm                 ; 2 uses
  %i.ro = call noundef float @llvm.fmuladd.f32(float %i.rn, float %i.qv, float %i.rl) ; 2 uses
  %i.rp = fcmp oeq float %i.ro, 0.000000e+00
  br i1 %i.rp, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rq = fdiv float 1.000000e+00, %i.ro          ; 4 uses
  %i.rr = insertelement <2 x float> poison, float %.pre-phi543, i64 0
  %i.rs = shufflevector <2 x float> %i.rr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rt = fmul <2 x float> %i.re, %i.rs
  %i.ru = fneg float %i.rq                        ; 2 uses
  %i.rv = call float @llvm.fmuladd.f32(float %i.ra, float %i.qw, float %i.rn)
  %i.rw = fmul float %i.rv, %i.rq
  %i.rx = fneg float %i.qv
  %i.ry = fmul float %i.qz, %i.ri
  %i.rz = insertelement <2 x float> poison, float %i.qt, i64 0
  %i.sa = shufflevector <2 x float> %i.rz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rd, <2 x float> %i.sa, <2 x float> %i.rt)
  %i.sc = insertelement <2 x float> poison, float %i.ru, i64 0
  %i.sd = insertelement <2 x float> %i.sc, float %i.rq, i64 1 ; 3 uses
  %i.se = fmul <2 x float> %i.sb, %i.sd
  %i.sf = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sh = fmul <2 x float> %i.re, %i.sg
  %i.si = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rc, <2 x float> %i.sa, <2 x float> %i.sh)
  %i.sj = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sk = fmul <2 x float> %i.si, %i.sj
  %i.sl = fmul <2 x float> %i.rd, %i.sg
  %i.sm = insertelement <2 x float> poison, float %i.qu, i64 0
  %i.sn = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.so = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rc, <2 x float> %i.sn, <2 x float> %i.sl)
  %i.sp = fmul <2 x float> %i.so, %i.sd
  %i.sq = insertelement <2 x float> poison, float %i.rb, i64 0
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ss = insertelement <2 x float> poison, float %i.rj, i64 0
  %i.st = insertelement <2 x float> %i.ss, float %i.ry, i64 1
  %i.su = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sr, <2 x float> %i.rf, <2 x float> %i.st)
  %i.sv = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.sw = insertelement <2 x float> %i.sv, float %i.ru, i64 1
  %i.sx = fmul <2 x float> %i.su, %i.sw
  br label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %bb.az, %bb.ay
  %storemerge23.i = phi float [ %i.rw, %bb.az ], [ +qnan, %bb.ay ] ; 3 uses
  %i.sy = phi <2 x float> [ %i.sp, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 3 uses
  %i.sz = phi <2 x float> [ %i.se, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 3 uses
  %i.ta = phi <2 x float> [ %i.sk, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 3 uses
  %i.tb = phi <2 x float> [ %i.sx, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ng, i64 4 ; 4 uses
  %i.td = load i32, ptr %i.tc, align 4
  %.not498 = icmp eq i32 %i.td, 0
  br i1 %.not498, label %._crit_edge470, label %.lr.ph469

.lr.ph469:                                        ; preds = %_ZN12aiMatrix3x3tIfE7InverseEv.exit
  %i.te = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.th = getelementptr inbounds nuw i8, ptr %i.ng, i64 40 ; 2 uses
  %i.ti = extractelement <2 x float> %i.tb, i64 0 ; 3 uses
  %i.tj = extractelement <2 x float> %i.tb, i64 1 ; 3 uses
  br label %bb.ba

._crit_edge470:                                   ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, %_ZN12aiMatrix3x3tIfE7InverseEv.exit
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %i.tk = load i32, ptr %i.mf, align 8
  %i.tl = zext i32 %i.tk to i64
  %i.tm = icmp samesign ult i64 %indvars.iv.next512, %i.tl
  br i1 %i.tm, label %bb.av, label %._crit_edge475, !llvm.loop !10

bb.ba:                                            ; preds = %.lr.ph469, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %indvars.iv508 = phi i64 [ 0, %.lr.ph469 ], [ %indvars.iv.next509, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ] ; 5 uses
  %i.tn = load ptr, ptr %i.te, align 8
  %i.to = getelementptr inbounds nuw [12 x i8], ptr %i.tn, i64 %indvars.iv508 ; 4 uses
  %i.tp = load float, ptr %i.to, align 4          ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tr = load float, ptr %i.tq, align 4          ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 8 ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4          ; 2 uses
  %i.tu = load <8 x float>, ptr %i.mi, align 4    ; 4 uses
  %i.tv = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.tw = shufflevector <2 x float> %i.tv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tx = shufflevector <8 x float> %i.tu, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ty = fmul <2 x float> %i.tw, %i.tx
  %i.tz = shufflevector <8 x float> %i.tu, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ua = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tz, <2 x float> %i.ub, <2 x float> %i.ty)
  %i.ud = shufflevector <8 x float> %i.tu, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ue = insertelement <2 x float> poison, float %i.tt, i64 0
  %i.uf = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ug = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ud, <2 x float> %i.uf, <2 x float> %i.uc)
  %i.uh = shufflevector <8 x float> %i.tu, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ui = fadd <2 x float> %i.ug, %i.uh
  %i.uj = load float, ptr %i.mt, align 4
  %i.uk = load float, ptr %i.mp, align 8
  %i.ul = fmul float %i.tr, %i.uk
  %i.um = call float @llvm.fmuladd.f32(float %i.uj, float %i.tp, float %i.ul)
  %i.un = load float, ptr %i.mk, align 4
  %i.uo = call float @llvm.fmuladd.f32(float %i.un, float %i.tt, float %i.um)
  %i.up = load float, ptr %i.mm, align 8
  %i.uq = fadd float %i.up, %i.uo
  store <2 x float> %i.ui, ptr %i.to, align 4
  store float %i.uq, ptr %i.ts, align 4
  %i.ur = load ptr, ptr %i.tf, align 8            ; 2 uses
  %.not.i = icmp ne ptr %i.ur, null
  %i.us = load i32, ptr %i.tc, align 4            ; 2 uses
  %i.ut = icmp ne i32 %i.us, 0
  %i.uu = select i1 %.not.i, i1 %i.ut, i1 false
  br i1 %i.uu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr %i.ur, i64 %indvars.iv508 ; 4 uses
  %i.uw = load float, ptr %i.uv, align 4          ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.uy = load float, ptr %i.ux, align 4          ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 8 ; 2 uses
  %i.va = load float, ptr %i.uz, align 4          ; 2 uses
  %i.vb = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vd = fmul <2 x float> %i.ta, %i.vc
  %i.ve = insertelement <2 x float> poison, float %i.uw, i64 0
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sz, <2 x float> %i.vf, <2 x float> %i.vd)
  %i.vh = insertelement <2 x float> poison, float %i.va, i64 0
  %i.vi = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sy, <2 x float> %i.vi, <2 x float> %i.vg)
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vl = fmul float %i.tj, %i.uy
  %i.vm = call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.uw, float %i.vl)
  %i.vn = call float @llvm.fmuladd.f32(float %i.ti, float %i.va, float %i.vm)
  store <2 x float> %i.vk, ptr %i.uv, align 4
  store float %i.vn, ptr %i.uz, align 4
  %.pre527.pre = load i32, ptr %i.tc, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pre527 = phi i32 [ %.pre527.pre, %bb.bb ], [ %i.us, %bb.ba ] ; 2 uses
  %i.vo = load ptr, ptr %i.tg, align 8            ; 2 uses
  %.not.i229 = icmp eq ptr %i.vo, null
  %i.vp = load ptr, ptr %i.th, align 8
  %.not1.i = icmp eq ptr %i.vp, null
  %or.cond.i = select i1 %.not.i229, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit:     ; preds = %bb.bc
  %.not432 = icmp eq i32 %.pre527, 0
  br i1 %.not432, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.vq = getelementptr inbounds nuw [12 x i8], ptr %i.vo, i64 %indvars.iv508 ; 4 uses
  %i.vr = load float, ptr %i.vq, align 4          ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %i.vt = load float, ptr %i.vs, align 4          ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4          ; 2 uses
  %i.vw = insertelement <2 x float> poison, float %i.vt, i64 0
  %i.vx = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vy = fmul <2 x float> %i.ta, %i.vx
  %i.vz = insertelement <2 x float> poison, float %i.vr, i64 0
  %i.wa = shufflevector <2 x float> %i.vz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sz, <2 x float> %i.wa, <2 x float> %i.vy)
  %i.wc = insertelement <2 x float> poison, float %i.vv, i64 0
  %i.wd = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.we = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sy, <2 x float> %i.wd, <2 x float> %i.wb)
  %i.wf = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wg = fmul float %i.tj, %i.vt
  %i.wh = call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.vr, float %i.wg)
  %i.wi = call float @llvm.fmuladd.f32(float %i.ti, float %i.vv, float %i.wh)
  store <2 x float> %i.wf, ptr %i.vq, align 4
  store float %i.wi, ptr %i.vu, align 4
  %i.wj = load ptr, ptr %i.th, align 8
  %i.wk = getelementptr inbounds nuw [12 x i8], ptr %i.wj, i64 %indvars.iv508 ; 4 uses
  %i.wl = load float, ptr %i.wk, align 4          ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 4
  %i.wn = load float, ptr %i.wm, align 4          ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 8 ; 2 uses
  %i.wp = load float, ptr %i.wo, align 4          ; 2 uses
  %i.wq = insertelement <2 x float> poison, float %i.wn, i64 0
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = fmul <2 x float> %i.ta, %i.wr
  %i.wt = insertelement <2 x float> poison, float %i.wl, i64 0
  %i.wu = shufflevector <2 x float> %i.wt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sz, <2 x float> %i.wu, <2 x float> %i.ws)
  %i.ww = insertelement <2 x float> poison, float %i.wp, i64 0
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sy, <2 x float> %i.wx, <2 x float> %i.wv)
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xa = fmul float %i.tj, %i.wn
  %i.xb = call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.wl, float %i.xa)
  %i.xc = call float @llvm.fmuladd.f32(float %i.ti, float %i.wp, float %i.xb)
end_hunk_0
