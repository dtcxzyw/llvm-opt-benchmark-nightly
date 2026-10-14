Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform?download=true
inline.NumInlined: 2588
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK4pbrt9Transform9DecomposeEPNS_7Vector3IfEEPNS_12SquareMatrixILi4EEES6_:bb.a
  %.sroa.speculated = select i1 %i.ba, float %i.az, float 0.000000e+00 ; 2 uses
  %i.bb = shufflevector <8 x float> %i.ak, <8 x float> poison, <2 x i32> <i32 4, i32 5>
  %i.bc = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 4, i32 5>
  %i.bd = fsub <2 x float> %i.bb, %i.bc
  %i.be = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bd) ; 2 uses
  %shift234 = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop235 = fadd <2 x float> %i.be, %shift234
  %i.bf = shufflevector <8 x float> %i.al, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bg = insertelement <2 x float> %i.bf, float %.sroa.22.0.copyload, i64 1
  %i.bh = shufflevector <8 x float> %i.ap, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bi = fsub <2 x float> %i.bg, %i.bh
  %i.bj = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bi) ; 2 uses
  %shift237 = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop238 = fadd <2 x float> %i.bj, %shift237
  %i.bk = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <2 x i32> <i32 6, i32 10>
  %i.bl = shufflevector <8 x float> %i.ao, <8 x float> %i.ap, <2 x i32> <i32 6, i32 10>
  %i.bm = fsub <2 x float> %i.bk, %i.bl
  %i.bn = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bm) ; 2 uses
  %foldExtExtBinop240 = fadd <2 x float> %foldExtExtBinop235, %i.bn
  %i.bo = extractelement <2 x float> %foldExtExtBinop240, i64 0 ; 2 uses
  %i.bp = fcmp olt float %.sroa.speculated, %i.bo
  %.sroa.speculated.1 = select i1 %i.bp, float %i.bo, float %.sroa.speculated ; 2 uses
  %shift242 = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop243 = fadd <2 x float> %foldExtExtBinop238, %shift242
  %i.bq = extractelement <2 x float> %foldExtExtBinop243, i64 0 ; 2 uses
  %i.br = fcmp olt float %.sroa.speculated.1, %i.bq
  %.sroa.speculated.2 = select i1 %i.br, float %i.bq, float %.sroa.speculated.1
  store <8 x float> %i.ao, ptr %2, align 4
  store <8 x float> %i.ap, ptr %.sroa.14209.0..sroa_idx210, align 4
  %i.bs = add nuw nsw i32 %.025, 1
  %i.bt = icmp samesign ult i32 %.025, 99
  %i.bu = fpext float %.sroa.speculated.2 to double
  %i.bv = fcmp ogt double %i.bu, 1.000000e-04
  %i.bw = select i1 %i.bt, i1 %i.bv, i1 false
  %i.bx = shufflevector <8 x float> %i.ao, <8 x float> %i.ap, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.by = shufflevector <8 x float> %i.ao, <8 x float> %i.ap, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  br i1 %i.bw, label %bb.b, label %bb.d, !llvm.loop !119

bb.d:                                             ; preds = %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !124
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %4, ptr noundef nonnull align 4 dereferenceable(64) %2), !noalias !124
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ca = load i8, ptr %i.bz, align 16, !tbaa !14, !range !15, !noalias !124, !noundef !16
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pbrt8LogFatalIJRA16_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 1435, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(16) @.str.26) #29, !noalias !124
  unreachable

