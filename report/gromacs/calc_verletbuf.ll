Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calc_verletbuf?download=true
inline.NumInlined: 1121
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z30minCellSizeForAtomDisplacementRK10gmx_mtop_tRK10t_inputrecN3gmx8ArrayRefIKNS5_17RangePartitioningEEEf12ChanceTarget:bb.a
  %i.dr = sub i64 %i.dq, %i.dp
  %i.ds = sdiv exact i64 %i.dr, 24
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.do, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not10.i, label %.lr.ph.split.us.split.us, label %.lr.ph.i63.preheader.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.ea = sitofp i32 %i.ad to float
  %i.eb = fmul float %.055, %i.ea
  %.fr132 = freeze float %i.eb
  %i.ec = fcmp olt float %.fr132, 0.000000e+00
  br i1 %i.ec, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us

_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us: ; preds = %.lr.ph.split.us.split.us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us
  %.048128.us.us.us = phi i32 [ %i.ee, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us ], [ 0, %.lr.ph.split.us.split.us ]
  %i.ed = add nsw i32 %i.dm, %.048128.us.us.us
  %i.ee = sdiv i32 %i.ed, 2                       ; 3 uses
  %i.ef = icmp slt i32 %i.ee, %i.dl
  br i1 %i.ef, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit76.loopexit, !llvm.loop !334

