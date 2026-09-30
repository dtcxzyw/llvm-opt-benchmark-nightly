Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bonded?download=true
inline.NumInlined: 1758
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN12_GLOBAL__N_18polarizeIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.i = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %.not.i, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us

.outer.us.preheader:                              ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph: ; preds = %.outer.us.preheader, %.split41.us.us
  %.0.ph.us117 = phi float [ %i.bh, %.split41.us.us ], [ 0.000000e+00, %.outer.us.preheader ] ; 2 uses
  %.030.ph.us116 = phi i64 [ %indvars.iv.next74, %.split41.us.us ], [ 0, %.outer.us.preheader ]
  %.promoted = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.j = icmp slt i64 %indvars.iv.next74, %i.h
  br i1 %i.j, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us, label %.split.us, !llvm.loop !73

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, %bb.b
  %i.k = phi float [ %.promoted, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %i.bb, %bb.b ]
  %indvars.iv73113 = phi i64 [ %.030.ph.us116, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %indvars.iv.next74, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv73113 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next74 = add nsw i64 %indvars.iv73113, 3 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, f0x40615DEF44DEAD3D
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [48 x i8], ptr %2, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fpext float %i.z to double
  %i.ab = fdiv double %i.w, %i.aa
  %i.ac = fptrunc double %i.ab to float           ; 4 uses
  %i.ad = sext i32 %i.o to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.ag = load <2 x float>, ptr %i.ae, align 4, !tbaa !18
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !18
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !18
  %i.an = fsub float %i.ak, %i.am                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ai
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ap = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.aq) ; 2 uses
  %sqrt.us.us = tail call float @llvm.sqrt.f32(float %i.ar) ; 2 uses
  %i.as = fmul float %7, %i.ac
  %i.at = tail call float @llvm.fmuladd.f32(float %i.e, float %i.ac, float %i.as) ; 3 uses
  %i.au = fsub float %sqrt.us.us, %i.g            ; 4 uses
  %i.av = fmul float %i.au, %i.au                 ; 2 uses
  %i.aw = fsub float %i.ac, %i.ac
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = fmul float %i.at, 0.000000e+00
  %i.az = fmul float %i.ay, %i.au
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.av, float %i.az)
  %i.bb = fadd float %i.k, %i.ba                  ; 2 uses
  store float %i.bb, ptr %8, align 4, !tbaa !18
  %i.bc = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.bc, label %bb.b, label %.split41.us.us, !llvm.loop !73

.split41.us.us:                                   ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.bd = fmul float %i.at, 5.000000e-01
  %i.be = fmul float %i.bd, %i.av
  %i.bf = fneg float %i.at
  %i.bg = fmul float %i.au, %i.bf
  %i.bh = fadd float %.0.ph.us117, %i.be          ; 2 uses
  %i.bi = fdiv float 1.000000e+00, %sqrt.us.us
  %i.bj = fmul float %i.bi, %i.bg                 ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ad ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.r ; 3 uses
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.ai, %i.bn           ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.bq = fadd <2 x float> %i.bo, %i.bp
  store <2 x float> %i.bq, ptr %i.bk, align 4, !tbaa !18
  %i.br = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.bs = fsub <2 x float> %i.br, %i.bo
  store <2 x float> %i.bs, ptr %i.bl, align 4, !tbaa !18
  %i.bt = fmul float %i.an, %i.bj                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !18
  %i.bw = fadd float %i.bt, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !18
  %i.bz = fsub float %i.by, %i.bt
  store float %i.bz, ptr %i.bx, align 4, !tbaa !18
  %i.ca = icmp slt i64 %indvars.iv.next74, %i.h
  br i1 %i.ca, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us, !llvm.loop !73

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph: ; preds = %.outer.preheader, %.split41
  %.0.ph111 = phi float [ %i.du, %.split41 ], [ 0.000000e+00, %.outer.preheader ] ; 2 uses
  %.030.ph110 = phi i64 [ %indvars.iv.next, %.split41 ], [ 0, %.outer.preheader ]
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.cb = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.cb, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit, label %.split.us, !llvm.loop !73

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, %bb.c
  %indvars.iv108 = phi i64 [ %.030.ph110, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv108 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16
  %i.ce = getelementptr i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv108, 3 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !16
  %i.ci = sext i32 %i.ch to i64                   ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !18 ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = fpext float %i.cl to double
  %i.cn = fmul double %i.cm, f0x40615DEF44DEAD3D
  %i.co = sext i32 %i.cd to i64
  %i.cp = getelementptr inbounds [48 x i8], ptr %2, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15
  %i.cr = fpext float %i.cq to double
  %i.cs = fdiv double %i.cn, %i.cr
  %i.ct = fptrunc double %i.cs to float           ; 4 uses
  %i.cu = sext i32 %i.cf to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [12 x i8], ptr %3, i64 %i.cu
  %i.cw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ci
  %i.cx = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.cv, ptr noundef %i.cw, ptr noundef nonnull %i.a) ; 0 uses
  %i.cy = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 4 uses
  %foldExtExtBinop120 = fmul <2 x float> %i.cy, %i.cy
  %i.cz = extractelement <2 x float> %foldExtExtBinop120, i64 1
  %i.da = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cz)
  %i.dc = load float, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  %i.dd = call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.db) ; 2 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.dd)  ; 2 uses
  %i.de = fmul float %7, %i.ct
  %i.df = call float @llvm.fmuladd.f32(float %i.e, float %i.ct, float %i.de) ; 3 uses
  %i.dg = fsub float %sqrt, %i.g                  ; 4 uses
  %i.dh = fmul float %i.dg, %i.dg                 ; 2 uses
  %i.di = fsub float %i.ct, %i.ct
  %i.dj = fmul float %i.di, 5.000000e-01
  %i.dk = fmul float %i.df, 0.000000e+00
  %i.dl = fmul float %i.dk, %i.dg
  %i.dm = call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.dh, float %i.dl)
  %i.dn = load float, ptr %8, align 4, !tbaa !18
  %i.do = fadd float %i.dn, %i.dm
  store float %i.do, ptr %8, align 4, !tbaa !18
  %i.dp = fcmp oeq float %i.dd, 0.000000e+00
  br i1 %i.dp, label %bb.c, label %.split41, !llvm.loop !73

.split41:                                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.dq = fmul float %i.df, 5.000000e-01
  %i.dr = fmul float %i.dq, %i.dh
  %i.ds = fneg float %i.df
  %i.dt = fmul float %i.dg, %i.ds
  %i.du = fadd float %.0.ph111, %i.dr             ; 2 uses
  %i.dv = fdiv float 1.000000e+00, %sqrt
  %i.dw = fmul float %i.dv, %i.dt                 ; 2 uses
  %i.dx = getelementptr inbounds [16 x i8], ptr %4, i64 %i.cu ; 3 uses
  %i.dy = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ci ; 3 uses
  %i.dz = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.cy, %i.ea           ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dx, align 4, !tbaa !18
  %i.ed = fadd <2 x float> %i.eb, %i.ec
  store <2 x float> %i.ed, ptr %i.dx, align 4, !tbaa !18
  %i.ee = load <2 x float>, ptr %i.dy, align 4, !tbaa !18
  %i.ef = fsub <2 x float> %i.ee, %i.eb
  store <2 x float> %i.ef, ptr %i.dy, align 4, !tbaa !18
  %i.eg = fmul float %i.dc, %i.dw                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !18
  %i.ej = fadd float %i.eg, %i.ei
  store float %i.ej, ptr %i.eh, align 4, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !18
  %i.em = fsub float %i.el, %i.eg
  store float %i.em, ptr %i.ek, align 4, !tbaa !18
  %i.en = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.en, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us, !llvm.loop !73

.split.us:                                        ; preds = %.split41, %bb.c, %.split41.us.us, %bb.b, %.outer.preheader, %.outer.us.preheader
  %.us-phi = phi float [ %.0.ph.us117, %bb.b ], [ %.0.ph111, %bb.c ], [ 0.000000e+00, %.outer.us.preheader ], [ %i.bh, %.split41.us.us ], [ 0.000000e+00, %.outer.preheader ], [ %i.du, %.split41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19water_polIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %i.c = alloca [3 x float], align 8              ; 7 uses
  %i.d = alloca [3 x float], align 8              ; 8 uses
  %i.e = alloca [3 x float], align 8              ; 8 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !16     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %9, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.j
  %i.n = load float, ptr %i.m, align 4, !tbaa !18 ; 2 uses
  %i.o = fmul float %i.n, %i.n
  %i.p = fpext float %i.o to double
  %i.q = fmul double %i.p, f0x40615DEF44DEAD3D    ; 2 uses
  %i.r = sext i32 %i.g to i64
  %i.s = getelementptr inbounds [48 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !15
  %i.u = fpext float %i.t to double
  %i.v = fdiv double %i.q, %i.u
  %i.w = fptrunc double %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !15
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.ab, %i.z
  %i.ad = fptrunc <2 x double> %i.ac to <2 x float>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !15
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %.not.i = icmp eq ptr %6, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107 ] ; 2 uses
  %.091122 = phi float [ 0.000000e+00, %bb.b ], [ %i.fs, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16 ; 2 uses
  %.not = icmp eq i32 %i.ar, %i.g
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(69) @.str.7, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 844, ptr noundef nonnull @.str.13, i32 noundef %i.ar, i32 noundef %i.g, ptr noundef nonnull @.str.7, i32 noundef 844) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.as

bb.g:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16 ; 2 uses
  %i.bd = sext i32 %i.aw to i64
  %i.be = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bd ; 5 uses
  %i.bf = sext i32 %i.au to i64
  %i.bg = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bf ; 6 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull %i.a) ; 0 uses
  %i.bi = sext i32 %i.ay to i64
  %i.bj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bi ; 2 uses
  %i.bk = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bj, ptr noundef %i.bg, ptr noundef nonnull %i.b) ; 0 uses
  %i.bl = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bj, ptr noundef %i.be, ptr noundef nonnull %i.c) ; 0 uses
  %i.bm = sext i32 %i.ba to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bm ; 2 uses
  %i.bo = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bn, ptr noundef %i.bg, ptr noundef nonnull %i.d) ; 0 uses
  %i.bp = sext i32 %i.bc to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bp
  %i.br = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bq, ptr noundef %i.bn, ptr noundef nonnull %i.e) ; 0 uses
  %.pre143 = load float, ptr %i.b, align 4, !tbaa !18
  %.pre144 = load float, ptr %i.a, align 4, !tbaa !18
  %.pre140 = load float, ptr %i.al, align 8, !tbaa !18
  %15 = load <2 x float>, ptr %i.ah, align 4, !tbaa !18
  %16 = load <2 x float>, ptr %i.ai, align 4, !tbaa !18
  %i.bs = load <2 x float>, ptr %i.d, align 8, !tbaa !18
  %i.bt = load <2 x float>, ptr %i.c, align 8, !tbaa !18
  %.pre150 = load float, ptr %i.aj, align 8, !tbaa !18
  %.pre151 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre152 = load float, ptr %i.am, align 4, !tbaa !18
  %.pre153 = load float, ptr %i.an, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107

