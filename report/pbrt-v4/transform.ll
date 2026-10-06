Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform?download=true
inline.NumInlined: 2588
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4pbrt9Transform12ApplyInverseERKNS_18SurfaceInteractionE:bb.a
  %i.fr = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i241
  %i.fs = fadd float %i.fq, %i.fr
  %i.ft = fmul float %.sroa.17.0.copyload, %.sroa.257.0.copyload
  %i.fu = fadd float %i.ft, %i.fs
  %i.fv = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i240
  %i.fw = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i241
  %i.fx = fadd float %i.fv, %i.fw
  %i.fy = fmul float %.sroa.38.0.copyload, %.sroa.257.0.copyload
  %i.fz = fadd float %i.fy, %i.fx
  %i.ga = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i240
  %i.gb = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i241
  %i.gc = fadd float %i.ga, %i.gb
  %i.gd = fmul float %.sroa.59.0.copyload, %.sroa.257.0.copyload
  %i.ge = fadd float %i.gd, %i.gc
  %.sroa.046.0.vec.insert.i242 = insertelement <2 x float> poison, float %i.fu, i64 0
  %.sroa.046.4.vec.insert.i243 = insertelement <2 x float> %.sroa.046.0.vec.insert.i242, float %i.fz, i64 1
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x float> %.sroa.046.4.vec.insert.i243, ptr %i.gf, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float %i.ge, ptr %.sroa.459.0..sroa_idx, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 164
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.gg, align 4 ; 4 uses
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 172
  %.sroa.247.0.copyload = load float, ptr %.sroa.247.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i246 = extractelement <2 x float> %.sroa.046.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i247 = extractelement <2 x float> %.sroa.046.0.copyload, i64 1
  %i.gh = shufflevector <2 x float> %.sroa.046.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x float> %i.d, %i.gh
  %i.gj = shufflevector <2 x float> %.sroa.046.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gk = fmul <2 x float> %i.e, %i.gj
  %i.gl = fadd <2 x float> %i.gi, %i.gk
  %i.gm = insertelement <2 x float> poison, float %.sroa.247.0.copyload, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = fmul <2 x float> %i.f, %i.gn
  %i.gp = fadd <2 x float> %i.go, %i.gl
  %i.gq = fmul float %.sroa.79.64.copyload, %.sroa.012.0.vec.extract.i246
  %i.gr = fmul float %.sroa.97.64.copyload, %.sroa.012.4.vec.extract.i247
  %i.gs = fadd float %i.gq, %i.gr
  %i.gt = fmul float %.sroa.115.64.copyload, %.sroa.247.0.copyload
  %i.gu = fadd float %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 164
  store <2 x float> %i.gp, ptr %i.gv, align 4
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.gu, ptr %.sroa.449.0..sroa_idx, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.gw, align 8 ; 4 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i252 = extractelement <2 x float> %.sroa.036.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i253 = extractelement <2 x float> %.sroa.036.0.copyload, i64 1
  %i.gx = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.d, %i.gx
  %i.gz = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ha = fmul <2 x float> %i.e, %i.gz
  %i.hb = fadd <2 x float> %i.gy, %i.ha
  %i.hc = insertelement <2 x float> poison, float %.sroa.237.0.copyload, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x float> %i.f, %i.hd
  %i.hf = fadd <2 x float> %i.he, %i.hb
  %i.hg = fmul float %.sroa.79.64.copyload, %.sroa.012.0.vec.extract.i252
  %i.hh = fmul float %.sroa.97.64.copyload, %.sroa.012.4.vec.extract.i253
  %i.hi = fadd float %i.hg, %i.hh
  %i.hj = fmul float %.sroa.115.64.copyload, %.sroa.237.0.copyload
  %i.hk = fadd float %i.hj, %i.hi
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x float> %i.hf, ptr %i.hl, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.hk, ptr %.sroa.439.0..sroa_idx, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !53
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 244
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !54
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 244
  store float %i.hq, ptr %i.hr, align 4, !tbaa !54
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.hs, align 8 ; 2 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 216
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i258 = extractelement <2 x float> %.sroa.026.0.copyload, i64 0 ; 3 uses
  %i.ht = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i258
  %.sroa.03.4.vec.extract.i259 = extractelement <2 x float> %.sroa.026.0.copyload, i64 1 ; 3 uses
  %i.hu = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i259
  %i.hv = fadd float %i.ht, %i.hu
  %i.hw = fmul float %.sroa.17.0.copyload, %.sroa.227.0.copyload
  %i.hx = fadd float %i.hw, %i.hv
  %i.hy = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i258
  %i.hz = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i259
  %i.ia = fadd float %i.hy, %i.hz
  %i.ib = fmul float %.sroa.38.0.copyload, %.sroa.227.0.copyload
  %i.ic = fadd float %i.ib, %i.ia
  %i.id = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i258
  %i.ie = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i259
  %i.if = fadd float %i.id, %i.ie
  %i.ig = fmul float %.sroa.59.0.copyload, %.sroa.227.0.copyload
  %i.ih = fadd float %i.ig, %i.if
  %.sroa.046.0.vec.insert.i260 = insertelement <2 x float> poison, float %i.hx, i64 0
  %.sroa.046.4.vec.insert.i261 = insertelement <2 x float> %.sroa.046.0.vec.insert.i260, float %i.ic, i64 1
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %.sroa.046.4.vec.insert.i261, ptr %i.ii, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float %i.ih, ptr %.sroa.429.0..sroa_idx, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 220
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.ij, align 4 ; 2 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 228
  %.sroa.217.0.copyload = load float, ptr %.sroa.217.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i264 = extractelement <2 x float> %.sroa.016.0.copyload, i64 0 ; 3 uses
  %i.ik = fmul float %.sroa.0.0.copyload, %.sroa.03.0.vec.extract.i264
  %.sroa.03.4.vec.extract.i265 = extractelement <2 x float> %.sroa.016.0.copyload, i64 1 ; 3 uses
  %i.il = fmul float %.sroa.10.0.copyload, %.sroa.03.4.vec.extract.i265
  %i.im = fadd float %i.ik, %i.il
  %i.in = fmul float %.sroa.17.0.copyload, %.sroa.217.0.copyload
  %i.io = fadd float %i.in, %i.im
  %i.ip = fmul float %.sroa.24290.0.copyload, %.sroa.03.0.vec.extract.i264
  %i.iq = fmul float %.sroa.31.0.copyload, %.sroa.03.4.vec.extract.i265
  %i.ir = fadd float %i.ip, %i.iq
  %i.is = fmul float %.sroa.38.0.copyload, %.sroa.217.0.copyload
  %i.it = fadd float %i.is, %i.ir
  %i.iu = fmul float %.sroa.45309.0.copyload, %.sroa.03.0.vec.extract.i264
  %i.iv = fmul float %.sroa.52.0.copyload, %.sroa.03.4.vec.extract.i265
  %i.iw = fadd float %i.iu, %i.iv
  %i.ix = fmul float %.sroa.59.0.copyload, %.sroa.217.0.copyload
  %i.iy = fadd float %i.ix, %i.iw
  %.sroa.046.0.vec.insert.i266 = insertelement <2 x float> poison, float %i.io, i64 0
  %.sroa.046.4.vec.insert.i267 = insertelement <2 x float> %.sroa.046.0.vec.insert.i266, float %i.it, i64 1
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 220
  store <2 x float> %.sroa.046.4.vec.insert.i267, ptr %i.iz, align 4
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ja = load <2 x float>, ptr %i.ho, align 4, !tbaa !11
  %i.jb = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.jc = insertelement <4 x float> %i.jb, float %i.hn, i64 1
  %i.jd = shufflevector <2 x float> %i.ja, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.je = shufflevector <4 x float> %i.jc, <4 x float> %i.jd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.je, ptr %.sroa.419.0..sroa_idx, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jh = load <2 x i64>, ptr %i.jf, align 8, !tbaa !55
  store <2 x i64> %i.jh, ptr %i.jg, align 8, !tbaa !55
  %i.ji = extractelement <2 x float> %i.et, i64 1 ; 4 uses
  %i.jj = fmul float %i.eu, %i.ji                 ; 2 uses
  %i.jk = extractelement <2 x float> %i.es, i64 1
  %i.jl = extractelement <2 x float> %i.ew, i64 1
  %i.jm = tail call noundef float @llvm.fma.f32(float %i.jl, float %i.jk, float %i.jj)
  %i.jn = fneg float %i.jj
  %i.jo = tail call noundef float @llvm.fma.f32(float %i.ji, float %i.eu, float %i.jn)
  %i.jp = fadd float %i.jm, %i.jo
  %i.jq = extractelement <2 x float> %i.es, i64 0
  %i.jr = extractelement <2 x float> %i.ew, i64 0
  %i.js = tail call noundef float @llvm.fma.f32(float %i.jr, float %i.jq, float %i.jp)
  %i.jt = fcmp olt float %i.js, 0.000000e+00      ; 2 uses
  %i.ju = fneg <2 x float> %i.ew
  %i.jv = fneg float %i.ji
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.jt, <2 x float> %i.ju, <2 x float> %i.ew
  %.pn.i = select i1 %i.jt, float %i.jv, float %i.ji
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i, ptr %i.ex, align 8
  store float %.pn.i, ptr %.sroa.487.0..sroa_idx, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !56
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt9Transform8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21, !alias.scope !125
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !24, !alias.scope !125
  store i8 0, ptr %i.b, align 8, !tbaa !9, !alias.scope !125
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_12SquareMatrixILi4EEEJS5_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKNS_12SquareMatrixILi4EEES4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !25, !alias.scope !125 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !9, !alias.scope !125
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.d

_ZN4pbrt12StringPrintfIJRKNS_12SquareMatrixILi4EEES4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17AnimatedTransformC2ERKNS_9TransformEfS3_f(ptr nofree noundef nonnull align 4 dereferenceable(696) initializes((0, 265), (268, 452)) %0, ptr noundef nonnull align 4 dereferenceable(128) %1, float noundef %2, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pstd::optional", align 4    ; 5 uses
  %6 = alloca %"class.pstd::optional", align 4    ; 5 uses
  %7 = alloca %"class.pbrt::SquareMatrix.0", align 4 ; 12 uses
  %8 = alloca %"class.pbrt::Transform", align 4   ; 6 uses
  %9 = alloca %"class.pbrt::Transform", align 4   ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, ptr noundef nonnull align 4 dereferenceable(128) %3, i64 128, i1 false), !tbaa.struct !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  store float %2, ptr %i.b, align 4, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %4, ptr %i.c, align 4, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = tail call noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi4EEneERKS1_(ptr noundef nonnull align 4 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(128) %1) ; 2 uses
  %i.f = zext i1 %i.e to i8
  store i8 %i.f, ptr %i.d, align 4, !tbaa !65
  %.ptr3416 = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %.ptr3419 = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.ptr3416, i8 0, i64 36, i1 false)
  %.ptr3419.1 = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.ptr3424 = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %.ptr3424.1 = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.n, align 4, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 428
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !11
  %.ptr3431 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.ptr3436 = getelementptr inbounds nuw i8, ptr %0, i64 504
  %.ptr3441 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.ptr3446 = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.ptr3451 = getelementptr inbounds nuw i8, ptr %0, i64 648
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  call void @llvm.masked.store.v16f32.p0(<16 x float> <float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00>, ptr align 4 %7, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !11
  call void @_ZNK4pbrt9Transform9DecomposeEPNS_7Vector3IfEEPNS_12SquareMatrixILi4EEES6_(ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull %.ptr3416, ptr noundef nonnull %7, ptr noundef nonnull %.ptr3424)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %8, ptr noundef nonnull align 4 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !17
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %6, ptr noundef nonnull align 4 dereferenceable(64) %7)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.z = load i8, ptr %i.y, align 4, !tbaa !14, !range !15, !noundef !16
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  store <8 x float> splat (float +snan(0x200000)), ptr %i.x, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <8 x float> splat (float +snan(0x200000)), ptr %i.ab, align 4, !tbaa !11
  br label %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.x, ptr noundef nonnull align 4 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !17
  br label %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit

