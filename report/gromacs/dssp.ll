Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/dssp?download=true
inline.NumInlined: 2059
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jo, ptr %i.jq, align 8, !tbaa !378, !noalias !365
  br label %.sink.split.i74.i

bb.by:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i
  store ptr %i.jo, ptr %i.jn, align 8, !tbaa !378, !noalias !365
  br label %.sink.split.i74.i

.sink.split.i74.i:                                ; preds = %bb.by, %bb.bx, %bb.bt, %bb.bs
  %.sink113.i.i = phi ptr [ %i.je, %bb.bt ], [ %i.je, %bb.bs ], [ %i.jn, %bb.bx ], [ %i.jn, %bb.by ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.sink113.i.i, i64 72
  store i8 1, ptr %i.jr, align 8, !tbaa !384, !noalias !365
  br label %bb.bz

bb.bz:                                            ; preds = %.sink.split.i74.i, %bb.bo
  %i.js = add nuw i64 %i.ie, 1                    ; 2 uses
  %.val44.i.i = load ptr, ptr %i.x, align 8, !tbaa !129, !noalias !365 ; 3 uses
  %.val45.i.i = load ptr, ptr %i.bj, align 8, !tbaa !127, !noalias !365
  %i.jt = ptrtoint ptr %.val45.i.i to i64
  %i.ju = ptrtoint ptr %.val44.i.i to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = sdiv exact i64 %i.jv, 136               ; 2 uses
  %i.jx = icmp ult i64 %i.js, %i.jw
  br i1 %i.jx, label %bb.bm, label %.preheader.i65.i, !llvm.loop !304

.lr.ph99.i.i:                                     ; preds = %.preheader.i65.i, %bb.cf
  %.val98.i.i = phi ptr [ %.val.i72.i, %bb.cf ], [ %.val44.i.i, %.preheader.i65.i ] ; 2 uses
  %i.jy = phi i64 [ %i.mn, %bb.cf ], [ 4, %.preheader.i65.i ] ; 2 uses
  %.097.i.i = phi i64 [ %i.mm, %bb.cf ], [ 2, %.preheader.i65.i ] ; 7 uses
  %i.jz = add i64 %.097.i.i, -2                   ; 2 uses
  %.val65.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 3 uses
  %i.ka = getelementptr inbounds nuw [112 x i8], ptr %.val65.i.i, i64 %i.jz ; 2 uses
  %i.kb = getelementptr [112 x i8], ptr %.val65.i.i, i64 %.097.i.i ; 8 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 -112   ; 3 uses
  %.val80.i66.i = load ptr, ptr %i.ka, align 8, !tbaa !378, !noalias !365
  %i.kd = getelementptr i8, ptr %i.ka, i64 8
  %.val81.i.i = load ptr, ptr %i.kd, align 8, !noalias !365
  %i.ke = icmp eq ptr %.val80.i66.i, %i.kc
  %i.kf = icmp eq ptr %.val81.i.i, %i.kc
  %i.kg = select i1 %i.ke, i1 true, i1 %i.kf
  br i1 %i.kg, label %bb.cf, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph99.i.i
  %.val78.i67.i = load ptr, ptr %i.kc, align 8, !tbaa !378, !noalias !365
  %i.kh = getelementptr i8, ptr %i.kb, i64 -104
  %.val79.i.i = load ptr, ptr %i.kh, align 8, !noalias !365
  %i.ki = icmp eq ptr %.val78.i67.i, %i.kb
  %i.kj = icmp eq ptr %.val79.i.i, %i.kb
  %i.kk = select i1 %i.ki, i1 true, i1 %i.kj
  br i1 %i.kk, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kl = getelementptr i8, ptr %i.kb, i64 112    ; 3 uses
  %.val76.i68.i = load ptr, ptr %i.kb, align 8, !tbaa !378, !noalias !365
  %i.km = getelementptr i8, ptr %i.kb, i64 8
  %.val77.i69.i = load ptr, ptr %i.km, align 8, !noalias !365
  %i.kn = icmp eq ptr %.val76.i68.i, %i.kl
  %i.ko = icmp eq ptr %.val77.i69.i, %i.kl
  %i.kp = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %i.kp, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kq = getelementptr inbounds nuw [112 x i8], ptr %.val65.i.i, i64 %i.jy ; 2 uses
  %.val74.i70.i = load ptr, ptr %i.kl, align 8, !tbaa !378, !noalias !365
  %i.kr = getelementptr i8, ptr %i.kb, i64 120
  %.val75.i71.i = load ptr, ptr %i.kr, align 8, !noalias !365
  %i.ks = icmp eq ptr %.val74.i70.i, %i.kq
  %i.kt = icmp eq ptr %.val75.i71.i, %i.kq
  %i.ku = select i1 %i.ks, i1 true, i1 %i.kt
  br i1 %i.ku, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kv = load ptr, ptr %i.ia, align 8, !tbaa !156, !noalias !365 ; 2 uses
  %i.kw = getelementptr inbounds nuw [136 x i8], ptr %.val98.i.i, i64 %.097.i.i
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !81, !noalias !365
  %i.ky = getelementptr inbounds nuw [12 x i8], ptr %i.kv, i64 %i.kx
  %i.kz = getelementptr inbounds nuw [136 x i8], ptr %.val98.i.i, i64 %i.jz
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !81, !noalias !365
  %i.lb = getelementptr inbounds nuw [12 x i8], ptr %i.kv, i64 %i.la
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef %3, ptr noundef %i.ky, ptr noundef %i.lb, ptr noundef nonnull %7), !noalias !365
  %i.lc = load ptr, ptr %i.ia, align 8, !tbaa !156, !noalias !365 ; 2 uses
  %.val47.i.i = load ptr, ptr %i.x, align 8, !tbaa !129, !noalias !365 ; 2 uses
  %i.ld = getelementptr inbounds nuw [136 x i8], ptr %.val47.i.i, i64 %i.jy
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !81, !noalias !365
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.lc, i64 %i.le
  %i.lg = getelementptr inbounds nuw [136 x i8], ptr %.val47.i.i, i64 %.097.i.i
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !81, !noalias !365
  %i.li = getelementptr inbounds nuw [12 x i8], ptr %i.lc, i64 %i.lh
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef %3, ptr noundef %i.lf, ptr noundef %i.li, ptr noundef nonnull %8), !noalias !365
  %i.lj = load float, ptr %i.hr, align 4, !tbaa !76, !noalias !365 ; 3 uses
  %i.lk = load float, ptr %i.hu, align 8, !tbaa !76, !noalias !365 ; 3 uses
  %i.ll = load float, ptr %i.hs, align 8, !tbaa !76, !noalias !365 ; 3 uses
  %i.lm = load float, ptr %i.ht, align 4, !tbaa !76, !noalias !365 ; 3 uses
  %i.ln = fneg float %i.lm
  %i.lo = fmul float %i.ll, %i.ln
  %i.lp = call float @llvm.fmuladd.f32(float %i.lj, float %i.lk, float %i.lo) ; 2 uses
  %i.lq = load float, ptr %8, align 8, !tbaa !76, !noalias !365 ; 3 uses
  %i.lr = load float, ptr %7, align 8, !tbaa !76, !noalias !365 ; 3 uses
  %i.ls = fneg float %i.lk
  %i.lt = fmul float %i.lr, %i.ls
  %i.lu = call float @llvm.fmuladd.f32(float %i.ll, float %i.lq, float %i.lt) ; 2 uses
  %i.lv = fneg float %i.lq
  %i.lw = fmul float %i.lj, %i.lv
  %i.lx = call float @llvm.fmuladd.f32(float %i.lr, float %i.lm, float %i.lw) ; 2 uses
  %i.ly = fmul float %i.lu, %i.lu
  %i.lz = call float @llvm.fmuladd.f32(float %i.lp, float %i.lp, float %i.ly)
  %i.ma = call noundef float @llvm.fmuladd.f32(float %i.lx, float %i.lx, float %i.lz)
  %sqrt.i.i88.i.i = call noundef float @llvm.sqrt.f32(float %i.ma)
  %i.mb = fmul float %i.lj, %i.lm
  %i.mc = call float @llvm.fmuladd.f32(float %i.lr, float %i.lq, float %i.mb)
  %i.md = call noundef float @llvm.fmuladd.f32(float %i.ll, float %i.lk, float %i.mc)
  %i.me = call noundef float @atan2f(float noundef %sqrt.i.i88.i.i, float noundef %i.md) #28, !noalias !365
  %i.mf = fpext float %i.me to double
  %i.mg = fmul double %i.mf, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.mh = fptrunc double %i.mg to float
  %i.mi = fcmp une float %i.mh, 3.600000e+02
  %i.mj = fcmp ogt double %i.mg, f0x4051800010000000
  %or.cond.i.i = and i1 %i.mj, %i.mi
  br i1 %or.cond.i.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.val57.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.mk = getelementptr inbounds nuw [112 x i8], ptr %.val57.i.i, i64 %.097.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  store i64 2, ptr %i.ml, align 8, !tbaa !385, !noalias !365
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %.lr.ph99.i.i
  %i.mm = add nuw i64 %.097.i.i, 1
  %i.mn = add nuw i64 %.097.i.i, 3                ; 2 uses
  %.val.i72.i = load ptr, ptr %i.x, align 8, !tbaa !129, !noalias !365 ; 2 uses
  %.val43.i.i = load ptr, ptr %i.bj, align 8, !tbaa !127, !noalias !365
  %i.mo = ptrtoint ptr %.val43.i.i to i64
  %i.mp = ptrtoint ptr %.val.i72.i to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = sdiv exact i64 %i.mq, 136
  %i.ms = icmp ult i64 %i.mn, %i.mr
  br i1 %i.ms, label %.lr.ph99.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i, !llvm.loop !305

_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i: ; preds = %bb.cf, %.preheader.i65.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures27analyzeHydrogenBondsInFrameERK10t_trxframePK5t_pbcbf.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !365
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 16 uses
  %.val88362.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 3 uses
  %.val89363.i.i = load ptr, ptr %i.mt, align 8, !tbaa !87, !noalias !365 ; 3 uses
  %i.mu = ptrtoint ptr %.val89363.i.i to i64
  %i.mv = ptrtoint ptr %.val88362.i.i to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = sdiv exact i64 %i.mw, 112               ; 2 uses
  %i.my = icmp ugt i64 %i.mx, 5
  br i1 %i.my, label %.lr.ph366.i.i, label %.preheader335.i.i

.lr.ph366.i.i:                                    ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.cg

.preheader335.i.i:                                ; preds = %._crit_edge.i83.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i
  %.val125177.pre.i262.i = phi ptr [ %.val89363.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i ], [ %.val89.i.i, %._crit_edge.i83.i ]
  %.val124176.pre.i259.i = phi ptr [ %.val88362.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i ], [ %.val88.i84.i, %._crit_edge.i83.i ]
  %.pre-phi434.i.i = phi i64 [ %i.mx, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i ], [ %.pre-phi430.i.i, %._crit_edge.i83.i ]
  %i.na = icmp ugt i64 %.pre-phi434.i.i, 2
  br i1 %i.na, label %.preheader334.lr.ph.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i

.preheader334.lr.ph.i.i:                          ; preds = %.preheader335.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.preheader334.i.i

bb.cg:                                            ; preds = %._crit_edge.i83.i, %.lr.ph366.i.i
  %.val89417.i.i = phi ptr [ %.val89363.i.i, %.lr.ph366.i.i ], [ %.val89.i.i, %._crit_edge.i83.i ] ; 2 uses
  %.val88415.i.i = phi ptr [ %.val88362.i.i, %.lr.ph366.i.i ], [ %.val88.i84.i, %._crit_edge.i83.i ] ; 3 uses
  %.070364.i.i = phi i64 [ 1, %.lr.ph366.i.i ], [ %.pre-phi452.i.i, %._crit_edge.i83.i ] ; 12 uses
  %i.nc = add nuw i64 %.070364.i.i, 4             ; 2 uses
  %i.nd = ptrtoint ptr %.val89417.i.i to i64
  %i.ne = ptrtoint ptr %.val88415.i.i to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = sdiv exact i64 %i.nf, 112               ; 2 uses
  %i.nh = icmp ult i64 %i.nc, %i.ng
  br i1 %i.nh, label %.lr.ph.i85.i, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.cg
  %.pre451.i.i = add nuw i64 %.070364.i.i, 1
  br label %._crit_edge.i83.i

.lr.ph.i85.i:                                     ; preds = %bb.cg
  %i.ni = add nuw i64 %.070364.i.i, 3
  %i.nj = add nuw i64 %.070364.i.i, 1             ; 2 uses
  %i.nk = add i64 %.070364.i.i, -1                ; 7 uses
  br label %bb.ch

