Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bonded?download=true
inline.NumInlined: 1758
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.br = fmul float %i.bk, %i.bk                 ; 3 uses
  %i.bs = fmul float %i.bk, %i.be                 ; 6 uses
  %i.bt = fmul float %i.bl, %i.am                 ; 6 uses
  %i.bu = fmul float %i.br, %i.bf
  %i.bv = fmul float %i.br, %i.bg
  %i.bw = fmul float %i.bu, %i.au
  %i.bx = fmul float %i.bv, %i.au
  %i.by = call float @llvm.fmuladd.f32(float %i.az, float %i.bs, float %i.bw)
  %i.bz = call float @llvm.fmuladd.f32(float %i.ba, float %i.bs, float %i.bx)
  %i.ca = fmul float %i.bt, %i.by                 ; 2 uses
  %i.cb = fmul float %i.bt, %i.bz                 ; 2 uses
  %i.cc = fneg float %i.cb
  %i.cd = fmul float %i.bq, %i.az
  %i.ce = fmul float %i.bq, %i.ba
  %i.cf = fmul float %i.cd, %i.au
  %i.cg = fmul float %i.ce, %i.au
  %i.ch = call float @llvm.fmuladd.f32(float %i.bf, float %i.bs, float %i.cf)
  %i.ci = call float @llvm.fmuladd.f32(float %i.bg, float %i.bs, float %i.cg)
  %i.cj = fmul float %i.bt, %i.ch                 ; 2 uses
  %i.ck = fmul float %i.bt, %i.ci                 ; 2 uses
  %i.cl = fsub float %i.cc, %i.ck
  %i.cm = load <2 x float>, ptr %i.av, align 4, !tbaa !18
  %i.cn = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.ca, i64 1
  %i.cp = fadd <2 x float> %i.cm, %i.co
  store <2 x float> %i.cp, ptr %i.av, align 4, !tbaa !18
  %i.cq = load float, ptr %i.aw, align 4, !tbaa !18
  %i.cr = fadd float %i.cq, %i.cl
  store float %i.cr, ptr %i.aw, align 4, !tbaa !18
  %i.cs = fneg float %i.ca
  %i.ct = fsub float %i.cs, %i.cj
  %i.cu = load float, ptr %i.ay, align 4, !tbaa !18
  %i.cv = fadd float %i.cu, %i.ct
  store float %i.cv, ptr %i.ay, align 4, !tbaa !18
  %i.cw = load <2 x float>, ptr %i.ax, align 4, !tbaa !18
  %i.cx = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cj, i64 1
  %i.cz = fadd <2 x float> %i.cy, %i.cw
  store <2 x float> %i.cz, ptr %i.ax, align 4, !tbaa !18
  %i.da = fmul float %i.br, %i.as
  %i.db = fmul float %i.da, %i.au
  %i.dc = call float @llvm.fmuladd.f32(float %i.at, float %i.bs, float %i.db)
  %i.dd = fmul float %i.bt, %i.dc                 ; 2 uses
  %i.de = fmul float %i.bq, %i.at
  %i.df = fmul float %i.de, %i.au
  %i.dg = call float @llvm.fmuladd.f32(float %i.as, float %i.bs, float %i.df)
  %i.dh = fmul float %i.bt, %i.dg                 ; 2 uses
  %i.di = fneg float %i.dd
  %i.dj = fsub float %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !18
  %i.dm = fadd float %i.dl, %i.dd
  store float %i.dm, ptr %i.dk, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !18
  %i.dp = fadd float %i.do, %i.dj
  store float %i.dp, ptr %i.dn, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !18
  %i.ds = fadd float %i.dh, %i.dr
  store float %i.ds, ptr %i.dq, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dt = fmul float %i.aj, 5.000000e-01
  %i.du = fmul float %i.dt, %i.bm
  %i.dv = fadd float %.071, %i.du                 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next to i32
  %i.dx = icmp sgt i32 %0, %i.dw
  br i1 %i.dx, label %.loopexit, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca [3 x float], align 8              ; 7 uses
  %i.f = alloca [3 x float], align 8              ; 7 uses
  %i.g = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ] ; 2 uses
  %.065 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.de, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 2 uses
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t ; 4 uses
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v ; 5 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull %i.g) ; 0 uses
  %i.y = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.w, ptr noundef %i.u, ptr noundef nonnull %i.e) ; 0 uses
  %i.z = sext i32 %i.s to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %3, i64 %i.z
  %i.ab = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.aa, ptr noundef %i.w, ptr noundef nonnull %i.f) ; 0 uses
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18 ; 3 uses
  %i.ag = fsub float %i.ad, %i.af
  %i.ah = load <2 x float>, ptr %i.u, align 4, !tbaa !18 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.w, align 4, !tbaa !18 ; 3 uses
  %i.aj = fsub <2 x float> %i.ah, %i.ai
  store <2 x float> %i.aj, ptr %i.g, align 8, !tbaa !18
  store float %i.ag, ptr %i.i, align 8, !tbaa !18
  %i.ak = fsub float %i.af, %i.ad
  %i.al = fsub <2 x float> %i.ai, %i.ah
  store <2 x float> %i.al, ptr %i.e, align 8, !tbaa !18
  store float %i.ak, ptr %i.j, align 8, !tbaa !18
  %i.am = sext i32 %i.s to i64                    ; 2 uses
  %i.an = getelementptr inbounds [12 x i8], ptr %3, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18
  %i.aq = fsub float %i.ap, %i.af
  %i.ar = load <2 x float>, ptr %i.an, align 4, !tbaa !18
  %i.as = fsub <2 x float> %i.ar, %i.ai
  store <2 x float> %i.as, ptr %i.f, align 8, !tbaa !18
  store float %i.aq, ptr %i.k, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61: ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.z, %bb.c ], [ %i.am, %bb.d ]
  call void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef %i.m, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.au = load double, ptr %i.b, align 8, !tbaa !33 ; 4 uses
  %i.av = load double, ptr %i.c, align 8, !tbaa !33 ; 3 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.ax = fneg double %i.aw                       ; 2 uses
  %i.ay = load float, ptr %i.j, align 8, !tbaa !18
  %i.az = fpext float %i.ay to double             ; 3 uses
  %i.ba = load float, ptr %i.k, align 8, !tbaa !18
  %i.bb = fpext float %i.ba to double             ; 3 uses
  %i.bc = fneg double %i.bb
  %i.bd = call double @llvm.fmuladd.f64(double %i.av, double %i.az, double %i.bc)
  %i.be = fmul double %i.au, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fneg double %i.az
  %i.bh = call double @llvm.fmuladd.f64(double %i.ax, double %i.bb, double %i.az)
  %i.bi = fmul double %i.au, %i.bh
  %i.bj = fptrunc double %i.bi to float
  %i.bk = load float, ptr %i.a, align 4, !tbaa !18
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.at ; 3 uses
  %i.bo = load <2 x float>, ptr %i.f, align 8, !tbaa !18
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 3 uses
  %i.bq = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  %i.bs = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bp, <2 x double> %i.br)
  %i.bv = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bu
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  %i.bz = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ca = fneg <2 x double> %i.bp
  %i.cb = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.br, <2 x double> %i.ca)
  %i.ce = fmul <2 x double> %i.bw, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = fadd <2 x float> %i.bz, %i.cf
  store <2 x float> %i.cg, ptr %i.bl, align 4, !tbaa !18
  %14 = fadd double %i.av, 1.000000e+00           ; 2 uses
  %15 = fadd double %i.aw, 1.000000e+00           ; 2 uses
  %i.ch = fmul double %14, %i.bg
  %i.ci = call double @llvm.fmuladd.f64(double %15, double %i.bb, double %i.ch)
  %i.cj = fmul double %i.au, %i.ci
  %i.ck = fptrunc double %i.cj to float
  %i.cl = fneg <2 x double> %i.br
  %16 = insertelement <2 x double> poison, double %14, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %17, %i.cl
  %18 = insertelement <2 x double> poison, double %15, i64 0
  %i.cn = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.bp, <2 x double> %i.cm)
  %i.cp = fmul <2 x double> %i.bw, %i.co
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float>
  %i.cr = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cs = fadd <2 x float> %i.cr, %i.cq
  store <2 x float> %i.cs, ptr %i.bm, align 4, !tbaa !18
  %i.ct = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cu = fadd <2 x float> %i.ct, %i.by
  store <2 x float> %i.cu, ptr %i.bn, align 4, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !18
  %i.cx = fadd float %i.cw, %i.bf
  store float %i.cx, ptr %i.cv, align 4, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !18
  %i.da = fadd float %i.cz, %i.ck
  store float %i.da, ptr %i.cy, align 4, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !18
  %i.dd = fadd float %i.dc, %i.bj
  store float %i.dd, ptr %i.db, align 4, !tbaa !18
  %i.de = fadd float %.065, %i.bk                 ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv.next to i32
  %i.dg = icmp sgt i32 %0, %i.df
  br i1 %i.dg, label %bb.b, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.de, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor0EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = fsub float 1.000000e+00, %7              ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 2 uses
  %.092 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dw, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [48 x i8], ptr %2, i64 %i.o ; 4 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = fmul float %7, %i.s
  %i.u = call float @llvm.fmuladd.f32(float %i.c, float %i.q, float %i.t) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = fmul float %7, %i.y
  %i.aa = call float @llvm.fmuladd.f32(float %i.c, float %i.w, float %i.z) ; 3 uses
  %i.ab = fsub float 1.000000e+00, %i.aa          ; 3 uses
  %i.ac = sext i32 %i.j to i64                    ; 2 uses
  %i.ad = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ae ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef nonnull %i.a) ; 0 uses
  %i.ah = sext i32 %i.n to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ai, ptr noundef %i.af, ptr noundef nonnull %i.b) ; 0 uses
  %i.ak = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.al = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre99 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre100 = load float, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 2 uses
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  store float %i.aq, ptr %i.e, align 8, !tbaa !18
  %i.ar = sext i32 %i.n to i64                    ; 2 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.at = load <2 x float>, ptr %i.ad, align 4, !tbaa !18
  %i.au = load <2 x float>, ptr %i.af, align 4, !tbaa !18 ; 2 uses
  %i.av = fsub <2 x float> %i.at, %i.au           ; 2 uses
  store <2 x float> %i.av, ptr %i.a, align 8, !tbaa !18
  %i.aw = load <2 x float>, ptr %i.as, align 4, !tbaa !18
  %i.ax = fsub <2 x float> %i.aw, %i.au           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fsub float %i.az, %i.ap                 ; 2 uses
  store <2 x float> %i.ax, ptr %i.b, align 8, !tbaa !18
  store float %i.ba, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.c, %bb.d
  %i.bb = phi float [ %.pre100, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %i.bc = phi float [ %.pre99, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bd = phi i64 [ %i.ah, %bb.c ], [ %i.ar, %bb.d ]
  %i.be = phi <2 x float> [ %i.ak, %bb.c ], [ %i.av, %bb.d ] ; 3 uses
  %i.bf = phi <2 x float> [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.bg = fneg float %i.aa                        ; 2 uses
  %i.bh = fmul float %i.u, %i.aa                  ; 2 uses
  %i.bi = fmul float %i.u, %i.ab                  ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ac ; 3 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bd ; 3 uses
  %i.bm = fneg <2 x float> %i.bf
  %i.bn = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bm
  %i.bq = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.be, <2 x float> %i.bp) ; 5 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 3 uses
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float 0.000000e+00)
  %i.bv = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bw, %i.bs           ; 2 uses
  %i.by = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bu)
  %i.ca = load <2 x float>, ptr %i.bj, align 4, !tbaa !18
  %i.cb = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.cc, %i.bs           ; 2 uses
  %i.ce = fadd <2 x float> %i.ca, %i.cd
  store <2 x float> %i.ce, ptr %i.bj, align 4, !tbaa !18
  %i.cf = fadd <2 x float> %i.cd, %i.bx
  %i.cg = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.ch = fsub <2 x float> %i.cg, %i.cf
  store <2 x float> %i.ch, ptr %i.bk, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.cj = fadd <2 x float> %i.bx, %i.ci
  store <2 x float> %i.cj, ptr %i.bl, align 4, !tbaa !18
  %i.ck = fneg float %i.bb
  %i.cl = fmul float %i.ab, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.bg, float %i.bc, float %i.cl) ; 5 uses
  %i.cn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.bz)
  %i.co = fmul float %i.bh, %i.cm                 ; 2 uses
  %i.cp = fmul float %i.bi, %i.cm                 ; 2 uses
  %i.cq = fadd float %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ct = fadd float %i.cs, %i.co
  store float %i.ct, ptr %i.cr, align 4, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !18
  %i.cw = fsub float %i.cv, %i.cq
  store float %i.cw, ptr %i.cu, align 4, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !18
  %i.cz = fadd float %i.cp, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !18
  %foldExtExtBinop = fsub <2 x float> %i.be, %i.bf
  %i.da = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop103 = fsub <2 x float> %i.be, %i.bf
  %i.db = fsub float %i.bc, %i.bb
  %i.dc = fpext float %i.u to double
  %i.dd = fmul double %i.dc, 5.000000e-01
  %i.de = fpext float %i.cn to double             ; 2 uses
  %i.df = fmul double %i.dd, %i.de
  %i.dg = fptrunc double %i.df to float
  %i.dh = fsub float %i.s, %i.q
  %i.di = fpext float %i.dh to double
  %i.dj = fmul double %i.di, 5.000000e-01
  %i.dk = fsub float %i.y, %i.w
  %i.dl = fmul float %i.u, %i.dk
  %foldExtExtBinop105 = fmul <2 x float> %foldExtExtBinop103, %i.bs
  %i.dm = extractelement <2 x float> %foldExtExtBinop105, i64 1
  %i.dn = call float @llvm.fmuladd.f32(float %i.bt, float %i.da, float %i.dm)
  %i.do = call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.db, float %i.dn)
  %i.dp = fmul float %i.dl, %i.do
  %i.dq = fpext float %i.dp to double
  %i.dr = call double @llvm.fmuladd.f64(double %i.dj, double %i.de, double %i.dq)
  %i.ds = load float, ptr %8, align 4, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.br = fmul float %i.bk, %i.bk                 ; 3 uses
  %i.bs = fmul float %i.bk, %i.be                 ; 6 uses
  %i.bt = fmul float %i.bl, %i.am                 ; 6 uses
  %i.bu = fmul float %i.br, %i.bf
  %i.bv = fmul float %i.br, %i.bg
  %i.bw = fmul float %i.bu, %i.au
  %i.bx = fmul float %i.bv, %i.au
  %i.by = call float @llvm.fmuladd.f32(float %i.az, float %i.bs, float %i.bw)
  %i.bz = call float @llvm.fmuladd.f32(float %i.ba, float %i.bs, float %i.bx)
  %i.ca = fmul float %i.bt, %i.by                 ; 2 uses
  %i.cb = fmul float %i.bt, %i.bz                 ; 2 uses
  %i.cc = fneg float %i.cb
  %i.cd = fmul float %i.bq, %i.az
  %i.ce = fmul float %i.bq, %i.ba
  %i.cf = fmul float %i.cd, %i.au
  %i.cg = fmul float %i.ce, %i.au
  %i.ch = call float @llvm.fmuladd.f32(float %i.bf, float %i.bs, float %i.cf)
  %i.ci = call float @llvm.fmuladd.f32(float %i.bg, float %i.bs, float %i.cg)
  %i.cj = fmul float %i.bt, %i.ch                 ; 2 uses
  %i.ck = fmul float %i.bt, %i.ci                 ; 2 uses
  %i.cl = fsub float %i.cc, %i.ck
  %i.cm = load <2 x float>, ptr %i.av, align 4, !tbaa !18
  %i.cn = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.ca, i64 1
  %i.cp = fadd <2 x float> %i.cm, %i.co
  store <2 x float> %i.cp, ptr %i.av, align 4, !tbaa !18
  %i.cq = load float, ptr %i.aw, align 4, !tbaa !18
  %i.cr = fadd float %i.cq, %i.cl
  store float %i.cr, ptr %i.aw, align 4, !tbaa !18
  %i.cs = fneg float %i.ca
  %i.ct = fsub float %i.cs, %i.cj
  %i.cu = load float, ptr %i.ay, align 4, !tbaa !18
  %i.cv = fadd float %i.cu, %i.ct
  store float %i.cv, ptr %i.ay, align 4, !tbaa !18
  %i.cw = load <2 x float>, ptr %i.ax, align 4, !tbaa !18
  %i.cx = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cj, i64 1
  %i.cz = fadd <2 x float> %i.cy, %i.cw
  store <2 x float> %i.cz, ptr %i.ax, align 4, !tbaa !18
  %i.da = fmul float %i.br, %i.as
  %i.db = fmul float %i.da, %i.au
  %i.dc = call float @llvm.fmuladd.f32(float %i.at, float %i.bs, float %i.db)
  %i.dd = fmul float %i.bt, %i.dc                 ; 2 uses
  %i.de = fmul float %i.bq, %i.at
  %i.df = fmul float %i.de, %i.au
  %i.dg = call float @llvm.fmuladd.f32(float %i.as, float %i.bs, float %i.df)
  %i.dh = fmul float %i.bt, %i.dg                 ; 2 uses
  %i.di = fneg float %i.dd
  %i.dj = fsub float %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !18
  %i.dm = fadd float %i.dl, %i.dd
  store float %i.dm, ptr %i.dk, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !18
  %i.dp = fadd float %i.do, %i.dj
  store float %i.dp, ptr %i.dn, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !18
  %i.ds = fadd float %i.dh, %i.dr
  store float %i.ds, ptr %i.dq, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dt = fmul float %i.aj, 5.000000e-01
  %i.du = fmul float %i.dt, %i.bm
  %i.dv = fadd float %.071, %i.du                 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next to i32
  %i.dx = icmp sgt i32 %0, %i.dw
  br i1 %i.dx, label %.loopexit, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca [3 x float], align 8              ; 7 uses
  %i.f = alloca [3 x float], align 8              ; 7 uses
  %i.g = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ] ; 2 uses
  %.065 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.de, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 2 uses
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t ; 4 uses
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v ; 5 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull %i.g) ; 0 uses
  %i.y = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.w, ptr noundef %i.u, ptr noundef nonnull %i.e) ; 0 uses
  %i.z = sext i32 %i.s to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %3, i64 %i.z
  %i.ab = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.aa, ptr noundef %i.w, ptr noundef nonnull %i.f) ; 0 uses
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18 ; 3 uses
  %i.ag = fsub float %i.ad, %i.af
  %i.ah = load <2 x float>, ptr %i.u, align 4, !tbaa !18 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.w, align 4, !tbaa !18 ; 3 uses
  %i.aj = fsub <2 x float> %i.ah, %i.ai
  store <2 x float> %i.aj, ptr %i.g, align 8, !tbaa !18
  store float %i.ag, ptr %i.i, align 8, !tbaa !18
  %i.ak = fsub float %i.af, %i.ad
  %i.al = fsub <2 x float> %i.ai, %i.ah
  store <2 x float> %i.al, ptr %i.e, align 8, !tbaa !18
  store float %i.ak, ptr %i.j, align 8, !tbaa !18
  %i.am = sext i32 %i.s to i64                    ; 2 uses
  %i.an = getelementptr inbounds [12 x i8], ptr %3, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18
  %i.aq = fsub float %i.ap, %i.af
  %i.ar = load <2 x float>, ptr %i.an, align 4, !tbaa !18
  %i.as = fsub <2 x float> %i.ar, %i.ai
  store <2 x float> %i.as, ptr %i.f, align 8, !tbaa !18
  store float %i.aq, ptr %i.k, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61: ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.z, %bb.c ], [ %i.am, %bb.d ]
  call void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef %i.m, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.au = load double, ptr %i.b, align 8, !tbaa !33 ; 4 uses
  %i.av = load double, ptr %i.c, align 8, !tbaa !33 ; 3 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.ax = fneg double %i.aw                       ; 2 uses
  %i.ay = load float, ptr %i.j, align 8, !tbaa !18
  %i.az = fpext float %i.ay to double             ; 3 uses
  %i.ba = load float, ptr %i.k, align 8, !tbaa !18
  %i.bb = fpext float %i.ba to double             ; 3 uses
  %i.bc = fneg double %i.bb
  %i.bd = call double @llvm.fmuladd.f64(double %i.av, double %i.az, double %i.bc)
  %i.be = fmul double %i.au, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fneg double %i.az
  %i.bh = call double @llvm.fmuladd.f64(double %i.ax, double %i.bb, double %i.az)
  %i.bi = fmul double %i.au, %i.bh
  %i.bj = fptrunc double %i.bi to float
  %i.bk = load float, ptr %i.a, align 4, !tbaa !18
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.at ; 3 uses
  %i.bo = load <2 x float>, ptr %i.f, align 8, !tbaa !18
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 3 uses
  %i.bq = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  %i.bs = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bp, <2 x double> %i.br)
  %i.bv = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bu
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  %i.bz = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ca = fneg <2 x double> %i.bp
  %i.cb = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.br, <2 x double> %i.ca)
  %i.ce = fmul <2 x double> %i.bw, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = fadd <2 x float> %i.bz, %i.cf
  store <2 x float> %i.cg, ptr %i.bl, align 4, !tbaa !18
  %14 = fadd double %i.av, 1.000000e+00           ; 2 uses
  %15 = fadd double %i.aw, 1.000000e+00           ; 2 uses
  %i.ch = fmul double %14, %i.bg
  %i.ci = call double @llvm.fmuladd.f64(double %15, double %i.bb, double %i.ch)
  %i.cj = fmul double %i.au, %i.ci
  %i.ck = fptrunc double %i.cj to float
  %i.cl = fneg <2 x double> %i.br
  %16 = insertelement <2 x double> poison, double %14, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %17, %i.cl
  %18 = insertelement <2 x double> poison, double %15, i64 0
  %i.cn = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.bp, <2 x double> %i.cm)
  %i.cp = fmul <2 x double> %i.bw, %i.co
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float>
  %i.cr = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cs = fadd <2 x float> %i.cr, %i.cq
  store <2 x float> %i.cs, ptr %i.bm, align 4, !tbaa !18
  %i.ct = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cu = fadd <2 x float> %i.ct, %i.by
  store <2 x float> %i.cu, ptr %i.bn, align 4, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !18
  %i.cx = fadd float %i.cw, %i.bf
  store float %i.cx, ptr %i.cv, align 4, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !18
  %i.da = fadd float %i.cz, %i.ck
  store float %i.da, ptr %i.cy, align 4, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !18
  %i.dd = fadd float %i.dc, %i.bj
  store float %i.dd, ptr %i.db, align 4, !tbaa !18
  %i.de = fadd float %.065, %i.bk                 ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv.next to i32
  %i.dg = icmp sgt i32 %0, %i.df
  br i1 %i.dg, label %bb.b, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.de, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = fsub float 1.000000e+00, %7              ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 2 uses
  %.092 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dw, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [48 x i8], ptr %2, i64 %i.o ; 4 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = fmul float %7, %i.s
  %i.u = call float @llvm.fmuladd.f32(float %i.c, float %i.q, float %i.t) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = fmul float %7, %i.y
  %i.aa = call float @llvm.fmuladd.f32(float %i.c, float %i.w, float %i.z) ; 3 uses
  %i.ab = fsub float 1.000000e+00, %i.aa          ; 3 uses
  %i.ac = sext i32 %i.j to i64                    ; 2 uses
  %i.ad = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ae ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef nonnull %i.a) ; 0 uses
  %i.ah = sext i32 %i.n to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ai, ptr noundef %i.af, ptr noundef nonnull %i.b) ; 0 uses
  %i.ak = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.al = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre99 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre100 = load float, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 2 uses
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  store float %i.aq, ptr %i.e, align 8, !tbaa !18
  %i.ar = sext i32 %i.n to i64                    ; 2 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.at = load <2 x float>, ptr %i.ad, align 4, !tbaa !18
  %i.au = load <2 x float>, ptr %i.af, align 4, !tbaa !18 ; 2 uses
  %i.av = fsub <2 x float> %i.at, %i.au           ; 2 uses
  store <2 x float> %i.av, ptr %i.a, align 8, !tbaa !18
  %i.aw = load <2 x float>, ptr %i.as, align 4, !tbaa !18
  %i.ax = fsub <2 x float> %i.aw, %i.au           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fsub float %i.az, %i.ap                 ; 2 uses
  store <2 x float> %i.ax, ptr %i.b, align 8, !tbaa !18
  store float %i.ba, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.c, %bb.d
  %i.bb = phi float [ %.pre100, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %i.bc = phi float [ %.pre99, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bd = phi i64 [ %i.ah, %bb.c ], [ %i.ar, %bb.d ]
  %i.be = phi <2 x float> [ %i.ak, %bb.c ], [ %i.av, %bb.d ] ; 3 uses
  %i.bf = phi <2 x float> [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.bg = fneg float %i.aa                        ; 2 uses
  %i.bh = fmul float %i.u, %i.aa                  ; 2 uses
  %i.bi = fmul float %i.u, %i.ab                  ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ac ; 3 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bd ; 3 uses
  %i.bm = fneg <2 x float> %i.bf
  %i.bn = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bm
  %i.bq = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.be, <2 x float> %i.bp) ; 5 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 3 uses
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float 0.000000e+00)
  %i.bv = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bw, %i.bs           ; 2 uses
  %i.by = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bu)
  %i.ca = load <2 x float>, ptr %i.bj, align 4, !tbaa !18
  %i.cb = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.cc, %i.bs           ; 2 uses
  %i.ce = fadd <2 x float> %i.ca, %i.cd
  store <2 x float> %i.ce, ptr %i.bj, align 4, !tbaa !18
  %i.cf = fadd <2 x float> %i.cd, %i.bx
  %i.cg = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.ch = fsub <2 x float> %i.cg, %i.cf
  store <2 x float> %i.ch, ptr %i.bk, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.cj = fadd <2 x float> %i.bx, %i.ci
  store <2 x float> %i.cj, ptr %i.bl, align 4, !tbaa !18
  %i.ck = fneg float %i.bb
  %i.cl = fmul float %i.ab, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.bg, float %i.bc, float %i.cl) ; 5 uses
  %i.cn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.bz)
  %i.co = fmul float %i.bh, %i.cm                 ; 2 uses
  %i.cp = fmul float %i.bi, %i.cm                 ; 2 uses
  %i.cq = fadd float %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ct = fadd float %i.cs, %i.co
  store float %i.ct, ptr %i.cr, align 4, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !18
  %i.cw = fsub float %i.cv, %i.cq
  store float %i.cw, ptr %i.cu, align 4, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !18
  %i.cz = fadd float %i.cp, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !18
  %foldExtExtBinop = fsub <2 x float> %i.be, %i.bf
  %i.da = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop103 = fsub <2 x float> %i.be, %i.bf
  %i.db = fsub float %i.bc, %i.bb
  %i.dc = fpext float %i.u to double
  %i.dd = fmul double %i.dc, 5.000000e-01
  %i.de = fpext float %i.cn to double             ; 2 uses
  %i.df = fmul double %i.dd, %i.de
  %i.dg = fptrunc double %i.df to float
  %i.dh = fsub float %i.s, %i.q
  %i.di = fpext float %i.dh to double
  %i.dj = fmul double %i.di, 5.000000e-01
  %i.dk = fsub float %i.y, %i.w
  %i.dl = fmul float %i.u, %i.dk
  %foldExtExtBinop105 = fmul <2 x float> %foldExtExtBinop103, %i.bs
  %i.dm = extractelement <2 x float> %foldExtExtBinop105, i64 1
  %i.dn = call float @llvm.fmuladd.f32(float %i.bt, float %i.da, float %i.dm)
  %i.do = call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.db, float %i.dn)
  %i.dp = fmul float %i.dl, %i.do
  %i.dq = fpext float %i.dp to double
  %i.dr = call double @llvm.fmuladd.f64(double %i.dj, double %i.de, double %i.dq)
  %i.ds = load float, ptr %8, align 4, !tbaa !18
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.da = fsub float %i.cz, %i.cq                 ; 2 uses
  %i.db = load float, ptr %i.bb, align 4, !tbaa !18
  %i.dc = fadd float %i.da, %i.db
  store float %i.dc, ptr %i.bb, align 4, !tbaa !18
  %i.dd = load <2 x float>, ptr %i.ba, align 4, !tbaa !18
  %i.de = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.cq, i64 1 ; 2 uses
  %i.dg = fadd <2 x float> %i.df, %i.dd
  store <2 x float> %i.dg, ptr %i.ba, align 4, !tbaa !18
  %i.dh = fmul float %i.by, %i.av
  %i.di = fmul float %i.dh, %i.ax
  %i.dj = call float @llvm.fmuladd.f32(float %i.aw, float %i.bz, float %i.di)
  %i.dk = fmul float %i.ca, %i.dj                 ; 3 uses
  %i.dl = fmul float %i.bx, %i.aw
  %i.dm = fmul float %i.dl, %i.ax
  %i.dn = call float @llvm.fmuladd.f32(float %i.av, float %i.bz, float %i.dm)
  %i.do = fmul float %i.ca, %i.dn                 ; 3 uses
  %i.dp = fneg float %i.dk
  %i.dq = fsub float %i.dp, %i.do                 ; 2 uses
  %i.dr = load float, ptr %i.bc, align 4, !tbaa !18
  %i.ds = fadd float %i.dr, %i.dk
  store float %i.ds, ptr %i.bc, align 4, !tbaa !18
  %i.dt = load float, ptr %i.bd, align 4, !tbaa !18
  %i.du = fadd float %i.dq, %i.dt
  store float %i.du, ptr %i.bd, align 4, !tbaa !18
  %i.dv = load float, ptr %i.be, align 4, !tbaa !18
  %i.dw = fadd float %i.do, %i.dv
  store float %i.dw, ptr %i.be, align 4, !tbaa !18
  %i.dx = fmul float %i.bf, %i.bt
  %i.dy = fadd float %.074, %i.dx                 ; 2 uses
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !16
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ea ; 3 uses
  %i.ec = load <2 x float>, ptr %i.eb, align 4, !tbaa !18
  %i.ed = fadd <2 x float> %i.ec, %i.cv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !18
  %i.eg = fadd float %i.ef, %i.dk
  store <2 x float> %i.ed, ptr %i.eb, align 4, !tbaa !18
  store float %i.eg, ptr %i.ee, align 4, !tbaa !18
  %i.eh = load float, ptr %i.k, align 4, !tbaa !18
  %i.ei = fadd float %i.eh, %i.cs
  %i.ej = load float, ptr %i.l, align 4, !tbaa !18
  %i.ek = fadd float %i.ej, %i.da
  %i.el = load float, ptr %i.m, align 4, !tbaa !18
  %i.em = fadd float %i.el, %i.dq
  store float %i.ei, ptr %i.k, align 4, !tbaa !18
  store float %i.ek, ptr %i.l, align 4, !tbaa !18
  store float %i.em, ptr %i.m, align 4, !tbaa !18
  %i.en = load i32, ptr %i.b, align 4, !tbaa !16
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [12 x i8], ptr %5, i64 %i.eo ; 3 uses
  %i.eq = load <2 x float>, ptr %i.ep, align 4, !tbaa !18
  %i.er = fadd <2 x float> %i.eq, %i.df
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !18
  %i.eu = fadd float %i.et, %i.do
  store <2 x float> %i.er, ptr %i.ep, align 4, !tbaa !18
  store float %i.eu, ptr %i.es, align 4, !tbaa !18
  %i.ev = trunc nuw i64 %indvars.iv.next to i32
  %i.ew = icmp sgt i32 %0, %i.ev
  br i1 %i.ew, label %bb.b, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dy, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca [3 x float], align 8              ; 7 uses
  %i.f = alloca [3 x float], align 8              ; 7 uses
  %i.g = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66 ] ; 2 uses
  %.076 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.di, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66 ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16   ; 2 uses
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v ; 4 uses
  %i.x = sext i32 %i.s to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x ; 5 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.w, ptr noundef %i.y, ptr noundef nonnull %i.g)
  %i.aa = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.y, ptr noundef %i.w, ptr noundef nonnull %i.e) ; 0 uses
  %i.ab = sext i32 %i.u to i64                    ; 2 uses
  %i.ac = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ab
  %i.ad = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ac, ptr noundef %i.y, ptr noundef nonnull %i.f)
  %i.ae = sext i32 %i.z to i64
  %i.af = sext i32 %i.ad to i64
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66

