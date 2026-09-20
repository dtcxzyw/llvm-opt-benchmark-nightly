Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !585
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #17, !noalias !585, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !100, !noalias !585
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !585
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #17, !noalias !585, !inline_history !4
  br label %.noexc106

bb.t:                                             ; preds = %bb.r
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !585
  %.not.i.i.i.i = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !298, !noalias !585
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4, !noalias !585
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.gu, %bb.u ], [ %i.he, %bb.v ]
  %i.hf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.hf, label %bb.w, label %.noexc106, !prof !302

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #17, !noalias !585
  br label %.noexc106

bb.x:                                             ; preds = %.noexc.i, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17, !noalias !585
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !585
  br label %.body

.noexc106:                                        ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !585
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fh, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0226, i64 24, i1 false)
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 136
  store <2 x double> %i.gj, ptr %.sroa.4227.0..sroa_idx, align 8
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 152
  store double %i.gk, ptr %.sroa.6229.0..sroa_idx, align 8
  %.sroa.7230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 160
  store <2 x double> %i.go, ptr %.sroa.7230.0..sroa_idx, align 8
  %.sroa.9232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 176
  store double %i.gp, ptr %.sroa.9232.0..sroa_idx, align 8
  %.sroa.10233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 184 ; 2 uses
  %.sroa.11234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 192
  store <2 x double> %i.gm, ptr %.sroa.10233.0..sroa_idx, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fh, i64 208
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fh, i64 220
  %i.hk = load i32, ptr %i.hi, align 8, !tbaa !298
  %i.hl = load double, ptr %i.hh, align 8, !tbaa !163
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !298
  %i.hn = insertelement <2 x i32> poison, i32 %i.hk, i64 0
  %i.ho = insertelement <2 x i32> %i.hn, i32 %i.hm, i64 1
  %i.hp = sitofp <2 x i32> %i.ho to <2 x double>
  %i.hq = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fsub <2 x double> %i.hp, %i.hr
  %i.ht = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x double> %i.ht, %i.hs          ; 4 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 0
  %i.hw = extractelement <2 x double> %i.hu, i64 1
  %i.hx = fcmp ogt double %i.hv, %i.hw
  %i.hy = insertelement <2 x i1> poison, i1 %i.hx, i64 0
  %i.hz = shufflevector <2 x i1> %i.hy, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ia = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ib = select <2 x i1> %i.hz, <2 x double> %i.hu, <2 x double> %i.ia ; 3 uses
  %i.ic = shufflevector <2 x double> %i.gm, <2 x double> %i.ib, <2 x i32> <i32 1, i32 3>
  %i.id = shufflevector <2 x double> %i.ib, <2 x double> %i.gm, <2 x i32> <i32 0, i32 2>
  %i.ie = fcmp ogt <2 x double> %i.ic, %i.id
  %i.if = select <2 x i1> %i.ie, <2 x double> %i.ib, <2 x double> %i.gn ; 5 uses
  %i.ig = extractelement <2 x double> %i.if, i64 0
  %i.ih = extractelement <2 x double> %i.if, i64 1
  %i.ii = fcmp ule double %i.ih, %i.ig
  br i1 %i.ii, label %bb.y, label %.thread

bb.y:                                             ; preds = %.noexc106
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fh, i64 212
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !298
  %i.il = getelementptr inbounds nuw i8, ptr %i.fh, i64 120
  %i.im = load double, ptr %i.il, align 8, !tbaa !163
  %i.in = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.io = load i32, ptr %i.in, align 8, !tbaa !298
  %i.ip = insertelement <2 x i32> poison, i32 %i.ik, i64 0
  %i.iq = insertelement <2 x i32> %i.ip, i32 %i.io, i64 1
  %i.ir = sitofp <2 x i32> %i.iq to <2 x double>
  %i.is = insertelement <2 x double> poison, double %i.im, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = fsub <2 x double> %i.ir, %i.it
  %i.iv = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iw = fmul <2 x double> %i.iv, %i.iu          ; 4 uses
  %i.ix = extractelement <2 x double> %i.iw, i64 0
  %i.iy = extractelement <2 x double> %i.iw, i64 1
  %i.iz = fcmp ogt double %i.ix, %i.iy
  %i.ja = insertelement <2 x i1> poison, i1 %i.iz, i64 0
  %i.jb = shufflevector <2 x i1> %i.ja, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.jc = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jd = select <2 x i1> %i.jb, <2 x double> %i.iw, <2 x double> %i.jc ; 3 uses
  %i.je = shufflevector <2 x double> %i.if, <2 x double> %i.jd, <2 x i32> <i32 0, i32 3>
  %i.jf = shufflevector <2 x double> %i.jd, <2 x double> %i.if, <2 x i32> <i32 0, i32 3>
  %i.jg = fcmp ogt <2 x double> %i.je, %i.jf
  %i.jh = select <2 x i1> %i.jg, <2 x double> %i.jd, <2 x double> %i.if ; 2 uses
  %i.ji = extractelement <2 x double> %i.jh, i64 0 ; 3 uses
  %i.jj = extractelement <2 x double> %i.jh, i64 1 ; 3 uses
  %i.jk = fcmp ule double %i.jj, %i.ji
  br i1 %i.jk, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i.i, label %.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i.i: ; preds = %bb.y
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fh, i64 216
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !298
  %i.jn = sitofp i32 %i.jm to double
  %i.jo = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !163 ; 2 uses
  %i.jq = fsub double %i.jn, %i.jp
  %i.jr = fmul double %i.jq, %i.gp                ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.fh, i64 228
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !298
  %i.ju = sitofp i32 %i.jt to double
  %i.jv = fsub double %i.ju, %i.jp
  %i.jw = fmul double %i.gp, %i.jv                ; 3 uses
  %i.jx = fcmp ogt double %i.jr, %i.jw            ; 2 uses
  %.030.2.i.i.i.i = select i1 %i.jx, double %i.jw, double %i.jr ; 2 uses
  %.0.2.i.i.i.i = select i1 %i.jx, double %i.jr, double %i.jw ; 2 uses
  %i.jy = fcmp ogt double %.030.2.i.i.i.i, %i.jj
  %.27.i.i.i = select i1 %i.jy, double %.030.2.i.i.i.i, double %i.jj ; 2 uses
  %i.jz = fcmp olt double %.0.2.i.i.i.i, %i.ji
  %i.ka = select i1 %i.jz, double %.0.2.i.i.i.i, double %i.ji ; 3 uses
  %i.kb = fcmp ule double %.27.i.i.i, %i.ka
  br i1 %i.kb, label %bb.z, label %.thread

.thread:                                          ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i.i, %.noexc106, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0226)
  br label %bb.ak