_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit: ; preds = %.preheader.preheader.i, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ac = call { <2 x float>, <2 x float> } @_ZNK4pbrt9TransformcvNS_10QuaternionEEv(ptr noundef nonnull align 4 dereferenceable(128) %8) ; 2 uses
  %i.ad = extractvalue { <2 x float>, <2 x float> } %i.ac, 0
  %i.ae = extractvalue { <2 x float>, <2 x float> } %i.ac, 1
  store <2 x float> %i.ad, ptr %.ptr3419, align 4
  %.sroa.43405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  store <2 x float> %i.ae, ptr %.sroa.43405.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @_ZNK4pbrt9Transform9DecomposeEPNS_7Vector3IfEEPNS_12SquareMatrixILi4EEES6_(ptr noundef nonnull align 4 dereferenceable(128) %3, ptr noundef nonnull %i.af, ptr noundef nonnull %7, ptr noundef nonnull %.ptr3424.1)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %9, ptr noundef nonnull align 4 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !17
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %5, ptr noundef nonnull align 4 dereferenceable(64) %7)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !14, !range !15, !noundef !16
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i3453, label %.preheader.preheader.i3452

.preheader.preheader.i3452:                       ; preds = %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit
  store <8 x float> splat (float +snan(0x200000)), ptr %i.ag, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <8 x float> splat (float +snan(0x200000)), ptr %i.ak, align 4, !tbaa !11
  br label %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit3454

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i3453: ; preds = %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !17
  br label %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit3454

_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit3454: ; preds = %.preheader.preheader.i3452, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i3453
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.al = call { <2 x float>, <2 x float> } @_ZNK4pbrt9TransformcvNS_10QuaternionEEv(ptr noundef nonnull align 4 dereferenceable(128) %9) ; 2 uses
  %i.am = extractvalue { <2 x float>, <2 x float> } %i.al, 0 ; 4 uses
  %i.an = extractvalue { <2 x float>, <2 x float> } %i.al, 1 ; 4 uses
  store <2 x float> %i.am, ptr %.ptr3419.1, align 4
  %.sroa.43403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  store <2 x float> %i.an, ptr %.sroa.43403.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.sroa.03400.0.copyload = load <2 x float>, ptr %.ptr3419, align 4 ; 14 uses
  %.sroa.23401.0.copyload = load <2 x float>, ptr %.sroa.43405.0..sroa_idx, align 4 ; 13 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03400.0.copyload, i64 0 ; 15 uses
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03400.0.copyload, i64 1 ; 19 uses
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ap = shufflevector <2 x float> %.sroa.03400.0.copyload, <2 x float> %.sroa.23401.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aq = fmul <4 x float> %i.ao, %i.ap           ; 4 uses
  %shift = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.aq, %shift
  %shift3640 = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3641 = fadd <4 x float> %shift3640, %foldExtExtBinop
  %shift3643 = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop3644 = fadd <4 x float> %shift3643, %foldExtExtBinop3641
  %i.ar = extractelement <4 x float> %foldExtExtBinop3644, i64 0 ; 2 uses
  %i.as = fcmp olt float %i.ar, 0.000000e+00
  %i.at = extractelement <2 x float> %.sroa.23401.0.copyload, i64 0 ; 16 uses
  %i.au = extractelement <2 x float> %.sroa.23401.0.copyload, i64 1 ; 16 uses
  %i.av = shufflevector <2 x float> %i.am, <2 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 3, i32 2> ; 2 uses
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit3454
  %i.aw = fneg <4 x float> %i.av                  ; 4 uses
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.ax, ptr %.ptr3419.1, align 4
  store <2 x float> %i.ay, ptr %.sroa.43403.0..sroa_idx, align 4
  %i.az = extractelement <4 x float> %i.aw, i64 1
  %.pre3612 = fmul float %.sroa.04.4.vec.extract.i.i, %i.az
  %foldExtExtBinop3646 = fmul <2 x float> %i.am, %.sroa.03400.0.copyload
  %i.ba = extractelement <2 x float> %foldExtExtBinop3646, i64 0
  %.pre3614 = fsub float %.pre3612, %i.ba
  %i.bb = fmul <2 x float> %i.an, %.sroa.23401.0.copyload ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %.pre3618 = fsub float %.pre3614, %i.bc
  %i.bd = extractelement <2 x float> %i.bb, i64 1
  %.pre3623 = fsub float %.pre3618, %i.bd
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit3454
  %.pre-phi3624 = phi float [ %.pre3623, %bb.c ], [ %i.ar, %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit3454 ] ; 4 uses
  %i.be = phi <4 x float> [ %i.aw, %bb.c ], [ %i.av, %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit3454 ]
  %i.bf = fcmp olt float %.pre-phi3624, f0x3F7FDF3B ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.bh = zext i1 %i.bf to i8
  store i8 %i.bh, ptr %i.bg, align 4, !tbaa !66
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = fcmp olt float %.pre-phi3624, -1.000000e+00
  %.0.i.i = select i1 %i.bi, float -1.000000e+00, float %.pre-phi3624
  %i.bj = call noundef float @acosf(float noundef %.0.i.i) #28 ; 67 uses
  %i.bk = insertelement <4 x float> poison, float %.pre-phi3624, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = shufflevector <2 x float> %.sroa.03400.0.copyload, <2 x float> %.sroa.23401.0.copyload, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.bn = fmul <4 x float> %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.br = load float, ptr %i.bq, align 4, !tbaa !30
  %i.bs = load float, ptr %.ptr3424, align 4, !tbaa !11 ; 34 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !11 ; 44 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.by = load float, ptr %i.bx, align 4, !tbaa !11 ; 42 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ca = load float, ptr %.ptr3424.1, align 4, !tbaa !11 ; 21 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11 ; 25 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !11 ; 27 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ci = fneg float %i.bv
  %i.cj = fmul float %.sroa.04.4.vec.extract.i.i, %i.ci
  %i.ck = fmul float %i.at, %i.by
  %i.cl = fsub float %i.cj, %i.ck
  %i.cm = fmul float %.sroa.04.4.vec.extract.i.i, %i.cd
  %i.cn = fadd float %i.cl, %i.cm
  %i.co = fmul float %i.at, %i.cg
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = fsub float %i.bs, %i.ca                 ; 6 uses
  %i.cr = fsub float %i.cd, %i.bv
  %i.cs = fmul float %.sroa.04.0.vec.extract.i.i, %i.cr ; 2 uses
  %i.ct = fsub float %i.cg, %i.by                 ; 3 uses
  %i.cu = fmul float %i.au, %i.ct
  %i.cv = fadd float %i.cs, %i.cu
  %i.cw = fsub float %i.bv, %i.cd                 ; 3 uses
  %i.cx = fmul float %i.au, %i.cw
  %i.cy = fmul float %.sroa.04.0.vec.extract.i.i, %i.ct
  %i.cz = fadd float %i.cx, %i.cy
  store float 0.000000e+00, ptr %.ptr3436, align 4, !tbaa !11
  %.sroa.43564.0..ptr3436.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 508
  %.sroa.53565.0..ptr3436.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store float 0.000000e+00, ptr %.ptr3441, align 4, !tbaa !11
  %.sroa.43560.0..ptr3441.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 556
  %.sroa.53561.0..ptr3441.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  store float 0.000000e+00, ptr %.ptr3446, align 4, !tbaa !11
  %.sroa.43556.0..ptr3446.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 604
  %.sroa.53557.0..ptr3446.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.da = fsub float %i.ca, %i.bs                 ; 6 uses
  %i.db = fmul float %.sroa.04.0.vec.extract.i.i, %i.cw ; 2 uses
  %i.dc = fsub float %i.by, %i.cg                 ; 2 uses
  %i.dd = fmul float %i.au, %i.dc                 ; 2 uses
  %i.de = fadd float %i.db, %i.dd
  %i.df = fmul float %.sroa.04.4.vec.extract.i.i, %i.de
  %i.dg = fmul float %.sroa.04.0.vec.extract.i.i, %i.by
  %i.dh = fmul float %i.au, %i.bv
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fmul float %i.au, %i.cd
  %i.dk = fadd float %i.di, %i.dj
  %i.dl = fmul float %.sroa.04.0.vec.extract.i.i, %i.cg
  %i.dm = fsub float %i.dk, %i.dl
  %i.dn = fmul float %i.at, %i.dm
  store float 0.000000e+00, ptr %.ptr3451, align 4, !tbaa !11
  %.sroa.43552.0..ptr3451.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 652
  %.sroa.53553.0..ptr3451.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.do = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %.ptr3416, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x float> poison), !tbaa !11 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.bt, align 4, !tbaa !11 ; 32 uses
  %i.dq = load <2 x float>, ptr %i.bw, align 4, !tbaa !11 ; 42 uses
  %i.dr = load <2 x float>, ptr %i.bz, align 4, !tbaa !11 ; 39 uses
  %i.ds = load <2 x float>, ptr %i.cb, align 4, !tbaa !11 ; 23 uses
  %i.dt = load <2 x float>, ptr %i.ce, align 4, !tbaa !11 ; 26 uses
  %i.du = load <2 x float>, ptr %i.ch, align 4, !tbaa !11 ; 27 uses
  %i.dv = extractelement <2 x float> %i.dp, i64 0 ; 5 uses
  %i.dw = extractelement <2 x float> %i.dq, i64 0 ; 5 uses
  %i.dx = extractelement <2 x float> %i.dr, i64 0 ; 5 uses
  %i.dy = extractelement <2 x float> %i.dp, i64 1 ; 11 uses
  %i.dz = extractelement <2 x float> %i.dq, i64 1 ; 7 uses
  %i.ea = extractelement <2 x float> %i.dr, i64 1 ; 11 uses
  %i.eb = fneg <2 x float> %i.dq
  %i.ec = shufflevector <2 x float> %.sroa.03400.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 11 uses
  %i.ed = fmul <2 x float> %i.ec, %i.eb
  %i.ee = shufflevector <2 x float> %.sroa.23401.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.ef = fmul <2 x float> %i.ee, %i.dr
  %i.eg = fsub <2 x float> %i.ed, %i.ef
  %i.eh = fmul <2 x float> %i.ec, %i.dt
