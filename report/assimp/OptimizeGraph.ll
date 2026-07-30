inline.NumInlined: 624
inline.NumDeleted: 303
begin_hunk_0_@_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ai
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next501, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge444.thread, label %bb.ai, !llvm.loop !7

._crit_edge444:                                   ; preds = %bb.ai
  %i.ij = trunc nuw i64 %indvars.iv500 to i32
  %i.ik = icmp eq i32 %i.hy, %i.ij
  br i1 %i.ik, label %._crit_edge444.thread, label %.critedge131.thread

._crit_edge444.thread:                            ; preds = %bb.ak, %.preheader437, %._crit_edge444
  %.not117 = icmp eq ptr %.093451, null
  %i.il = getelementptr inbounds nuw i8, ptr %i.gm, i64 1028 ; 3 uses
  br i1 %.not117, label %bb.al, label %bb.an

bb.al:                                            ; preds = %._crit_edge444.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.il, i64 64, i1 false)
  %i.im = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %6)
          to label %.critedge131.thread unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.an, %bb.al
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.an:                                            ; preds = %._crit_edge444.thread
  %i.io = load <4 x float>, ptr %6, align 16
  %i.ip = load <4 x float>, ptr %i.fy, align 4
  %i.iq = load <4 x float>, ptr %.sroa.9.0..sroa_idx294, align 8
  %i.ir = load <4 x float>, ptr %.sroa.11296.0..sroa_idx297, align 4
  %i.is = load <4 x float>, ptr %.sroa.13.0..sroa_idx299, align 16
  %i.it = load <4 x float>, ptr %i.fz, align 4
  %i.iu = load <4 x float>, ptr %i.ga, align 8
  %i.iv = load <4 x float>, ptr %.sroa.19307.0..sroa_idx308, align 4
  %i.iw = load <4 x float>, ptr %.sroa.21.0..sroa_idx310, align 16
  %i.ix = load <4 x float>, ptr %.sroa.23312.0..sroa_idx313, align 4
  %i.iy = load <4 x float>, ptr %i.gb, align 8
  %i.iz = load <4 x float>, ptr %i.gc, align 4
  %i.ja = load <4 x float>, ptr %.sroa.29.0..sroa_idx321, align 16
  %.sroa.31323.0.copyload325 = load float, ptr %.sroa.31323.0..sroa_idx324, align 4
  %.sroa.33.0.copyload327 = load float, ptr %.sroa.33.0..sroa_idx326, align 8
  %.sroa.35328.0.copyload330 = load float, ptr %i.gd, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gm, i64 1044 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gm, i64 1060 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gm, i64 1076 ; 2 uses
  %i.je = load <4 x float>, ptr %i.il, align 4    ; 4 uses
  %i.jf = load <4 x float>, ptr %i.jb, align 4    ; 4 uses
  %i.jg = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = fmul <4 x float> %i.jg, %i.jf
  %i.ji = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.ji, <4 x float> %i.jh)
  %i.jk = load <4 x float>, ptr %i.jc, align 4    ; 4 uses
  %i.jl = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.jl, <4 x float> %i.jj)
  %i.jn = load <4 x float>, ptr %i.jd, align 4    ; 4 uses
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
  %i.le = load ptr, ptr %7, align 8               ; 5 uses
  %.not430456 = icmp eq ptr %i.le, %7
  br i1 %.not430456, label %._crit_edge461.thread, label %.lr.ph460

._crit_edge461:                                   ; preds = %.lr.ph460
  %.not110 = icmp eq i32 %i.lj, 0
  br i1 %.not110, label %._crit_edge461.thread, label %bb.ar

.lr.ph460:                                        ; preds = %bb.aq, %.lr.ph460
  %.098458 = phi i32 [ %i.lj, %.lr.ph460 ], [ 0, %bb.aq ]
  %.sroa.0285.0457 = phi ptr [ %i.lk, %.lr.ph460 ], [ %i.le, %bb.aq ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0285.0457, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1120
  %i.li = load i32, ptr %i.lh, align 8
  %i.lj = add i32 %i.li, %.098458                 ; 4 uses
  %i.lk = load ptr, ptr %.sroa.0285.0457, align 8 ; 2 uses
  %.not430 = icmp eq ptr %i.lk, %7
  br i1 %.not430, label %._crit_edge461, label %.lr.ph460, !llvm.loop !8

bb.ar:                                            ; preds = %._crit_edge461
  %i.ll = getelementptr inbounds nuw i8, ptr %.497, i64 1120 ; 5 uses
  %i.lm = load i32, ptr %i.ll, align 8
  %i.ln = add i32 %i.lm, %i.lj
  %i.lo = zext i32 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 2
  %i.lq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lp) #25
          to label %.preheader436 unwind label %bb.as ; 3 uses

