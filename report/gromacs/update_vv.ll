Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/update_vv?download=true
inline.NumInlined: 331
inline.NumDeleted: 197
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z20integrateVVFirstSteplbbN3gmx16StartingBehaviorEiPK10t_inputrecP10t_forcerecRKNS_7MpiCommEPK12gmx_domdec_tP7t_stateP9t_mdatomsP8t_fcdataP9t_extmassP5t_vcmP14gmx_enerdata_tPNS_18ObservablesReducerEP14gmx_ekindata_tP15gmx_global_statPfbPA3_fSW_SW_SW_bbbbbbbPbSU_PNS_12ForceBuffersEPNS_6UpdateEPNS_11ConstraintsEPNS_19SimulationSignallerENS_16EnumerationArrayI15TrotterSequenceSt6vectorIiSaIiEELS17_5EEEP6t_nrnbP8_IO_FILEP13gmx_wallcycle:bb.a
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = getelementptr inbounds i8, ptr %i.iz, i64 %i.je
  store ptr %i.iz, ptr %49, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %i.jf, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 456 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !148 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 480 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !207
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.ji to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = getelementptr inbounds i8, ptr %i.ji, i64 %i.jn
  store ptr %i.ji, ptr %50, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %i.jo, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  call void @_Z15compute_globalsP15gmx_global_statRKN3gmx7MpiCommEPK10t_inputrecP10t_forcerecP14gmx_ekindata_tNS1_8ArrayRefIKNS1_11BasicVectorIfEEEESG_PA3_KfPK9t_mdatomsP6t_nrnbP5t_vcmP13gmx_wallcycleP14gmx_enerdata_tPA3_fSW_SW_SW_PNS1_19SimulationSignallerESJ_PbilPNS1_18ObservablesReducerE(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %16, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %49, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %50, ptr noundef nonnull %i.jq, ptr noundef nonnull %10, ptr noundef %38, ptr noundef %13, ptr noundef %40, ptr noundef %14, ptr noundef %22, ptr noundef %21, ptr noundef %20, ptr noundef %23, ptr noundef %36, ptr noundef nonnull %i.jq, ptr noundef %31, i32 noundef %i.ix, i64 noundef %0, ptr noundef %15)
  br i1 %28, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit181
  %i.jr = load ptr, ptr %i.iy, align 8, !tbaa !148 ; 3 uses
  %i.js = load ptr, ptr %i.ja, align 8, !tbaa !207
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = getelementptr inbounds i8, ptr %i.jr, i64 %i.jv
  %i.jx = load ptr, ptr %i.jh, align 8, !tbaa !148 ; 3 uses
  %i.jy = load ptr, ptr %i.jj, align 8, !tbaa !207
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jx to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.jx, i64 %i.kb
  store ptr %i.jx, ptr %51, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.kc, ptr %i.kd, align 8
  call void @_Z22process_and_stopcm_grpP8_IO_FILEP5t_vcmRK9t_mdatomsN3gmx8ArrayRefINS6_11BasicVectorIfEEEESA_(ptr noundef %39, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(648) %10, ptr %i.jr, ptr %i.jw, ptr noundef nonnull byval(%"class.gmx::ArrayRef.136") align 8 %51)
  %i.ke = load i32, ptr %i.dp, align 8, !tbaa !174
  %i.kf = sitofp i32 %i.ke to double
  %i.kg = getelementptr inbounds nuw i8, ptr %38, i64 736 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !258
  %i.ki = fadd double %i.kh, %i.kf
  store double %i.ki, ptr %i.kg, align 8, !tbaa !258
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit181
  br i1 %i.d, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit188, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %40)
  %i.kj = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9 ; 2 uses
  %i.kk = extractvalue { i32, i32 } %i.kj, 0
  %i.kl = extractvalue { i32, i32 } %i.kj, 1
  %i.km = zext i32 %i.kk to i64
  %i.kn = zext i32 %i.kl to i64
  %i.ko = shl nuw i64 %i.kn, 32
  %i.kp = or disjoint i64 %i.ko, %i.km            ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %40, i64 1168
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !12
  %i.kr = getelementptr inbounds nuw i8, ptr %40, i64 2584
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !15 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %40, i64 2592
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !15
  %i.kv = icmp eq ptr %i.ks, %i.ku
  br i1 %i.kv, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit188, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kw = getelementptr inbounds nuw i8, ptr %40, i64 2608 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !34
  %i.ky = add nsw i32 %i.kx, 1                    ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 8, !tbaa !34
  %i.kz = icmp eq i32 %i.ky, 3
  br i1 %i.kz, label %bb.ae, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit188

bb.ae:                                            ; preds = %bb.ad
  %i.la = getelementptr inbounds nuw i8, ptr %40, i64 2612
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !35
  %i.lc = mul nsw i32 %i.lb, 60
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr [24 x i8], ptr %i.ks, i64 %i.ld ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 1152   ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !36
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 8, !tbaa !36
  %i.li = getelementptr inbounds nuw i8, ptr %40, i64 2616
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !37
  %i.lk = sub i64 %i.kp, %i.lj
  %i.ll = getelementptr i8, ptr %i.le, i64 1160   ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !38
  %i.ln = add i64 %i.lk, %i.lm
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !38
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit188

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit188: ; preds = %bb.s, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %_Z11do_per_stepll.exit
  br i1 %2, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197, label %bb.af

bb.af:                                            ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit188
  br i1 %29, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.lo = load float, ptr %22, align 4, !tbaa !149
  %i.lp = load float, ptr %21, align 4, !tbaa !149
  %i.lq = fadd float %i.lo, %i.lp
  store float %i.lq, ptr %20, align 4, !tbaa !149
  %i.lr = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 3 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !149
  %i.lt = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !149
  %i.lv = fadd float %i.ls, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %20, i64 4
  store float %i.lv, ptr %i.lw, align 4, !tbaa !149
  %i.lx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !149
  %i.lz = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !149
  %i.mb = fadd float %i.ly, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store float %i.mb, ptr %i.mc, align 4, !tbaa !149
  %i.md = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %i.me = load float, ptr %i.md, align 4, !tbaa !149
  %i.mf = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !149
  %i.mh = fadd float %i.me, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %20, i64 12
  store float %i.mh, ptr %i.mi, align 4, !tbaa !149
  %i.mj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !149
  %i.ml = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !149
  %i.mn = fadd float %i.mk, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %20, i64 16
  store float %i.mn, ptr %i.mo, align 4, !tbaa !149
  %i.mp = getelementptr inbounds nuw i8, ptr %22, i64 20 ; 3 uses
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !149
  %i.mr = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 2 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !149
  %i.mt = fadd float %i.mq, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %20, i64 20
  store float %i.mt, ptr %i.mu, align 4, !tbaa !149
  %i.mv = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !149
  %i.mx = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !149
  %i.mz = fadd float %i.mw, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %20, i64 24
  store float %i.mz, ptr %i.na, align 4, !tbaa !149
  %i.nb = getelementptr inbounds nuw i8, ptr %22, i64 28 ; 3 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !149
  %i.nd = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !149
  %i.nf = fadd float %i.nc, %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %20, i64 28
  store float %i.nf, ptr %i.ng, align 4, !tbaa !149
  %i.nh = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !149
  %i.nj = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !149
  %i.nl = fadd float %i.ni, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %20, i64 32
  store float %i.nl, ptr %i.nm, align 4, !tbaa !149
  %i.nn = load i32, ptr %i.dp, align 8, !tbaa !174
  %i.no = getelementptr inbounds nuw i8, ptr %10, i64 448
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !175 ; 3 uses
  store ptr %i.np, ptr %52, align 8, !tbaa !177
  %i.nq = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %10, i64 456
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !178
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = ptrtoint ptr %i.np to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nv
  store ptr %i.nw, ptr %i.nq, align 8, !tbaa !177
  %i.nx = load ptr, ptr %i.ed, align 8, !tbaa !179 ; 3 uses
  store ptr %i.nx, ptr %53, align 8, !tbaa !181
  %i.ny = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.nz = load ptr, ptr %i.eg, align 8, !tbaa !182
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.nx to i64
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = getelementptr inbounds i8, ptr %i.nx, i64 %i.oc
  store ptr %i.od, ptr %i.ny, align 8, !tbaa !181
  store ptr %37, ptr %54, align 8, !tbaa !185
  %i.oe = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %37, i64 120
  store ptr %i.of, ptr %i.oe, align 8, !tbaa !185
  call void @_Z14trotter_updatePK10t_inputreclP14gmx_ekindata_tP7t_statePA3_KfiN3gmx8ArrayRefIKtEENSA_IS6_EEPK9t_extmassNSA_ISt6vectorIiSaIiEEEE15TrotterSequence(ptr noundef nonnull %5, i64 noundef %0, ptr noundef %16, ptr noundef %9, ptr noundef nonnull %20, i32 noundef %i.nn, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %52, ptr noundef nonnull byval(%"class.gmx::ArrayRef.84") align 8 %53, ptr noundef %12, ptr noundef nonnull byval(%"class.gmx::ArrayRef.87") align 8 %54, i32 noundef 2)
  %i.og = call noundef zeroext i1 @_Z18inputrecNptTrotterPK10t_inputrec(ptr noundef nonnull %5)
  br i1 %i.og, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.oh = call noundef zeroext i1 @_Z18inputrecNphTrotterPK10t_inputrec(ptr noundef nonnull %5)
  br i1 %i.oh, label %bb.ai, label %.rtcont

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.oi = add i64 %i.b, 36
  %i.oj = add i64 %i.a, 196
  %i.ok = add i64 %i.a, 268
  %rt.bound0 = icmp ult i64 %i.oj, %i.oi
  %rt.bound1 = icmp ugt i64 %i.ok, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtcont:                                          ; preds = %.rtvec, %.rtscalar, %bb.ah
  %i.ol = call noundef zeroext i1 @_Z18inputrecNptTrotterPK10t_inputrec(ptr noundef nonnull %5)
  br i1 %i.ol, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.rtcont
  %i.om = call noundef zeroext i1 @_Z18inputrecNvtTrotterPK10t_inputrec(ptr noundef nonnull %5)
  br i1 %i.om, label %bb.ak, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread

bb.ak:                                            ; preds = %bb.aj, %.rtcont
  %i.on = load i32, ptr %i.aj, align 4, !tbaa !136
  %i.oo = icmp eq i32 %i.on, 10
  br i1 %i.oo, label %bb.al, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread

