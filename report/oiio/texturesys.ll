Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %bc.i = bitcast <4 x float> %i.hd to <2 x double> ; 2 uses
  %i.he = extractelement <2 x double> %bc.i, i64 0
  %i.hf = extractelement <2 x double> %bc.i, i64 1
  %i.hg = bitcast double %i.he to <2 x i32>
  %i.hh = bitcast double %i.hf to <2 x i32>
  %.sroa.096.8.vecblend104.i = shufflevector <2 x i32> %i.hg, <2 x i32> %i.hh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hi = extractelement <2 x float> %i.hb, i64 1
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

bb.j:                                             ; preds = %.split359
  %i.hj = add nsw <2 x i32> %i.gu, splat (i32 -1)
  %i.hk = sitofp <2 x i32> %i.hj to <2 x float>   ; 2 uses
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hm = fmul <4 x float> %i.gp, %i.hl
  %i.hn = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ho = load <2 x i32>, ptr %i.n, align 4, !tbaa !55
  %i.hp = sitofp <2 x i32> %i.ho to <2 x float>   ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hr = fadd <4 x float> %i.hm, %i.hq
  %bc132.i = bitcast <4 x float> %i.hr to <2 x double> ; 2 uses
  %i.hs = extractelement <2 x double> %bc132.i, i64 0
  %i.ht = extractelement <2 x double> %bc132.i, i64 1
  %i.hu = bitcast double %i.hs to <2 x i32>
  %i.hv = bitcast double %i.ht to <2 x i32>
  %.sroa.096.8.vecblend.i = shufflevector <2 x i32> %i.hu, <2 x i32> %i.hv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hw = extractelement <2 x float> %i.hp, i64 1
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit: ; preds = %bb.i, %bb.j
  %.sink149.i = phi float [ %i.hw, %bb.j ], [ %i.hi, %bb.i ]
  %.pn2078 = phi <4 x float> [ %i.hn, %bb.j ], [ %i.gy, %bb.i ]
  %.sroa.096.0.i = phi <4 x i32> [ %.sroa.096.8.vecblend.i, %bb.j ], [ %.sroa.096.8.vecblend104.i, %bb.i ]
  %.sink147.i = fmul <4 x float> %i.gr, %.pn2078
  %i.hx = insertelement <4 x float> poison, float %.sink149.i, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fadd <4 x float> %.sink147.i, %i.hy
  %bc134.i = bitcast <4 x float> %i.hz to <2 x double> ; 2 uses
  %i.ia = extractelement <2 x double> %bc134.i, i64 0
  %i.ib = extractelement <2 x double> %bc134.i, i64 1
  %i.ic = bitcast double %i.ia to <2 x i32>
  %i.id = bitcast double %i.ib to <2 x i32>
  %.sroa.086.8.vecblend.i = shufflevector <2 x i32> %i.ic, <2 x i32> %i.id, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bc136.i = bitcast <4 x i32> %.sroa.096.0.i to <4 x float> ; 5 uses
  %i.ie = extractelement <4 x float> %bc136.i, i64 0
  %i.if = extractelement <4 x float> %bc136.i, i64 1
  %i.ig = extractelement <4 x float> %bc136.i, i64 2
  %i.ih = extractelement <4 x float> %bc136.i, i64 3
  %i.ii = call float @llvm.floor.f32(float %i.ig)
  %i.ij = call float @llvm.floor.f32(float %i.ie)
  %i.ik = call float @llvm.floor.f32(float %i.ih)
  %i.il = call float @llvm.floor.f32(float %i.if)
  %i.im = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.in = insertelement <2 x float> %i.im, float %i.ii, i64 1
  %i.io = bitcast <2 x float> %i.in to <2 x i32>
  %i.ip = insertelement <2 x float> poison, float %i.il, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.ik, i64 1
  %i.ir = bitcast <2 x float> %i.iq to <2 x i32>
  %i.is = zext <2 x i32> %i.ir to <2 x i64>
  %i.it = shl nuw <2 x i64> %i.is, splat (i64 32)
  %i.iu = zext <2 x i32> %i.io to <2 x i64>
  %i.iv = or disjoint <2 x i64> %i.it, %i.iu
  %i.iw = bitcast <2 x i64> %i.iv to <4 x float>  ; 2 uses
  %i.ix = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.iw) ; 2 uses
  store <4 x i32> %i.ix, ptr %23, align 16, !tbaa !83
  %i.iy = fsub <4 x float> %bc136.i, %i.iw        ; 2 uses
  store <4 x float> %i.iy, ptr %25, align 16
  %bc140.i = bitcast <4 x i32> %.sroa.086.8.vecblend.i to <4 x float> ; 5 uses
  %i.iz = extractelement <4 x float> %bc140.i, i64 0
  %i.ja = extractelement <4 x float> %bc140.i, i64 1
  %i.jb = extractelement <4 x float> %bc140.i, i64 2
  %i.jc = extractelement <4 x float> %bc140.i, i64 3
  %i.jd = call float @llvm.floor.f32(float %i.jb)
  %i.je = call float @llvm.floor.f32(float %i.iz)
  %i.jf = call float @llvm.floor.f32(float %i.jc)
  %i.jg = call float @llvm.floor.f32(float %i.ja)
  %i.jh = insertelement <2 x float> poison, float %i.je, i64 0
  %i.ji = insertelement <2 x float> %i.jh, float %i.jd, i64 1
  %i.jj = bitcast <2 x float> %i.ji to <2 x i32>
  %i.jk = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jl = insertelement <2 x float> %i.jk, float %i.jf, i64 1
  %i.jm = bitcast <2 x float> %i.jl to <2 x i32>
  %i.jn = zext <2 x i32> %i.jm to <2 x i64>
  %i.jo = shl nuw <2 x i64> %i.jn, splat (i64 32)
  %i.jp = zext <2 x i32> %i.jj to <2 x i64>
  %i.jq = or disjoint <2 x i64> %i.jo, %i.jp
  %i.jr = bitcast <2 x i64> %i.jq to <4 x float>  ; 2 uses
  %i.js = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.jr) ; 2 uses
  store <4 x i32> %i.js, ptr %24, align 16, !tbaa !83
  %i.jt = fsub <4 x float> %bc140.i, %i.jr        ; 2 uses
  store <4 x float> %i.jt, ptr %26, align 16
  %i.ju = extractelement <4 x i32> %i.ix, i64 0
  %i.jv = extractelement <4 x i32> %i.js, i64 0
  %i.jw = extractelement <4 x float> %i.iy, i64 0
  %i.jx = extractelement <4 x float> %i.jt, i64 0
  br label %bb.k

