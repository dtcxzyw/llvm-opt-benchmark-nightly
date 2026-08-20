inline.NumInlined: 2059
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a
  br label %.sink.split.i74.i

bb.bu:                                            ; preds = %bb.bn, %bb.bm
  %.val69.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244 ; 2 uses
  %i.jd = getelementptr inbounds nuw [112 x i8], ptr %.val69.i.i, i64 %.04093.i.i ; 4 uses
  %i.je = getelementptr inbounds nuw [112 x i8], ptr %.val69.i.i, i64 %i.hz ; 2 uses
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !274, !noalias !244
  %.not.i84.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i84.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store ptr %i.je, ptr %i.jg, align 8, !tbaa !274, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i

bb.bw:                                            ; preds = %bb.bu
  store ptr %i.je, ptr %i.jd, align 8, !tbaa !274, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i: ; preds = %bb.bw, %bb.bv
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  store i8 1, ptr %i.jh, align 8, !tbaa !275, !noalias !244
  %.val67.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244 ; 2 uses
  %i.ji = getelementptr inbounds nuw [112 x i8], ptr %.val67.i.i, i64 %i.hz ; 5 uses
  %i.jj = getelementptr inbounds nuw [112 x i8], ptr %.val67.i.i, i64 %.04093.i.i ; 2 uses
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !274, !noalias !244
  %.not.i86.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i86.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jj, ptr %i.jl, align 8, !tbaa !274, !noalias !244
  br label %.sink.split.i74.i

bb.by:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData8setBreakEPS2_.exit85.i.i
  store ptr %i.jj, ptr %i.ji, align 8, !tbaa !274, !noalias !244
  br label %.sink.split.i74.i

.sink.split.i74.i:                                ; preds = %bb.by, %bb.bx, %bb.bt, %bb.bs
  %.sink113.i.i = phi ptr [ %i.iz, %bb.bt ], [ %i.iz, %bb.bs ], [ %i.ji, %bb.bx ], [ %i.ji, %bb.by ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sink113.i.i, i64 72
  store i8 1, ptr %i.jm, align 8, !tbaa !275, !noalias !244
  br label %bb.bz

bb.bz:                                            ; preds = %.sink.split.i74.i, %bb.bo
  %i.jn = add nuw i64 %i.hz, 1                    ; 2 uses
  %.val44.i.i = load ptr, ptr %i.x, align 8, !tbaa !197, !noalias !244 ; 3 uses
  %.val45.i.i = load ptr, ptr %i.be, align 8, !tbaa !195, !noalias !244
  %i.jo = ptrtoint ptr %.val45.i.i to i64
  %i.jp = ptrtoint ptr %.val44.i.i to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = sdiv exact i64 %i.jq, 136               ; 2 uses
  %i.js = icmp ult i64 %i.jn, %i.jr
  br i1 %i.js, label %bb.bm, label %.preheader.i65.i, !llvm.loop !281

.lr.ph99.i.i:                                     ; preds = %.preheader.i65.i, %bb.cf
  %.val98.i.i = phi ptr [ %.val.i72.i, %bb.cf ], [ %.val44.i.i, %.preheader.i65.i ] ; 2 uses
  %i.jt = phi i64 [ %i.mi, %bb.cf ], [ 4, %.preheader.i65.i ] ; 2 uses
  %.097.i.i = phi i64 [ %i.mh, %bb.cf ], [ 2, %.preheader.i65.i ] ; 7 uses
  %i.ju = add i64 %.097.i.i, -2                   ; 2 uses
  %.val65.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244 ; 3 uses
  %i.jv = getelementptr inbounds nuw [112 x i8], ptr %.val65.i.i, i64 %i.ju ; 2 uses
  %i.jw = getelementptr [112 x i8], ptr %.val65.i.i, i64 %.097.i.i ; 8 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 -112   ; 3 uses
  %.val80.i66.i = load ptr, ptr %i.jv, align 8, !tbaa !274, !noalias !244
  %i.jy = getelementptr i8, ptr %i.jv, i64 8
  %.val81.i.i = load ptr, ptr %i.jy, align 8, !noalias !244
  %i.jz = icmp eq ptr %.val80.i66.i, %i.jx
  %i.ka = icmp eq ptr %.val81.i.i, %i.jx
  %i.kb = select i1 %i.jz, i1 true, i1 %i.ka
  br i1 %i.kb, label %bb.cf, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph99.i.i
  %.val78.i67.i = load ptr, ptr %i.jx, align 8, !tbaa !274, !noalias !244
  %i.kc = getelementptr i8, ptr %i.jw, i64 -104
  %.val79.i.i = load ptr, ptr %i.kc, align 8, !noalias !244
  %i.kd = icmp eq ptr %.val78.i67.i, %i.jw
  %i.ke = icmp eq ptr %.val79.i.i, %i.jw
  %i.kf = select i1 %i.kd, i1 true, i1 %i.ke
  br i1 %i.kf, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kg = getelementptr i8, ptr %i.jw, i64 112    ; 3 uses
  %.val76.i68.i = load ptr, ptr %i.jw, align 8, !tbaa !274, !noalias !244
  %i.kh = getelementptr i8, ptr %i.jw, i64 8
  %.val77.i69.i = load ptr, ptr %i.kh, align 8, !noalias !244
  %i.ki = icmp eq ptr %.val76.i68.i, %i.kg
  %i.kj = icmp eq ptr %.val77.i69.i, %i.kg
  %i.kk = select i1 %i.ki, i1 true, i1 %i.kj
  br i1 %i.kk, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kl = getelementptr inbounds nuw [112 x i8], ptr %.val65.i.i, i64 %i.jt ; 2 uses
  %.val74.i70.i = load ptr, ptr %i.kg, align 8, !tbaa !274, !noalias !244
  %i.km = getelementptr i8, ptr %i.jw, i64 120
  %.val75.i71.i = load ptr, ptr %i.km, align 8, !noalias !244
  %i.kn = icmp eq ptr %.val74.i70.i, %i.kl
  %i.ko = icmp eq ptr %.val75.i71.i, %i.kl
  %i.kp = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %i.kp, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kq = load ptr, ptr %i.hv, align 8, !tbaa !249, !noalias !244 ; 2 uses
  %i.kr = getelementptr inbounds nuw [136 x i8], ptr %.val98.i.i, i64 %.097.i.i
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !81, !noalias !244
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %i.kq, i64 %i.ks
  %i.ku = getelementptr inbounds nuw [136 x i8], ptr %.val98.i.i, i64 %i.ju
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !81, !noalias !244
  %i.kw = getelementptr inbounds nuw [12 x i8], ptr %i.kq, i64 %i.kv
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef %3, ptr noundef %i.kt, ptr noundef %i.kw, ptr noundef nonnull %7), !noalias !244
  %i.kx = load ptr, ptr %i.hv, align 8, !tbaa !249, !noalias !244 ; 2 uses
  %.val47.i.i = load ptr, ptr %i.x, align 8, !tbaa !197, !noalias !244 ; 2 uses
  %i.ky = getelementptr inbounds nuw [136 x i8], ptr %.val47.i.i, i64 %i.jt
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !81, !noalias !244
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.kx, i64 %i.kz
  %i.lb = getelementptr inbounds nuw [136 x i8], ptr %.val47.i.i, i64 %.097.i.i
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !81, !noalias !244
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.kx, i64 %i.lc
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef %3, ptr noundef %i.la, ptr noundef %i.ld, ptr noundef nonnull %8), !noalias !244
  %i.le = load float, ptr %i.hm, align 4, !tbaa !74, !noalias !244 ; 3 uses
  %i.lf = load float, ptr %i.hp, align 8, !tbaa !74, !noalias !244 ; 3 uses
  %i.lg = load float, ptr %i.hn, align 8, !tbaa !74, !noalias !244 ; 3 uses
  %i.lh = load float, ptr %i.ho, align 4, !tbaa !74, !noalias !244 ; 3 uses
  %i.li = fneg float %i.lh
  %i.lj = fmul float %i.lg, %i.li
  %i.lk = call float @llvm.fmuladd.f32(float %i.le, float %i.lf, float %i.lj) ; 2 uses
  %i.ll = load float, ptr %8, align 8, !tbaa !74, !noalias !244 ; 3 uses
  %i.lm = load float, ptr %7, align 8, !tbaa !74, !noalias !244 ; 3 uses
  %i.ln = fneg float %i.lf
  %i.lo = fmul float %i.lm, %i.ln
  %i.lp = call float @llvm.fmuladd.f32(float %i.lg, float %i.ll, float %i.lo) ; 2 uses
  %i.lq = fneg float %i.ll
  %i.lr = fmul float %i.le, %i.lq
  %i.ls = call float @llvm.fmuladd.f32(float %i.lm, float %i.lh, float %i.lr) ; 2 uses
  %i.lt = fmul float %i.lp, %i.lp
  %i.lu = call float @llvm.fmuladd.f32(float %i.lk, float %i.lk, float %i.lt)
  %i.lv = call noundef float @llvm.fmuladd.f32(float %i.ls, float %i.ls, float %i.lu)
  %sqrt.i.i88.i.i = call noundef float @llvm.sqrt.f32(float %i.lv)
  %i.lw = fmul float %i.le, %i.lh
  %i.lx = call float @llvm.fmuladd.f32(float %i.lm, float %i.ll, float %i.lw)
  %i.ly = call noundef float @llvm.fmuladd.f32(float %i.lg, float %i.lf, float %i.lx)
  %i.lz = call noundef float @atan2f(float noundef %sqrt.i.i88.i.i, float noundef %i.ly) #28, !noalias !244
  %i.ma = fpext float %i.lz to double
  %i.mb = fmul double %i.ma, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.mc = fptrunc double %i.mb to float
  %i.md = fcmp une float %i.mc, 3.600000e+02
  %i.me = fcmp ogt double %i.mb, f0x4051800010000000
  %or.cond.i.i = and i1 %i.me, %i.md
  br i1 %or.cond.i.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.val57.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244
  %i.mf = getelementptr inbounds nuw [112 x i8], ptr %.val57.i.i, i64 %.097.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 64
  store i64 2, ptr %i.mg, align 8, !tbaa !282, !noalias !244
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %.lr.ph99.i.i
  %i.mh = add nuw i64 %.097.i.i, 1
  %i.mi = add nuw i64 %.097.i.i, 3                ; 2 uses
  %.val.i72.i = load ptr, ptr %i.x, align 8, !tbaa !197, !noalias !244 ; 2 uses
  %.val43.i.i = load ptr, ptr %i.be, align 8, !tbaa !195, !noalias !244
  %i.mj = ptrtoint ptr %.val43.i.i to i64
  %i.mk = ptrtoint ptr %.val.i72.i to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = sdiv exact i64 %i.ml, 136
  %i.mn = icmp ult i64 %i.mi, %i.mm
  br i1 %i.mn, label %.lr.ph99.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i, !llvm.loop !283