._crit_edge.i83.i:                                ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, %.._crit_edge_crit_edge.i.i
  %.pre-phi452.i.i = phi i64 [ %.pre451.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.nj, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ]
  %.pre-phi430.i.i = phi i64 [ %i.ng, %.._crit_edge_crit_edge.i.i ], [ %i.aal, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %.val89.i.i = phi ptr [ %.val89417.i.i, %.._crit_edge_crit_edge.i.i ], [ %.val87.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %.val88.i84.i = phi ptr [ %.val88415.i.i, %.._crit_edge_crit_edge.i.i ], [ %.val86.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %i.nl = add nuw i64 %.070364.i.i, 5
  %i.nm = icmp ult i64 %i.nl, %.pre-phi430.i.i
  br i1 %i.nm, label %bb.cg, label %.preheader335.i.i, !llvm.loop !306

bb.ch:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, %.lr.ph.i85.i
  %.val86361.i.i = phi ptr [ %.val88415.i.i, %.lr.ph.i85.i ], [ %.val86.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 6 uses
  %i.nn = phi i64 [ %i.nc, %.lr.ph.i85.i ], [ %i.aah, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 7 uses
  %.074360.i.i = phi i64 [ %i.ni, %.lr.ph.i85.i ], [ %i.nn, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 8 uses
  %.val40.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !129, !noalias !365 ; 17 uses
  %.val41.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !127, !noalias !365
  %i.no = ptrtoint ptr %.val41.i.i.i to i64
  %i.np = ptrtoint ptr %.val40.i.i.i to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = sdiv exact i64 %i.nq, 136
  %.not34.i.i.i = icmp ult i64 %i.nn, %i.nr
  br i1 %.not34.i.i.i, label %.lr.ph.i.i.preheader.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.ch
  %i.ns = getelementptr inbounds nuw [112 x i8], ptr %.val86361.i.i, i64 %i.nk ; 4 uses
  %i.nt = getelementptr inbounds nuw [112 x i8], ptr %.val86361.i.i, i64 %.070364.i.i ; 14 uses
  %.val4.i.i.i.i = load ptr, ptr %i.ns, align 8, !tbaa !378, !noalias !365
  %i.nu = getelementptr i8, ptr %i.ns, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.nu, align 8, !noalias !365
  %i.nv = icmp eq ptr %.val4.i.i.i.i, %i.nt
  %i.nw = icmp eq ptr %.val5.i.i.i.i, %i.nt
  %i.nx = select i1 %i.nv, i1 true, i1 %i.nw
  %.val4.i.i.1.pre.i.i = load ptr, ptr %i.nt, align 8, !tbaa !378, !noalias !365 ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nt, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.ny, align 8, !noalias !365 ; 2 uses
  br i1 %i.nx, label %bb.ci, label %.lr.ph.i.i.1.i.i

bb.ci:                                            ; preds = %.lr.ph.i.i.preheader.i.i
  %i.nz = icmp eq ptr %.val4.i.i.1.pre.i.i, %i.ns
  %i.oa = icmp eq ptr %.val3.i.i.i.i, %i.ns
  %i.ob = select i1 %i.nz, i1 true, i1 %i.oa
  br i1 %i.ob, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %.lr.ph.i.i.1.i.i

.lr.ph.i.i.1.i.i:                                 ; preds = %bb.ci, %.lr.ph.i.i.preheader.i.i
  %i.oc = getelementptr i8, ptr %i.nt, i64 112    ; 3 uses
  %i.od = icmp eq ptr %.val4.i.i.1.pre.i.i, %i.oc
  %i.oe = icmp eq ptr %.val3.i.i.i.i, %i.oc
  %i.of = select i1 %i.od, i1 true, i1 %i.oe
  br i1 %i.of, label %bb.cj, label %16

bb.cj:                                            ; preds = %.lr.ph.i.i.1.i.i
  %.val.i.i.1.i.i = load ptr, ptr %i.oc, align 8, !tbaa !378, !noalias !365
  %i.og = getelementptr i8, ptr %i.nt, i64 120
  %.val3.i.i.1.i.i = load ptr, ptr %i.og, align 8, !noalias !365
  %i.oh = icmp eq ptr %.val.i.i.1.i.i, %i.nt
  %i.oi = icmp eq ptr %.val3.i.i.1.i.i, %i.nt
  %i.oj = select i1 %i.oh, i1 true, i1 %i.oi
  br i1 %i.oj, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %16

16:                                               ; preds = %bb.cj, %.lr.ph.i.i.1.i.i
  %17 = add i64 %.074360.i.i, -1                  ; 7 uses
  %spec.select9.i48.i.i.i = call i64 @llvm.umax.i64(i64 %17, i64 %i.nn)
  %spec.select.i49.i.i.i = call i64 @llvm.umin.i64(i64 %17, i64 %i.nn)
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %bb.cl, %16
  %.111.i51.i.i.i = phi i64 [ %18, %bb.cl ], [ %spec.select.i49.i.i.i, %16 ] ; 2 uses
  %i.ok = getelementptr inbounds nuw [112 x i8], ptr %.val86361.i.i, i64 %.111.i51.i.i.i ; 4 uses
  %18 = add i64 %.111.i51.i.i.i, 1                ; 3 uses
  %i.ol = getelementptr inbounds nuw [112 x i8], ptr %.val86361.i.i, i64 %18 ; 4 uses
  %.val4.i52.i.i.i = load ptr, ptr %i.ok, align 8, !tbaa !378, !noalias !365
  %i.om = getelementptr i8, ptr %i.ok, i64 8
  %.val5.i53.i.i.i = load ptr, ptr %i.om, align 8, !noalias !365
  %i.on = icmp eq ptr %.val4.i52.i.i.i, %i.ol
  %i.oo = icmp eq ptr %.val5.i53.i.i.i, %i.ol
  %i.op = select i1 %i.on, i1 true, i1 %i.oo
  br i1 %i.op, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph.i50.i.i.i
  %.val.i56.i.i.i = load ptr, ptr %i.ol, align 8, !tbaa !378, !noalias !365
  %i.oq = getelementptr i8, ptr %i.ol, i64 8
  %.val3.i57.i.i.i = load ptr, ptr %i.oq, align 8, !noalias !365
  %i.or = icmp eq ptr %.val.i56.i.i.i, %i.ok
  %i.os = icmp eq ptr %.val3.i57.i.i.i, %i.ok
  %i.ot = select i1 %i.or, i1 true, i1 %i.os
  br i1 %i.ot, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph.i50.i.i.i
  %.not.i54.i.i.i = icmp eq i64 %18, %spec.select9.i48.i.i.i
  br i1 %.not.i54.i.i.i, label %bb.cm, label %.lr.ph.i50.i.i.i, !llvm.loop !307

bb.cm:                                            ; preds = %bb.cl
  %i.ou = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %.070364.i.i ; 18 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 96
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !138, !noalias !365
  %.not35.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not35.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 104
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !139, !noalias !365
  %.not36.i.i.i = icmp eq ptr %i.oy, null
  br i1 %.not36.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.oz = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %.074360.i.i ; 16 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 96
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !138, !noalias !365
  %.not37.i.i.i = icmp eq ptr %i.pb, null
  br i1 %.not37.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 104
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !139, !noalias !365
  %.not38.i.i.i = icmp eq ptr %i.pd, null
  br i1 %.not38.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pe = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nj ; 8 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 80
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 56
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !135, !noalias !365 ; 8 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 120 ; 2 uses
  %i.pj = load float, ptr %i.mz, align 8, !noalias !365 ; 16 uses
  %i.pk = load i64, ptr %i.bm, align 8, !noalias !365
  %.fr20.i211.i.i = freeze i64 %i.pk
  %i.pl = icmp eq i64 %.fr20.i211.i.i, 1
  %i.pm = load ptr, ptr %i.pf, align 8, !tbaa !157, !noalias !365 ; 3 uses
  %i.pn = icmp eq ptr %i.pm, %i.ph                ; 2 uses
  br i1 %i.pl, label %.split.us.i215.i.i, label %.split.preheader.i212.i.i

.split.preheader.i212.i.i:                        ; preds = %bb.cq
  br i1 %i.pn, label %bb.cr, label %.split.1.i213.i.i

.split.us.i215.i.i:                               ; preds = %bb.cq
  br i1 %i.pn, label %.split.us.i207.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i

bb.cr:                                            ; preds = %.split.preheader.i212.i.i
  %i.po = load float, ptr %i.pi, align 8, !tbaa !76, !noalias !365
  %i.pp = fcmp olt float %i.po, %i.pj
  br i1 %i.pp, label %.split.preheader.i204.i.i, label %.split.1.i213.i.i

.split.1.i213.i.i:                                ; preds = %bb.cr, %.split.preheader.i212.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 88
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !157, !noalias !365
  %i.ps = icmp eq ptr %i.pr, %i.ph
  br i1 %i.ps, label %bb.cs, label %.split.preheader.i196.i.i

bb.cs:                                            ; preds = %.split.1.i213.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pe, i64 124
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !76, !noalias !365
  %i.pv = fcmp olt float %i.pu, %i.pj
  br i1 %i.pv, label %.split.preheader.i204.i.i, label %.split.preheader.i196.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i: ; preds = %.split.us.i215.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pe, i64 88
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !157, !noalias !365
  %i.py = icmp eq ptr %i.px, %i.ph
  br i1 %i.py, label %.thread.i.i, label %.split.us.i199.i.i

.thread.i.i:                                      ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.oz, i64 80
  %i.qa = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 56
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.qd = load ptr, ptr %i.pz, align 8, !tbaa !157, !noalias !365
  %i.qe = icmp eq ptr %i.qd, %i.qc
  br i1 %i.qe, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i

.split.preheader.i204.i.i:                        ; preds = %bb.cs, %bb.cr
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oz, i64 80
  %i.qg = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 56
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.qj = load ptr, ptr %i.qf, align 8, !tbaa !157, !noalias !365
  %i.qk = icmp eq ptr %i.qj, %i.qi
  br i1 %i.qk, label %bb.ct, label %.split.1.i205.i.i

.split.us.i207.i.i:                               ; preds = %.split.us.i215.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.oz, i64 80
  %i.qm = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 56
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.qp = load ptr, ptr %i.ql, align 8, !tbaa !157, !noalias !365
  %i.qq = icmp eq ptr %i.qp, %i.qo
  br i1 %i.qq, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i

bb.ct:                                            ; preds = %.split.preheader.i204.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.oz, i64 120
  %i.qs = load float, ptr %i.qr, align 8, !tbaa !76, !noalias !365
  %i.qt = fcmp olt float %i.qs, %i.pj
  br i1 %i.qt, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.1.i205.i.i

.split.1.i205.i.i:                                ; preds = %bb.ct, %.split.preheader.i204.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !157, !noalias !365
  %i.qw = icmp eq ptr %i.qv, %i.qi
  br i1 %i.qw, label %bb.cu, label %.split.preheader.i196.i.i

bb.cu:                                            ; preds = %.split.1.i205.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oz, i64 124
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !76, !noalias !365
  %i.qz = fcmp olt float %i.qy, %i.pj
  br i1 %i.qz, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.preheader.i196.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i: ; preds = %.split.us.i207.i.i, %.thread.i.i
  %i.ra = phi ptr [ %i.qc, %.thread.i.i ], [ %i.qo, %.split.us.i207.i.i ]
  %i.rb = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !157, !noalias !365
  %i.rd = icmp eq ptr %i.rc, %i.ra
  br i1 %i.rd, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.us.i199.i.i

.split.preheader.i196.i.i:                        ; preds = %bb.cu, %.split.1.i205.i.i, %bb.cs, %.split.1.i213.i.i
  %i.re = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nn ; 6 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 80
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ou, i64 56
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !135, !noalias !365 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 120 ; 2 uses
  %i.rj = load ptr, ptr %i.rf, align 8, !tbaa !157, !noalias !365 ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.rh
  br i1 %i.rk, label %bb.cv, label %.split.1.i197.i.i

.split.us.i199.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i
  %i.rl = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nn ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 80
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ou, i64 56
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !135, !noalias !365 ; 4 uses
  %i.rp = load ptr, ptr %i.rm, align 8, !tbaa !157, !noalias !365 ; 3 uses
  %i.rq = icmp eq ptr %i.rp, %i.ro
  br i1 %i.rq, label %.split.us.i191.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i

bb.cv:                                            ; preds = %.split.preheader.i196.i.i
  %i.rr = load float, ptr %i.ri, align 8, !tbaa !76, !noalias !365
  %i.rs = fcmp olt float %i.rr, %i.pj
  br i1 %i.rs, label %.split.preheader.i188.i.i, label %.split.1.i197.i.i

.split.1.i197.i.i:                                ; preds = %bb.cv, %.split.preheader.i196.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.re, i64 88
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !157, !noalias !365
  %i.rv = icmp eq ptr %i.ru, %i.rh
  br i1 %i.rv, label %bb.cw, label %.split.preheader.i180.i.i

bb.cw:                                            ; preds = %.split.1.i197.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.re, i64 124
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !76, !noalias !365
  %i.ry = fcmp olt float %i.rx, %i.pj
  br i1 %i.ry, label %.split.preheader.i188.i.i, label %.split.preheader.i180.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i: ; preds = %.split.us.i199.i.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rl, i64 88
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !157, !noalias !365
  %i.sb = icmp eq ptr %i.sa, %i.ro
  br i1 %i.sb, label %.thread253.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i
  %.phi.trans.insert410.i.i = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %17
  %.phi.trans.insert411.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert410.i.i, i64 56
  %.pre.i89.i = load ptr, ptr %.phi.trans.insert411.i.i, align 8, !tbaa !135, !noalias !365
  br label %.split.us.i183.i.i

.thread253.i.i:                                   ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.sd = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %17
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 56
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.sg = load ptr, ptr %i.sc, align 8, !tbaa !157, !noalias !365
  %i.sh = icmp eq ptr %i.sg, %i.sf
  br i1 %i.sh, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i

.split.preheader.i188.i.i:                        ; preds = %bb.cw, %bb.cv
  %i.si = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.sj = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %17
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 56
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.sm = load ptr, ptr %i.si, align 8, !tbaa !157, !noalias !365
  %i.sn = icmp eq ptr %i.sm, %i.sl
  br i1 %i.sn, label %bb.cx, label %.split.1.i189.i.i

.split.us.i191.i.i:                               ; preds = %.split.us.i199.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.sp = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %17
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 56
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.ss = load ptr, ptr %i.so, align 8, !tbaa !157, !noalias !365
  %i.st = icmp eq ptr %i.ss, %i.sr
  br i1 %i.st, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i

bb.cx:                                            ; preds = %.split.preheader.i188.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.ou, i64 120
  %i.sv = load float, ptr %i.su, align 8, !tbaa !76, !noalias !365
  %i.sw = fcmp olt float %i.sv, %i.pj
  br i1 %i.sw, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.1.i189.i.i

.split.1.i189.i.i:                                ; preds = %bb.cx, %.split.preheader.i188.i.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !157, !noalias !365
  %i.sz = icmp eq ptr %i.sy, %i.sl
  br i1 %i.sz, label %bb.cy, label %.split.preheader.i180.i.i

bb.cy:                                            ; preds = %.split.1.i189.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ou, i64 124
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !76, !noalias !365
  %i.tc = fcmp olt float %i.tb, %i.pj
  br i1 %i.tc, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.preheader.i180.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i: ; preds = %.split.us.i191.i.i, %.thread253.i.i
  %i.td = phi ptr [ %i.sf, %.thread253.i.i ], [ %i.sr, %.split.us.i191.i.i ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !157, !noalias !365
  %i.tg = icmp eq ptr %i.tf, %i.td
  br i1 %i.tg, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.us.i183.i.i

.split.preheader.i180.i.i:                        ; preds = %bb.cy, %.split.1.i189.i.i, %bb.cw, %.split.1.i197.i.i
  %i.th = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %17
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 56
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.tk = icmp eq ptr %i.pm, %i.tj
  br i1 %i.tk, label %bb.cz, label %.split.1.i181.i.i

.split.us.i183.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i
  %i.tl = phi ptr [ %.pre.i89.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i ], [ %i.td, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i ] ; 2 uses
  %i.tm = icmp eq ptr %i.pm, %i.tl
  br i1 %i.tm, label %.split.us.i175.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i

bb.cz:                                            ; preds = %.split.preheader.i180.i.i
  %i.tn = load float, ptr %i.pi, align 8, !tbaa !76, !noalias !365
  %i.to = fcmp olt float %i.tn, %i.pj
  br i1 %i.to, label %.split.preheader.i172.i.i, label %.split.1.i181.i.i

.split.1.i181.i.i:                                ; preds = %bb.cz, %.split.preheader.i180.i.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.pe, i64 88
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !157, !noalias !365
  %i.tr = icmp eq ptr %i.tq, %i.tj
  br i1 %i.tr, label %bb.da, label %.split.preheader.i164.i.i

bb.da:                                            ; preds = %.split.1.i181.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.pe, i64 124
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !76, !noalias !365
  %i.tu = fcmp olt float %i.tt, %i.pj
  br i1 %i.tu, label %.split.preheader.i172.i.i, label %.split.preheader.i164.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i: ; preds = %.split.us.i183.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.pe, i64 88
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !157, !noalias !365
  %i.tx = icmp eq ptr %i.tw, %i.tl
  br i1 %i.tx, label %.thread289.i.i, label %.split.us.i167.i.i

.thread289.i.i:                                   ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i
  %i.ty = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 56
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.ub = icmp eq ptr %i.rp, %i.ua
  br i1 %i.ub, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i

.split.preheader.i172.i.i:                        ; preds = %bb.da, %bb.cz
  %i.uc = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 56
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.uf = icmp eq ptr %i.rj, %i.ue
  br i1 %i.uf, label %bb.db, label %.split.1.i173.i.i

.split.us.i175.i.i:                               ; preds = %.split.us.i183.i.i
  %i.ug = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 56
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.uj = icmp eq ptr %i.rp, %i.ui
  br i1 %i.uj, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i

bb.db:                                            ; preds = %.split.preheader.i172.i.i
  %i.uk = load float, ptr %i.ri, align 8, !tbaa !76, !noalias !365
  %i.ul = fcmp olt float %i.uk, %i.pj
  br i1 %i.ul, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.1.i173.i.i

.split.1.i173.i.i:                                ; preds = %bb.db, %.split.preheader.i172.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.re, i64 88
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !157, !noalias !365
  %i.uo = icmp eq ptr %i.un, %i.ue
  br i1 %i.uo, label %bb.dc, label %.split.preheader.i164.i.i

bb.dc:                                            ; preds = %.split.1.i173.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.re, i64 124
  %i.uq = load float, ptr %i.up, align 4, !tbaa !76, !noalias !365
  %i.ur = fcmp olt float %i.uq, %i.pj
  br i1 %i.ur, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.preheader.i164.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i: ; preds = %.split.us.i175.i.i, %.thread289.i.i
  %i.us = phi ptr [ %i.ua, %.thread289.i.i ], [ %i.ui, %.split.us.i175.i.i ]
  %i.ut = getelementptr inbounds nuw i8, ptr %i.rl, i64 88
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !157, !noalias !365
  %i.uv = icmp eq ptr %i.uu, %i.us
  br i1 %i.uv, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.us.i167.i.i

.split.preheader.i164.i.i:                        ; preds = %bb.dc, %.split.1.i173.i.i, %bb.da, %.split.1.i181.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.oz, i64 80
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !157, !noalias !365
  %i.uy = icmp eq ptr %i.ux, %i.rh
  br i1 %i.uy, label %bb.dd, label %.split.1.i165.i.i

.split.us.i167.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.oz, i64 80
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !157, !noalias !365
  %i.vb = icmp eq ptr %i.va, %i.ro
  br i1 %i.vb, label %.split.us.i.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i

bb.dd:                                            ; preds = %.split.preheader.i164.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.oz, i64 120
  %i.vd = load float, ptr %i.vc, align 8, !tbaa !76, !noalias !365
  %i.ve = fcmp olt float %i.vd, %i.pj
  br i1 %i.ve, label %.split.preheader.i.i.i, label %.split.1.i165.i.i

.split.1.i165.i.i:                                ; preds = %bb.dd, %.split.preheader.i164.i.i
  %i.vf = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !157, !noalias !365
  %i.vh = icmp eq ptr %i.vg, %i.rh
  br i1 %i.vh, label %bb.de, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.de:                                            ; preds = %.split.1.i165.i.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.oz, i64 124
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !76, !noalias !365
  %i.vk = fcmp olt float %i.vj, %i.pj
  br i1 %i.vk, label %.split.preheader.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i: ; preds = %.split.us.i167.i.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !157, !noalias !365
  %i.vn = icmp eq ptr %i.vm, %i.ro
  br i1 %i.vn, label %.thread312.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

.thread312.i.i:                                   ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !157, !noalias !365
  %i.vq = icmp eq ptr %i.vp, %i.ph
  br i1 %i.vq, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i

.split.preheader.i.i.i:                           ; preds = %bb.de, %bb.dd
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !157, !noalias !365
  %i.vt = icmp eq ptr %i.vs, %i.ph
  br i1 %i.vt, label %bb.df, label %.split.1.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i167.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !157, !noalias !365
  %i.vw = icmp eq ptr %i.vv, %i.ph
  br i1 %i.vw, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i

bb.df:                                            ; preds = %.split.preheader.i.i.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ou, i64 120
  %i.vy = load float, ptr %i.vx, align 8, !tbaa !76, !noalias !365
  %i.vz = fcmp olt float %i.vy, %i.pj
  br i1 %i.vz, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.1.i.i.i

.split.1.i.i.i:                                   ; preds = %bb.df, %.split.preheader.i.i.i
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !157, !noalias !365
  %i.wc = icmp eq ptr %i.wb, %i.ph
  br i1 %i.wc, label %bb.dg, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.dg:                                            ; preds = %.split.1.i.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ou, i64 124
  %i.we = load float, ptr %i.wd, align 4, !tbaa !76, !noalias !365
  %i.wf = fcmp olt float %i.we, %i.pj
  br i1 %i.wf, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i: ; preds = %.split.us.i.i.i, %.thread312.i.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !157, !noalias !365
  %i.wi = icmp eq ptr %i.wh, %i.ph
  br i1 %i.wi, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i, %bb.cy, %bb.cx, %.split.us.i191.i.i, %.thread253.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i, %bb.cu, %bb.ct, %.split.us.i207.i.i, %.thread.i.i
  %i.wj = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.nt, i64 24 ; 3 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !158, !noalias !365 ; 4 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.nt, i64 32 ; 3 uses
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !91, !noalias !365
  %.not.i.i110.i.i = icmp eq ptr %i.wl, %i.wn
  br i1 %.not.i.i110.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i
  store i64 %.074360.i.i, ptr %i.wl, align 8, !tbaa !81, !noalias !365
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  store ptr %i.wo, ptr %i.wk, align 8, !tbaa !158, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i

bb.di:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i
  %i.wp = load ptr, ptr %i.wj, align 8, !tbaa !90, !noalias !365 ; 4 uses
  %i.wq = ptrtoint ptr %i.wl to i64
  %i.wr = ptrtoint ptr %i.wp to i64               ; 2 uses
  %i.ws = sub i64 %i.wq, %i.wr                    ; 5 uses
  %i.wt = icmp eq i64 %i.ws, 9223372036854775800
  br i1 %i.wt, label %bb.dj, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !365
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.di
  %i.wu = ashr exact i64 %i.ws, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wu, i64 1)
  %i.wv = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.wu ; 2 uses
  %i.ww = icmp ult i64 %i.wv, %i.wu
  %i.wx = call i64 @llvm.umin.i64(i64 %i.wv, i64 1152921504606846975)
  %i.wy = select i1 %i.ww, i64 1152921504606846975, i64 %i.wx ; 3 uses
  %.not.i.i.i.i.i88.i = icmp ne i64 %i.wy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i88.i)
  %i.wz = shl nuw nsw i64 %i.wy, 3
  %i.xa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wz) #27, !noalias !365 ; 4 uses
  %i.xb = getelementptr inbounds i8, ptr %i.xa, i64 %i.ws ; 2 uses
  store i64 %.074360.i.i, ptr %i.xb, align 8, !tbaa !81, !noalias !365
  %i.xc = icmp sgt i64 %i.ws, 0
  br i1 %i.xc, label %bb.dk, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

bb.dk:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 24 ; 3 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !158, !noalias !365 ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 32 ; 3 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !91, !noalias !365
  %.not.i.i111.i.i = icmp eq ptr %i.xl, %i.xn
  br i1 %.not.i.i111.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i
  store i64 %.070364.i.i, ptr %i.xl, align 8, !tbaa !81, !noalias !365
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store ptr %i.xo, ptr %i.xk, align 8, !tbaa !158, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.dn:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i
  %i.xp = load ptr, ptr %i.xj, align 8, !tbaa !90, !noalias !365 ; 4 uses
  %i.xq = ptrtoint ptr %i.xl to i64
  %i.xr = ptrtoint ptr %i.xp to i64               ; 2 uses
  %i.xs = sub i64 %i.xq, %i.xr                    ; 5 uses
  %i.xt = icmp eq i64 %i.xs, 9223372036854775800
  br i1 %i.xt, label %bb.do, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i

bb.do:                                            ; preds = %bb.dn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !365
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i: ; preds = %bb.dn
  %i.xu = ashr exact i64 %i.xs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i113.i.i = call i64 @llvm.umax.i64(i64 %i.xu, i64 1)
  %i.xv = add nsw i64 %.sroa.speculated.i.i.i.i113.i.i, %i.xu ; 2 uses
  %i.xw = icmp ult i64 %i.xv, %i.xu
  %i.xx = call i64 @llvm.umin.i64(i64 %i.xv, i64 1152921504606846975)
  %i.xy = select i1 %i.xw, i64 1152921504606846975, i64 %i.xx ; 3 uses
  %.not.i.i.i.i114.i.i = icmp ne i64 %i.xy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i114.i.i)
  %i.xz = shl nuw nsw i64 %i.xy, 3
  %i.ya = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xz) #27, !noalias !365 ; 4 uses
  %i.yb = getelementptr inbounds i8, ptr %i.ya, i64 %i.xs ; 2 uses
  store i64 %.070364.i.i, ptr %i.yb, align 8, !tbaa !81, !noalias !365
  %i.yc = icmp sgt i64 %i.xs, 0
  br i1 %i.yc, label %bb.dp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i

bb.dp:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ya, ptr align 8 %i.xp, i64 %i.xs, i1 false), !noalias !365
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i: ; preds = %bb.dp, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %.not.i17.i.i.i116.i.i = icmp eq ptr %i.xp, null
  br i1 %.not.i17.i.i.i116.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i
  %i.ye = load ptr, ptr %i.xm, align 8, !tbaa !91, !noalias !365
  %i.yf = ptrtoint ptr %i.ye to i64
  %i.yg = sub i64 %i.yf, %i.xr
  call void @_ZdlPvm(ptr noundef nonnull %i.xp, i64 noundef %i.yg) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i: ; preds = %bb.dq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i
  store ptr %i.ya, ptr %i.xj, align 8, !tbaa !90, !noalias !365
  store ptr %i.yd, ptr %i.xk, align 8, !tbaa !158, !noalias !365
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.xy
  store ptr %i.yh, ptr %i.xm, align 8, !tbaa !91, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i, %bb.dg, %bb.df, %.split.us.i.i.i, %.thread312.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i, %bb.dc, %bb.db, %.split.us.i175.i.i, %.thread289.i.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.nt, i64 40 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.nt, i64 48 ; 3 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !158, !noalias !365 ; 4 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.nt, i64 56 ; 3 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !91, !noalias !365
  %.not.i4.i.i.i = icmp eq ptr %i.yk, %i.ym
  br i1 %.not.i4.i.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i
  store i64 %.074360.i.i, ptr %i.yk, align 8, !tbaa !81, !noalias !365
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  store ptr %i.yn, ptr %i.yj, align 8, !tbaa !158, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i

bb.ds:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i
  %i.yo = load ptr, ptr %i.yi, align 8, !tbaa !90, !noalias !365 ; 4 uses
  %i.yp = ptrtoint ptr %i.yk to i64
  %i.yq = ptrtoint ptr %i.yo to i64               ; 2 uses
  %i.yr = sub i64 %i.yp, %i.yq                    ; 5 uses
  %i.ys = icmp eq i64 %i.yr, 9223372036854775800
  br i1 %i.ys, label %bb.dt, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i

bb.dt:                                            ; preds = %bb.ds
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !365
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i: ; preds = %bb.ds
  %i.yt = ashr exact i64 %i.yr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i6.i.i.i = call i64 @llvm.umax.i64(i64 %i.yt, i64 1)
  %i.yu = add nsw i64 %.sroa.speculated.i.i.i6.i.i.i, %i.yt ; 2 uses
  %i.yv = icmp ult i64 %i.yu, %i.yt
  %i.yw = call i64 @llvm.umin.i64(i64 %i.yu, i64 1152921504606846975)
  %i.yx = select i1 %i.yv, i64 1152921504606846975, i64 %i.yw ; 3 uses
  %.not.i.i.i7.i.i.i = icmp ne i64 %i.yx, 0
  call void @llvm.assume(i1 %.not.i.i.i7.i.i.i)
  %i.yy = shl nuw nsw i64 %i.yx, 3
  %i.yz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yy) #27, !noalias !365 ; 4 uses
  %i.za = getelementptr inbounds i8, ptr %i.yz, i64 %i.yr ; 2 uses
  store i64 %.074360.i.i, ptr %i.za, align 8, !tbaa !81, !noalias !365
  %i.zb = icmp sgt i64 %i.yr, 0
  br i1 %i.zb, label %bb.du, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i

