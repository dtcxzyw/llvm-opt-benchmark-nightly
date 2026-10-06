Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/dssp?download=true
inline.NumInlined: 2059
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a
  br label %.sink.split.i74.i

bb.bu:                                            ; preds = %bb.bn, %bb.bm
  %.val69.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 2 uses
  %i.ji = getelementptr inbounds nuw [112 x i8], ptr %.val69.i.i, i64 %.04093.i.i ; 4 uses
  %i.jj = getelementptr inbounds nuw [112 x i8], ptr %.val69.i.i, i64 %i.ie ; 2 uses
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !378, !noalias !365
  %.not.i84.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i84.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.jl, align 8, !tbaa !378, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i

bb.bw:                                            ; preds = %bb.bu
  store ptr %i.jj, ptr %i.ji, align 8, !tbaa !378, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i: ; preds = %bb.bw, %bb.bv
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  store i8 1, ptr %i.jm, align 8, !tbaa !384, !noalias !365
  %.val67.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 2 uses
  %i.jn = getelementptr inbounds nuw [112 x i8], ptr %.val67.i.i, i64 %i.ie ; 5 uses
  %i.jo = getelementptr inbounds nuw [112 x i8], ptr %.val67.i.i, i64 %.04093.i.i ; 2 uses
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !378, !noalias !365
  %.not.i86.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i86.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i
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
  %.pre-phi430.i.i = phi i64 [ %i.ng, %.._crit_edge_crit_edge.i.i ], [ %i.aag, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %.val89.i.i = phi ptr [ %.val89417.i.i, %.._crit_edge_crit_edge.i.i ], [ %.val87.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %.val88.i84.i = phi ptr [ %.val88415.i.i, %.._crit_edge_crit_edge.i.i ], [ %.val86.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %i.nl = add nuw i64 %.070364.i.i, 5
  %i.nm = icmp ult i64 %i.nl, %.pre-phi430.i.i
  br i1 %i.nm, label %bb.cg, label %.preheader335.i.i, !llvm.loop !306

bb.ch:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, %.lr.ph.i85.i
  %.val86361.i.i = phi ptr [ %.val88415.i.i, %.lr.ph.i85.i ], [ %.val86.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 6 uses
  %i.nn = phi i64 [ %i.nc, %.lr.ph.i85.i ], [ %i.aac, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 7 uses
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
  %16 = getelementptr i8, ptr %i.nt, i64 8
  %.val3.i.i.i.i = load ptr, ptr %16, align 8, !noalias !365 ; 2 uses
  br i1 %i.nx, label %17, label %.lr.ph.i.i.1.i.i

17:                                               ; preds = %.lr.ph.i.i.preheader.i.i
  %18 = icmp eq ptr %.val4.i.i.1.pre.i.i, %i.ns
  %19 = icmp eq ptr %.val3.i.i.i.i, %i.ns
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %.lr.ph.i.i.1.i.i

.lr.ph.i.i.1.i.i:                                 ; preds = %17, %.lr.ph.i.i.preheader.i.i
  %i.ny = getelementptr i8, ptr %i.nt, i64 112    ; 3 uses
  %i.nz = icmp eq ptr %.val4.i.i.1.pre.i.i, %i.ny
  %i.oa = icmp eq ptr %.val3.i.i.i.i, %i.ny
  %i.ob = select i1 %i.nz, i1 true, i1 %i.oa
  br i1 %i.ob, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i.i.1.i.i
  %.val.i.i.1.i.i = load ptr, ptr %i.ny, align 8, !tbaa !378, !noalias !365
  %21 = getelementptr i8, ptr %i.nt, i64 120
  %.val3.i.i.1.i.i = load ptr, ptr %21, align 8, !noalias !365
  %22 = icmp eq ptr %.val.i.i.1.i.i, %i.nt
  %i.oc = icmp eq ptr %.val3.i.i.1.i.i, %i.nt
  %23 = select i1 %22, i1 true, i1 %i.oc
  br i1 %23, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph.i.i.1.i.i
  %i.od = add i64 %.074360.i.i, -1                ; 7 uses
  %spec.select9.i48.i.i.i = call i64 @llvm.umax.i64(i64 %i.od, i64 %i.nn)
  %spec.select.i49.i.i.i = call i64 @llvm.umin.i64(i64 %i.od, i64 %i.nn)
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %bb.cl, %bb.cj
  %.111.i51.i.i.i = phi i64 [ %i.of, %bb.cl ], [ %spec.select.i49.i.i.i, %bb.cj ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [112 x i8], ptr %.val86361.i.i, i64 %.111.i51.i.i.i ; 4 uses
  %i.of = add i64 %.111.i51.i.i.i, 1              ; 3 uses
  %i.og = getelementptr inbounds nuw [112 x i8], ptr %.val86361.i.i, i64 %i.of ; 4 uses
  %.val4.i52.i.i.i = load ptr, ptr %i.oe, align 8, !tbaa !378, !noalias !365
  %i.oh = getelementptr i8, ptr %i.oe, i64 8
  %.val5.i53.i.i.i = load ptr, ptr %i.oh, align 8, !noalias !365
  %i.oi = icmp eq ptr %.val4.i52.i.i.i, %i.og
  %i.oj = icmp eq ptr %.val5.i53.i.i.i, %i.og
  %i.ok = select i1 %i.oi, i1 true, i1 %i.oj
  br i1 %i.ok, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph.i50.i.i.i
  %.val.i56.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !378, !noalias !365
  %i.ol = getelementptr i8, ptr %i.og, i64 8
  %.val3.i57.i.i.i = load ptr, ptr %i.ol, align 8, !noalias !365
  %i.om = icmp eq ptr %.val.i56.i.i.i, %i.oe
  %i.on = icmp eq ptr %.val3.i57.i.i.i, %i.oe
  %i.oo = select i1 %i.om, i1 true, i1 %i.on
  br i1 %i.oo, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph.i50.i.i.i
  %.not.i54.i.i.i = icmp eq i64 %i.of, %spec.select9.i48.i.i.i
  br i1 %.not.i54.i.i.i, label %bb.cm, label %.lr.ph.i50.i.i.i, !llvm.loop !307

bb.cm:                                            ; preds = %bb.cl
  %i.op = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %.070364.i.i ; 18 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 96
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !138, !noalias !365
  %.not35.i.i.i = icmp eq ptr %i.or, null
  br i1 %.not35.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 104
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !139, !noalias !365
  %.not36.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not36.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ou = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %.074360.i.i ; 16 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 96
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !138, !noalias !365
  %.not37.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not37.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 104
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !139, !noalias !365
  %.not38.i.i.i = icmp eq ptr %i.oy, null
  br i1 %.not38.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oz = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nj ; 8 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 80
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ou, i64 56
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !135, !noalias !365 ; 8 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 120 ; 2 uses
  %i.pe = load float, ptr %i.mz, align 8, !noalias !365 ; 16 uses
  %i.pf = load i64, ptr %i.bm, align 8, !noalias !365
  %.fr20.i211.i.i = freeze i64 %i.pf
  %i.pg = icmp eq i64 %.fr20.i211.i.i, 1
  %i.ph = load ptr, ptr %i.pa, align 8, !tbaa !157, !noalias !365 ; 3 uses
  %i.pi = icmp eq ptr %i.ph, %i.pc                ; 2 uses
  br i1 %i.pg, label %.split.us.i215.i.i, label %.split.preheader.i212.i.i

.split.preheader.i212.i.i:                        ; preds = %bb.cq
  br i1 %i.pi, label %bb.cr, label %.split.1.i213.i.i

.split.us.i215.i.i:                               ; preds = %bb.cq
  br i1 %i.pi, label %.split.us.i207.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i

bb.cr:                                            ; preds = %.split.preheader.i212.i.i
  %i.pj = load float, ptr %i.pd, align 8, !tbaa !76, !noalias !365
  %i.pk = fcmp olt float %i.pj, %i.pe
  br i1 %i.pk, label %.split.preheader.i204.i.i, label %.split.1.i213.i.i

.split.1.i213.i.i:                                ; preds = %bb.cr, %.split.preheader.i212.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !157, !noalias !365
  %i.pn = icmp eq ptr %i.pm, %i.pc
  br i1 %i.pn, label %bb.cs, label %.split.preheader.i196.i.i

bb.cs:                                            ; preds = %.split.1.i213.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.oz, i64 124
  %i.pp = load float, ptr %i.po, align 4, !tbaa !76, !noalias !365
  %i.pq = fcmp olt float %i.pp, %i.pe
  br i1 %i.pq, label %.split.preheader.i204.i.i, label %.split.preheader.i196.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i: ; preds = %.split.us.i215.i.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !157, !noalias !365
  %i.pt = icmp eq ptr %i.ps, %i.pc
  br i1 %i.pt, label %.thread.i.i, label %.split.us.i199.i.i

.thread.i.i:                                      ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.pv = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 56
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.py = load ptr, ptr %i.pu, align 8, !tbaa !157, !noalias !365
  %i.pz = icmp eq ptr %i.py, %i.px
  br i1 %i.pz, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i

.split.preheader.i204.i.i:                        ; preds = %bb.cs, %bb.cr
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.qb = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 56
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.qe = load ptr, ptr %i.qa, align 8, !tbaa !157, !noalias !365
  %i.qf = icmp eq ptr %i.qe, %i.qd
  br i1 %i.qf, label %bb.ct, label %.split.1.i205.i.i

.split.us.i207.i.i:                               ; preds = %.split.us.i215.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.qh = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 56
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.qk = load ptr, ptr %i.qg, align 8, !tbaa !157, !noalias !365
  %i.ql = icmp eq ptr %i.qk, %i.qj
  br i1 %i.ql, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i

bb.ct:                                            ; preds = %.split.preheader.i204.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ou, i64 120
  %i.qn = load float, ptr %i.qm, align 8, !tbaa !76, !noalias !365
  %i.qo = fcmp olt float %i.qn, %i.pe
  br i1 %i.qo, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.1.i205.i.i

.split.1.i205.i.i:                                ; preds = %bb.ct, %.split.preheader.i204.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !157, !noalias !365
  %i.qr = icmp eq ptr %i.qq, %i.qd
  br i1 %i.qr, label %bb.cu, label %.split.preheader.i196.i.i

bb.cu:                                            ; preds = %.split.1.i205.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ou, i64 124
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !76, !noalias !365
  %i.qu = fcmp olt float %i.qt, %i.pe
  br i1 %i.qu, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.preheader.i196.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i: ; preds = %.split.us.i207.i.i, %.thread.i.i
  %i.qv = phi ptr [ %i.px, %.thread.i.i ], [ %i.qj, %.split.us.i207.i.i ]
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !157, !noalias !365
  %i.qy = icmp eq ptr %i.qx, %i.qv
  br i1 %i.qy, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.us.i199.i.i

.split.preheader.i196.i.i:                        ; preds = %bb.cu, %.split.1.i205.i.i, %bb.cs, %.split.1.i213.i.i
  %i.qz = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nn ; 6 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 80
  %i.rb = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !135, !noalias !365 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 120 ; 2 uses
  %i.re = load ptr, ptr %i.ra, align 8, !tbaa !157, !noalias !365 ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.rc
  br i1 %i.rf, label %bb.cv, label %.split.1.i197.i.i

.split.us.i199.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i
  %i.rg = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nn ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 80
  %i.ri = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !135, !noalias !365 ; 4 uses
  %i.rk = load ptr, ptr %i.rh, align 8, !tbaa !157, !noalias !365 ; 3 uses
  %i.rl = icmp eq ptr %i.rk, %i.rj
  br i1 %i.rl, label %.split.us.i191.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i

bb.cv:                                            ; preds = %.split.preheader.i196.i.i
  %i.rm = load float, ptr %i.rd, align 8, !tbaa !76, !noalias !365
  %i.rn = fcmp olt float %i.rm, %i.pe
  br i1 %i.rn, label %.split.preheader.i188.i.i, label %.split.1.i197.i.i

.split.1.i197.i.i:                                ; preds = %bb.cv, %.split.preheader.i196.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qz, i64 88
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !157, !noalias !365
  %i.rq = icmp eq ptr %i.rp, %i.rc
  br i1 %i.rq, label %bb.cw, label %.split.preheader.i180.i.i

bb.cw:                                            ; preds = %.split.1.i197.i.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qz, i64 124
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !76, !noalias !365
  %i.rt = fcmp olt float %i.rs, %i.pe
  br i1 %i.rt, label %.split.preheader.i188.i.i, label %.split.preheader.i180.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i: ; preds = %.split.us.i199.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rg, i64 88
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !157, !noalias !365
  %i.rw = icmp eq ptr %i.rv, %i.rj
  br i1 %i.rw, label %.thread253.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i
  %.phi.trans.insert410.i.i = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.od
  %.phi.trans.insert411.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert410.i.i, i64 56
  %.pre.i89.i = load ptr, ptr %.phi.trans.insert411.i.i, align 8, !tbaa !135, !noalias !365
  br label %.split.us.i183.i.i

end_hunk_0
begin_hunk_1_@_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a
  %i.se = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.od
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 56
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.sh = load ptr, ptr %i.sd, align 8, !tbaa !157, !noalias !365
  %i.si = icmp eq ptr %i.sh, %i.sg
  br i1 %i.si, label %bb.cx, label %.split.1.i189.i.i

.split.us.i191.i.i:                               ; preds = %.split.us.i199.i.i
  %i.sj = getelementptr inbounds nuw i8, ptr %i.op, i64 80
  %i.sk = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.od
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 56
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.sn = load ptr, ptr %i.sj, align 8, !tbaa !157, !noalias !365
  %i.so = icmp eq ptr %i.sn, %i.sm
  br i1 %i.so, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i

bb.cx:                                            ; preds = %.split.preheader.i188.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.op, i64 120
  %i.sq = load float, ptr %i.sp, align 8, !tbaa !76, !noalias !365
  %i.sr = fcmp olt float %i.sq, %i.pe
  br i1 %i.sr, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.1.i189.i.i

.split.1.i189.i.i:                                ; preds = %bb.cx, %.split.preheader.i188.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.op, i64 88
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !157, !noalias !365
  %i.su = icmp eq ptr %i.st, %i.sg
  br i1 %i.su, label %bb.cy, label %.split.preheader.i180.i.i

bb.cy:                                            ; preds = %.split.1.i189.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %i.op, i64 124
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !76, !noalias !365
  %i.sx = fcmp olt float %i.sw, %i.pe
  br i1 %i.sx, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.preheader.i180.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i: ; preds = %.split.us.i191.i.i, %.thread253.i.i
  %i.sy = phi ptr [ %i.sa, %.thread253.i.i ], [ %i.sm, %.split.us.i191.i.i ] ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.op, i64 88
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !157, !noalias !365
  %i.tb = icmp eq ptr %i.ta, %i.sy
  br i1 %i.tb, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.us.i183.i.i

.split.preheader.i180.i.i:                        ; preds = %bb.cy, %.split.1.i189.i.i, %bb.cw, %.split.1.i197.i.i
  %i.tc = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.od
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 56
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.tf = icmp eq ptr %i.ph, %i.te
  br i1 %i.tf, label %bb.cz, label %.split.1.i181.i.i

.split.us.i183.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i
  %i.tg = phi ptr [ %.pre.i89.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i ], [ %i.sy, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i ] ; 2 uses
  %i.th = icmp eq ptr %i.ph, %i.tg
  br i1 %i.th, label %.split.us.i175.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i

bb.cz:                                            ; preds = %.split.preheader.i180.i.i
  %i.ti = load float, ptr %i.pd, align 8, !tbaa !76, !noalias !365
  %i.tj = fcmp olt float %i.ti, %i.pe
  br i1 %i.tj, label %.split.preheader.i172.i.i, label %.split.1.i181.i.i

.split.1.i181.i.i:                                ; preds = %bb.cz, %.split.preheader.i180.i.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !157, !noalias !365
  %i.tm = icmp eq ptr %i.tl, %i.te
  br i1 %i.tm, label %bb.da, label %.split.preheader.i164.i.i

bb.da:                                            ; preds = %.split.1.i181.i.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.oz, i64 124
  %i.to = load float, ptr %i.tn, align 4, !tbaa !76, !noalias !365
  %i.tp = fcmp olt float %i.to, %i.pe
  br i1 %i.tp, label %.split.preheader.i172.i.i, label %.split.preheader.i164.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i: ; preds = %.split.us.i183.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !157, !noalias !365
  %i.ts = icmp eq ptr %i.tr, %i.tg
  br i1 %i.ts, label %.thread289.i.i, label %.split.us.i167.i.i

.thread289.i.i:                                   ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i
  %i.tt = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 56
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.tw = icmp eq ptr %i.rk, %i.tv
  br i1 %i.tw, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i

.split.preheader.i172.i.i:                        ; preds = %bb.da, %bb.cz
  %i.tx = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 56
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.ua = icmp eq ptr %i.re, %i.tz
  br i1 %i.ua, label %bb.db, label %.split.1.i173.i.i

.split.us.i175.i.i:                               ; preds = %.split.us.i183.i.i
  %i.ub = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nk
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 56
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !135, !noalias !365 ; 2 uses
  %i.ue = icmp eq ptr %i.rk, %i.ud
  br i1 %i.ue, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i

bb.db:                                            ; preds = %.split.preheader.i172.i.i
  %i.uf = load float, ptr %i.rd, align 8, !tbaa !76, !noalias !365
  %i.ug = fcmp olt float %i.uf, %i.pe
  br i1 %i.ug, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.1.i173.i.i

.split.1.i173.i.i:                                ; preds = %bb.db, %.split.preheader.i172.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %i.qz, i64 88
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !157, !noalias !365
  %i.uj = icmp eq ptr %i.ui, %i.tz
  br i1 %i.uj, label %bb.dc, label %.split.preheader.i164.i.i

bb.dc:                                            ; preds = %.split.1.i173.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.qz, i64 124
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !76, !noalias !365
  %i.um = fcmp olt float %i.ul, %i.pe
  br i1 %i.um, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.preheader.i164.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i: ; preds = %.split.us.i175.i.i, %.thread289.i.i
  %i.un = phi ptr [ %i.tv, %.thread289.i.i ], [ %i.ud, %.split.us.i175.i.i ]
  %i.uo = getelementptr inbounds nuw i8, ptr %i.rg, i64 88
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !157, !noalias !365
  %i.uq = icmp eq ptr %i.up, %i.un
  br i1 %i.uq, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.us.i167.i.i

.split.preheader.i164.i.i:                        ; preds = %bb.dc, %.split.1.i173.i.i, %bb.da, %.split.1.i181.i.i
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !157, !noalias !365
  %i.ut = icmp eq ptr %i.us, %i.rc
  br i1 %i.ut, label %bb.dd, label %.split.1.i165.i.i

.split.us.i167.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !157, !noalias !365
  %i.uw = icmp eq ptr %i.uv, %i.rj
  br i1 %i.uw, label %.split.us.i.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i

bb.dd:                                            ; preds = %.split.preheader.i164.i.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ou, i64 120
  %i.uy = load float, ptr %i.ux, align 8, !tbaa !76, !noalias !365
  %i.uz = fcmp olt float %i.uy, %i.pe
  br i1 %i.uz, label %.split.preheader.i.i.i, label %.split.1.i165.i.i

.split.1.i165.i.i:                                ; preds = %bb.dd, %.split.preheader.i164.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !157, !noalias !365
  %i.vc = icmp eq ptr %i.vb, %i.rc
  br i1 %i.vc, label %bb.de, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.de:                                            ; preds = %.split.1.i165.i.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ou, i64 124
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !76, !noalias !365
  %i.vf = fcmp olt float %i.ve, %i.pe
  br i1 %i.vf, label %.split.preheader.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i: ; preds = %.split.us.i167.i.i
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ou, i64 88
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !157, !noalias !365
  %i.vi = icmp eq ptr %i.vh, %i.rj
  br i1 %i.vi, label %.thread312.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

.thread312.i.i:                                   ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.op, i64 80
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !157, !noalias !365
  %i.vl = icmp eq ptr %i.vk, %i.pc
  br i1 %i.vl, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i

.split.preheader.i.i.i:                           ; preds = %bb.de, %bb.dd
  %i.vm = getelementptr inbounds nuw i8, ptr %i.op, i64 80
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !157, !noalias !365
  %i.vo = icmp eq ptr %i.vn, %i.pc
  br i1 %i.vo, label %bb.df, label %.split.1.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i167.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.op, i64 80
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !157, !noalias !365
  %i.vr = icmp eq ptr %i.vq, %i.pc
  br i1 %i.vr, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i

bb.df:                                            ; preds = %.split.preheader.i.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.op, i64 120
  %i.vt = load float, ptr %i.vs, align 8, !tbaa !76, !noalias !365
  %i.vu = fcmp olt float %i.vt, %i.pe
  br i1 %i.vu, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.1.i.i.i

.split.1.i.i.i:                                   ; preds = %bb.df, %.split.preheader.i.i.i
  %i.vv = getelementptr inbounds nuw i8, ptr %i.op, i64 88
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !157, !noalias !365
  %i.vx = icmp eq ptr %i.vw, %i.pc
  br i1 %i.vx, label %bb.dg, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.dg:                                            ; preds = %.split.1.i.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.op, i64 124
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !76, !noalias !365
  %i.wa = fcmp olt float %i.vz, %i.pe
  br i1 %i.wa, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i: ; preds = %.split.us.i.i.i, %.thread312.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.op, i64 88
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !157, !noalias !365
  %i.wd = icmp eq ptr %i.wc, %i.pc
  br i1 %i.wd, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i, %bb.cy, %bb.cx, %.split.us.i191.i.i, %.thread253.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i, %bb.cu, %bb.ct, %.split.us.i207.i.i, %.thread.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.nt, i64 24 ; 3 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !158, !noalias !365 ; 4 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.nt, i64 32 ; 3 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !91, !noalias !365
  %.not.i.i110.i.i = icmp eq ptr %i.wg, %i.wi
  br i1 %.not.i.i110.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i
  store i64 %.074360.i.i, ptr %i.wg, align 8, !tbaa !81, !noalias !365
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  store ptr %i.wj, ptr %i.wf, align 8, !tbaa !158, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i

bb.di:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i
  %i.wk = load ptr, ptr %i.we, align 8, !tbaa !90, !noalias !365 ; 4 uses
  %i.wl = ptrtoint ptr %i.wg to i64
  %i.wm = ptrtoint ptr %i.wk to i64               ; 2 uses
  %i.wn = sub i64 %i.wl, %i.wm                    ; 5 uses
  %i.wo = icmp eq i64 %i.wn, 9223372036854775800
  br i1 %i.wo, label %bb.dj, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !365
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.di
  %i.wp = ashr exact i64 %i.wn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wp, i64 1)
  %i.wq = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.wp ; 2 uses
  %i.wr = icmp ult i64 %i.wq, %i.wp
  %i.ws = call i64 @llvm.umin.i64(i64 %i.wq, i64 1152921504606846975)
  %i.wt = select i1 %i.wr, i64 1152921504606846975, i64 %i.ws ; 3 uses
  %.not.i.i.i.i.i88.i = icmp ne i64 %i.wt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i88.i)
  %i.wu = shl nuw nsw i64 %i.wt, 3
  %i.wv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wu) #27, !noalias !365 ; 4 uses
  %i.ww = getelementptr inbounds i8, ptr %i.wv, i64 %i.wn ; 2 uses
  store i64 %.074360.i.i, ptr %i.ww, align 8, !tbaa !81, !noalias !365
  %i.wx = icmp sgt i64 %i.wn, 0
  br i1 %i.wx, label %bb.dk, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

bb.dk:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wv, ptr align 8 %i.wk, i64 %i.wn, i1 false), !noalias !365
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.dk, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  %i.wz = load ptr, ptr %i.wh, align 8, !tbaa !91, !noalias !365
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = sub i64 %i.xa, %i.wm
  call void @_ZdlPvm(ptr noundef nonnull %i.wk, i64 noundef %i.xb) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.dl, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.wv, ptr %i.we, align 8, !tbaa !90, !noalias !365
  store ptr %i.wy, ptr %i.wf, align 8, !tbaa !158, !noalias !365
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %i.wt
  store ptr %i.xc, ptr %i.wh, align 8, !tbaa !91, !noalias !365
  %.val102.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, %bb.dh
  %.val102.i.i = phi ptr [ %.val86361.i.i, %bb.dh ], [ %.val102.pre.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ]
  %i.xd = getelementptr inbounds nuw [112 x i8], ptr %.val102.i.i, i64 %.074360.i.i ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 16 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 24 ; 3 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !158, !noalias !365 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 32 ; 3 uses
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !91, !noalias !365
  %.not.i.i111.i.i = icmp eq ptr %i.xg, %i.xi
  br i1 %.not.i.i111.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i
  store i64 %.070364.i.i, ptr %i.xg, align 8, !tbaa !81, !noalias !365
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  store ptr %i.xj, ptr %i.xf, align 8, !tbaa !158, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.dn:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i
  %i.xk = load ptr, ptr %i.xe, align 8, !tbaa !90, !noalias !365 ; 4 uses
  %i.xl = ptrtoint ptr %i.xg to i64
  %i.xm = ptrtoint ptr %i.xk to i64               ; 2 uses
  %i.xn = sub i64 %i.xl, %i.xm                    ; 5 uses
  %i.xo = icmp eq i64 %i.xn, 9223372036854775800
  br i1 %i.xo, label %bb.do, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i

bb.do:                                            ; preds = %bb.dn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !365
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i: ; preds = %bb.dn
  %i.xp = ashr exact i64 %i.xn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i113.i.i = call i64 @llvm.umax.i64(i64 %i.xp, i64 1)
  %i.xq = add nsw i64 %.sroa.speculated.i.i.i.i113.i.i, %i.xp ; 2 uses
  %i.xr = icmp ult i64 %i.xq, %i.xp
  %i.xs = call i64 @llvm.umin.i64(i64 %i.xq, i64 1152921504606846975)
  %i.xt = select i1 %i.xr, i64 1152921504606846975, i64 %i.xs ; 3 uses
  %.not.i.i.i.i114.i.i = icmp ne i64 %i.xt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i114.i.i)
  %i.xu = shl nuw nsw i64 %i.xt, 3
  %i.xv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xu) #27, !noalias !365 ; 4 uses
  %i.xw = getelementptr inbounds i8, ptr %i.xv, i64 %i.xn ; 2 uses
  store i64 %.070364.i.i, ptr %i.xw, align 8, !tbaa !81, !noalias !365
  %i.xx = icmp sgt i64 %i.xn, 0
  br i1 %i.xx, label %bb.dp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i