bb.i:                                             ; preds = %bb.g
  %17 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bw = sext i32 %i.ay to i64
  %19 = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bw ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %22 = sext i32 %i.ba to i64                     ; 2 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %3, i64 %22 ; 2 uses
  %i.by = load <2 x float>, ptr %i.be, align 4, !tbaa !18 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bg, align 4, !tbaa !18 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.by, %i.bz
  %23 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ca = load float, ptr %18, align 4, !tbaa !18
  %24 = load <2 x float>, ptr %17, align 4, !tbaa !18
  %25 = load float, ptr %i.bv, align 4, !tbaa !18
  %26 = load <2 x float>, ptr %i.bu, align 4, !tbaa !18 ; 2 uses
  %27 = fsub <2 x float> %24, %26                 ; 2 uses
  store float %23, ptr %i.a, align 4, !tbaa !18
  store <2 x float> %27, ptr %i.ah, align 4, !tbaa !18
  %28 = load <2 x float>, ptr %19, align 4, !tbaa !18 ; 2 uses
  %foldExtExtBinop162 = fsub <2 x float> %28, %i.bz
  %29 = extractelement <2 x float> %foldExtExtBinop162, i64 0 ; 2 uses
  %30 = load float, ptr %21, align 4, !tbaa !18
  %31 = load <2 x float>, ptr %20, align 4, !tbaa !18
  %i.cb = fsub <2 x float> %31, %26               ; 2 uses
  store float %29, ptr %i.b, align 4, !tbaa !18
  store <2 x float> %i.cb, ptr %i.ai, align 4, !tbaa !18
  %32 = fsub <2 x float> %28, %i.by
  %33 = fsub float %30, %i.ca
  %i.cc = load <2 x float>, ptr %i.bx, align 4, !tbaa !18 ; 2 uses
  %i.cd = fsub <2 x float> %i.cc, %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18 ; 2 uses
  %i.cg = fsub float %i.cf, %25
  %i.ch = sext i32 %i.bc to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !18
  %i.cl = fsub float %i.ck, %i.cf                 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.ci, align 4, !tbaa !18
  %i.cn = fsub <2 x float> %i.cm, %i.cc           ; 3 uses
  store <2 x float> %i.cn, ptr %i.e, align 8, !tbaa !18
  store float %i.cl, ptr %i.an, align 8, !tbaa !18
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = extractelement <2 x float> %i.cn, i64 1
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107: ; preds = %bb.h, %bb.i
  %i.cq = phi float [ %.pre153, %bb.h ], [ %i.cl, %bb.i ] ; 2 uses
  %i.cr = phi float [ %.pre152, %bb.h ], [ %i.cp, %bb.i ] ; 2 uses
  %i.cs = phi float [ %.pre151, %bb.h ], [ %i.co, %bb.i ] ; 2 uses
  %i.ct = phi float [ %.pre150, %bb.h ], [ %33, %bb.i ]
  %i.cu = phi float [ %.pre140, %bb.h ], [ %i.cg, %bb.i ] ; 3 uses
  %i.cv = phi float [ %.pre144, %bb.h ], [ %23, %bb.i ] ; 2 uses
  %i.cw = phi float [ %.pre143, %bb.h ], [ %29, %bb.i ] ; 2 uses
  %34 = phi i64 [ %i.bp, %bb.h ], [ %i.ch, %bb.i ]
  %35 = phi i64 [ %i.bm, %bb.h ], [ %22, %bb.i ]
  %36 = phi <2 x float> [ %15, %bb.h ], [ %27, %bb.i ] ; 3 uses
  %37 = phi <2 x float> [ %16, %bb.h ], [ %i.cb, %bb.i ] ; 3 uses
  %i.cx = phi <2 x float> [ %i.bt, %bb.h ], [ %32, %bb.i ]
  %i.cy = phi <2 x float> [ %i.bs, %bb.h ], [ %i.cd, %bb.i ] ; 4 uses
  %38 = fneg <2 x float> %37
  %i.cz = fneg float %i.cw
  %39 = extractelement <2 x float> %36, i64 0
  %i.da = fmul float %39, %i.cz
  %i.db = fmul <2 x float> %i.ap, %i.cx           ; 4 uses
  %40 = extractelement <2 x float> %i.db, i64 0
  %41 = extractelement <2 x float> %i.db, i64 1
  store <2 x float> %i.db, ptr %i.c, align 8, !tbaa !18
  %i.dc = fmul float %i.ag, %i.ct                 ; 3 uses
  store float %i.dc, ptr %i.aj, align 8, !tbaa !18
  %42 = getelementptr inbounds [16 x i8], ptr %4, i64 %34 ; 3 uses
  %43 = getelementptr inbounds [16 x i8], ptr %4, i64 %35 ; 3 uses
  %44 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %45 = insertelement <2 x float> %44, float %i.cv, i64 1
  %46 = fmul <2 x float> %45, %38
  %47 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %48 = insertelement <2 x float> %47, float %i.cw, i64 1
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %48, <2 x float> %46) ; 4 uses
  %50 = extractelement <2 x float> %37, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %i.cv, float %50, float %i.da) ; 3 uses
  %foldExtExtBinop164 = fmul <2 x float> %49, %49
  %51 = extractelement <2 x float> %foldExtExtBinop164, i64 1
  %52 = extractelement <2 x float> %49, i64 0     ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %52, float %52, float %51)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.de)
  %sqrt117 = call float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt117       ; 2 uses
  %foldExtExtBinop.a = fmul <2 x float> %i.cy, %i.cy
  %i.dh = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.di = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.dj = call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dh)
  %i.dk = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.dj)
  %sqrt = call float @llvm.sqrt.f32(float %i.dk)
  %i.dl = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %53 = insertelement <2 x float> poison, float %i.dg, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x float> %49, %54                 ; 3 uses
  %i.dm = fmul float %i.dd, %i.dg                 ; 3 uses
  %i.dn = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.cy, %i.do           ; 3 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0 ; 3 uses
  store float %i.dq, ptr %i.d, align 8, !tbaa !18
  %i.dr = extractelement <2 x float> %i.dp, i64 1 ; 3 uses
  store float %i.dr, ptr %i.ak, align 4, !tbaa !18
  %i.ds = fmul float %i.cu, %i.dl                 ; 4 uses
  store float %i.ds, ptr %i.al, align 8, !tbaa !18
  %i.dt = fmul float %i.dr, %i.cr
  %i.du = call float @llvm.fmuladd.f32(float %i.cs, float %i.dq, float %i.dt)
  %i.dv = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.ds, float %i.du) ; 3 uses
  %i.dw = fneg float %i.dv                        ; 3 uses
  %i.dx = call float @llvm.fmuladd.f32(float %i.dw, float %i.dq, float %i.cs) ; 2 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dw, float %i.dr, float %i.cr) ; 2 uses
  %i.dz = call float @llvm.fmuladd.f32(float %i.dw, float %i.ds, float %i.cq) ; 2 uses
  %56 = extractelement <2 x float> %55, i64 1     ; 2 uses
  %i.ea = fmul float %56, %i.dy
  %57 = extractelement <2 x float> %55, i64 0     ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.dx, float %57, float %i.ea)
  %i.ec = call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dm, float %i.eb) ; 3 uses
  %i.ed = fneg float %i.ec                        ; 3 uses
  %i.ee = call float @llvm.fmuladd.f32(float %i.ed, float %57, float %i.dx)
  %i.ef = call float @llvm.fmuladd.f32(float %i.ed, float %56, float %i.dy)
  %i.eg = call float @llvm.fmuladd.f32(float %i.ed, float %i.dm, float %i.dz)
  %i.eh = fmul float %41, %i.ef
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float %40, float %i.eh)
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.dc, float %i.ei) ; 2 uses
  %i.ek = fmul float %i.ec, %i.w                  ; 2 uses
  %i.el = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.dv, i64 1
  %i.en = fmul <2 x float> %i.em, %i.ad           ; 4 uses
  %i.eo = fneg float %i.ek                        ; 2 uses
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ep, %i.db
  %i.er = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x float> %i.er, %i.dp
  %i.et = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %55, %i.eu
  %i.ew = fsub <2 x float> %i.ev, %i.eq
  %i.ex = fsub <2 x float> %i.ew, %i.es           ; 2 uses
  %i.ey = load <2 x float>, ptr %42, align 4, !tbaa !18
  %i.ez = fadd <2 x float> %i.ey, %i.ex
  store <2 x float> %i.ez, ptr %42, align 4, !tbaa !18
  %i.fa = load <2 x float>, ptr %43, align 4, !tbaa !18
  %i.fb = fsub <2 x float> %i.fa, %i.ex
  store <2 x float> %i.fb, ptr %43, align 4, !tbaa !18
  %i.fc = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.fd = fmul float %i.fc, %i.dc
  %i.fe = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.ff = fmul float %i.fe, %i.ds
  %i.fg = fmul float %i.dm, %i.eo
  %i.fh = fsub float %i.fg, %i.fd
  %i.fi = fsub float %i.fh, %i.ff                 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fadd float %i.fk, %i.fi
  store float %i.fl, ptr %i.fj, align 4, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !18
  %i.fo = fsub float %i.fn, %i.fi
  store float %i.fo, ptr %i.fm, align 4, !tbaa !18
  %i.fp = fmul float %i.ej, %i.fc
  %i.fq = call float @llvm.fmuladd.f32(float %i.ec, float %i.ek, float %i.fp)
  %i.fr = call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.fe, float %i.fq)
  %i.fs = fadd float %.091122, %i.fr              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ft = trunc nuw i64 %indvars.iv.next to i32
  %i.fu = icmp sgt i32 %0, %i.ft
  br i1 %i.fu, label %bb.c, label %.loopexit.loopexit, !llvm.loop !74

