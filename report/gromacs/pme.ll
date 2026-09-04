Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme?download=true
inline.NumInlined: 2554
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z10gmx_pme_doP9gmx_pme_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EENS2_IKfEES9_S9_S9_S9_S9_PA3_S8_iiP6t_nrnbP13gmx_wallcyclePA3_fSH_PfSI_ffSI_SI_RKNS1_12StepWorkloadE:bb.a
  %i.lp = ptrtoint ptr %i.jl to i64
  %i.lq = sub i64 %i.lo, %i.lp                    ; 2 uses
  br i1 %i.ln, label %bb.ar, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit189._crit_edge

bb.ar:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit189
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.lq
  call void @_Z16gmx_sum_qgrid_ddP9gmx_pme_tN3gmx8ArrayRefIfEEi(ptr noundef nonnull %i.lk, ptr %i.jl, ptr %i.lr, i32 noundef 1)
  %.pre451 = load ptr, ptr %i.a, align 8, !tbaa !307
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit189._crit_edge

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit189._crit_edge: ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit189, %bb.ar
  %i.ls = phi ptr [ %.pre451, %bb.ar ], [ %i.lk, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit189 ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.lq
  call void @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE(ptr noundef %i.ls, ptr %i.jl, ptr %i.lt)
  %i.lu = load i8, ptr %i.eb, align 1, !tbaa !737, !range !320, !noundef !312
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.as, label %bb.bb

bb.as:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit189._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.lw = load i8, ptr %i.eg, align 8, !tbaa !397, !range !320, !noundef !312
  %i.lx = trunc nuw i8 %i.lw to i1
  %i.ly = select i1 %i.lx, float %spec.select, float %.0164
  store float %i.ly, ptr %i.h, align 4, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %.pre452 = load ptr, ptr %i.a, align 8, !tbaa !307 ; 2 uses
  br i1 %.0169392, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lz = getelementptr inbounds nuw i8, ptr %.pre452, i64 88
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !323, !range !320, !noundef !312
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.mb = phi i8 [ 0, %bb.as ], [ %i.ma, %bb.at ]
  store i8 %i.mb, ptr %i.i, align 1, !tbaa !361
  %i.mc = getelementptr inbounds nuw i8, ptr %.pre452, i64 84
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !321
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.md)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_Z10gmx_pme_doP9gmx_pme_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EENS2_IKfEES9_S9_S9_S9_S9_PA3_S8_iiP6t_nrnbP13gmx_wallcyclePA3_fSH_PfSI_ffSI_SI_RKNS1_12StepWorkloadE.omp_outlined.51, ptr nonnull %i.a, ptr nonnull %i.hg, ptr nonnull %i.i, ptr nonnull %i.v, ptr nonnull %.sroa.0354.0391, ptr nonnull %i.h)
  %i.me = load ptr, ptr %i.b, align 8, !tbaa !391
  %i.mf = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 112
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !331 ; 3 uses
  %i.mi = mul nsw i32 %i.mh, %i.mh
  %i.mj = mul nsw i32 %i.mi, %i.mh
  %i.mk = load i32, ptr %i.ea, align 8, !tbaa !385
  %i.ml = mul nsw i32 %i.mj, %i.mk
  %i.mm = sitofp i32 %i.ml to double
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 408 ; 2 uses
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !430
  %i.mp = fadd double %i.mo, %i.mm
  store double %i.mp, ptr %i.mn, align 8, !tbaa !430
  %i.mq = load ptr, ptr %i.c, align 8, !tbaa !393 ; 11 uses
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit193, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %i.mq)
  %i.ms = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !399 ; 2 uses
  %i.mt = extractvalue { i32, i32 } %i.ms, 0
  %i.mu = extractvalue { i32, i32 } %i.ms, 1
  %i.mv = zext i32 %i.mt to i64
  %i.mw = zext i32 %i.mu to i64
  %i.mx = shl nuw i64 %i.mw, 32
  %i.my = or disjoint i64 %i.mx, %i.mv            ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mq, i64 528 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mq, i64 544
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !402 ; 2 uses
  %.not.i190 = icmp ult i64 %i.my, %i.nb
  br i1 %.not.i190, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nc = sub nuw i64 %i.my, %i.nb
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mq, i64 2624
  store i8 1, ptr %i.nd, align 8, !tbaa !426
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i191 = phi i64 [ %i.nc, %bb.aw ], [ 0, %bb.ax ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mq, i64 536 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !425
  %i.ng = add i64 %i.nf, %.0.i191
  store i64 %i.ng, ptr %i.ne, align 8, !tbaa !425
  %i.nh = load i32, ptr %i.mz, align 8, !tbaa !423
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.mz, align 8, !tbaa !423
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mq, i64 2584
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !404
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mq, i64 2592
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !404
  %i.nn = icmp eq ptr %i.nk, %i.nm
  br i1 %i.nn, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit193, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.no = getelementptr inbounds nuw i8, ptr %i.mq, i64 2608 ; 2 uses
  %i.np = load i32, ptr %i.no, align 8, !tbaa !421
  %i.nq = add nsw i32 %i.np, -1                   ; 2 uses
  store i32 %i.nq, ptr %i.no, align 8, !tbaa !421
  %i.nr = icmp eq i32 %i.nq, 2
  br i1 %i.nr, label %bb.ba, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit193

bb.ba:                                            ; preds = %bb.az
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mq, i64 2612
  store i32 22, ptr %i.ns, align 4, !tbaa !422
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mq, i64 2616
  store i64 %i.my, ptr %i.nt, align 8, !tbaa !424
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit193

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit193: ; preds = %bb.ay, %bb.az, %bb.ba, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br label %bb.bb

bb.bb:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit193, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit189._crit_edge
  %i.nu = load i8, ptr %i.e, align 1, !tbaa !361, !range !320, !noundef !312
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.nw = load i8, ptr %i.eg, align 8, !tbaa !397, !range !320, !noundef !312
  %i.nx = trunc nuw i8 %i.nw to i1
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 984
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !365 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0354.0391, i64 12
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !398
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [112 x i8], ptr %28, i64 %i.od ; 2 uses
  br i1 %i.nx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_ZNK8PmeSolve25getCoulombEnergyAndVirialEP9PmeOutput(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull %i.oe)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @_ZNK8PmeSolve20getLJEnergyAndVirialEP9PmeOutput(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull %i.oe)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0354.0391, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.of, %i.du
  br i1 %.not, label %._crit_edge.loopexit, label %bb.q

bb.bg:                                            ; preds = %._crit_edge
  %i.og = getelementptr inbounds nuw i8, ptr %i.ec, i64 160
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !333
  %i.oi = icmp eq i32 %i.oh, 1
  br i1 %i.oi, label %bb.bh, label %.loopexit386

bb.bh:                                            ; preds = %bb.bg
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ec, i64 95
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !328, !range !320, !noundef !312
  %i.ol = trunc nuw i8 %i.ok to i1
  %i.om = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.on = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %i.oo = ptrtoint ptr %2 to i64
  %i.op = ptrtoint ptr %1 to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.oq ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.v, i64 152 ; 19 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ow = getelementptr inbounds nuw i8, ptr %24, i64 5
  %i.ox = fsub float 1.000000e+00, %.0164
  %i.oy = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt6vectorIfSaIfEED2Ev.exit231
  %i.pa = phi i1 [ true, %bb.bh ], [ false, %_ZNSt6vectorIfSaIfEED2Ev.exit231 ] ; 5 uses
  %indvars.iv428.sroa.phi = phi ptr [ %28, %bb.bh ], [ %indvars.iv428.sroa.gep687, %_ZNSt6vectorIfSaIfEED2Ev.exit231 ]
  %.1170410 = phi i8 [ %.0169.lcssa, %bb.bh ], [ %.3.lcssa, %_ZNSt6vectorIfSaIfEED2Ev.exit231 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.pb = load ptr, ptr %i.a, align 8, !tbaa !307 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !314
  %i.pe = icmp eq i32 %i.pd, 1
  br i1 %i.pe, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 592
  %i.pg = load i32, ptr %i.os, align 8, !tbaa !385
  %i.ph = sext i32 %i.pg to i64
  invoke void @_ZNSt6vectorIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pf, i64 noundef %i.ph)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.pi = load ptr, ptr %i.a, align 8, !tbaa !307 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 592
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !271
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 600
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !384
  br i1 %i.pa, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit200.invoke, %bb.bx, %bb.bw, %bb.bv, %bb.bp, %bb.bn, %bb.bm, %bb.cv, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge, %bb.bu, %bb.bt, %bb.bs, %bb.bj
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bm:                                            ; preds = %bb.bk
  %.sroa.0.0.copyload.i = load ptr, ptr %7, align 8
  %.sroa.0.0.copyload.i194 = load ptr, ptr %i.ov, align 8
  invoke void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN3gmx12ArrayRefIterIKfEEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %.sroa.0.0.copyload.i, ptr %.sroa.0.0.copyload.i194)
          to label %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit200.invoke unwind label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  %.sroa.0.0.copyload.i198 = load ptr, ptr %8, align 8
  %.sroa.0.0.copyload.i199 = load ptr, ptr %i.ou, align 8
  invoke void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN3gmx12ArrayRefIterIKfEEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %.sroa.0.0.copyload.i198, ptr %.sroa.0.0.copyload.i199)
          to label %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit200.invoke unwind label %bb.bl

_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit200.invoke: ; preds = %bb.bn, %bb.bm
  %.in = phi ptr [ %9, %bb.bm ], [ %10, %bb.bn ]  ; 2 uses
  %.in523 = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.po = load ptr, ptr %.in523, align 8
  %i.pp = load ptr, ptr %.in, align 8
  invoke void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN3gmx12ArrayRefIterIKfEEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr %i.pp, ptr %i.po)
          to label %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit197 unwind label %bb.bl

bb.bo:                                            ; preds = %bb.bi
  %i.pq = load ptr, ptr %i.om, align 8, !tbaa !271 ; 4 uses
  %i.pr = load ptr, ptr %i.on, align 8, !tbaa !384 ; 4 uses
  %.377 = select i1 %i.pa, ptr %9, ptr %10        ; 2 uses
  %.378 = select i1 %i.pa, ptr %7, ptr %8         ; 2 uses
  %.sroa.0322.0 = load ptr, ptr %.378, align 8    ; 3 uses
  %.sroa.7324.0.in = getelementptr inbounds nuw i8, ptr %.378, i64 8
  %.sroa.7324.0 = load ptr, ptr %.sroa.7324.0.in, align 8
  %.sroa.0318.0 = load ptr, ptr %.377, align 8    ; 3 uses
  %.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %.377, i64 8
  %.sroa.7.0 = load ptr, ptr %.sroa.7.0.in, align 8
  %i.ps = load ptr, ptr %i.c, align 8, !tbaa !393 ; 8 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %i.ps)
          to label %.noexc unwind label %bb.bl

