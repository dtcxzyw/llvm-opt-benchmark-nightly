Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN4pbrt11TriQuadMesh6RefineIRZNS_5Shape6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_9TransformESD_bRKNS_19ParameterDictionaryERKSt3mapIS8_NS_12FloatTextureESt4lessIS8_ESaISt4pairIS9_SI_EEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_1EEvOT_fiiiRNS_7HashMapISL_IiiEiNS_11HashIntPairENSW_INSU_8optionalISL_IS14_iEEEEEEE":bb.a
  %i.kj = sext i32 %.sroa.12.0 to i64             ; 3 uses
  %i.kk = getelementptr inbounds nuw [12 x i8], ptr %i.kh, i64 %i.kj ; 2 uses
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.kk, align 4
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.230.0.copyload = load float, ptr %.sroa.230.0..sroa_idx, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.km = load float, ptr %i.kl, align 4, !tbaa !184
  %i.kn = fadd float %.sroa.230.0.copyload, %i.km
  %i.ko = load <2 x float>, ptr %i.ki, align 4, !tbaa !28
  %i.kp = fadd <2 x float> %.sroa.029.0.copyload, %i.ko
  %i.kq = fmul <2 x float> %i.kp, splat (float 5.000000e-01) ; 2 uses
  %i.kr = fmul float %i.kn, 5.000000e-01          ; 2 uses
  %i.ks = load ptr, ptr %i.jz, align 8, !tbaa !145 ; 6 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !168
  %.not.i.i = icmp eq ptr %i.ks, %i.ku
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK4pbrt7HashMapISt4pairIiiEiNS_11HashIntPairEN4pstd3pmr21polymorphic_allocatorINS4_8optionalIS1_IS2_iEEEEEE6HasKeyERKS2_.exit
  store <2 x float> %i.kq, ptr %i.ks, align 4
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store float %i.kr, ptr %.sroa.5184.0..sroa_idx, align 4
  %i.kv = load ptr, ptr %i.jz, align 8, !tbaa !145
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store ptr %i.kw, ptr %i.jz, align 8, !tbaa !145
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE9push_backEOS2_.exit

bb.z:                                             ; preds = %_ZNK4pbrt7HashMapISt4pairIiiEiNS_11HashIntPairEN4pstd3pmr21polymorphic_allocatorINS4_8optionalIS1_IS2_iEEEEEE6HasKeyERKS2_.exit
  %i.kx = ptrtoint ptr %i.ks to i64
  %i.ky = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.kz = sub i64 %i.kx, %i.ky                    ; 3 uses
  %i.la = icmp eq i64 %i.kz, 9223372036854775800
  br i1 %i.la, label %bb.aa, label %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.163) #34
  unreachable