.loopexit.loopexit:                               ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107
  %i.fv = fmul float %i.fs, 5.000000e-01
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.192 = phi float [ 0.000000e+00, %bb.a ], [ %i.fv, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.192
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19thole_polIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr %9, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.079 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ay, %bb.b ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = sext i32 %i.i to i64                     ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = sext i32 %i.m to i64                     ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !18
  %i.t = sext i32 %i.e to i64
  %i.u = getelementptr inbounds [48 x i8], ptr %2, i64 %i.t ; 3 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fmul float %i.p, %i.s                   ; 3 uses
  %i.ab = fmul float %i.x, %i.z
  %i.ac = tail call noundef float @cbrtf(float noundef %i.ab) #25
  %i.ad = tail call noundef float @sqrtf(float noundef %i.ac) #23
  %i.ae = fdiv float 1.000000e+00, %i.ad
  %i.af = fmul float %i.v, %i.ae                  ; 4 uses
  %i.ag = sext i32 %i.g to i64                    ; 2 uses
  %i.ah = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ai ; 2 uses
  %i.am = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor0EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %6, float noundef %i.aa, float noundef %i.af)
  %i.an = fadd float %.079, %i.am
  %i.ao = getelementptr inbounds [12 x i8], ptr %3, i64 %i.n ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %4, i64 %i.n ; 2 uses
  %i.aq = fneg float %i.aa                        ; 2 uses
  %i.ar = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor0EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ao, ptr noundef %i.aj, ptr noundef %i.ap, ptr noundef %i.al, ptr noundef %6, float noundef %i.aq, float noundef %i.af)
  %i.as = fadd float %i.an, %i.ar
  %i.at = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 2 uses
  %i.av = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor0EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ah, ptr noundef %i.at, ptr noundef %i.ak, ptr noundef %i.au, ptr noundef %6, float noundef %i.aq, float noundef %i.af)
  %i.aw = fadd float %i.as, %i.av
  %i.ax = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor0EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ao, ptr noundef %i.at, ptr noundef %i.ap, ptr noundef %i.au, ptr noundef %6, float noundef %i.aa, float noundef %i.af)
  %i.ay = fadd float %i.aw, %i.ax                 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next to i32
  %i.ba = icmp sgt i32 %0, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ay, %bb.b ]
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_115anharm_polarizeIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load i64, ptr %9, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %.not.i = icmp eq ptr %6, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = fsub float 1.000000e+00, %7              ; 3 uses
  %i.f = fmul float %7, 0.000000e+00
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.f) ; 2 uses
  %i.h = sext i32 %0 to i64                       ; 4 uses
  %i.i = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %.not.i, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us

.outer.us.preheader:                              ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph: ; preds = %.outer.us.preheader, %.outer.us
  %.0.ph.us181 = phi float [ %i.bw, %.outer.us ], [ 0.000000e+00, %.outer.us.preheader ] ; 2 uses
  %.047.ph.us180 = phi i64 [ %indvars.iv.next118, %.outer.us ], [ 0, %.outer.us.preheader ]
  %.promoted = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.j = icmp slt i64 %indvars.iv.next118, %i.h
  br i1 %i.j, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us, label %.split.us, !llvm.loop !76

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, %bb.b
  %i.k = phi float [ %.promoted, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %i.bh, %bb.b ]
  %indvars.iv117177 = phi i64 [ %.047.ph.us180, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %indvars.iv.next118, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv117177 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next118 = add nsw i64 %indvars.iv117177, 3 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, f0x40615DEF44DEAD3D
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [48 x i8], ptr %2, i64 %i.x ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fpext float %i.z to double
  %i.ab = fdiv double %i.w, %i.aa
  %i.ac = fptrunc double %i.ab to float           ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15 ; 2 uses
  %i.ah = sext i32 %i.o to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.ak = load <2 x float>, ptr %i.ai, align 4, !tbaa !18
  %i.al = load <2 x float>, ptr %i.aj, align 4, !tbaa !18
  %i.am = fsub <2 x float> %i.ak, %i.al           ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !18
  %i.ar = fsub float %i.ao, %i.aq                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.am, %i.am
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as)
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.au) ; 3 uses
  %sqrt.us.us = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt.us.us    ; 2 uses
  %i.ax = fmul float %i.av, %i.aw                 ; 3 uses
  %i.ay = fmul float %7, %i.ac
  %i.az = tail call float @llvm.fmuladd.f32(float %i.e, float %i.ac, float %i.ay) ; 3 uses
  %i.ba = fsub float %i.ax, %i.g                  ; 4 uses
  %i.bb = fmul float %i.ba, %i.ba                 ; 2 uses
  %i.bc = fsub float %i.ac, %i.ac
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_18polarizeIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.i = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %.not.i, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us

.outer.us.preheader:                              ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph: ; preds = %.outer.us.preheader, %.split41.us.us
  %.0.ph.us117 = phi float [ %i.bh, %.split41.us.us ], [ 0.000000e+00, %.outer.us.preheader ] ; 2 uses
  %.030.ph.us116 = phi i64 [ %indvars.iv.next74, %.split41.us.us ], [ 0, %.outer.us.preheader ]
  %.promoted = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.j = icmp slt i64 %indvars.iv.next74, %i.h
  br i1 %i.j, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us, label %.split.us, !llvm.loop !101

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, %bb.b
  %i.k = phi float [ %.promoted, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %i.bb, %bb.b ]
  %indvars.iv73113 = phi i64 [ %.030.ph.us116, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %indvars.iv.next74, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv73113 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next74 = add nsw i64 %indvars.iv73113, 3 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, f0x40615DEF44DEAD3D
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [48 x i8], ptr %2, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fpext float %i.z to double
  %i.ab = fdiv double %i.w, %i.aa
  %i.ac = fptrunc double %i.ab to float           ; 4 uses
  %i.ad = sext i32 %i.o to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.ag = load <2 x float>, ptr %i.ae, align 4, !tbaa !18
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !18
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !18
  %i.an = fsub float %i.ak, %i.am                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ai
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ap = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.aq) ; 2 uses
  %sqrt.us.us = tail call float @llvm.sqrt.f32(float %i.ar) ; 2 uses
  %i.as = fmul float %7, %i.ac
  %i.at = tail call float @llvm.fmuladd.f32(float %i.e, float %i.ac, float %i.as) ; 3 uses
  %i.au = fsub float %sqrt.us.us, %i.g            ; 4 uses
  %i.av = fmul float %i.au, %i.au                 ; 2 uses
  %i.aw = fsub float %i.ac, %i.ac
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = fmul float %i.at, 0.000000e+00
  %i.az = fmul float %i.ay, %i.au
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.av, float %i.az)
  %i.bb = fadd float %i.k, %i.ba                  ; 2 uses
  store float %i.bb, ptr %8, align 4, !tbaa !18
  %i.bc = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.bc, label %bb.b, label %.split41.us.us, !llvm.loop !101