bb.k:                                             ; preds = %.split, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit
  %i.jy = phi float [ %i.jx, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2298, %.split ] ; 6 uses
  %i.jz = phi float [ %i.jw, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2297, %.split ] ; 6 uses
  %i.ka = phi i32 [ %i.jv, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2296, %.split ]
  %i.kb = phi i32 [ %i.ju, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2295, %.split ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv2270
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !75 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #3
  %i.ke = insertelement <4 x i32> poison, i32 %i.kb, i64 0
  %i.kf = shufflevector <4 x i32> %i.ke, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kg = add <4 x i32> %i.kf, <i32 -1, i32 0, i32 1, i32 2>
  store <4 x i32> %i.kg, ptr %27, align 16
  %i.kh = insertelement <4 x i32> poison, i32 %i.ka, i64 0
  %i.ki = shufflevector <4 x i32> %i.kh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kj = add <4 x i32> %i.ki, <i32 -1, i32 0, i32 1, i32 2>
  store <4 x i32> %i.kj, ptr %28, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #3
  %i.kk = call { i64, i64 } %i.u(ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %19) ; 2 uses
  %i.kl = extractvalue { i64, i64 } %i.kk, 0
  store i64 %i.kl, ptr %29, align 16
  %i.km = extractvalue { i64, i64 } %i.kk, 1
  store i64 %i.km, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #3
  %i.kn = call { i64, i64 } %i.z(ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 16 dereferenceable(16) %20) ; 2 uses
  %i.ko = extractvalue { i64, i64 } %i.kn, 0
  store i64 %i.ko, ptr %30, align 16
  %i.kp = extractvalue { i64, i64 } %i.kn, 1
  store i64 %i.kp, ptr %i.df, align 8
  %i.kq = load <4 x i32>, ptr %29, align 16, !tbaa !83 ; 3 uses
  %i.kr = load <4 x i32>, ptr %30, align 16, !tbaa !83 ; 3 uses
  %i.ks = or <4 x i32> %i.kr, %i.kq
  %i.kt = icmp slt <4 x i32> %i.ks, zeroinitializer
  %i.ku = bitcast <4 x i1> %i.kt to i4
  %i.kv = icmp eq i4 %i.ku, 0                     ; 2 uses
  %i.kw = load i8, ptr %i.dg, align 2
  %i.kx = trunc i8 %i.kw to i1
  %or.cond.not = or i1 %i.kv, %i.kx
  br i1 %or.cond.not, label %bb.l, label %.split2044

.split2044:                                       ; preds = %bb.k
  %i.ky = load <4 x i32>, ptr %17, align 16, !tbaa !83
  %i.kz = load <4 x i32>, ptr %27, align 16       ; 3 uses
  %i.la = icmp sge <4 x i32> %i.kz, %i.ky
  %i.lb = icmp sgt <4 x i32> %i.ap, %i.kz
  %i.lc = and <4 x i1> %i.la, %i.lb
  %i.ld = bitcast <4 x i32> %i.kq to <4 x float>
  %i.le = select <4 x i1> %i.lc, <4 x float> %i.ld, <4 x float> zeroinitializer
  store <4 x float> %i.le, ptr %29, align 16
  %i.lf = load <4 x i32>, ptr %18, align 16, !tbaa !83
  %i.lg = load <4 x i32>, ptr %28, align 16       ; 3 uses
  %i.lh = icmp sge <4 x i32> %i.lg, %i.lf
  %i.li = icmp sgt <4 x i32> %i.aq, %i.lg
  %i.lj = and <4 x i1> %i.lh, %i.li
  %i.lk = bitcast <4 x i32> %i.kr to <4 x float>
  %i.ll = select <4 x i1> %i.lj, <4 x float> %i.lk, <4 x float> zeroinitializer ; 2 uses
  store <4 x float> %i.ll, ptr %30, align 16
  %i.lm = load <4 x i32>, ptr %29, align 16, !tbaa !83 ; 2 uses
  %.cast = bitcast <4 x float> %i.ll to <4 x i32> ; 2 uses
  %i.ln = and <4 x i32> %i.lm, %.cast
  %i.lo = or <4 x i32> %i.lm, %.cast
  %i.lp = icmp slt <4 x i32> %i.lo, zeroinitializer
  %i.lq = bitcast <4 x i1> %i.lp to i4
  %.not = icmp eq i4 %i.lq, 0
  %i.lr = shufflevector <4 x i32> %i.kz, <4 x i32> %i.lg, <2 x i32> <i32 0, i32 4>
  br i1 %.not, label %.thread2053, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.kv, label %.thread2053, label %._crit_edge2299

._crit_edge2299:                                  ; preds = %bb.l
  %i.ls = and <4 x i32> %i.kr, %i.kq
  %i.lt = load <4 x i32>, ptr %27, align 16
  %i.lu = shufflevector <4 x i32> %i.lt, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  %.pre2301 = load i32, ptr %28, align 16, !tbaa !55
  %i.lv = insertelement <2 x i32> %i.lu, i32 %.pre2301, i64 1
  br label %bb.m

.thread2053:                                      ; preds = %bb.l, %.split2044
  %i.lw = fadd float %.03152177, %i.kd
  br label %bb.cd

bb.m:                                             ; preds = %._crit_edge2299, %.split2044
  %.0346.in2045.in.in.in = phi <4 x i32> [ %i.ln, %.split2044 ], [ %i.ls, %._crit_edge2299 ]
  %i.lx = phi <2 x i32> [ %i.lr, %.split2044 ], [ %i.lv, %._crit_edge2299 ] ; 2 uses
  %.0346.in2045.in.in = icmp sgt <4 x i32> %.0346.in2045.in.in.in, splat (i32 -1)
  %.0346.in2045.in = bitcast <4 x i1> %.0346.in2045.in.in to i4
  %.0346.in2045 = icmp eq i4 %.0346.in2045.in, 0  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #3
  %i.ly = load <2 x i32>, ptr %i.n, align 4, !tbaa !55
  %i.lz = sub nsw <2 x i32> %i.lx, %i.ly          ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ma = and <2 x i32> %i.lz, %i.bk
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.mb = load <2 x i32>, ptr %i.aw, align 4, !tbaa !55
  %i.mc = srem <2 x i32> %i.lz, %i.mb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.md = phi <2 x i32> [ %i.ma, %bb.n ], [ %i.mc, %bb.o ] ; 4 uses
  %i.me = icmp sle <2 x i32> %i.md, %i.dh         ; 3 uses
  %39 = bitcast <2 x i1> %i.me to i2
  %40 = icmp eq i2 %39, -1
  %i.mf = extractelement <2 x i1> %i.me, i64 0
  %41 = extractelement <2 x i1> %i.me, i64 1
  br i1 %40, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mg = load <4 x i32>, ptr %27, align 16, !tbaa !83 ; 2 uses
  %i.mh = shufflevector <4 x i32> %i.mg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mi = add <4 x i32> %i.mh, <i32 0, i32 1, i32 2, i32 3>
  %i.mj = icmp ne <4 x i32> %i.mg, %i.mi
  %i.mk = bitcast <4 x i1> %i.mj to i4
  %i.ml = icmp eq i4 %i.mk, 0
  %i.mm = load <4 x i32>, ptr %28, align 16, !tbaa !83 ; 2 uses
  %i.mn = shufflevector <4 x i32> %i.mm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mo = add <4 x i32> %i.mn, <i32 0, i32 1, i32 2, i32 3>
  %i.mp = icmp ne <4 x i32> %i.mm, %i.mo
  %i.mq = bitcast <4 x i1> %i.mp to i4
  %i.mr = icmp eq i4 %i.mq, 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0355.in = phi i1 [ %i.ml, %bb.q ], [ %i.mf, %bb.p ]
  %.0354.in = phi i1 [ %i.mr, %bb.q ], [ %41, %bb.p ]
  %i.ms = and i1 %.0355.in, %.0354.in
  %i.mt = and i1 %.0346.in2045, %i.ms
  br i1 %i.mt, label %bb.s, label %_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4Ei.exit956

bb.s:                                             ; preds = %bb.r
  %i.mu = sub nsw <2 x i32> %i.lx, %i.md
  store <2 x i32> %i.mu, ptr %21, align 8, !tbaa !55
  %i.mv = icmp eq i64 %indvars.iv2270, 0
  %i.mw = load ptr, ptr %i.dp, align 8, !tbaa !122
  %i.mx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.mw, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %6, i1 noundef zeroext %i.mv)
  br i1 %i.mx, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.my = load ptr, ptr %i.dp, align 8, !tbaa !122
  %i.mz = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ImageCacheImpl9has_errorEv(ptr noundef nonnull align 64 dereferenceable(25240) %i.my)
  br i1 %i.mz, label %bb.u, label %.loopexit2114

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #3
  %i.na = load ptr, ptr %i.dp, align 8, !tbaa !122
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 64 dereferenceable(25240) %i.na, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nb = load ptr, ptr %32, align 8, !tbaa !82   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.ne = load i64, ptr %i.nc, align 8, !tbaa !83
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.nf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %.loopexit2114