end_hunk_0
begin_hunk_1_@_ZNK4pbrt9TransformclERKNS_15RayDifferentialEPf:bb.a

bb.c:                                             ; preds = %bb.b
  %i.bq = load float, ptr %3, align 4, !tbaa !11, !noalias !152
  %i.br = fsub float %i.bq, %i.bk
  store float %i.br, ptr %3, align 4, !tbaa !11, !noalias !152
  br label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

_ZNK4pbrt9TransformclERKNS_3RayEPf.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !152
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !152
  %i.bx = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !152
  %i.by = load <4 x float>, ptr %4, align 16, !noalias !152
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ca = fadd <2 x float> %i.bx, %i.bz
  %i.cb = fmul <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.cd = fmul float %i.cc, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !152
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
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !154, !range !15, !noundef !16
  store i8 %i.ck, ptr %i.ch, align 8, !tbaa !154
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.032.0.copyload = load <2 x float>, ptr %i.cl, align 4 ; 4 uses
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %.sroa.233.0.copyload = load float, ptr %.sroa.233.0..sroa_idx, align 4 ; 2 uses
  %i.cm = load float, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.co = load float, ptr %i.cn, align 4, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !11
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.cu, align 8 ; 4 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 8 ; 2 uses
  %i.cv = load <2 x float>, ptr %i.y, align 4, !tbaa !11 ; 5 uses
  %i.cw = load <2 x float>, ptr %i.cp, align 4, !tbaa !11 ; 2 uses
  %i.cx = shufflevector <2 x float> %.sroa.022.0.copyload, <2 x float> %.sroa.032.0.copyload, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cy = fmul <2 x float> %i.cx, %i.cw
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.da = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.022.0.copyload, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.db = fmul <2 x float> %i.da, %i.cw
  %i.dc = fadd <2 x float> %i.cz, %i.db
  %i.dd = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = insertelement <2 x float> poison, float %.sroa.233.0.copyload, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %.sroa.223.0.copyload, i64 1 ; 2 uses
  %i.dh = fmul <2 x float> %i.de, %i.dg
  %i.di = fadd <2 x float> %i.dc, %i.dh
  %i.dj = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fadd <2 x float> %i.dk, %i.di           ; 3 uses
  %i.dm = fcmp oeq <2 x float> %i.dl, splat (float 1.000000e+00) ; 2 uses
  %i.dn = fmul <2 x float> %i.cx, %i.cv
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = fmul <2 x float> %i.da, %i.cv
  %i.dq = fadd <2 x float> %i.do, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.ds, %i.dg
  %i.du = fadd <2 x float> %i.dq, %i.dt
  %i.dv = insertelement <2 x float> poison, float %i.co, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fadd <2 x float> %i.dw, %i.du           ; 2 uses
  %i.dy = fdiv <2 x float> %i.dx, %i.dl
  %i.dz = select <2 x i1> %i.dm, <2 x float> %i.dx, <2 x float> %i.dy ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  store float %i.ea, ptr %.sroa.435.0..sroa_idx, align 4
  %i.eb = load <8 x float>, ptr %1, align 4, !tbaa !11 ; 5 uses
  %i.ec = load float, ptr %i.bt, align 4, !tbaa !11 ; 2 uses
  %i.ed = load float, ptr %i.j, align 4, !tbaa !11 ; 2 uses
  %i.ee = load float, ptr %i.bu, align 4, !tbaa !11 ; 2 uses
  %i.ef = load float, ptr %i.bv, align 4, !tbaa !11 ; 2 uses
  %i.eg = load float, ptr %i.bw, align 4, !tbaa !11 ; 2 uses
  %i.eh = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.022.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ei = shufflevector <8 x float> %i.eb, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 1, i32 4>
  %i.ej = fmul <4 x float> %i.eh, %i.ei
  %i.ek = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.022.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.el = shufflevector <8 x float> %i.eb, <8 x float> poison, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  %i.em = fmul <4 x float> %i.ek, %i.el
  %i.en = fadd <4 x float> %i.ej, %i.em
  %i.eo = shufflevector <8 x float> %i.eb, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 2, i32 6>
  %i.ep = insertelement <4 x float> poison, float %.sroa.233.0.copyload, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %.sroa.223.0.copyload, i64 1
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.es = fmul <4 x float> %i.eo, %i.er
  %i.et = fadd <4 x float> %i.en, %i.es
  %i.eu = shufflevector <8 x float> %i.eb, <8 x float> poison, <4 x i32> <i32 3, i32 7, i32 3, i32 7>
  %i.ev = fadd <4 x float> %i.eu, %i.et           ; 2 uses
  %i.ew = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ex = fdiv <4 x float> %i.ev, %i.ew
  %i.ey = shufflevector <2 x i1> %i.dm, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ez = select <4 x i1> %i.ey, <4 x float> %i.ev, <4 x float> %i.ex ; 2 uses
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.fa, ptr %i.ci, align 4
  %i.fb = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.fb, ptr %i.fc, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fd = extractelement <2 x float> %i.dz, i64 1
  store float %i.fd, ptr %.sroa.425.0..sroa_idx, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 68
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.fe, align 4 ; 3 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.012.0.copyload, i64 0 ; 2 uses
  %i.ff = extractelement <8 x float> %i.eb, i64 0 ; 2 uses
  %i.fg = fmul float %i.ff, %.sroa.03.0.vec.extract.i
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.012.0.copyload, i64 1 ; 3 uses
  %i.fh = fmul float %i.eg, %.sroa.03.4.vec.extract.i
  %i.fi = fadd float %i.fg, %i.fh
  %i.fj = fmul float %i.ef, %.sroa.213.0.copyload
  %i.fk = fadd float %i.fj, %i.fi
  %i.fl = fmul float %i.ee, %.sroa.03.0.vec.extract.i
  %i.fm = fmul float %i.ed, %.sroa.03.4.vec.extract.i
  %i.fn = fadd float %i.fl, %i.fm
  %i.fo = fmul float %i.ec, %.sroa.213.0.copyload
  %i.fp = fadd float %i.fo, %i.fn
  %foldExtExtBinop83 = fmul <2 x float> %i.cv, %.sroa.012.0.copyload
  %i.fq = extractelement <2 x float> %foldExtExtBinop83, i64 0
  %i.fr = extractelement <2 x float> %i.cv, i64 1 ; 2 uses
  %i.fs = fmul float %i.fr, %.sroa.03.4.vec.extract.i
  %i.ft = fadd float %i.fq, %i.fs
  %i.fu = fmul float %i.cm, %.sroa.213.0.copyload
  %i.fv = fadd float %i.fu, %i.ft
  %.sroa.046.0.vec.insert.i = insertelement <2 x float> poison, float %i.fk, i64 0
  %.sroa.046.4.vec.insert.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i, float %i.fp, i64 1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> %.sroa.046.4.vec.insert.i, ptr %i.fw, align 4
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.fv, ptr %.sroa.415.0..sroa_idx, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.fx, align 8 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i65 = extractelement <2 x float> %.sroa.03.0.copyload, i64 0 ; 2 uses
  %i.fy = fmul float %i.ff, %.sroa.03.0.vec.extract.i65
  %.sroa.03.4.vec.extract.i66 = extractelement <2 x float> %.sroa.03.0.copyload, i64 1 ; 3 uses
  %i.fz = fmul float %i.eg, %.sroa.03.4.vec.extract.i66
  %i.ga = fadd float %i.fy, %i.fz
  %i.gb = fmul float %i.ef, %.sroa.24.0.copyload
  %i.gc = fadd float %i.gb, %i.ga
  %i.gd = fmul float %i.ee, %.sroa.03.0.vec.extract.i65
  %i.ge = fmul float %i.ed, %.sroa.03.4.vec.extract.i66
  %i.gf = fadd float %i.gd, %i.ge
  %i.gg = fmul float %i.ec, %.sroa.24.0.copyload
  %i.gh = fadd float %i.gg, %i.gf
  %foldExtExtBinop85 = fmul <2 x float> %i.cv, %.sroa.03.0.copyload
  %i.gi = extractelement <2 x float> %foldExtExtBinop85, i64 0
  %i.gj = fmul float %i.fr, %.sroa.03.4.vec.extract.i66
  %i.gk = fadd float %i.gi, %i.gj
  %i.gl = fmul float %i.cm, %.sroa.24.0.copyload
  %i.gm = fadd float %i.gl, %i.gk
  %.sroa.046.0.vec.insert.i67 = insertelement <2 x float> poison, float %i.gc, i64 0
  %.sroa.046.4.vec.insert.i68 = insertelement <2 x float> %.sroa.046.0.vec.insert.i67, float %i.gh, i64 1
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.046.4.vec.insert.i68, ptr %i.gn, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.gm, ptr %.sroa.4.0..sroa_idx, align 8
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
  %5 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
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
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !11
  %i.t = fmul <2 x float> %1, %i.s                ; 2 uses
  %shift56 = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop57 = fadd <2 x float> %i.t, %shift56
  %i.u = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load float, ptr %i.v, align 4, !tbaa !11
  %i.x = fmul float %2, %i.w
  %i.y = fadd float %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = load float, ptr %i.z, align 4, !tbaa !11
  %i.ab = fadd float %i.aa, %i.y                  ; 2 uses
  %6 = tail call <12 x float> @llvm.masked.load.v12f32.p0(ptr nonnull align 4 %i.q, <12 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, <12 x float> poison), !tbaa !11 ; 4 uses
  %7 = shufflevector <12 x float> %6, <12 x float> poison, <2 x i32> <i32 1, i32 8>
  %i.ac = fmul <2 x float> %5, %7
  %8 = shufflevector <12 x float> %6, <12 x float> poison, <2 x i32> <i32 0, i32 9>
  %9 = fmul <2 x float> %1, %8
  %i.ad = fadd <2 x float> %i.ac, %9
  %i.ae = insertelement <2 x float> poison, float %2, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <12 x float> %6, <12 x float> poison, <2 x i32> <i32 2, i32 10>
  %i.ag = fmul <2 x float> %i.af, %10
  %i.ah = fadd <2 x float> %i.ad, %i.ag
  %11 = shufflevector <12 x float> %6, <12 x float> poison, <2 x i32> <i32 3, i32 11>
  %i.ai = fadd <2 x float> %11, %i.ah             ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 1 ; 4 uses
  %i.ak = fcmp oeq float %i.aj, 1.000000e+00      ; 3 uses
  %i.al = fdiv float %i.p, %i.aj
  %i.am = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.an = fdiv float %i.am, %i.aj
  %i.ao = fdiv float %i.ab, %i.aj
  %.sink96.i = select i1 %i.ak, float %i.p, float %i.al
  %.sink.i = select i1 %i.ak, float %i.am, float %i.an
  %.sroa.495.0.i = select i1 %i.ak, float %i.ab, float %i.ao
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %.sink96.i, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %.sink.i, i64 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !64
  %i.ar = fcmp ult float %3, %i.aq
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %12 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !11
  %i.au = fmul <2 x float> %1, %i.at              ; 2 uses
  %shift59 = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop60 = fadd <2 x float> %i.au, %shift59
  %i.av = extractelement <2 x float> %foldExtExtBinop60, i64 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !11
  %i.ay = fmul float %2, %i.ax
  %i.az = fadd float %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bc = fadd float %i.bb, %i.az                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !11
  %i.bg = fmul <2 x float> %1, %i.bf              ; 2 uses
  %shift62 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop63 = fadd <2 x float> %i.bg, %shift62
  %i.bh = extractelement <2 x float> %foldExtExtBinop63, i64 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul float %2, %i.bj
  %i.bl = fadd float %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11
  %i.bo = fadd float %i.bn, %i.bl                 ; 2 uses
  %13 = tail call <12 x float> @llvm.masked.load.v12f32.p0(ptr nonnull align 4 %i.bd, <12 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, <12 x float> poison), !tbaa !11 ; 4 uses
  %14 = shufflevector <12 x float> %13, <12 x float> poison, <2 x i32> <i32 1, i32 8>
  %i.bp = fmul <2 x float> %12, %14
  %15 = shufflevector <12 x float> %13, <12 x float> poison, <2 x i32> <i32 0, i32 9>
  %16 = fmul <2 x float> %1, %15
  %i.bq = fadd <2 x float> %i.bp, %16
  %i.br = insertelement <2 x float> poison, float %2, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = shufflevector <12 x float> %13, <12 x float> poison, <2 x i32> <i32 2, i32 10>
  %i.bt = fmul <2 x float> %i.bs, %17
  %i.bu = fadd <2 x float> %i.bq, %i.bt
  %18 = shufflevector <12 x float> %13, <12 x float> poison, <2 x i32> <i32 3, i32 11>
  %i.bv = fadd <2 x float> %18, %i.bu             ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1 ; 4 uses
  %i.bx = fcmp oeq float %i.bw, 1.000000e+00      ; 3 uses
  %i.by = fdiv float %i.bc, %i.bw
  %i.bz = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.ca = fdiv float %i.bz, %i.bw
  %i.cb = fdiv float %i.bo, %i.bw
  %.sink96.i38 = select i1 %i.bx, float %i.bc, float %i.by
  %.sink.i39 = select i1 %i.bx, float %i.bz, float %i.ca
  %.sroa.495.0.i40 = select i1 %i.bx, float %i.bo, float %i.cb
  %.sroa.0.0.vec.insert.i.i41 = insertelement <2 x float> poison, float %.sink96.i38, i64 0
  %.sroa.0.4.vec.insert.i.i42 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i41, float %.sink.i39, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %4, ptr noundef nonnull align 4 dereferenceable(696) %0, float noundef %3)
  %i.cc = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = load <2 x float>, ptr %4, align 8, !tbaa !11
  %i.ce = fmul <2 x float> %1, %i.cd              ; 2 uses
  %shift65 = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop66 = fadd <2 x float> %i.ce, %shift65
  %i.cf = extractelement <2 x float> %foldExtExtBinop66, i64 0
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !11
  %i.ci = fmul float %2, %i.ch
  %i.cj = fadd float %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !11
  %i.cm = fadd float %i.cl, %i.cj                 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cp = load <2 x float>, ptr %i.co, align 8, !tbaa !11
  %i.cq = fmul <2 x float> %1, %i.cp              ; 2 uses
  %shift68 = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fadd <2 x float> %i.cq, %shift68
  %i.cr = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !11
  %i.cu = fmul float %2, %i.ct
  %i.cv = fadd float %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !11
  %i.cy = fadd float %i.cx, %i.cv                 ; 2 uses
  %i.cz = load <12 x float>, ptr %i.cn, align 8, !tbaa !11 ; 4 uses
  %i.da = shufflevector <12 x float> %i.cz, <12 x float> poison, <2 x i32> <i32 1, i32 8>
  %i.db = fmul <2 x float> %i.cc, %i.da
  %i.dc = shufflevector <12 x float> %i.cz, <12 x float> poison, <2 x i32> <i32 0, i32 9>
  %i.dd = fmul <2 x float> %1, %i.dc
  %i.de = fadd <2 x float> %i.db, %i.dd
  %i.df = insertelement <2 x float> poison, float %2, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = shufflevector <12 x float> %i.cz, <12 x float> poison, <2 x i32> <i32 2, i32 10>
  %i.di = fmul <2 x float> %i.dg, %i.dh
  %i.dj = fadd <2 x float> %i.de, %i.di
  %i.dk = shufflevector <12 x float> %i.cz, <12 x float> poison, <2 x i32> <i32 3, i32 11>
  %i.dl = fadd <2 x float> %i.dk, %i.dj           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 1 ; 4 uses
  %i.dn = fcmp oeq float %i.dm, 1.000000e+00      ; 3 uses
  %i.do = fdiv float %i.cm, %i.dm
  %i.dp = extractelement <2 x float> %i.dl, i64 0 ; 2 uses
  %i.dq = fdiv float %i.dp, %i.dm
  %i.dr = fdiv float %i.cy, %i.dm
  %.sink96.i47 = select i1 %i.dn, float %i.cm, float %i.do
  %.sink.i48 = select i1 %i.dn, float %i.dp, float %i.dq
  %.sroa.495.0.i49 = select i1 %i.dn, float %i.cy, float %i.dr
  %.sroa.0.0.vec.insert.i.i50 = insertelement <2 x float> poison, float %.sink96.i47, i64 0
  %.sroa.0.4.vec.insert.i.i51 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i50, float %.sink.i48, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.4.vec.insert.i.i.pn = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i, %bb.b ], [ %.sroa.0.4.vec.insert.i.i42, %bb.d ], [ %.sroa.0.4.vec.insert.i.i51, %bb.e ]
  %.sroa.495.0.i.pn = phi float [ %.sroa.495.0.i, %bb.b ], [ %.sroa.495.0.i40, %bb.d ], [ %.sroa.495.0.i49, %bb.e ]
  %.fca.0.insert.i.pn = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert.i.i.pn, 0
  %.pn = insertvalue { <2 x float>, float } %.fca.0.insert.i.pn, float %.sroa.495.0.i.pn, 1
  ret { <2 x float>, float } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Vector3IfEEf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(696) %0, <2 x float> %1, float %2, float noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Transform", align 8   ; 9 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !11
  %i.p = fmul <2 x float> %1, %i.o                ; 2 uses
  %shift51 = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fadd <2 x float> %i.p, %shift51
  %i.q = extractelement <2 x float> %foldExtExtBinop52, i64 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !11
  %i.t = fmul float %2, %i.s
  %i.u = fadd float %i.q, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !11
  %i.x = fmul <2 x float> %1, %i.w                ; 2 uses
  %shift54 = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop55 = fadd <2 x float> %i.x, %shift54
  %i.y = extractelement <2 x float> %foldExtExtBinop55, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load float, ptr %i.z, align 4, !tbaa !11
  %i.ab = fmul float %2, %i.aa
  %i.ac = fadd float %i.y, %i.ab
  %.sroa.046.0.vec.insert.i = insertelement <2 x float> poison, float %i.m, i64 0
  %.sroa.046.4.vec.insert.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i, float %i.u, i64 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !64
  %i.af = fcmp ult float %3, %i.ae
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !11
  %i.ai = fmul <2 x float> %1, %i.ah              ; 2 uses
  %shift57 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop58 = fadd <2 x float> %i.ai, %shift57
  %i.aj = extractelement <2 x float> %foldExtExtBinop58, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = load float, ptr %i.ak, align 4, !tbaa !11
  %i.am = fmul float %2, %i.al
  %i.an = fadd float %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = load <2 x float>, ptr %i.ao, align 4, !tbaa !11
  %i.aq = fmul <2 x float> %1, %i.ap              ; 2 uses
  %shift60 = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop61 = fadd <2 x float> %i.aq, %shift60
  %i.ar = extractelement <2 x float> %foldExtExtBinop61, i64 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = load float, ptr %i.as, align 4, !tbaa !11
  %i.au = fmul float %2, %i.at
  %i.av = fadd float %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ax = load <2 x float>, ptr %i.aw, align 4, !tbaa !11
  %i.ay = fmul <2 x float> %1, %i.ax              ; 2 uses
  %shift63 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fadd <2 x float> %i.ay, %shift63
  %i.az = extractelement <2 x float> %foldExtExtBinop64, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bc = fmul float %2, %i.bb
  %i.bd = fadd float %i.az, %i.bc
  %.sroa.046.0.vec.insert.i38 = insertelement <2 x float> poison, float %i.an, i64 0
  %.sroa.046.4.vec.insert.i39 = insertelement <2 x float> %.sroa.046.0.vec.insert.i38, float %i.av, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %4, ptr noundef nonnull align 4 dereferenceable(696) %0, float noundef %3)
  %i.be = load <2 x float>, ptr %4, align 8, !tbaa !11
  %i.bf = fmul <2 x float> %1, %i.be              ; 2 uses
  %shift66 = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop67 = fadd <2 x float> %i.bf, %shift66
  %i.bg = extractelement <2 x float> %foldExtExtBinop67, i64 0
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !11
  %i.bj = fmul float %2, %i.bi
  %i.bk = fadd float %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = load <2 x float>, ptr %i.bl, align 8, !tbaa !11
  %i.bn = fmul <2 x float> %1, %i.bm              ; 2 uses
  %shift69 = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop70 = fadd <2 x float> %i.bn, %shift69
  %i.bo = extractelement <2 x float> %foldExtExtBinop70, i64 0
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !11
  %i.br = fmul float %2, %i.bq
  %i.bs = fadd float %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bu = load <2 x float>, ptr %i.bt, align 8, !tbaa !11
  %i.bv = fmul <2 x float> %1, %i.bu              ; 2 uses
  %shift72 = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop73 = fadd <2 x float> %i.bv, %shift72
  %i.bw = extractelement <2 x float> %foldExtExtBinop73, i64 0
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.by = load float, ptr %i.bx, align 8, !tbaa !11
  %i.bz = fmul float %2, %i.by
  %i.ca = fadd float %i.bw, %i.bz
  %.sroa.046.0.vec.insert.i44 = insertelement <2 x float> poison, float %i.bk, i64 0
  %.sroa.046.4.vec.insert.i45 = insertelement <2 x float> %.sroa.046.0.vec.insert.i44, float %i.bs, i64 1
