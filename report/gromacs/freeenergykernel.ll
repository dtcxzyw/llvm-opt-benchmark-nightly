Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/freeenergykernel?download=true
inline.NumInlined: 37607
inline.NumDeleted: 520
loop-unroll.NumCompletelyUnrolled: 1222
loop-unroll.NumUnrolled: 1222
begin_hunk_0_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb1ELb1ELNS_12LJKernelTypeE2ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
bb.n:                                             ; preds = %.preheader.preheader, %bb.c
  %i.nb = phi <2 x float> [ %i.na, %.preheader.preheader ], [ %i.fg, %bb.c ] ; 3 uses
  %i.nc = phi <2 x float> [ %i.mq, %.preheader.preheader ], [ %i.fh, %bb.c ] ; 3 uses
  %i.nd = fcmp uge float %i.hs, %i.ab
  %.not541 = select i1 %i.gv, i1 %i.nd, i1 false
  br i1 %.not541, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %i.ne = fmul float %i.aj, %.sroa.speculated.i
  %i.nf = fmul float %i.aj, %i.ne                 ; 4 uses
  %i.ng = fmul float %i.nf, %i.nf                 ; 7 uses
  %i.nh = tail call noundef float @llvm.fmuladd.f32(float %i.ng, float f0x3BDABBD3, float f0x3EDDE19B)
  %i.ni = tail call noundef float @llvm.fmuladd.f32(float %i.ng, float f0x3DA11218, float 1.000000e+00)
  %i.nj = tail call noundef float @llvm.fmuladd.f32(float %i.nh, float %i.nf, float %i.ni)
  %i.nk = tail call noundef float @llvm.fmuladd.f32(float %i.ng, float f0x32A5C22F, float f0x382E7F32)
  %i.nl = tail call noundef float @llvm.fmuladd.f32(float %i.ng, float f0xB5BEC4D7, float f0xB909B869)
  %i.nm = tail call noundef float @llvm.fmuladd.f32(float %i.nk, float %i.ng, float f0x3D1E57D6)
  %i.nn = tail call noundef float @llvm.fmuladd.f32(float %i.nl, float %i.ng, float f0x3DE71E23)
  %i.no = tail call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.ng, float f0x3F906EC3)
  %i.np = tail call noundef float @llvm.fmuladd.f32(float %i.nn, float %i.nf, float %i.no)
  %i.nq = fdiv float %i.np, %i.nj
  %i.nr = fmul float %i.aj, %i.nq
  %i.ns = select i1 %i.hp, float 5.000000e-01, float 1.000000e+00
  %i.nt = fmul float %i.ns, %i.nr                 ; 4 uses
  %i.nu = fmul float %i.be, %i.fv
  %i.nv = fmul float %i.nt, %i.nu
  %i.nw = extractelement <2 x float> %i.nc, i64 0
  %i.nx = fsub float %i.nw, %i.nv
  %i.ny = fmul float %i.fv, %i.nt
  %i.nz = extractelement <2 x float> %i.nb, i64 0
  %i.oa = fadd float %i.nz, %i.ny
  %i.ob = fmul float %i.dh, %i.fy
  %i.oc = fmul float %i.nt, %i.ob
  %i.od = fsub float %i.nx, %i.oc
  %i.oe = fmul float %i.nt, %i.fy
  %i.of = fsub float %i.oa, %i.oe
  %i.og = insertelement <2 x float> %i.nb, float %i.of, i64 0
  %i.oh = insertelement <2 x float> %i.nc, float %i.od, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.loopexit, %.lr.ph
  %.1445 = phi i1 [ %.0444556, %.lr.ph ], [ true, %bb.n ], [ true, %.loopexit.loopexit ] ; 2 uses
  %i.oi = phi <2 x float> [ %i.fg, %.lr.ph ], [ %i.nb, %bb.n ], [ %i.og, %.loopexit.loopexit ] ; 3 uses
  %i.oj = phi <2 x float> [ %i.fh, %.lr.ph ], [ %i.nc, %bb.n ], [ %i.oh, %.loopexit.loopexit ] ; 3 uses
  %i.ok = add nuw nsw i64 %.0434559, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ok, %i.fb
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !346

bb.o:                                             ; preds = %._crit_edge
  %i.ol = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !88
  %i.on = sext i32 %i.om to i64                   ; 2 uses
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.on ; 2 uses
  %i.op = load float, ptr %i.oo, align 4, !tbaa !44
  %i.oq = extractelement <2 x float> %i.oj, i64 0
  %i.or = fadd float %i.oq, %i.op
  store float %i.or, ptr %i.oo, align 4, !tbaa !44
  %i.os = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.on ; 2 uses
  %i.ot = load float, ptr %i.os, align 4, !tbaa !44
  %i.ou = extractelement <2 x float> %i.oj, i64 1
  %i.ov = fadd float %i.ou, %i.ot
  store float %i.ov, ptr %i.os, align 4, !tbaa !44
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge470, %bb.o, %._crit_edge
  %i.ow = phi <2 x float> [ %i.oi, %._crit_edge ], [ %i.oi, %bb.o ], [ %i.dk, %.critedge470 ] ; 3 uses
  %i.ox = add nuw nsw i64 %.0446566, 1            ; 2 uses
  %exitcond584.not = icmp eq i64 %i.ox, %i.ck
  br i1 %exitcond584.not, label %._crit_edge567, label %.critedge470, !llvm.loop !347

bb.p:                                             ; preds = %._crit_edge567
  %i.oy = load i64, ptr %20, align 8
  %i.oz = inttoptr i64 %i.oy to ptr
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !44
  %i.pc = fadd float %i.di, %i.pb
  store float %i.pc, ptr %i.pa, align 4, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge567
  %i.pd = extractelement <2 x float> %i.ow, i64 1 ; 2 uses
  %i.pe = fcmp une float %i.pd, 0.000000e+00
  br i1 %i.pe, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.pf = load i64, ptr %20, align 8
  %i.pg = inttoptr i64 %i.pf to ptr
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 12 ; 2 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !44
  %i.pj = fadd float %i.pd, %i.pi
  store float %i.pj, ptr %i.ph, align 4, !tbaa !44
  br label %.thread

.thread:                                          ; preds = %.split.us, %bb.r, %bb.q
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !81 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !89
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 -4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !63
  %i.pq = sext i32 %i.pp to i64
  %.not.i.i494 = icmp eq ptr %i.pl, null
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.pq
  %spec.select.i.i495 = select i1 %.not.i.i494, ptr null, ptr %i.pr
  %i.ps = ptrtoint ptr %spec.select.i.i495 to i64
  %i.pt = ptrtoint ptr %i.pl to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = lshr exact i64 %i.pu, 3
  %i.pw = mul i64 %i.pv, 150
  %i.px = add i64 %i.pw, %i.ci
  %i.py = trunc i64 %i.px to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.py)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb1ELb1ELNS_12LJKernelTypeE3ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree noundef readonly align 8 captures(none) dead_on_return %16, ptr nofree noundef captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %i.i = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = load i64, ptr %14, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !105  ; 2 uses
  %i.x = sitofp i32 %i.w to float                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !42
  %i.aa = load float, ptr %i.u, align 4, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69, !range !38, !noundef !39
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !70, !range !38, !noundef !39
  %i.ak = trunc nuw i8 %i.aj to i1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.al = phi i1 [ %i.ah, %bb.b ], [ false, %bb.a ]
  %i.am = phi i1 [ %i.ak, %bb.b ], [ true, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ao = load float, ptr %i.an, align 4, !tbaa !71 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !75 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.as = load <1 x float>, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load float, ptr %i.at, align 8, !tbaa !76 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aw = load <1 x float>, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ay = load <16 x float>, ptr %i.ax, align 4   ; 6 uses
  %i.az = bitcast <16 x float> %i.ay to i512
  %i.ba = lshr i512 %i.az, 352
  %i.bb = trunc i512 %i.ba to i128
  %i.bc = bitcast i128 %i.bb to <4 x float>
  %foldExtExtBinop = fmul <16 x float> %i.ay, %i.ay ; 2 uses
  %i.bd = extractelement <16 x float> %foldExtExtBinop, i64 4 ; 3 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = fdiv float %i.bf, 6.000000e+00          ; 2 uses
  %i.bh = fcmp olt float %i.aq, %i.au
  %i.bi = extractelement <16 x float> %i.ay, i64 9
  %i.bj = select i1 %i.bh, float %i.au, float %i.bi ; 2 uses
  %i.bk = fmul float %i.bj, %i.bj
  %bc = bitcast <16 x float> %i.ay to <4 x i128>
  %i.bl = extractelement <4 x i128> %bc, i64 3
  %i.bm = bitcast i128 %i.bl to <4 x float>
  %i.bn = fsub float 1.000000e+00, %i.q           ; 6 uses
  %.scalar = fsub float 1.000000e+00, %i.s        ; 6 uses
  %i.bo = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.bp = icmp eq i32 %i.w, 2
  %i.bq = fsub float 1.000000e+00, %i.bn          ; 4 uses
  br i1 %i.bp, label %.thread.split.us.preheader, label %.thread.split.preheader

.thread.split.preheader:                          ; preds = %.thread
  %i.br = fsub float 1.000000e+00, %.scalar
  %i.bs = insertelement <4 x float> poison, float %i.x, i64 0
  %21 = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %22 = fdiv <4 x float> %21, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %23 = insertelement <4 x float> %22, float %i.br, i64 0
  %i.bt = extractelement <4 x float> %22, i64 1
  br label %.split.us

.thread.split.us.preheader:                       ; preds = %.thread
  %i.bu = fmul float %i.bq, %i.bq
  %i.bv = fmul float %i.bn, %i.bn
  %i.bw = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.x, i64 1
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.by = fsub <4 x float> %i.bx, %i.bo           ; 3 uses
  %i.bz = fdiv <4 x float> %i.by, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %shift = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1142 = fmul <4 x float> %shift, %i.by
  %i.ca = extractelement <4 x float> %foldExtExtBinop1142, i64 0
  %i.cb = fmul float %.scalar, %.scalar
  %i.cc = insertelement <4 x float> %i.by, float %i.bq, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bn, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %.scalar, i64 3
  %i.cf = fmul <4 x float> %i.bz, %i.ce
  br label %.split.us

.split.us:                                        ; preds = %.thread.split.preheader, %.thread.split.us.preheader
  %.sroa.51083.0 = phi float [ %i.bv, %.thread.split.us.preheader ], [ %i.bn, %.thread.split.preheader ]
  %.sroa.01082.0 = phi float [ %i.bu, %.thread.split.us.preheader ], [ %i.bq, %.thread.split.preheader ]
  %.sroa.51079.0 = phi float [ %i.cb, %.thread.split.us.preheader ], [ %.scalar, %.thread.split.preheader ]
  %.sroa.01076.0 = phi float [ %i.ca, %.thread.split.us.preheader ], [ %i.bt, %.thread.split.preheader ]
  %i.cg = phi <4 x float> [ %i.cf, %.thread.split.us.preheader ], [ %23, %.thread.split.preheader ] ; 4 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.ci = load ptr, ptr %16, align 8, !tbaa !74   ; 32 uses
  %i.cj = ptrtoint ptr %i.l to i64
  %i.ck = sub i64 %i.cj, %i.m                     ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph1011, label %._crit_edge1012

.lr.ph1011:                                       ; preds = %.split.us
  %i.cm = udiv exact i64 %i.ck, 12
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ct = insertelement <16 x float> poison, float %i.bk, i64 0
  %i.cu = shufflevector <16 x float> %i.ct, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cv = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.cw = shufflevector <16 x float> %i.cv, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cx = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cy = insertelement <16 x float> poison, float %i.au, i64 0
  %i.cz = shufflevector <16 x float> %i.cy, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.da = shufflevector <16 x float> %i.ay, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.db = shufflevector <1 x float> %i.aw, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dc = shufflevector <1 x float> %i.as, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dd = shufflevector <4 x float> %i.bc, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.de = shufflevector <16 x float> %foldExtExtBinop, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.df = insertelement <16 x float> poison, float %i.bg, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dh = fmul float %i.bg, 5.000000e-01
  %i.di = insertelement <16 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <16 x float> %i.di, <16 x float> poison, <16 x i32> zeroinitializer
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.51066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dk = insertelement <16 x float> poison, float %.sroa.01082.0, i64 0
  %i.dl = shufflevector <16 x float> %i.dk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dm = shufflevector <4 x float> %i.cg, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dn = insertelement <16 x float> poison, float %.sroa.51083.0, i64 0
  %i.do = shufflevector <16 x float> %i.dn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dp = insertelement <16 x float> poison, float %.sroa.51079.0, i64 0
  %i.dq = shufflevector <16 x float> %i.dp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dr = insertelement <16 x float> poison, float %i.bn, i64 0
  %i.ds = shufflevector <16 x float> %i.dr, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.dt = shufflevector <4 x float> %i.bo, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.du = shufflevector <4 x float> %i.cg, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dv = insertelement <16 x float> poison, float %.sroa.01076.0, i64 0
  %i.dw = shufflevector <16 x float> %i.dv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dx = insertelement <16 x float> poison, float %i.q, i64 0
  %i.dy = shufflevector <16 x float> %i.dx, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.dz = insertelement <16 x float> poison, float %i.s, i64 0
  %i.ea = shufflevector <16 x float> %i.dz, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.eb = shufflevector <4 x float> %i.cg, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ec = shufflevector <4 x float> %i.cg, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge1012:                                  ; preds = %._crit_edge.thread, %.split.us
  %.sroa.0913.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0913.1.lcssa1139, %._crit_edge.thread ] ; 3 uses
  %.sroa.0917.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0917.1.lcssa1140, %._crit_edge.thread ] ; 3 uses
  %i.ed = fcmp one <16 x float> %.sroa.0917.0.lcssa, zeroinitializer
  %i.ee = bitcast <16 x i1> %i.ed to i16
  %.not = icmp eq i16 %i.ee, 0
  br i1 %.not, label %bb.af, label %bb.ae

bb.c:                                             ; preds = %.lr.ph1011, %._crit_edge.thread
  %.06691009 = phi i64 [ 0, %.lr.ph1011 ], [ %i.aog, %._crit_edge.thread ] ; 3 uses
  %.sroa.0917.01008 = phi <16 x float> [ zeroinitializer, %.lr.ph1011 ], [ %.sroa.0917.1.lcssa1140, %._crit_edge.thread ] ; 2 uses
  %.sroa.0913.01007 = phi <16 x float> [ zeroinitializer, %.lr.ph1011 ], [ %.sroa.0913.1.lcssa1139, %._crit_edge.thread ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.06691009 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !78 ; 2 uses
  %i.ei = load ptr, ptr %i.cn, align 8, !tbaa !81 ; 2 uses
  %i.ej = load ptr, ptr %i.co, align 8, !tbaa !83
  %i.ek = getelementptr [4 x i8], ptr %i.ej, i64 %.06691009 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !63 ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !63
  %i.eo = load i32, ptr %i.ef, align 4, !tbaa !84 ; 3 uses
  %i.ep = sext i32 %i.eo to i64                   ; 4 uses
  %i.eq = load i64, ptr %8, align 8               ; 2 uses
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.ep
  %i.et = load float, ptr %i.es, align 4, !tbaa !44
  %i.eu = load i64, ptr %9, align 8               ; 2 uses
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ep
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !44
  %i.ey = load i64, ptr %10, align 8              ; 2 uses
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.ep
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !63
  %i.fc = load i64, ptr %11, align 8              ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.ep
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %.sroa.01073.0.vec.insert = insertelement <16 x i32> poison, i32 %i.eo, i64 0
  %.sroa.01071.0.vec.insert = insertelement <16 x i32> poison, i32 %i.eh, i64 0
  %.sroa.01073.60.vec.insert = shufflevector <16 x i32> %.sroa.01073.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.fg = sext i32 %i.el to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fg ; 4 uses
  %i.fi = sub nsw i32 %i.en, %i.el
  %i.fj = sext i32 %i.fi to i64
  %.not.i.i = icmp eq ptr %i.ei, null
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fj
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fk
  %i.fl = fmul float %i.ao, %i.et
  %i.fm = fmul float %i.ao, %i.ex
  %i.fn = mul nsw i32 %i.fb, %2                   ; 2 uses
  %i.fo = mul nsw i32 %i.ff, %2                   ; 2 uses
  %i.fp = ptrtoint ptr %spec.select.i.i to i64
  %i.fq = ptrtoint ptr %i.fh to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3                 ; 3 uses
  %i.ft = icmp sgt i64 %i.fs, 0
  br i1 %i.ft, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.fu = sext i32 %i.eh to i64
  %i.fv = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !44
  %i.fy = mul nsw i32 %i.eo, 3
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fz ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !44
  %i.gd = fadd float %i.fx, %i.gc
  %i.ge = load <2 x float>, ptr %i.fv, align 4, !tbaa !44
  %i.gf = load <2 x float>, ptr %i.ga, align 4, !tbaa !44
  %i.gg = fadd <2 x float> %i.ge, %i.gf           ; 2 uses
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gi = shufflevector <2 x float> %i.gg, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gj = insertelement <16 x float> poison, float %i.gd, i64 0
  %i.gk = shufflevector <16 x float> %i.gj, <16 x float> poison, <16 x i32> zeroinitializer
  %.pre1119 = load i64, ptr %7, align 8
  %.pre1121 = load i64, ptr %6, align 8           ; 2 uses
  %i.gl = inttoptr i64 %.pre1121 to ptr
  %.pre = load i64, ptr %10, align 8
  %.pre1112 = load i64, ptr %11, align 8
  %.pre1114 = load i64, ptr %8, align 8
  %.pre1116 = load i64, ptr %9, align 8
  %.pre1118 = load i64, ptr %7, align 8
  %.pre1120 = load i64, ptr %6, align 8           ; 2 uses
  %i.gm = inttoptr i64 %.pre1120 to ptr
  br label %bb.d

._crit_edge:                                      ; preds = %bb.z
  br i1 %.1671, label %bb.aa, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.z
  %i.gn = phi ptr [ %i.gl, %.lr.ph ], [ %i.afg, %bb.z ] ; 6 uses
  %i.go = phi i64 [ %.pre1121, %.lr.ph ], [ %i.afh, %bb.z ] ; 2 uses
  %i.gp = phi i64 [ %.pre1119, %.lr.ph ], [ %i.afi, %bb.z ] ; 3 uses
  %i.gq = phi i64 [ %i.eu, %.lr.ph ], [ %i.afj, %bb.z ] ; 3 uses
  %i.gr = phi i64 [ %i.eq, %.lr.ph ], [ %i.afk, %bb.z ] ; 3 uses
  %i.gs = phi i64 [ %i.fc, %.lr.ph ], [ %i.afl, %bb.z ] ; 3 uses
  %i.gt = phi i64 [ %i.ey, %.lr.ph ], [ %i.afm, %bb.z ] ; 3 uses
  %.0670999 = phi i1 [ false, %.lr.ph ], [ %.1671, %bb.z ]
  %.0674998 = phi i64 [ 0, %.lr.ph ], [ %i.afn, %bb.z ] ; 3 uses
  %.sroa.0917.1997 = phi <16 x float> [ %.sroa.0917.01008, %.lr.ph ], [ %.sroa.0917.7, %bb.z ] ; 3 uses
  %.sroa.0913.1996 = phi <16 x float> [ %.sroa.0913.01007, %.lr.ph ], [ %.sroa.0913.7, %bb.z ] ; 3 uses
  %.sroa.0901.0995 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0901.6, %bb.z ] ; 3 uses
  %.sroa.0898.0994 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0898.6, %bb.z ] ; 3 uses
  %.sroa.0895.0993 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0895.2, %bb.z ] ; 3 uses
  %.sroa.0892.0992 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0892.2, %bb.z ] ; 3 uses
  %.sroa.0889.0991 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0889.2, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.0674998
end_hunk_0
begin_hunk_1_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb1ELb1ELNS_12LJKernelTypeE3ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = fmul <2 x float> %i.hb, %i.ph           ; 2 uses
  %i.pj = fmul float %i.hc, %.6                   ; 2 uses
  %i.pk = fadd <2 x float> %i.ex, %i.pi
  %i.pl = fadd float %.0455620, %i.pj
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.gv ; 3 uses
  %i.pn = load <2 x float>, ptr %i.pm, align 4, !tbaa !44
  %i.po = fsub <2 x float> %i.pn, %i.pi
  store <2 x float> %i.po, ptr %i.pm, align 4, !tbaa !44
  %i.pp = getelementptr i8, ptr %i.pm, i64 8      ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !44
  %i.pr = fsub float %i.pq, %i.pj
  store float %i.pr, ptr %i.pp, align 4, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o, %.lr.ph
  %.7496 = phi float [ %.1490613, %.lr.ph ], [ %.6495, %bb.o ], [ %.6495, %.loopexit ] ; 4 uses
  %.7 = phi float [ %.1483614, %.lr.ph ], [ %.6488, %bb.o ], [ %.6488, %.loopexit ] ; 4 uses
  %.1479 = phi i1 [ %.0478615, %.lr.ph ], [ true, %bb.o ], [ true, %.loopexit ] ; 2 uses
  %.6477 = phi float [ %.0471616, %.lr.ph ], [ %.5476, %bb.o ], [ %.5476, %.loopexit ] ; 2 uses
  %.6470 = phi float [ %.0464617, %.lr.ph ], [ %.5469, %bb.o ], [ %.5469, %.loopexit ] ; 2 uses
  %.2457 = phi float [ %.0455620, %.lr.ph ], [ %i.pl, %bb.o ], [ %.0455620, %.loopexit ] ; 3 uses
  %i.ps = phi <2 x float> [ %i.ex, %.lr.ph ], [ %i.pk, %bb.o ], [ %i.ex, %.loopexit ] ; 3 uses
  %i.pt = add nuw nsw i64 %.0453621, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.pt, %i.ev
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !351