.preheader436:                                    ; preds = %bb.ar
  %i.lr = load i32, ptr %i.ll, align 8
  %.not494 = icmp eq i32 %i.lr, 0
  br i1 %.not494, label %.lr.ph479, label %.lr.ph465

.lr.ph465:                                        ; preds = %.preheader436
  %i.ls = getelementptr inbounds nuw i8, ptr %.497, i64 1128
  br label %bb.at

.lr.ph479:                                        ; preds = %bb.at, %.preheader436
  %.090.lcssa = phi ptr [ %i.lq, %.preheader436 ], [ %i.ly, %bb.at ]
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.at:                                            ; preds = %.lr.ph465, %bb.at
  %indvars.iv503 = phi i64 [ 0, %.lr.ph465 ], [ %indvars.iv.next504, %bb.at ] ; 2 uses
  %.090463 = phi ptr [ %i.lq, %.lr.ph465 ], [ %i.ly, %bb.at ] ; 2 uses
  %i.lv = load ptr, ptr %i.ls, align 8
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv503
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %.090463, i64 4 ; 2 uses
  store i32 %i.lx, ptr %.090463, align 4
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %i.lz = load i32, ptr %i.ll, align 8
  %i.ma = zext i32 %i.lz to i64
  %i.mb = icmp samesign ult i64 %indvars.iv.next504, %i.ma
  br i1 %i.mb, label %bb.at, label %.lr.ph479, !llvm.loop !9

._crit_edge480:                                   ; preds = %._crit_edge474
  %i.mc = getelementptr inbounds nuw i8, ptr %.497, i64 1128 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %bb.bf, label %bb.be