_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us: ; preds = %.lr.ph.split.us.split.us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us
  %.047129.us.us = phi i32 [ %i.eg, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us ], [ %i.dm, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.eg = sdiv i32 %.047129.us.us, 2              ; 2 uses
  %i.eh = icmp sgt i32 %.047129.us.us, 3
  br i1 %i.eh, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit76.loopexit205, !llvm.loop !334

.lr.ph.i63.preheader.us:                          ; preds = %.lr.ph.split.us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us
  %.047129.us = phi i32 [ %.047..us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us ], [ %i.dm, %.lr.ph.split.us ] ; 2 uses
  %.048128.us = phi i32 [ %..048.us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.ei = add nsw i32 %.047129.us, %.048128.us
  %i.ej = sdiv i32 %i.ei, 2                       ; 3 uses
  %i.ek = sitofp i32 %i.ej to float
  %i.el = fmul nnan float %i.ek, 1.000000e-03     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store float 0.000000e+00, ptr %6, align 4, !tbaa !258
  %i.em = fdiv float 1.000000e+00, %i.el          ; 2 uses
  store float %i.em, ptr %i.dy, align 4, !tbaa !200
  store <2 x float> zeroinitializer, ptr %i.dz, align 4, !tbaa !27
  %i.en = fmul nnan float %i.el, %i.el            ; 5 uses
  br label %.lr.ph.i63.us

.lr.ph.i63.us:                                    ; preds = %.lr.ph.i63.preheader.us, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us
  %.043.i.us = phi float [ %i.kr, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us ], [ 0.000000e+00, %.lr.ph.i63.preheader.us ]
  %.sroa.0.041.i.us = phi ptr [ %i.ks, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us ], [ %i.cr, %.lr.ph.i63.preheader.us ] ; 11 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 12 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 4, !tbaa !25 ; 4 uses
  %i.eq = icmp sgt i16 %i.ep, 0
  %.pre.i.i.us = load i16, ptr %.sroa.0.041.i.us, align 4, !tbaa !202 ; 2 uses
  br i1 %i.eq, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.i.us, label %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.i.us

_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.i.us: ; preds = %.lr.ph.i63.us
  %.pre9.i.i.us = sitofp i16 %.pre.i.i.us to float
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 16
  %i.es = load float, ptr %i.er, align 4, !tbaa !23
  %i.et = fmul float %i.es, %.pre9.i.i.us
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.i.us: ; preds = %.lr.ph.i63.us
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 10
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !234
  %i.ew = sitofp i16 %i.ev to float               ; 2 uses
  %i.ex = fmul nnan float %i.ew, 4.000000e-01
  %i.ey = sitofp i16 %.pre.i.i.us to float        ; 3 uses
  %i.ez = fcmp olt float %i.ex, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 16
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !23 ; 3 uses
  br i1 %i.ez, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us, label %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.thread38.i.us

_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.thread38.i.us: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.i.us
  %i.fc = fmul float %i.fb, %i.ey
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us: ; preds = %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.thread38.i.us, %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.i.us
  %.pn.us = phi float [ %i.et, %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.i.us ], [ %i.fc, %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.thread38.i.us ]
  %storemerge.i36.i.us = fmul float %.015.i, %.pn.us ; 3 uses
  %i.fd = fadd float %storemerge.i36.i.us, 0.000000e+00 ; 3 uses
  %i.fe = fmul float %i.fd, 2.000000e+00          ; 2 uses
  %i.ff = fmul float %i.fe, 8.000000e+00
  %i.fg = fmul float %i.ff, 8.000000e+00
  %i.fh = fcmp ogt float %i.en, %i.fg
  br i1 %i.fh, label %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us, label %bb.o

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.i.us
  %i.fi = fmul float %i.fb, %i.ew                 ; 2 uses
  %i.fj = fmul float %i.fb, %i.ey                 ; 2 uses
  %i.fk = fdiv float 1.000000e+00, %i.fj
  %i.fl = fdiv float 1.000000e+00, %i.fi
  %i.fm = fadd float %i.fl, %i.fk                 ; 2 uses
  %i.fn = fmul float %i.fi, %i.fm
  %i.fo = fdiv float 1.000000e+00, %i.fn          ; 2 uses
  %i.fp = fmul float %.015.i, %i.fo
  %i.fq = fmul float %i.fj, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 24
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24
  %i.ft = uitofp nneg i16 %i.ep to float
  %i.fu = fmul float %i.fs, %i.ft
  %i.fv = fmul float %i.fo, %i.fu                 ; 2 uses
  %i.fw = fmul float %i.fv, %i.fv                 ; 2 uses
  %i.fx = fdiv float %i.fq, %i.fw                 ; 2 uses
  %i.fy = fcmp ogt float %i.fx, f0x4097CA11
  %.sroa.speculated.i.i.i.us = select i1 %i.fy, float f0x4097CA11, float %i.fx ; 4 uses
  %i.fz = fmul float %i.fw, %.sroa.speculated.i.i.i.us
  %i.ga = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i.i.i.us, float f0x3EAAAAAB, float 1.000000e+00)
  %i.gb = fmul float %.sroa.speculated.i.i.i.us, %.sroa.speculated.i.i.i.us
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float f0x3D360B61, float %i.ga)
  %i.gd = fdiv float %i.fz, %i.gc                 ; 3 uses
  %i.ge = fdiv float %.015.i, %i.fm               ; 3 uses
  %i.gf = fadd float %i.ge, %i.gd                 ; 4 uses
  %i.gg = fmul float %i.gf, 2.000000e+00          ; 2 uses
  %i.gh = fmul float %i.gg, 8.000000e+00
  %i.gi = fmul float %i.gh, 8.000000e+00
  %i.gj = fcmp ogt float %i.en, %i.gi
  br i1 %i.gj, label %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us, label %bb.n

