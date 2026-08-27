Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pairlist?download=true
inline.NumInlined: 3346
inline.NumDeleted: 1578
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE:bb.a
  %i.ds = fptrunc double %i.dr to float
  %i.dt = fmul float %i.cn, %.147.1.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %i.dv = load float, ptr %i.du, align 4, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !53
  %i.dy = fsub float %i.dv, %i.dx
  %i.dz = fmul float %.145.1.i.i, %i.dy
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.149.2.i.i = phi float [ %i.ds, %bb.s ], [ %.149.1.i.i, %bb.r ]
  %.147.2.i.i = phi float [ %i.dt, %bb.s ], [ %.147.1.i.i, %bb.r ]
  %.145.2.i.i = phi float [ %i.dz, %bb.s ], [ %.145.1.i.i, %bb.r ]
  %i.ea = fmul float %.149.2.i.i, 4.000000e+00
  %i.eb = fpext float %i.ea to double
  %i.ec = fmul double %i.eb, f0x400921FB54442D18
  %i.ed = fdiv double %i.ec, 6.000000e+00
  %i.ee = fmul double %i.ed, %i.bz
  %i.ef = fmul double %i.ee, %i.bz
  %i.eg = call double @llvm.fmuladd.f64(double %i.ef, double %i.bz, double %i.cf)
  %i.eh = fptrunc double %i.eg to float
  %i.ei = fpext float %.147.2.i.i to double
  %i.ej = fmul double %i.ei, 5.000000e-01
  %i.ek = fmul double %i.ej, %i.bz
  %i.el = fpext float %i.eh to double
  %i.em = call double @llvm.fmuladd.f64(double %i.ek, double %i.bz, double %i.el)
  %i.en = fptrunc double %i.em to float
  %i.eo = call float @llvm.fmuladd.f32(float %i.en, float %.145.2.i.i, float %.056.i.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.1.i.i = phi float [ %i.eo, %bb.t ], [ %.056.i.i, %bb.n ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i, label %bb.n, !llvm.loop !362

_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i: ; preds = %bb.u, %bb.m
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.m ], [ %.1.i.i, %bb.u ]
  %i.ep = fmul float %i.bv, %.0.lcssa.i.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i, %bb.l, %bb.k
  %.0.i = phi float [ %i.ep, %_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %.pre58.i = load ptr, ptr @debug, align 8, !tbaa !302 ; 3 uses
  br i1 %i.ai, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.critedge.i
  %i.eq = load float, ptr %17, align 8, !tbaa !53 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !53 ; 4 uses
  %i.et = fmul float %i.eq, %i.es
  %i.eu = load float, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !53 ; 4 uses
  %i.ev = fmul float %i.et, %i.eu
  %i.ew = fmul float %i.eq, %i.eu
  %i.ex = call float @llvm.fmuladd.f32(float %i.eq, float %i.es, float %i.ew)
  %i.ey = call float @llvm.fmuladd.f32(float %i.es, float %i.eu, float %i.ex)
  %i.ez = call float @llvm.fmuladd.f32(float %i.ey, float %i.bo, float %i.ev)
  %i.fa = fadd float %i.eq, %i.es
  %i.fb = fadd float %i.fa, %i.eu
  %i.fc = fmul float %i.fb, 2.000000e+00
  %i.fd = fpext float %i.fc to double
  %i.fe = fmul double %i.fd, 2.500000e-01
  %i.ff = fmul double %i.fe, f0x400921FB54442D18
  %i.fg = fmul float %i.bo, %i.bo                 ; 2 uses
  %i.fh = fpext float %i.fg to double
  %i.fi = fpext float %i.ez to double
  %i.fj = call double @llvm.fmuladd.f64(double %i.ff, double %i.fh, double %i.fi)
  %i.fk = fptrunc double %i.fj to float
  %i.fl = fmul float %i.bo, %i.fg
  %i.fm = fpext float %i.fl to double
  %i.fn = fpext float %i.fk to double
  %i.fo = call double @llvm.fmuladd.f64(double %i.fm, double f0x4000C152382D7365, double %i.fn)
  %i.fp = fptrunc double %i.fo to float
  %i.fq = load i8, ptr %i.bf, align 8, !tbaa !363, !range !139, !noundef !140
  %i.fr = trunc nuw i8 %i.fq to i1
  %.0.in.v.i.i = select i1 %i.fr, i64 96, i64 368
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.0.in.v.i.i
  %.0.i.i = load i32, ptr %.0.in.i.i, align 8, !tbaa !103
  %i.fs = sitofp i32 %.0.i.i to float             ; 2 uses
  %i.ft = fmul float %i.fs, %i.fp
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !361
  %i.fw = fmul float %i.fv, %i.ft
  %i.fx = sitofp i32 %i.bm to float
  %i.fy = fdiv float %i.fw, %i.fx
  %i.fz = fsub float %i.fy, %.0.i                 ; 2 uses
  %i.ga = fmul nnan float %i.fs, 1.400000e+01     ; 2 uses
  %i.gb = fcmp olt float %i.fz, %i.ga
  %.sroa.speculated47.i = select i1 %i.gb, float %i.ga, float %i.fz ; 3 uses
  %.not39.i = icmp eq ptr %.pre58.i, null
  br i1 %.not39.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gc = fpext float %.sroa.speculated47.i to double
  %i.gd = fpext float %.0.i to double
  %i.ge = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pre58.i, ptr noundef nonnull @.str.11, double noundef %i.gc, double noundef %i.gd) #14 ; 0 uses
  %.pre.i = load ptr, ptr @debug, align 8, !tbaa !302
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.critedge.i
  %i.gf = phi ptr [ null, %bb.v ], [ %.pre.i, %bb.w ], [ %.pre58.i, %.critedge.i ] ; 2 uses
  %.057.i = phi float [ %.sroa.speculated47.i, %bb.v ], [ %.sroa.speculated47.i, %bb.w ], [ %.0.i, %.critedge.i ] ; 3 uses
  %i.gg = uitofp nneg i32 %8 to float
  %i.gh = fdiv float %.057.i, %i.gg
  %i.gi = call float @llvm.rint.f32(float %i.gh)
  %i.gj = fptosi float %i.gi to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gj, i32 36) ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.i, align 4, !tbaa !103
  store float %.057.i, ptr %i.j, align 4, !tbaa !53
  %.not40.i = icmp eq ptr %i.gf, null
  br i1 %.not40.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gk = fpext float %.057.i to double
  %i.gl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gf, ptr noundef nonnull @.str.12, double noundef %i.gk, i32 noundef %.sroa.speculated.i) #14 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %_ZN3gmxL19get_nsubpair_targetERKNS_7GridSetENS_19InteractionLocalityEfiPiPf.exit

