Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/minimize?download=true
inline.NumInlined: 1769
inline.NumDeleted: 812
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN12_GLOBAL__N_115EnergyEvaluator3runEP8em_statePfPA3_fS5_lbl:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 404
  %i.ad = load float, ptr %i.ab, align 4, !tbaa !333 ; 2 uses
  %i.ae = load float, ptr %i.ac, align 4, !tbaa !333 ; 2 uses
  %i.af = fcmp olt float %i.ad, %i.ae
  %i.ag = select i1 %i.af, float %i.ae, float %i.ad
  %i.ah = fsub float %i.aa, %i.ag                 ; 3 uses
  %i.ai = fcmp ole float %i.ah, 0.000000e+00
  %or.cond = select i1 %6, i1 true, i1 %i.ai
  %i.aj = tail call i32 @__kmpc_global_thread_num(ptr nonnull @3) ; 2 uses
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !392
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load i32, ptr %i.am, align 8, !tbaa !254
  %.not54 = icmp eq i32 %i.al, %i.an
  br i1 %.not54, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !324 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !703
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !180
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 640
  %i.au = load i32, ptr %i.at, align 8, !tbaa !327
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !496 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !517
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %.idx = mul nsw i64 %i.av, 12
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !519
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67, !nonnull !68, !align !69
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !520 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.ay, ptr %9, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.be, ptr %i.bk, align 8
  store ptr %i.ap, ptr %10, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aw, ptr %i.bl, align 8
  %i.bm = icmp eq i64 %i.bd, %.idx
  br i1 %i.bm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN12_GLOBAL__N_123maxCoordinateDifferenceEN3gmx8ArrayRefIKNS0_11BasicVectorIfEEEES5_P10tmpi_comm_ENK3$_0clEv", ptr noundef nonnull @.str.22, i32 noundef 884) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !333
  %i.bn = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 6)
  tail call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.aj, i32 %i.bn)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 3, ptr nonnull @_ZN12_GLOBAL__N_123maxCoordinateDifferenceEN3gmx8ArrayRefIKNS0_11BasicVectorIfEEEES5_P10tmpi_comm_.omp_outlined, ptr nonnull %9, ptr nonnull %i.b, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 1, ptr %i.c, align 4, !tbaa !332
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = call noundef i32 @_Z14tMPI_Comm_sizeP10tmpi_comm_Pi(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.c) ; 0 uses
  %.pr.i = load i32, ptr %i.c, align 4, !tbaa !332
  %i.bp = icmp sgt i32 %.pr.i, 1
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.bq = load ptr, ptr @TMPI_FLOAT, align 8, !tbaa !705
  %i.br = call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.bq, i32 noundef 0, ptr noundef nonnull %i.bj) ; 0 uses
  %i.bs = load float, ptr %i.d, align 4, !tbaa !333
  store float %i.bs, ptr %i.b, align 4, !tbaa !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bt = load float, ptr %i.b, align 4, !tbaa !333
  %i.bu = call noundef float @sqrtf(float noundef %i.bt) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.bv = fmul float %i.bu, 2.000000e+00
  %i.bw = fcmp ogt float %i.bv, %i.ah
  br i1 %i.bw, label %.thread, label %.thread97

.thread:                                          ; preds = %bb.c, %bb.d, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !519
  %i.bz = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %.val = load ptr, ptr %i.bz, align 8, !tbaa !391 ; 2 uses
  %.not103 = icmp eq ptr %.val, null
  br i1 %.not103, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ca = load ptr, ptr %0, align 8, !tbaa !241
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !706, !nonnull !68, !align !69
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !707, !nonnull !68, !align !69
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !708
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !709
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !710
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !711
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !703
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !712
  %i.cs = load ptr, ptr %i.n, align 8, !tbaa !518
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !521
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !713
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !714
  %sext = shl i64 %5, 32
  %i.cz = ashr exact i64 %sext, 32
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 840
  call void @_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb(ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i64 noundef %i.cz, ptr noundef nonnull %.val, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(768) %i.ce, ptr noundef nonnull align 8 dereferenceable(888) %i.cf, ptr noundef nonnull align 1 %i.ch, ptr noundef %i.cj, ptr noundef %i.cl, ptr noundef %1, ptr noundef nonnull %i.da, ptr noundef %i.cp, ptr noundef %i.cn, ptr noundef %i.cr, ptr noundef %i.cs, ptr noundef %i.cu, ptr noundef %i.cw, ptr noundef %i.cy, i1 noundef zeroext false)
  %i.db = load ptr, ptr %i.bz, align 8, !tbaa !391
  call void @_Z14dd_store_stateRK12gmx_domdec_tP7t_state(ptr noundef nonnull align 8 dereferenceable(1097) %i.db, ptr noundef %1)
  %i.dc = load ptr, ptr %i.bx, align 8, !tbaa !519
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !391
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 960
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !478
  %i.dh = trunc i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !254
  br label %bb.m