bb.n:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us
  %i.gk = fmul float %i.el, %i.gd
  %i.gl = fdiv float %i.gk, %i.gf                 ; 3 uses
  %i.gm = fneg float %i.gl                        ; 2 uses
  %i.gn = fmul float %i.gl, %i.gm
  %i.go = fmul float %i.gd, 2.000000e+00          ; 3 uses
  %i.gp = fdiv float %i.gn, %i.go
  %i.gq = tail call noundef float @expf(float noundef %i.gp) #26 ; 3 uses
  %i.gr = tail call noundef float @sqrtf(float noundef %i.go) #26
  %i.gs = fdiv float %i.gl, %i.gr
  %i.gt = tail call noundef float @erfcf(float noundef %i.gs) #26
  %i.gu = fpext float %i.gm to double
  %i.gv = fpext float %i.go to double
  %i.gw = fdiv double %i.gv, f0x400921FB54442D18
  %i.gx = tail call double @sqrt(double noundef %i.gw) #26
  %i.gy = fpext float %i.gq to double
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = fpext float %i.gt to double             ; 4 uses
  %i.hb = fdiv double %i.gz, %i.ha
  %i.hc = fadd double %i.hb, %i.gu
  %i.hd = fptrunc double %i.hc to float
  %i.he = fmul float %i.gq, %i.gq
  %i.hf = fpext float %i.he to double
  %i.hg = fmul double %i.ha, f0x400921FB54442D18
  %i.hh = fmul double %i.hg, %i.ha
  %i.hi = fdiv double %i.hf, %i.hh
  %i.hj = tail call double @exp(double noundef %i.hi) #26
  %i.hk = fmul double %i.hj, f0x3FF921FB54442D18
  %i.hl = fmul double %i.hk, %i.ha
  %i.hm = fptrunc double %i.hl to float
  %i.hn = fadd float %i.el, %i.hd                 ; 3 uses
  %.pre172 = fmul float %i.hn, %i.hn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us
  %.pre.i77.us.pre-phi = phi float [ %.pre172, %bb.n ], [ %i.en, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ]
  %storemerge.i36.i8692.us = phi float [ %i.ge, %bb.n ], [ %storemerge.i36.i.us, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ]
  %i.ho = phi float [ %i.gf, %bb.n ], [ %i.fd, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ]
  %i.hp = phi float [ %i.gg, %bb.n ], [ %i.fe, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ] ; 2 uses
  %.067.i.us = phi float [ %i.hm, %bb.n ], [ 1.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ]
  %.0.i.us = phi float [ %i.hn, %bb.n ], [ %i.el, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ] ; 4 uses
  %i.hq = fneg float %.0.i.us
  %i.hr = fmul float %.0.i.us, %i.hq
  %i.hs = fdiv float %i.hr, %i.hp
  %i.ht = tail call noundef float @expf(float noundef %i.hs) #26
  %i.hu = fpext float %i.ht to double
  %i.hv = fdiv double %i.hu, f0x40040D931FF62705
  %i.hw = fptrunc double %i.hv to float
  %i.hx = tail call noundef float @sqrtf(float noundef %i.hp) #26
  %i.hy = fdiv float %.0.i.us, %i.hx
  %i.hz = tail call noundef float @erfcf(float noundef %i.hy) #26
  %i.ia = fmul float %i.hz, 5.000000e-01
  %.pre170 = load i16, ptr %i.eo, align 4, !tbaa !25
  br label %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us