_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i: ; preds = %bb.cf, %.preheader.i65.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures27analyzeHydrogenBondsInFrameERK10t_trxframePK5t_pbcbf.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !244
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 16 uses
  %.val88358.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244 ; 3 uses
  %.val89359.i.i = load ptr, ptr %i.mo, align 8, !tbaa !88, !noalias !244 ; 3 uses
  %i.mp = ptrtoint ptr %.val89359.i.i to i64
  %i.mq = ptrtoint ptr %.val88358.i.i to i64
  %i.mr = sub i64 %i.mp, %i.mq
  %i.ms = sdiv exact i64 %i.mr, 112               ; 2 uses
  %i.mt = icmp ugt i64 %i.ms, 5
  br i1 %i.mt, label %.lr.ph363.i.i, label %.preheader335.i.i

.lr.ph363.i.i:                                    ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.cg

.preheader335.i.i:                                ; preds = %._crit_edge.i83.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i
  %.val125177.pre.i242.i = phi ptr [ %.val89359.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i ], [ %.val89.i.i, %._crit_edge.i83.i ]
  %.val124176.pre.i239.i = phi ptr [ %.val88358.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i ], [ %.val88.i84.i, %._crit_edge.i83.i ]
  %.pre-phi430.i.i = phi i64 [ %i.ms, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures14calculateBendsERK10t_trxframePK5t_pbc.exit.i ], [ %.pre-phi426.i.i, %._crit_edge.i83.i ]
  %i.mv = icmp ugt i64 %.pre-phi430.i.i, 2
  br i1 %i.mv, label %.preheader334.lr.ph.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i

.preheader334.lr.ph.i.i:                          ; preds = %.preheader335.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.preheader334.i.i

bb.cg:                                            ; preds = %._crit_edge.i83.i, %.lr.ph363.i.i
  %.val89411.i.i = phi ptr [ %.val89359.i.i, %.lr.ph363.i.i ], [ %.val89.i.i, %._crit_edge.i83.i ] ; 2 uses
  %.val88409.i.i = phi ptr [ %.val88358.i.i, %.lr.ph363.i.i ], [ %.val88.i84.i, %._crit_edge.i83.i ] ; 3 uses
  %.070360.i.i = phi i64 [ 1, %.lr.ph363.i.i ], [ %16, %._crit_edge.i83.i ] ; 11 uses
  %i.mx = add nuw i64 %.070360.i.i, 4             ; 2 uses
  %i.my = ptrtoint ptr %.val89411.i.i to i64
  %i.mz = ptrtoint ptr %.val88409.i.i to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = sdiv exact i64 %i.na, 112               ; 2 uses
  %i.nc = icmp ult i64 %i.mx, %i.nb
  %16 = add nuw i64 %.070360.i.i, 1               ; 3 uses
  br i1 %i.nc, label %.lr.ph.split.preheader.i.i, label %._crit_edge.i83.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.cg
  %i.nd = add i64 %.070360.i.i, -1                ; 7 uses
  %i.ne = add nuw i64 %.070360.i.i, 3
  br label %bb.ch

