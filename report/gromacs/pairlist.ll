Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pairlist?download=true
inline.NumInlined: 3346
inline.NumDeleted: 1578
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE:bb.a
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 3 uses
  %.056.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.1.i.i, %bb.u ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.bx, i64 %indvars.iv.i.i ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !101 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !101 ; 2 uses
  %i.ct = add nsw i32 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !101 ; 2 uses
  %i.cw = add nsw i32 %i.ct, %i.cv
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %.preheader.i.i, label %bb.u

.preheader.i.i:                                   ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %indvars.iv.i.i ; 6 uses
  %i.cz = icmp eq i32 %i.cq, 0
  br i1 %i.cz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.db = load float, ptr %i.da, align 4, !tbaa !57
  %i.dc = load float, ptr %i.cy, align 4, !tbaa !57
  %i.dd = fsub float %i.db, %i.dc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i.i
  %.149.i.i = phi float [ %i.ck, %bb.o ], [ 0.000000e+00, %.preheader.i.i ] ; 2 uses
  %.147.i.i = phi float [ %i.ch, %bb.o ], [ 1.000000e+00, %.preheader.i.i ] ; 2 uses
  %.145.i.i = phi float [ %i.dd, %bb.o ], [ 1.000000e+00, %.preheader.i.i ] ; 2 uses
  %i.de = icmp eq i32 %i.cs, 0
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = fpext float %.149.i.i to double
  %i.dg = call double @llvm.fmuladd.f64(double %i.cm, double 5.000000e-01, double %i.df)
  %i.dh = fptrunc double %i.dg to float
  %i.di = fmul float %i.cl, %.147.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !57
  %i.dn = fsub float %i.dk, %i.dm
  %i.do = fmul float %.145.i.i, %i.dn
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.149.1.i.i = phi float [ %i.dh, %bb.q ], [ %.149.i.i, %bb.p ] ; 2 uses
  %.147.1.i.i = phi float [ %i.di, %bb.q ], [ %.147.i.i, %bb.p ] ; 2 uses
  %.145.1.i.i = phi float [ %i.do, %bb.q ], [ %.145.i.i, %bb.p ] ; 2 uses
  %i.dp = icmp eq i32 %i.cv, 0
  br i1 %i.dp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dq = fpext float %.149.1.i.i to double
  %i.dr = call double @llvm.fmuladd.f64(double %i.co, double 5.000000e-01, double %i.dq)
  %i.ds = fptrunc double %i.dr to float
  %i.dt = fmul float %i.cn, %.147.1.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %i.dv = load float, ptr %i.du, align 4, !tbaa !57
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !57
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
  br i1 %exitcond.not.i.i, label %_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i, label %bb.n, !llvm.loop !443

