Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_twolevel?download=true
inline.NumInlined: 11316
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN6embree4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE15RefBuilderSmall15attachBuildRefsEPS5_:_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #26
  unreachable

bb.w:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.fo = load i8, ptr %i.ap, align 8, !range !151, !noundef !152
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.x, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit143

bb.x:                                             ; preds = %bb.w
  %i.fq = load ptr, ptr %3, align 8, !nonnull !152, !align !160
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit143 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #26
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit143:       ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.noexc65

bb.z:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit136
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %.loopexit.split-lp183.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.ft, %bb.z ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp183.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

.noexc65:                                         ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit143, %bb.n
  %i.fu = load i64, ptr %i.a, align 8             ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = add i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %i.fv, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 11 uses
  %i.fz = load i64, ptr %i.fy, align 16           ; 3 uses
  %i.ga = sub i64 0, %i.fz
  %i.gb = and i64 %i.ga, 15                       ; 2 uses
  %i.gc = add i64 %i.fz, %i.fu
  %i.gd = add i64 %i.gc, %i.gb                    ; 3 uses
  store i64 %i.gd, ptr %i.fy, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 5 uses
  %i.gf = load i64, ptr %i.ge, align 8
  %.not.i63 = icmp ugt i64 %i.gd, %i.gf
  br i1 %.not.i63, label %bb.ab, label %bb.aa, !prof !158

bb.aa:                                            ; preds = %.noexc65
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = add i64 %i.gh, %i.gb
  store i64 %i.gi, ptr %i.gg, align 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = sub i64 %i.gd, %i.fu
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  br label %.noexc47

bb.ab:                                            ; preds = %.noexc65
  store i64 %i.fz, ptr %i.fy, align 16
  %i.gn = shl i64 %i.fu, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 32           ; 2 uses
  %i.gq = icmp ugt i64 %i.gn, %i.gp
  br i1 %i.gq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gr = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.gp, ptr %i.b, align 8
  %i.gs = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc67:                                         ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store ptr %i.gs, ptr %i.gt, align 8
  %i.gu = load i64, ptr %i.ge, align 8
  %i.gv = load i64, ptr %i.fy, align 16
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 6 uses
  %i.gy = load i64, ptr %i.gx, align 16
  %i.gz = add i64 %i.gy, %i.gw                    ; 2 uses
  store i64 %i.gz, ptr %i.gx, align 16
  store i64 0, ptr %i.fy, align 16
  %i.ha = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ha, ptr %i.ge, align 8
  %i.hb = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hb, ptr %i.fy, align 16
  %.not23.i = icmp ugt i64 %i.hb, %i.ha
  br i1 %.not23.i, label %bb.af, label %bb.ae, !prof !158

bb.ae:                                            ; preds = %.noexc67
  store i64 %i.gz, ptr %i.gx, align 16
  br label %bb.ai

bb.af:                                            ; preds = %.noexc67
  store i64 0, ptr %i.fy, align 16
  %i.hc = load i64, ptr %i.go, align 32
  store i64 %i.hc, ptr %i.b, align 8
  %i.hd = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc68:                                         ; preds = %bb.af
  store ptr %i.hd, ptr %i.gt, align 8
  %i.he = load i64, ptr %i.ge, align 8
  %i.hf = load i64, ptr %i.fy, align 16
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = load i64, ptr %i.gx, align 16
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  store i64 %i.hi, ptr %i.gx, align 16
  store i64 0, ptr %i.fy, align 16
  %i.hj = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hj, ptr %i.ge, align 8
  %i.hk = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hk, ptr %i.fy, align 16
  %.not24.i = icmp ugt i64 %i.hk, %i.hj
  br i1 %.not24.i, label %bb.ah, label %bb.ag, !prof !158

