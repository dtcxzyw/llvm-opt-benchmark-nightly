Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_progress_bar?download=true
inline.NumInlined: 1083
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6duckdb21UnscentedKalmanFilter7PredictEd:bb.a
bb.bd:                                            ; preds = %bb.bb, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113, %bb.az, %.split.us.split.us.4
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body78

.preheader364:                                    ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113.1, %.split.us.split.us412.1
  %.051446 = phi i64 [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113.1 ], [ %i.oy, %.split.us.split.us412.1 ] ; 8 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %.051446 ; 4 uses
  %exitcond496.not = icmp eq i64 %.051446, %i.ki
  br i1 %exitcond496.not, label %.preheader363.split, label %.preheader363.preheader, !prof !63

.preheader363.preheader:                          ; preds = %.preheader364
  %i.km = load ptr, ptr %i.az, align 8
  %i.kn = load ptr, ptr %17, align 8              ; 2 uses
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = sdiv exact i64 %i.kq, 24                ; 2 uses
  %.not.i.i.i124 = icmp ult i64 %.051446, %i.kr
  br i1 %.not.i.i.i124, label %.preheader363.split.us.split.us.preheader, label %.preheader363.split.us.split, !prof !95

.preheader362:                                    ; preds = %.split.us.split.us412.1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !92 ; 2 uses
  %i.kx = load ptr, ptr %i.ku, align 8, !tbaa !91 ; 6 uses
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 2 uses
  %i.lb = sdiv exact i64 %i.la, 24                ; 2 uses
  %exitcond498.not = icmp eq ptr %i.kw, %i.kx
  br i1 %exitcond498.not, label %.preheader.split, label %.preheader.split.us.preheader, !prof !63

.preheader363.split.us.split.us.preheader:        ; preds = %.preheader363.preheader
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.kn, i64 %.051446 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load double, ptr %i.kl, align 8, !tbaa !83
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !90 ; 2 uses
  %i.lg = load ptr, ptr %i.lc, align 8, !tbaa !88 ; 5 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = ashr exact i64 %i.lj, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ac, align 8, !tbaa !35
  store i64 %i.lk, ptr %i.ad, align 8, !tbaa !35
  %.not.i.i.i134.us.us.not = icmp eq ptr %i.lf, %i.lg
  br i1 %.not.i.i.i134.us.us.not, label %.noexc.i300, label %bb.be, !prof !63