_ZN3gmxL19get_nsubpair_targetERKNS_7GridSetENS_19InteractionLocalityEfiPiPf.exit: ; preds = %bb.z, %bb.j, %bb.h
  %i.gm = load i32, ptr %i.h, align 4, !tbaa !103
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN3gmxL19get_nsubpair_targetERKNS_7GridSetENS_19InteractionLocalityEfiPiPf.exit
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.aw, %_ZN3gmxL19get_nsubpair_targetERKNS_7GridSetENS_19InteractionLocalityEfiPiPf.exit
  %.sroa.3257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3257.0.copyload = load ptr, ptr %.sroa.3257.0..sroa_idx, align 8, !tbaa !352 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !349 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !364
  %i.gu = sext i32 %i.gt to i64                   ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !299 ; 2 uses
  %i.gv = trunc nuw i8 %.sroa.3.0.copyload to i1  ; 2 uses
  %brmerge = or i1 %i.ai, %i.gv
  %.mux = select i1 %i.gv, i32 2, i32 1
  %.mask = and i8 %.sroa.3.0.copyload, 1
  %.mux262 = zext nneg i8 %.mask to i32
  br i1 %brmerge, label %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.3257.0.copyload, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !378 ; 2 uses
  %.not.i.i115 = icmp slt i32 %i.gx, 0
  br i1 %.not.i.i115, label %bb.ab, label %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.15, i32 noundef 111) #33
  unreachable

