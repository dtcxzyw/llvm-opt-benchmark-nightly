Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calc_verletbuf?download=true
inline.NumInlined: 1121
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL17getVdwDerivativesRK10t_inputrecf:bb.a
  store float %.sroa.553.0, ptr %.sroa.553.0..sroa_idx, align 4, !tbaa !27
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.754.0, ptr %.sroa.754.0..sroa_idx, align 4, !tbaa !27
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sroa.855.0, ptr %.sroa.855.0..sroa_idx, align 4, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !27
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !27
  ret void

bb.s:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ea, %bb.q ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL11energyDriftN3gmx8ArrayRefIK17VerletbufAtomtypeEEPK14gmx_ffparams_tfRK17pot_derivatives_tS9_S9_fffif(ptr %0, ptr %1, ptr nofree noundef nonnull readonly captures(none) %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %10, float noundef %11) unnamed_addr #1 {
bb.a:
  %12 = alloca %struct.pot_derivatives_t, align 16 ; 4 uses
  %13 = alloca %struct.pot_derivatives_t, align 16 ; 4 uses
  %i.a = fcmp oeq float %3, 0.000000e+00
  br i1 %i.a, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = fsub float %9, %7
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.j = fsub float %9, %8
  %i.k = fpext float %11 to double
  %i.l = sitofp i32 %10 to double
  br label %bb.b

._crit_edge114:                                   ; preds = %._crit_edge, %.preheader
  %.077.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.gp, %._crit_edge ] ; 2 uses
  %i.m = tail call double @llvm.fabs.f64(double %.077.lcssa)
  %i.n = fcmp ueq double %i.m, +inf
  br i1 %i.n, label %bb.m, label %bb.n

bb.b:                                             ; preds = %.lr.ph113, %._crit_edge
  %.076112 = phi i64 [ 0, %.lr.ph113 ], [ %i.bh, %._crit_edge ] ; 4 uses
  %.077111 = phi double [ 0.000000e+00, %.lr.ph113 ], [ %i.gp, %._crit_edge ]
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.076112 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !26   ; 2 uses
  %i.r = icmp sgt i16 %i.q, 0
  %.pre.i = load i16, ptr %i.o, align 4, !tbaa !24 ; 2 uses
  br i1 %i.r, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i, label %._ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread_crit_edge.i

._ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread_crit_edge.i: ; preds = %bb.b
  %.pre9.i = sitofp i16 %.pre.i to float
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !23
  %i.u = sitofp i16 %i.t to float                 ; 2 uses
  %i.v = fmul nnan float %i.u, 4.000000e-01
  %i.w = sitofp i16 %.pre.i to float              ; 3 uses
  %i.x = fcmp olt float %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i