._crit_edge.i83.i:                                ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, %bb.cg
  %.pre-phi426.i.i = phi i64 [ %i.nb, %bb.cg ], [ %i.zv, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %.val89.i.i = phi ptr [ %.val89411.i.i, %bb.cg ], [ %.val87.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %.val88.i84.i = phi ptr [ %.val88409.i.i, %bb.cg ], [ %.val86.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ] ; 2 uses
  %i.nf = add nuw i64 %.070360.i.i, 5
  %i.ng = icmp ult i64 %i.nf, %.pre-phi426.i.i
  br i1 %i.ng, label %bb.cg, label %.preheader335.i.i, !llvm.loop !284

bb.ch:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, %.lr.ph.split.preheader.i.i
  %.val86357.i.i = phi ptr [ %.val86.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ], [ %.val88409.i.i, %.lr.ph.split.preheader.i.i ] ; 8 uses
  %i.nh = phi i64 [ %i.zr, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ], [ %i.mx, %.lr.ph.split.preheader.i.i ] ; 7 uses
  %.074356.i.i = phi i64 [ %i.nh, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i ], [ %i.ne, %.lr.ph.split.preheader.i.i ] ; 8 uses
  %.val40.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !197, !noalias !244 ; 17 uses
  %.val41.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !195, !noalias !244
  %i.ni = ptrtoint ptr %.val41.i.i.i to i64
  %i.nj = ptrtoint ptr %.val40.i.i.i to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = sdiv exact i64 %i.nk, 136               ; 2 uses
  %.not.i.i85.i = icmp ult i64 %16, %i.nl
  %.not34.i.i.i = icmp ult i64 %i.nh, %i.nl
  %or.cond.i86.i = and i1 %.not.i.i85.i, %.not34.i.i.i
  br i1 %or.cond.i86.i, label %.lr.ph.i.i.preheader.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.ch
  %i.nm = getelementptr inbounds nuw [112 x i8], ptr %.val86357.i.i, i64 %i.nd ; 4 uses
  %i.nn = getelementptr inbounds nuw [112 x i8], ptr %.val86357.i.i, i64 %.070360.i.i ; 14 uses
  %.val4.i.i.i.i = load ptr, ptr %i.nm, align 8, !tbaa !274, !noalias !244
  %i.no = getelementptr i8, ptr %i.nm, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.no, align 8, !noalias !244
  %i.np = icmp eq ptr %.val4.i.i.i.i, %i.nn
  %i.nq = icmp eq ptr %.val5.i.i.i.i, %i.nn
  %i.nr = select i1 %i.np, i1 true, i1 %i.nq
  %.val4.i.i.1.pre.i.i = load ptr, ptr %i.nn, align 8, !tbaa !274, !noalias !244 ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nn, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.ns, align 8, !noalias !244 ; 2 uses
  br i1 %i.nr, label %bb.ci, label %.lr.ph.i.i.1.i.i

bb.ci:                                            ; preds = %.lr.ph.i.i.preheader.i.i
  %i.nt = icmp eq ptr %.val4.i.i.1.pre.i.i, %i.nm
  %i.nu = icmp eq ptr %.val3.i.i.i.i, %i.nm
  %i.nv = select i1 %i.nt, i1 true, i1 %i.nu
  br i1 %i.nv, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %.lr.ph.i.i.1.i.i

.lr.ph.i.i.1.i.i:                                 ; preds = %bb.ci, %.lr.ph.i.i.preheader.i.i
  %i.nw = getelementptr i8, ptr %i.nn, i64 112    ; 3 uses
  %i.nx = icmp eq ptr %.val4.i.i.1.pre.i.i, %i.nw
  %i.ny = icmp eq ptr %.val3.i.i.i.i, %i.nw
  %i.nz = select i1 %i.nx, i1 true, i1 %i.ny
  br i1 %i.nz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph.i.i.1.i.i
  %.val.i.i.1.i.i = load ptr, ptr %i.nw, align 8, !tbaa !274, !noalias !244
  %i.oa = getelementptr i8, ptr %i.nn, i64 120
  %.val3.i.i.1.i.i = load ptr, ptr %i.oa, align 8, !noalias !244
  %i.ob = icmp eq ptr %.val.i.i.1.i.i, %i.nn
  %i.oc = icmp eq ptr %.val3.i.i.1.i.i, %i.nn
  %i.od = select i1 %i.ob, i1 true, i1 %i.oc
  br i1 %i.od, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.lr.ph.i.i.1.i.i
  %i.oe = add i64 %.074356.i.i, -1                ; 7 uses
  %spec.select9.i48.i.i.i = call i64 @llvm.umax.i64(i64 %i.oe, i64 %i.nh)
  %spec.select.i49.i.i.i = call i64 @llvm.umin.i64(i64 %i.oe, i64 %i.nh)
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %bb.cm, %bb.ck
  %.111.i51.i.i.i = phi i64 [ %i.og, %bb.cm ], [ %spec.select.i49.i.i.i, %bb.ck ] ; 2 uses
  %i.of = getelementptr inbounds nuw [112 x i8], ptr %.val86357.i.i, i64 %.111.i51.i.i.i ; 4 uses
  %i.og = add i64 %.111.i51.i.i.i, 1              ; 3 uses
  %i.oh = getelementptr inbounds nuw [112 x i8], ptr %.val86357.i.i, i64 %i.og ; 4 uses
  %.val4.i52.i.i.i = load ptr, ptr %i.of, align 8, !tbaa !274, !noalias !244
  %i.oi = getelementptr i8, ptr %i.of, i64 8
  %.val5.i53.i.i.i = load ptr, ptr %i.oi, align 8, !noalias !244
  %i.oj = icmp eq ptr %.val4.i52.i.i.i, %i.oh
  %i.ok = icmp eq ptr %.val5.i53.i.i.i, %i.oh
  %i.ol = select i1 %i.oj, i1 true, i1 %i.ok
  br i1 %i.ol, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i50.i.i.i
  %.val.i56.i.i.i = load ptr, ptr %i.oh, align 8, !tbaa !274, !noalias !244
  %i.om = getelementptr i8, ptr %i.oh, i64 8
  %.val3.i57.i.i.i = load ptr, ptr %i.om, align 8, !noalias !244
  %i.on = icmp eq ptr %.val.i56.i.i.i, %i.of
  %i.oo = icmp eq ptr %.val3.i57.i.i.i, %i.of
  %i.op = select i1 %i.on, i1 true, i1 %i.oo
  br i1 %i.op, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph.i50.i.i.i
  %.not.i54.i.i.i = icmp eq i64 %i.og, %spec.select9.i48.i.i.i
  br i1 %.not.i54.i.i.i, label %bb.cn, label %.lr.ph.i50.i.i.i, !llvm.loop !285

bb.cn:                                            ; preds = %bb.cm
  %i.oq = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %.070360.i.i ; 18 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 96
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !218, !noalias !244
  %.not35.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not35.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 104
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !219, !noalias !244
  %.not36.i.i.i = icmp eq ptr %i.ou, null
  br i1 %.not36.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ov = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %.074356.i.i ; 16 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 96
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !218, !noalias !244
  %.not37.i.i.i = icmp eq ptr %i.ox, null
  br i1 %.not37.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 104
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !219, !noalias !244
  %.not38.i.i.i = icmp eq ptr %i.oz, null
  br i1 %.not38.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.pa = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %16 ; 8 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 80
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 56
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !205, !noalias !244 ; 8 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 120 ; 2 uses
  %i.pf = load float, ptr %i.mu, align 8, !noalias !244 ; 16 uses
  %i.pg = load i64, ptr %i.bh, align 8, !noalias !244
  %.fr20.i211.i.i = freeze i64 %i.pg
  %i.ph = icmp eq i64 %.fr20.i211.i.i, 1
  %i.pi = load ptr, ptr %i.pb, align 8, !tbaa !286, !noalias !244 ; 3 uses
  %i.pj = icmp eq ptr %i.pi, %i.pd                ; 2 uses
  br i1 %i.ph, label %.split.us.i215.i.i, label %.split.preheader.i212.i.i

.split.preheader.i212.i.i:                        ; preds = %bb.cr
  br i1 %i.pj, label %bb.cs, label %.split.1.i213.i.i

.split.us.i215.i.i:                               ; preds = %bb.cr
  br i1 %i.pj, label %.split.us.i207.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i

bb.cs:                                            ; preds = %.split.preheader.i212.i.i
  %i.pk = load float, ptr %i.pe, align 8, !tbaa !74, !noalias !244
  %i.pl = fcmp olt float %i.pk, %i.pf
  br i1 %i.pl, label %.split.preheader.i204.i.i, label %.split.1.i213.i.i

.split.1.i213.i.i:                                ; preds = %bb.cs, %.split.preheader.i212.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pa, i64 88
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !286, !noalias !244
  %i.po = icmp eq ptr %i.pn, %i.pd
  br i1 %i.po, label %bb.ct, label %.split.preheader.i196.i.i

bb.ct:                                            ; preds = %.split.1.i213.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pa, i64 124
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !74, !noalias !244
  %i.pr = fcmp olt float %i.pq, %i.pf
  br i1 %i.pr, label %.split.preheader.i204.i.i, label %.split.preheader.i196.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i: ; preds = %.split.us.i215.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pa, i64 88
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !286, !noalias !244
  %i.pu = icmp eq ptr %i.pt, %i.pd
  br i1 %i.pu, label %.thread.i.i, label %.split.us.i199.i.i

.thread.i.i:                                      ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ov, i64 80
  %i.pw = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nd
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 56
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.pz = load ptr, ptr %i.pv, align 8, !tbaa !286, !noalias !244
  %i.qa = icmp eq ptr %i.pz, %i.py
  br i1 %i.qa, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i

.split.preheader.i204.i.i:                        ; preds = %bb.ct, %bb.cs
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ov, i64 80
  %i.qc = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nd
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 56
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.qf = load ptr, ptr %i.qb, align 8, !tbaa !286, !noalias !244
  %i.qg = icmp eq ptr %i.qf, %i.qe
  br i1 %i.qg, label %bb.cu, label %.split.1.i205.i.i

.split.us.i207.i.i:                               ; preds = %.split.us.i215.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ov, i64 80
  %i.qi = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nd
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 56
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.ql = load ptr, ptr %i.qh, align 8, !tbaa !286, !noalias !244
  %i.qm = icmp eq ptr %i.ql, %i.qk
  br i1 %i.qm, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i

bb.cu:                                            ; preds = %.split.preheader.i204.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ov, i64 120
  %i.qo = load float, ptr %i.qn, align 8, !tbaa !74, !noalias !244
  %i.qp = fcmp olt float %i.qo, %i.pf
  br i1 %i.qp, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.1.i205.i.i

.split.1.i205.i.i:                                ; preds = %bb.cu, %.split.preheader.i204.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ov, i64 88
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !286, !noalias !244
  %i.qs = icmp eq ptr %i.qr, %i.qe
  br i1 %i.qs, label %bb.cv, label %.split.preheader.i196.i.i

bb.cv:                                            ; preds = %.split.1.i205.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ov, i64 124
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !74, !noalias !244
  %i.qv = fcmp olt float %i.qu, %i.pf
  br i1 %i.qv, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.preheader.i196.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i: ; preds = %.split.us.i207.i.i, %.thread.i.i
  %i.qw = phi ptr [ %i.py, %.thread.i.i ], [ %i.qk, %.split.us.i207.i.i ]
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ov, i64 88
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !286, !noalias !244
  %i.qz = icmp eq ptr %i.qy, %i.qw
  br i1 %i.qz, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.us.i199.i.i

.split.preheader.i196.i.i:                        ; preds = %bb.cv, %.split.1.i205.i.i, %bb.ct, %.split.1.i213.i.i
  %i.ra = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nh ; 6 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 80
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oq, i64 56
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !205, !noalias !244 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 120 ; 2 uses
  %i.rf = load ptr, ptr %i.rb, align 8, !tbaa !286, !noalias !244 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.rd
  br i1 %i.rg, label %bb.cw, label %.split.1.i197.i.i

.split.us.i199.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit217.i.i
  %i.rh = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nh ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 80
  %i.rj = getelementptr inbounds nuw i8, ptr %i.oq, i64 56
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !205, !noalias !244 ; 4 uses
  %i.rl = load ptr, ptr %i.ri, align 8, !tbaa !286, !noalias !244 ; 3 uses
  %i.rm = icmp eq ptr %i.rl, %i.rk
  br i1 %i.rm, label %.split.us.i191.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i

bb.cw:                                            ; preds = %.split.preheader.i196.i.i
  %i.rn = load float, ptr %i.re, align 8, !tbaa !74, !noalias !244
  %i.ro = fcmp olt float %i.rn, %i.pf
  br i1 %i.ro, label %.split.preheader.i188.i.i, label %.split.1.i197.i.i

.split.1.i197.i.i:                                ; preds = %bb.cw, %.split.preheader.i196.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ra, i64 88
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !286, !noalias !244
  %i.rr = icmp eq ptr %i.rq, %i.rd
  br i1 %i.rr, label %bb.cx, label %.split.preheader.i180.i.i

bb.cx:                                            ; preds = %.split.1.i197.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ra, i64 124
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !74, !noalias !244
  %i.ru = fcmp olt float %i.rt, %i.pf
  br i1 %i.ru, label %.split.preheader.i188.i.i, label %.split.preheader.i180.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i: ; preds = %.split.us.i199.i.i
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rh, i64 88
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !286, !noalias !244
  %i.rx = icmp eq ptr %i.rw, %i.rk
  br i1 %i.rx, label %.thread253.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i
  %.phi.trans.insert404.i.i = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.oe
  %.phi.trans.insert405.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert404.i.i, i64 56
  %.pre.i88.i = load ptr, ptr %.phi.trans.insert405.i.i, align 8, !tbaa !205, !noalias !244
  br label %.split.us.i183.i.i

.thread253.i.i:                                   ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.rz = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.oe
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 56
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.sc = load ptr, ptr %i.ry, align 8, !tbaa !286, !noalias !244
  %i.sd = icmp eq ptr %i.sc, %i.sb
  br i1 %i.sd, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i

.split.preheader.i188.i.i:                        ; preds = %bb.cx, %bb.cw
  %i.se = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.sf = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.oe
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 56
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.si = load ptr, ptr %i.se, align 8, !tbaa !286, !noalias !244
  %i.sj = icmp eq ptr %i.si, %i.sh
  br i1 %i.sj, label %bb.cy, label %.split.1.i189.i.i

.split.us.i191.i.i:                               ; preds = %.split.us.i199.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.sl = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.oe
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 56
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.so = load ptr, ptr %i.sk, align 8, !tbaa !286, !noalias !244
  %i.sp = icmp eq ptr %i.so, %i.sn
  br i1 %i.sp, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i

bb.cy:                                            ; preds = %.split.preheader.i188.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.oq, i64 120
  %i.sr = load float, ptr %i.sq, align 8, !tbaa !74, !noalias !244
  %i.ss = fcmp olt float %i.sr, %i.pf
  br i1 %i.ss, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.1.i189.i.i

.split.1.i189.i.i:                                ; preds = %bb.cy, %.split.preheader.i188.i.i
  %i.st = getelementptr inbounds nuw i8, ptr %i.oq, i64 88
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !286, !noalias !244
  %i.sv = icmp eq ptr %i.su, %i.sh
  br i1 %i.sv, label %bb.cz, label %.split.preheader.i180.i.i

bb.cz:                                            ; preds = %.split.1.i189.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.oq, i64 124
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !74, !noalias !244
  %i.sy = fcmp olt float %i.sx, %i.pf
  br i1 %i.sy, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.preheader.i180.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i: ; preds = %.split.us.i191.i.i, %.thread253.i.i
  %i.sz = phi ptr [ %i.sb, %.thread253.i.i ], [ %i.sn, %.split.us.i191.i.i ] ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.oq, i64 88
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !286, !noalias !244
  %i.tc = icmp eq ptr %i.tb, %i.sz
  br i1 %i.tc, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i, label %.split.us.i183.i.i

.split.preheader.i180.i.i:                        ; preds = %bb.cz, %.split.1.i189.i.i, %bb.cx, %.split.1.i197.i.i
  %i.td = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.oe
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 56
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.tg = icmp eq ptr %i.pi, %i.tf
  br i1 %i.tg, label %bb.da, label %.split.1.i181.i.i

.split.us.i183.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i
  %i.th = phi ptr [ %.pre.i88.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit201..split.us.i183_crit_edge.i.i ], [ %i.sz, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i ] ; 2 uses
  %i.ti = icmp eq ptr %i.pi, %i.th
  br i1 %i.ti, label %.split.us.i175.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i

bb.da:                                            ; preds = %.split.preheader.i180.i.i
  %i.tj = load float, ptr %i.pe, align 8, !tbaa !74, !noalias !244
  %i.tk = fcmp olt float %i.tj, %i.pf
  br i1 %i.tk, label %.split.preheader.i172.i.i, label %.split.1.i181.i.i

.split.1.i181.i.i:                                ; preds = %bb.da, %.split.preheader.i180.i.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.pa, i64 88
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !286, !noalias !244
  %i.tn = icmp eq ptr %i.tm, %i.tf
  br i1 %i.tn, label %bb.db, label %.split.preheader.i164.i.i

bb.db:                                            ; preds = %.split.1.i181.i.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.pa, i64 124
  %i.tp = load float, ptr %i.to, align 4, !tbaa !74, !noalias !244
  %i.tq = fcmp olt float %i.tp, %i.pf
  br i1 %i.tq, label %.split.preheader.i172.i.i, label %.split.preheader.i164.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i: ; preds = %.split.us.i183.i.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.pa, i64 88
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !286, !noalias !244
  %i.tt = icmp eq ptr %i.ts, %i.th
  br i1 %i.tt, label %.thread289.i.i, label %.split.us.i167.i.i

.thread289.i.i:                                   ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i
  %i.tu = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nd
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.tx = icmp eq ptr %i.rl, %i.tw
  br i1 %i.tx, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i

.split.preheader.i172.i.i:                        ; preds = %bb.db, %bb.da
  %i.ty = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nd
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 56
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.ub = icmp eq ptr %i.rf, %i.ua
  br i1 %i.ub, label %bb.dc, label %.split.1.i173.i.i

.split.us.i175.i.i:                               ; preds = %.split.us.i183.i.i
  %i.uc = getelementptr inbounds nuw [136 x i8], ptr %.val40.i.i.i, i64 %i.nd
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 56
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !205, !noalias !244 ; 2 uses
  %i.uf = icmp eq ptr %i.rl, %i.ue
  br i1 %i.uf, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i

bb.dc:                                            ; preds = %.split.preheader.i172.i.i
  %i.ug = load float, ptr %i.re, align 8, !tbaa !74, !noalias !244
  %i.uh = fcmp olt float %i.ug, %i.pf
  br i1 %i.uh, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.1.i173.i.i

.split.1.i173.i.i:                                ; preds = %bb.dc, %.split.preheader.i172.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ra, i64 88
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !286, !noalias !244
  %i.uk = icmp eq ptr %i.uj, %i.ua
  br i1 %i.uk, label %bb.dd, label %.split.preheader.i164.i.i

bb.dd:                                            ; preds = %.split.1.i173.i.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ra, i64 124
  %i.um = load float, ptr %i.ul, align 4, !tbaa !74, !noalias !244
  %i.un = fcmp olt float %i.um, %i.pf
  br i1 %i.un, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.preheader.i164.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i: ; preds = %.split.us.i175.i.i, %.thread289.i.i
  %i.uo = phi ptr [ %i.tw, %.thread289.i.i ], [ %i.ue, %.split.us.i175.i.i ]
  %i.up = getelementptr inbounds nuw i8, ptr %i.rh, i64 88
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !286, !noalias !244
  %i.ur = icmp eq ptr %i.uq, %i.uo
  br i1 %i.ur, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.us.i167.i.i

.split.preheader.i164.i.i:                        ; preds = %bb.dd, %.split.1.i173.i.i, %bb.db, %.split.1.i181.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ov, i64 80
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !286, !noalias !244
  %i.uu = icmp eq ptr %i.ut, %i.rd
  br i1 %i.uu, label %bb.de, label %.split.1.i165.i.i

.split.us.i167.i.i:                               ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit185.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ov, i64 80
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !286, !noalias !244
  %i.ux = icmp eq ptr %i.uw, %i.rk
  br i1 %i.ux, label %.split.us.i.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i

bb.de:                                            ; preds = %.split.preheader.i164.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ov, i64 120
  %i.uz = load float, ptr %i.uy, align 8, !tbaa !74, !noalias !244
  %i.va = fcmp olt float %i.uz, %i.pf
  br i1 %i.va, label %.split.preheader.i.i.i, label %.split.1.i165.i.i

.split.1.i165.i.i:                                ; preds = %bb.de, %.split.preheader.i164.i.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ov, i64 88
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !286, !noalias !244
  %i.vd = icmp eq ptr %i.vc, %i.rd
  br i1 %i.vd, label %bb.df, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.df:                                            ; preds = %.split.1.i165.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ov, i64 124
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !74, !noalias !244
  %i.vg = fcmp olt float %i.vf, %i.pf
  br i1 %i.vg, label %.split.preheader.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i: ; preds = %.split.us.i167.i.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ov, i64 88
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !286, !noalias !244
  %i.vj = icmp eq ptr %i.vi, %i.rk
  br i1 %i.vj, label %.thread312.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

.thread312.i.i:                                   ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !286, !noalias !244
  %i.vm = icmp eq ptr %i.vl, %i.pd
  br i1 %i.vm, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i

.split.preheader.i.i.i:                           ; preds = %bb.df, %bb.de
  %i.vn = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !286, !noalias !244
  %i.vp = icmp eq ptr %i.vo, %i.pd
  br i1 %i.vp, label %bb.dg, label %.split.1.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i167.i.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !286, !noalias !244
  %i.vs = icmp eq ptr %i.vr, %i.pd
  br i1 %i.vs, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i

bb.dg:                                            ; preds = %.split.preheader.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.oq, i64 120
  %i.vu = load float, ptr %i.vt, align 8, !tbaa !74, !noalias !244
  %i.vv = fcmp olt float %i.vu, %i.pf
  br i1 %i.vv, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %.split.1.i.i.i

.split.1.i.i.i:                                   ; preds = %bb.dg, %.split.preheader.i.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.oq, i64 88
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !286, !noalias !244
  %i.vy = icmp eq ptr %i.vx, %i.pd
  br i1 %i.vy, label %bb.dh, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.dh:                                            ; preds = %.split.1.i.i.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.oq, i64 124
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !74, !noalias !244
  %i.wb = fcmp olt float %i.wa, %i.pf
  br i1 %i.wb, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i: ; preds = %.split.us.i.i.i, %.thread312.i.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.oq, i64 88
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !286, !noalias !244
  %i.we = icmp eq ptr %i.wd, %i.pd
  br i1 %i.we, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit193.i.i, %bb.cz, %bb.cy, %.split.us.i191.i.i, %.thread253.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.i.i, %bb.cv, %bb.cu, %.split.us.i207.i.i, %.thread.i.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.nn, i64 16 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.nn, i64 24 ; 3 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !287, !noalias !244 ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.nn, i64 32 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !92, !noalias !244
  %.not.i.i110.i.i = icmp eq ptr %i.wh, %i.wj
  br i1 %.not.i.i110.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i
  store i64 %.074356.i.i, ptr %i.wh, align 8, !tbaa !81, !noalias !244
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store ptr %i.wk, ptr %i.wg, align 8, !tbaa !287, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i

bb.dj:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit209.thread.i.i
  %i.wl = load ptr, ptr %i.wf, align 8, !tbaa !89, !noalias !244 ; 4 uses
  %i.wm = ptrtoint ptr %i.wh to i64
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = sub i64 %i.wm, %i.wn                    ; 6 uses
  %i.wp = icmp eq i64 %i.wo, 9223372036854775800
  br i1 %i.wp, label %bb.dk, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !244
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.dj
  %i.wq = ashr exact i64 %i.wo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wq, i64 1)
  %i.wr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.wq ; 2 uses
  %i.ws = icmp ult i64 %i.wr, %i.wq
  %i.wt = call i64 @llvm.umin.i64(i64 %i.wr, i64 1152921504606846975)
  %i.wu = select i1 %i.ws, i64 1152921504606846975, i64 %i.wt ; 3 uses
  %.not.i.i.i.i.i87.i = icmp ne i64 %i.wu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i87.i)
  %i.wv = shl nuw nsw i64 %i.wu, 3
  %i.ww = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wv) #27, !noalias !244 ; 4 uses
  %i.wx = getelementptr inbounds i8, ptr %i.ww, i64 %i.wo ; 2 uses
  store i64 %.074356.i.i, ptr %i.wx, align 8, !tbaa !81, !noalias !244
  %i.wy = icmp sgt i64 %i.wo, 0
  br i1 %i.wy, label %bb.dl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