bb.au:                                            ; preds = %.lr.ph479, %._crit_edge474
  %.191478 = phi ptr [ %.090.lcssa, %.lr.ph479 ], [ %.292.lcssa, %._crit_edge474 ] ; 2 uses
  %.sroa.0281.0477 = phi ptr [ %i.le, %.lr.ph479 ], [ %i.vx, %._crit_edge474 ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0281.0477, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8            ; 19 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1120 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 8
  %.not495 = icmp eq i32 %i.mi, 0
  br i1 %.not495, label %._crit_edge474, label %.lr.ph473

.lr.ph473:                                        ; preds = %bb.au
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 1128
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 1028 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 1048 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 1068 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 1088
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mg, i64 1072 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 1084
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mg, i64 1080
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mg, i64 1064 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 1056
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mg, i64 1032 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mg, i64 1076
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mg, i64 1060 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mg, i64 1044 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mg, i64 1036 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mg, i64 1040
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph473, %._crit_edge469
  %indvars.iv509 = phi i64 [ 0, %.lr.ph473 ], [ %indvars.iv.next510, %._crit_edge469 ] ; 2 uses
  %.292470 = phi ptr [ %.191478, %.lr.ph473 ], [ %i.nf, %._crit_edge469 ] ; 2 uses
  %i.mz = load ptr, ptr %i.mj, align 8
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv509
  %i.nb = load i32, ptr %i.na, align 4            ; 2 uses
  store i32 %i.nb, ptr %.292470, align 4
  %i.nc = load ptr, ptr %i.lt, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %.292470, i64 4 ; 2 uses
  %i.ng = zext i32 %i.nb to i64
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.ng
  %i.ni = load ptr, ptr %i.nh, align 8            ; 6 uses
  %i.nj = load float, ptr %i.mm, align 4          ; 5 uses
  %i.nk = load float, ptr %i.mn, align 8          ; 6 uses
  %i.nl = load float, ptr %i.mo, align 8          ; 5 uses
  %i.nm = load float, ptr %i.mp, align 4          ; 6 uses
  %i.nn = fneg float %i.nm
  %i.no = load float, ptr %i.mq, align 8          ; 6 uses
  %i.np = load float, ptr %i.mr, align 8          ; 5 uses
  %i.nq = fneg float %i.np                        ; 4 uses
  %i.nr = load float, ptr %i.ms, align 8          ; 3 uses
  %i.ns = fneg float %i.nj                        ; 3 uses
  %i.nt = load float, ptr %i.mu, align 4          ; 6 uses
  %i.nu = fneg float %i.nl                        ; 2 uses
  %i.nv = load float, ptr %i.mv, align 4          ; 5 uses
  %i.nw = fneg float %i.nv                        ; 3 uses
  %9 = load <2 x float>, ptr %i.mk, align 4       ; 3 uses
  %10 = extractelement <2 x float> %9, i64 0      ; 3 uses
  %i.nx = load float, ptr %i.mt, align 8          ; 5 uses
  %11 = load <2 x float>, ptr %i.mw, align 4      ; 2 uses
  %12 = extractelement <2 x float> %11, i64 0     ; 4 uses
  %13 = load <2 x float>, ptr %i.ml, align 8      ; 6 uses
  %14 = extractelement <2 x float> %13, i64 1     ; 4 uses
  %15 = extractelement <2 x float> %13, i64 0     ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %9, %13
  %16 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ny = fmul float %16, %i.nj
  %i.nz = fmul float %16, %i.nl
  %i.oa = fmul float %i.nz, %i.nn
  %i.ob = call float @llvm.fmuladd.f32(float %i.ny, float %i.nk, float %i.oa)
  %i.oc = fmul float %10, %14                     ; 2 uses
  %i.od = fmul float %i.nl, %i.oc
  %i.oe = call float @llvm.fmuladd.f32(float %i.od, float %i.no, float %i.ob)
  %i.of = fmul float %i.oc, %i.nq                 ; 2 uses
  %i.og = call float @llvm.fmuladd.f32(float %i.of, float %i.nk, float %i.oe)
  %i.oh = fmul float %10, %i.nr                   ; 2 uses
  %i.oi = fmul float %i.np, %i.oh
  %i.oj = call float @llvm.fmuladd.f32(float %i.oi, float %i.nm, float %i.og)
  %i.ok = fmul float %i.oh, %i.ns
  %i.ol = call float @llvm.fmuladd.f32(float %i.ok, float %i.no, float %i.oj)
  %i.om = fmul float %14, %i.nx                   ; 3 uses
  %i.on = fmul float %i.om, %i.nu
  %i.oo = call float @llvm.fmuladd.f32(float %i.on, float %i.nt, float %i.ol)
  %i.op = fmul float %i.om, %i.nv
  %i.oq = call float @llvm.fmuladd.f32(float %i.op, float %i.nk, float %i.oo)
  %i.or = fmul float %i.nr, %i.nx                 ; 2 uses
  %i.os = fmul float %i.or, %i.nw
  %i.ot = call float @llvm.fmuladd.f32(float %i.os, float %i.nm, float %i.oq)
  %i.ou = fmul float %i.nj, %i.or
  %i.ov = call float @llvm.fmuladd.f32(float %i.ou, float %i.nt, float %i.ot)
  %i.ow = fmul float %i.nx, %12                   ; 2 uses
  %i.ox = fmul float %i.ow, %i.ns
  %i.oy = call float @llvm.fmuladd.f32(float %i.ox, float %i.nk, float %i.ov)
  %i.oz = fmul float %i.nl, %i.ow
  %i.pa = call float @llvm.fmuladd.f32(float %i.oz, float %i.nm, float %i.oy)
  %i.pb = load float, ptr %i.mx, align 4          ; 5 uses
  %i.pc = fmul float %i.nr, %i.pb                 ; 2 uses
  %i.pd = fmul float %i.nv, %i.pc
  %i.pe = call float @llvm.fmuladd.f32(float %i.pd, float %i.no, float %i.pa)
  %i.pf = fmul float %i.pc, %i.nq
  %i.pg = call float @llvm.fmuladd.f32(float %i.pf, float %i.nt, float %i.pe)
  %i.ph = fmul float %12, %i.pb                   ; 3 uses
  %i.pi = fmul float %i.np, %i.ph
  %i.pj = call float @llvm.fmuladd.f32(float %i.pi, float %i.nk, float %i.pg)
  %i.pk = fmul float %i.ph, %i.nu
  %i.pl = call float @llvm.fmuladd.f32(float %i.pk, float %i.no, float %i.pj)
  %i.pm = fmul float %15, %i.pb                   ; 2 uses
  %i.pn = fmul float %i.nl, %i.pm
  %i.po = call float @llvm.fmuladd.f32(float %i.pn, float %i.nt, float %i.pl)
  %i.pp = fmul float %i.pm, %i.nw
  %i.pq = call float @llvm.fmuladd.f32(float %i.pp, float %i.nk, float %i.po)
  %i.pr = load float, ptr %i.my, align 8          ; 3 uses
  %i.ps = fmul float %12, %i.pr                   ; 2 uses
  %i.pt = fmul float %i.ps, %i.nq
  %i.pu = call float @llvm.fmuladd.f32(float %i.pt, float %i.nm, float %i.pq)
  %i.pv = fmul float %i.nj, %i.ps
  %i.pw = call float @llvm.fmuladd.f32(float %i.pv, float %i.no, float %i.pu)
  %i.px = fmul float %15, %i.pr                   ; 2 uses
  %i.py = fmul float %i.px, %i.ns
  %i.pz = call float @llvm.fmuladd.f32(float %i.py, float %i.nt, float %i.pw)
  %i.qa = fmul float %i.nv, %i.px
  %i.qb = call float @llvm.fmuladd.f32(float %i.qa, float %i.nm, float %i.pz)
  %i.qc = fmul float %14, %i.pr                   ; 2 uses
  %i.qd = fmul float %i.qc, %i.nw
  %i.qe = call float @llvm.fmuladd.f32(float %i.qd, float %i.no, float %i.qb)
  %i.qf = fmul float %i.np, %i.qc
  %i.qg = call noundef float @llvm.fmuladd.f32(float %i.qf, float %i.nt, float %i.qe)
  %i.qh = fcmp olt float %i.qg, 0.000000e+00
  %17 = shufflevector <2 x float> %9, <2 x float> %11, <2 x i32> <i32 0, i32 2>
  %18 = insertelement <2 x float> poison, float %i.nx, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> %13, <2 x i32> <i32 0, i32 2>
  %20 = insertelement <2 x float> %13, float %i.pb, i64 0
  br i1 %i.qh, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef %i.ni)
          to label %._crit_edge514 unwind label %bb.ax