bb.l:                                             ; preds = %.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !254
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !254
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 784
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !392
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dn = fcmp ogt float %i.ah, 0.000000e+00
  br i1 %i.dn, label %bb.n, label %.thread97

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !324 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !703
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !180
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 640
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !327
  %i.dv = sext i32 %i.du to i64
  %.not.i59 = icmp eq ptr %i.dp, null
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %i.dv
  %spec.select.i = select i1 %.not.i59, ptr null, ptr %i.dw
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dy = ptrtoint ptr %spec.select.i to i64
  %i.dz = ptrtoint ptr %i.dp to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dp, ptr %8, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.eb, ptr %i.ec, align 8
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !523
  %i.ed = sdiv exact i64 %i.ea, 12
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 noundef %i.ed)
  %i.ee = call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 6)
  call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.aj, i32 %i.ee)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 2, ptr nonnull @_ZN12_GLOBAL__N_114setCoordinatesEPSt6vectorIN3gmx11BasicVectorIfEESaIS3_EENS1_8ArrayRefIKS3_EE.omp_outlined, ptr nonnull %8, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread97

.thread97:                                        ; preds = %bb.j, %bb.n, %bb.m
  %.095100 = phi i1 [ true, %bb.m ], [ true, %bb.n ], [ false, %bb.j ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !712
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 504
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !525
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !703
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !180
  call void @_ZN24CpuPpLongRangeNonbondeds20updateAfterPartitionERK9t_mdatoms(ptr noundef nonnull align 8 dereferenceable(216) %i.ei, ptr noundef nonnull align 8 dereferenceable(648) %i.el)
  br i1 %.095100, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.thread97
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !712 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 496
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !715 ; 2 uses
  %.not104 = icmp eq ptr %i.eo, null
  br i1 %.not104, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !711
  call void @_ZN3gmx15ListedForcesGpu22updateHaveInteractionsERK22InteractionDefinitions(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(2760) %i.eq)
  %.pre106 = load ptr, ptr %i.ef, align 8, !tbaa !712
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.er = phi ptr [ %.pre106, %bb.p ], [ %i.em, %bb.o ]
  %i.es = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !710
  %i.ev = load ptr, ptr %i.ej, align 8, !tbaa !703
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !180
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !251
  %i.ez = call { i64, i16 } @_ZN3gmx27setupDomainLifetimeWorkloadERK10t_inputrecRK10t_forcerecPK6pull_tPK9gmx_edsamRK9t_mdatomsRKNS_18SimulationWorkloadE(ptr noundef nonnull align 8 dereferenceable(888) %i.es, ptr noundef nonnull align 8 dereferenceable(584) %i.er, ptr noundef %i.eu, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(648) %i.ew, ptr noundef nonnull align 1 dereferenceable(29) %i.ey) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i16 } %i.ez, 0
  %.fca.1.extract = extractvalue { i64, i16 } %i.ez, 1
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !251 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 29
  store i64 %.fca.0.extract, ptr %i.fb, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 37
  store i16 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread97
  %i.fc = phi i32 [ 981, %bb.q ], [ 977, %.thread97 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !244 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 104
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !716 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 112
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !717
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %21 = load ptr, ptr %i.fm, align 8, !tbaa !251  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 29
  call void @_ZN3gmx17setupStepWorkloadEiNS_8ArrayRefIKNS_8MtsLevelEEElRKNS_22DomainLifetimeWorkloadERKNS_18SimulationWorkloadE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::StepWorkload") align 1 %11, i32 noundef %i.fc, ptr %i.ff, ptr %i.fl, i64 noundef %7, ptr noundef nonnull align 1 dereferenceable(10) %i.fn, ptr noundef nonnull align 1 dereferenceable(29) %21)
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !251
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.fp, ptr noundef nonnull align 1 dereferenceable(19) %11, i64 19, i1 false), !tbaa.struct !719
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.fq = load ptr, ptr %0, align 8, !tbaa !241
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !519 ; 2 uses
  %i.ft = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !708
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !247
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !709
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !710
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !713
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !714
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !711
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !324, !noalias !720 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !191, !noalias !720
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = getelementptr inbounds i8, ptr %i.gk, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !479, !noalias !720
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.go
  %i.gv = getelementptr inbounds i8, ptr %i.gk, i64 %i.gu
  store ptr %i.gk, ptr %12, align 8, !tbaa !325, !alias.scope !720
  %i.gw = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.gq, ptr %i.gw, align 8, !tbaa !514, !alias.scope !720
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.gv, ptr %i.gx, align 8, !tbaa !515, !alias.scope !720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 4 uses
  %i.ha = load ptr, ptr %i.ej, align 8, !tbaa !703
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !180
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !253
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.he, ptr %14, align 8, !tbaa !722
  %i.hf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.gi, ptr %i.hf, align 8, !tbaa !722
  %i.hg = load ptr, ptr %i.ef, align 8, !tbaa !712 ; 2 uses
  %i.hh = load ptr, ptr %i.fm, align 8, !tbaa !251
  %i.hi = load ptr, ptr %i.n, align 8, !tbaa !518
  %i.hj = fpext float %i.m to double
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 504
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !525
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !391 ; 3 uses
  %.not.i62 = icmp eq ptr %i.hn, null
  br i1 %.not.i62, label %_ZN22DDBalanceRegionHandlerC2EP12gmx_domdec_t.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ho = getelementptr i8, ptr %i.hn, i64 32
  %.val.i = load i32, ptr %i.ho, align 8, !tbaa !723
  %i.hp = icmp sgt i32 %.val.i, 1
  %i.hq = zext i1 %i.hp to i8
  br label %_ZN22DDBalanceRegionHandlerC2EP12gmx_domdec_t.exit

