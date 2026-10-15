Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JpegTurboImageLoader?download=true
inline.NumInlined: 12076
inline.NumDeleted: 4028
loop-unroll.NumCompletelyUnrolled: 81
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE125ELb0EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai:bb.a
  %.031168 = phi i64 [ %i.kz, %.lr.ph169 ], [ 3, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEERKSA_.exit ] ; 3 uses
  %i.jy = load ptr, ptr %i.ef, align 8, !tbaa !638, !nonnull !135, !align !305
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !105 ; 4 uses
  %i.ka = getelementptr i8, ptr %.sroa.0.0.i, i64 %.031168 ; 4 uses
  %i.kb = mul i64 %i.jz, %i.ee
  %i.kc = getelementptr i8, ptr %i.ka, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !101
  %i.ke = mul i64 %i.jz, %i.ej
  %i.kf = getelementptr i8, ptr %i.ka, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !101
  %i.kh = mul i64 %i.jz, %i.el
  %i.ki = getelementptr i8, ptr %i.ka, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !101
  %i.kk = mul i64 %i.jz, %i.en
  %i.kl = getelementptr i8, ptr %i.ka, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !101
  %i.kn = insertelement <4 x i8> poison, i8 %i.kd, i64 0
  %i.ko = insertelement <4 x i8> %i.kn, i8 %i.kg, i64 1
  %i.kp = insertelement <4 x i8> %i.ko, i8 %i.kj, i64 2
  %i.kq = insertelement <4 x i8> %i.kp, i8 %i.km, i64 3
  %i.kr = uitofp <4 x i8> %i.kq to <4 x float>
  %i.ks = fmul <4 x float> %.sroa.082.1, %i.kr
  %i.kt = fadd <4 x float> %.sroa.077.1, %i.ks
  %i.ku = load ptr, ptr %i.hb, align 8, !tbaa !639, !nonnull !135, !align !305
  %i.kv = load ptr, ptr %0, align 8, !tbaa !632, !nonnull !135, !align !411
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !232
  %i.kx = sext i32 %i.kw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ky = fmul <4 x float> %.sroa.074.1, %i.kt
  store <4 x float> %i.ky, ptr %4, align 16
  call void @_ZN3tev12storeChannelIN5xsimd5batchIfNS1_4sse2EEENS_16MultiChannelViewIfEEEEvRKT0_mmmRKT_(ptr noundef nonnull align 8 dereferenceable(144) %i.ku, i64 noundef %.031168, i64 noundef %i.ee, i64 noundef %i.kx, ptr noundef nonnull align 16 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.kz = add nuw i64 %.031168, 1                 ; 2 uses
  %i.la = load ptr, ptr %i.du, align 8, !tbaa !641, !nonnull !135, !align !305
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !105
  %i.lc = icmp ult i64 %i.kz, %i.lb
  br i1 %i.lc, label %.lr.ph169, label %.loopexit, !llvm.loop !2165

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.029165 = phi i64 [ 0, %.lr.ph ], [ %i.me, %bb.g ] ; 3 uses
  %i.ld = load ptr, ptr %i.dz, align 8, !tbaa !638, !nonnull !135, !align !305
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !105 ; 4 uses
  %i.lf = getelementptr i8, ptr %.sroa.0.0.i, i64 %.029165 ; 4 uses
  %i.lg = mul i64 %i.le, %i.dy
  %i.lh = getelementptr i8, ptr %i.lf, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !101
  %i.lj = mul i64 %i.le, %i.ea
  %i.lk = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !101
  %i.lm = mul i64 %i.le, %i.eb
  %i.ln = getelementptr i8, ptr %i.lf, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !101
  %i.lp = mul i64 %i.le, %i.ec
  %i.lq = getelementptr i8, ptr %i.lf, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !101
  %i.ls = insertelement <4 x i8> poison, i8 %i.li, i64 0
  %i.lt = insertelement <4 x i8> %i.ls, i8 %i.ll, i64 1
  %i.lu = insertelement <4 x i8> %i.lt, i8 %i.lo, i64 2
  %i.lv = insertelement <4 x i8> %i.lu, i8 %i.lr, i64 3
  %i.lw = uitofp <4 x i8> %i.lv to <4 x float>
  %i.lx = fmul <4 x float> %.sroa.082.1, %i.lw
  %i.ly = fadd <4 x float> %.sroa.077.1, %i.lx
  %i.lz = load ptr, ptr %i.ed, align 8, !tbaa !639, !nonnull !135, !align !305
  %i.ma = load ptr, ptr %0, align 8, !tbaa !632, !nonnull !135, !align !411
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !232
  %i.mc = sext i32 %i.mb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.md = fmul <4 x float> %.sroa.074.1, %i.ly
  store <4 x float> %i.md, ptr %5, align 16
  call void @_ZN3tev12storeChannelIN5xsimd5batchIfNS1_4sse2EEENS_16MultiChannelViewIfEEEEvRKT0_mmmRKT_(ptr noundef nonnull align 8 dereferenceable(144) %i.lz, i64 noundef %.029165, i64 noundef %i.dy, i64 noundef %i.mc, ptr noundef nonnull align 16 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.me = add nuw i64 %.029165, 1                 ; 2 uses
  %i.mf = load ptr, ptr %i.du, align 8, !tbaa !641, !nonnull !135, !align !305
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !105
  %i.mh = icmp ult i64 %i.me, %i.mg
  br i1 %i.mh, label %bb.g, label %.loopexit, !llvm.loop !2166

.loopexit:                                        ; preds = %bb.g, %.lr.ph169, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEERKSA_.exit, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE125ELb0EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.81", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !632, !nonnull !135, !align !411
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !633, !nonnull !135, !align !305
  %i.f = load i64, ptr %i.e, align 8, !tbaa !105
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !634, !nonnull !135, !align !305
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !635, !nonnull !135, !align !411
  %i.m = load float, ptr %i.l, align 4, !tbaa !73 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !636, !nonnull !135, !align !411
  %i.p = load float, ptr %i.o, align 4, !tbaa !73 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !637, !nonnull !135
  %i.s = load i8, ptr %i.r, align 1, !tbaa !288, !range !134, !noundef !135
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !638, !nonnull !135, !align !305
  %i.w = load i64, ptr %i.v, align 8, !tbaa !105  ; 2 uses
  %i.x = sext i32 %1 to i64                       ; 2 uses
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr i8, ptr %.sroa.0.0.i, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.y
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !101
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.ad, float %i.m, float %i.p) ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !639, !nonnull !135, !align !305 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !378
  %i.ak = getelementptr [24 x i8], ptr %i.aj, i64 %i.ai ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = getelementptr i8, ptr %i.ak, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !232
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, %i.c
  %i.aq = add nsw i64 %i.ap, %i.x
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !387
  %i.as = getelementptr i8, ptr %i.ak, i64 -16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !388
  %i.au = mul i64 %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  store float %i.ae, ptr %i.av, align 4, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !640, !nonnull !135, !align !411
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !290
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = fcmp ogt float %i.ae, f0x38D1B717
  %i.bb = fdiv float 1.000000e+00, %i.ae
  %.sroa.speculated = select i1 %i.ba, float %i.bb, float 1.000000e+00 ; 2 uses
  %i.bc = fmul float %i.m, %.sroa.speculated
  %i.bd = fmul float %i.p, %.sroa.speculated
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.168 = phi float [ %i.p, %bb.a ], [ %i.bd, %bb.c ], [ %i.p, %bb.b ] ; 6 uses
  %.166 = phi float [ %i.m, %bb.a ], [ %i.bc, %bb.c ], [ %i.m, %bb.b ] ; 6 uses
  %.1 = phi float [ 1.000000e+00, %bb.a ], [ %i.ae, %bb.c ], [ 1.000000e+00, %bb.b ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !641, !nonnull !135, !align !305
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !105 ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 2
  br i1 %i.bh, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bi = sext i32 %1 to i64                      ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !638, !nonnull !135, !align !305
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !105
  %i.bm = mul i64 %i.bl, %i.bi
  %invariant.gep = getelementptr i8, ptr %.sroa.0.0.i, i64 %i.bm ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !639, !nonnull !135, !align !305
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !378 ; 6 uses
  %i.bq = load i8, ptr %invariant.gep, align 1, !tbaa !101
  %i.br = uitofp i8 %i.bq to float
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float %.166, float %.168)
  %i.bt = fmul float %.1, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !232
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.c
  %i.by = add nsw i64 %i.bx, %i.bi
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !387
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !388
  %i.cc = mul i64 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cc
  store float %i.bt, ptr %i.cd, align 4, !tbaa !73
  %exitcond.not = icmp eq i64 %i.bg, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ce = sext i32 %1 to i64                      ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !638, !nonnull !135, !align !305
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !105
  %i.ci = mul i64 %i.ch, %i.ce
  %invariant.gep.i = getelementptr i8, ptr %.sroa.0.0.i, i64 %i.ci ; 2 uses
  %i.cj = load i8, ptr %invariant.gep.i, align 1, !tbaa !101
  %i.ck = uitofp i8 %i.cj to float
  %gep.1.i.a = getelementptr i8, ptr %invariant.gep.i, i64 1
  %3 = load <2 x i8>, ptr %gep.1.i.a, align 1, !tbaa !101
  %4 = uitofp <2 x i8> %3 to <2 x float>          ; 2 uses
  %5 = tail call noundef float @llvm.fma.f32(float %i.ck, float %.166, float %.168) ; 3 uses
  %6 = extractelement <2 x float> %4, i64 0
  %7 = tail call noundef float @llvm.fma.f32(float %6, float %.166, float %.168)
  %8 = extractelement <2 x float> %4, i64 1
  %i.cl = tail call noundef float @llvm.fma.f32(float %8, float %.166, float %.168)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %9 = fadd float %7, -5.000000e-01               ; 2 uses
  %10 = fadd float %i.cl, -5.000000e-01
  %11 = tail call float @llvm.fmuladd.f32(float %9, float -3.441360e-01, float %5)
  %i.cm = insertelement <2 x float> poison, float %10, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x float> poison, float %5, i64 0
  %13 = insertelement <2 x float> %12, float %11, i64 1
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> <float 1.402000e+00, float -7.141360e-01>, <2 x float> %13)
  %14 = tail call float @llvm.fmuladd.f32(float %9, float 1.772000e+00, float %5)
  store <2 x float> %i.co, ptr %2, align 8
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %14, ptr %.sroa.26.0..sroa_idx.i.i, align 8
  %i.cp = invoke { <2 x float>, float } @_ZN3tev8ituth27318invTransferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #42
  unreachable