_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i: ; preds = %bb.u, %bb.m
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.m ], [ %.1.i.i, %bb.u ]
  %i.ep = fmul float %i.bv, %.0.lcssa.i.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i, %bb.l, %bb.k
  %.0.i = phi float [ %i.ep, %_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %.pre58.i = load ptr, ptr @debug, align 8, !tbaa !232 ; 3 uses
  br i1 %i.ai, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.critedge.i
  %i.eq = load float, ptr %17, align 8, !tbaa !57 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !57 ; 4 uses
  %i.et = fmul float %i.eq, %i.es
  %i.eu = load float, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !57 ; 4 uses
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
  %i.fq = load i8, ptr %i.bf, align 8, !tbaa !289, !range !131, !noundef !132
  %i.fr = trunc nuw i8 %i.fq to i1
  %.0.in.v.i.i = select i1 %i.fr, i64 96, i64 368
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.0.in.v.i.i
  %.0.i.i = load i32, ptr %.0.in.i.i, align 8, !tbaa !101
  %i.fs = sitofp i32 %.0.i.i to float             ; 2 uses
  %i.ft = fmul float %i.fs, %i.fp
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !489
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
  %.pre.i = load ptr, ptr @debug, align 8, !tbaa !232
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.critedge.i
  %i.gf = phi ptr [ null, %bb.v ], [ %.pre.i, %bb.w ], [ %.pre58.i, %.critedge.i ] ; 2 uses
  %.057.i = phi float [ %.sroa.speculated47.i, %bb.v ], [ %.sroa.speculated47.i, %bb.w ], [ %.0.i, %.critedge.i ] ; 3 uses
  %i.gg = uitofp nneg i32 %8 to float
  %i.gh = fdiv float %.057.i, %i.gg
  %i.gi = call float @llvm.rint.f32(float %i.gh)
  %i.gj = fptosi float %i.gi to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gj, i32 36) ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.i, align 4, !tbaa !101
  store float %.057.i, ptr %i.j, align 4, !tbaa !57
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
  %i.gm = load i32, ptr %i.h, align 4, !tbaa !101
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN3gmxL19get_nsubpair_targetERKNS_7GridSetENS_19InteractionLocalityEfiPiPf.exit
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.aw, %_ZN3gmxL19get_nsubpair_targetERKNS_7GridSetENS_19InteractionLocalityEfiPiPf.exit
  %.sroa.3256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3256.0.copyload = load ptr, ptr %.sroa.3256.0..sroa_idx, align 8, !tbaa !282 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !279 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !490
  %i.gu = sext i32 %i.gt to i64                   ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !230 ; 2 uses
  %i.gv = trunc nuw i8 %.sroa.3.0.copyload to i1  ; 2 uses
  %brmerge = or i1 %i.ai, %i.gv
  %.mux = select i1 %i.gv, i32 2, i32 1
  %.mux261 = zext i8 %.sroa.3.0.copyload to i32
  br i1 %brmerge, label %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.3256.0.copyload, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !303 ; 2 uses
  %.not.i.i115 = icmp slt i32 %i.gx, 0
  br i1 %.not.i.i115, label %bb.ab, label %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.15, i32 noundef 111) #33
  unreachable

_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit: ; preds = %._crit_edge, %bb.aa
  %.sroa.4.0.i = phi i32 [ %i.gx, %bb.aa ], [ %.mux, %._crit_edge ]
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %bb.ac ], [ 1, %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ac ], [ 0, %_ZN3gmxL13getIZoneRangeERKNS_7GridSet11DomainSetupENS_19InteractionLocalityE.exit ] ; 4 uses
  %i.gy = getelementptr inbounds nuw [376 x i8], ptr %i.gr, i64 %indvars.iv.i ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !491
  %i.hb = icmp slt i32 %i.ha, %.mux261
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %indvars.iv.next10.i = add nuw i64 %indvars.iv9.i, 1
  br i1 %i.hb, label %bb.ac, label %.preheader.i, !llvm.loop !444

.preheader.i:                                     ; preds = %bb.ac
  %smax.i = call i64 @llvm.smax.i64(i64 %i.gu, i64 %indvars.iv9.i) ; 2 uses
  %indvars.iv.next8.i506 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next8.i506, %i.gu
  br i1 %i.hc, label %.lr.ph508, label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit

bb.ad:                                            ; preds = %.lr.ph508
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv.next8.i507, 1 ; 2 uses
  %i.hd = icmp slt i64 %indvars.iv.next8.i, %i.gu
  br i1 %i.hd, label %.lr.ph508, label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit, !llvm.loop !445

.lr.ph508:                                        ; preds = %.preheader.i, %bb.ad
  %indvars.iv.next8.i507 = phi i64 [ %indvars.iv.next8.i, %bb.ad ], [ %indvars.iv.next8.i506, %.preheader.i ] ; 3 uses
  %i.he = getelementptr inbounds nuw [376 x i8], ptr %i.gr, i64 %indvars.iv.next8.i507
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !491
  %i.hh = icmp slt i32 %i.hg, %.sroa.4.0.i
  br i1 %i.hh, label %bb.ad, label %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit_crit_edge509, !llvm.loop !445

._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit_crit_edge509: ; preds = %.lr.ph508
  br label %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit, !llvm.loop !445

_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit: ; preds = %bb.ad, %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit_crit_edge509, %.preheader.i
  %.0.lcssa.in.i = phi i64 [ %smax.i, %.preheader.i ], [ %indvars.iv.next8.i507, %._ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit_crit_edge509 ], [ %smax.i, %bb.ad ]
  %i.hi = sub i64 %.0.lcssa.in.i, %indvars.iv.i
  %i.hj = and i64 %i.hi, 4294967295               ; 2 uses
  %.idx = mul nuw nsw i64 %i.hj, 376
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx
  %.not262314 = icmp eq i64 %i.hj, 0
  br i1 %.not262314, label %._crit_edge317, label %.lr.ph316