bb.dl:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ww, ptr align 8 %i.wl, i64 %i.wo, i1 false), !noalias !244
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.dl, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.wl, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wo) #29, !noalias !244
  %.val102.pre.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.dm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  %.val102.pre.i.i = phi ptr [ %.val102.pre.pre.i.i, %bb.dm ], [ %.val86357.i.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i ]
  store ptr %i.ww, ptr %i.wf, align 8, !tbaa !89, !noalias !244
  store ptr %i.wz, ptr %i.wg, align 8, !tbaa !287, !noalias !244
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %i.wu
  store ptr %i.xa, ptr %i.wi, align 8, !tbaa !92, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, %bb.di
  %.val102.i.i = phi ptr [ %.val86357.i.i, %bb.di ], [ %.val102.pre.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ]
  %i.xb = getelementptr inbounds nuw [112 x i8], ptr %.val102.i.i, i64 %.074356.i.i ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 24 ; 3 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !287, !noalias !244 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xb, i64 32 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !92, !noalias !244
  %.not.i.i111.i.i = icmp eq ptr %i.xe, %i.xg
  br i1 %.not.i.i111.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i
  store i64 %.070360.i.i, ptr %i.xe, align 8, !tbaa !81, !noalias !244
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store ptr %i.xh, ptr %i.xd, align 8, !tbaa !287, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.do:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit.i.i
  %i.xi = load ptr, ptr %i.xc, align 8, !tbaa !89, !noalias !244 ; 4 uses
  %i.xj = ptrtoint ptr %i.xe to i64
  %i.xk = ptrtoint ptr %i.xi to i64
  %i.xl = sub i64 %i.xj, %i.xk                    ; 6 uses
  %i.xm = icmp eq i64 %i.xl, 9223372036854775800
  br i1 %i.xm, label %bb.dp, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i

bb.dp:                                            ; preds = %bb.do
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !244
  unreachable
end_hunk_0
begin_hunk_1_@_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a
_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i: ; preds = %bb.do
  %i.xn = ashr exact i64 %i.xl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i113.i.i = call i64 @llvm.umax.i64(i64 %i.xn, i64 1)
  %i.xo = add nsw i64 %.sroa.speculated.i.i.i.i113.i.i, %i.xn ; 2 uses
  %i.xp = icmp ult i64 %i.xo, %i.xn
  %i.xq = call i64 @llvm.umin.i64(i64 %i.xo, i64 1152921504606846975)
  %i.xr = select i1 %i.xp, i64 1152921504606846975, i64 %i.xq ; 3 uses
  %.not.i.i.i.i114.i.i = icmp ne i64 %i.xr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i114.i.i)
  %i.xs = shl nuw nsw i64 %i.xr, 3
  %i.xt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xs) #27, !noalias !244 ; 4 uses
  %i.xu = getelementptr inbounds i8, ptr %i.xt, i64 %i.xl ; 2 uses
  store i64 %.070360.i.i, ptr %i.xu, align 8, !tbaa !81, !noalias !244
  %i.xv = icmp sgt i64 %i.xl, 0
  br i1 %i.xv, label %bb.dq, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i

bb.dq:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xt, ptr align 8 %i.xi, i64 %i.xl, i1 false), !noalias !244
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i: ; preds = %bb.dq, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i112.i.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %.not.i17.i.i.i116.i.i = icmp eq ptr %i.xi, null
  br i1 %.not.i17.i.i.i116.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef %i.xl) #29, !noalias !244
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i: ; preds = %bb.dr, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i115.i.i
  store ptr %i.xt, ptr %i.xc, align 8, !tbaa !89, !noalias !244
  store ptr %i.xw, ptr %i.xd, align 8, !tbaa !287, !noalias !244
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %i.xr
  store ptr %i.xx, ptr %i.xf, align 8, !tbaa !92, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i, %bb.dh, %bb.dg, %.split.us.i.i.i, %.thread312.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit177.i.i, %bb.dd, %bb.dc, %.split.us.i175.i.i, %.thread289.i.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.nn, i64 40 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.nn, i64 48 ; 3 uses
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !287, !noalias !244 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.nn, i64 56 ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !92, !noalias !244
  %.not.i4.i.i.i = icmp eq ptr %i.ya, %i.yc
  br i1 %.not.i4.i.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i
  store i64 %.074356.i.i, ptr %i.ya, align 8, !tbaa !81, !noalias !244
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store ptr %i.yd, ptr %i.xz, align 8, !tbaa !287, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i

bb.dt:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15calculateBridgeEmm.exit.i.i
  %i.ye = load ptr, ptr %i.xy, align 8, !tbaa !89, !noalias !244 ; 4 uses
  %i.yf = ptrtoint ptr %i.ya to i64
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = sub i64 %i.yf, %i.yg                    ; 6 uses
  %i.yi = icmp eq i64 %i.yh, 9223372036854775800
  br i1 %i.yi, label %bb.du, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i