bb.w:                                             ; preds = %bb.u
  %i.ng = landingpad { ptr, i32 }
          cleanup
  %i.nh = load ptr, ptr %32, align 8, !tbaa !82   ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139: ; preds = %bb.w
  %i.nk = load i64, ptr %i.ni, align 8, !tbaa !83
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nl) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %bb.ce

bb.x:                                             ; preds = %bb.s
  %i.nm = load ptr, ptr %i.dr, align 8, !tbaa !295 ; 4 uses
  %.not2086 = icmp eq ptr %i.nm, null
  br i1 %.not2086, label %.loopexit2114, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 68
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !358
  %i.np = sext i32 %i.no to i64
  %i.nq = extractelement <2 x i32> %i.md, i64 1
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 72
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !354
  %i.nu = sext i32 %i.nt to i64
  %i.nv = mul nsw i64 %i.nu, %i.nr
  %i.nw = extractelement <2 x i32> %i.md, i64 0
  %i.nx = sext i32 %i.nw to i64
  %i.ny = add nsw i64 %i.nv, %i.nx
  %i.nz = mul i64 %i.ny, %i.np
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !132
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nz
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.db ; 46 uses
  switch i8 %i.p, label %.preheader2106 [
    i8 2, label %.preheader2108
    i8 4, label %.preheader2102
    i8 10, label %.preheader2103
  ]