bb.be:                                            ; preds = %.preheader363.split.us.split.us.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ll = load double, ptr %i.lg, align 8, !tbaa !83
  %i.lm = load ptr, ptr %i.cw, align 8, !tbaa !90 ; 2 uses
  %i.ln = load ptr, ptr %i.cu, align 8, !tbaa !88 ; 3 uses
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.aa, align 8, !tbaa !35
  store i64 %i.lr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i.i144.us.us.not = icmp eq ptr %i.lm, %i.ln
  br i1 %.not.i.i.i144.us.us.not, label %.noexc.i304, label %bb.bf, !prof !63

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ls = load double, ptr %i.ln, align 8, !tbaa !83
  %i.lt = fsub double %i.ll, %i.ls                ; 2 uses
  %i.lu = fmul double %i.le, %i.lt
  %i.lv = load ptr, ptr %i.kj, align 8, !tbaa !92 ; 2 uses
  %i.lw = load ptr, ptr %i.hq, align 8, !tbaa !91 ; 6 uses
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = sdiv exact i64 %i.lz, 24                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.u, align 8, !tbaa !35
  store i64 %i.ma, ptr %i.v, align 8, !tbaa !35
  %.not.i.i.i184.us.us.not = icmp eq ptr %i.lv, %i.lw
  br i1 %.not.i.i.i184.us.us.not, label %.noexc.i320, label %bb.bg, !prof !63

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !90 ; 2 uses
  %i.md = load ptr, ptr %i.lw, align 8, !tbaa !88 ; 8 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = ashr exact i64 %i.mg, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.s, align 8, !tbaa !35
  store i64 %i.mh, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i194.us.us.not = icmp eq ptr %i.mc, %i.md
  br i1 %.not.i.i.i194.us.us.not, label %.noexc.i324, label %bb.bh, !prof !63

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.mi = load double, ptr %i.md, align 8, !tbaa !83
  %i.mj = call double @llvm.fmuladd.f64(double %i.lu, double %i.lt, double %i.mi)
  store double %i.mj, ptr %i.md, align 8, !tbaa !83
  %i.mk = load double, ptr %i.kl, align 8, !tbaa !83
  %i.ml = load double, ptr %i.lg, align 8, !tbaa !83
  %i.mm = load ptr, ptr %i.cw, align 8, !tbaa !90 ; 2 uses
  %i.mn = load ptr, ptr %i.cu, align 8, !tbaa !88 ; 4 uses
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = ashr exact i64 %i.mq, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.aa, align 8, !tbaa !35
  store i64 %i.mr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i.i144.us.us.1.not = icmp eq ptr %i.mm, %i.mn
  br i1 %.not.i.i.i144.us.us.1.not, label %.noexc.i304, label %bb.bi, !prof !63

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ms = load double, ptr %i.mn, align 8, !tbaa !83
  %i.mt = fsub double %i.ml, %i.ms
  %i.mu = fmul double %i.mk, %i.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 1, ptr %i.y, align 8, !tbaa !35
  store i64 %i.lk, ptr %i.z, align 8, !tbaa !35
  %.not.i.i.i164.us.us.1 = icmp ugt i64 %i.lk, 1
  br i1 %.not.i.i.i164.us.us.1, label %bb.bj, label %.noexc.i312, !prof !95

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 1, ptr %i.w, align 8, !tbaa !35
  store i64 %i.mr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i.i174.us.us.1 = icmp ugt i64 %i.mr, 1
  br i1 %.not.i.i.i174.us.us.1, label %bb.bk, label %.noexc.i316, !prof !95

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.my = load double, ptr %i.mx, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 1, ptr %i.s, align 8, !tbaa !35
  store i64 %i.mh, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i194.us.us.1 = icmp ugt i64 %i.mh, 1
  br i1 %.not.i.i.i194.us.us.1, label %.split.us.split.us412, label %.noexc.i324, !prof !95

.split.us.split.us412:                            ; preds = %bb.bk
  %i.mz = fsub double %i.mw, %i.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.na = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !83
  %i.nc = call double @llvm.fmuladd.f64(double %i.mu, double %i.mz, double %i.nb)
  store double %i.nc, ptr %i.na, align 8, !tbaa !83
  %i.nd = load ptr, ptr %i.az, align 8
  %i.ne = load ptr, ptr %17, align 8              ; 2 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = sdiv exact i64 %i.nh, 24                ; 2 uses
  %.not.i.i.i124.1 = icmp ult i64 %.051446, %i.ni
  br i1 %.not.i.i.i124.1, label %.preheader363.split.us.split.us.preheader.1, label %.preheader363.split.us.split, !prof !95

.preheader363.split.us.split.us.preheader.1:      ; preds = %.split.us.split.us412
  %i.nj = getelementptr inbounds nuw [24 x i8], ptr %i.ne, i64 %.051446 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load double, ptr %i.kl, align 8, !tbaa !83
  %i.nm = load ptr, ptr %i.nk, align 8, !tbaa !90
  %i.nn = load ptr, ptr %i.nj, align 8, !tbaa !88 ; 3 uses
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = ashr exact i64 %i.nq, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 1, ptr %i.ac, align 8, !tbaa !35
  store i64 %i.nr, ptr %i.ad, align 8, !tbaa !35
  %.not.i.i.i134.us.us.1490 = icmp ugt i64 %i.nr, 1
  br i1 %.not.i.i.i134.us.us.1490, label %bb.bl, label %.noexc.i300, !prof !95