_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.lb = sdiv exact i64 %i.kz, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lb, i64 1)
  %i.lc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lb ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.lb
  %i.le = call i64 @llvm.umin.i64(i64 %i.lc, i64 768614336404564650)
  %i.lf = select i1 %i.ld, i64 768614336404564650, i64 %i.le ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.lf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.lg = mul nuw nsw i64 %i.lf, 12
  %i.lh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lg) #36 ; 5 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.kz ; 2 uses
  store <2 x float> %i.kq, ptr %i.li, align 4
  %.sroa.5184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store float %i.kr, ptr %.sroa.5184.0..sroa_idx185, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kh, %i.ks
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i.i ], [ %i.lh, %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i ], [ %i.kh, %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !1832
  %i.lj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lj, %i.ks
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1818

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.lh, %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.lk, %.lr.ph.i.i.i.i.i.i ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %i.lm = load ptr, ptr %i.kt, align 8, !tbaa !168
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = sub i64 %i.ln, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.lo) #33
  store ptr %i.lh, ptr %0, align 8, !tbaa !146
  store ptr %i.ll, ptr %i.jz, align 8, !tbaa !145
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %i.lh, i64 %i.lf
  store ptr %i.lp, ptr %i.kt, align 8, !tbaa !168
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.y, %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !159 ; 6 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !159 ; 6 uses
  %i.lu = icmp eq ptr %i.lr, %i.lt
  br i1 %i.lu, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backERKS2_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE9push_backEOS2_.exit
  %i.lv = getelementptr inbounds nuw [12 x i8], ptr %i.lr, i64 %i.kg ; 2 uses
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %i.lr, i64 %i.kj ; 2 uses
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.lw, align 4
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %.sroa.218.0.copyload = load float, ptr %.sroa.218.0..sroa_idx, align 4
  %i.lx = load <2 x float>, ptr %i.lv, align 4, !tbaa !28
  %i.ly = fadd <2 x float> %.sroa.017.0.copyload, %i.lx ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !121
  %i.mb = fadd float %.sroa.218.0.copyload, %i.ma ; 4 uses
  %i.mc = fmul <2 x float> %i.ly, %i.ly           ; 2 uses
  %shift270 = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop271 = fadd <2 x float> %i.mc, %shift270
  %i.md = extractelement <2 x float> %foldExtExtBinop271, i64 0
  %i.me = fmul float %i.mb, %i.mb
  %i.mf = fadd float %i.me, %i.md                 ; 2 uses
  %i.mg = fcmp ogt float %i.mf, 0.000000e+00      ; 2 uses
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.mf) ; 2 uses
  %i.mh = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = fdiv <2 x float> %i.ly, %i.mi
  %i.mk = fdiv float %i.mb, %sqrt.i.i
  %.sroa.7.0 = select i1 %i.mg, float %i.mk, float %i.mb ; 2 uses
  %.sroa.0177.0 = select i1 %i.mg, <2 x float> %i.mj, <2 x float> %i.ly ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !165
  %.not.i158 = icmp eq ptr %i.lt, %i.mm
  br i1 %.not.i158, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store <2 x float> %.sroa.0177.0, ptr %i.lt, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  %i.mn = load ptr, ptr %i.ls, align 8, !tbaa !162
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store ptr %i.mo, ptr %i.ls, align 8, !tbaa !162
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backERKS2_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.mp = ptrtoint ptr %i.lt to i64
  %i.mq = ptrtoint ptr %i.lr to i64               ; 2 uses
  %i.mr = sub i64 %i.mp, %i.mq                    ; 4 uses
  %i.ms = icmp eq i64 %i.mr, 9223372036854775800
  br i1 %i.ms, label %bb.ae, label %_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.163) #34
  unreachable

_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.mt = sdiv exact i64 %i.mr, 12
  %i.mu = shl nsw i64 %i.mt, 1
  %i.mv = icmp slt i64 %i.mr, 0
  %i.mw = call i64 @llvm.umin.i64(i64 %i.mu, i64 768614336404564650)
  %i.mx = select i1 %i.mv, i64 768614336404564650, i64 %i.mw ; 2 uses
  %i.my = mul nuw nsw i64 %i.mx, 12
  %i.mz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.my) #36 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mr ; 2 uses
  store <2 x float> %.sroa.0177.0, ptr %i.na, align 4
  %.sroa.7.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx179, align 4
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i ], [ %i.mz, %_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 3 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.nb, %.lr.ph.i.i.i.i.i ], [ %i.lr, %_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !1833
  %i.nb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq ptr %i.nb, %i.lt
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1822

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.ne = load ptr, ptr %i.ml, align 8, !tbaa !165
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = sub i64 %i.nf, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.ng) #33
  store ptr %i.mz, ptr %i.lq, align 8, !tbaa !161
  store ptr %i.nd, ptr %i.ls, align 8, !tbaa !162
  %i.nh = getelementptr inbounds nuw [12 x i8], ptr %i.mz, i64 %i.mx
  store ptr %i.nh, ptr %i.ml, align 8, !tbaa !165
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ac, %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE9push_backEOS2_.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !152 ; 10 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !152 ; 5 uses
  %i.nm = icmp eq ptr %i.nj, %i.nl
  br i1 %i.nm, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backERKS2_.exit
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.kg
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.kj
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.no, align 4
  %i.np = load <2 x float>, ptr %i.nn, align 4, !tbaa !28
  %i.nq = fadd <2 x float> %.sroa.0.0.copyload, %i.np
  %i.nr = fmul <2 x float> %i.nq, splat (float 5.000000e-01) ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !167
  %.not.i.i165 = icmp eq ptr %i.nl, %i.nt
  br i1 %.not.i.i165, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store <2 x float> %i.nr, ptr %i.nl, align 4
  %i.nu = load ptr, ptr %i.nk, align 8, !tbaa !155
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store ptr %i.nv, ptr %i.nk, align 8, !tbaa !155
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.nw = ptrtoint ptr %i.nl to i64               ; 2 uses
  %i.nx = ptrtoint ptr %i.nj to i64               ; 4 uses
  %i.ny = sub i64 %i.nw, %i.nx                    ; 4 uses
  %i.nz = icmp eq i64 %i.ny, 9223372036854775800
  br i1 %i.nz, label %bb.ai, label %iter.check

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.163) #34
  unreachable

