Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_twolevel?download=true
inline.NumInlined: 11316
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 119
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_ZN6embree4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE15RefBuilderSmall15attachBuildRefsEPS5_:_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #26
  unreachable

bb.w:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.fp = load i8, ptr %i.ap, align 8, !range !151, !noundef !152
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.x, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit143

bb.x:                                             ; preds = %bb.w
  %i.fr = load ptr, ptr %3, align 8, !nonnull !152, !align !160
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit143 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #26
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit143:       ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.noexc65

bb.z:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit136
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %.loopexit.split-lp183.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.fu, %bb.z ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp183.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

.noexc65:                                         ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit143, %bb.n
  %i.fv = load i64, ptr %i.a, align 8             ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = add i64 %i.fx, %i.fv
  store i64 %i.fy, ptr %i.fw, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 11 uses
  %i.ga = load i64, ptr %i.fz, align 16           ; 3 uses
  %i.gb = sub i64 0, %i.ga
  %i.gc = and i64 %i.gb, 15                       ; 2 uses
  %i.gd = add i64 %i.ga, %i.fv
  %i.ge = add i64 %i.gd, %i.gc                    ; 3 uses
  store i64 %i.ge, ptr %i.fz, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 5 uses
  %i.gg = load i64, ptr %i.gf, align 8
  %.not.i63 = icmp ugt i64 %i.ge, %i.gg
  br i1 %.not.i63, label %bb.ab, label %bb.aa, !prof !158

bb.aa:                                            ; preds = %.noexc65
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 16
  %i.gj = add i64 %i.gi, %i.gc
  store i64 %i.gj, ptr %i.gh, align 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = sub i64 %i.ge, %i.fv
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  br label %.noexc47

bb.ab:                                            ; preds = %.noexc65
  store i64 %i.ga, ptr %i.fz, align 16
  %i.go = shl i64 %i.fv, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 32           ; 2 uses
  %i.gr = icmp ugt i64 %i.go, %i.gq
  br i1 %i.gr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gs = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.gq, ptr %i.b, align 8
  %i.gt = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc67:                                         ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gv = load i64, ptr %i.gf, align 8
  %i.gw = load i64, ptr %i.fz, align 16
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 6 uses
  %i.gz = load i64, ptr %i.gy, align 16
  %i.ha = add i64 %i.gz, %i.gx                    ; 2 uses
  store i64 %i.ha, ptr %i.gy, align 16
  store i64 0, ptr %i.fz, align 16
  %i.hb = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hb, ptr %i.gf, align 8
  %i.hc = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hc, ptr %i.fz, align 16
  %.not23.i = icmp ugt i64 %i.hc, %i.hb
  br i1 %.not23.i, label %bb.af, label %bb.ae, !prof !158

bb.ae:                                            ; preds = %.noexc67
  store i64 %i.ha, ptr %i.gy, align 16
  br label %bb.ai

bb.af:                                            ; preds = %.noexc67
  store i64 0, ptr %i.fz, align 16
  %i.hd = load i64, ptr %i.gp, align 32
  store i64 %i.hd, ptr %i.b, align 8
  %i.he = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc68:                                         ; preds = %bb.af
  store ptr %i.he, ptr %i.gu, align 8
  %i.hf = load i64, ptr %i.gf, align 8
  %i.hg = load i64, ptr %i.fz, align 16
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = load i64, ptr %i.gy, align 16
  %i.hj = add i64 %i.hi, %i.hh                    ; 2 uses
  store i64 %i.hj, ptr %i.gy, align 16
  store i64 0, ptr %i.fz, align 16
  %i.hk = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hk, ptr %i.gf, align 8
  %i.hl = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hl, ptr %i.fz, align 16
  %.not24.i = icmp ugt i64 %i.hl, %i.hk
  br i1 %.not24.i, label %bb.ah, label %bb.ag, !prof !158