bb.du:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yz, ptr align 8 %i.yo, i64 %i.yr, i1 false), !noalias !365
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i: ; preds = %bb.du, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %.not.i17.i.i9.i.i.i = icmp eq ptr %i.yo, null
  br i1 %.not.i17.i.i9.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i
  %i.zd = load ptr, ptr %i.yl, align 8, !tbaa !91, !noalias !365
  %i.ze = ptrtoint ptr %i.zd to i64
  %i.zf = sub i64 %i.ze, %i.yq
  call void @_ZdlPvm(ptr noundef nonnull %i.yo, i64 noundef %i.zf) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i: ; preds = %bb.dv, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i
  store ptr %i.yz, ptr %i.yi, align 8, !tbaa !90, !noalias !365
  store ptr %i.zc, ptr %i.yj, align 8, !tbaa !158, !noalias !365
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %i.yx
  store ptr %i.zg, ptr %i.yl, align 8, !tbaa !91, !noalias !365
  %.val100.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i, %bb.dr
  %.val100.i.i = phi ptr [ %.val86361.i.i, %bb.dr ], [ %.val100.pre.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i ]
  %i.zh = getelementptr inbounds nuw [112 x i8], ptr %.val100.i.i, i64 %.074360.i.i ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 40 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zh, i64 48 ; 3 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !158, !noalias !365 ; 4 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zh, i64 56 ; 3 uses
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !91, !noalias !365
  %.not.i4.i120.i.i = icmp eq ptr %i.zk, %i.zm
  br i1 %.not.i4.i120.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i
  store i64 %.070364.i.i, ptr %i.zk, align 8, !tbaa !81, !noalias !365
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  store ptr %i.zn, ptr %i.zj, align 8, !tbaa !158, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.dx:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i
  %i.zo = load ptr, ptr %i.zi, align 8, !tbaa !90, !noalias !365 ; 4 uses
  %i.zp = ptrtoint ptr %i.zk to i64
  %i.zq = ptrtoint ptr %i.zo to i64               ; 2 uses
  %i.zr = sub i64 %i.zp, %i.zq                    ; 5 uses
  %i.zs = icmp eq i64 %i.zr, 9223372036854775800
  br i1 %i.zs, label %bb.dy, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i

bb.dy:                                            ; preds = %bb.dx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !365
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i: ; preds = %bb.dx
  %i.zt = ashr exact i64 %i.zr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i6.i122.i.i = call i64 @llvm.umax.i64(i64 %i.zt, i64 1)
  %i.zu = add nsw i64 %.sroa.speculated.i.i.i6.i122.i.i, %i.zt ; 2 uses
  %i.zv = icmp ult i64 %i.zu, %i.zt
  %i.zw = call i64 @llvm.umin.i64(i64 %i.zu, i64 1152921504606846975)
  %i.zx = select i1 %i.zv, i64 1152921504606846975, i64 %i.zw ; 3 uses
  %.not.i.i.i7.i123.i.i = icmp ne i64 %i.zx, 0
  call void @llvm.assume(i1 %.not.i.i.i7.i123.i.i)
  %i.zy = shl nuw nsw i64 %i.zx, 3
  %i.zz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zy) #27, !noalias !365 ; 4 uses
  %i.aaa = getelementptr inbounds i8, ptr %i.zz, i64 %i.zr ; 2 uses
  store i64 %.070364.i.i, ptr %i.aaa, align 8, !tbaa !81, !noalias !365
  %i.aab = icmp sgt i64 %i.zr, 0
  br i1 %i.aab, label %bb.dz, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i

bb.dz:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zz, ptr align 8 %i.zo, i64 %i.zr, i1 false), !noalias !365
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i: ; preds = %bb.dz, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %.not.i17.i.i9.i125.i.i = icmp eq ptr %i.zo, null
  br i1 %.not.i17.i.i9.i125.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i
  %i.aad = load ptr, ptr %i.zl, align 8, !tbaa !91, !noalias !365
  %i.aae = ptrtoint ptr %i.aad to i64
  %i.aaf = sub i64 %i.aae, %i.zq
  call void @_ZdlPvm(ptr noundef nonnull %i.zo, i64 noundef %i.aaf) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i: ; preds = %bb.ea, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i
  store ptr %i.zz, ptr %i.zi, align 8, !tbaa !90, !noalias !365
  store ptr %i.aac, ptr %i.zj, align 8, !tbaa !158, !noalias !365
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %i.zx
  store ptr %i.aag, ptr %i.zl, align 8, !tbaa !91, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i: ; preds = %bb.ck, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i, %bb.dw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i, %bb.dm, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i, %bb.dg, %.split.1.i.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i, %bb.de, %.split.1.i165.i.i, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cj, %bb.ci, %bb.ch
  %i.aah = add nuw i64 %i.nn, 1                   ; 2 uses
  %.val86.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 3 uses
  %.val87.i.i = load ptr, ptr %i.mt, align 8, !tbaa !87, !noalias !365 ; 2 uses
  %i.aai = ptrtoint ptr %.val87.i.i to i64
  %i.aaj = ptrtoint ptr %.val86.i.i to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  %i.aal = sdiv exact i64 %i.aak, 112             ; 2 uses
  %i.aam = icmp ult i64 %i.aah, %i.aal
  br i1 %i.aam, label %bb.ch, label %._crit_edge.i83.i, !llvm.loop !308

.preheader334.i.i:                                ; preds = %.critedge.i.i, %.preheader334.lr.ph.i.i
  %i.aan = phi i64 [ 2, %.preheader334.lr.ph.i.i ], [ %i.aay, %.critedge.i.i ] ; 2 uses
  %.073387.i.i = phi i64 [ 1, %.preheader334.lr.ph.i.i ], [ %i.aan, %.critedge.i.i ] ; 3 uses
  br label %bb.eb

.preheader.i76.i:                                 ; preds = %.critedge.i.i
  %i.aao = icmp ugt i64 %.pre-phi442.i.i, 2
  br i1 %i.aao, label %.lr.ph391.i.i.preheader, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i

.lr.ph391.i.i.preheader:                          ; preds = %.preheader.i76.i
  %xtraiter = and i64 %.pre-phi442.i.i, 1
  %i.aap = icmp eq i64 %.pre-phi442.i.i, 3
  br i1 %i.aap, label %.lr.ph391.i.i.epil.preheader, label %.lr.ph391.i.i.preheader.new

.lr.ph391.i.i.preheader.new:                      ; preds = %.lr.ph391.i.i.preheader
  %i.aaq = and i64 %.pre-phi442.i.i, -2
  %i.aar = add nsw i64 %i.aaq, -4
  br label %.lr.ph391.i.i

bb.eb:                                            ; preds = %bb.ed, %.preheader334.i.i
  %exitcond.not.i.i.1 = phi i1 [ true, %.preheader334.i.i ], [ false, %bb.ed ]
  %exitcond.i = phi i1 [ false, %.preheader334.i.i ], [ true, %bb.ed ]
  %.072384.i.i = phi i64 [ 1, %.preheader334.i.i ], [ 2, %bb.ed ]
  %i.aas = add nuw i64 %.072384.i.i, %.073387.i.i ; 3 uses
  %.val82.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 2 uses
  %.val83.i.i = load ptr, ptr %i.mt, align 8, !tbaa !87, !noalias !365 ; 2 uses
  %i.aat = ptrtoint ptr %.val83.i.i to i64
  %i.aau = ptrtoint ptr %.val82.i.i to i64
  %i.aav = sub i64 %i.aat, %i.aau
  %i.aaw = sdiv exact i64 %i.aav, 112             ; 2 uses
  %i.aax = icmp ult i64 %i.aas, %i.aaw
  br i1 %i.aax, label %bb.ec, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.eb, %..critedge_crit_edge.i.i
  %.val125177.pre.i261.i = phi ptr [ %.val85.pre.i.i, %..critedge_crit_edge.i.i ], [ %.val83.i.i, %bb.eb ] ; 5 uses
  %.pre-phi442.i.i = phi i64 [ %.pre441.i.i, %..critedge_crit_edge.i.i ], [ %i.aaw, %bb.eb ] ; 6 uses
  %.val84.i75.i = phi ptr [ %.val84.pre.i.i, %..critedge_crit_edge.i.i ], [ %.val82.i.i, %bb.eb ] ; 8 uses
  %i.aay = add nuw i64 %i.aan, 1                  ; 2 uses
  %i.aaz = icmp ult i64 %i.aay, %.pre-phi442.i.i
  br i1 %i.aaz, label %.preheader334.i.i, label %.preheader.i76.i, !llvm.loop !309

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28, !noalias !365
  store i64 2, ptr %i.d, align 8, !tbaa !75, !noalias !365
  store i64 1, ptr %i.nb, align 8, !tbaa !75, !noalias !365
  br label %bb.ee

bb.ed:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !365
  br i1 %exitcond.i, label %..critedge_crit_edge.i.i, label %bb.eb, !llvm.loop !310

..critedge_crit_edge.i.i:                         ; preds = %bb.ed
  %.val84.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 2 uses
  %.val85.pre.i.i = load ptr, ptr %i.mt, align 8, !tbaa !87, !noalias !365 ; 2 uses
  %.pre435.i.i = ptrtoint ptr %.val85.pre.i.i to i64
  %.pre437.i.i = ptrtoint ptr %.val84.pre.i.i to i64
  %.pre439.i.i = sub i64 %.pre435.i.i, %.pre437.i.i
  %.pre441.i.i = sdiv exact i64 %.pre439.i.i, 112
  br label %.critedge.i.i, !llvm.loop !310