bb.q:                                             ; preds = %._crit_edge
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.dx ; 3 uses
  %i.pv = load <2 x float>, ptr %i.pu, align 4, !tbaa !44
  %i.pw = fadd <2 x float> %i.ps, %i.pv
  store <2 x float> %i.pw, ptr %i.pu, align 4, !tbaa !44
  %i.px = getelementptr i8, ptr %i.pu, i64 8      ; 2 uses
  %i.py = load float, ptr %i.px, align 4, !tbaa !44
  %i.pz = fadd float %.2457, %i.py
  store float %i.pz, ptr %i.px, align 4, !tbaa !44
  br i1 %i.aa, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.qa = mul nsw i32 %i.dh, 3
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %17, i64 %i.qb ; 3 uses
  %i.qd = load <2 x float>, ptr %i.qc, align 4, !tbaa !44
  %i.qe = fadd <2 x float> %i.ps, %i.qd
  store <2 x float> %i.qe, ptr %i.qc, align 4, !tbaa !44
  %i.qf = getelementptr i8, ptr %i.qc, i64 8      ; 2 uses
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !44
  %i.qh = fadd float %.2457, %i.qg
  store float %i.qh, ptr %i.qf, align 4, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %i.ab, label %bb.t, label %._crit_edge.thread

bb.t:                                             ; preds = %bb.s
  %i.qi = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !88
  %i.qk = sext i32 %i.qj to i64                   ; 2 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.qk ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !44
  %i.qn = fadd float %.6477, %i.qm
  store float %i.qn, ptr %i.ql, align 4, !tbaa !44
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.qk ; 2 uses
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !44
  %i.qq = fadd float %.6470, %i.qp
  store float %i.qq, ptr %i.qo, align 4, !tbaa !44
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge506, %bb.s, %bb.t, %._crit_edge
  %.1483.lcssa753 = phi float [ %.7, %._crit_edge ], [ %.7, %bb.s ], [ %.7, %bb.t ], [ %.0482630, %.critedge506 ] ; 3 uses
  %.1490.lcssa752 = phi float [ %.7496, %._crit_edge ], [ %.7496, %bb.s ], [ %.7496, %bb.t ], [ %.0489629, %.critedge506 ] ; 3 uses
  %i.qr = add nuw nsw i64 %.0480631, 1            ; 2 uses
  %exitcond654.not = icmp eq i64 %i.qr, %i.ca
  br i1 %exitcond654.not, label %._crit_edge632, label %.critedge506, !llvm.loop !352

bb.u:                                             ; preds = %._crit_edge632
  %i.qs = load i64, ptr %20, align 8
  %i.qt = inttoptr i64 %i.qs to ptr
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !44
  %i.qw = fadd float %.1490.lcssa752, %i.qv
  store float %i.qw, ptr %i.qu, align 4, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge632
  %i.qx = fcmp une float %.1483.lcssa753, 0.000000e+00
  br i1 %i.qx, label %bb.w, label %.thread754

bb.w:                                             ; preds = %bb.v
  %i.qy = load i64, ptr %20, align 8
  %i.qz = inttoptr i64 %i.qy to ptr
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 12 ; 2 uses
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !44
  %i.rc = fadd float %.1483.lcssa753, %i.rb
  store float %i.rc, ptr %i.ra, align 4, !tbaa !44
  br label %.thread754

.thread754:                                       ; preds = %.split.us, %bb.w, %bb.v
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !81 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !89
  %i.rh = getelementptr inbounds i8, ptr %i.rg, i64 -4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !63
  %i.rj = sext i32 %i.ri to i64
  %.not.i.i535 = icmp eq ptr %i.re, null
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %i.rj
  %spec.select.i.i536 = select i1 %.not.i.i535, ptr null, ptr %i.rk
  %i.rl = ptrtoint ptr %spec.select.i.i536 to i64
  %i.rm = ptrtoint ptr %i.re to i64
  %i.rn = sub i64 %i.rl, %i.rm
  %i.ro = lshr exact i64 %i.rn, 3
  %i.rp = mul i64 %i.ro, 150
  %i.rq = add i64 %i.by, %i.rp
  %i.rr = trunc i64 %i.rq to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.rr)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb1ELb1ELNS_12LJKernelTypeE3ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree readnone align 8 captures(none) dead_on_return %16, ptr nofree readnone captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %i.i = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = load i64, ptr %14, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !105  ; 2 uses
  %i.x = sitofp i32 %i.w to float                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !42
  %i.aa = load float, ptr %i.u, align 4, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %_ZL7usingRFRK22CoulombInteractionType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !70, !range !38, !noundef !39
  %i.ah = trunc nuw i8 %i.ag to i1
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

_ZL7usingRFRK22CoulombInteractionType.exit:       ; preds = %bb.b, %bb.a
  %i.ai = phi i1 [ true, %bb.a ], [ %i.ah, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !71 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.am = load float, ptr %i.al, align 8, !tbaa !75 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ao = load <1 x float>, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !76 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.as = load <1 x float>, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.au = load <16 x float>, ptr %i.at, align 4   ; 6 uses
  %i.av = bitcast <16 x float> %i.au to i512
  %i.aw = lshr i512 %i.av, 352
  %i.ax = trunc i512 %i.aw to i128
  %i.ay = bitcast i128 %i.ax to <4 x float>
  %foldExtExtBinop = fmul <16 x float> %i.au, %i.au ; 2 uses
  %i.az = extractelement <16 x float> %foldExtExtBinop, i64 4 ; 3 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = fdiv float %i.bb, 6.000000e+00          ; 2 uses
  %i.bd = fcmp olt float %i.am, %i.aq
  %i.be = extractelement <16 x float> %i.au, i64 9
  %i.bf = select i1 %i.bd, float %i.aq, float %i.be ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf
  %bc = bitcast <16 x float> %i.au to <4 x i128>
  %i.bh = extractelement <4 x i128> %bc, i64 3
  %i.bi = bitcast i128 %i.bh to <4 x float>
  %i.bj = fsub float 1.000000e+00, %i.q           ; 6 uses
  %.scalar = fsub float 1.000000e+00, %i.s        ; 6 uses
  %i.bk = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.bl = icmp eq i32 %i.w, 2
  %i.bm = fsub float 1.000000e+00, %i.bj          ; 4 uses
  br i1 %i.bl, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bn = fsub float 1.000000e+00, %.scalar
  %i.bo = insertelement <4 x float> poison, float %i.x, i64 0
  %21 = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %22 = fdiv <4 x float> %21, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %23 = insertelement <4 x float> %22, float %i.bn, i64 0
  %i.bp = extractelement <4 x float> %22, i64 1
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bq = fmul float %i.bm, %i.bm
  %i.br = fmul float %i.bj, %i.bj
  %i.bs = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.x, i64 1
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bu = fsub <4 x float> %i.bt, %i.bk           ; 3 uses
  %i.bv = fdiv <4 x float> %i.bu, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %shift = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop968 = fmul <4 x float> %shift, %i.bu
  %i.bw = extractelement <4 x float> %foldExtExtBinop968, i64 0
  %i.bx = fmul float %.scalar, %.scalar
  %i.by = insertelement <4 x float> %i.bu, float %i.bm, i64 1
  %i.bz = insertelement <4 x float> %i.by, float %i.bj, i64 2
  %i.ca = insertelement <4 x float> %i.bz, float %.scalar, i64 3
  %i.cb = fmul <4 x float> %i.bv, %i.ca
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.5923.0 = phi float [ %i.br, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bj, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.0922.0 = phi float [ %i.bq, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bm, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.5919.0 = phi float [ %i.bx, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %.scalar, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.0916.0 = phi float [ %i.bw, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bp, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.cc = phi <4 x float> [ %i.cb, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %23, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.ce = ptrtoint ptr %i.l to i64
  %i.cf = sub i64 %i.ce, %i.m                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph857, label %._crit_edge858

.lr.ph857:                                        ; preds = %.split.us
  %i.ch = udiv exact i64 %i.cf, 12
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !81 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.cj, null
  %i.cm = load i64, ptr %8, align 8
  %i.cn = inttoptr i64 %i.cm to ptr               ; 2 uses
  %i.co = load i64, ptr %9, align 8
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = load i64, ptr %10, align 8
  %i.cr = inttoptr i64 %i.cq to ptr               ; 3 uses
  %i.cs = load i64, ptr %11, align 8
  %i.ct = inttoptr i64 %i.cs to ptr               ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.cw = load i64, ptr %7, align 8
  %i.cx = inttoptr i64 %i.cw to ptr               ; 2 uses
  %i.cy = load i64, ptr %6, align 8
  %i.cz = inttoptr i64 %i.cy to ptr               ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.dc = insertelement <16 x float> poison, float %i.bg, i64 0
  %i.dd = shufflevector <16 x float> %i.dc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.df = insertelement <16 x float> poison, float %i.am, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dh = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.di = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.dj = shufflevector <16 x float> %i.di, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dk = shufflevector <16 x float> %i.au, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dl = shufflevector <1 x float> %i.as, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dm = shufflevector <1 x float> %i.ao, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dn = shufflevector <4 x float> %i.ay, <4 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.do = shufflevector <16 x float> %foldExtExtBinop, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.dp = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.dq = shufflevector <16 x float> %i.dp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dr = fmul float %i.bc, 5.000000e-01
  %i.ds = insertelement <16 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <16 x float> %i.ds, <16 x float> poison, <16 x i32> zeroinitializer
  %i.du = load i64, ptr %18, align 8
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i64, ptr %19, align 8
  %i.dx = inttoptr i64 %i.dw to ptr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.5909.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dy = insertelement <16 x float> poison, float %.sroa.0922.0, i64 0
  %i.dz = shufflevector <16 x float> %i.dy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ea = shufflevector <4 x float> %i.cc, <4 x float> poison, <16 x i32> zeroinitializer
  %i.eb = insertelement <16 x float> poison, float %.sroa.5923.0, i64 0
  %i.ec = shufflevector <16 x float> %i.eb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ed = insertelement <16 x float> poison, float %.sroa.5919.0, i64 0
  %i.ee = shufflevector <16 x float> %i.ed, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ef = insertelement <16 x float> poison, float %i.bj, i64 0
  %i.eg = shufflevector <16 x float> %i.ef, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.eh = shufflevector <4 x float> %i.bk, <4 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ei = shufflevector <4 x float> %i.cc, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ej = insertelement <16 x float> poison, float %.sroa.0916.0, i64 0
  %i.ek = shufflevector <16 x float> %i.ej, <16 x float> poison, <16 x i32> zeroinitializer
  %i.el = insertelement <16 x float> poison, float %i.q, i64 0
  %i.em = shufflevector <16 x float> %i.el, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.en = insertelement <16 x float> poison, float %i.s, i64 0
  %i.eo = shufflevector <16 x float> %i.en, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ep = shufflevector <4 x float> %i.cc, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.eq = shufflevector <4 x float> %i.cc, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge858:                                   ; preds = %._crit_edge.thread, %.split.us
  %.sroa.0772.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0772.1.lcssa965, %._crit_edge.thread ] ; 3 uses
  %.sroa.0776.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0776.1.lcssa966, %._crit_edge.thread ] ; 3 uses
  %i.er = fcmp one <16 x float> %.sroa.0776.0.lcssa, zeroinitializer
  %i.es = bitcast <16 x i1> %i.er to i16
  %.not = icmp eq i16 %i.es, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.c:                                             ; preds = %.lr.ph857, %._crit_edge.thread
  %.0590855 = phi i64 [ 0, %.lr.ph857 ], [ %i.zc, %._crit_edge.thread ] ; 3 uses
  %.sroa.0776.0854 = phi <16 x float> [ zeroinitializer, %.lr.ph857 ], [ %.sroa.0776.1.lcssa966, %._crit_edge.thread ] ; 2 uses
  %.sroa.0772.0853 = phi <16 x float> [ zeroinitializer, %.lr.ph857 ], [ %.sroa.0772.1.lcssa965, %._crit_edge.thread ] ; 2 uses
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.0590855 ; 3 uses
  %i.eu = getelementptr [4 x i8], ptr %i.cl, i64 %.0590855 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !63 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eu, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !63
  %i.ey = load i32, ptr %i.et, align 4, !tbaa !84 ; 3 uses
  %i.ez = sext i32 %i.ey to i64                   ; 4 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !44
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ez
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !44
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ez
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.ez
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !63
  %.sroa.0914.0.vec.insert = insertelement <16 x i32> poison, i32 %i.ey, i64 0
  %.sroa.0914.60.vec.insert = shufflevector <16 x i32> %.sroa.0914.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fi = sext i32 %i.ev to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.fi ; 4 uses
  %i.fk = sub nsw i32 %i.ex, %i.ev
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fl
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fm
  %i.fn = fmul float %i.ak, %i.fb
  %i.fo = fmul float %i.ak, %i.fd
  %i.fp = mul nsw i32 %i.ff, %2                   ; 2 uses
  %i.fq = mul nsw i32 %i.fh, %2                   ; 2 uses
  %i.fr = ptrtoint ptr %spec.select.i.i to i64
  %i.fs = ptrtoint ptr %i.fj to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 3                 ; 3 uses
  %i.fv = icmp sgt i64 %i.fu, 0
  br i1 %i.fv, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.fw = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !78
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !44
  %i.gc = mul nsw i32 %i.ey, 3
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !44
  %i.gh = fadd float %i.gb, %i.gg
  %i.gi = load <2 x float>, ptr %i.fz, align 4, !tbaa !44
  %i.gj = load <2 x float>, ptr %i.ge, align 4, !tbaa !44
  %i.gk = fadd <2 x float> %i.gi, %i.gj           ; 2 uses
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gm = shufflevector <2 x float> %i.gk, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gn = insertelement <16 x float> poison, float %i.gh, i64 0
  %i.go = shufflevector <16 x float> %i.gn, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit804
  %i.gp = select i1 %.1592, i1 %i.ai, i1 false
  br i1 %i.gp, label %bb.y, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %.loopexit804
  %.0591848 = phi i1 [ false, %.lr.ph ], [ %.1592, %.loopexit804 ]
  %.0594847 = phi i64 [ 0, %.lr.ph ], [ %i.yb, %.loopexit804 ] ; 3 uses
  %.sroa.0776.1846 = phi <16 x float> [ %.sroa.0776.0854, %.lr.ph ], [ %.sroa.0776.7, %.loopexit804 ] ; 3 uses
  %.sroa.0772.1845 = phi <16 x float> [ %.sroa.0772.0853, %.lr.ph ], [ %.sroa.0772.7, %.loopexit804 ] ; 3 uses
  %.sroa.0762.0844 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0762.6, %.loopexit804 ] ; 3 uses
  %.sroa.0759.0843 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0759.6, %.loopexit804 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.0594847
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val646795 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.gr = mul <16 x i32> %.val646795, splat (i32 3) ; 3 uses
  %i.gs = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cd, <16 x i32> %i.gr, <16 x i1> splat (i1 true), i32 4)
  %i.gt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.da, <16 x i32> %i.gr, <16 x i1> splat (i1 true), i32 4)
  %i.gu = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.db, <16 x i32> %i.gr, <16 x i1> splat (i1 true), i32 4)
  %.val653 = load <16 x float>, ptr %i.a, align 64, !tbaa !57
  %.val652 = load <16 x float>, ptr %i.b, align 64, !tbaa !57 ; 2 uses
  %i.gv = fcmp one <16 x float> %.val652, zeroinitializer ; 6 uses
  %i.gw = fcmp oeq <16 x float> %.val652, zeroinitializer
end_hunk_1
begin_hunk_2_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb1ELb0ELNS_12LJKernelTypeE3ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  store float %i.pp, ptr %i.pn, align 4, !tbaa !44
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge473, %bb.p, %._crit_edge
  %.1444.lcssa709 = phi i8 [ %.3446, %._crit_edge ], [ %.3446, %bb.p ], [ %.0443583, %.critedge473 ] ; 2 uses
  %i.pq = phi <2 x float> [ %i.pf, %._crit_edge ], [ %i.pf, %bb.p ], [ %i.dt, %.critedge473 ] ; 3 uses
  %i.pr = add nuw nsw i64 %.0442584, 1            ; 2 uses
  %exitcond605.not = icmp eq i64 %i.pr, %i.ch
  br i1 %exitcond605.not, label %._crit_edge585, label %.critedge473, !llvm.loop !403

bb.q:                                             ; preds = %._crit_edge585
  %i.ps = load i64, ptr %20, align 8
  %i.pt = inttoptr i64 %i.ps to ptr
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !44
  %i.pw = fadd float %i.dr, %i.pv
  store float %i.pw, ptr %i.pu, align 4, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge585
  %i.px = extractelement <2 x float> %i.pq, i64 1 ; 2 uses
  %i.py = fcmp une float %i.px, 0.000000e+00
  br i1 %i.py, label %bb.s, label %.thread739

bb.s:                                             ; preds = %bb.r
  %i.pz = load i64, ptr %20, align 8
  %i.qa = inttoptr i64 %i.pz to ptr
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 12 ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !44
  %i.qd = fadd float %i.px, %i.qc
  store float %i.qd, ptr %i.qb, align 4, !tbaa !44
  br label %.thread739

.thread739:                                       ; preds = %.split.us, %bb.s, %bb.r
  %.0443.lcssa700742 = phi i1 [ %i.dq, %bb.r ], [ %i.dq, %bb.s ], [ false, %.split.us ]
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !81 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !89
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 -4
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !63
  %i.qk = sext i32 %i.qj to i64
  %.not.i.i497 = icmp eq ptr %i.qf, null
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.qk
  %spec.select.i.i498 = select i1 %.not.i.i497, ptr null, ptr %i.ql
  %i.qm = ptrtoint ptr %spec.select.i.i498 to i64
  %i.qn = ptrtoint ptr %i.qf to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = lshr exact i64 %i.qo, 3
  %i.qq = mul i64 %i.qp, 150
  %i.qr = add i64 %i.cf, %i.qq
  %i.qs = trunc i64 %i.qr to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.qs)
  %or.cond550 = select i1 %i.av, i1 %.0443.lcssa700742, i1 false
  br i1 %or.cond550, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %.thread739
  %i.qt = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.4)
          to label %bb.u unwind label %.thread541

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.v unwind label %.thread546

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %23, align 8, !tbaa !59
  %i.qu = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb1ELb0ELNS_12LJKernelTypeE3ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_, ptr %i.qu, align 8, !tbaa !94
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !94
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 1338, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !63
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.qt, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr %i.qt, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #21
          to label %bb.ab unwind label %bb.x

.thread541:                                       ; preds = %bb.t
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread546:                                       ; preds = %bb.u
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  br label %.sink.split

bb.x:                                             ; preds = %bb.v, %bb.w
  %.0 = phi i1 [ false, %bb.w ], [ true, %bb.v ]
  %i.qx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %.0, label %bb.y, label %bb.z

.sink.split:                                      ; preds = %.thread541, %.thread546
  %.pn.pn545.ph = phi { ptr, i32 } [ %i.qw, %.thread546 ], [ %i.qv, %.thread541 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %.pn.pn545 = phi { ptr, i32 } [ %i.qx, %bb.x ], [ %.pn.pn545.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.qt) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn544 = phi { ptr, i32 } [ %.pn.pn545, %bb.y ], [ %i.qx, %bb.x ]
  resume { ptr, i32 } %.pn.pn544

bb.aa:                                            ; preds = %.thread739
  ret void

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb1ELNS_12LJKernelTypeE0ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree noundef readonly align 8 captures(none) dead_on_return %16, ptr nofree noundef captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = load i64, ptr %14, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !105  ; 2 uses
  %i.w = sitofp i32 %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !42
  %i.z = load float, ptr %i.t, align 4, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !106 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !69, !range !38, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !70, !range !38, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.ak = phi i1 [ %i.ag, %bb.b ], [ false, %bb.a ]
  %i.al = phi i1 [ %i.aj, %bb.b ], [ true, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.an = load float, ptr %i.am, align 4, !tbaa !71 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !75 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !76 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.at = load <1 x float>, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = load <16 x float>, ptr %i.au, align 4   ; 4 uses
  %i.aw = bitcast <16 x float> %i.av to i512
  %i.ax = lshr i512 %i.aw, 352
  %i.ay = trunc i512 %i.ax to i128
  %i.az = bitcast i128 %i.ay to <4 x float>
  %i.ba = fcmp olt float %i.ap, %i.ar
  %i.bb = extractelement <16 x float> %i.av, i64 9
  %i.bc = select i1 %i.ba, float %i.ar, float %i.bb ; 2 uses
  %i.bd = fmul float %i.bc, %i.bc
  %bc = bitcast <16 x float> %i.av to <4 x i128>
  %i.be = extractelement <4 x i128> %bc, i64 3
  %i.bf = bitcast i128 %i.be to <4 x float>
  %i.bg = fsub float 1.000000e+00, %i.r           ; 3 uses
  %i.bh = icmp eq i32 %i.v, 2
  %.scalar = fsub float 1.000000e+00, %i.p        ; 4 uses
  %i.bi = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.bj = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.w, i64 1
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bl = fsub <4 x float> %i.bk, %i.bi           ; 4 uses
  br i1 %i.bh, label %.thread.split.us.preheader, label %.thread.split.preheader

.thread.split.preheader:                          ; preds = %.thread
  %i.bm = fdiv <4 x float> %i.bl, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %21 = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bn = extractelement <4 x float> %i.bm, i64 1
  br label %.split.us

.thread.split.us.preheader:                       ; preds = %.thread
  %i.bo = fsub float 1.000000e+00, %i.bg
  %i.bp = fmul float %.scalar, %.scalar
  %i.bq = fdiv <4 x float> %i.bl, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %i.br = extractelement <4 x float> %i.bq, i64 1
  %i.bs = fmul float %i.br, %i.bo
  %i.bt = shufflevector <4 x float> %i.bl, <4 x float> %i.bi, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float %i.bg, i64 3
  %i.bv = fmul <4 x float> %i.bq, %i.bu
  br label %.split.us

.split.us:                                        ; preds = %.thread.split.preheader, %.thread.split.us.preheader
  %.sroa.5970.0 = phi float [ %i.bp, %.thread.split.us.preheader ], [ %.scalar, %.thread.split.preheader ]
  %.sroa.0965.0 = phi float [ %i.bs, %.thread.split.us.preheader ], [ %i.bn, %.thread.split.preheader ]
  %i.bw = phi <4 x float> [ %i.bv, %.thread.split.us.preheader ], [ %21, %.thread.split.preheader ] ; 4 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.by = load ptr, ptr %16, align 8, !tbaa !74   ; 32 uses
  %i.bz = ptrtoint ptr %i.k to i64
  %i.ca = sub i64 %i.bz, %i.l                     ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph910, label %._crit_edge911

.lr.ph910:                                        ; preds = %.split.us
  %i.cc = udiv exact i64 %i.ca, 12
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cj = insertelement <16 x float> poison, float %i.bd, i64 0
  %i.ck = shufflevector <16 x float> %i.cj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cl = insertelement <16 x float> poison, float %i.ap, i64 0
  %i.cm = shufflevector <16 x float> %i.cl, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cn = shufflevector <4 x float> %i.bf, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.co = insertelement <16 x float> poison, float %i.ar, i64 0
  %i.cp = shufflevector <16 x float> %i.co, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cq = shufflevector <16 x float> %i.av, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cr = shufflevector <1 x float> %i.at, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cs = shufflevector <4 x float> %i.az, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %.sroa.5955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ct = shufflevector <4 x float> %i.bw, <4 x float> poison, <16 x i32> zeroinitializer
  %i.cu = insertelement <16 x float> poison, float %.sroa.5970.0, i64 0
  %i.cv = shufflevector <16 x float> %i.cu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cw = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.cx = insertelement <16 x float> poison, float %i.bg, i64 0
  %i.cy = shufflevector <16 x float> %i.cx, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.cz = shufflevector <4 x float> %i.bw, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.da = insertelement <16 x float> poison, float %.sroa.0965.0, i64 0
  %i.db = shufflevector <16 x float> %i.da, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dc = insertelement <16 x float> poison, float %i.p, i64 0
  %i.dd = shufflevector <16 x float> %i.dc, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.de = insertelement <16 x float> poison, float %i.r, i64 0
  %i.df = shufflevector <16 x float> %i.de, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dg = shufflevector <4 x float> %i.bw, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.dh = shufflevector <4 x float> %i.bw, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge911:                                   ; preds = %._crit_edge.thread, %.split.us
  %.sroa.0824.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0824.1.lcssa1008, %._crit_edge.thread ] ; 3 uses
  %.sroa.0827.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0827.1.lcssa1009, %._crit_edge.thread ] ; 3 uses
  %i.di = fcmp one <16 x float> %.sroa.0827.0.lcssa, zeroinitializer
  %i.dj = bitcast <16 x i1> %i.di to i16
  %.not = icmp eq i16 %i.dj, 0
  br i1 %.not, label %bb.af, label %bb.ae