bb.du:                                            ; preds = %bb.dt
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !244
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i: ; preds = %bb.dt
  %i.yj = ashr exact i64 %i.yh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i6.i.i.i = call i64 @llvm.umax.i64(i64 %i.yj, i64 1)
  %i.yk = add nsw i64 %.sroa.speculated.i.i.i6.i.i.i, %i.yj ; 2 uses
  %i.yl = icmp ult i64 %i.yk, %i.yj
  %i.ym = call i64 @llvm.umin.i64(i64 %i.yk, i64 1152921504606846975)
  %i.yn = select i1 %i.yl, i64 1152921504606846975, i64 %i.ym ; 3 uses
  %.not.i.i.i7.i.i.i = icmp ne i64 %i.yn, 0
  call void @llvm.assume(i1 %.not.i.i.i7.i.i.i)
  %i.yo = shl nuw nsw i64 %i.yn, 3
  %i.yp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yo) #27, !noalias !244 ; 4 uses
  %i.yq = getelementptr inbounds i8, ptr %i.yp, i64 %i.yh ; 2 uses
  store i64 %.074356.i.i, ptr %i.yq, align 8, !tbaa !81, !noalias !244
  %i.yr = icmp sgt i64 %i.yh, 0
  br i1 %i.yr, label %bb.dv, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i

bb.dv:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yp, ptr align 8 %i.ye, i64 %i.yh, i1 false), !noalias !244
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i: ; preds = %bb.dv, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %.not.i17.i.i9.i.i.i = icmp eq ptr %i.ye, null
  br i1 %.not.i17.i.i9.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ye, i64 noundef %i.yh) #29, !noalias !244
  %.val100.pre.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i: ; preds = %bb.dw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i
  %.val100.pre.i.i = phi ptr [ %.val100.pre.pre.i.i, %bb.dw ], [ %.val86357.i.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i.i.i ]
  store ptr %i.yp, ptr %i.xy, align 8, !tbaa !89, !noalias !244
  store ptr %i.ys, ptr %i.xz, align 8, !tbaa !287, !noalias !244
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.yp, i64 %i.yn
  store ptr %i.yt, ptr %i.yb, align 8, !tbaa !92, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i, %bb.ds
  %.val100.i.i = phi ptr [ %.val86357.i.i, %bb.ds ], [ %.val100.pre.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i.i.i ]
  %i.yu = getelementptr inbounds nuw [112 x i8], ptr %.val100.i.i, i64 %.074356.i.i ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 40 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 48 ; 3 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !287, !noalias !244 ; 4 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 56 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !92, !noalias !244
  %.not.i4.i120.i.i = icmp eq ptr %i.yx, %i.yz
  br i1 %.not.i4.i120.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i
  store i64 %.070360.i.i, ptr %i.yx, align 8, !tbaa !81, !noalias !244
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  store ptr %i.za, ptr %i.yw, align 8, !tbaa !287, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

bb.dy:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit119.i.i
  %i.zb = load ptr, ptr %i.yv, align 8, !tbaa !89, !noalias !244 ; 4 uses
  %i.zc = ptrtoint ptr %i.yx to i64
  %i.zd = ptrtoint ptr %i.zb to i64
  %i.ze = sub i64 %i.zc, %i.zd                    ; 6 uses
  %i.zf = icmp eq i64 %i.ze, 9223372036854775800
  br i1 %i.zf, label %bb.dz, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i

bb.dz:                                            ; preds = %bb.dy
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #30, !noalias !244
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i: ; preds = %bb.dy
  %i.zg = ashr exact i64 %i.ze, 3                 ; 3 uses
  %.sroa.speculated.i.i.i6.i122.i.i = call i64 @llvm.umax.i64(i64 %i.zg, i64 1)
  %i.zh = add nsw i64 %.sroa.speculated.i.i.i6.i122.i.i, %i.zg ; 2 uses
  %i.zi = icmp ult i64 %i.zh, %i.zg
  %i.zj = call i64 @llvm.umin.i64(i64 %i.zh, i64 1152921504606846975)
  %i.zk = select i1 %i.zi, i64 1152921504606846975, i64 %i.zj ; 3 uses
  %.not.i.i.i7.i123.i.i = icmp ne i64 %i.zk, 0
  call void @llvm.assume(i1 %.not.i.i.i7.i123.i.i)
  %i.zl = shl nuw nsw i64 %i.zk, 3
  %i.zm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zl) #27, !noalias !244 ; 4 uses
  %i.zn = getelementptr inbounds i8, ptr %i.zm, i64 %i.ze ; 2 uses
  store i64 %.070360.i.i, ptr %i.zn, align 8, !tbaa !81, !noalias !244
  %i.zo = icmp sgt i64 %i.ze, 0
  br i1 %i.zo, label %bb.ea, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i

bb.ea:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zm, ptr align 8 %i.zb, i64 %i.ze, i1 false), !noalias !244
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i: ; preds = %bb.ea, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i5.i121.i.i
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %.not.i17.i.i9.i125.i.i = icmp eq ptr %i.zb, null
  br i1 %.not.i17.i.i9.i125.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.zb, i64 noundef %i.ze) #29, !noalias !244
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i: ; preds = %bb.eb, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i8.i124.i.i
  store ptr %i.zm, ptr %i.yv, align 8, !tbaa !89, !noalias !244
  store ptr %i.zp, ptr %i.yw, align 8, !tbaa !287, !noalias !244
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zk
  store ptr %i.zq, ptr %i.yy, align 8, !tbaa !92, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData9setBridgeEmNS1_11BridgeTypesE.exit118.i.i: ; preds = %bb.cl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i10.i126.i.i, %bb.dx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i117.i.i, %bb.dn, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i.i, %bb.dh, %.split.1.i.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit169.i.i, %bb.df, %.split.1.i165.i.i, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cj, %bb.ci, %bb.ch
  %i.zr = add nuw i64 %i.nh, 1                    ; 2 uses
  %.val86.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244 ; 3 uses
  %.val87.i.i = load ptr, ptr %i.mo, align 8, !tbaa !88, !noalias !244 ; 2 uses
  %i.zs = ptrtoint ptr %.val87.i.i to i64
  %i.zt = ptrtoint ptr %.val86.i.i to i64
  %i.zu = sub i64 %i.zs, %i.zt
  %i.zv = sdiv exact i64 %i.zu, 112               ; 2 uses
  %i.zw = icmp ult i64 %i.zr, %i.zv
  br i1 %i.zw, label %bb.ch, label %._crit_edge.i83.i, !llvm.loop !288

.preheader334.i.i:                                ; preds = %.critedge.i.i, %.preheader334.lr.ph.i.i
  %i.zx = phi i64 [ 2, %.preheader334.lr.ph.i.i ], [ %i.aai, %.critedge.i.i ] ; 2 uses
  %.073383.i.i = phi i64 [ 1, %.preheader334.lr.ph.i.i ], [ %i.zx, %.critedge.i.i ] ; 2 uses
  br label %bb.ec

.preheader.i76.i:                                 ; preds = %.critedge.i.i
  %i.zy = icmp ugt i64 %.pre-phi438.i.i.a, 2
  br i1 %i.zy, label %.lr.ph387.i.i.preheader, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i

.lr.ph387.i.i.preheader:                          ; preds = %.preheader.i76.i
  %xtraiter = and i64 %.pre-phi438.i.i.a, 1
  %i.zz = icmp eq i64 %.pre-phi438.i.i.a, 3
  br i1 %i.zz, label %.lr.ph387.i.i.epil.preheader, label %.lr.ph387.i.i.preheader.new

.lr.ph387.i.i.preheader.new:                      ; preds = %.lr.ph387.i.i.preheader
  %i.aaa = and i64 %.pre-phi438.i.i.a, -2
  %i.aab = add nsw i64 %i.aaa, -4
  br label %.lr.ph387.i.i

bb.ec:                                            ; preds = %bb.ee, %.preheader334.i.i
  %exitcond.not.i.i.1 = phi i1 [ true, %.preheader334.i.i ], [ false, %bb.ee ]
  %exitcond.i = phi i1 [ false, %.preheader334.i.i ], [ true, %bb.ee ]
  %.072380.i.i = phi i64 [ 1, %.preheader334.i.i ], [ 2, %bb.ee ]
  %i.aac = add nuw i64 %.072380.i.i, %.073383.i.i ; 4 uses
  %.val82.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244 ; 2 uses
  %.val83.i.i = load ptr, ptr %i.mo, align 8, !tbaa !88, !noalias !244 ; 2 uses
  %i.aad = ptrtoint ptr %.val83.i.i to i64
  %i.aae = ptrtoint ptr %.val82.i.i to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = sdiv exact i64 %i.aaf, 112             ; 2 uses
  %i.aah = icmp ult i64 %i.aac, %i.aag
  br i1 %i.aah, label %bb.ed, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ec, %..critedge_crit_edge.i.i
  %.val125177.pre.i241.i = phi ptr [ %.val85.pre.i.i, %..critedge_crit_edge.i.i ], [ %.val83.i.i, %bb.ec ] ; 5 uses
  %.pre-phi438.i.i.a = phi i64 [ %.pre437.i.i.a, %..critedge_crit_edge.i.i ], [ %i.aag, %bb.ec ] ; 6 uses
  %.val84.i75.i = phi ptr [ %.val84.pre.i.i, %..critedge_crit_edge.i.i ], [ %.val82.i.i, %bb.ec ] ; 8 uses
  %i.aai = add nuw i64 %i.zx, 1                   ; 2 uses
  %i.aaj = icmp ult i64 %i.aai, %.pre-phi438.i.i.a
  br i1 %i.aaj, label %.preheader334.i.i, label %.preheader.i76.i, !llvm.loop !289

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28, !noalias !244
  store i64 2, ptr %i.d, align 8, !tbaa !73, !noalias !244
  store i64 1, ptr %i.mw, align 8, !tbaa !73, !noalias !244
  %17 = add i64 %i.aac, -1                        ; 2 uses
  %18 = add nuw i64 %i.aac, 1                     ; 2 uses
  %spec.select9.i134.i.i = call i64 @llvm.umax.i64(i64 %17, i64 %18)
  %spec.select.i135.i.i = call i64 @llvm.umin.i64(i64 %17, i64 %18)
  br label %bb.ef

bb.ee:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !244
  br i1 %exitcond.i, label %..critedge_crit_edge.i.i, label %bb.ec, !llvm.loop !290

..critedge_crit_edge.i.i:                         ; preds = %bb.ee
  %.val84.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244 ; 2 uses
  %.val85.pre.i.i = load ptr, ptr %i.mo, align 8, !tbaa !88, !noalias !244 ; 2 uses
  %.pre431.i.i.a = ptrtoint ptr %.val85.pre.i.i to i64
  %.pre433.i.i.a = ptrtoint ptr %.val84.pre.i.i to i64
  %.pre435.i.i.a = sub i64 %.pre431.i.i.a, %.pre433.i.i.a
  %.pre437.i.i.a = sdiv exact i64 %.pre435.i.i.a, 112
  br label %.critedge.i.i, !llvm.loop !290

bb.ef:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, %bb.ed
  %.071.idx379.i.i = phi i64 [ 0, %bb.ed ], [ %.071.add.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i ] ; 2 uses
  %.071.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.071.idx379.i.i
  %.val99.i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !244 ; 10 uses
  %i.aak = load i64, ptr %.071.ptr.i.i, align 8, !tbaa !73, !noalias !244 ; 2 uses
  %i.aal = add i64 %i.aak, -1
  %or.cond.i128.i.i = icmp ult i64 %i.aal, 2
  br i1 %or.cond.i128.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesEENK3$_0clEv", ptr noundef nonnull @.str.37, i32 noundef 478) #30, !noalias !244
  unreachable