bb.dp:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xv, ptr align 8 %i.xk, i64 %i.xn, i1 false), !noalias !365
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i: ; preds = %bb.dp, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %.not.i17.i.i.i116.i.i = icmp eq ptr %i.xk, null
  br i1 %.not.i17.i.i.i116.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i
  %i.xz = load ptr, ptr %i.xh, align 8, !tbaa !91, !noalias !365
  %i.ya = ptrtoint ptr %i.xz to i64
  %i.yb = sub i64 %i.ya, %i.xm
  call void @_ZdlPvm(ptr noundef nonnull %i.xk, i64 noundef %i.yb) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i: ; preds = %bb.dq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i
  store ptr %i.xv, ptr %i.xe, align 8, !tbaa !90, !noalias !365
  store ptr %i.xy, ptr %i.xf, align 8, !tbaa !158, !noalias !365
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.xt
  store ptr %i.yc, ptr %i.xh, align 8, !tbaa !91, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i, %bb.dg, %bb.df, %.split.us.i.i.i, %.thread312.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i, %bb.dc, %bb.db, %.split.us.i175.i.i, %.thread289.i.i
  %i.yd = getelementptr inbounds nuw i8, ptr %i.nt, i64 40 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.nt, i64 48 ; 3 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !158, !noalias !365 ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.nt, i64 56 ; 3 uses
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !91, !noalias !365
  %.not.i4.i.i.i = icmp eq ptr %i.yf, %i.yh
  br i1 %.not.i4.i.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i
  store i64 %.074360.i.i, ptr %i.yf, align 8, !tbaa !81, !noalias !365
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  store ptr %i.yi, ptr %i.ye, align 8, !tbaa !158, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i