bb.ee:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, %bb.ec
  %.071.idx382.i.i = phi i64 [ 0, %bb.ec ], [ %.071.add.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i ] ; 2 uses
  %.071.ptr383.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.071.idx382.i.i
  %.val99.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 2 uses
  %i.aba = load i64, ptr %.071.ptr383.i.i, align 8, !tbaa !75, !noalias !365 ; 2 uses
  %i.abb = add i64 %i.aba, -1
  %or.cond.i128.i.i = icmp ult i64 %i.abb, 2
  br i1 %or.cond.i128.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesEENK3$_0clEv", ptr noundef nonnull @.str.37, i32 noundef 478) #30, !noalias !365
  unreachable

_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i: ; preds = %bb.ee
  %i.abc = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, i64 %.073387.i.i ; 12 uses
  %i.abd = icmp eq i64 %i.aba, 2                  ; 2 uses
  %..i.i.i = select i1 %i.abd, i64 16, i64 40     ; 3 uses
  %.9.i.i.i = select i1 %i.abd, i64 24, i64 48    ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abc, i64 %..i.i.i ; 3 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !159, !noalias !365 ; 4 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 %.9.i.i.i
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !159, !noalias !365
  %.not327.i.i = icmp eq ptr %i.abf, %i.abh
  br i1 %.not327.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i
  %i.abi = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, i64 %i.aas ; 12 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 %..i.i.i
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !159, !noalias !365
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abi, i64 %.9.i.i.i
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !159, !noalias !365
  %.not328.i.i = icmp eq ptr %i.abk, %i.abm
  br i1 %.not328.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i
  %i.abn = getelementptr i8, ptr %i.abc, i64 -112 ; 3 uses
  %.val4.i.i.i = load ptr, ptr %i.abn, align 8, !tbaa !378, !noalias !365
  %i.abo = getelementptr i8, ptr %i.abc, i64 -104
  %.val5.i.i.i = load ptr, ptr %i.abo, align 8, !noalias !365
  %i.abp = icmp eq ptr %.val4.i.i.i, %i.abc
  %i.abq = icmp eq ptr %.val5.i.i.i, %i.abc
  %i.abr = select i1 %i.abp, i1 true, i1 %i.abq
  %.val4.i.1.pre.i.i = load ptr, ptr %i.abc, align 8, !tbaa !378, !noalias !365 ; 2 uses
  %i.abs = getelementptr i8, ptr %i.abc, i64 8
  %.val3.i.i.i = load ptr, ptr %i.abs, align 8, !noalias !365 ; 2 uses
  br i1 %i.abr, label %bb.eg, label %.lr.ph.i.1.i.i

bb.eg:                                            ; preds = %.lr.ph.i.preheader.i.i
  %i.abt = icmp eq ptr %.val4.i.1.pre.i.i, %i.abn
  %i.abu = icmp eq ptr %.val3.i.i.i, %i.abn
  %i.abv = select i1 %i.abt, i1 true, i1 %i.abu
  br i1 %i.abv, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i.1.i.i

.lr.ph.i.1.i.i:                                   ; preds = %bb.eg, %.lr.ph.i.preheader.i.i
  %i.abw = getelementptr i8, ptr %i.abc, i64 112  ; 3 uses
  %i.abx = icmp eq ptr %.val4.i.1.pre.i.i, %i.abw
  %i.aby = icmp eq ptr %.val3.i.i.i, %i.abw
  %i.abz = select i1 %i.abx, i1 true, i1 %i.aby
  br i1 %i.abz, label %bb.eh, label %.lr.ph.i136.preheader.i.i

bb.eh:                                            ; preds = %.lr.ph.i.1.i.i
  %.val.i.1.i.i = load ptr, ptr %i.abw, align 8, !tbaa !378, !noalias !365
  %i.aca = getelementptr i8, ptr %i.abc, i64 120
  %.val3.i.1.i.i = load ptr, ptr %i.aca, align 8, !noalias !365
  %i.acb = icmp eq ptr %.val.i.1.i.i, %i.abc
  %i.acc = icmp eq ptr %.val3.i.1.i.i, %i.abc
  %i.acd = select i1 %i.acb, i1 true, i1 %i.acc
  br i1 %i.acd, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i136.preheader.i.i

.lr.ph.i136.preheader.i.i:                        ; preds = %bb.eh, %.lr.ph.i.1.i.i
  %i.ace = getelementptr i8, ptr %i.abi, i64 -112 ; 3 uses
  %.val4.i138.i.i = load ptr, ptr %i.ace, align 8, !tbaa !378, !noalias !365
  %i.acf = getelementptr i8, ptr %i.abi, i64 -104
  %.val5.i139.i.i = load ptr, ptr %i.acf, align 8, !noalias !365
  %i.acg = icmp eq ptr %.val4.i138.i.i, %i.abi
  %i.ach = icmp eq ptr %.val5.i139.i.i, %i.abi
  %i.aci = select i1 %i.acg, i1 true, i1 %i.ach
  %.val4.i138.i.1.pre.i = load ptr, ptr %i.abi, align 8, !tbaa !378, !noalias !365 ; 2 uses
  %i.acj = getelementptr i8, ptr %i.abi, i64 8
  %.val3.i143.i.i = load ptr, ptr %i.acj, align 8, !noalias !365 ; 2 uses
  br i1 %i.aci, label %bb.ei, label %.lr.ph.i136.i.1.i

bb.ei:                                            ; preds = %.lr.ph.i136.preheader.i.i
  %i.ack = icmp eq ptr %.val4.i138.i.1.pre.i, %i.ace
  %i.acl = icmp eq ptr %.val3.i143.i.i, %i.ace
  %i.acm = select i1 %i.ack, i1 true, i1 %i.acl
  br i1 %i.acm, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i136.i.1.i

.lr.ph.i136.i.1.i:                                ; preds = %bb.ei, %.lr.ph.i136.preheader.i.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abi, i64 112 ; 3 uses
  %i.aco = icmp eq ptr %.val4.i138.i.1.pre.i, %i.acn
  %i.acp = icmp eq ptr %.val3.i143.i.i, %i.acn
  %i.acq = select i1 %i.aco, i1 true, i1 %i.acp
  br i1 %i.acq, label %bb.ej, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i

bb.ej:                                            ; preds = %.lr.ph.i136.i.1.i
  %.val.i142.i.1.i = load ptr, ptr %i.acn, align 8, !tbaa !378, !noalias !365
  %i.acr = getelementptr i8, ptr %i.abi, i64 120
  %.val3.i143.i.1.i = load ptr, ptr %i.acr, align 8, !noalias !365
  %i.acs = icmp eq ptr %.val.i142.i.1.i, %i.abi
  %i.act = icmp eq ptr %.val3.i143.i.1.i, %i.abi
  %i.acu = select i1 %i.acs, i1 true, i1 %i.act
  br i1 %i.acu, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i: ; preds = %bb.ej, %.lr.ph.i136.i.1.i
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abe, i64 8 ; 2 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !158, !noalias !365 ; 2 uses
  %i.acx = ptrtoint ptr %i.acw to i64
  %i.acy = ptrtoint ptr %i.abf to i64             ; 3 uses
  %i.acz = sub i64 %i.acx, %i.acy                 ; 4 uses
  %.not.i.i.i.i147.i.i = icmp eq ptr %i.acw, %i.abf
  br i1 %.not.i.i.i.i147.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i
  %i.ada = icmp ugt i64 %i.acz, 9223372036854775800
  br i1 %i.ada, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !152

.noexc.i.i.i.i:                                   ; preds = %bb.ek
  call void @_ZSt28__throw_bad_array_new_lengthv() #30, !noalias !365
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.ek
  %i.adb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acz) #27, !noalias !365
  %.pre422.i.i = load ptr, ptr %i.abe, align 8, !tbaa !159, !noalias !365 ; 3 uses
  %.pre423.i.i = load ptr, ptr %i.acv, align 8, !tbaa !159, !noalias !365 ; 2 uses
  %.pre443.i.i = ptrtoint ptr %.pre423.i.i to i64
  %.pre445.i.i = ptrtoint ptr %.pre422.i.i to i64
  %i.adc = icmp eq ptr %.pre423.i.i, %.pre422.i.i
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i
  %.pre-phi446.i.i = phi i64 [ %.pre445.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.acy, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %.pre-phi444.i.i = phi i64 [ %.pre443.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.acy, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %.not329377.i.i = phi i1 [ %i.adc, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ true, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %i.add = phi ptr [ %.pre422.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.abf, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ] ; 2 uses
  %i.ade = phi ptr [ %i.adb, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ] ; 8 uses
  %i.adf = sub i64 %.pre-phi444.i.i, %.pre-phi446.i.i ; 4 uses
  %i.adg = icmp sgt i64 %i.adf, 8
  br i1 %i.adg, label %bb.em, label %bb.en, !prof !366

bb.em:                                            ; preds = %bb.el
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ade, ptr align 8 %i.add, i64 %i.adf, i1 false), !noalias !365
  br label %bb.ep

bb.en:                                            ; preds = %bb.el
  %i.adh = icmp eq i64 %i.adf, 8
  br i1 %i.adh, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.adi = load i64, ptr %i.add, align 8, !tbaa !81, !noalias !365
  store i64 %i.adi, ptr %i.ade, align 8, !tbaa !81, !noalias !365
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %i.adj = getelementptr inbounds i8, ptr %i.ade, i64 %i.adf
  %.val96.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.adk = getelementptr inbounds nuw [112 x i8], ptr %.val96.i.i, i64 %i.aas
  %.0.i150.i.i = getelementptr inbounds nuw i8, ptr %i.adk, i64 %..i.i.i ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.0.i150.i.i, i64 8 ; 2 uses
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !158, !noalias !365 ; 2 uses
  %i.adn = load ptr, ptr %.0.i150.i.i, align 8, !tbaa !90, !noalias !365 ; 3 uses
  %i.ado = ptrtoint ptr %i.adm to i64             ; 2 uses
  %i.adp = ptrtoint ptr %i.adn to i64             ; 2 uses
  %i.adq = sub i64 %i.ado, %i.adp                 ; 3 uses
  %.not.i.i.i.i152.i.i = icmp eq ptr %i.adm, %i.adn
  br i1 %.not.i.i.i.i152.i.i, label %.noexc156.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.adr = icmp ugt i64 %i.adq, 9223372036854775800
  br i1 %i.adr, label %.noexc.i.i154.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i, !prof !152

.noexc.i.i154.i.i:                                ; preds = %bb.eq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc155.i.i unwind label %.loopexit.split-lp.i81.i, !noalias !365

.noexc155.i.i:                                    ; preds = %.noexc.i.i154.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i: ; preds = %bb.eq
  %i.ads = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adq) #27
          to label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i unwind label %.loopexit333.i.i, !noalias !365

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i: ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i
  %.pre424.i.i = load ptr, ptr %.0.i150.i.i, align 8, !tbaa !159, !noalias !365 ; 3 uses
  %.pre425.i.i = load ptr, ptr %i.adl, align 8, !tbaa !159, !noalias !365 ; 2 uses
  %.pre447.i.i = ptrtoint ptr %.pre425.i.i to i64
  %.pre449.i.i = ptrtoint ptr %.pre424.i.i to i64
  %i.adt = icmp eq ptr %.pre425.i.i, %.pre424.i.i
  %i.adu = or i1 %.not329377.i.i, %i.adt
  br label %.noexc156.i.i

.noexc156.i.i:                                    ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i, %bb.ep
  %.pre-phi450.i.i = phi i64 [ %.pre449.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.adp, %bb.ep ]
  %.pre-phi448.i.i = phi i64 [ %.pre447.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.ado, %bb.ep ]
  %.not330372.i.i = phi i1 [ %i.adu, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ true, %bb.ep ]
  %i.adv = phi ptr [ %.pre424.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.adn, %bb.ep ] ; 2 uses
  %i.adw = phi ptr [ %i.ads, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ null, %bb.ep ] ; 6 uses
  %i.adx = sub i64 %.pre-phi448.i.i, %.pre-phi450.i.i ; 4 uses
  %i.ady = icmp sgt i64 %i.adx, 8
  br i1 %i.ady, label %bb.er, label %bb.es, !prof !366

bb.er:                                            ; preds = %.noexc156.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.adw, ptr align 8 %i.adv, i64 %i.adx, i1 false), !noalias !365
  br label %bb.eu

bb.es:                                            ; preds = %.noexc156.i.i
  %i.adz = icmp eq i64 %i.adx, 8
  br i1 %i.adz, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aea = load i64, ptr %i.adv, align 8, !tbaa !81, !noalias !365
  store i64 %i.aea, ptr %i.adw, align 8, !tbaa !81, !noalias !365
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.er
  %i.aeb = getelementptr inbounds i8, ptr %i.adw, i64 %i.adx
  br i1 %.not330372.i.i, label %._crit_edge381.split.i.i, label %.lr.ph375.i.i

._crit_edge381.split.i.i:                         ; preds = %._crit_edge376.i.i, %bb.eu
  %.not.i.i.i.i79.i = icmp eq ptr %i.adw, null
  br i1 %.not.i.i.i.i79.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge381.split.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.adw, i64 noundef %i.adq) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.ev, %._crit_edge381.split.i.i
  %.not.i.i.i158.i.i = icmp eq ptr %i.ade, null
  br i1 %.not.i.i.i158.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ade, i64 noundef %i.acz) #29, !noalias !365
  br label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i

.loopexit333.i.i:                                 ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i
  %lpad.loopexit.i77.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

.loopexit.split-lp.i81.i:                         ; preds = %.noexc.i.i154.i.i
  %lpad.loopexit.split-lp.i82.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ex:                                            ; preds = %.loopexit.split-lp.i81.i, %.loopexit333.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i77.i, %.loopexit333.i.i ], [ %lpad.loopexit.split-lp.i82.i, %.loopexit.split-lp.i81.i ]
  %.not.i.i.i160.i.i = icmp eq ptr %i.ade, null
  br i1 %.not.i.i.i160.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit161.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.ade, i64 noundef %i.acz) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEED2Ev.exit161.i.i

_ZNSt6vectorImSaImEED2Ev.exit161.i.i:             ; preds = %bb.ey, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !365
  br label %common.resume

.lr.ph375.i.i:                                    ; preds = %bb.eu, %._crit_edge376.i.i
  %.sroa.0225.0378.i.i = phi ptr [ %i.aef, %._crit_edge376.i.i ], [ %i.ade, %bb.eu ] ; 2 uses
  %i.aec = load i64, ptr %.sroa.0225.0378.i.i, align 8, !tbaa !81, !noalias !365
  %i.aed = trunc i64 %i.aec to i32                ; 3 uses
  %i.aee = add i32 %i.aed, 5
  br label %bb.ez

._crit_edge376.i.i:                               ; preds = %.loopexit.i78.i
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0225.0378.i.i, i64 8 ; 2 uses
  %.not329.i.i = icmp eq ptr %i.aef, %i.adj
  br i1 %.not329.i.i, label %._crit_edge381.split.i.i, label %.lr.ph375.i.i

bb.ez:                                            ; preds = %.loopexit.i78.i, %.lr.ph375.i.i
  %.sroa.0221.0373.i.i = phi ptr [ %i.adw, %.lr.ph375.i.i ], [ %i.afb, %.loopexit.i78.i ] ; 2 uses
  %i.aeg = load i64, ptr %.sroa.0221.0373.i.i, align 8, !tbaa !81, !noalias !365
  %i.aeh = trunc i64 %i.aeg to i32                ; 3 uses
  %i.aei = sub i32 %i.aee, %i.aeh
  %i.aej = icmp ult i32 %i.aei, 11
  br i1 %i.aej, label %bb.fa, label %.loopexit.i78.i

bb.fa:                                            ; preds = %bb.ez
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.aed, i32 %i.aeh) ; 2 uses
  %spec.select324.i.i = call i32 @llvm.smax.i32(i32 %i.aed, i32 %i.aeh) ; 2 uses
  %i.aek = sext i32 %spec.select324.i.i to i64    ; 2 uses
  %.not79367.i.i = icmp ugt i32 %spec.select.i.i, %spec.select324.i.i
  %.val94.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 7 uses
  br i1 %.not79367.i.i, label %.preheader331.i.i, label %iter.check