_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i: ; preds = %bb.ef
  %i.aam = getelementptr [112 x i8], ptr %.val99.i.i, i64 %.073383.i.i ; 15 uses
  %i.aan = icmp eq i64 %i.aak, 2                  ; 2 uses
  %..i.i.i = select i1 %i.aan, i64 16, i64 40     ; 2 uses
  %.9.i.i.i = select i1 %i.aan, i64 24, i64 48    ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 %..i.i.i ; 3 uses
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !291, !noalias !244 ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 %.9.i.i.i
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !291, !noalias !244
  %.not327.i.i = icmp eq ptr %i.aap, %i.aar
  br i1 %.not327.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i
  %i.aas = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, i64 %i.aac ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %..i.i.i ; 4 uses
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !291, !noalias !244
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 %.9.i.i.i
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !291, !noalias !244
  %.not328.i.i = icmp eq ptr %i.aau, %i.aaw
  br i1 %.not328.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i
  %i.aax = getelementptr i8, ptr %i.aam, i64 -112 ; 3 uses
  %.val4.i.i.i = load ptr, ptr %i.aax, align 8, !tbaa !274, !noalias !244
  %i.aay = getelementptr i8, ptr %i.aam, i64 -104
  %.val5.i.i.i = load ptr, ptr %i.aay, align 8, !noalias !244
  %i.aaz = icmp eq ptr %.val4.i.i.i, %i.aam
  %i.aba = icmp eq ptr %.val5.i.i.i, %i.aam
  %i.abb = select i1 %i.aaz, i1 true, i1 %i.aba
  %.val4.i.1.pre.i.i = load ptr, ptr %i.aam, align 8, !tbaa !274, !noalias !244 ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aam, i64 8
  %.val3.i.i.i = load ptr, ptr %i.abc, align 8, !noalias !244 ; 2 uses
  br i1 %i.abb, label %bb.eh, label %.lr.ph.i.1.i.i

bb.eh:                                            ; preds = %.lr.ph.i.preheader.i.i
  %i.abd = icmp eq ptr %.val4.i.1.pre.i.i, %i.aax
  %i.abe = icmp eq ptr %.val3.i.i.i, %i.aax
  %i.abf = select i1 %i.abd, i1 true, i1 %i.abe
  br i1 %i.abf, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i.1.i.i

.lr.ph.i.1.i.i:                                   ; preds = %bb.eh, %.lr.ph.i.preheader.i.i
  %i.abg = getelementptr i8, ptr %i.aam, i64 112  ; 3 uses
  %i.abh = icmp eq ptr %.val4.i.1.pre.i.i, %i.abg
  %i.abi = icmp eq ptr %.val3.i.i.i, %i.abg
  %i.abj = select i1 %i.abh, i1 true, i1 %i.abi
  br i1 %i.abj, label %bb.ei, label %.lr.ph.i136.i.i.preheader

bb.ei:                                            ; preds = %.lr.ph.i.1.i.i
  %.val.i.1.i.i = load ptr, ptr %i.abg, align 8, !tbaa !274, !noalias !244
  %i.abk = getelementptr i8, ptr %i.aam, i64 120
  %.val3.i.1.i.i = load ptr, ptr %i.abk, align 8, !noalias !244
  %i.abl = icmp eq ptr %.val.i.1.i.i, %i.aam
  %i.abm = icmp eq ptr %.val3.i.1.i.i, %i.aam
  %i.abn = select i1 %i.abl, i1 true, i1 %i.abm
  br i1 %i.abn, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %.lr.ph.i136.i.i.preheader

.lr.ph.i136.i.i.preheader:                        ; preds = %bb.ei, %.lr.ph.i.1.i.i
  br label %.lr.ph.i136.i.i

.lr.ph.i136.i.i:                                  ; preds = %.lr.ph.i136.i.i.preheader, %bb.ek
  %.111.i137.i.i = phi i64 [ %20, %bb.ek ], [ %spec.select.i135.i.i, %.lr.ph.i136.i.i.preheader ] ; 2 uses
  %19 = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, i64 %.111.i137.i.i ; 4 uses
  %20 = add i64 %.111.i137.i.i, 1                 ; 3 uses
  %21 = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, i64 %20 ; 4 uses
  %.val4.i138.i.i = load ptr, ptr %19, align 8, !tbaa !274, !noalias !244
  %22 = getelementptr i8, ptr %19, i64 8
  %.val5.i139.i.i = load ptr, ptr %22, align 8, !noalias !244
  %23 = icmp eq ptr %.val4.i138.i.i, %21
  %24 = icmp eq ptr %.val5.i139.i.i, %21
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph.i136.i.i
  %.val.i142.i.i = load ptr, ptr %21, align 8, !tbaa !274, !noalias !244
  %i.abo = getelementptr i8, ptr %21, i64 8
  %.val3.i143.i.i = load ptr, ptr %i.abo, align 8, !noalias !244
  %i.abp = icmp eq ptr %.val.i142.i.i, %19
  %i.abq = icmp eq ptr %.val3.i143.i.i, %19
  %i.abr = select i1 %i.abp, i1 true, i1 %i.abq
  br i1 %i.abr, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph.i136.i.i
  %.not.i140.i.i = icmp eq i64 %20, %spec.select9.i134.i.i
  br i1 %.not.i140.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i, label %.lr.ph.i136.i.i, !llvm.loop !285

_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i: ; preds = %bb.ek
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aao, i64 8 ; 2 uses
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !287, !noalias !244 ; 2 uses
  %i.abu = ptrtoint ptr %i.abt to i64
  %i.abv = ptrtoint ptr %i.aap to i64             ; 3 uses
  %i.abw = sub i64 %i.abu, %i.abv                 ; 4 uses
  %.not.i.i.i.i147.i.i = icmp eq ptr %i.abt, %i.aap
  br i1 %.not.i.i.i.i147.i.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i
  %i.abx = icmp ugt i64 %i.abw, 9223372036854775800
  br i1 %i.abx, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !242

.noexc.i.i.i.i:                                   ; preds = %bb.el
  call void @_ZSt28__throw_bad_array_new_lengthv() #30, !noalias !244
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.el
  %i.aby = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abw) #27, !noalias !244
  %.pre416.i.i.a = load ptr, ptr %i.aao, align 8, !tbaa !291, !noalias !244 ; 3 uses
  %.pre417.i.i.a = load ptr, ptr %i.abs, align 8, !tbaa !291, !noalias !244 ; 2 uses
  %.pre439.i.i.a = ptrtoint ptr %.pre417.i.i.a to i64
  %.pre441.i.i.a = ptrtoint ptr %.pre416.i.i.a to i64
  %i.abz = icmp eq ptr %.pre417.i.i.a, %.pre416.i.i.a
  br label %bb.em

bb.em:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i
  %.pre-phi442.i.i.a = phi i64 [ %.pre441.i.i.a, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.abv, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %.pre-phi440.i.i = phi i64 [ %.pre439.i.i.a, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.abv, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %.not329374.i.i = phi i1 [ %i.abz, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ true, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ]
  %i.aca = phi ptr [ %.pre416.i.i.a, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.aap, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ] ; 2 uses
  %i.acb = phi ptr [ %i.aby, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %_ZN3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10getBridgesENS1_11BridgeTypesE.exit.i.i ] ; 8 uses
  %i.acc = sub i64 %.pre-phi440.i.i, %.pre-phi442.i.i.a ; 4 uses
  %i.acd = icmp sgt i64 %i.acc, 8
  br i1 %i.acd, label %bb.en, label %bb.eo, !prof !247

bb.en:                                            ; preds = %bb.em
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.acb, ptr align 8 %i.aca, i64 %i.acc, i1 false), !noalias !244
  br label %bb.eq

bb.eo:                                            ; preds = %bb.em
  %i.ace = icmp eq i64 %i.acc, 8
  br i1 %i.ace, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.acf = load i64, ptr %i.aca, align 8, !tbaa !81, !noalias !244
  store i64 %i.acf, ptr %i.acb, align 8, !tbaa !81, !noalias !244
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %i.acg = getelementptr inbounds i8, ptr %i.acb, i64 %i.acc
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aat, i64 8 ; 2 uses
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !287, !noalias !244 ; 2 uses
  %i.acj = load ptr, ptr %i.aat, align 8, !tbaa !89, !noalias !244 ; 3 uses
  %i.ack = ptrtoint ptr %i.aci to i64             ; 2 uses
  %i.acl = ptrtoint ptr %i.acj to i64             ; 2 uses
  %i.acm = sub i64 %i.ack, %i.acl                 ; 3 uses
  %.not.i.i.i.i152.i.i = icmp eq ptr %i.aci, %i.acj
  br i1 %.not.i.i.i.i152.i.i, label %.noexc156.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.acn = icmp ugt i64 %i.acm, 9223372036854775800
  br i1 %i.acn, label %.noexc.i.i154.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i, !prof !242

.noexc.i.i154.i.i:                                ; preds = %bb.er
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc155.i.i unwind label %.loopexit.split-lp.i81.i, !noalias !244

.noexc155.i.i:                                    ; preds = %.noexc.i.i154.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i: ; preds = %bb.er
  %i.aco = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acm) #27
          to label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i unwind label %.loopexit333.i.i, !noalias !244

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i: ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i
  %.pre418.i.i = load ptr, ptr %i.aat, align 8, !tbaa !291, !noalias !244 ; 3 uses
  %.pre419.i.i = load ptr, ptr %i.ach, align 8, !tbaa !291, !noalias !244 ; 2 uses
  %.pre443.i.i.a = ptrtoint ptr %.pre419.i.i to i64
  %.pre445.i.i.a = ptrtoint ptr %.pre418.i.i to i64
  %i.acp = icmp eq ptr %.pre419.i.i, %.pre418.i.i
  br label %.noexc156.i.i

.noexc156.i.i:                                    ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i, %bb.eq
  %.pre-phi446.i.i.a = phi i64 [ %.pre445.i.i.a, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.acl, %bb.eq ]
  %.pre-phi444.i.i = phi i64 [ %.pre443.i.i.a, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.ack, %bb.eq ]
  %.not330369.i.i = phi i1 [ %i.acp, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ true, %bb.eq ]
  %i.acq = phi ptr [ %.pre418.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ %i.acj, %bb.eq ] ; 2 uses
  %i.acr = phi ptr [ %i.aco, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153..noexc156_crit_edge.i.i ], [ null, %bb.eq ] ; 6 uses
  %i.acs = sub i64 %.pre-phi444.i.i, %.pre-phi446.i.i.a ; 4 uses
  %i.act = icmp sgt i64 %i.acs, 8
  br i1 %i.act, label %bb.es, label %bb.et, !prof !247

bb.es:                                            ; preds = %.noexc156.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.acr, ptr align 8 %i.acq, i64 %i.acs, i1 false), !noalias !244
  br label %bb.ev