_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us: ; preds = %bb.o, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us
  %i.ib = phi i16 [ %i.ep, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %.pre170, %bb.o ], [ %i.ep, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 2 uses
  %i.ic = phi float [ %i.fd, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %i.ho, %bb.o ], [ %i.gf, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 8 uses
  %storemerge.i36.i87.us = phi float [ %storemerge.i36.i.us, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %storemerge.i36.i8692.us, %bb.o ], [ %i.ge, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ]
  %.pre-phi.i.us = phi float [ %i.en, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %.pre.i77.us.pre-phi, %bb.o ], [ %i.en, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 7 uses
  %.071.i.us = phi float [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %i.ia, %bb.o ], [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 3 uses
  %.070.i.us = phi float [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %i.hw, %bb.o ], [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 3 uses
  %.269.i.us = phi float [ 1.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %.067.i.us, %bb.o ], [ 1.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 2 uses
  %.2.i.us = phi float [ %i.el, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %.0.i.us, %bb.o ], [ %i.el, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 3 uses
  %i.id = tail call noundef float @sqrtf(float noundef %i.ic) #26 ; 3 uses
  %i.ie = fmul float %.269.i.us, 0.000000e+00     ; 3 uses
  %i.if = fneg float %.071.i.us                   ; 2 uses
  %i.ig = fmul float %.2.i.us, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.id, float %.070.i.us, float %i.ig)
  %i.ii = fmul float %i.ie, %i.ih
  %i.ij = fmul float %i.em, %.269.i.us
  %i.ik = fmul float %i.ij, 5.000000e-01
  %i.il = fadd float %i.ic, %.pre-phi.i.us
  %i.im = fmul float %.2.i.us, %i.id              ; 2 uses
  %i.in = fneg float %.070.i.us                   ; 2 uses
  %i.io = fmul float %i.im, %i.in
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.il, float %.071.i.us, float %i.io)
  %i.iq = fmul float %i.ik, %i.ip
  %i.ir = fdiv float %i.ie, 6.000000e+00
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ic, float 2.000000e+00, float %.pre-phi.i.us)
  %i.it = fmul float %i.is, %i.id
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.ic, float 3.000000e+00, float %.pre-phi.i.us)
  %i.iv = fmul float %i.iu, %.2.i.us
  %i.iw = fmul float %i.iv, %i.if
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.it, float %.070.i.us, float %i.iw)
  %i.iy = fmul float %i.ir, %i.ix
  %i.iz = fdiv float %i.ie, 2.400000e+01
  %i.ja = fmul float %.pre-phi.i.us, 6.000000e+00
  %i.jb = fmul float %i.ic, %i.ja
  %i.jc = tail call float @llvm.fmuladd.f32(float %.pre-phi.i.us, float %.pre-phi.i.us, float %i.jb)
  %i.jd = fmul float %i.ic, 3.000000e+00
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.ic, float %i.jc)
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.ic, float 5.000000e+00, float %.pre-phi.i.us)
  %i.jg = fmul float %i.jf, %i.im
  %i.jh = fmul float %i.jg, %i.in
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.je, float %.071.i.us, float %i.jh)
  %i.jj = fmul float %i.iz, %i.ji
  %i.jk = fadd float %i.ii, %i.iq
  %i.jl = fadd float %i.iy, %i.jk
  %i.jm = fadd float %i.jj, %i.jl                 ; 4 uses
  %i.jn = icmp sgt i16 %i.ib, 0
  br i1 %i.jn, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.i.us, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.i.us: ; preds = %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us
  %i.jo = tail call <6 x i16> @llvm.masked.load.v6i16.p0(ptr nonnull align 4 %.sroa.0.041.i.us, <6 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 true>, <6 x i16> poison), !tbaa !26
  %i.jp = shufflevector <6 x i16> %i.jo, <6 x i16> poison, <2 x i32> <i32 0, i32 5>
  %i.jq = sitofp <2 x i16> %i.jp to <2 x float>   ; 3 uses
  %i.jr = extractelement <2 x float> %i.jq, i64 1 ; 2 uses
  %i.js = fmul nnan float %i.jr, 4.000000e-01
  %i.jt = extractelement <2 x float> %i.jq, i64 0
  %i.ju = fcmp olt float %i.js, %i.jt
  br i1 %i.ju, label %bb.p, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us