iter.check:                                       ; preds = %bb.fa
  %i.ael = sext i32 %spec.select.i.i to i64       ; 7 uses
  %i.aem = add nsw i64 %i.ael, 1
  %i.aen = add nsw i64 %i.aek, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.aem, i64 %i.aen)
  %i.aeo = sub i64 %umax, %i.ael                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.aeo, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check296 = icmp ult i64 %i.aeo, 16
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aep = and i64 %i.aeo, 12
  %n.vec = and i64 %i.aeo, -16                    ; 4 uses
  %i.aeq = add i64 %n.vec, %i.ael                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ael, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %vec.ind
  %wide.gep297.a = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %step.add
  %wide.gep298.a = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %step.add.2
  %wide.gep299.a = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %step.add.3
  %wide.gep300.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 64
  %wide.gep301.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep297.a, i64 64
  %wide.gep302.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep298.a, i64 64
  %wide.gep303 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep299.a, i64 64
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep300.a, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep301.a, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep302.a, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep303, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 16)
  %i.aer = icmp eq i64 %index.next, %n.vec
  br i1 %i.aer, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aeo, %n.vec
  br i1 %cmp.n, label %.preheader331.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aep, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.aeq, %vec.epilog.iter.check ], [ %i.ael, %vector.main.loop.iter.check ]
  %n.vec304 = and i64 %i.aeo, -4                  ; 3 uses
  %i.aes = add i64 %n.vec304, %i.ael
  %broadcast.splatinsert305 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat306 = shufflevector <4 x i64> %broadcast.splatinsert305, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction307 = add <4 x i64> %broadcast.splat306, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index308 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next312, %vec.epilog.vector.body ]
  %vec.ind309 = phi <4 x i64> [ %induction307, %vec.epilog.ph ], [ %vec.ind.next313, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep310.a = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %vec.ind309
  %wide.gep311 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep310.a, i64 64
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep311, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  %index.next312 = add nuw i64 %index308, 4       ; 2 uses
  %vec.ind.next313 = add <4 x i64> %vec.ind309, splat (i64 4)
  %i.aet = icmp eq i64 %index.next312, %n.vec304
  br i1 %i.aet, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n314 = icmp eq i64 %i.aeo, %n.vec304
  br i1 %cmp.n314, label %.preheader331.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.069368.i.i.ph = phi i64 [ %i.ael, %iter.check ], [ %i.aeq, %vec.epilog.iter.check ], [ %i.aes, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader331.i.i:                                ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.fa
  %i.aeu = getelementptr [112 x i8], ptr %.val94.pre.i.i, i64 %.073387.i.i ; 3 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 64
  store i64 7, ptr %i.aev, align 8, !tbaa !385, !noalias !365
  %i.aew = getelementptr i8, ptr %i.aeu, i64 176
  store i64 7, ptr %i.aew, align 8, !tbaa !385, !noalias !365
  br i1 %exitcond.not.i.i.1, label %.loopexit.i78.i, label %bb.fb

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.069368.i.i = phi i64 [ %i.aez, %vec.epilog.scalar.ph ], [ %.069368.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aex = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, i64 %.069368.i.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 64
  store i64 7, ptr %i.aey, align 8, !tbaa !385, !noalias !365
  %i.aez = add i64 %.069368.i.i, 1                ; 2 uses
  %.not79.i.i = icmp ugt i64 %i.aez, %i.aek
  br i1 %.not79.i.i, label %.preheader331.i.i, label %vec.epilog.scalar.ph, !llvm.loop !313

bb.fb:                                            ; preds = %.preheader331.i.i
  %i.afa = getelementptr i8, ptr %i.aeu, i64 288
  store i64 7, ptr %i.afa, align 8, !tbaa !385, !noalias !365
  br label %.loopexit.i78.i

.loopexit.i78.i:                                  ; preds = %.preheader331.i.i, %bb.fb, %bb.ez
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0221.0373.i.i, i64 8 ; 2 uses
  %.not330.i.i = icmp eq ptr %i.afb, %i.aeb
  br i1 %.not330.i.i, label %._crit_edge376.i.i, label %bb.ez

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i: ; preds = %bb.ew, %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i
  %.071.add.i.i = add nuw nsw i64 %.071.idx382.i.i, 8 ; 2 uses
  %.not.i80.i = icmp eq i64 %.071.add.i.i, 16
  br i1 %.not.i80.i, label %bb.ed, label %bb.ee

.lr.ph391.i.i:                                    ; preds = %bb.fi, %.lr.ph391.i.i.preheader.new
  %i.afc = phi i64 [ 2, %.lr.ph391.i.i.preheader.new ], [ %i.aga, %bb.fi ] ; 3 uses
  %.0390.i.i = phi i64 [ 1, %.lr.ph391.i.i.preheader.new ], [ %i.afo, %bb.fi ]
  %niter = phi i64 [ 0, %.lr.ph391.i.i.preheader.new ], [ %niter.next.1, %bb.fi ] ; 2 uses
  %i.afd = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %.0390.i.i ; 5 uses
  %i.afe = getelementptr i8, ptr %i.afd, i64 64   ; 2 uses
  %.val109.i.i = load i64, ptr %i.afe, align 8, !tbaa !385, !noalias !365
  %i.aff = icmp eq i64 %.val109.i.i, 7
  br i1 %i.aff, label %.lr.ph391.i.i.1, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph391.i.i
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !159, !noalias !365
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afd, i64 24
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !159, !noalias !365
  %.not325.i.i = icmp eq ptr %i.afh, %i.afj
  br i1 %.not325.i.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afd, i64 40
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !159, !noalias !365
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afd, i64 48
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !159, !noalias !365
  %.not326.i.i = icmp eq ptr %i.afl, %i.afn
  br i1 %.not326.i.i, label %.lr.ph391.i.i.1, label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  store i64 8, ptr %i.afe, align 8, !tbaa !385, !noalias !365
  br label %.lr.ph391.i.i.1

.lr.ph391.i.i.1:                                  ; preds = %bb.fe, %bb.fd, %.lr.ph391.i.i
  %i.afo = or disjoint i64 %i.afc, 1              ; 2 uses
  %i.afp = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %i.afc ; 5 uses
  %i.afq = getelementptr i8, ptr %i.afp, i64 64   ; 2 uses
  %.val109.i.i.1 = load i64, ptr %i.afq, align 8, !tbaa !385, !noalias !365
  %i.afr = icmp eq i64 %.val109.i.i.1, 7
  br i1 %i.afr, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %.lr.ph391.i.i.1
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !159, !noalias !365
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afp, i64 24
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !159, !noalias !365
  %.not325.i.i.1 = icmp eq ptr %i.aft, %i.afv
  br i1 %.not325.i.i.1, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afp, i64 40
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !159, !noalias !365
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afp, i64 48
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !159, !noalias !365
  %.not326.i.i.1 = icmp eq ptr %i.afx, %i.afz
  br i1 %.not326.i.i.1, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  store i64 8, ptr %i.afq, align 8, !tbaa !385, !noalias !365
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %.lr.ph391.i.i.1
  %i.aga = add nuw i64 %i.afc, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.aar
  br i1 %niter.ncmp.1, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, label %.lr.ph391.i.i, !llvm.loop !314

_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa: ; preds = %bb.fi
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %.lr.ph391.i.i.epil.preheader

.lr.ph391.i.i.epil.preheader:                     ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, %.lr.ph391.i.i.preheader
  %.0390.i.i.epil.init = phi i64 [ 1, %.lr.ph391.i.i.preheader ], [ %i.afo, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod867 = trunc i64 %.pre-phi442.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod867)
  %i.agb = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %.0390.i.i.epil.init ; 5 uses
  %i.agc = getelementptr i8, ptr %i.agb, i64 64   ; 2 uses
  %.val109.i.i.epil = load i64, ptr %i.agc, align 8, !tbaa !385, !noalias !365
  %i.agd = icmp eq i64 %.val109.i.i.epil, 7
  br i1 %i.agd, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph391.i.i.epil.preheader
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !159, !noalias !365
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agb, i64 24
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !159, !noalias !365
  %.not325.i.i.epil = icmp eq ptr %i.agf, %i.agh
  br i1 %.not325.i.i.epil, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agb, i64 40
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !159, !noalias !365
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agb, i64 48
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !159, !noalias !365
  %.not326.i.i.epil = icmp eq ptr %i.agj, %i.agl
  br i1 %.not326.i.i.epil, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  store i64 8, ptr %i.agc, align 8, !tbaa !385, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i

_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i: ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, %bb.fl, %bb.fk, %.lr.ph391.i.i.epil.preheader, %.preheader.i76.i, %.preheader335.i.i
  %.val125177.pre.i.i = phi ptr [ %.val125177.pre.i261.i, %.preheader.i76.i ], [ %.val125177.pre.i262.i, %.preheader335.i.i ], [ %.val125177.pre.i261.i, %.lr.ph391.i.i.epil.preheader ], [ %.val125177.pre.i261.i, %bb.fk ], [ %.val125177.pre.i261.i, %bb.fl ], [ %.val125177.pre.i261.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.val124176.pre.i.i = phi ptr [ %.val84.i75.i, %.preheader.i76.i ], [ %.val124176.pre.i259.i, %.preheader335.i.i ], [ %.val84.i75.i, %.lr.ph391.i.i.epil.preheader ], [ %.val84.i75.i, %bb.fk ], [ %.val84.i75.i, %bb.fl ], [ %.val84.i75.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  br label %bb.fm

.preheader173.i.i:                                ; preds = %._crit_edge182.i.i
  %i.agn = ptrtoint ptr %.val121.i.i to i64
  %i.ago = ptrtoint ptr %.val.i90.i to i64
  %i.agp = sub i64 %i.agn, %i.ago                 ; 5 uses
  %i.agq = sdiv exact i64 %i.agp, 112             ; 11 uses
  %i.agr = icmp ugt i64 %i.agq, 5
  br i1 %i.agr, label %.lr.ph194.split.us.preheader.i.i, label %._crit_edge195.i.i

bb.fm:                                            ; preds = %._crit_edge182.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i
  %.val125.i.us279.i.a = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val125.i.us280.i.a, %._crit_edge182.i.i ] ; 3 uses
  %.val124.i.us273.i.a = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val124.i.us274.i.a, %._crit_edge182.i.i ] ; 3 uses
  %.val125.i267.i = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val125.i268.i, %._crit_edge182.i.i ] ; 2 uses
  %.val124.i263.i = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val124.i264.i, %._crit_edge182.i.i ] ; 2 uses
  %.val125177.i.i = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val121.i.i, %._crit_edge182.i.i ] ; 2 uses
  %.val124176.i.i = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val.i90.i, %._crit_edge182.i.i ] ; 4 uses
  %.0113.idx183.i.i = phi i64 [ 0, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.0113.add.i.i, %._crit_edge182.i.i ] ; 2 uses
  %.0113.ptr.i.i = getelementptr inbounds nuw i8, ptr @constinit.69, i64 %.0113.idx183.i.i
  %i.ags = load i64, ptr %.0113.ptr.i.i, align 8, !tbaa !75, !noalias !365
  %.fr188.i = freeze i64 %i.ags                   ; 12 uses
  %i.agt = add i64 %.fr188.i, 3                   ; 5 uses
  %i.agu = ptrtoint ptr %.val125177.i.i to i64
  %i.agv = ptrtoint ptr %.val124176.i.i to i64
  %i.agw = sub i64 %i.agu, %i.agv
  %i.agx = sdiv exact i64 %i.agw, 112
  %i.agy = icmp ult i64 %i.agt, %i.agx
  br i1 %i.agy, label %.lr.ph181.i.i, label %._crit_edge182.i.i

.lr.ph181.i.i:                                    ; preds = %bb.fm
  %.not10.i.i.i = icmp eq i64 %i.agt, 0
  %i.agz = icmp ugt i64 %i.agt, 1
  br i1 %.not10.i.i.i, label %.lr.ph181.i.split.us.i, label %.lr.ph181.i.split.i.preheader

.lr.ph181.i.split.i.preheader:                    ; preds = %.lr.ph181.i.i
  %i.aha = add i64 %.fr188.i, 2                   ; 2 uses
  %i.ahb = add i64 %.fr188.i, 1
  %xtraiter868 = and i64 %i.aha, 3                ; 3 uses
  %i.ahc = icmp ult i64 %i.ahb, 3
  %unroll_iter871 = and i64 %i.aha, -4
  %lcmp.mod869.not = icmp eq i64 %xtraiter868, 0
  %lcmp.mod870 = icmp ne i64 %xtraiter868, 0
  br label %.lr.ph181.i.split.i

.lr.ph181.i.split.us.i:                           ; preds = %.lr.ph181.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i
  %.val125.i.us281.i = phi ptr [ %.val125.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val125.i.us279.i.a, %.lr.ph181.i.i ] ; 3 uses
  %.val124.i.us275.i = phi ptr [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val124.i.us273.i.a, %.lr.ph181.i.i ] ; 3 uses
  %.val124179.i.us.i = phi ptr [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val124176.i.i, %.lr.ph181.i.i ]
  %.0112178.i.us.i = phi i64 [ %i.aig, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ 0, %.lr.ph181.i.i ] ; 4 uses
  %.val12.i.i.us.i = load ptr, ptr %i.x, align 8, !tbaa !129, !noalias !365
  %i.ahd = getelementptr inbounds nuw [136 x i8], ptr %.val12.i.i.us.i, i64 %.0112178.i.us.i ; 6 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 80
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahd, i64 56
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !135, !noalias !365 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 120
  %i.ahi = load float, ptr %i.agm, align 8, !noalias !365 ; 2 uses
  %i.ahj = load i64, ptr %i.bm, align 8, !noalias !365
  %.fr20.i.i.us.i = freeze i64 %i.ahj
  %i.ahk = icmp eq i64 %.fr20.i.i.us.i, 1
  %i.ahl = load ptr, ptr %i.ahe, align 8, !tbaa !157, !noalias !365
  %i.ahm = icmp eq ptr %i.ahl, %i.ahg             ; 2 uses
  br i1 %i.ahk, label %.split.us.i.i102.us.i, label %.split.preheader.i.i92.us.i

.split.preheader.i.i92.us.i:                      ; preds = %.lr.ph181.i.split.us.i
  br i1 %i.ahm, label %bb.fn, label %.split.1.i.i93.us.i

bb.fn:                                            ; preds = %.split.preheader.i.i92.us.i
  %i.ahn = load float, ptr %i.ahh, align 8, !tbaa !76, !noalias !365
  %i.aho = fcmp olt float %i.ahn, %i.ahi
  br i1 %i.aho, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %.split.1.i.i93.us.i

.split.1.i.i93.us.i:                              ; preds = %bb.fn, %.split.preheader.i.i92.us.i
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahd, i64 88
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !157, !noalias !365
  %i.ahr = icmp eq ptr %i.ahq, %i.ahg
  br i1 %i.ahr, label %bb.fo, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i

bb.fo:                                            ; preds = %.split.1.i.i93.us.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahd, i64 124
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !76, !noalias !365
  %i.ahu = fcmp olt float %i.aht, %i.ahi
  br i1 %i.ahu, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i

.split.us.i.i102.us.i:                            ; preds = %.lr.ph181.i.split.us.i
  br i1 %i.ahm, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i: ; preds = %.split.us.i.i102.us.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahd, i64 88
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !157, !noalias !365
  %i.ahx = icmp eq ptr %i.ahw, %i.ahg
  br i1 %i.ahx, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i, %.split.us.i.i102.us.i, %bb.fo, %bb.fn
  %i.ahy = getelementptr inbounds nuw [112 x i8], ptr %.val124179.i.us.i, i64 %.0112178.i.us.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 80
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.ahz, i64 %.fr188.i
  store i64 3, ptr %i.aia, align 8, !tbaa !75, !noalias !365
  %.val140.i.us.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.aib = getelementptr inbounds nuw [112 x i8], ptr %.val140.i.us.i, i64 %.0112178.i.us.i
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 80
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.aic, i64 %.fr188.i ; 2 uses
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !75, !noalias !365
  %i.aif = icmp eq i64 %i.aie, 3
  %..i.us.i = select i1 %i.aif, i64 4, i64 1
  store i64 %..i.us.i, ptr %i.aid, align 8, !tbaa !75, !noalias !365
  %.val124.i.us.pre.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %.val125.i.us.pre.i = load ptr, ptr %i.mt, align 8, !tbaa !87, !noalias !365
  br label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i, %bb.fo, %.split.1.i.i93.us.i
  %.val125.i.us.i = phi ptr [ %.val125.i.us.pre.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i ], [ %.val125.i.us281.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i ], [ %.val125.i.us281.i, %bb.fo ], [ %.val125.i.us281.i, %.split.1.i.i93.us.i ] ; 5 uses
  %.val124.i.us.i = phi ptr [ %.val124.i.us.pre.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i ], [ %.val124.i.us275.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i ], [ %.val124.i.us275.i, %bb.fo ], [ %.val124.i.us275.i, %.split.1.i.i93.us.i ] ; 6 uses
  %i.aig = add nuw i64 %.0112178.i.us.i, 1        ; 2 uses
  %i.aih = ptrtoint ptr %.val125.i.us.i to i64
  %i.aii = ptrtoint ptr %.val124.i.us.i to i64
  %i.aij = sub i64 %i.aih, %i.aii
  %i.aik = sdiv exact i64 %i.aij, 112
  %i.ail = icmp ult i64 %i.aig, %i.aik
  br i1 %i.ail, label %.lr.ph181.i.split.us.i, label %._crit_edge182.i.i, !llvm.loop !315

._crit_edge182.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i, %bb.fm
  %.val125.i.us280.i.a = phi ptr [ %.val125.i.us279.i.a, %bb.fm ], [ %.val125.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val125.i.us277.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ] ; 3 uses
  %.val124.i.us274.i.a = phi ptr [ %.val124.i.us273.i.a, %bb.fm ], [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val124.i.us271.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ] ; 3 uses
  %.val125.i268.i = phi ptr [ %.val125.i267.i, %bb.fm ], [ %.val125.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val125.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ]
  %.val124.i264.i = phi ptr [ %.val124.i263.i, %bb.fm ], [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val124.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ]
  %.val121.i.i = phi ptr [ %.val125177.i.i, %bb.fm ], [ %.val125.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val125.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ] ; 2 uses
  %.val.i90.i = phi ptr [ %.val124176.i.i, %bb.fm ], [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val124.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ] ; 35 uses
  %.0113.add.i.i = add nuw nsw i64 %.0113.idx183.i.i, 8 ; 2 uses
  %.not.i91.i = icmp eq i64 %.0113.add.i.i, 24
  br i1 %.not.i91.i, label %.preheader173.i.i, label %bb.fm