_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.cp, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.cp, 1
  %.sroa.0.0.vec.extract85 = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.cs = fmul float %.1, %.sroa.0.0.vec.extract85
  %.sroa.0.4.vec.extract94 = extractelement <2 x float> %.fca.0.extract, i64 1
  %i.ct = fmul float %.1, %.sroa.0.4.vec.extract94
  %i.cu = fmul float %.1, %.fca.1.extract
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !639, !nonnull !135, !align !305 ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !632, !nonnull !135, !align !411
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !232
  %i.cz = sext i32 %i.cy to i64                   ; 4 uses
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !378 ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !232
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.dd, %i.cz
  %i.df = add nsw i64 %i.de, %i.ce
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !387
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !388
  %i.dj = mul i64 %i.df, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dj
  store float %i.cs, ptr %i.dk, align 4, !tbaa !73
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !232
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul nsw i64 %i.do, %i.cz
  %i.dq = add nsw i64 %i.dp, %i.ce
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !387
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !388
  %i.du = mul i64 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.du
  store float %i.ct, ptr %i.dv, align 4, !tbaa !73
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !232
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.dz, %i.cz
  %i.eb = add nsw i64 %i.ea, %i.ce
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !387
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !388
  %i.ef = mul i64 %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ef
  store float %i.cu, ptr %i.eg, align 4, !tbaa !73
  %i.eh = load ptr, ptr %i.be, align 8, !tbaa !641, !nonnull !135, !align !305
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !105 ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, 3
  br i1 %i.ej, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit
  %i.ek = load ptr, ptr %i.cf, align 8, !tbaa !638, !nonnull !135, !align !305
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !105
  %i.em = mul i64 %i.el, %i.ce
  %invariant.gep74 = getelementptr i8, ptr %.sroa.0.0.i, i64 %i.em
  %i.en = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph73, %bb.g
  %.03472 = phi i64 [ 3, %.lr.ph73 ], [ %i.fj, %bb.g ] ; 5 uses
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %.03472
  %i.eo = load i8, ptr %gep75, align 1, !tbaa !101
  %i.ep = uitofp i8 %i.eo to float
  %i.eq = call noundef float @llvm.fma.f32(float %i.ep, float %.166, float %.168)
  %i.er = fmul float %.1, %i.eq
  %i.es = and i64 %.03472, 2147483648
  %.not.i = icmp eq i64 %i.es, 0
  %i.et = load i64, ptr %i.en, align 8
  %sext.i = shl i64 %.03472, 32
  %i.eu = ashr exact i64 %sext.i, 32
  %i.ev = add i64 %i.et, %i.eu
  %i.ew = and i64 %.03472, 4294967295
  %i.ex = select i1 %.not.i, i64 %i.ew, i64 %i.ev
  %i.ey = getelementptr inbounds [24 x i8], ptr %i.da, i64 %i.ex ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !232
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, %i.cz
  %i.fd = add nsw i64 %i.fc, %i.ce
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !387
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !388
  %i.fh = mul i64 %i.fd, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fh
  store float %i.er, ptr %i.fi, align 4, !tbaa !73
  %i.fj = add nuw i64 %.03472, 1                  ; 2 uses
  %exitcond78.not = icmp eq i64 %i.fj, %i.ei
  br i1 %exitcond78.not, label %.loopexit, label %bb.g, !llvm.loop !2170