bb.p:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.i.us
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 16
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !23 ; 2 uses
  %i.jx = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x float> %i.jy, %i.jq
  %i.ka = fmul float %i.jw, %i.jr
  %i.kb = fdiv <2 x float> splat (float 1.000000e+00), %i.jz ; 2 uses
  %shift = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.kb
  %i.kc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.kd = fmul float %i.ka, %i.kc
  %i.ke = fdiv float 1.000000e+00, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 24
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !24
  %i.kh = uitofp nneg i16 %i.ib to float
  %i.ki = fmul float %i.kg, %i.kh
  %i.kj = fmul float %i.ki, %i.ke
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float -2.000000e+00, float %i.el)
  %i.kl = call fastcc noundef float @_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t(i1 noundef zeroext false, i1 noundef zeroext false, float noundef %storemerge.i36.i87.us, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.kk, ptr noundef %6) ; 2 uses
  %i.km = fcmp olt float %i.kl, %i.jm
  %.sroa.speculated.i67.us = select i1 %i.km, float %i.kl, float %i.jm
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us: ; preds = %bb.p, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.i.us, %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us
  %.030.i.us = phi float [ %.sroa.speculated.i67.us, %bb.p ], [ %i.jm, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.i.us ], [ %i.jm, %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us ]
  %i.kn = fdiv float %.030.i.us, %i.el
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 28
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !256
  %i.kq = sitofp i32 %i.kp to float
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.kn, float %.043.i.us) ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 32 ; 2 uses
  %.not.i64.us = icmp eq ptr %i.ks, %i.ct
  br i1 %.not.i64.us, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us, label %.lr.ph.i63.us

_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.kt = load i32, ptr %i.ac, align 8, !tbaa !345
  %i.ku = sitofp i32 %i.kt to float
  %i.kv = fmul float %.055, %i.ku
  %i.kw = fcmp ogt float %i.kr, %i.kv             ; 2 uses
  %..048.us = select i1 %i.kw, i32 %i.ej, i32 %.048128.us ; 2 uses
  %.047..us = select i1 %i.kw, i32 %.047129.us, i32 %i.ej ; 2 uses
  %i.kx = sub nsw i32 %.047..us, %..048.us
  %i.ky = icmp sgt i32 %i.kx, 1
  br i1 %i.ky, label %.lr.ph.i63.preheader.us, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit76, !llvm.loop !334

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit
  %i.kz = phi i32 [ %i.yi, %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit ], [ %i.ad, %.lr.ph ]
  %.047129 = phi i32 [ %.047., %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit ], [ %i.dm, %.lr.ph ] ; 2 uses
  %.048128 = phi i32 [ %..048, %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.la = add nsw i32 %.047129, %.048128
  %i.lb = sdiv i32 %i.la, 2                       ; 3 uses
  %i.lc = sitofp i32 %i.lb to float
  %i.ld = fmul nnan float %i.lc, 1.000000e-03     ; 3 uses
  %i.le = load ptr, ptr %i.du, align 8, !tbaa !346
  %i.lf = load ptr, ptr %i.dt, align 8, !tbaa !208
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = sdiv exact i64 %i.li, 2408
  %i.lk = icmp eq i64 %i.ds, %i.lj
  br i1 %i.lk, label %bb.r, label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i, %common.resume.i.sink.split.i, %bb.ay
  %eh.lpad-body = phi { ptr, i32 } [ %common.resume.op.i.ph.i, %common.resume.i.sink.split.i ], [ %lpad.loopexit.split-lp288, %.body.i.i.i ], [ %i.vz, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ll = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !204
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.cr to i64
  %i.lp = sub i64 %i.ln, %i.lo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.lp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %eh.lpad-body

bb.q:                                             ; preds = %.lr.ph.split
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEffENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1781) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %.lr.ph.split
  %i.lq = load ptr, ptr %i.dv, align 8, !tbaa !207 ; 2 uses
  %i.lr = load ptr, ptr %i.dw, align 8, !tbaa !207 ; 2 uses
  %.not43.i = icmp eq ptr %i.lq, %i.lr
  br i1 %.not43.i, label %_ZL31chanceOfUpdateGroupCrossingCellRK10gmx_mtop_tN3gmx8ArrayRefIKNS2_17RangePartitioningEEEff.exit, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.r
  %i.ls = fdiv nnan float 1.000000e+00, %i.ld
  %i.lt = fmul nnan float %i.ls, 5.000000e-01
  br label %bb.s

bb.s:                                             ; preds = %_ZL31chanceOfUpdateGroupCrossingCellRK13gmx_moltype_tRK14gmx_ffparams_tRKN3gmx17RangePartitioningEff.exit.i, %.lr.ph.i68
  %.045.i = phi float [ 0.000000e+00, %.lr.ph.i68 ], [ %i.yg, %_ZL31chanceOfUpdateGroupCrossingCellRK13gmx_moltype_tRK14gmx_ffparams_tRKN3gmx17RangePartitioningEff.exit.i ]
  %.sroa.015.044.i = phi ptr [ %i.lq, %.lr.ph.i68 ], [ %i.yh, %_ZL31chanceOfUpdateGroupCrossingCellRK13gmx_moltype_tRK14gmx_ffparams_tRKN3gmx17RangePartitioningEff.exit.i ] ; 3 uses
  %i.lu = load i32, ptr %.sroa.015.044.i, align 8, !tbaa !211
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = load ptr, ptr %i.dt, align 8, !tbaa !208
  %i.lx = getelementptr inbounds nuw [2408 x i8], ptr %i.lw, i64 %i.lv ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.015.044.i, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !210
  %i.ma = sitofp i32 %i.lz to float
  %i.mb = getelementptr inbounds [24 x i8], ptr %2, i64 %i.lv ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !216, !noalias !347 ; 3 uses
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = icmp slt i32 %i.md, 0
  br i1 %i.mf, label %.noexc.i.i.i, label %_ZNSt6vectorI19AtomConstraintPropsSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorI19AtomConstraintPropsSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i: ; preds = %bb.s
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.md, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorI19AtomConstraintPropsSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %i.mg = shl nuw nsw i64 %i.me, 3                ; 2 uses
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #29
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc74:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.me
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mh, i8 0, i64 %i.mg, i1 false), !noalias !347
  %i.mj = ptrtoint ptr %i.mi to i64
  br label %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i

