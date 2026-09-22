Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bonded?download=true
inline.NumInlined: 1758
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN12_GLOBAL__N_115restraint_bondsIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.bq = fpext float %i.bn to double             ; 2 uses
  %i.br = fmul double %i.bp, %i.bq
  %i.bs = fneg float %i.bi
  %i.bt = fmul float %i.bm, %i.bs
  %i.bu = fpext float %i.bj to double
  %i.bv = fmul double %i.bu, 5.000000e-01
  %i.bw = fmul float %i.bl, %i.bi
  %i.bx = fmul float %i.bm, %i.bw
  %i.by = fpext float %i.bx to double
  %i.bz = fneg double %i.by
  %i.ca = call double @llvm.fmuladd.f64(double %i.bv, double %i.bq, double %i.bz)
  br label %.sink.split

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.cb = fcmp ugt float %i.ah, %i.au
  br i1 %i.cb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cc = fcmp ugt float %i.ah, %i.bb
  br i1 %i.cc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = fsub float %i.ah, %i.au                 ; 4 uses
  %i.ce = fmul float %i.cd, %i.cd
  %i.cf = fpext float %i.bi to double
  %i.cg = fmul double %i.cf, 5.000000e-01
  %i.ch = fpext float %i.ce to double             ; 2 uses
  %i.ci = fmul double %i.cg, %i.ch
  %i.cj = fneg float %i.bi
  %i.ck = fmul float %i.cd, %i.cj
  %i.cl = fpext float %i.bj to double
  %i.cm = fmul double %i.cl, 5.000000e-01
  %i.cn = fmul float %i.av, %i.bi
  %i.co = fmul float %i.cd, %i.cn
  %i.cp = fpext float %i.co to double
  %i.cq = fneg double %i.cp
  %i.cr = call double @llvm.fmuladd.f64(double %i.cm, double %i.ch, double %i.cq)
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.cs = fsub float %i.ah, %i.bb                 ; 2 uses
  %i.ct = fsub float %i.bb, %i.au                 ; 5 uses
  %i.cu = fmul float %i.ct, %i.bi                 ; 2 uses
  %i.cv = fpext float %i.cu to double
  %i.cw = fpext float %i.ct to double
  %i.cx = fpext float %i.cs to double
  %i.cy = call double @llvm.fmuladd.f64(double %i.cw, double 5.000000e-01, double %i.cx) ; 2 uses
  %i.cz = fmul double %i.cy, %i.cv
  %i.da = fneg float %i.bi
  %i.db = fmul float %i.ct, %i.da
  %i.dc = fmul float %i.bj, %i.ct
  %i.dd = fpext float %i.dc to double
  %i.de = fsub float %i.bc, %i.av
  %i.df = fmul float %i.de, %i.bi
  %i.dg = fadd float %i.ct, %i.cs
  %i.dh = fmul float %i.dg, %i.df
  %i.di = fpext float %i.dh to double
  %i.dj = call double @llvm.fmuladd.f64(double %i.dd, double %i.cy, double %i.di)
  %i.dk = fmul float %i.bc, %i.cu
  %i.dl = fpext float %i.dk to double
  %i.dm = fsub double %i.dj, %i.dl
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.i, %bb.j
  %.sink = phi double [ %i.dm, %bb.j ], [ %i.cr, %bb.i ], [ %i.ca, %bb.f ]
  %.0130.ph = phi float [ %i.db, %bb.j ], [ %i.ck, %bb.i ], [ %i.bt, %bb.f ]
  %.0129.ph.in = phi double [ %i.cz, %bb.j ], [ %i.ci, %bb.i ], [ %i.br, %bb.f ]
  %.0129.ph = fptrunc double %.0129.ph.in to float
  %i.dn = load float, ptr %8, align 4, !tbaa !18
  %i.do = fpext float %i.dn to double
  %i.dp = fadd double %.sink, %i.do
  %i.dq = fptrunc double %i.dp to float
  store float %i.dq, ptr %8, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g
  %.0130 = phi float [ 0.000000e+00, %bb.g ], [ %.0130.ph, %.sink.split ]
  %.0129 = phi float [ 0.000000e+00, %bb.g ], [ %.0129.ph, %.sink.split ]
  %i.dr = fcmp oeq float %i.af, 0.000000e+00
  br i1 %i.dr, label %bb.b, label %.outer, !llvm.loop !84

.outer:                                           ; preds = %bb.k
  %i.ds = fadd float %.0.ph171, %.0129            ; 2 uses
  %i.dt = fmul float %i.ag, %.0130                ; 2 uses
  %i.du = getelementptr inbounds [16 x i8], ptr %4, i64 %i.m ; 3 uses
  %i.dv = getelementptr inbounds [16 x i8], ptr %4, i64 %i.o ; 3 uses
  %i.dw = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %i.ab, %i.dx           ; 2 uses
  %i.dz = load <2 x float>, ptr %i.du, align 4, !tbaa !18
  %i.ea = fadd <2 x float> %i.dy, %i.dz
  store <2 x float> %i.ea, ptr %i.du, align 4, !tbaa !18
  %i.eb = load <2 x float>, ptr %i.dv, align 4, !tbaa !18
  %i.ec = fsub <2 x float> %i.eb, %i.dy
  store <2 x float> %i.ec, ptr %i.dv, align 4, !tbaa !18
  %i.ed = fmul float %i.aa, %i.dt                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !18
  %i.eg = fadd float %i.ed, %i.ef
  store float %i.eg, ptr %i.ee, align 4, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !18
  %i.ej = fsub float %i.ei, %i.ed
  store float %i.ej, ptr %i.eh, align 4, !tbaa !18
  %i.ek = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.ek, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !84