bb.ag:                                            ; preds = %.noexc68
  store i64 %i.hj, ptr %i.gy, align 16
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc68
  store i64 0, ptr %i.fz, align 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i64 = phi ptr [ %i.gt, %bb.ae ], [ %i.he, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.noexc47

.noexc47:                                         ; preds = %bb.ac, %bb.aa, %bb.ai
  %.1.i = phi ptr [ %i.gn, %bb.aa ], [ %.0.i64, %bb.ai ], [ %i.gs, %bb.ac ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hm = ptrtoint ptr %.1.i to i64
  %i.hn = or i64 %i.hm, 9
  %i.ho = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.hp = load i64, ptr %i.aj, align 8
  %i.hq = load i64, ptr %i.ak, align 16
  %i.hr = sub i64 %i.hp, %i.hq                    ; 4 uses
  %i.hs = icmp ult i64 %.0194, %i.hr
  br i1 %i.hs, label %.noexc53.lr.ph, label %._crit_edge

.noexc53.lr.ph:                                   ; preds = %.noexc47
  %i.ht = load ptr, ptr %i.ae, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 104
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 488
  %i.hx = load ptr, ptr %i.hw, align 8            ; 4 uses
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %.0194 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.ia = load i32, ptr %i.hz, align 4            ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  %i.ic = load i32, ptr %i.ib, align 4            ; 2 uses
  %i.id = zext i32 %i.ia to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8            ; 4 uses
  %i.ig = zext i32 %i.ic to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 88
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 104
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = mul i64 %i.ik, %i.ig
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.il ; 3 uses
  %i.in = load i32, ptr %i.im, align 4
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 144
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !259 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 160
  %i.is = load i64, ptr %i.ir, align 8, !noalias !259 ; 3 uses
  %i.it = mul i64 %i.is, %i.io
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.it
  %i.iv = load <4 x float>, ptr %i.iu, align 1, !noalias !260 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = zext i32 %i.ix to i64
  %i.iz = mul i64 %i.is, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iz
  %i.jb = load <4 x float>, ptr %i.ja, align 1, !noalias !261 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = zext i32 %i.jd to i64
  %i.jf = mul i64 %i.is, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.jf
  %i.jh = load <4 x float>, ptr %i.jg, align 1, !noalias !262 ; 3 uses
  %.sroa.0291.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ia, i64 0 ; 2 uses
  %.sroa.0288.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ic, i64 0 ; 2 uses
  %.sroa.0282.0.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8284.16.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13286.32.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.0276.0.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8278.16.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13280.32.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %i.ji = add nuw i64 %.0194, 1                   ; 3 uses
  %i.jj = icmp ult i64 %i.ji, %i.hr
  br i1 %i.jj, label %.noexc53.1, label %._crit_edge.loopexit

.noexc53.1:                                       ; preds = %.noexc53.lr.ph
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.ji ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  %i.jm = load i32, ptr %i.jl, align 4            ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 28
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %i.jp = zext i32 %i.jm to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8            ; 4 uses
  %i.js = zext i32 %i.jo to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 88
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 104
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = mul i64 %i.jw, %i.js
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jx ; 3 uses
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 144
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !259 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 160
  %i.ke = load i64, ptr %i.kd, align 8, !noalias !259 ; 3 uses
  %i.kf = mul i64 %i.ke, %i.ka
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kf
  %i.kh = load <4 x float>, ptr %i.kg, align 1, !noalias !260 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = zext i32 %i.kj to i64
  %i.kl = mul i64 %i.ke, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kl
  %i.kn = load <4 x float>, ptr %i.km, align 1, !noalias !261 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = zext i32 %i.kp to i64
  %i.kr = mul i64 %i.ke, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kr
  %i.kt = load <4 x float>, ptr %i.ks, align 1, !noalias !262 ; 3 uses
  %.sroa.0291.4.vec.insert = insertelement <4 x i32> %.sroa.0291.0.vec.insert, i32 %i.jm, i64 1 ; 2 uses
  %.sroa.0288.4.vec.insert = insertelement <4 x i32> %.sroa.0288.0.vec.insert, i32 %i.jo, i64 1 ; 2 uses
  %.sroa.0282.4.vec.insert = shufflevector <4 x float> %.sroa.0282.0.vec.insert, <4 x float> %i.kh, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8284.20.vec.insert = shufflevector <4 x float> %.sroa.8284.16.vec.insert, <4 x float> %i.kh, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13286.36.vec.insert = shufflevector <4 x float> %.sroa.13286.32.vec.insert, <4 x float> %i.kh, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0276.4.vec.insert = shufflevector <4 x float> %.sroa.0276.0.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8278.20.vec.insert = shufflevector <4 x float> %.sroa.8278.16.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13280.36.vec.insert = shufflevector <4 x float> %.sroa.13280.32.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ku = add nuw i64 %.0194, 2                   ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %i.hr
  br i1 %i.kv, label %.noexc53.2, label %._crit_edge.loopexit

.noexc53.2:                                       ; preds = %.noexc53.1
  %i.kw = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.ku ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  %i.ky = load i32, ptr %i.kx, align 4            ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 28
  %i.la = load i32, ptr %i.kz, align 4            ; 2 uses
  %i.lb = zext i32 %i.ky to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.lb
  %i.ld = load ptr, ptr %i.lc, align 8            ; 4 uses
  %i.le = zext i32 %i.la to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 88
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 104
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = mul i64 %i.li, %i.le
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lj ; 3 uses
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 144
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !259 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 160
  %i.lq = load i64, ptr %i.lp, align 8, !noalias !259 ; 3 uses
  %i.lr = mul i64 %i.lq, %i.lm
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lr
  %i.lt = load <4 x float>, ptr %i.ls, align 1, !noalias !260 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = zext i32 %i.lv to i64
  %i.lx = mul i64 %i.lq, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lx
  %i.lz = load <4 x float>, ptr %i.ly, align 1, !noalias !261 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = zext i32 %i.mb to i64
  %i.md = mul i64 %i.lq, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.md
  %i.mf = load <4 x float>, ptr %i.me, align 1, !noalias !262 ; 3 uses
  %.sroa.0291.8.vec.insert = insertelement <4 x i32> %.sroa.0291.4.vec.insert, i32 %i.ky, i64 2 ; 2 uses
  %.sroa.0288.8.vec.insert = insertelement <4 x i32> %.sroa.0288.4.vec.insert, i32 %i.la, i64 2 ; 2 uses
  %.sroa.0282.8.vec.insert = shufflevector <4 x float> %.sroa.0282.4.vec.insert, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8284.24.vec.insert = shufflevector <4 x float> %.sroa.8284.20.vec.insert, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13286.40.vec.insert = shufflevector <4 x float> %.sroa.13286.36.vec.insert, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0276.8.vec.insert = shufflevector <4 x float> %.sroa.0276.4.vec.insert, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8278.24.vec.insert = shufflevector <4 x float> %.sroa.8278.20.vec.insert, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13280.40.vec.insert = shufflevector <4 x float> %.sroa.13280.36.vec.insert, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.mg = add nuw i64 %.0194, 3                   ; 3 uses
  %i.mh = icmp ult i64 %i.mg, %i.hr
  br i1 %i.mh, label %.noexc53.3, label %._crit_edge.loopexit

.noexc53.3:                                       ; preds = %.noexc53.2
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.mg ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.mk = load i32, ptr %i.mj, align 4            ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 28
  %i.mm = load i32, ptr %i.ml, align 4            ; 2 uses
  %i.mn = zext i32 %i.mk to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8            ; 4 uses
  %i.mq = zext i32 %i.mm to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 88
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 104
  %i.mu = load i64, ptr %i.mt, align 8
  %i.mv = mul i64 %i.mu, %i.mq
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mv ; 3 uses
  %i.mx = load i32, ptr %i.mw, align 4
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 144
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !259 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mp, i64 160
  %i.nc = load i64, ptr %i.nb, align 8, !noalias !259 ; 3 uses
  %i.nd = mul i64 %i.nc, %i.my
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nd
  %i.nf = load <4 x float>, ptr %i.ne, align 1, !noalias !260 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.nh = load i32, ptr %i.ng, align 4
  %i.ni = zext i32 %i.nh to i64
  %i.nj = mul i64 %i.nc, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nj
  %i.nl = load <4 x float>, ptr %i.nk, align 1, !noalias !261 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = zext i32 %i.nn to i64
  %i.np = mul i64 %i.nc, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.np
  %i.nr = load <4 x float>, ptr %i.nq, align 1, !noalias !262 ; 3 uses
  %.sroa.0291.12.vec.insert = insertelement <4 x i32> %.sroa.0291.8.vec.insert, i32 %i.mk, i64 3
  %.sroa.0288.12.vec.insert = insertelement <4 x i32> %.sroa.0288.8.vec.insert, i32 %i.mm, i64 3
  %.sroa.0282.12.vec.insert = shufflevector <4 x float> %.sroa.0282.8.vec.insert, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8284.28.vec.insert = shufflevector <4 x float> %.sroa.8284.24.vec.insert, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13286.44.vec.insert = shufflevector <4 x float> %.sroa.13286.40.vec.insert, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0276.12.vec.insert = shufflevector <4 x float> %.sroa.0276.8.vec.insert, <4 x float> %i.nl, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8278.28.vec.insert = shufflevector <4 x float> %.sroa.8278.24.vec.insert, <4 x float> %i.nl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13280.44.vec.insert = shufflevector <4 x float> %.sroa.13280.40.vec.insert, <4 x float> %i.nl, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ns = add nuw i64 %.0194, 4
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.noexc53.3, %.noexc53.2, %.noexc53.1, %.noexc53.lr.ph
  %.sroa.0291.0 = phi <4 x i32> [ %.sroa.0291.12.vec.insert, %.noexc53.3 ], [ %.sroa.0291.8.vec.insert, %.noexc53.2 ], [ %.sroa.0291.4.vec.insert, %.noexc53.1 ], [ %.sroa.0291.0.vec.insert, %.noexc53.lr.ph ]
  %.sroa.0288.0 = phi <4 x i32> [ %.sroa.0288.12.vec.insert, %.noexc53.3 ], [ %.sroa.0288.8.vec.insert, %.noexc53.2 ], [ %.sroa.0288.4.vec.insert, %.noexc53.1 ], [ %.sroa.0288.0.vec.insert, %.noexc53.lr.ph ]
  %.sroa.13286.0 = phi <4 x float> [ %.sroa.13286.44.vec.insert, %.noexc53.3 ], [ %.sroa.13286.40.vec.insert, %.noexc53.2 ], [ %.sroa.13286.36.vec.insert, %.noexc53.1 ], [ %.sroa.13286.32.vec.insert, %.noexc53.lr.ph ]
  %.sroa.8284.0 = phi <4 x float> [ %.sroa.8284.28.vec.insert, %.noexc53.3 ], [ %.sroa.8284.24.vec.insert, %.noexc53.2 ], [ %.sroa.8284.20.vec.insert, %.noexc53.1 ], [ %.sroa.8284.16.vec.insert, %.noexc53.lr.ph ]
  %.sroa.0282.0 = phi <4 x float> [ %.sroa.0282.12.vec.insert, %.noexc53.3 ], [ %.sroa.0282.8.vec.insert, %.noexc53.2 ], [ %.sroa.0282.4.vec.insert, %.noexc53.1 ], [ %.sroa.0282.0.vec.insert, %.noexc53.lr.ph ]
  %.sroa.13280.0 = phi <4 x float> [ %.sroa.13280.44.vec.insert, %.noexc53.3 ], [ %.sroa.13280.40.vec.insert, %.noexc53.2 ], [ %.sroa.13280.36.vec.insert, %.noexc53.1 ], [ %.sroa.13280.32.vec.insert, %.noexc53.lr.ph ]
  %.sroa.8278.0 = phi <4 x float> [ %.sroa.8278.28.vec.insert, %.noexc53.3 ], [ %.sroa.8278.24.vec.insert, %.noexc53.2 ], [ %.sroa.8278.20.vec.insert, %.noexc53.1 ], [ %.sroa.8278.16.vec.insert, %.noexc53.lr.ph ]
  %.sroa.0276.0 = phi <4 x float> [ %.sroa.0276.12.vec.insert, %.noexc53.3 ], [ %.sroa.0276.8.vec.insert, %.noexc53.2 ], [ %.sroa.0276.4.vec.insert, %.noexc53.1 ], [ %.sroa.0276.0.vec.insert, %.noexc53.lr.ph ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %.noexc53.3 ], [ %.sroa.13.40.vec.insert, %.noexc53.2 ], [ %.sroa.13.36.vec.insert, %.noexc53.1 ], [ %.sroa.13.32.vec.insert, %.noexc53.lr.ph ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %.noexc53.3 ], [ %.sroa.8.24.vec.insert, %.noexc53.2 ], [ %.sroa.8.20.vec.insert, %.noexc53.1 ], [ %.sroa.8.16.vec.insert, %.noexc53.lr.ph ]
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.12.vec.insert, %.noexc53.3 ], [ %.sroa.0.8.vec.insert, %.noexc53.2 ], [ %.sroa.0.4.vec.insert, %.noexc53.1 ], [ %.sroa.0.0.vec.insert, %.noexc53.lr.ph ]
  %.lcssa268 = phi i64 [ %i.ns, %.noexc53.3 ], [ %i.mg, %.noexc53.2 ], [ %i.ku, %.noexc53.1 ], [ %i.ji, %.noexc53.lr.ph ]
  %i.nt = bitcast <4 x i32> %.sroa.0291.0 to <2 x i64>
  %i.nu = bitcast <4 x i32> %.sroa.0288.0 to <2 x i64>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc47
  %i.nv = phi <2 x i64> [ splat (i64 -1), %.noexc47 ], [ %i.nu, %._crit_edge.loopexit ]
  %i.nw = phi <2 x i64> [ splat (i64 -1), %.noexc47 ], [ %i.nt, %._crit_edge.loopexit ]
  %i.nx = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.13.0, %._crit_edge.loopexit ]
  %i.ny = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.8.0, %._crit_edge.loopexit ]
  %i.nz = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.0.0, %._crit_edge.loopexit ]
  %i.oa = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.13280.0, %._crit_edge.loopexit ]
  %i.ob = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.8278.0, %._crit_edge.loopexit ]
  %i.oc = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.0276.0, %._crit_edge.loopexit ]
  %i.od = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.13286.0, %._crit_edge.loopexit ] ; 3 uses
  %i.oe = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.8284.0, %._crit_edge.loopexit ] ; 3 uses
  %i.of = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.0282.0, %._crit_edge.loopexit ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0194, %.noexc47 ], [ %.lcssa268, %._crit_edge.loopexit ] ; 2 uses
  %i.og = fsub <4 x float> %i.of, %i.oc
  %i.oh = fsub <4 x float> %i.oe, %i.ob
  %i.oi = fsub <4 x float> %i.od, %i.oa
  %i.oj = fsub <4 x float> %i.nz, %i.of
  %i.ok = fsub <4 x float> %i.ny, %i.oe
  %i.ol = fsub <4 x float> %i.nx, %i.od
  store <4 x float> %i.of, ptr %.1.i, align 16
  %i.om = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store <4 x float> %i.oe, ptr %i.om, align 16
  %i.on = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  store <4 x float> %i.od, ptr %i.on, align 16