_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit: ; preds = %._crit_edge, %bb.aa
  %.sroa.4.0.i = phi i32 [ %i.gx, %bb.aa ], [ %.mux, %._crit_edge ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.aa ], [ %.mux262, %._crit_edge ]
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %bb.ac ], [ 1, %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ac ], [ 0, %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit ] ; 4 uses
  %i.gy = getelementptr inbounds nuw [376 x i8], ptr %i.gr, i64 %indvars.iv.i ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !379
  %i.hb = icmp slt i32 %i.ha, %.sroa.0.0.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %indvars.iv.next10.i = add nuw i64 %indvars.iv9.i, 1
  br i1 %i.hb, label %bb.ac, label %.preheader.i, !llvm.loop !380

.preheader.i:                                     ; preds = %bb.ac
  %smax.i = call i64 @llvm.smax.i64(i64 %i.gu, i64 %indvars.iv9.i) ; 2 uses
  %indvars.iv.next8.i507.a = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next8.i507.a, %i.gu
  br i1 %i.hc, label %.lr.ph509, label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit

bb.ad:                                            ; preds = %.lr.ph509
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv.next8.i508, 1 ; 2 uses
  %i.hd = icmp slt i64 %indvars.iv.next8.i, %i.gu
  br i1 %i.hd, label %.lr.ph509, label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit, !llvm.loop !381

.lr.ph509:                                        ; preds = %.preheader.i, %bb.ad
  %indvars.iv.next8.i508 = phi i64 [ %indvars.iv.next8.i, %bb.ad ], [ %indvars.iv.next8.i507.a, %.preheader.i ] ; 3 uses
  %i.he = getelementptr inbounds nuw [376 x i8], ptr %i.gr, i64 %indvars.iv.next8.i508
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !379
  %i.hh = icmp slt i32 %i.hg, %.sroa.4.0.i
  br i1 %i.hh, label %bb.ad, label %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit_crit_edge510, !llvm.loop !381

._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit_crit_edge510: ; preds = %.lr.ph509
  br label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit, !llvm.loop !381

_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit: ; preds = %bb.ad, %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit_crit_edge510, %.preheader.i
  %.0.lcssa.in.i = phi i64 [ %smax.i, %.preheader.i ], [ %indvars.iv.next8.i508, %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit_crit_edge510 ], [ %smax.i, %bb.ad ]
  %i.hi = sub i64 %.0.lcssa.in.i, %indvars.iv.i
  %sext.i = shl i64 %i.hi, 32                     ; 2 uses
  %20 = ashr exact i64 %sext.i, 32
  %.idx = mul nsw i64 %20, 376
  %i.hj = getelementptr inbounds i8, ptr %i.gy, i64 %.idx
  %.not263315 = icmp eq i64 %sext.i, 0
  br i1 %.not263315, label %._crit_edge318, label %.lr.ph317

.lr.ph317:                                        ; preds = %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.3257.0.copyload, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.3257.0.copyload, i64 12
  %.not106 = icmp eq ptr %10, null                ; 3 uses
  %i.hm = getelementptr i8, ptr %10, i64 48       ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %.not107 = icmp eq ptr %9, null                 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hv = getelementptr i8, ptr %10, i64 72       ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  br label %bb.ax

bb.ae:                                            ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aw ] ; 4 uses
  %i.hy = load i8, ptr %i.u, align 1, !tbaa !138, !range !139, !noundef !140
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ia = load ptr, ptr %0, align 8, !tbaa !173
  %i.ib = getelementptr inbounds nuw [256 x i8], ptr %i.ia, i64 %indvars.iv ; 10 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 80
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !40 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 88 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !180
  %.not.i.i.i120 = icmp eq ptr %i.if, %i.id
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !180
  br label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i: ; preds = %bb.ag, %bb.af
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 128
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !38 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 136 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !181
  %.not.i.i7.i = icmp eq ptr %i.ij, %i.ih
  br i1 %.not.i.i7.i, label %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !181
  br label %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 176
  store i32 0, ptr %i.ik, align 8, !tbaa !183
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 104
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !40 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 112 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !180
  %.not.i.i8.i = icmp eq ptr %i.io, %i.im
  br i1 %.not.i.i8.i, label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i
  store ptr %i.im, ptr %i.in, align 8, !tbaa !180
  br label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i