.split41.us.us:                                   ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.bd = fmul float %i.at, 5.000000e-01
  %i.be = fmul float %i.bd, %i.av
  %i.bf = fneg float %i.at
  %i.bg = fmul float %i.au, %i.bf
  %i.bh = fadd float %.0.ph.us117, %i.be          ; 2 uses
  %i.bi = fdiv float 1.000000e+00, %sqrt.us.us
  %i.bj = fmul float %i.bi, %i.bg                 ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ad ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.r ; 3 uses
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.ai, %i.bn           ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.bq = fadd <2 x float> %i.bo, %i.bp
  store <2 x float> %i.bq, ptr %i.bk, align 4, !tbaa !18
  %i.br = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.bs = fsub <2 x float> %i.br, %i.bo
  store <2 x float> %i.bs, ptr %i.bl, align 4, !tbaa !18
  %i.bt = fmul float %i.an, %i.bj                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !18
  %i.bw = fadd float %i.bt, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !18
  %i.bz = fsub float %i.by, %i.bt
  store float %i.bz, ptr %i.bx, align 4, !tbaa !18
  %i.ca = icmp slt i64 %indvars.iv.next74, %i.h
  br i1 %i.ca, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us, !llvm.loop !101

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph: ; preds = %.outer.preheader, %.split41
  %.0.ph111 = phi float [ %i.du, %.split41 ], [ 0.000000e+00, %.outer.preheader ] ; 2 uses
  %.030.ph110 = phi i64 [ %indvars.iv.next, %.split41 ], [ 0, %.outer.preheader ]
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.cb = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.cb, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit, label %.split.us, !llvm.loop !101

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, %bb.c
  %indvars.iv108 = phi i64 [ %.030.ph110, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv108 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16
  %i.ce = getelementptr i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv108, 3 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !16
  %i.ci = sext i32 %i.ch to i64                   ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !18 ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = fpext float %i.cl to double
  %i.cn = fmul double %i.cm, f0x40615DEF44DEAD3D
  %i.co = sext i32 %i.cd to i64
  %i.cp = getelementptr inbounds [48 x i8], ptr %2, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15
  %i.cr = fpext float %i.cq to double
  %i.cs = fdiv double %i.cn, %i.cr
  %i.ct = fptrunc double %i.cs to float           ; 4 uses
  %i.cu = sext i32 %i.cf to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [12 x i8], ptr %3, i64 %i.cu
  %i.cw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ci
  %i.cx = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.cv, ptr noundef %i.cw, ptr noundef nonnull %i.a) ; 0 uses
  %i.cy = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 4 uses
  %foldExtExtBinop120 = fmul <2 x float> %i.cy, %i.cy
  %i.cz = extractelement <2 x float> %foldExtExtBinop120, i64 1
  %i.da = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cz)
  %i.dc = load float, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  %i.dd = call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.db) ; 2 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.dd)  ; 2 uses
  %i.de = fmul float %7, %i.ct
  %i.df = call float @llvm.fmuladd.f32(float %i.e, float %i.ct, float %i.de) ; 3 uses
  %i.dg = fsub float %sqrt, %i.g                  ; 4 uses
  %i.dh = fmul float %i.dg, %i.dg                 ; 2 uses
  %i.di = fsub float %i.ct, %i.ct
  %i.dj = fmul float %i.di, 5.000000e-01
  %i.dk = fmul float %i.df, 0.000000e+00
  %i.dl = fmul float %i.dk, %i.dg
  %i.dm = call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.dh, float %i.dl)
  %i.dn = load float, ptr %8, align 4, !tbaa !18
  %i.do = fadd float %i.dn, %i.dm
  store float %i.do, ptr %8, align 4, !tbaa !18
  %i.dp = fcmp oeq float %i.dd, 0.000000e+00
  br i1 %i.dp, label %bb.c, label %.split41, !llvm.loop !101

.split41:                                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.dq = fmul float %i.df, 5.000000e-01
  %i.dr = fmul float %i.dq, %i.dh
  %i.ds = fneg float %i.df
  %i.dt = fmul float %i.dg, %i.ds
  %i.du = fadd float %.0.ph111, %i.dr             ; 2 uses
  %i.dv = fdiv float 1.000000e+00, %sqrt
  %i.dw = fmul float %i.dv, %i.dt                 ; 2 uses
  %i.dx = getelementptr inbounds [16 x i8], ptr %4, i64 %i.cu ; 3 uses
  %i.dy = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ci ; 3 uses
  %i.dz = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.cy, %i.ea           ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dx, align 4, !tbaa !18
  %i.ed = fadd <2 x float> %i.eb, %i.ec
  store <2 x float> %i.ed, ptr %i.dx, align 4, !tbaa !18
  %i.ee = load <2 x float>, ptr %i.dy, align 4, !tbaa !18
  %i.ef = fsub <2 x float> %i.ee, %i.eb
  store <2 x float> %i.ef, ptr %i.dy, align 4, !tbaa !18
  %i.eg = fmul float %i.dc, %i.dw                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !18
  %i.ej = fadd float %i.eg, %i.ei
  store float %i.ej, ptr %i.eh, align 4, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !18
  %i.em = fsub float %i.el, %i.eg
  store float %i.em, ptr %i.ek, align 4, !tbaa !18
  %i.en = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.en, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us, !llvm.loop !101

.split.us:                                        ; preds = %.split41, %bb.c, %.split41.us.us, %bb.b, %.outer.preheader, %.outer.us.preheader
  %.us-phi = phi float [ %.0.ph.us117, %bb.b ], [ %.0.ph111, %bb.c ], [ 0.000000e+00, %.outer.us.preheader ], [ %i.bh, %.split41.us.us ], [ 0.000000e+00, %.outer.preheader ], [ %i.du, %.split41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19water_polIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %i.c = alloca [3 x float], align 8              ; 7 uses
  %i.d = alloca [3 x float], align 8              ; 8 uses
  %i.e = alloca [3 x float], align 8              ; 8 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !16     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %9, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.j
  %i.n = load float, ptr %i.m, align 4, !tbaa !18 ; 2 uses
  %i.o = fmul float %i.n, %i.n
  %i.p = fpext float %i.o to double
  %i.q = fmul double %i.p, f0x40615DEF44DEAD3D    ; 2 uses
  %i.r = sext i32 %i.g to i64
  %i.s = getelementptr inbounds [48 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !15
  %i.u = fpext float %i.t to double
  %i.v = fdiv double %i.q, %i.u
  %i.w = fptrunc double %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !15
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.ab, %i.z
  %i.ad = fptrunc <2 x double> %i.ac to <2 x float>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !15
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %.not.i = icmp eq ptr %6, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107 ] ; 2 uses
  %.091122 = phi float [ 0.000000e+00, %bb.b ], [ %i.fs, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16 ; 2 uses
  %.not = icmp eq i32 %i.ar, %i.g
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(69) @.str.7, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 844, ptr noundef nonnull @.str.13, i32 noundef %i.ar, i32 noundef %i.g, ptr noundef nonnull @.str.7, i32 noundef 844) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.as

bb.g:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16 ; 2 uses
  %i.bd = sext i32 %i.aw to i64
  %i.be = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bd ; 5 uses
  %i.bf = sext i32 %i.au to i64
  %i.bg = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bf ; 6 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull %i.a) ; 0 uses
  %i.bi = sext i32 %i.ay to i64
  %i.bj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bi ; 2 uses
  %i.bk = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bj, ptr noundef %i.bg, ptr noundef nonnull %i.b) ; 0 uses
  %i.bl = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bj, ptr noundef %i.be, ptr noundef nonnull %i.c) ; 0 uses
  %i.bm = sext i32 %i.ba to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bm ; 2 uses
  %i.bo = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bn, ptr noundef %i.bg, ptr noundef nonnull %i.d) ; 0 uses
  %i.bp = sext i32 %i.bc to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bp
  %i.br = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bq, ptr noundef %i.bn, ptr noundef nonnull %i.e) ; 0 uses
  %.pre143 = load float, ptr %i.b, align 4, !tbaa !18
  %.pre144 = load float, ptr %i.a, align 4, !tbaa !18
  %.pre140 = load float, ptr %i.al, align 8, !tbaa !18
  %15 = load <2 x float>, ptr %i.ah, align 4, !tbaa !18
  %16 = load <2 x float>, ptr %i.ai, align 4, !tbaa !18
  %i.bs = load <2 x float>, ptr %i.d, align 8, !tbaa !18
  %i.bt = load <2 x float>, ptr %i.c, align 8, !tbaa !18
  %.pre150 = load float, ptr %i.aj, align 8, !tbaa !18
  %.pre151 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre152 = load float, ptr %i.am, align 4, !tbaa !18
  %.pre153 = load float, ptr %i.an, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107