bb.c:                                             ; preds = %.lr.ph910, %._crit_edge.thread
  %.0595908 = phi i64 [ 0, %.lr.ph910 ], [ %i.aja, %._crit_edge.thread ] ; 3 uses
  %.sroa.0827.0907 = phi <16 x float> [ zeroinitializer, %.lr.ph910 ], [ %.sroa.0827.1.lcssa1009, %._crit_edge.thread ] ; 2 uses
  %.sroa.0824.0906 = phi <16 x float> [ zeroinitializer, %.lr.ph910 ], [ %.sroa.0824.1.lcssa1008, %._crit_edge.thread ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.0595908 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !78 ; 2 uses
  %i.dn = load ptr, ptr %i.cd, align 8, !tbaa !81 ; 2 uses
  %i.do = load ptr, ptr %i.ce, align 8, !tbaa !83
  %i.dp = getelementptr [4 x i8], ptr %i.do, i64 %.0595908 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !63 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !63
  %i.dt = load i32, ptr %i.dk, align 4, !tbaa !84 ; 3 uses
  %i.du = sext i32 %i.dt to i64                   ; 4 uses
  %i.dv = load i64, ptr %8, align 8
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.du
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !44
  %i.dz = load i64, ptr %9, align 8
  %i.ea = inttoptr i64 %i.dz to ptr               ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.du
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !44
  %i.ed = load i64, ptr %10, align 8
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.du
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !63
  %i.eh = load i64, ptr %11, align 8
  %i.ei = inttoptr i64 %i.eh to ptr               ; 3 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.du
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !63
  %.sroa.0962.0.vec.insert = insertelement <16 x i32> poison, i32 %i.dt, i64 0
  %.sroa.0960.0.vec.insert = insertelement <16 x i32> poison, i32 %i.dm, i64 0
  %.sroa.0962.60.vec.insert = shufflevector <16 x i32> %.sroa.0962.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.el = sext i32 %i.dq to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.el ; 4 uses
  %i.en = sub nsw i32 %i.ds, %i.dq
  %i.eo = sext i32 %i.en to i64
  %.not.i.i = icmp eq ptr %i.dn, null
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eo
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.ep
  %i.eq = fmul float %i.an, %i.dy
  %i.er = fmul float %i.an, %i.ec
  %i.es = mul nsw i32 %i.eg, %2                   ; 2 uses
  %i.et = mul nsw i32 %i.ek, %2                   ; 2 uses
  %i.eu = ptrtoint ptr %spec.select.i.i to i64
  %i.ev = ptrtoint ptr %i.em to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3                 ; 3 uses
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.ez = sext i32 %i.dm to i64
  %i.fa = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !44
  %i.fd = mul nsw i32 %i.dt, 3
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.fe ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !44
  %i.fi = fadd float %i.fc, %i.fh
  %i.fj = load <2 x float>, ptr %i.fa, align 4, !tbaa !44
  %i.fk = load <2 x float>, ptr %i.ff, align 4, !tbaa !44
  %i.fl = fadd <2 x float> %i.fj, %i.fk           ; 2 uses
  %i.fm = load i64, ptr %6, align 8               ; 2 uses
  %i.fn = inttoptr i64 %i.fm to ptr               ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fl, <2 x float> poison, <16 x i32> zeroinitializer
  %i.fp = shufflevector <2 x float> %i.fl, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.fq = insertelement <16 x float> poison, float %i.fi, i64 0
  %i.fr = shufflevector <16 x float> %i.fq, <16 x float> poison, <16 x i32> zeroinitializer
  %.cast = inttoptr i64 %i.fm to ptr              ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.cast, i64 4 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.z
  br i1 %.1597, label %bb.aa, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.z
  %.0596898 = phi i1 [ false, %.lr.ph ], [ %.1597, %bb.z ]
  %.0600897 = phi i64 [ 0, %.lr.ph ], [ %i.aah, %bb.z ] ; 3 uses
  %.sroa.0827.1896 = phi <16 x float> [ %.sroa.0827.0907, %.lr.ph ], [ %.sroa.0827.7, %bb.z ] ; 3 uses
  %.sroa.0824.1895 = phi <16 x float> [ %.sroa.0824.0906, %.lr.ph ], [ %.sroa.0824.5, %bb.z ] ; 3 uses
  %.sroa.0812.0894 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0812.6, %bb.z ] ; 3 uses
  %.sroa.0810.0893 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0810.4, %bb.z ] ; 3 uses
  %.sroa.0807.0892 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0807.2, %bb.z ] ; 3 uses
  %.sroa.0804.0891 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0804.2, %bb.z ] ; 3 uses
  %.sroa.0801.0890 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0801.2, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.0600897
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val652849 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.fu = mul <16 x i32> %.val652849, splat (i32 3) ; 19 uses
  %i.fv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bx, <16 x i32> %i.fu, <16 x i1> splat (i1 true), i32 4)
  %i.fw = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ch, <16 x i32> %i.fu, <16 x i1> splat (i1 true), i32 4)
  %i.fx = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ci, <16 x i32> %i.fu, <16 x i1> splat (i1 true), i32 4)
  %.val659 = load <16 x float>, ptr %i.a, align 64, !tbaa !57
  %.val658 = load <16 x float>, ptr %i.b, align 64, !tbaa !57 ; 2 uses
  %i.fy = fcmp one <16 x float> %.val658, zeroinitializer ; 6 uses
  %i.fz = fcmp oeq <16 x float> %.val658, zeroinitializer
  %i.ga = fcmp one <16 x float> %.val659, zeroinitializer
  %i.gb = and <16 x i1> %i.ga, %i.fz              ; 2 uses
  %i.gc = fsub <16 x float> %i.fo, %i.fv          ; 3 uses
  %i.gd = fsub <16 x float> %i.fp, %i.fw          ; 3 uses
  %i.ge = fsub <16 x float> %i.fr, %i.fx          ; 3 uses
  %i.gf = fmul <16 x float> %i.gc, %i.gc
  %i.gg = fmul <16 x float> %i.gd, %i.gd
  %i.gh = fadd <16 x float> %i.gf, %i.gg
  %i.gi = fmul <16 x float> %i.ge, %i.ge
  %i.gj = fadd <16 x float> %i.gh, %i.gi          ; 2 uses
  %i.gk = fcmp olt <16 x float> %i.gj, %i.ck      ; 4 uses
  %i.gl = or <16 x i1> %i.gb, %i.gk
  %i.gm = bitcast <16 x i1> %i.gl to i16
  %.not850 = icmp eq i16 %i.gm, 0
  br i1 %.not850, label %bb.z, label %.preheader862.preheader

bb.f:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 21 uses
  %i.gn = or disjoint i64 %.0600897, %indvars.iv  ; 2 uses
  %i.go = icmp slt i64 %i.gn, %i.ex
  br i1 %i.go, label %bb.g, label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.f
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.gp, align 4, !tbaa !44
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.gn ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i8, ptr %i.gr, align 4, !tbaa !86, !range !38, !noundef !39
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = uitofp i1 %i.gt to float
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.gu, ptr %i.gv, align 4, !tbaa !44
  %i.gw = load i32, ptr %i.gq, align 4, !tbaa !87 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !63
  %i.gy = sext i32 %i.gw to i64                   ; 4 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !63
  %i.hb = add nsw i32 %i.ha, %i.es                ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb1ELNS_12LJKernelTypeE0ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.6452 = phi float [ %.4450, %bb.j ], [ %i.lv, %.loopexit.loopexit ] ; 2 uses
  %.5 = phi float [ %.3434, %bb.j ], [ %i.lr, %.loopexit.loopexit ] ; 2 uses
  %.4 = phi float [ %.2410, %bb.j ], [ %i.lt, %.loopexit.loopexit ] ; 3 uses
  %i.lw = fcmp une float %.4, 0.000000e+00
  br i1 %i.lw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.lx = insertelement <2 x float> poison, float %.4, i64 0
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = fmul <2 x float> %i.gd, %i.ly           ; 2 uses
  %i.ma = fmul float %i.ge, %.4                   ; 2 uses
  %i.mb = fadd <2 x float> %i.ed, %i.lz
  %i.mc = fadd float %.0417564, %i.ma
  %i.md = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.fx ; 3 uses
  %i.me = load <2 x float>, ptr %i.md, align 4, !tbaa !44
  %i.mf = fsub <2 x float> %i.me, %i.lz
  store <2 x float> %i.mf, ptr %i.md, align 4, !tbaa !44
  %i.mg = getelementptr i8, ptr %i.md, i64 8      ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !44
  %i.mi = fsub float %i.mh, %i.ma
  store float %i.mi, ptr %i.mg, align 4, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k, %.lr.ph
  %.7 = phi float [ %.1447557, %.lr.ph ], [ %.6452, %bb.k ], [ %.6452, %.loopexit ] ; 4 uses
  %.5445 = phi float [ %.1441558, %.lr.ph ], [ %.4444, %bb.k ], [ %.4444, %.loopexit ] ; 4 uses
  %.1437 = phi i1 [ %.0436559, %.lr.ph ], [ true, %bb.k ], [ true, %.loopexit ] ; 2 uses
  %.6 = phi float [ %.0431560, %.lr.ph ], [ %.5, %bb.k ], [ %.5, %.loopexit ] ; 2 uses
  %.4430 = phi float [ %.0426561, %.lr.ph ], [ %.3429, %bb.k ], [ %.3429, %.loopexit ] ; 2 uses
  %.2419 = phi float [ %.0417564, %.lr.ph ], [ %i.mc, %bb.k ], [ %.0417564, %.loopexit ] ; 3 uses
  %i.mj = phi <2 x float> [ %i.ed, %.lr.ph ], [ %i.mb, %bb.k ], [ %i.ed, %.loopexit ] ; 3 uses
  %i.mk = add nuw nsw i64 %.0415565, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.mk, %i.eb
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !407

bb.m:                                             ; preds = %._crit_edge
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.dd ; 3 uses
  %i.mm = load <2 x float>, ptr %i.ml, align 4, !tbaa !44
  %i.mn = fadd <2 x float> %i.mj, %i.mm
  store <2 x float> %i.mn, ptr %i.ml, align 4, !tbaa !44
  %i.mo = getelementptr i8, ptr %i.ml, i64 8      ; 2 uses
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !44
  %i.mq = fadd float %.2419, %i.mp
  store float %i.mq, ptr %i.mo, align 4, !tbaa !44
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mr = mul nsw i32 %i.cn, 3
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %17, i64 %i.ms ; 3 uses
  %i.mu = load <2 x float>, ptr %i.mt, align 4, !tbaa !44
  %i.mv = fadd <2 x float> %i.mj, %i.mu
  store <2 x float> %i.mv, ptr %i.mt, align 4, !tbaa !44
  %i.mw = getelementptr i8, ptr %i.mt, i64 8      ; 2 uses
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !44
  %i.my = fadd float %.2419, %i.mx
  store float %i.my, ptr %i.mw, align 4, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.ad, label %bb.p, label %._crit_edge.thread

bb.p:                                             ; preds = %bb.o
  %i.mz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !88
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.nb ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !44
  %i.ne = fadd float %.6, %i.nd
  store float %i.ne, ptr %i.nc, align 4, !tbaa !44
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.nb ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !44
  %i.nh = fadd float %.4430, %i.ng
  store float %i.nh, ptr %i.nf, align 4, !tbaa !44
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge, %bb.o, %bb.p, %._crit_edge
  %.1441.lcssa677 = phi float [ %.5445, %._crit_edge ], [ %.5445, %bb.o ], [ %.5445, %bb.p ], [ %.0440574, %.critedge ] ; 3 uses
  %.1447.lcssa676 = phi float [ %.7, %._crit_edge ], [ %.7, %bb.o ], [ %.7, %bb.p ], [ %.0446573, %.critedge ] ; 3 uses
  %i.ni = add nuw nsw i64 %.0438575, 1            ; 2 uses
  %exitcond594.not = icmp eq i64 %i.ni, %i.bp
  br i1 %exitcond594.not, label %._crit_edge576, label %.critedge, !llvm.loop !408

bb.q:                                             ; preds = %._crit_edge576
  %i.nj = load i64, ptr %20, align 8
  %i.nk = inttoptr i64 %i.nj to ptr
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !44
  %i.nn = fadd float %.1447.lcssa676, %i.nm
  store float %i.nn, ptr %i.nl, align 4, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge576
  %i.no = fcmp une float %.1441.lcssa677, 0.000000e+00
  br i1 %i.no, label %bb.s, label %.thread678

bb.s:                                             ; preds = %bb.r
  %i.np = load i64, ptr %20, align 8
  %i.nq = inttoptr i64 %i.np to ptr
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 12 ; 2 uses
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !44
  %i.nt = fadd float %.1441.lcssa677, %i.ns
  store float %i.nt, ptr %i.nr, align 4, !tbaa !44
  br label %.thread678

.thread678:                                       ; preds = %.split.us, %bb.s, %bb.r
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !81 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !89
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !63
  %i.oa = sext i32 %i.nz to i64
  %.not.i.i489 = icmp eq ptr %i.nv, null
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.oa
  %spec.select.i.i490 = select i1 %.not.i.i489, ptr null, ptr %i.ob
  %i.oc = ptrtoint ptr %spec.select.i.i490 to i64
  %i.od = ptrtoint ptr %i.nv to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = lshr exact i64 %i.oe, 3
  %i.og = mul i64 %i.of, 150
  %i.oh = add i64 %i.bn, %i.og
  %i.oi = trunc i64 %i.oh to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.oi)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb1ELNS_12LJKernelTypeE0ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree readnone align 8 captures(none) dead_on_return %16, ptr nofree readnone captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = load i64, ptr %14, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !105  ; 2 uses
  %i.w = sitofp i32 %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !42
  %i.z = load float, ptr %i.t, align 4, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !106 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %_ZL7usingRFRK22CoulombInteractionType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !70, !range !38, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

_ZL7usingRFRK22CoulombInteractionType.exit:       ; preds = %bb.b, %bb.a
  %i.ah = phi i1 [ true, %bb.a ], [ %i.ag, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !71 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.al = load float, ptr %i.ak, align 8, !tbaa !75 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load float, ptr %i.am, align 8, !tbaa !76 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load <1 x float>, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ar = load <16 x float>, ptr %i.aq, align 4   ; 4 uses
  %i.as = bitcast <16 x float> %i.ar to i512
  %i.at = lshr i512 %i.as, 352
  %i.au = trunc i512 %i.at to i128
  %i.av = bitcast i128 %i.au to <4 x float>
  %i.aw = fcmp olt float %i.al, %i.an
  %i.ax = extractelement <16 x float> %i.ar, i64 9
  %i.ay = select i1 %i.aw, float %i.an, float %i.ax ; 2 uses
  %i.az = fmul float %i.ay, %i.ay
  %bc = bitcast <16 x float> %i.ar to <4 x i128>
  %i.ba = extractelement <4 x i128> %bc, i64 3
  %i.bb = bitcast i128 %i.ba to <4 x float>
  %i.bc = fsub float 1.000000e+00, %i.r           ; 3 uses
  %i.bd = icmp eq i32 %i.v, 2
  %.scalar = fsub float 1.000000e+00, %i.p        ; 4 uses
  %i.be = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.bf = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.w, i64 1
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bh = fsub <4 x float> %i.bg, %i.be           ; 4 uses
  br i1 %i.bd, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bi = fdiv <4 x float> %i.bh, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %21 = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bj = extractelement <4 x float> %i.bi, i64 1
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bk = fsub float 1.000000e+00, %i.bc
  %i.bl = fmul float %.scalar, %.scalar
  %i.bm = fdiv <4 x float> %i.bh, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %i.bn = extractelement <4 x float> %i.bm, i64 1
  %i.bo = fmul float %i.bn, %i.bk
  %i.bp = shufflevector <4 x float> %i.bh, <4 x float> %i.be, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float %i.bc, i64 3
  %i.br = fmul <4 x float> %i.bm, %i.bq
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.5826.0 = phi float [ %i.bl, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %.scalar, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.0821.0 = phi float [ %i.bo, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bj, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.bs = phi <4 x float> [ %i.br, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %21, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.bu = ptrtoint ptr %i.k to i64
  %i.bv = sub i64 %i.bu, %i.l                     ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph771, label %._crit_edge772

.lr.ph771:                                        ; preds = %.split.us
  %i.bx = udiv exact i64 %i.bv, 12
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.bz, null
  %i.cc = load i64, ptr %8, align 8
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = load i64, ptr %9, align 8
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load i64, ptr %10, align 8
  %i.ch = inttoptr i64 %i.cg to ptr               ; 3 uses
  %i.ci = load i64, ptr %11, align 8
  %i.cj = inttoptr i64 %i.ci to ptr               ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.cm = load i64, ptr %6, align 8
  %i.cn = inttoptr i64 %i.cm to ptr               ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cq = insertelement <16 x float> poison, float %i.az, i64 0
  %i.cr = shufflevector <16 x float> %i.cq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.ct = insertelement <16 x float> poison, float %i.al, i64 0
  %i.cu = shufflevector <16 x float> %i.ct, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cv = shufflevector <4 x float> %i.bb, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cw = insertelement <16 x float> poison, float %i.an, i64 0
  %i.cx = shufflevector <16 x float> %i.cw, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cy = shufflevector <16 x float> %i.ar, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cz = shufflevector <1 x float> %i.ap, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.da = shufflevector <4 x float> %i.av, <4 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.db = load i64, ptr %18, align 8
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load i64, ptr %19, align 8
  %i.de = inttoptr i64 %i.dd to ptr
  %.sroa.5814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.df = shufflevector <4 x float> %i.bs, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dg = insertelement <16 x float> poison, float %.sroa.5826.0, i64 0
  %i.dh = shufflevector <16 x float> %i.dg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.di = shufflevector <4 x float> %i.be, <4 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dj = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.dk = shufflevector <16 x float> %i.dj, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dl = shufflevector <4 x float> %i.bs, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dm = insertelement <16 x float> poison, float %.sroa.0821.0, i64 0
  %i.dn = shufflevector <16 x float> %i.dm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.do = insertelement <16 x float> poison, float %i.p, i64 0
  %i.dp = shufflevector <16 x float> %i.do, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dq = insertelement <16 x float> poison, float %i.r, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ds = shufflevector <4 x float> %i.bs, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.dt = shufflevector <4 x float> %i.bs, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge772:                                   ; preds = %._crit_edge.thread, %.split.us
  %.sroa.0697.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0697.1.lcssa861, %._crit_edge.thread ] ; 3 uses
  %.sroa.0700.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0700.1.lcssa862, %._crit_edge.thread ] ; 3 uses
  %i.du = fcmp one <16 x float> %.sroa.0700.0.lcssa, zeroinitializer
  %i.dv = bitcast <16 x i1> %i.du to i16
  %.not = icmp eq i16 %i.dv, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.c:                                             ; preds = %.lr.ph771, %._crit_edge.thread
  %.0526769 = phi i64 [ 0, %.lr.ph771 ], [ %i.uy, %._crit_edge.thread ] ; 3 uses
  %.sroa.0700.0768 = phi <16 x float> [ zeroinitializer, %.lr.ph771 ], [ %.sroa.0700.1.lcssa862, %._crit_edge.thread ] ; 2 uses
  %.sroa.0697.0767 = phi <16 x float> [ zeroinitializer, %.lr.ph771 ], [ %.sroa.0697.1.lcssa861, %._crit_edge.thread ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.0526769 ; 3 uses
  %i.dx = getelementptr [4 x i8], ptr %i.cb, i64 %.0526769 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !63 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dx, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !63
  %i.eb = load i32, ptr %i.dw, align 4, !tbaa !84 ; 3 uses
  %i.ec = sext i32 %i.eb to i64                   ; 4 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !44
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ec
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !44
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ec
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !63
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ec
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !63
  %.sroa.0819.0.vec.insert = insertelement <16 x i32> poison, i32 %i.eb, i64 0
  %.sroa.0819.60.vec.insert = shufflevector <16 x i32> %.sroa.0819.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.el = sext i32 %i.dy to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.el ; 4 uses
  %i.en = sub nsw i32 %i.ea, %i.dy
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eo
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.ep
  %i.eq = fmul float %i.aj, %i.ee
  %i.er = fmul float %i.aj, %i.eg
  %i.es = mul nsw i32 %i.ei, %2                   ; 2 uses
  %i.et = mul nsw i32 %i.ek, %2                   ; 2 uses
  %i.eu = ptrtoint ptr %spec.select.i.i to i64
  %i.ev = ptrtoint ptr %i.em to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3                 ; 3 uses
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !78
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !44
  %i.ff = mul nsw i32 %i.eb, 3
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.fg ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !44
  %i.fk = fadd float %i.fe, %i.fj
  %i.fl = load <2 x float>, ptr %i.fc, align 4, !tbaa !44
  %i.fm = load <2 x float>, ptr %i.fh, align 4, !tbaa !44
  %i.fn = fadd <2 x float> %i.fl, %i.fm           ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <16 x i32> zeroinitializer
  %i.fp = shufflevector <2 x float> %i.fn, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.fq = insertelement <16 x float> poison, float %i.fk, i64 0
  %i.fr = shufflevector <16 x float> %i.fq, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit727
  %i.fs = select i1 %.1528, i1 %i.ah, i1 false
  br i1 %i.fs, label %bb.y, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %.loopexit727
  %.0527762 = phi i1 [ false, %.lr.ph ], [ %.1528, %.loopexit727 ]
  %.0530761 = phi i64 [ 0, %.lr.ph ], [ %i.tx, %.loopexit727 ] ; 3 uses
  %.sroa.0700.1760 = phi <16 x float> [ %.sroa.0700.0768, %.lr.ph ], [ %.sroa.0700.7, %.loopexit727 ] ; 3 uses
  %.sroa.0697.1759 = phi <16 x float> [ %.sroa.0697.0767, %.lr.ph ], [ %.sroa.0697.5, %.loopexit727 ] ; 3 uses
  %.sroa.0687.0758 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0687.6, %.loopexit727 ] ; 3 uses
  %.sroa.0685.0757 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0685.4, %.loopexit727 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.0530761
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val582719 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.fu = mul <16 x i32> %.val582719, splat (i32 3) ; 3 uses
  %i.fv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bt, <16 x i32> %i.fu, <16 x i1> splat (i1 true), i32 4)
  %i.fw = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.co, <16 x i32> %i.fu, <16 x i1> splat (i1 true), i32 4)
  %i.fx = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cp, <16 x i32> %i.fu, <16 x i1> splat (i1 true), i32 4)
  %.val589 = load <16 x float>, ptr %i.a, align 64, !tbaa !57
  %.val588 = load <16 x float>, ptr %i.b, align 64, !tbaa !57 ; 2 uses
  %i.fy = fcmp one <16 x float> %.val588, zeroinitializer ; 6 uses
  %i.fz = fcmp oeq <16 x float> %.val588, zeroinitializer
  %i.ga = fcmp one <16 x float> %.val589, zeroinitializer
  %i.gb = and <16 x i1> %i.ga, %i.fz              ; 2 uses
  %i.gc = fsub <16 x float> %i.fo, %i.fv          ; 2 uses
  %i.gd = fsub <16 x float> %i.fp, %i.fw          ; 2 uses
  %i.ge = fsub <16 x float> %i.fr, %i.fx          ; 2 uses
  %i.gf = fmul <16 x float> %i.gc, %i.gc
  %i.gg = fmul <16 x float> %i.gd, %i.gd
  %i.gh = fadd <16 x float> %i.gf, %i.gg
  %i.gi = fmul <16 x float> %i.ge, %i.ge
  %i.gj = fadd <16 x float> %i.gh, %i.gi          ; 2 uses
  %i.gk = fcmp olt <16 x float> %i.gj, %i.cr      ; 4 uses
  %i.gl = or <16 x i1> %i.gb, %i.gk
  %i.gm = bitcast <16 x i1> %i.gl to i16
  %.not720 = icmp eq i16 %i.gm, 0
  br i1 %.not720, label %.loopexit727, label %.preheader731.preheader