.lr.ph181.i.split.i:                              ; preds = %.lr.ph181.i.split.i.preheader, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i
  %.val125.i.us278.i = phi ptr [ %.val125.i.us277.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ], [ %.val125.i.us279.i.a, %.lr.ph181.i.split.i.preheader ] ; 4 uses
  %.val124.i.us272.i = phi ptr [ %.val124.i.us271.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ], [ %.val124.i.us273.i.a, %.lr.ph181.i.split.i.preheader ] ; 4 uses
  %.val125.i269.i = phi ptr [ %.val125.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ], [ %.val125.i267.i, %.lr.ph181.i.split.i.preheader ] ; 4 uses
  %.val124.i265.i = phi ptr [ %.val124.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ], [ %.val124.i263.i, %.lr.ph181.i.split.i.preheader ] ; 4 uses
  %.val124179.i.i = phi ptr [ %.val124.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ], [ %.val124176.i.i, %.lr.ph181.i.split.i.preheader ] ; 3 uses
  %.0112178.i.i = phi i64 [ %i.ali, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i ], [ 0, %.lr.ph181.i.split.i.preheader ] ; 10 uses
  %i.aim = add nuw i64 %.0112178.i.i, %i.agt      ; 3 uses
  %.val12.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !129, !noalias !365 ; 2 uses
  %i.ain = getelementptr inbounds nuw [136 x i8], ptr %.val12.i.i.i, i64 %i.aim ; 5 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 80
  %i.aip = getelementptr inbounds nuw [136 x i8], ptr %.val12.i.i.i, i64 %.0112178.i.i
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 56
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !135, !noalias !365 ; 3 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ain, i64 120
  %i.ait = load float, ptr %i.agm, align 8, !noalias !365 ; 2 uses
  %i.aiu = load i64, ptr %i.bm, align 8, !noalias !365
  %.fr20.i.i.i = freeze i64 %i.aiu
  %i.aiv = icmp eq i64 %.fr20.i.i.i, 1
  %i.aiw = load ptr, ptr %i.aio, align 8, !tbaa !157, !noalias !365
  %i.aix = icmp eq ptr %i.aiw, %i.air             ; 2 uses
  br i1 %i.aiv, label %.split.us.i.i102.i, label %.split.preheader.i.i92.i

.split.preheader.i.i92.i:                         ; preds = %.lr.ph181.i.split.i
  br i1 %i.aix, label %bb.fp, label %.split.1.i.i93.i

.split.us.i.i102.i:                               ; preds = %.lr.ph181.i.split.i
  br i1 %i.aix, label %.lr.ph.i.i.i.preheader, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.i

bb.fp:                                            ; preds = %.split.preheader.i.i92.i
  %i.aiy = load float, ptr %i.ais, align 8, !tbaa !76, !noalias !365
  %i.aiz = fcmp olt float %i.aiy, %i.ait
  br i1 %i.aiz, label %.lr.ph.i.i.i.preheader, label %.split.1.i.i93.i

.split.1.i.i93.i:                                 ; preds = %bb.fp, %.split.preheader.i.i92.i
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ain, i64 88
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !157, !noalias !365
  %i.ajc = icmp eq ptr %i.ajb, %i.air
  br i1 %i.ajc, label %bb.fq, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i