bb.c:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = load float, ptr %i.y, align 4, !tbaa !19 ; 2 uses
  %i.aa = fmul float %i.z, %i.u                   ; 2 uses
  %i.ab = fmul float %i.z, %i.w                   ; 2 uses
  %i.ac = fdiv float 1.000000e+00, %i.ab
  %i.ad = fdiv float 1.000000e+00, %i.aa
  %i.ae = fadd float %i.ad, %i.ac                 ; 2 uses
  %i.af = fmul float %i.aa, %i.ae
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.ah = fmul float %3, %i.ag
  %i.ai = fmul float %i.ab, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !25
  %i.al = uitofp nneg i16 %i.q to float
  %i.am = fmul float %i.ak, %i.al
  %i.an = fmul float %i.am, %i.ag                 ; 2 uses
  %i.ao = fmul float %i.an, %i.an                 ; 2 uses
  %i.ap = fdiv float %i.ai, %i.ao                 ; 2 uses
  %i.aq = fcmp ogt float %i.ap, f0x4097CA11
  %.sroa.speculated.i.i = select i1 %i.aq, float f0x4097CA11, float %i.ap ; 4 uses
  %i.ar = fmul float %i.ao, %.sroa.speculated.i.i
  %i.as = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i.i, float f0x3EAAAAAB, float 1.000000e+00)
  %i.at = fmul float %.sroa.speculated.i.i, %.sroa.speculated.i.i
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float f0x3D360B61, float %i.as)
  %i.av = fdiv float %i.ar, %i.au
  %i.aw = fdiv float %3, %i.ae
  br label %.lr.ph

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i, %._ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread_crit_edge.i
  %.pre-phi.i = phi float [ %.pre9.i, %._ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread_crit_edge.i ], [ %i.w, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !19
  %i.az = fmul float %.pre-phi.i, %i.ay
  %i.ba = fmul float %3, %i.az
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i, %bb.c
  %.0107 = phi float [ %i.av, %bb.c ], [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i ] ; 3 uses
  %storemerge.i = phi float [ %i.aw, %bb.c ], [ %i.ba, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i ]
  %i.bb = fadd float %.0107, %storemerge.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 10 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  br label %bb.d

._crit_edge:                                      ; preds = %bb.l
  %i.bh = add nuw nsw i64 %.076112, 1             ; 2 uses
  %exitcond116.not = icmp eq i64 %i.bh, %i.e
  br i1 %exitcond116.not, label %._crit_edge114, label %bb.b, !llvm.loop !318

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.075110 = phi i64 [ %.076112, %.lr.ph ], [ %i.gq, %bb.l ] ; 3 uses
  %.1109 = phi double [ %.077111, %.lr.ph ], [ %i.gp, %bb.l ]
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.075110 ; 13 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !26 ; 2 uses
  %i.bl = icmp sgt i16 %i.bk, 0                   ; 2 uses
  %.pre.i81 = load i16, ptr %i.bi, align 4, !tbaa !24 ; 3 uses
  br i1 %i.bl, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i87, label %._ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread_crit_edge.i82

._ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread_crit_edge.i82: ; preds = %bb.d
  %.pre9.i83 = sitofp i16 %.pre.i81 to float
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i84

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i87: ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !23
  %i.bo = sitofp i16 %i.bn to float               ; 2 uses
  %i.bp = fmul nnan float %i.bo, 4.000000e-01
  %i.bq = sitofp i16 %.pre.i81 to float           ; 3 uses
  %i.br = fcmp olt float %i.bp, %i.bq
  br i1 %i.br, label %bb.e, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i84

bb.e:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i87
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !19 ; 2 uses
  %i.bu = fmul float %i.bt, %i.bo                 ; 2 uses
  %i.bv = fmul float %i.bt, %i.bq                 ; 2 uses
  %i.bw = fdiv float 1.000000e+00, %i.bv
  %i.bx = fdiv float 1.000000e+00, %i.bu
  %i.by = fadd float %i.bx, %i.bw                 ; 2 uses
  %i.bz = fmul float %i.bu, %i.by
  %i.ca = fdiv float 1.000000e+00, %i.bz          ; 2 uses
  %i.cb = fmul float %3, %i.ca
  %i.cc = fmul float %i.bv, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !25
  %i.cf = uitofp nneg i16 %i.bk to float
  %i.cg = fmul float %i.ce, %i.cf
  %i.ch = fmul float %i.cg, %i.ca                 ; 2 uses
  %i.ci = fmul float %i.ch, %i.ch                 ; 2 uses
  %i.cj = fdiv float %i.cc, %i.ci                 ; 2 uses
  %i.ck = fcmp ogt float %i.cj, f0x4097CA11
  %.sroa.speculated.i.i88 = select i1 %i.ck, float f0x4097CA11, float %i.cj ; 4 uses
  %i.cl = fmul float %i.ci, %.sroa.speculated.i.i88
  %i.cm = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i.i88, float f0x3EAAAAAB, float 1.000000e+00)
  %i.cn = fmul float %.sroa.speculated.i.i88, %.sroa.speculated.i.i88
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float f0x3D360B61, float %i.cm)
  %i.cp = fdiv float %i.cl, %i.co
  %i.cq = fdiv float %3, %i.by
  br label %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit89

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i84: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i87, %._ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread_crit_edge.i82
  %.pre-phi.i85 = phi float [ %.pre9.i83, %._ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread_crit_edge.i82 ], [ %i.bq, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i87 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !19
  %i.ct = fmul float %.pre-phi.i85, %i.cs
  %i.cu = fmul float %3, %i.ct
  br label %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit89

_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit89: ; preds = %bb.e, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i84
  %.0108 = phi float [ %i.cp, %bb.e ], [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i84 ] ; 3 uses
  %storemerge.i86 = phi float [ %i.cq, %bb.e ], [ %i.cu, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.thread.i84 ]
  %i.cv = fadd float %i.bb, %.0108
  %i.cw = fadd float %i.cv, %storemerge.i86       ; 3 uses
  %i.cx = load i32, ptr %i.bc, align 4, !tbaa !294
  %i.cy = load i32, ptr %2, align 8, !tbaa !319
  %i.cz = mul nsw i32 %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !294
  %i.dc = add nsw i32 %i.cz, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !256
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.de, i64 %i.dd ; 2 uses
  %14 = load float, ptr %i.df, align 4, !tbaa !17
  %15 = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %16 = load float, ptr %15, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.dg = load <4 x float>, ptr %4, align 4, !tbaa !27
  %i.dh = load <4 x float>, ptr %5, align 4, !tbaa !27
  %17 = insertelement <4 x float> poison, float %16, i64 0
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = fmul <4 x float> %18, %i.dh
  %19 = insertelement <4 x float> poison, float %14, i64 0
  %i.dj = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.dg, <4 x float> %i.di)
  store <4 x float> %i.dk, ptr %12, align 16, !tbaa !27
  %i.dl = load i16, ptr %i.p, align 4, !tbaa !26
  %i.dm = icmp sgt i16 %i.dl, 0
  br i1 %i.dm, label %bb.f, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit

bb.f:                                             ; preds = %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit89
  %i.dn = load i16, ptr %i.bd, align 2, !tbaa !23
  %i.do = sitofp i16 %i.dn to float
  %i.dp = fmul nnan float %i.do, 4.000000e-01
  %i.dq = load i16, ptr %i.o, align 4, !tbaa !24
  %i.dr = sitofp i16 %i.dq to float
  %i.ds = fcmp olt float %i.dp, %i.dr
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit: ; preds = %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit89, %bb.f
  %i.dt = phi i1 [ false, %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit89 ], [ %i.ds, %bb.f ]
  br i1 %i.bl, label %bb.g, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90

bb.g:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !23
  %i.dw = sitofp i16 %i.dv to float
  %i.dx = fmul nnan float %i.dw, 4.000000e-01
  %i.dy = sitofp i16 %.pre.i81 to float
  %i.dz = fcmp olt float %i.dx, %i.dy
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit, %bb.g
  %i.ea = phi i1 [ false, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit ], [ %i.dz, %bb.g ]
  %i.eb = call fastcc noundef float @_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t(i1 noundef zeroext %i.dt, i1 noundef zeroext %i.ea, float noundef %i.cw, float noundef %.0107, float noundef %.0108, float noundef %i.h, ptr noundef %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ec = load float, ptr %i.be, align 4, !tbaa !295
  %i.ed = load i16, ptr %i.bf, align 4, !tbaa !308
  %20 = sitofp i16 %i.ed to float
  %21 = fmul float %i.ec, %20                     ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !295
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !308
  %i.ei = sitofp i16 %i.eh to float
  %22 = load float, ptr %6, align 4, !tbaa !320
  %i.ej = fmul float %22, %21
  %i.ek = fmul float %i.ef, %i.ei                 ; 2 uses
  %23 = load <2 x float>, ptr %i.i, align 4, !tbaa !27
  %i.el = insertelement <2 x float> poison, float %21, i64 0
  %i.em = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.en = fmul float %i.ej, %i.ek
  %i.eo = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.en, i64 0
  %i.ep = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.er = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.es = fmul <4 x float> %i.eq, %i.er
  %i.et = fmul <4 x float> %i.ep, %i.es
  %i.eu = shufflevector <4 x float> %i.eo, <4 x float> %i.et, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  store <4 x float> %i.eu, ptr %13, align 16, !tbaa !27
  %i.ev = load i16, ptr %i.p, align 4, !tbaa !26
  %i.ew = icmp sgt i16 %i.ev, 0
  br i1 %i.ew, label %bb.h, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91

bb.h:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90
  %i.ex = load i16, ptr %i.bd, align 2, !tbaa !23
  %i.ey = sitofp i16 %i.ex to float
  %i.ez = fmul nnan float %i.ey, 4.000000e-01
  %i.fa = load i16, ptr %i.o, align 4, !tbaa !24
  %i.fb = sitofp i16 %i.fa to float
  %i.fc = fcmp olt float %i.ez, %i.fb
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90, %bb.h
  %i.fd = phi i1 [ false, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90 ], [ %i.fc, %bb.h ]
  %i.fe = load i16, ptr %i.bj, align 4, !tbaa !26
  %i.ff = icmp sgt i16 %i.fe, 0
  br i1 %i.ff, label %bb.i, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92

bb.i:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !23
  %i.fi = sitofp i16 %i.fh to float
  %i.fj = fmul nnan float %i.fi, 4.000000e-01
  %i.fk = load i16, ptr %i.bi, align 4, !tbaa !24
  %i.fl = sitofp i16 %i.fk to float
  %i.fm = fcmp olt float %i.fj, %i.fl
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91, %bb.i
  %i.fn = phi i1 [ false, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91 ], [ %i.fm, %bb.i ]
  %i.fo = call fastcc noundef float @_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t(i1 noundef zeroext %i.fd, i1 noundef zeroext %i.fn, float noundef %i.cw, float noundef %.0107, float noundef %.0108, float noundef %i.j, ptr noundef %13)
  %i.fp = fadd float %i.eb, %i.fo
  %i.fq = icmp eq i64 %.075110, %.076112
  %i.fr = load i32, ptr %i.bg, align 4, !tbaa !309 ; 2 uses
  %i.fs = sitofp i32 %i.fr to double              ; 2 uses
  %i.ft = fpext float %i.fp to double
  br i1 %i.fq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92
  %i.fu = add nsw i32 %i.fr, -1
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = fmul nnan double %i.fs, %i.fv
  %i.fx = fmul nnan double %i.fw, 5.000000e-01
  br label %bb.l

bb.k:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !309
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = fmul nnan double %i.fs, %i.ga
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi double [ %i.gb, %bb.k ], [ %i.fx, %bb.j ]
  %i.gc = fmul double %.sink, %i.ft
  %.0 = fptrunc double %i.gc to float
  %i.gd = tail call noundef float @sqrtf(float noundef %i.cw) #26
  %i.ge = fadd float %9, %i.gd                    ; 2 uses
  %i.gf = fmul float %i.ge, %i.ge
  %i.gg = fpext float %i.gf to double
  %i.gh = fmul double %i.gg, f0x402921FB54442D18
  %i.gi = fmul double %i.gh, %i.k
  %i.gj = fdiv double %i.gi, %i.l
  %i.gk = fpext float %.0 to double
  %i.gl = fmul double %i.gj, %i.gk
  %i.gm = fptrunc double %i.gl to float
  %i.gn = tail call noundef float @llvm.fabs.f32(float %i.gm)
  %i.go = fpext float %i.gn to double
  %i.gp = fadd double %.1109, %i.go               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.gq = add nuw nsw i64 %.075110, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !321

bb.m:                                             ; preds = %._crit_edge114
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL11energyDriftN3gmx8ArrayRefIK17VerletbufAtomtypeEEPK14gmx_ffparams_tfRK17pot_derivatives_tS9_S9_fffifENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 875) #25
  unreachable