._crit_edge514:                                   ; preds = %bb.aw
  %.pre517 = load float, ptr %i.mx, align 4       ; 3 uses
  %21 = load <2 x float>, ptr %i.mk, align 4      ; 3 uses
  %22 = extractelement <2 x float> %21, i64 0     ; 2 uses
  %.pre516 = load float, ptr %i.mt, align 8       ; 3 uses
  %23 = load <2 x float>, ptr %i.mw, align 4      ; 2 uses
  %24 = extractelement <2 x float> %23, i64 0     ; 2 uses
  %25 = load <2 x float>, ptr %i.ml, align 8      ; 6 uses
  %26 = extractelement <2 x float> %25, i64 1     ; 3 uses
  %27 = extractelement <2 x float> %25, i64 0
  %.pre521 = load float, ptr %i.mv, align 4
  %.pre522 = load float, ptr %i.mr, align 8       ; 2 uses
  %.pre523 = load float, ptr %i.mm, align 4
  %foldExtExtBinop606 = fmul <2 x float> %21, %25
  %.pre537 = extractelement <2 x float> %foldExtExtBinop606, i64 0
  %.pre539 = fmul float %22, %26
  %.pre541 = fneg float %.pre522                  ; 2 uses
  %.pre543 = fmul float %.pre539, %.pre541
  %.pre545 = fmul float %.pre516, %26
  %.pre547 = fmul float %.pre517, %24
  %28 = shufflevector <2 x float> %21, <2 x float> %23, <2 x i32> <i32 0, i32 2>
  %29 = insertelement <2 x float> poison, float %.pre516, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> %25, <2 x i32> <i32 0, i32 2>
  %31 = insertelement <2 x float> %25, float %.pre517, i64 0
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge514, %bb.av
  %.pre-phi548 = phi float [ %.pre547, %._crit_edge514 ], [ %i.ph, %bb.av ]
  %.pre-phi546 = phi float [ %.pre545, %._crit_edge514 ], [ %i.om, %bb.av ]
  %.pre-phi544 = phi float [ %.pre543, %._crit_edge514 ], [ %i.of, %bb.av ]
  %.pre-phi542 = phi float [ %.pre541, %._crit_edge514 ], [ %i.nq, %bb.av ]
  %.pre-phi538 = phi float [ %.pre537, %._crit_edge514 ], [ %16, %bb.av ]
  %i.qj = phi float [ %.pre523, %._crit_edge514 ], [ %i.nj, %bb.av ] ; 3 uses
  %i.qk = phi float [ %.pre522, %._crit_edge514 ], [ %i.np, %bb.av ] ; 2 uses
  %i.ql = phi float [ %.pre521, %._crit_edge514 ], [ %i.nv, %bb.av ] ; 3 uses
  %i.qm = phi float [ %26, %._crit_edge514 ], [ %14, %bb.av ]
  %i.qn = phi float [ %27, %._crit_edge514 ], [ %15, %bb.av ]
  %i.qo = phi float [ %24, %._crit_edge514 ], [ %12, %bb.av ]
  %i.qp = phi float [ %.pre517, %._crit_edge514 ], [ %i.pb, %bb.av ] ; 2 uses
  %i.qq = phi float [ %.pre516, %._crit_edge514 ], [ %i.nx, %bb.av ] ; 2 uses
  %i.qr = phi float [ %22, %._crit_edge514 ], [ %10, %bb.av ]
  %32 = phi <2 x float> [ %28, %._crit_edge514 ], [ %17, %bb.av ] ; 2 uses
  %33 = phi <2 x float> [ %30, %._crit_edge514 ], [ %19, %bb.av ] ; 2 uses
  %34 = phi <2 x float> [ %31, %._crit_edge514 ], [ %20, %bb.av ] ; 2 uses
  %35 = phi <2 x float> [ %25, %._crit_edge514 ], [ %13, %bb.av ]
  %i.qs = call float @llvm.fmuladd.f32(float %.pre-phi538, float %i.qj, float %.pre-phi544)
  %i.qt = call float @llvm.fmuladd.f32(float %.pre-phi546, float %i.ql, float %i.qs)
  %i.qu = fneg float %i.qo                        ; 2 uses
  %i.qv = fmul float %i.qq, %i.qu                 ; 2 uses
  %i.qw = call float @llvm.fmuladd.f32(float %i.qv, float %i.qj, float %i.qt)
  %i.qx = call float @llvm.fmuladd.f32(float %.pre-phi548, float %i.qk, float %i.qw)
  %i.qy = fneg float %i.qn
  %i.qz = fmul float %i.qp, %i.qy                 ; 2 uses
  %i.ra = call noundef float @llvm.fmuladd.f32(float %i.qz, float %i.ql, float %i.qx) ; 2 uses
  %i.rb = fcmp oeq float %i.ra, 0.000000e+00
  br i1 %i.rb, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rc = fdiv float 1.000000e+00, %i.ra          ; 4 uses
  %i.rd = insertelement <2 x float> poison, float %.pre-phi542, i64 0
  %i.re = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rf = fmul <2 x float> %34, %i.re
  %i.rg = fneg float %i.rc                        ; 2 uses
  %i.rh = call float @llvm.fmuladd.f32(float %i.qq, float %i.qm, float %i.qz)
  %i.ri = fmul float %i.rh, %i.rc
  %i.rj = fneg float %i.ql
  %i.rk = fmul float %i.qp, %i.qu
  %36 = insertelement <2 x float> poison, float %i.qj, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %38 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %37, <2 x float> %i.rf)
  %i.rl = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.rm = insertelement <2 x float> %i.rl, float %i.rc, i64 1 ; 3 uses
  %39 = fmul <2 x float> %38, %i.rm
  %40 = insertelement <2 x float> poison, float %i.rj, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %42 = fmul <2 x float> %34, %41
  %43 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %37, <2 x float> %42)
  %44 = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %45 = fmul <2 x float> %43, %44
  %i.rn = fmul <2 x float> %33, %41
  %i.ro = insertelement <2 x float> poison, float %i.qk, i64 0
  %46 = shufflevector <2 x float> %i.ro, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %46, <2 x float> %i.rn)
  %47 = fmul <2 x float> %i.rp, %i.rm
  %48 = insertelement <2 x float> poison, float %i.qr, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rq = insertelement <2 x float> poison, float %i.qv, i64 0
  %50 = insertelement <2 x float> %i.rq, float %i.rk, i64 1
  %i.rr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> %35, <2 x float> %50)
  %51 = insertelement <2 x float> poison, float %i.rc, i64 0
  %52 = insertelement <2 x float> %51, float %i.rg, i64 1
  %53 = fmul <2 x float> %i.rr, %52
  br label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %bb.az, %bb.ay
  %storemerge23.i = phi float [ %i.ri, %bb.az ], [ +qnan, %bb.ay ] ; 3 uses
  %54 = phi <2 x float> [ %47, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 3 uses
  %i.rs = phi <2 x float> [ %39, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 3 uses
  %i.rt = phi <2 x float> [ %45, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 3 uses
  %i.ru = phi <2 x float> [ %53, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ni, i64 4 ; 4 uses
  %i.rw = load i32, ptr %i.rv, align 4
  %.not496 = icmp eq i32 %i.rw, 0
  br i1 %.not496, label %._crit_edge469, label %.lr.ph468

.lr.ph468:                                        ; preds = %_ZN12aiMatrix3x3tIfE7InverseEv.exit
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ni, i64 32
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ni, i64 40 ; 2 uses
  %55 = extractelement <2 x float> %i.ru, i64 0   ; 3 uses
  %56 = extractelement <2 x float> %i.ru, i64 1   ; 3 uses
  br label %bb.ba

._crit_edge469:                                   ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, %_ZN12aiMatrix3x3tIfE7InverseEv.exit
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1 ; 2 uses
  %i.sb = load i32, ptr %i.mh, align 8
  %i.sc = zext i32 %i.sb to i64
  %i.sd = icmp samesign ult i64 %indvars.iv.next510, %i.sc
  br i1 %i.sd, label %bb.av, label %._crit_edge474, !llvm.loop !10

bb.ba:                                            ; preds = %.lr.ph468, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %indvars.iv506 = phi i64 [ 0, %.lr.ph468 ], [ %indvars.iv.next507, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ] ; 5 uses
  %i.se = load ptr, ptr %i.rx, align 8
  %i.sf = getelementptr inbounds nuw [12 x i8], ptr %i.se, i64 %indvars.iv506 ; 4 uses
  %i.sg = load float, ptr %i.sf, align 4          ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.si = load float, ptr %i.sh, align 4          ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.sk = load float, ptr %i.sj, align 4          ; 2 uses
  %i.sl = load <8 x float>, ptr %i.mk, align 4    ; 4 uses
  %i.sm = insertelement <2 x float> poison, float %i.si, i64 0
  %i.sn = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.so = shufflevector <8 x float> %i.sl, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.sp = fmul <2 x float> %i.sn, %i.so
  %i.sq = shufflevector <8 x float> %i.sl, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.sr = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sq, <2 x float> %i.ss, <2 x float> %i.sp)
  %i.su = shufflevector <8 x float> %i.sl, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.sv = insertelement <2 x float> poison, float %i.sk, i64 0
  %i.sw = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.su, <2 x float> %i.sw, <2 x float> %i.st)
  %i.sy = shufflevector <8 x float> %i.sl, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.sz = fadd <2 x float> %i.sx, %i.sy
  %i.ta = load float, ptr %i.mv, align 4
  %i.tb = load float, ptr %i.mr, align 8
  %i.tc = fmul float %i.si, %i.tb
  %i.td = call float @llvm.fmuladd.f32(float %i.ta, float %i.sg, float %i.tc)
  %i.te = load float, ptr %i.mm, align 4
  %i.tf = call float @llvm.fmuladd.f32(float %i.te, float %i.sk, float %i.td)
  %i.tg = load float, ptr %i.mo, align 8
  %i.th = fadd float %i.tg, %i.tf
  store <2 x float> %i.sz, ptr %i.sf, align 4
  store float %i.th, ptr %i.sj, align 4
  %i.ti = load ptr, ptr %i.ry, align 8            ; 2 uses
  %.not.i = icmp ne ptr %i.ti, null
  %i.tj = load i32, ptr %i.rv, align 4            ; 2 uses
  %i.tk = icmp ne i32 %i.tj, 0
  %i.tl = select i1 %.not.i, i1 %i.tk, i1 false
  br i1 %i.tl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.tm = getelementptr inbounds nuw [12 x i8], ptr %i.ti, i64 %indvars.iv506 ; 4 uses
  %i.tn = load float, ptr %i.tm, align 4          ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %i.tp = load float, ptr %i.to, align 4          ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 2 uses
  %i.tr = load float, ptr %i.tq, align 4          ; 2 uses
  %i.ts = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tu = fmul <2 x float> %i.rt, %i.tt
  %i.tv = insertelement <2 x float> poison, float %i.tn, i64 0
  %i.tw = shufflevector <2 x float> %i.tv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rs, <2 x float> %i.tw, <2 x float> %i.tu)
  %i.ty = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ua = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %i.tz, <2 x float> %i.tx)
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uc = fmul float %56, %i.tp
  %i.ud = call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.tn, float %i.uc)
  %i.ue = call float @llvm.fmuladd.f32(float %55, float %i.tr, float %i.ud)
  store <2 x float> %i.ub, ptr %i.tm, align 4
  store float %i.ue, ptr %i.tq, align 4
  %.pre525.pre = load i32, ptr %i.rv, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pre525 = phi i32 [ %.pre525.pre, %bb.bb ], [ %i.tj, %bb.ba ] ; 2 uses
  %i.uf = load ptr, ptr %i.rz, align 8            ; 2 uses
  %.not.i229 = icmp eq ptr %i.uf, null
  %i.ug = load ptr, ptr %i.sa, align 8
  %.not1.i = icmp eq ptr %i.ug, null
  %or.cond.i = select i1 %.not.i229, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit:     ; preds = %bb.bc
  %.not432 = icmp eq i32 %.pre525, 0
  br i1 %.not432, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.uh = getelementptr inbounds nuw [12 x i8], ptr %i.uf, i64 %indvars.iv506 ; 4 uses
  %i.ui = load float, ptr %i.uh, align 4          ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load float, ptr %i.uj, align 4          ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 8 ; 2 uses
  %i.um = load float, ptr %i.ul, align 4          ; 2 uses
  %i.un = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.uo = shufflevector <2 x float> %i.un, <2 x float> poison, <2 x i32> zeroinitializer
  %i.up = fmul <2 x float> %i.rt, %i.uo
  %i.uq = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.us = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rs, <2 x float> %i.ur, <2 x float> %i.up)
  %i.ut = insertelement <2 x float> poison, float %i.um, i64 0
  %i.uu = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %i.uu, <2 x float> %i.us)
  %i.uw = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ux = fmul float %56, %i.uk
  %i.uy = call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.ui, float %i.ux)
  %i.uz = call float @llvm.fmuladd.f32(float %55, float %i.um, float %i.uy)
  store <2 x float> %i.uw, ptr %i.uh, align 4
  store float %i.uz, ptr %i.ul, align 4
  %i.va = load ptr, ptr %i.sa, align 8
  %i.vb = getelementptr inbounds nuw [12 x i8], ptr %i.va, i64 %indvars.iv506 ; 4 uses
  %i.vc = load float, ptr %i.vb, align 4          ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.ve = load float, ptr %i.vd, align 4          ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 2 uses
  %i.vg = load float, ptr %i.vf, align 4          ; 2 uses
  %i.vh = insertelement <2 x float> poison, float %i.ve, i64 0
  %i.vi = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vj = fmul <2 x float> %i.rt, %i.vi
  %i.vk = insertelement <2 x float> poison, float %i.vc, i64 0
  %i.vl = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rs, <2 x float> %i.vl, <2 x float> %i.vj)
  %i.vn = insertelement <2 x float> poison, float %i.vg, i64 0
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %i.vo, <2 x float> %i.vm)
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vr = fmul float %56, %i.ve
  %i.vs = call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.vc, float %i.vr)
  %i.vt = call float @llvm.fmuladd.f32(float %55, float %i.vg, float %i.vs)
  store <2 x float> %i.vq, ptr %i.vb, align 4
  store float %i.vt, ptr %i.vf, align 4
  %.pre524 = load i32, ptr %i.rv, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.bc, %bb.bd, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.vu = phi i32 [ %.pre525, %bb.bc ], [ %.pre524, %bb.bd ], [ 0, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ]
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %i.vv = zext i32 %i.vu to i64
  %i.vw = icmp samesign ult i64 %indvars.iv.next507, %i.vv
  br i1 %i.vw, label %bb.ba, label %._crit_edge469, !llvm.loop !11