.preheader2108:                                   ; preds = %bb.y
  %i.oe = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17u8scaleE.0, align 16, !tbaa !83 ; 4 uses
  %i.of = load i32, ptr %i.aw, align 4, !tbaa !292
  %i.og = mul i32 %i.of, %i.cy
  %i.oh = sext i32 %i.og to i64
  %invariant.gep2341 = getelementptr i8, ptr %i.od, i64 %i.ej
  br label %.preheader2101

.preheader2106:                                   ; preds = %bb.y
  %i.oi = load i32, ptr %i.aw, align 4, !tbaa !292
  %i.oj = mul i32 %i.oi, %i.cy
  %i.ok = sext i32 %i.oj to i64                   ; 4 uses
  %i.ol = load <4 x float>, ptr %i.od, align 1, !tbaa !83
  store <4 x float> %i.ol, ptr %31, align 16, !tbaa !83
  %i.om = getelementptr inbounds i8, ptr %i.od, i64 %i.ej
  %i.on = load <4 x float>, ptr %i.om, align 1, !tbaa !83
  store <4 x float> %i.on, ptr %i.eg, align 16, !tbaa !83
  %i.oo = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2247.1
  %i.op = load <4 x float>, ptr %i.oo, align 1, !tbaa !83
  store <4 x float> %i.op, ptr %i.eh, align 16, !tbaa !83
  %i.oq = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2247.2
  %i.or = load <4 x float>, ptr %i.oq, align 1, !tbaa !83
  store <4 x float> %i.or, ptr %i.ei, align 16, !tbaa !83
  %i.os = getelementptr inbounds i8, ptr %i.od, i64 %i.ok
  %i.ot = load <4 x float>, ptr %i.os, align 1, !tbaa !83
  store <4 x float> %i.ot, ptr %i.ed, align 16, !tbaa !83
  %indvars.iv.next2247.12260 = add nsw i64 %i.ok, %i.ej ; 2 uses
  %i.ou = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2247.12260
  %i.ov = load <4 x float>, ptr %i.ou, align 1, !tbaa !83
  store <4 x float> %i.ov, ptr %i.ek, align 16, !tbaa !83
  %indvars.iv.next2247.1.1 = add nsw i64 %indvars.iv.next2247.12260, %i.ej ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2247.1.1
  %i.ox = load <4 x float>, ptr %i.ow, align 1, !tbaa !83
  store <4 x float> %i.ox, ptr %i.el, align 16, !tbaa !83
  %i.oy = getelementptr i8, ptr %i.od, i64 %indvars.iv.next2247.1.1
  %i.oz = getelementptr i8, ptr %i.oy, i64 %i.ej
  %i.pa = load <4 x float>, ptr %i.oz, align 1, !tbaa !83
  store <4 x float> %i.pa, ptr %i.em, align 16, !tbaa !83
  %indvars.iv.next2245.1 = shl nsw i64 %i.ok, 1   ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2245.1
  %i.pc = load <4 x float>, ptr %i.pb, align 1, !tbaa !83
  store <4 x float> %i.pc, ptr %i.ee, align 16, !tbaa !83
  %indvars.iv.next2247.22261 = add nsw i64 %indvars.iv.next2245.1, %i.ej ; 2 uses
  %i.pd = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2247.22261
  %i.pe = load <4 x float>, ptr %i.pd, align 1, !tbaa !83
  store <4 x float> %i.pe, ptr %i.en, align 16, !tbaa !83
  %indvars.iv.next2247.1.2 = add nsw i64 %indvars.iv.next2247.22261, %i.ej ; 2 uses
  %i.pf = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2247.1.2
  %i.pg = load <4 x float>, ptr %i.pf, align 1, !tbaa !83
  store <4 x float> %i.pg, ptr %i.eo, align 16, !tbaa !83
  %i.ph = getelementptr i8, ptr %i.od, i64 %indvars.iv.next2247.1.2
  %i.pi = getelementptr i8, ptr %i.ph, i64 %i.ej
  %i.pj = load <4 x float>, ptr %i.pi, align 1, !tbaa !83
  store <4 x float> %i.pj, ptr %i.ep, align 16, !tbaa !83
  %indvars.iv.next2245.2 = mul nsw i64 %i.ok, 3   ; 2 uses
  %i.pk = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2245.2
  %i.pl = load <4 x float>, ptr %i.pk, align 1, !tbaa !83
  store <4 x float> %i.pl, ptr %i.ef, align 16, !tbaa !83
  %indvars.iv.next2247.3 = add nsw i64 %indvars.iv.next2245.2, %i.ej ; 2 uses
  %i.pm = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2247.3
  %i.pn = load <4 x float>, ptr %i.pm, align 1, !tbaa !83
  store <4 x float> %i.pn, ptr %i.eq, align 16, !tbaa !83
  %indvars.iv.next2247.1.3 = add nsw i64 %indvars.iv.next2247.3, %i.ej ; 2 uses
  %i.po = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2247.1.3
  %i.pp = load <4 x float>, ptr %i.po, align 1, !tbaa !83
  store <4 x float> %i.pp, ptr %i.er, align 16, !tbaa !83
  %i.pq = getelementptr i8, ptr %i.od, i64 %indvars.iv.next2247.1.3
  %i.pr = getelementptr i8, ptr %i.pq, i64 %i.ej
  %i.ps = load <4 x float>, ptr %i.pr, align 1, !tbaa !83
  store <4 x float> %i.ps, ptr %i.es, align 16, !tbaa !83
  br label %.loopexit2107