.noexc:                                           ; preds = %bb.bp
  %i.pu = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !399 ; 2 uses
  %i.pv = extractvalue { i32, i32 } %i.pu, 0
  %i.pw = extractvalue { i32, i32 } %i.pu, 1
  %i.px = zext i32 %i.pv to i64
  %i.py = zext i32 %i.pw to i64
  %i.pz = shl nuw i64 %i.py, 32
  %i.qa = or disjoint i64 %i.pz, %i.px            ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ps, i64 496
  store i64 %i.qa, ptr %i.qb, align 8, !tbaa !402
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ps, i64 2584
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !404 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 2592
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !404
  %i.qg = icmp eq ptr %i.qd, %i.qf
  br i1 %i.qg, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %.noexc
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ps, i64 2608 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !421
  %i.qj = add nsw i32 %i.qi, 1                    ; 2 uses
  store i32 %i.qj, ptr %i.qh, align 8, !tbaa !421
  %i.qk = icmp eq i32 %i.qj, 3
  br i1 %i.qk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ps, i64 2612
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !422
  %i.qn = mul nsw i32 %i.qm, 60
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr [24 x i8], ptr %i.qd, i64 %i.qo ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 480    ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !423
  %i.qs = add nsw i32 %i.qr, 1
  store i32 %i.qs, ptr %i.qq, align 8, !tbaa !423
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ps, i64 2616
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !424
  %i.qv = sub i64 %i.qa, %i.qu
  %i.qw = getelementptr i8, ptr %i.qp, i64 488    ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !425
  %i.qy = add i64 %i.qv, %i.qx
  store i64 %i.qy, ptr %i.qw, align 8, !tbaa !425
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %.noexc, %bb.bo
  %i.qz = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.ra = trunc nuw i8 %.1170410 to i1
  %i.rb = ptrtoint ptr %.sroa.7324.0 to i64
  %i.rc = ptrtoint ptr %.sroa.0322.0 to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.0322.0, i64 %i.rd
  invoke void @_Z20do_redist_pos_coeffsP9gmx_pme_tbN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IKfEE(ptr noundef %i.qz, i1 noundef zeroext %i.ra, ptr %1, ptr %i.or, ptr %.sroa.0322.0, ptr %i.re)
          to label %bb.bt unwind label %bb.bl

bb.bt:                                            ; preds = %bb.bs
  %i.rf = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 592
  %i.rh = load i32, ptr %i.os, align 8, !tbaa !385
  %i.ri = sext i32 %i.rh to i64
  invoke void @_ZNSt6vectorIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.rg, i64 noundef %i.ri)
          to label %bb.bu unwind label %bb.bl

bb.bu:                                            ; preds = %bb.bt
  %i.rj = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 616
  %i.rl = load i32, ptr %i.os, align 8, !tbaa !385
  %i.rm = sext i32 %i.rl to i64
  invoke void @_ZNSt6vectorIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.rk, i64 noundef %i.rm)
          to label %bb.bv unwind label %bb.bl

bb.bv:                                            ; preds = %bb.bu
  %i.rn = load ptr, ptr %i.a, align 8, !tbaa !307 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 592
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !351
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 600
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !351
  invoke void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEEEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.rp, ptr %i.rr)
          to label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.preheader unwind label %bb.bl

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.preheader: ; preds = %bb.bv
  %i.rs = load i32, ptr %i.os, align 8, !tbaa !385 ; 3 uses
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %.lr.ph395, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge

.lr.ph395:                                        ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.preheader
  %i.ru = load ptr, ptr %29, align 8, !tbaa !281  ; 9 uses
  %wide.trip.count = zext nneg i32 %i.rs to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.rv = icmp ult i32 %i.rs, 8
  br i1 %i.rv, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil.preheader, label %.lr.ph395.new

.lr.ph395.new:                                    ; preds = %.lr.ph395
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit, %.lr.ph395.new
  %indvars.iv420 = phi i64 [ 0, %.lr.ph395.new ], [ %indvars.iv.next421.7, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph395.new ], [ %niter.next.7, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit ]
  %i.rw = load i64, ptr %i.ot, align 8
  %i.rx = inttoptr i64 %i.rw to ptr
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv420
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !285
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv420
  store float %i.rz, ptr %i.sa, align 4, !tbaa !285
  %indvars.iv.next421 = or disjoint i64 %indvars.iv420, 1 ; 2 uses
  %i.sb = load i64, ptr %i.ot, align 8
  %i.sc = inttoptr i64 %i.sb to ptr
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %indvars.iv.next421
  %i.se = load float, ptr %i.sd, align 4, !tbaa !285
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv.next421
  store float %i.se, ptr %i.sf, align 4, !tbaa !285
  %indvars.iv.next421.1 = or disjoint i64 %indvars.iv420, 2 ; 2 uses
  %i.sg = load i64, ptr %i.ot, align 8
  %i.sh = inttoptr i64 %i.sg to ptr
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv.next421.1
  %i.sj = load float, ptr %i.si, align 4, !tbaa !285
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv.next421.1
  store float %i.sj, ptr %i.sk, align 4, !tbaa !285
  %indvars.iv.next421.2 = or disjoint i64 %indvars.iv420, 3 ; 2 uses
  %i.sl = load i64, ptr %i.ot, align 8
  %i.sm = inttoptr i64 %i.sl to ptr
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.next421.2
  %i.so = load float, ptr %i.sn, align 4, !tbaa !285
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv.next421.2
  store float %i.so, ptr %i.sp, align 4, !tbaa !285
  %indvars.iv.next421.3 = or disjoint i64 %indvars.iv420, 4 ; 2 uses
  %i.sq = load i64, ptr %i.ot, align 8
  %i.sr = inttoptr i64 %i.sq to ptr
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv.next421.3
  %i.st = load float, ptr %i.ss, align 4, !tbaa !285
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv.next421.3
  store float %i.st, ptr %i.su, align 4, !tbaa !285
  %indvars.iv.next421.4 = or disjoint i64 %indvars.iv420, 5 ; 2 uses
  %i.sv = load i64, ptr %i.ot, align 8
  %i.sw = inttoptr i64 %i.sv to ptr
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv.next421.4
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !285
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv.next421.4
  store float %i.sy, ptr %i.sz, align 4, !tbaa !285
  %indvars.iv.next421.5 = or disjoint i64 %indvars.iv420, 6 ; 2 uses
  %i.ta = load i64, ptr %i.ot, align 8
  %i.tb = inttoptr i64 %i.ta to ptr
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv.next421.5
  %i.td = load float, ptr %i.tc, align 4, !tbaa !285
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv.next421.5
  store float %i.td, ptr %i.te, align 4, !tbaa !285
  %indvars.iv.next421.6 = or disjoint i64 %indvars.iv420, 7 ; 2 uses
  %i.tf = load i64, ptr %i.ot, align 8
  %i.tg = inttoptr i64 %i.tf to ptr
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv.next421.6
  %i.ti = load float, ptr %i.th, align 4, !tbaa !285
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv.next421.6
  store float %i.ti, ptr %i.tj, align 4, !tbaa !285
  %indvars.iv.next421.7 = add nuw nsw i64 %indvars.iv420, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge.loopexit.unr-lcssa, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit, !llvm.loop !691

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil.preheader

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil.preheader: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph395
  %indvars.iv420.epil.init = phi i64 [ 0, %.lr.ph395 ], [ %indvars.iv.next421.7, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod669 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod669)
  br label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil.preheader
  %indvars.iv420.epil = phi i64 [ %indvars.iv420.epil.init, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil.preheader ], [ %indvars.iv.next421.epil, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil.preheader ], [ %epil.iter.next, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil ]
  %i.tk = load i64, ptr %i.ot, align 8
  %i.tl = inttoptr i64 %i.tk to ptr
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %indvars.iv420.epil
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !285
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv420.epil
  store float %i.tn, ptr %i.to, align 4, !tbaa !285
  %indvars.iv.next421.epil = add nuw nsw i64 %indvars.iv420.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil, !llvm.loop !692

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.epil, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit.preheader
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.tq = ptrtoint ptr %.sroa.7.0 to i64
  %i.tr = ptrtoint ptr %.sroa.0318.0 to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0318.0, i64 %i.ts
  invoke void @_Z20do_redist_pos_coeffsP9gmx_pme_tbN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IKfEE(ptr noundef %i.tp, i1 noundef zeroext false, ptr %1, ptr %i.or, ptr %.sroa.0318.0, ptr %i.tt)
          to label %bb.bw unwind label %bb.bl

bb.bw:                                            ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit._crit_edge
  %i.tu = load ptr, ptr %i.a, align 8, !tbaa !307 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 616
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !351
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 624
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !351
  invoke void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEEEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr %i.tw, ptr %i.ty)
          to label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.preheader unwind label %bb.bl

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.preheader: ; preds = %bb.bw
  %i.tz = load i32, ptr %i.os, align 8, !tbaa !385 ; 3 uses
  %i.ua = icmp sgt i32 %i.tz, 0
  br i1 %i.ua, label %.lr.ph397, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge

.lr.ph397:                                        ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.preheader
  %i.ub = load ptr, ptr %30, align 8, !tbaa !281  ; 9 uses
  %wide.trip.count426 = zext nneg i32 %i.tz to i64 ; 2 uses
  %xtraiter670 = and i64 %wide.trip.count426, 7   ; 3 uses
  %i.uc = icmp ult i32 %i.tz, 8
  br i1 %i.uc, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil.preheader, label %.lr.ph397.new

.lr.ph397.new:                                    ; preds = %.lr.ph397
  %unroll_iter674 = and i64 %wide.trip.count426, 2147483640
  br label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge.loopexit.unr-lcssa: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207
  %lcmp.mod672.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod672.not, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil.preheader

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil.preheader: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge.loopexit.unr-lcssa, %.lr.ph397
  %indvars.iv423.epil.init = phi i64 [ 0, %.lr.ph397 ], [ %indvars.iv.next424.7, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod673 = icmp ne i64 %xtraiter670, 0
  call void @llvm.assume(i1 %lcmp.mod673)
  br label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil.preheader
  %indvars.iv423.epil = phi i64 [ %indvars.iv423.epil.init, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil.preheader ], [ %indvars.iv.next424.epil, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil ] ; 3 uses
  %epil.iter671 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil.preheader ], [ %epil.iter671.next, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil ]
  %i.ud = load i64, ptr %i.ot, align 8
  %i.ue = inttoptr i64 %i.ud to ptr
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %indvars.iv423.epil
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !285
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv423.epil
  store float %i.ug, ptr %i.uh, align 4, !tbaa !285
  %indvars.iv.next424.epil = add nuw nsw i64 %indvars.iv423.epil, 1
  %epil.iter671.next = add i64 %epil.iter671, 1   ; 2 uses
  %epil.iter671.cmp.not = icmp eq i64 %epil.iter671.next, %xtraiter670
  br i1 %epil.iter671.cmp.not, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil, !llvm.loop !693

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.epil, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207.preheader
  %i.ui = load ptr, ptr %i.c, align 8, !tbaa !393 ; 11 uses
  %i.uj = icmp eq ptr %i.ui, null
  br i1 %i.uj, label %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit197, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge
  invoke void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %i.ui)
          to label %.noexc211 unwind label %bb.bl