._crit_edge474:                                   ; preds = %._crit_edge469, %bb.au
  %.292.lcssa = phi ptr [ %.191478, %bb.au ], [ %i.nf, %._crit_edge469 ]
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.mg) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef 1144) #24
  %i.vx = load ptr, ptr %.sroa.0281.0477, align 8 ; 2 uses
  %.not431 = icmp eq ptr %i.vx, %7
  br i1 %.not431, label %._crit_edge480, label %bb.au

bb.be:                                            ; preds = %._crit_edge480
  call void @_ZdaPv(ptr noundef nonnull %i.md) #24
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge480
  store ptr %i.lq, ptr %i.mc, align 8
  %i.vy = load i32, ptr %i.ll, align 8
  %i.vz = add i32 %i.vy, %i.lj
  store i32 %i.vz, ptr %i.ll, align 8
  %.pre526 = load ptr, ptr %7, align 8
  br label %._crit_edge461.thread

._crit_edge461.thread:                            ; preds = %bb.aq, %._crit_edge461, %bb.bf, %._crit_edge454
  %i.wa = phi ptr [ %i.le, %._crit_edge461 ], [ %.pre526, %bb.bf ], [ %.pre513, %._crit_edge454 ], [ %i.le, %bb.aq ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.wa, %7
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge461.thread, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.wb, %.lr.ph.i.i ], [ %i.wa, %._crit_edge461.thread ] ; 2 uses
  %i.wb = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #24
  %.not.i.i = icmp eq ptr %i.wb, %7
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.aa, %._crit_edge461.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ax, %bb.aj, %bb.am, %bb.as
  %.pn118.pn.pn = phi { ptr, i32 } [ %i.lu, %bb.as ], [ %i.qi, %bb.ax ], [ %i.ii, %bb.aj ], [ %i.in, %bb.am ]
  %i.wc = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i234 = icmp eq ptr %i.wc, %7
  br i1 %.not8.i.i234, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit238, label %.lr.ph.i.i235