.preheader2101:                                   ; preds = %.preheader2108, %.preheader2101
  %indvars.iv2238 = phi i64 [ 0, %.preheader2108 ], [ %indvars.iv.next2239, %.preheader2101 ] ; 2 uses
  %indvars.iv2228 = phi i64 [ 0, %.preheader2108 ], [ %indvars.iv.next2229, %.preheader2101 ] ; 3 uses
  %i.pt = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %indvars.iv2238 ; 4 uses
  %i.pu = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv2228
  %i.pv = load float, ptr %i.pu, align 1, !tbaa !83
  %i.pw = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.px = bitcast <4 x float> %i.pw to <16 x i8>
  %i.py = shufflevector <16 x i8> %i.px, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pz = bitcast <16 x i8> %i.py to <8 x i16>
  %i.qa = shufflevector <8 x i16> %i.pz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qb = bitcast <8 x i16> %i.qa to <4 x i32>
  %i.qc = uitofp nneg <4 x i32> %i.qb to <4 x float>
  %i.qd = fmul <4 x float> %i.oe, %i.qc
  store <4 x float> %i.qd, ptr %i.pt, align 16
  %indvars.iv.next2231 = add nsw i64 %indvars.iv2228, %i.ej ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2231
  %i.qf = load float, ptr %i.qe, align 1, !tbaa !83
  %i.qg = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.qh = bitcast <4 x float> %i.qg to <16 x i8>
  %i.qi = shufflevector <16 x i8> %i.qh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qj = bitcast <16 x i8> %i.qi to <8 x i16>
  %i.qk = shufflevector <8 x i16> %i.qj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ql = bitcast <8 x i16> %i.qk to <4 x i32>
  %i.qm = uitofp nneg <4 x i32> %i.ql to <4 x float>
  %i.qn = fmul <4 x float> %i.oe, %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store <4 x float> %i.qn, ptr %i.qo, align 16
  %indvars.iv.next2231.1 = add nsw i64 %indvars.iv.next2231, %i.ej ; 2 uses
  %i.qp = getelementptr inbounds i8, ptr %i.od, i64 %indvars.iv.next2231.1
  %i.qq = load float, ptr %i.qp, align 1, !tbaa !83
  %i.qr = insertelement <4 x float> poison, float %i.qq, i64 0
  %i.qs = bitcast <4 x float> %i.qr to <16 x i8>
  %i.qt = shufflevector <16 x i8> %i.qs, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qu = bitcast <16 x i8> %i.qt to <8 x i16>
  %i.qv = shufflevector <8 x i16> %i.qu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qw = bitcast <8 x i16> %i.qv to <4 x i32>
  %i.qx = uitofp nneg <4 x i32> %i.qw to <4 x float>
  %i.qy = fmul <4 x float> %i.oe, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  store <4 x float> %i.qy, ptr %i.qz, align 16
end_hunk_0