.loopexit289.a:                                   ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i.i
  store double %.27.i.i.i, ptr %.sroa.10233.0..sroa_idx, align 8, !tbaa !290
  store double %i.ka, ptr %.sroa.11234.0..sroa_idx, align 8, !tbaa !291
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fh, i64 200
  store double %i.ka, ptr %i.kc, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0226)
  %i.kd = load ptr, ptr %i.c, align 8, !tbaa !226 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 232
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 112
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store <2 x double> splat (double -1.000000e+00), ptr %2, align 16, !tbaa !163
  %i.kh = load ptr, ptr %11, align 8, !tbaa !284  ; 2 uses
  %i.ki = load ptr, ptr %i.bh, align 8, !tbaa !289
  %.not.i.i.i124 = icmp eq ptr %i.ki, %i.kh
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %bb.z
  store ptr %i.kh, ptr %i.bh, align 8, !tbaa !289
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.z
  invoke void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi2EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_RSN_(ptr noundef nonnull align 8 dereferenceable(264) %i.ke, ptr noundef nonnull align 8 dereferenceable(88) %i.kf, ptr noundef nonnull align 8 dereferenceable(88) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc127.a unwind label %.loopexit289.a

.noexc127.a:                                      ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i
  %i.kj = load double, ptr %i.bg, align 8, !tbaa !291
  %i.kk = load double, ptr %2, align 16, !tbaa !290
  %i.kl = fsub double %i.kj, %i.kk
  %i.km = fcmp ogt double %i.kl, 1.000000e-09
  %.pre = load ptr, ptr %i.bh, align 8, !tbaa !289 ; 6 uses
  br i1 %i.km, label %bb.aa, label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108

bb.aa:                                            ; preds = %.noexc127.a
  %i.kn = load ptr, ptr %i.bi, align 8, !tbaa !285
  %.not.i.i = icmp eq ptr %.pre, %i.kn
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.pre, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !303
  %i.ko = load ptr, ptr %i.bh, align 8, !tbaa !289
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  store ptr %i.kp, ptr %i.bh, align 8, !tbaa !289
  br label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108

bb.ac:                                            ; preds = %bb.aa
  %i.kq = load ptr, ptr %11, align 8, !tbaa !284  ; 5 uses
  %i.kr = ptrtoint ptr %.pre to i64
  %i.ks = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.kt = sub i64 %i.kr, %i.ks                    ; 4 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775792
  br i1 %i.ku, label %bb.ad, label %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #28
          to label %.noexc128.a unwind label %.loopexit.split-lp

.noexc128.a:                                      ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.kv = ashr exact i64 %i.kt, 4
  %mul2.i.i.i = ashr exact i64 %i.kt, 3
  %16 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.kw = icmp ult i64 %16, %i.kv
  %i.kx = call i64 @llvm.umin.i64(i64 %16, i64 576460752303423487)
  %i.ky = select i1 %i.kw, i64 576460752303423487, i64 %i.kx ; 2 uses
  %i.kz = shl nuw nsw i64 %i.ky, 4
  %i.la = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kz) #27
          to label %.noexc129 unwind label %.loopexit289.a ; 5 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !303
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kq, %.pre
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc129, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i ], [ %i.la, %.noexc129 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i ], [ %i.kq, %.noexc129 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !303, !alias.scope !589
  %i.lc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i126 = icmp eq ptr %i.lc, %.pre
  br i1 %.not.i.i.i.i.i.i126, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc129
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.la, %.noexc129 ], [ %i.ld, %.lr.ph.i.i.i.i.i.i ]
  %i.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.kq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.lf = load ptr, ptr %i.bi, align 8, !tbaa !285
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = sub i64 %i.lg, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.lh) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.la, ptr %11, align 8, !tbaa !284
  store ptr %i.le, ptr %i.bh, align 8, !tbaa !289
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %i.ky
  store ptr %i.li, ptr %i.bi, align 8, !tbaa !285
  br label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108