bb.i:                                             ; preds = %bb.g
  %17 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bw = sext i32 %i.ay to i64
  %19 = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bw ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %22 = sext i32 %i.ba to i64                     ; 2 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %3, i64 %22 ; 2 uses
  %i.by = load <2 x float>, ptr %i.be, align 4, !tbaa !18 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bg, align 4, !tbaa !18 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.by, %i.bz
  %23 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ca = load float, ptr %18, align 4, !tbaa !18
  %24 = load <2 x float>, ptr %17, align 4, !tbaa !18
  %25 = load float, ptr %i.bv, align 4, !tbaa !18
  %26 = load <2 x float>, ptr %i.bu, align 4, !tbaa !18 ; 2 uses
  %27 = fsub <2 x float> %24, %26                 ; 2 uses
  store float %23, ptr %i.a, align 4, !tbaa !18
  store <2 x float> %27, ptr %i.ah, align 4, !tbaa !18
  %28 = load <2 x float>, ptr %19, align 4, !tbaa !18 ; 2 uses
  %foldExtExtBinop162 = fsub <2 x float> %28, %i.bz
  %29 = extractelement <2 x float> %foldExtExtBinop162, i64 0 ; 2 uses
  %30 = load float, ptr %21, align 4, !tbaa !18
  %31 = load <2 x float>, ptr %20, align 4, !tbaa !18
  %i.cb = fsub <2 x float> %31, %26               ; 2 uses
  store float %29, ptr %i.b, align 4, !tbaa !18
  store <2 x float> %i.cb, ptr %i.ai, align 4, !tbaa !18
  %32 = fsub <2 x float> %28, %i.by
  %33 = fsub float %30, %i.ca
  %i.cc = load <2 x float>, ptr %i.bx, align 4, !tbaa !18 ; 2 uses
  %i.cd = fsub <2 x float> %i.cc, %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18 ; 2 uses
  %i.cg = fsub float %i.cf, %25
  %i.ch = sext i32 %i.bc to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !18
  %i.cl = fsub float %i.ck, %i.cf                 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.ci, align 4, !tbaa !18
  %i.cn = fsub <2 x float> %i.cm, %i.cc           ; 3 uses
  store <2 x float> %i.cn, ptr %i.e, align 8, !tbaa !18
  store float %i.cl, ptr %i.an, align 8, !tbaa !18
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = extractelement <2 x float> %i.cn, i64 1
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107: ; preds = %bb.h, %bb.i
  %i.cq = phi float [ %.pre153, %bb.h ], [ %i.cl, %bb.i ] ; 2 uses
  %i.cr = phi float [ %.pre152, %bb.h ], [ %i.cp, %bb.i ] ; 2 uses
  %i.cs = phi float [ %.pre151, %bb.h ], [ %i.co, %bb.i ] ; 2 uses
  %i.ct = phi float [ %.pre150, %bb.h ], [ %33, %bb.i ]
  %i.cu = phi float [ %.pre140, %bb.h ], [ %i.cg, %bb.i ] ; 3 uses
  %i.cv = phi float [ %.pre144, %bb.h ], [ %23, %bb.i ] ; 2 uses
  %i.cw = phi float [ %.pre143, %bb.h ], [ %29, %bb.i ] ; 2 uses
  %34 = phi i64 [ %i.bp, %bb.h ], [ %i.ch, %bb.i ]
  %35 = phi i64 [ %i.bm, %bb.h ], [ %22, %bb.i ]
  %36 = phi <2 x float> [ %15, %bb.h ], [ %27, %bb.i ] ; 3 uses
  %37 = phi <2 x float> [ %16, %bb.h ], [ %i.cb, %bb.i ] ; 3 uses
  %i.cx = phi <2 x float> [ %i.bt, %bb.h ], [ %32, %bb.i ]
  %i.cy = phi <2 x float> [ %i.bs, %bb.h ], [ %i.cd, %bb.i ] ; 4 uses
  %38 = fneg <2 x float> %37
  %i.cz = fneg float %i.cw
  %39 = extractelement <2 x float> %36, i64 0
  %i.da = fmul float %39, %i.cz
  %i.db = fmul <2 x float> %i.ap, %i.cx           ; 4 uses
  %40 = extractelement <2 x float> %i.db, i64 0
  %41 = extractelement <2 x float> %i.db, i64 1
  store <2 x float> %i.db, ptr %i.c, align 8, !tbaa !18
  %i.dc = fmul float %i.ag, %i.ct                 ; 3 uses
  store float %i.dc, ptr %i.aj, align 8, !tbaa !18
  %42 = getelementptr inbounds [16 x i8], ptr %4, i64 %34 ; 3 uses
  %43 = getelementptr inbounds [16 x i8], ptr %4, i64 %35 ; 3 uses
  %44 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %45 = insertelement <2 x float> %44, float %i.cv, i64 1
  %46 = fmul <2 x float> %45, %38
  %47 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %48 = insertelement <2 x float> %47, float %i.cw, i64 1
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %48, <2 x float> %46) ; 4 uses
  %50 = extractelement <2 x float> %37, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %i.cv, float %50, float %i.da) ; 3 uses
  %foldExtExtBinop164 = fmul <2 x float> %49, %49
  %51 = extractelement <2 x float> %foldExtExtBinop164, i64 1
  %52 = extractelement <2 x float> %49, i64 0     ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %52, float %52, float %51)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.de)
  %sqrt117 = call float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt117       ; 2 uses
  %foldExtExtBinop.a = fmul <2 x float> %i.cy, %i.cy
  %i.dh = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.di = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.dj = call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dh)
  %i.dk = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.dj)
  %sqrt = call float @llvm.sqrt.f32(float %i.dk)
  %i.dl = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %53 = insertelement <2 x float> poison, float %i.dg, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x float> %49, %54                 ; 3 uses
  %i.dm = fmul float %i.dd, %i.dg                 ; 3 uses
  %i.dn = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.cy, %i.do           ; 3 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0 ; 3 uses
  store float %i.dq, ptr %i.d, align 8, !tbaa !18
  %i.dr = extractelement <2 x float> %i.dp, i64 1 ; 3 uses
  store float %i.dr, ptr %i.ak, align 4, !tbaa !18
  %i.ds = fmul float %i.cu, %i.dl                 ; 4 uses
  store float %i.ds, ptr %i.al, align 8, !tbaa !18
  %i.dt = fmul float %i.dr, %i.cr
  %i.du = call float @llvm.fmuladd.f32(float %i.cs, float %i.dq, float %i.dt)
  %i.dv = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.ds, float %i.du) ; 3 uses
  %i.dw = fneg float %i.dv                        ; 3 uses
  %i.dx = call float @llvm.fmuladd.f32(float %i.dw, float %i.dq, float %i.cs) ; 2 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dw, float %i.dr, float %i.cr) ; 2 uses
  %i.dz = call float @llvm.fmuladd.f32(float %i.dw, float %i.ds, float %i.cq) ; 2 uses
  %56 = extractelement <2 x float> %55, i64 1     ; 2 uses
  %i.ea = fmul float %56, %i.dy
  %57 = extractelement <2 x float> %55, i64 0     ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.dx, float %57, float %i.ea)
  %i.ec = call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dm, float %i.eb) ; 3 uses
  %i.ed = fneg float %i.ec                        ; 3 uses
  %i.ee = call float @llvm.fmuladd.f32(float %i.ed, float %57, float %i.dx)
  %i.ef = call float @llvm.fmuladd.f32(float %i.ed, float %56, float %i.dy)
  %i.eg = call float @llvm.fmuladd.f32(float %i.ed, float %i.dm, float %i.dz)
  %i.eh = fmul float %41, %i.ef
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float %40, float %i.eh)
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.dc, float %i.ei) ; 2 uses
  %i.ek = fmul float %i.ec, %i.w                  ; 2 uses
  %i.el = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.dv, i64 1
  %i.en = fmul <2 x float> %i.em, %i.ad           ; 4 uses
  %i.eo = fneg float %i.ek                        ; 2 uses
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ep, %i.db
  %i.er = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x float> %i.er, %i.dp
  %i.et = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %55, %i.eu
  %i.ew = fsub <2 x float> %i.ev, %i.eq
  %i.ex = fsub <2 x float> %i.ew, %i.es           ; 2 uses
  %i.ey = load <2 x float>, ptr %42, align 4, !tbaa !18
  %i.ez = fadd <2 x float> %i.ey, %i.ex
  store <2 x float> %i.ez, ptr %42, align 4, !tbaa !18
  %i.fa = load <2 x float>, ptr %43, align 4, !tbaa !18
  %i.fb = fsub <2 x float> %i.fa, %i.ex
  store <2 x float> %i.fb, ptr %43, align 4, !tbaa !18
  %i.fc = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.fd = fmul float %i.fc, %i.dc
  %i.fe = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.ff = fmul float %i.fe, %i.ds
  %i.fg = fmul float %i.dm, %i.eo
  %i.fh = fsub float %i.fg, %i.fd
  %i.fi = fsub float %i.fh, %i.ff                 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fadd float %i.fk, %i.fi
  store float %i.fl, ptr %i.fj, align 4, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !18
  %i.fo = fsub float %i.fn, %i.fi
  store float %i.fo, ptr %i.fm, align 4, !tbaa !18
  %i.fp = fmul float %i.ej, %i.fc
  %i.fq = call float @llvm.fmuladd.f32(float %i.ec, float %i.ek, float %i.fp)
  %i.fr = call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.fe, float %i.fq)
  %i.fs = fadd float %.091122, %i.fr              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ft = trunc nuw i64 %indvars.iv.next to i32
  %i.fu = icmp sgt i32 %0, %i.ft
  br i1 %i.fu, label %bb.c, label %.loopexit.loopexit, !llvm.loop !102

.loopexit.loopexit:                               ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107
  %i.fv = fmul float %i.fs, 5.000000e-01
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.192 = phi float [ 0.000000e+00, %bb.a ], [ %i.fv, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.192
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19thole_polIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr %9, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.079 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ay, %bb.b ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = sext i32 %i.i to i64                     ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = sext i32 %i.m to i64                     ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !18
  %i.t = sext i32 %i.e to i64
  %i.u = getelementptr inbounds [48 x i8], ptr %2, i64 %i.t ; 3 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fmul float %i.p, %i.s                   ; 3 uses
  %i.ab = fmul float %i.x, %i.z
  %i.ac = tail call noundef float @cbrtf(float noundef %i.ab) #25
  %i.ad = tail call noundef float @sqrtf(float noundef %i.ac) #23
  %i.ae = fdiv float 1.000000e+00, %i.ad
  %i.af = fmul float %i.v, %i.ae                  ; 4 uses
  %i.ag = sext i32 %i.g to i64                    ; 2 uses
  %i.ah = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ai ; 2 uses
  %i.am = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor1EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %6, float noundef %i.aa, float noundef %i.af)
  %i.an = fadd float %.079, %i.am
  %i.ao = getelementptr inbounds [12 x i8], ptr %3, i64 %i.n ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %4, i64 %i.n ; 2 uses
  %i.aq = fneg float %i.aa                        ; 2 uses
  %i.ar = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor1EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ao, ptr noundef %i.aj, ptr noundef %i.ap, ptr noundef %i.al, ptr noundef %6, float noundef %i.aq, float noundef %i.af)
  %i.as = fadd float %i.an, %i.ar
  %i.at = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 2 uses
  %i.av = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor1EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ah, ptr noundef %i.at, ptr noundef %i.ak, ptr noundef %i.au, ptr noundef %6, float noundef %i.aq, float noundef %i.af)
  %i.aw = fadd float %i.as, %i.av
  %i.ax = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor1EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ao, ptr noundef %i.at, ptr noundef %i.ap, ptr noundef %i.au, ptr noundef %6, float noundef %i.aa, float noundef %i.af)
  %i.ay = fadd float %i.aw, %i.ax                 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next to i32
  %i.ba = icmp sgt i32 %0, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ay, %bb.b ]
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_115anharm_polarizeIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load i64, ptr %9, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %.not.i = icmp eq ptr %6, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = fsub float 1.000000e+00, %7              ; 3 uses
  %i.f = fmul float %7, 0.000000e+00
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.f) ; 2 uses
  %i.h = sext i32 %0 to i64                       ; 4 uses
  %i.i = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %.not.i, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us