bb.d:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !18 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !18 ; 3 uses
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = load <2 x float>, ptr %i.w, align 4, !tbaa !18 ; 2 uses
  %i.am = load <2 x float>, ptr %i.y, align 4, !tbaa !18 ; 3 uses
  %i.an = fsub <2 x float> %i.al, %i.am
  store <2 x float> %i.an, ptr %i.g, align 8, !tbaa !18
  store float %i.ak, ptr %i.i, align 8, !tbaa !18
  %i.ao = fsub float %i.aj, %i.ah
  %i.ap = fsub <2 x float> %i.am, %i.al
  store <2 x float> %i.ap, ptr %i.e, align 8, !tbaa !18
  store float %i.ao, ptr %i.j, align 8, !tbaa !18
  %i.aq = sext i32 %i.u to i64                    ; 2 uses
  %i.ar = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !18
  %i.au = fsub float %i.at, %i.aj
  %i.av = load <2 x float>, ptr %i.ar, align 4, !tbaa !18
  %i.aw = fsub <2 x float> %i.av, %i.am
  store <2 x float> %i.aw, ptr %i.f, align 8, !tbaa !18
  store float %i.au, ptr %i.k, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66: ; preds = %bb.c, %bb.d
  %i.ax = phi i64 [ %i.ab, %bb.c ], [ %i.aq, %bb.d ]
  %.0.i6871 = phi i64 [ %i.ae, %bb.c ], [ 22, %bb.d ]
  %.0.i65 = phi i64 [ %i.af, %bb.c ], [ 22, %bb.d ]
  call void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef %i.o, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.ay = load double, ptr %i.b, align 8, !tbaa !33 ; 4 uses
  %i.az = load double, ptr %i.c, align 8, !tbaa !33 ; 3 uses
  %i.ba = load double, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.bb = fneg double %i.ba                       ; 2 uses
  %i.bc = load float, ptr %i.j, align 8, !tbaa !18
  %i.bd = fpext float %i.bc to double             ; 3 uses
  %i.be = load float, ptr %i.k, align 8, !tbaa !18
  %i.bf = fpext float %i.be to double             ; 3 uses
  %i.bg = fneg double %i.bf
  %i.bh = call double @llvm.fmuladd.f64(double %i.az, double %i.bd, double %i.bg)
  %i.bi = fmul double %i.ay, %i.bh
  %i.bj = fptrunc double %i.bi to float           ; 2 uses
  %i.bk = fneg double %i.bd
  %i.bl = call double @llvm.fmuladd.f64(double %i.bb, double %i.bf, double %i.bd)
  %i.bm = fmul double %i.ay, %i.bl
  %i.bn = fptrunc double %i.bm to float           ; 2 uses
  %i.bo = load float, ptr %i.a, align 4, !tbaa !18
  %i.bp = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bq = getelementptr inbounds [16 x i8], ptr %4, i64 %i.x ; 3 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ax ; 3 uses
  %i.bs = load <2 x float>, ptr %i.f, align 8, !tbaa !18
  %i.bt = fpext <2 x float> %i.bs to <2 x double> ; 3 uses
  %i.bu = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.bv = fpext <2 x float> %i.bu to <2 x double> ; 3 uses
  %i.bw = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bt, <2 x double> %i.bv)
  %i.bz = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cb = fmul <2 x double> %i.ca, %i.by
  %i.cc = fptrunc <2 x double> %i.cb to <2 x float> ; 2 uses
  %i.cd = load <2 x float>, ptr %i.bp, align 4, !tbaa !18
  %i.ce = fneg <2 x double> %i.bt
  %i.cf = insertelement <2 x double> poison, double %i.az, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bv, <2 x double> %i.ce)
  %i.ci = fmul <2 x double> %i.ca, %i.ch
  %i.cj = fptrunc <2 x double> %i.ci to <2 x float> ; 2 uses
  %i.ck = fadd <2 x float> %i.cd, %i.cj
  store <2 x float> %i.ck, ptr %i.bp, align 4, !tbaa !18
  %14 = fadd double %i.az, 1.000000e+00           ; 2 uses
  %15 = fadd double %i.ba, 1.000000e+00           ; 2 uses
  %i.cl = fmul double %14, %i.bk
  %i.cm = call double @llvm.fmuladd.f64(double %15, double %i.bf, double %i.cl)
  %i.cn = fmul double %i.ay, %i.cm
  %i.co = fptrunc double %i.cn to float           ; 2 uses
  %i.cp = fneg <2 x double> %i.bv
  %16 = insertelement <2 x double> poison, double %14, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %17, %i.cp
  %18 = insertelement <2 x double> poison, double %15, i64 0
  %i.cr = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.bt, <2 x double> %i.cq)
  %i.ct = fmul <2 x double> %i.ca, %i.cs
  %i.cu = fptrunc <2 x double> %i.ct to <2 x float> ; 2 uses
  %i.cv = load <2 x float>, ptr %i.bq, align 4, !tbaa !18
  %i.cw = fadd <2 x float> %i.cv, %i.cu
  store <2 x float> %i.cw, ptr %i.bq, align 4, !tbaa !18
  %i.cx = load <2 x float>, ptr %i.br, align 4, !tbaa !18
  %i.cy = fadd <2 x float> %i.cx, %i.cc
  store <2 x float> %i.cy, ptr %i.br, align 4, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !18
  %i.db = fadd float %i.da, %i.bj
  store float %i.db, ptr %i.cz, align 4, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !18
  %i.de = fadd float %i.dd, %i.co
  store float %i.de, ptr %i.dc, align 4, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !18
  %i.dh = fadd float %i.dg, %i.bn
  store float %i.dh, ptr %i.df, align 4, !tbaa !18
  %i.di = fadd float %.076, %i.bo                 ; 2 uses
  %i.dj = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i6871 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !18
  %i.dm = fadd float %i.dl, %i.bj
  %i.dn = load <2 x float>, ptr %i.dj, align 4, !tbaa !18
  %i.do = fadd <2 x float> %i.dn, %i.cj
  store <2 x float> %i.do, ptr %i.dj, align 4, !tbaa !18
  store float %i.dm, ptr %i.dk, align 4, !tbaa !18
  %i.dp = load float, ptr %i.m, align 4, !tbaa !18
  %i.dq = fadd float %i.dp, %i.co
  %i.dr = load <2 x float>, ptr %i.l, align 4, !tbaa !18
  %i.ds = fadd <2 x float> %i.dr, %i.cu
  store <2 x float> %i.ds, ptr %i.l, align 4, !tbaa !18
  store float %i.dq, ptr %i.m, align 4, !tbaa !18
  %i.dt = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i65 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !18
  %i.dw = fadd float %i.dv, %i.bn
  %i.dx = load <2 x float>, ptr %i.dt, align 4, !tbaa !18
  %i.dy = fadd <2 x float> %i.dx, %i.cc
  store <2 x float> %i.dy, ptr %i.dt, align 4, !tbaa !18
  store float %i.dw, ptr %i.du, align 4, !tbaa !18
  %i.dz = trunc nuw i64 %indvars.iv.next to i32
  %i.ea = icmp sgt i32 %0, %i.dz
  br i1 %i.ea, label %bb.b, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.di, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = fsub float 1.000000e+00, %7              ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93 ] ; 2 uses
  %.0100 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ea, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds [48 x i8], ptr %2, i64 %i.q ; 4 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !15 ; 2 uses
  %i.v = fmul float %7, %i.u
  %i.w = call float @llvm.fmuladd.f32(float %i.c, float %i.s, float %i.v) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15 ; 2 uses
  %i.ab = fmul float %7, %i.aa
  %i.ac = call float @llvm.fmuladd.f32(float %i.c, float %i.y, float %i.ab) ; 3 uses
  %i.ad = fsub float 1.000000e+00, %i.ac          ; 3 uses
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ae ; 3 uses
  %i.ag = sext i32 %i.n to i64                    ; 2 uses
  %i.ah = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ag ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef nonnull %i.a)
  %i.aj = sext i32 %i.p to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aj
  %i.al = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ak, ptr noundef %i.ah, ptr noundef nonnull %i.b)
  %i.am = sext i32 %i.ai to i64
  %i.an = sext i32 %i.al to i64
  %i.ao = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.ap = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre116 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre117 = load float, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !18 ; 2 uses
  %i.au = fsub float %i.ar, %i.at                 ; 2 uses
  store float %i.au, ptr %i.e, align 8, !tbaa !18
  %i.av = sext i32 %i.p to i64                    ; 2 uses
  %i.aw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.av ; 2 uses
  %i.ax = load <2 x float>, ptr %i.af, align 4, !tbaa !18
  %i.ay = load <2 x float>, ptr %i.ah, align 4, !tbaa !18 ; 2 uses
  %i.az = fsub <2 x float> %i.ax, %i.ay           ; 2 uses
  store <2 x float> %i.az, ptr %i.a, align 8, !tbaa !18
  %i.ba = load <2 x float>, ptr %i.aw, align 4, !tbaa !18
  %i.bb = fsub <2 x float> %i.ba, %i.ay           ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !18
  %i.be = fsub float %i.bd, %i.at                 ; 2 uses
  store <2 x float> %i.bb, ptr %i.b, align 8, !tbaa !18
  store float %i.be, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit93: ; preds = %bb.c, %bb.d
  %i.bf = phi float [ %.pre117, %bb.c ], [ %i.be, %bb.d ] ; 2 uses
  %i.bg = phi float [ %.pre116, %bb.c ], [ %i.au, %bb.d ] ; 2 uses
  %i.bh = phi i64 [ %i.aj, %bb.c ], [ %i.av, %bb.d ]
  %.0.i95 = phi i64 [ %i.am, %bb.c ], [ 22, %bb.d ]
  %.0.i92 = phi i64 [ %i.an, %bb.c ], [ 22, %bb.d ]
  %i.bi = phi <2 x float> [ %i.ao, %bb.c ], [ %i.az, %bb.d ] ; 3 uses
  %i.bj = phi <2 x float> [ %i.ap, %bb.c ], [ %i.bb, %bb.d ] ; 3 uses
  %i.bk = fneg float %i.ac                        ; 2 uses
  %i.bl = fmul float %i.w, %i.ac                  ; 2 uses
  %i.bm = fmul float %i.w, %i.ad                  ; 2 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ag ; 3 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bh ; 3 uses
  %i.bq = fneg <2 x float> %i.bj
  %i.br = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bs, %i.bq
  %i.bu = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bi, <2 x float> %i.bt) ; 5 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0 ; 3 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float 0.000000e+00)
  %i.bz = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.bw           ; 3 uses
  %i.cc = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.cd = call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.by)
  %i.ce = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cf = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.cg, %i.bw           ; 3 uses
  %i.ci = fadd <2 x float> %i.ch, %i.ce
  store <2 x float> %i.ci, ptr %i.bn, align 4, !tbaa !18
  %i.cj = fadd <2 x float> %i.ch, %i.cb           ; 2 uses
  %i.ck = load <2 x float>, ptr %i.bo, align 4, !tbaa !18
  %i.cl = fsub <2 x float> %i.ck, %i.cj
  store <2 x float> %i.cl, ptr %i.bo, align 4, !tbaa !18
  %i.cm = load <2 x float>, ptr %i.bp, align 4, !tbaa !18
  %i.cn = fadd <2 x float> %i.cb, %i.cm
  store <2 x float> %i.cn, ptr %i.bp, align 4, !tbaa !18
  %i.co = fneg float %i.bf
  %i.cp = fmul float %i.ad, %i.co
  %i.cq = call float @llvm.fmuladd.f32(float %i.bk, float %i.bg, float %i.cp) ; 5 uses
  %i.cr = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cd)
  %i.cs = fmul float %i.bl, %i.cq                 ; 3 uses
  %i.ct = fmul float %i.bm, %i.cq                 ; 3 uses
  %i.cu = fadd float %i.cs, %i.ct                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !18
  %i.cx = fadd float %i.cs, %i.cw
  store float %i.cx, ptr %i.cv, align 4, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !18
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.br = fmul float %i.bk, %i.bk                 ; 3 uses
  %i.bs = fmul float %i.bk, %i.be                 ; 6 uses
  %i.bt = fmul float %i.bl, %i.am                 ; 6 uses
  %i.bu = fmul float %i.br, %i.bf
  %i.bv = fmul float %i.br, %i.bg
  %i.bw = fmul float %i.bu, %i.au
  %i.bx = fmul float %i.bv, %i.au
  %i.by = call float @llvm.fmuladd.f32(float %i.az, float %i.bs, float %i.bw)
  %i.bz = call float @llvm.fmuladd.f32(float %i.ba, float %i.bs, float %i.bx)
  %i.ca = fmul float %i.bt, %i.by                 ; 2 uses
  %i.cb = fmul float %i.bt, %i.bz                 ; 2 uses
  %i.cc = fneg float %i.cb
  %i.cd = fmul float %i.bq, %i.az
  %i.ce = fmul float %i.bq, %i.ba
  %i.cf = fmul float %i.cd, %i.au
  %i.cg = fmul float %i.ce, %i.au
  %i.ch = call float @llvm.fmuladd.f32(float %i.bf, float %i.bs, float %i.cf)
  %i.ci = call float @llvm.fmuladd.f32(float %i.bg, float %i.bs, float %i.cg)
  %i.cj = fmul float %i.bt, %i.ch                 ; 2 uses
  %i.ck = fmul float %i.bt, %i.ci                 ; 2 uses
  %i.cl = fsub float %i.cc, %i.ck
  %i.cm = load <2 x float>, ptr %i.av, align 4, !tbaa !18
  %i.cn = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.ca, i64 1
  %i.cp = fadd <2 x float> %i.cm, %i.co
  store <2 x float> %i.cp, ptr %i.av, align 4, !tbaa !18
  %i.cq = load float, ptr %i.aw, align 4, !tbaa !18
  %i.cr = fadd float %i.cq, %i.cl
  store float %i.cr, ptr %i.aw, align 4, !tbaa !18
  %i.cs = fneg float %i.ca
  %i.ct = fsub float %i.cs, %i.cj
  %i.cu = load float, ptr %i.ay, align 4, !tbaa !18
  %i.cv = fadd float %i.cu, %i.ct
  store float %i.cv, ptr %i.ay, align 4, !tbaa !18
  %i.cw = load <2 x float>, ptr %i.ax, align 4, !tbaa !18
  %i.cx = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cj, i64 1
  %i.cz = fadd <2 x float> %i.cy, %i.cw
  store <2 x float> %i.cz, ptr %i.ax, align 4, !tbaa !18
  %i.da = fmul float %i.br, %i.as
  %i.db = fmul float %i.da, %i.au
  %i.dc = call float @llvm.fmuladd.f32(float %i.at, float %i.bs, float %i.db)
  %i.dd = fmul float %i.bt, %i.dc                 ; 2 uses
  %i.de = fmul float %i.bq, %i.at
  %i.df = fmul float %i.de, %i.au
  %i.dg = call float @llvm.fmuladd.f32(float %i.as, float %i.bs, float %i.df)
  %i.dh = fmul float %i.bt, %i.dg                 ; 2 uses
  %i.di = fneg float %i.dd
  %i.dj = fsub float %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !18
  %i.dm = fadd float %i.dl, %i.dd
  store float %i.dm, ptr %i.dk, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !18
  %i.dp = fadd float %i.do, %i.dj
  store float %i.dp, ptr %i.dn, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !18
  %i.ds = fadd float %i.dh, %i.dr
  store float %i.ds, ptr %i.dq, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dt = fmul float %i.aj, 5.000000e-01
  %i.du = fmul float %i.dt, %i.bm
  %i.dv = fadd float %.071, %i.du                 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next to i32
  %i.dx = icmp sgt i32 %0, %i.dw
  br i1 %i.dx, label %.loopexit, label %._crit_edge, !llvm.loop !142

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.dv, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_111restranglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca [3 x float], align 8              ; 7 uses
  %i.f = alloca [3 x float], align 8              ; 7 uses
  %i.g = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ] ; 2 uses
  %.065 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.de, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 2 uses
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t ; 4 uses
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v ; 5 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull %i.g) ; 0 uses
  %i.y = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.w, ptr noundef %i.u, ptr noundef nonnull %i.e) ; 0 uses
  %i.z = sext i32 %i.s to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %3, i64 %i.z
  %i.ab = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.aa, ptr noundef %i.w, ptr noundef nonnull %i.f) ; 0 uses
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18 ; 3 uses
  %i.ag = fsub float %i.ad, %i.af
  %i.ah = load <2 x float>, ptr %i.u, align 4, !tbaa !18 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.w, align 4, !tbaa !18 ; 3 uses
  %i.aj = fsub <2 x float> %i.ah, %i.ai
  store <2 x float> %i.aj, ptr %i.g, align 8, !tbaa !18
  store float %i.ag, ptr %i.i, align 8, !tbaa !18
  %i.ak = fsub float %i.af, %i.ad
  %i.al = fsub <2 x float> %i.ai, %i.ah
  store <2 x float> %i.al, ptr %i.e, align 8, !tbaa !18
  store float %i.ak, ptr %i.j, align 8, !tbaa !18
  %i.am = sext i32 %i.s to i64                    ; 2 uses
  %i.an = getelementptr inbounds [12 x i8], ptr %3, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18
  %i.aq = fsub float %i.ap, %i.af
  %i.ar = load <2 x float>, ptr %i.an, align 4, !tbaa !18
  %i.as = fsub <2 x float> %i.ar, %i.ai
  store <2 x float> %i.as, ptr %i.f, align 8, !tbaa !18
  store float %i.aq, ptr %i.k, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61: ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.z, %bb.c ], [ %i.am, %bb.d ]
  call void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef %i.m, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.au = load double, ptr %i.b, align 8, !tbaa !33 ; 4 uses
  %i.av = load double, ptr %i.c, align 8, !tbaa !33 ; 3 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.ax = fneg double %i.aw                       ; 2 uses
  %i.ay = load float, ptr %i.j, align 8, !tbaa !18
  %i.az = fpext float %i.ay to double             ; 3 uses
  %i.ba = load float, ptr %i.k, align 8, !tbaa !18
  %i.bb = fpext float %i.ba to double             ; 3 uses
  %i.bc = fneg double %i.bb
  %i.bd = call double @llvm.fmuladd.f64(double %i.av, double %i.az, double %i.bc)
  %i.be = fmul double %i.au, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fneg double %i.az
  %i.bh = call double @llvm.fmuladd.f64(double %i.ax, double %i.bb, double %i.az)
  %i.bi = fmul double %i.au, %i.bh
  %i.bj = fptrunc double %i.bi to float
  %i.bk = load float, ptr %i.a, align 4, !tbaa !18
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %4, i64 %i.at ; 3 uses
  %i.bo = load <2 x float>, ptr %i.f, align 8, !tbaa !18
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 3 uses
  %i.bq = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  %i.bs = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bp, <2 x double> %i.br)
  %i.bv = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bu
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  %i.bz = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.ca = fneg <2 x double> %i.bp
  %i.cb = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.br, <2 x double> %i.ca)
  %i.ce = fmul <2 x double> %i.bw, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = fadd <2 x float> %i.bz, %i.cf
  store <2 x float> %i.cg, ptr %i.bl, align 4, !tbaa !18
  %14 = fadd double %i.av, 1.000000e+00           ; 2 uses
  %15 = fadd double %i.aw, 1.000000e+00           ; 2 uses
  %i.ch = fmul double %14, %i.bg
  %i.ci = call double @llvm.fmuladd.f64(double %15, double %i.bb, double %i.ch)
  %i.cj = fmul double %i.au, %i.ci
  %i.ck = fptrunc double %i.cj to float
  %i.cl = fneg <2 x double> %i.br
  %16 = insertelement <2 x double> poison, double %14, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %17, %i.cl
  %18 = insertelement <2 x double> poison, double %15, i64 0
  %i.cn = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.bp, <2 x double> %i.cm)
  %i.cp = fmul <2 x double> %i.bw, %i.co
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float>
  %i.cr = load <2 x float>, ptr %i.bm, align 4, !tbaa !18
  %i.cs = fadd <2 x float> %i.cr, %i.cq
  store <2 x float> %i.cs, ptr %i.bm, align 4, !tbaa !18
  %i.ct = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.cu = fadd <2 x float> %i.ct, %i.by
  store <2 x float> %i.cu, ptr %i.bn, align 4, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !18
  %i.cx = fadd float %i.cw, %i.bf
  store float %i.cx, ptr %i.cv, align 4, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !18
  %i.da = fadd float %i.cz, %i.ck
  store float %i.da, ptr %i.cy, align 4, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !18
  %i.dd = fadd float %i.dc, %i.bj
  store float %i.dd, ptr %i.db, align 4, !tbaa !18
  %i.de = fadd float %.065, %i.bk                 ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv.next to i32
  %i.dg = icmp sgt i32 %0, %i.df
  br i1 %i.dg, label %bb.b, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.de, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_113linear_anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = fsub float 1.000000e+00, %7              ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ] ; 2 uses
  %.092 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dw, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [48 x i8], ptr %2, i64 %i.o ; 4 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = fmul float %7, %i.s
  %i.u = call float @llvm.fmuladd.f32(float %i.c, float %i.q, float %i.t) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = fmul float %7, %i.y
  %i.aa = call float @llvm.fmuladd.f32(float %i.c, float %i.w, float %i.z) ; 3 uses
  %i.ab = fsub float 1.000000e+00, %i.aa          ; 3 uses
  %i.ac = sext i32 %i.j to i64                    ; 2 uses
  %i.ad = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ae ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef nonnull %i.a) ; 0 uses
  %i.ah = sext i32 %i.n to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ah
  %i.aj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ai, ptr noundef %i.af, ptr noundef nonnull %i.b) ; 0 uses
  %i.ak = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.al = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %.pre99 = load float, ptr %i.e, align 8, !tbaa !18
  %.pre100 = load float, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 2 uses
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  store float %i.aq, ptr %i.e, align 8, !tbaa !18
  %i.ar = sext i32 %i.n to i64                    ; 2 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.at = load <2 x float>, ptr %i.ad, align 4, !tbaa !18
  %i.au = load <2 x float>, ptr %i.af, align 4, !tbaa !18 ; 2 uses
  %i.av = fsub <2 x float> %i.at, %i.au           ; 2 uses
  store <2 x float> %i.av, ptr %i.a, align 8, !tbaa !18
  %i.aw = load <2 x float>, ptr %i.as, align 4, !tbaa !18
  %i.ax = fsub <2 x float> %i.aw, %i.au           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fsub float %i.az, %i.ap                 ; 2 uses
  store <2 x float> %i.ax, ptr %i.b, align 8, !tbaa !18
  store float %i.ba, ptr %i.f, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit88: ; preds = %bb.c, %bb.d
  %i.bb = phi float [ %.pre100, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %i.bc = phi float [ %.pre99, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bd = phi i64 [ %i.ah, %bb.c ], [ %i.ar, %bb.d ]
  %i.be = phi <2 x float> [ %i.ak, %bb.c ], [ %i.av, %bb.d ] ; 3 uses
  %i.bf = phi <2 x float> [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.bg = fneg float %i.aa                        ; 2 uses
  %i.bh = fmul float %i.u, %i.aa                  ; 2 uses
  %i.bi = fmul float %i.u, %i.ab                  ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ac ; 3 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bd ; 3 uses
  %i.bm = fneg <2 x float> %i.bf
  %i.bn = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bm
  %i.bq = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.be, <2 x float> %i.bp) ; 5 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 3 uses
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float 0.000000e+00)
  %i.bv = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bw, %i.bs           ; 2 uses
  %i.by = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bu)
  %i.ca = load <2 x float>, ptr %i.bj, align 4, !tbaa !18
  %i.cb = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.cc, %i.bs           ; 2 uses
  %i.ce = fadd <2 x float> %i.ca, %i.cd
  store <2 x float> %i.ce, ptr %i.bj, align 4, !tbaa !18
  %i.cf = fadd <2 x float> %i.cd, %i.bx
  %i.cg = load <2 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.ch = fsub <2 x float> %i.cg, %i.cf
  store <2 x float> %i.ch, ptr %i.bk, align 4, !tbaa !18
  %i.ci = load <2 x float>, ptr %i.bl, align 4, !tbaa !18
  %i.cj = fadd <2 x float> %i.bx, %i.ci
  store <2 x float> %i.cj, ptr %i.bl, align 4, !tbaa !18
  %i.ck = fneg float %i.bb
  %i.cl = fmul float %i.ab, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.bg, float %i.bc, float %i.cl) ; 5 uses
  %i.cn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.bz)
  %i.co = fmul float %i.bh, %i.cm                 ; 2 uses
  %i.cp = fmul float %i.bi, %i.cm                 ; 2 uses
  %i.cq = fadd float %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ct = fadd float %i.cs, %i.co
  store float %i.ct, ptr %i.cr, align 4, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !18
  %i.cw = fsub float %i.cv, %i.cq
  store float %i.cw, ptr %i.cu, align 4, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !18
  %i.cz = fadd float %i.cp, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !18
  %foldExtExtBinop = fsub <2 x float> %i.be, %i.bf
  %i.da = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop103 = fsub <2 x float> %i.be, %i.bf
  %i.db = fsub float %i.bc, %i.bb
  %i.dc = fpext float %i.u to double
  %i.dd = fmul double %i.dc, 5.000000e-01
  %i.de = fpext float %i.cn to double             ; 2 uses
  %i.df = fmul double %i.dd, %i.de
  %i.dg = fptrunc double %i.df to float
  %i.dh = fsub float %i.s, %i.q
  %i.di = fpext float %i.dh to double
  %i.dj = fmul double %i.di, 5.000000e-01
  %i.dk = fsub float %i.y, %i.w
  %i.dl = fmul float %i.u, %i.dk
  %foldExtExtBinop105 = fmul <2 x float> %foldExtExtBinop103, %i.bs
  %i.dm = extractelement <2 x float> %foldExtExtBinop105, i64 1
  %i.dn = call float @llvm.fmuladd.f32(float %i.bt, float %i.da, float %i.dm)
  %i.do = call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.db, float %i.dn)
  %i.dp = fmul float %i.dl, %i.do
  %i.dq = fpext float %i.dp to double
  %i.dr = call double @llvm.fmuladd.f64(double %i.dj, double %i.de, double %i.dq)
  %i.ds = load float, ptr %8, align 4, !tbaa !18
end_hunk_3