bb.ds:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i
  %i.yj = load ptr, ptr %i.yd, align 8, !tbaa !90, !noalias !365 ; 4 uses
  %i.yk = ptrtoint ptr %i.yf to i64
  %i.yl = ptrtoint ptr %i.yj to i64               ; 2 uses
  %i.ym = sub i64 %i.yk, %i.yl                    ; 5 uses
  %i.yn = icmp eq i64 %i.ym, 9223372036854775800
  br i1 %i.yn, label %bb.dt, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i

bb.dt:                                            ; preds = %bb.ds
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !365
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i: ; preds = %bb.ds
  %i.yo = ashr exact i64 %i.ym, 3                 ; 3 uses
  %.sroa.speculated.i.i.i6.i.i.i = call i64 @llvm.umax.i64(i64 %i.yo, i64 1)
  %i.yp = add nsw i64 %.sroa.speculated.i.i.i6.i.i.i, %i.yo ; 2 uses
  %i.yq = icmp ult i64 %i.yp, %i.yo
  %i.yr = call i64 @llvm.umin.i64(i64 %i.yp, i64 1152921504606846975)
  %i.ys = select i1 %i.yq, i64 1152921504606846975, i64 %i.yr ; 3 uses
  %.not.i.i.i7.i.i.i = icmp ne i64 %i.ys, 0
  call void @llvm.assume(i1 %.not.i.i.i7.i.i.i)
  %i.yt = shl nuw nsw i64 %i.ys, 3
  %i.yu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yt) #27, !noalias !365 ; 4 uses
  %i.yv = getelementptr inbounds i8, ptr %i.yu, i64 %i.ym ; 2 uses
  store i64 %.074360.i.i, ptr %i.yv, align 8, !tbaa !81, !noalias !365
  %i.yw = icmp sgt i64 %i.ym, 0
  br i1 %i.yw, label %bb.du, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i