.outer._crit_edge:                                ; preds = %.outer, %bb.b, %bb.a
  %.0.ph.lcssa = phi float [ %.0.ph171, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.ds, %.outer ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.ph.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_16anglesIL18BondedKernelFlavor1EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = fsub float 1.000000e+00, %7              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.07077 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.be, %.loopexit ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = sext i32 %i.m to i64                     ; 2 uses
  %i.s = getelementptr inbounds [12 x i8], ptr %3, i64 %i.r
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v
  %i.x = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.y = sext i32 %i.k to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %2, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  %i.ae = load float, ptr %i.z, align 4, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  %i.ak = fmul <2 x double> %i.aj, splat (double f0x3F91DF46A2529D39)
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 2 uses
  %i.am = fmul float %7, %i.ad
  %i.an = call float @llvm.fmuladd.f32(float %i.g, float %i.ab, float %i.am) ; 3 uses
  %i.ao = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  %i.ap = fmul float %7, %i.ao
  %i.aq = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.g, float %i.aq, float %i.ap)
  %i.as = fsub float %i.x, %i.ar                  ; 4 uses
  %i.at = fmul float %i.as, %i.as                 ; 2 uses
  %i.au = fmul float %i.an, 5.000000e-01
  %i.av = fmul float %i.au, %i.at
  %i.aw = fsub float %i.ad, %i.ab
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = fsub float %i.aq, %i.ao
  %i.az = fmul float %i.an, %i.ay
  %i.ba = fmul float %i.az, %i.as
  %i.bb = call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.at, float %i.ba)
  %i.bc = load float, ptr %8, align 4, !tbaa !18
  %i.bd = fadd float %i.bc, %i.bb
  store float %i.bd, ptr %8, align 4, !tbaa !18
  %i.be = fadd float %.07077, %i.av               ; 2 uses
  %i.bf = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.bg = fmul float %i.bf, %i.bf                 ; 2 uses
  %i.bh = fcmp olt float %i.bg, 1.000000e+00
  br i1 %i.bh, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.bi = fneg float %i.an
  %i.bj = fmul float %i.as, %i.bi
  %i.bk = fsub float 1.000000e+00, %i.bg
  %i.bl = call noundef float @sqrtf(float noundef %i.bk) #23
  %i.bm = fdiv float 1.000000e+00, %i.bl
  %i.bn = fmul float %i.bj, %i.bm                 ; 2 uses
  %i.bo = fmul float %i.bf, %i.bn
  %i.bp = load float, ptr %i.h, align 8, !tbaa !18 ; 3 uses
  %i.bq = load float, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %4, i64 %i.r ; 3 uses
  %i.bs = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bt = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bu = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bv = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bx = fmul <2 x float> %i.bw, %i.bw
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.by, <2 x float> %i.bx)
  %i.ca = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bq, i64 1 ; 2 uses
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cb, <2 x float> %i.bz)
  %i.cd = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cc)
  %14 = shufflevector <2 x float> %i.cd, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %15 = fdiv <3 x float> splat (float 1.000000e+00), %14 ; 2 uses
  %16 = insertelement <3 x float> poison, float %i.bn, i64 0
  %17 = insertelement <3 x float> %16, float %i.bo, i64 1
  %18 = shufflevector <3 x float> %17, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %19 = fmul <3 x float> %18, %15
  %20 = shufflevector <3 x float> %15, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 0>
  %21 = fmul <3 x float> %19, %20                 ; 6 uses
  %i.ce = fneg <2 x float> %i.bu
  %22 = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cf = fmul <2 x float> %22, %i.ce
  %i.cg = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.bv, <2 x float> %i.cf) ; 2 uses
  %i.ci = fneg <2 x float> %i.bv
  %23 = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x float> %23, %i.ci
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.bu, <2 x float> %i.cj) ; 2 uses
  %i.cl = fadd <2 x float> %i.ck, %i.ch
  %i.cm = load <2 x float>, ptr %i.br, align 4, !tbaa !18
  %i.cn = fsub <2 x float> %i.cm, %i.ch
  store <2 x float> %i.cn, ptr %i.br, align 4, !tbaa !18
  %i.co = load <2 x float>, ptr %i.bs, align 4, !tbaa !18
  %i.cp = fadd <2 x float> %i.co, %i.cl
  store <2 x float> %i.cp, ptr %i.bs, align 4, !tbaa !18
  %i.cq = load <2 x float>, ptr %i.bt, align 4, !tbaa !18
  %i.cr = fsub <2 x float> %i.cq, %i.ck
  store <2 x float> %i.cr, ptr %i.bt, align 4, !tbaa !18
  %i.cs = fneg float %i.bp
  %24 = extractelement <3 x float> %21, i64 2
  %i.ct = fmul float %24, %i.cs
  %25 = extractelement <3 x float> %21, i64 0     ; 2 uses
  %i.cu = call float @llvm.fmuladd.f32(float %25, float %i.bq, float %i.ct) ; 2 uses
  %i.cv = fneg float %i.bq
  %26 = extractelement <3 x float> %21, i64 1
  %i.cw = fmul float %26, %i.cv
  %i.cx = call float @llvm.fmuladd.f32(float %25, float %i.bp, float %i.cw) ; 2 uses
  %i.cy = fadd float %i.cx, %i.cu
  %i.cz = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !18
  %i.db = fsub float %i.da, %i.cu
  store float %i.db, ptr %i.cz, align 4, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !18
  %i.de = fadd float %i.dd, %i.cy
  store float %i.de, ptr %i.dc, align 4, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !18
  %i.dh = fsub float %i.dg, %i.cx
  store float %i.dh, ptr %i.df, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.di = trunc nuw i64 %indvars.iv.next to i32
  %i.dj = icmp sgt i32 %0, %i.di
  br i1 %i.dj, label %bb.b, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.070.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.be, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.070.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor1EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = fsub float 1.000000e+00, %7              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.071 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dv, %.loopexit ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = sext i32 %i.r to i64                     ; 2 uses
  %i.x = getelementptr inbounds [12 x i8], ptr %3, i64 %i.w
  %i.y = call fastcc noundef float @_ZN12_GLOBAL__N_113g96bond_angleEPKfS1_S1_PK5t_pbcPfS5_PiS6_(ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %6, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.z = sext i32 %i.l to i64
  %i.aa = getelementptr inbounds [48 x i8], ptr %2, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = load float, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.ai = fmul float %7, %i.ae
  %i.aj = call float @llvm.fmuladd.f32(float %i.f, float %i.ac, float %i.ai) ; 3 uses
  %i.ak = fmul float %7, %i.ah
  %i.al = call float @llvm.fmuladd.f32(float %i.f, float %i.af, float %i.ak)
  %i.am = fneg float %i.aj
  %i.an = fsub float %i.ae, %i.ac
  %i.ao = fmul float %i.an, 5.000000e-01
  %i.ap = fsub float %i.af, %i.ah
  %i.aq = fmul float %i.aj, %i.ap
  %i.ar = load float, ptr %8, align 4, !tbaa !18
  %i.as = load float, ptr %i.h, align 4, !tbaa !18 ; 4 uses
  %i.at = load float, ptr %i.j, align 4, !tbaa !18 ; 4 uses
  %i.au = fneg float %i.y                         ; 6 uses
  %i.av = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 4 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %4, i64 %i.w ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.az = load float, ptr %i.i, align 4, !tbaa !18 ; 4 uses
  %i.ba = load float, ptr %i.d, align 4, !tbaa !18 ; 4 uses
  %i.bb = fmul float %i.az, %i.az
  %i.bc = call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.bc)
  %sqrt = call float @llvm.sqrt.f32(float %i.bd)
  %i.be = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.bf = load float, ptr %i.g, align 4, !tbaa !18 ; 4 uses
  %i.bg = load float, ptr %i.c, align 4, !tbaa !18 ; 4 uses
  %i.bh = fmul float %i.bf, %i.bf
  %i.bi = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bh)
  %i.bj = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.bi)
  %sqrt68 = call float @llvm.sqrt.f32(float %i.bj)
  %i.bk = fdiv float 1.000000e+00, %sqrt68        ; 3 uses
  %i.bl = fsub float %i.y, %i.al                  ; 4 uses
  %i.bm = fmul float %i.bl, %i.bl                 ; 2 uses
  %i.bn = fmul float %i.aq, %i.bl
  %i.bo = call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.bm, float %i.bn)
  %i.bp = fadd float %i.ar, %i.bo
  store float %i.bp, ptr %8, align 4, !tbaa !18
  %i.bq = fmul float %i.be, %i.be                 ; 3 uses
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
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115restraint_bondsIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.cq = fpext float %i.bo to double
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = fmul float %i.ba, %i.bn
  %i.ct = fmul float %i.ci, %i.cs
  %i.cu = fpext float %i.ct to double
  %i.cv = fneg double %i.cu
  %i.cw = call double @llvm.fmuladd.f64(double %i.cr, double %i.cm, double %i.cv)
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.cx = fsub float %i.am, %i.bg                 ; 2 uses
  %i.cy = fsub float %i.bg, %i.az                 ; 5 uses
  %i.cz = fmul float %i.cy, %i.bn                 ; 2 uses
  %i.da = fpext float %i.cz to double
  %i.db = fpext float %i.cy to double
  %i.dc = fpext float %i.cx to double
  %i.dd = call double @llvm.fmuladd.f64(double %i.db, double 5.000000e-01, double %i.dc) ; 2 uses
  %i.de = fmul double %i.dd, %i.da
  %i.df = fneg float %i.bn
  %i.dg = fmul float %i.cy, %i.df
  %i.dh = fmul float %i.bo, %i.cy
  %i.di = fpext float %i.dh to double
  %i.dj = fsub float %i.bh, %i.ba
  %i.dk = fmul float %i.dj, %i.bn
  %i.dl = fadd float %i.cy, %i.cx
  %i.dm = fmul float %i.dl, %i.dk
  %i.dn = fpext float %i.dm to double
  %i.do = call double @llvm.fmuladd.f64(double %i.di, double %i.dd, double %i.dn)
  %i.dp = fmul float %i.bh, %i.cz
  %i.dq = fpext float %i.dp to double
  %i.dr = fsub double %i.do, %i.dq
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.i, %bb.j
  %.sink = phi double [ %i.dr, %bb.j ], [ %i.cw, %bb.i ], [ %i.cf, %bb.f ]
  %.0130.ph = phi float [ %i.dg, %bb.j ], [ %i.cp, %bb.i ], [ %i.by, %bb.f ]
  %.0129.ph.in = phi double [ %i.de, %bb.j ], [ %i.cn, %bb.i ], [ %i.bw, %bb.f ]
  %.0129.ph = fptrunc double %.0129.ph.in to float
  %i.ds = load float, ptr %8, align 4, !tbaa !18
  %i.dt = fpext float %i.ds to double
  %i.du = fadd double %.sink, %i.dt
  %i.dv = fptrunc double %i.du to float
  store float %i.dv, ptr %8, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g
  %.0130 = phi float [ 0.000000e+00, %bb.g ], [ %.0130.ph, %.sink.split ]
  %.0129 = phi float [ 0.000000e+00, %bb.g ], [ %.0129.ph, %.sink.split ]
  %i.dw = fcmp oeq float %i.ak, 0.000000e+00
  br i1 %i.dw, label %bb.b, label %.outer, !llvm.loop !112