end_hunk_1
begin_hunk_2_@_ZNK4pbrt17AnimatedTransform12MotionBoundsERKNS_7Bounds3IfEE:bb.a
  store float %.sroa.speculated.i.i, ptr %i.h, align 4, !alias.scope !162
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !tbaa !11, !noalias !162 ; 2 uses
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !11, !noalias !162 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %i.o, align 4, !tbaa !11, !noalias !162 ; 2 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !11, !noalias !162 ; 2 uses
  %i.p = fcmp olt <2 x float> %.sroa.07.0.copyload.i, %.sroa.05.0.copyload.i
  %i.q = select <2 x i1> %i.p, <2 x float> %.sroa.05.0.copyload.i, <2 x float> %.sroa.07.0.copyload.i
  %i.r = fcmp olt float %.sroa.28.0.copyload.i, %.sroa.26.0.copyload.i
  %.sroa.speculated.i31.i = select i1 %i.r, float %.sroa.26.0.copyload.i, float %.sroa.28.0.copyload.i
  store <2 x float> %i.q, ptr %i.i, align 4, !alias.scope !162
  store float %.sroa.speculated.i31.i, ptr %i.j, align 4, !alias.scope !162
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.e

.peel.next103:                                    ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %0, align 4
  store float f0xFF7FFFFF, ptr %i.t, align 4
  %.promoted40 = load <2 x float>, ptr %i.s, align 4 ; 2 uses
  %.sroa.219.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 8 uses
  %.sroa.26.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.01.0.copyload.i.i.peel = load <2 x float>, ptr %2, align 4
  %.sroa.22.0..sroa_idx.i26.i.peel = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.sroa.22.0.copyload.i27.i.peel = load float, ptr %.sroa.22.0..sroa_idx.i26.i.peel, align 4
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.01.0.copyload.i.i.peel, float %.sroa.22.0.copyload.i27.i.peel)
  %.sroa.018.0.copyload.i14.peel = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.peel = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.05.0.copyload.i27.peel = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.peel = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %.sroa.01.0.copyload.i.i.peel51 = load <2 x float>, ptr %i.v, align 4
  %.sroa.01.0.copyload.i19.i.peel53 = load <2 x float>, ptr %2, align 4
  %.sroa.22.0.copyload.i27.i.peel55 = load float, ptr %.sroa.22.0..sroa_idx.i26.i.peel, align 4
  %.sroa.0.4.vec.insert.i.peel56 = shufflevector <2 x float> %.sroa.01.0.copyload.i.i.peel51, <2 x float> %.sroa.01.0.copyload.i19.i.peel53, <2 x i32> <i32 0, i32 3>
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.0.4.vec.insert.i.peel56, float %.sroa.22.0.copyload.i27.i.peel55)
  %.sroa.018.0.copyload.i14.peel57 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.peel58 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.05.0.copyload.i27.peel66 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.peel67 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.01.0.copyload.i.i.peel78 = load <2 x float>, ptr %2, align 4
  %.sroa.01.0.copyload.i19.i.peel80 = load <2 x float>, ptr %i.v, align 4
  %.sroa.22.0.copyload.i27.i.peel82 = load float, ptr %.sroa.22.0..sroa_idx.i26.i.peel, align 4
  %.sroa.0.4.vec.insert.i.peel83 = shufflevector <2 x float> %.sroa.01.0.copyload.i.i.peel78, <2 x float> %.sroa.01.0.copyload.i19.i.peel80, <2 x i32> <i32 0, i32 3>
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.0.4.vec.insert.i.peel83, float %.sroa.22.0.copyload.i27.i.peel82)
  %.sroa.018.0.copyload.i14.peel84 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.peel85 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.05.0.copyload.i27.peel93 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.peel94 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.01.0.copyload.i.i.peel105 = load <2 x float>, ptr %i.v, align 4
  %.sroa.22.0.copyload.i27.i.peel109 = load float, ptr %.sroa.22.0..sroa_idx.i26.i.peel, align 4
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.01.0.copyload.i.i.peel105, float %.sroa.22.0.copyload.i27.i.peel109)
  %.sroa.018.0.copyload.i14.peel111 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.peel112 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.05.0.copyload.i27.peel120 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.peel121 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.sroa.22.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.w = fcmp olt float %.sroa.219.0.copyload.i16.peel, f0x7F7FFFFF
  %.sroa.speculated.i.i21.peel = select i1 %i.w, float %.sroa.219.0.copyload.i16.peel, float f0x7F7FFFFF ; 2 uses
  %i.x = fcmp olt float %.sroa.219.0.copyload.i16.peel58, %.sroa.speculated.i.i21.peel
  %.sroa.speculated.i.i21.peel63 = select i1 %i.x, float %.sroa.219.0.copyload.i16.peel58, float %.sroa.speculated.i.i21.peel ; 2 uses
  %i.y = fcmp olt float %.sroa.219.0.copyload.i16.peel85, %.sroa.speculated.i.i21.peel63
  %.sroa.speculated.i.i21.peel90 = select i1 %i.y, float %.sroa.219.0.copyload.i16.peel85, float %.sroa.speculated.i.i21.peel63 ; 2 uses
  %i.z = fcmp olt float %.sroa.219.0.copyload.i16.peel112, %.sroa.speculated.i.i21.peel90
  %.sroa.speculated.i.i21.peel117 = select i1 %i.z, float %.sroa.219.0.copyload.i16.peel112, float %.sroa.speculated.i.i21.peel90 ; 2 uses
  %i.aa = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.peel, splat (float f0x7F7FFFFF)
  %i.ab = select <2 x i1> %i.aa, <2 x float> %.sroa.018.0.copyload.i14.peel, <2 x float> splat (float f0x7F7FFFFF) ; 2 uses
  %i.ac = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.peel57, %i.ab
  %i.ad = select <2 x i1> %i.ac, <2 x float> %.sroa.018.0.copyload.i14.peel57, <2 x float> %i.ab ; 2 uses
  %i.ae = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.peel84, %i.ad
  %i.af = select <2 x i1> %i.ae, <2 x float> %.sroa.018.0.copyload.i14.peel84, <2 x float> %i.ad ; 2 uses
  %i.ag = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.peel111, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x float> %.sroa.018.0.copyload.i14.peel111, <2 x float> %i.af ; 2 uses
  %i.ai = fcmp ogt float %.sroa.26.0.copyload.i29.peel, f0xFF7FFFFF
  %.sroa.speculated.i31.i34.peel = select i1 %i.ai, float %.sroa.26.0.copyload.i29.peel, float f0xFF7FFFFF ; 2 uses
  %i.aj = fcmp olt float %.sroa.speculated.i31.i34.peel, %.sroa.26.0.copyload.i29.peel67
  %.sroa.speculated.i31.i34.peel72 = select i1 %i.aj, float %.sroa.26.0.copyload.i29.peel67, float %.sroa.speculated.i31.i34.peel ; 2 uses
  %i.ak = fcmp olt float %.sroa.speculated.i31.i34.peel72, %.sroa.26.0.copyload.i29.peel94
  %.sroa.speculated.i31.i34.peel99 = select i1 %i.ak, float %.sroa.26.0.copyload.i29.peel94, float %.sroa.speculated.i31.i34.peel72 ; 2 uses
  %i.al = fcmp olt float %.sroa.speculated.i31.i34.peel99, %.sroa.26.0.copyload.i29.peel121
  %.sroa.speculated.i31.i34.peel126 = select i1 %i.al, float %.sroa.26.0.copyload.i29.peel121, float %.sroa.speculated.i31.i34.peel99 ; 2 uses
  %i.am = fcmp olt <2 x float> %.promoted40, %.sroa.05.0.copyload.i27.peel
  %i.an = select <2 x i1> %i.am, <2 x float> %.sroa.05.0.copyload.i27.peel, <2 x float> %.promoted40 ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %.sroa.05.0.copyload.i27.peel66
  %i.ap = select <2 x i1> %i.ao, <2 x float> %.sroa.05.0.copyload.i27.peel66, <2 x float> %i.an ; 2 uses
  %i.aq = fcmp olt <2 x float> %i.ap, %.sroa.05.0.copyload.i27.peel93
  %i.ar = select <2 x i1> %i.aq, <2 x float> %.sroa.05.0.copyload.i27.peel93, <2 x float> %i.ap ; 2 uses
  %i.as = fcmp olt <2 x float> %i.ar, %.sroa.05.0.copyload.i27.peel120
  %i.at = select <2 x i1> %i.as, <2 x float> %.sroa.05.0.copyload.i27.peel120, <2 x float> %i.ar ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %2, align 4
  %.sroa.22.0.copyload.i27.i = load float, ptr %.sroa.22.0..sroa_idx.i26.i, align 4
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.01.0.copyload.i.i, float %.sroa.22.0.copyload.i27.i)
  %.sroa.018.0.copyload.i14 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %i.aw = fcmp olt <2 x float> %.sroa.018.0.copyload.i14, %i.ah
  %i.ax = select <2 x i1> %i.aw, <2 x float> %.sroa.018.0.copyload.i14, <2 x float> %i.ah ; 2 uses
  %i.ay = fcmp olt float %.sroa.219.0.copyload.i16, %.sroa.speculated.i.i21.peel117
  %.sroa.speculated.i.i21 = select i1 %i.ay, float %.sroa.219.0.copyload.i16, float %.sroa.speculated.i.i21.peel117 ; 2 uses
  %.sroa.05.0.copyload.i27 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %i.az = fcmp olt <2 x float> %i.at, %.sroa.05.0.copyload.i27
  %i.ba = select <2 x i1> %i.az, <2 x float> %.sroa.05.0.copyload.i27, <2 x float> %i.at ; 2 uses
  %i.bb = fcmp olt float %.sroa.speculated.i31.i34.peel126, %.sroa.26.0.copyload.i29
  %.sroa.speculated.i31.i34 = select i1 %i.bb, float %.sroa.26.0.copyload.i29, float %.sroa.speculated.i31.i34.peel126 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.01.0.copyload.i.i.1 = load <2 x float>, ptr %i.bc, align 4
  %.sroa.01.0.copyload.i19.i.1 = load <2 x float>, ptr %2, align 4
  %.sroa.22.0.copyload.i27.i.1 = load float, ptr %.sroa.22.0..sroa_idx.i26.i, align 4
  %.sroa.0.4.vec.insert.i.1 = shufflevector <2 x float> %.sroa.01.0.copyload.i.i.1, <2 x float> %.sroa.01.0.copyload.i19.i.1, <2 x i32> <i32 0, i32 3>
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.0.4.vec.insert.i.1, float %.sroa.22.0.copyload.i27.i.1)
  %.sroa.018.0.copyload.i14.1 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.1 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %i.bd = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.1, %i.ax
  %i.be = select <2 x i1> %i.bd, <2 x float> %.sroa.018.0.copyload.i14.1, <2 x float> %i.ax ; 2 uses
  %i.bf = fcmp olt float %.sroa.219.0.copyload.i16.1, %.sroa.speculated.i.i21
  %.sroa.speculated.i.i21.1 = select i1 %i.bf, float %.sroa.219.0.copyload.i16.1, float %.sroa.speculated.i.i21 ; 2 uses
  %.sroa.05.0.copyload.i27.1 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.1 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %i.bg = fcmp olt <2 x float> %i.ba, %.sroa.05.0.copyload.i27.1
  %i.bh = select <2 x i1> %i.bg, <2 x float> %.sroa.05.0.copyload.i27.1, <2 x float> %i.ba ; 2 uses
  %i.bi = fcmp olt float %.sroa.speculated.i31.i34, %.sroa.26.0.copyload.i29.1
  %.sroa.speculated.i31.i34.1 = select i1 %i.bi, float %.sroa.26.0.copyload.i29.1, float %.sroa.speculated.i31.i34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.01.0.copyload.i.i.2 = load <2 x float>, ptr %2, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.01.0.copyload.i19.i.2 = load <2 x float>, ptr %i.bj, align 4
  %.sroa.22.0.copyload.i27.i.2 = load float, ptr %.sroa.22.0..sroa_idx.i26.i, align 4
  %.sroa.0.4.vec.insert.i.2 = shufflevector <2 x float> %.sroa.01.0.copyload.i.i.2, <2 x float> %.sroa.01.0.copyload.i19.i.2, <2 x i32> <i32 0, i32 3>
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.0.4.vec.insert.i.2, float %.sroa.22.0.copyload.i27.i.2)
  %.sroa.018.0.copyload.i14.2 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.2 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %i.bk = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.2, %i.be
  %i.bl = select <2 x i1> %i.bk, <2 x float> %.sroa.018.0.copyload.i14.2, <2 x float> %i.be ; 2 uses
  %i.bm = fcmp olt float %.sroa.219.0.copyload.i16.2, %.sroa.speculated.i.i21.1
  %.sroa.speculated.i.i21.2 = select i1 %i.bm, float %.sroa.219.0.copyload.i16.2, float %.sroa.speculated.i.i21.1 ; 2 uses
  %.sroa.05.0.copyload.i27.2 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.2 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %i.bn = fcmp olt <2 x float> %i.bh, %.sroa.05.0.copyload.i27.2
  %i.bo = select <2 x i1> %i.bn, <2 x float> %.sroa.05.0.copyload.i27.2, <2 x float> %i.bh ; 2 uses
  %i.bp = fcmp olt float %.sroa.speculated.i31.i34.1, %.sroa.26.0.copyload.i29.2
  %.sroa.speculated.i31.i34.2 = select i1 %i.bp, float %.sroa.26.0.copyload.i29.2, float %.sroa.speculated.i31.i34.1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.01.0.copyload.i.i.3 = load <2 x float>, ptr %i.bq, align 4
  %.sroa.22.0.copyload.i27.i.3 = load float, ptr %.sroa.22.0..sroa_idx.i26.i, align 4
  call void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(696) %1, <2 x float> %.sroa.01.0.copyload.i.i.3, float %.sroa.22.0.copyload.i27.i.3)
  %.sroa.018.0.copyload.i14.3 = load <2 x float>, ptr %5, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.219.0.copyload.i16.3 = load float, ptr %.sroa.219.0..sroa_idx.i15, align 8, !tbaa !11, !noalias !163 ; 2 uses
  %i.br = fcmp olt <2 x float> %.sroa.018.0.copyload.i14.3, %i.bl
  %i.bs = select <2 x i1> %i.br, <2 x float> %.sroa.018.0.copyload.i14.3, <2 x float> %i.bl
  %i.bt = fcmp olt float %.sroa.219.0.copyload.i16.3, %.sroa.speculated.i.i21.2
  %.sroa.speculated.i.i21.3 = select i1 %i.bt, float %.sroa.219.0.copyload.i16.3, float %.sroa.speculated.i.i21.2
  %.sroa.05.0.copyload.i27.3 = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %.sroa.26.0.copyload.i29.3 = load float, ptr %.sroa.26.0..sroa_idx.i28, align 4, !tbaa !11, !noalias !163 ; 2 uses
  %i.bu = fcmp olt <2 x float> %i.bo, %.sroa.05.0.copyload.i27.3
  %i.bv = select <2 x i1> %i.bu, <2 x float> %.sroa.05.0.copyload.i27.3, <2 x float> %i.bo
  %i.bw = fcmp olt float %.sroa.speculated.i31.i34.2, %.sroa.26.0.copyload.i29.3
  %.sroa.speculated.i31.i34.3 = select i1 %i.bw, float %.sroa.26.0.copyload.i29.3, float %.sroa.speculated.i31.i34.2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store <2 x float> %i.bs, ptr %0, align 4
  store float %.sroa.speculated.i.i21.3, ptr %i.av, align 4
  store <2 x float> %i.bv, ptr %i.s, align 4
  store float %.sroa.speculated.i31.i34.3, ptr %i.au, align 4
  br label %bb.e