iter.check:                                       ; preds = %bb.ah
  %i.oa = ashr exact i64 %i.ny, 3
  %i.ob = ashr exact i64 %i.ny, 2                 ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 1152921504606846975)
  %i.oe = select i1 %i.oc, i64 1152921504606846975, i64 %i.od ; 2 uses
  %i.of = shl nuw nsw i64 %i.oe, 3
  %i.og = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #36 ; 9 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ny
  store <2 x float> %i.nr, ptr %i.oh, align 4
  %i.oi = add i64 %i.nw, -8
  %i.oj = sub i64 %i.oi, %i.nx                    ; 3 uses
  %i.ok = lshr i64 %i.oj, 3
  %i.ol = add nuw nsw i64 %i.ok, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.oj, 24
  %8 = ptrtoaddr ptr %i.og to i64
  %9 = sub i64 %i.nx, %8
  %diff.check = icmp ugt i64 %9, -128
  %or.cond261 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond261, label %.lr.ph.i.i.i.i.i.i169.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check244 = icmp ult i64 %i.oj, 120
  br i1 %min.iters.check244, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.om = and i64 %i.ol, 12
  %n.vec = and i64 %i.ol, 4611686018427387888     ; 4 uses
  %i.on = shl i64 %n.vec, 3                       ; 2 uses
  %i.oo = getelementptr i8, ptr %i.og, i64 %i.on  ; 2 uses
  %i.op = getelementptr i8, ptr %i.nj, i64 %i.on
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.og, i64 %i.oq ; 4 uses
  %next.gep245 = getelementptr i8, ptr %i.nj, i64 %i.oq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %i.or = getelementptr i8, ptr %next.gep245, i64 32
  %i.os = getelementptr i8, ptr %next.gep245, i64 64
  %i.ot = getelementptr i8, ptr %next.gep245, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep245, align 4, !alias.scope !1835, !noalias !1834
  %wide.load246 = load <4 x i64>, ptr %i.or, align 4, !alias.scope !1835, !noalias !1834
  %wide.load247 = load <4 x i64>, ptr %i.os, align 4, !alias.scope !1835, !noalias !1834
  %wide.load248 = load <4 x i64>, ptr %i.ot, align 4, !alias.scope !1835, !noalias !1834
  %i.ou = getelementptr i8, ptr %next.gep, i64 32
  %i.ov = getelementptr i8, ptr %next.gep, i64 64
  %i.ow = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1834, !noalias !1835
  store <4 x i64> %wide.load246, ptr %i.ou, align 4, !alias.scope !1834, !noalias !1835
  store <4 x i64> %wide.load247, ptr %i.ov, align 4, !alias.scope !1834, !noalias !1835
  store <4 x i64> %wide.load248, ptr %i.ow, align 4, !alias.scope !1834, !noalias !1835
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ox = icmp eq i64 %index.next, %n.vec
  br i1 %i.ox, label %middle.block, label %vector.body, !llvm.loop !1826

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.oo, i64 -8
  %cmp.n = icmp eq i64 %i.ol, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.om, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i169.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec250 = and i64 %i.ol, 4611686018427387900  ; 3 uses
  %i.oy = shl i64 %n.vec250, 3                    ; 2 uses
  %i.oz = getelementptr i8, ptr %i.og, i64 %i.oy  ; 2 uses
  %i.pa = getelementptr i8, ptr %i.nj, i64 %i.oy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index251 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next255, %vec.epilog.vector.body ] ; 2 uses
  %i.pb = shl i64 %index251, 3                    ; 2 uses
  %next.gep252 = getelementptr i8, ptr %i.og, i64 %i.pb
  %next.gep253 = getelementptr i8, ptr %i.nj, i64 %i.pb
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %wide.load254 = load <4 x i64>, ptr %next.gep253, align 4, !alias.scope !1835, !noalias !1834
  store <4 x i64> %wide.load254, ptr %next.gep252, align 4, !alias.scope !1834, !noalias !1835
  %index.next255 = add nuw i64 %index251, 4       ; 2 uses
  %i.pc = icmp eq i64 %index.next255, %n.vec250
  br i1 %i.pc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1827

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape256 = getelementptr i8, ptr %i.oz, i64 -8
  %cmp.n257 = icmp eq i64 %i.ol, %n.vec250
  br i1 %cmp.n257, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i169.preheader