.outer:                                           ; preds = %bb.k
  %i.dx = fadd float %.0.ph171, %.0129            ; 2 uses
  %i.dy = fmul float %i.al, %.0130                ; 3 uses
  %i.dz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.p ; 4 uses
  %i.ea = getelementptr inbounds [16 x i8], ptr %4, i64 %i.r ; 4 uses
  %i.eb = getelementptr inbounds [12 x i8], ptr %5, i64 %.0.i ; 4 uses
  %i.ec = fmul float %i.ai, %i.dy                 ; 4 uses
  %i.ed = load float, ptr %i.dz, align 4, !tbaa !18
  %i.ee = fadd float %i.ec, %i.ed
  store float %i.ee, ptr %i.dz, align 4, !tbaa !18
  %i.ef = load float, ptr %i.ea, align 4, !tbaa !18
  %i.eg = fsub float %i.ef, %i.ec
  store float %i.eg, ptr %i.ea, align 4, !tbaa !18
  %i.eh = load float, ptr %i.eb, align 4, !tbaa !18
  %i.ei = fadd float %i.ec, %i.eh
  store float %i.ei, ptr %i.eb, align 4, !tbaa !18
  %i.ej = load float, ptr %i.d, align 4, !tbaa !18
  %i.ek = fsub float %i.ej, %i.ec
  store float %i.ek, ptr %i.d, align 4, !tbaa !18
  %i.el = fmul float %i.ag, %i.dy                 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !18
  %i.eo = fadd float %i.el, %i.en
  store float %i.eo, ptr %i.em, align 4, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !18
  %i.er = fsub float %i.eq, %i.el
  store float %i.er, ptr %i.ep, align 4, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !18
  %i.eu = fadd float %i.el, %i.et
  store float %i.eu, ptr %i.es, align 4, !tbaa !18
  %i.ev = load float, ptr %i.e, align 4, !tbaa !18
  %i.ew = fsub float %i.ev, %i.el
  store float %i.ew, ptr %i.e, align 4, !tbaa !18
  %i.ex = fmul float %i.ae, %i.dy                 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !18
  %i.fa = fadd float %i.ex, %i.ez
  store float %i.fa, ptr %i.ey, align 4, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !18
  %i.fd = fsub float %i.fc, %i.ex
  store float %i.fd, ptr %i.fb, align 4, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !18
  %i.fg = fadd float %i.ex, %i.ff
  store float %i.fg, ptr %i.fe, align 4, !tbaa !18
  %i.fh = load float, ptr %i.f, align 4, !tbaa !18
  %i.fi = fsub float %i.fh, %i.ex
  store float %i.fi, ptr %i.f, align 4, !tbaa !18
  %i.fj = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.fj, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !112