bb.e:                                             ; preds = %.peel.next103, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt17AnimatedTransform16BoundPointMotionENS_6Point3IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Bounds3") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(696) %1, <2 x float> %2, float %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 12 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i64, align 8                      ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.f = load i8, ptr %i.e, align 4, !tbaa !65, !range !15, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.sroa.013.0.vec.extract.i93 = extractelement <2 x float> %2, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !11
  %i.k = fmul float %.sroa.013.0.vec.extract.i93, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = load float, ptr %i.l, align 4, !tbaa !11
  %i.n = extractelement <2 x float> %2, i64 1
  %i.o = fmul float %i.n, %i.m
  %i.p = fadd float %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  %i.s = fmul float %3, %i.r
  %i.t = fadd float %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.v = load float, ptr %i.u, align 4, !tbaa !11
  %i.w = fadd float %i.v, %i.t                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !11
  %i.z = fmul <2 x float> %2, %i.y                ; 2 uses
  %shift = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.z, %shift
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %i.ad = fmul float %3, %i.ac
  %i.ae = fadd float %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ag = load float, ptr %i.af, align 4, !tbaa !11
  %i.ah = fadd float %i.ag, %i.ae                 ; 3 uses
  %i.ai = fcmp oeq float %i.ah, 1.000000e+00      ; 2 uses
  %i.aj = load <8 x float>, ptr %1, align 4, !tbaa !11 ; 4 uses
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.al = fmul <2 x float> %i.h, %i.ak
  %i.am = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.an = fmul <2 x float> %2, %i.am
  %i.ao = fadd <2 x float> %i.al, %i.an
  %i.ap = insertelement <2 x float> poison, float %3, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = fadd <2 x float> %i.ao, %i.as
  %i.au = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.av = fadd <2 x float> %i.au, %i.at           ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x float> %i.av, %i.ax
  %i.az = fdiv float %i.w, %i.ah
  %i.ba = insertelement <2 x i1> poison, i1 %i.ai, i64 0
  %i.bb = shufflevector <2 x i1> %i.ba, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.av, <2 x float> %i.ay ; 6 uses
  %.sroa.495.0.i97 = select i1 %i.ai, float %i.w, float %i.az ; 6 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x float> %i.bc, ptr %0, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.495.0.i97, ptr %.sroa.3.0..sroa_idx.i, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.bc, ptr %i.bd, align 4
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.495.0.i97, ptr %.sroa.3.0..sroa_idx3.i, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !11
  %i.bg = fmul <2 x float> %2, %i.bf              ; 2 uses
  %shift175 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop176 = fadd <2 x float> %i.bg, %shift175
  %4 = extractelement <2 x float> %foldExtExtBinop176, i64 0
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %5 = load float, ptr %i.bh, align 4, !tbaa !11
  %6 = fmul float %3, %5
  %7 = fadd float %4, %6
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 140
  %8 = load float, ptr %i.bi, align 4, !tbaa !11
  %9 = fadd float %8, %7
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !11
  %i.bl = fmul <2 x float> %2, %i.bk              ; 2 uses
  %shift178.a = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop179.a = fadd <2 x float> %i.bl, %shift178.a
  %i.bm = extractelement <2 x float> %foldExtExtBinop179.a, i64 0
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !11
  %i.bp = fmul float %3, %i.bo
  %i.bq = fadd float %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.bs = load float, ptr %i.br, align 4, !tbaa !11
  %i.bt = fadd float %i.bs, %i.bq                 ; 2 uses
  %11 = tail call <12 x float> @llvm.masked.load.v12f32.p0(ptr nonnull align 4 %10, <12 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, <12 x float> poison), !tbaa !11 ; 4 uses
  %12 = shufflevector <12 x float> %11, <12 x float> poison, <2 x i32> <i32 1, i32 8>
  %i.bu = fmul <2 x float> %i.h, %12
  %13 = shufflevector <12 x float> %11, <12 x float> poison, <2 x i32> <i32 0, i32 9>
  %14 = fmul <2 x float> %2, %13
  %15 = fadd <2 x float> %i.bu, %14
  %16 = shufflevector <12 x float> %11, <12 x float> poison, <2 x i32> <i32 2, i32 10>
  %17 = fmul <2 x float> %i.aq, %16
  %18 = fadd <2 x float> %15, %17
  %19 = shufflevector <12 x float> %11, <12 x float> poison, <2 x i32> <i32 3, i32 11>
  %20 = fadd <2 x float> %19, %18                 ; 3 uses
  %21 = extractelement <2 x float> %20, i64 1     ; 2 uses
  %i.bv = fcmp oeq float %21, 1.000000e+00        ; 2 uses
  %i.bw = fdiv float %i.bt, %21
  %.sroa.495.0.i106 = select i1 %i.bv, float %i.bt, float %i.bw ; 4 uses
  %i.bx = fcmp olt float %.sroa.495.0.i106, %.sroa.495.0.i97
  %.sroa.speculated.i.i = select i1 %i.bx, float %.sroa.495.0.i106, float %.sroa.495.0.i97 ; 3 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %22 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bz = insertelement <2 x float> %22, float %9, i64 0 ; 2 uses
  %23 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = fdiv <2 x float> %i.bz, %23
  %i.cb = insertelement <2 x i1> poison, i1 %i.bv, i64 0
  %i.cc = shufflevector <2 x i1> %i.cb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cd = select <2 x i1> %i.cc, <2 x float> %i.bz, <2 x float> %i.ca ; 4 uses
  %i.ce = fcmp olt <2 x float> %i.cd, %i.bc
  %i.cf = select <2 x i1> %i.ce, <2 x float> %i.cd, <2 x float> %i.bc ; 3 uses
  %i.cg = fcmp olt <2 x float> %i.bc, %i.cd
  %i.ch = select <2 x i1> %i.cg, <2 x float> %i.cd, <2 x float> %i.bc ; 3 uses
  %i.ci = fcmp olt float %.sroa.495.0.i97, %.sroa.495.0.i106
  %.sroa.speculated.i34.i = select i1 %i.ci, float %.sroa.495.0.i106, float %.sroa.495.0.i97 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 292
  %24 = load <4 x float>, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 308
  %25 = load <4 x float>, ptr %i.ck, align 4
  %i.cl = fmul <4 x float> %24, %25               ; 4 uses
  %shift181 = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop182 = fadd <4 x float> %i.cl, %shift181
  %shift184 = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop185 = fadd <4 x float> %shift184, %foldExtExtBinop182
  %shift187 = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop188 = fadd <4 x float> %shift187, %foldExtExtBinop185
  %i.cm = extractelement <4 x float> %foldExtExtBinop188, i64 0 ; 3 uses
  %i.cn = fcmp olt float %i.cm, -1.000000e+00
  %i.co = fcmp ogt float %i.cm, 1.000000e+00
  %..i.i = select i1 %i.co, float 1.000000e+00, float %i.cm
  %.0.i.i = select i1 %i.cn, float -1.000000e+00, float %..i.i
  %i.cp = tail call noundef float @acosf(float noundef %.0.i.i) #28 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !26
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !166
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !11
  %i.da = fmul <2 x float> %2, %i.cz              ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = fadd float %i.cx, %i.db
  %i.dd = extractelement <2 x float> %i.da, i64 1
  %i.de = fadd float %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.dg = load float, ptr %i.df, align 4, !tbaa !167
  %i.dh = fmul float %3, %i.dg
  %i.di = fadd float %i.de, %i.dh
  %i.dj = load float, ptr %i.cv, align 4, !tbaa !166
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.dl = load <2 x float>, ptr %i.dk, align 4, !tbaa !11
  %i.dm = fmul <2 x float> %2, %i.dl              ; 2 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0
  %i.do = fadd float %i.dj, %i.dn
  %i.dp = extractelement <2 x float> %i.dm, i64 1
  %i.dq = fadd float %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !167
  %i.dt = fmul float %3, %i.ds
  %i.du = fadd float %i.dq, %i.dt
  %i.dv = load float, ptr %i.cu, align 4, !tbaa !166
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 556
  %i.dx = load <2 x float>, ptr %i.dw, align 4, !tbaa !11
  %i.dy = fmul <2 x float> %2, %i.dx              ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 0
  %i.ea = fadd float %i.dv, %i.dz
  %i.eb = extractelement <2 x float> %i.dy, i64 1
  %i.ec = fadd float %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 564
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !167
  %i.ef = fmul float %3, %i.ee
  %i.eg = fadd float %i.ec, %i.ef
  %i.eh = load float, ptr %i.ct, align 4, !tbaa !166
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !11
  %i.ek = fmul <2 x float> %2, %i.ej              ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = fadd float %i.eh, %i.el
  %i.en = extractelement <2 x float> %i.ek, i64 1
  %i.eo = fadd float %i.em, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !167
  %i.er = fmul float %3, %i.eq
  %i.es = fadd float %i.eo, %i.er
  %i.et = load float, ptr %i.cs, align 4, !tbaa !166
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 652
  %i.ev = load <2 x float>, ptr %i.eu, align 4, !tbaa !11
  %i.ew = fmul <2 x float> %2, %i.ev              ; 2 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 0
  %i.ey = fadd float %i.et, %i.ex
  %i.ez = extractelement <2 x float> %i.ew, i64 1
  %i.fa = fadd float %i.ey, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 660
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !167
  %i.fd = fmul float %3, %i.fc
  %i.fe = fadd float %i.fa, %i.fd
  call void @_ZN4pbrt17AnimatedTransform9FindZerosEffffffNS_8IntervalEN4pstd4spanIfEEPii(float noundef %i.di, float noundef %i.du, float noundef %i.eg, float noundef %i.es, float noundef %i.fe, float noundef %i.cp, <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr nonnull %i.a, i64 8, ptr noundef nonnull %i.b, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.ff = load i32, ptr %i.b, align 4, !tbaa !26  ; 3 uses
  store i32 %i.ff, ptr %i.c, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 8, ptr %i.d, align 8, !tbaa !55
  %i.fg = icmp ult i32 %i.ff, 9
  br i1 %i.fg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.1, %._crit_edge, %bb.c
  %.sroa.015.4.vec.insert.i.i125129.lcssa143156.lcssa = phi <2 x float> [ %i.cf, %bb.c ], [ %.sroa.015.4.vec.insert.i.i125129.lcssa, %._crit_edge ], [ %.sroa.015.4.vec.insert.i.i125129.lcssa.1, %._crit_edge.1 ]
  %.sroa.speculated.i.i123130.lcssa146155.lcssa = phi float [ %.sroa.speculated.i.i, %bb.c ], [ %.sroa.speculated.i.i123130.lcssa, %._crit_edge ], [ %.sroa.speculated.i.i123130.lcssa.1, %._crit_edge.1 ]
  %.sroa.015.4.vec.insert.i35.i132.lcssa148154.lcssa = phi <2 x float> [ %i.ch, %bb.c ], [ %.sroa.015.4.vec.insert.i35.i132.lcssa, %._crit_edge ], [ %.sroa.015.4.vec.insert.i35.i132.lcssa.1, %._crit_edge.1 ]
  %.sroa.speculated.i33.i133.lcssa151153.lcssa = phi float [ %.sroa.speculated.i34.i, %bb.c ], [ %.sroa.speculated.i33.i133.lcssa, %._crit_edge ], [ %.sroa.speculated.i33.i133.lcssa.1, %._crit_edge.1 ]
  store <2 x float> %.sroa.015.4.vec.insert.i.i125129.lcssa143156.lcssa, ptr %0, align 4
  store float %.sroa.speculated.i.i123130.lcssa146155.lcssa, ptr %.sroa.212.0..sroa_idx.i, align 4
  store <2 x float> %.sroa.015.4.vec.insert.i35.i132.lcssa148154.lcssa, ptr %i.by, align 4
  store float %.sroa.speculated.i33.i133.lcssa151153.lcssa, ptr %.sroa.2.0..sroa_idx.i, align 4
  call void @_ZN4pbrt8LogFatalIJRA7_KcRA49_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, ptr noundef nonnull align 1 dereferenceable(49) @.str.7, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(49) @.str.7, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.not = icmp eq i32 %i.ff, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.speculated.i33.i133.lcssa = phi float [ %.sroa.speculated.i34.i, %bb.e ], [ %.sroa.speculated.i33.i, %.lr.ph ] ; 3 uses
  %.sroa.015.4.vec.insert.i35.i132.lcssa = phi <2 x float> [ %i.ch, %bb.e ], [ %i.mi, %.lr.ph ] ; 3 uses
  %.sroa.speculated.i.i123130.lcssa = phi float [ %.sroa.speculated.i.i, %bb.e ], [ %.sroa.speculated.i.i123, %.lr.ph ] ; 3 uses
  %.sroa.015.4.vec.insert.i.i125129.lcssa = phi <2 x float> [ %i.cf, %bb.e ], [ %i.mf, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !26
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !166
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.fk = load <2 x float>, ptr %i.fj, align 4, !tbaa !11
  %i.fl = fmul <2 x float> %2, %i.fk              ; 2 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 0
  %i.fn = fadd float %i.fi, %i.fm
  %i.fo = extractelement <2 x float> %i.fl, i64 1
  %i.fp = fadd float %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !167
  %i.fs = fmul float %3, %i.fr
  %i.ft = fadd float %i.fp, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !166
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 524
  %i.fx = load <2 x float>, ptr %i.fw, align 4, !tbaa !11
  %i.fy = fmul <2 x float> %2, %i.fx              ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0
  %i.ga = fadd float %i.fv, %i.fz
  %i.gb = extractelement <2 x float> %i.fy, i64 1
  %i.gc = fadd float %i.ga, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 532
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !167
  %i.gf = fmul float %3, %i.ge
  %i.gg = fadd float %i.gc, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !166
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 572
  %i.gk = load <2 x float>, ptr %i.gj, align 4, !tbaa !11
  %i.gl = fmul <2 x float> %2, %i.gk              ; 2 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0
  %i.gn = fadd float %i.gi, %i.gm
  %i.go = extractelement <2 x float> %i.gl, i64 1
  %i.gp = fadd float %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 580
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !167
  %i.gs = fmul float %3, %i.gr
  %i.gt = fadd float %i.gp, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !166
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.gx = load <2 x float>, ptr %i.gw, align 4, !tbaa !11
  %i.gy = fmul <2 x float> %2, %i.gx              ; 2 uses
  %i.gz = extractelement <2 x float> %i.gy, i64 0
  %i.ha = fadd float %i.gv, %i.gz
  %i.hb = extractelement <2 x float> %i.gy, i64 1
  %i.hc = fadd float %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.he = load float, ptr %i.hd, align 4, !tbaa !167
  %i.hf = fmul float %3, %i.he
  %i.hg = fadd float %i.hc, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !166
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 668
  %i.hk = load <2 x float>, ptr %i.hj, align 4, !tbaa !11
  %i.hl = fmul <2 x float> %2, %i.hk              ; 2 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 0
  %i.hn = fadd float %i.hi, %i.hm
  %i.ho = extractelement <2 x float> %i.hl, i64 1
  %i.hp = fadd float %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 676
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !167
  %i.hs = fmul float %3, %i.hr
  %i.ht = fadd float %i.hp, %i.hs
  call void @_ZN4pbrt17AnimatedTransform9FindZerosEffffffNS_8IntervalEN4pstd4spanIfEEPii(float noundef %i.ft, float noundef %i.gg, float noundef %i.gt, float noundef %i.hg, float noundef %i.ht, float noundef %i.cp, <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr nonnull %i.a, i64 8, ptr noundef nonnull %i.b, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.hu = load i32, ptr %i.b, align 4, !tbaa !26  ; 3 uses
  store i32 %i.hu, ptr %i.c, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 8, ptr %i.d, align 8, !tbaa !55
  %i.hv = icmp ult i32 %i.hu, 9
  br i1 %i.hv, label %bb.f, label %bb.d

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.not.1 = icmp eq i32 %i.hu, 0
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.f, %.lr.ph.1
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRmJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
  %i.dt = load i64, ptr %i.bt, align 8, !tbaa !9
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %.sink125, i64 noundef %i.du) #30
  br label %.body47

.body47:                                          ; preds = %.body47.sink.split, %bb.u, %bb.q
  %.pn24 = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %i.dq, %bb.u ], [ %.pn24.ph, %.body47.sink.split ] ; 2 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ay
  br i1 %i.dw, label %.body41, label %.body41.sink.split

.body41.sink.split:                               ; preds = %.body47, %bb.n
  %.sink128 = phi ptr [ %i.bm, %bb.n ], [ %i.dv, %.body47 ]
  %.pn24.pn.ph = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %.pn24, %.body47 ]
  %i.dx = load i64, ptr %i.ay, align 8, !tbaa !9
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %.sink128, i64 noundef %i.dy) #30
  br label %.body41