bb.al:                                            ; preds = %bb.ak
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 744
  %i.oq = call noundef float @_Z8sum_ekinPK9t_grpoptsP14gmx_ekindata_tPfbb(ptr noundef nonnull %i.op, ptr noundef %16, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.or = getelementptr inbounds nuw i8, ptr %14, i64 332
  store float %i.oq, ptr %i.or, align 4, !tbaa !149
  %i.os = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ot = load float, ptr %i.os, align 4, !tbaa !149
  %i.ou = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !149
  %i.ow = fadd float %i.ot, %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !149
  %i.oz = fadd float %i.ow, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %14, i64 320
  store float %i.oz, ptr %i.pa, align 4, !tbaa !149
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread

bb.am:                                            ; preds = %bb.af
  br i1 %30, label %bb.an, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread

bb.an:                                            ; preds = %bb.am
  br i1 %i.d, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit192, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %40)
  %i.pb = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9 ; 2 uses
  %i.pc = extractvalue { i32, i32 } %i.pb, 0
  %i.pd = extractvalue { i32, i32 } %i.pb, 1
  %i.pe = zext i32 %i.pc to i64
  %i.pf = zext i32 %i.pd to i64
  %i.pg = shl nuw i64 %i.pf, 32
  %i.ph = or disjoint i64 %i.pg, %i.pe            ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %40, i64 1152 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %40, i64 1168
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !12 ; 2 uses
  %.not.i189 = icmp ult i64 %i.ph, %i.pk
  br i1 %.not.i189, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.pl = sub nuw i64 %i.ph, %i.pk
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.pm = getelementptr inbounds nuw i8, ptr %40, i64 2624
  store i8 1, ptr %i.pm, align 8, !tbaa !210
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i190 = phi i64 [ %i.pl, %bb.ap ], [ 0, %bb.aq ]
  %i.pn = getelementptr inbounds nuw i8, ptr %40, i64 1160 ; 2 uses
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !38
  %i.pp = add i64 %i.po, %.0.i190
  store i64 %i.pp, ptr %i.pn, align 8, !tbaa !38
  %i.pq = load i32, ptr %i.pi, align 8, !tbaa !36
  %i.pr = add nsw i32 %i.pq, 1
  store i32 %i.pr, ptr %i.pi, align 8, !tbaa !36
  %i.ps = getelementptr inbounds nuw i8, ptr %40, i64 2584
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !15
  %i.pu = getelementptr inbounds nuw i8, ptr %40, i64 2592
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !15
  %i.pw = icmp eq ptr %i.pt, %i.pv
  br i1 %i.pw, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit192, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.px = getelementptr inbounds nuw i8, ptr %40, i64 2608 ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !34
  %i.pz = add nsw i32 %i.py, -1                   ; 2 uses
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !34
  %i.qa = icmp eq i32 %i.pz, 2
  br i1 %i.qa, label %bb.at, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit192

bb.at:                                            ; preds = %bb.as
  %i.qb = getelementptr inbounds nuw i8, ptr %40, i64 2612
  store i32 48, ptr %i.qb, align 4, !tbaa !35
  %i.qc = getelementptr inbounds nuw i8, ptr %40, i64 2616
  store i64 %i.ph, ptr %i.qc, align 8, !tbaa !37
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit192

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit192: ; preds = %bb.ar, %bb.as, %bb.at, %bb.an
  %i.qd = getelementptr inbounds nuw i8, ptr %9, i64 416
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !148 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %9, i64 440
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !207
  %i.qh = ptrtoint ptr %i.qg to i64
  %i.qi = ptrtoint ptr %i.qe to i64
  %i.qj = sub i64 %i.qh, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qe, i64 %i.qj
  store ptr %i.qe, ptr %55, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %i.qk, ptr %i.ql, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %9, i64 456
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !148 ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %9, i64 480
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !207
  %i.qq = ptrtoint ptr %i.qp to i64
  %i.qr = ptrtoint ptr %i.qn to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = getelementptr inbounds i8, ptr %i.qn, i64 %i.qs
  store ptr %i.qn, ptr %56, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %i.qt, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  call void @_Z15compute_globalsP15gmx_global_statRKN3gmx7MpiCommEPK10t_inputrecP10t_forcerecP14gmx_ekindata_tNS1_8ArrayRefIKNS1_11BasicVectorIfEEEESG_PA3_KfPK9t_mdatomsP6t_nrnbP5t_vcmP13gmx_wallcycleP14gmx_enerdata_tPA3_fSW_SW_SW_PNS1_19SimulationSignallerESJ_PbilPNS1_18ObservablesReducerE(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %16, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %55, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %56, ptr noundef nonnull %i.qv, ptr noundef nonnull %10, ptr noundef %38, ptr noundef %13, ptr noundef %40, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %36, ptr noundef nonnull %i.qv, ptr noundef %31, i32 noundef 144, i64 noundef %0, ptr noundef %15)
  br i1 %i.d, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit208, label %bb.au

bb.au:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit192
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %40)
  %i.qw = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9 ; 2 uses
  %i.qx = extractvalue { i32, i32 } %i.qw, 0
  %i.qy = extractvalue { i32, i32 } %i.qw, 1
  %i.qz = zext i32 %i.qx to i64
  %i.ra = zext i32 %i.qy to i64
  %i.rb = shl nuw i64 %i.ra, 32
  %i.rc = or disjoint i64 %i.rb, %i.qz            ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %40, i64 1168
  store i64 %i.rc, ptr %i.rd, align 8, !tbaa !12
  %i.re = getelementptr inbounds nuw i8, ptr %40, i64 2584
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !15 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %40, i64 2592
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !15
  %i.ri = icmp eq ptr %i.rf, %i.rh
  br i1 %i.ri, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rj = getelementptr inbounds nuw i8, ptr %40, i64 2608 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !34
  %i.rl = add nsw i32 %i.rk, 1                    ; 2 uses
  store i32 %i.rl, ptr %i.rj, align 8, !tbaa !34
  %i.rm = icmp eq i32 %i.rl, 3
  br i1 %i.rm, label %bb.aw, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread.thread

bb.aw:                                            ; preds = %bb.av
  %i.rn = getelementptr inbounds nuw i8, ptr %40, i64 2612
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !35
  %i.rp = mul nsw i32 %i.ro, 60
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr [24 x i8], ptr %i.rf, i64 %i.rq ; 2 uses
  %i.rs = getelementptr i8, ptr %i.rr, i64 1152   ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !36
  %i.ru = add nsw i32 %i.rt, 1
  store i32 %i.ru, ptr %i.rs, align 8, !tbaa !36
  %i.rv = getelementptr inbounds nuw i8, ptr %40, i64 2616
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !37
  %i.rx = sub i64 %i.rc, %i.rw
  %i.ry = getelementptr i8, ptr %i.rr, i64 1160   ; 2 uses
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !38
  %i.sa = add i64 %i.rx, %i.rz
  store i64 %i.sa, ptr %i.ry, align 8, !tbaa !38
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread.thread

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197: ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit188
  %i.sb = load i32, ptr %i.aj, align 4, !tbaa !136
  %i.sc = icmp eq i32 %i.sb, 10
  br i1 %i.sc, label %bb.ax, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread

bb.ax:                                            ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197
  %i.sd = getelementptr inbounds nuw i8, ptr %9, i64 456
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !148 ; 8 uses
  %i.sf = load i32, ptr %9, align 8, !tbaa !250   ; 3 uses
  %i.sg = icmp sgt i32 %i.sf, 0
  br i1 %i.sg, label %.lr.ph.preheader.i198, label %_ZL10copy_rvecnPA3_KfPA3_fii.exit204

.lr.ph.preheader.i198:                            ; preds = %bb.ax
  %wide.trip.count.i199 = zext nneg i32 %i.sf to i64 ; 6 uses
  %min.iters.check248 = icmp ult i32 %i.sf, 8
  br i1 %min.iters.check248, label %.lr.ph.i200.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.preheader.i198
  %i.sh = mul nuw nsw i64 %wide.trip.count.i199, 12 ; 2 uses
  %scevgep242 = getelementptr i8, ptr %i.se, i64 %i.sh
  %scevgep243 = getelementptr i8, ptr %.0, i64 %i.sh
  %bound0244 = icmp ult ptr %i.se, %scevgep243
  %bound1245 = icmp ult ptr %.0, %scevgep242
  %found.conflict246 = and i1 %bound0244, %bound1245
  br i1 %found.conflict246, label %.lr.ph.i200.preheader, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck241
  %n.vec250 = and i64 %wide.trip.count.i199, 2147483640 ; 3 uses
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next258, %vector.body251 ] ; 3 uses
  %i.si = getelementptr inbounds nuw [12 x i8], ptr %.0, i64 %index252
  %wide.vec253 = load <24 x float>, ptr %i.si, align 4, !tbaa !149, !alias.scope !259
  %i.sj = getelementptr inbounds nuw [12 x i8], ptr %i.se, i64 %index252
  store <24 x float> %wide.vec253, ptr %i.sj, align 4, !tbaa !149, !alias.scope !260, !noalias !259
  %index.next258 = add nuw i64 %index252, 8       ; 2 uses
  %i.sk = icmp eq i64 %index.next258, %n.vec250
  br i1 %i.sk, label %middle.block259, label %vector.body251, !llvm.loop !224

middle.block259:                                  ; preds = %vector.body251
  %cmp.n260 = icmp eq i64 %n.vec250, %wide.trip.count.i199
  br i1 %cmp.n260, label %_ZL10copy_rvecnPA3_KfPA3_fii.exit204, label %.lr.ph.i200.preheader

.lr.ph.i200.preheader:                            ; preds = %vector.memcheck241, %.lr.ph.preheader.i198, %middle.block259
  %indvars.iv.i201.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %.lr.ph.preheader.i198 ], [ %n.vec250, %middle.block259 ] ; 3 uses
  %xtraiter262 = and i64 %wide.trip.count.i199, 3 ; 2 uses
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.lr.ph.i200.prol.loopexit, label %.lr.ph.i200.prol

.lr.ph.i200.prol:                                 ; preds = %.lr.ph.i200.preheader, %.lr.ph.i200.prol
  %indvars.iv.i201.prol = phi i64 [ %indvars.iv.next.i202.prol, %.lr.ph.i200.prol ], [ %indvars.iv.i201.ph, %.lr.ph.i200.preheader ] ; 3 uses
  %prol.iter264 = phi i64 [ %prol.iter264.next, %.lr.ph.i200.prol ], [ 0, %.lr.ph.i200.preheader ]
  %i.sl = getelementptr inbounds nuw [12 x i8], ptr %.0, i64 %indvars.iv.i201.prol ; 3 uses
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !149
  %i.sn = getelementptr inbounds nuw [12 x i8], ptr %i.se, i64 %indvars.iv.i201.prol ; 3 uses
  store float %i.sm, ptr %i.sn, align 4, !tbaa !149
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sp = load float, ptr %i.so, align 4, !tbaa !149
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  store float %i.sp, ptr %i.sq, align 4, !tbaa !149
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !149
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  store float %i.ss, ptr %i.st, align 4, !tbaa !149
  %indvars.iv.next.i202.prol = add nuw nsw i64 %indvars.iv.i201.prol, 1 ; 2 uses
  %prol.iter264.next = add i64 %prol.iter264, 1   ; 2 uses
  %prol.iter264.cmp.not = icmp eq i64 %prol.iter264.next, %xtraiter262
  br i1 %prol.iter264.cmp.not, label %.lr.ph.i200.prol.loopexit, label %.lr.ph.i200.prol, !llvm.loop !225