.noexc211:                                        ; preds = %bb.bx
  %i.uk = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !399 ; 2 uses
  %i.ul = extractvalue { i32, i32 } %i.uk, 0
  %i.um = extractvalue { i32, i32 } %i.uk, 1
  %i.un = zext i32 %i.ul to i64
  %i.uo = zext i32 %i.um to i64
  %i.up = shl nuw i64 %i.uo, 32
  %i.uq = or disjoint i64 %i.up, %i.un            ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ui, i64 480 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ui, i64 496
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !402 ; 2 uses
  %.not.i208 = icmp ult i64 %i.uq, %i.ut
  br i1 %.not.i208, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.noexc211
  %i.uu = sub nuw i64 %i.uq, %i.ut
  br label %bb.ca

bb.bz:                                            ; preds = %.noexc211
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ui, i64 2624
  store i8 1, ptr %i.uv, align 8, !tbaa !426
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0.i209 = phi i64 [ %i.uu, %bb.by ], [ 0, %bb.bz ]
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ui, i64 488 ; 2 uses
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !425
  %i.uy = add i64 %i.ux, %.0.i209
  store i64 %i.uy, ptr %i.uw, align 8, !tbaa !425
  %i.uz = load i32, ptr %i.ur, align 8, !tbaa !423
  %i.va = add nsw i32 %i.uz, 1
  store i32 %i.va, ptr %i.ur, align 8, !tbaa !423
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ui, i64 2584
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !404
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ui, i64 2592
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !404
  %i.vf = icmp eq ptr %i.vc, %i.ve
  br i1 %i.vf, label %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit197, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ui, i64 2608 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !421
  %i.vi = add nsw i32 %i.vh, -1                   ; 2 uses
  store i32 %i.vi, ptr %i.vg, align 8, !tbaa !421
  %i.vj = icmp eq i32 %i.vi, 2
  br i1 %i.vj, label %bb.cc, label %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit197

bb.cc:                                            ; preds = %bb.cb
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ui, i64 2612
  store i32 20, ptr %i.vk, align 4, !tbaa !422
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ui, i64 2616
  store i64 %i.uq, ptr %i.vl, align 8, !tbaa !424
  br label %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit197

_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207, %.lr.ph397.new
  %indvars.iv423 = phi i64 [ 0, %.lr.ph397.new ], [ %indvars.iv.next424.7, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207 ] ; 10 uses
  %niter675 = phi i64 [ 0, %.lr.ph397.new ], [ %niter675.next.7, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207 ]
  %i.vm = load i64, ptr %i.ot, align 8
  %i.vn = inttoptr i64 %i.vm to ptr
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv423
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !285
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv423
  store float %i.vp, ptr %i.vq, align 4, !tbaa !285
  %indvars.iv.next424 = or disjoint i64 %indvars.iv423, 1 ; 2 uses
  %i.vr = load i64, ptr %i.ot, align 8
  %i.vs = inttoptr i64 %i.vr to ptr
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv.next424
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !285
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.next424
  store float %i.vu, ptr %i.vv, align 4, !tbaa !285
  %indvars.iv.next424.1 = or disjoint i64 %indvars.iv423, 2 ; 2 uses
  %i.vw = load i64, ptr %i.ot, align 8
  %i.vx = inttoptr i64 %i.vw to ptr
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %indvars.iv.next424.1
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !285
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.next424.1
  store float %i.vz, ptr %i.wa, align 4, !tbaa !285
  %indvars.iv.next424.2 = or disjoint i64 %indvars.iv423, 3 ; 2 uses
  %i.wb = load i64, ptr %i.ot, align 8
  %i.wc = inttoptr i64 %i.wb to ptr
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %indvars.iv.next424.2
  %i.we = load float, ptr %i.wd, align 4, !tbaa !285
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.next424.2
  store float %i.we, ptr %i.wf, align 4, !tbaa !285
  %indvars.iv.next424.3 = or disjoint i64 %indvars.iv423, 4 ; 2 uses
  %i.wg = load i64, ptr %i.ot, align 8
  %i.wh = inttoptr i64 %i.wg to ptr
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv.next424.3
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !285
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.next424.3
  store float %i.wj, ptr %i.wk, align 4, !tbaa !285
  %indvars.iv.next424.4 = or disjoint i64 %indvars.iv423, 5 ; 2 uses
  %i.wl = load i64, ptr %i.ot, align 8
  %i.wm = inttoptr i64 %i.wl to ptr
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.next424.4
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !285
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.next424.4
  store float %i.wo, ptr %i.wp, align 4, !tbaa !285
  %indvars.iv.next424.5 = or disjoint i64 %indvars.iv423, 6 ; 2 uses
  %i.wq = load i64, ptr %i.ot, align 8
  %i.wr = inttoptr i64 %i.wq to ptr
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv.next424.5
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !285
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.next424.5
  store float %i.wt, ptr %i.wu, align 4, !tbaa !285
  %indvars.iv.next424.6 = or disjoint i64 %indvars.iv423, 7 ; 2 uses
  %i.wv = load i64, ptr %i.ot, align 8
  %i.ww = inttoptr i64 %i.wv to ptr
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv.next424.6
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !285
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.next424.6
  store float %i.wy, ptr %i.wz, align 4, !tbaa !285
  %indvars.iv.next424.7 = add nuw nsw i64 %indvars.iv423, 8 ; 2 uses
  %niter675.next.7 = add i64 %niter675, 8         ; 2 uses
  %niter675.ncmp.7 = icmp eq i64 %niter675.next.7, %unroll_iter674
  br i1 %niter675.ncmp.7, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge.loopexit.unr-lcssa, label %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207, !llvm.loop !694

_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit197: ; preds = %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit200.invoke, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge, %bb.cc, %bb.cb, %bb.ca
  %.sroa.11.0.in = phi ptr [ %i.pm, %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit200.invoke ], [ %i.pr, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge ], [ %i.pr, %bb.ca ], [ %i.pr, %bb.cb ], [ %i.pr, %bb.cc ] ; 3 uses
  %.sroa.0309.0 = phi ptr [ %i.pk, %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit200.invoke ], [ %i.pq, %_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfN3gmx30DefaultInitializationAllocatorIfS0_EEEEEvEEvT_SB_.exit207._crit_edge ], [ %i.pq, %bb.ca ], [ %i.pq, %bb.cb ], [ %i.pq, %bb.cc ] ; 41 uses
  %.sroa.11.0 = ptrtoint ptr %.sroa.11.0.in to i64
  %i.xa = ptrtoint ptr %.sroa.0309.0 to i64       ; 5 uses
  %i.xb = sub i64 %.sroa.11.0, %i.xa              ; 8 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0309.0, i64 %i.xb
  store ptr %.sroa.0309.0, ptr %i.ot, align 8
  store ptr %i.xc, ptr %.sroa.4.0..sroa_idx, align 8
  %i.xd = load ptr, ptr %29, align 8, !tbaa !281  ; 8 uses
  %i.xe = ptrtoaddr ptr %i.xd to i64
  %i.xf = load ptr, ptr %30, align 8, !tbaa !281  ; 8 uses
  %i.xg = ptrtoaddr ptr %i.xf to i64
  %i.xh = ashr exact i64 %i.xb, 2                 ; 37 uses
  %i.xi = icmp sgt i64 %i.xh, 0                   ; 4 uses
  br i1 %i.xi, label %iter.check655, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit

iter.check655:                                    ; preds = %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit197
  %min.iters.check636 = icmp ult i64 %i.xh, 4
  br i1 %min.iters.check636, label %.lr.ph.i.preheader, label %vector.memcheck631

vector.memcheck631:                               ; preds = %iter.check655
  %i.xj = sub i64 %i.xg, %i.xa
  %diff.check632 = icmp ugt i64 %i.xj, -128
  %i.xk = sub i64 %i.xe, %i.xa
  %diff.check633 = icmp ugt i64 %i.xk, -128
  %conflict.rdx634 = or i1 %diff.check632, %diff.check633
  br i1 %conflict.rdx634, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check637

vector.main.loop.iter.check637:                   ; preds = %vector.memcheck631
  %min.iters.check638 = icmp ult i64 %i.xh, 32
  br i1 %min.iters.check638, label %vec.epilog.ph659, label %vector.ph639

vector.ph639:                                     ; preds = %vector.main.loop.iter.check637
  %n.vec640 = and i64 %i.xh, 9223372036854775776  ; 4 uses
  br label %vector.body641

vector.body641:                                   ; preds = %vector.body641, %vector.ph639
  %index642 = phi i64 [ 0, %vector.ph639 ], [ %index.next651, %vector.body641 ] ; 4 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %index642 ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 64
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xl, i64 96
  %wide.load643 = load <8 x float>, ptr %i.xl, align 4, !tbaa !285 ; 2 uses
  %wide.load644 = load <8 x float>, ptr %i.xm, align 4, !tbaa !285 ; 2 uses
  %wide.load645 = load <8 x float>, ptr %i.xn, align 4, !tbaa !285 ; 2 uses
  %wide.load646 = load <8 x float>, ptr %i.xo, align 4, !tbaa !285 ; 2 uses
  %i.xp = fmul <8 x float> %wide.load643, %wide.load643 ; 2 uses
  %i.xq = fmul <8 x float> %wide.load644, %wide.load644 ; 2 uses
  %i.xr = fmul <8 x float> %wide.load645, %wide.load645 ; 2 uses
  %i.xs = fmul <8 x float> %wide.load646, %wide.load646 ; 2 uses
  %i.xt = fmul <8 x float> %i.xp, %i.xp
  %i.xu = fmul <8 x float> %i.xq, %i.xq
  %i.xv = fmul <8 x float> %i.xr, %i.xr
  %i.xw = fmul <8 x float> %i.xs, %i.xs
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %index642 ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 32
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xx, i64 64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 96
  %wide.load647 = load <8 x float>, ptr %i.xx, align 4, !tbaa !285
  %wide.load648 = load <8 x float>, ptr %i.xy, align 4, !tbaa !285
  %wide.load649 = load <8 x float>, ptr %i.xz, align 4, !tbaa !285
  %wide.load650 = load <8 x float>, ptr %i.ya, align 4, !tbaa !285
  %i.yb = fdiv <8 x float> %wide.load647, %i.xt
  %i.yc = fdiv <8 x float> %wide.load648, %i.xu
  %i.yd = fdiv <8 x float> %wide.load649, %i.xv
  %i.ye = fdiv <8 x float> %wide.load650, %i.xw
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %index642 ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 64
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 96
  store <8 x float> %i.yb, ptr %i.yf, align 4, !tbaa !285
  store <8 x float> %i.yc, ptr %i.yg, align 4, !tbaa !285
  store <8 x float> %i.yd, ptr %i.yh, align 4, !tbaa !285
  store <8 x float> %i.ye, ptr %i.yi, align 4, !tbaa !285
  %index.next651 = add nuw i64 %index642, 32      ; 2 uses
  %i.yj = icmp eq i64 %index.next651, %n.vec640
  br i1 %i.yj, label %middle.block652, label %vector.body641, !llvm.loop !695