.body41:                                          ; preds = %.body41.sink.split, %.body47, %bb.n
  %.pn24.pn = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %.pn24, %.body47 ], [ %.pn24.pn.ph, %.body41.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.v

bb.v:                                             ; preds = %.body41, %bb.t
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %.body41 ], [ %i.dp, %bb.t ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.v ], [ %i.do, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.af

bb.x:                                             ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !24
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.invoke, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ec = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.ed = load i64, ptr %2, align 8, !tbaa !55, !noalias !675
  %i.ee = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.ec, i64 noundef %i.ed) #28, !noalias !675
  %i.ef = add nsw i32 %i.ee, 1
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.eh, ptr %8, align 8, !tbaa !21, !alias.scope !675
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !24, !alias.scope !675
  store i8 0, ptr %i.eh, align 8, !tbaa !9, !alias.scope !675
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.eg, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i68 unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i68: ; preds = %bb.y
  %i.ej = load ptr, ptr %8, align 8, !tbaa !25, !alias.scope !675
  %i.ek = load i64, ptr %2, align 8, !tbaa !55, !noalias !675
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ej, i64 noundef %i.eg, ptr noundef %i.ec, i64 noundef %i.ek) #28 ; 0 uses
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !24, !alias.scope !675
  %i.en = add i64 %i.em, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.en, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit71 unwind label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i68
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #31
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %8, align 8, !tbaa !25, !alias.scope !675 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eh
  br i1 %i.es, label %.body69, label %.body69.sink.split