bb.f:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 21 uses
  %i.gn = or disjoint i64 %.0530761, %indvars.iv  ; 2 uses
  %i.go = icmp slt i64 %i.gn, %i.ex
  br i1 %i.go, label %bb.g, label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.f
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.gp, align 4, !tbaa !44
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.gn ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i8, ptr %i.gr, align 4, !tbaa !86, !range !38, !noundef !39
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = uitofp i1 %i.gt to float
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.gu, ptr %i.gv, align 4, !tbaa !44
  %i.gw = load i32, ptr %i.gq, align 4, !tbaa !87 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !63
  %i.gy = sext i32 %i.gw to i64                   ; 4 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !63
  %i.hb = add nsw i32 %i.ha, %i.es                ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
end_hunk_3
begin_hunk_4_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb1ELNS_12LJKernelTypeE2ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  %i.mi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mg, <2 x float> %i.mh, <2 x float> %i.me)
  br label %bb.j

bb.j:                                             ; preds = %.preheader.preheader, %bb.c
  %i.mj = phi <2 x float> [ %i.mi, %.preheader.preheader ], [ %i.ey, %bb.c ] ; 3 uses
  %i.mk = phi <2 x float> [ %i.ly, %.preheader.preheader ], [ %i.ez, %bb.c ] ; 3 uses
  %i.ml = fcmp uge float %i.ho, %i.z
  %.not536 = select i1 %i.gn, i1 %i.ml, i1 false
  br i1 %.not536, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.j
  %i.mm = fmul float %i.ah, %.sroa.speculated.i
  %i.mn = fmul float %i.ah, %i.mm                 ; 4 uses
  %i.mo = fmul float %i.mn, %i.mn                 ; 7 uses
  %i.mp = tail call noundef float @llvm.fmuladd.f32(float %i.mo, float f0x3BDABBD3, float f0x3EDDE19B)
  %i.mq = tail call noundef float @llvm.fmuladd.f32(float %i.mo, float f0x3DA11218, float 1.000000e+00)
  %i.mr = tail call noundef float @llvm.fmuladd.f32(float %i.mp, float %i.mn, float %i.mq)
  %i.ms = tail call noundef float @llvm.fmuladd.f32(float %i.mo, float f0x32A5C22F, float f0x382E7F32)
  %i.mt = tail call noundef float @llvm.fmuladd.f32(float %i.mo, float f0xB5BEC4D7, float f0xB909B869)
  %i.mu = tail call noundef float @llvm.fmuladd.f32(float %i.ms, float %i.mo, float f0x3D1E57D6)
  %i.mv = tail call noundef float @llvm.fmuladd.f32(float %i.mt, float %i.mo, float f0x3DE71E23)
  %i.mw = tail call noundef float @llvm.fmuladd.f32(float %i.mu, float %i.mo, float f0x3F906EC3)
  %i.mx = tail call noundef float @llvm.fmuladd.f32(float %i.mv, float %i.mn, float %i.mw)
  %i.my = fdiv float %i.mx, %i.mr
  %i.mz = fmul float %i.ah, %i.my
  %i.na = select i1 %i.hl, float 5.000000e-01, float 1.000000e+00
  %i.nb = fmul float %i.na, %i.mz                 ; 4 uses
  %i.nc = fmul float %i.bc, %i.fn
  %i.nd = fmul float %i.nb, %i.nc
  %i.ne = extractelement <2 x float> %i.mk, i64 0
  %i.nf = fsub float %i.ne, %i.nd
  %i.ng = fmul float %i.fn, %i.nb
  %i.nh = extractelement <2 x float> %i.mj, i64 0
  %i.ni = fadd float %i.nh, %i.ng
  %i.nj = fmul float %i.cz, %i.fq
  %i.nk = fmul float %i.nb, %i.nj
  %i.nl = fsub float %i.nf, %i.nk
  %i.nm = fmul float %i.nb, %i.fq
  %i.nn = fsub float %i.ni, %i.nm
  %i.no = insertelement <2 x float> %i.mj, float %i.nn, i64 0
  %i.np = insertelement <2 x float> %i.mk, float %i.nl, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit, %.lr.ph
  %.1444 = phi i1 [ %.0443551, %.lr.ph ], [ true, %bb.j ], [ true, %.loopexit.loopexit ] ; 2 uses
  %i.nq = phi <2 x float> [ %i.ey, %.lr.ph ], [ %i.mj, %bb.j ], [ %i.no, %.loopexit.loopexit ] ; 3 uses
  %i.nr = phi <2 x float> [ %i.ez, %.lr.ph ], [ %i.mk, %bb.j ], [ %i.np, %.loopexit.loopexit ] ; 3 uses
  %i.ns = add nuw nsw i64 %.0433554, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ns, %i.et
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !432

bb.k:                                             ; preds = %._crit_edge
  %i.nt = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !88
  %i.nv = sext i32 %i.nu to i64                   ; 2 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.nv ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !44
  %i.ny = extractelement <2 x float> %i.nr, i64 0
  %i.nz = fadd float %i.ny, %i.nx
  store float %i.nz, ptr %i.nw, align 4, !tbaa !44
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.nv ; 2 uses
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !44
  %i.oc = extractelement <2 x float> %i.nr, i64 1
  %i.od = fadd float %i.oc, %i.ob
  store float %i.od, ptr %i.oa, align 4, !tbaa !44
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge, %bb.k, %._crit_edge
  %i.oe = phi <2 x float> [ %i.nq, %._crit_edge ], [ %i.nq, %bb.k ], [ %i.dc, %.critedge ] ; 3 uses
  %i.of = add nuw nsw i64 %.0445561, 1            ; 2 uses
  %exitcond579.not = icmp eq i64 %i.of, %i.cc
  br i1 %exitcond579.not, label %._crit_edge562, label %.critedge, !llvm.loop !433

bb.l:                                             ; preds = %._crit_edge562
  %i.og = load i64, ptr %20, align 8
  %i.oh = inttoptr i64 %i.og to ptr
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !44
  %i.ok = fadd float %i.da, %i.oj
  store float %i.ok, ptr %i.oi, align 4, !tbaa !44
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge562
  %i.ol = extractelement <2 x float> %i.oe, i64 1 ; 2 uses
  %i.om = fcmp une float %i.ol, 0.000000e+00
  br i1 %i.om, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.on = load i64, ptr %20, align 8
  %i.oo = inttoptr i64 %i.on to ptr
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 12 ; 2 uses
  %i.oq = load float, ptr %i.op, align 4, !tbaa !44
  %i.or = fadd float %i.ol, %i.oq
  store float %i.or, ptr %i.op, align 4, !tbaa !44
  br label %.thread

.thread:                                          ; preds = %.split.us, %bb.n, %bb.m
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !81 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !89
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 -4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !63
  %i.oy = sext i32 %i.ox to i64
  %.not.i.i491 = icmp eq ptr %i.ot, null
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.oy
  %spec.select.i.i492 = select i1 %.not.i.i491, ptr null, ptr %i.oz
  %i.pa = ptrtoint ptr %spec.select.i.i492 to i64
  %i.pb = ptrtoint ptr %i.ot to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = lshr exact i64 %i.pc, 3
  %i.pe = mul i64 %i.pd, 150
  %i.pf = add i64 %i.pe, %i.ca
  %i.pg = trunc i64 %i.pf to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.pg)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb1ELNS_12LJKernelTypeE3ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree noundef readonly align 8 captures(none) dead_on_return %16, ptr nofree noundef captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %i.i = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = load i64, ptr %14, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !105  ; 2 uses
  %i.x = sitofp i32 %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !42
  %i.aa = load float, ptr %i.u, align 4, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69, !range !38, !noundef !39
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !70, !range !38, !noundef !39
  %i.ak = trunc nuw i8 %i.aj to i1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.al = phi i1 [ %i.ah, %bb.b ], [ false, %bb.a ]
  %i.am = phi i1 [ %i.ak, %bb.b ], [ true, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ao = load float, ptr %i.an, align 4, !tbaa !71 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !75 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.as = load <1 x float>, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load float, ptr %i.at, align 8, !tbaa !76 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aw = load <1 x float>, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ay = load <16 x float>, ptr %i.ax, align 4   ; 6 uses
  %i.az = bitcast <16 x float> %i.ay to i512
  %i.ba = lshr i512 %i.az, 352
  %i.bb = trunc i512 %i.ba to i128
  %i.bc = bitcast i128 %i.bb to <4 x float>
  %foldExtExtBinop = fmul <16 x float> %i.ay, %i.ay ; 2 uses
  %i.bd = extractelement <16 x float> %foldExtExtBinop, i64 4 ; 3 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = fdiv float %i.bf, 6.000000e+00          ; 2 uses
  %i.bh = fcmp olt float %i.aq, %i.au
  %i.bi = extractelement <16 x float> %i.ay, i64 9
  %i.bj = select i1 %i.bh, float %i.au, float %i.bi ; 2 uses
  %i.bk = fmul float %i.bj, %i.bj
  %bc = bitcast <16 x float> %i.ay to <4 x i128>
  %i.bl = extractelement <4 x i128> %bc, i64 3
  %i.bm = bitcast i128 %i.bl to <4 x float>
  %i.bn = fsub float 1.000000e+00, %i.s           ; 3 uses
  %i.bo = icmp eq i32 %i.w, 2
  %.scalar = fsub float 1.000000e+00, %i.q        ; 4 uses
  %i.bp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.bq = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.x, i64 1
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bs = fsub <4 x float> %i.br, %i.bp           ; 4 uses
  br i1 %i.bo, label %.thread.split.us.preheader, label %.thread.split.preheader

.thread.split.preheader:                          ; preds = %.thread
  %i.bt = fdiv <4 x float> %i.bs, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %21 = shufflevector <4 x float> %i.bs, <4 x float> %i.bt, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bu = extractelement <4 x float> %i.bt, i64 1
  br label %.split.us

.thread.split.us.preheader:                       ; preds = %.thread
  %i.bv = fsub float 1.000000e+00, %i.bn
  %i.bw = fmul float %.scalar, %.scalar
  %i.bx = fdiv <4 x float> %i.bs, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %i.by = extractelement <4 x float> %i.bx, i64 1
  %i.bz = fmul float %i.by, %i.bv
  %i.ca = shufflevector <4 x float> %i.bs, <4 x float> %i.bp, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float %i.bn, i64 3
  %i.cc = fmul <4 x float> %i.bx, %i.cb
  br label %.split.us

.split.us:                                        ; preds = %.thread.split.preheader, %.thread.split.us.preheader
  %.sroa.51069.0 = phi float [ %i.bw, %.thread.split.us.preheader ], [ %.scalar, %.thread.split.preheader ]
  %.sroa.01064.0 = phi float [ %i.bz, %.thread.split.us.preheader ], [ %i.bu, %.thread.split.preheader ]
  %i.cd = phi <4 x float> [ %i.cc, %.thread.split.us.preheader ], [ %21, %.thread.split.preheader ] ; 4 uses
  %i.ce = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.cf = load ptr, ptr %16, align 8, !tbaa !74   ; 32 uses
  %i.cg = ptrtoint ptr %i.l to i64
  %i.ch = sub i64 %i.cg, %i.m                     ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph999, label %._crit_edge1000

.lr.ph999:                                        ; preds = %.split.us
  %i.cj = udiv exact i64 %i.ch, 12
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = insertelement <16 x float> poison, float %i.bk, i64 0
  %i.cr = shufflevector <16 x float> %i.cq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cs = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.ct = shufflevector <16 x float> %i.cs, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cu = shufflevector <4 x float> %i.bm, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cv = insertelement <16 x float> poison, float %i.au, i64 0
  %i.cw = shufflevector <16 x float> %i.cv, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cx = shufflevector <16 x float> %i.ay, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cy = shufflevector <1 x float> %i.aw, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cz = shufflevector <1 x float> %i.as, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.da = shufflevector <4 x float> %i.bc, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.db = shufflevector <16 x float> %foldExtExtBinop, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.dc = insertelement <16 x float> poison, float %i.bg, i64 0
  %i.dd = shufflevector <16 x float> %i.dc, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.de = fmul float %i.bg, 5.000000e-01
  %i.df = insertelement <16 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.51054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dh = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.di = insertelement <16 x float> poison, float %.sroa.51069.0, i64 0
  %i.dj = shufflevector <16 x float> %i.di, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dk = shufflevector <4 x float> %i.bp, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.dl = insertelement <16 x float> poison, float %i.bn, i64 0
  %i.dm = shufflevector <16 x float> %i.dl, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.dn = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.do = insertelement <16 x float> poison, float %.sroa.01064.0, i64 0
  %i.dp = shufflevector <16 x float> %i.do, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dq = insertelement <16 x float> poison, float %i.q, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ds = insertelement <16 x float> poison, float %i.s, i64 0
  %i.dt = shufflevector <16 x float> %i.ds, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.du = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.dv = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge1000:                                  ; preds = %._crit_edge.thread, %.split.us
  %.sroa.0901.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0901.1.lcssa1124, %._crit_edge.thread ] ; 3 uses
  %.sroa.0905.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0905.1.lcssa1125, %._crit_edge.thread ] ; 3 uses
  %i.dw = fcmp one <16 x float> %.sroa.0905.0.lcssa, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %.not = icmp eq i16 %i.dx, 0
  br i1 %.not, label %bb.af, label %bb.ae

bb.c:                                             ; preds = %.lr.ph999, %._crit_edge.thread
  %.0658997 = phi i64 [ 0, %.lr.ph999 ], [ %i.anl, %._crit_edge.thread ] ; 3 uses
  %.sroa.0905.0996 = phi <16 x float> [ zeroinitializer, %.lr.ph999 ], [ %.sroa.0905.1.lcssa1125, %._crit_edge.thread ] ; 2 uses
  %.sroa.0901.0995 = phi <16 x float> [ zeroinitializer, %.lr.ph999 ], [ %.sroa.0901.1.lcssa1124, %._crit_edge.thread ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.0658997 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !78 ; 2 uses
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !81 ; 2 uses
  %i.ec = load ptr, ptr %i.cl, align 8, !tbaa !83
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %.0658997 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !63 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ed, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !63
  %i.eh = load i32, ptr %i.dy, align 4, !tbaa !84 ; 3 uses
  %i.ei = sext i32 %i.eh to i64                   ; 4 uses
  %i.ej = load i64, ptr %8, align 8               ; 2 uses
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.ei
  %i.em = load float, ptr %i.el, align 4, !tbaa !44
  %i.en = load i64, ptr %9, align 8               ; 2 uses
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ei
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !44
  %i.er = load i64, ptr %10, align 8              ; 2 uses
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ei
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !63
  %i.ev = load i64, ptr %11, align 8              ; 2 uses
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ei
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !63
  %.sroa.01061.0.vec.insert = insertelement <16 x i32> poison, i32 %i.eh, i64 0
  %.sroa.01059.0.vec.insert = insertelement <16 x i32> poison, i32 %i.ea, i64 0
  %.sroa.01061.60.vec.insert = shufflevector <16 x i32> %.sroa.01061.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ez = sext i32 %i.ee to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ez ; 4 uses
  %i.fb = sub nsw i32 %i.eg, %i.ee
  %i.fc = sext i32 %i.fb to i64
  %.not.i.i = icmp eq ptr %i.eb, null
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fc
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fd
  %i.fe = fmul float %i.ao, %i.em
  %i.ff = fmul float %i.ao, %i.eq
  %i.fg = mul nsw i32 %i.eu, %2                   ; 2 uses
  %i.fh = mul nsw i32 %i.ey, %2                   ; 2 uses
  %i.fi = ptrtoint ptr %spec.select.i.i to i64
  %i.fj = ptrtoint ptr %i.fa to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3                 ; 3 uses
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.fn = sext i32 %i.ea to i64
  %i.fo = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !44
  %i.fr = mul nsw i32 %i.eh, 3
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.fs ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !44
  %i.fw = fadd float %i.fq, %i.fv
  %i.fx = load <2 x float>, ptr %i.fo, align 4, !tbaa !44
  %i.fy = load <2 x float>, ptr %i.ft, align 4, !tbaa !44
  %i.fz = fadd <2 x float> %i.fx, %i.fy           ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gb = shufflevector <2 x float> %i.fz, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gc = insertelement <16 x float> poison, float %i.fw, i64 0
  %i.gd = shufflevector <16 x float> %i.gc, <16 x float> poison, <16 x i32> zeroinitializer
  %.pre1104 = load i64, ptr %7, align 8
  %.pre1106 = load i64, ptr %6, align 8           ; 2 uses
  %i.ge = inttoptr i64 %.pre1106 to ptr
  %.pre = load i64, ptr %10, align 8
  %.pre1097 = load i64, ptr %11, align 8
  %.pre1099 = load i64, ptr %8, align 8
  %.pre1101 = load i64, ptr %9, align 8
  %.pre1103 = load i64, ptr %7, align 8
  %.pre1105 = load i64, ptr %6, align 8           ; 2 uses
  %i.gf = inttoptr i64 %.pre1105 to ptr
  br label %bb.d

._crit_edge:                                      ; preds = %bb.z
  br i1 %.1660, label %bb.aa, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.z
  %i.gg = phi ptr [ %i.ge, %.lr.ph ], [ %i.ael, %bb.z ] ; 6 uses
  %i.gh = phi i64 [ %.pre1106, %.lr.ph ], [ %i.aem, %bb.z ] ; 2 uses
  %i.gi = phi i64 [ %.pre1104, %.lr.ph ], [ %i.aen, %bb.z ] ; 3 uses
  %i.gj = phi i64 [ %i.en, %.lr.ph ], [ %i.aeo, %bb.z ] ; 3 uses
  %i.gk = phi i64 [ %i.ej, %.lr.ph ], [ %i.aep, %bb.z ] ; 3 uses
  %i.gl = phi i64 [ %i.ev, %.lr.ph ], [ %i.aeq, %bb.z ] ; 3 uses
  %i.gm = phi i64 [ %i.er, %.lr.ph ], [ %i.aer, %bb.z ] ; 3 uses
  %.0659987 = phi i1 [ false, %.lr.ph ], [ %.1660, %bb.z ]
  %.0663986 = phi i64 [ 0, %.lr.ph ], [ %i.aes, %bb.z ] ; 3 uses
  %.sroa.0905.1985 = phi <16 x float> [ %.sroa.0905.0996, %.lr.ph ], [ %.sroa.0905.7, %bb.z ] ; 3 uses
  %.sroa.0901.1984 = phi <16 x float> [ %.sroa.0901.0995, %.lr.ph ], [ %.sroa.0901.7, %bb.z ] ; 3 uses
  %.sroa.0889.0983 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0889.6, %bb.z ] ; 3 uses
  %.sroa.0886.0982 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0886.6, %bb.z ] ; 3 uses
  %.sroa.0883.0981 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0883.2, %bb.z ] ; 3 uses
  %.sroa.0880.0980 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0880.2, %bb.z ] ; 3 uses
  %.sroa.0877.0979 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0877.2, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.0663986
  %i.go = inttoptr i64 %i.gm to ptr               ; 2 uses
  %i.gp = inttoptr i64 %i.gl to ptr               ; 2 uses
  %i.gq = inttoptr i64 %i.gk to ptr
  %i.gr = inttoptr i64 %i.gj to ptr
  %i.gs = inttoptr i64 %i.gi to ptr               ; 2 uses
  %i.gt = inttoptr i64 %i.gh to ptr               ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val716927 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.gu = mul <16 x i32> %.val716927, splat (i32 3) ; 19 uses
  %i.gv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ce, <16 x i32> %i.gu, <16 x i1> splat (i1 true), i32 4)
  %i.gw = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.co, <16 x i32> %i.gu, <16 x i1> splat (i1 true), i32 4)
  %i.gx = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cp, <16 x i32> %i.gu, <16 x i1> splat (i1 true), i32 4)
  %.val723 = load <16 x float>, ptr %i.a, align 64, !tbaa !57
  %.val722 = load <16 x float>, ptr %i.b, align 64, !tbaa !57 ; 2 uses
  %i.gy = fcmp one <16 x float> %.val722, zeroinitializer ; 6 uses
  %i.gz = fcmp oeq <16 x float> %.val722, zeroinitializer
  %i.ha = fcmp one <16 x float> %.val723, zeroinitializer
  %i.hb = and <16 x i1> %i.ha, %i.gz              ; 3 uses
  %i.hc = fsub <16 x float> %i.ga, %i.gv          ; 3 uses
  %i.hd = fsub <16 x float> %i.gb, %i.gw          ; 3 uses
  %i.he = fsub <16 x float> %i.gd, %i.gx          ; 3 uses
  %i.hf = fmul <16 x float> %i.hc, %i.hc
  %i.hg = fmul <16 x float> %i.hd, %i.hd
  %i.hh = fadd <16 x float> %i.hf, %i.hg
  %i.hi = fmul <16 x float> %i.he, %i.he
  %i.hj = fadd <16 x float> %i.hh, %i.hi          ; 2 uses
  %i.hk = fcmp olt <16 x float> %i.hj, %i.cr      ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb1ELNS_12LJKernelTypeE3ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a