.lr.ph.i.i235:                                    ; preds = %bb.bg, %.lr.ph.i.i235
  %.09.i.i236 = phi ptr [ %i.wd, %.lr.ph.i.i235 ], [ %i.wc, %bb.bg ] ; 2 uses
  %i.wd = load ptr, ptr %.09.i.i236, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i236, i64 noundef 24) #24
  %.not.i.i237 = icmp eq ptr %i.wd, %7
  br i1 %.not.i.i237, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit238, label %.lr.ph.i.i235, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit238: ; preds = %.lr.ph.i.i235, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bq

bb.bh:                                            ; preds = %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit179, %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit
  %i.we = load ptr, ptr %3, align 8               ; 3 uses
  %i.wf = icmp eq ptr %i.we, %3
  br i1 %i.wf, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.wg = load i64, ptr %i.j, align 8             ; 2 uses
  %i.wh = load i32, ptr %i.d, align 8
  %i.wi = zext i32 %i.wh to i64
  %i.wj = icmp ugt i64 %i.wg, %i.wi
  br i1 %i.wj, label %bb.bj, label %._crit_edge531

._crit_edge531:                                   ; preds = %bb.bi
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %.pre532 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.bo

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 3 uses
  %i.wl = load ptr, ptr %i.wk, align 8            ; 2 uses
  %i.wm = icmp eq ptr %i.wl, null
  br i1 %i.wm, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.wl) #24
  %.pre529 = load ptr, ptr %3, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.wn = phi ptr [ %.pre529, %bb.bk ], [ %i.we, %bb.bj ] ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %3
  br i1 %i.wo, label %.thread593, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wp = load i64, ptr %i.j, align 8             ; 3 uses
  %i.wq = icmp ugt i64 %i.wp, 2305843009213693951
  %i.wr = shl i64 %i.wp, 3
  %i.ws = select i1 %i.wq, i64 -1, i64 %i.wr
  %i.wt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ws) #25
          to label %bb.bn unwind label %bb.x      ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.wt, ptr %i.wk, align 8
  br label %bb.bo