end_hunk_0
begin_hunk_1_@_ZN6embree4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE15RefBuilderSmall15attachBuildRefsEPS5_:_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #26
  unreachable

bb.w:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.fp = load i8, ptr %i.ap, align 8, !range !151, !noundef !152
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.x, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit78

bb.x:                                             ; preds = %bb.w
  %i.fr = load ptr, ptr %3, align 8, !nonnull !152, !align !160
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit78 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #26
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit78:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.noexc47

bb.z:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit71
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.body56:                                          ; preds = %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.fu, %bb.z ], [ %lpad.loopexit.split-lp196, %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

.noexc47:                                         ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit78, %bb.n
  %i.fv = load i64, ptr %i.a, align 8             ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = add i64 %i.fx, %i.fv
  store i64 %i.fy, ptr %i.fw, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 11 uses
  %i.ga = load i64, ptr %i.fz, align 16           ; 3 uses
  %i.gb = sub i64 0, %i.ga
  %i.gc = and i64 %i.gb, 15                       ; 2 uses
  %i.gd = add i64 %i.ga, %i.fv
  %i.ge = add i64 %i.gd, %i.gc                    ; 3 uses
  store i64 %i.ge, ptr %i.fz, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 5 uses
  %i.gg = load i64, ptr %i.gf, align 8
  %.not.i45 = icmp ugt i64 %i.ge, %i.gg
  br i1 %.not.i45, label %bb.ab, label %bb.aa, !prof !158

bb.aa:                                            ; preds = %.noexc47
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 16
  %i.gj = add i64 %i.gi, %i.gc
  store i64 %i.gj, ptr %i.gh, align 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = sub i64 %i.ge, %i.fv
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  br label %bb.aj

bb.ab:                                            ; preds = %.noexc47
  store i64 %i.ga, ptr %i.fz, align 16
  %i.go = shl i64 %i.fv, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 32           ; 2 uses
  %i.gr = icmp ugt i64 %i.go, %i.gq
  br i1 %i.gr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gs = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.gq, ptr %i.b, align 8
  %i.gt = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gv = load i64, ptr %i.gf, align 8
  %i.gw = load i64, ptr %i.fz, align 16
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 6 uses
  %i.gz = load i64, ptr %i.gy, align 16
  %i.ha = add i64 %i.gz, %i.gx                    ; 2 uses
  store i64 %i.ha, ptr %i.gy, align 16
  store i64 0, ptr %i.fz, align 16
  %i.hb = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hb, ptr %i.gf, align 8
  %i.hc = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hc, ptr %i.fz, align 16
  %.not23.i = icmp ugt i64 %i.hc, %i.hb
  br i1 %.not23.i, label %bb.af, label %bb.ae, !prof !158

bb.ae:                                            ; preds = %.noexc49
  store i64 %i.ha, ptr %i.gy, align 16
  br label %bb.ai

bb.af:                                            ; preds = %.noexc49
  store i64 0, ptr %i.fz, align 16
  %i.hd = load i64, ptr %i.gp, align 32
  store i64 %i.hd, ptr %i.b, align 8
  %i.he = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc50:                                         ; preds = %bb.af
  store ptr %i.he, ptr %i.gu, align 8
  %i.hf = load i64, ptr %i.gf, align 8
  %i.hg = load i64, ptr %i.fz, align 16
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = load i64, ptr %i.gy, align 16
  %i.hj = add i64 %i.hi, %i.hh                    ; 2 uses
  store i64 %i.hj, ptr %i.gy, align 16
  store i64 0, ptr %i.fz, align 16
  %i.hk = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hk, ptr %i.gf, align 8
  %i.hl = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hl, ptr %i.fz, align 16
  %.not24.i = icmp ugt i64 %i.hl, %i.hk
  br i1 %.not24.i, label %bb.ah, label %bb.ag, !prof !158

bb.ag:                                            ; preds = %.noexc50
  store i64 %i.hj, ptr %i.gy, align 16
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc50
  store i64 0, ptr %i.fz, align 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i46 = phi ptr [ %i.gt, %bb.ae ], [ %i.he, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ac, %bb.aa, %bb.ai
  %.1.i = phi ptr [ %i.gn, %bb.aa ], [ %.0.i46, %bb.ai ], [ %i.gs, %bb.ac ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hm = ptrtoint ptr %.1.i to i64
  %i.hn = or i64 %i.hm, 9
  %i.ho = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.hp = load i64, ptr %i.aj, align 8
  %i.hq = load i64, ptr %i.ak, align 16
  %i.hr = sub i64 %i.hp, %i.hq                    ; 4 uses
  %i.hs = icmp ult i64 %.0123, %i.hr
  br i1 %i.hs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aj
  %i.ht = load ptr, ptr %i.ae, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 104
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 488
  %i.hx = load ptr, ptr %i.hw, align 8            ; 4 uses
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %.0123 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.ia = load i32, ptr %i.hz, align 4            ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  %i.ic = load i32, ptr %i.ib, align 4            ; 2 uses
  %i.id = zext i32 %i.ia to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8            ; 4 uses
  %i.ig = zext i32 %i.ic to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 88
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 104
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = mul i64 %i.ik, %i.ig
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.il ; 3 uses
  %i.in = load i32, ptr %i.im, align 4
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 144
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !1163 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 160
  %i.is = load i64, ptr %i.ir, align 8, !noalias !1163 ; 3 uses
  %i.it = mul i64 %i.is, %i.io
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.it
  %i.iv = load <4 x float>, ptr %i.iu, align 1, !noalias !1164 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = zext i32 %i.ix to i64
  %i.iz = mul i64 %i.is, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iz
  %i.jb = load <4 x float>, ptr %i.ja, align 1, !noalias !1165 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = zext i32 %i.jd to i64
  %i.jf = mul i64 %i.is, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.jf
  %i.jh = load <4 x float>, ptr %i.jg, align 1, !noalias !1166 ; 3 uses
  %.sroa.0221.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ia, i64 0 ; 2 uses
  %.sroa.0218.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ic, i64 0 ; 2 uses
  %.sroa.0212.0.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8214.16.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13216.32.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.0206.0.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8208.16.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13210.32.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %i.ji = add nuw i64 %.0123, 1                   ; 3 uses
  %i.jj = icmp ult i64 %i.ji, %i.hr
  br i1 %i.jj, label %bb.ak, label %._crit_edge.loopexit

bb.ak:                                            ; preds = %.lr.ph
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.ji ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  %i.jm = load i32, ptr %i.jl, align 4            ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 28
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %i.jp = zext i32 %i.jm to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8            ; 4 uses
  %i.js = zext i32 %i.jo to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 88
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 104
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = mul i64 %i.jw, %i.js
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jx ; 3 uses
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 144
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !1163 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 160
  %i.ke = load i64, ptr %i.kd, align 8, !noalias !1163 ; 3 uses
  %i.kf = mul i64 %i.ke, %i.ka
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kf
  %i.kh = load <4 x float>, ptr %i.kg, align 1, !noalias !1164 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = zext i32 %i.kj to i64
  %i.kl = mul i64 %i.ke, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kl
  %i.kn = load <4 x float>, ptr %i.km, align 1, !noalias !1165 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = zext i32 %i.kp to i64
  %i.kr = mul i64 %i.ke, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kr
  %i.kt = load <4 x float>, ptr %i.ks, align 1, !noalias !1166 ; 3 uses
  %.sroa.0221.4.vec.insert = insertelement <4 x i32> %.sroa.0221.0.vec.insert, i32 %i.jm, i64 1 ; 2 uses
  %.sroa.0218.4.vec.insert = insertelement <4 x i32> %.sroa.0218.0.vec.insert, i32 %i.jo, i64 1 ; 2 uses
  %.sroa.0212.4.vec.insert = shufflevector <4 x float> %.sroa.0212.0.vec.insert, <4 x float> %i.kh, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8214.20.vec.insert = shufflevector <4 x float> %.sroa.8214.16.vec.insert, <4 x float> %i.kh, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13216.36.vec.insert = shufflevector <4 x float> %.sroa.13216.32.vec.insert, <4 x float> %i.kh, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0206.4.vec.insert = shufflevector <4 x float> %.sroa.0206.0.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8208.20.vec.insert = shufflevector <4 x float> %.sroa.8208.16.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13210.36.vec.insert = shufflevector <4 x float> %.sroa.13210.32.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ku = add nuw i64 %.0123, 2                   ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %i.hr
  br i1 %i.kv, label %bb.al, label %._crit_edge.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.kw = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.ku ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  %i.ky = load i32, ptr %i.kx, align 4            ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 28
  %i.la = load i32, ptr %i.kz, align 4            ; 2 uses
  %i.lb = zext i32 %i.ky to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.lb
  %i.ld = load ptr, ptr %i.lc, align 8            ; 4 uses
  %i.le = zext i32 %i.la to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 88
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 104
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = mul i64 %i.li, %i.le
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lj ; 3 uses
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 144
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !1163 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 160
  %i.lq = load i64, ptr %i.lp, align 8, !noalias !1163 ; 3 uses
  %i.lr = mul i64 %i.lq, %i.lm
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lr
  %i.lt = load <4 x float>, ptr %i.ls, align 1, !noalias !1164 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = zext i32 %i.lv to i64
  %i.lx = mul i64 %i.lq, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lx
  %i.lz = load <4 x float>, ptr %i.ly, align 1, !noalias !1165 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = zext i32 %i.mb to i64
  %i.md = mul i64 %i.lq, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.md
  %i.mf = load <4 x float>, ptr %i.me, align 1, !noalias !1166 ; 3 uses
  %.sroa.0221.8.vec.insert = insertelement <4 x i32> %.sroa.0221.4.vec.insert, i32 %i.ky, i64 2 ; 2 uses
  %.sroa.0218.8.vec.insert = insertelement <4 x i32> %.sroa.0218.4.vec.insert, i32 %i.la, i64 2 ; 2 uses
  %.sroa.0212.8.vec.insert = shufflevector <4 x float> %.sroa.0212.4.vec.insert, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8214.24.vec.insert = shufflevector <4 x float> %.sroa.8214.20.vec.insert, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13216.40.vec.insert = shufflevector <4 x float> %.sroa.13216.36.vec.insert, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0206.8.vec.insert = shufflevector <4 x float> %.sroa.0206.4.vec.insert, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8208.24.vec.insert = shufflevector <4 x float> %.sroa.8208.20.vec.insert, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13210.40.vec.insert = shufflevector <4 x float> %.sroa.13210.36.vec.insert, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.mg = add nuw i64 %.0123, 3                   ; 3 uses
  %i.mh = icmp ult i64 %i.mg, %i.hr
  br i1 %i.mh, label %bb.am, label %._crit_edge.loopexit

bb.am:                                            ; preds = %bb.al
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.mg ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.mk = load i32, ptr %i.mj, align 4            ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 28
  %i.mm = load i32, ptr %i.ml, align 4            ; 2 uses
  %i.mn = zext i32 %i.mk to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8            ; 4 uses
  %i.mq = zext i32 %i.mm to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 88
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 104
  %i.mu = load i64, ptr %i.mt, align 8
  %i.mv = mul i64 %i.mu, %i.mq
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mv ; 3 uses
  %i.mx = load i32, ptr %i.mw, align 4
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 144
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !1163 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mp, i64 160
  %i.nc = load i64, ptr %i.nb, align 8, !noalias !1163 ; 3 uses
  %i.nd = mul i64 %i.nc, %i.my
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nd
  %i.nf = load <4 x float>, ptr %i.ne, align 1, !noalias !1164 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.nh = load i32, ptr %i.ng, align 4
  %i.ni = zext i32 %i.nh to i64
  %i.nj = mul i64 %i.nc, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nj
  %i.nl = load <4 x float>, ptr %i.nk, align 1, !noalias !1165 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = zext i32 %i.nn to i64
  %i.np = mul i64 %i.nc, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.np
  %i.nr = load <4 x float>, ptr %i.nq, align 1, !noalias !1166 ; 3 uses
  %.sroa.0221.12.vec.insert = insertelement <4 x i32> %.sroa.0221.8.vec.insert, i32 %i.mk, i64 3
  %.sroa.0218.12.vec.insert = insertelement <4 x i32> %.sroa.0218.8.vec.insert, i32 %i.mm, i64 3
  %.sroa.0212.12.vec.insert = shufflevector <4 x float> %.sroa.0212.8.vec.insert, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8214.28.vec.insert = shufflevector <4 x float> %.sroa.8214.24.vec.insert, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13216.44.vec.insert = shufflevector <4 x float> %.sroa.13216.40.vec.insert, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0206.12.vec.insert = shufflevector <4 x float> %.sroa.0206.8.vec.insert, <4 x float> %i.nl, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8208.28.vec.insert = shufflevector <4 x float> %.sroa.8208.24.vec.insert, <4 x float> %i.nl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13210.44.vec.insert = shufflevector <4 x float> %.sroa.13210.40.vec.insert, <4 x float> %i.nl, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ns = add nuw i64 %.0123, 4
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.am, %bb.al, %bb.ak, %.lr.ph
  %.sroa.0221.0 = phi <4 x i32> [ %.sroa.0221.12.vec.insert, %bb.am ], [ %.sroa.0221.8.vec.insert, %bb.al ], [ %.sroa.0221.4.vec.insert, %bb.ak ], [ %.sroa.0221.0.vec.insert, %.lr.ph ]
  %.sroa.0218.0 = phi <4 x i32> [ %.sroa.0218.12.vec.insert, %bb.am ], [ %.sroa.0218.8.vec.insert, %bb.al ], [ %.sroa.0218.4.vec.insert, %bb.ak ], [ %.sroa.0218.0.vec.insert, %.lr.ph ]
  %.sroa.13216.0 = phi <4 x float> [ %.sroa.13216.44.vec.insert, %bb.am ], [ %.sroa.13216.40.vec.insert, %bb.al ], [ %.sroa.13216.36.vec.insert, %bb.ak ], [ %.sroa.13216.32.vec.insert, %.lr.ph ]
  %.sroa.8214.0 = phi <4 x float> [ %.sroa.8214.28.vec.insert, %bb.am ], [ %.sroa.8214.24.vec.insert, %bb.al ], [ %.sroa.8214.20.vec.insert, %bb.ak ], [ %.sroa.8214.16.vec.insert, %.lr.ph ]
  %.sroa.0212.0 = phi <4 x float> [ %.sroa.0212.12.vec.insert, %bb.am ], [ %.sroa.0212.8.vec.insert, %bb.al ], [ %.sroa.0212.4.vec.insert, %bb.ak ], [ %.sroa.0212.0.vec.insert, %.lr.ph ]
  %.sroa.13210.0 = phi <4 x float> [ %.sroa.13210.44.vec.insert, %bb.am ], [ %.sroa.13210.40.vec.insert, %bb.al ], [ %.sroa.13210.36.vec.insert, %bb.ak ], [ %.sroa.13210.32.vec.insert, %.lr.ph ]
  %.sroa.8208.0 = phi <4 x float> [ %.sroa.8208.28.vec.insert, %bb.am ], [ %.sroa.8208.24.vec.insert, %bb.al ], [ %.sroa.8208.20.vec.insert, %bb.ak ], [ %.sroa.8208.16.vec.insert, %.lr.ph ]
  %.sroa.0206.0 = phi <4 x float> [ %.sroa.0206.12.vec.insert, %bb.am ], [ %.sroa.0206.8.vec.insert, %bb.al ], [ %.sroa.0206.4.vec.insert, %bb.ak ], [ %.sroa.0206.0.vec.insert, %.lr.ph ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %bb.am ], [ %.sroa.13.40.vec.insert, %bb.al ], [ %.sroa.13.36.vec.insert, %bb.ak ], [ %.sroa.13.32.vec.insert, %.lr.ph ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %bb.am ], [ %.sroa.8.24.vec.insert, %bb.al ], [ %.sroa.8.20.vec.insert, %bb.ak ], [ %.sroa.8.16.vec.insert, %.lr.ph ]
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.12.vec.insert, %bb.am ], [ %.sroa.0.8.vec.insert, %bb.al ], [ %.sroa.0.4.vec.insert, %bb.ak ], [ %.sroa.0.0.vec.insert, %.lr.ph ]
  %.lcssa198 = phi i64 [ %i.ns, %bb.am ], [ %i.mg, %bb.al ], [ %i.ku, %bb.ak ], [ %i.ji, %.lr.ph ]
  %i.nt = bitcast <4 x i32> %.sroa.0221.0 to <2 x i64>
  %i.nu = bitcast <4 x i32> %.sroa.0218.0 to <2 x i64>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aj
  %i.nv = phi <2 x i64> [ splat (i64 -1), %bb.aj ], [ %i.nu, %._crit_edge.loopexit ]
  %i.nw = phi <2 x i64> [ splat (i64 -1), %bb.aj ], [ %i.nt, %._crit_edge.loopexit ]
  %i.nx = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.13.0, %._crit_edge.loopexit ]
  %i.ny = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.8.0, %._crit_edge.loopexit ]
  %i.nz = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.0.0, %._crit_edge.loopexit ]
  %i.oa = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.13210.0, %._crit_edge.loopexit ]
  %i.ob = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.8208.0, %._crit_edge.loopexit ]
  %i.oc = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.0206.0, %._crit_edge.loopexit ]
  %i.od = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.13216.0, %._crit_edge.loopexit ]
  %i.oe = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.8214.0, %._crit_edge.loopexit ]
  %i.of = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.0212.0, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.0123, %bb.aj ], [ %.lcssa198, %._crit_edge.loopexit ] ; 2 uses
  store <4 x float> %i.of, ptr %.1.i, align 16
  %i.og = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store <4 x float> %i.oe, ptr %i.og, align 16
  %i.oh = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  store <4 x float> %i.od, ptr %i.oh, align 16
  %i.oi = getelementptr inbounds nuw i8, ptr %.1.i, i64 48
  store <4 x float> %i.oc, ptr %i.oi, align 16
  %i.oj = getelementptr inbounds nuw i8, ptr %.1.i, i64 64
  store <4 x float> %i.ob, ptr %i.oj, align 16
  %i.ok = getelementptr inbounds nuw i8, ptr %.1.i, i64 80
  store <4 x float> %i.oa, ptr %i.ok, align 16