_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit50: ; preds = %bb.d
  %i.cc = extractelement <2 x float> %i.n, i64 1  ; 3 uses
  %i.cd = extractelement <2 x float> %i.q, i64 1  ; 3 uses
  %i.ce = extractelement <2 x float> %i.q, i64 0  ; 3 uses
  %i.cf = extractelement <2 x float> %i.n, i64 0  ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 16 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 16 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 4 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 8 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 16 ; 4 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52
  %.sroa.16.0.copyload = load float, ptr %.sroa.16.0..sroa_idx, align 4 ; 4 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.17.0.copyload = load float, ptr %.sroa.17.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !9 ; 4 uses
  %i.cg = call noundef float @llvm.fma.f32(float %.sroa.7.0.copyload, float %.sroa.6188.0.copyload, float 0.000000e+00)
  %i.ch = call noundef float @llvm.fma.f32(float %.sroa.7.0.copyload, float 0.000000e+00, float 0.000000e+00)
  %i.ci = extractelement <2 x float> %i.i, i64 0  ; 3 uses
  %i.cj = call noundef float @llvm.fma.f32(float %.sroa.11.0.copyload, float %i.ci, float 0.000000e+00)
  %i.ck = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float %i.m, float %i.cj)
  %i.cl = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload, float %i.p, float %i.ck)
  %i.cm = call noundef float @llvm.fma.f32(float %.sroa.14.0.copyload, float 0.000000e+00, float %i.cl)
  %i.cn = extractelement <2 x float> %i.i, i64 1  ; 3 uses
  %i.co = call noundef float @llvm.fma.f32(float %.sroa.11.0.copyload, float %i.cn, float 0.000000e+00)
  %i.cp = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float %i.cf, float %i.co)
  %i.cq = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload, float %i.ce, float %i.cp)
  %i.cr = call noundef float @llvm.fma.f32(float %.sroa.14.0.copyload, float 0.000000e+00, float %i.cq)
  %i.cs = call noundef float @llvm.fma.f32(float %.sroa.11.0.copyload, float %.sroa.6188.0.copyload, float 0.000000e+00)
  %i.ct = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float %i.cc, float %i.cs)
  %i.cu = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload, float %i.cd, float %i.ct)
  %i.cv = call noundef float @llvm.fma.f32(float %.sroa.14.0.copyload, float 0.000000e+00, float %i.cu)
  %i.cw = call noundef float @llvm.fma.f32(float %.sroa.11.0.copyload, float 0.000000e+00, float 0.000000e+00)
  %i.cx = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float 0.000000e+00, float %i.cw)
  %i.cy = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload, float 0.000000e+00, float %i.cx)
  %i.cz = fadd float %.sroa.14.0.copyload, %i.cy
  %i.da = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float %i.ci, float 0.000000e+00)
  %i.db = call noundef float @llvm.fma.f32(float %.sroa.16.0.copyload, float %i.m, float %i.da)
  %i.dc = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float %i.p, float %i.db)
  %i.dd = call noundef float @llvm.fma.f32(float %.sroa.18.0.copyload, float 0.000000e+00, float %i.dc)
  %i.de = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float %i.cn, float 0.000000e+00)
  %i.df = call noundef float @llvm.fma.f32(float %.sroa.16.0.copyload, float %i.cf, float %i.de)
  %i.dg = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float %i.ce, float %i.df)
  %i.dh = call noundef float @llvm.fma.f32(float %.sroa.18.0.copyload, float 0.000000e+00, float %i.dg)
  %i.di = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float %.sroa.6188.0.copyload, float 0.000000e+00)
  %i.dj = call noundef float @llvm.fma.f32(float %.sroa.16.0.copyload, float %i.cc, float %i.di)
  %i.dk = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float %i.cd, float %i.dj)
  %i.dl = call noundef float @llvm.fma.f32(float %.sroa.18.0.copyload, float 0.000000e+00, float %i.dk)
  %i.dm = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float 0.000000e+00, float 0.000000e+00)
  %i.dn = call noundef float @llvm.fma.f32(float %.sroa.16.0.copyload, float 0.000000e+00, float %i.dm)
  %i.do = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float 0.000000e+00, float %i.dn)
  %i.dp = fadd float %.sroa.18.0.copyload, %i.do
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dq = load <4 x float>, ptr %4, align 16      ; 5 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.dr = load <3 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !124
  %i.ds = extractelement <4 x float> %i.dq, i64 0 ; 3 uses
  %i.dt = call noundef float @llvm.fma.f32(float %i.ds, float %i.ci, float 0.000000e+00)
  %i.du = call noundef float @llvm.fma.f32(float %.sroa.4.0.copyload, float %i.m, float %i.dt)
  %i.dv = call noundef float @llvm.fma.f32(float %.sroa.5.0.copyload, float %i.p, float %i.du)
  %i.dw = call noundef float @llvm.fma.f32(float %.sroa.6.0.copyload, float 0.000000e+00, float %i.dv)
  %i.dx = call noundef float @llvm.fma.f32(float %i.ds, float %i.cn, float 0.000000e+00)
  %i.dy = call noundef float @llvm.fma.f32(float %.sroa.4.0.copyload, float %i.cf, float %i.dx)
  %i.dz = call noundef float @llvm.fma.f32(float %.sroa.5.0.copyload, float %i.ce, float %i.dy)
  %i.ea = call noundef float @llvm.fma.f32(float %.sroa.6.0.copyload, float 0.000000e+00, float %i.dz)
  %i.eb = call noundef float @llvm.fma.f32(float %i.ds, float %.sroa.6188.0.copyload, float 0.000000e+00)
  %i.ec = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ed, <2 x float> %i.i, <2 x float> zeroinitializer)
  %i.ef = shufflevector <3 x float> %i.dr, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.eg = shufflevector <4 x float> %i.dq, <4 x float> %i.ef, <4 x i32> <i32 1, i32 0, i32 4, i32 4>
  %i.eh = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.ej = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> %i.ei, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.el = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.eb, i64 0
  %i.em = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eo = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.eg, <4 x float> %i.ek, <4 x float> %i.en)
  %i.ep = shufflevector <4 x float> %i.dq, <4 x float> %i.ef, <4 x i32> <i32 2, i32 1, i32 5, i32 5>
  %i.eq = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.es = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.es, <4 x float> %i.er, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eu = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ep, <4 x float> %i.et, <4 x float> %i.eo)
  %i.ev = shufflevector <4 x float> %i.dq, <4 x float> %i.ef, <4 x i32> <i32 3, i32 2, i32 6, i32 6>
  %i.ew = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ev, <4 x float> zeroinitializer, <4 x float> %i.eu)
  %i.ex = shufflevector <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.dq, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  %i.ey = fadd <4 x float> %i.ex, %i.ew
  %i.ez = extractelement <3 x float> %i.dr, i64 0 ; 2 uses
  %i.fa = call noundef float @llvm.fma.f32(float %i.ez, float %i.cc, float %i.cg)
  %i.fb = call noundef float @llvm.fma.f32(float %.sroa.9.0.copyload, float %i.cd, float %i.fa)
  %i.fc = call noundef float @llvm.fma.f32(float %.sroa.10.0.copyload, float 0.000000e+00, float %i.fb)
  %i.fd = call noundef float @llvm.fma.f32(float %i.ez, float 0.000000e+00, float %i.ch)
  %i.fe = call noundef float @llvm.fma.f32(float %.sroa.9.0.copyload, float 0.000000e+00, float %i.fd)
  %i.ff = fadd float %.sroa.10.0.copyload, %i.fe
  store float %i.dw, ptr %3, align 4
  store float %i.ea, ptr %.sroa.467.0..sroa_idx, align 4
  store <4 x float> %i.ey, ptr %.sroa.568.0..sroa_idx, align 4
  %.sroa.972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.fc, ptr %.sroa.972.0..sroa_idx, align 4
  %.sroa.1073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float %i.ff, ptr %.sroa.1073.0..sroa_idx, align 4
  %.sroa.1174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.cm, ptr %.sroa.1174.0..sroa_idx, align 4
  %.sroa.1275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float %i.cr, ptr %.sroa.1275.0..sroa_idx, align 4
  %.sroa.1376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.cv, ptr %.sroa.1376.0..sroa_idx, align 4
  %.sroa.1477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float %i.cz, ptr %.sroa.1477.0..sroa_idx, align 4
  %.sroa.1578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.dd, ptr %.sroa.1578.0..sroa_idx, align 4
  %.sroa.1679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store float %i.dh, ptr %.sroa.1679.0..sroa_idx, align 4
  %.sroa.1780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store float %i.dl, ptr %.sroa.1780.0..sroa_idx, align 4
  %.sroa.1881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60
  store float %i.dp, ptr %.sroa.1881.0..sroa_idx, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind noalias nofree writable sret(%"class.pbrt::SurfaceInteraction") align 8 captures(none) initializes((64, 248)) %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i8 0, i64 184, i1 false)
  tail call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.0158.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 4 uses
  %.sroa.2159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %3 = load <1 x float>, ptr %.sroa.2159.0..sroa_idx, align 8 ; 2 uses
  %i.c = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load float, ptr %i.g, align 4, !tbaa !11 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load float, ptr %i.i, align 4, !tbaa !11 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 4, !tbaa !11 ; 5 uses
  %i.m = load <2 x float>, ptr %i.d, align 4, !tbaa !11 ; 6 uses
  %i.n = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.m
  %i.p = load <2 x float>, ptr %i.e, align 4, !tbaa !11 ; 6 uses
  %i.q = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = fmul <2 x float> %i.q, %i.p
  %i.s = fadd <2 x float> %i.o, %i.r
  %i.t = load <2 x float>, ptr %i.f, align 4, !tbaa !11 ; 6 uses
  %i.u = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.t
  %i.w = fadd <2 x float> %i.s, %i.v              ; 3 uses
  %i.x = fmul <2 x float> %i.w, %i.w              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.z, align 4 ; 2 uses
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4 ; 3 uses
  %i.aa = load float, ptr %1, align 4, !tbaa !11  ; 7 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 0 ; 3 uses
  %i.ab = fmul float %.sroa.03.0.vec.extract.i, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11 ; 7 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 1 ; 3 uses
  %i.ae = fmul float %.sroa.03.4.vec.extract.i, %i.ad
  %i.af = fadd float %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !11 ; 7 uses
  %i.ai = fmul float %.sroa.2141.0.copyload, %i.ah
  %i.aj = fadd float %i.af, %i.ai                 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !11 ; 7 uses
  %i.am = fmul float %.sroa.03.0.vec.extract.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !11 ; 7 uses
  %i.ap = fmul float %.sroa.03.4.vec.extract.i, %i.ao
  %i.aq = fadd float %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load float, ptr %i.ar, align 4, !tbaa !11 ; 7 uses
  %i.at = fmul float %.sroa.2141.0.copyload, %i.as
  %i.au = fadd float %i.aq, %i.at                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11 ; 7 uses
  %i.ax = fmul float %.sroa.03.0.vec.extract.i, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11 ; 7 uses
  %i.ba = fmul float %.sroa.03.4.vec.extract.i, %i.az
  %i.bb = fadd float %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11 ; 7 uses
  %i.be = fmul float %.sroa.2141.0.copyload, %i.bd
  %i.bf = fadd float %i.bb, %i.be                 ; 3 uses
  %i.bg = fmul float %i.aj, %i.aj
  %i.bh = fmul float %i.au, %i.au
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = fmul float %i.bf, %i.bf
  %i.bk = fadd float %i.bi, %i.bj
  %sqrt.i.i206 = tail call noundef float @llvm.sqrt.f32(float %i.bk) ; 3 uses
  %i.bl = fdiv float %i.aj, %sqrt.i.i206
  %i.bm = fdiv float %i.au, %sqrt.i.i206
  %i.bn = fdiv float %i.bf, %sqrt.i.i206
  %.sroa.0.0.vec.insert.i.i207 = insertelement <2 x float> poison, float %i.bl, i64 0
  %.sroa.0.4.vec.insert.i.i208 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i207, float %i.bm, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i.i208, ptr %i.bo, align 4
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bn, ptr %.sroa.4145.0..sroa_idx, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bq, ptr %i.br, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bw = load i64, ptr %i.bu, align 4
  store i64 %i.bw, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0124.0.copyload = load <2 x float>, ptr %i.bx, align 8 ; 2 uses
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.2125.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i211 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 0 ; 3 uses
  %i.by = fmul float %i.aa, %.sroa.03.0.vec.extract.i211
  %.sroa.03.4.vec.extract.i212 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 1 ; 3 uses
  %i.bz = fmul float %i.ad, %.sroa.03.4.vec.extract.i212
  %i.ca = fadd float %i.by, %i.bz
  %i.cb = fmul float %i.ah, %.sroa.2125.0.copyload
  %i.cc = fadd float %i.cb, %i.ca
  %i.cd = fmul float %i.al, %.sroa.03.0.vec.extract.i211
  %i.ce = fmul float %i.ao, %.sroa.03.4.vec.extract.i212
  %i.cf = fadd float %i.cd, %i.ce
  %i.cg = fmul float %i.as, %.sroa.2125.0.copyload
  %i.ch = fadd float %i.cg, %i.cf
  %i.ci = fmul float %i.aw, %.sroa.03.0.vec.extract.i211
  %i.cj = fmul float %i.az, %.sroa.03.4.vec.extract.i212
  %i.ck = fadd float %i.ci, %i.cj
  %i.cl = fmul float %i.bd, %.sroa.2125.0.copyload
  %i.cm = fadd float %i.cl, %i.ck
  %.sroa.046.0.vec.insert.i213 = insertelement <2 x float> poison, float %i.cc, i64 0
  %.sroa.046.4.vec.insert.i214 = insertelement <2 x float> %.sroa.046.0.vec.insert.i213, float %i.ch, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.046.4.vec.insert.i214, ptr %i.cn, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.cm, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 92
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.co, align 4 ; 2 uses
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %.sroa.2115.0.copyload = load float, ptr %.sroa.2115.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i217 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 0 ; 3 uses
  %i.cp = fmul float %i.aa, %.sroa.03.0.vec.extract.i217
  %.sroa.03.4.vec.extract.i218 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 1 ; 3 uses
  %i.cq = fmul float %i.ad, %.sroa.03.4.vec.extract.i218
  %i.cr = fadd float %i.cp, %i.cq
  %i.cs = fmul float %i.ah, %.sroa.2115.0.copyload
  %i.ct = fadd float %i.cs, %i.cr
  %i.cu = fmul float %i.al, %.sroa.03.0.vec.extract.i217
  %i.cv = fmul float %i.ao, %.sroa.03.4.vec.extract.i218
  %i.cw = fadd float %i.cu, %i.cv
  %i.cx = fmul float %i.as, %.sroa.2115.0.copyload
  %i.cy = fadd float %i.cx, %i.cw
  %i.cz = fmul float %i.aw, %.sroa.03.0.vec.extract.i217
  %i.da = fmul float %i.az, %.sroa.03.4.vec.extract.i218
  %i.db = fadd float %i.cz, %i.da
  %i.dc = fmul float %i.bd, %.sroa.2115.0.copyload
  %i.dd = fadd float %i.dc, %i.db
  %.sroa.046.0.vec.insert.i219 = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.046.4.vec.insert.i220 = insertelement <2 x float> %.sroa.046.0.vec.insert.i219, float %i.cy, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %.sroa.046.4.vec.insert.i220, ptr %i.de, align 4
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.dd, ptr %.sroa.4117.0..sroa_idx, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.0104.0.copyload = load <2 x float>, ptr %i.df, align 8 ; 4 uses
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.2105.0.copyload = load float, ptr %.sroa.2105.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i223 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i224 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 1
  %i.dg = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.m, %i.dg
  %i.di = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = fmul <2 x float> %i.p, %i.di
  %i.dk = fadd <2 x float> %i.dh, %i.dj
  %i.dl = insertelement <2 x float> poison, float %.sroa.2105.0.copyload, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.t, %i.dm
  %i.do = fadd <2 x float> %i.dn, %i.dk
  %i.dp = fmul float %i.h, %.sroa.012.0.vec.extract.i223
  %i.dq = fmul float %i.j, %.sroa.012.4.vec.extract.i224
  %i.dr = fadd float %i.dp, %i.dq
  %i.ds = fmul float %i.l, %.sroa.2105.0.copyload
  %i.dt = fadd float %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x float> %i.do, ptr %i.du, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.dt, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 116
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.dv, align 4 ; 4 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i229 = extractelement <2 x float> %.sroa.094.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i230 = extractelement <2 x float> %.sroa.094.0.copyload, i64 1
  %i.dw = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.m, %i.dw
  %i.dy = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x float> %i.p, %i.dy
  %i.ea = fadd <2 x float> %i.dx, %i.dz
  %i.eb = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.t, %i.ec
  %i.ee = fadd <2 x float> %i.ed, %i.ea
  %i.ef = fmul float %i.h, %.sroa.012.0.vec.extract.i229
  %i.eg = fmul float %i.j, %.sroa.012.4.vec.extract.i230
  %i.eh = fadd float %i.ef, %i.eg
  %i.ei = fmul float %i.l, %.sroa.295.0.copyload
  %i.ej = fadd float %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.ee, ptr %i.ek, align 4
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.ej, ptr %.sroa.497.0..sroa_idx, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.sroa.082.0.copyload = load <2 x float>, ptr %i.el, align 8 ; 4 uses
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 8 ; 2 uses
  %i.em = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.m, %i.em
  %i.eo = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = fmul <2 x float> %i.p, %i.eo
  %i.eq = fadd <2 x float> %i.en, %i.ep
  %i.er = insertelement <2 x float> poison, float %.sroa.283.0.copyload, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %i.t, %i.es
  %i.eu = fadd <2 x float> %i.et, %i.eq           ; 3 uses
  %i.ev = fmul <2 x float> %i.eu, %i.eu           ; 2 uses
  %i.ew = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> %.sroa.082.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ex = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ew, %i.ey
  %i.fa = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> %.sroa.082.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fb = insertelement <2 x float> poison, float %i.j, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.fa, %i.fc
  %i.fe = fadd <2 x float> %i.ez, %i.fd
  %i.ff = insertelement <2 x float> poison, float %i.l, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = insertelement <2 x float> %i.c, float %.sroa.283.0.copyload, i64 1
  %i.fi = fmul <2 x float> %i.fg, %i.fh
  %i.fj = fadd <2 x float> %i.fe, %i.fi           ; 3 uses
  %i.fk = fmul <2 x float> %i.fj, %i.fj