.outer._crit_edge:                                ; preds = %.outer, %bb.b, %bb.a
  %.0.ph.lcssa = phi float [ %.0.ph171, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.dx, %.outer ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.ph.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_16anglesIL18BondedKernelFlavor2EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = fsub float 1.000000e+00, %7              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.07380 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bg, %bb.d ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v
  %i.x = sext i32 %i.s to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.y, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.aa = sext i32 %i.m to i64
  %i.ab = getelementptr inbounds [48 x i8], ptr %2, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !15 ; 2 uses
  %i.ag = load float, ptr %i.ab, align 4, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !15
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fmul <2 x double> %i.al, splat (double f0x3F91DF46A2529D39)
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ao = fmul float %7, %i.af
  %i.ap = call float @llvm.fmuladd.f32(float %i.g, float %i.ad, float %i.ao) ; 3 uses
  %i.aq = extractelement <2 x float> %i.an, i64 1 ; 2 uses
  %i.ar = fmul float %7, %i.aq
  %i.as = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.g, float %i.as, float %i.ar)
  %i.au = fsub float %i.z, %i.at                  ; 4 uses
  %i.av = fmul float %i.au, %i.au                 ; 2 uses
  %i.aw = fmul float %i.ap, 5.000000e-01
  %i.ax = fmul float %i.aw, %i.av
  %i.ay = fsub float %i.af, %i.ad
  %i.az = fmul float %i.ay, 5.000000e-01
  %i.ba = fsub float %i.as, %i.aq
  %i.bb = fmul float %i.ap, %i.ba
  %i.bc = fmul float %i.bb, %i.au
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.az, float %i.av, float %i.bc)
  %i.be = load float, ptr %8, align 4, !tbaa !18
  %i.bf = fadd float %i.be, %i.bd
  store float %i.bf, ptr %8, align 4, !tbaa !18
  %i.bg = fadd float %.07380, %i.ax               ; 2 uses
  %i.bh = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.bi = fmul float %i.bh, %i.bh                 ; 2 uses
  %i.bj = fcmp olt float %i.bi, 1.000000e+00
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bk = fneg float %i.ap
  %i.bl = fmul float %i.au, %i.bk
  %i.bm = fsub float 1.000000e+00, %i.bi
  %i.bn = call noundef float @sqrtf(float noundef %i.bm) #23
  %i.bo = fdiv float 1.000000e+00, %i.bn
  %i.bp = fmul float %i.bl, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.bh, %i.bp
  %i.br = load float, ptr %i.h, align 8, !tbaa !18 ; 3 uses
  %i.bs = load float, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.bt = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bv = getelementptr inbounds [16 x i8], ptr %4, i64 %i.x ; 3 uses
  %i.bw = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bx = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.ca, <2 x float> %i.bz)
  %i.cc = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.bs, i64 1 ; 2 uses
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cd, <2 x float> %i.cb)
  %i.cf = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ce)
  %14 = shufflevector <2 x float> %i.cf, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %15 = fdiv <3 x float> splat (float 1.000000e+00), %14 ; 2 uses
  %16 = insertelement <3 x float> poison, float %i.bp, i64 0
  %17 = insertelement <3 x float> %16, float %i.bq, i64 1
  %18 = shufflevector <3 x float> %17, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %19 = fmul <3 x float> %18, %15
  %20 = shufflevector <3 x float> %15, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 0>
  %21 = fmul <3 x float> %19, %20                 ; 6 uses
  %22 = fneg <2 x float> %i.bw
  %23 = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %24 = fmul <2 x float> %23, %22
  %25 = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %26 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %i.bx, <2 x float> %24) ; 3 uses
  %i.cg = fneg <2 x float> %i.bx
  %i.ch = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fmul <2 x float> %i.ch, %i.cg
  %27 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %i.bw, <2 x float> %i.ci) ; 3 uses
  %28 = fadd <2 x float> %27, %26                 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.bt, align 4, !tbaa !18
  %i.ck = fsub <2 x float> %i.cj, %26
  store <2 x float> %i.ck, ptr %i.bt, align 4, !tbaa !18
  %29 = load <2 x float>, ptr %i.bu, align 4, !tbaa !18
  %30 = fadd <2 x float> %28, %29
  store <2 x float> %30, ptr %i.bu, align 4, !tbaa !18
  %31 = load <2 x float>, ptr %i.bv, align 4, !tbaa !18
  %32 = fsub <2 x float> %31, %27
  store <2 x float> %32, ptr %i.bv, align 4, !tbaa !18
  %i.cl = fneg float %i.br
  %i.cm = extractelement <3 x float> %21, i64 2
  %i.cn = fmul float %i.cm, %i.cl
  %33 = extractelement <3 x float> %21, i64 0     ; 2 uses
  %i.co = call float @llvm.fmuladd.f32(float %33, float %i.bs, float %i.cn) ; 3 uses
  %i.cp = fneg float %i.bs
  %34 = extractelement <3 x float> %21, i64 1
  %i.cq = fmul float %34, %i.cp
  %i.cr = call float @llvm.fmuladd.f32(float %33, float %i.br, float %i.cq) ; 3 uses
  %i.cs = fadd float %i.cr, %i.co                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !18
  %i.cv = fsub float %i.cu, %i.co
  store float %i.cv, ptr %i.ct, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18
  %i.cy = fadd float %i.cs, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !18
  %i.db = fsub float %i.da, %i.cr
  store float %i.db, ptr %i.cz, align 4, !tbaa !18
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !16
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [12 x i8], ptr %5, i64 %i.dd ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !18
  %i.dh = fsub float %i.dg, %i.co
  %35 = load <2 x float>, ptr %i.de, align 4, !tbaa !18
  %36 = fsub <2 x float> %35, %26
  store <2 x float> %36, ptr %i.de, align 4, !tbaa !18
  store float %i.dh, ptr %i.df, align 4, !tbaa !18
  %i.di = load float, ptr %i.k, align 4, !tbaa !18
  %37 = fadd float %i.di, %i.cs
  %i.dj = load <2 x float>, ptr %i.j, align 4, !tbaa !18
  %i.dk = fadd <2 x float> %i.dj, %28
  store <2 x float> %i.dk, ptr %i.j, align 4, !tbaa !18
  store float %37, ptr %i.k, align 4, !tbaa !18
  %i.dl = load i32, ptr %i.b, align 4, !tbaa !16
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [12 x i8], ptr %5, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !18
  %i.dq = fsub float %i.dp, %i.cr
  %i.dr = load <2 x float>, ptr %i.dn, align 4, !tbaa !18
  %i.ds = fsub <2 x float> %i.dr, %27
  store <2 x float> %i.ds, ptr %i.dn, align 4, !tbaa !18
  store float %i.dq, ptr %i.do, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dt = trunc nuw i64 %indvars.iv.next to i32
  %i.du = icmp sgt i32 %0, %i.dt
  br i1 %i.du, label %bb.b, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.073.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bg, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.073.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = fsub float 1.000000e+00, %7              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 268 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.074 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dy, %bb.b ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v
  %i.x = sext i32 %i.s to i64                     ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %3, i64 %i.x
  %i.z = sext i32 %i.u to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %3, i64 %i.z
  %i.ab = call fastcc noundef float @_ZN12_GLOBAL__N_113g96bond_angleEPKfS1_S1_PK5t_pbcPfS5_PiS6_(ptr noundef %i.w, ptr noundef %i.y, ptr noundef %i.aa, ptr noundef %6, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.ac = sext i32 %i.o to i64
  %i.ad = getelementptr inbounds [48 x i8], ptr %2, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.ai = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !15 ; 2 uses
  %i.al = fmul float %7, %i.ah
  %i.am = call float @llvm.fmuladd.f32(float %i.f, float %i.af, float %i.al) ; 3 uses
  %i.an = fmul float %7, %i.ak
  %i.ao = call float @llvm.fmuladd.f32(float %i.f, float %i.ai, float %i.an)
  %i.ap = fneg float %i.am
  %i.aq = fsub float %i.ah, %i.af
  %i.ar = fmul float %i.aq, 5.000000e-01
  %i.as = fsub float %i.ai, %i.ak
  %i.at = fmul float %i.am, %i.as
  %i.au = load float, ptr %8, align 4, !tbaa !18
  %i.av = load float, ptr %i.h, align 4, !tbaa !18 ; 4 uses
  %i.aw = load float, ptr %i.j, align 4, !tbaa !18 ; 4 uses
  %i.ax = fneg float %i.ab                        ; 6 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %i.x ; 4 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %4, i64 %i.z ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bf = fmul float %i.am, 5.000000e-01
  %i.bg = load float, ptr %i.i, align 4, !tbaa !18 ; 4 uses
  %i.bh = load float, ptr %i.d, align 4, !tbaa !18 ; 4 uses
  %i.bi = fmul float %i.bg, %i.bg
  %i.bj = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bi)
  %i.bk = call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.bj)
  %sqrt = call float @llvm.sqrt.f32(float %i.bk)
  %i.bl = load float, ptr %i.g, align 4, !tbaa !18 ; 4 uses
  %i.bm = load float, ptr %i.c, align 4, !tbaa !18 ; 4 uses
  %i.bn = fmul float %i.bl, %i.bl
  %i.bo = call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bn)
  %i.bp = call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.bo)
  %sqrt71 = call float @llvm.sqrt.f32(float %i.bp)
  %i.bq = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.br = fdiv float 1.000000e+00, %sqrt71        ; 3 uses
  %i.bs = fsub float %i.ab, %i.ao                 ; 4 uses
  %i.bt = fmul float %i.bs, %i.bs                 ; 2 uses
  %i.bu = fmul float %i.at, %i.bs
  %i.bv = call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.bt, float %i.bu)
  %i.bw = fadd float %i.au, %i.bv
  store float %i.bw, ptr %8, align 4, !tbaa !18
  %i.bx = fmul float %i.bq, %i.bq                 ; 3 uses
  %i.by = fmul float %i.br, %i.br                 ; 3 uses
  %i.bz = fmul float %i.br, %i.bq                 ; 6 uses
  %i.ca = fmul float %i.bs, %i.ap                 ; 6 uses
  %i.cb = fmul float %i.by, %i.bl
  %i.cc = fmul float %i.by, %i.bm
  %i.cd = fmul float %i.cb, %i.ax
  %i.ce = fmul float %i.cc, %i.ax
  %i.cf = call float @llvm.fmuladd.f32(float %i.bg, float %i.bz, float %i.cd)
  %i.cg = call float @llvm.fmuladd.f32(float %i.bh, float %i.bz, float %i.ce)
  %i.ch = fmul float %i.ca, %i.cf                 ; 2 uses
  %i.ci = fmul float %i.ca, %i.cg                 ; 2 uses
  %i.cj = fneg float %i.ci
  %i.ck = fmul float %i.bx, %i.bg
  %i.cl = fmul float %i.bx, %i.bh
  %i.cm = fmul float %i.ck, %i.ax
  %i.cn = fmul float %i.cl, %i.ax
  %i.co = call float @llvm.fmuladd.f32(float %i.bl, float %i.bz, float %i.cm)
  %i.cp = call float @llvm.fmuladd.f32(float %i.bm, float %i.bz, float %i.cn)
  %i.cq = fmul float %i.ca, %i.co                 ; 2 uses
  %i.cr = fmul float %i.ca, %i.cp                 ; 2 uses
  %i.cs = fsub float %i.cj, %i.cr                 ; 2 uses
  %i.ct = load <2 x float>, ptr %i.ay, align 4, !tbaa !18
  %i.cu = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.ch, i64 1 ; 2 uses
  %i.cw = fadd <2 x float> %i.ct, %i.cv
  store <2 x float> %i.cw, ptr %i.ay, align 4, !tbaa !18
  %i.cx = load float, ptr %i.az, align 4, !tbaa !18
  %i.cy = fadd float %i.cs, %i.cx
  store float %i.cy, ptr %i.az, align 4, !tbaa !18
  %i.cz = fneg float %i.ch
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
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_115restraint_bondsIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.bq = fpext float %i.bn to double             ; 2 uses
  %i.br = fmul double %i.bp, %i.bq
  %i.bs = fneg float %i.bi
  %i.bt = fmul float %i.bm, %i.bs
  %i.bu = fpext float %i.bj to double
  %i.bv = fmul double %i.bu, 5.000000e-01
  %i.bw = fmul float %i.bl, %i.bi
  %i.bx = fmul float %i.bm, %i.bw
  %i.by = fpext float %i.bx to double
  %i.bz = fneg double %i.by
  %i.ca = call double @llvm.fmuladd.f64(double %i.bv, double %i.bq, double %i.bz)
  br label %.sink.split

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.cb = fcmp ugt float %i.ah, %i.au
  br i1 %i.cb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cc = fcmp ugt float %i.ah, %i.bb
  br i1 %i.cc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = fsub float %i.ah, %i.au                 ; 4 uses
  %i.ce = fmul float %i.cd, %i.cd
  %i.cf = fpext float %i.bi to double
  %i.cg = fmul double %i.cf, 5.000000e-01
  %i.ch = fpext float %i.ce to double             ; 2 uses
  %i.ci = fmul double %i.cg, %i.ch
  %i.cj = fneg float %i.bi
  %i.ck = fmul float %i.cd, %i.cj
  %i.cl = fpext float %i.bj to double
  %i.cm = fmul double %i.cl, 5.000000e-01
  %i.cn = fmul float %i.av, %i.bi
  %i.co = fmul float %i.cd, %i.cn
  %i.cp = fpext float %i.co to double
  %i.cq = fneg double %i.cp
  %i.cr = call double @llvm.fmuladd.f64(double %i.cm, double %i.ch, double %i.cq)
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.cs = fsub float %i.ah, %i.bb                 ; 2 uses
  %i.ct = fsub float %i.bb, %i.au                 ; 5 uses
  %i.cu = fmul float %i.ct, %i.bi                 ; 2 uses
  %i.cv = fpext float %i.cu to double
  %i.cw = fpext float %i.ct to double
  %i.cx = fpext float %i.cs to double
  %i.cy = call double @llvm.fmuladd.f64(double %i.cw, double 5.000000e-01, double %i.cx) ; 2 uses
  %i.cz = fmul double %i.cy, %i.cv
  %i.da = fneg float %i.bi
  %i.db = fmul float %i.ct, %i.da
  %i.dc = fmul float %i.bj, %i.ct
  %i.dd = fpext float %i.dc to double
  %i.de = fsub float %i.bc, %i.av
  %i.df = fmul float %i.de, %i.bi
  %i.dg = fadd float %i.ct, %i.cs
  %i.dh = fmul float %i.dg, %i.df
  %i.di = fpext float %i.dh to double
  %i.dj = call double @llvm.fmuladd.f64(double %i.dd, double %i.cy, double %i.di)
  %i.dk = fmul float %i.bc, %i.cu
  %i.dl = fpext float %i.dk to double
  %i.dm = fsub double %i.dj, %i.dl
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.i, %bb.j
  %.sink = phi double [ %i.dm, %bb.j ], [ %i.cr, %bb.i ], [ %i.ca, %bb.f ]
  %.0130.ph = phi float [ %i.db, %bb.j ], [ %i.ck, %bb.i ], [ %i.bt, %bb.f ]
  %.0129.ph.in = phi double [ %i.cz, %bb.j ], [ %i.ci, %bb.i ], [ %i.br, %bb.f ]
  %.0129.ph = fptrunc double %.0129.ph.in to float
  %i.dn = load float, ptr %8, align 4, !tbaa !18
  %i.do = fpext float %i.dn to double
  %i.dp = fadd double %.sink, %i.do
  %i.dq = fptrunc double %i.dp to float
  store float %i.dq, ptr %8, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g
  %.0130 = phi float [ 0.000000e+00, %bb.g ], [ %.0130.ph, %.sink.split ]
  %.0129 = phi float [ 0.000000e+00, %bb.g ], [ %.0129.ph, %.sink.split ]
  %i.dr = fcmp oeq float %i.af, 0.000000e+00
  br i1 %i.dr, label %bb.b, label %.outer, !llvm.loop !140