_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i68
  %i.et = load i64, ptr %i.ei, align 8, !tbaa !24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !24
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.et
  br i1 %i.ex, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72

bb.ab:                                            ; preds = %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit71
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc73 unwind label %bb.ac

.noexc73:                                         ; preds = %bb.ab
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72: ; preds = %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit71
  %i.ey = load ptr, ptr %8, align 8, !tbaa !25
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ey, i64 noundef %i.et)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75 unwind label %bb.ac ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72
  %i.fa = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.eh
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75
  %i.fc = load i64, ptr %i.eh, align 8, !tbaa !9
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72, %bb.ab
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eh
  br i1 %i.fg, label %.body69, label %.body69.sink.split

.body69.sink.split:                               ; preds = %bb.ac, %bb.aa
  %.sink131 = phi ptr [ %i.er, %bb.aa ], [ %i.ff, %bb.ac ]
  %.pn.ph = phi { ptr, i32 } [ %i.eq, %bb.aa ], [ %i.fe, %bb.ac ]
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !9
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %.sink131, i64 noundef %i.fi) #30
  br label %.body69

.body69:                                          ; preds = %.body69.sink.split, %bb.ac, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.aa ], [ %i.fe, %bb.ac ], [ %.pn.ph, %.body69.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.af

bb.ad:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !74
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.fj)
          to label %bb.ae unwind label %bb.b