.lr.ph.i200.prol.loopexit:                        ; preds = %.lr.ph.i200.prol, %.lr.ph.i200.preheader
  %indvars.iv.i201.unr = phi i64 [ %indvars.iv.i201.ph, %.lr.ph.i200.preheader ], [ %indvars.iv.next.i202.prol, %.lr.ph.i200.prol ]
  %i.su = sub nsw i64 %indvars.iv.i201.ph, %wide.trip.count.i199
  %i.sv = icmp ugt i64 %i.su, -4
  br i1 %i.sv, label %_ZL10copy_rvecnPA3_KfPA3_fii.exit204, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %.lr.ph.i200.prol.loopexit, %.lr.ph.i200
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i202.3, %.lr.ph.i200 ], [ %indvars.iv.i201.unr, %.lr.ph.i200.prol.loopexit ] ; 6 uses
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %.0, i64 %indvars.iv.i201 ; 3 uses
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !149
  %i.sy = getelementptr inbounds nuw [12 x i8], ptr %i.se, i64 %indvars.iv.i201 ; 3 uses
  store float %i.sx, ptr %i.sy, align 4, !tbaa !149
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !149
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  store float %i.ta, ptr %i.tb, align 4, !tbaa !149
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.td = load float, ptr %i.tc, align 4, !tbaa !149
  %i.te = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store float %i.td, ptr %i.te, align 4, !tbaa !149
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %i.tf = getelementptr inbounds nuw [12 x i8], ptr %.0, i64 %indvars.iv.next.i202 ; 3 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !149
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.se, i64 %indvars.iv.next.i202 ; 3 uses
  store float %i.tg, ptr %i.th, align 4, !tbaa !149
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !149
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  store float %i.tj, ptr %i.tk, align 4, !tbaa !149
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !149
  %i.tn = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store float %i.tm, ptr %i.tn, align 4, !tbaa !149
  %indvars.iv.next.i202.1 = add nuw nsw i64 %indvars.iv.i201, 2 ; 2 uses
  %i.to = getelementptr inbounds nuw [12 x i8], ptr %.0, i64 %indvars.iv.next.i202.1 ; 3 uses
  %i.tp = load float, ptr %i.to, align 4, !tbaa !149
  %i.tq = getelementptr inbounds nuw [12 x i8], ptr %i.se, i64 %indvars.iv.next.i202.1 ; 3 uses
  store float %i.tp, ptr %i.tq, align 4, !tbaa !149
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !149
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store float %i.ts, ptr %i.tt, align 4, !tbaa !149
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !149
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store float %i.tv, ptr %i.tw, align 4, !tbaa !149
  %indvars.iv.next.i202.2 = add nuw nsw i64 %indvars.iv.i201, 3 ; 2 uses
  %i.tx = getelementptr inbounds nuw [12 x i8], ptr %.0, i64 %indvars.iv.next.i202.2 ; 3 uses
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !149
  %i.tz = getelementptr inbounds nuw [12 x i8], ptr %i.se, i64 %indvars.iv.next.i202.2 ; 3 uses
  store float %i.ty, ptr %i.tz, align 4, !tbaa !149
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 4
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !149
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store float %i.ub, ptr %i.uc, align 4, !tbaa !149
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !149
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store float %i.ue, ptr %i.uf, align 4, !tbaa !149
  %indvars.iv.next.i202.3 = add nuw nsw i64 %indvars.iv.i201, 4 ; 2 uses
  %exitcond.not.i203.3 = icmp eq i64 %indvars.iv.next.i202.3, %wide.trip.count.i199
  br i1 %exitcond.not.i203.3, label %_ZL10copy_rvecnPA3_KfPA3_fii.exit204, label %.lr.ph.i200, !llvm.loop !226

_ZL10copy_rvecnPA3_KfPA3_fii.exit204:             ; preds = %.lr.ph.i200.prol.loopexit, %.lr.ph.i200, %middle.block259, %bb.ax
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 309, ptr noundef %.0)
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread: ; preds = %bb.am, %bb.aj, %bb.ak, %bb.al, %_ZL10copy_rvecnPA3_KfPA3_fii.exit204, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197
  br i1 %i.d, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit208, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread.thread

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread.thread: ; preds = %bb.aw, %bb.av, %bb.au, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %40)
  %i.ug = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9 ; 2 uses
  %i.uh = extractvalue { i32, i32 } %i.ug, 0
  %i.ui = extractvalue { i32, i32 } %i.ug, 1
  %i.uj = zext i32 %i.uh to i64
  %i.uk = zext i32 %i.ui to i64
  %i.ul = shl nuw i64 %i.uk, 32
  %i.um = or disjoint i64 %i.ul, %i.uj            ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %40, i64 1152 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %40, i64 1168
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !12 ; 2 uses
  %.not.i205 = icmp ult i64 %i.um, %i.up
  br i1 %.not.i205, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread.thread
  %i.uq = sub nuw i64 %i.um, %i.up
  br label %bb.ba

bb.az:                                            ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread.thread
  %i.ur = getelementptr inbounds nuw i8, ptr %40, i64 2624
  store i8 1, ptr %i.ur, align 8, !tbaa !210
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i206 = phi i64 [ %i.uq, %bb.ay ], [ 0, %bb.az ]
  %i.us = getelementptr inbounds nuw i8, ptr %40, i64 1160 ; 2 uses
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !38
  %i.uu = add i64 %i.ut, %.0.i206
  store i64 %i.uu, ptr %i.us, align 8, !tbaa !38
  %i.uv = load i32, ptr %i.un, align 8, !tbaa !36
  %i.uw = add nsw i32 %i.uv, 1
  store i32 %i.uw, ptr %i.un, align 8, !tbaa !36
  %i.ux = getelementptr inbounds nuw i8, ptr %40, i64 2584
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !15
  %i.uz = getelementptr inbounds nuw i8, ptr %40, i64 2592
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !15
  %i.vb = icmp eq ptr %i.uy, %i.va
  br i1 %i.vb, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit208, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.vc = getelementptr inbounds nuw i8, ptr %40, i64 2608 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !34
  %i.ve = add nsw i32 %i.vd, -1                   ; 2 uses
  store i32 %i.ve, ptr %i.vc, align 8, !tbaa !34
  %i.vf = icmp eq i32 %i.ve, 2
  br i1 %i.vf, label %bb.bc, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit208