.outer.us.preheader:                              ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph: ; preds = %.outer.us.preheader, %.outer.us
  %.0.ph.us181 = phi float [ %i.bw, %.outer.us ], [ 0.000000e+00, %.outer.us.preheader ] ; 2 uses
  %.047.ph.us180 = phi i64 [ %indvars.iv.next118, %.outer.us ], [ 0, %.outer.us.preheader ]
  %.promoted = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.j = icmp slt i64 %indvars.iv.next118, %i.h
  br i1 %i.j, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us, label %.split.us, !llvm.loop !104

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, %bb.b
  %i.k = phi float [ %.promoted, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %i.bh, %bb.b ]
  %indvars.iv117177 = phi i64 [ %.047.ph.us180, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %indvars.iv.next118, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv117177 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next118 = add nsw i64 %indvars.iv117177, 3 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, f0x40615DEF44DEAD3D
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [48 x i8], ptr %2, i64 %i.x ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fpext float %i.z to double
  %i.ab = fdiv double %i.w, %i.aa
  %i.ac = fptrunc double %i.ab to float           ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15 ; 2 uses
  %i.ah = sext i32 %i.o to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.ak = load <2 x float>, ptr %i.ai, align 4, !tbaa !18
  %i.al = load <2 x float>, ptr %i.aj, align 4, !tbaa !18
  %i.am = fsub <2 x float> %i.ak, %i.al           ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !18
  %i.ar = fsub float %i.ao, %i.aq                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.am, %i.am
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as)
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.au) ; 3 uses
  %sqrt.us.us = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt.us.us    ; 2 uses
  %i.ax = fmul float %i.av, %i.aw                 ; 3 uses
  %i.ay = fmul float %7, %i.ac
  %i.az = tail call float @llvm.fmuladd.f32(float %i.e, float %i.ac, float %i.ay) ; 3 uses
  %i.ba = fsub float %i.ax, %i.g                  ; 4 uses
  %i.bb = fmul float %i.ba, %i.ba                 ; 2 uses
  %i.bc = fsub float %i.ac, %i.ac
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_18polarizeIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.i = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %.not.i, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us

.outer.us.preheader:                              ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph: ; preds = %.outer.us.preheader, %.split41.us.us
  %.0.ph.us117 = phi float [ %i.bh, %.split41.us.us ], [ 0.000000e+00, %.outer.us.preheader ] ; 2 uses
  %.030.ph.us116 = phi i64 [ %indvars.iv.next74, %.split41.us.us ], [ 0, %.outer.us.preheader ]
  %.promoted = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.j = icmp slt i64 %indvars.iv.next74, %i.h
  br i1 %i.j, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us, label %.split.us, !llvm.loop !157

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, %bb.b
  %i.k = phi float [ %.promoted, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %i.bb, %bb.b ]
  %indvars.iv73113 = phi i64 [ %.030.ph.us116, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %indvars.iv.next74, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv73113 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next74 = add nsw i64 %indvars.iv73113, 3 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, f0x40615DEF44DEAD3D
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [48 x i8], ptr %2, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fpext float %i.z to double
  %i.ab = fdiv double %i.w, %i.aa
  %i.ac = fptrunc double %i.ab to float           ; 4 uses
  %i.ad = sext i32 %i.o to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.ag = load <2 x float>, ptr %i.ae, align 4, !tbaa !18
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !18
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !18
  %i.an = fsub float %i.ak, %i.am                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ai
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ap = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.aq) ; 2 uses
  %sqrt.us.us = tail call float @llvm.sqrt.f32(float %i.ar) ; 2 uses
  %i.as = fmul float %7, %i.ac
  %i.at = tail call float @llvm.fmuladd.f32(float %i.e, float %i.ac, float %i.as) ; 3 uses
  %i.au = fsub float %sqrt.us.us, %i.g            ; 4 uses
  %i.av = fmul float %i.au, %i.au                 ; 2 uses
  %i.aw = fsub float %i.ac, %i.ac
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = fmul float %i.at, 0.000000e+00
  %i.az = fmul float %i.ay, %i.au
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.av, float %i.az)
  %i.bb = fadd float %i.k, %i.ba                  ; 2 uses
  store float %i.bb, ptr %8, align 4, !tbaa !18
  %i.bc = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.bc, label %bb.b, label %.split41.us.us, !llvm.loop !157

.split41.us.us:                                   ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.bd = fmul float %i.at, 5.000000e-01
  %i.be = fmul float %i.bd, %i.av
  %i.bf = fneg float %i.at
  %i.bg = fmul float %i.au, %i.bf
  %i.bh = fadd float %.0.ph.us117, %i.be          ; 2 uses
  %i.bi = fdiv float 1.000000e+00, %sqrt.us.us
  %i.bj = fmul float %i.bi, %i.bg                 ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ad ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.r ; 3 uses
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.ai, %i.bn           ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.bq = fadd <2 x float> %i.bo, %i.bp
  store <2 x float> %i.bq, ptr %i.bk, align 4, !tbaa !18
  %i.br = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.bs = fsub <2 x float> %i.br, %i.bo
  store <2 x float> %i.bs, ptr %i.bl, align 4, !tbaa !18
  %i.bt = fmul float %i.an, %i.bj                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !18
  %i.bw = fadd float %i.bt, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !18
  %i.bz = fsub float %i.by, %i.bt
  store float %i.bz, ptr %i.bx, align 4, !tbaa !18
  %i.ca = icmp slt i64 %indvars.iv.next74, %i.h
  br i1 %i.ca, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us, !llvm.loop !157

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph: ; preds = %.outer.preheader, %.split41
  %.0.ph111 = phi float [ %i.du, %.split41 ], [ 0.000000e+00, %.outer.preheader ] ; 2 uses
  %.030.ph110 = phi i64 [ %indvars.iv.next, %.split41 ], [ 0, %.outer.preheader ]
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.cb = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.cb, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit, label %.split.us, !llvm.loop !157

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, %bb.c
  %indvars.iv108 = phi i64 [ %.030.ph110, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv108 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16
  %i.ce = getelementptr i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv108, 3 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !16
  %i.ci = sext i32 %i.ch to i64                   ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !18 ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = fpext float %i.cl to double
  %i.cn = fmul double %i.cm, f0x40615DEF44DEAD3D
  %i.co = sext i32 %i.cd to i64
  %i.cp = getelementptr inbounds [48 x i8], ptr %2, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15
  %i.cr = fpext float %i.cq to double
  %i.cs = fdiv double %i.cn, %i.cr
  %i.ct = fptrunc double %i.cs to float           ; 4 uses
  %i.cu = sext i32 %i.cf to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [12 x i8], ptr %3, i64 %i.cu
  %i.cw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ci
  %i.cx = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.cv, ptr noundef %i.cw, ptr noundef nonnull %i.a) ; 0 uses
  %i.cy = load <2 x float>, ptr %i.a, align 8, !tbaa !18 ; 4 uses
  %foldExtExtBinop120 = fmul <2 x float> %i.cy, %i.cy
  %i.cz = extractelement <2 x float> %foldExtExtBinop120, i64 1
  %i.da = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cz)
  %i.dc = load float, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  %i.dd = call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.db) ; 2 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.dd)  ; 2 uses
  %i.de = fmul float %7, %i.ct
  %i.df = call float @llvm.fmuladd.f32(float %i.e, float %i.ct, float %i.de) ; 3 uses
  %i.dg = fsub float %sqrt, %i.g                  ; 4 uses
  %i.dh = fmul float %i.dg, %i.dg                 ; 2 uses
  %i.di = fsub float %i.ct, %i.ct
  %i.dj = fmul float %i.di, 5.000000e-01
  %i.dk = fmul float %i.df, 0.000000e+00
  %i.dl = fmul float %i.dk, %i.dg
  %i.dm = call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.dh, float %i.dl)
  %i.dn = load float, ptr %8, align 4, !tbaa !18
  %i.do = fadd float %i.dn, %i.dm
  store float %i.do, ptr %8, align 4, !tbaa !18
  %i.dp = fcmp oeq float %i.dd, 0.000000e+00
  br i1 %i.dp, label %bb.c, label %.split41, !llvm.loop !157