middle.block652:                                  ; preds = %vector.body641
  %cmp.n653 = icmp eq i64 %i.xh, %n.vec640
  br i1 %cmp.n653, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit, label %vec.epilog.iter.check657

vec.epilog.iter.check657:                         ; preds = %middle.block652
  %i.yk = and i64 %i.xb, 112
  %min.epilog.iters.check658 = icmp eq i64 %i.yk, 0
  br i1 %min.epilog.iters.check658, label %.lr.ph.i.preheader, label %vec.epilog.ph659, !prof !738

vec.epilog.ph659:                                 ; preds = %vector.main.loop.iter.check637, %vec.epilog.iter.check657
  %vec.epilog.resume.val654 = phi i64 [ %n.vec640, %vec.epilog.iter.check657 ], [ 0, %vector.main.loop.iter.check637 ]
  %n.vec660 = and i64 %i.xh, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body661

vec.epilog.vector.body661:                        ; preds = %vec.epilog.vector.body661, %vec.epilog.ph659
  %index662 = phi i64 [ %vec.epilog.resume.val654, %vec.epilog.ph659 ], [ %index.next665, %vec.epilog.vector.body661 ] ; 4 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %index662
  %wide.load663 = load <4 x float>, ptr %i.yl, align 4, !tbaa !285 ; 2 uses
  %i.ym = fmul <4 x float> %wide.load663, %wide.load663 ; 2 uses
  %i.yn = fmul <4 x float> %i.ym, %i.ym
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %index662
  %wide.load664 = load <4 x float>, ptr %i.yo, align 4, !tbaa !285
  %i.yp = fdiv <4 x float> %wide.load664, %i.yn
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %index662
  store <4 x float> %i.yp, ptr %i.yq, align 4, !tbaa !285
  %index.next665 = add nuw i64 %index662, 4       ; 2 uses
  %i.yr = icmp eq i64 %index.next665, %n.vec660
  br i1 %i.yr, label %vec.epilog.middle.block666, label %vec.epilog.vector.body661, !llvm.loop !696

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body661
  %cmp.n667 = icmp eq i64 %i.xh, %n.vec660
  br i1 %cmp.n667, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck631, %iter.check655, %vec.epilog.iter.check657, %vec.epilog.middle.block666
  %.012.i.ph = phi i64 [ 0, %iter.check655 ], [ 0, %vector.memcheck631 ], [ %n.vec640, %vec.epilog.iter.check657 ], [ %n.vec660, %vec.epilog.middle.block666 ] ; 3 uses
  %xtraiter676 = and i64 %i.xh, 3                 ; 2 uses
  %lcmp.mod677.not = icmp eq i64 %xtraiter676, 0
  br i1 %lcmp.mod677.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.012.i.prol = phi i64 [ %i.za, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.012.i.prol
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !285 ; 2 uses
  %i.yu = fmul float %i.yt, %i.yt                 ; 2 uses
  %i.yv = fmul float %i.yu, %i.yu
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %.012.i.prol
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !285
  %i.yy = fdiv float %i.yx, %i.yv
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %.012.i.prol
  store float %i.yy, ptr %i.yz, align 4, !tbaa !285
  %i.za = add nuw nsw i64 %.012.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter676
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !697

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.za, %.lr.ph.i.prol ]
  %i.zb = sub nsw i64 %.012.i.ph, %i.xh
  %i.zc = icmp ugt i64 %i.zb, -4
  br i1 %i.zc, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aam, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.012.i
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !285 ; 2 uses
  %i.zf = fmul float %i.ze, %i.ze                 ; 2 uses
  %i.zg = fmul float %i.zf, %i.zf
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %.012.i
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !285
  %i.zj = fdiv float %i.zi, %i.zg
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %.012.i
  store float %i.zj, ptr %i.zk, align 4, !tbaa !285
  %i.zl = add nuw nsw i64 %.012.i, 1              ; 3 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.zl
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !285 ; 2 uses
  %i.zo = fmul float %i.zn, %i.zn                 ; 2 uses
  %i.zp = fmul float %i.zo, %i.zo
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.zl
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !285
  %i.zs = fdiv float %i.zr, %i.zp
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.zl
  store float %i.zs, ptr %i.zt, align 4, !tbaa !285
  %i.zu = add nuw nsw i64 %.012.i, 2              ; 3 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.zu
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !285 ; 2 uses
  %i.zx = fmul float %i.zw, %i.zw                 ; 2 uses
  %i.zy = fmul float %i.zx, %i.zx
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.zu
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !285
  %i.aab = fdiv float %i.aaa, %i.zy
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.zu
  store float %i.aab, ptr %i.aac, align 4, !tbaa !285
  %i.aad = add nuw nsw i64 %.012.i, 3             ; 3 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.aad
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !285 ; 2 uses
  %i.aag = fmul float %i.aaf, %i.aaf              ; 2 uses
  %i.aah = fmul float %i.aag, %i.aag
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.aad
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !285
  %i.aak = fdiv float %i.aaj, %i.aah
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.aad
  store float %i.aak, ptr %i.aal, align 4, !tbaa !285
  %i.aam = add nuw nsw i64 %.012.i, 4             ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.aam, %i.xh
  br i1 %exitcond.not.i.3, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit, label %.lr.ph.i, !llvm.loop !698

_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block652, %vec.epilog.middle.block666, %_ZNSt6vectorIfSaIfEE6assignIN3gmx12ArrayRefIterIKfEEvEEvT_S7_.exit197
  %i.aan = load ptr, ptr %i.a, align 8, !tbaa !307 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 240
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !359 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 248
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !359 ; 2 uses
  %.not376398 = icmp eq ptr %i.aap, %i.aar
  br i1 %.not376398, label %._crit_edge402, label %.lr.ph401.preheader

.lr.ph401.preheader:                              ; preds = %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit
  %i.aas = trunc nuw i8 %.1170410 to i1
  %min.iters.check598 = icmp ult i64 %i.xh, 4
  %min.iters.check600 = icmp ult i64 %i.xh, 32
  %n.vec602 = and i64 %i.xh, 9223372036854775776  ; 4 uses
  %cmp.n615 = icmp eq i64 %i.xh, %n.vec602
  %i.aat = and i64 %i.xb, 112
  %min.epilog.iters.check620 = icmp eq i64 %i.aat, 0
  %n.vec622 = and i64 %i.xh, 9223372036854775804  ; 3 uses
  %cmp.n629 = icmp eq i64 %i.xh, %n.vec622
  br label %.lr.ph401

._crit_edge402.loopexit:                          ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225
  %.pre458 = load ptr, ptr %i.a, align 8, !tbaa !307
  br label %._crit_edge402

._crit_edge402:                                   ; preds = %._crit_edge402.loopexit, %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit
  %i.aau = phi ptr [ %.pre458, %._crit_edge402.loopexit ], [ %i.aan, %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit ]
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 84
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !321
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.aaw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z10gmx_pme_doP9gmx_pme_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EENS2_IKfEES9_S9_S9_S9_S9_PA3_S8_iiP6t_nrnbP13gmx_wallcyclePA3_fSH_PfSI_ffSI_SI_RKNS1_12StepWorkloadE.omp_outlined.54, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.b)
  %i.aax = load i8, ptr %i.e, align 1, !tbaa !361, !range !320, !noundef !312
  %i.aay = trunc nuw i8 %i.aax to i1
  br i1 %i.aay, label %bb.cv, label %bb.cw