bb.ag:                                            ; preds = %.noexc68
  store i64 %i.hi, ptr %i.gx, align 16
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc68
  store i64 0, ptr %i.fy, align 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i64 = phi ptr [ %i.gs, %bb.ae ], [ %i.hd, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.noexc47

.noexc47:                                         ; preds = %bb.ac, %bb.aa, %bb.ai
  %.1.i = phi ptr [ %i.gm, %bb.aa ], [ %.0.i64, %bb.ai ], [ %i.gr, %bb.ac ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hl = ptrtoint ptr %.1.i to i64
  %i.hm = or i64 %i.hl, 9
  %i.hn = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.ho = load i64, ptr %i.aj, align 8
  %i.hp = load i64, ptr %i.ak, align 16
  %i.hq = sub i64 %i.ho, %i.hp                    ; 4 uses
  %i.hr = icmp ult i64 %.0194, %i.hq
  br i1 %i.hr, label %.noexc53.lr.ph, label %._crit_edge

.noexc53.lr.ph:                                   ; preds = %.noexc47
  %i.hs = load ptr, ptr %i.ae, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 104
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 488
  %i.hw = load ptr, ptr %i.hv, align 8            ; 4 uses
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %.0194 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.hz = load i32, ptr %i.hy, align 4            ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 28
  %i.ib = load i32, ptr %i.ia, align 4            ; 2 uses
  %i.ic = zext i32 %i.hz to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8            ; 4 uses
  %i.if = zext i32 %i.ib to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 88
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 104
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = mul i64 %i.ij, %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik ; 3 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 144
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !259 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 160
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !259 ; 3 uses
  %i.is = mul i64 %i.ir, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.is
  %i.iu = load <4 x float>, ptr %i.it, align 1, !noalias !260 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul i64 %i.ir, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iy
  %i.ja = load <4 x float>, ptr %i.iz, align 1, !noalias !261 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = zext i32 %i.jc to i64
  %i.je = mul i64 %i.ir, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.je
  %i.jg = load <4 x float>, ptr %i.jf, align 1, !noalias !262 ; 3 uses
  %.sroa.0291.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.hz, i64 0 ; 2 uses
  %.sroa.0288.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ib, i64 0 ; 2 uses
  %.sroa.0282.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8284.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13286.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0276.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8278.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13280.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %i.jh = add nuw i64 %.0194, 1                   ; 3 uses
  %i.ji = icmp ult i64 %i.jh, %i.hq
  br i1 %i.ji, label %.noexc53.1, label %._crit_edge.loopexit

.noexc53.1:                                       ; preds = %.noexc53.lr.ph
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.jh ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  %i.jl = load i32, ptr %i.jk, align 4            ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 28
  %i.jn = load i32, ptr %i.jm, align 4            ; 2 uses
  %i.jo = zext i32 %i.jl to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8            ; 4 uses
  %i.jr = zext i32 %i.jn to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 88
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 104
  %i.jv = load i64, ptr %i.ju, align 8
  %i.jw = mul i64 %i.jv, %i.jr
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jw ; 3 uses
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jq, i64 144
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !259 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jq, i64 160
  %i.kd = load i64, ptr %i.kc, align 8, !noalias !259 ; 3 uses
  %i.ke = mul i64 %i.kd, %i.jz
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ke
  %i.kg = load <4 x float>, ptr %i.kf, align 1, !noalias !260 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = zext i32 %i.ki to i64
  %i.kk = mul i64 %i.kd, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kk
  %i.km = load <4 x float>, ptr %i.kl, align 1, !noalias !261 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = zext i32 %i.ko to i64
  %i.kq = mul i64 %i.kd, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kq
  %i.ks = load <4 x float>, ptr %i.kr, align 1, !noalias !262 ; 3 uses
  %.sroa.0291.4.vec.insert = insertelement <4 x i32> %.sroa.0291.0.vec.insert, i32 %i.jl, i64 1 ; 2 uses
  %.sroa.0288.4.vec.insert = insertelement <4 x i32> %.sroa.0288.0.vec.insert, i32 %i.jn, i64 1 ; 2 uses
  %.sroa.0282.4.vec.insert = shufflevector <4 x float> %.sroa.0282.0.vec.insert, <4 x float> %i.kg, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8284.20.vec.insert = shufflevector <4 x float> %.sroa.8284.16.vec.insert, <4 x float> %i.kg, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13286.36.vec.insert = shufflevector <4 x float> %.sroa.13286.32.vec.insert, <4 x float> %i.kg, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0276.4.vec.insert = shufflevector <4 x float> %.sroa.0276.0.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8278.20.vec.insert = shufflevector <4 x float> %.sroa.8278.16.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13280.36.vec.insert = shufflevector <4 x float> %.sroa.13280.32.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.kt = add nuw i64 %.0194, 2                   ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %i.hq
  br i1 %i.ku, label %.noexc53.2, label %._crit_edge.loopexit

.noexc53.2:                                       ; preds = %.noexc53.1
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.kt ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i32, ptr %i.kw, align 4            ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 28
  %i.kz = load i32, ptr %i.ky, align 4            ; 2 uses
  %i.la = zext i32 %i.kx to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8            ; 4 uses
  %i.ld = zext i32 %i.kz to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 88
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 104
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = mul i64 %i.lh, %i.ld
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.li ; 3 uses
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 144
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !259 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 160
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !259 ; 3 uses
  %i.lq = mul i64 %i.lp, %i.ll
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lq
  %i.ls = load <4 x float>, ptr %i.lr, align 1, !noalias !260 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = zext i32 %i.lu to i64
  %i.lw = mul i64 %i.lp, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lw
  %i.ly = load <4 x float>, ptr %i.lx, align 1, !noalias !261 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = zext i32 %i.ma to i64
  %i.mc = mul i64 %i.lp, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.mc
  %i.me = load <4 x float>, ptr %i.md, align 1, !noalias !262 ; 3 uses
  %.sroa.0291.8.vec.insert = insertelement <4 x i32> %.sroa.0291.4.vec.insert, i32 %i.kx, i64 2 ; 2 uses
  %.sroa.0288.8.vec.insert = insertelement <4 x i32> %.sroa.0288.4.vec.insert, i32 %i.kz, i64 2 ; 2 uses
  %.sroa.0282.8.vec.insert = shufflevector <4 x float> %.sroa.0282.4.vec.insert, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8284.24.vec.insert = shufflevector <4 x float> %.sroa.8284.20.vec.insert, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13286.40.vec.insert = shufflevector <4 x float> %.sroa.13286.36.vec.insert, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0276.8.vec.insert = shufflevector <4 x float> %.sroa.0276.4.vec.insert, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8278.24.vec.insert = shufflevector <4 x float> %.sroa.8278.20.vec.insert, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13280.40.vec.insert = shufflevector <4 x float> %.sroa.13280.36.vec.insert, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.mf = add nuw i64 %.0194, 3                   ; 3 uses
  %i.mg = icmp ult i64 %i.mf, %i.hq
  br i1 %i.mg, label %.noexc53.3, label %._crit_edge.loopexit

.noexc53.3:                                       ; preds = %.noexc53.2
  %i.mh = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.mf ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  %i.mj = load i32, ptr %i.mi, align 4            ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 28
  %i.ml = load i32, ptr %i.mk, align 4            ; 2 uses
  %i.mm = zext i32 %i.mj to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.mm
  %i.mo = load ptr, ptr %i.mn, align 8            ; 4 uses
  %i.mp = zext i32 %i.ml to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 88
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 104
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = mul i64 %i.mt, %i.mp
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mu ; 3 uses
  %i.mw = load i32, ptr %i.mv, align 4
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 144
  %i.mz = load ptr, ptr %i.my, align 8, !noalias !259 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 160
  %i.nb = load i64, ptr %i.na, align 8, !noalias !259 ; 3 uses
  %i.nc = mul i64 %i.nb, %i.mx
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nc
  %i.ne = load <4 x float>, ptr %i.nd, align 1, !noalias !260 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = zext i32 %i.ng to i64
  %i.ni = mul i64 %i.nb, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.ni
  %i.nk = load <4 x float>, ptr %i.nj, align 1, !noalias !261 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = zext i32 %i.nm to i64
  %i.no = mul i64 %i.nb, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.no
  %i.nq = load <4 x float>, ptr %i.np, align 1, !noalias !262 ; 3 uses
  %.sroa.0291.12.vec.insert = insertelement <4 x i32> %.sroa.0291.8.vec.insert, i32 %i.mj, i64 3
  %.sroa.0288.12.vec.insert = insertelement <4 x i32> %.sroa.0288.8.vec.insert, i32 %i.ml, i64 3
  %.sroa.0282.12.vec.insert = shufflevector <4 x float> %.sroa.0282.8.vec.insert, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8284.28.vec.insert = shufflevector <4 x float> %.sroa.8284.24.vec.insert, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13286.44.vec.insert = shufflevector <4 x float> %.sroa.13286.40.vec.insert, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0276.12.vec.insert = shufflevector <4 x float> %.sroa.0276.8.vec.insert, <4 x float> %i.nk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8278.28.vec.insert = shufflevector <4 x float> %.sroa.8278.24.vec.insert, <4 x float> %i.nk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13280.44.vec.insert = shufflevector <4 x float> %.sroa.13280.40.vec.insert, <4 x float> %i.nk, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.nr = add nuw i64 %.0194, 4
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
  %.lcssa268 = phi i64 [ %i.nr, %.noexc53.3 ], [ %i.mf, %.noexc53.2 ], [ %i.kt, %.noexc53.1 ], [ %i.jh, %.noexc53.lr.ph ]
  %i.ns = bitcast <4 x i32> %.sroa.0291.0 to <2 x i64>
  %i.nt = bitcast <4 x i32> %.sroa.0288.0 to <2 x i64>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc47
  %i.nu = phi <2 x i64> [ splat (i64 -1), %.noexc47 ], [ %i.nt, %._crit_edge.loopexit ]
  %i.nv = phi <2 x i64> [ splat (i64 -1), %.noexc47 ], [ %i.ns, %._crit_edge.loopexit ]
  %i.nw = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.13.0, %._crit_edge.loopexit ]
  %i.nx = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.8.0, %._crit_edge.loopexit ]
  %i.ny = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.0.0, %._crit_edge.loopexit ]
  %i.nz = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.13280.0, %._crit_edge.loopexit ]
  %i.oa = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.8278.0, %._crit_edge.loopexit ]
  %i.ob = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.0276.0, %._crit_edge.loopexit ]
  %i.oc = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.13286.0, %._crit_edge.loopexit ] ; 3 uses
  %i.od = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.8284.0, %._crit_edge.loopexit ] ; 3 uses
  %i.oe = phi <4 x float> [ zeroinitializer, %.noexc47 ], [ %.sroa.0282.0, %._crit_edge.loopexit ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0194, %.noexc47 ], [ %.lcssa268, %._crit_edge.loopexit ] ; 2 uses
  %i.of = fsub <4 x float> %i.oe, %i.ob
  %i.og = fsub <4 x float> %i.od, %i.oa
  %i.oh = fsub <4 x float> %i.oc, %i.nz
  %i.oi = fsub <4 x float> %i.ny, %i.oe
  %i.oj = fsub <4 x float> %i.nx, %i.od
  %i.ok = fsub <4 x float> %i.nw, %i.oc
  store <4 x float> %i.oe, ptr %.1.i, align 16
  %i.ol = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store <4 x float> %i.od, ptr %i.ol, align 16
  %i.om = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  store <4 x float> %i.oc, ptr %i.om, align 16