.outer:                                           ; preds = %bb.k
  %i.ds = fadd float %.0.ph171, %.0129            ; 2 uses
  %i.dt = fmul float %i.ag, %.0130                ; 2 uses
  %i.du = getelementptr inbounds [16 x i8], ptr %4, i64 %i.m ; 3 uses
  %i.dv = getelementptr inbounds [16 x i8], ptr %4, i64 %i.o ; 3 uses
  %i.dw = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %i.ab, %i.dx           ; 2 uses
  %i.dz = load <2 x float>, ptr %i.du, align 4, !tbaa !18
  %i.ea = fadd <2 x float> %i.dy, %i.dz
  store <2 x float> %i.ea, ptr %i.du, align 4, !tbaa !18
  %i.eb = load <2 x float>, ptr %i.dv, align 4, !tbaa !18
  %i.ec = fsub <2 x float> %i.eb, %i.dy
  store <2 x float> %i.ec, ptr %i.dv, align 4, !tbaa !18
  %i.ed = fmul float %i.aa, %i.dt                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !18
  %i.eg = fadd float %i.ed, %i.ef
  store float %i.eg, ptr %i.ee, align 4, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !18
  %i.ej = fsub float %i.ei, %i.ed
  store float %i.ej, ptr %i.eh, align 4, !tbaa !18
  %i.ek = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.ek, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !140