_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i: ; preds = %bb.ai, %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 152
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !38 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 160 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !181
  %.not.i.i10.i = icmp eq ptr %i.is, %i.iq
  br i1 %.not.i.i10.i, label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistCpuE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !181
  br label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistCpuE.exit

_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistCpuE.exit: ; preds = %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i, %bb.aj
  %i.it = getelementptr inbounds nuw i8, ptr %i.ib, i64 184
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !37 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 160
  store i32 0, ptr %i.iv, align 8, !tbaa !382
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 164
  store i32 0, ptr %i.iw, align 4, !tbaa !391
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ae
  %i.ix = load ptr, ptr %i.go, align 8, !tbaa !157
  %i.iy = getelementptr inbounds nuw [256 x i8], ptr %i.ix, i64 %indvars.iv ; 8 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 88
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !101 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 96 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !392
  %.not.i.i.i121 = icmp eq ptr %i.jc, %i.ja
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !392
  br label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i: ; preds = %bb.al, %bb.ak
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 120
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !100 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 128 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !393
  %.not.i.i4.i122 = icmp eq ptr %i.jg, %i.je
  br i1 %.not.i.i4.i122, label %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !393
  br label %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i: ; preds = %bb.am, %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 152
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iy, i64 160 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !98 ; 3 uses
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !99 ; 3 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = ashr exact i64 %i.jn, 7                 ; 2 uses
  %i.jp = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iy, i64 144
  %i.jr = sub nuw nsw i64 1, %i.jo
  call void @_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.jq, i64 noundef %i.jr)
  br label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit

bb.ao:                                            ; preds = %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.js = icmp ugt i64 %i.jo, 1
  br i1 %i.js, label %bb.ap, label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit

bb.ap:                                            ; preds = %bb.ao
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jk, i64 128 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.jj, %i.jt
  br i1 %.not.i.i5.i, label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.jt, ptr %i.ji, align 8, !tbaa !98
  br label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit

_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit: ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iy, i64 176
  store i32 0, ptr %i.ju, align 8, !tbaa !93
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit, %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistCpuE.exit
  %i.jv = load ptr, ptr %i.q, align 8, !tbaa !160, !nonnull !140, !align !161
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.jx = load i8, ptr %i.jw, align 4, !tbaa !162, !range !139, !noundef !140
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.jz = load ptr, ptr %i.gp, align 8, !tbaa !186
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !187 ; 5 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !193 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !394
  %.not.i.i.i123 = icmp eq ptr %i.ke, %i.kc
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.as
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !394
  br label %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.as
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 24 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 32 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !201 ; 3 uses
  %i.ki = load ptr, ptr %i.kf, align 8, !tbaa !112 ; 3 uses
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = ashr exact i64 %i.kl, 2                 ; 2 uses
  %i.kn = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i
  %i.ko = sub nuw nsw i64 1, %i.km
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i64 noundef %i.ko)
  br label %_ZN3gmx12AtomPairlist5clearEv.exit

bb.au:                                            ; preds = %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i
  %i.kp = icmp ugt i64 %i.km, 1
  br i1 %i.kp, label %bb.av, label %_ZN3gmx12AtomPairlist5clearEv.exit

bb.av:                                            ; preds = %bb.au
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 4 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.kh, %i.kq
  br i1 %.not.i.i1.i, label %_ZN3gmx12AtomPairlist5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.av
  store ptr %i.kq, ptr %i.kg, align 8, !tbaa !201
  br label %_ZN3gmx12AtomPairlist5clearEv.exit

_ZN3gmx12AtomPairlist5clearEv.exit:               ; preds = %bb.at, %bb.au, %bb.av, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  store i32 0, ptr %i.kr, align 8, !tbaa !395
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ar, %_ZN3gmx12AtomPairlist5clearEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ks = load i32, ptr %i.h, align 4, !tbaa !103
  %i.kt = sext i32 %i.ks to i64
  %i.ku = icmp slt i64 %indvars.iv.next, %i.kt
  br i1 %i.ku, label %bb.ae, label %._crit_edge, !llvm.loop !403

._crit_edge318:                                   ; preds = %bb.bu, %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit
  %i.kv = load i8, ptr %i.u, align 1, !tbaa !138, !range !139, !noundef !140
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.bv, label %bb.bz