bb.bl:                                            ; preds = %.preheader363.split.us.split.us.preheader.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.nt = load ptr, ptr %i.cw, align 8, !tbaa !90
  %i.nu = load ptr, ptr %i.cu, align 8, !tbaa !88 ; 2 uses
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = ashr exact i64 %i.nx, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 1, ptr %i.aa, align 8, !tbaa !35
  store i64 %i.ny, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i.i144.us.us.1492 = icmp ugt i64 %i.ny, 1
  br i1 %.not.i.i.i144.us.us.1492, label %bb.bm, label %.noexc.i304, !prof !95

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %20 = load <2 x double>, ptr %i.nn, align 8, !tbaa !83
  %21 = load <2 x double>, ptr %i.nu, align 8, !tbaa !83
  %22 = fsub <2 x double> %20, %21                ; 2 uses
  %23 = extractelement <2 x double> %22, i64 1
  %24 = fmul double %i.nl, %23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 1, ptr %i.u, align 8, !tbaa !35
  store i64 %i.ma, ptr %i.v, align 8, !tbaa !35
  %.not.i.i.i184.us.us.1494 = icmp ugt i64 %i.ma, 1
  br i1 %.not.i.i.i184.us.us.1494, label %bb.bn, label %.noexc.i320, !prof !95

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !90 ; 2 uses
  %i.oc = load ptr, ptr %i.nz, align 8, !tbaa !88 ; 8 uses
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = ashr exact i64 %i.of, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.s, align 8, !tbaa !35
  store i64 %i.og, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i194.us.us.1495.not = icmp eq ptr %i.ob, %i.oc
  br i1 %.not.i.i.i194.us.us.1495.not, label %.noexc.i324, label %bb.bo, !prof !63

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.oh = load double, ptr %i.oc, align 8, !tbaa !83
  %25 = extractelement <2 x double> %22, i64 0
  %i.oi = call double @llvm.fmuladd.f64(double %24, double %25, double %i.oh)
  store double %i.oi, ptr %i.oc, align 8, !tbaa !83
  %i.oj = load double, ptr %i.kl, align 8, !tbaa !83
  %i.ok = load double, ptr %i.ns, align 8, !tbaa !83
  %i.ol = load ptr, ptr %i.cw, align 8, !tbaa !90
  %i.om = load ptr, ptr %i.cu, align 8, !tbaa !88 ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = ashr exact i64 %i.op, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 1, ptr %i.aa, align 8, !tbaa !35
  store i64 %i.oq, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i.i144.us.us.1.1 = icmp ugt i64 %i.oq, 1
  br i1 %.not.i.i.i144.us.us.1.1, label %bb.bp, label %.noexc.i304, !prof !95

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.os = load double, ptr %i.or, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 1, ptr %i.s, align 8, !tbaa !35
  store i64 %i.og, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i194.us.us.1.1 = icmp ugt i64 %i.og, 1
  br i1 %.not.i.i.i194.us.us.1.1, label %.split.us.split.us412.1, label %.noexc.i324, !prof !95

.split.us.split.us412.1:                          ; preds = %bb.bp
  %i.ot = fsub double %i.ok, %i.os                ; 2 uses
  %i.ou = fmul double %i.oj, %i.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !83
  %i.ox = call double @llvm.fmuladd.f64(double %i.ou, double %i.ot, double %i.ow)
  store double %i.ox, ptr %i.ov, align 8, !tbaa !83
  %i.oy = add nuw nsw i64 %.051446, 1             ; 2 uses
  %exitcond497.not = icmp eq i64 %i.oy, 5
  br i1 %exitcond497.not, label %.preheader362, label %.preheader364, !llvm.loop !178