.lr.ph401:                                        ; preds = %.lr.ph401.preheader, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225
  %.2400 = phi i1 [ false, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225 ], [ %i.aas, %.lr.ph401.preheader ] ; 2 uses
  %.sroa.0287.0399 = phi ptr [ %i.ahw, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225 ], [ %i.aap, %.lr.ph401.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0287.0399, i64 216
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !373
  store ptr %i.aba, ptr %i.j, align 8, !tbaa !373
  %i.abb = load ptr, ptr %30, align 8, !tbaa !281 ; 13 uses
  br i1 %i.xi, label %iter.check617, label %.loopexit385

iter.check617:                                    ; preds = %.lr.ph401
  br i1 %min.iters.check598, label %.lr.ph.i213.preheader, label %vector.memcheck591

vector.memcheck591:                               ; preds = %iter.check617
  %scevgep593 = getelementptr i8, ptr %i.abb, i64 %i.xb
  %bound0594 = icmp ult ptr %.sroa.0309.0, %scevgep593
  %bound1595 = icmp ult ptr %i.abb, %.sroa.11.0.in
  %found.conflict596 = and i1 %bound0594, %bound1595
  br i1 %found.conflict596, label %.lr.ph.i213.preheader, label %vector.main.loop.iter.check599

vector.main.loop.iter.check599:                   ; preds = %vector.memcheck591
  br i1 %min.iters.check600, label %vec.epilog.ph621, label %vector.body603

vector.body603:                                   ; preds = %vector.main.loop.iter.check599, %vector.body603
  %index604 = phi i64 [ %index.next613, %vector.body603 ], [ 0, %vector.main.loop.iter.check599 ] ; 3 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %index604 ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abc, i64 64
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 96
  %wide.load605 = load <8 x float>, ptr %i.abc, align 4, !tbaa !285, !alias.scope !739
  %wide.load606 = load <8 x float>, ptr %i.abd, align 4, !tbaa !285, !alias.scope !739
  %wide.load607 = load <8 x float>, ptr %i.abe, align 4, !tbaa !285, !alias.scope !739
  %wide.load608 = load <8 x float>, ptr %i.abf, align 4, !tbaa !285, !alias.scope !739
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %index604 ; 5 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 32 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 64 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 96 ; 2 uses
  %wide.load609 = load <8 x float>, ptr %i.abg, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  %wide.load610 = load <8 x float>, ptr %i.abh, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  %wide.load611 = load <8 x float>, ptr %i.abi, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  %wide.load612 = load <8 x float>, ptr %i.abj, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  %i.abk = fmul <8 x float> %wide.load605, %wide.load609
  %i.abl = fmul <8 x float> %wide.load606, %wide.load610
  %i.abm = fmul <8 x float> %wide.load607, %wide.load611
  %i.abn = fmul <8 x float> %wide.load608, %wide.load612
  store <8 x float> %i.abk, ptr %i.abg, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  store <8 x float> %i.abl, ptr %i.abh, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  store <8 x float> %i.abm, ptr %i.abi, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  store <8 x float> %i.abn, ptr %i.abj, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  %index.next613 = add nuw i64 %index604, 32      ; 2 uses
  %i.abo = icmp eq i64 %index.next613, %n.vec602
  br i1 %i.abo, label %middle.block614, label %vector.body603, !llvm.loop !702

middle.block614:                                  ; preds = %vector.body603
  br i1 %cmp.n615, label %.loopexit385, label %vec.epilog.iter.check619

vec.epilog.iter.check619:                         ; preds = %middle.block614
  br i1 %min.epilog.iters.check620, label %.lr.ph.i213.preheader, label %vec.epilog.ph621, !prof !738

vec.epilog.ph621:                                 ; preds = %vector.main.loop.iter.check599, %vec.epilog.iter.check619
  %vec.epilog.resume.val616 = phi i64 [ %n.vec602, %vec.epilog.iter.check619 ], [ 0, %vector.main.loop.iter.check599 ]
  br label %vec.epilog.vector.body623

vec.epilog.vector.body623:                        ; preds = %vec.epilog.vector.body623, %vec.epilog.ph621
  %index624 = phi i64 [ %vec.epilog.resume.val616, %vec.epilog.ph621 ], [ %index.next627, %vec.epilog.vector.body623 ] ; 3 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %index624
  %wide.load625 = load <4 x float>, ptr %i.abp, align 4, !tbaa !285, !alias.scope !739
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %index624 ; 2 uses
  %wide.load626 = load <4 x float>, ptr %i.abq, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  %i.abr = fmul <4 x float> %wide.load625, %wide.load626
  store <4 x float> %i.abr, ptr %i.abq, align 4, !tbaa !285, !alias.scope !740, !noalias !739
  %index.next627 = add nuw i64 %index624, 4       ; 2 uses
  %i.abs = icmp eq i64 %index.next627, %n.vec622
  br i1 %i.abs, label %vec.epilog.middle.block628, label %vec.epilog.vector.body623, !llvm.loop !703

vec.epilog.middle.block628:                       ; preds = %vec.epilog.vector.body623
  br i1 %cmp.n629, label %.loopexit385, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %vector.memcheck591, %iter.check617, %vec.epilog.iter.check619, %vec.epilog.middle.block628
  %.05.i.ph = phi i64 [ 0, %iter.check617 ], [ 0, %vector.memcheck591 ], [ %n.vec602, %vec.epilog.iter.check619 ], [ %n.vec622, %vec.epilog.middle.block628 ] ; 4 uses
  %i.abt = sub nsw i64 %i.xh, %.05.i.ph
  %xtraiter678 = and i64 %i.abt, 7                ; 2 uses
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213.prol
  %.05.i.prol = phi i64 [ %i.abz, %.lr.ph.i213.prol ], [ %.05.i.ph, %.lr.ph.i213.preheader ] ; 3 uses
  %prol.iter680 = phi i64 [ %prol.iter680.next, %.lr.ph.i213.prol ], [ 0, %.lr.ph.i213.preheader ]
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %.05.i.prol
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !285
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %.05.i.prol ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !285
  %i.aby = fmul float %i.abv, %i.abx
  store float %i.aby, ptr %i.abw, align 4, !tbaa !285
  %i.abz = add nuw nsw i64 %.05.i.prol, 1         ; 2 uses
  %prol.iter680.next = add i64 %prol.iter680, 1   ; 2 uses
  %prol.iter680.cmp.not = icmp eq i64 %prol.iter680.next, %xtraiter678
  br i1 %prol.iter680.cmp.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol, !llvm.loop !704

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %.lr.ph.i213.preheader ], [ %i.abz, %.lr.ph.i213.prol ]
  %i.aca = sub nsw i64 %.05.i.ph, %i.xh
  %i.acb = icmp ugt i64 %i.aca, -8
  br i1 %i.acb, label %.loopexit385, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.05.i = phi i64 [ %i.adx, %.lr.ph.i213 ], [ %.05.i.unr, %.lr.ph.i213.prol.loopexit ] ; 10 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %.05.i
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !285
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %.05.i ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !285
  %i.acg = fmul float %i.acd, %i.acf
  store float %i.acg, ptr %i.ace, align 4, !tbaa !285
  %i.ach = add nuw nsw i64 %.05.i, 1              ; 2 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.ach
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !285
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.ach ; 2 uses
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !285
  %i.acm = fmul float %i.acj, %i.acl
  store float %i.acm, ptr %i.ack, align 4, !tbaa !285
  %i.acn = add nuw nsw i64 %.05.i, 2              ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.acn
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !285
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.acn ; 2 uses
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !285
  %i.acs = fmul float %i.acp, %i.acr
  store float %i.acs, ptr %i.acq, align 4, !tbaa !285
  %i.act = add nuw nsw i64 %.05.i, 3              ; 2 uses
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.act
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !285
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.act ; 2 uses
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !285
  %i.acy = fmul float %i.acv, %i.acx
  store float %i.acy, ptr %i.acw, align 4, !tbaa !285
  %i.acz = add nuw nsw i64 %.05.i, 4              ; 2 uses
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.acz
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !285
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.acz ; 2 uses
  %i.add = load float, ptr %i.adc, align 4, !tbaa !285
  %i.ade = fmul float %i.adb, %i.add
  store float %i.ade, ptr %i.adc, align 4, !tbaa !285
  %i.adf = add nuw nsw i64 %.05.i, 5              ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.adf
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !285
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.adf ; 2 uses
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !285
  %i.adk = fmul float %i.adh, %i.adj
  store float %i.adk, ptr %i.adi, align 4, !tbaa !285
  %i.adl = add nuw nsw i64 %.05.i, 6              ; 2 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.adl
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !285
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.adl ; 2 uses
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !285
  %i.adq = fmul float %i.adn, %i.adp
  store float %i.adq, ptr %i.ado, align 4, !tbaa !285
  %i.adr = add nuw nsw i64 %.05.i, 7              ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.adr
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !285
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.adr ; 2 uses
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !285
  %i.adw = fmul float %i.adt, %i.adv
  store float %i.adw, ptr %i.adu, align 4, !tbaa !285
  %i.adx = add nuw nsw i64 %.05.i, 8              ; 2 uses
  %exitcond.not.i214.7 = icmp eq i64 %i.adx, %i.xh
  br i1 %exitcond.not.i214.7, label %.loopexit385, label %.lr.ph.i213, !llvm.loop !705

.loopexit385:                                     ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %middle.block614, %vec.epilog.middle.block628, %.lr.ph401
  %i.ady = getelementptr inbounds nuw i8, ptr %.sroa.0287.0399, i64 56
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !388
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !280 ; 6 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.sroa.0287.0399, i64 64
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !389
  %.not.i.i215 = icmp eq ptr %i.aea, null
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.aec
  %spec.select.i.i216 = select i1 %.not.i.i215, ptr null, ptr %i.aed
  %i.aee = load ptr, ptr %i.c, align 8, !tbaa !393 ; 8 uses
  %i.aef = icmp eq ptr %i.aee, null
  br i1 %i.aef, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit220, label %bb.cd

bb.cd:                                            ; preds = %.loopexit385
  invoke void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %i.aee)
          to label %.noexc219 unwind label %bb.ci

.noexc219:                                        ; preds = %bb.cd
  %i.aeg = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !399 ; 2 uses
  %i.aeh = extractvalue { i32, i32 } %i.aeg, 0
  %i.aei = extractvalue { i32, i32 } %i.aeg, 1
  %i.aej = zext i32 %i.aeh to i64
  %i.aek = zext i32 %i.aei to i64
  %i.ael = shl nuw i64 %i.aek, 32
  %i.aem = or disjoint i64 %i.ael, %i.aej         ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aee, i64 520
  store i64 %i.aem, ptr %i.aen, align 8, !tbaa !402
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aee, i64 2584
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !404 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aee, i64 2592
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !404
  %i.aes = icmp eq ptr %i.aep, %i.aer
  br i1 %i.aes, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit220, label %bb.ce

bb.ce:                                            ; preds = %.noexc219
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aee, i64 2608 ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 8, !tbaa !421
  %i.aev = add nsw i32 %i.aeu, 1                  ; 2 uses
  store i32 %i.aev, ptr %i.aet, align 8, !tbaa !421
  %i.aew = icmp eq i32 %i.aev, 3
  br i1 %i.aew, label %bb.cf, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit220

bb.cf:                                            ; preds = %bb.ce
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aee, i64 2612
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !422
  %i.aez = mul nsw i32 %i.aey, 60
  %i.afa = sext i32 %i.aez to i64
  %i.afb = getelementptr [24 x i8], ptr %i.aep, i64 %i.afa ; 2 uses
  %i.afc = getelementptr i8, ptr %i.afb, i64 504  ; 2 uses
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !423
  %i.afe = add nsw i32 %i.afd, 1
  store i32 %i.afe, ptr %i.afc, align 8, !tbaa !423
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aee, i64 2616
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !424
  %i.afh = sub i64 %i.aem, %i.afg
  %i.afi = getelementptr i8, ptr %i.afb, i64 512  ; 2 uses
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !425
  %i.afk = add i64 %i.afh, %i.afj
  store i64 %i.afk, ptr %i.afi, align 8, !tbaa !425
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit220

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit220: ; preds = %bb.cf, %bb.ce, %.noexc219, %.loopexit385
  %i.afl = load ptr, ptr %i.a, align 8, !tbaa !307
  invoke void @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb(ptr noundef %i.afl, ptr noundef nonnull %i.v, ptr noundef nonnull %.sroa.0287.0399, i1 noundef zeroext %.2400, i1 noundef zeroext true, i1 noundef zeroext %i.di)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit220
  %.pre454 = load ptr, ptr %i.b, align 8, !tbaa !391 ; 2 uses
  %.pre455 = load i32, ptr %i.os, align 8, !tbaa !385 ; 2 uses
  br i1 %.2400, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.afm = mul nsw i32 %.pre455, 3
  %i.afn = sitofp i32 %i.afm to double
  %i.afo = getelementptr inbounds nuw i8, ptr %.pre454, i64 376 ; 2 uses
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !430
  %i.afq = fadd double %i.afp, %i.afn
  store double %i.afq, ptr %i.afo, align 8, !tbaa !430
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cp, %bb.cd, %bb.cn, %bb.cm, %bb.ck, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit220
  %i.afr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %bb.dn

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.afs = load ptr, ptr %i.a, align 8, !tbaa !307 ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 112
  %i.afu = load i32, ptr %i.aft, align 8, !tbaa !331 ; 3 uses
  %i.afv = mul nsw i32 %i.afu, %i.afu
  %i.afw = mul nsw i32 %i.afv, %i.afu
  %i.afx = mul nsw i32 %i.afw, %.pre455
  %i.afy = sitofp i32 %i.afx to double
  %i.afz = getelementptr inbounds nuw i8, ptr %.pre454, i64 392 ; 2 uses
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !430
  %i.agb = fadd double %i.aga, %i.afy
  store double %i.agb, ptr %i.afz, align 8, !tbaa !430
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afs, i64 84
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !321
  %i.age = icmp eq i32 %i.agd, 1
  br i1 %i.age, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.agf = ptrtoint ptr %spec.select.i.i216 to i64
  %i.agg = ptrtoint ptr %i.aea to i64
  %i.agh = sub i64 %i.agf, %i.agg
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.agh ; 2 uses
  invoke void @_Z21wrap_periodic_pmegridPK9gmx_pme_tN3gmx8ArrayRefIfEE(ptr noundef nonnull %i.afs, ptr %i.aea, ptr %i.agi)
          to label %bb.cl unwind label %bb.ci