.lr.ph316:                                        ; preds = %_ZN3gmxL11getGridListENS_8ArrayRefIKNS_4GridEEERKNS_5RangeIiEE.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.3256.0.copyload, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.3256.0.copyload, i64 12
  %.not106 = icmp eq ptr %10, null                ; 3 uses
  %i.hn = getelementptr i8, ptr %10, i64 48       ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %.not107 = icmp eq ptr %9, null                 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hw = getelementptr i8, ptr %10, i64 72       ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  br label %bb.ax

bb.ae:                                            ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aw ] ; 4 uses
  %i.hz = load i8, ptr %i.u, align 1, !tbaa !130, !range !131, !noundef !132
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ib = load ptr, ptr %0, align 8, !tbaa !158
  %i.ic = getelementptr inbounds nuw [256 x i8], ptr %i.ib, i64 %indvars.iv ; 10 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !46 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 88 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !159
  %.not.i.i.i120 = icmp eq ptr %i.ig, %i.ie
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !159
  br label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i: ; preds = %bb.ag, %bb.af
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 128
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !44 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 136 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !160
  %.not.i.i7.i = icmp eq ptr %i.ik, %i.ii
  br i1 %.not.i.i7.i, label %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !160
  br label %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 176
  store i32 0, ptr %i.il, align 8, !tbaa !162
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 104
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !46 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 112 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !159
  %.not.i.i8.i = icmp eq ptr %i.ip, %i.in
  br i1 %.not.i.i8.i, label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i
  store ptr %i.in, ptr %i.io, align 8, !tbaa !159
  br label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i

_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i: ; preds = %bb.ai, %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 152
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !44 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ic, i64 160 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !160
  %.not.i.i10.i = icmp eq ptr %i.it, %i.ir
  br i1 %.not.i.i10.i, label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistCpuE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !160
  br label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistCpuE.exit

_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistCpuE.exit: ; preds = %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE5clearEv.exit9.i, %bb.aj
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ic, i64 184
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !43 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 160
  store i32 0, ptr %i.iw, align 8, !tbaa !312
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 164
  store i32 0, ptr %i.ix, align 4, !tbaa !313
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ae
  %i.iy = load ptr, ptr %i.go, align 8, !tbaa !143
  %i.iz = getelementptr inbounds nuw [256 x i8], ptr %i.iy, i64 %indvars.iv ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 88
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !99 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 96 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !314
  %.not.i.i.i121 = icmp eq ptr %i.jd, %i.jb
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !314
  br label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i: ; preds = %bb.al, %bb.ak
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 120
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !98 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 128 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !315
  %.not.i.i4.i122 = icmp eq ptr %i.jh, %i.jf
  br i1 %.not.i.i4.i122, label %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !315
  br label %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i: ; preds = %bb.am, %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 152
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 160 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !96 ; 3 uses
  %i.jl = load ptr, ptr %i.ji, align 8, !tbaa !97 ; 3 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = ashr exact i64 %i.jo, 7                 ; 2 uses
  %i.jq = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iz, i64 144
  %i.js = sub nuw nsw i64 1, %i.jp
  call void @_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, i64 noundef %i.js)
  br label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit

bb.ao:                                            ; preds = %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.jt = icmp ugt i64 %i.jp, 1
  br i1 %i.jt, label %bb.ap, label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jl, i64 128 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.jk, %i.ju
  br i1 %.not.i.i5.i, label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.ju, ptr %i.jj, align 8, !tbaa !96
  br label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit

_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit: ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iz, i64 176
  store i32 0, ptr %i.jv, align 8, !tbaa !94
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit, %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistCpuE.exit
  %i.jw = load ptr, ptr %i.q, align 8, !tbaa !145, !nonnull !132, !align !146
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jy = load i8, ptr %i.jx, align 4, !tbaa !147, !range !131, !noundef !132
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.ka = load ptr, ptr %i.gp, align 8, !tbaa !164
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !166 ; 5 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !173 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !316
  %.not.i.i.i123 = icmp eq ptr %i.kf, %i.kd
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

end_hunk_0