bb.n:                                             ; preds = %._crit_edge114
  %i.gr = fptrunc double %.077.lcssa to float
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.078 = phi float [ %i.gr, %bb.n ], [ 0.000000e+00, %bb.a ]
  ret float %.078
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL12surface_fraciff(i32 noundef %0, float noundef %1, float noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = fpext float %2 to double                 ; 2 uses
  %i.b = fpext float %1 to double
  %i.c = fmul double %i.b, 5.000000e-01           ; 2 uses
  %i.d = fcmp ogt double %i.c, %i.a
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fdiv double %i.c, %i.a
  %i.f = fptrunc double %i.e to float             ; 2 uses
  switch i32 %0, label %bb.e [
    i32 1, label %bb.k
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = fadd float %i.f, 1.000000e+00
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.h = fpext float %i.f to double               ; 15 uses
  %i.i = fmul double %i.h, f0x3FFBB67AE8584CAA
  %i.j = fmul double %i.i, %i.h
  %i.k = fmul double %i.h, f0x3FD1C71C71C71C72
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.h, double 1.000000e+00)
  %i.m = fmul double %i.h, f0x3FC3E93E93E93E94
  %i.n = fmul double %i.m, %i.h
  %i.o = fmul double %i.n, %i.h
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.l)
  %i.q = fmul double %i.h, f0x3FBC1B1706C5C1B1
  %i.r = fmul double %i.q, %i.h
  %i.s = fmul double %i.r, %i.h
  %i.t = fmul double %i.s, %i.h
  %i.u = fmul double %i.t, %i.h
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.h, double %i.p)
  %i.w = fmul double %i.j, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.h, double f0x4016ED771E041505, double %i.w)
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double f0x3FD45F306DC9C883, double 1.000000e+00)
  %i.z = fptrunc double %i.y to float
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 926) #25
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ac = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.027 = phi float [ %i.z, %bb.d ], [ %i.g, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.ah = uitofp nneg i32 %0 to float
  %i.ai = fdiv float %.027, %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.028 = phi float [ %i.ai, %bb.k ], [ 1.000000e+00, %bb.a ]
  ret float %.028
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL13pressureErrorN3gmx8ArrayRefIK17VerletbufAtomtypeEERK14gmx_ffparams_tRK10t_inputrecfRKSt4pairI17pot_derivatives_tSB_EbifRK18VerletbufListSetupif(ptr %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(888) %3, float noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %5, i1 noundef zeroext %6, i32 noundef %7, float noundef %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %9, i32 noundef %10, float noundef %11) unnamed_addr #16 {
bb.a:
  %12 = alloca %struct.pot_derivatives_t, align 8 ; 5 uses
end_hunk_0