bb.fq:                                            ; preds = %.split.1.i.i93.i
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ain, i64 124
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !76, !noalias !365
  %i.ajf = fcmp olt float %i.aje, %i.ait
  br i1 %i.ajf, label %.lr.ph.i.i.i.preheader, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.i: ; preds = %.split.us.i.i102.i
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ain, i64 88
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !157, !noalias !365
  %i.aji = icmp eq ptr %i.ajh, %i.air
  br i1 %i.aji, label %.lr.ph.i.i.i.preheader, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.i, %bb.fq, %bb.fp, %.split.us.i.i102.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.fs
  %.111.i.i.i = phi i64 [ %i.ajk, %bb.fs ], [ %.0112178.i.i, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ajj = getelementptr inbounds nuw [112 x i8], ptr %.val124179.i.i, i64 %.111.i.i.i ; 4 uses
  %i.ajk = add i64 %.111.i.i.i, 1                 ; 3 uses
  %i.ajl = getelementptr inbounds nuw [112 x i8], ptr %.val124179.i.i, i64 %i.ajk ; 4 uses
  %.val4.i.i95.i = load ptr, ptr %i.ajj, align 8, !tbaa !378, !noalias !365
  %i.ajm = getelementptr i8, ptr %i.ajj, i64 8
  %.val5.i.i96.i = load ptr, ptr %i.ajm, align 8, !noalias !365
  %i.ajn = icmp eq ptr %.val4.i.i95.i, %i.ajl
  %i.ajo = icmp eq ptr %.val5.i.i96.i, %i.ajl
  %i.ajp = select i1 %i.ajn, i1 true, i1 %i.ajo
  br i1 %i.ajp, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ajl, align 8, !tbaa !378, !noalias !365
  %i.ajq = getelementptr i8, ptr %i.ajl, i64 8
  %.val3.i.i101.i = load ptr, ptr %i.ajq, align 8, !noalias !365
  %i.ajr = icmp eq ptr %.val.i.i.i, %i.ajj
  %i.ajs = icmp eq ptr %.val3.i.i101.i, %i.ajj
  %i.ajt = select i1 %i.ajr, i1 true, i1 %i.ajs
  br i1 %i.ajt, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.lr.ph.i.i.i
  %.not.i.i97.i = icmp eq i64 %i.ajk, %i.aim
  br i1 %.not.i.i97.i, label %.loopexit174.i.i, label %.lr.ph.i.i.i, !llvm.loop !307

.loopexit174.i.i:                                 ; preds = %bb.fs
  %i.aju = getelementptr inbounds nuw [112 x i8], ptr %.val124179.i.i, i64 %i.aim
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 80
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.ajv, i64 %.fr188.i
  store i64 3, ptr %i.ajw, align 8, !tbaa !75, !noalias !365
  br i1 %i.agz, label %.lr.ph.i99.i.preheader, label %._crit_edge.i98.i

.lr.ph.i99.i.preheader:                           ; preds = %.loopexit174.i.i
  br i1 %i.ahc, label %.lr.ph.i99.i.epil.preheader, label %.lr.ph.i99.i

._crit_edge.i98.i.loopexit.unr-lcssa:             ; preds = %bb.fz
  br i1 %lcmp.mod869.not, label %._crit_edge.i98.i, label %.lr.ph.i99.i.epil.preheader

.lr.ph.i99.i.epil.preheader:                      ; preds = %._crit_edge.i98.i.loopexit.unr-lcssa, %.lr.ph.i99.i.preheader
  %.0111175.i.i.epil.init = phi i64 [ 1, %.lr.ph.i99.i.preheader ], [ %i.alh, %._crit_edge.i98.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod870)
  br label %.lr.ph.i99.i.epil

.lr.ph.i99.i.epil:                                ; preds = %bb.fu, %.lr.ph.i99.i.epil.preheader
  %.0111175.i.i.epil = phi i64 [ %i.akd, %bb.fu ], [ %.0111175.i.i.epil.init, %.lr.ph.i99.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.fu ], [ 0, %.lr.ph.i99.i.epil.preheader ]
  %.val142.i.i.epil = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.ajx = getelementptr [112 x i8], ptr %.val142.i.i.epil, i64 %.0112178.i.i
  %i.ajy = getelementptr [112 x i8], ptr %i.ajx, i64 %.0111175.i.i.epil
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 80
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %.fr188.i ; 2 uses
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !75, !noalias !365
  %i.akc = icmp eq i64 %i.akb, 0
  br i1 %i.akc, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.lr.ph.i99.i.epil
  store i64 2, ptr %i.aka, align 8, !tbaa !75, !noalias !365
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.lr.ph.i99.i.epil
  %i.akd = add nuw i64 %.0111175.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter868
  br i1 %epil.iter.cmp.not, label %._crit_edge.i98.i, label %.lr.ph.i99.i.epil, !llvm.loop !316

._crit_edge.i98.i:                                ; preds = %._crit_edge.i98.i.loopexit.unr-lcssa, %bb.fu, %.loopexit174.i.i
  %.val140.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.ake = getelementptr inbounds nuw [112 x i8], ptr %.val140.i.i, i64 %.0112178.i.i
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 80
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.akf, i64 %.fr188.i ; 2 uses
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !75, !noalias !365
  %i.aki = icmp eq i64 %i.akh, 3
  %..i.i = select i1 %i.aki, i64 4, i64 1
  store i64 %..i.i, ptr %i.akg, align 8, !tbaa !75, !noalias !365
  %.val124.i.pre.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 2 uses
  %.val125.i.pre.i = load ptr, ptr %i.mt, align 8, !tbaa !87, !noalias !365 ; 2 uses
  br label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i

.lr.ph.i99.i:                                     ; preds = %.lr.ph.i99.i.preheader, %bb.fz
  %.0111175.i.i = phi i64 [ %i.alh, %bb.fz ], [ 1, %.lr.ph.i99.i.preheader ] ; 5 uses
  %niter872 = phi i64 [ %niter872.next.3, %bb.fz ], [ 0, %.lr.ph.i99.i.preheader ]
  %.val142.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.akj = getelementptr [112 x i8], ptr %.val142.i.i, i64 %.0112178.i.i
  %i.akk = getelementptr [112 x i8], ptr %i.akj, i64 %.0111175.i.i
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 80
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %.fr188.i ; 2 uses
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !75, !noalias !365
  %i.ako = icmp eq i64 %i.akn, 0
  br i1 %i.ako, label %bb.fv, label %.lr.ph.i99.i.1

bb.fv:                                            ; preds = %.lr.ph.i99.i
  store i64 2, ptr %i.akm, align 8, !tbaa !75, !noalias !365
  br label %.lr.ph.i99.i.1

.lr.ph.i99.i.1:                                   ; preds = %bb.fv, %.lr.ph.i99.i
  %.val142.i.i.1 = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.akp = getelementptr [112 x i8], ptr %.val142.i.i.1, i64 %.0112178.i.i
  %i.akq = getelementptr [112 x i8], ptr %i.akp, i64 %.0111175.i.i
  %i.akr = getelementptr i8, ptr %i.akq, i64 192
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.akr, i64 %.fr188.i ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !75, !noalias !365
  %i.aku = icmp eq i64 %i.akt, 0
  br i1 %i.aku, label %bb.fw, label %.lr.ph.i99.i.2

bb.fw:                                            ; preds = %.lr.ph.i99.i.1
  store i64 2, ptr %i.aks, align 8, !tbaa !75, !noalias !365
  br label %.lr.ph.i99.i.2

.lr.ph.i99.i.2:                                   ; preds = %bb.fw, %.lr.ph.i99.i.1
  %.val142.i.i.2 = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.akv = getelementptr [112 x i8], ptr %.val142.i.i.2, i64 %.0112178.i.i
  %i.akw = getelementptr [112 x i8], ptr %i.akv, i64 %.0111175.i.i
  %i.akx = getelementptr i8, ptr %i.akw, i64 304
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %.fr188.i ; 2 uses
  %i.akz = load i64, ptr %i.aky, align 8, !tbaa !75, !noalias !365
  %i.ala = icmp eq i64 %i.akz, 0
  br i1 %i.ala, label %bb.fx, label %.lr.ph.i99.i.3

bb.fx:                                            ; preds = %.lr.ph.i99.i.2
  store i64 2, ptr %i.aky, align 8, !tbaa !75, !noalias !365
  br label %.lr.ph.i99.i.3

.lr.ph.i99.i.3:                                   ; preds = %bb.fx, %.lr.ph.i99.i.2
  %.val142.i.i.3 = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.alb = getelementptr [112 x i8], ptr %.val142.i.i.3, i64 %.0112178.i.i
  %i.alc = getelementptr [112 x i8], ptr %i.alb, i64 %.0111175.i.i
  %i.ald = getelementptr i8, ptr %i.alc, i64 416
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.ald, i64 %.fr188.i ; 2 uses
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !75, !noalias !365
  %i.alg = icmp eq i64 %i.alf, 0
  br i1 %i.alg, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph.i99.i.3
  store i64 2, ptr %i.ale, align 8, !tbaa !75, !noalias !365
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.lr.ph.i99.i.3
  %i.alh = add nuw i64 %.0111175.i.i, 4           ; 2 uses
  %niter872.next.3 = add i64 %niter872, 4         ; 2 uses
  %niter872.ncmp.3 = icmp eq i64 %niter872.next.3, %unroll_iter871
  br i1 %niter872.ncmp.3, label %._crit_edge.i98.i.loopexit.unr-lcssa, label %.lr.ph.i99.i, !llvm.loop !317

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.i: ; preds = %bb.fr, %._crit_edge.i98.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.i, %bb.fq, %.split.1.i.i93.i
  %.val125.i.us277.i = phi ptr [ %.val125.i.us278.i, %.split.1.i.i93.i ], [ %.val125.i.pre.i, %._crit_edge.i98.i ], [ %.val125.i.us278.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.i ], [ %.val125.i.us278.i, %bb.fq ], [ %.val125.i.us278.i, %bb.fr ] ; 2 uses
  %.val124.i.us271.i = phi ptr [ %.val124.i.us272.i, %.split.1.i.i93.i ], [ %.val124.i.pre.i, %._crit_edge.i98.i ], [ %.val124.i.us272.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.i ], [ %.val124.i.us272.i, %bb.fq ], [ %.val124.i.us272.i, %bb.fr ] ; 2 uses
  %.val125.i.i = phi ptr [ %.val125.i269.i, %.split.1.i.i93.i ], [ %.val125.i.pre.i, %._crit_edge.i98.i ], [ %.val125.i269.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.i ], [ %.val125.i269.i, %bb.fq ], [ %.val125.i269.i, %bb.fr ] ; 4 uses
  %.val124.i.i = phi ptr [ %.val124.i265.i, %.split.1.i.i93.i ], [ %.val124.i.pre.i, %._crit_edge.i98.i ], [ %.val124.i265.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.i ], [ %.val124.i265.i, %bb.fq ], [ %.val124.i265.i, %bb.fr ] ; 5 uses
  %i.ali = add i64 %.0112178.i.i, 1               ; 2 uses
  %i.alj = add i64 %i.ali, %i.agt
  %i.alk = ptrtoint ptr %.val125.i.i to i64
  %i.all = ptrtoint ptr %.val124.i.i to i64
  %i.alm = sub i64 %i.alk, %i.all
  %i.aln = sdiv exact i64 %i.alm, 112
  %i.alo = icmp ult i64 %i.alj, %i.aln
  br i1 %i.alo, label %.lr.ph181.i.split.i, label %._crit_edge182.i.i, !llvm.loop !315

.lr.ph194.split.us.preheader.i.i:                 ; preds = %.preheader173.i.i
  %i.alp = add nsw i64 %i.agq, -5                 ; 2 uses
  %i.alq = add nsw i64 %i.agq, -6
  %xtraiter873 = and i64 %i.alp, 3                ; 3 uses
  %i.alr = icmp ult i64 %i.alq, 3
  br i1 %i.alr, label %.lr.ph194.split.us.i.i.epil.preheader, label %.lr.ph194.split.us.preheader.i.i.new

.lr.ph194.split.us.preheader.i.i.new:             ; preds = %.lr.ph194.split.us.preheader.i.i
  %unroll_iter877 = and i64 %i.alp, -4
  br label %.lr.ph194.split.us.i.i

.lr.ph194.split.us.i.i:                           ; preds = %.loopexit.us.i.i.3, %.lr.ph194.split.us.preheader.i.i.new
  %.0109191.us.i.i = phi i64 [ 1, %.lr.ph194.split.us.preheader.i.i.new ], [ %i.amy, %.loopexit.us.i.i.3 ] ; 5 uses
  %niter878 = phi i64 [ 0, %.lr.ph194.split.us.preheader.i.i.new ], [ %niter878.next.3, %.loopexit.us.i.i.3 ]
  %i.als = getelementptr [112 x i8], ptr %.val.i90.i, i64 %.0109191.us.i.i ; 6 uses
  %i.alt = getelementptr i8, ptr %i.als, i64 -24
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !75, !noalias !365
  switch i64 %i.alu, label %.loopexit.us.i.i [
    i64 1, label %bb.ga
    i64 4, label %bb.ga
  ]

bb.ga:                                            ; preds = %.lr.ph194.split.us.i.i, %.lr.ph194.split.us.i.i
  %i.alv = getelementptr inbounds nuw i8, ptr %i.als, i64 88
  %i.alw = load i64, ptr %i.alv, align 8, !tbaa !75, !noalias !365
  switch i64 %i.alw, label %.loopexit.us.i.i [
    i64 1, label %.lr.ph190.us.i.i
    i64 4, label %.lr.ph190.us.i.i
  ]

.loopexit.us.i.i:                                 ; preds = %.lr.ph190.us.i.i, %bb.ga, %.lr.ph194.split.us.i.i
  %i.alx = getelementptr [112 x i8], ptr %.val.i90.i, i64 %.0109191.us.i.i ; 6 uses
  %i.aly = getelementptr i8, ptr %i.alx, i64 88
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !75, !noalias !365
  switch i64 %i.alz, label %.loopexit.us.i.i.1 [
    i64 1, label %bb.gb
    i64 4, label %bb.gb
  ]

bb.gb:                                            ; preds = %.loopexit.us.i.i, %.loopexit.us.i.i
  %i.ama = getelementptr i8, ptr %i.alx, i64 200
  %i.amb = load i64, ptr %i.ama, align 8, !tbaa !75, !noalias !365
  switch i64 %i.amb, label %.loopexit.us.i.i.1 [
    i64 1, label %.lr.ph190.us.i.i.1
    i64 4, label %.lr.ph190.us.i.i.1
  ]

.lr.ph190.us.i.i.1:                               ; preds = %bb.gb, %bb.gb
  %i.amc = getelementptr i8, ptr %i.alx, i64 176
  store i64 9, ptr %i.amc, align 8, !tbaa !385, !noalias !365
  %i.amd = getelementptr i8, ptr %i.alx, i64 288
  store i64 9, ptr %i.amd, align 8, !tbaa !385, !noalias !365
  %i.ame = getelementptr i8, ptr %i.alx, i64 400
  store i64 9, ptr %i.ame, align 8, !tbaa !385, !noalias !365
  %i.amf = getelementptr i8, ptr %i.alx, i64 512
  store i64 9, ptr %i.amf, align 8, !tbaa !385, !noalias !365
  br label %.loopexit.us.i.i.1

.loopexit.us.i.i.1:                               ; preds = %.lr.ph190.us.i.i.1, %bb.gb, %.loopexit.us.i.i
  %i.amg = getelementptr [112 x i8], ptr %.val.i90.i, i64 %.0109191.us.i.i ; 6 uses
  %i.amh = getelementptr i8, ptr %i.amg, i64 200
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !75, !noalias !365
  switch i64 %i.ami, label %.loopexit.us.i.i.2 [
    i64 1, label %bb.gc
    i64 4, label %bb.gc
  ]

bb.gc:                                            ; preds = %.loopexit.us.i.i.1, %.loopexit.us.i.i.1
  %i.amj = getelementptr i8, ptr %i.amg, i64 312
  %i.amk = load i64, ptr %i.amj, align 8, !tbaa !75, !noalias !365
  switch i64 %i.amk, label %.loopexit.us.i.i.2 [
    i64 1, label %.lr.ph190.us.i.i.2
    i64 4, label %.lr.ph190.us.i.i.2
  ]

.lr.ph190.us.i.i.2:                               ; preds = %bb.gc, %bb.gc
  %i.aml = getelementptr i8, ptr %i.amg, i64 288
  store i64 9, ptr %i.aml, align 8, !tbaa !385, !noalias !365
  %i.amm = getelementptr i8, ptr %i.amg, i64 400
  store i64 9, ptr %i.amm, align 8, !tbaa !385, !noalias !365
  %i.amn = getelementptr i8, ptr %i.amg, i64 512
  store i64 9, ptr %i.amn, align 8, !tbaa !385, !noalias !365
  %i.amo = getelementptr i8, ptr %i.amg, i64 624
  store i64 9, ptr %i.amo, align 8, !tbaa !385, !noalias !365
  br label %.loopexit.us.i.i.2

.loopexit.us.i.i.2:                               ; preds = %.lr.ph190.us.i.i.2, %bb.gc, %.loopexit.us.i.i.1
  %i.amp = getelementptr [112 x i8], ptr %.val.i90.i, i64 %.0109191.us.i.i ; 6 uses
  %i.amq = getelementptr i8, ptr %i.amp, i64 312
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !75, !noalias !365
  switch i64 %i.amr, label %.loopexit.us.i.i.3 [
    i64 1, label %bb.gd
    i64 4, label %bb.gd
  ]

bb.gd:                                            ; preds = %.loopexit.us.i.i.2, %.loopexit.us.i.i.2
  %i.ams = getelementptr i8, ptr %i.amp, i64 424
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !75, !noalias !365
  switch i64 %i.amt, label %.loopexit.us.i.i.3 [
    i64 1, label %.lr.ph190.us.i.i.3
    i64 4, label %.lr.ph190.us.i.i.3
  ]

.lr.ph190.us.i.i.3:                               ; preds = %bb.gd, %bb.gd
  %i.amu = getelementptr i8, ptr %i.amp, i64 400
  store i64 9, ptr %i.amu, align 8, !tbaa !385, !noalias !365
  %i.amv = getelementptr i8, ptr %i.amp, i64 512
  store i64 9, ptr %i.amv, align 8, !tbaa !385, !noalias !365
  %i.amw = getelementptr i8, ptr %i.amp, i64 624
  store i64 9, ptr %i.amw, align 8, !tbaa !385, !noalias !365
  %i.amx = getelementptr i8, ptr %i.amp, i64 736
  store i64 9, ptr %i.amx, align 8, !tbaa !385, !noalias !365
  br label %.loopexit.us.i.i.3

.loopexit.us.i.i.3:                               ; preds = %.lr.ph190.us.i.i.3, %bb.gd, %.loopexit.us.i.i.2
  %i.amy = add nuw i64 %.0109191.us.i.i, 4        ; 2 uses
  %niter878.next.3 = add i64 %niter878, 4         ; 2 uses
  %niter878.ncmp.3 = icmp eq i64 %niter878.next.3, %unroll_iter877
  br i1 %niter878.ncmp.3, label %._crit_edge195.i.i.loopexit.unr-lcssa, label %.lr.ph194.split.us.i.i, !llvm.loop !318

.lr.ph190.us.i.i:                                 ; preds = %bb.ga, %bb.ga
  %i.amz = getelementptr inbounds nuw i8, ptr %i.als, i64 64
  store i64 9, ptr %i.amz, align 8, !tbaa !385, !noalias !365
  %i.ana = getelementptr i8, ptr %i.als, i64 176
  store i64 9, ptr %i.ana, align 8, !tbaa !385, !noalias !365
  %i.anb = getelementptr i8, ptr %i.als, i64 288
  store i64 9, ptr %i.anb, align 8, !tbaa !385, !noalias !365
  %i.anc = getelementptr i8, ptr %i.als, i64 400
  store i64 9, ptr %i.anc, align 8, !tbaa !385, !noalias !365
  br label %.loopexit.us.i.i

._crit_edge195.i.i.loopexit.unr-lcssa:            ; preds = %.loopexit.us.i.i.3
  %lcmp.mod875.not = icmp eq i64 %xtraiter873, 0
  br i1 %lcmp.mod875.not, label %._crit_edge195.i.i, label %.lr.ph194.split.us.i.i.epil.preheader

.lr.ph194.split.us.i.i.epil.preheader:            ; preds = %._crit_edge195.i.i.loopexit.unr-lcssa, %.lr.ph194.split.us.preheader.i.i
  %.0109191.us.i.i.epil.init = phi i64 [ 1, %.lr.ph194.split.us.preheader.i.i ], [ %i.amy, %._crit_edge195.i.i.loopexit.unr-lcssa ]
  %lcmp.mod876 = icmp ne i64 %xtraiter873, 0
  call void @llvm.assume(i1 %lcmp.mod876)
  br label %.lr.ph194.split.us.i.i.epil

.lr.ph194.split.us.i.i.epil:                      ; preds = %.loopexit.us.i.i.epil, %.lr.ph194.split.us.i.i.epil.preheader
  %.0109191.us.i.i.epil = phi i64 [ %i.anm, %.loopexit.us.i.i.epil ], [ %.0109191.us.i.i.epil.init, %.lr.ph194.split.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter874 = phi i64 [ %epil.iter874.next, %.loopexit.us.i.i.epil ], [ 0, %.lr.ph194.split.us.i.i.epil.preheader ]
  %i.and = getelementptr [112 x i8], ptr %.val.i90.i, i64 %.0109191.us.i.i.epil ; 6 uses
  %i.ane = getelementptr i8, ptr %i.and, i64 -24
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !75, !noalias !365
  switch i64 %i.anf, label %.loopexit.us.i.i.epil [
    i64 1, label %bb.ge
    i64 4, label %bb.ge
  ]

bb.ge:                                            ; preds = %.lr.ph194.split.us.i.i.epil, %.lr.ph194.split.us.i.i.epil
  %i.ang = getelementptr inbounds nuw i8, ptr %i.and, i64 88
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !75, !noalias !365
  switch i64 %i.anh, label %.loopexit.us.i.i.epil [
    i64 1, label %.lr.ph190.us.i.i.epil
    i64 4, label %.lr.ph190.us.i.i.epil
  ]

.lr.ph190.us.i.i.epil:                            ; preds = %bb.ge, %bb.ge
  %i.ani = getelementptr inbounds nuw i8, ptr %i.and, i64 64
  store i64 9, ptr %i.ani, align 8, !tbaa !385, !noalias !365
  %i.anj = getelementptr i8, ptr %i.and, i64 176
  store i64 9, ptr %i.anj, align 8, !tbaa !385, !noalias !365
  %i.ank = getelementptr i8, ptr %i.and, i64 288
  store i64 9, ptr %i.ank, align 8, !tbaa !385, !noalias !365
  %i.anl = getelementptr i8, ptr %i.and, i64 400
  store i64 9, ptr %i.anl, align 8, !tbaa !385, !noalias !365
  br label %.loopexit.us.i.i.epil

.loopexit.us.i.i.epil:                            ; preds = %.lr.ph190.us.i.i.epil, %bb.ge, %.lr.ph194.split.us.i.i.epil
  %i.anm = add nuw i64 %.0109191.us.i.i.epil, 1
  %epil.iter874.next = add i64 %epil.iter874, 1   ; 2 uses
  %epil.iter874.cmp.not = icmp eq i64 %epil.iter874.next, %xtraiter873
  br i1 %epil.iter874.cmp.not, label %._crit_edge195.i.i, label %.lr.ph194.split.us.i.i.epil, !llvm.loop !319

._crit_edge195.i.i:                               ; preds = %._crit_edge195.i.i.loopexit.unr-lcssa, %.loopexit.us.i.i.epil, %.preheader173.i.i
  %i.ann = icmp ugt i64 %i.agq, 4
  br i1 %i.ann, label %.lr.ph194.split.us.preheader.1.i.i, label %._crit_edge195.2.i.i

.lr.ph194.split.us.preheader.1.i.i:               ; preds = %._crit_edge195.i.i
  %xtraiter879 = and i64 %i.agq, 1
  %i.ano = icmp eq i64 %i.agp, 560
  br i1 %i.ano, label %.lr.ph194.split.us.1.i.i.epil.preheader, label %.lr.ph194.split.us.preheader.1.i.i.new

.lr.ph194.split.us.preheader.1.i.i.new:           ; preds = %.lr.ph194.split.us.preheader.1.i.i
  %i.anp = and i64 %i.agq, -2
  %i.anq = add nsw i64 %i.anp, -6
  br label %.lr.ph194.split.us.1.i.i

.lr.ph194.split.us.1.i.i:                         ; preds = %.loopexit.us.1.i.i.1, %.lr.ph194.split.us.preheader.1.i.i.new
  %.0109191.us.1.i.i = phi i64 [ 1, %.lr.ph194.split.us.preheader.1.i.i.new ], [ %i.aot, %.loopexit.us.1.i.i.1 ] ; 3 uses
  %niter884 = phi i64 [ 0, %.lr.ph194.split.us.preheader.1.i.i.new ], [ %niter884.next.1, %.loopexit.us.1.i.i.1 ] ; 2 uses
  %i.anr = getelementptr [112 x i8], ptr %.val.i90.i, i64 %.0109191.us.1.i.i ; 8 uses
  %i.ans = getelementptr i8, ptr %i.anr, i64 -32
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !75, !noalias !365
  switch i64 %i.ant, label %.loopexit.us.1.i.i [
    i64 1, label %bb.gf
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v4i64
!110 = !{!108, !15, i64 48}
!111 = !{!"_ZTSN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_115HBondDefinitionEEE", !108, i64 0, !103, i64 88, !10, i64 96}
!112 = !{!111, !103, i64 88}
!113 = !{!111, !10, i64 96}
!114 = !{!"p1 float", !15, i64 0}
!115 = !{!"p1 _ZTSSt6vectorIN3gmx15analysismodules12_GLOBAL__N_111PPStretchesESaIS3_EE", !15, i64 0}
!116 = !{!"_ZTSN3gmx14OptionTemplateINS_15analysismodules12_GLOBAL__N_111PPStretchesENS_10EnumOptionIS3_EEEE", !95, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !96, i64 72, !115, i64 80}
!117 = !{!116, !15, i64 64}
!118 = !{!116, !15, i64 48}
!119 = !{!"_ZTSN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_111PPStretchesEEE", !116, i64 0, !103, i64 88, !10, i64 96}
!120 = !{!119, !103, i64 88}
!121 = !{!119, !10, i64 96}
!122 = !{!29, !29, i64 0}
!123 = !{!10, !10, i64 0}
!124 = !{i8 0, i8 2}
!125 = !{}
!126 = !{!"p1 _ZTS9t_resinfo", !15, i64 0}
!127 = !{!39, !38, i64 8}
!128 = !{!39, !38, i64 16}
!129 = !{!39, !38, i64 0}
!130 = !{!38, !38, i64 0}
!131 = !{!"_ZTSN3gmx16EnumerationArrayINS_15analysismodules12_GLOBAL__N_117BackboneAtomTypesEmLS3_6EEE", !9, i64 0}
!132 = !{!"_ZTSSt12_Base_bitsetILm1EE", !31, i64 0}
!133 = !{!"_ZTSSt6bitsetILm6EE", !132, i64 0}
!134 = !{!"_ZTSN3gmx15analysismodules12_GLOBAL__N_17ResInfoE", !131, i64 0, !133, i64 48, !126, i64 56, !9, i64 64, !9, i64 80, !38, i64 96, !38, i64 104, !9, i64 112, !9, i64 120, !27, i64 128}
!135 = !{!134, !126, i64 56}
!136 = !{!134, !27, i64 128}
!137 = !{!132, !31, i64 0}
!138 = !{!134, !38, i64 96}
!139 = !{!134, !38, i64 104}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = !{!"branch_weights", i32 4, i32 12}
!143 = !{!"p1 _ZTSN3gmx22AnalysisDataPlotModuleE", !15, i64 0}
!144 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!145 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !144, i64 0}
!146 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!147 = !{!146, !10, i64 8}
!148 = !{!146, !10, i64 12}
!149 = !{!"_ZTSSt15_Sp_counted_ptrIPN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EE", !146, i64 0, !143, i64 16}
!150 = !{!149, !143, i64 16}
!151 = !{!145, !144, i64 0}
!152 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!153 = !{!"p1 _ZTS7t_atoms", !15, i64 0}
!154 = !{!"_ZTS7PbcType", !9, i64 0}
!155 = !{!"_ZTS10t_trxframe", !10, i64 0, !27, i64 4, !10, i64 8, !27, i64 12, !31, i64 16, !27, i64 24, !28, i64 28, !27, i64 32, !27, i64 33, !28, i64 36, !10, i64 40, !27, i64 44, !153, i64 48, !27, i64 56, !28, i64 60, !27, i64 64, !114, i64 72, !27, i64 80, !114, i64 88, !27, i64 96, !114, i64 104, !27, i64 112, !9, i64 116, !27, i64 152, !154, i64 156, !27, i64 160, !96, i64 168}
!156 = !{!155, !114, i64 72}
!157 = !{!126, !126, i64 0}
!158 = !{!89, !88, i64 8}
!159 = !{!88, !88, i64 0}
!160 = !{!"_ZTSN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameE", !10, i64 0, !32, i64 8}
!161 = !{!160, !10, i64 0}
!162 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !15, i64 0}
!163 = !{!162, !162, i64 0}
!164 = !{!"_ZTSN3gmx17IOptionValueStoreIiEE"}
!165 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!166 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !165, i64 0}
!167 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !166, i64 0}
!168 = !{!"_ZTSSt6vectorIiSaIiEE", !167, i64 0}
!169 = !{!"_ZTSN3gmx8internal14EnumIndexStoreINS_15analysismodules12_GLOBAL__N_112HydrogenModeEEE", !164, i64 0, !168, i64 8, !15, i64 32, !98, i64 40}
!170 = !{!169, !15, i64 32}
!171 = !{!169, !98, i64 40}
!172 = !{!15, !15, i64 0}
!173 = !{!165, !96, i64 8}
!174 = !{!165, !96, i64 16}
!175 = !{!165, !96, i64 0}
!176 = !{!"p1 _ZTSN3gmx17IOptionValueStoreIiEE", !15, i64 0}
!177 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx17IOptionValueStoreIiEELb0EE", !176, i64 0}
!178 = !{!177, !176, i64 0}
!179 = !{!176, !176, i64 0}
!180 = !{!"_ZTSNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_112HydrogenModeESaIS3_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!181 = !{!180, !15, i64 0}
!182 = !{!180, !15, i64 8}
!183 = !{!180, !15, i64 16}
!184 = !{!"_ZTSN3gmx8internal14EnumIndexStoreINS_15analysismodules12_GLOBAL__N_115HBondDefinitionEEE", !164, i64 0, !168, i64 8, !15, i64 32, !107, i64 40}
!185 = !{!184, !15, i64 32}
!186 = !{!184, !107, i64 40}
!187 = !{!"_ZTSNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_115HBondDefinitionESaIS3_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!188 = !{!187, !15, i64 0}
!189 = !{!187, !15, i64 8}
!190 = !{!187, !15, i64 16}
!191 = !{!"_ZTSN3gmx8internal14EnumIndexStoreINS_15analysismodules12_GLOBAL__N_111PPStretchesEEE", !164, i64 0, !168, i64 8, !15, i64 32, !115, i64 40}
!192 = !{!191, !15, i64 32}
!193 = !{!191, !115, i64 40}
!194 = !{!"_ZTSNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_111PPStretchesESaIS3_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!195 = !{!194, !15, i64 0}
!196 = !{!194, !15, i64 8}
!197 = !{!194, !15, i64 16}
!198 = !{!66, !9, i64 48}
!199 = !{!66, !9, i64 56}
!200 = !{!"p1 _ZTSN3gmx24TrajectoryAnalysisModuleE", !15, i64 0}
!201 = !{!200, !200, i64 0}
!202 = distinct !{null}
!203 = distinct !{null}
!204 = distinct !{null}
!205 = distinct !{null}
!206 = distinct !{null}
!207 = distinct !{null}
!208 = distinct !{null}
!209 = !{!95, !10, i64 8}
!210 = !{!95, !10, i64 12}
!211 = !{!95, !29, i64 16}
!212 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!213 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !15, i64 0}
!214 = !{!"_ZTSN3gmx14OptionTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14FileNameOptionEEE", !95, i64 0, !212, i64 48, !212, i64 56, !212, i64 64, !96, i64 72, !213, i64 80}
!215 = !{!"_ZTSN3gmx14OptionFileTypeE", !9, i64 0}
!216 = !{!"_ZTSN3gmx14FileNameOptionE", !214, i64 0, !215, i64 88, !10, i64 92, !29, i64 96, !10, i64 104, !27, i64 108, !27, i64 109, !27, i64 110, !27, i64 111, !27, i64 112}
!217 = !{!216, !10, i64 92}
!218 = !{!216, !10, i64 104}
!219 = !{!216, !27, i64 110}
!220 = !{!214, !212, i64 64}
!221 = !{!93, !31, i64 0}
!222 = !{!216, !29, i64 96}
!223 = !{!216, !215, i64 88}
!224 = !{!95, !29, i64 24}
!225 = !{!97, !31, i64 0}
!226 = !{!"p1 _ZTSN3gmx9SelectionE", !15, i64 0}
!227 = !{!"p1 _ZTSSt6vectorIN3gmx9SelectionESaIS1_EE", !15, i64 0}
!228 = !{!"_ZTSN3gmx14OptionTemplateINS_9SelectionENS_15SelectionOptionEEE", !95, i64 0, !226, i64 48, !226, i64 56, !226, i64 64, !96, i64 72, !227, i64 80}
!229 = !{!228, !226, i64 64}
!230 = !{!"_ZTSN3gmx15SelectionOptionE", !228, i64 0, !29, i64 88, !97, i64 96}
!231 = !{!230, !29, i64 88}
!232 = !{!"p1 _ZTSSt6vectorIbSaIbEE", !15, i64 0}
!233 = !{!"_ZTSN3gmx14OptionTemplateIbNS_13BooleanOptionEEE", !95, i64 0, !94, i64 48, !94, i64 56, !94, i64 64, !96, i64 72, !232, i64 80}
!234 = !{!233, !94, i64 64}
!235 = !{!27, !27, i64 0}
!236 = !{!233, !94, i64 48}
!237 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !15, i64 0}
!238 = !{!"_ZTSN3gmx14OptionTemplateIfNS_11FloatOptionEEE", !95, i64 0, !114, i64 48, !114, i64 56, !114, i64 64, !96, i64 72, !237, i64 80}
!239 = !{!"_ZTSN3gmx11FloatOptionE", !238, i64 0, !27, i64 88}
!240 = !{!239, !27, i64 88}
!241 = !{!238, !114, i64 64}
!242 = !{!238, !114, i64 48}
!243 = !{!"_ZTSN3gmx12ArrayRefIterIKPKcEE", !103, i64 0}
!244 = !{!243, !103, i64 0}
!245 = distinct !{!245, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_17ResInfoES3_SaIS3_EEvPT_PT0_RT1_"}
!246 = distinct !{!246, !245, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_17ResInfoES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!247 = distinct !{!247, !245, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_17ResInfoES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!248 = distinct !{!248, !84}
!249 = distinct !{!249, !84}
!250 = distinct !{!250, !84}
!251 = distinct !{!251, !84, !140, !141}
!252 = distinct !{!252, !84, !140, !141}
!253 = distinct !{!253, !84, !141, !140}
!254 = distinct !{null, null, null, null}
!255 = distinct !{ptr @_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!256 = distinct !{ptr @_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!257 = !{!"_ZTS9e_index_t", !9, i64 0}
!258 = !{!"_ZTS8t_blocka", !10, i64 0, !96, i64 8, !10, i64 16, !96, i64 24, !10, i64 32, !10, i64 36}
!259 = !{!"_ZTS18gmx_ana_indexmap_t", !257, i64 0, !96, i64 8, !96, i64 16, !258, i64 24, !96, i64 64, !258, i64 72, !27, i64 112}
!260 = !{!"_ZTS13gmx_ana_pos_t", !114, i64 0, !114, i64 8, !114, i64 16, !259, i64 24, !10, i64 144}
!261 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!262 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !261, i64 0}
!263 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !262, i64 0}
!264 = !{!"_ZTSSt6vectorIfSaIfEE", !263, i64 0}
!265 = !{!"p1 _ZTSN3gmx20SelectionTreeElementE", !15, i64 0}
!266 = !{!"_ZTS13e_coverfrac_t", !9, i64 0}
!267 = !{!"_ZTSN3gmx8internal13SelectionDataE", !32, i64 0, !32, i64 32, !260, i64 64, !264, i64 216, !264, i64 240, !97, i64 264, !265, i64 272, !266, i64 280, !28, i64 284, !28, i64 288, !27, i64 292, !27, i64 293}
!268 = !{!267, !96, i64 136}
!269 = !{!267, !10, i64 128}
!270 = !{!"p1 _ZTS6t_atom", !15, i64 0}
!271 = !{!"any p3 pointer", !102, i64 0}
!272 = !{!"p3 omnipotent char", !271, i64 0}
!273 = !{!"p1 _ZTS9t_pdbinfo", !15, i64 0}
!274 = !{!"_ZTS7t_atoms", !10, i64 0, !270, i64 8, !272, i64 16, !272, i64 24, !272, i64 32, !10, i64 40, !126, i64 48, !273, i64 56, !27, i64 64, !27, i64 65, !27, i64 66, !27, i64 67, !27, i64 68}
!275 = !{!274, !270, i64 8}
!276 = !{!"short", !9, i64 0}
!277 = !{!"_ZTS12ParticleType", !9, i64 0}
!278 = !{!"_ZTS6t_atom", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !276, i64 16, !276, i64 18, !277, i64 20, !10, i64 24, !10, i64 28, !9, i64 32}
!279 = !{!278, !10, i64 24}
!280 = !{!247, !246}
!281 = !{!274, !126, i64 48}
!282 = !{!"_ZTS9t_resinfo", !103, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 20, !103, i64 24}
!283 = !{!282, !103, i64 0}
!284 = !{!274, !272, i64 16}
!285 = !{!103, !103, i64 0}
!286 = !{!"_ZTSSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EE", !143, i64 0, !145, i64 8}
!287 = !{!286, !143, i64 0}
!288 = !{!"p1 _ZTSN3gmx19IAnalysisDataModuleE", !15, i64 0}
!289 = !{!"_ZTSSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EE", !288, i64 0, !145, i64 8}
!290 = !{!289, !288, i64 0}
!291 = distinct !{!291, !"_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20performPatternSearchB5cxx11ERK10t_trxframePK5t_pbcbfbbNS1_11PPStretchesENS1_15HBondDefinitionE"}
!292 = distinct !{!292, !291, !"_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20performPatternSearchB5cxx11ERK10t_trxframePK5t_pbcbfbbNS1_11PPStretchesENS1_15HBondDefinitionE: argument 0"}
!293 = distinct !{!293, !84}
!294 = distinct !{!294, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!295 = distinct !{!295, !294, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!296 = distinct !{!296, !294, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!297 = distinct !{!297, !84}
!298 = distinct !{!298, !84}
!299 = distinct !{!299, !84}
!300 = distinct !{null, null, ptr @_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev, null, null, null}
!301 = distinct !{null, null, ptr @_ZN3gmx26AnalysisNeighborhoodSearchD2Ev, null, null, null}
!302 = distinct !{!302, !84}
!303 = distinct !{!303, !84, !377}
!304 = distinct !{!304, !84}
!305 = distinct !{!305, !84}
!306 = distinct !{!306, !84}
!307 = distinct !{!307, !84}
!308 = distinct !{!308, !84}
!309 = distinct !{!309, !84}
!310 = distinct !{!310, !84}
!311 = distinct !{!311, !84, !140, !141}
!312 = distinct !{!312, !84, !140, !141}
!313 = distinct !{!313, !84, !141, !140}
!314 = distinct !{!314, !84}
!315 = distinct !{!315, !84}
!316 = distinct !{!316, !386}
!317 = distinct !{!317, !84}
!318 = distinct !{!318, !84}
!319 = distinct !{!319, !386}
!320 = distinct !{!320, !84, !387}
!321 = distinct !{!321, !84, !140, !141}
!322 = distinct !{!322, !84, !140, !141}
!323 = distinct !{!323, !84, !141, !140}
!324 = distinct !{!324, !84, !140, !141}
!325 = distinct !{!325, !84, !140, !141}
!326 = distinct !{!326, !84, !141, !140}
!327 = distinct !{!327, !84}
!328 = distinct !{!328, !84}
!329 = distinct !{!329, !84}
!330 = distinct !{!330, !84}
!331 = distinct !{!331, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_SaIS3_EEvPT_PT0_RT1_"}
!332 = distinct !{!332, !331, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!333 = distinct !{!333, !331, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!334 = distinct !{!334, !84}
!335 = distinct !{!335, !84, !140, !141}
!336 = distinct !{!336, !84, !140, !141}
!337 = distinct !{!337, !84, !141, !140}
!338 = distinct !{!338, !84, !140, !141}
!339 = distinct !{!339, !84, !140, !141}
!340 = distinct !{!340, !84, !141, !140}
!341 = distinct !{!341, !84, !140, !141}
!342 = distinct !{!342, !84, !140, !141}
!343 = distinct !{!343, !84, !141, !140}
!344 = distinct !{!344, !84, !140, !141}
!345 = distinct !{!345, !84, !140, !141}
!346 = distinct !{!346, !84, !141, !140}
!347 = distinct !{!347, !84, !140, !141}
!348 = distinct !{!348, !84, !140, !141}
!349 = distinct !{!349, !84, !141, !140}
!350 = distinct !{!350, !84, !140, !141}
!351 = distinct !{!351, !84, !140, !141}
!352 = distinct !{!352, !84, !141, !140}
!353 = distinct !{!353, !84, !140, !141}
!354 = distinct !{!354, !84, !140, !141}
!355 = distinct !{!355, !84, !141, !140}
!356 = distinct !{!356, !84, !140, !141}
!357 = distinct !{!357, !84, !140, !141}
!358 = distinct !{!358, !84, !141, !140}
!359 = distinct !{!359, !84, !140, !141}
!360 = distinct !{!360, !84, !140, !141}
!361 = distinct !{!361, !84, !141, !140}
!362 = distinct !{!362, !84, !140, !141}
!363 = distinct !{!363, !84, !140, !141}
!364 = distinct !{!364, !84, !141, !140}
!365 = !{!292}
!366 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!367 = !{i64 0, i64 12, !75}
!368 = !{!296, !295}
!369 = !{!"_ZTSN3gmx29AnalysisNeighborhoodPositionsE", !10, i64 0, !10, i64 4, !114, i64 8, !96, i64 16, !96, i64 24}
!370 = !{!369, !10, i64 0}
!371 = !{!369, !10, i64 4}
!372 = !{!369, !114, i64 8}
!373 = !{!"_ZTSN3gmx24AnalysisNeighborhoodPairE", !10, i64 0, !10, i64 4, !28, i64 8, !9, i64 12}
!374 = !{!373, !10, i64 0}
!375 = !{!373, !10, i64 4}
!376 = !{!43, !9, i64 136}
!377 = !{!"llvm.loop.peeled.count", i32 1}
!378 = !{!33, !33, i64 0}
!379 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !89, i64 0}
!380 = !{!"_ZTSSt12_Vector_baseImSaImEE", !379, i64 0}
!381 = !{!"_ZTSSt6vectorImSaImEE", !380, i64 0}
!382 = !{!"_ZTSN3gmx16EnumerationArrayINS_15analysismodules12_GLOBAL__N_110TurnsTypesENS2_14HelixPositionsELS3_4EEE", !9, i64 0}
!383 = !{!"_ZTSN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresDataE", !9, i64 0, !381, i64 16, !381, i64 40, !9, i64 64, !27, i64 72, !382, i64 80}
!384 = !{!383, !27, i64 72}
!385 = !{!383, !9, i64 64}
!386 = !{!"llvm.loop.unroll.disable"}
!387 = !{!"llvm.loop.peeled.count", i32 3}
!388 = !{!"branch_weights", i32 8, i32 24}
!389 = !{!332}
!390 = !{!333}
!391 = !{!332, !333}
!392 = !{!155, !28, i64 28}
!393 = !{!44, !44, i64 0}
!394 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!395 = !{!394, !394, i64 0}
!396 = distinct !{!396, !84}
!397 = distinct !{!397, !"_ZSt11make_uniqueIN3gmx8internal14EnumIndexStoreINS0_15analysismodules12_GLOBAL__N_112HydrogenModeEEEJPS5_PSt6vectorIS5_SaIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!398 = distinct !{!398, !397, !"_ZSt11make_uniqueIN3gmx8internal14EnumIndexStoreINS0_15analysismodules12_GLOBAL__N_112HydrogenModeEEEJPS5_PSt6vectorIS5_SaIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!399 = !{!99, !15, i64 56}
!400 = !{!99, !98, i64 80}
!401 = !{!398}
!402 = !{ptr @_ZN3gmx8internal14EnumIndexStoreINS_15analysismodules12_GLOBAL__N_112HydrogenModeEED2Ev}
!403 = distinct !{!403, !"_ZSt11make_uniqueIN3gmx8internal14EnumIndexStoreINS0_15analysismodules12_GLOBAL__N_115HBondDefinitionEEEJPS5_PSt6vectorIS5_SaIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!404 = distinct !{!404, !403, !"_ZSt11make_uniqueIN3gmx8internal14EnumIndexStoreINS0_15analysismodules12_GLOBAL__N_115HBondDefinitionEEEJPS5_PSt6vectorIS5_SaIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!405 = !{!108, !15, i64 56}
!406 = !{!108, !107, i64 80}
!407 = !{!404}
!408 = !{ptr @_ZN3gmx8internal14EnumIndexStoreINS_15analysismodules12_GLOBAL__N_115HBondDefinitionEED2Ev}
!409 = distinct !{!409, !"_ZSt11make_uniqueIN3gmx8internal14EnumIndexStoreINS0_15analysismodules12_GLOBAL__N_111PPStretchesEEEJPS5_PSt6vectorIS5_SaIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!410 = distinct !{!410, !409, !"_ZSt11make_uniqueIN3gmx8internal14EnumIndexStoreINS0_15analysismodules12_GLOBAL__N_111PPStretchesEEEJPS5_PSt6vectorIS5_SaIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!411 = !{!116, !15, i64 56}
!412 = !{!116, !115, i64 80}
!413 = !{!410}
!414 = !{ptr @_ZN3gmx8internal14EnumIndexStoreINS_15analysismodules12_GLOBAL__N_111PPStretchesEED2Ev}
!415 = distinct !{null, null, null}
!416 = !{i64 0, i64 8, !122, i64 8, i64 8, !122, i64 16, i64 4, !123}
!417 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !15, i64 0}
!418 = !{!417, !417, i64 0}
!419 = !{!"p1 _ZTSSt9type_info", !15, i64 0}
!420 = !{!"_ZTSSt10type_index", !419, i64 0}
!421 = !{!420, !419, i64 0}
!422 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !15, i64 0}
!423 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !422, i64 0, !145, i64 8}
!424 = !{!423, !422, i64 0}
!425 = distinct !{null, null, null}
!426 = distinct !{!426, !84}
!427 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !15, i64 0}
!428 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !427, i64 0, !427, i64 8, !427, i64 16}
!429 = !{!428, !427, i64 0}
!430 = !{!428, !427, i64 8}
!431 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !15, i64 0}
!432 = !{!431, !15, i64 0}
!433 = !{!428, !427, i64 16}
!434 = distinct !{null}
!435 = distinct !{!435, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresDataES3_SaIS3_EEvPT_PT0_RT1_"}
!436 = distinct !{!436, !435, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresDataES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!437 = distinct !{!437, !435, !"_ZSt19__relocate_object_aIN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresDataES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!438 = distinct !{!438, !84}
!439 = !{!436}
!440 = !{!437}
!441 = !{i64 0, i64 16, !75}
!442 = !{!436, !437}
!443 = !{!43, !28, i64 108}
!444 = distinct !{null, null, null}
!445 = distinct !{null, null, null}
end_hunk_2