bb.et:                                            ; preds = %.noexc156.i.i
  %i.acu = icmp eq i64 %i.acs, 8
  br i1 %i.acu, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.acv = load i64, ptr %i.acq, align 8, !tbaa !81, !noalias !244
  store i64 %i.acv, ptr %i.acr, align 8, !tbaa !81, !noalias !244
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %i.acw = getelementptr inbounds i8, ptr %i.acr, i64 %i.acs
  %brmerge.i.i = select i1 %.not329374.i.i, i1 true, i1 %.not330369.i.i
  br i1 %brmerge.i.i, label %._crit_edge378.split.i.i, label %.lr.ph372.i.i.preheader

.lr.ph372.i.i.preheader:                          ; preds = %bb.ev
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aam, i64 64
  %i.acy = getelementptr i8, ptr %i.aam, i64 176
  %i.acz = getelementptr i8, ptr %i.aam, i64 288
  br label %.lr.ph372.i.i

._crit_edge378.split.i.i:                         ; preds = %._crit_edge373.i.i, %bb.ev
  %.not.i.i.i.i79.i = icmp eq ptr %i.acr, null
  br i1 %.not.i.i.i.i79.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.ew

bb.ew:                                            ; preds = %._crit_edge378.split.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.acr, i64 noundef %i.acm) #29, !noalias !244
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.ew, %._crit_edge378.split.i.i
  %.not.i.i.i158.i.i = icmp eq ptr %i.acb, null
  br i1 %.not.i.i.i158.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.acb, i64 noundef %i.abw) #29, !noalias !244
  br label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i

.loopexit333.i.i:                                 ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i153.i.i
  %lpad.loopexit.i77.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit.split-lp.i81.i:                         ; preds = %.noexc.i.i154.i.i
  %lpad.loopexit.split-lp.i82.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ey:                                            ; preds = %.loopexit.split-lp.i81.i, %.loopexit333.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i77.i, %.loopexit333.i.i ], [ %lpad.loopexit.split-lp.i82.i, %.loopexit.split-lp.i81.i ]
  %.not.i.i.i160.i.i = icmp eq ptr %i.acb, null
  br i1 %.not.i.i.i160.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit161.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.acb, i64 noundef %i.abw) #29, !noalias !244
  br label %_ZNSt6vectorImSaImEED2Ev.exit161.i.i

_ZNSt6vectorImSaImEED2Ev.exit161.i.i:             ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !244
  br label %common.resume

.lr.ph372.i.i:                                    ; preds = %.lr.ph372.i.i.preheader, %._crit_edge373.i.i
  %.sroa.0225.0375.i.i = phi ptr [ %i.add, %._crit_edge373.i.i ], [ %i.acb, %.lr.ph372.i.i.preheader ] ; 2 uses
  %i.ada = load i64, ptr %.sroa.0225.0375.i.i, align 8, !tbaa !81, !noalias !244
  %i.adb = trunc i64 %i.ada to i32                ; 3 uses
  %i.adc = add i32 %i.adb, 5
  br label %bb.fa

._crit_edge373.i.i:                               ; preds = %.loopexit.i78.i
  %i.add = getelementptr inbounds nuw i8, ptr %.sroa.0225.0375.i.i, i64 8 ; 2 uses
  %.not329.i.i = icmp eq ptr %i.add, %i.acg
  br i1 %.not329.i.i, label %._crit_edge378.split.i.i, label %.lr.ph372.i.i

bb.fa:                                            ; preds = %.loopexit.i78.i, %.lr.ph372.i.i
  %.sroa.0221.0370.i.i = phi ptr [ %i.acr, %.lr.ph372.i.i ], [ %i.adv, %.loopexit.i78.i ] ; 2 uses
  %i.ade = load i64, ptr %.sroa.0221.0370.i.i, align 8, !tbaa !81, !noalias !244
  %i.adf = trunc i64 %i.ade to i32                ; 3 uses
  %i.adg = sub i32 %i.adc, %i.adf
  %i.adh = icmp ult i32 %i.adg, 11
  br i1 %i.adh, label %bb.fb, label %.loopexit.i78.i

bb.fb:                                            ; preds = %bb.fa
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.adb, i32 %i.adf) ; 2 uses
  %spec.select324.i.i = call i32 @llvm.smax.i32(i32 %i.adb, i32 %i.adf) ; 2 uses
  %i.adi = sext i32 %spec.select324.i.i to i64    ; 2 uses
  %.not79364.i.i = icmp ugt i32 %spec.select.i.i, %spec.select324.i.i
  br i1 %.not79364.i.i, label %.preheader331.i.i, label %iter.check

iter.check:                                       ; preds = %bb.fb
  %i.adj = sext i32 %spec.select.i.i to i64       ; 7 uses
  %i.adk = add nsw i64 %i.adj, 1
  %i.adl = add nsw i64 %i.adi, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.adk, i64 %i.adl)
  %i.adm = sub i64 %umax, %i.adj                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.adm, 4
  br i1 %min.iters.check, label %.lr.ph367.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check297 = icmp ult i64 %i.adm, 16
  br i1 %min.iters.check297, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.adn = and i64 %i.adm, 12
  %n.vec = and i64 %i.adm, -16                    ; 4 uses
  %i.ado = add i64 %n.vec, %i.adj                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.adj, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, <4 x i64> %vec.ind
  %wide.gep298.a = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, <4 x i64> %step.add
  %wide.gep299.a = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, <4 x i64> %step.add.2
  %wide.gep300.a = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, <4 x i64> %step.add.3
  %wide.gep301.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 64
  %wide.gep302.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep298.a, i64 64
  %wide.gep303 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep299.a, i64 64
  %wide.gep304 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep300.a, i64 64
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep301.a, <4 x i1> splat (i1 true)), !tbaa !282, !noalias !244
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep302.a, <4 x i1> splat (i1 true)), !tbaa !282, !noalias !244
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep303, <4 x i1> splat (i1 true)), !tbaa !282, !noalias !244
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep304, <4 x i1> splat (i1 true)), !tbaa !282, !noalias !244
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 16)
  %i.adp = icmp eq i64 %index.next, %n.vec
  br i1 %i.adp, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adm, %n.vec
  br i1 %cmp.n, label %.preheader331.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.adn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph367.i.i.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ado, %vec.epilog.iter.check ], [ %i.adj, %vector.main.loop.iter.check ]
  %n.vec305 = and i64 %i.adm, -4                  ; 3 uses
  %i.adq = add i64 %n.vec305, %i.adj
  %broadcast.splatinsert306 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat307 = shufflevector <4 x i64> %broadcast.splatinsert306, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction308 = add <4 x i64> %broadcast.splat307, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index309 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next313, %vec.epilog.vector.body ]
  %vec.ind310 = phi <4 x i64> [ %induction308, %vec.epilog.ph ], [ %vec.ind.next314, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep311 = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, <4 x i64> %vec.ind310
  %wide.gep312 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep311, i64 64
  call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> splat (i64 7), <4 x ptr> align 8 %wide.gep312, <4 x i1> splat (i1 true)), !tbaa !282, !noalias !244
  %index.next313 = add nuw i64 %index309, 4       ; 2 uses
  %vec.ind.next314 = add <4 x i64> %vec.ind310, splat (i64 4)
  %i.adr = icmp eq i64 %index.next313, %n.vec305
  br i1 %i.adr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !293

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n315 = icmp eq i64 %i.adm, %n.vec305
  br i1 %cmp.n315, label %.preheader331.i.i, label %.lr.ph367.i.i.preheader

.lr.ph367.i.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.069365.i.i.ph = phi i64 [ %i.adj, %iter.check ], [ %i.ado, %vec.epilog.iter.check ], [ %i.adq, %vec.epilog.middle.block ]
  br label %.lr.ph367.i.i

.lr.ph367.i.i:                                    ; preds = %.lr.ph367.i.i.preheader, %.lr.ph367.i.i
  %.069365.i.i = phi i64 [ %i.adu, %.lr.ph367.i.i ], [ %.069365.i.i.ph, %.lr.ph367.i.i.preheader ] ; 2 uses
  %i.ads = getelementptr inbounds nuw [112 x i8], ptr %.val99.i.i, i64 %.069365.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 64
  store i64 7, ptr %i.adt, align 8, !tbaa !282, !noalias !244
  %i.adu = add i64 %.069365.i.i, 1                ; 2 uses
  %.not79.i.i = icmp ugt i64 %i.adu, %i.adi
  br i1 %.not79.i.i, label %.preheader331.i.i, label %.lr.ph367.i.i, !llvm.loop !294

.preheader331.i.i:                                ; preds = %bb.fb, %vec.epilog.middle.block, %middle.block, %.lr.ph367.i.i
  store i64 7, ptr %i.acx, align 8, !tbaa !282, !noalias !244
  store i64 7, ptr %i.acy, align 8, !tbaa !282, !noalias !244
  br i1 %exitcond.not.i.i.1, label %.loopexit.i78.i, label %.preheader331.i.i.2

.preheader331.i.i.2:                              ; preds = %.preheader331.i.i
  store i64 7, ptr %i.acz, align 8, !tbaa !282, !noalias !244
  br label %.loopexit.i78.i

.loopexit.i78.i:                                  ; preds = %.preheader331.i.i, %.preheader331.i.i.2, %bb.fa
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.0221.0370.i.i, i64 8 ; 2 uses
  %.not330.i.i = icmp eq ptr %i.adv, %i.acw
  br i1 %.not330.i.i, label %._crit_edge373.i.i, label %bb.fa

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i.i: ; preds = %bb.ej, %bb.ex, %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.ei, %bb.eh, %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit132.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_123SecondaryStructuresData10hasBridgesENS1_11BridgeTypesE.exit.i.i
  %.071.add.i.i = add nuw nsw i64 %.071.idx379.i.i, 8 ; 2 uses
  %.not.i80.i = icmp eq i64 %.071.add.i.i, 16
  br i1 %.not.i80.i, label %bb.ee, label %bb.ef

.lr.ph387.i.i:                                    ; preds = %bb.fi, %.lr.ph387.i.i.preheader.new
  %i.adw = phi i64 [ 2, %.lr.ph387.i.i.preheader.new ], [ %i.aeu, %bb.fi ] ; 3 uses
  %.0386.i.i = phi i64 [ 1, %.lr.ph387.i.i.preheader.new ], [ %i.aei, %bb.fi ]
  %niter = phi i64 [ 0, %.lr.ph387.i.i.preheader.new ], [ %niter.next.1, %bb.fi ] ; 2 uses
  %i.adx = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %.0386.i.i ; 5 uses
  %i.ady = getelementptr i8, ptr %i.adx, i64 64   ; 2 uses
  %.val109.i.i = load i64, ptr %i.ady, align 8, !tbaa !282, !noalias !244
  %i.adz = icmp eq i64 %.val109.i.i, 7
  br i1 %i.adz, label %.lr.ph387.i.i.1, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph387.i.i
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !291, !noalias !244
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adx, i64 24
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !291, !noalias !244
  %.not325.i.i = icmp eq ptr %i.aeb, %i.aed
  br i1 %.not325.i.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adx, i64 40
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !291, !noalias !244
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !291, !noalias !244
  %.not326.i.i = icmp eq ptr %i.aef, %i.aeh
  br i1 %.not326.i.i, label %.lr.ph387.i.i.1, label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  store i64 8, ptr %i.ady, align 8, !tbaa !282, !noalias !244
  br label %.lr.ph387.i.i.1