bb.du:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yu, ptr align 8 %i.yj, i64 %i.ym, i1 false), !noalias !365
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i: ; preds = %bb.du, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %.not.i17.i.i9.i.i.i = icmp eq ptr %i.yj, null
  br i1 %.not.i17.i.i9.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i
  %i.yy = load ptr, ptr %i.yg, align 8, !tbaa !91, !noalias !365
  %i.yz = ptrtoint ptr %i.yy to i64
  %i.za = sub i64 %i.yz, %i.yl
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.za) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i: ; preds = %bb.dv, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i
  store ptr %i.yu, ptr %i.yd, align 8, !tbaa !90, !noalias !365
  store ptr %i.yx, ptr %i.ye, align 8, !tbaa !158, !noalias !365
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.ys
  store ptr %i.zb, ptr %i.yg, align 8, !tbaa !91, !noalias !365
  %.val100.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i, %bb.dr
  %.val100.i.i = phi ptr [ %.val86361.i.i, %bb.dr ], [ %.val100.pre.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i ]
  %i.zc = getelementptr inbounds nuw [112 x i8], ptr %.val100.i.i, i64 %.074360.i.i ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 40 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 48 ; 3 uses
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !158, !noalias !365 ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 56 ; 3 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !91, !noalias !365
  %.not.i4.i120.i.i = icmp eq ptr %i.zf, %i.zh
  br i1 %.not.i4.i120.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i
  store i64 %.070364.i.i, ptr %i.zf, align 8, !tbaa !81, !noalias !365
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  store ptr %i.zi, ptr %i.ze, align 8, !tbaa !158, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.dx:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i
  %i.zj = load ptr, ptr %i.zd, align 8, !tbaa !90, !noalias !365 ; 4 uses
  %i.zk = ptrtoint ptr %i.zf to i64
  %i.zl = ptrtoint ptr %i.zj to i64               ; 2 uses
  %i.zm = sub i64 %i.zk, %i.zl                    ; 5 uses
  %i.zn = icmp eq i64 %i.zm, 9223372036854775800
  br i1 %i.zn, label %bb.dy, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i

bb.dy:                                            ; preds = %bb.dx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !365
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i: ; preds = %bb.dx
  %i.zo = ashr exact i64 %i.zm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i6.i122.i.i = call i64 @llvm.umax.i64(i64 %i.zo, i64 1)
  %i.zp = add nsw i64 %.sroa.speculated.i.i.i6.i122.i.i, %i.zo ; 2 uses
  %i.zq = icmp ult i64 %i.zp, %i.zo
  %i.zr = call i64 @llvm.umin.i64(i64 %i.zp, i64 1152921504606846975)
  %i.zs = select i1 %i.zq, i64 1152921504606846975, i64 %i.zr ; 3 uses
  %.not.i.i.i7.i123.i.i = icmp ne i64 %i.zs, 0
  call void @llvm.assume(i1 %.not.i.i.i7.i123.i.i)
  %i.zt = shl nuw nsw i64 %i.zs, 3
  %i.zu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zt) #27, !noalias !365 ; 4 uses
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 %i.zm ; 2 uses
  store i64 %.070364.i.i, ptr %i.zv, align 8, !tbaa !81, !noalias !365
  %i.zw = icmp sgt i64 %i.zm, 0
  br i1 %i.zw, label %bb.dz, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i

bb.dz:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zu, ptr align 8 %i.zj, i64 %i.zm, i1 false), !noalias !365
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i: ; preds = %bb.dz, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %.not.i17.i.i9.i125.i.i = icmp eq ptr %i.zj, null
  br i1 %.not.i17.i.i9.i125.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i
  %i.zy = load ptr, ptr %i.zg, align 8, !tbaa !91, !noalias !365
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = sub i64 %i.zz, %i.zl
  call void @_ZdlPvm(ptr noundef nonnull %i.zj, i64 noundef %i.aaa) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i: ; preds = %bb.ea, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i
  store ptr %i.zu, ptr %i.zd, align 8, !tbaa !90, !noalias !365
  store ptr %i.zx, ptr %i.ze, align 8, !tbaa !158, !noalias !365
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.zs
  store ptr %i.aab, ptr %i.zg, align 8, !tbaa !91, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i: ; preds = %bb.ck, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i, %bb.dw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i, %bb.dm, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i, %bb.dg, %.split.1.i.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i, %bb.de, %.split.1.i165.i.i, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ci, %17, %bb.ch
  %i.aac = add nuw i64 %i.nn, 1                   ; 2 uses
  %.val86.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 3 uses
  %.val87.i.i = load ptr, ptr %i.mt, align 8, !tbaa !87, !noalias !365 ; 2 uses
  %i.aad = ptrtoint ptr %.val87.i.i to i64
  %i.aae = ptrtoint ptr %.val86.i.i to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = sdiv exact i64 %i.aaf, 112             ; 2 uses
  %i.aah = icmp ult i64 %i.aac, %i.aag
  br i1 %i.aah, label %bb.ch, label %._crit_edge.i83.i, !llvm.loop !308