_ZN22DDBalanceRegionHandlerC2EP12gmx_domdec_t.exit: ; preds = %bb.r, %bb.s
  %i.hr = phi i8 [ %i.hq, %bb.s ], [ 0, %bb.r ]
  store i8 %i.hr, ptr %15, align 8, !tbaa !528
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.hn, ptr %i.hs, align 8, !tbaa !529
  call void @_ZN3gmx8do_forceEP8_IO_FILEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_3AwhEP10gmx_enfrotPNS_10ImdSessionEP6pull_tlP6t_nrnbP13gmx_wallcyclePK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISV_EEPK9history_tPNS_16ForceBuffersViewEPA3_fPK9t_mdatomsP14gmx_enerdata_tNSX_ISQ_EEP10t_forcerecRKNS_21MdrunScheduleWorkloadEPNS_19VirtualSitesHandlerEPfdP9gmx_edsamP24CpuPpLongRangeNonbondedsRK22DDBalanceRegionHandler(ptr noundef %i.fq, ptr noundef nonnull %i.fs, ptr noundef nonnull align 8 dereferenceable(888) %i.ft, ptr noundef nonnull align 1 %i.fv, ptr noundef null, ptr noundef %i.fx, ptr noundef %i.fz, ptr noundef %i.gb, i64 noundef %5, ptr noundef %i.gd, ptr noundef %i.gf, ptr noundef %i.gh, ptr noundef nonnull %i.gi, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull byval(%"class.gmx::ArrayRef.334") align 8 %13, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.gz, ptr noundef nonnull %i.e, ptr noundef %i.hb, ptr noundef %i.hd, ptr noundef nonnull byval(%"class.gmx::ArrayRef.442") align 8 %14, ptr noundef nonnull %i.hg, ptr noundef nonnull align 1 dereferenceable(58) %i.hh, ptr noundef %i.hi, ptr noundef nonnull %2, double noundef %i.hj, ptr noundef null, ptr noundef %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  %i.ht = load ptr, ptr %i.fr, align 8, !tbaa !519
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !67, !nonnull !68, !align !69
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !516
  %i.hy = icmp sgt i32 %i.hx, 1
  br i1 %i.hy, label %bb.t, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

bb.t:                                             ; preds = %_ZN22DDBalanceRegionHandlerC2EP12gmx_domdec_t.exit
  %i.hz = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !511
  %.not55 = icmp eq i32 %i.ib, 5
  br i1 %.not55, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ic = load ptr, ptr %i.ge, align 8, !tbaa !714 ; 8 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %i.ic)
  %i.ie = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !211 ; 2 uses
  %i.if = extractvalue { i32, i32 } %i.ie, 0
  %i.ig = extractvalue { i32, i32 } %i.ie, 1
  %i.ih = zext i32 %i.if to i64
  %i.ii = zext i32 %i.ig to i64
  %i.ij = shl nuw i64 %i.ii, 32
  %i.ik = or disjoint i64 %i.ij, %i.ih            ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 1264
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !214
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 2584
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !216 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 2592
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !216
  %i.iq = icmp eq ptr %i.in, %i.ip
  br i1 %i.iq, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ic, i64 2608 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !232
  %i.it = add nsw i32 %i.is, 1                    ; 2 uses
  store i32 %i.it, ptr %i.ir, align 8, !tbaa !232
  %i.iu = icmp eq i32 %i.it, 3
  br i1 %i.iu, label %bb.x, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit

bb.x:                                             ; preds = %bb.w
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ic, i64 2612
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !233
  %i.ix = mul nsw i32 %i.iw, 60
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr [24 x i8], ptr %i.in, i64 %i.iy ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 1248   ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !530
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 8, !tbaa !530
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 2616
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !234
  %i.jf = sub i64 %i.ik, %i.je
  %i.jg = getelementptr i8, ptr %i.iz, i64 1256   ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !531
  %i.ji = add i64 %i.jf, %i.jh
  store i64 %i.ji, ptr %i.jg, align 8, !tbaa !531
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !249
  %i.jl = load ptr, ptr %i.fr, align 8, !tbaa !519
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !67, !nonnull !68, !align !69
  %i.jo = load ptr, ptr %i.hc, align 8, !tbaa !253
  %i.jp = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.jq = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #35 ; 5 uses
  store float 0.000000e+00, ptr %i.jq, align 4, !tbaa !333
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store ptr %i.jq, ptr %16, align 8, !tbaa !510
  %i.js = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !510
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !250
  invoke void @_Z11global_statRK15gmx_global_statRKN3gmx7MpiCommEP14gmx_enerdata_tPA3_fS9_RK10t_inputrecP14gmx_ekindata_tP5t_vcmNS2_8ArrayRefIfEEbilPNS2_18ObservablesReducerE(ptr noundef nonnull align 1 %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.jn, ptr noundef %i.jo, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(888) %i.jp, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%"class.gmx::ArrayRef.206") align 8 %16, i1 noundef zeroext false, i32 noundef 832, i64 noundef %7, ptr noundef %i.ju)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit65

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef 4) #32
  %i.jv = load ptr, ptr %i.ge, align 8, !tbaa !714 ; 11 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %i.jv)
  %i.jx = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !211 ; 2 uses
  %i.jy = extractvalue { i32, i32 } %i.jx, 0
  %i.jz = extractvalue { i32, i32 } %i.jx, 1
  %i.ka = zext i32 %i.jy to i64
  %i.kb = zext i32 %i.jz to i64
  %i.kc = shl nuw i64 %i.kb, 32
  %i.kd = or disjoint i64 %i.kc, %i.ka            ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 1248 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 1264
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !214 ; 2 uses
  %.not.i63 = icmp ult i64 %i.kd, %i.kg
  br i1 %.not.i63, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kh = sub nuw i64 %i.kd, %i.kg
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jv, i64 2624
  store i8 1, ptr %i.ki, align 8, !tbaa !532
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i = phi i64 [ %i.kh, %bb.z ], [ 0, %bb.aa ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 1256 ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v4f32
!516 = !{!78, !8, i64 8}
!517 = !{!101, !100, i64 8}
!518 = !{!240, !29, i64 120}
!519 = !{!240, !22, i64 16}
!520 = !{!78, !70, i64 0}
!521 = !{!240, !30, i64 128}
!522 = !{!"p1 _ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !11, i64 0}
!523 = !{!522, !522, i64 0}
!524 = !{!"p1 _ZTS24CpuPpLongRangeNonbondeds", !11, i64 0}
!525 = !{!524, !524, i64 0}
!526 = !{!"p1 _ZTSN3gmx15ListedForcesGpuE", !11, i64 0}
!527 = !{!"_ZTS22DDBalanceRegionHandler", !61, i64 0, !65, i64 8}
!528 = !{!527, !61, i64 0}
!529 = !{!527, !65, i64 8}
!530 = !{!213, !8, i64 0}
!531 = !{!213, !212, i64 8}
!532 = !{!231, !61, i64 2624}
!533 = !{!"p1 _ZTS19interaction_const_t", !11, i64 0}
!534 = !{!"_ZTSSt10_Head_baseILm0EP19interaction_const_tLb0EE", !533, i64 0}
!535 = !{!"_ZTSSt11_Tuple_implILm0EJP19interaction_const_tSt14default_deleteIS0_EEE", !534, i64 0}
!536 = !{!"_ZTSSt5tupleIJP19interaction_const_tSt14default_deleteIS0_EEE", !535, i64 0}
!537 = !{!"_ZTSSt15__uniq_ptr_implI19interaction_const_tSt14default_deleteIS0_EE", !536, i64 0}
!538 = !{!"_ZTSSt15__uniq_ptr_dataI19interaction_const_tSt14default_deleteIS0_ELb1ELb1EE", !537, i64 0}
!539 = !{!"_ZTSSt10unique_ptrI19interaction_const_tSt14default_deleteIS0_EE", !538, i64 0}
!540 = !{!"_ZTS16NbkernelElecType", !7, i64 0}
!541 = !{!"_ZTS15NbkernelVdwType", !7, i64 0}
!542 = !{!"_ZTSSt5arrayIdLm2EE", !7, i64 0}
!543 = !{!"p1 _ZTS20DispersionCorrection", !11, i64 0}
!544 = !{!"_ZTSSt10_Head_baseILm0EP20DispersionCorrectionLb0EE", !543, i64 0}
!545 = !{!"_ZTSSt11_Tuple_implILm0EJP20DispersionCorrectionSt14default_deleteIS0_EEE", !544, i64 0}
!546 = !{!"_ZTSSt5tupleIJP20DispersionCorrectionSt14default_deleteIS0_EEE", !545, i64 0}
!547 = !{!"_ZTSSt15__uniq_ptr_implI20DispersionCorrectionSt14default_deleteIS0_EE", !546, i64 0}
!548 = !{!"_ZTSSt15__uniq_ptr_dataI20DispersionCorrectionSt14default_deleteIS0_ELb1ELb1EE", !547, i64 0}
!549 = !{!"_ZTSSt10unique_ptrI20DispersionCorrectionSt14default_deleteIS0_EE", !548, i64 0}
!550 = !{!"p1 _ZTS12t_forcetable", !11, i64 0}
!551 = !{!"_ZTSSt10_Head_baseILm0EP12t_forcetableLb0EE", !550, i64 0}
!552 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_forcetableSt14default_deleteIS0_EEE", !551, i64 0}
!553 = !{!"_ZTSSt5tupleIJP12t_forcetableSt14default_deleteIS0_EEE", !552, i64 0}
!554 = !{!"_ZTSSt15__uniq_ptr_implI12t_forcetableSt14default_deleteIS0_EE", !553, i64 0}
!555 = !{!"_ZTSSt15__uniq_ptr_dataI12t_forcetableSt14default_deleteIS0_ELb1ELb1EE", !554, i64 0}
!556 = !{!"_ZTSSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EE", !555, i64 0}
!557 = !{!"p1 _ZTSN3gmx27AtomInfoWithinMoleculeBlockE", !11, i64 0}
!558 = !{!"_ZTSNSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE17_Vector_impl_dataE", !557, i64 0, !557, i64 8, !557, i64 16}
!559 = !{!"_ZTSNSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE12_Vector_implE", !558, i64 0}
!560 = !{!"_ZTSSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE", !559, i64 0}
!561 = !{!"_ZTSSt6vectorIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE", !560, i64 0}
!562 = !{!"p1 _ZTSN3gmx22WholeMoleculeTransformE", !11, i64 0}
!563 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22WholeMoleculeTransformELb0EE", !562, i64 0}
!564 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EEE", !563, i64 0}
!565 = !{!"_ZTSSt5tupleIJPN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EEE", !564, i64 0}
!566 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EE", !565, i64 0}
!567 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_ELb1ELb1EE", !566, i64 0}
!568 = !{!"_ZTSSt10unique_ptrIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EE", !567, i64 0}
!569 = !{!"p1 _ZTSN3gmx18nonbonded_verlet_tE", !11, i64 0}
!570 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18nonbonded_verlet_tELb0EE", !569, i64 0}
!571 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEE", !570, i64 0}
!572 = !{!"_ZTSSt5tupleIJPN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEE", !571, i64 0}
!573 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EE", !572, i64 0}
!574 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_ELb1ELb1EE", !573, i64 0}
!575 = !{!"_ZTSSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EE", !574, i64 0}
!576 = !{!"p1 _ZTSSt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS1_EESaIS4_EE", !11, i64 0}
!577 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE17_Vector_impl_dataE", !576, i64 0, !576, i64 8, !576, i64 16}
!578 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE12_Vector_implE", !577, i64 0}
!579 = !{!"_ZTSSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE", !578, i64 0}
!580 = !{!"_ZTSSt6vectorIS_ISt10unique_ptrI12t_forcetableSt14default_deleteIS1_EESaIS4_EESaIS6_EE", !579, i64 0}
!581 = !{!"p1 _ZTS18ForceHelperBuffers", !11, i64 0}
!582 = !{!"_ZTSNSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE17_Vector_impl_dataE", !581, i64 0, !581, i64 8, !581, i64 16}
!583 = !{!"_ZTSNSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE12_Vector_implE", !582, i64 0}
!584 = !{!"_ZTSSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE", !583, i64 0}
!585 = !{!"_ZTSSt6vectorI18ForceHelperBuffersSaIS0_EE", !584, i64 0}
!586 = !{!"p1 _ZTS9gmx_pme_t", !11, i64 0}
!587 = !{!"_ZTSSt22_Optional_payload_baseIfE", !7, i64 0, !61, i64 4}
!588 = !{!"_ZTSSt17_Optional_payloadIfLb1ELb1ELb1EE", !587, i64 0}
!589 = !{!"_ZTSSt14_Optional_baseIfLb1ELb1EE", !588, i64 0}
!590 = !{!"_ZTSSt8optionalIfE", !589, i64 0}
!591 = !{!"_ZTSSt10_Head_baseILm0EP8t_fcdataLb0EE", !287, i64 0}
!592 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_fcdataSt14default_deleteIS0_EEE", !591, i64 0}
!593 = !{!"_ZTSSt5tupleIJP8t_fcdataSt14default_deleteIS0_EEE", !592, i64 0}
!594 = !{!"_ZTSSt15__uniq_ptr_implI8t_fcdataSt14default_deleteIS0_EE", !593, i64 0}
!595 = !{!"_ZTSSt15__uniq_ptr_dataI8t_fcdataSt14default_deleteIS0_ELb1ELb1EE", !594, i64 0}
!596 = !{!"_ZTSSt10unique_ptrI8t_fcdataSt14default_deleteIS0_EE", !595, i64 0}
!597 = !{!"p1 _ZTS12ListedForces", !11, i64 0}
!598 = !{!"_ZTSNSt12_Vector_baseI12ListedForcesSaIS0_EE17_Vector_impl_dataE", !597, i64 0, !597, i64 8, !597, i64 16}
!599 = !{!"_ZTSNSt12_Vector_baseI12ListedForcesSaIS0_EE12_Vector_implE", !598, i64 0}
!600 = !{!"_ZTSSt12_Vector_baseI12ListedForcesSaIS0_EE", !599, i64 0}
!601 = !{!"_ZTSSt6vectorI12ListedForcesSaIS0_EE", !600, i64 0}
!602 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx15ListedForcesGpuELb0EE", !526, i64 0}
!603 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx15ListedForcesGpuESt14default_deleteIS1_EEE", !602, i64 0}
!604 = !{!"_ZTSSt5tupleIJPN3gmx15ListedForcesGpuESt14default_deleteIS1_EEE", !603, i64 0}
!605 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx15ListedForcesGpuESt14default_deleteIS1_EE", !604, i64 0}
!606 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx15ListedForcesGpuESt14default_deleteIS1_ELb1ELb1EE", !605, i64 0}
!607 = !{!"_ZTSSt10unique_ptrIN3gmx15ListedForcesGpuESt14default_deleteIS1_EE", !606, i64 0}
!608 = !{!"_ZTSSt10_Head_baseILm0EP24CpuPpLongRangeNonbondedsLb0EE", !524, i64 0}
!609 = !{!"_ZTSSt11_Tuple_implILm0EJP24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EEE", !608, i64 0}
!610 = !{!"_ZTSSt5tupleIJP24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EEE", !609, i64 0}
!611 = !{!"_ZTSSt15__uniq_ptr_implI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EE", !610, i64 0}
!612 = !{!"_ZTSSt15__uniq_ptr_dataI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_ELb1ELb1EE", !611, i64 0}
!613 = !{!"_ZTSSt10unique_ptrI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EE", !612, i64 0}
!614 = !{!"p1 _ZTSN3gmx14ForceProvidersE", !11, i64 0}
!615 = !{!"p1 _ZTSN3gmx22StatePropagatorDataGpuE", !11, i64 0}
!616 = !{!"p1 _ZTSN3gmx19DeviceStreamManagerE", !11, i64 0}
!617 = !{!"p1 _ZTSN3gmx12PmePpCommGpuE", !11, i64 0}
!618 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx12PmePpCommGpuELb0EE", !617, i64 0}
!619 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx12PmePpCommGpuESt14default_deleteIS1_EEE", !618, i64 0}
!620 = !{!"_ZTSSt5tupleIJPN3gmx12PmePpCommGpuESt14default_deleteIS1_EEE", !619, i64 0}
!621 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx12PmePpCommGpuESt14default_deleteIS1_EE", !620, i64 0}
!622 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx12PmePpCommGpuESt14default_deleteIS1_ELb1ELb1EE", !621, i64 0}
!623 = !{!"_ZTSSt10unique_ptrIN3gmx12PmePpCommGpuESt14default_deleteIS1_EE", !622, i64 0}
!624 = !{!"_ZTSN3gmx16EnumerationArrayINS_12AtomLocalityESt10unique_ptrINS_17GpuForceReductionESt14default_deleteIS3_EELS1_3EEE", !7, i64 0}
!625 = !{!"_ZTSN3gmx16EnumerationArrayI20MdGraphEvenOrOddStepSt10unique_ptrINS_10MdGpuGraphESt14default_deleteIS3_EELS1_2EEE", !7, i64 0}
!626 = !{!"_ZTS10t_forcerec", !539, i64 0, !93, i64 8, !61, i64 12, !98, i64 16, !104, i64 24, !104, i64 48, !61, i64 72, !61, i64 73, !540, i64 76, !541, i64 80, !106, i64 84, !106, i64 88, !90, i64 92, !542, i64 96, !542, i64 112, !542, i64 128, !549, i64 144, !90, i64 152, !556, i64 160, !109, i64 168, !561, i64 176, !275, i64 200, !104, i64 224, !568, i64 248, !575, i64 256, !8, i64 264, !580, i64 272, !8, i64 296, !8, i64 300, !585, i64 304, !586, i64 328, !92, i64 336, !8, i64 340, !61, i64 344, !258, i64 352, !258, i64 376, !166, i64 400, !90, i64 408, !8, i64 412, !590, i64 416, !90, i64 424, !8, i64 428, !8, i64 432, !8, i64 436, !8, i64 440, !90, i64 444, !90, i64 448, !90, i64 452, !90, i64 456, !596, i64 464, !601, i64 472, !607, i64 496, !613, i64 504, !614, i64 512, !615, i64 520, !616, i64 528, !623, i64 536, !624, i64 544, !625, i64 568}
!627 = !{!"llvm.loop.unroll.disable"}
!628 = !{!12, !12, i64 0}
!629 = !{!177, !61, i64 656}
!630 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!631 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!632 = !{!"_ZTSSt18_Rb_tree_node_base", !630, i64 0, !631, i64 8, !631, i64 16, !631, i64 24}
!633 = !{!"_ZTSSt15_Rb_tree_header", !632, i64 0, !15, i64 32}
!634 = !{!633, !630, i64 0}
!635 = !{!633, !631, i64 8}
!636 = !{!633, !631, i64 16}
!637 = !{!633, !631, i64 24}
!638 = !{!"_ZTSN3gmx12ArrayRefIterIKNS_11BasicVectorIfEEEE", !100, i64 0}
!639 = !{!638, !100, i64 0}
!640 = !{!385, !335, i64 0}
!641 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!642 = !{!641, !641, i64 0}
!643 = !{!"p1 _ZTSN3gmx20KeyValueTreePropertyE", !11, i64 0}
!644 = !{!"_ZTSNSt12_Vector_baseIN3gmx20KeyValueTreePropertyESaIS1_EE17_Vector_impl_dataE", !643, i64 0, !643, i64 8, !643, i64 16}
!645 = !{!644, !643, i64 0}
!646 = !{!644, !643, i64 16}
!647 = !{!22, !22, i64 0}
!648 = !{!35, !35, i64 0}
!649 = !{!41, !41, i64 0}
!650 = !{!315, !8, i64 4}
!651 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!652 = !{i64 2, i64 -1, i64 -1, i1 true}
!653 = !{!652}
!654 = !{!"llvm.loop.isvectorized", i32 1}
!655 = !{!"llvm.loop.unroll.runtime.disable"}
!656 = !{!66, !64, i64 0}
!657 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !11, i64 0}
!658 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE17_Vector_impl_dataE", !657, i64 0, !657, i64 8, !657, i64 16}
!659 = !{!658, !657, i64 0}
!660 = !{!658, !657, i64 16}
!661 = !{!658, !657, i64 8}
!662 = distinct !{!662, !334}
!663 = distinct !{!663, !334}
!664 = distinct !{!664, !334}
!665 = distinct !{!665, !"_ZNK3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE24constArrayRefWithPaddingEv"}
!666 = distinct !{!666, !665, !"_ZNK3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE24constArrayRefWithPaddingEv: argument 0"}
!667 = distinct !{!667, !334}
!668 = distinct !{!668, !"_ZNK3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE24constArrayRefWithPaddingEv"}
!669 = distinct !{!669, !668, !"_ZNK3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE24constArrayRefWithPaddingEv: argument 0"}
!670 = distinct !{!670, !334}
!671 = distinct !{!671, !334}
!672 = distinct !{!672, !334}
!673 = !{!177, !8, i64 516}
!674 = !{!666}
!675 = !{!480, !100, i64 8}
!676 = !{!669}
!677 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!678 = !{!677, !12, i64 0}
!679 = !{!677, !12, i64 8}
!680 = distinct !{null, null, null}
!681 = distinct !{null, null, null}
!682 = distinct !{!682, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!683 = distinct !{!683, !682, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!684 = distinct !{!684, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!685 = distinct !{!685, !684, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!686 = !{!315, !8, i64 8}
!687 = !{!177, !61, i64 432}
!688 = !{!117, !117, i64 0}
!689 = !{!177, !8, i64 32}
!690 = !{!177, !15, i64 24}
!691 = !{!177, !133, i64 524}
!692 = !{!177, !61, i64 181}
!693 = !{!683}
!694 = !{!685}
!695 = distinct !{!695, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!696 = distinct !{!696, !695, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!697 = distinct !{!697, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!698 = distinct !{!698, !697, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!699 = distinct !{!699, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv"}
!700 = distinct !{!700, !699, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv: argument 0"}
!701 = !{!177, !84, i64 80}
!702 = !{!177, !90, i64 356}
!703 = !{!240, !43, i64 136}
!704 = !{!"p1 _ZTS14tmpi_datatype_", !11, i64 0}
!705 = !{!704, !704, i64 0}
!706 = !{!240, !24, i64 8}
!707 = !{!240, !39, i64 32}
!708 = !{!240, !34, i64 56}
!709 = !{!240, !36, i64 64}
!710 = !{!240, !37, i64 72}
!711 = !{!240, !40, i64 40}
!712 = !{!240, !46, i64 144}
!713 = !{!240, !44, i64 88}
!714 = !{!240, !45, i64 96}
!715 = !{!526, !526, i64 0}
!716 = !{!86, !85, i64 0}
!717 = !{!86, !85, i64 8}
!718 = !{!61, !61, i64 0}
!719 = !{i64 0, i64 1, !718, i64 1, i64 1, !718, i64 2, i64 1, !718, i64 3, i64 1, !718, i64 4, i64 1, !718, i64 5, i64 1, !718, i64 6, i64 1, !718, i64 7, i64 1, !718, i64 8, i64 1, !718, i64 9, i64 1, !718, i64 10, i64 1, !718, i64 11, i64 1, !718, i64 12, i64 1, !718, i64 13, i64 1, !718, i64 14, i64 1, !718, i64 15, i64 1, !718, i64 16, i64 1, !718, i64 17, i64 1, !718, i64 18, i64 1, !718}
!720 = !{!696}
!721 = !{!"_ZTSN3gmx12ArrayRefIterIKfEE", !165, i64 0}
!722 = !{!721, !165, i64 0}
!723 = !{!477, !8, i64 32}
!724 = !{!698}
!725 = !{!700}
!726 = !{!626, !93, i64 8}
!727 = !{!177, !8, i64 560}
!728 = distinct !{!728, !334}
!729 = distinct !{!729, !334}
!730 = distinct !{!730, !334}
!731 = distinct !{!731, !627}
!732 = !{!437, !166, i64 0}
!733 = !{!319, !8, i64 788}
!734 = !{!"_ZTSN3gmx12ArrayRefIterINS_11BasicVectorIfEEEE", !100, i64 0}
!735 = !{!734, !100, i64 0}
!736 = !{!177, !93, i64 176}
!737 = !{!177, !61, i64 180}
!738 = distinct !{!738, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!739 = distinct !{!739, !738, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!740 = distinct !{!740, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!741 = distinct !{!741, !740, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!742 = !{!315, !8, i64 784}
!743 = !{i64 0, i64 28, !19}
!744 = !{!739}
!745 = !{!741}
!746 = !{!477, !61, i64 1}
!747 = distinct !{null}
!748 = distinct !{null, null, null, null}
!749 = distinct !{null, null, null, null}
!750 = !{!306, !90, i64 0}
!751 = !{!306, !90, i64 32}
!752 = !{!310, !307, i64 0}
!753 = !{!313, !312, i64 0}
!754 = !{!292, !291, i64 8}
!755 = distinct !{!755, !334}
!756 = distinct !{!756, !334}
!757 = !{!299, !100, i64 16}
!758 = distinct !{!758, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!759 = distinct !{!759, !758, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!760 = distinct !{!760, !758, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!761 = distinct !{!761, !334}
!762 = !{!101, !100, i64 16}
!763 = !{!760, !759}
!764 = distinct !{!764, !627}
!765 = distinct !{null, null, null, null, null, null, null}
!766 = distinct !{!766, !334}
!767 = !{!632, !631, i64 24}
!768 = !{!632, !631, i64 16}
!769 = !{!"p1 _ZTSN3gmx3Any8IContentE", !11, i64 0}
!770 = !{!769, !769, i64 0}
!771 = distinct !{!771, !"LVerDomain"}
!772 = distinct !{!772, !771}
!773 = distinct !{!773, !771}
!774 = distinct !{!774, !654, !655}
!775 = distinct !{!775, !627}
!776 = distinct !{!776, !654}
!777 = distinct !{!777, !654, !655}
!778 = distinct !{!778, !654, !655}
!779 = distinct !{!779, !627}
!780 = distinct !{!780, !654}
!781 = !{!772}
!782 = !{!773}
!783 = !{!"branch_weights", i32 8, i32 24}
!784 = distinct !{!784, !334}
!785 = distinct !{!785, !334}
!786 = distinct !{!786, !334}
!787 = distinct !{!787, !627}
!788 = distinct !{!788, !627}
!789 = distinct !{!789, !334}
!790 = distinct !{!790, !334}
!791 = distinct !{!791, !627}
!792 = distinct !{!792, !334}
!793 = distinct !{!793, !334, !654, !655}
!794 = distinct !{!794, !334, !654, !655}
!795 = distinct !{!795, !627}
!796 = distinct !{!796, !334, !654}
!797 = distinct !{!797, !627}
!798 = distinct !{!798, !334}
!799 = distinct !{!799, !334, !654, !655}
!800 = distinct !{!800, !334, !654, !655}
!801 = distinct !{!801, !627}
!802 = distinct !{!802, !334, !654}
!803 = distinct !{!803, !627}
!804 = distinct !{!804, !334}
!805 = distinct !{!805, !334}
!806 = distinct !{!806, !334, !654, !655}
!807 = distinct !{!807, !334, !654, !655}
!808 = distinct !{!808, !627}
!809 = distinct !{!809, !334, !654}
!810 = distinct !{!810, !"LVerDomain"}
!811 = distinct !{!811, !810}
!812 = distinct !{!812, !810}
!813 = distinct !{!813, !810}
!814 = distinct !{!814, !810}
!815 = distinct !{!815, !334, !654, !655}
!816 = distinct !{!816, !334, !654, !655}
!817 = distinct !{!817, !627}
!818 = distinct !{!818, !334, !654}
!819 = distinct !{!819, !627}
!820 = distinct !{!820, !334, !654, !655}
!821 = distinct !{!821, !334, !654, !655}
!822 = distinct !{!822, !627}
!823 = distinct !{!823, !334}
!824 = distinct !{!824, !334, !654}
!825 = distinct !{!825, !334, !654, !655}
!826 = distinct !{!826, !334, !654, !655}
!827 = distinct !{!827, !627}
!828 = distinct !{!828, !"LVerDomain"}
!829 = distinct !{!829, !828}
!830 = distinct !{!830, !828}
!831 = distinct !{!831, !334, !654, !655}
!832 = distinct !{!832, !334, !654, !655}
!833 = distinct !{!833, !627}
!834 = distinct !{!834, !334}
!835 = distinct !{!835, !334}
!836 = distinct !{!836, !334, !654}
!837 = distinct !{!837, !334, !655, !654}
!838 = distinct !{!838, !627}
!839 = distinct !{!839, !"LVerDomain"}
!840 = distinct !{!840, !839}
!841 = distinct !{!841, !839}
!842 = distinct !{!842, !334, !654, !655}
!843 = distinct !{!843, !334, !654, !655}
!844 = distinct !{!844, !627}
!845 = distinct !{!845, !334}
!846 = distinct !{!846, !334}
!847 = distinct !{!847, !334, !654}
!848 = distinct !{!848, !334}
!849 = distinct !{!849, !334}
!850 = !{!177, !8, i64 520}
!851 = !{!"branch_weights", i32 4, i32 28}
!852 = !{!811}
!853 = !{!812}
!854 = !{!813}
!855 = !{!814, !811, !812}
!856 = !{!814}
!857 = !{!811, !812}
!858 = !{!"branch_weights", i32 4, i32 12}
!859 = !{!829}
!860 = !{!830}
!861 = !{!840}
!862 = !{!841}
!863 = distinct !{!863, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv"}
!864 = distinct !{!864, !863, !"_ZN3gmx16ForceBuffersView16forceWithPaddingEv: argument 0"}
!865 = distinct !{!865, !334}
!866 = !{!864}
!867 = !{!177, !8, i64 480}
!868 = !{!177, !8, i64 496}
!869 = distinct !{!869, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!870 = distinct !{!870, !869, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!871 = distinct !{!871, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!872 = distinct !{!872, !871, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!873 = distinct !{!873, !627}
!874 = distinct !{!874, !334}
!875 = distinct !{!875, !869, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0:It1"}
!876 = distinct !{!876, !871, !"_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0:It1"}
!877 = distinct !{!877, !334}
!878 = distinct !{!878, !334}
!879 = distinct !{!879, !334}
!880 = distinct !{!880, !334}
!881 = distinct !{!881, !334}
!882 = !{!533, !533, i64 0}
!883 = !{!105, !105, i64 0}
!884 = !{!626, !90, i64 92}
!885 = !{!185, !61, i64 32}
!886 = !{!"p2 _ZTS22gmx_sparsematrix_entry", !167, i64 0}
!887 = !{!"_ZTS16gmx_sparsematrix", !61, i64 0, !8, i64 4, !166, i64 8, !166, i64 16, !886, i64 24}
!888 = !{!887, !61, i64 0}
!889 = !{!240, !23, i64 24}
!890 = !{!870}
!891 = !{!872}
!892 = !{!875}
!893 = !{!876}
end_hunk_1