bb.h:                                             ; preds = %.lr.ph
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 1
  %i.fk = load i8, ptr %gep.1, align 1, !tbaa !101
  %i.fl = uitofp i8 %i.fk to float
  %i.fm = tail call noundef float @llvm.fma.f32(float %i.fl, float %.166, float %.168)
  %i.fn = fmul float %.1, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !232
  %i.fr = sext i32 %i.fq to i64
  %i.fs = mul nsw i64 %i.fr, %i.c
  %i.ft = add nsw i64 %i.fs, %i.bi
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !387
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !388
  %i.fx = mul i64 %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fx
  store float %i.fn, ptr %i.fy, align 4, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev12storeChannelIN5xsimd5batchIfNS1_4sse2EEENS_16MultiChannelViewIfEEEEvRKT0_mmmRKT_(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #30 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <4 x float>, ptr %4, align 16, !tbaa !101 ; 8 uses
  %i.b = and i64 %1, 2147483648
  %.not = icmp eq i64 %i.b, 0
  %i.c = load ptr, ptr %0, align 8, !tbaa !378    ; 5 uses
  %i.d = shl i64 %3, 32
  %i.e = ashr exact i64 %i.d, 32                  ; 5 uses
  br i1 %.not, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %sext = shl i64 %1, 32
  %i.f = ashr exact i64 %sext, 32                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.a, i64 0
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr [24 x i8], ptr %i.c, i64 %i.h
  %i.j = getelementptr [24 x i8], ptr %i.i, i64 %i.f ; 3 uses
  %i.k = shl i64 %2, 32
  %i.l = ashr exact i64 %i.k, 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load i32, ptr %i.m, align 4, !tbaa !232
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.e, %i.o
  %i.q = add nsw i64 %i.p, %i.l
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !387
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !388
  %i.u = mul i64 %i.q, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  store float %.sroa.0.0.vec.extract, ptr %i.v, align 4, !tbaa !73
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.a, i64 1
  %i.w = load i64, ptr %i.g, align 8
  %i.x = getelementptr [24 x i8], ptr %i.c, i64 %i.w
  %i.y = getelementptr [24 x i8], ptr %i.x, i64 %i.f ; 3 uses
  %i.z = shl i64 %2, 32
  %i.aa = add i64 %i.z, 4294967296
  %i.ab = ashr exact i64 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !232
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.e, %i.ae
  %i.ag = add nsw i64 %i.af, %i.ab
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !387
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !388
  %i.ak = mul i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ak
  store float %.sroa.0.4.vec.extract, ptr %i.al, align 4, !tbaa !73
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.a, i64 2
  %i.am = load i64, ptr %i.g, align 8
  %i.an = getelementptr [24 x i8], ptr %i.c, i64 %i.am
  %i.ao = getelementptr [24 x i8], ptr %i.an, i64 %i.f ; 3 uses
  %i.ap = shl i64 %2, 32
  %i.aq = add i64 %i.ap, 8589934592
  %i.ar = ashr exact i64 %i.aq, 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.at = load i32, ptr %i.as, align 4, !tbaa !232
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.e, %i.au
  %i.aw = add nsw i64 %i.av, %i.ar
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !387
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !388
  %i.ba = mul i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba
  store float %.sroa.0.8.vec.extract, ptr %i.bb, align 4, !tbaa !73
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.a, i64 3
  %i.bc = load i64, ptr %i.g, align 8
  %i.bd = getelementptr [24 x i8], ptr %i.c, i64 %i.bc
  %i.be = getelementptr [24 x i8], ptr %i.bd, i64 %i.f ; 3 uses
end_hunk_0
begin_hunk_1_@_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE125ELb0EKsEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai:bb.a
  %.031168 = phi i64 [ %i.kz, %.lr.ph169 ], [ 3, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEERKSA_.exit ] ; 3 uses
  %i.jy = load ptr, ptr %i.ef, align 8, !tbaa !704, !nonnull !135, !align !305
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !105 ; 4 uses
  %i.ka = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %.031168 ; 4 uses
  %i.kb = mul i64 %i.jz, %i.ee
  %i.kc = getelementptr [2 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !312
  %i.ke = mul i64 %i.jz, %i.ej
  %i.kf = getelementptr [2 x i8], ptr %i.ka, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !312
  %i.kh = mul i64 %i.jz, %i.el
  %i.ki = getelementptr [2 x i8], ptr %i.ka, i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !312
  %i.kk = mul i64 %i.jz, %i.en
  %i.kl = getelementptr [2 x i8], ptr %i.ka, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !312
  %i.kn = insertelement <4 x i16> poison, i16 %i.kd, i64 0
  %i.ko = insertelement <4 x i16> %i.kn, i16 %i.kg, i64 1
  %i.kp = insertelement <4 x i16> %i.ko, i16 %i.kj, i64 2
  %i.kq = insertelement <4 x i16> %i.kp, i16 %i.km, i64 3
  %i.kr = sitofp <4 x i16> %i.kq to <4 x float>
  %i.ks = fmul <4 x float> %.sroa.082.1, %i.kr
  %i.kt = fadd <4 x float> %.sroa.077.1, %i.ks
  %i.ku = load ptr, ptr %i.hb, align 8, !tbaa !705, !nonnull !135, !align !305
  %i.kv = load ptr, ptr %0, align 8, !tbaa !698, !nonnull !135, !align !411
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !232
  %i.kx = sext i32 %i.kw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ky = fmul <4 x float> %.sroa.074.1, %i.kt
  store <4 x float> %i.ky, ptr %4, align 16
  call void @_ZN3tev12storeChannelIN5xsimd5batchIfNS1_4sse2EEENS_16MultiChannelViewIfEEEEvRKT0_mmmRKT_(ptr noundef nonnull align 8 dereferenceable(144) %i.ku, i64 noundef %.031168, i64 noundef %i.ee, i64 noundef %i.kx, ptr noundef nonnull align 16 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.kz = add nuw i64 %.031168, 1                 ; 2 uses
  %i.la = load ptr, ptr %i.du, align 8, !tbaa !707, !nonnull !135, !align !305
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !105
  %i.lc = icmp ult i64 %i.kz, %i.lb
  br i1 %i.lc, label %.lr.ph169, label %.loopexit, !llvm.loop !2743

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.029165 = phi i64 [ 0, %.lr.ph ], [ %i.me, %bb.g ] ; 3 uses
  %i.ld = load ptr, ptr %i.dz, align 8, !tbaa !704, !nonnull !135, !align !305
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !105 ; 4 uses
  %i.lf = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %.029165 ; 4 uses
  %i.lg = mul i64 %i.le, %i.dy
  %i.lh = getelementptr [2 x i8], ptr %i.lf, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !312
  %i.lj = mul i64 %i.le, %i.ea
  %i.lk = getelementptr [2 x i8], ptr %i.lf, i64 %i.lj
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !312
  %i.lm = mul i64 %i.le, %i.eb
  %i.ln = getelementptr [2 x i8], ptr %i.lf, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !312
  %i.lp = mul i64 %i.le, %i.ec
  %i.lq = getelementptr [2 x i8], ptr %i.lf, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !312
  %i.ls = insertelement <4 x i16> poison, i16 %i.li, i64 0
  %i.lt = insertelement <4 x i16> %i.ls, i16 %i.ll, i64 1
  %i.lu = insertelement <4 x i16> %i.lt, i16 %i.lo, i64 2
  %i.lv = insertelement <4 x i16> %i.lu, i16 %i.lr, i64 3
  %i.lw = sitofp <4 x i16> %i.lv to <4 x float>
  %i.lx = fmul <4 x float> %.sroa.082.1, %i.lw
  %i.ly = fadd <4 x float> %.sroa.077.1, %i.lx
  %i.lz = load ptr, ptr %i.ed, align 8, !tbaa !705, !nonnull !135, !align !305
  %i.ma = load ptr, ptr %0, align 8, !tbaa !698, !nonnull !135, !align !411
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !232
  %i.mc = sext i32 %i.mb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.md = fmul <4 x float> %.sroa.074.1, %i.ly
  store <4 x float> %i.md, ptr %5, align 16
  call void @_ZN3tev12storeChannelIN5xsimd5batchIfNS1_4sse2EEENS_16MultiChannelViewIfEEEEvRKT0_mmmRKT_(ptr noundef nonnull align 8 dereferenceable(144) %i.lz, i64 noundef %.029165, i64 noundef %i.dy, i64 noundef %i.mc, ptr noundef nonnull align 16 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.me = add nuw i64 %.029165, 1                 ; 2 uses
  %i.mf = load ptr, ptr %i.du, align 8, !tbaa !707, !nonnull !135, !align !305
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !105
  %i.mh = icmp ult i64 %i.me, %i.mg
  br i1 %i.mh, label %bb.g, label %.loopexit, !llvm.loop !2744

.loopexit:                                        ; preds = %bb.g, %.lr.ph169, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEERKSA_.exit, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE125ELb0EKsEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.81", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !698, !nonnull !135, !align !411
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !699, !nonnull !135, !align !305
  %i.f = load i64, ptr %i.e, align 8, !tbaa !105
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !700, !nonnull !135, !align !305
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.g ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !701, !nonnull !135, !align !411
  %i.m = load float, ptr %i.l, align 4, !tbaa !73 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !702, !nonnull !135, !align !411
  %i.p = load float, ptr %i.o, align 4, !tbaa !73 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !703, !nonnull !135
  %i.s = load i8, ptr %i.r, align 1, !tbaa !288, !range !134, !noundef !135
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !704, !nonnull !135, !align !305
  %i.w = load i64, ptr %i.v, align 8, !tbaa !105  ; 2 uses
  %i.x = sext i32 %1 to i64                       ; 2 uses
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 -2
  %i.ab = getelementptr [2 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !312
  %i.ad = sitofp i16 %i.ac to float
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.ad, float %i.m, float %i.p) ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !705, !nonnull !135, !align !305 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !378
  %i.ak = getelementptr [24 x i8], ptr %i.aj, i64 %i.ai ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = getelementptr i8, ptr %i.ak, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !232
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, %i.c
  %i.aq = add nsw i64 %i.ap, %i.x
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !387
  %i.as = getelementptr i8, ptr %i.ak, i64 -16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !388
  %i.au = mul i64 %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  store float %i.ae, ptr %i.av, align 4, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !706, !nonnull !135, !align !411
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !290
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = fcmp ogt float %i.ae, f0x38D1B717
  %i.bb = fdiv float 1.000000e+00, %i.ae
  %.sroa.speculated = select i1 %i.ba, float %i.bb, float 1.000000e+00 ; 2 uses
  %i.bc = fmul float %i.m, %.sroa.speculated
  %i.bd = fmul float %i.p, %.sroa.speculated
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.168 = phi float [ %i.p, %bb.a ], [ %i.bd, %bb.c ], [ %i.p, %bb.b ] ; 6 uses
  %.166 = phi float [ %i.m, %bb.a ], [ %i.bc, %bb.c ], [ %i.m, %bb.b ] ; 6 uses
  %.1 = phi float [ 1.000000e+00, %bb.a ], [ %i.ae, %bb.c ], [ 1.000000e+00, %bb.b ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !707, !nonnull !135, !align !305
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !105 ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 2
  br i1 %i.bh, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bi = sext i32 %1 to i64                      ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !704, !nonnull !135, !align !305
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !105
  %i.bm = mul i64 %i.bl, %i.bi
  %invariant.gep = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %i.bm ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !705, !nonnull !135, !align !305
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !378 ; 6 uses
  %i.bq = load i16, ptr %invariant.gep, align 2, !tbaa !312
  %i.br = sitofp i16 %i.bq to float
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float %.166, float %.168)
  %i.bt = fmul float %.1, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !232
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.c
  %i.by = add nsw i64 %i.bx, %i.bi
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !387
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !388
  %i.cc = mul i64 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cc
  store float %i.bt, ptr %i.cd, align 4, !tbaa !73
  %exitcond.not = icmp eq i64 %i.bg, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ce = sext i32 %1 to i64                      ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !704, !nonnull !135, !align !305
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !105
  %i.ci = mul i64 %i.ch, %i.ce
  %invariant.gep.i = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %i.ci ; 2 uses
  %i.cj = load i16, ptr %invariant.gep.i, align 2, !tbaa !312
  %i.ck = sitofp i16 %i.cj to float
  %gep.1.i.a = getelementptr i8, ptr %invariant.gep.i, i64 2
  %3 = load <2 x i16>, ptr %gep.1.i.a, align 2, !tbaa !312
  %4 = sitofp <2 x i16> %3 to <2 x float>         ; 2 uses
  %5 = tail call noundef float @llvm.fma.f32(float %i.ck, float %.166, float %.168) ; 3 uses
  %6 = extractelement <2 x float> %4, i64 0
  %7 = tail call noundef float @llvm.fma.f32(float %6, float %.166, float %.168)
  %8 = extractelement <2 x float> %4, i64 1
  %i.cl = tail call noundef float @llvm.fma.f32(float %8, float %.166, float %.168)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %9 = fadd float %7, -5.000000e-01               ; 2 uses
  %10 = fadd float %i.cl, -5.000000e-01
  %11 = tail call float @llvm.fmuladd.f32(float %9, float -3.441360e-01, float %5)
  %i.cm = insertelement <2 x float> poison, float %10, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x float> poison, float %5, i64 0
  %13 = insertelement <2 x float> %12, float %11, i64 1
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> <float 1.402000e+00, float -7.141360e-01>, <2 x float> %13)
  %14 = tail call float @llvm.fmuladd.f32(float %9, float 1.772000e+00, float %5)
  store <2 x float> %i.co, ptr %2, align 8
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %14, ptr %.sroa.26.0..sroa_idx.i.i, align 8
  %i.cp = invoke { <2 x float>, float } @_ZN3tev8ituth27318invTransferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #42
  unreachable

_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.cp, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.cp, 1
  %.sroa.0.0.vec.extract85 = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.cs = fmul float %.1, %.sroa.0.0.vec.extract85
  %.sroa.0.4.vec.extract94 = extractelement <2 x float> %.fca.0.extract, i64 1
  %i.ct = fmul float %.1, %.sroa.0.4.vec.extract94
  %i.cu = fmul float %.1, %.fca.1.extract
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !705, !nonnull !135, !align !305 ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !698, !nonnull !135, !align !411
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !232
  %i.cz = sext i32 %i.cy to i64                   ; 4 uses
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !378 ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !232
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.dd, %i.cz
  %i.df = add nsw i64 %i.de, %i.ce
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !387
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !388
  %i.dj = mul i64 %i.df, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dj
  store float %i.cs, ptr %i.dk, align 4, !tbaa !73
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !232
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul nsw i64 %i.do, %i.cz
  %i.dq = add nsw i64 %i.dp, %i.ce
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !387
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !388
  %i.du = mul i64 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.du
  store float %i.ct, ptr %i.dv, align 4, !tbaa !73
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !232
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.dz, %i.cz
  %i.eb = add nsw i64 %i.ea, %i.ce
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !387
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !388
  %i.ef = mul i64 %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ef
  store float %i.cu, ptr %i.eg, align 4, !tbaa !73
  %i.eh = load ptr, ptr %i.be, align 8, !tbaa !707, !nonnull !135, !align !305
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !105 ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, 3
  br i1 %i.ej, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit
  %i.ek = load ptr, ptr %i.cf, align 8, !tbaa !704, !nonnull !135, !align !305
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !105
  %i.em = mul i64 %i.el, %i.ce
  %invariant.gep74 = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %i.em
  %i.en = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph73, %bb.g
  %.03472 = phi i64 [ 3, %.lr.ph73 ], [ %i.fj, %bb.g ] ; 5 uses
  %gep75 = getelementptr [2 x i8], ptr %invariant.gep74, i64 %.03472
  %i.eo = load i16, ptr %gep75, align 2, !tbaa !312
  %i.ep = sitofp i16 %i.eo to float
  %i.eq = call noundef float @llvm.fma.f32(float %i.ep, float %.166, float %.168)
  %i.er = fmul float %.1, %i.eq
  %i.es = and i64 %.03472, 2147483648
  %.not.i = icmp eq i64 %i.es, 0
  %i.et = load i64, ptr %i.en, align 8
  %sext.i = shl i64 %.03472, 32
  %i.eu = ashr exact i64 %sext.i, 32
  %i.ev = add i64 %i.et, %i.eu
  %i.ew = and i64 %.03472, 4294967295
  %i.ex = select i1 %.not.i, i64 %i.ew, i64 %i.ev
  %i.ey = getelementptr inbounds [24 x i8], ptr %i.da, i64 %i.ex ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !232
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, %i.cz
  %i.fd = add nsw i64 %i.fc, %i.ce
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !387
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !388
  %i.fh = mul i64 %i.fd, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fh
  store float %i.er, ptr %i.fi, align 4, !tbaa !73
  %i.fj = add nuw i64 %.03472, 1                  ; 2 uses
  %exitcond78.not = icmp eq i64 %i.fj, %i.ei
  br i1 %exitcond78.not, label %.loopexit, label %bb.g, !llvm.loop !2748

bb.h:                                             ; preds = %.lr.ph
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 2
  %i.fk = load i16, ptr %gep.1, align 2, !tbaa !312
  %i.fl = sitofp i16 %i.fk to float
  %i.fm = tail call noundef float @llvm.fma.f32(float %i.fl, float %.166, float %.168)
  %i.fn = fmul float %.1, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !232
  %i.fr = sext i32 %i.fq to i64
  %i.fs = mul nsw i64 %i.fr, %i.c
  %i.ft = add nsw i64 %i.fs, %i.bi
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !387
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !388
  %i.fx = mul i64 %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fx
  store float %i.fn, ptr %i.fy, align 4, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb0EKsEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind writable sret(%"class.tev::Task.169") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef byval(%class.anon.773) align 8 %5, i32 noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.171", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #38 ; 16 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb0EKsEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb0EKsEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false), !tbaa.struct !693
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #39
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #37
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !2759
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !75, !noalias !2759
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !2759
  store i32 2, ptr %i.g, align 8, !tbaa !81, !noalias !2759
  store ptr %i.f, ptr %i.d, align 8, !tbaa !85, !alias.scope !2760
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !86, !alias.scope !2760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37, !noalias !2761
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.171") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !2761

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !243, !alias.scope !2761
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !410, !noalias !2761
  store ptr %i.j, ptr %i.i, align 8, !tbaa !410, !alias.scope !2761
  store ptr null, ptr %7, align 8, !tbaa !410, !noalias !2761
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !2761 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !243, !noalias !2761
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !243, !alias.scope !2761
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !2761 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #42, !noalias !2761
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE125ELb0EKtEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai:bb.a
  %.031168 = phi i64 [ %i.kz, %.lr.ph169 ], [ 3, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEERKSA_.exit ] ; 3 uses
  %i.jy = load ptr, ptr %i.ef, align 8, !tbaa !765, !nonnull !135, !align !305
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !105 ; 4 uses
  %i.ka = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %.031168 ; 4 uses
  %i.kb = mul i64 %i.jz, %i.ee
  %i.kc = getelementptr [2 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !312
  %i.ke = mul i64 %i.jz, %i.ej
  %i.kf = getelementptr [2 x i8], ptr %i.ka, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !312
  %i.kh = mul i64 %i.jz, %i.el
  %i.ki = getelementptr [2 x i8], ptr %i.ka, i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !312
  %i.kk = mul i64 %i.jz, %i.en
  %i.kl = getelementptr [2 x i8], ptr %i.ka, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !312
  %i.kn = insertelement <4 x i16> poison, i16 %i.kd, i64 0
  %i.ko = insertelement <4 x i16> %i.kn, i16 %i.kg, i64 1
  %i.kp = insertelement <4 x i16> %i.ko, i16 %i.kj, i64 2
  %i.kq = insertelement <4 x i16> %i.kp, i16 %i.km, i64 3
  %i.kr = uitofp <4 x i16> %i.kq to <4 x float>
  %i.ks = fmul <4 x float> %.sroa.082.1, %i.kr
  %i.kt = fadd <4 x float> %.sroa.077.1, %i.ks
  %i.ku = load ptr, ptr %i.hb, align 8, !tbaa !766, !nonnull !135, !align !305
  %i.kv = load ptr, ptr %0, align 8, !tbaa !759, !nonnull !135, !align !411
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !232
  %i.kx = sext i32 %i.kw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ky = fmul <4 x float> %.sroa.074.1, %i.kt
  store <4 x float> %i.ky, ptr %4, align 16
  call void @_ZN3tev12storeChannelIN5xsimd5batchIfNS1_4sse2EEENS_16MultiChannelViewIfEEEEvRKT0_mmmRKT_(ptr noundef nonnull align 8 dereferenceable(144) %i.ku, i64 noundef %.031168, i64 noundef %i.ee, i64 noundef %i.kx, ptr noundef nonnull align 16 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.kz = add nuw i64 %.031168, 1                 ; 2 uses
  %i.la = load ptr, ptr %i.du, align 8, !tbaa !768, !nonnull !135, !align !305
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !105
  %i.lc = icmp ult i64 %i.kz, %i.lb
  br i1 %i.lc, label %.lr.ph169, label %.loopexit, !llvm.loop !3314

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.029165 = phi i64 [ 0, %.lr.ph ], [ %i.me, %bb.g ] ; 3 uses
  %i.ld = load ptr, ptr %i.dz, align 8, !tbaa !765, !nonnull !135, !align !305
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !105 ; 4 uses
  %i.lf = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %.029165 ; 4 uses
  %i.lg = mul i64 %i.le, %i.dy
  %i.lh = getelementptr [2 x i8], ptr %i.lf, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !312
  %i.lj = mul i64 %i.le, %i.ea
  %i.lk = getelementptr [2 x i8], ptr %i.lf, i64 %i.lj
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !312
  %i.lm = mul i64 %i.le, %i.eb
  %i.ln = getelementptr [2 x i8], ptr %i.lf, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !312
  %i.lp = mul i64 %i.le, %i.ec
  %i.lq = getelementptr [2 x i8], ptr %i.lf, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !312
  %i.ls = insertelement <4 x i16> poison, i16 %i.li, i64 0
  %i.lt = insertelement <4 x i16> %i.ls, i16 %i.ll, i64 1
  %i.lu = insertelement <4 x i16> %i.lt, i16 %i.lo, i64 2
  %i.lv = insertelement <4 x i16> %i.lu, i16 %i.lr, i64 3
  %i.lw = uitofp <4 x i16> %i.lv to <4 x float>
  %i.lx = fmul <4 x float> %.sroa.082.1, %i.lw
  %i.ly = fadd <4 x float> %.sroa.077.1, %i.lx
  %i.lz = load ptr, ptr %i.ed, align 8, !tbaa !766, !nonnull !135, !align !305
  %i.ma = load ptr, ptr %0, align 8, !tbaa !759, !nonnull !135, !align !411
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !232
  %i.mc = sext i32 %i.mb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.md = fmul <4 x float> %.sroa.074.1, %i.ly
  store <4 x float> %i.md, ptr %5, align 16
  call void @_ZN3tev12storeChannelIN5xsimd5batchIfNS1_4sse2EEENS_16MultiChannelViewIfEEEEvRKT0_mmmRKT_(ptr noundef nonnull align 8 dereferenceable(144) %i.lz, i64 noundef %.029165, i64 noundef %i.dy, i64 noundef %i.mc, ptr noundef nonnull align 16 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.me = add nuw i64 %.029165, 1                 ; 2 uses
  %i.mf = load ptr, ptr %i.du, align 8, !tbaa !768, !nonnull !135, !align !305
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !105
  %i.mh = icmp ult i64 %i.me, %i.mg
  br i1 %i.mh, label %bb.g, label %.loopexit, !llvm.loop !3315

.loopexit:                                        ; preds = %bb.g, %.lr.ph169, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEERKSA_.exit, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE125ELb0EKtEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.81", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !759, !nonnull !135, !align !411
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !760, !nonnull !135, !align !305
  %i.f = load i64, ptr %i.e, align 8, !tbaa !105
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !761, !nonnull !135, !align !305
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.g ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !762, !nonnull !135, !align !411
  %i.m = load float, ptr %i.l, align 4, !tbaa !73 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !763, !nonnull !135, !align !411
  %i.p = load float, ptr %i.o, align 4, !tbaa !73 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !764, !nonnull !135
  %i.s = load i8, ptr %i.r, align 1, !tbaa !288, !range !134, !noundef !135
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !765, !nonnull !135, !align !305
  %i.w = load i64, ptr %i.v, align 8, !tbaa !105  ; 2 uses
  %i.x = sext i32 %1 to i64                       ; 2 uses
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 -2
  %i.ab = getelementptr [2 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !312
  %i.ad = uitofp i16 %i.ac to float
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.ad, float %i.m, float %i.p) ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !766, !nonnull !135, !align !305 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !378
  %i.ak = getelementptr [24 x i8], ptr %i.aj, i64 %i.ai ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = getelementptr i8, ptr %i.ak, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !232
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, %i.c
  %i.aq = add nsw i64 %i.ap, %i.x
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !387
  %i.as = getelementptr i8, ptr %i.ak, i64 -16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !388
  %i.au = mul i64 %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  store float %i.ae, ptr %i.av, align 4, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !767, !nonnull !135, !align !411
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !290
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = fcmp ogt float %i.ae, f0x38D1B717
  %i.bb = fdiv float 1.000000e+00, %i.ae
  %.sroa.speculated = select i1 %i.ba, float %i.bb, float 1.000000e+00 ; 2 uses
  %i.bc = fmul float %i.m, %.sroa.speculated
  %i.bd = fmul float %i.p, %.sroa.speculated
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.168 = phi float [ %i.p, %bb.a ], [ %i.bd, %bb.c ], [ %i.p, %bb.b ] ; 6 uses
  %.166 = phi float [ %i.m, %bb.a ], [ %i.bc, %bb.c ], [ %i.m, %bb.b ] ; 6 uses
  %.1 = phi float [ 1.000000e+00, %bb.a ], [ %i.ae, %bb.c ], [ 1.000000e+00, %bb.b ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !768, !nonnull !135, !align !305
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !105 ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 2
  br i1 %i.bh, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bi = sext i32 %1 to i64                      ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !765, !nonnull !135, !align !305
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !105
  %i.bm = mul i64 %i.bl, %i.bi
  %invariant.gep = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %i.bm ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !766, !nonnull !135, !align !305
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !378 ; 6 uses
  %i.bq = load i16, ptr %invariant.gep, align 2, !tbaa !312
  %i.br = uitofp i16 %i.bq to float
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float %.166, float %.168)
  %i.bt = fmul float %.1, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !232
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.c
  %i.by = add nsw i64 %i.bx, %i.bi
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !387
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !388
  %i.cc = mul i64 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cc
  store float %i.bt, ptr %i.cd, align 4, !tbaa !73
  %exitcond.not = icmp eq i64 %i.bg, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ce = sext i32 %1 to i64                      ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !765, !nonnull !135, !align !305
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !105
  %i.ci = mul i64 %i.ch, %i.ce
  %invariant.gep.i = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %i.ci ; 2 uses
  %i.cj = load i16, ptr %invariant.gep.i, align 2, !tbaa !312
  %i.ck = uitofp i16 %i.cj to float
  %gep.1.i.a = getelementptr i8, ptr %invariant.gep.i, i64 2
  %3 = load <2 x i16>, ptr %gep.1.i.a, align 2, !tbaa !312
  %4 = uitofp <2 x i16> %3 to <2 x float>         ; 2 uses
  %5 = tail call noundef float @llvm.fma.f32(float %i.ck, float %.166, float %.168) ; 3 uses
  %6 = extractelement <2 x float> %4, i64 0
  %7 = tail call noundef float @llvm.fma.f32(float %6, float %.166, float %.168)
  %8 = extractelement <2 x float> %4, i64 1
  %i.cl = tail call noundef float @llvm.fma.f32(float %8, float %.166, float %.168)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %9 = fadd float %7, -5.000000e-01               ; 2 uses
  %10 = fadd float %i.cl, -5.000000e-01
  %11 = tail call float @llvm.fmuladd.f32(float %9, float -3.441360e-01, float %5)
  %i.cm = insertelement <2 x float> poison, float %10, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x float> poison, float %5, i64 0
  %13 = insertelement <2 x float> %12, float %11, i64 1
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> <float 1.402000e+00, float -7.141360e-01>, <2 x float> %13)
  %14 = tail call float @llvm.fmuladd.f32(float %9, float 1.772000e+00, float %5)
  store <2 x float> %i.co, ptr %2, align 8
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %14, ptr %.sroa.26.0..sroa_idx.i.i, align 8
  %i.cp = invoke { <2 x float>, float } @_ZN3tev8ituth27318invTransferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #42
  unreachable

_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.cp, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.cp, 1
  %.sroa.0.0.vec.extract85 = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.cs = fmul float %.1, %.sroa.0.0.vec.extract85
  %.sroa.0.4.vec.extract94 = extractelement <2 x float> %.fca.0.extract, i64 1
  %i.ct = fmul float %.1, %.sroa.0.4.vec.extract94
  %i.cu = fmul float %.1, %.fca.1.extract
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !766, !nonnull !135, !align !305 ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !759, !nonnull !135, !align !411
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !232
  %i.cz = sext i32 %i.cy to i64                   ; 4 uses
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !378 ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !232
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.dd, %i.cz
  %i.df = add nsw i64 %i.de, %i.ce
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !387
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !388
  %i.dj = mul i64 %i.df, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dj
  store float %i.cs, ptr %i.dk, align 4, !tbaa !73
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !232
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul nsw i64 %i.do, %i.cz
  %i.dq = add nsw i64 %i.dp, %i.ce
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !387
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !388
  %i.du = mul i64 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.du
  store float %i.ct, ptr %i.dv, align 4, !tbaa !73
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !232
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.dz, %i.cz
  %i.eb = add nsw i64 %i.ea, %i.ce
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !387
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !388
  %i.ef = mul i64 %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ef
  store float %i.cu, ptr %i.eg, align 4, !tbaa !73
  %i.eh = load ptr, ptr %i.be, align 8, !tbaa !768, !nonnull !135, !align !305
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !105 ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, 3
  br i1 %i.ej, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit
  %i.ek = load ptr, ptr %i.cf, align 8, !tbaa !765, !nonnull !135, !align !305
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !105
  %i.em = mul i64 %i.el, %i.ce
  %invariant.gep74 = getelementptr [2 x i8], ptr %.sroa.0.0.i, i64 %i.em
  %i.en = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph73, %bb.g
  %.03472 = phi i64 [ 3, %.lr.ph73 ], [ %i.fj, %bb.g ] ; 5 uses
  %gep75 = getelementptr [2 x i8], ptr %invariant.gep74, i64 %.03472
  %i.eo = load i16, ptr %gep75, align 2, !tbaa !312
  %i.ep = uitofp i16 %i.eo to float
  %i.eq = call noundef float @llvm.fma.f32(float %i.ep, float %.166, float %.168)
  %i.er = fmul float %.1, %i.eq
  %i.es = and i64 %.03472, 2147483648
  %.not.i = icmp eq i64 %i.es, 0
  %i.et = load i64, ptr %i.en, align 8
  %sext.i = shl i64 %.03472, 32
  %i.eu = ashr exact i64 %sext.i, 32
  %i.ev = add i64 %i.et, %i.eu
  %i.ew = and i64 %.03472, 4294967295
  %i.ex = select i1 %.not.i, i64 %i.ew, i64 %i.ev
  %i.ey = getelementptr inbounds [24 x i8], ptr %i.da, i64 %i.ex ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !232
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, %i.cz
  %i.fd = add nsw i64 %i.fc, %i.ce
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !387
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !388
  %i.fh = mul i64 %i.fd, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fh
  store float %i.er, ptr %i.fi, align 4, !tbaa !73
  %i.fj = add nuw i64 %.03472, 1                  ; 2 uses
  %exitcond78.not = icmp eq i64 %i.fj, %i.ei
  br i1 %exitcond78.not, label %.loopexit, label %bb.g, !llvm.loop !3319

bb.h:                                             ; preds = %.lr.ph
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 2
  %i.fk = load i16, ptr %gep.1, align 2, !tbaa !312
  %i.fl = uitofp i16 %i.fk to float
  %i.fm = tail call noundef float @llvm.fma.f32(float %i.fl, float %.166, float %.168)
  %i.fn = fmul float %.1, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !232
  %i.fr = sext i32 %i.fq to i64
  %i.fs = mul nsw i64 %i.fr, %i.c
  %i.ft = add nsw i64 %i.fs, %i.bi
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !387
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !388
  %i.fx = mul i64 %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fx
  store float %i.fn, ptr %i.fy, align 4, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb0EKtEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind writable sret(%"class.tev::Task.169") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef byval(%class.anon.803) align 8 %5, i32 noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.171", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #38 ; 16 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb0EKtEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb0EKtEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false), !tbaa.struct !754
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #39
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #37
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !3330
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !75, !noalias !3330
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !3330
  store i32 2, ptr %i.g, align 8, !tbaa !81, !noalias !3330
  store ptr %i.f, ptr %i.d, align 8, !tbaa !85, !alias.scope !3331
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !86, !alias.scope !3331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37, !noalias !3332
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.171") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !3332

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !243, !alias.scope !3332
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !410, !noalias !3332
  store ptr %i.j, ptr %i.i, align 8, !tbaa !410, !alias.scope !3332
  store ptr null, ptr %7, align 8, !tbaa !410, !noalias !3332
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !3332 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !243, !noalias !3332
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !243, !alias.scope !3332
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !3332 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #42, !noalias !3332
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
end_hunk_2