.split41:                                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.dq = fmul float %i.df, 5.000000e-01
  %i.dr = fmul float %i.dq, %i.dh
  %i.ds = fneg float %i.df
  %i.dt = fmul float %i.dg, %i.ds
  %i.du = fadd float %.0.ph111, %i.dr             ; 2 uses
  %i.dv = fdiv float 1.000000e+00, %sqrt
  %i.dw = fmul float %i.dv, %i.dt                 ; 2 uses
  %i.dx = getelementptr inbounds [16 x i8], ptr %4, i64 %i.cu ; 3 uses
  %i.dy = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ci ; 3 uses
  %i.dz = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.cy, %i.ea           ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dx, align 4, !tbaa !18
  %i.ed = fadd <2 x float> %i.eb, %i.ec
  store <2 x float> %i.ed, ptr %i.dx, align 4, !tbaa !18
  %i.ee = load <2 x float>, ptr %i.dy, align 4, !tbaa !18
  %i.ef = fsub <2 x float> %i.ee, %i.eb
  store <2 x float> %i.ef, ptr %i.dy, align 4, !tbaa !18
  %i.eg = fmul float %i.dc, %i.dw                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !18
  %i.ej = fadd float %i.eg, %i.ei
  store float %i.ej, ptr %i.eh, align 4, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !18
  %i.em = fsub float %i.el, %i.eg
  store float %i.em, ptr %i.ek, align 4, !tbaa !18
  %i.en = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.en, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us, !llvm.loop !157

.split.us:                                        ; preds = %.split41, %bb.c, %.split41.us.us, %bb.b, %.outer.preheader, %.outer.us.preheader
  %.us-phi = phi float [ %.0.ph.us117, %bb.b ], [ %.0.ph111, %bb.c ], [ 0.000000e+00, %.outer.us.preheader ], [ %i.bh, %.split41.us.us ], [ 0.000000e+00, %.outer.preheader ], [ %i.du, %.split41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19water_polIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %i.c = alloca [3 x float], align 8              ; 7 uses
  %i.d = alloca [3 x float], align 8              ; 8 uses
  %i.e = alloca [3 x float], align 8              ; 8 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !16     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %9, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.j
  %i.n = load float, ptr %i.m, align 4, !tbaa !18 ; 2 uses
  %i.o = fmul float %i.n, %i.n
  %i.p = fpext float %i.o to double
  %i.q = fmul double %i.p, f0x40615DEF44DEAD3D    ; 2 uses
  %i.r = sext i32 %i.g to i64
  %i.s = getelementptr inbounds [48 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !15
  %i.u = fpext float %i.t to double
  %i.v = fdiv double %i.q, %i.u
  %i.w = fptrunc double %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !15
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.ab, %i.z
  %i.ad = fptrunc <2 x double> %i.ac to <2 x float>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !15
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %.not.i = icmp eq ptr %6, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107 ] ; 2 uses
  %.091122 = phi float [ 0.000000e+00, %bb.b ], [ %i.fs, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16 ; 2 uses
  %.not = icmp eq i32 %i.ar, %i.g
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(69) @.str.7, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 844, ptr noundef nonnull @.str.13, i32 noundef %i.ar, i32 noundef %i.g, ptr noundef nonnull @.str.7, i32 noundef 844) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.as

bb.g:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16 ; 2 uses
  %i.bd = sext i32 %i.aw to i64
  %i.be = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bd ; 5 uses
  %i.bf = sext i32 %i.au to i64
  %i.bg = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bf ; 6 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull %i.a) ; 0 uses
  %i.bi = sext i32 %i.ay to i64
  %i.bj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bi ; 2 uses
  %i.bk = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bj, ptr noundef %i.bg, ptr noundef nonnull %i.b) ; 0 uses
  %i.bl = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bj, ptr noundef %i.be, ptr noundef nonnull %i.c) ; 0 uses
  %i.bm = sext i32 %i.ba to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bm ; 2 uses
  %i.bo = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bn, ptr noundef %i.bg, ptr noundef nonnull %i.d) ; 0 uses
  %i.bp = sext i32 %i.bc to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bp
  %i.br = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.bq, ptr noundef %i.bn, ptr noundef nonnull %i.e) ; 0 uses
  %.pre143 = load float, ptr %i.b, align 4, !tbaa !18
  %.pre144 = load float, ptr %i.a, align 4, !tbaa !18
  %.pre140 = load float, ptr %i.al, align 8, !tbaa !18
  %15 = load <2 x float>, ptr %i.ah, align 4, !tbaa !18
  %16 = load <2 x float>, ptr %i.ai, align 4, !tbaa !18
  %i.bs = load <2 x float>, ptr %i.d, align 8, !tbaa !18
  %i.bt = load <2 x float>, ptr %i.c, align 8, !tbaa !18
  %.pre150 = load float, ptr %i.aj, align 8, !tbaa !18
  %.pre151 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre152 = load float, ptr %i.am, align 4, !tbaa !18
  %.pre153 = load float, ptr %i.an, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107

bb.i:                                             ; preds = %bb.g
  %17 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bw = sext i32 %i.ay to i64
  %19 = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bw ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %22 = sext i32 %i.ba to i64                     ; 2 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %3, i64 %22 ; 2 uses
  %i.by = load <2 x float>, ptr %i.be, align 4, !tbaa !18 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bg, align 4, !tbaa !18 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.by, %i.bz
  %23 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ca = load float, ptr %18, align 4, !tbaa !18
  %24 = load <2 x float>, ptr %17, align 4, !tbaa !18
  %25 = load float, ptr %i.bv, align 4, !tbaa !18
  %26 = load <2 x float>, ptr %i.bu, align 4, !tbaa !18 ; 2 uses
  %27 = fsub <2 x float> %24, %26                 ; 2 uses
  store float %23, ptr %i.a, align 4, !tbaa !18
  store <2 x float> %27, ptr %i.ah, align 4, !tbaa !18
  %28 = load <2 x float>, ptr %19, align 4, !tbaa !18 ; 2 uses
  %foldExtExtBinop162 = fsub <2 x float> %28, %i.bz
  %29 = extractelement <2 x float> %foldExtExtBinop162, i64 0 ; 2 uses
  %30 = load float, ptr %21, align 4, !tbaa !18
  %31 = load <2 x float>, ptr %20, align 4, !tbaa !18
  %i.cb = fsub <2 x float> %31, %26               ; 2 uses
  store float %29, ptr %i.b, align 4, !tbaa !18
  store <2 x float> %i.cb, ptr %i.ai, align 4, !tbaa !18
  %32 = fsub <2 x float> %28, %i.by
  %33 = fsub float %30, %i.ca
  %i.cc = load <2 x float>, ptr %i.bx, align 4, !tbaa !18 ; 2 uses
  %i.cd = fsub <2 x float> %i.cc, %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18 ; 2 uses
  %i.cg = fsub float %i.cf, %25
  %i.ch = sext i32 %i.bc to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !18
  %i.cl = fsub float %i.ck, %i.cf                 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.ci, align 4, !tbaa !18
  %i.cn = fsub <2 x float> %i.cm, %i.cc           ; 3 uses
  store <2 x float> %i.cn, ptr %i.e, align 8, !tbaa !18
  store float %i.cl, ptr %i.an, align 8, !tbaa !18
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = extractelement <2 x float> %i.cn, i64 1
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107: ; preds = %bb.h, %bb.i
  %i.cq = phi float [ %.pre153, %bb.h ], [ %i.cl, %bb.i ] ; 2 uses
  %i.cr = phi float [ %.pre152, %bb.h ], [ %i.cp, %bb.i ] ; 2 uses
  %i.cs = phi float [ %.pre151, %bb.h ], [ %i.co, %bb.i ] ; 2 uses
  %i.ct = phi float [ %.pre150, %bb.h ], [ %33, %bb.i ]
  %i.cu = phi float [ %.pre140, %bb.h ], [ %i.cg, %bb.i ] ; 3 uses
  %i.cv = phi float [ %.pre144, %bb.h ], [ %23, %bb.i ] ; 2 uses
  %i.cw = phi float [ %.pre143, %bb.h ], [ %29, %bb.i ] ; 2 uses
  %34 = phi i64 [ %i.bp, %bb.h ], [ %i.ch, %bb.i ]
  %35 = phi i64 [ %i.bm, %bb.h ], [ %22, %bb.i ]
  %36 = phi <2 x float> [ %15, %bb.h ], [ %27, %bb.i ] ; 3 uses
  %37 = phi <2 x float> [ %16, %bb.h ], [ %i.cb, %bb.i ] ; 3 uses
  %i.cx = phi <2 x float> [ %i.bt, %bb.h ], [ %32, %bb.i ]
  %i.cy = phi <2 x float> [ %i.bs, %bb.h ], [ %i.cd, %bb.i ] ; 4 uses
  %38 = fneg <2 x float> %37
  %i.cz = fneg float %i.cw
  %39 = extractelement <2 x float> %36, i64 0
  %i.da = fmul float %39, %i.cz
  %i.db = fmul <2 x float> %i.ap, %i.cx           ; 4 uses
  %40 = extractelement <2 x float> %i.db, i64 0
  %41 = extractelement <2 x float> %i.db, i64 1
  store <2 x float> %i.db, ptr %i.c, align 8, !tbaa !18
  %i.dc = fmul float %i.ag, %i.ct                 ; 3 uses
  store float %i.dc, ptr %i.aj, align 8, !tbaa !18
  %42 = getelementptr inbounds [16 x i8], ptr %4, i64 %34 ; 3 uses
  %43 = getelementptr inbounds [16 x i8], ptr %4, i64 %35 ; 3 uses
  %44 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %45 = insertelement <2 x float> %44, float %i.cv, i64 1
  %46 = fmul <2 x float> %45, %38
  %47 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %48 = insertelement <2 x float> %47, float %i.cw, i64 1
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %48, <2 x float> %46) ; 4 uses
  %50 = extractelement <2 x float> %37, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %i.cv, float %50, float %i.da) ; 3 uses
  %foldExtExtBinop164 = fmul <2 x float> %49, %49
  %51 = extractelement <2 x float> %foldExtExtBinop164, i64 1
  %52 = extractelement <2 x float> %49, i64 0     ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %52, float %52, float %51)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.de)
  %sqrt117 = call float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt117       ; 2 uses
  %foldExtExtBinop.a = fmul <2 x float> %i.cy, %i.cy
  %i.dh = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.di = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.dj = call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dh)
  %i.dk = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.dj)
  %sqrt = call float @llvm.sqrt.f32(float %i.dk)
  %i.dl = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %53 = insertelement <2 x float> poison, float %i.dg, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x float> %49, %54                 ; 3 uses
  %i.dm = fmul float %i.dd, %i.dg                 ; 3 uses
  %i.dn = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.cy, %i.do           ; 3 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0 ; 3 uses
  store float %i.dq, ptr %i.d, align 8, !tbaa !18
  %i.dr = extractelement <2 x float> %i.dp, i64 1 ; 3 uses
  store float %i.dr, ptr %i.ak, align 4, !tbaa !18
  %i.ds = fmul float %i.cu, %i.dl                 ; 4 uses
  store float %i.ds, ptr %i.al, align 8, !tbaa !18
  %i.dt = fmul float %i.dr, %i.cr
  %i.du = call float @llvm.fmuladd.f32(float %i.cs, float %i.dq, float %i.dt)
  %i.dv = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.ds, float %i.du) ; 3 uses
  %i.dw = fneg float %i.dv                        ; 3 uses
  %i.dx = call float @llvm.fmuladd.f32(float %i.dw, float %i.dq, float %i.cs) ; 2 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dw, float %i.dr, float %i.cr) ; 2 uses
  %i.dz = call float @llvm.fmuladd.f32(float %i.dw, float %i.ds, float %i.cq) ; 2 uses
  %56 = extractelement <2 x float> %55, i64 1     ; 2 uses
  %i.ea = fmul float %56, %i.dy
  %57 = extractelement <2 x float> %55, i64 0     ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.dx, float %57, float %i.ea)
  %i.ec = call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dm, float %i.eb) ; 3 uses
  %i.ed = fneg float %i.ec                        ; 3 uses
  %i.ee = call float @llvm.fmuladd.f32(float %i.ed, float %57, float %i.dx)
  %i.ef = call float @llvm.fmuladd.f32(float %i.ed, float %56, float %i.dy)
  %i.eg = call float @llvm.fmuladd.f32(float %i.ed, float %i.dm, float %i.dz)
  %i.eh = fmul float %41, %i.ef
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float %40, float %i.eh)
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.dc, float %i.ei) ; 2 uses
  %i.ek = fmul float %i.ec, %i.w                  ; 2 uses
  %i.el = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.dv, i64 1
  %i.en = fmul <2 x float> %i.em, %i.ad           ; 4 uses
  %i.eo = fneg float %i.ek                        ; 2 uses
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ep, %i.db
  %i.er = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x float> %i.er, %i.dp
  %i.et = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %55, %i.eu
  %i.ew = fsub <2 x float> %i.ev, %i.eq
  %i.ex = fsub <2 x float> %i.ew, %i.es           ; 2 uses
  %i.ey = load <2 x float>, ptr %42, align 4, !tbaa !18
  %i.ez = fadd <2 x float> %i.ey, %i.ex
  store <2 x float> %i.ez, ptr %42, align 4, !tbaa !18
  %i.fa = load <2 x float>, ptr %43, align 4, !tbaa !18
  %i.fb = fsub <2 x float> %i.fa, %i.ex
  store <2 x float> %i.fb, ptr %43, align 4, !tbaa !18
  %i.fc = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.fd = fmul float %i.fc, %i.dc
  %i.fe = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.ff = fmul float %i.fe, %i.ds
  %i.fg = fmul float %i.dm, %i.eo
  %i.fh = fsub float %i.fg, %i.fd
  %i.fi = fsub float %i.fh, %i.ff                 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fadd float %i.fk, %i.fi
  store float %i.fl, ptr %i.fj, align 4, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !18
  %i.fo = fsub float %i.fn, %i.fi
  store float %i.fo, ptr %i.fm, align 4, !tbaa !18
  %i.fp = fmul float %i.ej, %i.fc
  %i.fq = call float @llvm.fmuladd.f32(float %i.ec, float %i.ek, float %i.fp)
  %i.fr = call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.fe, float %i.fq)
  %i.fs = fadd float %.091122, %i.fr              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ft = trunc nuw i64 %indvars.iv.next to i32
  %i.fu = icmp sgt i32 %0, %i.ft
  br i1 %i.fu, label %bb.c, label %.loopexit.loopexit, !llvm.loop !158