.lr.ph387.i.i.1:                                  ; preds = %bb.fe, %bb.fd, %.lr.ph387.i.i
  %i.aei = or disjoint i64 %i.adw, 1              ; 2 uses
  %i.aej = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %i.adw ; 5 uses
  %i.aek = getelementptr i8, ptr %i.aej, i64 64   ; 2 uses
  %.val109.i.i.1 = load i64, ptr %i.aek, align 8, !tbaa !282, !noalias !244
  %i.ael = icmp eq i64 %.val109.i.i.1, 7
  br i1 %i.ael, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %.lr.ph387.i.i.1
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !291, !noalias !244
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aej, i64 24
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !291, !noalias !244
  %.not325.i.i.1 = icmp eq ptr %i.aen, %i.aep
  br i1 %.not325.i.i.1, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aej, i64 40
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !291, !noalias !244
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aej, i64 48
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !291, !noalias !244
  %.not326.i.i.1 = icmp eq ptr %i.aer, %i.aet
  br i1 %.not326.i.i.1, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  store i64 8, ptr %i.aek, align 8, !tbaa !282, !noalias !244
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %.lr.ph387.i.i.1
  %i.aeu = add nuw i64 %i.adw, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.aab
  br i1 %niter.ncmp.1, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, label %.lr.ph387.i.i, !llvm.loop !295

_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa: ; preds = %bb.fi
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %.lr.ph387.i.i.epil.preheader

.lr.ph387.i.i.epil.preheader:                     ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, %.lr.ph387.i.i.preheader
  %.0386.i.i.epil.init = phi i64 [ 1, %.lr.ph387.i.i.preheader ], [ %i.aei, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod868 = trunc i64 %.pre-phi438.i.i.a to i1
  call void @llvm.assume(i1 %lcmp.mod868)
  %i.aev = getelementptr inbounds nuw [112 x i8], ptr %.val84.i75.i, i64 %.0386.i.i.epil.init ; 5 uses
  %i.aew = getelementptr i8, ptr %i.aev, i64 64   ; 2 uses
  %.val109.i.i.epil = load i64, ptr %i.aew, align 8, !tbaa !282, !noalias !244
  %i.aex = icmp eq i64 %.val109.i.i.epil, 7
  br i1 %i.aex, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph387.i.i.epil.preheader
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !291, !noalias !244
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aev, i64 24
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !291, !noalias !244
  %.not325.i.i.epil = icmp eq ptr %i.aez, %i.afb
  br i1 %.not325.i.i.epil, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aev, i64 40
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !291, !noalias !244
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aev, i64 48
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !291, !noalias !244
  %.not326.i.i.epil = icmp eq ptr %i.afd, %i.aff
  br i1 %.not326.i.i.epil, label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  store i64 8, ptr %i.aew, align 8, !tbaa !282, !noalias !244
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i

_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i: ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa, %bb.fl, %bb.fk, %.lr.ph387.i.i.epil.preheader, %.preheader.i76.i, %.preheader335.i.i
  %.val125177.pre.i.i = phi ptr [ %.val125177.pre.i241.i, %.preheader.i76.i ], [ %.val125177.pre.i242.i, %.preheader335.i.i ], [ %.val125177.pre.i241.i, %.lr.ph387.i.i.epil.preheader ], [ %.val125177.pre.i241.i, %bb.fk ], [ %.val125177.pre.i241.i, %bb.fl ], [ %.val125177.pre.i241.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.val124176.pre.i.i = phi ptr [ %.val84.i75.i, %.preheader.i76.i ], [ %.val124176.pre.i239.i, %.preheader335.i.i ], [ %.val84.i75.i, %.lr.ph387.i.i.epil.preheader ], [ %.val84.i75.i, %bb.fk ], [ %.val84.i75.i, %bb.fl ], [ %.val84.i75.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  br label %bb.fm

.preheader173.i.i:                                ; preds = %._crit_edge182.i.i
  %i.afh = ptrtoint ptr %.val121.i.i to i64
  %i.afi = ptrtoint ptr %.val.i89.i to i64
  %i.afj = sub i64 %i.afh, %i.afi                 ; 5 uses
  %i.afk = sdiv exact i64 %i.afj, 112             ; 11 uses
  %i.afl = icmp ugt i64 %i.afk, 5
  br i1 %i.afl, label %.lr.ph194.split.us.preheader.i.i, label %._crit_edge195.i.i

bb.fm:                                            ; preds = %._crit_edge182.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i
  %.val125.i.us259.i.a = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val125.i.us260.i.a, %._crit_edge182.i.i ] ; 3 uses
  %.val124.i.us253.i.a = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val124.i.us254.i.a, %._crit_edge182.i.i ] ; 3 uses
  %.val125.i247.i = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val125.i248.i, %._crit_edge182.i.i ] ; 2 uses
  %.val124.i243.i = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val124.i244.i, %._crit_edge182.i.i ] ; 2 uses
  %.val125177.i.i = phi ptr [ %.val125177.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val121.i.i, %._crit_edge182.i.i ] ; 2 uses
  %.val124176.i.i = phi ptr [ %.val124176.pre.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.val.i89.i, %._crit_edge182.i.i ] ; 4 uses
  %.0113.idx183.i.i = phi i64 [ 0, %_ZN3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures32analyzeBridgesAndStrandsPatternsEv.exit.i ], [ %.0113.add.i.i, %._crit_edge182.i.i ] ; 2 uses
  %.0113.ptr.i.i = getelementptr inbounds nuw i8, ptr @constinit.69, i64 %.0113.idx183.i.i
  %i.afm = load i64, ptr %.0113.ptr.i.i, align 8, !tbaa !73, !noalias !244
  %.fr169.i = freeze i64 %i.afm                   ; 12 uses
  %i.afn = add i64 %.fr169.i, 3                   ; 5 uses
  %i.afo = ptrtoint ptr %.val125177.i.i to i64
  %i.afp = ptrtoint ptr %.val124176.i.i to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = sdiv exact i64 %i.afq, 112
  %i.afs = icmp ult i64 %i.afn, %i.afr
  br i1 %i.afs, label %.lr.ph181.i.i, label %._crit_edge182.i.i

.lr.ph181.i.i:                                    ; preds = %bb.fm
  %.not10.i.i.i = icmp eq i64 %i.afn, 0
  %i.aft = icmp ugt i64 %i.afn, 1
  br i1 %.not10.i.i.i, label %.lr.ph181.i.split.us.i, label %.lr.ph181.i.split.i.preheader

.lr.ph181.i.split.i.preheader:                    ; preds = %.lr.ph181.i.i
  %i.afu = add i64 %.fr169.i, 2                   ; 2 uses
  %i.afv = add i64 %.fr169.i, 1
  %xtraiter869 = and i64 %i.afu, 3                ; 3 uses
  %i.afw = icmp ult i64 %i.afv, 3
  %unroll_iter872 = and i64 %i.afu, -4
  %lcmp.mod870.not = icmp eq i64 %xtraiter869, 0
  %lcmp.mod871 = icmp ne i64 %xtraiter869, 0
  br label %.lr.ph181.i.split.i

.lr.ph181.i.split.us.i:                           ; preds = %.lr.ph181.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i93.us.i
  %.val125.i.us261.i = phi ptr [ %.val125.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i93.us.i ], [ %.val125.i.us259.i.a, %.lr.ph181.i.i ] ; 3 uses
  %.val124.i.us255.i = phi ptr [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i93.us.i ], [ %.val124.i.us253.i.a, %.lr.ph181.i.i ] ; 3 uses
  %.val124179.i.us.i = phi ptr [ %.val124.i.us.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i93.us.i ], [ %.val124176.i.i, %.lr.ph181.i.i ]
  %.0112178.i.us.i = phi i64 [ %i.aha, %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i93.us.i ], [ 0, %.lr.ph181.i.i ] ; 4 uses
  %.val12.i.i.us.i = load ptr, ptr %i.x, align 8, !tbaa !197, !noalias !244
  %i.afx = getelementptr inbounds nuw [136 x i8], ptr %.val12.i.i.us.i, i64 %.0112178.i.us.i ; 6 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 80
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afx, i64 56
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !205, !noalias !244 ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afx, i64 120
  %i.agc = load float, ptr %i.afg, align 8, !noalias !244 ; 2 uses
  %i.agd = load i64, ptr %i.bh, align 8, !noalias !244
  %.fr20.i.i.us.i = freeze i64 %i.agd
  %i.age = icmp eq i64 %.fr20.i.i.us.i, 1
  %i.agf = load ptr, ptr %i.afy, align 8, !tbaa !286, !noalias !244
  %i.agg = icmp eq ptr %i.agf, %i.aga             ; 2 uses
  br i1 %i.age, label %.split.us.i.i101.us.i, label %.split.preheader.i.i91.us.i

.split.preheader.i.i91.us.i:                      ; preds = %.lr.ph181.i.split.us.i
  br i1 %i.agg, label %bb.fn, label %.split.1.i.i92.us.i

bb.fn:                                            ; preds = %.split.preheader.i.i91.us.i
  %i.agh = load float, ptr %i.agb, align 8, !tbaa !74, !noalias !244
  %i.agi = fcmp olt float %i.agh, %i.agc
  br i1 %i.agi, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %.split.1.i.i92.us.i

.split.1.i.i92.us.i:                              ; preds = %bb.fn, %.split.preheader.i.i91.us.i
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afx, i64 88
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !286, !noalias !244
  %i.agl = icmp eq ptr %i.agk, %i.aga
  br i1 %i.agl, label %bb.fo, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i93.us.i

bb.fo:                                            ; preds = %.split.1.i.i92.us.i
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afx, i64 124
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !74, !noalias !244
  %i.ago = fcmp olt float %i.agn, %i.agc
  br i1 %i.ago, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i93.us.i

.split.us.i.i101.us.i:                            ; preds = %.lr.ph181.i.split.us.i
  br i1 %i.agg, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i102.us.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i102.us.i: ; preds = %.split.us.i.i101.us.i
  %i.agp = getelementptr inbounds nuw i8, ptr %i.afx, i64 88
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !286, !noalias !244
  %i.agr = icmp eq ptr %i.agq, %i.aga
  br i1 %i.agr, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures20noChainBreaksBetweenEmm.exit.i93.us.i

_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.thread.i.us.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_119SecondaryStructures15hasHBondBetweenEmm.exit.i102.us.i, %.split.us.i.i101.us.i, %bb.fo, %bb.fn
  %i.ags = getelementptr inbounds nuw [112 x i8], ptr %.val124179.i.us.i, i64 %.0112178.i.us.i
end_hunk_1