end_hunk_0
begin_hunk_1_@_ZNK4pbrt9TransformclERKNS_11InteractionE:bb.a
  %foldExtExtBinop67 = fadd <2 x float> %i.bq, %shift66
  %i.br = extractelement <2 x float> %foldExtExtBinop67, i64 0
  %i.bs = fmul float %i.bo, %i.bo
  %i.bt = fadd float %i.br, %i.bs                 ; 2 uses
  %i.bu = fcmp ogt float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %sqrt.i.i56 = tail call noundef float @llvm.sqrt.f32(float %i.bt) ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %sqrt.i.i56, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x float> %i.bg, %i.bw
  %i.by = fdiv float %i.bo, %sqrt.i.i56
  store <2 x float> %i.bx, ptr %i.bp, align 4
  store float %i.by, ptr %.sroa.419.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ca, ptr %i.cb, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !46
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt9Transform12ApplyInverseERKNS_11InteractionE(ptr dead_on_unwind noalias nofree writable sret(%"class.pbrt::Interaction") align 8 captures(none) initializes((64, 80)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Transform", align 4   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(128) %1, i64 64, i1 false), !tbaa.struct !17
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.040.0.copyload = load <2 x float>, ptr %i.d, align 8 ; 4 uses
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.241.0.copyload = load float, ptr %.sroa.241.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %.sroa.040.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %.sroa.040.0.copyload, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.g = load <2 x float>, ptr %i.c, align 4, !tbaa !11
  %i.h = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %i.h, %i.g
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !11
  %i.k = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fmul <2 x float> %i.k, %i.j
  %i.m = fadd <2 x float> %i.i, %i.l
  %i.n = load <2 x float>, ptr %i.f, align 4, !tbaa !11
  %i.o = insertelement <2 x float> poison, float %.sroa.241.0.copyload, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = fadd <2 x float> %i.m, %i.q              ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.t = load float, ptr %i.s, align 4, !tbaa !11
  %i.u = fmul float %.sroa.012.0.vec.extract.i, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.w = load float, ptr %i.v, align 4, !tbaa !11
  %i.x = fmul float %.sroa.012.4.vec.extract.i, %i.w
  %i.y = fadd float %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aa = load float, ptr %i.z, align 4, !tbaa !11
  %i.ab = fmul float %.sroa.241.0.copyload, %i.aa
  %i.ac = fadd float %i.y, %i.ab                  ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store <2 x float> %i.r, ptr %i.ad, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.ac, ptr %.sroa.443.0..sroa_idx, align 8
  %i.ae = fmul <2 x float> %i.r, %i.r             ; 2 uses
  %shift = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ae, %shift
  %i.af = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ag = fmul float %i.ac, %i.ac
  %i.ah = fadd float %i.af, %i.ag                 ; 2 uses
  %i.ai = fcmp ogt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ah) ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fdiv <2 x float> %i.r, %i.ak
  %i.am = fdiv float %i.ac, %sqrt.i.i
  store <2 x float> %i.al, ptr %i.ad, align 8
  store float %i.am, ptr %.sroa.443.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ap = load i64, ptr %i.an, align 4
  store i64 %i.ap, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.aq, align 4 ; 3 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.217.0.copyload = load float, ptr %.sroa.217.0..sroa_idx, align 4 ; 2 uses
  %i.ar = shufflevector <2 x float> %.sroa.016.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.at = load <5 x float>, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.au = shufflevector <5 x float> %i.at, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.av = shufflevector <5 x float> %i.at, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.aw = fmul <2 x float> %i.ar, %i.av
  %i.ax = load <2 x float>, ptr %i.as, align 4, !tbaa !11 ; 2 uses
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.au, <4 x float> %i.ay, <2 x i32> <i32 0, i32 4>
  %i.ba = fmul <2 x float> %.sroa.016.0.copyload, %i.az
  %i.bb = fadd <2 x float> %i.aw, %i.ba
  %i.bc = insertelement <2 x float> poison, float %.sroa.217.0.copyload, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <2 x float> %i.ax, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <5 x float> %i.at, <5 x float> %i.be, <2 x i32> <i32 2, i32 6>
  %i.bg = fmul <2 x float> %i.bd, %i.bf
  %i.bh = fadd <2 x float> %i.bb, %i.bg           ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = load <2 x float>, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul <2 x float> %.sroa.016.0.copyload, %i.bj ; 2 uses
  %shift63 = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fadd <2 x float> %i.bk, %shift63
  %i.bl = extractelement <2 x float> %foldExtExtBinop64, i64 0
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11
  %i.bo = fmul float %.sroa.217.0.copyload, %i.bn
  %i.bp = fadd float %i.bl, %i.bo                 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store <2 x float> %i.bh, ptr %i.bq, align 4
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store float %i.bp, ptr %.sroa.419.0..sroa_idx, align 4
  %i.br = fmul <2 x float> %i.bh, %i.bh           ; 2 uses
  %shift66 = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop67 = fadd <2 x float> %i.br, %shift66
  %i.bs = extractelement <2 x float> %foldExtExtBinop67, i64 0
  %i.bt = fmul float %i.bp, %i.bp
  %i.bu = fadd float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fcmp ogt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %sqrt.i.i56 = call noundef float @llvm.sqrt.f32(float %i.bu) ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %sqrt.i.i56, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x float> %i.bh, %i.bx
  %i.bz = fdiv float %i.bp, %sqrt.i.i56
  store <2 x float> %i.by, ptr %i.bq, align 4
  store float %i.bz, ptr %.sroa.419.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cb, ptr %i.cc, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt9Transform12ApplyInverseERKNS_18SurfaceInteractionE(ptr dead_on_unwind noalias nofree writable sret(%"class.pbrt::SurfaceInteraction") align 8 captures(none) initializes((64, 248)) %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i8 0, i64 184, i1 false)
  tail call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload = load float, ptr %i.b, align 4 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 7 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.17.0.copyload = load float, ptr %.sroa.17.0..sroa_idx, align 4 ; 7 uses
  %.sroa.24290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.24290.0.copyload = load float, ptr %.sroa.24290.0..sroa_idx, align 4 ; 7 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.31.0.copyload = load float, ptr %.sroa.31.0..sroa_idx, align 4 ; 7 uses
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.38.0.copyload = load float, ptr %.sroa.38.0..sroa_idx, align 4 ; 7 uses
  %.sroa.45309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.45309.0.copyload = load float, ptr %.sroa.45309.0..sroa_idx, align 4 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.sroa.52.0.copyload = load float, ptr %.sroa.52.0..sroa_idx, align 4 ; 7 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.59.0.copyload = load float, ptr %.sroa.59.0..sroa_idx, align 4 ; 7 uses
  %.sroa.79.64..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.79.64.copyload = load float, ptr %.sroa.79.64..sroa_idx, align 4 ; 5 uses
  %.sroa.85344.64..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.97.64..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.97.64.copyload = load float, ptr %.sroa.97.64..sroa_idx, align 4 ; 5 uses
  %.sroa.103360.64..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.115.64..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.115.64.copyload = load float, ptr %.sroa.115.64..sroa_idx, align 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.0158.0.copyload = load <2 x float>, ptr %i.c, align 8 ; 4 uses
  %.sroa.2159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %3 = load <1 x float>, ptr %.sroa.2159.0..sroa_idx, align 8 ; 2 uses
  %i.d = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.e = load <2 x float>, ptr %1, align 4        ; 6 uses
  %i.f = load <2 x float>, ptr %.sroa.85344.64..sroa_idx, align 4 ; 6 uses
  %i.g = load <2 x float>, ptr %.sroa.103360.64..sroa_idx, align 4 ; 6 uses
  %i.h = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %i.e, %i.h
  %i.j = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.k = fmul <2 x float> %i.f, %i.j
  %i.l = fadd <2 x float> %i.i, %i.k
  %i.m = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.g, %i.m
  %i.o = fadd <2 x float> %i.n, %i.l              ; 3 uses
  %i.p = fmul <2 x float> %i.o, %i.o              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.r, align 4 ; 2 uses
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 0 ; 3 uses
  %i.s = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 1 ; 3 uses
  %i.t = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i
  %i.u = fadd float %i.s, %i.t
  %i.v = fmul float %.sroa.17.0.copyload, %.sroa.2141.0.copyload
  %i.w = fadd float %i.v, %i.u                    ; 3 uses
  %i.x = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i
  %i.y = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i
  %i.z = fadd float %i.x, %i.y
  %i.aa = fmul float %.sroa.38.0.copyload, %.sroa.2141.0.copyload
  %i.ab = fadd float %i.aa, %i.z                  ; 3 uses
  %i.ac = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i
  %i.ad = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = fmul float %.sroa.59.0.copyload, %.sroa.2141.0.copyload
  %i.ag = fadd float %i.af, %i.ae                 ; 3 uses
  %i.ah = fmul float %i.w, %i.w
  %i.ai = fmul float %i.ab, %i.ab
  %i.aj = fadd float %i.ah, %i.ai
  %i.ak = fmul float %i.ag, %i.ag
  %i.al = fadd float %i.ak, %i.aj
  %sqrt.i.i192 = tail call noundef float @llvm.sqrt.f32(float %i.al) ; 3 uses
  %i.am = fdiv float %i.w, %sqrt.i.i192
  %i.an = fdiv float %i.ab, %sqrt.i.i192
  %i.ao = fdiv float %i.ag, %sqrt.i.i192
  %.sroa.0.0.vec.insert.i.i193 = insertelement <2 x float> poison, float %i.am, i64 0
  %.sroa.0.4.vec.insert.i.i194 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i193, float %i.an, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i.i194, ptr %i.ap, align 4
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ao, ptr %.sroa.4145.0..sroa_idx, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ar, ptr %i.as, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46
  store ptr %i.au, ptr %i.a, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ax = load i64, ptr %i.av, align 4
  store i64 %i.ax, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0124.0.copyload = load <2 x float>, ptr %i.ay, align 8 ; 2 uses
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.2125.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i197 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 0 ; 3 uses
  %i.az = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i197
  %.sroa.03.4.vec.extract.i198 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 1 ; 3 uses
  %i.ba = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i198
  %i.bb = fadd float %i.az, %i.ba
  %i.bc = fmul float %.sroa.17.0.copyload, %.sroa.2125.0.copyload
  %i.bd = fadd float %i.bc, %i.bb
  %i.be = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i197
  %i.bf = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i198
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = fmul float %.sroa.38.0.copyload, %.sroa.2125.0.copyload
  %i.bi = fadd float %i.bh, %i.bg
  %i.bj = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i197
  %i.bk = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i198
  %i.bl = fadd float %i.bj, %i.bk
  %i.bm = fmul float %.sroa.59.0.copyload, %.sroa.2125.0.copyload
  %i.bn = fadd float %i.bm, %i.bl
  %.sroa.046.0.vec.insert.i199 = insertelement <2 x float> poison, float %i.bd, i64 0
  %.sroa.046.4.vec.insert.i200 = insertelement <2 x float> %.sroa.046.0.vec.insert.i199, float %i.bi, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.046.4.vec.insert.i200, ptr %i.bo, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.bn, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 92
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.bp, align 4 ; 2 uses
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %.sroa.2115.0.copyload = load float, ptr %.sroa.2115.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i203 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 0 ; 3 uses
  %i.bq = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i203
  %.sroa.03.4.vec.extract.i204 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 1 ; 3 uses
  %i.br = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i204
  %i.bs = fadd float %i.bq, %i.br
  %i.bt = fmul float %.sroa.17.0.copyload, %.sroa.2115.0.copyload
  %i.bu = fadd float %i.bt, %i.bs
  %i.bv = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i203
  %i.bw = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i204
  %i.bx = fadd float %i.bv, %i.bw
  %i.by = fmul float %.sroa.38.0.copyload, %.sroa.2115.0.copyload
  %i.bz = fadd float %i.by, %i.bx
  %i.ca = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i203
  %i.cb = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i204
  %i.cc = fadd float %i.ca, %i.cb
  %i.cd = fmul float %.sroa.59.0.copyload, %.sroa.2115.0.copyload
  %i.ce = fadd float %i.cd, %i.cc
  %.sroa.046.0.vec.insert.i205 = insertelement <2 x float> poison, float %i.bu, i64 0
  %.sroa.046.4.vec.insert.i206 = insertelement <2 x float> %.sroa.046.0.vec.insert.i205, float %i.bz, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %.sroa.046.4.vec.insert.i206, ptr %i.cf, align 4
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.ce, ptr %.sroa.4117.0..sroa_idx, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.0104.0.copyload = load <2 x float>, ptr %i.cg, align 8 ; 4 uses
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.2105.0.copyload = load float, ptr %.sroa.2105.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i209 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i210 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 1
  %i.ch = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.e, %i.ch
  %i.cj = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fmul <2 x float> %i.f, %i.cj
  %i.cl = fadd <2 x float> %i.ci, %i.ck
  %i.cm = insertelement <2 x float> poison, float %.sroa.2105.0.copyload, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.g, %i.cn
  %i.cp = fadd <2 x float> %i.co, %i.cl
  %i.cq = fmul float %.sroa.79.64.copyload, %.sroa.012.0.vec.extract.i209
  %i.cr = fmul float %.sroa.97.64.copyload, %.sroa.012.4.vec.extract.i210
  %i.cs = fadd float %i.cq, %i.cr
  %i.ct = fmul float %.sroa.115.64.copyload, %.sroa.2105.0.copyload
  %i.cu = fadd float %i.ct, %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x float> %i.cp, ptr %i.cv, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.cu, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 116
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.cw, align 4 ; 4 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i215 = extractelement <2 x float> %.sroa.094.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i216 = extractelement <2 x float> %.sroa.094.0.copyload, i64 1
  %i.cx = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.e, %i.cx
  %i.cz = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.f, %i.cz
  %i.db = fadd <2 x float> %i.cy, %i.da
  %i.dc = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x float> %i.g, %i.dd
  %i.df = fadd <2 x float> %i.de, %i.db
  %i.dg = fmul float %.sroa.79.64.copyload, %.sroa.012.0.vec.extract.i215
  %i.dh = fmul float %.sroa.97.64.copyload, %.sroa.012.4.vec.extract.i216
  %i.di = fadd float %i.dg, %i.dh
  %i.dj = fmul float %.sroa.115.64.copyload, %.sroa.295.0.copyload
  %i.dk = fadd float %i.dj, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.df, ptr %i.dl, align 4
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.dk, ptr %.sroa.497.0..sroa_idx, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.sroa.082.0.copyload = load <2 x float>, ptr %i.dm, align 8 ; 4 uses
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 8 ; 2 uses
  %i.dn = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.e, %i.dn
  %i.dp = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dq = fmul <2 x float> %i.f, %i.dp
  %i.dr = fadd <2 x float> %i.do, %i.dq
  %i.ds = insertelement <2 x float> poison, float %.sroa.283.0.copyload, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.g, %i.dt
  %i.dv = fadd <2 x float> %i.du, %i.dr           ; 3 uses
  %i.dw = fmul <2 x float> %i.dv, %i.dv           ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %.sroa.79.64.copyload, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> %.sroa.082.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ea = fmul <2 x float> %i.dy, %i.dz
  %i.eb = insertelement <2 x float> poison, float %.sroa.97.64.copyload, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> %.sroa.082.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ee = fmul <2 x float> %i.ec, %i.ed
  %i.ef = fadd <2 x float> %i.ea, %i.ee
  %i.eg = insertelement <2 x float> poison, float %.sroa.115.64.copyload, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x float> %i.d, float %.sroa.283.0.copyload, i64 1
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  %i.ek = fadd <2 x float> %i.ej, %i.ef           ; 3 uses
  %i.el = fmul <2 x float> %i.ek, %i.ek
  %i.em = shufflevector <2 x float> %i.p, <2 x float> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.en = shufflevector <2 x float> %i.p, <2 x float> %i.dw, <2 x i32> <i32 1, i32 3>
  %i.eo = fadd <2 x float> %i.em, %i.en
  %i.ep = fadd <2 x float> %i.el, %i.eo
  %i.eq = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ep) ; 3 uses
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fdiv <2 x float> %i.o, %i.er            ; 3 uses
  store <2 x float> %i.es, ptr %i.q, align 8
  %i.et = fdiv <2 x float> %i.ek, %i.eq           ; 2 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0 ; 3 uses
  store float %i.eu, ptr %.sroa.4163.0..sroa_idx, align 8
  %i.ev = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ew = fdiv <2 x float> %i.dv, %i.ev           ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 140
  %.sroa.066.0.copyload = load <2 x float>, ptr %i.ey, align 4 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4pbrt17AnimatedTransform12ApplyInverseERKNS_3RayEPf:bb.a
  store float %i.iq, ptr %i.iu, align 8, !tbaa !70, !alias.scope !151
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.is, ptr %i.iv, align 8, !tbaa !71, !alias.scope !151
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit67, %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit38, %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt17AnimatedTransformclERKNS_15RayDifferentialEPf(ptr dead_on_unwind noalias writable sret(%"class.pbrt::RayDifferential") align 8 %0, ptr noundef nonnull align 4 dereferenceable(696) %1, ptr noundef nonnull align 8 dereferenceable(92) %2, ptr noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load i8, ptr %i.a, align 4, !tbaa !65, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load float, ptr %i.d, align 8, !tbaa !70 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !63
  %i.h = fcmp ugt float %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZNK4pbrt9TransformclERKNS_15RayDifferentialEPf(ptr dead_on_unwind writable sret(%"class.pbrt::RayDifferential") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(92) %2, ptr noundef %3)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.j = load float, ptr %i.i, align 4, !tbaa !64
  %i.k = fcmp ult float %i.e, %i.j
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZNK4pbrt9TransformclERKNS_15RayDifferentialEPf(ptr dead_on_unwind writable sret(%"class.pbrt::RayDifferential") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(92) %2, ptr noundef %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %4, ptr noundef nonnull align 4 dereferenceable(696) %1, float noundef %i.e)
  call void @_ZNK4pbrt9TransformclERKNS_15RayDifferentialEPf(ptr dead_on_unwind writable sret(%"class.pbrt::RayDifferential") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(92) %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt9TransformclERKNS_15RayDifferentialEPf(ptr dead_on_unwind noalias writable sret(%"class.pbrt::RayDifferential") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(92) %2, ptr noundef %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %.sroa.071.sroa.0.0.copyload = load <1 x float>, ptr %2, align 8
  %.sroa.071.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.071.sroa.4.0.copyload = load <1 x float>, ptr %.sroa.071.sroa.4.0..sroa_idx, align 4
  %.sroa.071.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.071.sroa.5.0.copyload = load <4 x float>, ptr %.sroa.071.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !154
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %.sroa.071.sroa.0.0.copyload, <1 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %.sroa.071.sroa.4.0.copyload, <1 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %.sroa.071.sroa.5.0.copyload, <4 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %5, align 8, !tbaa !11, !noalias !154
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.c, align 8, !tbaa !11, !noalias !154
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.d, align 8, !tbaa !11, !noalias !154
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %5), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !154
  %i.e = bitcast <4 x float> %.sroa.071.sroa.5.0.copyload to i128
  %i.f = lshr i128 %i.e, 32
  %i.g = trunc i128 %i.f to i64
  %i.h = bitcast i64 %i.g to <2 x float>          ; 4 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %1, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !11, !noalias !154 ; 3 uses
  %i.l = shufflevector <5 x float> %i.k, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.m = shufflevector <5 x float> %i.k, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.n = fmul <2 x float> %i.i, %i.m
  %i.o = load <2 x float>, ptr %i.j, align 4, !tbaa !11, !noalias !154 ; 2 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <4 x float> %i.l, <4 x float> %i.p, <2 x i32> <i32 0, i32 4>
  %i.r = fmul <2 x float> %i.q, %i.h
  %i.s = fadd <2 x float> %i.n, %i.r
  %i.t = shufflevector <4 x float> %.sroa.071.sroa.5.0.copyload, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.u = shufflevector <2 x float> %i.o, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <5 x float> %i.k, <5 x float> %i.u, <2 x i32> <i32 2, i32 6>
  %i.w = fmul <2 x float> %i.t, %i.v
  %i.x = fadd <2 x float> %i.s, %i.w              ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !11, !noalias !154
  %i.aa = fmul float %.sroa.03.0.vec.extract.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ac = load <2 x float>, ptr %i.ab, align 4, !tbaa !11, !noalias !154
  %i.ad = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> %.sroa.071.sroa.5.0.copyload, <2 x i32> <i32 1, i32 7>
  %i.af = fmul <2 x float> %i.ae, %i.ac           ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = fadd float %i.aa, %i.ag
  %i.ai = extractelement <2 x float> %i.af, i64 1
  %i.aj = fadd float %i.ah, %i.ai                 ; 5 uses
  %i.ak = fmul <2 x float> %i.x, %i.x             ; 2 uses
  %shift = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ak, %shift
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = fmul float %i.aj, %i.aj
  %i.an = fadd float %i.al, %i.am                 ; 2 uses
  %i.ao = fcmp ogt float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.b, label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

bb.b:                                             ; preds = %bb.a
  %i.ap = extractelement <2 x float> %i.x, i64 1
  %i.aq = call noundef float @llvm.fabs.f32(float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.at = load float, ptr %i.as, align 4, !tbaa !58, !noalias !154
  %i.au = load float, ptr %i.ar, align 8, !tbaa !57, !noalias !154
  %i.av = fsub float %i.at, %i.au
  %i.aw = fmul float %i.av, 5.000000e-01
  %i.ax = fmul float %i.aq, %i.aw
  %i.ay = insertelement <2 x float> %i.x, float %i.aj, i64 1
  %i.az = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ay)
  %i.ba = load <6 x float>, ptr %4, align 16, !tbaa !11, !noalias !154 ; 2 uses
  %i.bb = shufflevector <6 x float> %i.ba, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bc = shufflevector <6 x float> %i.ba, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bd = fsub <2 x float> %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fmul <2 x float> %i.az, %i.be           ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = fadd float %i.bg, %i.ax
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = fadd float %i.bh, %i.bi
  %i.bk = fdiv float %i.bj, %i.an                 ; 3 uses
  %i.bl = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.x, %i.bm
  %i.bo = fmul float %i.aj, %i.bk
  %i.bp = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %4, <2 x float> %i.bn, float %i.bo), !noalias !154 ; 0 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bq = load float, ptr %3, align 4, !tbaa !11, !noalias !154
  %i.br = fsub float %i.bq, %i.bk
  store float %i.br, ptr %3, align 4, !tbaa !11, !noalias !154
  br label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

_ZNK4pbrt9TransformclERKNS_3RayEPf.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !154
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !154
  %i.bx = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !154
  %i.by = load <4 x float>, ptr %4, align 16, !noalias !154
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ca = fadd <2 x float> %i.bx, %i.bz
  %i.cb = fmul <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.cd = fmul float %i.cc, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !154
  store <2 x float> %i.cb, ptr %0, align 8
  %.sroa.27.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cd, ptr %.sroa.27.0..sroa_idx.i.i51, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.x, ptr %i.ce, align 4
  %.sroa.23.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.aj, ptr %.sroa.23.0..sroa_idx.i.i52, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.8.0.copyload, ptr %i.cf, align 8, !tbaa !70
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %i.cg, align 8, !tbaa !71
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !156, !range !15, !noundef !16
  store i8 %i.ck, ptr %i.ch, align 8, !tbaa !156
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.032.0.copyload = load <2 x float>, ptr %i.cl, align 4 ; 4 uses
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %.sroa.233.0.copyload = load float, ptr %.sroa.233.0..sroa_idx, align 4 ; 2 uses
  %i.cm = load float, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %6 = load <1 x float>, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %7 = load <1 x float>, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %8 = load <1 x float>, ptr %i.cq, align 4
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.cr, align 8 ; 4 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 8 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.y, align 4, !tbaa !11 ; 5 uses
  %i.ct = load <2 x float>, ptr %i.co, align 4, !tbaa !11 ; 2 uses
  %i.cu = shufflevector <2 x float> %.sroa.022.0.copyload, <2 x float> %.sroa.032.0.copyload, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.ct
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cx = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.022.0.copyload, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cy = fmul <2 x float> %i.cx, %i.ct
  %i.cz = fadd <2 x float> %i.cw, %i.cy
  %i.da = shufflevector <1 x float> %7, <1 x float> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x float> poison, float %.sroa.233.0.copyload, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %.sroa.223.0.copyload, i64 1 ; 2 uses
  %i.dd = fmul <2 x float> %i.da, %i.dc
  %i.de = fadd <2 x float> %i.cz, %i.dd
  %i.df = shufflevector <1 x float> %8, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fadd <2 x float> %i.df, %i.de           ; 3 uses
  %i.dh = fcmp oeq <2 x float> %i.dg, splat (float 1.000000e+00) ; 2 uses
  %i.di = fmul <2 x float> %i.cu, %i.cs
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dk = fmul <2 x float> %i.cx, %i.cs
  %i.dl = fadd <2 x float> %i.dj, %i.dk
  %i.dm = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.dn, %i.dc
  %i.dp = fadd <2 x float> %i.dl, %i.do
  %i.dq = shufflevector <1 x float> %6, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fadd <2 x float> %i.dq, %i.dp           ; 2 uses
  %i.ds = fdiv <2 x float> %i.dr, %i.dg
  %i.dt = select <2 x i1> %i.dh, <2 x float> %i.dr, <2 x float> %i.ds ; 2 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  store float %i.du, ptr %.sroa.435.0..sroa_idx, align 4
  %i.dv = load <8 x float>, ptr %1, align 4, !tbaa !11 ; 5 uses
  %i.dw = load float, ptr %i.bt, align 4, !tbaa !11 ; 2 uses
  %i.dx = load float, ptr %i.j, align 4, !tbaa !11 ; 2 uses
  %i.dy = load float, ptr %i.bu, align 4, !tbaa !11 ; 2 uses
  %i.dz = load float, ptr %i.bv, align 4, !tbaa !11 ; 2 uses
  %i.ea = load float, ptr %i.bw, align 4, !tbaa !11 ; 2 uses
  %i.eb = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.022.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ec = shufflevector <8 x float> %i.dv, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 1, i32 4>
  %i.ed = fmul <4 x float> %i.eb, %i.ec
  %i.ee = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.022.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ef = shufflevector <8 x float> %i.dv, <8 x float> poison, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  %i.eg = fmul <4 x float> %i.ee, %i.ef
  %i.eh = fadd <4 x float> %i.ed, %i.eg
  %i.ei = shufflevector <8 x float> %i.dv, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 2, i32 6>
  %i.ej = insertelement <4 x float> poison, float %.sroa.233.0.copyload, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %.sroa.223.0.copyload, i64 1
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.em = fmul <4 x float> %i.ei, %i.el
  %i.en = fadd <4 x float> %i.eh, %i.em
  %i.eo = shufflevector <8 x float> %i.dv, <8 x float> poison, <4 x i32> <i32 3, i32 7, i32 3, i32 7>
  %i.ep = fadd <4 x float> %i.eo, %i.en           ; 2 uses
  %i.eq = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.er = fdiv <4 x float> %i.ep, %i.eq
  %i.es = shufflevector <2 x i1> %i.dh, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.et = select <4 x i1> %i.es, <4 x float> %i.ep, <4 x float> %i.er ; 2 uses
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.eu, ptr %i.ci, align 4
  %i.ev = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.ev, ptr %i.ew, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ex = extractelement <2 x float> %i.dt, i64 1
  store float %i.ex, ptr %.sroa.425.0..sroa_idx, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 68
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.ey, align 4 ; 3 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.012.0.copyload, i64 0 ; 2 uses
  %i.ez = extractelement <8 x float> %i.dv, i64 0 ; 2 uses
  %i.fa = fmul float %i.ez, %.sroa.03.0.vec.extract.i
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.012.0.copyload, i64 1 ; 3 uses
  %i.fb = fmul float %i.ea, %.sroa.03.4.vec.extract.i
  %i.fc = fadd float %i.fa, %i.fb
  %i.fd = fmul float %i.dz, %.sroa.213.0.copyload
  %i.fe = fadd float %i.fd, %i.fc
  %i.ff = fmul float %i.dy, %.sroa.03.0.vec.extract.i
  %i.fg = fmul float %i.dx, %.sroa.03.4.vec.extract.i
  %i.fh = fadd float %i.ff, %i.fg
  %i.fi = fmul float %i.dw, %.sroa.213.0.copyload
  %i.fj = fadd float %i.fi, %i.fh
  %foldExtExtBinop83 = fmul <2 x float> %i.cs, %.sroa.012.0.copyload
  %i.fk = extractelement <2 x float> %foldExtExtBinop83, i64 0
  %i.fl = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  %i.fm = fmul float %i.fl, %.sroa.03.4.vec.extract.i
  %i.fn = fadd float %i.fk, %i.fm
  %i.fo = fmul float %i.cm, %.sroa.213.0.copyload
  %i.fp = fadd float %i.fo, %i.fn
  %.sroa.046.0.vec.insert.i = insertelement <2 x float> poison, float %i.fe, i64 0
  %.sroa.046.4.vec.insert.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i, float %i.fj, i64 1
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> %.sroa.046.4.vec.insert.i, ptr %i.fq, align 4
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.fp, ptr %.sroa.415.0..sroa_idx, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.fr, align 8 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i65 = extractelement <2 x float> %.sroa.03.0.copyload, i64 0 ; 2 uses
  %i.fs = fmul float %i.ez, %.sroa.03.0.vec.extract.i65
  %.sroa.03.4.vec.extract.i66 = extractelement <2 x float> %.sroa.03.0.copyload, i64 1 ; 3 uses
  %i.ft = fmul float %i.ea, %.sroa.03.4.vec.extract.i66
  %i.fu = fadd float %i.fs, %i.ft
  %i.fv = fmul float %i.dz, %.sroa.24.0.copyload
  %i.fw = fadd float %i.fv, %i.fu
  %i.fx = fmul float %i.dy, %.sroa.03.0.vec.extract.i65
  %i.fy = fmul float %i.dx, %.sroa.03.4.vec.extract.i66
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = fmul float %i.dw, %.sroa.24.0.copyload
  %i.gb = fadd float %i.ga, %i.fz
  %foldExtExtBinop85 = fmul <2 x float> %i.cs, %.sroa.03.0.copyload
  %i.gc = extractelement <2 x float> %foldExtExtBinop85, i64 0
  %i.gd = fmul float %i.fl, %.sroa.03.4.vec.extract.i66
  %i.ge = fadd float %i.gc, %i.gd
  %i.gf = fmul float %i.cm, %.sroa.24.0.copyload
  %i.gg = fadd float %i.gf, %i.ge
  %.sroa.046.0.vec.insert.i67 = insertelement <2 x float> poison, float %i.fw, i64 0
  %.sroa.046.4.vec.insert.i68 = insertelement <2 x float> %.sroa.046.0.vec.insert.i67, float %i.gb, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.046.4.vec.insert.i68, ptr %i.gh, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.gg, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_6Point3IfEEf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(696) %0, <2 x float> %1, float %2, float noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Transform", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i8, ptr %i.a, align 4, !tbaa !65, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load float, ptr %i.d, align 4
  %i.f = fcmp ugt float %3, %i.e
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load <2 x float>, ptr %0, align 4, !tbaa !11
  %i.h = fmul <2 x float> %1, %i.g                ; 2 uses
  %shift = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.h, %shift
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !11
  %i.l = fmul float %2, %i.k
  %i.m = fadd float %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !11
  %i.p = fadd float %i.o, %i.m                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !11
  %i.s = fmul <2 x float> %1, %i.r                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !11
  %i.w = fmul <2 x float> %1, %i.v                ; 2 uses
  %shift56 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop57 = fadd <2 x float> %i.w, %shift56
  %i.x = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load float, ptr %i.y, align 4, !tbaa !11
  %i.aa = fmul float %2, %i.z
  %i.ab = fadd float %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11
  %i.ae = fadd float %i.ad, %i.ab                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !11
  %i.ah = fmul <2 x float> %1, %i.ag              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load <2 x float>, ptr %i.t, align 4, !tbaa !11 ; 2 uses
  %i.ak = shufflevector <2 x float> %i.s, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.al = shufflevector <2 x float> %i.s, <2 x float> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.am = fadd <2 x float> %i.ak, %i.al
  %i.an = load <2 x float>, ptr %i.ai, align 4, !tbaa !11 ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %2, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = shufflevector <2 x float> %i.aj, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  %i.as = fadd <2 x float> %i.am, %i.ar
  %i.at = shufflevector <2 x float> %i.aj, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.au = fadd <2 x float> %i.at, %i.as           ; 2 uses
  %i.av = extractelement <2 x float> %i.au, i64 1 ; 4 uses
  %i.aw = fcmp oeq float %i.av, 1.000000e+00      ; 3 uses
  %i.ax = fdiv float %i.p, %i.av
  %i.ay = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.az = fdiv float %i.ay, %i.av
  %i.ba = fdiv float %i.ae, %i.av
  %.sink96.i = select i1 %i.aw, float %i.p, float %i.ax
  %.sink.i = select i1 %i.aw, float %i.ay, float %i.az
  %.sroa.495.0.i = select i1 %i.aw, float %i.ae, float %i.ba
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %.sink96.i, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %.sink.i, i64 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !64
  %i.bd = fcmp ult float %3, %i.bc
  br i1 %i.bd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !11
  %i.bg = fmul <2 x float> %1, %i.bf              ; 2 uses
  %shift59 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop60 = fadd <2 x float> %i.bg, %shift59
  %i.bh = extractelement <2 x float> %foldExtExtBinop60, i64 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul float %2, %i.bj
  %i.bl = fadd float %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11
  %i.bo = fadd float %i.bn, %i.bl                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !11
  %i.br = fmul <2 x float> %1, %i.bq              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !11
  %i.bv = fmul <2 x float> %1, %i.bu              ; 2 uses
  %shift62 = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop63 = fadd <2 x float> %i.bv, %shift62
end_hunk_2
begin_hunk_3_@_ZN4pbrt3SinENS_8IntervalE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.i = fcmp ogt float %.sroa.0.0.vec.extract, 0.000000e+00
  %.sroa.speculated19 = select i1 %i.i, float %.sroa.0.0.vec.extract, float 0.000000e+00
  %i.j = tail call noundef float @sinf(float noundef %.sroa.speculated19) #28 ; 3 uses
  %i.k = tail call noundef float @sinf(float noundef %.sroa.0.4.vec.extract) #28 ; 3 uses
  %i.l = fcmp ogt float %i.j, %i.k                ; 2 uses
  %spec.select = select i1 %i.l, float %i.k, float %i.j ; 3 uses
  %spec.select37 = select i1 %i.l, float %i.j, float %i.k ; 3 uses
  %or.cond.i = fcmp oeq float %spec.select, -inf
  br i1 %or.cond.i, label %_ZN4pbrt13NextFloatDownEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = fcmp oeq float %spec.select, 0.000000e+00
  %spec.store.select.i = select i1 %i.m, float -0.000000e+00, float %spec.select ; 2 uses
  %i.n = bitcast float %spec.store.select.i to i32
  %i.o = fcmp ogt float %spec.store.select.i, 0.000000e+00
  %.0.v.i = select i1 %i.o, i32 -1, i32 1
  %.0.i = add i32 %.0.v.i, %i.n
  %i.p = bitcast i32 %.0.i to float
  br label %_ZN4pbrt13NextFloatDownEf.exit

_ZN4pbrt13NextFloatDownEf.exit:                   ; preds = %bb.e, %bb.f
  %.09.i = phi float [ %i.p, %bb.f ], [ -inf, %bb.e ] ; 2 uses
  %or.cond.i3 = fcmp oeq float %spec.select37, +inf
  br i1 %or.cond.i3, label %_ZN4pbrt11NextFloatUpEf.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt13NextFloatDownEf.exit
  %i.q = fcmp oeq float %spec.select37, 0.000000e+00
  %spec.store.select.i4 = select i1 %i.q, float 0.000000e+00, float %spec.select37 ; 2 uses
  %i.r = bitcast float %spec.store.select.i4 to i32
  %i.s = fcmp ult float %spec.store.select.i4, 0.000000e+00
  %.0.v.i5 = select i1 %i.s, i32 -1, i32 1
  %.0.i6 = add i32 %.0.v.i5, %i.r
  %i.t = bitcast i32 %.0.i6 to float
  br label %_ZN4pbrt11NextFloatUpEf.exit

_ZN4pbrt11NextFloatUpEf.exit:                     ; preds = %_ZN4pbrt13NextFloatDownEf.exit, %bb.g
  %.010.i = phi float [ %i.t, %bb.g ], [ +inf, %_ZN4pbrt13NextFloatDownEf.exit ] ; 2 uses
  %i.u = fcmp ule float %.09.i, -1.000000e+00
  %i.v = fcmp uge float %.010.i, 1.000000e+00
  %i.w = fcmp ole float %.sroa.0.0.vec.extract, f0x3FC90FDB
  %i.x = fcmp oge float %.sroa.0.4.vec.extract, f0x3FC90FDB
  %i.y = and i1 %i.w, %i.x
  %i.z = select i1 %i.y, i1 true, i1 %i.v
  %spec.select38 = select i1 %i.z, float 1.000000e+00, float %.010.i ; 4 uses
  %i.aa = fcmp ole float %.sroa.0.0.vec.extract, f0x4096CBE4
  %i.ab = fcmp oge float %.sroa.0.4.vec.extract, f0x4096CBE4
  %i.ac = and i1 %i.aa, %i.ab
  %i.ad = select i1 %i.ac, i1 true, i1 %i.u
  %.136 = select i1 %i.ad, float -1.000000e+00, float %.09.i ; 4 uses
  %i.ae = fcmp olt float %spec.select38, %.136
  %.sroa.speculated5.i = select i1 %i.ae, float %spec.select38, float %.136
  %.sroa.033.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated5.i, i64 0
  %i.af = fcmp olt float %.136, %spec.select38
  %.sroa.speculated.i = select i1 %i.af, float %spec.select38, float %.136
  %.sroa.033.4.vec.insert = insertelement <2 x float> %.sroa.033.0.vec.insert, float %.sroa.speculated.i, i64 1
  ret <2 x float> %.sroa.033.4.vec.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @tanf(float noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load <16 x float>, ptr %1, align 4, !tbaa !11 ; 17 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.i = load float, ptr %i.e, align 4, !tbaa !11
  %i.j = load <2 x float>, ptr %i.f, align 4, !tbaa !11 ; 3 uses
  %i.k = load <2 x float>, ptr %i.a, align 4, !tbaa !11 ; 3 uses
  %i.l = load float, ptr %i.b, align 4, !tbaa !11
  %i.m = load <2 x float>, ptr %i.c, align 4, !tbaa !11 ; 3 uses
  %i.n = fneg <16 x float> %i.g
  %i.o = shufflevector <16 x float> %i.n, <16 x float> poison, <4 x i32> <i32 13, i32 5, i32 12, i32 4> ; 5 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.q = shufflevector <2 x float> %i.h, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x float> %i.j, <2 x float> %i.m, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.s = fmul <2 x float> %i.q, %i.r              ; 2 uses
  %i.t = fneg <2 x float> %i.s
  %i.u = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 8, i32 0>
  %i.v = insertelement <2 x float> poison, float %i.i, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.l, i64 1
  %i.x = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.z = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.y, <2 x float> %i.r, <2 x float> %i.s)
  %i.aa = fadd <2 x float> %i.x, %i.z             ; 4 uses
  %i.ab = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 13, i32 13, i32 5, i32 5, i32 12, i32 12, i32 4, i32 4>
  %i.ac = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 11, i32 10, i32 3, i32 2, i32 11, i32 10, i32 3, i32 2> ; 2 uses
  %i.ad = fmul <8 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = fneg <8 x float> %i.ad
  %i.af = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 9, i32 9, i32 1, i32 1, i32 8, i32 8, i32 0, i32 0>
  %i.ag = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 15, i32 14, i32 7, i32 6, i32 15, i32 14, i32 7, i32 6>
  %i.ah = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.af, <8 x float> %i.ag, <8 x float> %i.ae)
  %i.ai = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.p, <8 x float> %i.ac, <8 x float> %i.ad)
  %i.aj = fadd <8 x float> %i.ah, %i.ai           ; 19 uses
  %i.ak = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 14, i32 6> ; 2 uses
  %i.al = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 11, i32 3> ; 2 uses
  %i.am = fmul <2 x float> %i.ak, %i.al           ; 2 uses
  %i.an = fneg <2 x float> %i.am
  %i.ao = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 10, i32 2>
  %i.ap = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 15, i32 7>
  %i.aq = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ao, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = fneg <2 x float> %i.ak                  ; 4 uses
  %i.as = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ar, <2 x float> %i.al, <2 x float> %i.am)
  %i.at = fadd <2 x float> %i.aq, %i.as           ; 4 uses
  %i.au = extractelement <8 x float> %i.aj, i64 7
  %i.av = fneg float %i.au                        ; 2 uses
  %i.aw = extractelement <8 x float> %i.aj, i64 2
  %i.ax = fneg float %i.aw                        ; 2 uses
  %i.ay = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ba = fmul float %i.az, %i.ay                 ; 4 uses
  %i.bb = fneg float %i.ba
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.az, float %i.ay, float %i.bb)
  %i.bd = extractelement <8 x float> %i.aj, i64 0 ; 2 uses
  %i.be = fmul float %i.bd, %i.av                 ; 4 uses
  %i.bf = fneg float %i.be
  %i.bg = tail call noundef float @llvm.fma.f32(float %i.av, float %i.bd, float %i.bf)
  %i.bh = extractelement <8 x float> %i.aj, i64 1 ; 2 uses
  %i.bi = extractelement <8 x float> %i.aj, i64 6 ; 2 uses
  %i.bj = fmul float %i.bi, %i.bh                 ; 4 uses
  %i.bk = fneg float %i.bj
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bi, float %i.bh, float %i.bk)
  %i.bm = extractelement <8 x float> %i.aj, i64 3 ; 2 uses
  %i.bn = extractelement <8 x float> %i.aj, i64 4 ; 2 uses
  %i.bo = fmul float %i.bm, %i.bn                 ; 4 uses
  %i.bp = fneg float %i.bo
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bn, float %i.bp)
  %i.br = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  %i.bs = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.bt = fmul float %i.br, %i.bs                 ; 4 uses
  %i.bu = fneg float %i.bt
  %i.bv = tail call noundef float @llvm.fma.f32(float %i.br, float %i.bs, float %i.bu)
  %i.bw = extractelement <8 x float> %i.aj, i64 5 ; 2 uses
  %i.bx = fmul float %i.bw, %i.ax                 ; 3 uses
  %i.by = fneg float %i.bx
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.ax, float %i.bw, float %i.by)
  %i.ca = fadd float %i.bt, %i.bx                 ; 4 uses
  %i.cb = fsub float %i.ca, %i.bt                 ; 2 uses
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fsub float %i.bt, %i.cc
  %i.ce = fsub float %i.bx, %i.cb
  %i.cf = fadd float %i.ce, %i.cd
  %i.cg = fadd float %i.bz, %i.cf
  %i.ch = fadd float %i.bv, %i.cg
  %i.ci = fadd float %i.ca, %i.bo                 ; 4 uses
  %i.cj = fsub float %i.ci, %i.bo                 ; 2 uses
  %i.ck = fsub float %i.ci, %i.cj
  %i.cl = fsub float %i.bo, %i.ck
  %i.cm = fsub float %i.ca, %i.cj
  %i.cn = fadd float %i.cm, %i.cl
  %i.co = fadd float %i.cn, %i.ch
  %i.cp = fadd float %i.bq, %i.co
  %i.cq = fadd float %i.bj, %i.ci                 ; 4 uses
  %i.cr = fsub float %i.cq, %i.bj                 ; 2 uses
  %i.cs = fsub float %i.cq, %i.cr
  %i.ct = fsub float %i.bj, %i.cs
  %i.cu = fsub float %i.ci, %i.cr
  %i.cv = fadd float %i.cu, %i.ct
  %i.cw = fadd float %i.cv, %i.cp
  %i.cx = fadd float %i.bl, %i.cw
  %i.cy = fadd float %i.be, %i.cq                 ; 4 uses
  %i.cz = fsub float %i.cy, %i.be                 ; 2 uses
  %i.da = fsub float %i.cy, %i.cz
  %i.db = fsub float %i.be, %i.da
  %i.dc = fsub float %i.cq, %i.cz
  %i.dd = fadd float %i.dc, %i.db
  %i.de = fadd float %i.dd, %i.cx
  %i.df = fadd float %i.bg, %i.de
  %i.dg = fadd float %i.ba, %i.cy                 ; 3 uses
  %i.dh = fsub float %i.dg, %i.ba                 ; 2 uses
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fsub float %i.ba, %i.di
  %i.dk = fsub float %i.cy, %i.dh
  %i.dl = fadd float %i.dk, %i.dj
  %i.dm = fadd float %i.dl, %i.df
  %i.dn = fadd float %i.bc, %i.dm
  %i.do = fadd float %i.dg, %i.dn                 ; 2 uses
  %i.dp = fcmp oeq float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %0, i8 0, i64 68, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.dq = shufflevector <2 x float> %i.at, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1>
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %2 = load <2 x float>, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !11
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dv = load float, ptr %i.du, align 4, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !11 ; 2 uses
  %i.dy = fdiv float 1.000000e+00, %i.do
  %i.dz = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 7, i32 2, i32 15, i32 10, i32 3, i32 6, i32 11, i32 14> ; 2 uses
  %i.ea = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 3 uses
  %i.eb = fmul <8 x float> %i.dz, %i.ea           ; 4 uses
  %i.ec = insertelement <2 x float> %2, float %i.dv, i64 1
  %i.ed = fneg <2 x float> %i.ec                  ; 2 uses
  %i.ee = shufflevector <2 x float> %i.m, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.ef = fneg <2 x float> %i.ee
  %i.eg = fneg <16 x float> %i.g
  %i.eh = shufflevector <16 x float> %i.eg, <16 x float> poison, <4 x i32> <i32 2, i32 7, i32 10, i32 15>
  %i.ei = fneg <16 x float> %i.g
  %i.ej = shufflevector <16 x float> %i.ei, <16 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.ek, align 4, !tbaa !14
  %i.el = shufflevector <2 x float> %i.at, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.em = shufflevector <16 x float> %i.g, <16 x float> %i.el, <8 x i32> <i32 5, i32 16, i32 17, i32 17, i32 16, i32 16, i32 8, i32 17>
  %i.en = shufflevector <16 x float> %i.el, <16 x float> %i.g, <8 x i32> <i32 0, i32 poison, i32 29, i32 poison, i32 16, i32 poison, i32 1, i32 poison>
  %i.eo = shufflevector <2 x float> %i.ef, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ep = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 poison, i32 6, i32 poison>
  %i.eq = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.er = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 6, i32 10> ; 2 uses
  %i.es = fmul <8 x float> %i.em, %i.er           ; 4 uses
  %i.et = fneg <8 x float> %i.es
  %i.eu = shufflevector <8 x float> %i.er, <8 x float> poison, <16 x i32> <i32 poison, i32 1, i32 poison, i32 3, i32 poison, i32 5, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <16 x float> %i.g, <16 x float> %i.eu, <8 x i32> <i32 5, i32 17, i32 13, i32 19, i32 0, i32 21, i32 8, i32 23>
  %i.ew = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ev, <8 x float> %i.dq, <8 x float> %i.et)
  %i.ex = fneg <8 x float> %i.eb
  %i.ey = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.dz, <8 x float> %i.ea, <8 x float> %i.ex)
  %i.ez = shufflevector <2 x float> %i.ar, <2 x float> %i.ed, <8 x i32> <i32 1, i32 2, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.eh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fc = fmul <8 x float> %i.aj, %i.fb           ; 3 uses
  %i.fd = fneg <8 x float> %i.fc
  %i.fe = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.fb, <8 x float> %i.aj, <8 x float> %i.fd)
  %i.ff = fadd <8 x float> %i.fc, %i.eb           ; 4 uses
  %i.fg = fsub <8 x float> %i.ff, %i.eb           ; 2 uses
  %i.fh = fsub <8 x float> %i.ff, %i.fg
  %i.fi = fsub <8 x float> %i.eb, %i.fh
  %i.fj = fsub <8 x float> %i.fc, %i.fg
  %i.fk = fadd <8 x float> %i.fj, %i.fi
  %i.fl = fadd <8 x float> %i.fe, %i.fk
  %i.fm = fadd <8 x float> %i.ey, %i.fl
  %i.fn = fadd <8 x float> %i.es, %i.ff           ; 3 uses
  %i.fo = fsub <8 x float> %i.fn, %i.es           ; 2 uses
  %i.fp = fsub <8 x float> %i.fn, %i.fo
  %i.fq = fsub <8 x float> %i.es, %i.fp
  %i.fr = fsub <8 x float> %i.ff, %i.fo
  %i.fs = fadd <8 x float> %i.fr, %i.fq
  %i.ft = fadd <8 x float> %i.fs, %i.fm
  %i.fu = fadd <8 x float> %i.ew, %i.ft
  %i.fv = fadd <8 x float> %i.fn, %i.fu
  %i.fw = insertelement <8 x float> poison, float %i.dy, i64 0
  %i.fx = shufflevector <8 x float> %i.fw, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fy = fmul <8 x float> %i.fv, %i.fx
  %i.fz = shufflevector <8 x float> %i.fy, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  store <8 x float> %i.fz, ptr %0, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ga = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gb = shufflevector <16 x float> %i.ga, <16 x float> %i.g, <4 x i32> <i32 3, i32 16, i32 2, i32 24> ; 2 uses
  %i.gc = shufflevector <8 x float> %i.aj, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.gd = shufflevector <2 x float> %i.k, <2 x float> %i.h, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = shufflevector <2 x float> %i.ej, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 0, i32 8, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.gb, <4 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 7, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gi = shufflevector <8 x float> %i.aj, <8 x float> %i.eq, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 10, i32 3>
  %i.gj = fmul <8 x float> %i.gh, %i.gi           ; 4 uses
  %i.gk = fneg <8 x float> %i.gj
  %i.gl = shufflevector <4 x float> %i.gb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gm = shufflevector <8 x float> %i.gh, <8 x float> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gn = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 3, i32 3>
  %i.go = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.gm, <8 x float> %i.gn, <8 x float> %i.gk)
  %i.gp = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gq = shufflevector <8 x float> %i.ea, <8 x float> %i.gp, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 8, i32 9, i32 9>
  %i.gr = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 6, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <8 x float> %i.gr, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.gt = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gu = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gv = shufflevector <4 x float> %i.o, <4 x float> %i.gu, <8 x i32> <i32 1, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 4, i32 poison>
  %i.gw = shufflevector <2 x float> %i.m, <2 x float> %i.j, <8 x i32> <i32 poison, i32 0, i32 poison, i32 2, i32 poison, i32 1, i32 poison, i32 3> ; 2 uses
  %i.gx = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 poison, i32 13, i32 6, i32 15>
  %i.gy = shufflevector <2 x float> %i.k, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gz = shufflevector <8 x float> %i.gx, <8 x float> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.ha = fmul <8 x float> %i.gs, %i.gz           ; 3 uses
  %i.hb = insertelement <8 x float> %i.gw, float %i.dt, i64 0
  %i.hc = insertelement <8 x float> %i.hb, float %i.dx, i64 2
  %i.hd = shufflevector <8 x float> %i.hc, <8 x float> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 poison, i32 7>
  %i.he = shufflevector <2 x float> %i.h, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x float> %i.hd, <8 x float> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 7> ; 3 uses
  %i.hg = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 poison, i32 4, i32 poison, i32 6, i32 5, i32 poison, i32 7, i32 poison>
  %i.hh = shufflevector <8 x float> %i.gp, <8 x float> %i.hg, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 0, i32 14, i32 2> ; 2 uses
  %i.hi = shufflevector <8 x float> %i.hf, <8 x float> %i.gs, <8 x i32> <i32 0, i32 13, i32 14, i32 14, i32 13, i32 poison, i32 6, i32 poison>
  %i.hj = shufflevector <8 x float> %i.hi, <8 x float> %i.eo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 9> ; 2 uses
  %i.hk = shufflevector <2 x float> %i.aa, <2 x float> %i.ed, <8 x i32> <i32 0, i32 2, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = insertelement <8 x float> %i.hk, float %i.dx, i64 2
  %i.hm = shufflevector <8 x float> %i.gt, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 15, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = shufflevector <8 x float> %i.hl, <8 x float> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ho = fmul <8 x float> %i.hj, %i.hn           ; 3 uses
  %i.hp = fneg <8 x float> %i.hh
  %i.hq = fmul <8 x float> %i.hf, %i.hp
  %i.hr = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hf, <8 x float> %i.hh, <8 x float> %i.hq)
  %i.hs = shufflevector <8 x float> %i.aj, <8 x float> %i.hj, <8 x i32> <i32 4, i32 9, i32 6, i32 10, i32 9, i32 13, i32 10, i32 15> ; 2 uses
  %i.ht = shufflevector <8 x float> %i.eq, <8 x float> %i.hn, <8 x i32> <i32 1, i32 9, i32 0, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = shufflevector <8 x float> %i.gt, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 0, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <8 x float> %i.ht, <8 x float> %i.hu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hw = fneg <8 x float> %i.hv
  %i.hx = fmul <8 x float> %i.hs, %i.hw
  %i.hy = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hv, <8 x float> %i.hs, <8 x float> %i.hx)
  %i.hz = fadd <8 x float> %i.ho, %i.ha           ; 4 uses
  %i.ia = shufflevector <8 x float> %i.ho, <8 x float> %i.ha, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15> ; 2 uses
  %i.ib = fsub <8 x float> %i.hz, %i.ia           ; 2 uses
  %i.ic = fsub <8 x float> %i.hz, %i.ib
  %i.id = fsub <8 x float> %i.ia, %i.ic
  %i.ie = shufflevector <8 x float> %i.ha, <8 x float> %i.ho, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15>
  %i.if = fsub <8 x float> %i.ie, %i.ib
  %i.ig = fadd <8 x float> %i.if, %i.id
  %i.ih = fadd <8 x float> %i.hy, %i.ig
  %i.ii = fadd <8 x float> %i.hr, %i.ih
  %i.ij = fadd <8 x float> %i.gj, %i.hz           ; 3 uses
  %i.ik = fsub <8 x float> %i.ij, %i.gj           ; 2 uses
  %i.il = fsub <8 x float> %i.ij, %i.ik
  %i.im = fsub <8 x float> %i.gj, %i.il
  %i.in = fsub <8 x float> %i.hz, %i.ik
  %i.io = fadd <8 x float> %i.in, %i.im
  %i.ip = fadd <8 x float> %i.io, %i.ii
  %i.iq = fadd <8 x float> %i.go, %i.ip
  %i.ir = fadd <8 x float> %i.ij, %i.iq
  %i.is = fmul <8 x float> %i.ir, %i.fx
  store <8 x float> %i.is, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #15

; Function Attrs: noreturn
declare void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

declare void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #21 align 2

declare void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #20

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #19

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #23

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
end_hunk_3