.preheader363.split.us.split:                     ; preds = %.split.us.split.us412, %.preheader363.preheader
  %.lcssa = phi i64 [ %i.kr, %.preheader363.preheader ], [ %i.ni, %.split.us.split.us412 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.051446, ptr %i.ae, align 8, !tbaa !35
  store i64 %.lcssa, ptr %i.af, align 8, !tbaa !35
  %i.oz = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.pa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.pa, ptr %10, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i64 55, ptr %i.i, align 8, !tbaa !35
  %i.pb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc297 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i125 ; 3 uses

.preheader363.split:                              ; preds = %.preheader364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.ki, ptr %i.ag, align 8, !tbaa !35
  store i64 %i.ki, ptr %i.ah, align 8, !tbaa !35
  %i.pc = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.pd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.pd, ptr %11, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store i64 55, ptr %i.j, align 8, !tbaa !35
  %i.pe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc293 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i115 ; 3 uses

.noexc293:                                        ; preds = %.preheader363.split
  store ptr %i.pe, ptr %11, align 8, !tbaa !18
  %i.pf = load i64, ptr %i.j, align 8, !tbaa !35  ; 3 uses
  store i64 %i.pf, ptr %i.pd, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.pe, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.pf, ptr %i.pg, align 8, !tbaa !65
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.pf
  store i8 0, ptr %i.ph, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.pc, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %.noexc293
  invoke void @__cxa_throw(ptr nonnull %i.pc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.bt unwind label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i115: ; preds = %.preheader363.split
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq, %.noexc293
  %.0.i.i.i118 = phi i1 [ false, %bb.bq ], [ true, %.noexc293 ] ; 2 uses
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pk = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.pd
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119: ; preds = %bb.br
  call void @_ZdlPv(ptr noundef %i.pk) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.0.i.i.i118, label %bb.bs, label %.body78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i120: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.0.i.i.i118, label %bb.bs, label %.body78

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i115
  %.pn8.i.i.i116 = phi { ptr, i32 } [ %i.pi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i115 ], [ %i.pj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i120 ], [ %i.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119 ]
  call void @__cxa_free_exception(ptr %i.pc) #22
  br label %.body78

bb.bt:                                            ; preds = %bb.bq
  unreachable

.noexc297:                                        ; preds = %.preheader363.split.us.split
  store ptr %i.pb, ptr %10, align 8, !tbaa !18
  %i.pm = load i64, ptr %i.i, align 8, !tbaa !35  ; 3 uses
  store i64 %i.pm, ptr %i.pa, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.pb, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.pm, ptr %i.pn, align 8, !tbaa !65
  %i.po = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pm
  store i8 0, ptr %i.po, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.oz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc297
  invoke void @__cxa_throw(ptr nonnull %i.oz, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.bx unwind label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i125: ; preds = %.preheader363.split.us.split
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %.noexc297
  %.0.i.i.i128 = phi i1 [ false, %bb.bu ], [ true, %.noexc297 ] ; 2 uses
  %i.pq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pr = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.pa
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.pr) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %.0.i.i.i128, label %bb.bw, label %.body78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i130: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %.0.i.i.i128, label %bb.bw, label %.body78

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i125
  %.pn8.i.i.i126 = phi { ptr, i32 } [ %i.pp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i125 ], [ %i.pq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i130 ], [ %i.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i129 ]
  call void @__cxa_free_exception(ptr %i.oz) #22
  br label %.body78

bb.bx:                                            ; preds = %bb.bu
  unreachable

.noexc.i300:                                      ; preds = %.preheader363.split.us.split.us.preheader.1, %.preheader363.split.us.split.us.preheader
  %i.pt = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.pu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.pu, ptr %9, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i64 55, ptr %i.h, align 8, !tbaa !35
  %i.pv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc301 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i135 ; 3 uses

.noexc301:                                        ; preds = %.noexc.i300
  store ptr %i.pv, ptr %9, align 8, !tbaa !18
  %i.pw = load i64, ptr %i.h, align 8, !tbaa !35  ; 3 uses
  store i64 %i.pw, ptr %i.pu, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.pv, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.pw, ptr %i.px, align 8, !tbaa !65
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pw
  store i8 0, ptr %i.py, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.noexc301
  invoke void @__cxa_throw(ptr nonnull %i.pt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.cb unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i135: ; preds = %.noexc.i300
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by, %.noexc301
end_hunk_0