.preheader334.i.i:                                ; preds = %.critedge.i.i, %.preheader334.lr.ph.i.i
  %i.aai = phi i64 [ 2, %.preheader334.lr.ph.i.i ], [ %i.aat, %.critedge.i.i ] ; 2 uses
  %.073387.i.i = phi i64 [ 1, %.preheader334.lr.ph.i.i ], [ %i.aai, %.critedge.i.i ] ; 3 uses
  br label %bb.eb

.preheader.i76.i:                                 ; preds = %.critedge.i.i
  %i.aaj = icmp ugt i64 %.pre-phi442.i.i.a, 2
  br i1 %i.aaj, label %.lr.ph391.i.i.preheader, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i

.lr.ph391.i.i.preheader:                          ; preds = %.preheader.i76.i
  %xtraiter = and i64 %.pre-phi442.i.i.a, 1
  %i.aak = icmp eq i64 %.pre-phi442.i.i.a, 3
  br i1 %i.aak, label %.lr.ph391.i.i.epil.preheader, label %.lr.ph391.i.i.preheader.new

.lr.ph391.i.i.preheader.new:                      ; preds = %.lr.ph391.i.i.preheader
  %i.aal = and i64 %.pre-phi442.i.i.a, -2
  %i.aam = add nsw i64 %i.aal, -4
  br label %.lr.ph391.i.i

bb.eb:                                            ; preds = %bb.ed, %.preheader334.i.i
  %exitcond.not.i.i.1 = phi i1 [ true, %.preheader334.i.i ], [ false, %bb.ed ]
  %exitcond.i = phi i1 [ false, %.preheader334.i.i ], [ true, %bb.ed ]
  %.072384.i.i = phi i64 [ 1, %.preheader334.i.i ], [ 2, %bb.ed ]
  %i.aan = add nuw i64 %.072384.i.i, %.073387.i.i ; 3 uses
  %.val82.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 2 uses
  %.val83.i.i = load ptr, ptr %i.mt, align 8, !tbaa !87, !noalias !365 ; 2 uses
  %i.aao = ptrtoint ptr %.val83.i.i to i64
  %i.aap = ptrtoint ptr %.val82.i.i to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  %i.aar = sdiv exact i64 %i.aaq, 112             ; 2 uses
  %i.aas = icmp ult i64 %i.aan, %i.aar
  br i1 %i.aas, label %bb.ec, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.eb, %..critedge_crit_edge.i.i
  %.val125177.pre.i261.i = phi ptr [ %.val85.pre.i.i, %..critedge_crit_edge.i.i ], [ %.val83.i.i, %bb.eb ] ; 5 uses
  %.pre-phi442.i.i.a = phi i64 [ %.pre441.i.i.a, %..critedge_crit_edge.i.i ], [ %i.aar, %bb.eb ] ; 6 uses
  %.val84.i75.i = phi ptr [ %.val84.pre.i.i, %..critedge_crit_edge.i.i ], [ %.val82.i.i, %bb.eb ] ; 8 uses
  %i.aat = add nuw i64 %i.aai, 1                  ; 2 uses
  %i.aau = icmp ult i64 %i.aat, %.pre-phi442.i.i.a
  br i1 %i.aau, label %.preheader334.i.i, label %.preheader.i76.i, !llvm.loop !309

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
  %.pre435.i.i.a = ptrtoint ptr %.val85.pre.i.i to i64
  %.pre437.i.i.a = ptrtoint ptr %.val84.pre.i.i to i64
  %.pre439.i.i.a = sub i64 %.pre435.i.i.a, %.pre437.i.i.a
  %.pre441.i.i.a = sdiv exact i64 %.pre439.i.i.a, 112
  br label %.critedge.i.i, !llvm.loop !310

bb.ee:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, %bb.ec
  %.071.idx382.i.i = phi i64 [ 0, %bb.ec ], [ %.071.add.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i ] ; 2 uses
  %.071.ptr383.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.071.idx382.i.i
  %.val99.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 2 uses
  %i.aav = load i64, ptr %.071.ptr383.i.i, align 8, !tbaa !75, !noalias !365 ; 2 uses
  %i.aaw = add i64 %i.aav, -1
  %or.cond.i128.i.i = icmp ult i64 %i.aaw, 2
  br i1 %or.cond.i128.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesEENK3$_0clEv", ptr noundef nonnull @.str.37, i32 noundef 478) #30, !noalias !365
  unreachable

_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i: ; preds = %bb.ee
  %i.aax = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, i64 %.073387.i.i ; 12 uses
  %i.aay = icmp eq i64 %i.aav, 2                  ; 2 uses
  %..i.i.i = select i1 %i.aay, i64 16, i64 40     ; 3 uses
  %.9.i.i.i = select i1 %i.aay, i64 24, i64 48    ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aax, i64 %..i.i.i ; 3 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !159, !noalias !365 ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 %.9.i.i.i
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !159, !noalias !365
  %.not327.i.i = icmp eq ptr %i.aba, %i.abc
  br i1 %.not327.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i
  %i.abd = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, i64 %i.aan ; 12 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 %..i.i.i
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !159, !noalias !365
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 %.9.i.i.i
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !159, !noalias !365
  %.not328.i.i = icmp eq ptr %i.abf, %i.abh
  br i1 %.not328.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i
  %24 = getelementptr i8, ptr %i.aax, i64 -112    ; 3 uses
  %.val4.i.i.i = load ptr, ptr %24, align 8, !tbaa !378, !noalias !365
  %25 = getelementptr i8, ptr %i.aax, i64 -104
  %.val5.i.i.i = load ptr, ptr %25, align 8, !noalias !365
  %26 = icmp eq ptr %.val4.i.i.i, %i.aax
  %27 = icmp eq ptr %.val5.i.i.i, %i.aax
  %28 = select i1 %26, i1 true, i1 %27
  %.val4.i.1.pre.i.i = load ptr, ptr %i.aax, align 8, !tbaa !378, !noalias !365 ; 2 uses
  %29 = getelementptr i8, ptr %i.aax, i64 8
  %.val3.i.i.i = load ptr, ptr %29, align 8, !noalias !365 ; 2 uses
  br i1 %28, label %30, label %.lr.ph.i.1.i.i

30:                                               ; preds = %.lr.ph.i.preheader.i.i
  %31 = icmp eq ptr %.val4.i.1.pre.i.i, %24
  %32 = icmp eq ptr %.val3.i.i.i, %24
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i.1.i.i

.lr.ph.i.1.i.i:                                   ; preds = %30, %.lr.ph.i.preheader.i.i
  %i.abi = getelementptr i8, ptr %i.aax, i64 112  ; 3 uses
  %i.abj = icmp eq ptr %.val4.i.1.pre.i.i, %i.abi
  %i.abk = icmp eq ptr %.val3.i.i.i, %i.abi
  %i.abl = select i1 %i.abj, i1 true, i1 %i.abk
  br i1 %i.abl, label %bb.eg, label %.lr.ph.i136.preheader.i.i

bb.eg:                                            ; preds = %.lr.ph.i.1.i.i
  %.val.i.1.i.i = load ptr, ptr %i.abi, align 8, !tbaa !378, !noalias !365
  %34 = getelementptr i8, ptr %i.aax, i64 120
  %.val3.i.1.i.i = load ptr, ptr %34, align 8, !noalias !365
  %35 = icmp eq ptr %.val.i.1.i.i, %i.aax
  %i.abm = icmp eq ptr %.val3.i.1.i.i, %i.aax
  %36 = select i1 %35, i1 true, i1 %i.abm
  br i1 %36, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i136.preheader.i.i

.lr.ph.i136.preheader.i.i:                        ; preds = %bb.eg, %.lr.ph.i.1.i.i
  %i.abn = getelementptr i8, ptr %i.abd, i64 -112 ; 3 uses
  %.val4.i138.i.i = load ptr, ptr %i.abn, align 8, !tbaa !378, !noalias !365
  %i.abo = getelementptr i8, ptr %i.abd, i64 -104
  %.val5.i139.i.i = load ptr, ptr %i.abo, align 8, !noalias !365
  %i.abp = icmp eq ptr %.val4.i138.i.i, %i.abd
  %i.abq = icmp eq ptr %.val5.i139.i.i, %i.abd
  %i.abr = select i1 %i.abp, i1 true, i1 %i.abq
  %.val4.i138.i.1.pre.i = load ptr, ptr %i.abd, align 8, !tbaa !378, !noalias !365 ; 2 uses
  %i.abs = getelementptr i8, ptr %i.abd, i64 8
  %.val3.i143.i.i = load ptr, ptr %i.abs, align 8, !noalias !365 ; 2 uses
  br i1 %i.abr, label %bb.eh, label %.lr.ph.i136.i.1.i

bb.eh:                                            ; preds = %.lr.ph.i136.preheader.i.i
  %i.abt = icmp eq ptr %.val4.i138.i.1.pre.i, %i.abn
  %i.abu = icmp eq ptr %.val3.i143.i.i, %i.abn
  %i.abv = select i1 %i.abt, i1 true, i1 %i.abu
  br i1 %i.abv, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i136.i.1.i