bb.ax:                                            ; preds = %.lr.ph317, %bb.bu
  %.sroa.0247.0316 = phi ptr [ %i.gy, %.lr.ph317 ], [ %i.xb, %bb.bu ] ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0247.0316, i64 88
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !103
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0247.0316, i64 92
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !103
  %i.lb = mul nsw i32 %i.la, %i.ky
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.bu, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0247.0316, i64 24
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !379 ; 3 uses
  store i32 %i.le, ptr %i.k, align 4, !tbaa !103
  %i.lf = load ptr, ptr %i.gq, align 8, !tbaa !349 ; 2 uses
  %i.lg = load i32, ptr %i.gs, align 8, !tbaa !364
  %i.lh = sext i32 %i.lg to i64                   ; 3 uses
  br i1 %i.ai, label %_ZN3gmxL13getJZoneRangeEPKNS_11DomdecZonesENS_19InteractionLocalityEi.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.li = icmp eq i32 %i.le, 0
  br i1 %i.li, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.lj = load i32, ptr %i.hl, align 4, !tbaa !404 ; 2 uses
  %.not.i.i131 = icmp slt i32 %i.lj, 1
  br i1 %.not.i.i131, label %bb.bb, label %_ZN3gmxL13getJZoneRangeEPKNS_11DomdecZonesENS_19InteractionLocalityEi.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.15, i32 noundef 111) #33
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.lk = sext i32 %i.le to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.lk
  %i.lm = load i64, ptr %i.ll, align 4            ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.lm, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.ln = trunc i64 %i.lm to i32
  br label %_ZN3gmxL13getJZoneRangeEPKNS_11DomdecZonesENS_19InteractionLocalityEi.exit

_ZN3gmxL13getJZoneRangeEPKNS_11DomdecZonesENS_19InteractionLocalityEi.exit: ; preds = %bb.ay, %bb.ba, %bb.bc
  %.sroa.4.0.i128 = phi i32 [ %.sroa.4.0.extract.trunc.i, %bb.bc ], [ 1, %bb.ay ], [ %i.lj, %bb.ba ]
  %.sroa.05.0.i = phi i32 [ %i.ln, %bb.bc ], [ 0, %bb.ay ], [ 1, %bb.ba ]
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %_ZN3gmxL13getJZoneRangeEPKNS_11DomdecZonesENS_19InteractionLocalityEi.exit
  %indvars.iv9.i132 = phi i64 [ %indvars.iv.next10.i135, %bb.bd ], [ 1, %_ZN3gmxL13getJZoneRangeEPKNS_11DomdecZonesENS_19InteractionLocalityEi.exit ] ; 2 uses
  %indvars.iv.i133 = phi i64 [ %indvars.iv.next.i134, %bb.bd ], [ 0, %_ZN3gmxL13getJZoneRangeEPKNS_11DomdecZonesENS_19InteractionLocalityEi.exit ] ; 4 uses
  %i.lo = getelementptr inbounds nuw [376 x i8], ptr %i.lf, i64 %indvars.iv.i133 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !379
  %i.lr = icmp slt i32 %i.lq, %.sroa.05.0.i
  %indvars.iv.next.i134 = add nuw nsw i64 %indvars.iv.i133, 1
  %indvars.iv.next10.i135 = add nuw i64 %indvars.iv9.i132, 1
  br i1 %i.lr, label %bb.bd, label %.preheader.i136, !llvm.loop !380

.preheader.i136:                                  ; preds = %bb.bd
  %smax.i137 = call i64 @llvm.smax.i64(i64 %i.lh, i64 %indvars.iv9.i132) ; 2 uses
  %indvars.iv.next8.i139512.a = add nuw nsw i64 %indvars.iv.i133, 1 ; 2 uses
  %i.ls = icmp slt i64 %indvars.iv.next8.i139512.a, %i.lh
  br i1 %i.ls, label %.lr.ph514, label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145

bb.be:                                            ; preds = %.lr.ph514
  %indvars.iv.next8.i139 = add nuw nsw i64 %indvars.iv.next8.i139513, 1 ; 2 uses
  %i.lt = icmp slt i64 %indvars.iv.next8.i139, %i.lh
  br i1 %i.lt, label %.lr.ph514, label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145, !llvm.loop !381