.outer._crit_edge:                                ; preds = %.outer, %bb.b, %bb.a
  %.0.ph.lcssa = phi float [ %.0.ph171, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.ds, %.outer ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.ph.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_16anglesIL18BondedKernelFlavor3EEENSt9enable_ifIXooneT_LS1_0EntLi1EEfE4typeEiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefISA_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = fsub float 1.000000e+00, %7              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.07077 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.be, %.loopexit ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = sext i32 %i.m to i64                     ; 2 uses
  %i.s = getelementptr inbounds [12 x i8], ptr %3, i64 %i.r
  %i.t = sext i32 %i.o to i64                     ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v
  %i.x = call noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.y = sext i32 %i.k to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %2, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  %i.ae = load float, ptr %i.z, align 4, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  %i.ak = fmul <2 x double> %i.aj, splat (double f0x3F91DF46A2529D39)
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 2 uses
  %i.am = fmul float %7, %i.ad
  %i.an = call float @llvm.fmuladd.f32(float %i.g, float %i.ab, float %i.am) ; 3 uses
  %i.ao = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  %i.ap = fmul float %7, %i.ao
  %i.aq = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.g, float %i.aq, float %i.ap)
  %i.as = fsub float %i.x, %i.ar                  ; 4 uses
  %i.at = fmul float %i.as, %i.as                 ; 2 uses
  %i.au = fmul float %i.an, 5.000000e-01
  %i.av = fmul float %i.au, %i.at
  %i.aw = fsub float %i.ad, %i.ab
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = fsub float %i.aq, %i.ao
  %i.az = fmul float %i.an, %i.ay
  %i.ba = fmul float %i.az, %i.as
  %i.bb = call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.at, float %i.ba)
  %i.bc = load float, ptr %8, align 4, !tbaa !18
  %i.bd = fadd float %i.bc, %i.bb
  store float %i.bd, ptr %8, align 4, !tbaa !18
  %i.be = fadd float %.07077, %i.av               ; 2 uses
  %i.bf = load float, ptr %i.e, align 4, !tbaa !18 ; 3 uses
  %i.bg = fmul float %i.bf, %i.bf                 ; 2 uses
  %i.bh = fcmp olt float %i.bg, 1.000000e+00
  br i1 %i.bh, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.bi = fneg float %i.an
  %i.bj = fmul float %i.as, %i.bi
  %i.bk = fsub float 1.000000e+00, %i.bg
  %i.bl = call noundef float @sqrtf(float noundef %i.bk) #23
  %i.bm = fdiv float 1.000000e+00, %i.bl
  %i.bn = fmul float %i.bj, %i.bm                 ; 2 uses
  %i.bo = fmul float %i.bf, %i.bn
  %i.bp = load float, ptr %i.h, align 8, !tbaa !18 ; 3 uses
  %i.bq = load float, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %4, i64 %i.r ; 3 uses
  %i.bs = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 3 uses
  %i.bt = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 3 uses
  %i.bu = load <2 x float>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.bv = load <2 x float>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bx = fmul <2 x float> %i.bw, %i.bw
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.by, <2 x float> %i.bx)
  %i.ca = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bq, i64 1 ; 2 uses
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cb, <2 x float> %i.bz)
  %i.cd = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cc)
  %14 = shufflevector <2 x float> %i.cd, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %15 = fdiv <3 x float> splat (float 1.000000e+00), %14 ; 2 uses
  %16 = insertelement <3 x float> poison, float %i.bn, i64 0
  %17 = insertelement <3 x float> %16, float %i.bo, i64 1
  %18 = shufflevector <3 x float> %17, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %19 = fmul <3 x float> %18, %15
  %20 = shufflevector <3 x float> %15, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 0>
  %21 = fmul <3 x float> %19, %20                 ; 6 uses
  %i.ce = fneg <2 x float> %i.bu
  %22 = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cf = fmul <2 x float> %22, %i.ce
  %i.cg = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.bv, <2 x float> %i.cf) ; 2 uses
  %i.ci = fneg <2 x float> %i.bv
  %23 = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x float> %23, %i.ci
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.bu, <2 x float> %i.cj) ; 2 uses
  %i.cl = fadd <2 x float> %i.ck, %i.ch
  %i.cm = load <2 x float>, ptr %i.br, align 4, !tbaa !18
  %i.cn = fsub <2 x float> %i.cm, %i.ch
  store <2 x float> %i.cn, ptr %i.br, align 4, !tbaa !18
  %i.co = load <2 x float>, ptr %i.bs, align 4, !tbaa !18
  %i.cp = fadd <2 x float> %i.co, %i.cl
  store <2 x float> %i.cp, ptr %i.bs, align 4, !tbaa !18
  %i.cq = load <2 x float>, ptr %i.bt, align 4, !tbaa !18
  %i.cr = fsub <2 x float> %i.cq, %i.ck
  store <2 x float> %i.cr, ptr %i.bt, align 4, !tbaa !18
  %i.cs = fneg float %i.bp
  %24 = extractelement <3 x float> %21, i64 2
  %i.ct = fmul float %24, %i.cs
  %25 = extractelement <3 x float> %21, i64 0     ; 2 uses
  %i.cu = call float @llvm.fmuladd.f32(float %25, float %i.bq, float %i.ct) ; 2 uses
  %i.cv = fneg float %i.bq
  %26 = extractelement <3 x float> %21, i64 1
  %i.cw = fmul float %26, %i.cv
  %i.cx = call float @llvm.fmuladd.f32(float %25, float %i.bp, float %i.cw) ; 2 uses
  %i.cy = fadd float %i.cx, %i.cu
  %i.cz = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !18
  %i.db = fsub float %i.da, %i.cu
  store float %i.db, ptr %i.cz, align 4, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !18
  %i.de = fadd float %i.dd, %i.cy
  store float %i.de, ptr %i.dc, align 4, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !18
  %i.dh = fsub float %i.dg, %i.cx
  store float %i.dh, ptr %i.df, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.di = trunc nuw i64 %indvars.iv.next to i32
  %i.dj = icmp sgt i32 %0, %i.di
  br i1 %i.dj, label %bb.b, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.070.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.be, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.070.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN12_GLOBAL__N_19g96anglesIL18BondedKernelFlavor3EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readnone byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = fsub float 1.000000e+00, %7              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.071 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dv, %.loopexit ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %3, i64 %i.s
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %3, i64 %i.u
  %i.w = sext i32 %i.r to i64                     ; 2 uses
  %i.x = getelementptr inbounds [12 x i8], ptr %3, i64 %i.w
  %i.y = call fastcc noundef float @_ZN12_GLOBAL__N_113g96bond_angleEPKfS1_S1_PK5t_pbcPfS5_PiS6_(ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %6, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.z = sext i32 %i.l to i64
  %i.aa = getelementptr inbounds [48 x i8], ptr %2, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = load float, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.ai = fmul float %7, %i.ae
  %i.aj = call float @llvm.fmuladd.f32(float %i.f, float %i.ac, float %i.ai) ; 3 uses
  %i.ak = fmul float %7, %i.ah
  %i.al = call float @llvm.fmuladd.f32(float %i.f, float %i.af, float %i.ak)
  %i.am = fneg float %i.aj
  %i.an = fsub float %i.ae, %i.ac
  %i.ao = fmul float %i.an, 5.000000e-01
  %i.ap = fsub float %i.af, %i.ah
  %i.aq = fmul float %i.aj, %i.ap
  %i.ar = load float, ptr %8, align 4, !tbaa !18
  %i.as = load float, ptr %i.h, align 4, !tbaa !18 ; 4 uses
  %i.at = load float, ptr %i.j, align 4, !tbaa !18 ; 4 uses
  %i.au = fneg float %i.y                         ; 6 uses
  %i.av = getelementptr inbounds [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %4, i64 %i.u ; 4 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %4, i64 %i.w ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.az = load float, ptr %i.i, align 4, !tbaa !18 ; 4 uses
  %i.ba = load float, ptr %i.d, align 4, !tbaa !18 ; 4 uses
  %i.bb = fmul float %i.az, %i.az
  %i.bc = call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.bc)
  %sqrt = call float @llvm.sqrt.f32(float %i.bd)
  %i.be = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.bf = load float, ptr %i.g, align 4, !tbaa !18 ; 4 uses
  %i.bg = load float, ptr %i.c, align 4, !tbaa !18 ; 4 uses
  %i.bh = fmul float %i.bf, %i.bf
  %i.bi = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bh)
  %i.bj = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.bi)
  %sqrt68 = call float @llvm.sqrt.f32(float %i.bj)
  %i.bk = fdiv float 1.000000e+00, %sqrt68        ; 3 uses
  %i.bl = fsub float %i.y, %i.al                  ; 4 uses
  %i.bm = fmul float %i.bl, %i.bl                 ; 2 uses
  %i.bn = fmul float %i.aq, %i.bl
  %i.bo = call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.bm, float %i.bn)
  %i.bp = fadd float %i.ar, %i.bo
  store float %i.bp, ptr %8, align 4, !tbaa !18
  %i.bq = fmul float %i.be, %i.be                 ; 3 uses
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
end_hunk_2