end_hunk_0
begin_hunk_1_@_ZN6embree4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE15RefBuilderSmall15attachBuildRefsEPS5_:_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #26
  unreachable

bb.w:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.fo = load i8, ptr %i.ap, align 8, !range !151, !noundef !152
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.x, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit78

bb.x:                                             ; preds = %bb.w
  %i.fq = load ptr, ptr %3, align 8, !nonnull !152, !align !160
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit78 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #26
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit78:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.noexc47

bb.z:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit71
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.body56:                                          ; preds = %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.ft, %bb.z ], [ %lpad.loopexit.split-lp196, %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

.noexc47:                                         ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit78, %bb.n
  %i.fu = load i64, ptr %i.a, align 8             ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = add i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %i.fv, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 11 uses
  %i.fz = load i64, ptr %i.fy, align 16           ; 3 uses
  %i.ga = sub i64 0, %i.fz
  %i.gb = and i64 %i.ga, 15                       ; 2 uses
  %i.gc = add i64 %i.fz, %i.fu
  %i.gd = add i64 %i.gc, %i.gb                    ; 3 uses
  store i64 %i.gd, ptr %i.fy, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 5 uses
  %i.gf = load i64, ptr %i.ge, align 8
  %.not.i45 = icmp ugt i64 %i.gd, %i.gf
  br i1 %.not.i45, label %bb.ab, label %bb.aa, !prof !158

bb.aa:                                            ; preds = %.noexc47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = add i64 %i.gh, %i.gb
  store i64 %i.gi, ptr %i.gg, align 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = sub i64 %i.gd, %i.fu
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  br label %bb.aj

bb.ab:                                            ; preds = %.noexc47
  store i64 %i.fz, ptr %i.fy, align 16
  %i.gn = shl i64 %i.fu, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 32           ; 2 uses
  %i.gq = icmp ugt i64 %i.gn, %i.gp
  br i1 %i.gq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gr = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.gp, ptr %i.b, align 8
  %i.gs = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store ptr %i.gs, ptr %i.gt, align 8
  %i.gu = load i64, ptr %i.ge, align 8
  %i.gv = load i64, ptr %i.fy, align 16
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 6 uses
  %i.gy = load i64, ptr %i.gx, align 16
  %i.gz = add i64 %i.gy, %i.gw                    ; 2 uses
  store i64 %i.gz, ptr %i.gx, align 16
  store i64 0, ptr %i.fy, align 16
  %i.ha = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ha, ptr %i.ge, align 8
  %i.hb = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hb, ptr %i.fy, align 16
  %.not23.i = icmp ugt i64 %i.hb, %i.ha
  br i1 %.not23.i, label %bb.af, label %bb.ae, !prof !158

bb.ae:                                            ; preds = %.noexc49
  store i64 %i.gz, ptr %i.gx, align 16
  br label %bb.ai

bb.af:                                            ; preds = %.noexc49
  store i64 0, ptr %i.fy, align 16
  %i.hc = load i64, ptr %i.go, align 32
  store i64 %i.hc, ptr %i.b, align 8
  %i.hd = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc50:                                         ; preds = %bb.af
  store ptr %i.hd, ptr %i.gt, align 8
  %i.he = load i64, ptr %i.ge, align 8
  %i.hf = load i64, ptr %i.fy, align 16
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = load i64, ptr %i.gx, align 16
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  store i64 %i.hi, ptr %i.gx, align 16
  store i64 0, ptr %i.fy, align 16
  %i.hj = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hj, ptr %i.ge, align 8
  %i.hk = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hk, ptr %i.fy, align 16
  %.not24.i = icmp ugt i64 %i.hk, %i.hj
  br i1 %.not24.i, label %bb.ah, label %bb.ag, !prof !158

bb.ag:                                            ; preds = %.noexc50
  store i64 %i.hi, ptr %i.gx, align 16
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc50
  store i64 0, ptr %i.fy, align 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i46 = phi ptr [ %i.gs, %bb.ae ], [ %i.hd, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ac, %bb.aa, %bb.ai
  %.1.i = phi ptr [ %i.gm, %bb.aa ], [ %.0.i46, %bb.ai ], [ %i.gr, %bb.ac ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hl = ptrtoint ptr %.1.i to i64
  %i.hm = or i64 %i.hl, 9
  %i.hn = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.ho = load i64, ptr %i.aj, align 8
  %i.hp = load i64, ptr %i.ak, align 16
  %i.hq = sub i64 %i.ho, %i.hp                    ; 4 uses
  %i.hr = icmp ult i64 %.0123, %i.hq
  br i1 %i.hr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aj
  %i.hs = load ptr, ptr %i.ae, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 104
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 488
  %i.hw = load ptr, ptr %i.hv, align 8            ; 4 uses
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %.0123 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.hz = load i32, ptr %i.hy, align 4            ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 28
  %i.ib = load i32, ptr %i.ia, align 4            ; 2 uses
  %i.ic = zext i32 %i.hz to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8            ; 4 uses
  %i.if = zext i32 %i.ib to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 88
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 104
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = mul i64 %i.ij, %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik ; 3 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 144
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !1163 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 160
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !1163 ; 3 uses
  %i.is = mul i64 %i.ir, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.is
  %i.iu = load <4 x float>, ptr %i.it, align 1, !noalias !1164 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul i64 %i.ir, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iy
  %i.ja = load <4 x float>, ptr %i.iz, align 1, !noalias !1165 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = zext i32 %i.jc to i64
  %i.je = mul i64 %i.ir, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.je
  %i.jg = load <4 x float>, ptr %i.jf, align 1, !noalias !1166 ; 3 uses
  %.sroa.0221.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.hz, i64 0 ; 2 uses
  %.sroa.0218.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ib, i64 0 ; 2 uses
  %.sroa.0212.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8214.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13216.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0206.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8208.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13210.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %i.jh = add nuw i64 %.0123, 1                   ; 3 uses
  %i.ji = icmp ult i64 %i.jh, %i.hq
  br i1 %i.ji, label %bb.ak, label %._crit_edge.loopexit

bb.ak:                                            ; preds = %.lr.ph
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.jh ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  %i.jl = load i32, ptr %i.jk, align 4            ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 28
  %i.jn = load i32, ptr %i.jm, align 4            ; 2 uses
  %i.jo = zext i32 %i.jl to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8            ; 4 uses
  %i.jr = zext i32 %i.jn to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 88
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 104
  %i.jv = load i64, ptr %i.ju, align 8
  %i.jw = mul i64 %i.jv, %i.jr
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jw ; 3 uses
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jq, i64 144
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !1163 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jq, i64 160
  %i.kd = load i64, ptr %i.kc, align 8, !noalias !1163 ; 3 uses
  %i.ke = mul i64 %i.kd, %i.jz
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ke
  %i.kg = load <4 x float>, ptr %i.kf, align 1, !noalias !1164 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = zext i32 %i.ki to i64
  %i.kk = mul i64 %i.kd, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kk
  %i.km = load <4 x float>, ptr %i.kl, align 1, !noalias !1165 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = zext i32 %i.ko to i64
  %i.kq = mul i64 %i.kd, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kq
  %i.ks = load <4 x float>, ptr %i.kr, align 1, !noalias !1166 ; 3 uses
  %.sroa.0221.4.vec.insert = insertelement <4 x i32> %.sroa.0221.0.vec.insert, i32 %i.jl, i64 1 ; 2 uses
  %.sroa.0218.4.vec.insert = insertelement <4 x i32> %.sroa.0218.0.vec.insert, i32 %i.jn, i64 1 ; 2 uses
  %.sroa.0212.4.vec.insert = shufflevector <4 x float> %.sroa.0212.0.vec.insert, <4 x float> %i.kg, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8214.20.vec.insert = shufflevector <4 x float> %.sroa.8214.16.vec.insert, <4 x float> %i.kg, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13216.36.vec.insert = shufflevector <4 x float> %.sroa.13216.32.vec.insert, <4 x float> %i.kg, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0206.4.vec.insert = shufflevector <4 x float> %.sroa.0206.0.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8208.20.vec.insert = shufflevector <4 x float> %.sroa.8208.16.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13210.36.vec.insert = shufflevector <4 x float> %.sroa.13210.32.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.kt = add nuw i64 %.0123, 2                   ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %i.hq
  br i1 %i.ku, label %bb.al, label %._crit_edge.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.kt ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i32, ptr %i.kw, align 4            ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 28
  %i.kz = load i32, ptr %i.ky, align 4            ; 2 uses
  %i.la = zext i32 %i.kx to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8            ; 4 uses
  %i.ld = zext i32 %i.kz to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 88
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 104
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = mul i64 %i.lh, %i.ld
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.li ; 3 uses
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 144
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !1163 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 160
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !1163 ; 3 uses
  %i.lq = mul i64 %i.lp, %i.ll
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lq
  %i.ls = load <4 x float>, ptr %i.lr, align 1, !noalias !1164 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = zext i32 %i.lu to i64
  %i.lw = mul i64 %i.lp, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lw
  %i.ly = load <4 x float>, ptr %i.lx, align 1, !noalias !1165 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = zext i32 %i.ma to i64
  %i.mc = mul i64 %i.lp, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.mc
  %i.me = load <4 x float>, ptr %i.md, align 1, !noalias !1166 ; 3 uses
  %.sroa.0221.8.vec.insert = insertelement <4 x i32> %.sroa.0221.4.vec.insert, i32 %i.kx, i64 2 ; 2 uses
  %.sroa.0218.8.vec.insert = insertelement <4 x i32> %.sroa.0218.4.vec.insert, i32 %i.kz, i64 2 ; 2 uses
  %.sroa.0212.8.vec.insert = shufflevector <4 x float> %.sroa.0212.4.vec.insert, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8214.24.vec.insert = shufflevector <4 x float> %.sroa.8214.20.vec.insert, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13216.40.vec.insert = shufflevector <4 x float> %.sroa.13216.36.vec.insert, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0206.8.vec.insert = shufflevector <4 x float> %.sroa.0206.4.vec.insert, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8208.24.vec.insert = shufflevector <4 x float> %.sroa.8208.20.vec.insert, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13210.40.vec.insert = shufflevector <4 x float> %.sroa.13210.36.vec.insert, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.mf = add nuw i64 %.0123, 3                   ; 3 uses
  %i.mg = icmp ult i64 %i.mf, %i.hq
  br i1 %i.mg, label %bb.am, label %._crit_edge.loopexit

bb.am:                                            ; preds = %bb.al
  %i.mh = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.mf ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  %i.mj = load i32, ptr %i.mi, align 4            ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 28
  %i.ml = load i32, ptr %i.mk, align 4            ; 2 uses
  %i.mm = zext i32 %i.mj to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.mm
  %i.mo = load ptr, ptr %i.mn, align 8            ; 4 uses
  %i.mp = zext i32 %i.ml to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 88
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 104
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = mul i64 %i.mt, %i.mp
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mu ; 3 uses
  %i.mw = load i32, ptr %i.mv, align 4
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 144
  %i.mz = load ptr, ptr %i.my, align 8, !noalias !1163 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 160
  %i.nb = load i64, ptr %i.na, align 8, !noalias !1163 ; 3 uses
  %i.nc = mul i64 %i.nb, %i.mx
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nc
  %i.ne = load <4 x float>, ptr %i.nd, align 1, !noalias !1164 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = zext i32 %i.ng to i64
  %i.ni = mul i64 %i.nb, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.ni
  %i.nk = load <4 x float>, ptr %i.nj, align 1, !noalias !1165 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = zext i32 %i.nm to i64
  %i.no = mul i64 %i.nb, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.no
  %i.nq = load <4 x float>, ptr %i.np, align 1, !noalias !1166 ; 3 uses
  %.sroa.0221.12.vec.insert = insertelement <4 x i32> %.sroa.0221.8.vec.insert, i32 %i.mj, i64 3
  %.sroa.0218.12.vec.insert = insertelement <4 x i32> %.sroa.0218.8.vec.insert, i32 %i.ml, i64 3
  %.sroa.0212.12.vec.insert = shufflevector <4 x float> %.sroa.0212.8.vec.insert, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8214.28.vec.insert = shufflevector <4 x float> %.sroa.8214.24.vec.insert, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13216.44.vec.insert = shufflevector <4 x float> %.sroa.13216.40.vec.insert, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0206.12.vec.insert = shufflevector <4 x float> %.sroa.0206.8.vec.insert, <4 x float> %i.nk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8208.28.vec.insert = shufflevector <4 x float> %.sroa.8208.24.vec.insert, <4 x float> %i.nk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13210.44.vec.insert = shufflevector <4 x float> %.sroa.13210.40.vec.insert, <4 x float> %i.nk, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.nr = add nuw i64 %.0123, 4
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
  %.lcssa198 = phi i64 [ %i.nr, %bb.am ], [ %i.mf, %bb.al ], [ %i.kt, %bb.ak ], [ %i.jh, %.lr.ph ]
  %i.ns = bitcast <4 x i32> %.sroa.0221.0 to <2 x i64>
  %i.nt = bitcast <4 x i32> %.sroa.0218.0 to <2 x i64>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aj
  %i.nu = phi <2 x i64> [ splat (i64 -1), %bb.aj ], [ %i.nt, %._crit_edge.loopexit ]
  %i.nv = phi <2 x i64> [ splat (i64 -1), %bb.aj ], [ %i.ns, %._crit_edge.loopexit ]
  %i.nw = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.13.0, %._crit_edge.loopexit ]
  %i.nx = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.8.0, %._crit_edge.loopexit ]
  %i.ny = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.0.0, %._crit_edge.loopexit ]
  %i.nz = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.13210.0, %._crit_edge.loopexit ]
  %i.oa = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.8208.0, %._crit_edge.loopexit ]
  %i.ob = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.0206.0, %._crit_edge.loopexit ]
  %i.oc = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.13216.0, %._crit_edge.loopexit ]
  %i.od = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.8214.0, %._crit_edge.loopexit ]
  %i.oe = phi <4 x float> [ zeroinitializer, %bb.aj ], [ %.sroa.0212.0, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.0123, %bb.aj ], [ %.lcssa198, %._crit_edge.loopexit ] ; 2 uses
  store <4 x float> %i.oe, ptr %.1.i, align 16
  %i.of = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store <4 x float> %i.od, ptr %i.of, align 16
  %i.og = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  store <4 x float> %i.oc, ptr %i.og, align 16
  %i.oh = getelementptr inbounds nuw i8, ptr %.1.i, i64 48
  store <4 x float> %i.ob, ptr %i.oh, align 16
  %i.oi = getelementptr inbounds nuw i8, ptr %.1.i, i64 64
  store <4 x float> %i.oa, ptr %i.oi, align 16
  %i.oj = getelementptr inbounds nuw i8, ptr %.1.i, i64 80
  store <4 x float> %i.nz, ptr %i.oj, align 16