.lr.ph514:                                        ; preds = %.preheader.i136, %bb.be
  %indvars.iv.next8.i139513 = phi i64 [ %indvars.iv.next8.i139, %bb.be ], [ %indvars.iv.next8.i139512.a, %.preheader.i136 ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [376 x i8], ptr %i.lf, i64 %indvars.iv.next8.i139513
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !379
  %i.lx = icmp slt i32 %i.lw, %.sroa.4.0.i128
  br i1 %i.lx, label %bb.be, label %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145_crit_edge516, !llvm.loop !381

._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145_crit_edge516: ; preds = %.lr.ph514
  br label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145, !llvm.loop !381

_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145: ; preds = %bb.be, %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145_crit_edge516, %.preheader.i136
  %.0.lcssa.in.i141 = phi i64 [ %smax.i137, %.preheader.i136 ], [ %indvars.iv.next8.i139513, %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145_crit_edge516 ], [ %smax.i137, %bb.be ]
  %i.ly = sub i64 %.0.lcssa.in.i141, %indvars.iv.i133
  %sext.i142 = shl i64 %i.ly, 32                  ; 2 uses
  %21 = ashr exact i64 %sext.i142, 32
  %.idx334 = mul nsw i64 %21, 376
  %i.lz = getelementptr inbounds i8, ptr %i.lo, i64 %.idx334
  %.not267311 = icmp eq i64 %sext.i142, 0
  br i1 %.not267311, label %._crit_edge314, label %.lr.ph313

._crit_edge314:                                   ; preds = %bb.bt, %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.bu

.lr.ph313:                                        ; preds = %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145, %bb.bt
  %.sroa.0242.0312 = phi ptr [ %i.xa, %bb.bt ], [ %i.lo, %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit145 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0242.0312, i64 24
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !379 ; 2 uses
  store i32 %i.mb, ptr %i.l, align 4, !tbaa !103
  %i.mc = load ptr, ptr @debug, align 8, !tbaa !302 ; 2 uses
  %.not105 = icmp eq ptr %i.mc, null
  br i1 %.not105, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph313
  %i.md = load i32, ptr %i.k, align 4, !tbaa !103
  %i.me = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mc, ptr noundef nonnull @.str.8, i32 noundef %i.md, i32 noundef %i.mb) #14 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph313
  br i1 %.not106, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mf = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !406 ; 2 uses
  %i.mg = extractvalue { i32, i32 } %i.mf, 0
  %i.mh = extractvalue { i32, i32 } %i.mf, 1
  %i.mi = zext i32 %i.mg to i64
  %i.mj = zext i32 %i.mh to i64
  %i.mk = shl nuw i64 %i.mj, 32
  %i.ml = or disjoint i64 %i.mk, %i.mi
  store i64 %i.ml, ptr %i.hm, align 8, !tbaa !407
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  br i1 %i.ai, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mm = load i32, ptr %.sroa.3257.0.copyload, align 4, !tbaa !354
  %i.mn = icmp slt i32 %i.mm, 3
  %i.mo = zext i1 %i.mn to i8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.mp = phi i8 [ 1, %bb.bi ], [ %i.mo, %bb.bj ]
  store i8 %i.mp, ptr %i.m, align 1, !tbaa !299
  %i.mq = load i32, ptr %i.h, align 4, !tbaa !103
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.mq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 15, ptr nonnull @_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.l, ptr nonnull %19, ptr nonnull %0, ptr nonnull %2, ptr nonnull %.sroa.0247.0316, ptr nonnull %.sroa.0242.0312, ptr nonnull %6, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.m, ptr nonnull %i.j)
  br i1 %.not106, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mr = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !406 ; 2 uses
  %i.ms = extractvalue { i32, i32 } %i.mr, 0
  %i.mt = extractvalue { i32, i32 } %i.mr, 1
  %i.mu = zext i32 %i.ms to i64
  %i.mv = zext i32 %i.mt to i64
  %i.mw = shl nuw i64 %i.mv, 32
  %i.mx = load i64, ptr %i.hm, align 8, !tbaa !407
  %i.my = load i64, ptr %i.ho, align 8, !tbaa !410
  %i.mz = sub i64 %i.mu, %i.mx
  %i.na = add i64 %i.mz, %i.my
  %i.nb = add i64 %i.na, %i.mw
  store i64 %i.nb, ptr %i.ho, align 8, !tbaa !410
  %i.nc = load i32, ptr %i.hn, align 8, !tbaa !411
  %i.nd = add nsw i32 %i.nc, 1
  store i32 %i.nd, ptr %i.hn, align 8, !tbaa !411
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ne = load i32, ptr %i.h, align 4, !tbaa !103 ; 14 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  %.pre = load i8, ptr %i.u, align 1, !tbaa !138, !range !139 ; 2 uses
  br i1 %i.nf, label %.lr.ph285, label %._crit_edge286