bb.ae:                                            ; preds = %bb.ad
  %i.fk = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ae
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !9
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.af:                                            ; preds = %.body69, %bb.w, %.body, %bb.b
  %.pn31 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn29, %.body ], [ %.pn24.pn.pn.pn, %bb.w ], [ %.pn, %.body69 ]
  %i.fp = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.af
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !9
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn31
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <12 x float> @llvm.masked.load.v12f32.p0(ptr captures(none), <12 x i1>, <12 x float>) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEE", !5, i64 0, !12, i64 64}
!14 = !{!13, !12, i64 64}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{i64 0, i64 64, !9}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !22, i64 8, !5, i64 16}
!24 = !{!23, !22, i64 8}
!25 = !{!23, !19, i64 0}
!26 = !{!6, !6, i64 0}
!27 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!28 = !{!27, !10, i64 0}
!29 = !{!27, !10, i64 4}
!30 = !{!27, !10, i64 8}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"_ZTSN4pbrt8IntervalE", !10, i64 0, !10, i64 4}
!33 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !33, i64 0}
!35 = !{!"_ZTSN4pbrt8Point3fiE", !34, i64 0}
!36 = !{!"_ZTSN4pbrt7Vector3IfEE", !27, i64 0}
!37 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!38 = !{!"_ZTSN4pbrt7Normal3IfEE", !37, i64 0}
!39 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !10, i64 0, !10, i64 4}
!40 = !{!"_ZTSN4pbrt6Point2IfEE", !39, i64 0}
!41 = !{!"p1 _ZTSN4pbrt15MediumInterfaceE", !18, i64 0}
!42 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !22, i64 0}
!43 = !{!"_ZTSN4pbrt6MediumE", !42, i64 0}
!44 = !{!"_ZTSN4pbrt11InteractionE", !35, i64 0, !10, i64 24, !36, i64 28, !38, i64 40, !40, i64 52, !41, i64 64, !43, i64 72}
!45 = !{!44, !10, i64 24}
!46 = !{!44, !41, i64 64}
!47 = !{!"_ZTSN4pbrt18SurfaceInteractionUt_E", !38, i64 0, !36, i64 12, !36, i64 24, !38, i64 36, !38, i64 48}
!48 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !22, i64 0}
!49 = !{!"_ZTSN4pbrt8MaterialE", !48, i64 0}
!50 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !22, i64 0}
!51 = !{!"_ZTSN4pbrt5LightE", !50, i64 0}
!52 = !{!"_ZTSN4pbrt18SurfaceInteractionE", !44, i64 0, !36, i64 80, !36, i64 92, !38, i64 104, !38, i64 116, !47, i64 128, !6, i64 188, !49, i64 192, !51, i64 200, !36, i64 208, !36, i64 220, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244}
!53 = !{!52, !10, i64 232}
!54 = !{!52, !10, i64 244}
!55 = !{!22, !22, i64 0}
!56 = !{!52, !6, i64 188}
!57 = !{!32, !10, i64 0}
!58 = !{!32, !10, i64 4}
!59 = !{i64 0, i64 64, !9, i64 64, i64 64, !9}
!60 = !{!"_ZTSN4pbrt12SquareMatrixILi4EEE", !5, i64 0}
!61 = !{!"_ZTSN4pbrt9TransformE", !60, i64 0, !60, i64 64}
!62 = !{!"_ZTSN4pbrt17AnimatedTransformE", !61, i64 0, !61, i64 128, !10, i64 256, !10, i64 260, !12, i64 264, !5, i64 268, !5, i64 292, !5, i64 324, !12, i64 452, !5, i64 456, !5, i64 504, !5, i64 552, !5, i64 600, !5, i64 648}
!63 = !{!62, !10, i64 256}
!64 = !{!62, !10, i64 260}
!65 = !{!62, !12, i64 264}
!66 = !{!62, !12, i64 452}
!67 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!68 = !{!"_ZTSN4pbrt6Point3IfEE", !67, i64 0}
!69 = !{!"_ZTSN4pbrt3RayE", !68, i64 0, !36, i64 12, !10, i64 24, !43, i64 32}
!70 = !{!69, !10, i64 24}
!71 = !{!42, !22, i64 0}
!72 = !{!"double", !5, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!19, !19, i64 0}
!75 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!76 = !{!"_ZTSSt6locale", !75, i64 0}
!77 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !76, i64 56}
!78 = !{!77, !19, i64 40}
!79 = !{!77, !19, i64 32}
!80 = !{!"vtable pointer", !4, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"_ZTSSi", !22, i64 8}
!83 = !{!82, !22, i64 8}
!84 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!85 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!86 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!87 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !22, i64 8}
!88 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!89 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !84, i64 24, !85, i64 28, !85, i64 32, !86, i64 40, !87, i64 48, !5, i64 64, !6, i64 192, !88, i64 200, !76, i64 208}
!90 = !{!89, !85, i64 32}
!91 = !{!12, !12, i64 0}
!92 = distinct !{!92, i1 false, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!93 = distinct !{!93, !92, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!94 = !{!93}
!95 = distinct !{!95, i1 false, !"_ZN4pbrt12StringPrintfIJRfS1_S1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!96 = distinct !{!96, !95, !"_ZN4pbrt12StringPrintfIJRfS1_S1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!97 = !{!96}
!98 = distinct !{!98, i1 false, !"_ZN4pbrt5ScaleEfff"}
!99 = distinct !{!99, !98, !"_ZN4pbrt5ScaleEfff: argument 0"}
!100 = distinct !{!100, i1 false, !"_ZN4pbrt9TranslateENS_7Vector3IfEE"}
!101 = distinct !{!101, !100, !"_ZN4pbrt9TranslateENS_7Vector3IfEE: argument 0"}
!102 = !{!99}
!103 = !{!101}
!104 = distinct !{!104, i1 false, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_"}
!105 = distinct !{!105, !104, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_: argument 0"}
!106 = distinct !{!106, i1 false, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_"}
!107 = distinct !{!107, !106, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_: argument 0"}
!108 = !{!105}
!109 = !{!107}
!110 = distinct !{!110, i1 false, !"_ZN4pbrt5ScaleEfff"}
!111 = distinct !{!111, !110, !"_ZN4pbrt5ScaleEfff: argument 0"}
!112 = !{!111}
!113 = distinct !{!113, i1 false, !"_ZN4pbrt9TransposeILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!114 = distinct !{!114, !113, !"_ZN4pbrt9TransposeILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!115 = distinct !{!115, i1 false, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!116 = distinct !{!116, !115, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, i1 false, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!119 = distinct !{!119, !118, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!120 = !{!114}
!121 = !{!116}
!122 = !{!119}
!123 = distinct !{!123, i1 false, !"_ZN4pbrt12StringPrintfIJRKNS_12SquareMatrixILi4EEES4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!124 = distinct !{!124, !123, !"_ZN4pbrt12StringPrintfIJRKNS_12SquareMatrixILi4EEES4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!125 = !{!124}
!126 = distinct !{!126, i1 false, !"_ZNK4pbrt9TransformclERKNS_3RayEPf"}
!127 = distinct !{!127, !126, !"_ZNK4pbrt9TransformclERKNS_3RayEPf: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZNK4pbrt9TransformclERKNS_3RayEPf"}
!129 = distinct !{!129, !128, !"_ZNK4pbrt9TransformclERKNS_3RayEPf: argument 0"}
!130 = distinct !{!130, i1 false, !"_ZNK4pbrt9TransformclERKNS_3RayEPf"}
!131 = distinct !{!131, !130, !"_ZNK4pbrt9TransformclERKNS_3RayEPf: argument 0"}
!132 = !{!127}
!133 = !{!129}
!134 = !{!131}
!135 = distinct !{!135, i1 false, !"_ZNK4pbrt12SquareMatrixILi4EEplERKS1_"}
!136 = distinct !{!136, !135, !"_ZNK4pbrt12SquareMatrixILi4EEplERKS1_: argument 0"}
!137 = distinct !{!137, i1 false, !"_ZN4pbrt9TranslateENS_7Vector3IfEE"}
!138 = distinct !{!138, !137, !"_ZN4pbrt9TranslateENS_7Vector3IfEE: argument 0"}
!139 = !{!136}
!140 = !{!138}
!141 = distinct !{!141, i1 false, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf"}
!142 = distinct !{!142, !141, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf: argument 0"}
!143 = distinct !{!143, i1 false, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf"}
!144 = distinct !{!144, !143, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf: argument 0"}
!145 = distinct !{!145, i1 false, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf"}
!146 = distinct !{!146, !145, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf: argument 0"}
!147 = !{!142}
!148 = !{!144}
!149 = !{!146}
!150 = distinct !{!150, i1 false, !"_ZNK4pbrt9TransformclERKNS_3RayEPf"}
!151 = distinct !{!151, !150, !"_ZNK4pbrt9TransformclERKNS_3RayEPf: argument 0"}
!152 = !{!151}
!153 = !{!"_ZTSN4pbrt15RayDifferentialE", !69, i64 0, !12, i64 40, !68, i64 44, !68, i64 56, !36, i64 68, !36, i64 80}
!154 = !{!153, !12, i64 40}
!155 = distinct !{!155, i1 false, !"_ZN4pbrt12StringPrintfIJRKNS_9TransformES3_RKfS5_RKbRKNS_7Vector3IfEESB_RKNS_10QuaternionESE_RKNS_12SquareMatrixILi4EEESI_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!156 = distinct !{!156, !155, !"_ZN4pbrt12StringPrintfIJRKNS_9TransformES3_RKfS5_RKbRKNS_7Vector3IfEESB_RKNS_10QuaternionESE_RKNS_12SquareMatrixILi4EEESI_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!157 = !{!156}
!158 = distinct !{!158, i1 false, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_"}
!159 = distinct !{!159, !158, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_: argument 0"}
!160 = distinct !{!160, i1 false, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_"}
!161 = distinct !{!161, !160, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_: argument 0"}
end_hunk_3
