inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC1EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_:bb.a
  br label %.sink.split.i

.preheader.i:                                     ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.es = select i1 %i.w, ptr %.099260.i, ptr %9  ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.av, i32 %i.aw, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.es)
  %i.et = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.eu = sitofp <4 x i32> %i.et to <4 x float>   ; 4 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 1
  %i.ew = fmul float %i.bq, %i.ev
  %i.ex = extractelement <4 x float> %i.eu, i64 0
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.br, float %i.ew)
  %i.ez = extractelement <4 x float> %i.eu, i64 2
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.bv, float %i.ey)
  %i.fb = extractelement <4 x float> %i.eu, i64 3
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.bu, float %i.fa)
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ca, float 0.000000e+00)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.av, i32 %i.aw, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.es)
  %i.fe = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.ff = sitofp <4 x i32> %i.fe to <4 x float>   ; 4 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 1
  %i.fh = fmul float %i.bq, %i.fg
  %i.fi = extractelement <4 x float> %i.ff, i64 0
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.br, float %i.fh)
  %i.fk = extractelement <4 x float> %i.ff, i64 2
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.bv, float %i.fj)
  %i.fm = extractelement <4 x float> %i.ff, i64 3
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.bu, float %i.fl)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.ce, float %i.fd)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.av, i32 %i.aw, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.es)
  %i.fp = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.fq = sitofp <4 x i32> %i.fp to <4 x float>   ; 4 uses
  %i.fr = extractelement <4 x float> %i.fq, i64 1
  %i.fs = fmul float %i.bq, %i.fr
  %i.ft = extractelement <4 x float> %i.fq, i64 0
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.br, float %i.fs)
  %i.fv = extractelement <4 x float> %i.fq, i64 2
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.bv, float %i.fu)
  %i.fx = extractelement <4 x float> %i.fq, i64 3
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.bu, float %i.fw)
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.ch, float %i.fo)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.av, i32 %i.aw, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.es)
  %i.ga = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.gb = sitofp <4 x i32> %i.ga to <4 x float>   ; 4 uses
  %i.gc = extractelement <4 x float> %i.gb, i64 1
  %i.gd = fmul float %i.bq, %i.gc
  %i.ge = extractelement <4 x float> %i.gb, i64 0
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.br, float %i.gd)
  %i.gg = extractelement <4 x float> %i.gb, i64 2
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.bv, float %i.gf)
  %i.gi = extractelement <4 x float> %i.gb, i64 3
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.bu, float %i.gh)
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.cc, float %i.fz)
  %i.gl = fpext float %i.gk to double
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.i, %bb.h, %bb.g
  %.sink.i = phi double [ %i.er, %bb.h ], [ %i.gl, %.preheader.i ], [ %i.f, %bb.g ]
  store double %.sink.i, ptr %.099260.i, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.099260.i, i64 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi1EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !72

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi1EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC2EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [2 x [4 x i32]], align 16         ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 6 uses
  %.not142.i = icmp eq ptr %9, null
  br i1 %.not142.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load double, ptr %9, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi double [ %i.e, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.sroa.5.0.i = phi double [ %i.g, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 3 uses
  %.sroa.speculated203.i = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 16) ; 2 uses
  %.sroa.speculated194.i = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 16) ; 2 uses
  %i.i = sub nsw i32 0, %.sroa.speculated203.i
  %i.j = sitofp i32 %i.i to float                 ; 2 uses
  %i.k = shl nuw nsw i32 %.sroa.speculated203.i, 1
  %i.l = uitofp nneg i32 %i.k to float            ; 2 uses
  %i.m = sub nsw i32 0, %.sroa.speculated194.i
  %i.n = sitofp i32 %i.m to float                 ; 2 uses
  %i.o = shl nuw nsw i32 %.sroa.speculated194.i, 1
  %i.p = uitofp nneg i32 %i.o to float            ; 2 uses
  %i.q = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.r = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.s = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated176.i = add nsw i32 %i.s, -3
  %i.t = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.t, -3
  %i.u = fadd float %i.d, 2.000000e+00            ; 2 uses
  %i.v = fadd float %i.d, 3.000000e+00
  %i.w = fneg float %i.v                          ; 2 uses
  %i.x = icmp eq i32 %8, 5
  %i.y = trunc i64 %4 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.aa = shl i64 %4, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ac = mul i64 %4, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ac
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %.0136297.i = phi ptr [ %6, %.lr.ph.i ], [ %i.lb, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !48 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !48 ; 2 uses
  %i.aj = fcmp olt float %i.ag, %i.j
  %i.ak = select i1 %i.aj, float %i.j, float %i.ag ; 2 uses
  %i.al = fcmp ogt float %i.ak, %i.l
  %.sroa.speculated185.i = select i1 %i.al, float %i.l, float %i.ak ; 2 uses
  %i.am = fcmp olt float %i.ai, %i.n
  %i.an = select i1 %i.am, float %i.n, float %i.ai ; 2 uses
  %i.ao = fcmp ogt float %i.an, %i.p
  %.sroa.speculated182.i = select i1 %i.ao, float %i.p, float %i.an ; 2 uses
  %i.ap = tail call float @llvm.floor.f32(float %.sroa.speculated185.i)
  %i.aq = fptosi float %i.ap to i32               ; 3 uses
  %i.ar = tail call float @llvm.floor.f32(float %.sroa.speculated182.i)
  %i.as = fptosi float %i.ar to i32               ; 3 uses
  %i.at = sitofp i32 %i.aq to float
  %i.au = fsub float %.sroa.speculated185.i, %i.at ; 5 uses
  %i.av = sitofp i32 %i.as to float
  %i.aw = fsub float %.sroa.speculated182.i, %i.av ; 5 uses
  %i.ax = add nsw i32 %i.aq, -1                   ; 6 uses
  %i.ay = add nsw i32 %i.as, -1                   ; 6 uses
  %i.az = add nsw i32 %i.aq, 3
  %i.ba = icmp uge i32 %i.az, %i.q
  %i.bb = add nsw i32 %i.as, 3
  %i.bc = icmp uge i32 %i.bb, %i.r
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %bb.i
    i32 5, label %bb.j
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.be = icmp ult i32 %i.ax, %.sroa.speculated176.i
  %i.bf = icmp ult i32 %i.ay, %.sroa.speculated.i
  %i.bg = and i1 %i.be, %i.bf
  %i.bh = fmul float %i.au, %i.au                 ; 2 uses
  %i.bi = fsub float 1.000000e+00, %i.au          ; 3 uses
  %i.bj = fmul float %i.d, %i.au
  %i.bk = fmul float %i.bi, %i.bi
  %i.bl = fmul float %i.d, %i.bh
  %i.bm = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bj, i64 1
  %i.bo = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bk, i64 1
  %i.bq = fmul <2 x float> %i.bn, %i.bp           ; 12 uses
  %i.br = extractelement <2 x float> %i.bq, i64 1 ; 2 uses
  %i.bs = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.u, float %i.au, float %i.w)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bt, float 1.000000e+00) ; 9 uses
  %i.bv = fsub float 1.000000e+00, %i.br
  %i.bw = fsub float %i.bv, %i.bu
  %i.bx = fsub float %i.bw, %i.bs                 ; 9 uses
  %i.by = fmul float %i.aw, %i.aw                 ; 2 uses
  %i.bz = fsub float 1.000000e+00, %i.aw          ; 3 uses
  %i.ca = fmul float %i.bz, %i.bz
  %i.cb = fmul float %i.d, %i.aw
  %i.cc = fmul float %i.cb, %i.ca                 ; 4 uses
  %i.cd = fmul float %i.d, %i.by
  %i.ce = fmul float %i.bz, %i.cd                 ; 4 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.u, float %i.aw, float %i.w)
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cf, float 1.000000e+00) ; 4 uses
  %i.ch = fsub float 1.000000e+00, %i.cc
  %i.ci = fsub float %i.ch, %i.cg
  %i.cj = fsub float %i.ci, %i.ce                 ; 3 uses
  br i1 %i.bg, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.ck = mul nsw i32 %i.ay, %i.y
  %i.cl = shl nsw i32 %i.ax, 4
  %i.cm = add nsw i32 %i.ck, %i.cl
  %i.cn = sext i32 %i.cm to i64                   ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %3, i64 %i.cn ; 7 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !70
  %i.cq = fptrunc double %i.cp to float
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !70
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !70
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.da = load double, ptr %i.cz, align 8, !tbaa !70
  %i.db = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.cu, i64 1
  %i.dd = fptrunc <2 x double> %i.dc to <2 x float>
  %i.de = load double, ptr %i.cs, align 8, !tbaa !70
  %i.df = fptrunc double %i.de to float
  %i.dg = load <2 x double>, ptr %i.cr, align 8, !tbaa !70
  %i.dh = fptrunc <2 x double> %i.dg to <2 x float>
  %i.di = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.dj, %i.dh           ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.br, float %i.dl)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.df, float %i.bx, float %i.dm)
  %i.do = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dr = insertelement <2 x float> %i.dq, float %i.dn, i64 1
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.dp, <2 x float> %i.dr) ; 2 uses
  %10 = extractelement <2 x float> %i.ds, i64 1
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %i.cc, float 0.000000e+00)
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = getelementptr inbounds i8, ptr %i.z, i64 %i.cn ; 8 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !70
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !70
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !70
  %i.eb = insertelement <2 x double> poison, double %i.da, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dv, i64 1
  %i.ed = fptrunc <2 x double> %i.ec to <2 x float>
  %i.ee = fptrunc double %i.dx to float
  %i.ef = fptrunc double %i.cy to float
  %i.eg = fmul float %i.bu, %i.ee
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.bx, float %i.dt)
  %i.ei = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eg, i64 1
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.bq, <2 x float> %i.ej) ; 2 uses
  %12 = extractelement <2 x float> %i.ek, i64 0
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %i.cc, float 0.000000e+00)
  %i.el = extractelement <2 x float> %i.ek, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !70
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !70
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.es = load double, ptr %i.er, align 8, !tbaa !70
  %i.et = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.en, i64 1
  %i.ev = fptrunc <2 x double> %i.eu to <2 x float>
  %i.ew = load double, ptr %i.eo, align 8, !tbaa !70
  %i.ex = load double, ptr %i.dy, align 8, !tbaa !70
  %i.ey = fptrunc double %i.ew to float
  %i.ez = fptrunc double %i.ex to float
  %i.fa = fmul float %i.bu, %i.ey
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.bx, float %i.el)
  %i.fc = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.bq, <2 x float> %i.fd) ; 2 uses
  %14 = extractelement <2 x float> %i.fe, i64 0
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %i.cg, float %11)
  %i.ff = extractelement <2 x float> %i.fe, i64 1
  %i.fg = getelementptr inbounds i8, ptr %i.ab, i64 %i.cn ; 8 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !70
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !70
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !70
  %i.fn = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fh, i64 1
  %i.fp = fptrunc <2 x double> %i.fo to <2 x float>
  %i.fq = fptrunc double %i.fj to float
  %i.fr = fptrunc double %i.eq to float
  %i.fs = fmul float %i.bu, %i.fq
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.bx, float %i.ff)
  %i.fu = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fs, i64 1
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.bq, <2 x float> %i.fv) ; 2 uses
  %16 = extractelement <2 x float> %i.fw, i64 0
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %i.cg, float %13)
  %i.fx = extractelement <2 x float> %i.fw, i64 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !70
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !70
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !70
  %i.gf = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.fz, i64 1
  %i.gh = fptrunc <2 x double> %i.gg to <2 x float>
  %i.gi = load double, ptr %i.ga, align 8, !tbaa !70
  %i.gj = load double, ptr %i.fk, align 8, !tbaa !70
  %i.gk = fptrunc double %i.gi to float
  %i.gl = fptrunc double %i.gj to float
  %i.gm = fmul float %i.bu, %i.gk
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.bx, float %i.fx)
  %i.go = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.gm, i64 1
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.bq, <2 x float> %i.gp) ; 2 uses
  %18 = extractelement <2 x float> %i.gq, i64 0
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %i.cj, float %15)
  %i.gr = extractelement <2 x float> %i.gq, i64 1
  %i.gs = getelementptr inbounds i8, ptr %i.ad, i64 %i.cn ; 8 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !70
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !70
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !70
  %i.gz = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %i.gt, i64 1
  %i.hb = fptrunc <2 x double> %i.ha to <2 x float>
  %i.hc = fptrunc double %i.gv to float
  %i.hd = fptrunc double %i.gc to float
  %i.he = fmul float %i.bu, %i.hc
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.bx, float %i.gr)
  %i.hg = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.he, i64 1
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.bq, <2 x float> %i.hh) ; 2 uses
  %20 = extractelement <2 x float> %i.hi, i64 0
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %i.cj, float %17)
  %i.hj = extractelement <2 x float> %i.hi, i64 1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !70
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !70
  %i.hp = fptrunc double %i.ho to float
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !70
  %i.hs = fptrunc double %i.hr to float
  %i.ht = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hl, i64 1
  %i.hv = fptrunc <2 x double> %i.hu to <2 x float>
  %i.hw = load double, ptr %i.hm, align 8, !tbaa !70
  %i.hx = load double, ptr %i.gw, align 8, !tbaa !70
  %i.hy = fptrunc double %i.hw to float
  %i.hz = fptrunc double %i.hx to float
  %i.ia = fmul float %i.bu, %i.hy
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.bx, float %i.hj)
  %i.ic = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.id = insertelement <2 x float> %i.ic, float %i.ia, i64 1
  %i.ie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.bq, <2 x float> %i.id) ; 2 uses
  %i.if = extractelement <2 x float> %i.ie, i64 0
  %22 = tail call float @llvm.fmuladd.f32(float %i.if, float %i.ce, float %19)
  %23 = extractelement <2 x float> %i.ie, i64 1
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.bx, float %23)
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.bs, float %i.ig)
  %24 = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ce, float %21)
  %25 = fpext float %22 to double
  store double %25, ptr %.0136297.i, align 8, !tbaa !70
  %26 = fpext float %24 to double
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  store double %.sroa.0.0.i, ptr %.0136297.i, align 8
  br label %.sink.split.i

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.ii = select i1 %i.x, ptr %.0136297.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.ax, i32 %i.ay, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ii)
  %i.ij = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.ik = sitofp <4 x i32> %i.ij to <4 x float>   ; 4 uses
  %i.il = load <4 x i32>, ptr %i.ae, align 16, !tbaa !13
  %i.im = sitofp <4 x i32> %i.il to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.ax, i32 %i.ay, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ii)
  %i.in = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.io = sitofp <4 x i32> %i.in to <4 x float>   ; 4 uses
  %i.ip = load <4 x i32>, ptr %i.ae, align 16, !tbaa !13
  %i.iq = sitofp <4 x i32> %i.ip to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.ax, i32 %i.ay, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ii)
  %i.ir = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.is = sitofp <4 x i32> %i.ir to <4 x float>   ; 4 uses
  %i.it = load <4 x i32>, ptr %i.ae, align 16, !tbaa !13
  %i.iu = sitofp <4 x i32> %i.it to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.ax, i32 %i.ay, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ii)
  %i.iv = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.iw = sitofp <4 x i32> %i.iv to <4 x float>   ; 4 uses
  %i.ix = load <4 x i32>, ptr %i.ae, align 16, !tbaa !13
  %i.iy = sitofp <4 x i32> %i.ix to <4 x float>   ; 4 uses
  %i.iz = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jb = shufflevector <4 x float> %i.ik, <4 x float> %i.im, <2 x i32> <i32 1, i32 5>
  %i.jc = fmul <2 x float> %i.ja, %i.jb
  %i.jd = shufflevector <4 x float> %i.ik, <4 x float> %i.im, <2 x i32> <i32 0, i32 4>
  %i.je = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.je, <2 x float> %i.jc)
  %i.jg = shufflevector <4 x float> %i.ik, <4 x float> %i.im, <2 x i32> <i32 2, i32 6>
  %i.jh = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jg, <2 x float> %i.ji, <2 x float> %i.jf)
  %i.jk = shufflevector <4 x float> %i.ik, <4 x float> %i.im, <2 x i32> <i32 3, i32 7>
  %i.jl = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.jl, <2 x float> %i.jj)
  %i.jn = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.jo, <2 x float> zeroinitializer)
  %i.jq = shufflevector <4 x float> %i.io, <4 x float> %i.iq, <2 x i32> <i32 1, i32 5>
  %i.jr = fmul <2 x float> %i.ja, %i.jq
  %i.js = shufflevector <4 x float> %i.io, <4 x float> %i.iq, <2 x i32> <i32 0, i32 4>
  %i.jt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.je, <2 x float> %i.jr)
  %i.ju = shufflevector <4 x float> %i.io, <4 x float> %i.iq, <2 x i32> <i32 2, i32 6>
  %i.jv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ju, <2 x float> %i.ji, <2 x float> %i.jt)
  %i.jw = shufflevector <4 x float> %i.io, <4 x float> %i.iq, <2 x i32> <i32 3, i32 7>
  %i.jx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.jl, <2 x float> %i.jv)
  %i.jy = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.jz, <2 x float> %i.jp)
  %i.kb = shufflevector <4 x float> %i.is, <4 x float> %i.iu, <2 x i32> <i32 1, i32 5>
  %i.kc = fmul <2 x float> %i.ja, %i.kb
  %i.kd = shufflevector <4 x float> %i.is, <4 x float> %i.iu, <2 x i32> <i32 0, i32 4>
  %i.ke = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.je, <2 x float> %i.kc)
  %i.kf = shufflevector <4 x float> %i.is, <4 x float> %i.iu, <2 x i32> <i32 2, i32 6>
  %i.kg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.ji, <2 x float> %i.ke)
  %i.kh = shufflevector <4 x float> %i.is, <4 x float> %i.iu, <2 x i32> <i32 3, i32 7>
  %i.ki = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.jl, <2 x float> %i.kg)
  %i.kj = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> %i.kk, <2 x float> %i.ka)
  %i.km = shufflevector <4 x float> %i.iw, <4 x float> %i.iy, <2 x i32> <i32 1, i32 5>
  %i.kn = fmul <2 x float> %i.ja, %i.km
  %i.ko = shufflevector <4 x float> %i.iw, <4 x float> %i.iy, <2 x i32> <i32 0, i32 4>
  %i.kp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.je, <2 x float> %i.kn)
  %i.kq = shufflevector <4 x float> %i.iw, <4 x float> %i.iy, <2 x i32> <i32 2, i32 6>
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.ji, <2 x float> %i.kp)
  %i.ks = shufflevector <4 x float> %i.iw, <4 x float> %i.iy, <2 x i32> <i32 3, i32 7>
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.jl, <2 x float> %i.kr)
  %i.ku = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.kv, <2 x float> %i.kl)
  %i.kx = fpext <2 x float> %i.kw to <2 x double> ; 2 uses
  %i.ky = extractelement <2 x double> %i.kx, i64 0
  store double %i.ky, ptr %.0136297.i, align 8, !tbaa !70
  %i.kz = extractelement <2 x double> %i.kx, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.preheader.i, %bb.i, %bb.h
  %.sink.i = phi double [ %26, %bb.h ], [ %i.kz, %.preheader.preheader.i ], [ %.sroa.5.0.i, %bb.i ]
  %i.la = getelementptr inbounds nuw i8, ptr %.0136297.i, i64 8
  store double %.sink.i, ptr %i.la, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.0136297.i, i64 16
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !73

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC3EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [3 x [4 x i32]], align 16         ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 6 uses
  %.not180.i = icmp eq ptr %9, null
  br i1 %.not180.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load <2 x double>, ptr %9, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.6.0.i = phi double [ %i.g, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.h = phi <2 x double> [ %i.e, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 3 uses
  %.sroa.speculated241.i = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 16) ; 2 uses
  %.sroa.speculated232.i = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 16) ; 2 uses
  %i.j = sub nsw i32 0, %.sroa.speculated241.i
  %i.k = sitofp i32 %i.j to float                 ; 2 uses
  %i.l = shl nuw nsw i32 %.sroa.speculated241.i, 1
  %i.m = uitofp nneg i32 %i.l to float            ; 2 uses
  %i.n = sub nsw i32 0, %.sroa.speculated232.i
  %i.o = sitofp i32 %i.n to float                 ; 2 uses
  %i.p = shl nuw nsw i32 %.sroa.speculated232.i, 1
  %i.q = uitofp nneg i32 %i.p to float            ; 2 uses
  %i.r = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.s = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.t = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated214.i = add nsw i32 %i.t, -3
  %i.u = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.u, -3
  %i.v = fadd float %i.d, 2.000000e+00            ; 2 uses
  %i.w = fadd float %i.d, 3.000000e+00
  %i.x = fneg float %i.w                          ; 2 uses
  %i.y = icmp eq i32 %8, 5
  %i.z = trunc i64 %4 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.ab = shl i64 %4, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %i.ad = mul i64 %4, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %i.ad
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %.0174335.i = phi ptr [ %6, %.lr.ph.i ], [ %i.nl, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !48 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !48 ; 2 uses
  %i.ak = fcmp olt float %i.ah, %i.k
  %i.al = select i1 %i.ak, float %i.k, float %i.ah ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.m
  %.sroa.speculated223.i = select i1 %i.am, float %i.m, float %i.al ; 2 uses
  %i.an = fcmp olt float %i.aj, %i.o
  %i.ao = select i1 %i.an, float %i.o, float %i.aj ; 2 uses
  %i.ap = fcmp ogt float %i.ao, %i.q
  %.sroa.speculated220.i = select i1 %i.ap, float %i.q, float %i.ao ; 2 uses
  %i.aq = tail call float @llvm.floor.f32(float %.sroa.speculated223.i)
  %i.ar = fptosi float %i.aq to i32               ; 3 uses
  %i.as = tail call float @llvm.floor.f32(float %.sroa.speculated220.i)
  %i.at = fptosi float %i.as to i32               ; 3 uses
  %i.au = sitofp i32 %i.ar to float
  %i.av = fsub float %.sroa.speculated223.i, %i.au ; 5 uses
  %i.aw = sitofp i32 %i.at to float
  %i.ax = fsub float %.sroa.speculated220.i, %i.aw ; 5 uses
  %i.ay = add nsw i32 %i.ar, -1                   ; 6 uses
  %i.az = add nsw i32 %i.at, -1                   ; 6 uses
  %i.ba = add nsw i32 %i.ar, 3
  %i.bb = icmp uge i32 %i.ba, %i.r
  %i.bc = add nsw i32 %i.at, 3
  %i.bd = icmp uge i32 %i.bc, %i.s
  %i.be = or i1 %i.bb, %i.bd
  br i1 %i.be, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %bb.i
    i32 5, label %bb.j
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.bf = icmp ult i32 %i.ay, %.sroa.speculated214.i
  %i.bg = icmp ult i32 %i.az, %.sroa.speculated.i
  %i.bh = and i1 %i.bf, %i.bg
  %i.bi = fmul float %i.av, %i.av                 ; 2 uses
  %i.bj = fsub float 1.000000e+00, %i.av          ; 3 uses
  %i.bk = fmul float %i.d, %i.av
  %i.bl = fmul float %i.bj, %i.bj
  %i.bm = fmul float %i.d, %i.bi
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bk, i64 1
  %i.bp = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bl, i64 1
  %i.br = fmul <2 x float> %i.bo, %i.bq           ; 9 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1 ; 6 uses
  %i.bt = extractelement <2 x float> %i.br, i64 0 ; 6 uses
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.v, float %i.av, float %i.x)
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bu, float 1.000000e+00) ; 11 uses
  %i.bw = fsub float 1.000000e+00, %i.bs
  %i.bx = fsub float %i.bw, %i.bv
  %i.by = fsub float %i.bx, %i.bt                 ; 10 uses
  %i.bz = fmul float %i.ax, %i.ax                 ; 2 uses
  %i.ca = fsub float 1.000000e+00, %i.ax          ; 3 uses
  %i.cb = fmul float %i.ca, %i.ca
  %i.cc = fmul float %i.d, %i.ax
  %i.cd = fmul float %i.cc, %i.cb                 ; 5 uses
  %i.ce = fmul float %i.d, %i.bz
  %i.cf = fmul float %i.ca, %i.ce                 ; 5 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.v, float %i.ax, float %i.x)
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.cg, float 1.000000e+00) ; 5 uses
  %i.ci = fsub float 1.000000e+00, %i.cd
  %i.cj = fsub float %i.ci, %i.ch
  %i.ck = fsub float %i.cj, %i.cf                 ; 4 uses
  br i1 %i.bh, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.cl = mul nsw i32 %i.az, %i.z
  %i.cm = mul nsw i32 %i.ay, 24
  %i.cn = add nsw i32 %i.cl, %i.cm
  %i.co = sext i32 %i.cn to i64                   ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %3, i64 %i.co ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !70
  %i.cv = fptrunc double %i.cu to float
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !70
  %i.cy = fptrunc double %i.cx to float
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.da = load double, ptr %i.cz, align 8, !tbaa !70
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.dc = load double, ptr %i.db, align 8, !tbaa !70
  %i.dd = fmul float %i.bv, %i.cy
  %i.de = getelementptr inbounds i8, ptr %i.aa, i64 %i.co ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = load double, ptr %i.di, align 8, !tbaa !70
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !70
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !70
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.dp = load double, ptr %i.do, align 8, !tbaa !70
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.bs, float %i.dd)
  %i.dr = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.dj, i64 1
  %i.dt = fptrunc <2 x double> %i.ds to <2 x float>
  %i.du = fptrunc double %i.dl to float
  %i.dv = fptrunc double %i.da to float
  %i.dw = fmul float %i.bv, %i.du
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.by, float %i.dq)
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dw, i64 1
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.br, <2 x float> %i.dz) ; 2 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 0
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.cd, float 0.000000e+00)
  %i.ed = extractelement <2 x float> %i.ea, i64 1
end_hunk_0