bb.o:                                             ; preds = %.loopexit
  %i.ob = insertelement <2 x float> poison, float %.6, i64 0
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> zeroinitializer
  %i.od = fmul <2 x float> %i.gs, %i.oc           ; 2 uses
  %i.oe = fmul float %i.gt, %.6                   ; 2 uses
  %i.of = fadd <2 x float> %i.eo, %i.od
  %i.og = fadd float %.0450613, %i.oe
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.gm ; 3 uses
  %i.oi = load <2 x float>, ptr %i.oh, align 4, !tbaa !44
  %i.oj = fsub <2 x float> %i.oi, %i.od
  store <2 x float> %i.oj, ptr %i.oh, align 4, !tbaa !44
  %i.ok = getelementptr i8, ptr %i.oh, i64 8      ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !44
  %i.om = fsub float %i.ol, %i.oe
  store float %i.om, ptr %i.ok, align 4, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o, %.lr.ph
  %.7491 = phi float [ %.1485606, %.lr.ph ], [ %.6490, %bb.o ], [ %.6490, %.loopexit ] ; 4 uses
  %.7 = phi float [ %.1478607, %.lr.ph ], [ %.6483, %bb.o ], [ %.6483, %.loopexit ] ; 4 uses
  %.1474 = phi i1 [ %.0473608, %.lr.ph ], [ true, %bb.o ], [ true, %.loopexit ] ; 2 uses
  %.6472 = phi float [ %.0466609, %.lr.ph ], [ %.5471, %bb.o ], [ %.5471, %.loopexit ] ; 2 uses
  %.6465 = phi float [ %.0459610, %.lr.ph ], [ %.5464, %bb.o ], [ %.5464, %.loopexit ] ; 2 uses
  %.2452 = phi float [ %.0450613, %.lr.ph ], [ %i.og, %bb.o ], [ %.0450613, %.loopexit ] ; 3 uses
  %i.on = phi <2 x float> [ %i.eo, %.lr.ph ], [ %i.of, %bb.o ], [ %i.eo, %.loopexit ] ; 3 uses
  %i.oo = add nuw nsw i64 %.0448614, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.oo, %i.em
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !437

bb.q:                                             ; preds = %._crit_edge
  %i.op = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.do ; 3 uses
  %i.oq = load <2 x float>, ptr %i.op, align 4, !tbaa !44
  %i.or = fadd <2 x float> %i.on, %i.oq
  store <2 x float> %i.or, ptr %i.op, align 4, !tbaa !44
  %i.os = getelementptr i8, ptr %i.op, i64 8      ; 2 uses
  %i.ot = load float, ptr %i.os, align 4, !tbaa !44
  %i.ou = fadd float %.2452, %i.ot
  store float %i.ou, ptr %i.os, align 4, !tbaa !44
  br i1 %i.ac, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ov = mul nsw i32 %i.cy, 3
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [4 x i8], ptr %17, i64 %i.ow ; 3 uses
  %i.oy = load <2 x float>, ptr %i.ox, align 4, !tbaa !44
  %i.oz = fadd <2 x float> %i.on, %i.oy
  store <2 x float> %i.oz, ptr %i.ox, align 4, !tbaa !44
  %i.pa = getelementptr i8, ptr %i.ox, i64 8      ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !44
  %i.pc = fadd float %.2452, %i.pb
  store float %i.pc, ptr %i.pa, align 4, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %i.ad, label %bb.t, label %._crit_edge.thread

bb.t:                                             ; preds = %bb.s
  %i.pd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !88
  %i.pf = sext i32 %i.pe to i64                   ; 2 uses
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.pf ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !44
  %i.pi = fadd float %.6472, %i.ph
  store float %i.pi, ptr %i.pg, align 4, !tbaa !44
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.pf ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !44
  %i.pl = fadd float %.6465, %i.pk
  store float %i.pl, ptr %i.pj, align 4, !tbaa !44
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge, %bb.s, %bb.t, %._crit_edge
  %.1478.lcssa741 = phi float [ %.7, %._crit_edge ], [ %.7, %bb.s ], [ %.7, %bb.t ], [ %.0477623, %.critedge ] ; 3 uses
  %.1485.lcssa740 = phi float [ %.7491, %._crit_edge ], [ %.7491, %bb.s ], [ %.7491, %bb.t ], [ %.0484622, %.critedge ] ; 3 uses
  %i.pm = add nuw nsw i64 %.0475624, 1            ; 2 uses
  %exitcond647.not = icmp eq i64 %i.pm, %i.bx
  br i1 %exitcond647.not, label %._crit_edge625, label %.critedge, !llvm.loop !438

bb.u:                                             ; preds = %._crit_edge625
  %i.pn = load i64, ptr %20, align 8
  %i.po = inttoptr i64 %i.pn to ptr
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !44
  %i.pr = fadd float %.1485.lcssa740, %i.pq
  store float %i.pr, ptr %i.pp, align 4, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge625
  %i.ps = fcmp une float %.1478.lcssa741, 0.000000e+00
  br i1 %i.ps, label %bb.w, label %.thread742

bb.w:                                             ; preds = %bb.v
  %i.pt = load i64, ptr %20, align 8
  %i.pu = inttoptr i64 %i.pt to ptr
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 12 ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !44
  %i.px = fadd float %.1478.lcssa741, %i.pw
  store float %i.px, ptr %i.pv, align 4, !tbaa !44
  br label %.thread742

.thread742:                                       ; preds = %.split.us, %bb.w, %bb.v
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !81 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !89
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !63
  %i.qe = sext i32 %i.qd to i64
  %.not.i.i528 = icmp eq ptr %i.pz, null
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.qe
  %spec.select.i.i529 = select i1 %.not.i.i528, ptr null, ptr %i.qf
  %i.qg = ptrtoint ptr %spec.select.i.i529 to i64
  %i.qh = ptrtoint ptr %i.pz to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = lshr exact i64 %i.qi, 3
  %i.qk = mul i64 %i.qj, 150
  %i.ql = add i64 %i.bv, %i.qk
  %i.qm = trunc i64 %i.ql to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.qm)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb1ELNS_12LJKernelTypeE3ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree readnone align 8 captures(none) dead_on_return %16, ptr nofree readnone captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %i.i = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = load i64, ptr %14, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !105  ; 2 uses
  %i.x = sitofp i32 %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !42
  %i.aa = load float, ptr %i.u, align 4, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %_ZL7usingRFRK22CoulombInteractionType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !70, !range !38, !noundef !39
  %i.ah = trunc nuw i8 %i.ag to i1
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

_ZL7usingRFRK22CoulombInteractionType.exit:       ; preds = %bb.b, %bb.a
  %i.ai = phi i1 [ true, %bb.a ], [ %i.ah, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !71 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.am = load float, ptr %i.al, align 8, !tbaa !75 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ao = load <1 x float>, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !76 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.as = load <1 x float>, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.au = load <16 x float>, ptr %i.at, align 4   ; 6 uses
  %i.av = bitcast <16 x float> %i.au to i512
  %i.aw = lshr i512 %i.av, 352
  %i.ax = trunc i512 %i.aw to i128
  %i.ay = bitcast i128 %i.ax to <4 x float>
  %foldExtExtBinop = fmul <16 x float> %i.au, %i.au ; 2 uses
  %i.az = extractelement <16 x float> %foldExtExtBinop, i64 4 ; 3 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = fdiv float %i.bb, 6.000000e+00          ; 2 uses
  %i.bd = fcmp olt float %i.am, %i.aq
  %i.be = extractelement <16 x float> %i.au, i64 9
  %i.bf = select i1 %i.bd, float %i.aq, float %i.be ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf
  %bc = bitcast <16 x float> %i.au to <4 x i128>
  %i.bh = extractelement <4 x i128> %bc, i64 3
  %i.bi = bitcast i128 %i.bh to <4 x float>
  %i.bj = fsub float 1.000000e+00, %i.s           ; 3 uses
  %i.bk = icmp eq i32 %i.w, 2
  %.scalar = fsub float 1.000000e+00, %i.q        ; 4 uses
  %i.bl = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.bm = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.x, i64 1
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bo = fsub <4 x float> %i.bn, %i.bl           ; 4 uses
  br i1 %i.bk, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bp = fdiv <4 x float> %i.bo, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %21 = shufflevector <4 x float> %i.bo, <4 x float> %i.bp, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bq = extractelement <4 x float> %i.bp, i64 1
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.br = fsub float 1.000000e+00, %i.bj
  %i.bs = fmul float %.scalar, %.scalar
  %i.bt = fdiv <4 x float> %i.bo, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 1
  %i.bv = fmul float %i.bu, %i.br
  %i.bw = shufflevector <4 x float> %i.bo, <4 x float> %i.bl, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.bx = insertelement <4 x float> %i.bw, float %i.bj, i64 3
  %i.by = fmul <4 x float> %i.bt, %i.bx
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.5909.0 = phi float [ %i.bs, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %.scalar, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.0904.0 = phi float [ %i.bv, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bq, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.bz = phi <4 x float> [ %i.by, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %21, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.cb = ptrtoint ptr %i.l to i64
  %i.cc = sub i64 %i.cb, %i.m                     ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph845, label %._crit_edge846

.lr.ph845:                                        ; preds = %.split.us
  %i.ce = udiv exact i64 %i.cc, 12
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !81 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.cg, null
  %i.cj = load i64, ptr %8, align 8
  %i.ck = inttoptr i64 %i.cj to ptr               ; 2 uses
  %i.cl = load i64, ptr %9, align 8
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = load i64, ptr %10, align 8
  %i.co = inttoptr i64 %i.cn to ptr               ; 3 uses
  %i.cp = load i64, ptr %11, align 8
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ct = load i64, ptr %7, align 8
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = load i64, ptr %6, align 8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cz = insertelement <16 x float> poison, float %i.bg, i64 0
  %i.da = shufflevector <16 x float> %i.cz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.dc = insertelement <16 x float> poison, float %i.am, i64 0
  %i.dd = shufflevector <16 x float> %i.dc, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.de = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.df = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dh = shufflevector <16 x float> %i.au, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.di = shufflevector <1 x float> %i.as, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dj = shufflevector <1 x float> %i.ao, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dk = shufflevector <4 x float> %i.ay, <4 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dl = shufflevector <16 x float> %foldExtExtBinop, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.dm = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.dn = shufflevector <16 x float> %i.dm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.do = fmul float %i.bc, 5.000000e-01
  %i.dp = insertelement <16 x float> poison, float %i.do, i64 0
  %i.dq = shufflevector <16 x float> %i.dp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dr = load i64, ptr %18, align 8
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load i64, ptr %19, align 8
  %i.du = inttoptr i64 %i.dt to ptr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.5897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dv = shufflevector <4 x float> %i.bz, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dw = insertelement <16 x float> poison, float %.sroa.5909.0, i64 0
  %i.dx = shufflevector <16 x float> %i.dw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dy = shufflevector <4 x float> %i.bl, <4 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dz = insertelement <16 x float> poison, float %i.bj, i64 0
  %i.ea = shufflevector <16 x float> %i.dz, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.eb = shufflevector <4 x float> %i.bz, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ec = insertelement <16 x float> poison, float %.sroa.0904.0, i64 0
  %i.ed = shufflevector <16 x float> %i.ec, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ee = insertelement <16 x float> poison, float %i.q, i64 0
  %i.ef = shufflevector <16 x float> %i.ee, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.eg = insertelement <16 x float> poison, float %i.s, i64 0
  %i.eh = shufflevector <16 x float> %i.eg, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ei = shufflevector <4 x float> %i.bz, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ej = shufflevector <4 x float> %i.bz, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge846:                                   ; preds = %._crit_edge.thread, %.split.us
  %.sroa.0760.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0760.1.lcssa950, %._crit_edge.thread ] ; 3 uses
  %.sroa.0764.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0764.1.lcssa951, %._crit_edge.thread ] ; 3 uses
  %i.ek = fcmp one <16 x float> %.sroa.0764.0.lcssa, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16
  %.not = icmp eq i16 %i.el, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.c:                                             ; preds = %.lr.ph845, %._crit_edge.thread
  %.0579843 = phi i64 [ 0, %.lr.ph845 ], [ %i.yh, %._crit_edge.thread ] ; 3 uses
  %.sroa.0764.0842 = phi <16 x float> [ zeroinitializer, %.lr.ph845 ], [ %.sroa.0764.1.lcssa951, %._crit_edge.thread ] ; 2 uses
  %.sroa.0760.0841 = phi <16 x float> [ zeroinitializer, %.lr.ph845 ], [ %.sroa.0760.1.lcssa950, %._crit_edge.thread ] ; 2 uses
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.0579843 ; 3 uses
  %i.en = getelementptr [4 x i8], ptr %i.ci, i64 %.0579843 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !63 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !63
  %i.er = load i32, ptr %i.em, align 4, !tbaa !84 ; 3 uses
  %i.es = sext i32 %i.er to i64                   ; 4 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !44
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.es
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !44
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !63
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.es
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !63
  %.sroa.0902.0.vec.insert = insertelement <16 x i32> poison, i32 %i.er, i64 0
  %.sroa.0902.60.vec.insert = shufflevector <16 x i32> %.sroa.0902.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fb = sext i32 %i.eo to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.fb ; 4 uses
  %i.fd = sub nsw i32 %i.eq, %i.eo
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fe
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.ff
  %i.fg = fmul float %i.ak, %i.eu
  %i.fh = fmul float %i.ak, %i.ew
  %i.fi = mul nsw i32 %i.ey, %2                   ; 2 uses
  %i.fj = mul nsw i32 %i.fa, %2                   ; 2 uses
  %i.fk = ptrtoint ptr %spec.select.i.i to i64
  %i.fl = ptrtoint ptr %i.fc to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 3                 ; 3 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !78
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !44
  %i.fv = mul nsw i32 %i.er, 3
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.fw ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !44
  %i.ga = fadd float %i.fu, %i.fz
  %i.gb = load <2 x float>, ptr %i.fs, align 4, !tbaa !44
  %i.gc = load <2 x float>, ptr %i.fx, align 4, !tbaa !44
  %i.gd = fadd <2 x float> %i.gb, %i.gc           ; 2 uses
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gf = shufflevector <2 x float> %i.gd, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gg = insertelement <16 x float> poison, float %i.ga, i64 0
  %i.gh = shufflevector <16 x float> %i.gg, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit792
  %i.gi = select i1 %.1581, i1 %i.ai, i1 false
  br i1 %i.gi, label %bb.y, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %.loopexit792
  %.0580836 = phi i1 [ false, %.lr.ph ], [ %.1581, %.loopexit792 ]
  %.0583835 = phi i64 [ 0, %.lr.ph ], [ %i.xg, %.loopexit792 ] ; 3 uses
  %.sroa.0764.1834 = phi <16 x float> [ %.sroa.0764.0842, %.lr.ph ], [ %.sroa.0764.7, %.loopexit792 ] ; 3 uses
  %.sroa.0760.1833 = phi <16 x float> [ %.sroa.0760.0841, %.lr.ph ], [ %.sroa.0760.7, %.loopexit792 ] ; 3 uses
  %.sroa.0750.0832 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0750.6, %.loopexit792 ] ; 3 uses
  %.sroa.0747.0831 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0747.6, %.loopexit792 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.0583835
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val635783 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.gk = mul <16 x i32> %.val635783, splat (i32 3) ; 3 uses
  %i.gl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ca, <16 x i32> %i.gk, <16 x i1> splat (i1 true), i32 4)
  %i.gm = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cx, <16 x i32> %i.gk, <16 x i1> splat (i1 true), i32 4)
  %i.gn = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cy, <16 x i32> %i.gk, <16 x i1> splat (i1 true), i32 4)
  %.val642 = load <16 x float>, ptr %i.a, align 64, !tbaa !57
  %.val641 = load <16 x float>, ptr %i.b, align 64, !tbaa !57 ; 2 uses
  %i.go = fcmp one <16 x float> %.val641, zeroinitializer ; 6 uses
  %i.gp = fcmp oeq <16 x float> %.val641, zeroinitializer
  %i.gq = fcmp one <16 x float> %.val642, zeroinitializer
  %i.gr = and <16 x i1> %i.gq, %i.gp              ; 3 uses
  %i.gs = fsub <16 x float> %i.ge, %i.gl          ; 2 uses
  %i.gt = fsub <16 x float> %i.gf, %i.gm          ; 2 uses
  %i.gu = fsub <16 x float> %i.gh, %i.gn          ; 2 uses
  %i.gv = fmul <16 x float> %i.gs, %i.gs
  %i.gw = fmul <16 x float> %i.gt, %i.gt
  %i.gx = fadd <16 x float> %i.gv, %i.gw
  %i.gy = fmul <16 x float> %i.gu, %i.gu
  %i.gz = fadd <16 x float> %i.gx, %i.gy          ; 2 uses
  %i.ha = fcmp olt <16 x float> %i.gz, %i.da      ; 4 uses
  %i.hb = or <16 x i1> %i.gr, %i.ha
  %i.hc = bitcast <16 x i1> %i.hb to i16
  %.not784 = icmp eq i16 %i.hc, 0
  br i1 %.not784, label %.loopexit792, label %.preheader796.preheader

bb.f:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 23 uses
  %i.hd = or disjoint i64 %.0583835, %indvars.iv  ; 2 uses
  %i.he = icmp slt i64 %i.hd, %i.fn
  br i1 %i.he, label %bb.g, label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.f
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.hf, align 4, !tbaa !44
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.hd ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hi = load i8, ptr %i.hh, align 4, !tbaa !86, !range !38, !noundef !39
  %i.hj = trunc nuw i8 %i.hi to i1
end_hunk_5
begin_hunk_6_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb1ELNS_12LJKernelTypeE3ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  %i.ll = fmul float %i.lc, %i.fc
  %i.lm = fsub float %i.lh, %i.ll
  br label %.loopexit515

.loopexit515:                                     ; preds = %.loopexit515.loopexit, %bb.n
  %.6432 = phi float [ %.4430, %bb.n ], [ %i.lm, %.loopexit515.loopexit ] ; 2 uses
  %.5413 = phi float [ %.3411, %bb.n ], [ %i.lk, %.loopexit515.loopexit ] ; 2 uses
  %i.ln = fcmp uge float %i.hc, %i.ah
  %.not514 = select i1 %i.gh, i1 %i.ln, i1 false
  br i1 %.not514, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit515
  %i.lo = fmul float %i.hb, %i.hb                 ; 3 uses
  %i.lp = fmul float %i.lo, %i.lo
  %i.lq = fmul float %i.lo, %i.lp
  %i.lr = fmul float %i.aq, %.sroa.speculated.i   ; 7 uses
  %i.ls = fneg float %i.lr
  %i.lt = tail call noundef float @expf(float noundef %i.ls) #22
  %i.lu = fadd float %i.lr, 1.000000e+00
  %i.lv = fmul float %i.lr, 5.000000e-01
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.lr, float %i.lu)
  %i.lx = fneg float %i.lt
  %i.ly = tail call float @llvm.fmuladd.f32(float %i.lx, float %i.lw, float 1.000000e+00)
  %i.lz = fmul float %i.lq, %i.ly
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lr, float 3.000000e-01, float -7.500000e-01)
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.lr, float %i.ma, float 1.000000e+00)
  %i.mc = fmul float %i.at, %i.mb
  %i.md = fcmp olt float %i.lr, f0x3DCB2FF4
  %i.me = select i1 %i.md, float %i.mc, float %i.lz
  %i.mf = select i1 %i.gz, float %i.cj, float %i.me
  %i.mg = fmul float %i.mf, f0x3E2AAAAB           ; 4 uses
  %i.mh = fmul float %i.ba, %i.fg
  %i.mi = fmul float %i.mg, %i.mh
  %i.mj = fadd float %.3, %i.mi
  %i.mk = fmul float %i.fg, %i.mg
  %i.ml = fsub float %.4423, %i.mk
  %i.mm = fmul float %i.j, %i.fm
  %i.mn = fmul float %i.mg, %i.mm
  %i.mo = fadd float %i.mj, %i.mn
  %i.mp = fmul float %i.mg, %i.fm
  %i.mq = fadd float %i.ml, %i.mp
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit515, %.loopexit.loopexit, %.lr.ph
  %.7433 = phi float [ %.1427531, %.lr.ph ], [ %.6432, %.loopexit.loopexit ], [ %.6432, %.loopexit515 ] ; 3 uses
  %.7 = phi float [ %.1420532, %.lr.ph ], [ %i.mq, %.loopexit.loopexit ], [ %.4423, %.loopexit515 ] ; 3 uses
  %.1416 = phi i1 [ %.0415533, %.lr.ph ], [ true, %.loopexit.loopexit ], [ true, %.loopexit515 ] ; 2 uses
  %.6414 = phi float [ %.0408534, %.lr.ph ], [ %.5413, %.loopexit.loopexit ], [ %.5413, %.loopexit515 ] ; 2 uses
  %.6 = phi float [ %.0405535, %.lr.ph ], [ %i.mo, %.loopexit.loopexit ], [ %.3, %.loopexit515 ] ; 2 uses
  %i.mr = add nuw nsw i64 %.0403536, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.mr, %i.eh
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !442