bb.bc:                                            ; preds = %bb.bb
  %i.vg = getelementptr inbounds nuw i8, ptr %40, i64 2612
  store i32 48, ptr %i.vg, align 4, !tbaa !35
  %i.vh = getelementptr inbounds nuw i8, ptr %40, i64 2616
  store i64 %i.um, ptr %i.vh, align 8, !tbaa !37
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit208

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit208: ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit192, %bb.ba, %bb.bb, %bb.bc, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit197.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit208
  %i.vi = getelementptr inbounds nuw i8, ptr %5, i64 204
  %i.vj = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !261
  %i.vl = getelementptr inbounds nuw i8, ptr %5, i64 744
  %i.vm = getelementptr inbounds nuw i8, ptr %5, i64 760
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !262 ; 3 uses
  %i.vo = load i32, ptr %i.vl, align 8, !tbaa !263
  %i.vp = sext i32 %i.vo to i64
  %.not.i209 = icmp eq ptr %i.vn, null
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.vp
  %spec.select.i = select i1 %.not.i209, ptr null, ptr %i.vq
  %i.vr = call noundef zeroext i1 @_Z18inputrecNvtTrotterPK10t_inputrec(ptr noundef %5)
  br i1 %i.vr, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vs = call noundef zeroext i1 @_Z18inputrecNptTrotterPK10t_inputrec(ptr noundef nonnull %5)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.vt = phi i1 [ true, %bb.bd ], [ %i.vs, %bb.be ]
  %i.vu = call noundef float @_Z10NPT_energyRK23PressureCouplingOptions19TemperatureCouplingN3gmx8ArrayRefIKfEERK14gmx_ekindata_tbPK7t_statePK9t_extmass(ptr noundef nonnull align 4 dereferenceable(92) %i.vi, i32 noundef %i.vk, ptr %i.vn, ptr %spec.select.i, ptr noundef nonnull align 8 dereferenceable(224) %16, i1 noundef zeroext %i.vt, ptr noundef %9, ptr noundef %12)
  store float %i.vu, ptr %32, align 4, !tbaa !149
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !136
  %i.vx = icmp eq i32 %i.vw, 10
  br i1 %i.vx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.vy = getelementptr inbounds nuw i8, ptr %14, i64 320
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !149
  store float %i.vz, ptr %18, align 4, !tbaa !149
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.wa = getelementptr inbounds nuw i8, ptr %5, i64 408
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !264
  switch i32 %i.wb, label %bb.bi [
    i32 1, label %bb.bj
    i32 3, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.wc = getelementptr inbounds nuw i8, ptr %14, i64 164
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !149
  %i.we = load float, ptr %32, align 4, !tbaa !149
  %i.wf = fsub float %i.we, %i.wd
  store float %i.wf, ptr %32, align 4, !tbaa !149
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bh, %bb.bi
  %i.wg = getelementptr inbounds nuw i8, ptr %5, i64 420
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !265
  %.not174 = icmp eq i32 %i.wh, 0
  br i1 %.not174, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wi = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.wj = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.wk = getelementptr inbounds nuw i8, ptr %5, i64 424
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !266
  call void @_Z33accumulateKineticLambdaComponentsP14gmx_enerdata_tN3gmx8ArrayRefIKfEERK8t_lambda(ptr noundef %14, ptr nonnull %i.wi, ptr nonnull %i.wj, ptr noundef nonnull align 8 dereferenceable(288) %i.wl)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  ret void

.rtvec:                                           ; preds = %bb.ai
  %i.wm = getelementptr inbounds nuw i8, ptr %9, i64 196
  %i.wn = load <8 x float>, ptr %21, align 4, !tbaa !149
  store <8 x float> %i.wn, ptr %i.wm, align 4, !tbaa !149
  %i.wo = load float, ptr %i.nj, align 4, !tbaa !149
  %i.wp = getelementptr inbounds nuw i8, ptr %9, i64 228
  store float %i.wo, ptr %i.wp, align 4, !tbaa !149
  %i.wq = getelementptr inbounds nuw i8, ptr %9, i64 232
  %i.wr = load float, ptr %22, align 4, !tbaa !149
  store float %i.wr, ptr %i.wq, align 4, !tbaa !149
  %i.ws = load float, ptr %i.lr, align 4, !tbaa !149
  %i.wt = getelementptr inbounds nuw i8, ptr %9, i64 236
  store float %i.ws, ptr %i.wt, align 4, !tbaa !149
  %i.wu = load float, ptr %i.lx, align 4, !tbaa !149
  %i.wv = getelementptr inbounds nuw i8, ptr %9, i64 240
  store float %i.wu, ptr %i.wv, align 4, !tbaa !149
  %i.ww = getelementptr inbounds nuw i8, ptr %9, i64 244
  %i.wx = load float, ptr %i.md, align 4, !tbaa !149
  store float %i.wx, ptr %i.ww, align 4, !tbaa !149
  %i.wy = load float, ptr %i.mj, align 4, !tbaa !149
  %i.wz = getelementptr inbounds nuw i8, ptr %9, i64 248
  store float %i.wy, ptr %i.wz, align 4, !tbaa !149
  %i.xa = load float, ptr %i.mp, align 4, !tbaa !149
  %i.xb = getelementptr inbounds nuw i8, ptr %9, i64 252
  store float %i.xa, ptr %i.xb, align 4, !tbaa !149
  %i.xc = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.xd = load float, ptr %i.mv, align 4, !tbaa !149
  store float %i.xd, ptr %i.xc, align 4, !tbaa !149
  %i.xe = load float, ptr %i.nb, align 4, !tbaa !149
  %i.xf = getelementptr inbounds nuw i8, ptr %9, i64 260
  store float %i.xe, ptr %i.xf, align 4, !tbaa !149
  %i.xg = load float, ptr %i.nh, align 4, !tbaa !149
  %i.xh = getelementptr inbounds nuw i8, ptr %9, i64 264
  store float %i.xg, ptr %i.xh, align 4, !tbaa !149
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.ai
  %i.xi = getelementptr inbounds nuw i8, ptr %9, i64 196
  %i.xj = load float, ptr %21, align 4, !tbaa !149
  store float %i.xj, ptr %i.xi, align 4, !tbaa !149
  %i.xk = load float, ptr %i.lt, align 4, !tbaa !149
  %i.xl = getelementptr inbounds nuw i8, ptr %9, i64 200
  store float %i.xk, ptr %i.xl, align 4, !tbaa !149
  %i.xm = load float, ptr %i.lz, align 4, !tbaa !149
  %i.xn = getelementptr inbounds nuw i8, ptr %9, i64 204
  store float %i.xm, ptr %i.xn, align 4, !tbaa !149
  %i.xo = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.xp = load float, ptr %i.mf, align 4, !tbaa !149
  store float %i.xp, ptr %i.xo, align 4, !tbaa !149
  %i.xq = load float, ptr %i.ml, align 4, !tbaa !149
  %i.xr = getelementptr inbounds nuw i8, ptr %9, i64 212
  store float %i.xq, ptr %i.xr, align 4, !tbaa !149
  %i.xs = load float, ptr %i.mr, align 4, !tbaa !149
  %i.xt = getelementptr inbounds nuw i8, ptr %9, i64 216
  store float %i.xs, ptr %i.xt, align 4, !tbaa !149
  %i.xu = getelementptr inbounds nuw i8, ptr %9, i64 220
  %i.xv = load float, ptr %i.mx, align 4, !tbaa !149
  store float %i.xv, ptr %i.xu, align 4, !tbaa !149
  %i.xw = load float, ptr %i.nd, align 4, !tbaa !149
  %i.xx = getelementptr inbounds nuw i8, ptr %9, i64 224
  store float %i.xw, ptr %i.xx, align 4, !tbaa !149
  %i.xy = load float, ptr %i.nj, align 4, !tbaa !149
  %i.xz = getelementptr inbounds nuw i8, ptr %9, i64 228
  store float %i.xy, ptr %i.xz, align 4, !tbaa !149
  %i.ya = getelementptr inbounds nuw i8, ptr %9, i64 232
  %i.yb = load float, ptr %22, align 4, !tbaa !149
  store float %i.yb, ptr %i.ya, align 4, !tbaa !149
  %i.yc = load float, ptr %i.lr, align 4, !tbaa !149
  %i.yd = getelementptr inbounds nuw i8, ptr %9, i64 236
  store float %i.yc, ptr %i.yd, align 4, !tbaa !149
  %i.ye = load float, ptr %i.lx, align 4, !tbaa !149
  %i.yf = getelementptr inbounds nuw i8, ptr %9, i64 240
  store float %i.ye, ptr %i.yf, align 4, !tbaa !149
  %i.yg = getelementptr inbounds nuw i8, ptr %9, i64 244
  %i.yh = load float, ptr %i.md, align 4, !tbaa !149
  store float %i.yh, ptr %i.yg, align 4, !tbaa !149
  %i.yi = load float, ptr %i.mj, align 4, !tbaa !149
  %i.yj = getelementptr inbounds nuw i8, ptr %9, i64 248
  store float %i.yi, ptr %i.yj, align 4, !tbaa !149
  %i.yk = load float, ptr %i.mp, align 4, !tbaa !149
  %i.yl = getelementptr inbounds nuw i8, ptr %9, i64 252
  store float %i.yk, ptr %i.yl, align 4, !tbaa !149
  %i.ym = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.yn = load float, ptr %i.mv, align 4, !tbaa !149
  store float %i.yn, ptr %i.ym, align 4, !tbaa !149
  %i.yo = load float, ptr %i.nb, align 4, !tbaa !149
  %i.yp = getelementptr inbounds nuw i8, ptr %9, i64 260
  store float %i.yo, ptr %i.yp, align 4, !tbaa !149
  %i.yq = load float, ptr %i.nh, align 4, !tbaa !149
  %i.yr = getelementptr inbounds nuw i8, ptr %9, i64 264
  store float %i.yq, ptr %i.yr, align 4, !tbaa !149
  br label %.rtcont
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z14trotter_updatePK10t_inputreclP14gmx_ekindata_tP7t_statePA3_KfiN3gmx8ArrayRefIKtEENSA_IS6_EEPK9t_extmassNSA_ISt6vectorIiSaIiEEEE15TrotterSequence(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%"class.gmx::ArrayRef") align 8, ptr noundef byval(%"class.gmx::ArrayRef.84") align 8, ptr noundef, ptr noundef byval(%"class.gmx::ArrayRef.87") align 8, i32 noundef) local_unnamed_addr #2

declare void @_ZN3gmx6Update13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS4_IKfEENS4_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISC_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(888), i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef byval(%"class.gmx::ArrayRef.113") align 8, ptr noundef byval(%"class.gmx::ArrayRef.84") align 8, ptr noundef byval(%"class.gmx::ArrayRef.116") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3gmx20constrain_velocitiesEPNS_11ConstraintsEblP7t_statePfbPA3_f(ptr noundef, i1 noundef zeroext, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @_Z15compute_globalsP15gmx_global_statRKN3gmx7MpiCommEPK10t_inputrecP10t_forcerecP14gmx_ekindata_tNS1_8ArrayRefIKNS1_11BasicVectorIfEEEESG_PA3_KfPK9t_mdatomsP6t_nrnbP5t_vcmP13gmx_wallcycleP14gmx_enerdata_tPA3_fSW_SW_SW_PNS1_19SimulationSignallerESJ_PbilPNS1_18ObservablesReducerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"class.gmx::ArrayRef.116") align 8, ptr noundef byval(%"class.gmx::ArrayRef.116") align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z22process_and_stopcm_grpP8_IO_FILEP5t_vcmRK9t_mdatomsN3gmx8ArrayRefINS6_11BasicVectorIfEEEESA_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(648), ptr, ptr, ptr noundef byval(%"class.gmx::ArrayRef.136") align 8) local_unnamed_addr #2