.loopexit.loopexit:                               ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit107
  %i.fv = fmul float %i.fs, 5.000000e-01
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.192 = phi float [ 0.000000e+00, %bb.a ], [ %i.fv, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.192
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19thole_polIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr %9, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.079 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ay, %bb.b ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = sext i32 %i.i to i64                     ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = sext i32 %i.m to i64                     ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !18
  %i.t = sext i32 %i.e to i64
  %i.u = getelementptr inbounds [48 x i8], ptr %2, i64 %i.t ; 3 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fmul float %i.p, %i.s                   ; 3 uses
  %i.ab = fmul float %i.x, %i.z
  %i.ac = tail call noundef float @cbrtf(float noundef %i.ab) #25
  %i.ad = tail call noundef float @sqrtf(float noundef %i.ac) #23
  %i.ae = fdiv float 1.000000e+00, %i.ad
  %i.af = fmul float %i.v, %i.ae                  ; 4 uses
  %i.ag = sext i32 %i.g to i64                    ; 2 uses
  %i.ah = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ai ; 2 uses
  %i.am = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor3EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %6, float noundef %i.aa, float noundef %i.af)
  %i.an = fadd float %.079, %i.am
  %i.ao = getelementptr inbounds [12 x i8], ptr %3, i64 %i.n ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %4, i64 %i.n ; 2 uses
  %i.aq = fneg float %i.aa                        ; 2 uses
  %i.ar = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor3EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ao, ptr noundef %i.aj, ptr noundef %i.ap, ptr noundef %i.al, ptr noundef %6, float noundef %i.aq, float noundef %i.af)
  %i.as = fadd float %i.an, %i.ar
  %i.at = getelementptr inbounds [12 x i8], ptr %3, i64 %i.q ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %4, i64 %i.q ; 2 uses
  %i.av = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor3EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ah, ptr noundef %i.at, ptr noundef %i.ak, ptr noundef %i.au, ptr noundef %6, float noundef %i.aq, float noundef %i.af)
  %i.aw = fadd float %i.as, %i.av
  %i.ax = tail call fastcc noundef float @_ZN12_GLOBAL__N_110do_1_tholeIL18BondedKernelFlavor3EEEfPKfS3_PfS4_PK5t_pbcfPA3_ff(ptr noundef %i.ao, ptr noundef %i.at, ptr noundef %i.ap, ptr noundef %i.au, ptr noundef %6, float noundef %i.aa, float noundef %i.af)
  %i.ay = fadd float %i.aw, %i.ax                 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next to i32
  %i.ba = icmp sgt i32 %0, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ay, %bb.b ]
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_115anharm_polarizeIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load i64, ptr %9, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %.not.i = icmp eq ptr %6, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = fsub float 1.000000e+00, %7              ; 3 uses
  %i.f = fmul float %7, 0.000000e+00
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.f) ; 2 uses
  %i.h = sext i32 %0 to i64                       ; 4 uses
  %i.i = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %.not.i, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.lr.ph, label %.split.us

.outer.us.preheader:                              ; preds = %bb.a
  br i1 %i.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, label %.split.us

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph: ; preds = %.outer.us.preheader, %.outer.us
  %.0.ph.us181 = phi float [ %i.bw, %.outer.us ], [ 0.000000e+00, %.outer.us.preheader ] ; 2 uses
  %.047.ph.us180 = phi i64 [ %indvars.iv.next118, %.outer.us ], [ 0, %.outer.us.preheader ]
  %.promoted = load float, ptr %8, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us
  %i.j = icmp slt i64 %indvars.iv.next118, %i.h
  br i1 %i.j, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us, label %.split.us, !llvm.loop !160

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us: ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph, %bb.b
  %i.k = phi float [ %.promoted, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %i.bh, %bb.b ]
  %indvars.iv117177 = phi i64 [ %.047.ph.us180, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.us.us.lr.ph ], [ %indvars.iv.next118, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv117177 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next118 = add nsw i64 %indvars.iv117177, 3 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, f0x40615DEF44DEAD3D
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [48 x i8], ptr %2, i64 %i.x ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !15
  %i.aa = fpext float %i.z to double
  %i.ab = fdiv double %i.w, %i.aa
  %i.ac = fptrunc double %i.ab to float           ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15 ; 2 uses
  %i.ah = sext i32 %i.o to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds [12 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.ak = load <2 x float>, ptr %i.ai, align 4, !tbaa !18
  %i.al = load <2 x float>, ptr %i.aj, align 4, !tbaa !18
  %i.am = fsub <2 x float> %i.ak, %i.al           ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !18
  %i.ar = fsub float %i.ao, %i.aq                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.am, %i.am
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as)
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.au) ; 3 uses
  %sqrt.us.us = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt.us.us    ; 2 uses
  %i.ax = fmul float %i.av, %i.aw                 ; 3 uses
  %i.ay = fmul float %7, %i.ac
  %i.az = tail call float @llvm.fmuladd.f32(float %i.e, float %i.ac, float %i.ay) ; 3 uses
  %i.ba = fsub float %i.ax, %i.g                  ; 4 uses
  %i.bb = fmul float %i.ba, %i.ba                 ; 2 uses
  %i.bc = fsub float %i.ac, %i.ac
end_hunk_2