bb.o:                                             ; preds = %._crit_edge
  %i.ms = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !88
  %i.mu = sext i32 %i.mt to i64                   ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.mu ; 2 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !44
  %i.mx = fadd float %.6414, %i.mw
  store float %i.mx, ptr %i.mv, align 4, !tbaa !44
  %i.my = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.mu ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !44
  %i.na = fadd float %.6, %i.mz
  store float %i.na, ptr %i.my, align 4, !tbaa !44
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge, %bb.o, %._crit_edge
  %.1420.lcssa655 = phi float [ %.7, %._crit_edge ], [ %.7, %bb.o ], [ %.0419542, %.critedge ] ; 3 uses
  %.1427.lcssa654 = phi float [ %.7433, %._crit_edge ], [ %.7433, %bb.o ], [ %.0426541, %.critedge ] ; 3 uses
  %i.nb = add nuw nsw i64 %.0417543, 1            ; 2 uses
  %exitcond564.not = icmp eq i64 %i.nb, %i.bs
  br i1 %exitcond564.not, label %._crit_edge544, label %.critedge, !llvm.loop !443

bb.p:                                             ; preds = %._crit_edge544
  %i.nc = load i64, ptr %20, align 8
  %i.nd = inttoptr i64 %i.nc to ptr
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !44
  %i.ng = fadd float %.1427.lcssa654, %i.nf
  store float %i.ng, ptr %i.ne, align 4, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge544
  %i.nh = fcmp une float %.1420.lcssa655, 0.000000e+00
  br i1 %i.nh, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ni = load i64, ptr %20, align 8
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 12 ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !44
  %i.nm = fadd float %.1420.lcssa655, %i.nl
  store float %i.nm, ptr %i.nk, align 4, !tbaa !44
  br label %.thread

.thread:                                          ; preds = %.split.us, %bb.r, %bb.q
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !81 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !89
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !63
  %i.nt = sext i32 %i.ns to i64
  %.not.i.i465 = icmp eq ptr %i.no, null
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nt
  %spec.select.i.i466 = select i1 %.not.i.i465, ptr null, ptr %i.nu
  %i.nv = ptrtoint ptr %spec.select.i.i466 to i64
  %i.nw = ptrtoint ptr %i.no to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = lshr exact i64 %i.nx, 3
  %i.nz = mul i64 %i.ny, 150
  %i.oa = add i64 %i.nz, %i.bq
  %i.ob = trunc i64 %i.oa to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.ob)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE0ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree noundef readonly align 8 captures(none) dead_on_return %16, ptr nofree noundef captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = load i64, ptr %14, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !105  ; 2 uses
  %i.w = sitofp i32 %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !42
  %i.z = load float, ptr %i.t, align 4, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !106 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !69, !range !38, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !70, !range !38, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.ak = phi i1 [ %i.ag, %bb.b ], [ false, %bb.a ]
  %i.al = phi i1 [ %i.aj, %bb.b ], [ true, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.an = load float, ptr %i.am, align 4, !tbaa !71 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !75 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !102 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.at = load <1 x float>, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = load float, ptr %i.au, align 8, !tbaa !76 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ax = load <1 x float>, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.az = load <16 x float>, ptr %i.ay, align 4   ; 2 uses
  %bc = bitcast <16 x float> %i.az to <16 x i32>
  %i.ba = extractelement <16 x i32> %bc, i64 7    ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 17
  %switch.cast = trunc i32 %i.ba to i17
  %switch.downshift = lshr i17 -63481, %switch.cast
  %switch.masked = trunc i17 %switch.downshift to i1
  %i.bc = select i1 %i.bb, i1 %switch.masked, i1 false ; 2 uses
  %i.bd = fcmp olt float %i.ap, %i.av
  %.val = load float, ptr %i.au, align 8
  %.val1043 = load float, ptr %i.ao, align 8
  %i.be = select i1 %i.bd, float %.val, float %.val1043 ; 2 uses
  %i.bf = fmul float %i.be, %i.be
  %i.bg = fsub float 1.000000e+00, %i.r           ; 3 uses
  %i.bh = icmp eq i32 %i.v, 2
  %.scalar = fsub float 1.000000e+00, %i.p        ; 4 uses
  %i.bi = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.bj = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.w, i64 1
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bl = fsub <4 x float> %i.bk, %i.bi           ; 4 uses
  br i1 %i.bh, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %.thread
  %i.bm = fdiv <4 x float> %i.bl, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %24 = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bn = extractelement <4 x float> %i.bm, i64 1
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %.thread
  %i.bo = fsub float 1.000000e+00, %i.bg
  %i.bp = fmul float %.scalar, %.scalar
  %i.bq = fdiv <4 x float> %i.bl, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %i.br = extractelement <4 x float> %i.bq, i64 1
  %i.bs = fmul float %i.br, %i.bo
  %i.bt = shufflevector <4 x float> %i.bl, <4 x float> %i.bi, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float %i.bg, i64 3
  %i.bv = fmul <4 x float> %i.bq, %i.bu
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.61000.0 = phi float [ %i.bp, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %.scalar, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.0995.0 = phi float [ %i.bs, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bn, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.bw = phi <4 x float> [ %i.bv, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %24, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.by = load ptr, ptr %16, align 8, !tbaa !74   ; 32 uses
  %i.bz = ptrtoint ptr %i.k to i64
  %i.ca = sub i64 %i.bz, %i.l                     ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph938, label %._crit_edge939

.lr.ph938:                                        ; preds = %.split.us
  %i.cc = udiv exact i64 %i.ca, 12
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cj = insertelement <16 x float> poison, float %i.bf, i64 0
  %i.ck = shufflevector <16 x float> %i.cj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cl = insertelement <16 x float> poison, float %i.ap, i64 0
  %i.cm = shufflevector <16 x float> %i.cl, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cn = insertelement <16 x float> poison, float %i.ar, i64 0
  %i.co = shufflevector <16 x float> %i.cn, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.cp = shufflevector <1 x float> %i.at, <1 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.cq = fmul float %i.ar, 2.000000e+00
  %i.cr = insertelement <16 x float> poison, float %i.cq, i64 0
  %i.cs = shufflevector <16 x float> %i.cr, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ct = insertelement <16 x float> poison, float %i.av, i64 0
  %i.cu = shufflevector <16 x float> %i.ct, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cv = shufflevector <16 x float> %i.az, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cw = shufflevector <1 x float> %i.ax, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cx = fmul float %i.ap, %i.ap
  %i.cy = insertelement <16 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <16 x float> %i.cy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.da = fmul float %i.ar, -2.000000e+00
  %i.db = insertelement <16 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <16 x float> %i.db, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.5985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dd = shufflevector <4 x float> %i.bw, <4 x float> poison, <16 x i32> zeroinitializer
  %i.de = insertelement <16 x float> poison, float %.sroa.61000.0, i64 0
  %i.df = shufflevector <16 x float> %i.de, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dg = shufflevector <4 x float> %i.bi, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.dh = insertelement <16 x float> poison, float %i.bg, i64 0
  %i.di = shufflevector <16 x float> %i.dh, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dj = shufflevector <4 x float> %i.bw, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dk = insertelement <16 x float> poison, float %.sroa.0995.0, i64 0
  %i.dl = shufflevector <16 x float> %i.dk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dm = insertelement <16 x float> poison, float %i.p, i64 0
  %i.dn = shufflevector <16 x float> %i.dm, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.do = insertelement <16 x float> poison, float %i.r, i64 0
  %i.dp = shufflevector <16 x float> %i.do, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dq = shufflevector <4 x float> %i.bw, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.dr = shufflevector <4 x float> %i.bw, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge939.loopexit:                          ; preds = %._crit_edge.thread
  %i.ds = icmp ne i16 %.sroa.0837.1.lcssa1039, 0
  br label %._crit_edge939

._crit_edge939:                                   ; preds = %._crit_edge939.loopexit, %.split.us
  %.sroa.0837.0.lcssa = phi i1 [ false, %.split.us ], [ %i.ds, %._crit_edge939.loopexit ]
  %.sroa.0843.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0843.1.lcssa1040, %._crit_edge939.loopexit ] ; 3 uses
  %.sroa.0846.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0846.1.lcssa1041, %._crit_edge939.loopexit ] ; 3 uses
  %i.dt = fcmp one <16 x float> %.sroa.0846.0.lcssa, zeroinitializer
  %i.du = bitcast <16 x i1> %i.dt to i16
  %.not = icmp eq i16 %i.du, 0
  br i1 %.not, label %bb.ag, label %bb.af

bb.c:                                             ; preds = %.lr.ph938, %._crit_edge.thread
  %.0613936 = phi i64 [ 0, %.lr.ph938 ], [ %i.aim, %._crit_edge.thread ] ; 3 uses
  %.sroa.0846.0935 = phi <16 x float> [ zeroinitializer, %.lr.ph938 ], [ %.sroa.0846.1.lcssa1041, %._crit_edge.thread ] ; 2 uses
  %.sroa.0843.0934 = phi <16 x float> [ zeroinitializer, %.lr.ph938 ], [ %.sroa.0843.1.lcssa1040, %._crit_edge.thread ] ; 2 uses
  %.sroa.0837.0933 = phi i16 [ 0, %.lr.ph938 ], [ %.sroa.0837.1.lcssa1039, %._crit_edge.thread ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.0613936 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !78 ; 2 uses
  %i.dy = load ptr, ptr %i.cd, align 8, !tbaa !81 ; 2 uses
  %i.dz = load ptr, ptr %i.ce, align 8, !tbaa !83
  %i.ea = getelementptr [4 x i8], ptr %i.dz, i64 %.0613936 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !63 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ea, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !63
  %i.ee = load i32, ptr %i.dv, align 4, !tbaa !84 ; 3 uses
  %i.ef = sext i32 %i.ee to i64                   ; 4 uses
  %i.eg = load i64, ptr %8, align 8
  %i.eh = inttoptr i64 %i.eg to ptr               ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ef
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !44
  %i.ek = load i64, ptr %9, align 8
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ef
  %i.en = load float, ptr %i.em, align 4, !tbaa !44
  %i.eo = load i64, ptr %10, align 8
  %i.ep = inttoptr i64 %i.eo to ptr               ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.ef
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !63
  %i.es = load i64, ptr %11, align 8
  %i.et = inttoptr i64 %i.es to ptr               ; 3 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ef
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !63
  %.sroa.0992.0.vec.insert = insertelement <16 x i32> poison, i32 %i.ee, i64 0
  %.sroa.0990.0.vec.insert = insertelement <16 x i32> poison, i32 %i.dx, i64 0
  %.sroa.0992.60.vec.insert = shufflevector <16 x i32> %.sroa.0992.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ew = sext i32 %i.eb to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ew ; 4 uses
  %i.ey = sub nsw i32 %i.ed, %i.eb
  %i.ez = sext i32 %i.ey to i64
  %.not.i.i = icmp eq ptr %i.dy, null
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ez
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fa
  %i.fb = fmul float %i.an, %i.ej
  %i.fc = fmul float %i.an, %i.en
  %i.fd = mul nsw i32 %i.er, %2                   ; 2 uses
  %i.fe = mul nsw i32 %i.ev, %2                   ; 2 uses
  %i.ff = ptrtoint ptr %spec.select.i.i to i64
  %i.fg = ptrtoint ptr %i.ex to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3                 ; 3 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.fk = sext i32 %i.dx to i64
  %i.fl = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !44
  %i.fo = mul nsw i32 %i.ee, 3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.fp ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 8
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !44
  %i.ft = fadd float %i.fn, %i.fs
  %i.fu = load <2 x float>, ptr %i.fl, align 4, !tbaa !44
  %i.fv = load <2 x float>, ptr %i.fq, align 4, !tbaa !44
  %i.fw = fadd <2 x float> %i.fu, %i.fv           ; 2 uses
  %i.fx = load i64, ptr %6, align 8               ; 2 uses
  %i.fy = inttoptr i64 %i.fx to ptr               ; 2 uses
  %i.fz = shufflevector <2 x float> %i.fw, <2 x float> poison, <16 x i32> zeroinitializer
  %i.ga = shufflevector <2 x float> %i.fw, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gb = insertelement <16 x float> poison, float %i.ft, i64 0
  %i.gc = shufflevector <16 x float> %i.gb, <16 x float> poison, <16 x i32> zeroinitializer
  %.cast = inttoptr i64 %i.fx to ptr              ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.cast, i64 4 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.aa
  br i1 %.1615, label %bb.ab, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.aa
  %.0614924 = phi i1 [ false, %.lr.ph ], [ %.1615, %bb.aa ]
  %.0618923 = phi i64 [ 0, %.lr.ph ], [ %i.zt, %bb.aa ] ; 3 uses
  %.sroa.0846.1922 = phi <16 x float> [ %.sroa.0846.0935, %.lr.ph ], [ %.sroa.0846.7, %bb.aa ] ; 3 uses
  %.sroa.0843.1921 = phi <16 x float> [ %.sroa.0843.0934, %.lr.ph ], [ %.sroa.0843.5, %bb.aa ] ; 3 uses
  %.sroa.0837.1920 = phi i16 [ %.sroa.0837.0933, %.lr.ph ], [ %.sroa.0837.3, %bb.aa ] ; 3 uses
  %.sroa.0830.0919 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0830.6, %bb.aa ] ; 3 uses
  %.sroa.0828.0918 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0828.4, %bb.aa ] ; 3 uses
  %.sroa.0825.0917 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0825.2, %bb.aa ] ; 3 uses
  %.sroa.0822.0916 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0822.2, %bb.aa ] ; 3 uses
  %.sroa.0819.0915 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0819.2, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.0618923
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val670876 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.gf = mul <16 x i32> %.val670876, splat (i32 3) ; 19 uses
  %i.gg = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bx, <16 x i32> %i.gf, <16 x i1> splat (i1 true), i32 4)
  %i.gh = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ch, <16 x i32> %i.gf, <16 x i1> splat (i1 true), i32 4)
  %i.gi = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ci, <16 x i32> %i.gf, <16 x i1> splat (i1 true), i32 4)
  %.val677 = load <16 x float>, ptr %i.a, align 64, !tbaa !57
  %.val676 = load <16 x float>, ptr %i.b, align 64, !tbaa !57 ; 2 uses
  %i.gj = fcmp one <16 x float> %.val676, zeroinitializer ; 7 uses
  %i.gk = fcmp oeq <16 x float> %.val676, zeroinitializer
  %i.gl = fcmp one <16 x float> %.val677, zeroinitializer
  %i.gm = and <16 x i1> %i.gl, %i.gk              ; 9 uses
  %i.gn = bitcast <16 x i1> %i.gm to i16
  %i.go = fsub <16 x float> %i.fz, %i.gg          ; 3 uses
  %i.gp = fsub <16 x float> %i.ga, %i.gh          ; 3 uses
  %i.gq = fsub <16 x float> %i.gc, %i.gi          ; 3 uses
  %i.gr = fmul <16 x float> %i.go, %i.go
  %i.gs = fmul <16 x float> %i.gp, %i.gp
  %i.gt = fadd <16 x float> %i.gr, %i.gs
  %i.gu = fmul <16 x float> %i.gq, %i.gq
  %i.gv = fadd <16 x float> %i.gt, %i.gu          ; 2 uses
  %i.gw = fcmp olt <16 x float> %i.gv, %i.ck      ; 4 uses
  %i.gx = or <16 x i1> %i.gm, %i.gw
  %i.gy = bitcast <16 x i1> %i.gx to i16
  %.not877 = icmp eq i16 %i.gy, 0
  br i1 %.not877, label %bb.aa, label %.preheader889.preheader

bb.f:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 21 uses
  %i.gz = or disjoint i64 %.0618923, %indvars.iv  ; 2 uses
  %i.ha = icmp slt i64 %i.gz, %i.fi
  br i1 %i.ha, label %bb.g, label %.loopexit.loopexit
end_hunk_6
begin_hunk_7_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE0ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  %.1453.lcssa710 = phi i8 [ %.3455, %._crit_edge ], [ %.3455, %bb.s ], [ %.3455, %bb.t ], [ %.0452598, %.critedge ] ; 2 uses
  %.1458.lcssa709 = phi float [ %.5462, %._crit_edge ], [ %.5462, %bb.s ], [ %.5462, %bb.t ], [ %.0457597, %.critedge ] ; 3 uses
  %.1464.lcssa708 = phi float [ %.8, %._crit_edge ], [ %.8, %bb.s ], [ %.8, %bb.t ], [ %.0463596, %.critedge ] ; 3 uses
  %i.mz = add nuw nsw i64 %.0451599, 1            ; 2 uses
  %exitcond619.not = icmp eq i64 %i.mz, %i.bt
  br i1 %exitcond619.not, label %._crit_edge600, label %.critedge, !llvm.loop !448

bb.u:                                             ; preds = %._crit_edge600
  %i.na = load i64, ptr %20, align 8
  %i.nb = inttoptr i64 %i.na to ptr
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !44
  %i.ne = fadd float %.1464.lcssa708, %i.nd
  store float %i.ne, ptr %i.nc, align 4, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge600
  %i.nf = fcmp une float %.1458.lcssa709, 0.000000e+00
  br i1 %i.nf, label %bb.w, label %.thread741

bb.w:                                             ; preds = %bb.v
  %i.ng = load i64, ptr %20, align 8
  %i.nh = inttoptr i64 %i.ng to ptr
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 12 ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !44
  %i.nk = fadd float %.1458.lcssa709, %i.nj
  store float %i.nk, ptr %i.ni, align 4, !tbaa !44
  br label %.thread741

.thread741:                                       ; preds = %.split.us, %bb.w, %bb.v
  %.0452.lcssa698744 = phi i1 [ %i.cp, %bb.v ], [ %i.cp, %bb.w ], [ false, %.split.us ]
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !81 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !89
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 -4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !63
  %i.nr = sext i32 %i.nq to i64
  %.not.i.i507 = icmp eq ptr %i.nm, null
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.nr
  %spec.select.i.i508 = select i1 %.not.i.i507, ptr null, ptr %i.ns
  %i.nt = ptrtoint ptr %spec.select.i.i508 to i64
  %i.nu = ptrtoint ptr %i.nm to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = lshr exact i64 %i.nv, 3
  %i.nx = mul i64 %i.nw, 150
  %i.ny = add i64 %i.br, %i.nx
  %i.nz = trunc i64 %i.ny to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.nz)
  %or.cond563 = select i1 %i.av, i1 %.0452.lcssa698744, i1 false
  br i1 %or.cond563, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %.thread741
  %i.oa = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.4)
          to label %bb.y unwind label %.thread554

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.z unwind label %.thread559

bb.z:                                             ; preds = %bb.y
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %23, align 8, !tbaa !59
  %i.ob = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE0ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_, ptr %i.ob, align 8, !tbaa !94
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !94
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 1338, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !63
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.oa, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr %i.oa, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #21
          to label %bb.af unwind label %bb.ab

.thread554:                                       ; preds = %bb.x
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread559:                                       ; preds = %bb.y
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.0 = phi i1 [ false, %bb.aa ], [ true, %bb.z ]
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %.0, label %bb.ac, label %bb.ad