.lr.ph.i.i.i.i.i.i169.preheader:                  ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i170.ph = phi ptr [ %i.og, %iter.check ], [ %i.oo, %vec.epilog.iter.check ], [ %i.oz, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i171.ph = phi ptr [ %i.nj, %iter.check ], [ %i.op, %vec.epilog.iter.check ], [ %i.pa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i169

.lr.ph.i.i.i.i.i.i169:                            ; preds = %.lr.ph.i.i.i.i.i.i169.preheader, %.lr.ph.i.i.i.i.i.i169
  %.012.i.i.i.i.i.i170 = phi ptr [ %i.pf, %.lr.ph.i.i.i.i.i.i169 ], [ %.012.i.i.i.i.i.i170.ph, %.lr.ph.i.i.i.i.i.i169.preheader ] ; 3 uses
  %.0911.i.i.i.i.i.i171 = phi ptr [ %i.pe, %.lr.ph.i.i.i.i.i.i169 ], [ %.0911.i.i.i.i.i.i171.ph, %.lr.ph.i.i.i.i.i.i169.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %i.pd = load i64, ptr %.0911.i.i.i.i.i.i171, align 4, !alias.scope !1835, !noalias !1834
  store i64 %i.pd, ptr %.012.i.i.i.i.i.i170, align 4, !alias.scope !1834, !noalias !1835
  %i.pe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i171, i64 8 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i170, i64 8
  %.not.i.i.i.i.i.i172 = icmp eq ptr %i.pe, %i.nl
  br i1 %.not.i.i.i.i.i.i172, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i169, !llvm.loop !1828

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i169, %vec.epilog.middle.block, %middle.block
  %.012.i.i.i.i.i.i170.lcssa = phi ptr [ %ind.escape256, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.012.i.i.i.i.i.i170, %.lr.ph.i.i.i.i.i.i169 ]
  %i.pg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i170.lcssa, i64 16
  %i.ph = load ptr, ptr %i.ns, align 8, !tbaa !167
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = sub i64 %i.pi, %i.nx
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.pj) #33
  store ptr %i.og, ptr %i.ni, align 8, !tbaa !154
  store ptr %i.pg, ptr %i.nk, align 8, !tbaa !155
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.oe
  store ptr %i.pk, ptr %i.ns, align 8, !tbaa !167
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ag, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backERKS2_.exit, %_ZNK4pbrt7HashMapISt4pairIiiEiNS_11HashIntPairEN4pstd3pmr21polymorphic_allocatorINS4_8optionalIS1_IS2_iEEEEEEixERKS2_.exit
  %i.pl = load i32, ptr %i.a, align 4, !tbaa !89
  call fastcc void @"_ZN4pbrt11TriQuadMesh6RefineIRZNS_5Shape6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_9TransformESD_bRKNS_19ParameterDictionaryERKSt3mapIS8_NS_12FloatTextureESt4lessIS8_ESaISt4pairIS9_SI_EEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_1EEvOT_fiiiRNS_7HashMapISL_IiiEiNS_11HashIntPairENSW_INSU_8optionalISL_IS14_iEEEEEEE"(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %2, i32 noundef %.sroa.0187.0, i32 noundef %i.pl, i32 noundef %.sroa.22.0, ptr noundef nonnull align 8 dereferenceable(40) %6)
  %i.pm = load i32, ptr %i.a, align 4, !tbaa !89
  call fastcc void @"_ZN4pbrt11TriQuadMesh6RefineIRZNS_5Shape6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_9TransformESD_bRKNS_19ParameterDictionaryERKSt3mapIS8_NS_12FloatTextureESt4lessIS8_ESaISt4pairIS9_SI_EEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_1EEvOT_fiiiRNS_7HashMapISL_IiiEiNS_11HashIntPairENSW_INSU_8optionalISL_IS14_iEEEEEEE"(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %2, i32 noundef %i.pm, i32 noundef %.sroa.12.0, i32 noundef %.sroa.22.0, ptr noundef nonnull align 8 dereferenceable(40) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit141

_ZNSt6vectorIiSaIiEE9push_backERKi.exit141:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i140, %bb.m, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt7HashMapISt4pairIiiEiNS_11HashIntPairEN4pstd3pmr21polymorphic_allocatorINS4_8optionalIS1_IS2_iEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !254
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorINS_8optionalISt4pairIS2_IiiEiEEENS_3pmr21polymorphic_allocatorIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !258
  %i.f = shl i64 %i.e, 4
  %i.g = load ptr, ptr %0, align 8, !tbaa !259    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN4pstd6vectorINS_8optionalISt4pairIS2_IiiEiEEENS_3pmr21polymorphic_allocatorIS5_EEED2Ev.exit unwind label %bb.c, !inline_history !5

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

_ZN4pstd6vectorINS_8optionalISt4pairIS2_IiiEiEEENS_3pmr21polymorphic_allocatorIS5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt7HashMapISt4pairIiiEiNS_11HashIntPairEN4pstd3pmr21polymorphic_allocatorINS4_8optionalIS1_IS2_iEEEEEE6InsertERKS2_RKi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 4 ; 6 uses
  %i.a = shl i64 %.sroa.0.0.copyload.i, 32
  %i.b = ashr i64 %.sroa.0.0.copyload.i, 32
  %i.c = or i64 %i.a, %i.b                        ; 2 uses
  %i.d = lshr i64 %i.c, 31
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, 9202493588570546565        ; 2 uses
  %i.g = lshr i64 %i.f, 27
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -9089707755183418291       ; 2 uses
  %i.j = lshr i64 %i.i, 33
  %i.k = xor i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !254  ; 2 uses
  %i.n = add i64 %i.m, -1                         ; 2 uses
  %i.o = and i64 %i.k, %i.n                       ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !255  ; 5 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !257, !range !30, !noundef !31
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = trunc i64 %.sroa.0.0.copyload.i to i32   ; 2 uses
  %i.w = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.x = trunc nuw i64 %i.w to i32                ; 2 uses
  br i1 %i.u, label %.lr.ph.i.preheader, label %_ZNK4pbrt7HashMapISt4pairIiiEiNS_11HashIntPairEN4pstd3pmr21polymorphic_allocatorINS4_8optionalIS1_IS2_iEEEEEE10FindOffsetERKS2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.y = load i32, ptr %i.r, align 4, !tbaa !309
  %i.z = icmp ne i32 %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp ne i32 %i.ab, %i.x
  %.not19.i12 = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %.not19.i12, label %.lr.ph, label %_ZN4pstd8optionalISt4pairIS1_IiiEiEE5valueEv.exit.i.i

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01221.i13 = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = add nuw nsw i32 %.01221.i13, 1          ; 4 uses
  %i.ae = lshr i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add i64 %i.o, %i.af
  %i.ah = mul nuw nsw i32 %i.ad, %i.ad
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add i64 %i.ag, %i.aj
  %i.al = and i64 %i.ak, %i.n                     ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
end_hunk_0
begin_hunk_1_@llvm.fabs.v8f32
!1628 = distinct !{!1628, !1627, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1629 = distinct !{!1629, i1 false, !"_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!1630 = distinct !{!1630, !1629, !"_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!1631 = !{!1622}
!1632 = !{!1624}
!1633 = !{!1626}
!1634 = !{!1626, !1624}
!1635 = !{!1628}
!1636 = !{!1630}
!1637 = distinct !{!1637, i1 false, !"_ZN4pbrt12StringPrintfIJRA4_KcS3_S3_RfS3_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!1638 = distinct !{!1638, !1637, !"_ZN4pbrt12StringPrintfIJRA4_KcS3_S3_RfS3_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!1639 = !{!1638}
!1640 = distinct !{!1640, i1 false, !"_ZN4pbrt12StringPrintfIJRA12_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!1641 = distinct !{!1641, !1640, !"_ZN4pbrt12StringPrintfIJRA12_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!1642 = !{!1641}
!1643 = distinct !{!1643, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1644 = distinct !{!1644, !1643, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1645 = distinct !{!1645, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1646 = distinct !{!1646, !1645, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1647 = distinct !{!1647, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1648 = distinct !{!1648, !1647, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1649 = distinct !{!1649, i1 false, !"_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!1650 = distinct !{!1650, !1649, !"_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!1651 = !{!1644}
!1652 = !{!1646}
!1653 = !{!1646, !1644}
!1654 = !{!1648}
!1655 = !{!1650}
!1656 = distinct !{!1656, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1657 = distinct !{!1657, !1656, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1658 = distinct !{!1658, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1659 = distinct !{!1659, !1658, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1660 = distinct !{!1660, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1661 = distinct !{!1661, !1660, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1662 = distinct !{!1662, i1 false, !"_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!1663 = distinct !{!1663, !1662, !"_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!1664 = !{!1657}
!1665 = !{!1659}
!1666 = !{!1659, !1657}
!1667 = !{!1661}
!1668 = !{!1663}
!1669 = distinct !{!1669, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1670 = distinct !{!1670, !1669, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1671 = distinct !{!1671, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1672 = distinct !{!1672, !1671, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1673 = distinct !{!1673, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1674 = distinct !{!1674, !1673, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1675 = distinct !{!1675, i1 false, !"_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!1676 = distinct !{!1676, !1675, !"_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!1677 = !{!1670}
!1678 = !{!1672}
!1679 = !{!1672, !1670}
!1680 = !{!1674}
!1681 = !{!1676}
!1682 = distinct !{!1682, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1683 = distinct !{!1683, !1682, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1684 = distinct !{!1684, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1685 = distinct !{!1685, !1684, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1686 = distinct !{!1686, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1687 = distinct !{!1687, !1686, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1688 = distinct !{!1688, i1 false, !"_ZN4pbrt6detail9formatOneIRfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!1689 = distinct !{!1689, !1688, !"_ZN4pbrt6detail9formatOneIRfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!1690 = !{!1683}
!1691 = !{!1685}
!1692 = !{!1685, !1683}
!1693 = !{!1687}
!1694 = !{!1689}
!1695 = distinct !{!1695, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1696 = distinct !{!1696, !1695, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1697 = distinct !{!1697, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1698 = distinct !{!1698, !1697, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1699 = distinct !{!1699, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1700 = distinct !{!1700, !1699, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1701 = distinct !{!1701, i1 false, !"_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!1702 = distinct !{!1702, !1701, !"_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!1703 = !{!1696}
!1704 = !{!1698}
!1705 = !{!1698, !1696}
!1706 = !{!1700}
!1707 = !{!1702}
!1708 = distinct !{!1708, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1709 = distinct !{!1709, !1708, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1710 = distinct !{!1710, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1711 = distinct !{!1711, !1710, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1712 = distinct !{!1712, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1713 = distinct !{!1713, !1712, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1714 = distinct !{!1714, i1 false, !"_ZN4pbrt6detail9formatOneIRfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!1715 = distinct !{!1715, !1714, !"_ZN4pbrt6detail9formatOneIRfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!1716 = !{!1709}
!1717 = !{!1711}
!1718 = !{!1711, !1709}
!1719 = !{!1713}
!1720 = !{!1715}
!1721 = distinct !{!1721, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1722 = distinct !{!1722, !1721, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1723 = distinct !{!1723, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1724 = distinct !{!1724, !1723, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1725 = distinct !{!1725, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1726 = distinct !{!1726, !1725, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1727 = distinct !{!1727, i1 false, !"_ZN4pbrt6detail9formatOneIRA12_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!1728 = distinct !{!1728, !1727, !"_ZN4pbrt6detail9formatOneIRA12_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!1729 = !{!1722}
!1730 = !{!1724}
!1731 = !{!1724, !1722}
!1732 = !{!1726}
!1733 = !{!1728}
!1734 = distinct !{!1734, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1735 = distinct !{!1735, !1734, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1736 = distinct !{!1736, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1737 = distinct !{!1737, !1736, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1738 = distinct !{!1738, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1739 = distinct !{!1739, !1738, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1740 = distinct !{!1740, i1 false, !"_ZN4pbrt6detail9formatOneIRA2_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!1741 = distinct !{!1741, !1740, !"_ZN4pbrt6detail9formatOneIRA2_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!1742 = !{!1735}
!1743 = !{!1737}
!1744 = !{!1737, !1735}
!1745 = !{!1739}
!1746 = !{!1741}
!1747 = distinct !{!1747, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1748 = distinct !{!1748, !1747, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1749 = distinct !{!1749, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1750 = distinct !{!1750, !1749, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1751 = distinct !{!1751, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1752 = distinct !{!1752, !1751, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1753 = distinct !{!1753, i1 false, !"_ZN4pbrt6detail9formatOneIRA12_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!1754 = distinct !{!1754, !1753, !"_ZN4pbrt6detail9formatOneIRA12_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!1755 = !{!1748}
!1756 = !{!1750}
!1757 = !{!1750, !1748}
!1758 = !{!1752}
!1759 = !{!1754}
!1760 = distinct !{null, null, null, null}
!1761 = distinct !{!1761, !93, !94, !95}
!1762 = distinct !{!1762, !93, !94, !95}
!1763 = distinct !{!1763, !97}
!1764 = distinct !{null, null, null, null}
!1765 = distinct !{!1765, !93, !94}
!1766 = distinct !{!1766, !93, !94, !95}
!1767 = distinct !{!1767, !93, !94, !95}
!1768 = distinct !{!1768, !97}
!1769 = distinct !{!1769, !93, !94}
!1770 = distinct !{!1770, i1 false, !"_ZN4pbrt6detail9formatOneIRKiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_"}
!1771 = distinct !{!1771, !1770, !"_ZN4pbrt6detail9formatOneIRKiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_: argument 0"}
!1772 = distinct !{!1772, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1773 = distinct !{!1773, !1772, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1774 = distinct !{!1774, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1775 = distinct !{!1775, !1774, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1776 = distinct !{!1776, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1777 = distinct !{!1777, !1776, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1778 = distinct !{!1778, i1 false, !"_ZN4pbrt6detail9formatOneIRKiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_"}
!1779 = distinct !{!1779, !1778, !"_ZN4pbrt6detail9formatOneIRKiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_: argument 0"}
!1780 = !{!1771}
!1781 = !{!1773}
!1782 = !{!1775}
!1783 = !{!1775, !1773}
!1784 = !{!1777}
!1785 = !{!1779}
!1786 = distinct !{!1786, i1 false, !"_ZN4pbrt6detail9formatOneIRKiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_"}
!1787 = distinct !{!1787, !1786, !"_ZN4pbrt6detail9formatOneIRKiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_: argument 0"}
!1788 = distinct !{!1788, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1789 = distinct !{!1789, !1788, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1790 = distinct !{!1790, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1791 = distinct !{!1791, !1790, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1792 = distinct !{!1792, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1793 = distinct !{!1793, !1792, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1794 = distinct !{!1794, i1 false, !"_ZN4pbrt6detail9formatOneIRKiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_"}
!1795 = distinct !{!1795, !1794, !"_ZN4pbrt6detail9formatOneIRKiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_: argument 0"}
!1796 = !{!1787}
!1797 = !{!1789}
!1798 = !{!1791}
!1799 = !{!1791, !1789}
!1800 = !{!1793}
!1801 = !{!1795}
!1802 = distinct !{!1802, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1803 = distinct !{!1803, !1802, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1804 = distinct !{!1804, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1805 = distinct !{!1805, !1804, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1806 = distinct !{!1806, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1807 = distinct !{!1807, !1806, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1808 = !{!1803}
!1809 = !{!1805}
!1810 = !{!1805, !1803}
!1811 = !{!1807}
!1812 = distinct !{!1812, !93, !94, !95}
!1813 = distinct !{!1813, !93, !94, !95}
!1814 = distinct !{!1814, !93, !94}
!1815 = distinct !{!1815, i1 false, !"_ZSt19__relocate_object_aIN4pbrt6Point3IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!1816 = distinct !{!1816, !1815, !"_ZSt19__relocate_object_aIN4pbrt6Point3IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1817 = distinct !{!1817, !1815, !"_ZSt19__relocate_object_aIN4pbrt6Point3IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1818 = distinct !{!1818, !93}
!1819 = distinct !{!1819, i1 false, !"_ZSt19__relocate_object_aIN4pbrt7Normal3IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!1820 = distinct !{!1820, !1819, !"_ZSt19__relocate_object_aIN4pbrt7Normal3IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1821 = distinct !{!1821, !1819, !"_ZSt19__relocate_object_aIN4pbrt7Normal3IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1822 = distinct !{!1822, !93}
!1823 = distinct !{!1823, i1 false, !"_ZSt19__relocate_object_aIN4pbrt6Point2IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!1824 = distinct !{!1824, !1823, !"_ZSt19__relocate_object_aIN4pbrt6Point2IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1825 = distinct !{!1825, !1823, !"_ZSt19__relocate_object_aIN4pbrt6Point2IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1826 = distinct !{!1826, !93, !94, !95}
!1827 = distinct !{!1827, !93, !94, !95}
!1828 = distinct !{!1828, !93, !94}
!1829 = !{!"_ZTSZN4pbrt5Shape6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_9TransformESB_bRKNS_19ParameterDictionaryERKSt3mapIS6_NS_12FloatTextureESt4lessIS6_ESaISt4pairIS7_SG_EEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_1", !245, i64 0}
!1830 = !{!1829, !245, i64 0}
!1831 = !{!308, !16, i64 4}
!1832 = !{!1817, !1816}
!1833 = !{!1821, !1820}
!1834 = !{!1824}
!1835 = !{!1825}
!1836 = distinct !{!1836, i1 false, !"_ZN4pbrt12StringPrintfIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!1837 = distinct !{!1837, !1836, !"_ZN4pbrt12StringPrintfIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!1838 = !{!1837}
!1839 = distinct !{!1839, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1840 = distinct !{!1840, !1839, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1841 = distinct !{!1841, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1842 = distinct !{!1842, !1841, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1843 = distinct !{!1843, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1844 = distinct !{!1844, !1843, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1845 = distinct !{!1845, i1 false, !"_ZN4pbrt6detail9formatOneIRA26_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!1846 = distinct !{!1846, !1845, !"_ZN4pbrt6detail9formatOneIRA26_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!1847 = !{!1840}
!1848 = !{!1842}
!1849 = !{!1842, !1840}
!1850 = !{!1844}
!1851 = !{!1846}
!1852 = distinct !{null, null}
!1853 = distinct !{!1853, !93}
!1854 = distinct !{!1854, !97}
!1855 = distinct !{!1855, !93}
!1856 = distinct !{!1856, !93}
!1857 = distinct !{null, null, null, null}
!1858 = distinct !{null, null, null, null}
!1859 = distinct !{!1859, !93}
!1860 = !{!252, !252, i64 0}
!1861 = distinct !{null, null, null, null}
!1862 = distinct !{!1862, !93}
!1863 = !{!"_ZTSZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_", !270, i64 0}
!1864 = !{!1863, !270, i64 0}
!1865 = !{!263, !99, i64 0}
!1866 = !{!263, !102, i64 8}
!1867 = distinct !{!1867, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1868 = distinct !{!1868, !1867, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1869 = distinct !{!1869, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1870 = distinct !{!1870, !1869, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1871 = distinct !{!1871, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1872 = distinct !{!1872, !1871, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1873 = !{!1868}
!1874 = !{!1870}
!1875 = !{!1870, !1868}
!1876 = !{!1872}
!1877 = distinct !{!1877, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1878 = distinct !{!1878, !1877, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1879 = distinct !{!1879, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1880 = distinct !{!1880, !1879, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1881 = distinct !{!1881, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1882 = distinct !{!1882, !1881, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1883 = !{!1878}
!1884 = !{!1880}
!1885 = !{!1880, !1878}
!1886 = !{!1882}
!1887 = distinct !{!1887, i1 false, !"_ZN4pbrt6detail9formatOneImEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS4_"}
!1888 = distinct !{!1888, !1887, !"_ZN4pbrt6detail9formatOneImEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS4_: argument 0"}
!1889 = distinct !{!1889, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1890 = distinct !{!1890, !1889, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1891 = distinct !{!1891, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1892 = distinct !{!1892, !1891, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1893 = distinct !{!1893, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1894 = distinct !{!1894, !1893, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1895 = distinct !{!1895, i1 false, !"_ZN4pbrt6detail9formatOneImEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS4_"}
!1896 = distinct !{!1896, !1895, !"_ZN4pbrt6detail9formatOneImEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS4_: argument 0"}
!1897 = !{!1888}
!1898 = !{!1890}
!1899 = !{!1892}
!1900 = !{!1892, !1890}
!1901 = !{!1894}
!1902 = !{!1896}
!1903 = distinct !{!1903, !93, !94, !95}
!1904 = distinct !{!1904, !93, !94, !95}
!1905 = distinct !{!1905, !93, !94}
!1906 = distinct !{!1906, !93, !94, !95}
!1907 = distinct !{!1907, !93, !94, !95}
!1908 = distinct !{!1908, !93, !94}
!1909 = distinct !{!1909, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1910 = distinct !{!1910, !1909, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1911 = distinct !{!1911, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1912 = distinct !{!1912, !1911, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1913 = distinct !{!1913, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1914 = distinct !{!1914, !1913, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1915 = !{!1910}
!1916 = !{!1912}
!1917 = !{!1912, !1910}
!1918 = !{!1914}
!1919 = distinct !{!1919, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1920 = distinct !{!1920, !1919, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1921 = distinct !{!1921, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1922 = distinct !{!1922, !1921, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1923 = distinct !{!1923, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1924 = distinct !{!1924, !1923, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1925 = !{!1920}
!1926 = !{!1922}
!1927 = !{!1922, !1920}
!1928 = !{!1924}
!1929 = distinct !{!1929, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1930 = distinct !{!1930, !1929, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1931 = distinct !{!1931, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1932 = distinct !{!1932, !1931, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1933 = distinct !{!1933, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1934 = distinct !{!1934, !1933, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1935 = !{!1930}
!1936 = !{!1932}
!1937 = !{!1932, !1930}
!1938 = !{!1934}
end_hunk_1