declare noundef zeroext i1 @_Z18inputrecNptTrotterPK10t_inputrec(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_Z18inputrecNphTrotterPK10t_inputrec(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_Z18inputrecNvtTrotterPK10t_inputrec(ptr noundef) local_unnamed_addr #2

declare noundef float @_Z8sum_ekinPK9t_grpoptsP14gmx_ekindata_tPfbb(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef float @_Z10NPT_energyRK23PressureCouplingOptions19TemperatureCouplingN3gmx8ArrayRefIKfEERK14gmx_ekindata_tbPK7t_statePK9t_extmass(ptr noundef nonnull align 4 dereferenceable(92), i32 noundef, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(224), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z33accumulateKineticLambdaComponentsP14gmx_enerdata_tN3gmx8ArrayRefIKfEERK8t_lambda(ptr noundef, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(288)) local_unnamed_addr #2

declare void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z21integrateVVSecondSteplPK10t_inputrecP10t_forcerecRKN3gmx7MpiCommEPK12gmx_domdec_tP7t_stateP9t_mdatomsP8t_fcdataP9t_extmassP5t_vcmP6pull_tP14gmx_enerdata_tPNS4_18ObservablesReducerEP14gmx_ekindata_tP15gmx_global_statPfbPA3_fSX_SX_SX_SX_bbbPbPNS4_12ForceBuffersEPSt6vectorINS4_11BasicVectorIfEESaIS13_EEPNS4_6UpdateEPNS4_11ConstraintsEPNS4_19SimulationSignallerENS4_16EnumerationArrayI15TrotterSequenceS11_IiSaIiEELS1E_5EEEP6t_nrnbP13gmx_wallcycle(i64 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i1 noundef zeroext %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, i1 noundef zeroext %22, i1 noundef zeroext %23, i1 noundef zeroext %24, ptr noundef %25, ptr nofree noundef readonly captures(none) %26, ptr noundef %27, ptr noundef nonnull %28, ptr noundef %29, ptr noundef %30, ptr noundef align 8 %31, ptr noundef %32, ptr noundef %33) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %34 = alloca %"class.gmx::BasicMatrix3x3", align 8 ; 8 uses
  %35 = alloca %"class.gmx::ArrayRef.113", align 8 ; 3 uses
  %36 = alloca %"class.gmx::ArrayRef.84", align 8 ; 3 uses
  %37 = alloca %"class.gmx::ArrayRef.116", align 8 ; 3 uses
  %38 = alloca %"class.gmx::ArrayRefWithPadding", align 16 ; 5 uses
  %39 = alloca %"class.std::optional", align 8    ; 4 uses
  %40 = alloca %"class.gmx::ArrayRef.113", align 8 ; 3 uses
  %41 = alloca %"class.gmx::ArrayRef.84", align 8 ; 3 uses
  %42 = alloca %"class.gmx::ArrayRef.116", align 8 ; 3 uses
  %43 = alloca %"class.gmx::ArrayRefWithPadding", align 16 ; 5 uses
  %44 = alloca %"class.gmx::ArrayRefWithPadding.127", align 8 ; 4 uses
  %45 = alloca %"class.gmx::ArrayRef.113", align 8 ; 3 uses
  %46 = alloca %"class.gmx::ArrayRef.84", align 8 ; 3 uses
  %47 = alloca %"class.gmx::ArrayRef.116", align 8 ; 3 uses
  %48 = alloca %"class.gmx::ArrayRef.116", align 8 ; 3 uses
  %49 = alloca %"class.gmx::ArrayRef", align 8    ; 3 uses
  %50 = alloca %"class.gmx::ArrayRef.84", align 8 ; 3 uses
  %51 = alloca %"class.gmx::ArrayRef.87", align 8 ; 3 uses
  %52 = alloca %"class.gmx::ArrayRef.113", align 8 ; 3 uses
  %53 = alloca %"class.gmx::ArrayRef.84", align 8 ; 3 uses
  %54 = alloca %"class.gmx::ArrayRef.116", align 8 ; 3 uses
  %55 = alloca %"class.gmx::ArrayRefWithPadding", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %34, i8 0, i64 36, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %34, i64 48
  store ptr %34, ptr %i.a, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 640 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 5 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !194, !range !195, !noundef !196
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 424 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197  ; 3 uses
  store ptr %i.h, ptr %35, align 8, !tbaa !199
  %i.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 432 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !200
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  store ptr %i.o, ptr %i.i, align 8, !tbaa !199
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !179  ; 3 uses
  store ptr %i.q, ptr %36, align 8, !tbaa !181
  %i.r = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !182
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 %i.w
  store ptr %i.x, ptr %i.r, align 8, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !201  ; 3 uses
  store ptr %i.z, ptr %37, align 8, !tbaa !203
  %i.aa = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !204
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !206, !noalias !275
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !207, !noalias !275
  store <2 x ptr> %i.ak, ptr %38, align 16, !tbaa !207
  %i.al = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.aj, ptr %i.al, align 16, !tbaa !209
  %i.am = icmp ne ptr %29, null                   ; 4 uses
  call void @_ZN3gmx6Update13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS4_IKfEENS4_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISC_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(888) %1, i64 noundef %0, i32 noundef %i.c, i1 noundef zeroext %i.f, ptr noundef nonnull byval(%"class.gmx::ArrayRef.113") align 8 %35, ptr noundef nonnull byval(%"class.gmx::ArrayRef.84") align 8 %36, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %37, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef %7, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(56) %34, i32 noundef 8, ptr noundef %4, i1 noundef zeroext %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #10
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !136
  %i.ap = icmp eq i32 %i.ao, 11
  br i1 %i.ap, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IS5_S6_IS4_SaIS4_EEEEET0_T_SG_SF_.exit

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 440 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !207
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 416 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !207
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 12
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %i.ax)
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !207 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aq, align 8, !tbaa !207
  %i.az = load ptr, ptr %27, align 8, !tbaa !207  ; 2 uses
  %i.ba = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 12
  br i1 %i.bd, label %bb.c, label %bb.d, !prof !276

bb.c:                                             ; preds = %bb.b
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.az, ptr align 4 %i.ay, i64 %i.bc, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IS5_S6_IS4_SaIS4_EEEEET0_T_SG_SF_.exit

bb.d:                                             ; preds = %bb.b
  %i.be = icmp eq i64 %i.bc, 12
  br i1 %i.be, label %bb.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IS5_S6_IS4_SaIS4_EEEEET0_T_SG_SF_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %i.ay, i64 12, i1 false), !tbaa.struct !212
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IS5_S6_IS4_SaIS4_EEEEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IS5_S6_IS4_SaIS4_EEEEET0_T_SG_SF_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !277, !range !195, !noundef !196
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IS5_S6_IS4_SaIS4_EEEEET0_T_SG_SF_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !278
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 19
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !290, !range !195, !noundef !196
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 816
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !291 ; 3 uses
  store ptr %i.bo, ptr %39, align 8, !tbaa !293
  %i.bp = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 824
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !294
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bu
  store ptr %i.bv, ptr %i.bp, align 8, !tbaa !293
  %i.bw = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i8 1, ptr %i.bw, align 8, !tbaa !296
  call void @_Z21updatePrevStepPullComP6pull_tSt8optionalIN3gmx8ArrayRefIdEEE(ptr noundef %10, ptr noundef nonnull byval(%"class.std::optional") align 8 %39)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEENS1_IS5_S6_IS4_SaIS4_EEEEET0_T_SG_SF_.exit
  %i.bx = load i32, ptr %i.b, align 8, !tbaa !174
  %i.by = load i8, ptr %i.d, align 2, !tbaa !194, !range !195, !noundef !196
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !197 ; 3 uses
  store ptr %i.ca, ptr %40, align 8, !tbaa !199
  %i.cb = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !200
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !199
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !179 ; 3 uses
  store ptr %i.ch, ptr %41, align 8, !tbaa !181
  %i.ci = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.cj = load ptr, ptr %i.s, align 8, !tbaa !182
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.ch, i64 %i.cm
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !181
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !201 ; 3 uses
  store ptr %i.co, ptr %42, align 8, !tbaa !203
  %i.cp = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !204
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ct
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #10
  %i.cv = load ptr, ptr %i.ai, align 8, !tbaa !206, !noalias !297
  %i.cw = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !207, !noalias !297
  store <2 x ptr> %i.cw, ptr %43, align 16, !tbaa !207
  %i.cx = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %i.cv, ptr %i.cx, align 16, !tbaa !209
  call void @_ZN3gmx6Update13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS4_IKfEENS4_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISC_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(888) %1, i64 noundef %0, i32 noundef %i.bx, i1 noundef zeroext %i.bz, ptr noundef nonnull byval(%"class.gmx::ArrayRef.113") align 8 %40, ptr noundef nonnull byval(%"class.gmx::ArrayRef.84") align 8 %41, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %42, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef %7, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(56) %34, i32 noundef 9, ptr noundef %4, i1 noundef zeroext %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #10
  %i.cy = icmp eq ptr %33, null                   ; 3 uses
  br i1 %i.cy, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %33)
  %i.cz = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9 ; 2 uses
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = extractvalue { i32, i32 } %i.cz, 1
  %i.dc = zext i32 %i.da to i64
  %i.dd = zext i32 %i.db to i64
  %i.de = shl nuw i64 %i.dd, 32
  %i.df = or disjoint i64 %i.de, %i.dc            ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %33, i64 1152 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %33, i64 1168
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp ult i64 %i.df, %i.di
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dj = sub nuw i64 %i.df, %i.di
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %33, i64 2624
  store i8 1, ptr %i.dk, align 8, !tbaa !210
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i = phi i64 [ %i.dj, %bb.j ], [ 0, %bb.k ]
  %i.dl = getelementptr inbounds nuw i8, ptr %33, i64 1160 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, %.0.i
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !38
  %i.do = load i32, ptr %i.dg, align 8, !tbaa !36
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dg, align 8, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %33, i64 2584
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %33, i64 2592
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !15
  %i.du = icmp eq ptr %i.dr, %i.dt
  br i1 %i.du, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %33, i64 2608 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !34
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !34
  %i.dy = icmp eq i32 %i.dx, 2
  br i1 %i.dy, label %bb.n, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

bb.n:                                             ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %33, i64 2612
  store i32 48, ptr %i.dz, align 4, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %33, i64 2616
  store i64 %i.df, ptr %i.ea, align 8, !tbaa !37
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.h
  %i.eb = or i1 %22, %23
  %i.ec = call noundef ptr @_ZN3gmx6Update2xpEv(ptr noundef nonnull align 8 dereferenceable(8) %28) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !300, !noalias !298 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !207, !noalias !298
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ed, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !301, !noalias !298
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.eh
  %i.eo = getelementptr inbounds i8, ptr %i.ed, i64 %i.en
  store ptr %i.ed, ptr %44, align 8, !tbaa !302, !alias.scope !298
  %i.ep = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !303, !alias.scope !298
  %i.eq = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !206, !alias.scope !298
  call void @_ZN3gmx21constrain_coordinatesEPNS_11ConstraintsEblP7t_stateNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEEPfbPA3_f(ptr noundef %29, i1 noundef zeroext %i.eb, i64 noundef %0, ptr noundef %5, ptr noundef nonnull align 8 dead_on_return %44, ptr noundef %15, i1 noundef zeroext %16, ptr noundef %18)
  %i.er = load i32, ptr %i.b, align 8, !tbaa !174
  %i.es = load ptr, ptr %i.g, align 8, !tbaa !197 ; 3 uses
  store ptr %i.es, ptr %45, align 8, !tbaa !199
  %i.et = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.eu = load ptr, ptr %i.j, align 8, !tbaa !200
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ex
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !199
  %i.ez = load ptr, ptr %i.p, align 8, !tbaa !179 ; 3 uses
  store ptr %i.ez, ptr %46, align 8, !tbaa !181
  %i.fa = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.fb = load ptr, ptr %i.s, align 8, !tbaa !182
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %i.ez, i64 %i.fe
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !181
  call void @_ZN3gmx6Update21update_sd_second_halfERK10t_inputreclPfiNS_8ArrayRefIK12ParticleTypeEENS5_IKfEEP7t_statePK12gmx_domdec_tP6t_nrnbP13gmx_wallcyclePNS_11ConstraintsEbb(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(888) %1, i64 noundef %0, ptr noundef %15, i32 noundef %i.er, ptr noundef nonnull byval(%"class.gmx::ArrayRef.113") align 8 %45, ptr noundef nonnull byval(%"class.gmx::ArrayRef.84") align 8 %46, ptr noundef %5, ptr noundef %4, ptr noundef %32, ptr noundef %33, ptr noundef %29, i1 noundef zeroext %22, i1 noundef zeroext %23)
  %i.fg = load i8, ptr %i.d, align 2, !tbaa !194, !range !195, !noundef !196
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = load i32, ptr %i.b, align 8, !tbaa !174
  call void @_ZN3gmx6Update13finish_updateERK10t_inputrecbiP7t_stateP13gmx_wallcycleb(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(888) %1, i1 noundef zeroext %i.fh, i32 noundef %i.fi, ptr noundef %5, ptr noundef %33, i1 noundef zeroext %i.am)
  %i.fj = load i32, ptr %i.an, align 4, !tbaa !136
  %i.fk = icmp eq i32 %i.fj, 11
  br i1 %i.fk, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 416 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !148 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 440
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !207
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %i.fm, i64 %i.fr
  store ptr %i.fm, ptr %47, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %i.fs, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 456
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !148 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 480
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !207
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = getelementptr inbounds i8, ptr %i.fv, i64 %i.ga
  store ptr %i.fv, ptr %48, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %i.gb, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.ge = select i1 %24, i32 144, i32 128
  call void @_Z15compute_globalsP15gmx_global_statRKN3gmx7MpiCommEPK10t_inputrecP10t_forcerecP14gmx_ekindata_tNS1_8ArrayRefIKNS1_11BasicVectorIfEEEESG_PA3_KfPK9t_mdatomsP6t_nrnbP5t_vcmP13gmx_wallcycleP14gmx_enerdata_tPA3_fSW_SW_SW_PNS1_19SimulationSignallerESJ_PbilPNS1_18ObservablesReducerE(ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %13, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %47, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %48, ptr noundef nonnull %i.gd, ptr noundef nonnull %6, ptr noundef %32, ptr noundef %9, ptr noundef %33, ptr noundef %11, ptr noundef %19, ptr noundef %18, ptr noundef %17, ptr noundef %20, ptr noundef %30, ptr noundef %21, ptr noundef %25, i32 noundef %i.ge, i64 noundef %0, ptr noundef %12)
  br i1 %i.cy, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %33)
  %i.gf = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9 ; 2 uses
  %i.gg = extractvalue { i32, i32 } %i.gf, 0
  %i.gh = extractvalue { i32, i32 } %i.gf, 1
  %i.gi = zext i32 %i.gg to i64
  %i.gj = zext i32 %i.gh to i64
  %i.gk = shl nuw i64 %i.gj, 32
  %i.gl = or disjoint i64 %i.gk, %i.gi            ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %33, i64 1168
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %33, i64 2584
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !15 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %33, i64 2592
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !15
  %i.gr = icmp eq ptr %i.go, %i.gq
  br i1 %i.gr, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gs = getelementptr inbounds nuw i8, ptr %33, i64 2608 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !34
  %i.gu = add nsw i32 %i.gt, 1                    ; 2 uses
  store i32 %i.gu, ptr %i.gs, align 8, !tbaa !34
  %i.gv = icmp eq i32 %i.gu, 3
  br i1 %i.gv, label %bb.r, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit

bb.r:                                             ; preds = %bb.q
  %i.gw = getelementptr inbounds nuw i8, ptr %33, i64 2612
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !35
  %i.gy = mul nsw i32 %i.gx, 60
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr [24 x i8], ptr %i.go, i64 %i.gz ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 1152   ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !36
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 8, !tbaa !36
  %i.he = getelementptr inbounds nuw i8, ptr %33, i64 2616
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !37
  %i.hg = sub i64 %i.gl, %i.hf
  %i.hh = getelementptr i8, ptr %i.ha, i64 1160   ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !38
  %i.hj = add i64 %i.hg, %i.hi
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !38
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %i.hk = load i32, ptr %i.b, align 8, !tbaa !174
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 448
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !175 ; 3 uses
  store ptr %i.hm, ptr %49, align 8, !tbaa !177
  %i.hn = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 456
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !178
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hm to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hs
  store ptr %i.ht, ptr %i.hn, align 8, !tbaa !177
  %i.hu = load ptr, ptr %i.p, align 8, !tbaa !179 ; 3 uses
  store ptr %i.hu, ptr %50, align 8, !tbaa !181
  %i.hv = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.hw = load ptr, ptr %i.s, align 8, !tbaa !182
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = getelementptr inbounds i8, ptr %i.hu, i64 %i.hz
  store ptr %i.ia, ptr %i.hv, align 8, !tbaa !181
  store ptr %31, ptr %51, align 8, !tbaa !185
  %i.ib = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %31, i64 120
  store ptr %i.ic, ptr %i.ib, align 8, !tbaa !185
  call void @_Z14trotter_updatePK10t_inputreclP14gmx_ekindata_tP7t_statePA3_KfiN3gmx8ArrayRefIKtEENSA_IS6_EEPK9t_extmassNSA_ISt6vectorIiSaIiEEEE15TrotterSequence(ptr noundef nonnull %1, i64 noundef %0, ptr noundef %13, ptr noundef nonnull %5, ptr noundef %17, i32 noundef %i.hk, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %49, ptr noundef nonnull byval(%"class.gmx::ArrayRef.84") align 8 %50, ptr noundef %8, ptr noundef nonnull byval(%"class.gmx::ArrayRef.87") align 8 %51, i32 noundef 4)
  %i.id = load ptr, ptr %27, align 8, !tbaa !207  ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !207
  %i.ig = load ptr, ptr %i.fl, align 8, !tbaa !207 ; 2 uses
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.id to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 3 uses
  %i.ik = icmp sgt i64 %i.ij, 12
  br i1 %i.ik, label %bb.s, label %bb.t, !prof !276

bb.s:                                             ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ig, ptr align 4 %i.id, i64 %i.ij, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_SaIS4_EEEENS1_IS5_S6_IS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit

bb.t:                                             ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit
  %i.il = icmp eq i64 %i.ij, 12
  br i1 %i.il, label %bb.u, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_SaIS4_EEEENS1_IS5_S6_IS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ig, ptr noundef nonnull align 4 dereferenceable(12) %i.id, i64 12, i1 false), !tbaa.struct !212
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_SaIS4_EEEENS1_IS5_S6_IS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_SaIS4_EEEENS1_IS5_S6_IS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.im = load i32, ptr %i.b, align 8, !tbaa !174
  %i.in = load i8, ptr %i.d, align 2, !tbaa !194, !range !195, !noundef !196
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = load ptr, ptr %i.g, align 8, !tbaa !197 ; 3 uses
  store ptr %i.ip, ptr %52, align 8, !tbaa !199
  %i.iq = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.ir = load ptr, ptr %i.j, align 8, !tbaa !200
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.ip to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iu
  store ptr %i.iv, ptr %i.iq, align 8, !tbaa !199
  %i.iw = load ptr, ptr %i.p, align 8, !tbaa !179 ; 3 uses
  store ptr %i.iw, ptr %53, align 8, !tbaa !181
  %i.ix = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.iy = load ptr, ptr %i.s, align 8, !tbaa !182
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.iw to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.iw, i64 %i.jb
  store ptr %i.jc, ptr %i.ix, align 8, !tbaa !181
  %i.jd = load ptr, ptr %i.y, align 8, !tbaa !201 ; 3 uses
  store ptr %i.jd, ptr %54, align 8, !tbaa !203
  %i.je = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.jf = load ptr, ptr %i.ab, align 8, !tbaa !204
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.jd to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ji
  store ptr %i.jj, ptr %i.je, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #10
  %i.jk = load ptr, ptr %i.ai, align 8, !tbaa !206, !noalias !304
  %i.jl = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !207, !noalias !304
  store <2 x ptr> %i.jl, ptr %55, align 16, !tbaa !207
  %i.jm = getelementptr inbounds nuw i8, ptr %55, i64 16
  store ptr %i.jk, ptr %i.jm, align 16, !tbaa !209
  call void @_ZN3gmx6Update13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS4_IKfEENS4_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISC_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(888) %1, i64 noundef %0, i32 noundef %i.im, i1 noundef zeroext %i.io, ptr noundef nonnull byval(%"class.gmx::ArrayRef.113") align 8 %52, ptr noundef nonnull byval(%"class.gmx::ArrayRef.84") align 8 %53, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %54, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef %7, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(56) %34, i32 noundef 9, ptr noundef %4, i1 noundef zeroext %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #10
  br i1 %i.cy, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit140, label %bb.v

bb.v:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_SaIS4_EEEENS1_IS5_S6_IS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %33)
  %i.jn = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9 ; 2 uses
  %i.jo = extractvalue { i32, i32 } %i.jn, 0
  %i.jp = extractvalue { i32, i32 } %i.jn, 1
  %i.jq = zext i32 %i.jo to i64
  %i.jr = zext i32 %i.jp to i64
  %i.js = shl nuw i64 %i.jr, 32
  %i.jt = or disjoint i64 %i.js, %i.jq            ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %33, i64 1152 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %33, i64 1168
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !12 ; 2 uses
  %.not.i137 = icmp ult i64 %i.jt, %i.jw
  br i1 %.not.i137, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jx = sub nuw i64 %i.jt, %i.jw
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.jy = getelementptr inbounds nuw i8, ptr %33, i64 2624
  store i8 1, ptr %i.jy, align 8, !tbaa !210
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i138 = phi i64 [ %i.jx, %bb.w ], [ 0, %bb.x ]
  %i.jz = getelementptr inbounds nuw i8, ptr %33, i64 1160 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !38
  %i.kb = add i64 %i.ka, %.0.i138
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !38
  %i.kc = load i32, ptr %i.ju, align 8, !tbaa !36
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.ju, align 8, !tbaa !36
  %i.ke = getelementptr inbounds nuw i8, ptr %33, i64 2584
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !15
  %i.kg = getelementptr inbounds nuw i8, ptr %33, i64 2592
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !15
  %i.ki = icmp eq ptr %i.kf, %i.kh
  br i1 %i.ki, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit140, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kj = getelementptr inbounds nuw i8, ptr %33, i64 2608 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !34
  %i.kl = add nsw i32 %i.kk, -1                   ; 2 uses
  store i32 %i.kl, ptr %i.kj, align 8, !tbaa !34
  %i.km = icmp eq i32 %i.kl, 2
  br i1 %i.km, label %bb.aa, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit140

bb.aa:                                            ; preds = %bb.z
  %i.kn = getelementptr inbounds nuw i8, ptr %33, i64 2612
  store i32 48, ptr %i.kn, align 4, !tbaa !35
  %i.ko = getelementptr inbounds nuw i8, ptr %33, i64 2616
  store i64 %i.jt, ptr %i.ko, align 8, !tbaa !37
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit140

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit140: ; preds = %bb.y, %bb.z, %bb.aa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_SaIS4_EEEENS1_IS5_S6_IS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit
  %i.kp = load i8, ptr %i.d, align 2, !tbaa !194, !range !195, !noundef !196
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = load i32, ptr %i.b, align 8, !tbaa !174
  call void @_ZN3gmx6Update13finish_updateERK10t_inputrecbiP7t_stateP13gmx_wallcycleb(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(888) %1, i1 noundef zeroext %i.kq, i32 noundef %i.kr, ptr noundef nonnull %5, ptr noundef %33, i1 noundef zeroext false)
  br label %bb.ab

bb.ab:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit140, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit
  %i.ks = load float, ptr %15, align 4, !tbaa !149
  %i.kt = getelementptr inbounds nuw i8, ptr %11, i64 348 ; 2 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !149
  %i.kv = call float @llvm.fmuladd.f32(float %i.ks, float 2.000000e+00, float %i.ku)
  store float %i.kv, ptr %i.kt, align 4, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !201    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !309
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 768614336404564650, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !204
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 768614336404564650
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #11
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #12 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !212, !alias.scope !310
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !308

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !309
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #13
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !201
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !309
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !204
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

declare void @_Z21updatePrevStepPullComP6pull_tSt8optionalIN3gmx8ArrayRefIdEEE(ptr noundef, ptr noundef byval(%"class.std::optional") align 8) local_unnamed_addr #2