.sink.split:                                      ; preds = %.thread554, %.thread559
  %.pn.pn558.ph = phi { ptr, i32 } [ %i.od, %.thread559 ], [ %i.oc, %.thread554 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.ab
  %.pn.pn558 = phi { ptr, i32 } [ %i.oe, %bb.ab ], [ %.pn.pn558.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.oa) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn.pn557 = phi { ptr, i32 } [ %.pn.pn558, %bb.ac ], [ %i.oe, %bb.ab ]
  resume { ptr, i32 } %.pn.pn557

bb.ae:                                            ; preds = %.thread741
  ret void

bb.af:                                            ; preds = %bb.aa
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE0ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree readnone align 8 captures(none) dead_on_return %16, ptr nofree readnone captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = load i64, ptr %14, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !105  ; 2 uses
  %i.w = sitofp i32 %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !42
  %i.z = load float, ptr %i.t, align 4, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !106 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %_ZL7usingRFRK22CoulombInteractionType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !70, !range !38, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

_ZL7usingRFRK22CoulombInteractionType.exit:       ; preds = %bb.b, %bb.a
  %i.ah = phi i1 [ true, %bb.a ], [ %i.ag, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !71 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !75 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.an = load float, ptr %i.am, align 8, !tbaa !102 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.ap = load <1 x float>, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !76 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.at = load <1 x float>, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = load <16 x float>, ptr %i.au, align 4   ; 2 uses
  %bc = bitcast <16 x float> %i.av to <16 x i32>
  %i.aw = extractelement <16 x i32> %bc, i64 7    ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 17
  %switch.cast = trunc i32 %i.aw to i17
  %switch.downshift = lshr i17 -63481, %switch.cast
  %switch.masked = trunc i17 %switch.downshift to i1
  %i.ay = select i1 %i.ax, i1 %switch.masked, i1 false ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ar
  %.val = load float, ptr %i.aq, align 8
  %.val915 = load float, ptr %i.ak, align 8
  %i.ba = select i1 %i.az, float %.val, float %.val915 ; 2 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = fsub float 1.000000e+00, %i.r           ; 3 uses
  %i.bd = icmp eq i32 %i.v, 2
  %.scalar = fsub float 1.000000e+00, %i.p        ; 4 uses
  %i.be = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.bf = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.w, i64 1
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bh = fsub <4 x float> %i.bg, %i.be           ; 4 uses
  br i1 %i.bd, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bi = fdiv <4 x float> %i.bh, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %24 = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bj = extractelement <4 x float> %i.bi, i64 1
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bk = fsub float 1.000000e+00, %i.bc
  %i.bl = fmul float %.scalar, %.scalar
  %i.bm = fdiv <4 x float> %i.bh, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %i.bn = extractelement <4 x float> %i.bm, i64 1
  %i.bo = fmul float %i.bn, %i.bk
  %i.bp = shufflevector <4 x float> %i.bh, <4 x float> %i.be, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float %i.bc, i64 3
  %i.br = fmul <4 x float> %i.bm, %i.bq
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.6875.0 = phi float [ %i.bl, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %.scalar, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.0870.0 = phi float [ %i.bo, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bj, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.bs = phi <4 x float> [ %i.br, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %24, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.bu = ptrtoint ptr %i.k to i64
  %i.bv = sub i64 %i.bu, %i.l                     ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph818, label %._crit_edge819

.lr.ph818:                                        ; preds = %.split.us
  %i.bx = udiv exact i64 %i.bv, 12
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.bz, null
  %i.cc = load i64, ptr %8, align 8
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = load i64, ptr %9, align 8
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load i64, ptr %10, align 8
  %i.ch = inttoptr i64 %i.cg to ptr               ; 3 uses
  %i.ci = load i64, ptr %11, align 8
  %i.cj = inttoptr i64 %i.ci to ptr               ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.cm = load i64, ptr %6, align 8
  %i.cn = inttoptr i64 %i.cm to ptr               ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cq = insertelement <16 x float> poison, float %i.bb, i64 0
  %i.cr = shufflevector <16 x float> %i.cq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.ct = insertelement <16 x float> poison, float %i.al, i64 0
  %i.cu = shufflevector <16 x float> %i.ct, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cv = insertelement <16 x float> poison, float %i.an, i64 0
  %i.cw = shufflevector <16 x float> %i.cv, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.cx = shufflevector <1 x float> %i.ap, <1 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.cy = fmul float %i.an, 2.000000e+00
  %i.cz = insertelement <16 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <16 x float> %i.cz, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.db = insertelement <16 x float> poison, float %i.ar, i64 0
  %i.dc = shufflevector <16 x float> %i.db, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dd = shufflevector <16 x float> %i.av, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.de = shufflevector <1 x float> %i.at, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.df = fmul float %i.al, %i.al
  %i.dg = insertelement <16 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <16 x float> %i.dg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.di = load i64, ptr %18, align 8
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load i64, ptr %19, align 8
  %i.dl = inttoptr i64 %i.dk to ptr
  %.sroa.5863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dm = shufflevector <4 x float> %i.bs, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dn = insertelement <16 x float> poison, float %.sroa.6875.0, i64 0
  %i.do = shufflevector <16 x float> %i.dn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dp = shufflevector <4 x float> %i.be, <4 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dq = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ds = shufflevector <4 x float> %i.bs, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dt = insertelement <16 x float> poison, float %.sroa.0870.0, i64 0
  %i.du = shufflevector <16 x float> %i.dt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dv = insertelement <16 x float> poison, float %i.p, i64 0
  %i.dw = shufflevector <16 x float> %i.dv, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dx = insertelement <16 x float> poison, float %i.r, i64 0
  %i.dy = shufflevector <16 x float> %i.dx, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dz = shufflevector <4 x float> %i.bs, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ea = shufflevector <4 x float> %i.bs, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge819.loopexit:                          ; preds = %._crit_edge.thread
  %i.eb = icmp ne i16 %.sroa.0731.1.lcssa911, 0
  br label %._crit_edge819

._crit_edge819:                                   ; preds = %._crit_edge819.loopexit, %.split.us
  %.sroa.0731.0.lcssa = phi i1 [ false, %.split.us ], [ %i.eb, %._crit_edge819.loopexit ]
  %.sroa.0735.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0735.1.lcssa912, %._crit_edge819.loopexit ] ; 3 uses
  %.sroa.0738.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0738.1.lcssa913, %._crit_edge819.loopexit ] ; 3 uses
  %i.ec = fcmp one <16 x float> %.sroa.0738.0.lcssa, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16
  %.not = icmp eq i16 %i.ed, 0
  br i1 %.not, label %bb.ab, label %bb.aa

bb.c:                                             ; preds = %.lr.ph818, %._crit_edge.thread
  %.0560816 = phi i64 [ 0, %.lr.ph818 ], [ %i.vd, %._crit_edge.thread ] ; 3 uses
  %.sroa.0738.0815 = phi <16 x float> [ zeroinitializer, %.lr.ph818 ], [ %.sroa.0738.1.lcssa913, %._crit_edge.thread ] ; 2 uses
  %.sroa.0735.0814 = phi <16 x float> [ zeroinitializer, %.lr.ph818 ], [ %.sroa.0735.1.lcssa912, %._crit_edge.thread ] ; 2 uses
  %.sroa.0731.0813 = phi i16 [ 0, %.lr.ph818 ], [ %.sroa.0731.1.lcssa911, %._crit_edge.thread ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.0560816 ; 3 uses
  %i.ef = getelementptr [4 x i8], ptr %i.cb, i64 %.0560816 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !63 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !63
  %i.ej = load i32, ptr %i.ee, align 4, !tbaa !84 ; 3 uses
  %i.ek = sext i32 %i.ej to i64                   ; 4 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !44
  %i.en = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ek
  %i.eo = load float, ptr %i.en, align 4, !tbaa !44
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ek
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !63
  %i.er = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ek
  %i.es = load i32, ptr %i.er, align 4, !tbaa !63
  %.sroa.0868.0.vec.insert = insertelement <16 x i32> poison, i32 %i.ej, i64 0
  %.sroa.0868.60.vec.insert = shufflevector <16 x i32> %.sroa.0868.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.et = sext i32 %i.eg to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.et ; 4 uses
  %i.ev = sub nsw i32 %i.ei, %i.eg
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ew
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.ex
  %i.ey = fmul float %i.aj, %i.em
  %i.ez = fmul float %i.aj, %i.eo
  %i.fa = mul nsw i32 %i.eq, %2                   ; 2 uses
  %i.fb = mul nsw i32 %i.es, %2                   ; 2 uses
  %i.fc = ptrtoint ptr %spec.select.i.i to i64
  %i.fd = ptrtoint ptr %i.eu to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 3                 ; 3 uses
  %i.fg = icmp sgt i64 %i.ff, 0
  br i1 %i.fg, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !78
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !44
  %i.fn = mul nsw i32 %i.ej, 3
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.fo ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !44
  %i.fs = fadd float %i.fm, %i.fr
  %i.ft = load <2 x float>, ptr %i.fk, align 4, !tbaa !44
  %i.fu = load <2 x float>, ptr %i.fp, align 4, !tbaa !44
  %i.fv = fadd <2 x float> %i.ft, %i.fu           ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <16 x i32> zeroinitializer
  %i.fx = shufflevector <2 x float> %i.fv, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.fy = insertelement <16 x float> poison, float %i.fs, i64 0
  %i.fz = shufflevector <16 x float> %i.fy, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit773
  %i.ga = select i1 %.1562, i1 %i.ah, i1 false
  br i1 %i.ga, label %bb.z, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %.loopexit773
  %.0561807 = phi i1 [ false, %.lr.ph ], [ %.1562, %.loopexit773 ]
  %.0564806 = phi i64 [ 0, %.lr.ph ], [ %i.uc, %.loopexit773 ] ; 3 uses
  %.sroa.0738.1805 = phi <16 x float> [ %.sroa.0738.0815, %.lr.ph ], [ %.sroa.0738.7, %.loopexit773 ] ; 3 uses
  %.sroa.0735.1804 = phi <16 x float> [ %.sroa.0735.0814, %.lr.ph ], [ %.sroa.0735.5, %.loopexit773 ] ; 3 uses
  %.sroa.0731.1803 = phi i16 [ %.sroa.0731.0813, %.lr.ph ], [ %.sroa.0731.3, %.loopexit773 ] ; 3 uses
  %.sroa.0724.0802 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0724.6, %.loopexit773 ] ; 3 uses
  %.sroa.0722.0801 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0722.4, %.loopexit773 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.0564806
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val616765 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.gc = mul <16 x i32> %.val616765, splat (i32 3) ; 3 uses
  %i.gd = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bt, <16 x i32> %i.gc, <16 x i1> splat (i1 true), i32 4)
  %i.ge = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.co, <16 x i32> %i.gc, <16 x i1> splat (i1 true), i32 4)
  %i.gf = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cp, <16 x i32> %i.gc, <16 x i1> splat (i1 true), i32 4)
  %.val623 = load <16 x float>, ptr %i.a, align 64, !tbaa !57
  %.val622 = load <16 x float>, ptr %i.b, align 64, !tbaa !57 ; 2 uses
  %i.gg = fcmp one <16 x float> %.val622, zeroinitializer ; 7 uses
  %i.gh = fcmp oeq <16 x float> %.val622, zeroinitializer
  %i.gi = fcmp one <16 x float> %.val623, zeroinitializer
  %i.gj = and <16 x i1> %i.gi, %i.gh              ; 7 uses
  %i.gk = bitcast <16 x i1> %i.gj to i16
  %i.gl = fsub <16 x float> %i.fw, %i.gd          ; 2 uses
  %i.gm = fsub <16 x float> %i.fx, %i.ge          ; 2 uses
  %i.gn = fsub <16 x float> %i.fz, %i.gf          ; 2 uses
  %i.go = fmul <16 x float> %i.gl, %i.gl
  %i.gp = fmul <16 x float> %i.gm, %i.gm
  %i.gq = fadd <16 x float> %i.go, %i.gp
  %i.gr = fmul <16 x float> %i.gn, %i.gn
  %i.gs = fadd <16 x float> %i.gq, %i.gr          ; 2 uses
  %i.gt = fcmp olt <16 x float> %i.gs, %i.cr      ; 4 uses
  %i.gu = or <16 x i1> %i.gj, %i.gt
  %i.gv = bitcast <16 x i1> %i.gu to i16
  %.not766 = icmp eq i16 %i.gv, 0
  br i1 %.not766, label %.loopexit773, label %.preheader777.preheader

bb.f:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 21 uses
  %i.gw = or disjoint i64 %.0564806, %indvars.iv  ; 2 uses
  %i.gx = icmp slt i64 %i.gw, %i.ff
  br i1 %i.gx, label %bb.g, label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.f
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.gy, align 4, !tbaa !44
end_hunk_7
begin_hunk_8_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE2ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  store float %i.ou, ptr %i.os, align 4, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge594
  %i.ov = extractelement <2 x float> %i.oo, i64 1 ; 2 uses
  %i.ow = fcmp une float %i.ov, 0.000000e+00
  br i1 %i.ow, label %bb.s, label %.thread717

bb.s:                                             ; preds = %bb.r
  %i.ox = load i64, ptr %20, align 8
  %i.oy = inttoptr i64 %i.ox to ptr
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 12 ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !44
  %i.pb = fadd float %i.ov, %i.pa
  store float %i.pb, ptr %i.oz, align 4, !tbaa !44
  br label %.thread717

.thread717:                                       ; preds = %.split.us, %bb.s, %bb.r
  %.0465.lcssa692720 = phi i1 [ %i.dh, %bb.r ], [ %i.dh, %bb.s ], [ false, %.split.us ]
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !81 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !89
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !63
  %i.pi = sext i32 %i.ph to i64
  %.not.i.i515 = icmp eq ptr %i.pd, null
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pi
  %spec.select.i.i516 = select i1 %.not.i.i515, ptr null, ptr %i.pj
  %i.pk = ptrtoint ptr %spec.select.i.i516 to i64
  %i.pl = ptrtoint ptr %i.pd to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = lshr exact i64 %i.pm, 3
  %i.po = mul i64 %i.pn, 150
  %i.pp = add i64 %i.po, %i.ce
  %i.pq = trunc i64 %i.pp to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.pq)
  %or.cond565 = select i1 %i.ba, i1 %.0465.lcssa692720, i1 false
  br i1 %or.cond565, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %.thread717
  %i.pr = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.4)
          to label %bb.u unwind label %.thread556

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.v unwind label %.thread561

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %23, align 8, !tbaa !59
  %i.ps = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE2ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_, ptr %i.ps, align 8, !tbaa !94
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !94
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 1338, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !63
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.pr, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr %i.pr, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #21
          to label %bb.ab unwind label %bb.x

.thread556:                                       ; preds = %bb.t
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread561:                                       ; preds = %bb.u
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  br label %.sink.split

bb.x:                                             ; preds = %bb.v, %bb.w
  %.0 = phi i1 [ false, %bb.w ], [ true, %bb.v ]
  %i.pv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %.0, label %bb.y, label %bb.z

.sink.split:                                      ; preds = %.thread556, %.thread561
  %.pn.pn560.ph = phi { ptr, i32 } [ %i.pu, %.thread561 ], [ %i.pt, %.thread556 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %.pn.pn560 = phi { ptr, i32 } [ %i.pv, %bb.x ], [ %.pn.pn560.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.pr) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn559 = phi { ptr, i32 } [ %.pn.pn560, %bb.y ], [ %i.pv, %bb.x ]
  resume { ptr, i32 } %.pn.pn559

bb.aa:                                            ; preds = %.thread717
  ret void

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE3ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree noundef readonly align 8 captures(none) dead_on_return %16, ptr nofree noundef captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %i.i = alloca [2 x [16 x float]], align 64      ; 6 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = load i64, ptr %14, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !105  ; 2 uses
  %i.x = sitofp i32 %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !42
  %i.aa = load float, ptr %i.u, align 4, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69, !range !38, !noundef !39
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !70, !range !38, !noundef !39
  %i.ak = trunc nuw i8 %i.aj to i1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.al = phi i1 [ %i.ah, %bb.b ], [ false, %bb.a ]
  %i.am = phi i1 [ %i.ak, %bb.b ], [ true, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ao = load float, ptr %i.an, align 4, !tbaa !71 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !75 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.as = load float, ptr %i.ar, align 8, !tbaa !102 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.au = load <1 x float>, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aw = load <1 x float>, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !76 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ba = load <1 x float>, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bc = load <16 x float>, ptr %i.bb, align 4   ; 4 uses
  %foldExtExtBinop = fmul <16 x float> %i.bc, %i.bc ; 2 uses
  %i.bd = extractelement <16 x float> %foldExtExtBinop, i64 4 ; 3 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = fdiv float %i.bf, 6.000000e+00          ; 2 uses
  %bc = bitcast <16 x float> %i.bc to <16 x i32>
  %i.bh = extractelement <16 x i32> %bc, i64 7    ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 17
  %switch.cast = trunc i32 %i.bh to i17
  %switch.downshift = lshr i17 -63481, %switch.cast
  %switch.masked = trunc i17 %switch.downshift to i1
  %i.bj = select i1 %i.bi, i1 %switch.masked, i1 false ; 2 uses
  %i.bk = fcmp olt float %i.aq, %i.ay
  %.val = load float, ptr %i.ax, align 8
  %.val1159 = load float, ptr %i.ap, align 8
  %i.bl = select i1 %i.bk, float %.val, float %.val1159 ; 2 uses
  %i.bm = fmul float %i.bl, %i.bl
  %i.bn = fsub float 1.000000e+00, %i.s           ; 3 uses
  %i.bo = icmp eq i32 %i.w, 2
  %.scalar = fsub float 1.000000e+00, %i.q        ; 4 uses
  %i.bp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.bq = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.x, i64 1
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bs = fsub <4 x float> %i.br, %i.bp           ; 4 uses
  br i1 %i.bo, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %.thread
  %i.bt = fdiv <4 x float> %i.bs, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %24 = shufflevector <4 x float> %i.bs, <4 x float> %i.bt, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bu = extractelement <4 x float> %i.bt, i64 1
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %.thread
  %i.bv = fsub float 1.000000e+00, %i.bn
  %i.bw = fmul float %.scalar, %.scalar
  %i.bx = fdiv <4 x float> %i.bs, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %i.by = extractelement <4 x float> %i.bx, i64 1
  %i.bz = fmul float %i.by, %i.bv
  %i.ca = shufflevector <4 x float> %i.bs, <4 x float> %i.bp, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float %i.bn, i64 3
  %i.cc = fmul <4 x float> %i.bx, %i.cb
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.61099.0 = phi float [ %i.bw, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %.scalar, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.01094.0 = phi float [ %i.bz, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bu, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.cd = phi <4 x float> [ %i.cc, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %24, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.ce = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.cf = load ptr, ptr %16, align 8, !tbaa !74   ; 32 uses
  %i.cg = ptrtoint ptr %i.l to i64
  %i.ch = sub i64 %i.cg, %i.m                     ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph1027, label %._crit_edge1028

.lr.ph1027:                                       ; preds = %.split.us
  %i.cj = udiv exact i64 %i.ch, 12
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = insertelement <16 x float> poison, float %i.bm, i64 0
  %i.cr = shufflevector <16 x float> %i.cq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cs = insertelement <16 x float> poison, float %i.aq, i64 0
  %i.ct = shufflevector <16 x float> %i.cs, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cu = insertelement <16 x float> poison, float %i.as, i64 0
  %i.cv = shufflevector <16 x float> %i.cu, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.cw = shufflevector <1 x float> %i.au, <1 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.cx = fmul float %i.as, 2.000000e+00
  %i.cy = insertelement <16 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <16 x float> %i.cy, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.da = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.db = shufflevector <16 x float> %i.da, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dc = shufflevector <16 x float> %i.bc, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dd = shufflevector <1 x float> %i.ba, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.de = shufflevector <1 x float> %i.aw, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.df = fmul float %i.aq, %i.aq
  %i.dg = insertelement <16 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <16 x float> %i.dg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.di = fmul float %i.as, -2.000000e+00
  %i.dj = insertelement <16 x float> poison, float %i.di, i64 0
  %i.dk = shufflevector <16 x float> %i.dj, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dl = shufflevector <16 x float> %foldExtExtBinop, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.dm = insertelement <16 x float> poison, float %i.bg, i64 0
  %i.dn = shufflevector <16 x float> %i.dm, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.do = fmul float %i.bg, 5.000000e-01
  %i.dp = insertelement <16 x float> poison, float %i.do, i64 0
  %i.dq = shufflevector <16 x float> %i.dp, <16 x float> poison, <16 x i32> zeroinitializer
  %.sroa.5.0..sroa_idx1076 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.51084.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dr = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ds = insertelement <16 x float> poison, float %.sroa.61099.0, i64 0
  %i.dt = shufflevector <16 x float> %i.ds, <16 x float> poison, <16 x i32> zeroinitializer
  %i.du = shufflevector <4 x float> %i.bp, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.dv = insertelement <16 x float> poison, float %i.bn, i64 0
  %i.dw = shufflevector <16 x float> %i.dv, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.dx = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dy = insertelement <16 x float> poison, float %.sroa.01094.0, i64 0
  %i.dz = shufflevector <16 x float> %i.dy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ea = insertelement <16 x float> poison, float %i.q, i64 0
  %i.eb = shufflevector <16 x float> %i.ea, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ec = insertelement <16 x float> poison, float %i.s, i64 0
  %i.ed = shufflevector <16 x float> %i.ec, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ee = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ef = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge1028.loopexit:                         ; preds = %._crit_edge.thread
  %i.eg = icmp ne i16 %.sroa.0914.1.lcssa1153, 0
  br label %._crit_edge1028

._crit_edge1028:                                  ; preds = %._crit_edge1028.loopexit, %.split.us
  %.sroa.0914.0.lcssa = phi i1 [ false, %.split.us ], [ %i.eg, %._crit_edge1028.loopexit ]
  %.sroa.0920.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0920.1.lcssa1154, %._crit_edge1028.loopexit ] ; 3 uses
  %.sroa.0924.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0924.1.lcssa1155, %._crit_edge1028.loopexit ] ; 3 uses
  %i.eh = fcmp one <16 x float> %.sroa.0924.0.lcssa, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16
  %.not = icmp eq i16 %i.ei, 0
  br i1 %.not, label %bb.ag, label %bb.af

bb.c:                                             ; preds = %.lr.ph1027, %._crit_edge.thread
  %.06771025 = phi i64 [ 0, %.lr.ph1027 ], [ %i.and, %._crit_edge.thread ] ; 3 uses
  %.sroa.0924.01024 = phi <16 x float> [ zeroinitializer, %.lr.ph1027 ], [ %.sroa.0924.1.lcssa1155, %._crit_edge.thread ] ; 2 uses
  %.sroa.0920.01023 = phi <16 x float> [ zeroinitializer, %.lr.ph1027 ], [ %.sroa.0920.1.lcssa1154, %._crit_edge.thread ] ; 2 uses
  %.sroa.0914.01022 = phi i16 [ 0, %.lr.ph1027 ], [ %.sroa.0914.1.lcssa1153, %._crit_edge.thread ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.06771025 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !78 ; 2 uses
  %i.em = load ptr, ptr %i.ck, align 8, !tbaa !81 ; 2 uses
  %i.en = load ptr, ptr %i.cl, align 8, !tbaa !83
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %.06771025 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !63 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !63
  %i.es = load i32, ptr %i.ej, align 4, !tbaa !84 ; 3 uses
  %i.et = sext i32 %i.es to i64                   ; 4 uses
  %i.eu = load i64, ptr %8, align 8               ; 2 uses
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.et
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !44
  %i.ey = load i64, ptr %9, align 8               ; 2 uses
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.et
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !44
  %i.fc = load i64, ptr %10, align 8              ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.et
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = load i64, ptr %11, align 8              ; 2 uses
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.et
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !63
  %.sroa.01091.0.vec.insert = insertelement <16 x i32> poison, i32 %i.es, i64 0
  %.sroa.01089.0.vec.insert = insertelement <16 x i32> poison, i32 %i.el, i64 0
  %.sroa.01091.60.vec.insert = shufflevector <16 x i32> %.sroa.01091.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.fk = sext i32 %i.ep to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.fk ; 4 uses
  %i.fm = sub nsw i32 %i.er, %i.ep
  %i.fn = sext i32 %i.fm to i64
  %.not.i.i = icmp eq ptr %i.em, null
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fn
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fo
  %i.fp = fmul float %i.ao, %i.ex
  %i.fq = fmul float %i.ao, %i.fb
  %i.fr = mul nsw i32 %i.ff, %2                   ; 2 uses
  %i.fs = mul nsw i32 %i.fj, %2                   ; 2 uses
  %i.ft = ptrtoint ptr %spec.select.i.i to i64
  %i.fu = ptrtoint ptr %i.fl to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 3                 ; 3 uses
  %i.fx = icmp sgt i64 %i.fw, 0
  br i1 %i.fx, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.fy = sext i32 %i.el to i64
  %i.fz = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !44
  %i.gc = mul nsw i32 %i.es, 3
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !44
  %i.gh = fadd float %i.gb, %i.gg
  %i.gi = load <2 x float>, ptr %i.fz, align 4, !tbaa !44
  %i.gj = load <2 x float>, ptr %i.ge, align 4, !tbaa !44
  %i.gk = fadd <2 x float> %i.gi, %i.gj           ; 2 uses
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gm = shufflevector <2 x float> %i.gk, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gn = insertelement <16 x float> poison, float %i.gh, i64 0
  %i.go = shufflevector <16 x float> %i.gn, <16 x float> poison, <16 x i32> zeroinitializer
  %.pre1132 = load i64, ptr %7, align 8
  %.pre1134 = load i64, ptr %6, align 8           ; 2 uses
  %i.gp = inttoptr i64 %.pre1134 to ptr
  %.pre = load i64, ptr %10, align 8
  %.pre1125 = load i64, ptr %11, align 8
  %.pre1127 = load i64, ptr %8, align 8
  %.pre1129 = load i64, ptr %9, align 8
  %.pre1131 = load i64, ptr %7, align 8
  %.pre1133 = load i64, ptr %6, align 8           ; 2 uses
  %i.gq = inttoptr i64 %.pre1133 to ptr
  br label %bb.d

._crit_edge:                                      ; preds = %bb.aa
  br i1 %.1679, label %bb.ab, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.aa
  %i.gr = phi ptr [ %i.gp, %.lr.ph ], [ %i.aed, %bb.aa ] ; 6 uses
  %i.gs = phi i64 [ %.pre1134, %.lr.ph ], [ %i.aee, %bb.aa ] ; 2 uses
  %i.gt = phi i64 [ %.pre1132, %.lr.ph ], [ %i.aef, %bb.aa ] ; 3 uses
  %i.gu = phi i64 [ %i.ey, %.lr.ph ], [ %i.aeg, %bb.aa ] ; 3 uses
  %i.gv = phi i64 [ %i.eu, %.lr.ph ], [ %i.aeh, %bb.aa ] ; 3 uses
  %i.gw = phi i64 [ %i.fg, %.lr.ph ], [ %i.aei, %bb.aa ] ; 3 uses
  %i.gx = phi i64 [ %i.fc, %.lr.ph ], [ %i.aej, %bb.aa ] ; 3 uses
  %.06781013 = phi i1 [ false, %.lr.ph ], [ %.1679, %bb.aa ]
  %.06821012 = phi i64 [ 0, %.lr.ph ], [ %i.aek, %bb.aa ] ; 3 uses
  %.sroa.0924.11011 = phi <16 x float> [ %.sroa.0924.01024, %.lr.ph ], [ %.sroa.0924.7, %bb.aa ] ; 3 uses
  %.sroa.0920.11010 = phi <16 x float> [ %.sroa.0920.01023, %.lr.ph ], [ %.sroa.0920.7, %bb.aa ] ; 3 uses
  %.sroa.0914.11009 = phi i16 [ %.sroa.0914.01022, %.lr.ph ], [ %.sroa.0914.3, %bb.aa ] ; 3 uses
  %.sroa.0907.01008 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0907.6, %bb.aa ] ; 3 uses
  %.sroa.0904.01007 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0904.6, %bb.aa ] ; 3 uses
  %.sroa.0901.01006 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0901.2, %bb.aa ] ; 3 uses
  %.sroa.0898.01005 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0898.2, %bb.aa ] ; 3 uses
  %.sroa.0895.01004 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0895.2, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.06821012
  %i.gz = inttoptr i64 %i.gx to ptr               ; 2 uses
  %i.ha = inttoptr i64 %i.gw to ptr               ; 2 uses
  %i.hb = inttoptr i64 %i.gv to ptr
  %i.hc = inttoptr i64 %i.gu to ptr
  %i.hd = inttoptr i64 %i.gt to ptr               ; 2 uses
  %i.he = inttoptr i64 %i.gs to ptr               ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val735954 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.hf = mul <16 x i32> %.val735954, splat (i32 3) ; 19 uses
  %i.hg = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ce, <16 x i32> %i.hf, <16 x i1> splat (i1 true), i32 4)