.lr.ph.i136.i.1.i:                                ; preds = %bb.eh, %.lr.ph.i136.preheader.i.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abd, i64 112 ; 3 uses
  %i.abx = icmp eq ptr %.val4.i138.i.1.pre.i, %i.abw
  %i.aby = icmp eq ptr %.val3.i143.i.i, %i.abw
  %i.abz = select i1 %i.abx, i1 true, i1 %i.aby
  br i1 %i.abz, label %bb.ei, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i

bb.ei:                                            ; preds = %.lr.ph.i136.i.1.i
  %.val.i142.i.1.i = load ptr, ptr %i.abw, align 8, !tbaa !378, !noalias !365
  %i.aca = getelementptr i8, ptr %i.abd, i64 120
  %.val3.i143.i.1.i = load ptr, ptr %i.aca, align 8, !noalias !365
  %i.acb = icmp eq ptr %.val.i142.i.1.i, %i.abd
  %i.acc = icmp eq ptr %.val3.i143.i.1.i, %i.abd
  %i.acd = select i1 %i.acb, i1 true, i1 %i.acc
  br i1 %i.acd, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i: ; preds = %bb.ei, %.lr.ph.i136.i.1.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8 ; 2 uses
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !158, !noalias !365 ; 2 uses
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %i.aba to i64             ; 3 uses
  %i.aci = sub i64 %i.acg, %i.ach                 ; 4 uses
  %.not.i.i.i.i147.i.i = icmp eq ptr %i.acf, %i.aba
  br i1 %.not.i.i.i.i147.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i
  %i.acj = icmp ugt i64 %i.aci, 9223372036854775800
  br i1 %i.acj, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !152

.noexc.i.i.i.i:                                   ; preds = %bb.ej
  call void @_ZSt28__throw_bad_array_new_lengthv() #30, !noalias !365
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.ej
  %i.ack = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aci) #27, !noalias !365
  %.pre422.i.i = load ptr, ptr %i.aaz, align 8, !tbaa !159, !noalias !365 ; 3 uses
  %.pre423.i.i = load ptr, ptr %i.ace, align 8, !tbaa !159, !noalias !365 ; 2 uses
  %.pre443.i.i.a = ptrtoint ptr %.pre423.i.i to i64
  %.pre445.i.i.a = ptrtoint ptr %.pre422.i.i to i64
  %i.acl = icmp eq ptr %.pre423.i.i, %.pre422.i.i
  br label %bb.ek

bb.ek:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i
  %.pre-phi446.i.i.a = phi i64 [ %.pre445.i.i.a, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.ach, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %.pre-phi444.i.i.a = phi i64 [ %.pre443.i.i.a, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.ach, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %.not329377.i.i = phi i1 [ %i.acl, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ true, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %i.acm = phi ptr [ %.pre422.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.aba, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ] ; 2 uses
  %i.acn = phi ptr [ %i.ack, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ] ; 8 uses
  %i.aco = sub i64 %.pre-phi444.i.i.a, %.pre-phi446.i.i.a ; 4 uses
  %i.acp = icmp sgt i64 %i.aco, 8
  br i1 %i.acp, label %bb.el, label %bb.em, !prof !366

bb.el:                                            ; preds = %bb.ek
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.acn, ptr align 8 %i.acm, i64 %i.aco, i1 false), !noalias !365
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %i.acq = icmp eq i64 %i.aco, 8
  br i1 %i.acq, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.acr = load i64, ptr %i.acm, align 8, !tbaa !81, !noalias !365
  store i64 %i.acr, ptr %i.acn, align 8, !tbaa !81, !noalias !365
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %bb.el
  %i.acs = getelementptr inbounds i8, ptr %i.acn, i64 %i.aco
  %.val96.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365
  %i.act = getelementptr inbounds nuw [112 x i8], ptr %.val96.i.i, i64 %i.aan
  %.0.i150.i.i = getelementptr inbounds nuw i8, ptr %i.act, i64 %..i.i.i ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.0.i150.i.i, i64 8 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !158, !noalias !365 ; 2 uses
  %i.acw = load ptr, ptr %.0.i150.i.i, align 8, !tbaa !90, !noalias !365 ; 3 uses
  %i.acx = ptrtoint ptr %i.acv to i64             ; 2 uses
  %i.acy = ptrtoint ptr %i.acw to i64             ; 2 uses
  %i.acz = sub i64 %i.acx, %i.acy                 ; 3 uses
  %.not.i.i.i.i152.i.i = icmp eq ptr %i.acv, %i.acw
  br i1 %.not.i.i.i.i152.i.i, label %.noexc156.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ada = icmp ugt i64 %i.acz, 9223372036854775800
  br i1 %i.ada, label %.noexc.i.i154.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i, !prof !152

.noexc.i.i154.i.i:                                ; preds = %bb.ep
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc155.i.i unwind label %.loopexit.split-lp.i81.i, !noalias !365

.noexc155.i.i:                                    ; preds = %.noexc.i.i154.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i: ; preds = %bb.ep
  %i.adb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acz) #27
          to label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i unwind label %.loopexit333.i.i, !noalias !365

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i: ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i
  %.pre424.i.i = load ptr, ptr %.0.i150.i.i, align 8, !tbaa !159, !noalias !365 ; 3 uses
  %.pre425.i.i = load ptr, ptr %i.acu, align 8, !tbaa !159, !noalias !365 ; 2 uses
  %.pre447.i.i = ptrtoint ptr %.pre425.i.i to i64
  %.pre449.i.i = ptrtoint ptr %.pre424.i.i to i64
  %i.adc = icmp eq ptr %.pre425.i.i, %.pre424.i.i
  %i.add = or i1 %.not329377.i.i, %i.adc
  br label %.noexc156.i.i

.noexc156.i.i:                                    ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i, %bb.eo
  %.pre-phi450.i.i = phi i64 [ %.pre449.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.acy, %bb.eo ]
  %.pre-phi448.i.i = phi i64 [ %.pre447.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.acx, %bb.eo ]
  %.not330372.i.i = phi i1 [ %i.add, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ true, %bb.eo ]
  %i.ade = phi ptr [ %.pre424.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.acw, %bb.eo ] ; 2 uses
  %i.adf = phi ptr [ %i.adb, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ null, %bb.eo ] ; 6 uses
  %i.adg = sub i64 %.pre-phi448.i.i, %.pre-phi450.i.i ; 4 uses
  %i.adh = icmp sgt i64 %i.adg, 8
  br i1 %i.adh, label %bb.eq, label %bb.er, !prof !366

bb.eq:                                            ; preds = %.noexc156.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.adf, ptr align 8 %i.ade, i64 %i.adg, i1 false), !noalias !365
  br label %bb.et

bb.er:                                            ; preds = %.noexc156.i.i
  %i.adi = icmp eq i64 %i.adg, 8
  br i1 %i.adi, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.adj = load i64, ptr %i.ade, align 8, !tbaa !81, !noalias !365
  store i64 %i.adj, ptr %i.adf, align 8, !tbaa !81, !noalias !365
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.eq
  %i.adk = getelementptr inbounds i8, ptr %i.adf, i64 %i.adg
  br i1 %.not330372.i.i, label %._crit_edge381.split.i.i, label %.lr.ph375.i.i

._crit_edge381.split.i.i:                         ; preds = %._crit_edge376.i.i, %bb.et
  %.not.i.i.i.i79.i = icmp eq ptr %i.adf, null
  br i1 %.not.i.i.i.i79.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.eu

bb.eu:                                            ; preds = %._crit_edge381.split.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.adf, i64 noundef %i.acz) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.eu, %._crit_edge381.split.i.i
  %.not.i.i.i158.i.i = icmp eq ptr %i.acn, null
  br i1 %.not.i.i.i158.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef %i.aci) #29, !noalias !365
  br label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i

.loopexit333.i.i:                                 ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i
  %lpad.loopexit.i77.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit.split-lp.i81.i:                         ; preds = %.noexc.i.i154.i.i
  %lpad.loopexit.split-lp.i82.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ew:                                            ; preds = %.loopexit.split-lp.i81.i, %.loopexit333.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i77.i, %.loopexit333.i.i ], [ %lpad.loopexit.split-lp.i82.i, %.loopexit.split-lp.i81.i ]
  %.not.i.i.i160.i.i = icmp eq ptr %i.acn, null
  br i1 %.not.i.i.i160.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit161.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef %i.aci) #29, !noalias !365
  br label %_ZNSt6vectorImSaImEED2Ev.exit161.i.i

_ZNSt6vectorImSaImEED2Ev.exit161.i.i:             ; preds = %bb.ex, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !365
  br label %common.resume

.lr.ph375.i.i:                                    ; preds = %bb.et, %._crit_edge376.i.i
  %.sroa.0225.0378.i.i = phi ptr [ %i.ado, %._crit_edge376.i.i ], [ %i.acn, %bb.et ] ; 2 uses
  %i.adl = load i64, ptr %.sroa.0225.0378.i.i, align 8, !tbaa !81, !noalias !365
  %i.adm = trunc i64 %i.adl to i32                ; 3 uses
  %i.adn = add i32 %i.adm, 5
  br label %bb.ey

