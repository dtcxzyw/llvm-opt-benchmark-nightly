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
  %3 = load <4 x float>, ptr %.sroa.2159.0..sroa_idx, align 8 ; 2 uses
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load float, ptr %i.f, align 4, !tbaa !11 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load float, ptr %i.h, align 4, !tbaa !11 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = load float, ptr %i.j, align 4, !tbaa !11 ; 5 uses
  %i.l = load <2 x float>, ptr %i.c, align 4, !tbaa !11 ; 6 uses
  %i.m = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %i.l
  %i.o = load <2 x float>, ptr %i.d, align 4, !tbaa !11 ; 6 uses
  %i.p = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x float> %i.p, %i.o
  %i.r = fadd <2 x float> %i.n, %i.q
  %i.s = load <2 x float>, ptr %i.e, align 4, !tbaa !11 ; 6 uses
  %i.t = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %i.t, %i.s
  %i.v = fadd <2 x float> %i.r, %i.u              ; 3 uses
  %i.w = fmul <2 x float> %i.v, %i.v              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.y, align 4 ; 2 uses
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4 ; 3 uses
  %i.z = load float, ptr %1, align 4, !tbaa !11   ; 7 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 0 ; 3 uses
  %i.aa = fmul float %.sroa.03.0.vec.extract.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11 ; 7 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 1 ; 3 uses
  %i.ad = fmul float %.sroa.03.4.vec.extract.i, %i.ac
  %i.ae = fadd float %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !11 ; 7 uses
  %i.ah = fmul float %.sroa.2141.0.copyload, %i.ag
  %i.ai = fadd float %i.ae, %i.ah                 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !11 ; 7 uses
  %i.al = fmul float %.sroa.03.0.vec.extract.i, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.an = load float, ptr %i.am, align 4, !tbaa !11 ; 7 uses
  %i.ao = fmul float %.sroa.03.4.vec.extract.i, %i.an
  %i.ap = fadd float %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !11 ; 7 uses
  %i.as = fmul float %.sroa.2141.0.copyload, %i.ar
  %i.at = fadd float %i.ap, %i.as                 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load float, ptr %i.au, align 4, !tbaa !11 ; 7 uses
  %i.aw = fmul float %.sroa.03.0.vec.extract.i, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11 ; 7 uses
  %i.az = fmul float %.sroa.03.4.vec.extract.i, %i.ay
  %i.ba = fadd float %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !11 ; 7 uses
  %i.bd = fmul float %.sroa.2141.0.copyload, %i.bc
  %i.be = fadd float %i.ba, %i.bd                 ; 3 uses
  %i.bf = fmul float %i.ai, %i.ai
  %i.bg = fmul float %i.at, %i.at
  %i.bh = fadd float %i.bf, %i.bg
  %i.bi = fmul float %i.be, %i.be
  %i.bj = fadd float %i.bh, %i.bi
  %sqrt.i.i206 = tail call noundef float @llvm.sqrt.f32(float %i.bj) ; 3 uses
  %i.bk = fdiv float %i.ai, %sqrt.i.i206
  %i.bl = fdiv float %i.at, %sqrt.i.i206
  %i.bm = fdiv float %i.be, %sqrt.i.i206
  %.sroa.0.0.vec.insert.i.i207 = insertelement <2 x float> poison, float %i.bk, i64 0
  %.sroa.0.4.vec.insert.i.i208 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i207, float %i.bl, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i.i208, ptr %i.bn, align 4
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bm, ptr %.sroa.4145.0..sroa_idx, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bp, ptr %i.bq, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bv = load i64, ptr %i.bt, align 4
  store i64 %i.bv, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0124.0.copyload = load <2 x float>, ptr %i.bw, align 8 ; 2 uses
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.2125.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i211 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 0 ; 3 uses
  %i.bx = fmul float %i.z, %.sroa.03.0.vec.extract.i211
  %.sroa.03.4.vec.extract.i212 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 1 ; 3 uses
  %i.by = fmul float %i.ac, %.sroa.03.4.vec.extract.i212
  %i.bz = fadd float %i.bx, %i.by
  %i.ca = fmul float %i.ag, %.sroa.2125.0.copyload
  %i.cb = fadd float %i.ca, %i.bz
  %i.cc = fmul float %i.ak, %.sroa.03.0.vec.extract.i211
  %i.cd = fmul float %i.an, %.sroa.03.4.vec.extract.i212
  %i.ce = fadd float %i.cc, %i.cd
  %i.cf = fmul float %i.ar, %.sroa.2125.0.copyload
  %i.cg = fadd float %i.cf, %i.ce
  %i.ch = fmul float %i.av, %.sroa.03.0.vec.extract.i211
  %i.ci = fmul float %i.ay, %.sroa.03.4.vec.extract.i212
  %i.cj = fadd float %i.ch, %i.ci
  %i.ck = fmul float %i.bc, %.sroa.2125.0.copyload
  %i.cl = fadd float %i.ck, %i.cj
  %.sroa.046.0.vec.insert.i213 = insertelement <2 x float> poison, float %i.cb, i64 0
  %.sroa.046.4.vec.insert.i214 = insertelement <2 x float> %.sroa.046.0.vec.insert.i213, float %i.cg, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.046.4.vec.insert.i214, ptr %i.cm, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.cl, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 92
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.cn, align 4 ; 2 uses
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %.sroa.2115.0.copyload = load float, ptr %.sroa.2115.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i217 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 0 ; 3 uses
  %i.co = fmul float %i.z, %.sroa.03.0.vec.extract.i217
  %.sroa.03.4.vec.extract.i218 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 1 ; 3 uses
  %i.cp = fmul float %i.ac, %.sroa.03.4.vec.extract.i218
  %i.cq = fadd float %i.co, %i.cp
  %i.cr = fmul float %i.ag, %.sroa.2115.0.copyload
  %i.cs = fadd float %i.cr, %i.cq
  %i.ct = fmul float %i.ak, %.sroa.03.0.vec.extract.i217
  %i.cu = fmul float %i.an, %.sroa.03.4.vec.extract.i218
  %i.cv = fadd float %i.ct, %i.cu
  %i.cw = fmul float %i.ar, %.sroa.2115.0.copyload
  %i.cx = fadd float %i.cw, %i.cv
  %i.cy = fmul float %i.av, %.sroa.03.0.vec.extract.i217
  %i.cz = fmul float %i.ay, %.sroa.03.4.vec.extract.i218
  %i.da = fadd float %i.cy, %i.cz
  %i.db = fmul float %i.bc, %.sroa.2115.0.copyload
  %i.dc = fadd float %i.db, %i.da
  %.sroa.046.0.vec.insert.i219 = insertelement <2 x float> poison, float %i.cs, i64 0
  %.sroa.046.4.vec.insert.i220 = insertelement <2 x float> %.sroa.046.0.vec.insert.i219, float %i.cx, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %.sroa.046.4.vec.insert.i220, ptr %i.dd, align 4
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.dc, ptr %.sroa.4117.0..sroa_idx, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.0104.0.copyload = load <2 x float>, ptr %i.de, align 8 ; 4 uses
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.2105.0.copyload = load float, ptr %.sroa.2105.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i223 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i224 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 1
  %i.df = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.l, %i.df
  %i.dh = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x float> %i.o, %i.dh
  %i.dj = fadd <2 x float> %i.dg, %i.di
  %i.dk = insertelement <2 x float> poison, float %.sroa.2105.0.copyload, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.s, %i.dl
  %i.dn = fadd <2 x float> %i.dm, %i.dj
  %i.do = fmul float %i.g, %.sroa.012.0.vec.extract.i223
  %i.dp = fmul float %i.i, %.sroa.012.4.vec.extract.i224
  %i.dq = fadd float %i.do, %i.dp
  %i.dr = fmul float %i.k, %.sroa.2105.0.copyload
  %i.ds = fadd float %i.dr, %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x float> %i.dn, ptr %i.dt, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.ds, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 116
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.du, align 4 ; 4 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i229 = extractelement <2 x float> %.sroa.094.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i230 = extractelement <2 x float> %.sroa.094.0.copyload, i64 1
  %i.dv = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.l, %i.dv
  %i.dx = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = fmul <2 x float> %i.o, %i.dx
  %i.dz = fadd <2 x float> %i.dw, %i.dy
  %i.ea = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.s, %i.eb
  %i.ed = fadd <2 x float> %i.ec, %i.dz
  %i.ee = fmul float %i.g, %.sroa.012.0.vec.extract.i229
  %i.ef = fmul float %i.i, %.sroa.012.4.vec.extract.i230
  %i.eg = fadd float %i.ee, %i.ef
  %i.eh = fmul float %i.k, %.sroa.295.0.copyload
  %i.ei = fadd float %i.eh, %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.ed, ptr %i.ej, align 4
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.ei, ptr %.sroa.497.0..sroa_idx, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.sroa.082.0.copyload = load <2 x float>, ptr %i.ek, align 8 ; 4 uses
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 8 ; 2 uses
  %i.el = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.l, %i.el
  %i.en = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = fmul <2 x float> %i.o, %i.en
  %i.ep = fadd <2 x float> %i.em, %i.eo
  %i.eq = insertelement <2 x float> poison, float %.sroa.283.0.copyload, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %i.s, %i.er
  %i.et = fadd <2 x float> %i.es, %i.ep           ; 3 uses
  %i.eu = fmul <2 x float> %i.et, %i.et           ; 2 uses
  %i.ev = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> %.sroa.082.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ew = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.ev, %i.ex
  %i.ez = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> %.sroa.082.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fa = insertelement <2 x float> poison, float %i.i, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.ez, %i.fb
  %i.fd = fadd <2 x float> %i.ey, %i.fc
  %i.fe = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = insertelement <2 x float> %4, float %.sroa.283.0.copyload, i64 1
  %i.fh = fmul <2 x float> %i.ff, %i.fg
  %i.fi = fadd <2 x float> %i.fd, %i.fh           ; 3 uses
  %i.fj = fmul <2 x float> %i.fi, %i.fi
  %i.fk = shufflevector <2 x float> %i.w, <2 x float> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.fl = shufflevector <2 x float> %i.w, <2 x float> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.fm = fadd <2 x float> %i.fk, %i.fl
  %i.fn = fadd <2 x float> %i.fm, %i.fj
  %i.fo = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fn) ; 3 uses
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fdiv <2 x float> %i.v, %i.fp            ; 3 uses
  store <2 x float> %i.fq, ptr %i.x, align 8
  %i.fr = fdiv <2 x float> %i.fi, %i.fo           ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0 ; 3 uses
  store float %i.fs, ptr %.sroa.4163.0..sroa_idx, align 8
  %i.ft = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = fdiv <2 x float> %i.et, %i.ft           ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 140
  %.sroa.066.0.copyload = load <2 x float>, ptr %i.fw, align 4 ; 2 uses
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 148
  %.sroa.267.0.copyload = load float, ptr %.sroa.267.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i248 = extractelement <2 x float> %.sroa.066.0.copyload, i64 0 ; 3 uses
  %i.fx = fmul float %i.z, %.sroa.03.0.vec.extract.i248
  %.sroa.03.4.vec.extract.i249 = extractelement <2 x float> %.sroa.066.0.copyload, i64 1 ; 3 uses
  %i.fy = fmul float %i.ac, %.sroa.03.4.vec.extract.i249
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = fmul float %i.ag, %.sroa.267.0.copyload
  %i.gb = fadd float %i.ga, %i.fz
  %i.gc = fmul float %i.ak, %.sroa.03.0.vec.extract.i248
  %i.gd = fmul float %i.an, %.sroa.03.4.vec.extract.i249
  %i.ge = fadd float %i.gc, %i.gd
  %i.gf = fmul float %i.ar, %.sroa.267.0.copyload
  %i.gg = fadd float %i.gf, %i.ge
  %i.gh = fmul float %i.av, %.sroa.03.0.vec.extract.i248
  %i.gi = fmul float %i.ay, %.sroa.03.4.vec.extract.i249
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = fmul float %i.bc, %.sroa.267.0.copyload
  %i.gl = fadd float %i.gk, %i.gj
  %.sroa.046.0.vec.insert.i250 = insertelement <2 x float> poison, float %i.gb, i64 0
  %.sroa.046.4.vec.insert.i251 = insertelement <2 x float> %.sroa.046.0.vec.insert.i250, float %i.gg, i64 1
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 140
  store <2 x float> %.sroa.046.4.vec.insert.i251, ptr %i.gm, align 4
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.gl, ptr %.sroa.469.0..sroa_idx, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.gn, align 8 ; 2 uses
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.257.0.copyload = load float, ptr %.sroa.257.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i254 = extractelement <2 x float> %.sroa.056.0.copyload, i64 0 ; 3 uses
  %i.go = fmul float %i.z, %.sroa.03.0.vec.extract.i254
  %.sroa.03.4.vec.extract.i255 = extractelement <2 x float> %.sroa.056.0.copyload, i64 1 ; 3 uses
  %i.gp = fmul float %i.ac, %.sroa.03.4.vec.extract.i255
  %i.gq = fadd float %i.go, %i.gp
  %i.gr = fmul float %i.ag, %.sroa.257.0.copyload
  %i.gs = fadd float %i.gr, %i.gq
  %i.gt = fmul float %i.ak, %.sroa.03.0.vec.extract.i254
  %i.gu = fmul float %i.an, %.sroa.03.4.vec.extract.i255
  %i.gv = fadd float %i.gt, %i.gu
  %i.gw = fmul float %i.ar, %.sroa.257.0.copyload
  %i.gx = fadd float %i.gw, %i.gv
  %i.gy = fmul float %i.av, %.sroa.03.0.vec.extract.i254
  %i.gz = fmul float %i.ay, %.sroa.03.4.vec.extract.i255
  %i.ha = fadd float %i.gy, %i.gz
  %i.hb = fmul float %i.bc, %.sroa.257.0.copyload
  %i.hc = fadd float %i.hb, %i.ha
  %.sroa.046.0.vec.insert.i256 = insertelement <2 x float> poison, float %i.gs, i64 0
  %.sroa.046.4.vec.insert.i257 = insertelement <2 x float> %.sroa.046.0.vec.insert.i256, float %i.gx, i64 1
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x float> %.sroa.046.4.vec.insert.i257, ptr %i.hd, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float %i.hc, ptr %.sroa.459.0..sroa_idx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 164
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.he, align 4 ; 4 uses
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 172
  %.sroa.247.0.copyload = load float, ptr %.sroa.247.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i260 = extractelement <2 x float> %.sroa.046.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i261 = extractelement <2 x float> %.sroa.046.0.copyload, i64 1
  %i.hf = shufflevector <2 x float> %.sroa.046.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = fmul <2 x float> %i.l, %i.hf
  %i.hh = shufflevector <2 x float> %.sroa.046.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hi = fmul <2 x float> %i.o, %i.hh
  %i.hj = fadd <2 x float> %i.hg, %i.hi
  %i.hk = insertelement <2 x float> poison, float %.sroa.247.0.copyload, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x float> %i.s, %i.hl
  %i.hn = fadd <2 x float> %i.hm, %i.hj
  %i.ho = fmul float %i.g, %.sroa.012.0.vec.extract.i260
  %i.hp = fmul float %i.i, %.sroa.012.4.vec.extract.i261
  %i.hq = fadd float %i.ho, %i.hp
  %i.hr = fmul float %i.k, %.sroa.247.0.copyload
  %i.hs = fadd float %i.hr, %i.hq
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 164
  store <2 x float> %i.hn, ptr %i.ht, align 4
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.hs, ptr %.sroa.449.0..sroa_idx, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.hu, align 8 ; 4 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i266 = extractelement <2 x float> %.sroa.036.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i267 = extractelement <2 x float> %.sroa.036.0.copyload, i64 1
  %i.hv = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.l, %i.hv
  %i.hx = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = fmul <2 x float> %i.o, %i.hx
  %i.hz = fadd <2 x float> %i.hw, %i.hy
  %i.ia = insertelement <2 x float> poison, float %.sroa.237.0.copyload, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.s, %i.ib
  %i.id = fadd <2 x float> %i.ic, %i.hz
  %i.ie = fmul float %i.g, %.sroa.012.0.vec.extract.i266
  %i.if = fmul float %i.i, %.sroa.012.4.vec.extract.i267
  %i.ig = fadd float %i.ie, %i.if
  %i.ih = fmul float %i.k, %.sroa.237.0.copyload
  %i.ii = fadd float %i.ih, %i.ig
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x float> %i.id, ptr %i.ij, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.ii, ptr %.sroa.439.0..sroa_idx, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.il = load float, ptr %i.ik, align 8, !tbaa !53
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 244
  %i.io = load float, ptr %i.in, align 4, !tbaa !54
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 244
  store float %i.io, ptr %i.ip, align 4, !tbaa !54
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.iq, align 8 ; 2 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 216
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i272 = extractelement <2 x float> %.sroa.026.0.copyload, i64 0 ; 3 uses
  %i.ir = fmul float %i.z, %.sroa.03.0.vec.extract.i272
  %.sroa.03.4.vec.extract.i273 = extractelement <2 x float> %.sroa.026.0.copyload, i64 1 ; 3 uses
  %i.is = fmul float %i.ac, %.sroa.03.4.vec.extract.i273
  %i.it = fadd float %i.ir, %i.is
  %i.iu = fmul float %i.ag, %.sroa.227.0.copyload
  %i.iv = fadd float %i.iu, %i.it
  %i.iw = fmul float %i.ak, %.sroa.03.0.vec.extract.i272
  %i.ix = fmul float %i.an, %.sroa.03.4.vec.extract.i273
  %i.iy = fadd float %i.iw, %i.ix
  %i.iz = fmul float %i.ar, %.sroa.227.0.copyload
  %i.ja = fadd float %i.iz, %i.iy
  %i.jb = fmul float %i.av, %.sroa.03.0.vec.extract.i272
  %i.jc = fmul float %i.ay, %.sroa.03.4.vec.extract.i273
  %i.jd = fadd float %i.jb, %i.jc
  %i.je = fmul float %i.bc, %.sroa.227.0.copyload
  %i.jf = fadd float %i.je, %i.jd
  %.sroa.046.0.vec.insert.i274 = insertelement <2 x float> poison, float %i.iv, i64 0
  %.sroa.046.4.vec.insert.i275 = insertelement <2 x float> %.sroa.046.0.vec.insert.i274, float %i.ja, i64 1
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %.sroa.046.4.vec.insert.i275, ptr %i.jg, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float %i.jf, ptr %.sroa.429.0..sroa_idx, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 220
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.jh, align 4 ; 2 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 228
  %.sroa.217.0.copyload = load float, ptr %.sroa.217.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i278 = extractelement <2 x float> %.sroa.016.0.copyload, i64 0 ; 3 uses
  %i.ji = fmul float %i.z, %.sroa.03.0.vec.extract.i278
  %.sroa.03.4.vec.extract.i279 = extractelement <2 x float> %.sroa.016.0.copyload, i64 1 ; 3 uses
  %i.jj = fmul float %i.ac, %.sroa.03.4.vec.extract.i279
  %i.jk = fadd float %i.ji, %i.jj
  %i.jl = fmul float %i.ag, %.sroa.217.0.copyload
  %i.jm = fadd float %i.jl, %i.jk
  %i.jn = fmul float %i.ak, %.sroa.03.0.vec.extract.i278
  %i.jo = fmul float %i.an, %.sroa.03.4.vec.extract.i279
  %i.jp = fadd float %i.jn, %i.jo
  %i.jq = fmul float %i.ar, %.sroa.217.0.copyload
  %i.jr = fadd float %i.jq, %i.jp
  %i.js = fmul float %i.av, %.sroa.03.0.vec.extract.i278
  %i.jt = fmul float %i.ay, %.sroa.03.4.vec.extract.i279
  %i.ju = fadd float %i.js, %i.jt
  %i.jv = fmul float %i.bc, %.sroa.217.0.copyload
  %i.jw = fadd float %i.jv, %i.ju
  %.sroa.046.0.vec.insert.i280 = insertelement <2 x float> poison, float %i.jm, i64 0
  %.sroa.046.4.vec.insert.i281 = insertelement <2 x float> %.sroa.046.0.vec.insert.i280, float %i.jr, i64 1
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 220
  store <2 x float> %.sroa.046.4.vec.insert.i281, ptr %i.jx, align 4
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.jy = load <2 x float>, ptr %i.im, align 4, !tbaa !11
  %i.jz = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.ka = insertelement <4 x float> %i.jz, float %i.il, i64 1
  %i.kb = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kc = shufflevector <4 x float> %i.ka, <4 x float> %i.kb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.kc, ptr %.sroa.419.0..sroa_idx, align 4
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.kf = load <2 x i64>, ptr %i.kd, align 8, !tbaa !55
  store <2 x i64> %i.kf, ptr %i.ke, align 8, !tbaa !55
  %i.kg = extractelement <2 x float> %i.fr, i64 1 ; 4 uses
  %i.kh = fmul float %i.fs, %i.kg                 ; 2 uses
  %i.ki = extractelement <2 x float> %i.fq, i64 1
  %i.kj = extractelement <2 x float> %i.fu, i64 1
  %i.kk = tail call noundef float @llvm.fma.f32(float %i.kj, float %i.ki, float %i.kh)
  %i.kl = fneg float %i.kh
  %i.km = tail call noundef float @llvm.fma.f32(float %i.kg, float %i.fs, float %i.kl)
  %i.kn = fadd float %i.kk, %i.km
  %i.ko = extractelement <2 x float> %i.fq, i64 0
  %i.kp = extractelement <2 x float> %i.fu, i64 0
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
  %3 = load <4 x float>, ptr %.sroa.2159.0..sroa_idx, align 8 ; 2 uses
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.d = load <2 x float>, ptr %1, align 4        ; 6 uses
  %i.e = load <2 x float>, ptr %.sroa.85344.64..sroa_idx, align 4 ; 6 uses
  %i.f = load <2 x float>, ptr %.sroa.103360.64..sroa_idx, align 4 ; 6 uses
  %i.g = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.d, %i.g
  %i.i = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.j = fmul <2 x float> %i.e, %i.i
  %i.k = fadd <2 x float> %i.h, %i.j
  %i.l = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.f, %i.l
  %i.n = fadd <2 x float> %i.m, %i.k              ; 3 uses
  %i.o = fmul <2 x float> %i.n, %i.n              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.q, align 4 ; 2 uses
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 0 ; 3 uses
  %i.r = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 1 ; 3 uses
  %i.s = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i
  %i.t = fadd float %i.r, %i.s
  %i.u = fmul float %.sroa.17.0.copyload, %.sroa.2141.0.copyload
  %i.v = fadd float %i.u, %i.t                    ; 3 uses
  %i.w = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i
  %i.x = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i
  %i.y = fadd float %i.w, %i.x
  %i.z = fmul float %.sroa.38.0.copyload, %.sroa.2141.0.copyload
  %i.aa = fadd float %i.z, %i.y                   ; 3 uses
  %i.ab = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i
  %i.ac = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i
  %i.ad = fadd float %i.ab, %i.ac
  %i.ae = fmul float %.sroa.59.0.copyload, %.sroa.2141.0.copyload
  %i.af = fadd float %i.ae, %i.ad                 ; 3 uses
  %i.ag = fmul float %i.v, %i.v
  %i.ah = fmul float %i.aa, %i.aa
  %i.ai = fadd float %i.ag, %i.ah
  %i.aj = fmul float %i.af, %i.af
  %i.ak = fadd float %i.aj, %i.ai
  %sqrt.i.i192 = tail call noundef float @llvm.sqrt.f32(float %i.ak) ; 3 uses
  %i.al = fdiv float %i.v, %sqrt.i.i192
  %i.am = fdiv float %i.aa, %sqrt.i.i192
  %i.an = fdiv float %i.af, %sqrt.i.i192
  %.sroa.0.0.vec.insert.i.i193 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.0.4.vec.insert.i.i194 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i193, float %i.am, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i.i194, ptr %i.ao, align 4
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.an, ptr %.sroa.4145.0..sroa_idx, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.aq, ptr %i.ar, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  store ptr %i.at, ptr %i.a, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = load i64, ptr %i.au, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0124.0.copyload = load <2 x float>, ptr %i.ax, align 8 ; 2 uses
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.2125.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i197 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 0 ; 3 uses
  %i.ay = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i197
  %.sroa.03.4.vec.extract.i198 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 1 ; 3 uses
  %i.az = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i198
  %i.ba = fadd float %i.ay, %i.az
  %i.bb = fmul float %.sroa.17.0.copyload, %.sroa.2125.0.copyload
  %i.bc = fadd float %i.bb, %i.ba
  %i.bd = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i197
  %i.be = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i198
  %i.bf = fadd float %i.bd, %i.be
  %i.bg = fmul float %.sroa.38.0.copyload, %.sroa.2125.0.copyload
  %i.bh = fadd float %i.bg, %i.bf
  %i.bi = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i197
  %i.bj = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i198
  %i.bk = fadd float %i.bi, %i.bj
  %i.bl = fmul float %.sroa.59.0.copyload, %.sroa.2125.0.copyload
  %i.bm = fadd float %i.bl, %i.bk
  %.sroa.046.0.vec.insert.i199 = insertelement <2 x float> poison, float %i.bc, i64 0
  %.sroa.046.4.vec.insert.i200 = insertelement <2 x float> %.sroa.046.0.vec.insert.i199, float %i.bh, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.046.4.vec.insert.i200, ptr %i.bn, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.bm, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 92
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.bo, align 4 ; 2 uses
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %.sroa.2115.0.copyload = load float, ptr %.sroa.2115.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i203 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 0 ; 3 uses
  %i.bp = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i203
  %.sroa.03.4.vec.extract.i204 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 1 ; 3 uses
  %i.bq = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i204
  %i.br = fadd float %i.bp, %i.bq
  %i.bs = fmul float %.sroa.17.0.copyload, %.sroa.2115.0.copyload
  %i.bt = fadd float %i.bs, %i.br
  %i.bu = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i203
  %i.bv = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i204
  %i.bw = fadd float %i.bu, %i.bv
  %i.bx = fmul float %.sroa.38.0.copyload, %.sroa.2115.0.copyload
  %i.by = fadd float %i.bx, %i.bw
  %i.bz = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i203
  %i.ca = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i204
  %i.cb = fadd float %i.bz, %i.ca
  %i.cc = fmul float %.sroa.59.0.copyload, %.sroa.2115.0.copyload
  %i.cd = fadd float %i.cc, %i.cb
  %.sroa.046.0.vec.insert.i205 = insertelement <2 x float> poison, float %i.bt, i64 0
  %.sroa.046.4.vec.insert.i206 = insertelement <2 x float> %.sroa.046.0.vec.insert.i205, float %i.by, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %.sroa.046.4.vec.insert.i206, ptr %i.ce, align 4
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.cd, ptr %.sroa.4117.0..sroa_idx, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.0104.0.copyload = load <2 x float>, ptr %i.cf, align 8 ; 4 uses
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.2105.0.copyload = load float, ptr %.sroa.2105.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i209 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i210 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 1
  %i.cg = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.d, %i.cg
  %i.ci = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x float> %i.e, %i.ci
  %i.ck = fadd <2 x float> %i.ch, %i.cj
  %i.cl = insertelement <2 x float> poison, float %.sroa.2105.0.copyload, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.f, %i.cm
  %i.co = fadd <2 x float> %i.cn, %i.ck
  %i.cp = fmul float %.sroa.79.64.copyload, %.sroa.012.0.vec.extract.i209
  %i.cq = fmul float %.sroa.97.64.copyload, %.sroa.012.4.vec.extract.i210
  %i.cr = fadd float %i.cp, %i.cq
  %i.cs = fmul float %.sroa.115.64.copyload, %.sroa.2105.0.copyload
  %i.ct = fadd float %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x float> %i.co, ptr %i.cu, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.ct, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 116
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.cv, align 4 ; 4 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i215 = extractelement <2 x float> %.sroa.094.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i216 = extractelement <2 x float> %.sroa.094.0.copyload, i64 1
  %i.cw = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.d, %i.cw
  %i.cy = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fmul <2 x float> %i.e, %i.cy
  %i.da = fadd <2 x float> %i.cx, %i.cz
  %i.db = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.f, %i.dc
  %i.de = fadd <2 x float> %i.dd, %i.da
  %i.df = fmul float %.sroa.79.64.copyload, %.sroa.012.0.vec.extract.i215
  %i.dg = fmul float %.sroa.97.64.copyload, %.sroa.012.4.vec.extract.i216
  %i.dh = fadd float %i.df, %i.dg
  %i.di = fmul float %.sroa.115.64.copyload, %.sroa.295.0.copyload
  %i.dj = fadd float %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.de, ptr %i.dk, align 4
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.dj, ptr %.sroa.497.0..sroa_idx, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.sroa.082.0.copyload = load <2 x float>, ptr %i.dl, align 8 ; 4 uses
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 8 ; 2 uses
  %i.dm = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.d, %i.dm
  %i.do = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = fmul <2 x float> %i.e, %i.do
  %i.dq = fadd <2 x float> %i.dn, %i.dp
  %i.dr = insertelement <2 x float> poison, float %.sroa.283.0.copyload, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.f, %i.ds
  %i.du = fadd <2 x float> %i.dt, %i.dq           ; 3 uses
  %i.dv = fmul <2 x float> %i.du, %i.du           ; 2 uses
  %i.dw = insertelement <2 x float> poison, float %.sroa.79.64.copyload, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> %.sroa.082.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.dz = fmul <2 x float> %i.dx, %i.dy
  %i.ea = insertelement <2 x float> poison, float %.sroa.97.64.copyload, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> %.sroa.082.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ed = fmul <2 x float> %i.eb, %i.ec
  %i.ee = fadd <2 x float> %i.dz, %i.ed
  %i.ef = insertelement <2 x float> poison, float %.sroa.115.64.copyload, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = insertelement <2 x float> %4, float %.sroa.283.0.copyload, i64 1
  %i.ei = fmul <2 x float> %i.eg, %i.eh
  %i.ej = fadd <2 x float> %i.ei, %i.ee           ; 3 uses
  %i.ek = fmul <2 x float> %i.ej, %i.ej
  %i.el = shufflevector <2 x float> %i.o, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.em = shufflevector <2 x float> %i.o, <2 x float> %i.dv, <2 x i32> <i32 1, i32 3>
  %i.en = fadd <2 x float> %i.el, %i.em
  %i.eo = fadd <2 x float> %i.ek, %i.en
  %i.ep = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.eo) ; 3 uses
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fdiv <2 x float> %i.n, %i.eq            ; 3 uses
  store <2 x float> %i.er, ptr %i.p, align 8
  %i.es = fdiv <2 x float> %i.ej, %i.ep           ; 2 uses
  %i.et = extractelement <2 x float> %i.es, i64 0 ; 3 uses
  store float %i.et, ptr %.sroa.4163.0..sroa_idx, align 8
  %i.eu = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fdiv <2 x float> %i.du, %i.eu           ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 140
  %.sroa.066.0.copyload = load <2 x float>, ptr %i.ex, align 4 ; 2 uses
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 148
  %.sroa.267.0.copyload = load float, ptr %.sroa.267.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i234 = extractelement <2 x float> %.sroa.066.0.copyload, i64 0 ; 3 uses
  %i.ey = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i234
  %.sroa.03.4.vec.extract.i235 = extractelement <2 x float> %.sroa.066.0.copyload, i64 1 ; 3 uses
  %i.ez = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i235
  %i.fa = fadd float %i.ey, %i.ez
  %i.fb = fmul float %.sroa.17.0.copyload, %.sroa.267.0.copyload
  %i.fc = fadd float %i.fb, %i.fa
  %i.fd = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i234
  %i.fe = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i235
  %i.ff = fadd float %i.fd, %i.fe
  %i.fg = fmul float %.sroa.38.0.copyload, %.sroa.267.0.copyload
  %i.fh = fadd float %i.fg, %i.ff
  %i.fi = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i234
  %i.fj = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i235
  %i.fk = fadd float %i.fi, %i.fj
  %i.fl = fmul float %.sroa.59.0.copyload, %.sroa.267.0.copyload
  %i.fm = fadd float %i.fl, %i.fk
  %.sroa.046.0.vec.insert.i236 = insertelement <2 x float> poison, float %i.fc, i64 0
  %.sroa.046.4.vec.insert.i237 = insertelement <2 x float> %.sroa.046.0.vec.insert.i236, float %i.fh, i64 1
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 140
  store <2 x float> %.sroa.046.4.vec.insert.i237, ptr %i.fn, align 4
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.fm, ptr %.sroa.469.0..sroa_idx, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.fo, align 8 ; 2 uses
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.257.0.copyload = load float, ptr %.sroa.257.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i240 = extractelement <2 x float> %.sroa.056.0.copyload, i64 0 ; 3 uses
  %i.fp = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i240
  %.sroa.03.4.vec.extract.i241 = extractelement <2 x float> %.sroa.056.0.copyload, i64 1 ; 3 uses
  %i.fq = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i241
  %i.fr = fadd float %i.fp, %i.fq
  %i.fs = fmul float %.sroa.17.0.copyload, %.sroa.257.0.copyload
  %i.ft = fadd float %i.fs, %i.fr
  %i.fu = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i240
  %i.fv = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i241
  %i.fw = fadd float %i.fu, %i.fv
  %i.fx = fmul float %.sroa.38.0.copyload, %.sroa.257.0.copyload
  %i.fy = fadd float %i.fx, %i.fw
  %i.fz = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i240
  %i.ga = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i241
  %i.gb = fadd float %i.fz, %i.ga
  %i.gc = fmul float %.sroa.59.0.copyload, %.sroa.257.0.copyload
  %i.gd = fadd float %i.gc, %i.gb
  %.sroa.046.0.vec.insert.i242 = insertelement <2 x float> poison, float %i.ft, i64 0
  %.sroa.046.4.vec.insert.i243 = insertelement <2 x float> %.sroa.046.0.vec.insert.i242, float %i.fy, i64 1
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x float> %.sroa.046.4.vec.insert.i243, ptr %i.ge, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float %i.gd, ptr %.sroa.459.0..sroa_idx, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 164
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.gf, align 4 ; 4 uses
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 172
  %.sroa.247.0.copyload = load float, ptr %.sroa.247.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i246 = extractelement <2 x float> %.sroa.046.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i247 = extractelement <2 x float> %.sroa.046.0.copyload, i64 1
  %i.gg = shufflevector <2 x float> %.sroa.046.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x float> %i.d, %i.gg
  %i.gi = shufflevector <2 x float> %.sroa.046.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = fmul <2 x float> %i.e, %i.gi
  %i.gk = fadd <2 x float> %i.gh, %i.gj
  %i.gl = insertelement <2 x float> poison, float %.sroa.247.0.copyload, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.f, %i.gm
  %i.go = fadd <2 x float> %i.gn, %i.gk
  %i.gp = fmul float %.sroa.79.64.copyload, %.sroa.012.0.vec.extract.i246
  %i.gq = fmul float %.sroa.97.64.copyload, %.sroa.012.4.vec.extract.i247
  %i.gr = fadd float %i.gp, %i.gq
  %i.gs = fmul float %.sroa.115.64.copyload, %.sroa.247.0.copyload
  %i.gt = fadd float %i.gs, %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 164
  store <2 x float> %i.go, ptr %i.gu, align 4
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.gt, ptr %.sroa.449.0..sroa_idx, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.gv, align 8 ; 4 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i252 = extractelement <2 x float> %.sroa.036.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i253 = extractelement <2 x float> %.sroa.036.0.copyload, i64 1
  %i.gw = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x float> %i.d, %i.gw
  %i.gy = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gz = fmul <2 x float> %i.e, %i.gy
  %i.ha = fadd <2 x float> %i.gx, %i.gz
  %i.hb = insertelement <2 x float> poison, float %.sroa.237.0.copyload, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x float> %i.f, %i.hc
  %i.he = fadd <2 x float> %i.hd, %i.ha
  %i.hf = fmul float %.sroa.79.64.copyload, %.sroa.012.0.vec.extract.i252
  %i.hg = fmul float %.sroa.97.64.copyload, %.sroa.012.4.vec.extract.i253
  %i.hh = fadd float %i.hf, %i.hg
  %i.hi = fmul float %.sroa.115.64.copyload, %.sroa.237.0.copyload
  %i.hj = fadd float %i.hi, %i.hh
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x float> %i.he, ptr %i.hk, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.hj, ptr %.sroa.439.0..sroa_idx, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !53
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 244
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !54
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 244
  store float %i.hp, ptr %i.hq, align 4, !tbaa !54
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.hr, align 8 ; 2 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 216
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i258 = extractelement <2 x float> %.sroa.026.0.copyload, i64 0 ; 3 uses
  %i.hs = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i258
  %.sroa.03.4.vec.extract.i259 = extractelement <2 x float> %.sroa.026.0.copyload, i64 1 ; 3 uses
  %i.ht = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i259
  %i.hu = fadd float %i.hs, %i.ht
  %i.hv = fmul float %.sroa.17.0.copyload, %.sroa.227.0.copyload
  %i.hw = fadd float %i.hv, %i.hu
  %i.hx = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i258
  %i.hy = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i259
  %i.hz = fadd float %i.hx, %i.hy
  %i.ia = fmul float %.sroa.38.0.copyload, %.sroa.227.0.copyload
  %i.ib = fadd float %i.ia, %i.hz
  %i.ic = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i258
  %i.id = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i259
  %i.ie = fadd float %i.ic, %i.id
  %i.if = fmul float %.sroa.59.0.copyload, %.sroa.227.0.copyload
  %i.ig = fadd float %i.if, %i.ie
  %.sroa.046.0.vec.insert.i260 = insertelement <2 x float> poison, float %i.hw, i64 0
  %.sroa.046.4.vec.insert.i261 = insertelement <2 x float> %.sroa.046.0.vec.insert.i260, float %i.ib, i64 1
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %.sroa.046.4.vec.insert.i261, ptr %i.ih, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float %i.ig, ptr %.sroa.429.0..sroa_idx, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 220
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.ii, align 4 ; 2 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 228
  %.sroa.217.0.copyload = load float, ptr %.sroa.217.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i264 = extractelement <2 x float> %.sroa.016.0.copyload, i64 0 ; 3 uses
  %i.ij = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i264
  %.sroa.03.4.vec.extract.i265 = extractelement <2 x float> %.sroa.016.0.copyload, i64 1 ; 3 uses
  %i.ik = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i265
  %i.il = fadd float %i.ij, %i.ik
  %i.im = fmul float %.sroa.17.0.copyload, %.sroa.217.0.copyload
  %i.in = fadd float %i.im, %i.il
  %i.io = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i264
  %i.ip = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i265
  %i.iq = fadd float %i.io, %i.ip
  %i.ir = fmul float %.sroa.38.0.copyload, %.sroa.217.0.copyload
  %i.is = fadd float %i.ir, %i.iq
  %i.it = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i264
  %i.iu = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i265
  %i.iv = fadd float %i.it, %i.iu
  %i.iw = fmul float %.sroa.59.0.copyload, %.sroa.217.0.copyload
  %i.ix = fadd float %i.iw, %i.iv
  %.sroa.046.0.vec.insert.i266 = insertelement <2 x float> poison, float %i.in, i64 0
  %.sroa.046.4.vec.insert.i267 = insertelement <2 x float> %.sroa.046.0.vec.insert.i266, float %i.is, i64 1
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 220
  store <2 x float> %.sroa.046.4.vec.insert.i267, ptr %i.iy, align 4
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.iz = load <2 x float>, ptr %i.hn, align 4, !tbaa !11
  %i.ja = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.jb = insertelement <4 x float> %i.ja, float %i.hm, i64 1
  %i.jc = shufflevector <2 x float> %i.iz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jd = shufflevector <4 x float> %i.jb, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.jd, ptr %.sroa.419.0..sroa_idx, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jg = load <2 x i64>, ptr %i.je, align 8, !tbaa !55
  store <2 x i64> %i.jg, ptr %i.jf, align 8, !tbaa !55
  %i.jh = extractelement <2 x float> %i.es, i64 1 ; 4 uses
  %i.ji = fmul float %i.et, %i.jh                 ; 2 uses
  %i.jj = extractelement <2 x float> %i.er, i64 1
  %i.jk = extractelement <2 x float> %i.ev, i64 1
  %i.jl = tail call noundef float @llvm.fma.f32(float %i.jk, float %i.jj, float %i.ji)
  %i.jm = fneg float %i.ji
  %i.jn = tail call noundef float @llvm.fma.f32(float %i.jh, float %i.et, float %i.jm)
  %i.jo = fadd float %i.jl, %i.jn
  %i.jp = extractelement <2 x float> %i.er, i64 0
  %i.jq = extractelement <2 x float> %i.ev, i64 0
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
  %6 = load <4 x float>, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %7 = load <4 x float>, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %8 = load <4 x float>, ptr %i.cq, align 4
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
  %i.da = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x float> poison, float %.sroa.233.0.copyload, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %.sroa.223.0.copyload, i64 1 ; 2 uses
  %i.dd = fmul <2 x float> %i.da, %i.dc
  %i.de = fadd <2 x float> %i.cz, %i.dd
  %i.df = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
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
  %i.dq = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
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