end_hunk_8
begin_hunk_9_@_ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE3ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_:bb.a
  %i.pg = load i64, ptr %20, align 8
  %i.ph = inttoptr i64 %i.pg to ptr
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !44
  %i.pk = fadd float %.1504.lcssa772, %i.pj
  store float %i.pk, ptr %i.pi, align 4, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge651
  %i.pl = fcmp une float %.1496.lcssa773, 0.000000e+00
  br i1 %i.pl, label %bb.x, label %.thread810

bb.x:                                             ; preds = %bb.w
  %i.pm = load i64, ptr %20, align 8
  %i.pn = inttoptr i64 %i.pm to ptr
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 12 ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !44
  %i.pq = fadd float %.1496.lcssa773, %i.pp
  store float %i.pq, ptr %i.po, align 4, !tbaa !44
  br label %.thread810

.thread810:                                       ; preds = %.split.us, %bb.x, %bb.w
  %.0490.lcssa762813 = phi i1 [ %i.da, %bb.w ], [ %i.da, %bb.x ], [ false, %.split.us ]
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !81 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !89
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !63
  %i.px = sext i32 %i.pw to i64
  %.not.i.i547 = icmp eq ptr %i.ps, null
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.px
  %spec.select.i.i548 = select i1 %.not.i.i547, ptr null, ptr %i.py
  %i.pz = ptrtoint ptr %spec.select.i.i548 to i64
  %i.qa = ptrtoint ptr %i.ps to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = lshr exact i64 %i.qb, 3
  %i.qd = mul i64 %i.qc, 150
  %i.qe = add i64 %i.bz, %i.qd
  %i.qf = trunc i64 %i.qe to i32
  tail call void @_Z19atomicNrnbIncrementP6t_nrnbii(ptr noundef %15, i32 noundef 24, i32 noundef %i.qf)
  %or.cond607 = select i1 %i.bd, i1 %.0490.lcssa762813, i1 false
  br i1 %or.cond607, label %bb.y, label %bb.af

bb.y:                                             ; preds = %.thread810
  %i.qg = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.4)
          to label %bb.z unwind label %.thread598

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.aa unwind label %.thread603

bb.aa:                                            ; preds = %bb.z
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %23, align 8, !tbaa !59
  %i.qh = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL21nb_free_energy_kernelINS_15ScalarDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE3ELb1EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_, ptr %i.qh, align 8, !tbaa !94
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !94
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 1338, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !63
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.qg, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr %i.qg, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #21
          to label %bb.ag unwind label %bb.ac

.thread598:                                       ; preds = %bb.y
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread603:                                       ; preds = %bb.z
  %i.qj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  br label %.sink.split

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ]
  %i.qk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %.0, label %bb.ad, label %bb.ae

.sink.split:                                      ; preds = %.thread598, %.thread603
  %.pn.pn602.ph = phi { ptr, i32 } [ %i.qj, %.thread603 ], [ %i.qi, %.thread598 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ac
  %.pn.pn602 = phi { ptr, i32 } [ %i.qk, %bb.ac ], [ %.pn.pn602.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.qg) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.pn601 = phi { ptr, i32 } [ %.pn.pn602, %bb.ad ], [ %i.qk, %bb.ac ]
  resume { ptr, i32 } %.pn.pn601

bb.af:                                            ; preds = %.thread810
  ret void

bb.ag:                                            ; preds = %bb.ab
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmxL21nb_free_energy_kernelINS_13SimdDataTypesEL18KernelSoftcoreType0ELb0ELb0ELNS_12LJKernelTypeE3ELb0EEEvRKNS_12AtomPairlistERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEiRK19interaction_const_tNS_8ArrayRefISA_EENSH_IKfEESK_SK_SK_NSH_IKiEESM_bPKNS_12StepWorkloadESK_P6t_nrnbNS7_IS9_EEPA3_fNSH_IfEESV_SV_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.3") align 8 captures(none) %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %14, ptr noalias noundef %15, ptr nofree readnone align 8 captures(none) dead_on_return %16, ptr nofree readnone captures(none) %17, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %18, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.6") align 8 captures(none) %20) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 64            ; 5 uses
  %i.b = alloca [16 x float], align 64            ; 5 uses
  %i.c = alloca [16 x i32], align 64              ; 5 uses
  %i.d = alloca [2 x [16 x i32]], align 64        ; 6 uses
  %i.e = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.f = alloca [2 x [16 x float]], align 64      ; 6 uses
  %i.g = alloca [16 x float], align 64            ; 5 uses
  %i.h = alloca [16 x float], align 64            ; 5 uses
  %i.i = alloca [2 x [16 x float]], align 64      ; 6 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = load i64, ptr %14, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !105  ; 2 uses
  %i.x = sitofp i32 %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !42
  %i.aa = load float, ptr %i.u, align 4, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !107 ; 4 uses
  br i1 %12, label %_ZL7usingRFRK22CoulombInteractionType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !70, !range !38, !noundef !39
  %i.ah = trunc nuw i8 %i.ag to i1
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

_ZL7usingRFRK22CoulombInteractionType.exit:       ; preds = %bb.b, %bb.a
  %i.ai = phi i1 [ true, %bb.a ], [ %i.ah, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !71 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.am = load float, ptr %i.al, align 8, !tbaa !75 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = load float, ptr %i.an, align 8, !tbaa !102 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.aq = load <1 x float>, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.as = load <1 x float>, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load float, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aw = load <1 x float>, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ay = load <16 x float>, ptr %i.ax, align 4   ; 4 uses
  %foldExtExtBinop = fmul <16 x float> %i.ay, %i.ay ; 2 uses
  %i.az = extractelement <16 x float> %foldExtExtBinop, i64 4 ; 3 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = fdiv float %i.bb, 6.000000e+00          ; 2 uses
  %bc = bitcast <16 x float> %i.ay to <16 x i32>
  %i.bd = extractelement <16 x i32> %bc, i64 7    ; 2 uses
  %i.be = icmp ult i32 %i.bd, 17
  %switch.cast = trunc i32 %i.bd to i17
  %switch.downshift = lshr i17 -63481, %switch.cast
  %switch.masked = trunc i17 %switch.downshift to i1
  %i.bf = select i1 %i.be, i1 %switch.masked, i1 false ; 2 uses
  %i.bg = fcmp olt float %i.am, %i.au
  %.val = load float, ptr %i.at, align 8
  %.val1005 = load float, ptr %i.al, align 8
  %i.bh = select i1 %i.bg, float %.val, float %.val1005 ; 2 uses
  %i.bi = fmul float %i.bh, %i.bh
  %i.bj = fsub float 1.000000e+00, %i.s           ; 3 uses
  %i.bk = icmp eq i32 %i.w, 2
  %.scalar = fsub float 1.000000e+00, %i.q        ; 4 uses
  %i.bl = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.bm = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.x, i64 1
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bo = fsub <4 x float> %i.bn, %i.bl           ; 4 uses
  br i1 %i.bk, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader, label %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader

_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.bp = fdiv <4 x float> %i.bo, <float poison, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %24 = shufflevector <4 x float> %i.bo, <4 x float> %i.bp, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bq = extractelement <4 x float> %i.bp, i64 1
  br label %.split.us

_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader: ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.br = fsub float 1.000000e+00, %i.bj
  %i.bs = fmul float %.scalar, %.scalar
  %i.bt = fdiv <4 x float> %i.bo, <float 1.000000e+00, float -6.000000e+00, float 6.000000e+00, float 6.000000e+00> ; 2 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 1
  %i.bv = fmul float %i.bu, %i.br
  %i.bw = shufflevector <4 x float> %i.bo, <4 x float> %i.bl, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.bx = insertelement <4 x float> %i.bw, float %i.bj, i64 3
  %i.by = fmul <4 x float> %i.bt, %i.bx
  br label %.split.us

.split.us:                                        ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader
  %.sroa.6959.0 = phi float [ %i.bs, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %.scalar, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %.sroa.0954.0 = phi float [ %i.bv, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %i.bq, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ]
  %i.bz = phi <4 x float> [ %i.by, %_ZL7usingRFRK22CoulombInteractionType.exit.split.us.preheader ], [ %24, %_ZL7usingRFRK22CoulombInteractionType.exit.split.preheader ] ; 4 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.cb = ptrtoint ptr %i.l to i64
  %i.cc = sub i64 %i.cb, %i.m                     ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph893, label %._crit_edge894

.lr.ph893:                                        ; preds = %.split.us
  %i.ce = udiv exact i64 %i.cc, 12
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !81 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.cg, null
  %i.cj = load i64, ptr %8, align 8
  %i.ck = inttoptr i64 %i.cj to ptr               ; 2 uses
  %i.cl = load i64, ptr %9, align 8
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = load i64, ptr %10, align 8
  %i.co = inttoptr i64 %i.cn to ptr               ; 3 uses
  %i.cp = load i64, ptr %11, align 8
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ct = load i64, ptr %7, align 8
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = load i64, ptr %6, align 8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cz = insertelement <16 x float> poison, float %i.bi, i64 0
  %i.da = shufflevector <16 x float> %i.cz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.dc = insertelement <16 x float> poison, float %i.am, i64 0
  %i.dd = shufflevector <16 x float> %i.dc, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.de = insertelement <16 x float> poison, float %i.ao, i64 0
  %i.df = shufflevector <16 x float> %i.de, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dg = shufflevector <1 x float> %i.aq, <1 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dh = fmul float %i.ao, 2.000000e+00
  %i.di = insertelement <16 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <16 x float> %i.di, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dk = insertelement <16 x float> poison, float %i.au, i64 0
  %i.dl = shufflevector <16 x float> %i.dk, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dm = shufflevector <16 x float> %i.ay, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dn = shufflevector <1 x float> %i.aw, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.do = shufflevector <1 x float> %i.as, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dp = fmul float %i.am, %i.am
  %i.dq = insertelement <16 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ds = shufflevector <16 x float> %foldExtExtBinop, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.dt = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.du = shufflevector <16 x float> %i.dt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dv = fmul float %i.bc, 5.000000e-01
  %i.dw = insertelement <16 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <16 x float> %i.dw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dy = load i64, ptr %18, align 8
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load i64, ptr %19, align 8
  %i.eb = inttoptr i64 %i.ea to ptr
  %.sroa.5.0..sroa_idx939 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.5947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ec = shufflevector <4 x float> %i.bz, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ed = insertelement <16 x float> poison, float %.sroa.6959.0, i64 0
  %i.ee = shufflevector <16 x float> %i.ed, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ef = shufflevector <4 x float> %i.bl, <4 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.eg = insertelement <16 x float> poison, float %i.bj, i64 0
  %i.eh = shufflevector <16 x float> %i.eg, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ei = shufflevector <4 x float> %i.bz, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ej = insertelement <16 x float> poison, float %.sroa.0954.0, i64 0
  %i.ek = shufflevector <16 x float> %i.ej, <16 x float> poison, <16 x i32> zeroinitializer
  %i.el = insertelement <16 x float> poison, float %i.q, i64 0
  %i.em = shufflevector <16 x float> %i.el, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.en = insertelement <16 x float> poison, float %i.s, i64 0
  %i.eo = shufflevector <16 x float> %i.en, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ep = shufflevector <4 x float> %i.bz, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.eq = shufflevector <4 x float> %i.bz, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

._crit_edge894.loopexit:                          ; preds = %._crit_edge.thread
  %i.er = icmp ne i16 %.sroa.0795.1.lcssa999, 0
  br label %._crit_edge894

._crit_edge894:                                   ; preds = %._crit_edge894.loopexit, %.split.us
  %.sroa.0795.0.lcssa = phi i1 [ false, %.split.us ], [ %i.er, %._crit_edge894.loopexit ]
  %.sroa.0799.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0799.1.lcssa1000, %._crit_edge894.loopexit ] ; 3 uses
  %.sroa.0803.0.lcssa = phi <16 x float> [ zeroinitializer, %.split.us ], [ %.sroa.0803.1.lcssa1001, %._crit_edge894.loopexit ] ; 3 uses
  %i.es = fcmp one <16 x float> %.sroa.0803.0.lcssa, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16
  %.not = icmp eq i16 %i.et, 0
  br i1 %.not, label %bb.ab, label %bb.aa

bb.c:                                             ; preds = %.lr.ph893, %._crit_edge.thread
  %.0613891 = phi i64 [ 0, %.lr.ph893 ], [ %i.ys, %._crit_edge.thread ] ; 3 uses
  %.sroa.0803.0890 = phi <16 x float> [ zeroinitializer, %.lr.ph893 ], [ %.sroa.0803.1.lcssa1001, %._crit_edge.thread ] ; 2 uses
  %.sroa.0799.0889 = phi <16 x float> [ zeroinitializer, %.lr.ph893 ], [ %.sroa.0799.1.lcssa1000, %._crit_edge.thread ] ; 2 uses
  %.sroa.0795.0888 = phi i16 [ 0, %.lr.ph893 ], [ %.sroa.0795.1.lcssa999, %._crit_edge.thread ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.0613891 ; 3 uses
  %i.ev = getelementptr [4 x i8], ptr %i.ci, i64 %.0613891 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !63 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ev, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !63
  %i.ez = load i32, ptr %i.eu, align 4, !tbaa !84 ; 3 uses
  %i.fa = sext i32 %i.ez to i64                   ; 4 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !44
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.fa
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !44
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fa
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !63
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.fa
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !63
  %.sroa.0952.0.vec.insert = insertelement <16 x i32> poison, i32 %i.ez, i64 0
  %.sroa.0952.60.vec.insert = shufflevector <16 x i32> %.sroa.0952.0.vec.insert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fj = sext i32 %i.ew to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.fj ; 4 uses
  %i.fl = sub nsw i32 %i.ey, %i.ew
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fm
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.fn
  %i.fo = fmul float %i.ak, %i.fc
  %i.fp = fmul float %i.ak, %i.fe
  %i.fq = mul nsw i32 %i.fg, %2                   ; 2 uses
  %i.fr = mul nsw i32 %i.fi, %2                   ; 2 uses
  %i.fs = ptrtoint ptr %spec.select.i.i to i64
  %i.ft = ptrtoint ptr %i.fk to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3                 ; 3 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !78
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [12 x i8], ptr %4, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !44
  %i.gd = mul nsw i32 %i.ez, 3
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ge ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !44
  %i.gi = fadd float %i.gc, %i.gh
  %i.gj = load <2 x float>, ptr %i.ga, align 4, !tbaa !44
  %i.gk = load <2 x float>, ptr %i.gf, align 4, !tbaa !44
  %i.gl = fadd <2 x float> %i.gj, %i.gk           ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gn = shufflevector <2 x float> %i.gl, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.go = insertelement <16 x float> poison, float %i.gi, i64 0
  %i.gp = shufflevector <16 x float> %i.go, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit839
  %i.gq = select i1 %.1615, i1 %i.ai, i1 false
  br i1 %i.gq, label %bb.z, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %.loopexit839
  %.0614882 = phi i1 [ false, %.lr.ph ], [ %.1615, %.loopexit839 ]
  %.0618881 = phi i64 [ 0, %.lr.ph ], [ %i.xr, %.loopexit839 ] ; 3 uses
  %.sroa.0803.1880 = phi <16 x float> [ %.sroa.0803.0890, %.lr.ph ], [ %.sroa.0803.7, %.loopexit839 ] ; 3 uses
  %.sroa.0799.1879 = phi <16 x float> [ %.sroa.0799.0889, %.lr.ph ], [ %.sroa.0799.7, %.loopexit839 ] ; 3 uses
  %.sroa.0795.1878 = phi i16 [ %.sroa.0795.0888, %.lr.ph ], [ %.sroa.0795.3, %.loopexit839 ] ; 3 uses
  %.sroa.0788.0877 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0788.6, %.loopexit839 ] ; 3 uses
  %.sroa.0785.0876 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0785.6, %.loopexit839 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.0618881
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %.val670830 = load <16 x i32>, ptr %i.c, align 64, !tbaa !57 ; 2 uses
  %i.gs = mul <16 x i32> %.val670830, splat (i32 3) ; 3 uses
  %i.gt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ca, <16 x i32> %i.gs, <16 x i1> splat (i1 true), i32 4)
  %i.gu = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cx, <16 x i32> %i.gs, <16 x i1> splat (i1 true), i32 4)
  %i.gv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cy, <16 x i32> %i.gs, <16 x i1> splat (i1 true), i32 4)
  %.val677 = load <16 x float>, ptr %i.a, align 64, !tbaa !57
  %.val676 = load <16 x float>, ptr %i.b, align 64, !tbaa !57 ; 2 uses
  %i.gw = fcmp one <16 x float> %.val676, zeroinitializer ; 7 uses
  %i.gx = fcmp oeq <16 x float> %.val676, zeroinitializer
  %i.gy = fcmp one <16 x float> %.val677, zeroinitializer
  %i.gz = and <16 x i1> %i.gy, %i.gx              ; 8 uses
  %i.ha = bitcast <16 x i1> %i.gz to i16
  %i.hb = fsub <16 x float> %i.gm, %i.gt          ; 2 uses
  %i.hc = fsub <16 x float> %i.gn, %i.gu          ; 2 uses
  %i.hd = fsub <16 x float> %i.gp, %i.gv          ; 2 uses
  %i.he = fmul <16 x float> %i.hb, %i.hb
  %i.hf = fmul <16 x float> %i.hc, %i.hc
  %i.hg = fadd <16 x float> %i.he, %i.hf
  %i.hh = fmul <16 x float> %i.hd, %i.hd
  %i.hi = fadd <16 x float> %i.hg, %i.hh          ; 2 uses
  %i.hj = fcmp olt <16 x float> %i.hi, %i.da      ; 4 uses
  %i.hk = or <16 x i1> %i.gz, %i.hj
  %i.hl = bitcast <16 x i1> %i.hk to i16
  %.not831 = icmp eq i16 %i.hl, 0
end_hunk_9