._crit_edge376.i.i:                               ; preds = %.loopexit.i78.i
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.0225.0378.i.i, i64 8 ; 2 uses
  %.not329.i.i = icmp eq ptr %i.ado, %i.acs
  br i1 %.not329.i.i, label %._crit_edge381.split.i.i, label %.lr.ph375.i.i

bb.ey:                                            ; preds = %.loopexit.i78.i, %.lr.ph375.i.i
  %.sroa.0221.0373.i.i = phi ptr [ %i.adf, %.lr.ph375.i.i ], [ %i.aek, %.loopexit.i78.i ] ; 2 uses
  %i.adp = load i64, ptr %.sroa.0221.0373.i.i, align 8, !tbaa !81, !noalias !365
  %i.adq = trunc i64 %i.adp to i32                ; 3 uses
  %i.adr = sub i32 %i.adn, %i.adq
  %i.ads = icmp ult i32 %i.adr, 11
  br i1 %i.ads, label %bb.ez, label %.loopexit.i78.i

bb.ez:                                            ; preds = %bb.ey
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.adm, i32 %i.adq) ; 2 uses
  %spec.select324.i.i = call i32 @llvm.smax.i32(i32 %i.adm, i32 %i.adq) ; 2 uses
  %i.adt = sext i32 %spec.select324.i.i to i64    ; 2 uses
  %.not79367.i.i = icmp ugt i32 %spec.select.i.i, %spec.select324.i.i
  %.val94.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !365 ; 7 uses
  br i1 %.not79367.i.i, label %.preheader331.i.i, label %iter.check

iter.check:                                       ; preds = %bb.ez
  %i.adu = sext i32 %spec.select.i.i to i64       ; 7 uses
  %i.adv = add nsw i64 %i.adu, 1
  %i.adw = add nsw i64 %i.adt, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.adv, i64 %i.adw)
  %i.adx = sub i64 %umax, %i.adu                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.adx, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check296 = icmp ult i64 %i.adx, 16
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ady = and i64 %i.adx, 12
  %n.vec = and i64 %i.adx, -16                    ; 4 uses
  %i.adz = add i64 %n.vec, %i.adu                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.adu, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %vec.ind
  %wide.gep297 = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %step.add
  %wide.gep298 = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %step.add.2
  %wide.gep299 = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %step.add.3
  %wide.gep300 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 64
  %wide.gep301 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep297, i64 64
  %wide.gep302 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep298, i64 64
  %wide.gep303 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep299, i64 64
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep300, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep301, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep302, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep303, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 16)
  %i.aea = icmp eq i64 %index.next, %n.vec
  br i1 %i.aea, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adx, %n.vec
  br i1 %cmp.n, label %.preheader331.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ady, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.adz, %vec.epilog.iter.check ], [ %i.adu, %vector.main.loop.iter.check ]
  %n.vec304 = and i64 %i.adx, -4                  ; 3 uses
  %i.aeb = add i64 %n.vec304, %i.adu
  %broadcast.splatinsert305 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat306 = shufflevector <4 x i64> %broadcast.splatinsert305, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction307 = add <4 x i64> %broadcast.splat306, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index308 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next312, %vec.epilog.vector.body ]
  %vec.ind309 = phi <4 x i64> [ %induction307, %vec.epilog.ph ], [ %vec.ind.next313, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep310 = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, <4 x i64> %vec.ind309
  %wide.gep311 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep310, i64 64
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep311, <4 x i1> splat (i1 true)), !tbaa !385, !noalias !365
  %index.next312 = add nuw i64 %index308, 4       ; 2 uses
  %vec.ind.next313 = add <4 x i64> %vec.ind309, splat (i64 4)
  %i.aec = icmp eq i64 %index.next312, %n.vec304
  br i1 %i.aec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n314 = icmp eq i64 %i.adx, %n.vec304
  br i1 %cmp.n314, label %.preheader331.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.069368.i.i.ph = phi i64 [ %i.adu, %iter.check ], [ %i.adz, %vec.epilog.iter.check ], [ %i.aeb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader331.i.i:                                ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ez
  %i.aed = getelementptr [112 x i8], ptr %.val94.pre.i.i, i64 %.073387.i.i ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 64
  store i64 7, ptr %i.aee, align 8, !tbaa !385, !noalias !365
  %i.aef = getelementptr i8, ptr %i.aed, i64 176
  store i64 7, ptr %i.aef, align 8, !tbaa !385, !noalias !365
  br i1 %exitcond.not.i.i.1, label %.loopexit.i78.i, label %bb.fa

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.069368.i.i = phi i64 [ %i.aei, %vec.epilog.scalar.ph ], [ %.069368.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aeg = getelementptr inbounds nuw [112 x i8], ptr %.val94.pre.i.i, i64 %.069368.i.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 64
  store i64 7, ptr %i.aeh, align 8, !tbaa !385, !noalias !365
  %i.aei = add i64 %.069368.i.i, 1                ; 2 uses
  %.not79.i.i = icmp ugt i64 %i.aei, %i.adt
  br i1 %.not79.i.i, label %.preheader331.i.i, label %vec.epilog.scalar.ph, !llvm.loop !313

bb.fa:                                            ; preds = %.preheader331.i.i
  %i.aej = getelementptr i8, ptr %i.aed, i64 288
  store i64 7, ptr %i.aej, align 8, !tbaa !385, !noalias !365
  br label %.loopexit.i78.i

.loopexit.i78.i:                                  ; preds = %.preheader331.i.i, %bb.fa, %bb.ey
  %i.aek = getelementptr inbounds nuw i8, ptr %.sroa.0221.0373.i.i, i64 8 ; 2 uses
  %.not330.i.i = icmp eq ptr %i.aek, %i.adk
  br i1 %.not330.i.i, label %._crit_edge376.i.i, label %bb.ey

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i: ; preds = %bb.ev, %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.ei, %bb.eh, %bb.eg, %30, %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i
  %.071.add.i.i = add nuw nsw i64 %.071.idx382.i.i, 8 ; 2 uses
  %.not.i80.i = icmp eq i64 %.071.add.i.i, 16
  br i1 %.not.i80.i, label %bb.ed, label %bb.ee

.lr.ph391.i.i:                                    ; preds = %bb.fh, %.lr.ph391.i.i.preheader.new
  %i.ael = phi i64 [ 2, %.lr.ph391.i.i.preheader.new ], [ %i.afj, %bb.fh ] ; 3 uses
  %.0390.i.i = phi i64 [ 1, %.lr.ph391.i.i.preheader.new ], [ %i.aex, %bb.fh ]
  %niter = phi i64 [ 0, %.lr.ph391.i.i.preheader.new ], [ %niter.next.1, %bb.fh ] ; 2 uses
  %i.aem = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %.0390.i.i ; 5 uses
  %i.aen = getelementptr i8, ptr %i.aem, i64 64   ; 2 uses
  %.val109.i.i = load i64, ptr %i.aen, align 8, !tbaa !385, !noalias !365
  %i.aeo = icmp eq i64 %.val109.i.i, 7
  br i1 %i.aeo, label %.lr.ph391.i.i.1, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph391.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !159, !noalias !365
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aem, i64 24
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !159, !noalias !365
  %.not325.i.i = icmp eq ptr %i.aeq, %i.aes
  br i1 %.not325.i.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aem, i64 40
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !159, !noalias !365
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aem, i64 48
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !159, !noalias !365
  %.not326.i.i = icmp eq ptr %i.aeu, %i.aew
  br i1 %.not326.i.i, label %.lr.ph391.i.i.1, label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  store i64 8, ptr %i.aen, align 8, !tbaa !385, !noalias !365
  br label %.lr.ph391.i.i.1

.lr.ph391.i.i.1:                                  ; preds = %bb.fd, %bb.fc, %.lr.ph391.i.i
  %i.aex = or disjoint i64 %i.ael, 1              ; 2 uses
  %i.aey = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %i.ael ; 5 uses
  %i.aez = getelementptr i8, ptr %i.aey, i64 64   ; 2 uses
  %.val109.i.i.1 = load i64, ptr %i.aez, align 8, !tbaa !385, !noalias !365
  %i.afa = icmp eq i64 %.val109.i.i.1, 7
  br i1 %i.afa, label %bb.fh, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph391.i.i.1
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !159, !noalias !365
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !159, !noalias !365
  %.not325.i.i.1 = icmp eq ptr %i.afc, %i.afe
  br i1 %.not325.i.i.1, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aey, i64 40
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !159, !noalias !365
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aey, i64 48
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !159, !noalias !365
  %.not326.i.i.1 = icmp eq ptr %i.afg, %i.afi
  br i1 %.not326.i.i.1, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  store i64 8, ptr %i.aez, align 8, !tbaa !385, !noalias !365
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %.lr.ph391.i.i.1
  %i.afj = add nuw i64 %i.ael, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.aam
  br i1 %niter.ncmp.1, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, label %.lr.ph391.i.i, !llvm.loop !314

_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa: ; preds = %bb.fh
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %.lr.ph391.i.i.epil.preheader

.lr.ph391.i.i.epil.preheader:                     ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, %.lr.ph391.i.i.preheader
  %.0390.i.i.epil.init = phi i64 [ 1, %.lr.ph391.i.i.preheader ], [ %i.aex, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod867 = trunc i64 %.pre-phi442.i.i.a to i1
  call void @llvm.assume(i1 %lcmp.mod867)
  %i.afk = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %.0390.i.i.epil.init ; 5 uses
  %i.afl = getelementptr i8, ptr %i.afk, i64 64   ; 2 uses
  %.val109.i.i.epil = load i64, ptr %i.afl, align 8, !tbaa !385, !noalias !365
  %i.afm = icmp eq i64 %.val109.i.i.epil, 7
  br i1 %i.afm, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph391.i.i.epil.preheader
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !159, !noalias !365
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afk, i64 24
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !159, !noalias !365
  %.not325.i.i.epil = icmp eq ptr %i.afo, %i.afq
  br i1 %.not325.i.i.epil, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afk, i64 40
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !159, !noalias !365
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afk, i64 48
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !159, !noalias !365
  %.not326.i.i.epil = icmp eq ptr %i.afs, %i.afu
  br i1 %.not326.i.i.epil, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  store i64 8, ptr %i.afl, align 8, !tbaa !385, !noalias !365
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i

_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i: ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, %bb.fk, %bb.fj, %.lr.ph391.i.i.epil.preheader, %.preheader.i76.i, %.preheader335.i.i
  %.val125177.pre.i.i = phi ptr [ %.val125177.pre.i261.i, %.preheader.i76.i ], [ %.val125177.pre.i262.i, %.preheader335.i.i ], [ %.val125177.pre.i261.i, %.lr.ph391.i.i.epil.preheader ], [ %.val125177.pre.i261.i, %bb.fj ], [ %.val125177.pre.i261.i, %bb.fk ], [ %.val125177.pre.i261.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.val124176.pre.i.i = phi ptr [ %.val84.i75.i, %.preheader.i76.i ], [ %.val124176.pre.i259.i, %.preheader335.i.i ], [ %.val84.i75.i, %.lr.ph391.i.i.epil.preheader ], [ %.val84.i75.i, %bb.fj ], [ %.val84.i75.i, %bb.fk ], [ %.val84.i75.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  br label %bb.fl

.preheader173.i.i:                                ; preds = %._crit_edge182.i.i
  %i.afw = ptrtoint ptr %.val121.i.i to i64
  %i.afx = ptrtoint ptr %.val.i90.i to i64
  %i.afy = sub i64 %i.afw, %i.afx                 ; 5 uses
  %i.afz = sdiv exact i64 %i.afy, 112             ; 11 uses
  %i.aga = icmp ugt i64 %i.afz, 5
  br i1 %i.aga, label %.lr.ph194.split.us.preheader.i.i, label %._crit_edge195.i.i

bb.fl:                                            ; preds = %._crit_edge182.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i
  %.val125.i.us279.i = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val125.i.us280.i, %._crit_edge182.i.i ] ; 3 uses
  %.val124.i.us273.i = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val124.i.us274.i, %._crit_edge182.i.i ] ; 3 uses
  %.val125.i267.i = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val125.i268.i, %._crit_edge182.i.i ] ; 2 uses
  %.val124.i263.i = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val124.i264.i, %._crit_edge182.i.i ] ; 2 uses
  %.val125177.i.i = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val121.i.i, %._crit_edge182.i.i ] ; 2 uses
  %.val124176.i.i = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val.i90.i, %._crit_edge182.i.i ] ; 4 uses
  %.0113.idx183.i.i = phi i64 [ 0, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.0113.add.i.i, %._crit_edge182.i.i ] ; 2 uses
  %.0113.ptr.i.i = getelementptr inbounds nuw i8, ptr @constinit.69, i64 %.0113.idx183.i.i
  %i.agb = load i64, ptr %.0113.ptr.i.i, align 8, !tbaa !75, !noalias !365
  %.fr188.i = freeze i64 %i.agb                   ; 12 uses
  %i.agc = add i64 %.fr188.i, 3                   ; 5 uses
  %i.agd = ptrtoint ptr %.val125177.i.i to i64
  %i.age = ptrtoint ptr %.val124176.i.i to i64
  %i.agf = sub i64 %i.agd, %i.age
  %i.agg = sdiv exact i64 %i.agf, 112
  %i.agh = icmp ult i64 %i.agc, %i.agg
  br i1 %i.agh, label %.lr.ph181.i.i, label %._crit_edge182.i.i