end_hunk_1
begin_hunk_2_@_ZN6embree4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE15RefBuilderSmall15attachBuildRefsEPS5_:_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit
bb.w:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.fo = load i8, ptr %i.ap, align 8, !range !151, !noundef !152
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.x, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit83

bb.x:                                             ; preds = %bb.w
  %i.fq = load ptr, ptr %3, align 8, !nonnull !152, !align !160
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit83 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #26
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit83:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.noexc45

bb.z:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit76
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.ft, %bb.z ], [ %lpad.loopexit.split-lp205, %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

.noexc45:                                         ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit83, %bb.n
  %i.fu = load i64, ptr %i.a, align 8             ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = add i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %i.fv, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 11 uses
  %i.fz = load i64, ptr %i.fy, align 16           ; 3 uses
  %i.ga = sub i64 0, %i.fz
  %i.gb = and i64 %i.ga, 15                       ; 2 uses
  %i.gc = add i64 %i.fz, %i.fu
  %i.gd = add i64 %i.gc, %i.gb                    ; 3 uses
  store i64 %i.gd, ptr %i.fy, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 5 uses
  %i.gf = load i64, ptr %i.ge, align 8
  %.not.i43 = icmp ugt i64 %i.gd, %i.gf
  br i1 %.not.i43, label %bb.ab, label %bb.aa, !prof !158

bb.aa:                                            ; preds = %.noexc45
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = add i64 %i.gh, %i.gb
  store i64 %i.gi, ptr %i.gg, align 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = sub i64 %i.gd, %i.fu
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  br label %bb.aj

bb.ab:                                            ; preds = %.noexc45
  store i64 %i.fz, ptr %i.fy, align 16
  %i.gn = shl i64 %i.fu, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 32           ; 2 uses
  %i.gq = icmp ugt i64 %i.gn, %i.gp
  br i1 %i.gq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gr = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.gp, ptr %i.b, align 8
  %i.gs = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc47:                                         ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store ptr %i.gs, ptr %i.gt, align 8
  %i.gu = load i64, ptr %i.ge, align 8
  %i.gv = load i64, ptr %i.fy, align 16
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 6 uses
  %i.gy = load i64, ptr %i.gx, align 16
  %i.gz = add i64 %i.gy, %i.gw                    ; 2 uses
  store i64 %i.gz, ptr %i.gx, align 16
  store i64 0, ptr %i.fy, align 16
  %i.ha = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ha, ptr %i.ge, align 8
  %i.hb = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hb, ptr %i.fy, align 16
  %.not23.i = icmp ugt i64 %i.hb, %i.ha
  br i1 %.not23.i, label %bb.af, label %bb.ae, !prof !158

bb.ae:                                            ; preds = %.noexc47
  store i64 %i.gz, ptr %i.gx, align 16
  br label %bb.ai

bb.af:                                            ; preds = %.noexc47
  store i64 0, ptr %i.fy, align 16
  %i.hc = load i64, ptr %i.go, align 32
  store i64 %i.hc, ptr %i.b, align 8
  %i.hd = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc48:                                         ; preds = %bb.af
  store ptr %i.hd, ptr %i.gt, align 8
  %i.he = load i64, ptr %i.ge, align 8
  %i.hf = load i64, ptr %i.fy, align 16
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = load i64, ptr %i.gx, align 16
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  store i64 %i.hi, ptr %i.gx, align 16
  store i64 0, ptr %i.fy, align 16
  %i.hj = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.hj, ptr %i.ge, align 8
  %i.hk = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hk, ptr %i.fy, align 16
  %.not24.i = icmp ugt i64 %i.hk, %i.hj
  br i1 %.not24.i, label %bb.ah, label %bb.ag, !prof !158

bb.ag:                                            ; preds = %.noexc48
  store i64 %i.hi, ptr %i.gx, align 16
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc48
  store i64 0, ptr %i.fy, align 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i44 = phi ptr [ %i.gs, %bb.ae ], [ %i.hd, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ac, %bb.aa, %bb.ai
  %.1.i = phi ptr [ %i.gm, %bb.aa ], [ %.0.i44, %bb.ai ], [ %i.gr, %bb.ac ] ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hl = ptrtoint ptr %.1.i to i64
  %i.hm = or i64 %i.hl, 9
  %i.hn = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.ho = load i64, ptr %i.aj, align 8
  %i.hp = load i64, ptr %i.ak, align 16
  %i.hq = sub i64 %i.ho, %i.hp                    ; 4 uses
  %i.hr = icmp ult i64 %.0130, %i.hq
  br i1 %i.hr, label %.noexc65.lr.ph, label %._crit_edge

.noexc65.lr.ph:                                   ; preds = %bb.aj
  %i.hs = load ptr, ptr %i.ae, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 104
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 488
  %i.hw = load ptr, ptr %i.hv, align 8            ; 4 uses
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %.0130 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.hz = load i32, ptr %i.hy, align 4            ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 28
  %i.ib = load i32, ptr %i.ia, align 4            ; 2 uses
  %i.ic = zext i32 %i.hz to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8            ; 4 uses
  %i.if = zext i32 %i.ib to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 88
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 104
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = mul i64 %i.ij, %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik ; 4 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 144
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !2939 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 160
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !2939 ; 4 uses
  %i.is = mul i64 %i.ir, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.is
  %i.iu = load <4 x float>, ptr %i.it, align 1, !noalias !2940 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul i64 %i.ir, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iy
  %i.ja = load <4 x float>, ptr %i.iz, align 1, !noalias !2941 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = zext i32 %i.jc to i64
  %i.je = mul i64 %i.ir, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.je
  %i.jg = load <4 x float>, ptr %i.jf, align 1, !noalias !2942 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = zext i32 %i.ji to i64
  %i.jk = mul i64 %i.ir, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.jk
  %i.jm = load <4 x float>, ptr %i.jl, align 1, !noalias !2943 ; 3 uses
  %.sroa.0236.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.hz, i64 0 ; 2 uses
  %.sroa.0233.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.ib, i64 0 ; 2 uses
  %.sroa.0227.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8229.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13231.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.iu, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0221.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8223.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13225.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ja, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0215.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8217.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13219.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jg, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jm, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jm, <4 x i32> <i32 5, i32 0, i32 0, i32 0> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jm, <4 x i32> <i32 6, i32 0, i32 0, i32 0> ; 2 uses
  %i.jn = add nuw i64 %.0130, 1                   ; 3 uses
  %i.jo = icmp ult i64 %i.jn, %i.hq
  br i1 %i.jo, label %.noexc65.1, label %._crit_edge.loopexit

.noexc65.1:                                       ; preds = %.noexc65.lr.ph
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.jn ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %i.jr = load i32, ptr %i.jq, align 4            ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 28
  %i.jt = load i32, ptr %i.js, align 4            ; 2 uses
  %i.ju = zext i32 %i.jr to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ju
  %i.jw = load ptr, ptr %i.jv, align 8            ; 4 uses
  %i.jx = zext i32 %i.jt to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 88
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 104
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = mul i64 %i.kb, %i.jx
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kc ; 4 uses
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jw, i64 144
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !2939 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 160
  %i.kj = load i64, ptr %i.ki, align 8, !noalias !2939 ; 4 uses
  %i.kk = mul i64 %i.kj, %i.kf
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kk
  %i.km = load <4 x float>, ptr %i.kl, align 1, !noalias !2940 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = zext i32 %i.ko to i64
  %i.kq = mul i64 %i.kj, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kq
  %i.ks = load <4 x float>, ptr %i.kr, align 1, !noalias !2941 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = zext i32 %i.ku to i64
  %i.kw = mul i64 %i.kj, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kw
  %i.ky = load <4 x float>, ptr %i.kx, align 1, !noalias !2942 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = zext i32 %i.la to i64
  %i.lc = mul i64 %i.kj, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.lc
  %i.le = load <4 x float>, ptr %i.ld, align 1, !noalias !2943 ; 3 uses
  %.sroa.0236.4.vec.insert = insertelement <4 x i32> %.sroa.0236.0.vec.insert, i32 %i.jr, i64 1 ; 2 uses
  %.sroa.0233.4.vec.insert = insertelement <4 x i32> %.sroa.0233.0.vec.insert, i32 %i.jt, i64 1 ; 2 uses
  %.sroa.0227.4.vec.insert = shufflevector <4 x float> %.sroa.0227.0.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8229.20.vec.insert = shufflevector <4 x float> %.sroa.8229.16.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13231.36.vec.insert = shufflevector <4 x float> %.sroa.13231.32.vec.insert, <4 x float> %i.km, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0221.4.vec.insert = shufflevector <4 x float> %.sroa.0221.0.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8223.20.vec.insert = shufflevector <4 x float> %.sroa.8223.16.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13225.36.vec.insert = shufflevector <4 x float> %.sroa.13225.32.vec.insert, <4 x float> %i.ks, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0215.4.vec.insert = shufflevector <4 x float> %.sroa.0215.0.vec.insert, <4 x float> %i.ky, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8217.20.vec.insert = shufflevector <4 x float> %.sroa.8217.16.vec.insert, <4 x float> %i.ky, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13219.36.vec.insert = shufflevector <4 x float> %.sroa.13219.32.vec.insert, <4 x float> %i.ky, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.le, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.le, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.le, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.lf = add nuw i64 %.0130, 2                   ; 3 uses
  %i.lg = icmp ult i64 %i.lf, %i.hq
  br i1 %i.lg, label %.noexc65.2, label %._crit_edge.loopexit

.noexc65.2:                                       ; preds = %.noexc65.1
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.lf ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 28
  %i.ll = load i32, ptr %i.lk, align 4            ; 2 uses
  %i.lm = zext i32 %i.lj to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8            ; 4 uses
  %i.lp = zext i32 %i.ll to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 88
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 104
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = mul i64 %i.lt, %i.lp
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lu ; 4 uses
  %i.lw = load i32, ptr %i.lv, align 4
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lo, i64 144
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !2939 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lo, i64 160
  %i.mb = load i64, ptr %i.ma, align 8, !noalias !2939 ; 4 uses
  %i.mc = mul i64 %i.mb, %i.lx
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mc
  %i.me = load <4 x float>, ptr %i.md, align 1, !noalias !2940 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.mg = load i32, ptr %i.mf, align 4
  %i.mh = zext i32 %i.mg to i64
  %i.mi = mul i64 %i.mb, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mi
  %i.mk = load <4 x float>, ptr %i.mj, align 1, !noalias !2941 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = zext i32 %i.mm to i64
  %i.mo = mul i64 %i.mb, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mo
  %i.mq = load <4 x float>, ptr %i.mp, align 1, !noalias !2942 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  %i.ms = load i32, ptr %i.mr, align 4
  %i.mt = zext i32 %i.ms to i64
  %i.mu = mul i64 %i.mb, %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mu
  %i.mw = load <4 x float>, ptr %i.mv, align 1, !noalias !2943 ; 3 uses
  %.sroa.0236.8.vec.insert = insertelement <4 x i32> %.sroa.0236.4.vec.insert, i32 %i.lj, i64 2 ; 2 uses
  %.sroa.0233.8.vec.insert = insertelement <4 x i32> %.sroa.0233.4.vec.insert, i32 %i.ll, i64 2 ; 2 uses
  %.sroa.0227.8.vec.insert = shufflevector <4 x float> %.sroa.0227.4.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8229.24.vec.insert = shufflevector <4 x float> %.sroa.8229.20.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13231.40.vec.insert = shufflevector <4 x float> %.sroa.13231.36.vec.insert, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0221.8.vec.insert = shufflevector <4 x float> %.sroa.0221.4.vec.insert, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8223.24.vec.insert = shufflevector <4 x float> %.sroa.8223.20.vec.insert, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13225.40.vec.insert = shufflevector <4 x float> %.sroa.13225.36.vec.insert, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0215.8.vec.insert = shufflevector <4 x float> %.sroa.0215.4.vec.insert, <4 x float> %i.mq, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8217.24.vec.insert = shufflevector <4 x float> %.sroa.8217.20.vec.insert, <4 x float> %i.mq, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13219.40.vec.insert = shufflevector <4 x float> %.sroa.13219.36.vec.insert, <4 x float> %i.mq, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.mx = add nuw i64 %.0130, 3                   ; 3 uses
  %i.my = icmp ult i64 %i.mx, %i.hq
  br i1 %i.my, label %.noexc65.3, label %._crit_edge.loopexit

.noexc65.3:                                       ; preds = %.noexc65.2
  %i.mz = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.mx ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  %i.nb = load i32, ptr %i.na, align 4            ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 28
  %i.nd = load i32, ptr %i.nc, align 4            ; 2 uses
  %i.ne = zext i32 %i.nb to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ne
  %i.ng = load ptr, ptr %i.nf, align 8            ; 4 uses
  %i.nh = zext i32 %i.nd to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 88
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 104
  %i.nl = load i64, ptr %i.nk, align 8
  %i.nm = mul i64 %i.nl, %i.nh
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nm ; 4 uses
  %i.no = load i32, ptr %i.nn, align 4
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ng, i64 144
  %i.nr = load ptr, ptr %i.nq, align 8, !noalias !2939 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ng, i64 160
  %i.nt = load i64, ptr %i.ns, align 8, !noalias !2939 ; 4 uses
  %i.nu = mul i64 %i.nt, %i.np
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nu
  %i.nw = load <4 x float>, ptr %i.nv, align 1, !noalias !2940 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.ny = load i32, ptr %i.nx, align 4
  %i.nz = zext i32 %i.ny to i64
  %i.oa = mul i64 %i.nt, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.oa
  %i.oc = load <4 x float>, ptr %i.ob, align 1, !noalias !2941 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.oe = load i32, ptr %i.od, align 4
  %i.of = zext i32 %i.oe to i64
  %i.og = mul i64 %i.nt, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.og
  %i.oi = load <4 x float>, ptr %i.oh, align 1, !noalias !2942 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.ok = load i32, ptr %i.oj, align 4
  %i.ol = zext i32 %i.ok to i64
  %i.om = mul i64 %i.nt, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.om
  %i.oo = load <4 x float>, ptr %i.on, align 1, !noalias !2943 ; 3 uses
  %.sroa.0236.12.vec.insert = insertelement <4 x i32> %.sroa.0236.8.vec.insert, i32 %i.nb, i64 3
  %.sroa.0233.12.vec.insert = insertelement <4 x i32> %.sroa.0233.8.vec.insert, i32 %i.nd, i64 3
  %.sroa.0227.12.vec.insert = shufflevector <4 x float> %.sroa.0227.8.vec.insert, <4 x float> %i.nw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8229.28.vec.insert = shufflevector <4 x float> %.sroa.8229.24.vec.insert, <4 x float> %i.nw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13231.44.vec.insert = shufflevector <4 x float> %.sroa.13231.40.vec.insert, <4 x float> %i.nw, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0221.12.vec.insert = shufflevector <4 x float> %.sroa.0221.8.vec.insert, <4 x float> %i.oc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8223.28.vec.insert = shufflevector <4 x float> %.sroa.8223.24.vec.insert, <4 x float> %i.oc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13225.44.vec.insert = shufflevector <4 x float> %.sroa.13225.40.vec.insert, <4 x float> %i.oc, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0215.12.vec.insert = shufflevector <4 x float> %.sroa.0215.8.vec.insert, <4 x float> %i.oi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8217.28.vec.insert = shufflevector <4 x float> %.sroa.8217.24.vec.insert, <4 x float> %i.oi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13219.44.vec.insert = shufflevector <4 x float> %.sroa.13219.40.vec.insert, <4 x float> %i.oi, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.oo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.oo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.oo, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.op = add nuw i64 %.0130, 4
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