declare void @_ZN3gmx21constrain_coordinatesEPNS_11ConstraintsEblP7t_stateNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEEPfbPA3_f(ptr noundef, i1 noundef zeroext, i64 noundef, ptr noundef, ptr noundef align 8 dead_on_return, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3gmx6Update2xpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN3gmx6Update21update_sd_second_halfERK10t_inputreclPfiNS_8ArrayRefIK12ParticleTypeEENS5_IKfEEP7t_statePK12gmx_domdec_tP6t_nrnbP13gmx_wallcyclePNS_11ConstraintsEbb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(888), i64 noundef, ptr noundef, i32 noundef, ptr noundef byval(%"class.gmx::ArrayRef.113") align 8, ptr noundef byval(%"class.gmx::ArrayRef.84") align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN3gmx6Update13finish_updateERK10t_inputrecbiP7t_stateP13gmx_wallcycleb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(888), i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{i64 4878673}
!10 = !{!"long long", !5, i64 0}
!11 = !{!"_ZTS8wallcc_t", !6, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 16}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS8wallcc_t", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSN3gmx16EnumerationArrayI16WallCycleCounter8wallcc_tLS1_60EEE", !5, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_ZTSN3gmx16EnumerationArrayI19WallCycleSubCounter8wallcc_tLS1_46EEE", !5, i64 0}
!19 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !22, i64 0}
!24 = !{!"p1 _ZTS9t_commrec", !13, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseI8wallcc_tSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseI8wallcc_tSaIS0_EE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseI8wallcc_tSaIS0_EE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorI8wallcc_tSaIS0_EE", !27, i64 0}
!29 = !{!"_ZTS16WallCycleCounter", !5, i64 0}
!30 = !{!"bool", !5, i64 0}
!31 = !{!"_ZTSNSt14__array_traitsI16WallCycleCounterLm0EE5_TypeE"}
!32 = !{!"_ZTSSt5arrayI16WallCycleCounterLm0EE", !31, i64 0}
!33 = !{!"_ZTS13gmx_wallcycle", !16, i64 0, !17, i64 1440, !18, i64 1448, !23, i64 2552, !24, i64 2576, !28, i64 2584, !6, i64 2608, !29, i64 2612, !10, i64 2616, !30, i64 2624, !30, i64 2625, !32, i64 2626, !6, i64 2628, !30, i64 2632}
!34 = !{!33, !6, i64 2608}
!35 = !{!33, !29, i64 2612}
!36 = !{!11, !6, i64 0}
!37 = !{!33, !10, i64 2616}
!38 = !{!11, !10, i64 8}
!39 = !{!"_ZTS20IntegrationAlgorithm", !5, i64 0}
!40 = !{!"_ZTS12CutoffScheme", !5, i64 0}
!41 = !{!"_ZTS19ComRemovalAlgorithm", !5, i64 0}
!42 = !{!"double", !5, i64 0}
!43 = !{!"p1 _ZTSN3gmx8MtsLevelE", !13, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !44, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !46, i64 0}
!48 = !{!"float", !5, i64 0}
!49 = !{!"_ZTS13EwaldGeometry", !5, i64 0}
!50 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!51 = !{!"_ZTS7PbcType", !5, i64 0}
!52 = !{!"_ZTS26EnsembleTemperatureSetting", !5, i64 0}
!53 = !{!"_ZTS19TemperatureCoupling", !5, i64 0}
!54 = !{!"_ZTS16PressureCoupling", !5, i64 0}
!55 = !{!"_ZTS20PressureCouplingType", !5, i64 0}
!56 = !{!"_ZTS15RefCoordScaling", !5, i64 0}
!57 = !{!"_ZTS23PressureCouplingOptions", !54, i64 0, !55, i64 4, !6, i64 8, !48, i64 12, !5, i64 16, !5, i64 52, !56, i64 88}
!58 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !13, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTS22CoulombInteractionType", !5, i64 0}
!64 = !{!"_ZTS20InteractionModifiers", !5, i64 0}
!65 = !{!"_ZTS15VanDerWaalsType", !5, i64 0}
!66 = !{!"_ZTS24DispersionCorrectionType", !5, i64 0}
!67 = !{!"_ZTS26FreeEnergyPerturbationType", !5, i64 0}
!68 = !{!"p1 _ZTS8t_lambda", !13, i64 0}
!69 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !68, i64 0}
!70 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !71, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !72, i64 0}
!74 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !73, i64 0}
!75 = !{!"p1 _ZTS9t_simtemp", !13, i64 0}
!76 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !75, i64 0}
!77 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !76, i64 0}
!78 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !79, i64 0}
!81 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !80, i64 0}
!82 = !{!"p1 _ZTS10t_expanded", !13, i64 0}
!83 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !82, i64 0}
!84 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !83, i64 0}
!85 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !86, i64 0}
!88 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !87, i64 0}
!89 = !{!"_ZTS27DistanceRestraintRefinement", !5, i64 0}
!90 = !{!"_ZTS26DistanceRestraintWeighting", !5, i64 0}
!91 = !{!"_ZTS19ConstraintAlgorithm", !5, i64 0}
!92 = !{!"_ZTS8WallType", !5, i64 0}
!93 = !{!"p1 _ZTS13pull_params_t", !13, i64 0}
!94 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !93, i64 0}
!95 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !94, i64 0}
!96 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !96, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !97, i64 0}
!99 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !98, i64 0}
!100 = !{!"p1 _ZTSN3gmx9AwhParamsE", !13, i64 0}
!101 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !100, i64 0}
!102 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !101, i64 0}
!103 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !102, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !103, i64 0}
!105 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !104, i64 0}
!106 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !105, i64 0}
!107 = !{!"p1 _ZTS5t_rot", !13, i64 0}
!108 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !107, i64 0}
!109 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !108, i64 0}
!110 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !110, i64 0}
!112 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !111, i64 0}
!113 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !112, i64 0}
!114 = !{!"_ZTS8SwapType", !5, i64 0}
!115 = !{!"p1 _ZTS12t_swapcoords", !13, i64 0}
!116 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !115, i64 0}
!117 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !116, i64 0}
!118 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !118, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !119, i64 0}
!121 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !120, i64 0}
!122 = !{!"p1 _ZTS5t_IMD", !13, i64 0}
!123 = !{!"p1 float", !13, i64 0}
!124 = !{!"p1 int", !13, i64 0}
!125 = !{!"any p2 pointer", !13, i64 0}
!126 = !{!"p2 float", !125, i64 0}
!127 = !{!"_ZTS9t_grpopts", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !123, i64 16, !123, i64 24, !13, i64 32, !124, i64 40, !126, i64 48, !126, i64 56, !123, i64 64, !62, i64 72, !124, i64 96, !124, i64 104, !6, i64 112}
!128 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !13, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !128, i64 0}
!130 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !129, i64 0}
!131 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !132, i64 0}
!134 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !133, i64 0}
!135 = !{!"_ZTS10t_inputrec", !6, i64 0, !39, i64 4, !17, i64 8, !6, i64 16, !17, i64 24, !6, i64 32, !40, i64 36, !6, i64 40, !6, i64 44, !41, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !42, i64 80, !42, i64 88, !30, i64 96, !47, i64 104, !48, i64 128, !48, i64 132, !48, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !48, i64 156, !48, i64 160, !49, i64 164, !48, i64 168, !50, i64 172, !51, i64 176, !30, i64 180, !30, i64 181, !52, i64 184, !48, i64 188, !53, i64 192, !6, i64 196, !30, i64 200, !57, i64 204, !62, i64 296, !62, i64 320, !6, i64 344, !48, i64 348, !48, i64 352, !48, i64 356, !48, i64 360, !63, i64 364, !64, i64 368, !48, i64 372, !48, i64 376, !48, i64 380, !48, i64 384, !30, i64 388, !65, i64 392, !64, i64 396, !48, i64 400, !48, i64 404, !66, i64 408, !48, i64 412, !48, i64 416, !67, i64 420, !74, i64 424, !30, i64 432, !81, i64 440, !30, i64 448, !88, i64 456, !89, i64 464, !48, i64 468, !90, i64 472, !30, i64 476, !6, i64 480, !48, i64 484, !48, i64 488, !48, i64 492, !6, i64 496, !48, i64 500, !48, i64 504, !6, i64 508, !48, i64 512, !6, i64 516, !6, i64 520, !91, i64 524, !6, i64 528, !48, i64 532, !6, i64 536, !30, i64 540, !48, i64 544, !17, i64 552, !6, i64 560, !92, i64 564, !48, i64 568, !5, i64 572, !5, i64 580, !48, i64 588, !30, i64 592, !99, i64 600, !30, i64 608, !106, i64 616, !30, i64 624, !113, i64 632, !114, i64 640, !121, i64 648, !30, i64 656, !122, i64 664, !48, i64 672, !5, i64 676, !6, i64 712, !6, i64 716, !6, i64 720, !6, i64 724, !48, i64 728, !48, i64 732, !48, i64 736, !48, i64 740, !127, i64 744, !30, i64 864, !30, i64 865, !30, i64 866, !30, i64 867, !128, i64 872, !134, i64 880}
!136 = !{!135, !39, i64 4}
!137 = !{!"p1 double", !13, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!139 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!141 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !140, i64 0}
!142 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !141, i64 0}
!143 = !{!"_ZTSSt6vectorIfSaIfEE", !142, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!145 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !144, i64 0}
!146 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !145, i64 0}
!147 = !{!"_ZTSSt6vectorIiSaIiEE", !146, i64 0}
!148 = !{!139, !58, i64 0}
!149 = !{!48, !48, i64 0}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!152 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !151, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !152, i64 0}
!154 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !153, i64 0}
!155 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS3_23AlignedAllocationPolicyEEEEEE", !123, i64 0}
!156 = !{!"_ZTSN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEE", !154, i64 0, !155, i64 24}
!157 = !{!"_ZTSN3gmx12ArrayRefIterIfEE", !123, i64 0}
!158 = !{!"_ZTSN3gmx8ArrayRefIfEE", !157, i64 0, !157, i64 8}
!159 = !{!"p1 _ZTSN3gmx8BoolTypeE", !13, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseIN3gmx8BoolTypeESaIS1_EE17_Vector_impl_dataE", !159, i64 0, !159, i64 8, !159, i64 16}
!161 = !{!"_ZTSNSt12_Vector_baseIN3gmx8BoolTypeESaIS1_EE12_Vector_implE", !160, i64 0}
!162 = !{!"_ZTSSt12_Vector_baseIN3gmx8BoolTypeESaIS1_EE", !161, i64 0}
!163 = !{!"_ZTSSt6vectorIN3gmx8BoolTypeESaIS1_EE", !162, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseI12ParticleTypeSaIS0_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!165 = !{!"_ZTSNSt12_Vector_baseI12ParticleTypeSaIS0_EE12_Vector_implE", !164, i64 0}
!166 = !{!"_ZTSSt12_Vector_baseI12ParticleTypeSaIS0_EE", !165, i64 0}
!167 = !{!"_ZTSSt6vectorI12ParticleTypeSaIS0_EE", !166, i64 0}
!168 = !{!"p1 short", !13, i64 0}
!169 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !168, i64 0, !168, i64 8, !168, i64 16}
!170 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !169, i64 0}
!171 = !{!"_ZTSSt12_Vector_baseItSaItEE", !170, i64 0}
!172 = !{!"_ZTSSt6vectorItSaItEE", !171, i64 0}
!173 = !{!"_ZTS9t_mdatoms", !48, i64 0, !48, i64 4, !48, i64 8, !6, i64 12, !6, i64 16, !30, i64 20, !30, i64 21, !30, i64 22, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !30, i64 40, !143, i64 48, !143, i64 72, !143, i64 96, !156, i64 120, !62, i64 152, !158, i64 176, !158, i64 192, !143, i64 208, !143, i64 232, !143, i64 256, !143, i64 280, !143, i64 304, !143, i64 328, !163, i64 352, !147, i64 376, !147, i64 400, !167, i64 424, !172, i64 448, !172, i64 472, !172, i64 496, !172, i64 520, !172, i64 544, !172, i64 568, !172, i64 592, !172, i64 616, !6, i64 640, !48, i64 644}
!174 = !{!173, !6, i64 640}
!175 = !{!169, !168, i64 0}
!176 = !{!"_ZTSN3gmx12ArrayRefIterIKtEE", !168, i64 0}
!177 = !{!176, !168, i64 0}
!178 = !{!169, !168, i64 8}
!179 = !{!151, !123, i64 0}
!180 = !{!"_ZTSN3gmx12ArrayRefIterIKfEE", !123, i64 0}
!181 = !{!180, !123, i64 0}
!182 = !{!123, !123, i64 0}
!183 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !13, i64 0}
!184 = !{!"_ZTSN3gmx12ArrayRefIterISt6vectorIiSaIiEEEE", !183, i64 0}
!185 = !{!184, !183, i64 0}
!186 = !{!"_ZTSN3gmx14accessor_basicIfEE"}
!187 = !{!"_ZTSN3gmx6detail15extents_analyseILi0EJEEE"}
!188 = !{!"_ZTSN3gmx6detail15extents_analyseILi1EJLl3EEEE", !187, i64 0}
!189 = !{!"_ZTSN3gmx6detail15extents_analyseILi2EJLl3ELl3EEEE", !188, i64 0}
!190 = !{!"_ZTSN3gmx7extentsIJLl3ELl3EEEE", !189, i64 0}
!191 = !{!"_ZTSN3gmx12layout_right7mappingINS_7extentsIJLl3ELl3EEEEEE", !190, i64 0}
!192 = !{!"_ZTSN3gmx12basic_mdspanIfNS_7extentsIJLl3ELl3EEEENS_12layout_rightENS_14accessor_basicIfEEEE", !186, i64 0, !191, i64 1, !123, i64 8}
!193 = !{!192, !123, i64 8}
!194 = !{!173, !30, i64 22}
!195 = !{i8 0, i8 2}
!196 = !{}
!197 = !{!164, !13, i64 0}
!198 = !{!"_ZTSN3gmx12ArrayRefIterIK12ParticleTypeEE", !13, i64 0}
!199 = !{!198, !13, i64 0}
!200 = !{!164, !13, i64 8}
!201 = !{!59, !58, i64 0}
!202 = !{!"_ZTSN3gmx12ArrayRefIterIKNS_11BasicVectorIfEEEE", !58, i64 0}
!203 = !{!202, !58, i64 0}
!204 = !{!59, !58, i64 8}
!205 = !{!"_ZTSN3gmx19ArrayRefWithPaddingINS_11BasicVectorIfEEEE", !58, i64 0, !58, i64 8, !58, i64 16}
!206 = !{!205, !58, i64 16}
!207 = !{!58, !58, i64 0}
!208 = !{!"_ZTSN3gmx19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEE", !58, i64 0, !58, i64 8, !58, i64 16}
!209 = !{!208, !58, i64 16}
!210 = !{!33, !30, i64 2624}
!211 = !{!5, !5, i64 0}
!212 = !{i64 0, i64 12, !211}
!213 = distinct !{!213, !"LVerDomain"}
!214 = distinct !{!214, !213}
!215 = distinct !{!215, !213}
!216 = distinct !{!216, !150, !253, !254}
!217 = distinct !{!217, !255}
!218 = distinct !{!218, !150, !253}
!219 = distinct !{!219, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv"}
!220 = distinct !{!220, !219, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv: argument 0"}
!221 = distinct !{!221, !"LVerDomain"}
!222 = distinct !{!222, !221}
!223 = distinct !{!223, !221}
!224 = distinct !{!224, !150, !253, !254}
!225 = distinct !{!225, !255}
!226 = distinct !{!226, !150, !253}
!227 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypefLS1_7EEE", !5, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !138, i64 0}
!229 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !228, i64 0}
!230 = !{!"_ZTSSt6vectorIdSaIdEE", !229, i64 0}
!231 = !{!"_ZTSN3gmx13PinningPolicyE", !5, i64 0}
!232 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !231, i64 0, !30, i64 4}
!233 = !{!"_ZTSN3gmx9AllocatorINS_11BasicVectorIfEENS_20HostAllocationPolicyEEE", !232, i64 0}
!234 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !233, i64 0, !139, i64 8}
!235 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !234, i64 0}
!236 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !235, i64 0}
!237 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS3_NS1_9AllocatorIS3_NS1_20HostAllocationPolicyEEEEEE", !58, i64 0}
!238 = !{!"_ZTSN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEEE", !236, i64 0, !237, i64 32}
!239 = !{!"_ZTS11ekinstate_t", !30, i64 0, !6, i64 4, !123, i64 8, !123, i64 16, !123, i64 24, !5, i64 32, !230, i64 72, !230, i64 96, !230, i64 120, !48, i64 144, !48, i64 148, !30, i64 152}
!240 = !{!"_ZTS9history_t", !48, i64 0, !143, i64 8, !48, i64 32, !143, i64 40}
!241 = !{!"p1 _ZTS12df_history_t", !13, i64 0}
!242 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!243 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !242, i64 0}
!244 = !{!"_ZTSSt12__shared_ptrI12df_history_tLN9__gnu_cxx12_Lock_policyE2EE", !241, i64 0, !243, i64 8}
!245 = !{!"_ZTSSt10shared_ptrI12df_history_tE", !244, i64 0}
!246 = !{!"p1 _ZTSN3gmx10AwhHistoryE", !13, i64 0}
!247 = !{!"_ZTSSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EE", !246, i64 0, !243, i64 8}
!248 = !{!"_ZTSSt10shared_ptrIN3gmx10AwhHistoryEE", !247, i64 0}
!249 = !{!"_ZTS7t_state", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !227, i64 24, !5, i64 52, !5, i64 88, !5, i64 124, !5, i64 160, !5, i64 196, !5, i64 232, !230, i64 272, !230, i64 296, !230, i64 320, !230, i64 344, !230, i64 368, !42, i64 392, !48, i64 400, !48, i64 404, !238, i64 408, !238, i64 448, !238, i64 488, !239, i64 528, !240, i64 688, !245, i64 752, !248, i64 768, !6, i64 784, !6, i64 788, !147, i64 792, !230, i64 816}
!250 = !{!249, !6, i64 0}
!251 = !{!214}
!252 = !{!215}
!253 = !{!"llvm.loop.isvectorized", i32 1}
!254 = !{!"llvm.loop.unroll.runtime.disable"}
!255 = !{!"llvm.loop.unroll.disable"}
!256 = !{!220}
!257 = !{!30, !30, i64 0}
!258 = !{!42, !42, i64 0}
!259 = !{!222}
!260 = !{!223}
!261 = !{!135, !53, i64 192}
!262 = !{!135, !123, i64 760}
!263 = !{!135, !6, i64 744}
!264 = !{!135, !66, i64 408}
!265 = !{!135, !67, i64 420}
!266 = !{!68, !68, i64 0}
!267 = distinct !{!267, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv"}
!268 = distinct !{!268, !267, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv: argument 0"}
!269 = distinct !{!269, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv"}
!270 = distinct !{!270, !269, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv: argument 0"}
!271 = distinct !{!271, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!272 = distinct !{!272, !271, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!273 = distinct !{!273, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv"}
!274 = distinct !{!274, !273, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv: argument 0"}
!275 = !{!268}
!276 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!277 = !{!135, !30, i64 592}
!278 = !{!93, !93, i64 0}
!279 = !{!"p1 _ZTS12t_pull_group", !13, i64 0}
!280 = !{!"_ZTSNSt12_Vector_baseI12t_pull_groupSaIS0_EE17_Vector_impl_dataE", !279, i64 0, !279, i64 8, !279, i64 16}
!281 = !{!"_ZTSNSt12_Vector_baseI12t_pull_groupSaIS0_EE12_Vector_implE", !280, i64 0}
!282 = !{!"_ZTSSt12_Vector_baseI12t_pull_groupSaIS0_EE", !281, i64 0}
!283 = !{!"_ZTSSt6vectorI12t_pull_groupSaIS0_EE", !282, i64 0}
!284 = !{!"p1 _ZTS12t_pull_coord", !13, i64 0}
!285 = !{!"_ZTSNSt12_Vector_baseI12t_pull_coordSaIS0_EE17_Vector_impl_dataE", !284, i64 0, !284, i64 8, !284, i64 16}
!286 = !{!"_ZTSNSt12_Vector_baseI12t_pull_coordSaIS0_EE12_Vector_implE", !285, i64 0}
!287 = !{!"_ZTSSt12_Vector_baseI12t_pull_coordSaIS0_EE", !286, i64 0}
!288 = !{!"_ZTSSt6vectorI12t_pull_coordSaIS0_EE", !287, i64 0}
!289 = !{!"_ZTS13pull_params_t", !6, i64 0, !6, i64 4, !48, i64 8, !48, i64 12, !30, i64 16, !30, i64 17, !30, i64 18, !30, i64 19, !6, i64 20, !6, i64 24, !30, i64 28, !30, i64 29, !283, i64 32, !288, i64 56}
!290 = !{!289, !30, i64 19}
!291 = !{!138, !137, i64 0}
!292 = !{!"_ZTSN3gmx12ArrayRefIterIdEE", !137, i64 0}
!293 = !{!292, !137, i64 0}
!294 = !{!138, !137, i64 8}
!295 = !{!"_ZTSSt22_Optional_payload_baseIN3gmx8ArrayRefIdEEE", !5, i64 0, !30, i64 16}
!296 = !{!295, !30, i64 16}
!297 = !{!270}
!298 = !{!272}
!299 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!300 = !{!299, !58, i64 0}
!301 = !{!299, !58, i64 8}
!302 = !{!205, !58, i64 0}
!303 = !{!205, !58, i64 8}
!304 = !{!274}
!305 = distinct !{!305, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!306 = distinct !{!306, !305, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!307 = distinct !{!307, !305, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!308 = distinct !{!308, !150}
!309 = !{!59, !58, i64 16}
!310 = !{!307, !306}
end_hunk_0