bb.cl:                                            ; preds = %bb.ck
  %i.agj = load ptr, ptr %i.a, align 8, !tbaa !307 ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !314
  %i.agm = icmp sgt i32 %i.agl, 1
  br i1 %i.agm, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_Z16gmx_sum_qgrid_ddP9gmx_pme_tN3gmx8ArrayRefIfEEi(ptr noundef nonnull %i.agj, ptr %i.aea, ptr %i.agi, i32 noundef 0)
          to label %._crit_edge456 unwind label %bb.ci

._crit_edge456:                                   ; preds = %bb.cm
  %.pre457 = load ptr, ptr %i.a, align 8, !tbaa !307
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge456, %bb.cl
  %i.agn = phi ptr [ %.pre457, %._crit_edge456 ], [ %i.agj, %bb.cl ]
  %i.ago = invoke noundef i32 @_Z23copy_pmegrid_to_fftgridPK9gmx_pme_tP14PmeAndFftGrids(ptr noundef %i.agn, ptr noundef nonnull %.sroa.0287.0399)
          to label %bb.co unwind label %bb.ci     ; 0 uses

bb.co:                                            ; preds = %bb.cn, %bb.cj
  %i.agp = load ptr, ptr %i.c, align 8, !tbaa !393 ; 11 uses
  %i.agq = icmp eq ptr %i.agp, null
  br i1 %i.agq, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %i.agp)
          to label %.noexc224 unwind label %bb.ci

.noexc224:                                        ; preds = %bb.cp
  %i.agr = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !399 ; 2 uses
  %i.ags = extractvalue { i32, i32 } %i.agr, 0
  %i.agt = extractvalue { i32, i32 } %i.agr, 1
  %i.agu = zext i32 %i.ags to i64
  %i.agv = zext i32 %i.agt to i64
  %i.agw = shl nuw i64 %i.agv, 32
  %i.agx = or disjoint i64 %i.agw, %i.agu         ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agp, i64 504 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agp, i64 520
  %i.aha = load i64, ptr %i.agz, align 8, !tbaa !402 ; 2 uses
  %.not.i221 = icmp ult i64 %i.agx, %i.aha
  br i1 %.not.i221, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.noexc224
  %i.ahb = sub nuw i64 %i.agx, %i.aha
  br label %bb.cs

bb.cr:                                            ; preds = %.noexc224
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agp, i64 2624
  store i8 1, ptr %i.ahc, align 8, !tbaa !426
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0.i222 = phi i64 [ %i.ahb, %bb.cq ], [ 0, %bb.cr ]
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agp, i64 512 ; 2 uses
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !425
  %i.ahf = add i64 %i.ahe, %.0.i222
  store i64 %i.ahf, ptr %i.ahd, align 8, !tbaa !425
  %i.ahg = load i32, ptr %i.agy, align 8, !tbaa !423
  %i.ahh = add nsw i32 %i.ahg, 1
  store i32 %i.ahh, ptr %i.agy, align 8, !tbaa !423
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agp, i64 2584
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !404
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agp, i64 2592
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !404
  %i.ahm = icmp eq ptr %i.ahj, %i.ahl
  br i1 %i.ahm, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.agp, i64 2608 ; 2 uses
  %i.aho = load i32, ptr %i.ahn, align 8, !tbaa !421
  %i.ahp = add nsw i32 %i.aho, -1                 ; 2 uses
  store i32 %i.ahp, ptr %i.ahn, align 8, !tbaa !421
  %i.ahq = icmp eq i32 %i.ahp, 2
  br i1 %i.ahq, label %bb.cu, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225

bb.cu:                                            ; preds = %bb.ct
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agp, i64 2612
  store i32 21, ptr %i.ahr, align 4, !tbaa !422
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agp, i64 2616
  store i64 %i.agx, ptr %i.ahs, align 8, !tbaa !424
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit225: ; preds = %bb.co, %bb.cu, %bb.ct, %bb.cs
  %i.aht = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 84
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !321
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.ahv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_Z10gmx_pme_doP9gmx_pme_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EENS2_IKfEES9_S9_S9_S9_S9_PA3_S8_iiP6t_nrnbP13gmx_wallcyclePA3_fSH_PfSI_ffSI_SI_RKNS1_12StepWorkloadE.omp_outlined.53, ptr nonnull %i.c, ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.0287.0399, i64 224 ; 2 uses
  %.not376 = icmp eq ptr %i.ahw, %i.aar
  br i1 %.not376, label %._crit_edge402.loopexit, label %.lr.ph401

bb.cv:                                            ; preds = %._crit_edge402
  %i.ahx = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 984
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !365
  invoke void @_ZNK8PmeSolve20getLJEnergyAndVirialEP9PmeOutput(ptr noundef nonnull align 8 dereferenceable(24) %i.ahz, ptr noundef nonnull %indvars.iv428.sroa.phi)
          to label %bb.cw unwind label %bb.bl

bb.cw:                                            ; preds = %bb.cv, %._crit_edge402
  %i.aia = load ptr, ptr %i.a, align 8, !tbaa !307 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 91
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !325, !range !320, !noundef !312 ; 2 uses
  %i.aid = load ptr, ptr %29, align 8, !tbaa !281 ; 8 uses
  %i.aie = ptrtoaddr ptr %i.aid to i64
  %i.aif = load ptr, ptr %30, align 8, !tbaa !281 ; 9 uses
  %i.aig = ptrtoaddr ptr %i.aif to i64
  br i1 %i.xi, label %iter.check577, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229

iter.check577:                                    ; preds = %bb.cw
  %min.iters.check558 = icmp ult i64 %i.xh, 4
  br i1 %min.iters.check558, label %.lr.ph.i226.preheader, label %vector.memcheck555

vector.memcheck555:                               ; preds = %iter.check577
  %i.aih = sub i64 %i.aig, %i.xa
  %diff.check = icmp ugt i64 %i.aih, -128
  %i.aii = sub i64 %i.aie, %i.xa
  %diff.check556 = icmp ugt i64 %i.aii, -128
  %conflict.rdx = or i1 %diff.check, %diff.check556
  br i1 %conflict.rdx, label %.lr.ph.i226.preheader, label %vector.main.loop.iter.check559

vector.main.loop.iter.check559:                   ; preds = %vector.memcheck555
  %min.iters.check560 = icmp ult i64 %i.xh, 32
  br i1 %min.iters.check560, label %vec.epilog.ph581, label %vector.ph561

vector.ph561:                                     ; preds = %vector.main.loop.iter.check559
  %n.vec562 = and i64 %i.xh, 9223372036854775776  ; 4 uses
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph561
  %index564 = phi i64 [ 0, %vector.ph561 ], [ %index.next573, %vector.body563 ] ; 4 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %index564 ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 32
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aij, i64 96
  %wide.load565 = load <8 x float>, ptr %i.aij, align 4, !tbaa !285 ; 2 uses
  %wide.load566 = load <8 x float>, ptr %i.aik, align 4, !tbaa !285 ; 2 uses
  %wide.load567 = load <8 x float>, ptr %i.ail, align 4, !tbaa !285 ; 2 uses
  %wide.load568 = load <8 x float>, ptr %i.aim, align 4, !tbaa !285 ; 2 uses
  %i.ain = fmul <8 x float> %wide.load565, %wide.load565 ; 2 uses
  %i.aio = fmul <8 x float> %wide.load566, %wide.load566 ; 2 uses
  %i.aip = fmul <8 x float> %wide.load567, %wide.load567 ; 2 uses
  %i.aiq = fmul <8 x float> %wide.load568, %wide.load568 ; 2 uses
  %i.air = fmul <8 x float> %i.ain, %i.ain
  %i.ais = fmul <8 x float> %i.aio, %i.aio
  %i.ait = fmul <8 x float> %i.aip, %i.aip
  %i.aiu = fmul <8 x float> %i.aiq, %i.aiq
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %index564 ; 4 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiv, i64 64
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiv, i64 96
  %wide.load569 = load <8 x float>, ptr %i.aiv, align 4, !tbaa !285
  %wide.load570 = load <8 x float>, ptr %i.aiw, align 4, !tbaa !285
  %wide.load571 = load <8 x float>, ptr %i.aix, align 4, !tbaa !285
  %wide.load572 = load <8 x float>, ptr %i.aiy, align 4, !tbaa !285
  %i.aiz = fdiv <8 x float> %wide.load569, %i.air
  %i.aja = fdiv <8 x float> %wide.load570, %i.ais
  %i.ajb = fdiv <8 x float> %wide.load571, %i.ait
  %i.ajc = fdiv <8 x float> %wide.load572, %i.aiu
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %index564 ; 4 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 32
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 64
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 96
  store <8 x float> %i.aiz, ptr %i.ajd, align 4, !tbaa !285
  store <8 x float> %i.aja, ptr %i.aje, align 4, !tbaa !285
  store <8 x float> %i.ajb, ptr %i.ajf, align 4, !tbaa !285
  store <8 x float> %i.ajc, ptr %i.ajg, align 4, !tbaa !285
  %index.next573 = add nuw i64 %index564, 32      ; 2 uses
  %i.ajh = icmp eq i64 %index.next573, %n.vec562
  br i1 %i.ajh, label %middle.block574, label %vector.body563, !llvm.loop !706

middle.block574:                                  ; preds = %vector.body563
  %cmp.n575 = icmp eq i64 %i.xh, %n.vec562
  br i1 %cmp.n575, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229, label %vec.epilog.iter.check579

vec.epilog.iter.check579:                         ; preds = %middle.block574
  %i.aji = and i64 %i.xb, 112
  %min.epilog.iters.check580 = icmp eq i64 %i.aji, 0
  br i1 %min.epilog.iters.check580, label %.lr.ph.i226.preheader, label %vec.epilog.ph581, !prof !738

vec.epilog.ph581:                                 ; preds = %vector.main.loop.iter.check559, %vec.epilog.iter.check579
  %vec.epilog.resume.val576 = phi i64 [ %n.vec562, %vec.epilog.iter.check579 ], [ 0, %vector.main.loop.iter.check559 ]
  %n.vec582 = and i64 %i.xh, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body583