_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ab, %.noexc127.a
  %i.lj = phi ptr [ %i.le, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.kp, %bb.ab ], [ %.pre, %.noexc127.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.lk = load ptr, ptr %11, align 8, !tbaa !284  ; 2 uses
  %.not450 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not450, label %.loopexit, label %.lr.ph406

.lr.ph406:                                        ; preds = %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108, %._crit_edge
  %i.ll = phi ptr [ %i.oc, %._crit_edge ], [ %i.lk, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ] ; 2 uses
  %i.lm = phi ptr [ %i.od, %._crit_edge ], [ %i.lj, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ]
  %.062405 = phi i64 [ %i.of, %._crit_edge ], [ 0, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ] ; 2 uses
  %.sroa.13.0402 = phi double [ %.sroa.13.1.lcssa, %._crit_edge ], [ 1.000000e+00, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ] ; 2 uses
  %i.ln = phi <2 x double> [ %i.oe, %._crit_edge ], [ splat (double 1.000000e+00), %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ] ; 2 uses
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %.062405 ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !290
  %i.lq = fdiv double %i.lp, %i.aj
  %i.lr = call double @llvm.ceil.f64(double %i.lq)
  %i.ls = fmul double %i.aj, %i.lr                ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !291 ; 2 uses
  %i.lv = fcmp ugt double %i.ls, %i.lu
  br i1 %i.lv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph406, %bb.aj
  %.0399 = phi double [ %i.oa, %bb.aj ], [ %i.ls, %.lr.ph406 ] ; 4 uses
  %.sroa.13.1396 = phi double [ %.sroa.13.2.ph, %bb.aj ], [ %.sroa.13.0402, %.lr.ph406 ] ; 2 uses
  %i.lw = phi <2 x double> [ %i.nz, %bb.aj ], [ %i.ln, %.lr.ph406 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.lx = load ptr, ptr %i.c, align 8, !tbaa !226 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !195, !noalias !590
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !590
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 136
  %.sroa.9.0..sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %i.lx, i64 152
  %.sroa.9.0.copyload.i.i113 = load double, ptr %.sroa.9.0..sroa_idx.i.i112, align 8, !noalias !592
  %i.mc = fmul double %.0399, %.sroa.9.0.copyload.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(88) %i.ma, i64 24, i1 false), !noalias !590
  %i.md = load <2 x double>, ptr %i.mb, align 8, !noalias !592
  %i.me = insertelement <2 x double> poison, double %.0399, i64 0
  %i.mf = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mg = fmul <2 x double> %i.mf, %i.md
  %i.mh = load <2 x double>, ptr %7, align 16, !tbaa !163, !alias.scope !593, !noalias !590
  %i.mi = fadd <2 x double> %i.mg, %i.mh
  store <2 x double> %i.mi, ptr %7, align 16, !tbaa !163, !alias.scope !593, !noalias !590
  %i.mj = load double, ptr %i.bj, align 16, !tbaa !163, !alias.scope !593, !noalias !590
  %i.mk = fadd double %i.mc, %i.mj
  store double %i.mk, ptr %i.bj, align 16, !tbaa !163, !alias.scope !593, !noalias !590
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lz, i64 56
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !276, !noalias !594
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !294, !noalias !595 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !100, !noalias !595
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 56
  %i.mq = load ptr, ptr %i.mp, align 8, !noalias !595
  invoke void %i.mq(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.af unwind label %bb.ah, !inline_history !539

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.mr = load ptr, ptr %i.h, align 8, !tbaa !294, !noalias !596 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !100, !noalias !596
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !596
  invoke void %i.mu(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %.noexc116 unwind label %bb.ah, !inline_history !542

.noexc116:                                        ; preds = %bb.af
  %i.mv = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math4Vec3IdEERNSJ_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ag unwind label %bb.ah     ; 0 uses

bb.ag:                                            ; preds = %.noexc116
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.mw = load float, ptr %i.a, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.mx = fpext float %i.mw to double             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.my = fcmp ogt double %i.al, %i.mx
  br i1 %i.my, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %.noexc116, %bb.af, %.lr.ph
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.body

bb.ai:                                            ; preds = %bb.ag
  %i.na = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.nb = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nc = fmul <2 x double> %i.x, %i.nb
  %i.nd = fmul double %i.p, %i.mx
  %i.ne = fmul double %i.aj, %i.nd
  %i.nf = call double @llvm.fmuladd.f64(double %.0399, double %i.af, double 1.000000e+00) ; 2 uses
  %i.ng = fmul <2 x double> %i.br, %i.nc
  %i.nh = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fdiv <2 x double> %i.ng, %i.ni          ; 2 uses
  %i.nk = fdiv double %i.ne, %i.nf
  %i.nl = extractelement <2 x double> %i.nj, i64 0
  %i.nm = call double @exp(double noundef %i.nl) #17, !noalias !597
  %i.nn = extractelement <2 x double> %i.nj, i64 1
  %i.no = call double @exp(double noundef %i.nn) #17, !noalias !597
  %i.np = call double @exp(double noundef %i.nk) #17, !noalias !597
  %i.nq = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.nr = insertelement <2 x double> %i.nq, double %i.no, i64 1
  %i.ns = fmul <2 x double> %i.lw, %i.nr          ; 5 uses
  %i.nt = fmul double %.sroa.13.1396, %i.np       ; 4 uses
  %foldExtExtBinop520 = fmul <2 x double> %i.ns, %i.ns
  %i.nu = extractelement <2 x double> %foldExtExtBinop520, i64 1
  %i.nv = extractelement <2 x double> %i.ns, i64 0 ; 2 uses
  %i.nw = call double @llvm.fmuladd.f64(double %i.nv, double %i.nv, double %i.nu)
  %i.nx = call noundef double @llvm.fmuladd.f64(double %i.nt, double %i.nt, double %i.nw)
  %i.ny = fcmp olt double %i.nx, %i.al
  br i1 %i.ny, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %.sroa.13.2.ph = phi double [ %i.nt, %bb.ai ], [ %.sroa.13.1396, %bb.ag ] ; 2 uses
  %i.nz = phi <2 x double> [ %i.ns, %bb.ai ], [ %i.lw, %bb.ag ] ; 2 uses
  %i.oa = fadd double %i.aj, %.0399               ; 2 uses
  %i.ob = fcmp ugt double %i.oa, %i.lu
  br i1 %i.ob, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !568

._crit_edge.loopexit:                             ; preds = %bb.aj
  %.pre463.a = load ptr, ptr %i.bh, align 8, !tbaa !289
  %.pre464.a = load ptr, ptr %11, align 8, !tbaa !284
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph406
  %i.oc = phi ptr [ %i.ll, %.lr.ph406 ], [ %.pre464.a, %._crit_edge.loopexit ] ; 2 uses
  %i.od = phi ptr [ %i.lm, %.lr.ph406 ], [ %.pre463.a, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.13.1.lcssa = phi double [ %.sroa.13.0402, %.lr.ph406 ], [ %.sroa.13.2.ph, %._crit_edge.loopexit ] ; 2 uses
  %i.oe = phi <2 x double> [ %i.ln, %.lr.ph406 ], [ %i.nz, %._crit_edge.loopexit ] ; 2 uses
  %i.of = add nuw i64 %.062405, 1                 ; 2 uses
  %i.og = ptrtoint ptr %i.od to i64
  %i.oh = ptrtoint ptr %i.oc to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = ashr exact i64 %i.oi, 4
  %i.ok = icmp ult i64 %i.of, %i.oj
  br i1 %i.ok, label %.lr.ph406, label %.loopexit, !llvm.loop !569

.loopexit:                                        ; preds = %._crit_edge, %bb.ai, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108
  %.sroa.13.4 = phi double [ %i.nt, %bb.ai ], [ 1.000000e+00, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ], [ %.sroa.13.1.lcssa, %._crit_edge ]
  %i.ol = phi <2 x double> [ %i.ns, %bb.ai ], [ splat (double 1.000000e+00), %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ], [ %i.oe, %._crit_edge ]
  %i.om = fmul <2 x double> %i.ac, %i.ol
  %i.on = fmul double %i.ad, %.sroa.13.4
  %i.oo = fmul double %.sroa.15.1410, %i.on
  %i.op = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.oq = insertelement <2 x double> %i.op, double %i.ff, i64 1 ; 2 uses
  %i.or = fsub <2 x double> splat (double 1.000000e+00), %i.oq
  %i.os = fsub double 1.000000e+00, %i.fg
  %i.ot = fmul <2 x double> %i.dr, %i.om
  %i.ou = fmul <2 x double> %i.or, %i.ot
  %i.ov = fmul double %i.os, %i.oo
  %i.ow = fadd <2 x double> %i.dq, %i.ou          ; 2 uses
  %i.ox = fadd double %.sroa.11.1413, %i.ov       ; 2 uses
  %i.oy = fmul <2 x double> %i.dr, %i.oq          ; 5 uses
  %i.oz = fmul double %.sroa.15.1410, %i.fg       ; 4 uses
  %foldExtExtBinop522 = fmul <2 x double> %i.oy, %i.oy
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !678
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #17, !noalias !678, !inline_history !7
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !100, !noalias !678
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !678
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #17, !noalias !678, !inline_history !7
  br label %.noexc106

bb.t:                                             ; preds = %bb.r
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !678
  %.not.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !298, !noalias !678
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4, !noalias !678
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.gt, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.he, label %bb.w, label %.noexc106, !prof !302

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #17, !noalias !678
  br label %.noexc106

bb.x:                                             ; preds = %.noexc.i, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17, !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !678
  br label %.body

.noexc106:                                        ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !678
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fg, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0226, i64 24, i1 false)
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 136
  store <2 x double> %i.gi, ptr %.sroa.4227.0..sroa_idx, align 8
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 152
  store double %i.gj, ptr %.sroa.6229.0..sroa_idx, align 8
  %.sroa.7230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 160
  store <2 x double> %i.gn, ptr %.sroa.7230.0..sroa_idx, align 8
  %.sroa.9232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 176
  store double %i.go, ptr %.sroa.9232.0..sroa_idx, align 8
  %.sroa.10233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 184 ; 2 uses
  %.sroa.11234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 192
  store <2 x double> %i.gl, ptr %.sroa.10233.0..sroa_idx, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fg, i64 208
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fg, i64 220
  %i.hj = load i32, ptr %i.hh, align 8, !tbaa !298
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !163
  %i.hl = load i32, ptr %i.hi, align 4, !tbaa !298
  %i.hm = insertelement <2 x i32> poison, i32 %i.hj, i64 0
  %i.hn = insertelement <2 x i32> %i.hm, i32 %i.hl, i64 1
  %i.ho = sitofp <2 x i32> %i.hn to <2 x double>
  %i.hp = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fsub <2 x double> %i.ho, %i.hq
  %i.hs = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hr          ; 4 uses
  %i.hu = extractelement <2 x double> %i.ht, i64 0
  %i.hv = extractelement <2 x double> %i.ht, i64 1
  %i.hw = fcmp ogt double %i.hu, %i.hv
  %i.hx = insertelement <2 x i1> poison, i1 %i.hw, i64 0
  %i.hy = shufflevector <2 x i1> %i.hx, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hz = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ia = select <2 x i1> %i.hy, <2 x double> %i.ht, <2 x double> %i.hz ; 3 uses
  %i.ib = shufflevector <2 x double> %i.gl, <2 x double> %i.ia, <2 x i32> <i32 1, i32 3>
  %i.ic = shufflevector <2 x double> %i.ia, <2 x double> %i.gl, <2 x i32> <i32 0, i32 2>
  %i.id = fcmp ogt <2 x double> %i.ib, %i.ic
  %i.ie = select <2 x i1> %i.id, <2 x double> %i.ia, <2 x double> %i.gm ; 5 uses
  %i.if = extractelement <2 x double> %i.ie, i64 0
  %i.ig = extractelement <2 x double> %i.ie, i64 1
  %i.ih = fcmp ule double %i.ig, %i.if
  br i1 %i.ih, label %bb.y, label %.thread

bb.y:                                             ; preds = %.noexc106
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fg, i64 212
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !298
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fg, i64 120
  %i.il = load double, ptr %i.ik, align 8, !tbaa !163
  %i.im = getelementptr inbounds nuw i8, ptr %i.fg, i64 224
  %i.in = load i32, ptr %i.im, align 8, !tbaa !298
  %i.io = insertelement <2 x i32> poison, i32 %i.ij, i64 0
  %i.ip = insertelement <2 x i32> %i.io, i32 %i.in, i64 1
  %i.iq = sitofp <2 x i32> %i.ip to <2 x double>
  %i.ir = insertelement <2 x double> poison, double %i.il, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = fsub <2 x double> %i.iq, %i.is
  %i.iu = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iv = fmul <2 x double> %i.iu, %i.it          ; 4 uses
  %i.iw = extractelement <2 x double> %i.iv, i64 0
  %i.ix = extractelement <2 x double> %i.iv, i64 1
  %i.iy = fcmp ogt double %i.iw, %i.ix
  %i.iz = insertelement <2 x i1> poison, i1 %i.iy, i64 0
  %i.ja = shufflevector <2 x i1> %i.iz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.jb = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jc = select <2 x i1> %i.ja, <2 x double> %i.iv, <2 x double> %i.jb ; 3 uses
  %i.jd = shufflevector <2 x double> %i.ie, <2 x double> %i.jc, <2 x i32> <i32 0, i32 3>
  %i.je = shufflevector <2 x double> %i.jc, <2 x double> %i.ie, <2 x i32> <i32 0, i32 3>
  %i.jf = fcmp ogt <2 x double> %i.jd, %i.je
  %i.jg = select <2 x i1> %i.jf, <2 x double> %i.jc, <2 x double> %i.ie ; 2 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0 ; 3 uses
  %i.ji = extractelement <2 x double> %i.jg, i64 1 ; 3 uses
  %i.jj = fcmp ule double %i.ji, %i.jh
  br i1 %i.jj, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i.i, label %.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i.i: ; preds = %bb.y
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fg, i64 216
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !298
  %i.jm = sitofp i32 %i.jl to double
  %i.jn = getelementptr inbounds nuw i8, ptr %i.fg, i64 128
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !163 ; 2 uses
  %i.jp = fsub double %i.jm, %i.jo
  %i.jq = fmul double %i.jp, %i.go                ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fg, i64 228
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !298
  %i.jt = sitofp i32 %i.js to double
  %i.ju = fsub double %i.jt, %i.jo
  %i.jv = fmul double %i.go, %i.ju                ; 3 uses
  %i.jw = fcmp ogt double %i.jq, %i.jv            ; 2 uses
  %.030.2.i.i.i.i = select i1 %i.jw, double %i.jv, double %i.jq ; 2 uses
  %.0.2.i.i.i.i = select i1 %i.jw, double %i.jq, double %i.jv ; 2 uses
  %i.jx = fcmp ogt double %.030.2.i.i.i.i, %i.ji
  %.27.i.i.i = select i1 %i.jx, double %.030.2.i.i.i.i, double %i.ji ; 2 uses
  %i.jy = fcmp olt double %.0.2.i.i.i.i, %i.jh
  %i.jz = select i1 %i.jy, double %.0.2.i.i.i.i, double %i.jh ; 3 uses
  %i.ka = fcmp ule double %.27.i.i.i, %i.jz
  br i1 %i.ka, label %bb.z, label %.thread

.thread:                                          ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i.i, %.noexc106, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0226)
  br label %bb.ak

.loopexit289.a:                                   ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i.i
  store double %.27.i.i.i, ptr %.sroa.10233.0..sroa_idx, align 8, !tbaa !290
  store double %i.jz, ptr %.sroa.11234.0..sroa_idx, align 8, !tbaa !291
  %i.kb = getelementptr inbounds nuw i8, ptr %i.fg, i64 200
  store double %i.jz, ptr %i.kb, align 8, !tbaa !350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0226)
  %i.kc = load ptr, ptr %i.c, align 8, !tbaa !351 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 232
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 112
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store <2 x double> splat (double -1.000000e+00), ptr %2, align 16, !tbaa !163
  %i.kg = load ptr, ptr %11, align 8, !tbaa !284  ; 2 uses
  %i.kh = load ptr, ptr %i.bh, align 8, !tbaa !289
  %.not.i.i.i124 = icmp eq ptr %i.kh, %i.kg
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %bb.z
  store ptr %i.kg, ptr %i.bh, align 8, !tbaa !289
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.z
  invoke void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi2EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_RSN_(ptr noundef nonnull align 8 dereferenceable(264) %i.kd, ptr noundef nonnull align 8 dereferenceable(88) %i.ke, ptr noundef nonnull align 8 dereferenceable(88) %i.kf, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc127.a unwind label %.loopexit289.a

.noexc127.a:                                      ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit.i
  %i.ki = load double, ptr %i.bg, align 8, !tbaa !291
  %i.kj = load double, ptr %2, align 16, !tbaa !290
  %i.kk = fsub double %i.ki, %i.kj
  %i.kl = fcmp ogt double %i.kk, 1.000000e-09
  %.pre = load ptr, ptr %i.bh, align 8, !tbaa !289 ; 6 uses
  br i1 %i.kl, label %bb.aa, label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108

bb.aa:                                            ; preds = %.noexc127.a
  %i.km = load ptr, ptr %i.bi, align 8, !tbaa !285
  %.not.i.i = icmp eq ptr %.pre, %i.km
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.pre, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !303
  %i.kn = load ptr, ptr %i.bh, align 8, !tbaa !289
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 2 uses
  store ptr %i.ko, ptr %i.bh, align 8, !tbaa !289
  br label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108

bb.ac:                                            ; preds = %bb.aa
  %i.kp = load ptr, ptr %11, align 8, !tbaa !284  ; 5 uses
  %i.kq = ptrtoint ptr %.pre to i64
  %i.kr = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ks = sub i64 %i.kq, %i.kr                    ; 4 uses
  %i.kt = icmp eq i64 %i.ks, 9223372036854775792
  br i1 %i.kt, label %bb.ad, label %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #28
          to label %.noexc128.a unwind label %.loopexit.split-lp

.noexc128.a:                                      ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.ku = ashr exact i64 %i.ks, 4
  %mul2.i.i.i = ashr exact i64 %i.ks, 3
  %16 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.kv = icmp ult i64 %16, %i.ku
  %i.kw = call i64 @llvm.umin.i64(i64 %16, i64 576460752303423487)
  %i.kx = select i1 %i.kv, i64 576460752303423487, i64 %i.kw ; 2 uses
  %i.ky = shl nuw nsw i64 %i.kx, 4
  %i.kz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #27
          to label %.noexc129 unwind label %.loopexit289.a ; 5 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !303
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kp, %.pre
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc129, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i ], [ %i.kz, %.noexc129 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i.i ], [ %i.kp, %.noexc129 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !303, !alias.scope !682
  %i.lb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i126 = icmp eq ptr %i.lb, %.pre
  br i1 %.not.i.i.i.i.i.i126, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc129
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kz, %.noexc129 ], [ %i.lc, %.lr.ph.i.i.i.i.i.i ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.le = load ptr, ptr %i.bi, align 8, !tbaa !285
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = sub i64 %i.lf, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.lg) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.kz, ptr %11, align 8, !tbaa !284
  store ptr %i.ld, ptr %i.bh, align 8, !tbaa !289
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %i.kx
  store ptr %i.lh, ptr %i.bi, align 8, !tbaa !285
  br label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108

_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ab, %.noexc127.a
  %i.li = phi ptr [ %i.ld, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ko, %bb.ab ], [ %.pre, %.noexc127.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.lj = load ptr, ptr %11, align 8, !tbaa !284  ; 2 uses
  %.not450 = icmp eq ptr %i.li, %i.lj
  br i1 %.not450, label %.loopexit, label %.lr.ph406

.lr.ph406:                                        ; preds = %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108, %._crit_edge
  %i.lk = phi ptr [ %i.oa, %._crit_edge ], [ %i.lj, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ] ; 2 uses
  %i.ll = phi ptr [ %i.ob, %._crit_edge ], [ %i.li, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ]
  %.062405 = phi i64 [ %i.od, %._crit_edge ], [ 0, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ] ; 2 uses
  %.sroa.13.0402 = phi double [ %.sroa.13.1.lcssa, %._crit_edge ], [ 1.000000e+00, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ] ; 2 uses
  %i.lm = phi <2 x double> [ %i.oc, %._crit_edge ], [ splat (double 1.000000e+00), %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %.062405 ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !290
  %i.lp = fdiv double %i.lo, %i.aj
  %i.lq = call double @llvm.ceil.f64(double %i.lp)
  %i.lr = fmul double %i.aj, %i.lq                ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !291 ; 2 uses
  %i.lu = fcmp ugt double %i.lr, %i.lt
  br i1 %i.lu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph406, %bb.aj
  %.0399 = phi double [ %i.ny, %bb.aj ], [ %i.lr, %.lr.ph406 ] ; 4 uses
  %.sroa.13.1396 = phi double [ %.sroa.13.2.ph, %bb.aj ], [ %.sroa.13.0402, %.lr.ph406 ] ; 2 uses
  %i.lv = phi <2 x double> [ %i.nx, %bb.aj ], [ %i.lm, %.lr.ph406 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.lw = load ptr, ptr %i.c, align 8, !tbaa !351 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !331, !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !683
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 136
  %.sroa.9.0..sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %i.lw, i64 152
  %.sroa.9.0.copyload.i.i113 = load double, ptr %.sroa.9.0..sroa_idx.i.i112, align 8, !noalias !685
  %i.mb = fmul double %.0399, %.sroa.9.0.copyload.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(88) %i.lz, i64 24, i1 false), !noalias !683
  %i.mc = load <2 x double>, ptr %i.ma, align 8, !noalias !685
  %i.md = insertelement <2 x double> poison, double %.0399, i64 0
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mf = fmul <2 x double> %i.me, %i.mc
  %i.mg = load <2 x double>, ptr %7, align 16, !tbaa !163, !alias.scope !686, !noalias !683
  %i.mh = fadd <2 x double> %i.mf, %i.mg
  store <2 x double> %i.mh, ptr %7, align 16, !tbaa !163, !alias.scope !686, !noalias !683
  %i.mi = load double, ptr %i.bj, align 16, !tbaa !163, !alias.scope !686, !noalias !683
  %i.mj = fadd double %i.mb, %i.mi
  store double %i.mj, ptr %i.bj, align 16, !tbaa !163, !alias.scope !686, !noalias !683
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !276, !noalias !687
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !294, !noalias !688 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !100, !noalias !688
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 56
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !688
  invoke void %i.mp(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.af unwind label %bb.ah, !inline_history !632

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.mq = load ptr, ptr %i.h, align 8, !tbaa !294, !noalias !689 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !100, !noalias !689
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 64
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !689
  invoke void %i.mt(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.mq, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %.noexc116 unwind label %bb.ah, !inline_history !635

.noexc116:                                        ; preds = %bb.af
  %i.mu = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math4Vec3IdEERNSJ_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ag unwind label %bb.ah     ; 0 uses

bb.ag:                                            ; preds = %.noexc116
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.mv = load double, ptr %i.a, align 8, !tbaa !163 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.mw = fcmp olt double %i.mv, %i.al
  br i1 %i.mw, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %.noexc116, %bb.af, %.lr.ph
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.body

bb.ai:                                            ; preds = %bb.ag
  %i.my = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = fmul <2 x double> %i.x, %i.mz
  %i.nb = fmul double %i.p, %i.mv
  %i.nc = fmul double %i.aj, %i.nb
  %i.nd = call double @llvm.fmuladd.f64(double %.0399, double %i.af, double 1.000000e+00) ; 2 uses
  %i.ne = fmul <2 x double> %i.br, %i.na
  %i.nf = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.ng = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nh = fdiv <2 x double> %i.ne, %i.ng          ; 2 uses
  %i.ni = fdiv double %i.nc, %i.nd
  %i.nj = extractelement <2 x double> %i.nh, i64 0
  %i.nk = call double @exp(double noundef %i.nj) #17, !noalias !690
  %i.nl = extractelement <2 x double> %i.nh, i64 1
  %i.nm = call double @exp(double noundef %i.nl) #17, !noalias !690
  %i.nn = call double @exp(double noundef %i.ni) #17, !noalias !690
  %i.no = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.np = insertelement <2 x double> %i.no, double %i.nm, i64 1
  %i.nq = fmul <2 x double> %i.lv, %i.np          ; 5 uses
  %i.nr = fmul double %.sroa.13.1396, %i.nn       ; 4 uses
  %foldExtExtBinop520 = fmul <2 x double> %i.nq, %i.nq
  %i.ns = extractelement <2 x double> %foldExtExtBinop520, i64 1
  %i.nt = extractelement <2 x double> %i.nq, i64 0 ; 2 uses
  %i.nu = call double @llvm.fmuladd.f64(double %i.nt, double %i.nt, double %i.ns)
  %i.nv = call noundef double @llvm.fmuladd.f64(double %i.nr, double %i.nr, double %i.nu)
  %i.nw = fcmp olt double %i.nv, %i.al
  br i1 %i.nw, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %.sroa.13.2.ph = phi double [ %i.nr, %bb.ai ], [ %.sroa.13.1396, %bb.ag ] ; 2 uses
  %i.nx = phi <2 x double> [ %i.nq, %bb.ai ], [ %i.lv, %bb.ag ] ; 2 uses
  %i.ny = fadd double %i.aj, %.0399               ; 2 uses
  %i.nz = fcmp ugt double %i.ny, %i.lt
  br i1 %i.nz, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !661

._crit_edge.loopexit:                             ; preds = %bb.aj
  %.pre463.a = load ptr, ptr %i.bh, align 8, !tbaa !289
  %.pre464.a = load ptr, ptr %11, align 8, !tbaa !284
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph406
  %i.oa = phi ptr [ %i.lk, %.lr.ph406 ], [ %.pre464.a, %._crit_edge.loopexit ] ; 2 uses
  %i.ob = phi ptr [ %i.ll, %.lr.ph406 ], [ %.pre463.a, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.13.1.lcssa = phi double [ %.sroa.13.0402, %.lr.ph406 ], [ %.sroa.13.2.ph, %._crit_edge.loopexit ] ; 2 uses
  %i.oc = phi <2 x double> [ %i.lm, %.lr.ph406 ], [ %i.nx, %._crit_edge.loopexit ] ; 2 uses
  %i.od = add nuw i64 %.062405, 1                 ; 2 uses
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = ptrtoint ptr %i.oa to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = ashr exact i64 %i.og, 4
  %i.oi = icmp ult i64 %i.od, %i.oh
  br i1 %i.oi, label %.lr.ph406, label %.loopexit, !llvm.loop !662

.loopexit:                                        ; preds = %._crit_edge, %bb.ai, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108
  %.sroa.13.4 = phi double [ %i.nr, %bb.ai ], [ 1.000000e+00, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ], [ %.sroa.13.1.lcssa, %._crit_edge ]
  %i.oj = phi <2 x double> [ %i.nq, %bb.ai ], [ splat (double 1.000000e+00), %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit108 ], [ %i.oc, %._crit_edge ]
  %i.ok = fmul <2 x double> %i.ac, %i.oj
  %i.ol = fmul double %i.ad, %.sroa.13.4
  %i.om = fmul double %.sroa.15.1410, %i.ol
  %i.on = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.oo = insertelement <2 x double> %i.on, double %i.fe, i64 1 ; 2 uses
  %i.op = fsub <2 x double> splat (double 1.000000e+00), %i.oo
  %i.oq = fsub double 1.000000e+00, %i.ff
  %i.or = fmul <2 x double> %i.dr, %i.ok
  %i.os = fmul <2 x double> %i.op, %i.or
  %i.ot = fmul double %i.oq, %i.om
  %i.ou = fadd <2 x double> %i.dq, %i.os          ; 2 uses
  %i.ov = fadd double %.sroa.11.1413, %i.ot       ; 2 uses
  %i.ow = fmul <2 x double> %i.dr, %i.oo          ; 5 uses
  %i.ox = fmul double %.sroa.15.1410, %i.ff       ; 4 uses
  %foldExtExtBinop522 = fmul <2 x double> %i.ow, %i.ow
  %i.oy = extractelement <2 x double> %foldExtExtBinop522, i64 1
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04mathlsERSoRKNS1_9CoordBBoxE:bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i5: ; preds = %bb.c
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !207
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit11: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math5TupleILi3EiE3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4, !tbaa !298
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.pre)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !298
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !298
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !359, !alias.scope !1162
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !308, !alias.scope !1162
  store i8 0, ptr %i.n, align 8, !tbaa !207, !alias.scope !1162
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !378, !noalias !1162 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1162 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !379, !noalias !1162 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !307, !alias.scope !1162 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !207, !alias.scope !1162
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #25
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !100
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !307 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !207
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !100
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #17
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.at) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.b, %bb.b ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi2EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.openvdb::v13_0::math::Ray<>::TimeSpan", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x double> splat (double -1.000000e+00), ptr %4, align 16, !tbaa !163
  %i.b = load ptr, ptr %3, align 8, !tbaa !284    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit, label %_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !289
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7openvdb5v13_04math3RayIdE8TimeSpanES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi2EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_RSN_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.e = load double, ptr %i.a, align 8, !tbaa !291
  %i.f = load double, ptr %4, align 16, !tbaa !290
  %i.g = fsub double %i.e, %i.f
  %i.h = fcmp ogt double %i.g, 1.000000e-09
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

bb.b:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !289  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !285
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !303
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !289
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.c, align 8, !tbaa !289
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %3, align 8, !tbaa !284    ; 5 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #28
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 4
  %mul2.i.i = ashr exact i64 %i.q, 3
  %5 = call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.t = icmp ult i64 %5, %i.s
  %i.u = call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.v = select i1 %i.t, i64 576460752303423487, i64 %i.u ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !303
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !303, !alias.scope !1166
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !285
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.x, ptr %3, align 8, !tbaa !284
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !289
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.j, align 8, !tbaa !285
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.c, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi2EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_RSN_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !497
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !498
  tail call void @_ZN7openvdb5v13_04math3DDAINS1_3RayIdEELj12EE4initERKS4_dd(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, double noundef %i.b, double noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %i.p = tail call noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.e)
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load double, ptr %0, align 8, !tbaa !465
  %i.r = load double, ptr %i.g, align 8, !tbaa !163 ; 2 uses
  %i.s = load double, ptr %i.h, align 8, !tbaa !163 ; 2 uses
  %i.t = load double, ptr %i.i, align 8, !tbaa !163 ; 2 uses
  %i.u = load double, ptr %i.f, align 8, !tbaa !163 ; 2 uses
  %i.v = fcmp olt double %i.r, %i.u
  %i.w = fcmp olt double %i.t, %i.s
  %i.x = select i1 %i.w, double %i.t, double %i.s ; 2 uses
  %i.y = select i1 %i.v, double %i.r, double %i.u ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = select i1 %i.z, double %i.x, double %i.y
  store double %i.q, ptr %i.a, align 8, !tbaa !290
  store double %i.aa, ptr %i.c, align 8, !tbaa !291
  tail call void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi1EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_RSN_(ptr noundef nonnull align 8 dereferenceable(176) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.ab = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.e)
  %i.ac = load double, ptr %4, align 8, !tbaa !290 ; 3 uses
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ae = load double, ptr %0, align 8, !tbaa !465
  store double %i.ae, ptr %4, align 8, !tbaa !290
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.af = fcmp ult double %i.ac, 0.000000e+00
  br i1 %i.af, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load double, ptr %0, align 8, !tbaa !465 ; 2 uses
  store double %i.ag, ptr %i.k, align 8, !tbaa !291
  %i.ah = fsub double %i.ag, %i.ac
  %i.ai = fcmp ogt double %i.ah, 1.000000e-09
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !289 ; 5 uses
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !285
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !303
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.am, ptr %i.l, align 8, !tbaa !289
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !284   ; 5 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775792
  br i1 %i.ar, label %bb.l, label %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #28
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.as = ashr exact i64 %i.aq, 4
  %mul2.i.i = ashr exact i64 %i.aq, 3
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.at = icmp ult i64 %5, %i.as
  %i.au = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.av = select i1 %i.at, i64 576460752303423487, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 4
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #27 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !303
  %.not10.i.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.ax, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.an, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !303, !alias.scope !1171
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !285
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.be) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ax, ptr %3, align 8, !tbaa !284
  store ptr %i.bb, ptr %i.l, align 8, !tbaa !289
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bf, ptr %i.m, align 8, !tbaa !285
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.j, %bb.h
  store <2 x double> splat (double -1.000000e+00), ptr %4, align 8, !tbaa !163
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.g, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit, %bb.e, %bb.f
  %i.bg = load double, ptr %i.h, align 8, !tbaa !163
  %i.bh = load double, ptr %i.g, align 8, !tbaa !163
  %i.bi = fcmp ole double %i.bg, %i.bh
  %spec.select.i.i = zext i1 %i.bi to i64         ; 2 uses
  %i.bj = load double, ptr %i.i, align 8, !tbaa !163
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select.i.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !163
  %i.bm = fcmp ugt double %i.bj, %i.bl
  %spec.select.1.i.i = select i1 %i.bm, i64 %spec.select.i.i, i64 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select.1.i.i ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !163 ; 3 uses
  store double %i.bo, ptr %0, align 8, !tbaa !465
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %spec.select.1.i.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !163
  %i.br = fadd double %i.bo, %i.bq
  store double %i.br, ptr %i.bn, align 8, !tbaa !163
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %spec.select.1.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !298
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %spec.select.1.i.i ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !298
  %i.bw = add nsw i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !298
  %i.bx = load double, ptr %i.f, align 8, !tbaa !466 ; 2 uses
  %i.by = fcmp ugt double %i.bo, %i.bx
  br i1 %i.by, label %bb.o, label %bb.b, !llvm.loop !1170

bb.o:                                             ; preds = %bb.n
  %i.bz = load double, ptr %4, align 8, !tbaa !290
  %i.ca = fcmp ult double %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store double %i.bx, ptr %i.k, align 8, !tbaa !291
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !298    ; 2 uses
  %i.c = and i32 %i.b, -4096                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !298
  %i.f = icmp eq i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !298  ; 3 uses
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.h, -4096
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !298
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !298
  %i.o = and i32 %i.n, -4096
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !298
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !499
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !223  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = sub nsw i32 %i.h, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !298  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !298
  %i.ac = sub nsw i32 %i.z, %i.ab
  %i.ad = and i32 %i.x, -4096                     ; 4 uses
  %i.ae = and i32 %i.ac, -4096                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !438 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not12.i.i.i.i.i.i, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !298
  %i.ak = sub nsw i32 %i.b, %i.aj
  %i.al = and i32 %i.ak, -4096                    ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.19.i.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !298 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp sgt i32 %i.an, %i.al
  br i1 %i.ap, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !298 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ad
  br i1 %i.as, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = icmp sgt i32 %i.ar, %i.ad
  br i1 %i.at, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 40
  %i.av = load i32, ptr %i.au, align 4, !tbaa !298
  %i.aw = icmp slt i32 %i.av, %i.ae
  br i1 %i.aw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i.i, %bb.f, %bb.d
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i.i, %bb.g, %bb.e
  %.sink.i.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i.i ], [ 16, %bb.g ], [ 16, %bb.e ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i.i ]
  %.19.i.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i, %bb.g ], [ %.014.i.i.i.i.i.i, %bb.e ], [ %.014.i.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i.i ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i, label %bb.d, !llvm.loop !34

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i.i
  %i.ay = icmp eq ptr %.19.i.i.i.i.i.i, %i.ah
  br i1 %i.ay, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !298 ; 2 uses
  %i.bb = icmp slt i32 %i.al, %i.ba
  br i1 %i.bb, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp sgt i32 %i.al, %i.ba
  br i1 %i.bc, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !298 ; 2 uses
  %i.bf = icmp slt i32 %i.ad, %i.be
  br i1 %i.bf, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp sgt i32 %i.ad, %i.be
  br i1 %i.bg, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !298
  %i.bj = icmp slt i32 %i.ae, %i.bi
  br i1 %i.bj, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.k, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !502 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i.i
  %i.bn = and i32 %i.h, -4096
  %i.bo = and i32 %i.z, -4096
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.bn to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bo, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !207
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bp, align 8, !tbaa !499
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISB_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISB_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSB_Lm2ELm4EEET2_SJ_T0_RT1_S10_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit.thread, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i, %bb.h, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i.i, %bb.l, %bb.c
  %.0.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.h ], [ %i.bl, %bb.l ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i.i ], [ null, %bb.j ], [ null, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit.thread ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi1EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_RSN_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !497
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !498
  tail call void @_ZN7openvdb5v13_04math3DDAINS1_3RayIdEELj7EE4initERKS4_dd(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, double noundef %i.b, double noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %i.p = tail call noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.e)
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load double, ptr %0, align 8, !tbaa !467
  %i.r = load double, ptr %i.g, align 8, !tbaa !163 ; 2 uses
  %i.s = load double, ptr %i.h, align 8, !tbaa !163 ; 2 uses
  %i.t = load double, ptr %i.i, align 8, !tbaa !163 ; 2 uses
  %i.u = load double, ptr %i.f, align 8, !tbaa !163 ; 2 uses
  %i.v = fcmp olt double %i.r, %i.u
  %i.w = fcmp olt double %i.t, %i.s
  %i.x = select i1 %i.w, double %i.t, double %i.s ; 2 uses
  %i.y = select i1 %i.v, double %i.r, double %i.u ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = select i1 %i.z, double %i.x, double %i.y
  store double %i.q, ptr %i.a, align 8, !tbaa !290
  store double %i.aa, ptr %i.c, align 8, !tbaa !291
  tail call void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi0EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_RSN_(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.ab = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.e)
  %i.ac = load double, ptr %4, align 8, !tbaa !290 ; 3 uses
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ae = load double, ptr %0, align 8, !tbaa !467
  store double %i.ae, ptr %4, align 8, !tbaa !290
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.af = fcmp ult double %i.ac, 0.000000e+00
  br i1 %i.af, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load double, ptr %0, align 8, !tbaa !467 ; 2 uses
  store double %i.ag, ptr %i.k, align 8, !tbaa !291
  %i.ah = fsub double %i.ag, %i.ac
  %i.ai = fcmp ogt double %i.ah, 1.000000e-09
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !289 ; 5 uses
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !285
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !303
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.am, ptr %i.l, align 8, !tbaa !289
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !284   ; 5 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775792
  br i1 %i.ar, label %bb.l, label %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #28
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.as = ashr exact i64 %i.aq, 4
  %mul2.i.i = ashr exact i64 %i.aq, 3
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.at = icmp ult i64 %5, %i.as
  %i.au = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.av = select i1 %i.at, i64 576460752303423487, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 4
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #27 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !303
  %.not10.i.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.ax, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.an, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !303, !alias.scope !1176
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !285
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.be) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ax, ptr %3, align 8, !tbaa !284
  store ptr %i.bb, ptr %i.l, align 8, !tbaa !289
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bf, ptr %i.m, align 8, !tbaa !285
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.j, %bb.h
  store <2 x double> splat (double -1.000000e+00), ptr %4, align 8, !tbaa !163
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.g, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit, %bb.e, %bb.f
  %i.bg = load double, ptr %i.h, align 8, !tbaa !163
  %i.bh = load double, ptr %i.g, align 8, !tbaa !163
  %i.bi = fcmp ole double %i.bg, %i.bh
  %spec.select.i.i = zext i1 %i.bi to i64         ; 2 uses
  %i.bj = load double, ptr %i.i, align 8, !tbaa !163
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select.i.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !163
  %i.bm = fcmp ugt double %i.bj, %i.bl
  %spec.select.1.i.i = select i1 %i.bm, i64 %spec.select.i.i, i64 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select.1.i.i ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !163 ; 3 uses
  store double %i.bo, ptr %0, align 8, !tbaa !467
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %spec.select.1.i.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !163
  %i.br = fadd double %i.bo, %i.bq
  store double %i.br, ptr %i.bn, align 8, !tbaa !163
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %spec.select.1.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !298
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %spec.select.1.i.i ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !298
  %i.bw = add nsw i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !298
  %i.bx = load double, ptr %i.f, align 8, !tbaa !468 ; 2 uses
  %i.by = fcmp ugt double %i.bo, %i.bx
  br i1 %i.by, label %bb.o, label %bb.b, !llvm.loop !1175

bb.o:                                             ; preds = %bb.n
  %i.bz = load double, ptr %4, align 8, !tbaa !290
  %i.ca = fcmp ult double %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store double %i.bx, ptr %i.k, align 8, !tbaa !291
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !298    ; 6 uses
  %i.c = and i32 %i.b, -8                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !298
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !298  ; 2 uses
  %i.i = and i32 %i.h, -8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !298
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !298  ; 2 uses
  %i.o = and i32 %i.n, -8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !298
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !503
  %i.u = and i32 %i.b, 7
  %i.v = shl i32 %i.h, 3
  %i.w = and i32 %i.v, 56
  %i.x = and i32 %i.n, 7
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.u to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !249
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = and i64 %i.ad, %i.ab
  %i.af = icmp ne i64 %i.ae, 0
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit
  %i.ag = and i32 %i.b, -128                      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !298
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !298 ; 3 uses
  %i.am = and i32 %i.al, -128
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !298
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !298 ; 3 uses
  %i.as = and i32 %i.ar, -128
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !298
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %bb.e, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !504 ; 3 uses
  %i.ay = shl i32 %i.b, 5
  %i.az = and i32 %i.ay, 3840
  %i.ba = shl i32 %i.al, 1
  %i.bb = and i32 %i.ba, 240
  %i.bc = or disjoint i32 %i.bb, %i.az            ; 2 uses
  %i.bd = lshr i32 %i.ar, 3
  %i.be = and i32 %i.bd, 15
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 32768
  %i.bh = lshr i32 %i.bc, 6
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !249
  %i.bl = and i32 %i.bf, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 1, %i.bm                    ; 2 uses
  %i.bo = and i64 %i.bn, %i.bk
  %.not.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 33280
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bi
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !249
  %i.bs = and i64 %i.br, %i.bn
  br label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordEENKUlT_E_clIPS8_EEbSK_.exit

bb.g:                                             ; preds = %bb.e
  %i.bt = zext nneg i32 %i.bf to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bt ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !207
  %i.bw = and i32 %i.al, -8
  %i.bx = and i32 %i.ar, -8
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.bw to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bx, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !207
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !503
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !207
  %i.ca = load i32, ptr %1, align 4, !tbaa !298
  %i.cb = and i32 %i.ca, 7
  %i.cc = load i32, ptr %i.ak, align 4, !tbaa !298
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordE:bb.a
  %i.fw = zext nneg i32 %i.fp to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !249
  %i.fz = zext nneg i32 %i.fv to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = and i64 %i.ga, %i.fy
  br label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordEENKUlT_E_clIPS9_EEbSK_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordEENKUlT_E_clIPS9_EEbSK_.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.0.in.i.i28 = phi i64 [ %i.ea, %bb.j ], [ %i.ff, %bb.l ], [ %i.gb, %bb.m ]
  %.0.i.i29 = icmp ne i64 %.0.in.i.i28, 0
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread, %bb.h, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.gd = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(68) %i.gc, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordEENKUlT_E_clIPS8_EEbSK_.exit, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordEENKUlT_E_clIPS9_EEbSK_.exit, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit, %bb.c
  %.0.i = phi i1 [ %i.af, %bb.c ], [ %.0.i.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordEENKUlT_E_clIPS8_EEbSK_.exit ], [ %.0.i.i29, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordEENKUlT_E_clIPS9_EEbSK_.exit ], [ %i.gd, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !298    ; 3 uses
  %i.c = and i32 %i.b, -128                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !298
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !298
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !298
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !298
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !298
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !504
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm1ELm4EEET2_SJ_T0_RT1_S10_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !298
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !298  ; 3 uses
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !298
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !298 ; 3 uses
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !499 ; 2 uses
  %i.am = shl i32 %i.b, 3
  %i.an = and i32 %i.am, 31744
  %i.ao = lshr i32 %i.z, 2
  %i.ap = and i32 %i.ao, 992
  %i.aq = or disjoint i32 %i.ap, %i.an            ; 2 uses
  %i.ar = lshr i32 %i.af, 7
  %i.as = and i32 %i.ar, 31
  %i.at = or disjoint i32 %i.aq, %i.as            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 262144
  %i.av = lshr i32 %i.aq, 6
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !249
  %i.az = and i32 %i.at, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = and i64 %i.bb, %i.ay
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm1ELm4EEET2_SJ_T0_RT1_S10_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = zext nneg i32 %i.at to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !207 ; 2 uses
  %i.bg = and i32 %i.z, -128
  %i.bh = and i32 %i.af, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.bg to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.d, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.bh, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !207
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !504
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm1ELm4EEET2_SJ_T0_RT1_S10_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm2EEEEbSH_.exit
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.bk = tail call noundef ptr @_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE22probeConstNodeAndCacheIS6_KNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPKT_RKNS0_4math5CoordERT0_(ptr noundef nonnull align 8 dereferenceable(68) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm1ELm4EEET2_SJ_T0_RT1_S10_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm1ELm4EEET2_SJ_T0_RT1_S10_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit, %bb.e, %bb.f, %bb.c
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %i.bk, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeISA_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_ISA_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKSA_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit ], [ %i.bf, %bb.f ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi0EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_RSN_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load double, ptr %i.a, align 8, !tbaa !497
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load double, ptr %i.c, align 8, !tbaa !498
  tail call void @_ZN7openvdb5v13_04math3DDAINS1_3RayIdEELj3EE4initERKS4_dd(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, double noundef %i.b, double noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.o = tail call noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.e)
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.e)
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load double, ptr %4, align 8, !tbaa !290
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.s = load double, ptr %0, align 8, !tbaa !469
  store double %i.s, ptr %4, align 8, !tbaa !290
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.t = load double, ptr %4, align 8, !tbaa !290 ; 2 uses
  %i.u = fcmp ult double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load double, ptr %0, align 8, !tbaa !469 ; 2 uses
  store double %i.v, ptr %i.f, align 8, !tbaa !291
  %i.w = fsub double %i.v, %i.t
  %i.x = fcmp ogt double %i.w, 1.000000e-09
  br i1 %i.x, label %bb.h, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !289  ; 5 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !285
  %.not.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !303
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !289
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !289
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %3, align 8, !tbaa !284   ; 5 uses
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.k, label %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #28
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ah = ashr exact i64 %i.af, 4
  %mul2.i.i = ashr exact i64 %i.af, 3
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.ai = icmp ult i64 %5, %i.ah
  %i.aj = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #27 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !303
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !303, !alias.scope !1181
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !285
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.at) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.am, ptr %3, align 8, !tbaa !284
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !289
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.au, ptr %i.h, align 8, !tbaa !285
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.i, %bb.g
  store <2 x double> splat (double -1.000000e+00), ptr %4, align 8, !tbaa !163
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.d, %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EE9push_backERKS5_.exit, %bb.f
  %i.av = load double, ptr %i.j, align 8, !tbaa !163
  %i.aw = load double, ptr %i.i, align 8, !tbaa !163
  %i.ax = fcmp ole double %i.av, %i.aw
  %spec.select.i.i = zext i1 %i.ax to i64         ; 2 uses
  %i.ay = load double, ptr %i.k, align 8, !tbaa !163
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %spec.select.i.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !163
  %i.bb = fcmp ugt double %i.ay, %i.ba
  %spec.select.1.i.i = select i1 %i.bb, i64 %spec.select.i.i, i64 2 ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %spec.select.1.i.i ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !163 ; 3 uses
  store double %i.bd, ptr %0, align 8, !tbaa !469
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %spec.select.1.i.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !163
  %i.bg = fadd double %i.bd, %i.bf
  store double %i.bg, ptr %i.bc, align 8, !tbaa !163
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %spec.select.1.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !298
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %spec.select.1.i.i ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !298
  %i.bl = add nsw i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !298
  %i.bm = load double, ptr %i.n, align 8, !tbaa !470 ; 2 uses
  %i.bn = fcmp ugt double %i.bd, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.b, !llvm.loop !1180

bb.n:                                             ; preds = %bb.m
  %i.bo = load double, ptr %4, align 8, !tbaa !290
  %i.bp = fcmp ult double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store double %i.bm, ptr %i.f, align 8, !tbaa !291
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE22probeConstNodeAndCacheIS6_KNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPKT_RKNS0_4math5CoordERT0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !298  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !298
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !298  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !298
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = and i32 %i.e, -4096                      ; 4 uses
  %i.l = and i32 %i.j, -4096                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !438  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not12.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.p = load i32, ptr %1, align 4, !tbaa !298    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !298
  %i.s = sub nsw i32 %i.p, %i.r
  %i.t = and i32 %i.s, -4096                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !298  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.t
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %i.v, %i.t
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !298  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.k
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp sgt i32 %i.z, %i.k
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !298
  %i.ae = icmp slt i32 %i.ad, %i.l
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %bb.b, !llvm.loop !34

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.o
  br i1 %i.ag, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !298 ; 2 uses
  %i.aj = icmp slt i32 %i.t, %i.ai
  br i1 %i.aj, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp sgt i32 %i.t, %i.ai
  br i1 %i.ak, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !298 ; 2 uses
  %i.an = icmp slt i32 %i.k, %i.am
  br i1 %i.an, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp sgt i32 %i.k, %i.am
  br i1 %i.ao, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !298
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !502 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %i.av = and i32 %i.p, -4096
  %i.aw = and i32 %i.b, -4096
  %i.ax = and i32 %i.g, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.av to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !207
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.at, ptr %i.az, align 8, !tbaa !499
  %i.ba = load i32, ptr %1, align 4, !tbaa !298   ; 2 uses
  %i.bb = shl i32 %i.ba, 3
end_hunk_3