_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i: ; preds = %.noexc74, %_ZNSt6vectorI19AtomConstraintPropsSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %.sroa.0130.0.i.i = phi ptr [ null, %_ZNSt6vectorI19AtomConstraintPropsSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ], [ %i.mh, %.noexc74 ] ; 21 uses
  %.sink.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorI19AtomConstraintPropsSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ], [ %i.mj, %.noexc74 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 80
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i, %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i
  %.sroa.038.0.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i ], [ %.sroa.038.1.i.i.i, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i ], [ %.sroa.8.1.i.i.i, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i ] ; 2 uses
  %.sroa.11.0.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i ], [ %.sroa.11.1.i.i.i, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i ] ; 3 uses
  %i.ml = phi ptr [ null, %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i ], [ %i.np, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i ] ; 9 uses
  %i.mm = phi ptr [ null, %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i ], [ %i.nq, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i ] ; 5 uses
  %i.mn = phi ptr [ null, %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i ], [ %i.nr, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i ] ; 6 uses
  %indvars.iv.i.i.i.i = phi i64 [ 0, %_ZNSt12_Vector_baseI19AtomConstraintPropsSaIS0_EEC2EmRKS1_.exit.thread.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i ] ; 5 uses
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.i.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 28
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !235, !noalias !348
  %i.mr = and i32 %i.mq, 4
  %.not.i.i.i.i = icmp eq i32 %i.mr, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ms = getelementptr inbounds nuw [24 x i8], ptr %i.mk, i64 %indvars.iv.i.i.i.i ; 4 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !236, !noalias !348
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !236, !noalias !348
  %i.mw = icmp eq ptr %i.mt, %i.mv
  br i1 %i.mw, label %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mn, %i.mm
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mx = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  store i32 %i.mx, ptr %i.mn, align 8, !tbaa !238, !noalias !348
  %.sroa.617.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
end_hunk_0