vec.epilog.vector.body583:                        ; preds = %vec.epilog.vector.body583, %vec.epilog.ph581
  %index584 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph581 ], [ %index.next587, %vec.epilog.vector.body583 ] ; 4 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %index584
  %wide.load585 = load <4 x float>, ptr %i.ajj, align 4, !tbaa !285 ; 2 uses
  %i.ajk = fmul <4 x float> %wide.load585, %wide.load585 ; 2 uses
  %i.ajl = fmul <4 x float> %i.ajk, %i.ajk
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %index584
  %wide.load586 = load <4 x float>, ptr %i.ajm, align 4, !tbaa !285
  %i.ajn = fdiv <4 x float> %wide.load586, %i.ajl
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %index584
  store <4 x float> %i.ajn, ptr %i.ajo, align 4, !tbaa !285
  %index.next587 = add nuw i64 %index584, 4       ; 2 uses
  %i.ajp = icmp eq i64 %index.next587, %n.vec582
  br i1 %i.ajp, label %vec.epilog.middle.block588, label %vec.epilog.vector.body583, !llvm.loop !707

vec.epilog.middle.block588:                       ; preds = %vec.epilog.vector.body583
  %cmp.n589 = icmp eq i64 %i.xh, %n.vec582
  br i1 %cmp.n589, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229, label %.lr.ph.i226.preheader

.lr.ph.i226.preheader:                            ; preds = %vector.memcheck555, %iter.check577, %vec.epilog.iter.check579, %vec.epilog.middle.block588
  %.012.i227.ph = phi i64 [ 0, %iter.check577 ], [ 0, %vector.memcheck555 ], [ %n.vec562, %vec.epilog.iter.check579 ], [ %n.vec582, %vec.epilog.middle.block588 ] ; 3 uses
  %xtraiter681 = and i64 %i.xh, 3                 ; 2 uses
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %.lr.ph.i226.prol.loopexit, label %.lr.ph.i226.prol

.lr.ph.i226.prol:                                 ; preds = %.lr.ph.i226.preheader, %.lr.ph.i226.prol
  %.012.i227.prol = phi i64 [ %i.ajy, %.lr.ph.i226.prol ], [ %.012.i227.ph, %.lr.ph.i226.preheader ] ; 4 uses
  %prol.iter683 = phi i64 [ %prol.iter683.next, %.lr.ph.i226.prol ], [ 0, %.lr.ph.i226.preheader ]
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %.012.i227.prol
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !285 ; 2 uses
  %i.ajs = fmul float %i.ajr, %i.ajr              ; 2 uses
  %i.ajt = fmul float %i.ajs, %i.ajs
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %.012.i227.prol
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !285
  %i.ajw = fdiv float %i.ajv, %i.ajt
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %.012.i227.prol
  store float %i.ajw, ptr %i.ajx, align 4, !tbaa !285
  %i.ajy = add nuw nsw i64 %.012.i227.prol, 1     ; 2 uses
  %prol.iter683.next = add i64 %prol.iter683, 1   ; 2 uses
  %prol.iter683.cmp.not = icmp eq i64 %prol.iter683.next, %xtraiter681
  br i1 %prol.iter683.cmp.not, label %.lr.ph.i226.prol.loopexit, label %.lr.ph.i226.prol, !llvm.loop !708

.lr.ph.i226.prol.loopexit:                        ; preds = %.lr.ph.i226.prol, %.lr.ph.i226.preheader
  %.012.i227.unr = phi i64 [ %.012.i227.ph, %.lr.ph.i226.preheader ], [ %i.ajy, %.lr.ph.i226.prol ]
  %i.ajz = sub nsw i64 %.012.i227.ph, %i.xh
  %i.aka = icmp ugt i64 %i.ajz, -4
  br i1 %i.aka, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229, label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %.lr.ph.i226.prol.loopexit, %.lr.ph.i226
  %.012.i227 = phi i64 [ %i.alk, %.lr.ph.i226 ], [ %.012.i227.unr, %.lr.ph.i226.prol.loopexit ] ; 7 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %.012.i227
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !285 ; 2 uses
  %i.akd = fmul float %i.akc, %i.akc              ; 2 uses
  %i.ake = fmul float %i.akd, %i.akd
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %.012.i227
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !285
  %i.akh = fdiv float %i.akg, %i.ake
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %.012.i227
  store float %i.akh, ptr %i.aki, align 4, !tbaa !285
  %i.akj = add nuw nsw i64 %.012.i227, 1          ; 3 uses
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.akj
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !285 ; 2 uses
  %i.akm = fmul float %i.akl, %i.akl              ; 2 uses
  %i.akn = fmul float %i.akm, %i.akm
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.akj
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !285
  %i.akq = fdiv float %i.akp, %i.akn
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.akj
  store float %i.akq, ptr %i.akr, align 4, !tbaa !285
  %i.aks = add nuw nsw i64 %.012.i227, 2          ; 3 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.aks
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !285 ; 2 uses
  %i.akv = fmul float %i.aku, %i.aku              ; 2 uses
  %i.akw = fmul float %i.akv, %i.akv
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.aks
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !285
  %i.akz = fdiv float %i.aky, %i.akw
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.aks
  store float %i.akz, ptr %i.ala, align 4, !tbaa !285
  %i.alb = add nuw nsw i64 %.012.i227, 3          ; 3 uses
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.alb
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !285 ; 2 uses
  %i.ale = fmul float %i.ald, %i.ald              ; 2 uses
  %i.alf = fmul float %i.ale, %i.ale
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.alb
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !285
  %i.ali = fdiv float %i.alh, %i.alf
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.alb
  store float %i.ali, ptr %i.alj, align 4, !tbaa !285
  %i.alk = add nuw nsw i64 %.012.i227, 4          ; 2 uses
  %exitcond.not.i228.3 = icmp eq i64 %i.alk, %i.xh
  br i1 %exitcond.not.i228.3, label %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229, label %.lr.ph.i226, !llvm.loop !709

_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229: ; preds = %.lr.ph.i226.prol.loopexit, %.lr.ph.i226, %middle.block574, %vec.epilog.middle.block588, %bb.cw
  %i.all = xor i8 %i.aic, 1
  %i.alm = getelementptr inbounds nuw i8, ptr %i.aia, i64 240
  %i.aln = getelementptr inbounds nuw i8, ptr %i.aia, i64 248
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !353
  %i.alp = load ptr, ptr %i.alm, align 8, !tbaa !354
  %i.alq = ptrtoint ptr %i.alo to i64
  %i.alr = ptrtoint ptr %i.alp to i64
  %i.als = sub i64 %i.alq, %i.alr                 ; 2 uses
  %i.alt = icmp sgt i64 %i.als, 0
  br i1 %i.alt, label %.lr.ph406, label %._crit_edge407

.lr.ph406:                                        ; preds = %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229
  %i.alu = udiv exact i64 %i.als, 224
  %spec.select183 = select i1 %i.pa, float %i.ox, float %.0164
  %i.alv = icmp eq i8 %i.aic, 0
  %min.iters.check532 = icmp ult i64 %i.xh, 4
  %min.iters.check533 = icmp ult i64 %i.xh, 32
  %n.vec535 = and i64 %i.xh, 9223372036854775776  ; 4 uses
  %cmp.n547 = icmp eq i64 %i.xh, %n.vec535
  %i.alw = and i64 %i.xb, 112
  %min.epilog.iters.check = icmp eq i64 %i.alw, 0
  %n.vec548 = and i64 %i.xh, 9223372036854775804  ; 3 uses
  %cmp.n553 = icmp eq i64 %i.xh, %n.vec548
  br label %bb.cz

._crit_edge407.loopexit:                          ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit244
  %.pre462 = load ptr, ptr %30, align 8, !tbaa !281
  br label %._crit_edge407

._crit_edge407:                                   ; preds = %._crit_edge407.loopexit, %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229
  %i.alx = phi ptr [ %i.aif, %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229 ], [ %.pre462, %._crit_edge407.loopexit ] ; 3 uses
  %.3.lcssa = phi i8 [ %i.all, %_ZL22calc_initial_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEES3_.exit229 ], [ 0, %._crit_edge407.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.alx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge407
  %i.aly = load ptr, ptr %i.oy, align 8, !tbaa !282
  %i.alz = ptrtoint ptr %i.aly to i64
  %i.ama = ptrtoint ptr %i.alx to i64
  %i.amb = sub i64 %i.alz, %i.ama
  call void @_ZdlPvm(ptr noundef nonnull %i.alx, i64 noundef %i.amb) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge407, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11
  %i.amc = load ptr, ptr %29, align 8, !tbaa !281 ; 3 uses
  %.not.i.i.i230 = icmp eq ptr %i.amc, null
  br i1 %.not.i.i.i230, label %_ZNSt6vectorIfSaIfEED2Ev.exit231, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.amd = load ptr, ptr %i.oz, align 8, !tbaa !282
  %i.ame = ptrtoint ptr %i.amd to i64
  %i.amf = ptrtoint ptr %i.amc to i64
  %i.amg = sub i64 %i.ame, %i.amf
  call void @_ZdlPvm(ptr noundef nonnull %i.amc, i64 noundef %i.amg) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit231

_ZNSt6vectorIfSaIfEED2Ev.exit231:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  %i.amh = and i1 %i.pa, %i.ol
  br i1 %i.amh, label %bb.bi, label %.loopexit386, !llvm.loop !710

bb.cz:                                            ; preds = %.lr.ph406, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit244
  %.0166405.in = phi i64 [ %i.alu, %.lr.ph406 ], [ %.0166405, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit244 ] ; 2 uses
  %.3404 = phi i1 [ %i.alv, %.lr.ph406 ], [ false, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit244 ]
  %.0166405 = add nsw i64 %.0166405.in, -1        ; 3 uses
  %i.ami = load ptr, ptr %i.a, align 8, !tbaa !307 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 240
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !354
  %i.aml = getelementptr inbounds nuw [224 x i8], ptr %i.amk, i64 %.0166405 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 216
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !373
  store ptr %i.amn, ptr %i.k, align 8, !tbaa !373
  %i.amo = getelementptr inbounds nuw i8, ptr %i.aml, i64 56
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !388
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !280 ; 7 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.aml, i64 64
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !389
  %.not.i.i232 = icmp eq ptr %i.amq, null
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.amq, i64 %i.ams
  %spec.select.i.i233 = select i1 %.not.i.i232, ptr null, ptr %i.amt
  %i.amu = load ptr, ptr %30, align 8, !tbaa !281 ; 13 uses
  br i1 %i.xi, label %iter.check, label %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239

iter.check:                                       ; preds = %bb.cz
  br i1 %min.iters.check532, label %.lr.ph.i236.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep530 = getelementptr i8, ptr %i.amu, i64 %i.xb
  %bound0 = icmp ult ptr %.sroa.0309.0, %scevgep530
  %bound1 = icmp ult ptr %i.amu, %.sroa.11.0.in
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i236.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check533, label %vec.epilog.ph, label %vector.body536

vector.body536:                                   ; preds = %vector.main.loop.iter.check, %vector.body536
  %index537 = phi i64 [ %index.next545, %vector.body536 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %index537 ; 4 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 32
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amv, i64 64
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 96
  %wide.load = load <8 x float>, ptr %i.amv, align 4, !tbaa !285, !alias.scope !741
  %wide.load538 = load <8 x float>, ptr %i.amw, align 4, !tbaa !285, !alias.scope !741
  %wide.load539 = load <8 x float>, ptr %i.amx, align 4, !tbaa !285, !alias.scope !741
  %wide.load540 = load <8 x float>, ptr %i.amy, align 4, !tbaa !285, !alias.scope !741
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %index537 ; 5 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 32 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amz, i64 64 ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amz, i64 96 ; 2 uses
  %wide.load541 = load <8 x float>, ptr %i.amz, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  %wide.load542 = load <8 x float>, ptr %i.ana, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  %wide.load543 = load <8 x float>, ptr %i.anb, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  %wide.load544 = load <8 x float>, ptr %i.anc, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  %i.and = fmul <8 x float> %wide.load, %wide.load541
  %i.ane = fmul <8 x float> %wide.load538, %wide.load542
  %i.anf = fmul <8 x float> %wide.load539, %wide.load543
  %i.ang = fmul <8 x float> %wide.load540, %wide.load544
  store <8 x float> %i.and, ptr %i.amz, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  store <8 x float> %i.ane, ptr %i.ana, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  store <8 x float> %i.anf, ptr %i.anb, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  store <8 x float> %i.ang, ptr %i.anc, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  %index.next545 = add nuw i64 %index537, 32      ; 2 uses
  %i.anh = icmp eq i64 %index.next545, %n.vec535
  br i1 %i.anh, label %middle.block546, label %vector.body536, !llvm.loop !714

middle.block546:                                  ; preds = %vector.body536
  br i1 %cmp.n547, label %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block546
  br i1 %min.epilog.iters.check, label %.lr.ph.i236.preheader, label %vec.epilog.ph, !prof !738

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec535, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index549 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next552, %vec.epilog.vector.body ] ; 3 uses
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %index549
  %wide.load550 = load <4 x float>, ptr %i.ani, align 4, !tbaa !285, !alias.scope !741
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %index549 ; 2 uses
  %wide.load551 = load <4 x float>, ptr %i.anj, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  %i.ank = fmul <4 x float> %wide.load550, %wide.load551
  store <4 x float> %i.ank, ptr %i.anj, align 4, !tbaa !285, !alias.scope !742, !noalias !741
  %index.next552 = add nuw i64 %index549, 4       ; 2 uses
  %i.anl = icmp eq i64 %index.next552, %n.vec548
  br i1 %i.anl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !715

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n553, label %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239, label %.lr.ph.i236.preheader

.lr.ph.i236.preheader:                            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i237.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec535, %vec.epilog.iter.check ], [ %n.vec548, %vec.epilog.middle.block ] ; 4 uses
  %i.anm = sub nsw i64 %i.xh, %.05.i237.ph
  %xtraiter684 = and i64 %i.anm, 7                ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.lr.ph.i236.prol.loopexit, label %.lr.ph.i236.prol