.thread593:                                       ; preds = %bb.bl
  store ptr null, ptr %i.wk, align 8
  %.pre530 = load i64, ptr %i.j, align 8
  %i.wu = trunc i64 %.pre530 to i32               ; 2 uses
  store i32 %i.wu, ptr %i.d, align 8
  br label %.loopexit

bb.bo:                                            ; preds = %._crit_edge531, %bb.bn
  %.sroa.0249.0486 = phi ptr [ %i.wn, %bb.bn ], [ %i.we, %._crit_edge531 ]
  %i.wv = phi ptr [ %i.wt, %bb.bn ], [ %.pre532, %._crit_edge531 ] ; 2 uses
  %i.ww = phi i64 [ %i.wp, %bb.bn ], [ %i.wg, %._crit_edge531 ]
  %i.wx = trunc i64 %i.ww to i32                  ; 2 uses
  store i32 %i.wx, ptr %i.d, align 8
  %.not123 = icmp eq ptr %i.wv, null
  br i1 %.not123, label %.loopexit, label %.lr.ph490

.lr.ph490:                                        ; preds = %bb.bo, %.lr.ph490
  %.sroa.0249.0489 = phi ptr [ %.sroa.0249.0, %.lr.ph490 ], [ %.sroa.0249.0486, %bb.bo ] ; 2 uses
  %.073488 = phi ptr [ %i.xa, %.lr.ph490 ], [ %i.wv, %bb.bo ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.0249.0489, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8            ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.073488, i64 8
  store ptr %i.wz, ptr %.073488, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 1096
  store ptr %1, ptr %i.xb, align 8
  %.sroa.0249.0 = load ptr, ptr %.sroa.0249.0489, align 8 ; 2 uses
  %.not434 = icmp eq ptr %.sroa.0249.0, %3
  br i1 %.not434, label %.loopexit.loopexit, label %.lr.ph490, !llvm.loop !13

.loopexit.loopexit:                               ; preds = %.lr.ph490
  %.pre534 = load i64, ptr %i.j, align 8
  %.pre536 = trunc i64 %.pre534 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.thread593, %.loopexit.loopexit, %bb.bo
  %.pre-phi = phi i32 [ %.pre536, %.loopexit.loopexit ], [ %i.wx, %bb.bo ], [ %i.wu, %.thread593 ]
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4
  %i.xe = add i32 %i.xd, %.pre-phi
  store i32 %i.xe, ptr %i.xc, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.y, %.loopexit
  %i.xf = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i.i239 = icmp eq ptr %i.xf, %3
  br i1 %.not8.i.i239, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit243, label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %bb.bp, %.lr.ph.i.i240
  %.09.i.i241 = phi ptr [ %i.xg, %.lr.ph.i.i240 ], [ %i.xf, %bb.bp ] ; 2 uses
  %i.xg = load ptr, ptr %.09.i.i241, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i241, i64 noundef 24) #24
  %.not.i.i242 = icmp eq ptr %i.xg, %3
  br i1 %.not.i.i242, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit243, label %.lr.ph.i.i240, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit243: ; preds = %.lr.ph.i.i240, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.bq:                                            ; preds = %bb.t, %bb.u, %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit238, %bb.x, %bb.k, %bb.f
  %.pn128 = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.bo, %bb.k ], [ %i.fs, %bb.x ], [ %.pn118.pn.pn, %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit238 ], [ %i.fl, %bb.u ], [ %i.fk, %bb.t ]
  %i.xh = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i.i244 = icmp eq ptr %i.xh, %3
  br i1 %.not8.i.i244, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit248, label %.lr.ph.i.i245

.lr.ph.i.i245:                                    ; preds = %bb.bq, %.lr.ph.i.i245
  %.09.i.i246 = phi ptr [ %i.xi, %.lr.ph.i.i245 ], [ %i.xh, %bb.bq ] ; 2 uses
  %i.xi = load ptr, ptr %.09.i.i246, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i246, i64 noundef 24) #24
  %.not.i.i247 = icmp eq ptr %i.xi, %3
  br i1 %.not.i.i247, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit248, label %.lr.ph.i.i245, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit248: ; preds = %.lr.ph.i.i245, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
end_hunk_0