end_hunk_1
begin_hunk_2_@_ZN6embree4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE15RefBuilderSmall15attachBuildRefsEPS5_:_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit
bb.w:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.fp = load i8, ptr %i.ap, align 8, !range !151, !noundef !152
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.x, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit83

bb.x:                                             ; preds = %bb.w
  %i.fr = load ptr, ptr %3, align 8, !nonnull !152, !align !160
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit83 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #26
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit83:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.noexc45

bb.z:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit76
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.fu, %bb.z ], [ %lpad.loopexit.split-lp205, %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

.noexc45:                                         ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit83, %bb.n
  %i.fv = load i64, ptr %i.a, align 8             ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = add i64 %i.fx, %i.fv
  store i64 %i.fy, ptr %i.fw, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 11 uses
  %i.ga = load i64, ptr %i.fz, align 16           ; 3 uses
  %i.gb = sub i64 0, %i.ga
  %i.gc = and i64 %i.gb, 15                       ; 2 uses
  %i.gd = add i64 %i.ga, %i.fv
  %i.ge = add i64 %i.gd, %i.gc                    ; 3 uses
  store i64 %i.ge, ptr %i.fz, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 5 uses
  %i.gg = load i64, ptr %i.gf, align 8
  %.not.i43 = icmp ugt i64 %i.ge, %i.gg
  br i1 %.not.i43, label %bb.ab, label %bb.aa, !prof !158

bb.aa:                                            ; preds = %.noexc45
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 16
  %i.gj = add i64 %i.gi, %i.gc
  store i64 %i.gj, ptr %i.gh, align 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = sub i64 %i.ge, %i.fv
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  br label %bb.aj

bb.ab:                                            ; preds = %.noexc45
  store i64 %i.ga, ptr %i.fz, align 16
  %i.go = shl i64 %i.fv, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 32           ; 2 uses
  %i.gr = icmp ugt i64 %i.go, %i.gq
  br i1 %i.gr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gs = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.gq, ptr %i.b, align 8
  %i.gt = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc47:                                         ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gv = load i64, ptr %i.gf, align 8
  %i.gw = load i64, ptr %i.fz, align 16
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 6 uses
  %i.gz = load i64, ptr %i.gy, align 16
  %i.ha = add i64 %i.gz, %i.gx                    ; 2 uses
  store i64 %i.ha, ptr %i.gy, align 16
  store i64 0, ptr %i.fz, align 16
  %i.hb = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hb, ptr %i.gf, align 8
  %i.hc = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hc, ptr %i.fz, align 16
  %.not23.i = icmp ugt i64 %i.hc, %i.hb
  br i1 %.not23.i, label %bb.af, label %bb.ae, !prof !158

bb.ae:                                            ; preds = %.noexc47
  store i64 %i.ha, ptr %i.gy, align 16
  br label %bb.ai

bb.af:                                            ; preds = %.noexc47
  store i64 0, ptr %i.fz, align 16
  %i.hd = load i64, ptr %i.gp, align 32
  store i64 %i.hd, ptr %i.b, align 8
  %i.he = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc48:                                         ; preds = %bb.af
  store ptr %i.he, ptr %i.gu, align 8
  %i.hf = load i64, ptr %i.gf, align 8
  %i.hg = load i64, ptr %i.fz, align 16
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = load i64, ptr %i.gy, align 16
  %i.hj = add i64 %i.hi, %i.hh                    ; 2 uses
  store i64 %i.hj, ptr %i.gy, align 16
  store i64 0, ptr %i.fz, align 16
  %i.hk = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hk, ptr %i.gf, align 8
  %i.hl = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hl, ptr %i.fz, align 16
  %.not24.i = icmp ugt i64 %i.hl, %i.hk
  br i1 %.not24.i, label %bb.ah, label %bb.ag, !prof !158

bb.ag:                                            ; preds = %.noexc48
  store i64 %i.hj, ptr %i.gy, align 16
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc48
  store i64 0, ptr %i.fz, align 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i44 = phi ptr [ %i.gt, %bb.ae ], [ %i.he, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ac, %bb.aa, %bb.ai
  %.1.i = phi ptr [ %i.gn, %bb.aa ], [ %.0.i44, %bb.ai ], [ %i.gs, %bb.ac ] ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hm = ptrtoint ptr %.1.i to i64
  %i.hn = or i64 %i.hm, 9
  %i.ho = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.hp = load i64, ptr %i.aj, align 8
  %i.hq = load i64, ptr %i.ak, align 16
  %i.hr = sub i64 %i.hp, %i.hq                    ; 4 uses
  %i.hs = icmp ult i64 %.0130, %i.hr
  br i1 %i.hs, label %.noexc65.lr.ph, label %._crit_edge

.noexc65.lr.ph:                                   ; preds = %bb.aj
  %i.ht = load ptr, ptr %i.ae, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 104
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 488
  %i.hx = load ptr, ptr %i.hw, align 8            ; 4 uses
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %.0130 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.ia = load i32, ptr %i.hz, align 4            ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  %i.ic = load i32, ptr %i.ib, align 4            ; 2 uses
  %i.id = zext i32 %i.ia to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8            ; 4 uses
  %i.ig = zext i32 %i.ic to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 88
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 104
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = mul i64 %i.ik, %i.ig
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.il ; 4 uses
  %i.in = load i32, ptr %i.im, align 4
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 144
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !2939 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 160
  %i.is = load i64, ptr %i.ir, align 8, !noalias !2939 ; 4 uses
  %i.it = mul i64 %i.is, %i.io
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.it
  %i.iv = load <4 x float>, ptr %i.iu, align 1, !noalias !2940 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = zext i32 %i.ix to i64
  %i.iz = mul i64 %i.is, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iz
  %i.jb = load <4 x float>, ptr %i.ja, align 1, !noalias !2941 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = zext i32 %i.jd to i64
  %i.jf = mul i64 %i.is, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.jf
  %i.jh = load <4 x float>, ptr %i.jg, align 1, !noalias !2942 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = zext i32 %i.jj to i64
  %i.jl = mul i64 %i.is, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.jl
  %i.jn = load <4 x float>, ptr %i.jm, align 1, !noalias !2943 ; 3 uses
  %.sroa.0236.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ia, i64 0 ; 2 uses
  %.sroa.0233.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ic, i64 0 ; 2 uses
  %.sroa.0227.0.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8229.16.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13231.32.vec.insert = shufflevector <4 x float> %i.iv, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.0221.0.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8223.16.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13225.32.vec.insert = shufflevector <4 x float> %i.jb, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.0215.0.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8217.16.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13219.32.vec.insert = shufflevector <4 x float> %i.jh, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.jn, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> %i.jn, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 4, i32 4> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> %i.jn, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 2, i32 4, i32 4, i32 4> ; 2 uses
  %i.jo = add nuw i64 %.0130, 1                   ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %i.hr
  br i1 %i.jp, label %.noexc65.1, label %._crit_edge.loopexit

.noexc65.1:                                       ; preds = %.noexc65.lr.ph
  %i.jq = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.jo ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  %i.js = load i32, ptr %i.jr, align 4            ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 28
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %i.jv = zext i32 %i.js to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8            ; 4 uses
  %i.jy = zext i32 %i.ju to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 88
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 104
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = mul i64 %i.kc, %i.jy
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kd ; 4 uses
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 144
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !2939 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 160
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !2939 ; 4 uses
  %i.kl = mul i64 %i.kk, %i.kg
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kl
  %i.kn = load <4 x float>, ptr %i.km, align 1, !noalias !2940 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = zext i32 %i.kp to i64
  %i.kr = mul i64 %i.kk, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kr
  %i.kt = load <4 x float>, ptr %i.ks, align 1, !noalias !2941 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = zext i32 %i.kv to i64
  %i.kx = mul i64 %i.kk, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kx
  %i.kz = load <4 x float>, ptr %i.ky, align 1, !noalias !2942 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.lb = load i32, ptr %i.la, align 4
  %i.lc = zext i32 %i.lb to i64
  %i.ld = mul i64 %i.kk, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ld
  %i.lf = load <4 x float>, ptr %i.le, align 1, !noalias !2943 ; 3 uses
  %.sroa.0236.4.vec.insert = insertelement <4 x i32> %.sroa.0236.0.vec.insert, i32 %i.js, i64 1 ; 2 uses
  %.sroa.0233.4.vec.insert = insertelement <4 x i32> %.sroa.0233.0.vec.insert, i32 %i.ju, i64 1 ; 2 uses
  %.sroa.0227.4.vec.insert = shufflevector <4 x float> %.sroa.0227.0.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8229.20.vec.insert = shufflevector <4 x float> %.sroa.8229.16.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13231.36.vec.insert = shufflevector <4 x float> %.sroa.13231.32.vec.insert, <4 x float> %i.kn, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0221.4.vec.insert = shufflevector <4 x float> %.sroa.0221.0.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8223.20.vec.insert = shufflevector <4 x float> %.sroa.8223.16.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13225.36.vec.insert = shufflevector <4 x float> %.sroa.13225.32.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0215.4.vec.insert = shufflevector <4 x float> %.sroa.0215.0.vec.insert, <4 x float> %i.kz, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8217.20.vec.insert = shufflevector <4 x float> %.sroa.8217.16.vec.insert, <4 x float> %i.kz, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13219.36.vec.insert = shufflevector <4 x float> %.sroa.13219.32.vec.insert, <4 x float> %i.kz, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.lf, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.lf, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.lf, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.lg = add nuw i64 %.0130, 2                   ; 3 uses
  %i.lh = icmp ult i64 %i.lg, %i.hr
  br i1 %i.lh, label %.noexc65.2, label %._crit_edge.loopexit

.noexc65.2:                                       ; preds = %.noexc65.1
  %i.li = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.lg ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  %i.lk = load i32, ptr %i.lj, align 4            ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 28
  %i.lm = load i32, ptr %i.ll, align 4            ; 2 uses
  %i.ln = zext i32 %i.lk to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ln
  %i.lp = load ptr, ptr %i.lo, align 8            ; 4 uses
  %i.lq = zext i32 %i.lm to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 88
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 104
  %i.lu = load i64, ptr %i.lt, align 8
  %i.lv = mul i64 %i.lu, %i.lq
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lv ; 4 uses
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 144
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !2939 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lp, i64 160
  %i.mc = load i64, ptr %i.mb, align 8, !noalias !2939 ; 4 uses
  %i.md = mul i64 %i.mc, %i.ly
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.md
  %i.mf = load <4 x float>, ptr %i.me, align 1, !noalias !2940 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = zext i32 %i.mh to i64
  %i.mj = mul i64 %i.mc, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mj
  %i.ml = load <4 x float>, ptr %i.mk, align 1, !noalias !2941 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mn = load i32, ptr %i.mm, align 4
  %i.mo = zext i32 %i.mn to i64
  %i.mp = mul i64 %i.mc, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mp
  %i.mr = load <4 x float>, ptr %i.mq, align 1, !noalias !2942 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = zext i32 %i.mt to i64
  %i.mv = mul i64 %i.mc, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mv
  %i.mx = load <4 x float>, ptr %i.mw, align 1, !noalias !2943 ; 3 uses
  %.sroa.0236.8.vec.insert = insertelement <4 x i32> %.sroa.0236.4.vec.insert, i32 %i.lk, i64 2 ; 2 uses
  %.sroa.0233.8.vec.insert = insertelement <4 x i32> %.sroa.0233.4.vec.insert, i32 %i.lm, i64 2 ; 2 uses
  %.sroa.0227.8.vec.insert = shufflevector <4 x float> %.sroa.0227.4.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8229.24.vec.insert = shufflevector <4 x float> %.sroa.8229.20.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13231.40.vec.insert = shufflevector <4 x float> %.sroa.13231.36.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0221.8.vec.insert = shufflevector <4 x float> %.sroa.0221.4.vec.insert, <4 x float> %i.ml, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8223.24.vec.insert = shufflevector <4 x float> %.sroa.8223.20.vec.insert, <4 x float> %i.ml, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13225.40.vec.insert = shufflevector <4 x float> %.sroa.13225.36.vec.insert, <4 x float> %i.ml, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0215.8.vec.insert = shufflevector <4 x float> %.sroa.0215.4.vec.insert, <4 x float> %i.mr, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8217.24.vec.insert = shufflevector <4 x float> %.sroa.8217.20.vec.insert, <4 x float> %i.mr, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13219.40.vec.insert = shufflevector <4 x float> %.sroa.13219.36.vec.insert, <4 x float> %i.mr, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.my = add nuw i64 %.0130, 3                   ; 3 uses
  %i.mz = icmp ult i64 %i.my, %i.hr
  br i1 %i.mz, label %.noexc65.3, label %._crit_edge.loopexit

.noexc65.3:                                       ; preds = %.noexc65.2
  %i.na = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.my ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  %i.nc = load i32, ptr %i.nb, align 4            ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 28
  %i.ne = load i32, ptr %i.nd, align 4            ; 2 uses
  %i.nf = zext i32 %i.nc to i64
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.nf
  %i.nh = load ptr, ptr %i.ng, align 8            ; 4 uses
  %i.ni = zext i32 %i.ne to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 88
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 104
  %i.nm = load i64, ptr %i.nl, align 8
  %i.nn = mul i64 %i.nm, %i.ni
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nn ; 4 uses
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nh, i64 144
  %i.ns = load ptr, ptr %i.nr, align 8, !noalias !2939 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 160
  %i.nu = load i64, ptr %i.nt, align 8, !noalias !2939 ; 4 uses
  %i.nv = mul i64 %i.nu, %i.nq
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nv
  %i.nx = load <4 x float>, ptr %i.nw, align 1, !noalias !2940 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = zext i32 %i.nz to i64
  %i.ob = mul i64 %i.nu, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ob
  %i.od = load <4 x float>, ptr %i.oc, align 1, !noalias !2941 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.of = load i32, ptr %i.oe, align 4
  %i.og = zext i32 %i.of to i64
  %i.oh = mul i64 %i.nu, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.oh
  %i.oj = load <4 x float>, ptr %i.oi, align 1, !noalias !2942 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.ol = load i32, ptr %i.ok, align 4
  %i.om = zext i32 %i.ol to i64
  %i.on = mul i64 %i.nu, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.on
  %i.op = load <4 x float>, ptr %i.oo, align 1, !noalias !2943 ; 3 uses
  %.sroa.0236.12.vec.insert = insertelement <4 x i32> %.sroa.0236.8.vec.insert, i32 %i.nc, i64 3
  %.sroa.0233.12.vec.insert = insertelement <4 x i32> %.sroa.0233.8.vec.insert, i32 %i.ne, i64 3
  %.sroa.0227.12.vec.insert = shufflevector <4 x float> %.sroa.0227.8.vec.insert, <4 x float> %i.nx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8229.28.vec.insert = shufflevector <4 x float> %.sroa.8229.24.vec.insert, <4 x float> %i.nx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13231.44.vec.insert = shufflevector <4 x float> %.sroa.13231.40.vec.insert, <4 x float> %i.nx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0221.12.vec.insert = shufflevector <4 x float> %.sroa.0221.8.vec.insert, <4 x float> %i.od, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8223.28.vec.insert = shufflevector <4 x float> %.sroa.8223.24.vec.insert, <4 x float> %i.od, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13225.44.vec.insert = shufflevector <4 x float> %.sroa.13225.40.vec.insert, <4 x float> %i.od, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0215.12.vec.insert = shufflevector <4 x float> %.sroa.0215.8.vec.insert, <4 x float> %i.oj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8217.28.vec.insert = shufflevector <4 x float> %.sroa.8217.24.vec.insert, <4 x float> %i.oj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13219.44.vec.insert = shufflevector <4 x float> %.sroa.13219.40.vec.insert, <4 x float> %i.oj, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.op, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.op, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.op, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.oq = add nuw i64 %.0130, 4
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.noexc65.3, %.noexc65.2, %.noexc65.1, %.noexc65.lr.ph
  %.sroa.0236.0 = phi <4 x i32> [ %.sroa.0236.12.vec.insert, %.noexc65.3 ], [ %.sroa.0236.8.vec.insert, %.noexc65.2 ], [ %.sroa.0236.4.vec.insert, %.noexc65.1 ], [ %.sroa.0236.0.vec.insert, %.noexc65.lr.ph ]
  %.sroa.0233.0 = phi <4 x i32> [ %.sroa.0233.12.vec.insert, %.noexc65.3 ], [ %.sroa.0233.8.vec.insert, %.noexc65.2 ], [ %.sroa.0233.4.vec.insert, %.noexc65.1 ], [ %.sroa.0233.0.vec.insert, %.noexc65.lr.ph ]
  %.sroa.13231.0 = phi <4 x float> [ %.sroa.13231.44.vec.insert, %.noexc65.3 ], [ %.sroa.13231.40.vec.insert, %.noexc65.2 ], [ %.sroa.13231.36.vec.insert, %.noexc65.1 ], [ %.sroa.13231.32.vec.insert, %.noexc65.lr.ph ]
  %.sroa.8229.0 = phi <4 x float> [ %.sroa.8229.28.vec.insert, %.noexc65.3 ], [ %.sroa.8229.24.vec.insert, %.noexc65.2 ], [ %.sroa.8229.20.vec.insert, %.noexc65.1 ], [ %.sroa.8229.16.vec.insert, %.noexc65.lr.ph ]
  %.sroa.0227.0 = phi <4 x float> [ %.sroa.0227.12.vec.insert, %.noexc65.3 ], [ %.sroa.0227.8.vec.insert, %.noexc65.2 ], [ %.sroa.0227.4.vec.insert, %.noexc65.1 ], [ %.sroa.0227.0.vec.insert, %.noexc65.lr.ph ]
  %.sroa.13225.0 = phi <4 x float> [ %.sroa.13225.44.vec.insert, %.noexc65.3 ], [ %.sroa.13225.40.vec.insert, %.noexc65.2 ], [ %.sroa.13225.36.vec.insert, %.noexc65.1 ], [ %.sroa.13225.32.vec.insert, %.noexc65.lr.ph ]
  %.sroa.8223.0 = phi <4 x float> [ %.sroa.8223.28.vec.insert, %.noexc65.3 ], [ %.sroa.8223.24.vec.insert, %.noexc65.2 ], [ %.sroa.8223.20.vec.insert, %.noexc65.1 ], [ %.sroa.8223.16.vec.insert, %.noexc65.lr.ph ]
  %.sroa.0221.0 = phi <4 x float> [ %.sroa.0221.12.vec.insert, %.noexc65.3 ], [ %.sroa.0221.8.vec.insert, %.noexc65.2 ], [ %.sroa.0221.4.vec.insert, %.noexc65.1 ], [ %.sroa.0221.0.vec.insert, %.noexc65.lr.ph ]
  %.sroa.13219.0 = phi <4 x float> [ %.sroa.13219.44.vec.insert, %.noexc65.3 ], [ %.sroa.13219.40.vec.insert, %.noexc65.2 ], [ %.sroa.13219.36.vec.insert, %.noexc65.1 ], [ %.sroa.13219.32.vec.insert, %.noexc65.lr.ph ]
  %.sroa.8217.0 = phi <4 x float> [ %.sroa.8217.28.vec.insert, %.noexc65.3 ], [ %.sroa.8217.24.vec.insert, %.noexc65.2 ], [ %.sroa.8217.20.vec.insert, %.noexc65.1 ], [ %.sroa.8217.16.vec.insert, %.noexc65.lr.ph ]
  %.sroa.0215.0 = phi <4 x float> [ %.sroa.0215.12.vec.insert, %.noexc65.3 ], [ %.sroa.0215.8.vec.insert, %.noexc65.2 ], [ %.sroa.0215.4.vec.insert, %.noexc65.1 ], [ %.sroa.0215.0.vec.insert, %.noexc65.lr.ph ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %.noexc65.3 ], [ %.sroa.13.40.vec.insert, %.noexc65.2 ], [ %.sroa.13.36.vec.insert, %.noexc65.1 ], [ %.sroa.13.32.vec.insert, %.noexc65.lr.ph ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %.noexc65.3 ], [ %.sroa.8.24.vec.insert, %.noexc65.2 ], [ %.sroa.8.20.vec.insert, %.noexc65.1 ], [ %.sroa.8.16.vec.insert, %.noexc65.lr.ph ]
end_hunk_2