.lr.ph.i236.prol:                                 ; preds = %.lr.ph.i236.preheader, %.lr.ph.i236.prol
  %.05.i237.prol = phi i64 [ %i.ans, %.lr.ph.i236.prol ], [ %.05.i237.ph, %.lr.ph.i236.preheader ] ; 3 uses
  %prol.iter686 = phi i64 [ %prol.iter686.next, %.lr.ph.i236.prol ], [ 0, %.lr.ph.i236.preheader ]
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %.05.i237.prol
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !285
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %.05.i237.prol ; 2 uses
  %i.anq = load float, ptr %i.anp, align 4, !tbaa !285
  %i.anr = fmul float %i.ano, %i.anq
  store float %i.anr, ptr %i.anp, align 4, !tbaa !285
  %i.ans = add nuw nsw i64 %.05.i237.prol, 1      ; 2 uses
  %prol.iter686.next = add i64 %prol.iter686, 1   ; 2 uses
  %prol.iter686.cmp.not = icmp eq i64 %prol.iter686.next, %xtraiter684
  br i1 %prol.iter686.cmp.not, label %.lr.ph.i236.prol.loopexit, label %.lr.ph.i236.prol, !llvm.loop !716

.lr.ph.i236.prol.loopexit:                        ; preds = %.lr.ph.i236.prol, %.lr.ph.i236.preheader
  %.05.i237.unr = phi i64 [ %.05.i237.ph, %.lr.ph.i236.preheader ], [ %i.ans, %.lr.ph.i236.prol ]
  %i.ant = sub nsw i64 %.05.i237.ph, %i.xh
  %i.anu = icmp ugt i64 %i.ant, -8
  br i1 %i.anu, label %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239, label %.lr.ph.i236

.lr.ph.i236:                                      ; preds = %.lr.ph.i236.prol.loopexit, %.lr.ph.i236
  %.05.i237 = phi i64 [ %i.apq, %.lr.ph.i236 ], [ %.05.i237.unr, %.lr.ph.i236.prol.loopexit ] ; 10 uses
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %.05.i237
  %i.anw = load float, ptr %i.anv, align 4, !tbaa !285
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %.05.i237 ; 2 uses
  %i.any = load float, ptr %i.anx, align 4, !tbaa !285
  %i.anz = fmul float %i.anw, %i.any
  store float %i.anz, ptr %i.anx, align 4, !tbaa !285
  %i.aoa = add nuw nsw i64 %.05.i237, 1           ; 2 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %i.aoa
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !285
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.aoa ; 2 uses
  %i.aoe = load float, ptr %i.aod, align 4, !tbaa !285
  %i.aof = fmul float %i.aoc, %i.aoe
  store float %i.aof, ptr %i.aod, align 4, !tbaa !285
  %i.aog = add nuw nsw i64 %.05.i237, 2           ; 2 uses
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %i.aog
  %i.aoi = load float, ptr %i.aoh, align 4, !tbaa !285
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.aog ; 2 uses
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !285
  %i.aol = fmul float %i.aoi, %i.aok
  store float %i.aol, ptr %i.aoj, align 4, !tbaa !285
  %i.aom = add nuw nsw i64 %.05.i237, 3           ; 2 uses
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %i.aom
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !285
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.aom ; 2 uses
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !285
  %i.aor = fmul float %i.aoo, %i.aoq
  store float %i.aor, ptr %i.aop, align 4, !tbaa !285
  %i.aos = add nuw nsw i64 %.05.i237, 4           ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %i.aos
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !285
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.aos ; 2 uses
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !285
  %i.aox = fmul float %i.aou, %i.aow
  store float %i.aox, ptr %i.aov, align 4, !tbaa !285
  %i.aoy = add nuw nsw i64 %.05.i237, 5           ; 2 uses
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %i.aoy
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !285
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.aoy ; 2 uses
  %i.apc = load float, ptr %i.apb, align 4, !tbaa !285
  %i.apd = fmul float %i.apa, %i.apc
  store float %i.apd, ptr %i.apb, align 4, !tbaa !285
  %i.ape = add nuw nsw i64 %.05.i237, 6           ; 2 uses
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %i.ape
  %i.apg = load float, ptr %i.apf, align 4, !tbaa !285
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.ape ; 2 uses
  %i.api = load float, ptr %i.aph, align 4, !tbaa !285
  %i.apj = fmul float %i.apg, %i.api
  store float %i.apj, ptr %i.aph, align 4, !tbaa !285
  %i.apk = add nuw nsw i64 %.05.i237, 7           ; 2 uses
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %i.apk
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !285
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0309.0, i64 %i.apk ; 2 uses
  %i.apo = load float, ptr %i.apn, align 4, !tbaa !285
  %i.app = fmul float %i.apm, %i.apo
  store float %i.app, ptr %i.apn, align 4, !tbaa !285
  %i.apq = add nuw nsw i64 %.05.i237, 8           ; 2 uses
  %exitcond.not.i238.7 = icmp eq i64 %i.apq, %i.xh
  br i1 %exitcond.not.i238.7, label %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239, label %.lr.ph.i236, !llvm.loop !717

_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239: ; preds = %.lr.ph.i236.prol.loopexit, %.lr.ph.i236, %middle.block546, %vec.epilog.middle.block, %bb.cz
  %i.apr = getelementptr inbounds nuw i8, ptr %i.ami, i64 84
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !321
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.aps)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z10gmx_pme_doP9gmx_pme_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EENS2_IKfEES9_S9_S9_S9_S9_PA3_S8_iiP6t_nrnbP13gmx_wallcyclePA3_fSH_PfSI_ffSI_SI_RKNS1_12StepWorkloadE.omp_outlined.55, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.aml)
  %i.apt = load ptr, ptr %i.a, align 8, !tbaa !307 ; 3 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 16
  %i.apv = load i32, ptr %i.apu, align 8, !tbaa !314
  %i.apw = icmp sgt i32 %i.apv, 1
  %i.apx = ptrtoint ptr %spec.select.i.i233 to i64
  %i.apy = ptrtoint ptr %i.amq to i64
  %i.apz = sub i64 %i.apx, %i.apy                 ; 2 uses
  br i1 %i.apw, label %bb.da, label %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239._crit_edge

bb.da:                                            ; preds = %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.amq, i64 %i.apz
  invoke void @_Z16gmx_sum_qgrid_ddP9gmx_pme_tN3gmx8ArrayRefIfEEi(ptr noundef nonnull %i.apt, ptr %i.amq, ptr %i.aqa, i32 noundef 1)
          to label %._crit_edge459 unwind label %bb.db

._crit_edge459:                                   ; preds = %bb.da
  %.pre460 = load ptr, ptr %i.a, align 8, !tbaa !307
  br label %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239._crit_edge

bb.db:                                            ; preds = %bb.dh, %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239._crit_edge, %bb.da
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %bb.dn

_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239._crit_edge: ; preds = %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239, %._crit_edge459
  %i.aqc = phi ptr [ %.pre460, %._crit_edge459 ], [ %i.apt, %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239 ]
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.amq, i64 %i.apz
  invoke void @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE(ptr noundef %i.aqc, ptr %i.amq, ptr %i.aqd)
          to label %bb.dc unwind label %bb.db

bb.dc:                                            ; preds = %_ZL19calc_next_lb_coeffsN3gmx8ArrayRefIfEENS0_IKfEE.exit239._crit_edge
  %i.aqe = load i8, ptr %i.ow, align 1, !tbaa !737, !range !320, !noundef !312
  %i.aqf = trunc nuw i8 %i.aqe to i1
  br i1 %i.aqf, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  %.pre461 = load ptr, ptr %i.a, align 8, !tbaa !307 ; 3 uses
  br i1 %.3404, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aqg = getelementptr inbounds nuw i8, ptr %.pre461, i64 88
  %i.aqh = load i8, ptr %i.aqg, align 8, !tbaa !323, !range !320, !noundef !312
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
end_hunk_0