.lr.ph181.i.i:                                    ; preds = %bb.fl
  %.not10.i.i.i = icmp eq i64 %i.agc, 0
  %i.agi = icmp ugt i64 %i.agc, 1
  br i1 %.not10.i.i.i, label %.lr.ph181.i.split.us.i, label %.lr.ph181.i.split.i.preheader

.lr.ph181.i.split.i.preheader:                    ; preds = %.lr.ph181.i.i
  %i.agj = add i64 %.fr188.i, 2                   ; 2 uses
  %i.agk = add i64 %.fr188.i, 1
  %xtraiter868 = and i64 %i.agj, 3                ; 3 uses
  %i.agl = icmp ult i64 %i.agk, 3
  %unroll_iter872 = and i64 %i.agj, -4
  %lcmp.mod869.not = icmp eq i64 %xtraiter868, 0
  %lcmp.mod871 = icmp ne i64 %xtraiter868, 0
  br label %.lr.ph181.i.split.i

.lr.ph181.i.split.us.i:                           ; preds = %.lr.ph181.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i
  %.val125.i.us281.i = phi ptr [ %.val125.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val125.i.us279.i, %.lr.ph181.i.i ] ; 3 uses
  %.val124.i.us275.i = phi ptr [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val124.i.us273.i, %.lr.ph181.i.i ] ; 3 uses
  %.val124179.i.us.i = phi ptr [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ %.val124176.i.i, %.lr.ph181.i.i ]
  %.0112178.i.us.i = phi i64 [ %i.ahp, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i ], [ 0, %.lr.ph181.i.i ] ; 4 uses
  %.val12.i.i.us.i = load ptr, ptr %i.x, align 8, !tbaa !129, !noalias !365
  %i.agm = getelementptr inbounds nuw [136 x i8], ptr %.val12.i.i.us.i, i64 %.0112178.i.us.i ; 6 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 80
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 56
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !135, !noalias !365 ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 120
  %i.agr = load float, ptr %i.afv, align 8, !noalias !365 ; 2 uses
  %i.ags = load i64, ptr %i.bm, align 8, !noalias !365
  %.fr20.i.i.us.i = freeze i64 %i.ags
  %i.agt = icmp eq i64 %.fr20.i.i.us.i, 1
  %i.agu = load ptr, ptr %i.agn, align 8, !tbaa !157, !noalias !365
  %i.agv = icmp eq ptr %i.agu, %i.agp             ; 2 uses
  br i1 %i.agt, label %.split.us.i.i102.us.i, label %.split.preheader.i.i92.us.i

.split.preheader.i.i92.us.i:                      ; preds = %.lr.ph181.i.split.us.i
  br i1 %i.agv, label %bb.fm, label %.split.1.i.i93.us.i

bb.fm:                                            ; preds = %.split.preheader.i.i92.us.i
  %i.agw = load float, ptr %i.agq, align 8, !tbaa !76, !noalias !365
  %i.agx = fcmp olt float %i.agw, %i.agr
  br i1 %i.agx, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %.split.1.i.i93.us.i

.split.1.i.i93.us.i:                              ; preds = %bb.fm, %.split.preheader.i.i92.us.i
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agm, i64 88
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !157, !noalias !365
  %i.aha = icmp eq ptr %i.agz, %i.agp
  br i1 %i.aha, label %bb.fn, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i

bb.fn:                                            ; preds = %.split.1.i.i93.us.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agm, i64 124
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !76, !noalias !365
  %i.ahd = fcmp olt float %i.ahc, %i.agr
  br i1 %i.ahd, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i

.split.us.i.i102.us.i:                            ; preds = %.lr.ph181.i.split.us.i
  br i1 %i.agv, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i: ; preds = %.split.us.i.i102.us.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agm, i64 88
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !157, !noalias !365
  %i.ahg = icmp eq ptr %i.ahf, %i.agp
  br i1 %i.ahg, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i94.us.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i103.us.i, %.split.us.i.i102.us.i, %bb.fn, %bb.fm
  %i.ahh = getelementptr inbounds nuw [112 x i8], ptr %.val124179.i.us.i, i64 %.0112178.i.us.i
end_hunk_1