.lr.ph285:                                        ; preds = %bb.bm
  %i.ng = load i64, ptr %19, align 8
  %i.nh = inttoptr i64 %i.ng to ptr               ; 8 uses
  %i.ni = trunc nuw i8 %.pre to i1
  br i1 %i.ni, label %.lr.ph285.split.us, label %.lr.ph285.split

.lr.ph285.split.us:                               ; preds = %.lr.ph285
  %i.nj = load ptr, ptr %0, align 8, !tbaa !173   ; 9 uses
  br i1 %.not107, label %iter.check, label %.lr.ph285.split.us.split

iter.check:                                       ; preds = %.lr.ph285.split.us
  %wide.trip.count369 = zext nneg i32 %i.ne to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ne, 4
  br i1 %min.iters.check, label %.lr.ph285.split.us.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check518 = icmp ult i32 %i.ne, 16
  br i1 %min.iters.check518, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nk = and i64 %wide.trip.count369, 12
  %n.vec = and i64 %wide.trip.count369, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oj, %vector.body ]
  %vec.phi519.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ok, %vector.body ]
  %vec.phi520.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ol, %vector.body ]
  %vec.phi521.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.om, %vector.body ]
  %vec.phi522.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.of, %vector.body ]
  %vec.phi523.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.og, %vector.body ]
  %vec.phi524.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oh, %vector.body ]
  %vec.phi525.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oi, %vector.body ]
  %vec.phi526.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.on, %vector.body ]
  %vec.phi527.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oo, %vector.body ]
  %vec.phi528.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.op, %vector.body ]
  %vec.phi529 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oq, %vector.body ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [256 x i8], ptr %i.nj, <4 x i64> %vec.ind ; 3 uses
  %wide.gep530.a = getelementptr inbounds nuw [256 x i8], ptr %i.nj, <4 x i64> %step.add ; 3 uses
  %wide.gep531.a = getelementptr inbounds nuw [256 x i8], ptr %i.nj, <4 x i64> %step.add.2 ; 3 uses
  %wide.gep532.a = getelementptr inbounds nuw [256 x i8], ptr %i.nj, <4 x i64> %step.add.3 ; 3 uses
  %wide.gep533.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 128
  %wide.gep534.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep530.a, i64 128
  %wide.gep535.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep531.a, i64 128
  %wide.gep536.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep532.a, i64 128
  %wide.gep537.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 136
  %wide.gep538.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep530.a, i64 136
  %wide.gep539.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep531.a, i64 136
  %wide.gep540 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep532.a, i64 136
  %wide.masked.gather = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep537.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !181
  %wide.masked.gather541.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep538.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !181
  %wide.masked.gather542.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep539.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !181
  %wide.masked.gather543.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep540, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !181
  %wide.masked.gather544.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep533.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !38
  %wide.masked.gather545.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep534.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !38
  %wide.masked.gather546.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep535.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !38
  %wide.masked.gather547 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep536.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !38
  %i.nl = ptrtoint <4 x ptr> %wide.masked.gather to <4 x i64>
  %i.nm = ptrtoint <4 x ptr> %wide.masked.gather541.a to <4 x i64>
  %i.nn = ptrtoint <4 x ptr> %wide.masked.gather542.a to <4 x i64>
  %i.no = ptrtoint <4 x ptr> %wide.masked.gather543.a to <4 x i64>
  %i.np = ptrtoint <4 x ptr> %wide.masked.gather544.a to <4 x i64>
  %i.nq = ptrtoint <4 x ptr> %wide.masked.gather545.a to <4 x i64>
  %i.nr = ptrtoint <4 x ptr> %wide.masked.gather546.a to <4 x i64>
  %i.ns = ptrtoint <4 x ptr> %wide.masked.gather547 to <4 x i64>
  %i.nt = sub <4 x i64> %i.nl, %i.np
  %i.nu = sub <4 x i64> %i.nm, %i.nq
  %i.nv = sub <4 x i64> %i.nn, %i.nr
  %i.nw = sub <4 x i64> %i.no, %i.ns
  %i.nx = lshr exact <4 x i64> %i.nt, splat (i64 3)
  %i.ny = lshr exact <4 x i64> %i.nu, splat (i64 3)
  %i.nz = lshr exact <4 x i64> %i.nv, splat (i64 3)
  %i.oa = lshr exact <4 x i64> %i.nw, splat (i64 3)
  %i.ob = trunc <4 x i64> %i.nx to <4 x i32>
  %i.oc = trunc <4 x i64> %i.ny to <4 x i32>
  %i.od = trunc <4 x i64> %i.nz to <4 x i32>
  %i.oe = trunc <4 x i64> %i.oa to <4 x i32>
  %wide.gep548.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 184
  %wide.gep549.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep530.a, i64 184
  %wide.gep550.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep531.a, i64 184
  %wide.gep551 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep532.a, i64 184
  %wide.masked.gather552.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep548.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37 ; 2 uses
  %wide.masked.gather553.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep549.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37 ; 2 uses
  %wide.masked.gather554.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep550.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37 ; 2 uses
  %wide.masked.gather555 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep551, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37 ; 2 uses
  %wide.gep556.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather552.a, i64 160
  %wide.gep557.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather553.a, i64 160
  %wide.gep558.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather554.a, i64 160
  %wide.gep559 = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather555, i64 160
  %wide.masked.gather560.a = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep556.a, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !382
  %wide.masked.gather561.a = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep557.a, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !382
  %wide.masked.gather562.a = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep558.a, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !382
  %wide.masked.gather563 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep559, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !382
  %i.of = add <4 x i32> %wide.masked.gather560.a, %vec.phi522.a ; 2 uses
  %i.og = add <4 x i32> %wide.masked.gather561.a, %vec.phi523.a ; 2 uses
  %i.oh = add <4 x i32> %wide.masked.gather562.a, %vec.phi524.a ; 2 uses
  %i.oi = add <4 x i32> %wide.masked.gather563, %vec.phi525.a ; 2 uses
  %wide.gep564.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather552.a, i64 164
  %wide.gep565.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather553.a, i64 164
  %wide.gep566.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather554.a, i64 164
  %wide.gep567 = getelementptr inbounds nuw i8, <4 x ptr> %wide.masked.gather555, i64 164
  %wide.masked.gather568.a = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep564.a, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !391
  %wide.masked.gather569.a = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep565.a, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !391
  %wide.masked.gather570.a = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep566.a, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !391
  %wide.masked.gather571 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep567, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !391
  %i.oj = add <4 x i32> %wide.masked.gather568.a, %vec.phi ; 2 uses
  %i.ok = add <4 x i32> %wide.masked.gather569.a, %vec.phi519.a ; 2 uses
  %i.ol = add <4 x i32> %wide.masked.gather570.a, %vec.phi520.a ; 2 uses
  %i.om = add <4 x i32> %wide.masked.gather571, %vec.phi521.a ; 2 uses
  %i.on = add <4 x i32> %vec.phi526.a, %i.ob      ; 2 uses
  %i.oo = add <4 x i32> %vec.phi527.a, %i.oc      ; 2 uses
  %i.op = add <4 x i32> %vec.phi528.a, %i.od      ; 2 uses
  %i.oq = add <4 x i32> %vec.phi529, %i.oe        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.or = icmp eq i64 %index.next, %n.vec
  br i1 %i.or, label %middle.block, label %vector.body, !llvm.loop !412

end_hunk_0
