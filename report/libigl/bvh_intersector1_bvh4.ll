Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_intersector1_bvh4?download=true
inline.NumInlined: 484
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6embree4sse216BVHNIntersector1ILi4ELi1ELb0ENS0_26SubGridIntersector1MoellerILi4ELb1EEEE9intersectEPKNS_5Accel12IntersectorsERNS_7RayHitKILi1EEEPNS_15RayQueryContextE:bb.a
  %i.gv = trunc nsw <4 x i32> %i.gu to <4 x i1>
  %i.gw = select <4 x i1> %i.gv, <4 x i32> %i.gl, <4 x i32> %i.gr
  %i.gx = trunc nsw <4 x i32> %i.gu to <4 x i1>
  %.inner1171 = select <4 x i1> %i.gx, <4 x i32> %i.gr, <4 x i32> %i.gl
  store <4 x i32> %.inner1171, ptr %.21069, align 16
  %i.gy = getelementptr inbounds nuw i8, ptr %.21069, i64 16
  store <4 x i32> %i.gw, ptr %i.gy, align 16
  %i.gz = extractelement <2 x i64> %i.gq, i64 0
  %i.ha = getelementptr inbounds nuw i8, ptr %.21069, i64 32
  br label %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit

bb.k:                                             ; preds = %bb.i
  %i.hb = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.fv) #11, !srcloc !23 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.hb
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = inttoptr i64 %i.hd to ptr               ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.he, i32 0, i32 3, i32 1)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.hf, i32 0, i32 3, i32 1)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.hb
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = zext i32 %i.hh to i64
  %i.hj = insertelement <2 x i64> poison, i64 %i.hd, i64 0
  %i.hk = insertelement <2 x i64> %i.hj, i64 %i.hi, i64 1
  %i.hl = bitcast <2 x i64> %i.fs to <4 x i32>    ; 3 uses
  %i.hm = bitcast <2 x i64> %i.fp to <4 x i32>    ; 3 uses
  %i.hn = icmp sgt <4 x i32> %i.hl, %i.hm
  %i.ho = shufflevector <4 x i1> %i.hn, <4 x i1> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.hp = select <4 x i1> %i.ho, <4 x i32> %i.hm, <4 x i32> %i.hl ; 3 uses
  %i.hq = select <4 x i1> %i.ho, <4 x i32> %i.hl, <4 x i32> %i.hm ; 3 uses
  %i.hr = bitcast <2 x i64> %i.hk to <4 x i32>    ; 3 uses
  %i.hs = bitcast <2 x i64> %i.ge to <4 x i32>    ; 3 uses
  %i.ht = icmp sgt <4 x i32> %i.hr, %i.hs
  %i.hu = shufflevector <4 x i1> %i.ht, <4 x i1> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.hv = select <4 x i1> %i.hu, <4 x i32> %i.hs, <4 x i32> %i.hr ; 3 uses
  %i.hw = select <4 x i1> %i.hu, <4 x i32> %i.hr, <4 x i32> %i.hs ; 3 uses
  %i.hx = icmp sgt <4 x i32> %i.hw, %i.hq
  %i.hy = sext <4 x i1> %i.hx to <4 x i32>
  %i.hz = shufflevector <4 x i32> %i.hy, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ia = trunc nsw <4 x i32> %i.hz to <4 x i1>
  %i.ib = select <4 x i1> %i.ia, <4 x i32> %i.hq, <4 x i32> %i.hw ; 3 uses
  %i.ic = trunc nsw <4 x i32> %i.hz to <4 x i1>
  %.inner1174 = select <4 x i1> %i.ic, <4 x i32> %i.hw, <4 x i32> %i.hq
  %i.id = icmp sgt <4 x i32> %i.hv, %i.hp
  %i.ie = sext <4 x i1> %i.id to <4 x i32>
  %i.if = shufflevector <4 x i32> %i.ie, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ig = trunc nsw <4 x i32> %i.if to <4 x i1>
  %i.ih = select <4 x i1> %i.ig, <4 x i32> %i.hp, <4 x i32> %i.hv
  %i.ii = bitcast <4 x i32> %i.ih to <2 x i64>
  %i.ij = trunc nsw <4 x i32> %i.if to <4 x i1>
  %.inner1177 = select <4 x i1> %i.ij, <4 x i32> %i.hv, <4 x i32> %i.hp ; 3 uses
  %i.ik = icmp sgt <4 x i32> %i.ib, %.inner1177
  %i.il = sext <4 x i1> %i.ik to <4 x i32>
  %i.im = shufflevector <4 x i32> %i.il, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.in = trunc nsw <4 x i32> %i.im to <4 x i1>
  %i.io = select <4 x i1> %i.in, <4 x i32> %.inner1177, <4 x i32> %i.ib
  %i.ip = trunc nsw <4 x i32> %i.im to <4 x i1>
  %.inner1180 = select <4 x i1> %i.ip, <4 x i32> %i.ib, <4 x i32> %.inner1177
  store <4 x i32> %.inner1174, ptr %.21069, align 16
  %i.iq = getelementptr inbounds nuw i8, ptr %.21069, i64 16
  store <4 x i32> %.inner1180, ptr %i.iq, align 16
  %i.ir = getelementptr inbounds nuw i8, ptr %.21069, i64 32
  store <4 x i32> %i.io, ptr %i.ir, align 16
  %i.is = extractelement <2 x i64> %i.ii, i64 0
  %i.it = getelementptr inbounds nuw i8, ptr %.21069, i64 48
  br label %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit

_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit: ; preds = %bb.d, %bb.j, %bb.k, %bb.h, %bb.g
  %.3 = phi ptr [ %i.it, %bb.k ], [ %i.ha, %bb.j ], [ %.21069, %bb.d ], [ %i.fm, %bb.g ], [ %i.fm, %bb.h ] ; 2 uses
  %.sroa.043.1 = phi i64 [ %i.is, %bb.k ], [ %i.gz, %bb.j ], [ %i.eu, %bb.d ], [ %i.eu, %bb.g ], [ %i.fe, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.iu = and i64 %.sroa.043.1, 8
  %.not.i = icmp eq i64 %i.iu, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !30

._crit_edge:                                      ; preds = %.preheader, %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit
  %.2.lcssa = phi ptr [ %.3, %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit ], [ %i.cx, %.preheader ]
  %.sroa.043.0.lcssa = phi i64 [ %.sroa.043.1, %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit ], [ %i.dc, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.iv = and i64 %.sroa.043.0.lcssa, 15
  %i.iw = add nsw i64 %i.iv, -8                   ; 2 uses
  %i.ix = and i64 %.sroa.043.0.lcssa, -16
  %i.iy = inttoptr i64 %i.ix to ptr
  %.not1081 = icmp eq i64 %i.iw, 0
  br i1 %.not1081, label %._crit_edge1080, label %.lr.ph1079

.lr.ph1079:                                       ; preds = %._crit_edge, %._crit_edge1076
  %.0.i1077 = phi i64 [ %i.alc, %._crit_edge1076 ], [ 0, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.iz = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %.0.i1077 ; 10 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32 ; 7 uses
  %i.jb = load <4 x i8>, ptr %i.ja, align 8, !noalias !6779
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 36
  %i.jd = load <4 x i8>, ptr %i.jc, align 4, !noalias !6780
  %i.je = icmp ule <4 x i8> %i.jb, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jg = load float, ptr %i.jf, align 8
  %i.jh = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 68
  %i.jk = load float, ptr %i.jj, align 4
  %i.jl = insertelement <4 x float> poison, float %i.jk, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.as
  %i.jo = load <4 x i8>, ptr %i.jn, align 4, !noalias !6781
  %i.jp = uitofp <4 x i8> %i.jo to <4 x float>
  %i.jq = fmul <4 x float> %i.jm, %i.jp
  %i.jr = fadd <4 x float> %i.ji, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.at
  %i.jt = load <4 x i8>, ptr %i.js, align 4, !noalias !6782
  %i.ju = uitofp <4 x i8> %i.jt to <4 x float>
  %i.jv = fmul <4 x float> %i.jm, %i.ju
  %i.jw = fadd <4 x float> %i.ji, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iz, i64 60
  %i.jy = load float, ptr %i.jx, align 4
  %i.jz = insertelement <4 x float> poison, float %i.jy, i64 0
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iz, i64 72
  %i.kc = load float, ptr %i.kb, align 8
  %i.kd = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.au
  %i.kg = load <4 x i8>, ptr %i.kf, align 4, !noalias !6783
  %i.kh = uitofp <4 x i8> %i.kg to <4 x float>
  %i.ki = fmul <4 x float> %i.ke, %i.kh
  %i.kj = fadd <4 x float> %i.ka, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.av
  %i.kl = load <4 x i8>, ptr %i.kk, align 4, !noalias !6784
  %i.km = uitofp <4 x i8> %i.kl to <4 x float>
  %i.kn = fmul <4 x float> %i.ke, %i.km
  %i.ko = fadd <4 x float> %i.ka, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.kq = load float, ptr %i.kp, align 8
  %i.kr = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.iz, i64 76
  %i.ku = load float, ptr %i.kt, align 4
  %i.kv = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.aw
  %i.ky = load <4 x i8>, ptr %i.kx, align 4, !noalias !6785
  %i.kz = uitofp <4 x i8> %i.ky to <4 x float>
  %i.la = fmul <4 x float> %i.kw, %i.kz
  %i.lb = fadd <4 x float> %i.ks, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ax
  %i.ld = load <4 x i8>, ptr %i.lc, align 4, !noalias !6786
  %i.le = uitofp <4 x i8> %i.ld to <4 x float>
  %i.lf = fmul <4 x float> %i.kw, %i.le
  %i.lg = fadd <4 x float> %i.ks, %i.lf
  %i.lh = fsub <4 x float> %i.jr, %i.ab
  %i.li = fmul <4 x float> %i.ae, %i.lh
  %i.lj = fsub <4 x float> %i.kj, %i.ac
  %i.lk = fmul <4 x float> %i.af, %i.lj
  %i.ll = fsub <4 x float> %i.lb, %i.ad
  %i.lm = fmul <4 x float> %i.ag, %i.ll
  %i.ln = fsub <4 x float> %i.jw, %i.ab
  %i.lo = fmul <4 x float> %i.ae, %i.ln
  %i.lp = fsub <4 x float> %i.ko, %i.ac
  %i.lq = fmul <4 x float> %i.af, %i.lp
  %i.lr = fsub <4 x float> %i.lg, %i.ad
  %i.ls = fmul <4 x float> %i.ag, %i.lr
  %i.lt = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.li, <4 x float> %i.lk)
  %i.lu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lm, <4 x float> %i.aq)
  %i.lv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lt, <4 x float> %i.lu) ; 2 uses
  %i.lw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lo, <4 x float> %i.lq)
  %i.lx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ls, <4 x float> %.sroa.61.01169)
  %i.ly = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lw, <4 x float> %i.lx)
  %i.lz = fcmp ole <4 x float> %i.lv, %i.ly
  store <4 x float> %i.lv, ptr %10, align 16
  %i.ma = and <4 x i1> %i.je, %i.lz
  %i.mb = bitcast <4 x i1> %i.ma to i4            ; 2 uses
  %.not.i241072 = icmp eq i4 %i.mb, 0
  br i1 %.not.i241072, label %._crit_edge1076, label %.lr.ph1075

.lr.ph1075:                                       ; preds = %.lr.ph1079
  %i.mc = zext i4 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.iz, i64 80
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph1075, %bb.aq
  %.010251073 = phi i64 [ %i.mc, %.lr.ph1075 ], [ %i.mg, %bb.aq ] ; 3 uses
  %i.me = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.010251073) #11, !srcloc !23 ; 2 uses
  %i.mf = add nsw i64 %.010251073, -1
  %i.mg = and i64 %i.mf, %.010251073              ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.me
  %i.mi = load float, ptr %i.mh, align 4
  %i.mj = load float, ptr %i.l, align 16          ; 2 uses
  %i.mk = fcmp ogt float %i.mi, %i.mj
  br i1 %i.mk, label %bb.aq, label %_ZNK6embree7SubGrid6gatherERNS_4Vec3INS_11vfloat_implILi4EEEEES5_S5_S5_PKNS_8GridMeshERKNS6_4GridE.exit, !prof !20, !llvm.loop !6730

_ZNK6embree7SubGrid6gatherERNS_4Vec3INS_11vfloat_implILi4EEEEES5_S5_S5_PKNS_8GridMeshERKNS6_4GridE.exit: ; preds = %bb.l
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.me ; 3 uses
  %i.mm = load i16, ptr %i.ml, align 8            ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 2
  %i.mo = load i16, ptr %i.mn, align 2            ; 2 uses
  %i.mp = load i32, ptr %i.md, align 8            ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mr = load i32, ptr %i.mq, align 4            ; 5 uses
  %i.ms = load ptr, ptr %2, align 8
  %i.mt = zext i32 %i.mp to i64                   ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 488 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.mt
  %i.mx = load ptr, ptr %i.mw, align 8            ; 4 uses
  %i.my = zext i32 %i.mr to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 88
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 104
  %i.nc = load i64, ptr %i.nb, align 8
  %i.nd = mul i64 %i.nc, %i.my
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nd ; 5 uses
  %i.nf = load i32, ptr %i.ne, align 4
  %i.ng = and i16 %i.mm, 32767
  %i.nh = zext nneg i16 %i.ng to i32              ; 3 uses
  %i.ni = add i32 %i.nf, %i.nh
  %i.nj = and i16 %i.mo, 32767
  %i.nk = zext nneg i16 %i.nj to i32              ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.nm = load i32, ptr %i.nl, align 4            ; 2 uses
  %i.nn = mul i32 %i.nm, %i.nk
  %i.no = add i32 %i.ni, %i.nn
  %i.np = zext i32 %i.no to i64                   ; 3 uses
  %i.nq = add nuw nsw i64 %i.np, 1                ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mx, i64 144
  %i.ns = load ptr, ptr %i.nr, align 8            ; 9 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mx, i64 160
  %i.nu = load i64, ptr %i.nt, align 8            ; 9 uses
  %i.nv = mul i64 %i.nu, %i.np
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nv
  %i.nx = load <4 x float>, ptr %i.nw, align 1, !noalias !6787 ; 2 uses
  %i.ny = mul i64 %i.nq, %i.nu
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ny
  %i.oa = load <4 x float>, ptr %i.nz, align 1, !noalias !6788 ; 4 uses
  %i.ob = zext i32 %i.nm to i64                   ; 3 uses
  %i.oc = add nuw nsw i64 %i.np, %i.ob            ; 2 uses
  %i.od = add nuw nsw i64 %i.nq, %i.ob            ; 3 uses
  %i.oe = mul i64 %i.oc, %i.nu
  %i.of = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.oe
  %i.og = load <4 x float>, ptr %i.of, align 1, !noalias !6789 ; 4 uses
  %i.oh = mul i64 %i.od, %i.nu
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.oh
  %i.oj = load <4 x float>, ptr %i.oi, align 1, !noalias !6790 ; 8 uses
  %i.ok = icmp sgt i16 %i.mm, -1
  %i.ol = zext i1 %i.ok to i64                    ; 2 uses
  %i.om = add nuw nsw i64 %i.nq, %i.ol
  %i.on = mul i64 %i.om, %i.nu
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.on
  %i.op = load <4 x float>, ptr %i.oo, align 1, !noalias !6791 ; 2 uses
  %i.oq = add nuw nsw i64 %i.od, %i.ol            ; 2 uses
  %i.or = mul i64 %i.oq, %i.nu
  %i.os = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.or
  %i.ot = load <4 x float>, ptr %i.os, align 1, !noalias !6792 ; 4 uses
  %i.ou = icmp slt i16 %i.mo, 0
  %spec.select = select i1 %i.ou, i64 0, i64 %i.ob ; 3 uses
  %i.ov = add nuw nsw i64 %i.oc, %spec.select
  %i.ow = add nuw nsw i64 %i.od, %spec.select
  %i.ox = mul i64 %i.ov, %i.nu
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ox
  %i.oz = load <4 x float>, ptr %i.oy, align 1, !noalias !6793 ; 2 uses
  %i.pa = mul i64 %i.ow, %i.nu
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.pa
  %i.pc = load <4 x float>, ptr %i.pb, align 1, !noalias !6794 ; 4 uses
  %i.pd = add nuw nsw i64 %i.oq, %spec.select
  %i.pe = mul i64 %i.pd, %i.nu
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.pe
  %i.pg = load <4 x float>, ptr %i.pf, align 1, !noalias !6795 ; 2 uses
  %i.ph = shufflevector <4 x float> %i.nx, <4 x float> %i.oj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pi = shufflevector <4 x float> %i.nx, <4 x float> %i.oj, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.pj = shufflevector <4 x float> %i.oa, <4 x float> %i.og, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pk = shufflevector <4 x float> %i.oa, <4 x float> %i.og, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.pl = shufflevector <4 x float> %i.ph, <4 x float> %i.pj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.pm = shufflevector <4 x float> %i.ph, <4 x float> %i.pj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 3 uses
  %i.pn = shufflevector <4 x float> %i.pi, <4 x float> %i.pk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.po = shufflevector <4 x float> %i.oa, <4 x float> %i.ot, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pp = shufflevector <4 x float> %i.oa, <4 x float> %i.ot, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.pq = shufflevector <4 x float> %i.op, <4 x float> %i.oj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pr = shufflevector <4 x float> %i.op, <4 x float> %i.oj, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ps = shufflevector <4 x float> %i.po, <4 x float> %i.pq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pt = shufflevector <4 x float> %i.po, <4 x float> %i.pq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.pu = shufflevector <4 x float> %i.pp, <4 x float> %i.pr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pv = shufflevector <4 x float> %i.oj, <4 x float> %i.pg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pw = shufflevector <4 x float> %i.oj, <4 x float> %i.pg, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.px = shufflevector <4 x float> %i.ot, <4 x float> %i.pc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.py = shufflevector <4 x float> %i.ot, <4 x float> %i.pc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.pz = shufflevector <4 x float> %i.pv, <4 x float> %i.px, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.qa = shufflevector <4 x float> %i.pv, <4 x float> %i.px, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 3 uses
  %i.qb = shufflevector <4 x float> %i.pw, <4 x float> %i.py, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.qc = shufflevector <4 x float> %i.og, <4 x float> %i.pc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qd = shufflevector <4 x float> %i.og, <4 x float> %i.pc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.qe = shufflevector <4 x float> %i.oj, <4 x float> %i.oz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qf = shufflevector <4 x float> %i.oj, <4 x float> %i.oz, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.qg = shufflevector <4 x float> %i.qc, <4 x float> %i.qe, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qh = shufflevector <4 x float> %i.qc, <4 x float> %i.qe, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.qi = shufflevector <4 x float> %i.qd, <4 x float> %i.qf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.qj = fsub <4 x float> %i.pl, %i.ps           ; 3 uses
  %i.qk = fsub <4 x float> %i.pm, %i.pt           ; 3 uses
  %i.ql = fsub <4 x float> %i.pn, %i.pu           ; 3 uses
  %i.qm = fsub <4 x float> %i.qg, %i.pl           ; 3 uses
  %i.qn = fsub <4 x float> %i.qh, %i.pm           ; 3 uses
  %i.qo = fsub <4 x float> %i.qi, %i.pn           ; 3 uses
  %i.qp = fmul <4 x float> %i.qk, %i.qo
  %i.qq = fmul <4 x float> %i.ql, %i.qn
  %i.qr = fsub <4 x float> %i.qq, %i.qp           ; 3 uses
  %i.qs = fmul <4 x float> %i.ql, %i.qm
  %i.qt = fmul <4 x float> %i.qj, %i.qo
  %i.qu = fsub <4 x float> %i.qt, %i.qs           ; 3 uses
  %i.qv = fmul <4 x float> %i.qj, %i.qn
  %i.qw = fmul <4 x float> %i.qk, %i.qm
  %i.qx = fsub <4 x float> %i.qw, %i.qv           ; 3 uses
  %i.qy = load <4 x i32>, ptr %1, align 16, !noalias !6796 ; 2 uses
  %i.qz = bitcast <4 x i32> %i.qy to <4 x float>  ; 3 uses
  %i.ra = shufflevector <4 x float> %i.qz, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.rb = shufflevector <4 x float> %i.qz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.rc = shufflevector <4 x float> %i.qz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 5 uses
  %i.rd = load <3 x float>, ptr %i.j, align 16, !noalias !6797 ; 3 uses
  %i.re = shufflevector <3 x float> %i.rd, <3 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.rf = shufflevector <3 x float> %i.rd, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 7 uses
  %i.rg = shufflevector <3 x float> %i.rd, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 7 uses
  %i.rh = fsub <4 x float> %i.pl, %i.ra           ; 3 uses
  %i.ri = fsub <4 x float> %i.pm, %i.rb           ; 3 uses
  %i.rj = fsub <4 x float> %i.pn, %i.rc           ; 3 uses
  %i.rk = fmul <4 x float> %i.rj, %i.rf
  %i.rl = fmul <4 x float> %i.ri, %i.rg
  %i.rm = fsub <4 x float> %i.rl, %i.rk           ; 2 uses
  %i.rn = fmul <4 x float> %i.rh, %i.rg
  %i.ro = fmul <4 x float> %i.rj, %i.re
  %i.rp = fsub <4 x float> %i.ro, %i.rn           ; 2 uses
  %i.rq = fmul <4 x float> %i.ri, %i.re
  %i.rr = fmul <4 x float> %i.rh, %i.rf
  %i.rs = fsub <4 x float> %i.rr, %i.rq           ; 2 uses
  %i.rt = fmul <4 x float> %i.qx, %i.rg
  %i.ru = fmul <4 x float> %i.qu, %i.rf
  %i.rv = fadd <4 x float> %i.ru, %i.rt
  %i.rw = fmul <4 x float> %i.qr, %i.re
  %i.rx = fadd <4 x float> %i.rw, %i.rv           ; 3 uses
  %i.ry = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rx) ; 7 uses
  %i.rz = fmul <4 x float> %i.qo, %i.rs
  %i.sa = fmul <4 x float> %i.qn, %i.rp
  %i.sb = fadd <4 x float> %i.sa, %i.rz
  %i.sc = fmul <4 x float> %i.qm, %i.rm
  %i.sd = fadd <4 x float> %i.sc, %i.sb
  %i.se = bitcast <4 x float> %i.sd to <2 x i64>
  %i.sf = bitcast <4 x float> %i.rx to <2 x i64>
  %i.sg = and <2 x i64> %i.sf, splat (i64 -9223372034707292160) ; 3 uses
  %i.sh = xor <2 x i64> %i.sg, %i.se
  %i.si = bitcast <2 x i64> %i.sh to <4 x float>  ; 3 uses
  %i.sj = fmul <4 x float> %i.ql, %i.rs
  %i.sk = fmul <4 x float> %i.qk, %i.rp
  %i.sl = fadd <4 x float> %i.sk, %i.sj
  %i.sm = fmul <4 x float> %i.qj, %i.rm
  %i.sn = fadd <4 x float> %i.sm, %i.sl
  %i.so = bitcast <4 x float> %i.sn to <2 x i64>
  %i.sp = xor <2 x i64> %i.sg, %i.so
  %i.sq = bitcast <2 x i64> %i.sp to <4 x float>  ; 3 uses
  %i.sr = fcmp une <4 x float> %i.rx, zeroinitializer
  %i.ss = fcmp uge <4 x float> %i.si, zeroinitializer
  %i.st = and <4 x i1> %i.sr, %i.ss
  %i.su = fcmp uge <4 x float> %i.sq, zeroinitializer
  %i.sv = and <4 x i1> %i.su, %i.st
  %i.sw = fadd <4 x float> %i.si, %i.sq
  %i.sx = fcmp ole <4 x float> %i.sw, %i.ry
  %i.sy = and <4 x i1> %i.sx, %i.sv
  %i.sz = select <4 x i1> %i.sy, <4 x i32> %i.ay, <4 x i32> zeroinitializer ; 2 uses
  %i.ta = icmp slt <4 x i32> %i.sz, zeroinitializer
  %i.tb = bitcast <4 x i1> %i.ta to i4
  %i.tc = icmp eq i4 %i.tb, 0
  %bc = bitcast <4 x i32> %i.qy to <4 x float>    ; 2 uses
  %i.td = extractelement <4 x float> %bc, i64 3   ; 4 uses
  br i1 %i.tc, label %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit19.i, label %bb.m, !prof !24

bb.m:                                             ; preds = %_ZNK6embree7SubGrid6gatherERNS_4Vec3INS_11vfloat_implILi4EEEEES5_S5_S5_PKNS_8GridMeshERKNS6_4GridE.exit
  %i.te = fmul <4 x float> %i.qx, %i.rj
  %i.tf = fmul <4 x float> %i.qu, %i.ri
  %i.tg = fadd <4 x float> %i.tf, %i.te
  %i.th = fmul <4 x float> %i.qr, %i.rh
  %i.ti = fadd <4 x float> %i.th, %i.tg
  %i.tj = bitcast <4 x float> %i.ti to <2 x i64>
  %i.tk = xor <2 x i64> %i.sg, %i.tj
  %i.tl = bitcast <2 x i64> %i.tk to <4 x float>  ; 3 uses
  %i.tm = shufflevector <4 x float> %bc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.tn = fmul <4 x float> %i.ry, %i.tm
  %i.to = fcmp olt <4 x float> %i.tn, %i.tl
  %i.tp = insertelement <4 x float> poison, float %i.mj, i64 0
  %i.tq = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tr = fmul <4 x float> %i.tq, %i.ry
  %i.ts = fcmp oge <4 x float> %i.tr, %i.tl
  %i.tt = and <4 x i1> %i.ts, %i.to
  %i.tu = select <4 x i1> %i.tt, <4 x i32> %i.sz, <4 x i32> zeroinitializer ; 6 uses
  %i.tv = icmp slt <4 x i32> %i.tu, zeroinitializer
  %i.tw = bitcast <4 x i1> %i.tv to i4
  %i.tx = icmp eq i4 %i.tw, 0
  br i1 %i.tx, label %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit19.i, label %bb.n, !prof !24

bb.n:                                             ; preds = %bb.m
  store <4 x float> %i.qr, ptr %i.bd, align 16
  store <4 x float> %i.qu, ptr %i.be, align 16
  store <4 x float> %i.qx, ptr %i.bf, align 16
  %13 = load ptr, ptr %i.mu, align 8
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.mt
  %15 = load ptr, ptr %14, align 8                ; 5 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.tz = load i32, ptr %i.ty, align 4
  %i.ua = load i32, ptr %i.bg, align 4
  %i.ub = and i32 %i.ua, %i.tz
  %i.uc = icmp eq i32 %i.ub, 0
  br i1 %i.uc, label %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit19.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ud = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %i.ue = shufflevector <4 x i32> %i.ud, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.uf = add nuw nsw <4 x i32> %i.ue, <i32 0, i32 0, i32 1, i32 1>
  %i.ug = uitofp nneg <4 x i32> %i.uf to <4 x float>
  %i.uh = fmul <4 x float> %i.ry, %i.ug
  %i.ui = fadd <4 x float> %i.uh, %i.sq
  %i.uj = insertelement <4 x i32> poison, i32 %i.nh, i64 0
  %i.uk = shufflevector <4 x i32> %i.uj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ul = add nuw nsw <4 x i32> %i.uk, <i32 0, i32 1, i32 1, i32 0>
  %i.um = uitofp nneg <4 x i32> %i.ul to <4 x float>
  %i.un = fmul <4 x float> %i.ry, %i.um
  %i.uo = fadd <4 x float> %i.un, %i.si
  %i.up = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.uq = load <2 x i16>, ptr %i.up, align 4
  %i.ur = zext <2 x i16> %i.uq to <2 x i32>
  %i.us = add nsw <2 x i32> %i.ur, splat (i32 -1)
  %i.ut = sitofp <2 x i32> %i.us to <2 x float>   ; 3 uses
  %i.uu = shufflevector <2 x float> %i.ut, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.uv = call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.uu) ; 2 uses
  %i.uw = extractelement <4 x float> %i.uv, i64 0
  %i.ux = shufflevector <2 x float> %i.ut, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.uy = call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.ux) ; 2 uses
  %i.uz = extractelement <4 x float> %i.uy, i64 0
  %i.va = shufflevector <4 x float> %i.uy, <4 x float> %i.uv, <2 x i32> <i32 0, i32 4>
  %i.vb = fmul <2 x float> %i.va, %i.ut
  %i.vc = fsub <2 x float> splat (float 2.000000e+00), %i.vb ; 2 uses
  %i.vd = extractelement <2 x float> %i.vc, i64 1
  %i.ve = fmul float %i.uw, %i.vd
  %i.vf = insertelement <4 x float> poison, float %i.ve, i64 0
  %i.vg = shufflevector <4 x float> %i.vf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vh = fmul <4 x float> %i.ui, %i.vg
  %i.vi = extractelement <2 x float> %i.vc, i64 0
  %i.vj = fmul float %i.uz, %i.vi
  %i.vk = insertelement <4 x float> poison, float %i.vj, i64 0
  %i.vl = shufflevector <4 x float> %i.vk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vm = fmul <4 x float> %i.uo, %i.vl
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store <4 x i32> %i.tu, ptr %7, align 16
  %i.vn = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ry) ; 3 uses
  %i.vo = fmul <4 x float> %i.ry, %i.vn
  %i.vp = fsub <4 x float> splat (float 1.000000e+00), %i.vo
  %i.vq = fmul <4 x float> %i.vn, %i.vp
  %i.vr = fadd <4 x float> %i.vn, %i.vq           ; 3 uses
  %i.vs = fmul <4 x float> %i.vr, %i.tl           ; 3 uses
  store <4 x float> %i.vs, ptr %i.bh, align 16
  %i.vt = fmul <4 x float> %i.vm, %i.vr
  store <4 x float> %i.vt, ptr %i.bi, align 16
  %i.vu = fmul <4 x float> %i.vh, %i.vr
  store <4 x float> %i.vu, ptr %i.bj, align 16
  %i.vv = bitcast <4 x float> %i.vs to <4 x i32>  ; 2 uses
  %i.vw = and <4 x i32> %i.tu, %i.vv
  %i.vx = and <4 x i32> %i.tu, splat (i32 2139095040)
  %i.vy = xor <4 x i32> %i.vx, splat (i32 2139095040)
  %i.vz = or <4 x i32> %i.vw, %i.vy
  %i.wa = bitcast <4 x i32> %i.vz to <4 x float>  ; 3 uses
  %i.wb = shufflevector <4 x float> %i.wa, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.wc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.wb, <4 x float> %i.wa) ; 2 uses
  %i.wd = shufflevector <4 x float> %i.wc, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.we = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.wd, <4 x float> %i.wc)
  %i.wf = fcmp oeq <4 x float> %i.we, %i.wa
  %i.wg = select <4 x i1> %i.wf, <4 x i32> %i.tu, <4 x i32> zeroinitializer ; 2 uses
  %i.wh = icmp slt <4 x i32> %i.wg, zeroinitializer
  %i.wi = bitcast <4 x i1> %i.wh to i4
  %.not = icmp eq i4 %i.wi, 0
  %.sroa.speculated957.v = select i1 %.not, <4 x i32> %i.tu, <4 x i32> %i.wg
  %i.wj = icmp slt <4 x i32> %.sroa.speculated957.v, zeroinitializer
  %i.wk = bitcast <4 x i1> %i.wj to i4
  %i.wl = zext i4 %i.wk to i64
  %i.wm = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.wl) #11, !srcloc !23 ; 7 uses
  %i.wn = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16 ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 8
  %.not1055 = icmp eq ptr %i.wp, null
  br i1 %.not1055, label %bb.p, label %.critedge.i, !prof !24

bb.p:                                             ; preds = %bb.o
  %i.wq = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.wr = load ptr, ptr %i.wq, align 16
  %.not1056 = icmp eq ptr %i.wr, null
  br i1 %.not1056, label %bb.z, label %.critedge.i, !prof !24

.critedge.i:                                      ; preds = %bb.p, %bb.o
  %i.ws = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.wv = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ww = getelementptr inbounds nuw i8, ptr %15, i64 60
  %.pre = load float, ptr %i.l, align 16
  %i.wx = insertelement <2 x ptr> %i.cv, ptr %i.ws, i64 0
  br label %bb.q

bb.q:                                             ; preds = %bb.y, %.critedge.i
  %i.wy = phi float [ %.pre, %.critedge.i ], [ %i.za, %bb.y ] ; 2 uses
  %.029.i = phi i64 [ %i.wm, %.critedge.i ], [ %i.aab, %bb.y ] ; 7 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.029.i
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.029.i
  %i.xb = load float, ptr %i.wz, align 4
  %i.xc = load float, ptr %i.xa, align 4
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.029.i
  %i.xe = load float, ptr %i.xd, align 4
  store float %i.xe, ptr %i.l, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.029.i
  %i.xg = load float, ptr %i.xf, align 4, !noalias !6798
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.029.i
  %i.xi = load float, ptr %i.xh, align 4, !noalias !6798
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.029.i
  %i.xk = load float, ptr %i.xj, align 4, !noalias !6798
  store float %i.xg, ptr %8, align 16
  store float %i.xi, ptr %i.bm, align 4
  store float %i.xk, ptr %i.bn, align 8
  store float %i.xb, ptr %i.bo, align 4
  store float %i.xc, ptr %i.bp, align 16
  store i32 %i.mr, ptr %i.bq, align 4
  store i32 %i.mp, ptr %i.br, align 8
  %i.xl = load i32, ptr %i.ws, align 4
  store i32 %i.xl, ptr %i.bs, align 4
  %i.xm = load i32, ptr %i.wt, align 4
  store i32 %i.xm, ptr %i.bt, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 -1, ptr %i.b, align 4
  store ptr %i.b, ptr %6, align 8
  %i.xn = load ptr, ptr %i.wu, align 8
  store ptr %i.xn, ptr %i.bu, align 8
  store <2 x ptr> %i.wx, ptr %i.bv, align 8
  store ptr %8, ptr %i.bx, align 8
  store i32 1, ptr %i.by, align 8
  %i.xo = load ptr, ptr %i.wv, align 16           ; 2 uses
  %.not.i.i = icmp eq ptr %i.xo, null
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.xo(ptr noundef nonnull %6), !inline_history !6755
  %i.xp = load ptr, ptr %6, align 8
  %i.xq = load i32, ptr %i.xp, align 4
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.xs = load ptr, ptr %i.wo, align 8            ; 2 uses
  %.not14.i.i = icmp eq ptr %i.xs, null
  br i1 %.not14.i.i, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.xt = load i32, ptr %i.wn, align 8
  %i.xu = and i32 %i.xt, 2
  %.not1057 = icmp eq i32 %i.xu, 0
  br i1 %.not1057, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.xv = load i32, ptr %i.ww, align 4
  %i.xw = and i32 %i.xv, 4194304
  %.not1058 = icmp eq i32 %i.xw, 0
  br i1 %.not1058, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  call void %i.xs(ptr noundef nonnull %6), !inline_history !6755
  %.pre1083 = load ptr, ptr %6, align 8
  %.pre1084 = load i32, ptr %.pre1083, align 4
  %i.xx = icmp eq i32 %.pre1084, 0
  br i1 %i.xx, label %bb.w, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i

_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i: ; preds = %bb.u, %bb.s, %bb.v
  %i.xy = load ptr, ptr %i.bw, align 8            ; 9 uses
  %i.xz = load ptr, ptr %i.bx, align 8            ; 9 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 48
  %i.yb = load float, ptr %i.xz, align 4
  store float %i.yb, ptr %i.ya, align 4
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  %i.yd = load float, ptr %i.yc, align 4
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xy, i64 52
  store float %i.yd, ptr %i.ye, align 4
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yg = load float, ptr %i.yf, align 4
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xy, i64 56
  store float %i.yg, ptr %i.yh, align 4
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xz, i64 12
  %i.yj = load float, ptr %i.yi, align 4
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xy, i64 60
  store float %i.yj, ptr %i.yk, align 4
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.ym = load float, ptr %i.yl, align 16
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  store float %i.ym, ptr %i.yn, align 16
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xz, i64 20
  %i.yp = load i32, ptr %i.yo, align 4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xy, i64 68
  store i32 %i.yp, ptr %i.yq, align 4
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  %i.ys = load i32, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xy, i64 72
  store i32 %i.ys, ptr %i.yt, align 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xz, i64 28
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xy, i64 76
  %i.yw = load i32, ptr %i.yu, align 4
  store i32 %i.yw, ptr %i.yv, align 4
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xz, i64 32
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xy, i64 80
  %i.yz = load i32, ptr %i.yx, align 16
  store i32 %i.yz, ptr %i.yy, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.pre1085 = load float, ptr %i.l, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  store float %i.wy, ptr %i.l, align 16
  br label %bb.x

bb.x:                                             ; preds = %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i, %bb.w
  %i.za = phi float [ %.pre1085, %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i ], [ %i.wy, %bb.w ] ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.029.i
  store i32 0, ptr %i.zb, align 4
  %i.zc = insertelement <4 x float> poison, float %i.za, i64 0
  %i.zd = shufflevector <4 x float> %i.zc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ze = fcmp ole <4 x float> %i.vs, %i.zd
  %i.zf = load <4 x i32>, ptr %7, align 16, !noalias !6799
  %i.zg = select <4 x i1> %i.ze, <4 x i32> %i.zf, <4 x i32> zeroinitializer ; 6 uses
  store <4 x i32> %i.zg, ptr %7, align 16
  %i.zh = icmp slt <4 x i32> %i.zg, zeroinitializer
  %i.zi = bitcast <4 x i1> %i.zh to i4
  %i.zj = icmp eq i4 %i.zi, 0
  br i1 %i.zj, label %.thread, label %bb.y, !prof !20

.thread:                                          ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %.pre1086.pre = load <4 x i32>, ptr %1, align 16, !noalias !6800 ; 2 uses
  %i.zk = load <3 x float>, ptr %i.j, align 16, !noalias !6801 ; 3 uses
  %bc1145 = bitcast <4 x i32> %.pre1086.pre to <4 x float>
  %.pre1116 = extractelement <4 x float> %bc1145, i64 3
  %.pre1118 = bitcast <4 x i32> %.pre1086.pre to <4 x float> ; 3 uses
  %.pre1119 = shufflevector <4 x float> %.pre1118, <4 x float> poison, <4 x i32> zeroinitializer
  %.pre1120 = shufflevector <4 x float> %.pre1118, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %.pre1121 = shufflevector <4 x float> %.pre1118, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %.pre1123 = shufflevector <3 x float> %i.zk, <3 x float> poison, <4 x i32> zeroinitializer
  %.pre1124 = shufflevector <3 x float> %i.zk, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %.pre1125 = shufflevector <3 x float> %i.zk, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.zl = and <4 x i32> %i.zg, %i.vv
  %i.zm = and <4 x i32> %i.zg, splat (i32 2139095040)
  %i.zn = xor <4 x i32> %i.zm, splat (i32 2139095040)
  %i.zo = or <4 x i32> %i.zn, %i.zl
  %i.zp = bitcast <4 x i32> %i.zo to <4 x float>  ; 3 uses
  %i.zq = shufflevector <4 x float> %i.zp, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.zr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zq, <4 x float> %i.zp) ; 2 uses
  %i.zs = shufflevector <4 x float> %i.zr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.zt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zs, <4 x float> %i.zr)
  %i.zu = fcmp oeq <4 x float> %i.zt, %i.zp
  %i.zv = select <4 x i1> %i.zu, <4 x i32> %i.zg, <4 x i32> zeroinitializer ; 2 uses
  %i.zw = icmp slt <4 x i32> %i.zv, zeroinitializer
  %i.zx = bitcast <4 x i1> %i.zw to i4
  %.not1059 = icmp eq i4 %i.zx, 0
  %.sroa.speculated.v = select i1 %.not1059, <4 x i32> %i.zg, <4 x i32> %i.zv
  %i.zy = icmp slt <4 x i32> %.sroa.speculated.v, zeroinitializer
  %i.zz = bitcast <4 x i1> %i.zy to i4
  %i.aaa = zext i4 %i.zz to i64
  %i.aab = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.aaa) #11, !srcloc !23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.q

bb.z:                                             ; preds = %bb.p
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.wm
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.wm
  %i.aae = load float, ptr %i.aac, align 4
  %i.aaf = load float, ptr %i.aad, align 4
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.wm
  %i.aah = load float, ptr %i.aag, align 4, !noalias !6802
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.wm
  %i.aaj = load float, ptr %i.aai, align 4, !noalias !6802
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.wm
  %i.aal = load float, ptr %i.aak, align 4, !noalias !6802
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.wm
  %i.aan = load float, ptr %i.aam, align 4
  store float %i.aan, ptr %i.l, align 16
  store float %i.aah, ptr %i.bz, align 16
  store float %i.aaj, ptr %i.ca, align 4
  store float %i.aal, ptr %i.cb, align 8
  store float %i.aae, ptr %i.cc, align 4
  store float %i.aaf, ptr %i.cd, align 16
  store i32 %i.mr, ptr %i.ce, align 4
  store i32 %i.mp, ptr %i.cf, align 8
  %i.aao = load ptr, ptr %i.bl, align 8           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6embree4sse216BVHNIntersector1ILi4ELi1ELb0ENS0_26SubGridIntersector1MoellerILi4ELb1EEEE8occludedEPKNS_5Accel12IntersectorsERNS_4RayKILi1EEEPNS_15RayQueryContextE:bb.a
  %i.cz = load <4 x float>, ptr %i.cy, align 16, !noalias !6889
  %i.da = fsub <4 x float> %i.cz, %i.ab
  %i.db = fmul <4 x float> %i.ae, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.al
  %i.dd = load <4 x float>, ptr %i.dc, align 16, !noalias !6890
  %i.de = fsub <4 x float> %i.dd, %i.ac
  %i.df = fmul <4 x float> %i.af, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.am
  %i.dh = load <4 x float>, ptr %i.dg, align 16, !noalias !6891
  %i.di = fsub <4 x float> %i.dh, %i.aa
  %i.dj = fmul <4 x float> %i.ad, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.an
  %i.dl = load <4 x float>, ptr %i.dk, align 16, !noalias !6892
  %i.dm = fsub <4 x float> %i.dl, %i.ab
  %i.dn = fmul <4 x float> %i.ae, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ao
  %i.dp = load <4 x float>, ptr %i.do, align 16, !noalias !6893
  %i.dq = fsub <4 x float> %i.dp, %i.ac
  %i.dr = fmul <4 x float> %i.af, %i.dq
  %i.ds = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cx, <4 x float> %i.db)
  %i.dt = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.df, <4 x float> %i.aq)
  %i.du = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ds, <4 x float> %i.dt)
  %i.dv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dj, <4 x float> %i.dn)
  %i.dw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dr, <4 x float> %i.as)
  %i.dx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dv, <4 x float> %i.dw)
  %i.dy = fcmp ole <4 x float> %i.du, %i.dx
  %i.dz = bitcast <4 x i1> %i.dy to i4            ; 2 uses
  %i.ea = icmp eq i4 %i.dz, 0
  br i1 %i.ea, label %.critedge.loopexit, label %bb.d, !prof !20

bb.d:                                             ; preds = %.lr.ph850
  %i.eb = zext i4 %i.dz to i64                    ; 3 uses
  %i.ec = and i64 %.sroa.043.0849, -16
  %i.ed = inttoptr i64 %i.ec to ptr               ; 3 uses
  %i.ee = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.eb) #11, !srcloc !23
  %i.ef = add nuw nsw i64 %i.eb, 15
  %i.eg = and i64 %i.ef, %i.eb                    ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee
  %i.ei = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.ej, i32 0, i32 3, i32 1)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.ek, i32 0, i32 3, i32 1)
  %i.el = icmp eq i64 %i.eg, 0
  br i1 %i.el, label %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit, label %bb.e, !prof !24

bb.e:                                             ; preds = %bb.d
  store i64 %i.ei, ptr %.2795848, align 8
  %storemerge.i844 = getelementptr inbounds nuw i8, ptr %.2795848, i64 8 ; 2 uses
  %i.em = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.eg) #11, !srcloc !23
  %i.en = add nuw nsw i64 %i.eg, 14
  %i.eo = and i64 %i.en, %i.eg                    ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.em
  %i.eq = load i64, ptr %i.ep, align 8            ; 3 uses
  %i.er = inttoptr i64 %i.eq to ptr               ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.es, i32 0, i32 3, i32 1)
  %i.et = icmp eq i64 %i.eo, 0
  br i1 %i.et, label %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit, label %.lr.ph, !prof !27

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.eu = phi i64 [ %i.fa, %.lr.ph ], [ %i.eq, %bb.e ]
  %i.ev = phi i64 [ %i.ey, %.lr.ph ], [ %i.eo, %bb.e ] ; 3 uses
  %storemerge.i845 = phi ptr [ %storemerge.i, %.lr.ph ], [ %storemerge.i844, %bb.e ] ; 2 uses
  store i64 %i.eu, ptr %storemerge.i845, align 8
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i845, i64 8 ; 2 uses
  %i.ew = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ev) #11, !srcloc !23
  %i.ex = add nsw i64 %i.ev, -1
  %i.ey = and i64 %i.ex, %i.ev                    ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ew
  %i.fa = load i64, ptr %i.ez, align 8            ; 3 uses
  %i.fb = inttoptr i64 %i.fa to ptr               ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.fb, i32 0, i32 3, i32 1)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.fc, i32 0, i32 3, i32 1)
  %i.fd = icmp eq i64 %i.ey, 0
  br i1 %i.fd, label %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit, label %.lr.ph, !prof !28, !llvm.loop !7

_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit: ; preds = %.lr.ph, %bb.e, %bb.d
  %.3 = phi ptr [ %.2795848, %bb.d ], [ %storemerge.i844, %bb.e ], [ %storemerge.i, %.lr.ph ] ; 2 uses
  %.sroa.043.1 = phi i64 [ %i.ei, %bb.d ], [ %i.eq, %bb.e ], [ %i.fa, %.lr.ph ] ; 3 uses
  %i.fe = and i64 %.sroa.043.1, 8
  %.not.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i, label %.lr.ph850, label %._crit_edge, !prof !30

._crit_edge:                                      ; preds = %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit, %.lr.ph857
  %.2795.lcssa = phi ptr [ %i.cp, %.lr.ph857 ], [ %.3, %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit ] ; 2 uses
  %.sroa.043.0.lcssa = phi i64 [ %i.cq, %.lr.ph857 ], [ %.sroa.043.1, %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit ] ; 2 uses
  %i.ff = and i64 %.sroa.043.0.lcssa, 15
  %i.fg = add nsw i64 %i.ff, -8                   ; 2 uses
  %i.fh = and i64 %.sroa.043.0.lcssa, -16
  %i.fi = inttoptr i64 %i.fh to ptr
  %.not21.i868.not = icmp eq i64 %i.fg, 0
  br i1 %.not21.i868.not, label %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit.thread800.loopexit, label %.lr.ph871

.lr.ph871:                                        ; preds = %._crit_edge, %.critedge.i
  %.017.i869 = phi i64 [ %i.aaq, %.critedge.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [88 x i8], ptr %i.fi, i64 %.017.i869 ; 10 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 7 uses
  %i.fl = load <4 x i8>, ptr %i.fk, align 8, !noalias !6894
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  %i.fn = load <4 x i8>, ptr %i.fm, align 4, !noalias !6895
  %i.fo = icmp ule <4 x i8> %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fq = load float, ptr %i.fp, align 8
  %i.fr = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 68
  %i.fu = load float, ptr %i.ft, align 4
  %i.fv = insertelement <4 x float> poison, float %i.fu, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.at
  %i.fy = load <4 x i8>, ptr %i.fx, align 4, !noalias !6896
  %i.fz = uitofp <4 x i8> %i.fy to <4 x float>
  %i.ga = fmul <4 x float> %i.fw, %i.fz
  %i.gb = fadd <4 x float> %i.fs, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.au
  %i.gd = load <4 x i8>, ptr %i.gc, align 4, !noalias !6897
  %i.ge = uitofp <4 x i8> %i.gd to <4 x float>
  %i.gf = fmul <4 x float> %i.fw, %i.ge
  %i.gg = fadd <4 x float> %i.fs, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fj, i64 60
  %i.gi = load float, ptr %i.gh, align 4
  %i.gj = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  %i.gm = load float, ptr %i.gl, align 8
  %i.gn = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.av
  %i.gq = load <4 x i8>, ptr %i.gp, align 4, !noalias !6898
  %i.gr = uitofp <4 x i8> %i.gq to <4 x float>
  %i.gs = fmul <4 x float> %i.go, %i.gr
  %i.gt = fadd <4 x float> %i.gk, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aw
  %i.gv = load <4 x i8>, ptr %i.gu, align 4, !noalias !6899
  %i.gw = uitofp <4 x i8> %i.gv to <4 x float>
  %i.gx = fmul <4 x float> %i.go, %i.gw
  %i.gy = fadd <4 x float> %i.gk, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.ha = load float, ptr %i.gz, align 8
  %i.hb = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fj, i64 76
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ax
  %i.hi = load <4 x i8>, ptr %i.hh, align 4, !noalias !6900
  %i.hj = uitofp <4 x i8> %i.hi to <4 x float>
  %i.hk = fmul <4 x float> %i.hg, %i.hj
  %i.hl = fadd <4 x float> %i.hc, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ay
  %i.hn = load <4 x i8>, ptr %i.hm, align 4, !noalias !6901
  %i.ho = uitofp <4 x i8> %i.hn to <4 x float>
  %i.hp = fmul <4 x float> %i.hg, %i.ho
  %i.hq = fadd <4 x float> %i.hc, %i.hp
  %i.hr = fsub <4 x float> %i.gb, %i.aa
  %i.hs = fmul <4 x float> %i.ad, %i.hr
  %i.ht = fsub <4 x float> %i.gt, %i.ab
  %i.hu = fmul <4 x float> %i.ae, %i.ht
  %i.hv = fsub <4 x float> %i.hl, %i.ac
  %i.hw = fmul <4 x float> %i.af, %i.hv
  %i.hx = fsub <4 x float> %i.gg, %i.aa
  %i.hy = fmul <4 x float> %i.ad, %i.hx
  %i.hz = fsub <4 x float> %i.gy, %i.ab
  %i.ia = fmul <4 x float> %i.ae, %i.hz
  %i.ib = fsub <4 x float> %i.hq, %i.ac
  %i.ic = fmul <4 x float> %i.af, %i.ib
  %i.id = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hs, <4 x float> %i.hu)
  %i.ie = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hw, <4 x float> %i.aq)
  %i.if = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.id, <4 x float> %i.ie)
  %i.ig = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hy, <4 x float> %i.ia)
  %i.ih = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ic, <4 x float> %i.as)
  %i.ii = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ig, <4 x float> %i.ih)
  %i.ij = fcmp ole <4 x float> %i.if, %i.ii
  %i.ik = and <4 x i1> %i.fo, %i.ij
  %i.il = bitcast <4 x i1> %i.ik to i4            ; 2 uses
  %.not.i23866 = icmp eq i4 %i.il, 0
  br i1 %.not.i23866, label %.critedge.i, label %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit.lr.ph

_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit.lr.ph: ; preds = %.lr.ph871
  %i.im = zext i4 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  br label %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit

_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit: ; preds = %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit.lr.ph, %_ZNK6embree4sse239SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EE8occludedERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_4Vec3INS_11vfloat_implILi4EEEEESD_SD_SD_RKNS_8GridMesh4GridERKNS_7SubGridE.exit
  %.0797867 = phi i64 [ %i.im, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit.lr.ph ], [ %i.iq, %_ZNK6embree4sse239SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EE8occludedERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_4Vec3INS_11vfloat_implILi4EEEEESD_SD_SD_RKNS_8GridMesh4GridERKNS_7SubGridE.exit ] ; 3 uses
  %i.io = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.0797867) #11, !srcloc !23
  %i.ip = add nsw i64 %.0797867, -1
  %i.iq = and i64 %i.ip, %.0797867                ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.io ; 3 uses
  %i.is = load i16, ptr %i.ir, align 8            ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %i.iu = load i16, ptr %i.it, align 2            ; 2 uses
  %i.iv = load i32, ptr %i.in, align 8            ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.ix = load i32, ptr %i.iw, align 4            ; 3 uses
  %i.iy = load ptr, ptr %2, align 8
  %i.iz = zext i32 %i.iv to i64                   ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 488 ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.iz
  %i.jd = load ptr, ptr %i.jc, align 8            ; 4 uses
  %i.je = zext i32 %i.ix to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 104
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = mul i64 %i.ji, %i.je
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jj ; 4 uses
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = and i16 %i.is, 32767
  %i.jn = zext nneg i16 %i.jm to i32              ; 3 uses
  %i.jo = add i32 %i.jl, %i.jn
  %i.jp = and i16 %i.iu, 32767
  %i.jq = zext nneg i16 %i.jp to i32              ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.js = load i32, ptr %i.jr, align 4            ; 2 uses
  %i.jt = mul i32 %i.js, %i.jq
  %i.ju = add i32 %i.jo, %i.jt
  %i.jv = zext i32 %i.ju to i64                   ; 3 uses
  %i.jw = add nuw nsw i64 %i.jv, 1                ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jd, i64 144
  %i.jy = load ptr, ptr %i.jx, align 8            ; 9 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jd, i64 160
  %i.ka = load i64, ptr %i.jz, align 8            ; 9 uses
  %i.kb = mul i64 %i.ka, %i.jv
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kb
  %i.kd = load <4 x float>, ptr %i.kc, align 1, !noalias !6902 ; 2 uses
  %i.ke = mul i64 %i.jw, %i.ka
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ke
  %i.kg = load <4 x float>, ptr %i.kf, align 1, !noalias !6903 ; 4 uses
  %i.kh = zext i32 %i.js to i64                   ; 3 uses
  %i.ki = add nuw nsw i64 %i.jv, %i.kh            ; 2 uses
  %i.kj = add nuw nsw i64 %i.jw, %i.kh            ; 3 uses
  %i.kk = mul i64 %i.ki, %i.ka
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kk
  %i.km = load <4 x float>, ptr %i.kl, align 1, !noalias !6904 ; 4 uses
  %i.kn = mul i64 %i.kj, %i.ka
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kn
  %i.kp = load <4 x float>, ptr %i.ko, align 1, !noalias !6905 ; 8 uses
  %i.kq = icmp sgt i16 %i.is, -1
  %i.kr = zext i1 %i.kq to i64                    ; 2 uses
  %i.ks = add nuw nsw i64 %i.jw, %i.kr
  %i.kt = mul i64 %i.ks, %i.ka
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kt
  %i.kv = load <4 x float>, ptr %i.ku, align 1, !noalias !6906 ; 2 uses
  %i.kw = add nuw nsw i64 %i.kj, %i.kr            ; 2 uses
  %i.kx = mul i64 %i.kw, %i.ka
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kx
  %i.kz = load <4 x float>, ptr %i.ky, align 1, !noalias !6907 ; 4 uses
  %i.la = icmp slt i16 %i.iu, 0
  %spec.select = select i1 %i.la, i64 0, i64 %i.kh ; 3 uses
  %i.lb = add nuw nsw i64 %i.ki, %spec.select
  %i.lc = add nuw nsw i64 %i.kj, %spec.select
  %i.ld = mul i64 %i.lb, %i.ka
  %i.le = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ld
  %i.lf = load <4 x float>, ptr %i.le, align 1, !noalias !6908 ; 2 uses
  %i.lg = mul i64 %i.lc, %i.ka
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.lg
  %i.li = load <4 x float>, ptr %i.lh, align 1, !noalias !6909 ; 4 uses
  %i.lj = add nuw nsw i64 %i.kw, %spec.select
  %i.lk = mul i64 %i.lj, %i.ka
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.lk
  %i.lm = load <4 x float>, ptr %i.ll, align 1, !noalias !6910 ; 2 uses
  %i.ln = shufflevector <4 x float> %i.kd, <4 x float> %i.kp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.lo = shufflevector <4 x float> %i.kd, <4 x float> %i.kp, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.lp = shufflevector <4 x float> %i.kg, <4 x float> %i.km, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.lq = shufflevector <4 x float> %i.kg, <4 x float> %i.km, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.lr = shufflevector <4 x float> %i.ln, <4 x float> %i.lp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.ls = shufflevector <4 x float> %i.ln, <4 x float> %i.lp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 3 uses
  %i.lt = shufflevector <4 x float> %i.lo, <4 x float> %i.lq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.lu = shufflevector <4 x float> %i.kg, <4 x float> %i.kz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.lv = shufflevector <4 x float> %i.kg, <4 x float> %i.kz, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.lw = shufflevector <4 x float> %i.kv, <4 x float> %i.kp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.lx = shufflevector <4 x float> %i.kv, <4 x float> %i.kp, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ly = shufflevector <4 x float> %i.lu, <4 x float> %i.lw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.lz = shufflevector <4 x float> %i.lu, <4 x float> %i.lw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ma = shufflevector <4 x float> %i.lv, <4 x float> %i.lx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.mb = shufflevector <4 x float> %i.kp, <4 x float> %i.lm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.mc = shufflevector <4 x float> %i.kp, <4 x float> %i.lm, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.md = shufflevector <4 x float> %i.kz, <4 x float> %i.li, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.me = shufflevector <4 x float> %i.kz, <4 x float> %i.li, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.mf = shufflevector <4 x float> %i.mb, <4 x float> %i.md, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.mg = shufflevector <4 x float> %i.mb, <4 x float> %i.md, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 3 uses
  %i.mh = shufflevector <4 x float> %i.mc, <4 x float> %i.me, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.mi = shufflevector <4 x float> %i.km, <4 x float> %i.li, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.mj = shufflevector <4 x float> %i.km, <4 x float> %i.li, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.mk = shufflevector <4 x float> %i.kp, <4 x float> %i.lf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ml = shufflevector <4 x float> %i.kp, <4 x float> %i.lf, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.mm = shufflevector <4 x float> %i.mi, <4 x float> %i.mk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.mn = shufflevector <4 x float> %i.mi, <4 x float> %i.mk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.mo = shufflevector <4 x float> %i.mj, <4 x float> %i.ml, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.mp = fsub <4 x float> %i.lr, %i.ly           ; 3 uses
  %i.mq = fsub <4 x float> %i.ls, %i.lz           ; 3 uses
  %i.mr = fsub <4 x float> %i.lt, %i.ma           ; 3 uses
  %i.ms = fsub <4 x float> %i.mm, %i.lr           ; 3 uses
  %i.mt = fsub <4 x float> %i.mn, %i.ls           ; 3 uses
  %i.mu = fsub <4 x float> %i.mo, %i.lt           ; 3 uses
  %i.mv = fmul <4 x float> %i.mq, %i.mu
  %i.mw = fmul <4 x float> %i.mr, %i.mt
  %i.mx = fsub <4 x float> %i.mw, %i.mv           ; 3 uses
  %i.my = fmul <4 x float> %i.mr, %i.ms
  %i.mz = fmul <4 x float> %i.mp, %i.mu
  %i.na = fsub <4 x float> %i.mz, %i.my           ; 3 uses
  %i.nb = fmul <4 x float> %i.mp, %i.mt
  %i.nc = fmul <4 x float> %i.mq, %i.ms
  %i.nd = fsub <4 x float> %i.nc, %i.nb           ; 3 uses
  %i.ne = load <4 x i32>, ptr %1, align 16, !noalias !6911 ; 2 uses
  %i.nf = bitcast <4 x i32> %i.ne to <4 x float>  ; 3 uses
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.nh = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.ni = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 4 uses
  %i.nj = load <3 x float>, ptr %i.l, align 16, !noalias !6912 ; 3 uses
  %i.nk = shufflevector <3 x float> %i.nj, <3 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.nl = shufflevector <3 x float> %i.nj, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.nm = shufflevector <3 x float> %i.nj, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 6 uses
  %i.nn = fsub <4 x float> %i.lr, %i.ng           ; 3 uses
  %i.no = fsub <4 x float> %i.ls, %i.nh           ; 3 uses
  %i.np = fsub <4 x float> %i.lt, %i.ni           ; 3 uses
  %i.nq = fmul <4 x float> %i.np, %i.nl
  %i.nr = fmul <4 x float> %i.no, %i.nm
  %i.ns = fsub <4 x float> %i.nr, %i.nq           ; 2 uses
  %i.nt = fmul <4 x float> %i.nn, %i.nm
  %i.nu = fmul <4 x float> %i.np, %i.nk
  %i.nv = fsub <4 x float> %i.nu, %i.nt           ; 2 uses
  %i.nw = fmul <4 x float> %i.no, %i.nk
  %i.nx = fmul <4 x float> %i.nn, %i.nl
  %i.ny = fsub <4 x float> %i.nx, %i.nw           ; 2 uses
  %i.nz = fmul <4 x float> %i.nd, %i.nm
  %i.oa = fmul <4 x float> %i.na, %i.nl
  %i.ob = fadd <4 x float> %i.oa, %i.nz
  %i.oc = fmul <4 x float> %i.mx, %i.nk
  %i.od = fadd <4 x float> %i.oc, %i.ob           ; 3 uses
  %i.oe = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.od) ; 7 uses
  %i.of = fmul <4 x float> %i.mu, %i.ny
  %i.og = fmul <4 x float> %i.mt, %i.nv
  %i.oh = fadd <4 x float> %i.og, %i.of
  %i.oi = fmul <4 x float> %i.ms, %i.ns
  %i.oj = fadd <4 x float> %i.oi, %i.oh
  %i.ok = bitcast <4 x float> %i.oj to <2 x i64>
  %i.ol = bitcast <4 x float> %i.od to <2 x i64>
  %i.om = and <2 x i64> %i.ol, splat (i64 -9223372034707292160) ; 3 uses
  %i.on = xor <2 x i64> %i.om, %i.ok
  %i.oo = bitcast <2 x i64> %i.on to <4 x float>  ; 3 uses
  %i.op = fmul <4 x float> %i.mr, %i.ny
  %i.oq = fmul <4 x float> %i.mq, %i.nv
  %i.or = fadd <4 x float> %i.oq, %i.op
  %i.os = fmul <4 x float> %i.mp, %i.ns
  %i.ot = fadd <4 x float> %i.os, %i.or
  %i.ou = bitcast <4 x float> %i.ot to <2 x i64>
  %i.ov = xor <2 x i64> %i.om, %i.ou
  %i.ow = bitcast <2 x i64> %i.ov to <4 x float>  ; 3 uses
  %i.ox = fcmp une <4 x float> %i.od, zeroinitializer
  %i.oy = fcmp uge <4 x float> %i.oo, zeroinitializer
  %i.oz = and <4 x i1> %i.ox, %i.oy
  %i.pa = fcmp uge <4 x float> %i.ow, zeroinitializer
  %i.pb = and <4 x i1> %i.pa, %i.oz
  %i.pc = fadd <4 x float> %i.oo, %i.ow
  %i.pd = fcmp ole <4 x float> %i.pc, %i.oe
  %i.pe = and <4 x i1> %i.pd, %i.pb
  %i.pf = select <4 x i1> %i.pe, <4 x i32> %i.az, <4 x i32> zeroinitializer ; 2 uses
  %i.pg = icmp slt <4 x i32> %i.pf, zeroinitializer
  %i.ph = bitcast <4 x i1> %i.pg to i4
  %i.pi = icmp eq i4 %i.ph, 0
  %bc = bitcast <4 x i32> %i.ne to <4 x float>    ; 2 uses
  %i.pj = extractelement <4 x float> %bc, i64 3   ; 3 uses
  br i1 %i.pi, label %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i, label %bb.f, !prof !24

bb.f:                                             ; preds = %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit
  %i.pk = fmul <4 x float> %i.nd, %i.np
  %i.pl = fmul <4 x float> %i.na, %i.no
  %i.pm = fadd <4 x float> %i.pl, %i.pk
  %i.pn = fmul <4 x float> %i.mx, %i.nn
  %i.po = fadd <4 x float> %i.pn, %i.pm
  %i.pp = bitcast <4 x float> %i.po to <2 x i64>
  %i.pq = xor <2 x i64> %i.om, %i.pp
  %i.pr = bitcast <2 x i64> %i.pq to <4 x float>  ; 3 uses
  %i.ps = shufflevector <4 x float> %bc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.pt = fmul <4 x float> %i.oe, %i.ps
  %i.pu = fcmp olt <4 x float> %i.pt, %i.pr
  %i.pv = load float, ptr %i.g, align 16          ; 2 uses
  %i.pw = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.py = fmul <4 x float> %i.oe, %i.px
  %i.pz = fcmp oge <4 x float> %i.py, %i.pr
  %i.qa = and <4 x i1> %i.pu, %i.pz
  %i.qb = icmp slt <4 x i32> %i.pf, zeroinitializer
  %i.qc = and <4 x i1> %i.qa, %i.qb
  %i.qd = bitcast <4 x i1> %i.qc to i4            ; 2 uses
  %i.qe = icmp eq i4 %i.qd, 0
  br i1 %i.qe, label %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  store <4 x float> %i.mx, ptr %i.be, align 16
  store <4 x float> %i.na, ptr %i.bf, align 16
  store <4 x float> %i.nd, ptr %i.bg, align 16
  %i.qf = insertelement <4 x i32> poison, i32 %i.jn, i64 0
  %i.qg = shufflevector <4 x i32> %i.qf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qh = insertelement <4 x i32> poison, i32 %i.jq, i64 0
  %i.qi = shufflevector <4 x i32> %i.qh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qj = add nuw nsw <4 x i32> %i.qg, <i32 0, i32 1, i32 1, i32 0>
  %i.qk = add nuw nsw <4 x i32> %i.qi, <i32 0, i32 0, i32 1, i32 1>
  %i.ql = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.qm = load <2 x i16>, ptr %i.ql, align 4
  %i.qn = zext <2 x i16> %i.qm to <2 x i32>
  %i.qo = add nsw <2 x i32> %i.qn, splat (i32 -1)
  %i.qp = sitofp <2 x i32> %i.qo to <2 x float>   ; 3 uses
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.qr = call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.qq) ; 2 uses
  %i.qs = extractelement <4 x float> %i.qr, i64 0
  %i.qt = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.qu = call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.qt) ; 2 uses
  %i.qv = extractelement <4 x float> %i.qu, i64 0
  %i.qw = shufflevector <4 x float> %i.qr, <4 x float> %i.qu, <2 x i32> <i32 0, i32 4>
  %i.qx = fmul <2 x float> %i.qw, %i.qp
  %i.qy = fsub <2 x float> splat (float 2.000000e+00), %i.qx ; 2 uses
  %i.qz = extractelement <2 x float> %i.qy, i64 0
  %i.ra = fmul float %i.qs, %i.qz
  %i.rb = extractelement <2 x float> %i.qy, i64 1
  %i.rc = fmul float %i.qv, %i.rb
  %i.rd = uitofp nneg <4 x i32> %i.qj to <4 x float>
  %i.re = fmul <4 x float> %i.oe, %i.rd
  %i.rf = fadd <4 x float> %i.re, %i.oo
  %i.rg = insertelement <4 x float> poison, float %i.ra, i64 0
  %i.rh = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ri = fmul <4 x float> %i.rf, %i.rh
  %i.rj = uitofp nneg <4 x i32> %i.qk to <4 x float>
  %i.rk = fmul <4 x float> %i.oe, %i.rj
  %i.rl = fadd <4 x float> %i.rk, %i.ow
  %i.rm = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ro = fmul <4 x float> %i.rl, %i.rn
  %9 = load ptr, ptr %i.ja, align 8
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.iz
  %11 = load ptr, ptr %10, align 8                ; 5 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.rq = load i32, ptr %i.rp, align 4
  %i.rr = load i32, ptr %i.bh, align 4
  %i.rs = and i32 %i.rr, %i.rq
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ru = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8
  %.not = icmp eq ptr %i.rw, null
  br i1 %.not, label %bb.i, label %.lr.ph861, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.rx = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.ry = load ptr, ptr %i.rx, align 8
  %.not835 = icmp eq ptr %i.ry, null
  br i1 %.not835, label %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedILb0EEEbPKNS_5Accel12IntersectorsERNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextEPKNS_12SubGridQBVHNILi4EEEmRKNS0_7TravRayILi4EXT_EEERm.exit, label %.lr.ph861, !prof !24

.lr.ph861:                                        ; preds = %bb.h, %bb.i
  %i.rz = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.oe) ; 3 uses
  %i.sa = fmul <4 x float> %i.oe, %i.rz
  %i.sb = fsub <4 x float> splat (float 1.000000e+00), %i.sa
  %i.sc = fmul <4 x float> %i.rz, %i.sb
  %i.sd = fadd <4 x float> %i.rz, %i.sc           ; 3 uses
  %i.se = fmul <4 x float> %i.sd, %i.pr
  store <4 x float> %i.se, ptr %i.bj, align 16
  %i.sf = fmul <4 x float> %i.ri, %i.sd
  store <4 x float> %i.sf, ptr %i.bk, align 16
  %i.sg = fmul <4 x float> %i.ro, %i.sd
  store <4 x float> %i.sg, ptr %i.bl, align 16
  %i.sh = zext i4 %i.qd to i64                    ; 2 uses
  %i.si = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.sh) #11, !srcloc !23
  %i.sj = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sl = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.sm = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.sn = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.so = insertelement <2 x ptr> %i.cl, ptr %i.sj, i64 0
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph861, %bb.p
  %.0.i25860 = phi i64 [ %i.si, %.lr.ph861 ], [ %i.tp, %bb.p ] ; 7 uses
  %.022.i859 = phi i64 [ %i.sh, %.lr.ph861 ], [ %i.to, %bb.p ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.0.i25860
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0.i25860
  %i.sr = load float, ptr %i.sp, align 4
  %i.ss = load float, ptr %i.sq, align 4
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0.i25860
  %i.su = load float, ptr %i.st, align 4
  store float %i.su, ptr %i.g, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.0.i25860
  %i.sw = load float, ptr %i.sv, align 4, !noalias !6913
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.0.i25860
  %i.sy = load float, ptr %i.sx, align 4, !noalias !6913
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.0.i25860
  %i.ta = load float, ptr %i.sz, align 4, !noalias !6913
  store float %i.sw, ptr %6, align 16
  store float %i.sy, ptr %i.bn, align 4
  store float %i.ta, ptr %i.bo, align 8
  store float %i.sr, ptr %i.bp, align 4
  store float %i.ss, ptr %i.bq, align 16
  store i32 %i.ix, ptr %i.br, align 4
  store i32 %i.iv, ptr %i.bs, align 8
  %i.tb = load i32, ptr %i.sj, align 4
  store i32 %i.tb, ptr %i.bt, align 4
  %i.tc = load i32, ptr %i.sk, align 4
  store i32 %i.tc, ptr %i.bu, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 -1, ptr %i.b, align 4
  store ptr %i.b, ptr %5, align 8
  %i.td = load ptr, ptr %i.sl, align 8
  store ptr %i.td, ptr %i.bv, align 8
  store <2 x ptr> %i.so, ptr %i.bw, align 8
  store ptr %6, ptr %i.bx, align 8
  store i32 1, ptr %i.by, align 8
  %i.te = load ptr, ptr %i.sm, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.te, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void %i.te(ptr noundef nonnull %5), !inline_history !6876
  %i.tf = load ptr, ptr %5, align 8
  %i.tg = load i32, ptr %i.tf, align 4
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ti = load ptr, ptr %i.rv, align 8            ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ti, null
  br i1 %.not12.i.i, label %_ZNK6embree4sse217Occluded1EpilogMUILi4ELb1EEclINS0_19MoellerTrumboreHitMILi4ENS0_10UVIdentityILi4EEEEEEEbRKNS_11vboolf_implILi4EEERT_.exit.thread817, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.tj = load i32, ptr %i.ru, align 8
  %i.tk = and i32 %i.tj, 2
  %.not836 = icmp eq i32 %i.tk, 0
  br i1 %.not836, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.tl = load i32, ptr %i.sn, align 4
  %i.tm = and i32 %i.tl, 4194304
  %.not837 = icmp eq i32 %i.tm, 0
  br i1 %.not837, label %_ZNK6embree4sse217Occluded1EpilogMUILi4ELb1EEclINS0_19MoellerTrumboreHitMILi4ENS0_10UVIdentityILi4EEEEEEEbRKNS_11vboolf_implILi4EEERT_.exit.thread817, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void %i.ti(ptr noundef nonnull %5), !inline_history !6876
  %.pre = load ptr, ptr %5, align 8
  %.pre882 = load i32, ptr %.pre, align 4
  %i.tn = icmp eq i32 %.pre882, 0
  br i1 %i.tn, label %bb.p, label %_ZNK6embree4sse217Occluded1EpilogMUILi4ELb1EEclINS0_19MoellerTrumboreHitMILi4ENS0_10UVIdentityILi4EEEEEEEbRKNS_11vboolf_implILi4EEERT_.exit.thread817

bb.p:                                             ; preds = %bb.k, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  store float %i.pv, ptr %i.g, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.to = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %.0.i25860, i64 %.022.i859) #11, !srcloc !31 ; 3 uses
  %i.tp = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.to) #11, !srcloc !23
  %.not.i26 = icmp eq i64 %i.to, 0
  br i1 %.not.i26, label %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit, label %bb.j, !llvm.loop !6877

_ZNK6embree4sse217Occluded1EpilogMUILi4ELb1EEclINS0_19MoellerTrumboreHitMILi4ENS0_10UVIdentityILi4EEEEEEEbRKNS_11vboolf_implILi4EEERT_.exit.thread817: ; preds = %bb.n, %bb.l, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedILb0EEEbPKNS_5Accel12IntersectorsERNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextEPKNS_12SubGridQBVHNILi4EEEmRKNS0_7TravRayILi4EXT_EEERm.exit

_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit: ; preds = %bb.p
  %.pre883 = load <4 x i32>, ptr %1, align 16, !noalias !6914 ; 2 uses
  %i.tq = load <3 x float>, ptr %i.l, align 16, !noalias !6915 ; 3 uses
  %bc922 = bitcast <4 x i32> %.pre883 to <4 x float>
  %i.tr = extractelement <4 x float> %bc922, i64 3
  %.pre887 = bitcast <4 x i32> %.pre883 to <4 x float> ; 3 uses
  %.pre888 = shufflevector <4 x float> %.pre887, <4 x float> poison, <4 x i32> zeroinitializer
  %.pre890 = shufflevector <4 x float> %.pre887, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %.pre892 = shufflevector <4 x float> %.pre887, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %.pre896 = shufflevector <3 x float> %i.tq, <3 x float> poison, <4 x i32> zeroinitializer
  %.pre898 = shufflevector <3 x float> %i.tq, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %.pre900 = shufflevector <3 x float> %i.tq, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  br label %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i

_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i: ; preds = %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit, %bb.g, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit, %bb.f
  %.pre-phi901 = phi <4 x float> [ %i.nm, %bb.f ], [ %.pre900, %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit ], [ %i.nm, %bb.g ], [ %i.nm, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit ] ; 3 uses
  %.pre-phi899 = phi <4 x float> [ %i.nl, %bb.f ], [ %.pre898, %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit ], [ %i.nl, %bb.g ], [ %i.nl, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit ] ; 3 uses
  %.pre-phi897 = phi <4 x float> [ %i.nk, %bb.f ], [ %.pre896, %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit ], [ %i.nk, %bb.g ], [ %i.nk, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit ] ; 3 uses
  %.pre-phi893 = phi <4 x float> [ %i.ni, %bb.f ], [ %.pre892, %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit ], [ %i.ni, %bb.g ], [ %i.ni, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit ]
  %.pre-phi891 = phi <4 x float> [ %i.nh, %bb.f ], [ %.pre890, %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit ], [ %i.nh, %bb.g ], [ %i.nh, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit ]
  %.pre-phi889 = phi <4 x float> [ %i.ng, %bb.f ], [ %.pre888, %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit ], [ %i.ng, %bb.g ], [ %i.ng, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit ]
  %i.ts = phi float [ %i.pj, %bb.f ], [ %i.tr, %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i.loopexit ], [ %i.pj, %bb.g ], [ %i.pj, %_ZN6embree4sse226SubGridIntersector1MoellerILi4ELb1EE8occludedERKNS0_39SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EEERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_7SubGridE.exit ]
  %i.tt = fsub <4 x float> %i.mf, %i.mm           ; 3 uses
  %i.tu = fsub <4 x float> %i.mg, %i.mn           ; 3 uses
  %i.tv = fsub <4 x float> %i.mh, %i.mo           ; 3 uses
  %i.tw = fsub <4 x float> %i.ly, %i.mf           ; 3 uses
  %i.tx = fsub <4 x float> %i.lz, %i.mg           ; 3 uses
  %i.ty = fsub <4 x float> %i.ma, %i.mh           ; 3 uses
  %i.tz = fmul <4 x float> %i.ty, %i.tu
  %i.ua = fmul <4 x float> %i.tx, %i.tv
  %i.ub = fsub <4 x float> %i.ua, %i.tz           ; 3 uses
  %i.uc = fmul <4 x float> %i.tw, %i.tv
  %i.ud = fmul <4 x float> %i.ty, %i.tt
  %i.ue = fsub <4 x float> %i.ud, %i.uc           ; 3 uses
  %i.uf = fmul <4 x float> %i.tx, %i.tt
  %i.ug = fmul <4 x float> %i.tw, %i.tu
  %i.uh = fsub <4 x float> %i.ug, %i.uf           ; 3 uses
  %i.ui = fsub <4 x float> %i.mf, %.pre-phi889    ; 3 uses
  %i.uj = fsub <4 x float> %i.mg, %.pre-phi891    ; 3 uses
  %i.uk = fsub <4 x float> %i.mh, %.pre-phi893    ; 3 uses
  %i.ul = fmul <4 x float> %i.uk, %.pre-phi899
  %i.um = fmul <4 x float> %i.uj, %.pre-phi901
  %i.un = fsub <4 x float> %i.um, %i.ul           ; 2 uses
  %i.uo = fmul <4 x float> %i.ui, %.pre-phi901
  %i.up = fmul <4 x float> %i.uk, %.pre-phi897
  %i.uq = fsub <4 x float> %i.up, %i.uo           ; 2 uses
  %i.ur = fmul <4 x float> %i.uj, %.pre-phi897
  %i.us = fmul <4 x float> %i.ui, %.pre-phi899
  %i.ut = fsub <4 x float> %i.us, %i.ur           ; 2 uses
  %i.uu = fmul <4 x float> %i.uh, %.pre-phi901
  %i.uv = fmul <4 x float> %i.ue, %.pre-phi899
  %i.uw = fadd <4 x float> %i.uv, %i.uu
  %i.ux = fmul <4 x float> %i.ub, %.pre-phi897
  %i.uy = fadd <4 x float> %i.ux, %i.uw           ; 3 uses
  %i.uz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.uy) ; 10 uses
  %i.va = fmul <4 x float> %i.ty, %i.ut
  %i.vb = fmul <4 x float> %i.tx, %i.uq
  %i.vc = fadd <4 x float> %i.vb, %i.va
  %i.vd = fmul <4 x float> %i.tw, %i.un
  %i.ve = fadd <4 x float> %i.vd, %i.vc
  %i.vf = bitcast <4 x float> %i.ve to <2 x i64>
  %i.vg = bitcast <4 x float> %i.uy to <2 x i64>
  %i.vh = and <2 x i64> %i.vg, splat (i64 -9223372034707292160) ; 3 uses
  %i.vi = xor <2 x i64> %i.vh, %i.vf
  %i.vj = bitcast <2 x i64> %i.vi to <4 x float>  ; 3 uses
  %i.vk = fmul <4 x float> %i.tv, %i.ut
  %i.vl = fmul <4 x float> %i.tu, %i.uq
  %i.vm = fadd <4 x float> %i.vl, %i.vk
  %i.vn = fmul <4 x float> %i.tt, %i.un
  %i.vo = fadd <4 x float> %i.vn, %i.vm
  %i.vp = bitcast <4 x float> %i.vo to <2 x i64>
  %i.vq = xor <2 x i64> %i.vh, %i.vp
  %i.vr = bitcast <2 x i64> %i.vq to <4 x float>  ; 3 uses
  %i.vs = fcmp une <4 x float> %i.uy, zeroinitializer
  %i.vt = fcmp uge <4 x float> %i.vj, zeroinitializer
  %i.vu = and <4 x i1> %i.vs, %i.vt
  %i.vv = fcmp uge <4 x float> %i.vr, zeroinitializer
  %i.vw = and <4 x i1> %i.vv, %i.vu
  %i.vx = fadd <4 x float> %i.vj, %i.vr
  %i.vy = fcmp ole <4 x float> %i.vx, %i.uz
  %i.vz = and <4 x i1> %i.vy, %i.vw
  %i.wa = select <4 x i1> %i.vz, <4 x i32> %i.az, <4 x i32> zeroinitializer ; 2 uses
  %i.wb = icmp slt <4 x i32> %i.wa, zeroinitializer
  %i.wc = bitcast <4 x i1> %i.wb to i4
  %i.wd = icmp eq i4 %i.wc, 0
  br i1 %i.wd, label %_ZNK6embree4sse239SubGridQuadMIntersector1MoellerTrumboreILi4ELb1EE8occludedERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_4Vec3INS_11vfloat_implILi4EEEEESD_SD_SD_RKNS_8GridMesh4GridERKNS_7SubGridE.exit, label %bb.q, !prof !24

bb.q:                                             ; preds = %_ZNK6embree4sse227MoellerTrumboreIntersector1ILi4ELb1EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi1EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit20.i
  %i.we = fmul <4 x float> %i.uh, %i.uk
  %i.wf = fmul <4 x float> %i.ue, %i.uj
  %i.wg = fadd <4 x float> %i.wf, %i.we
  %i.wh = fmul <4 x float> %i.ub, %i.ui
  %i.wi = fadd <4 x float> %i.wh, %i.wg
  %i.wj = bitcast <4 x float> %i.wi to <2 x i64>
  %i.wk = xor <2 x i64> %i.vh, %i.wj              ; 2 uses
  %i.wl = bitcast <2 x i64> %i.wk to <4 x float>  ; 3 uses
  %i.wm = insertelement <4 x float> poison, float %i.ts, i64 0
  %i.wn = shufflevector <4 x float> %i.wm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wo = fmul <4 x float> %i.uz, %i.wn
  %i.wp = fcmp olt <4 x float> %i.wo, %i.wl
  %i.wq = load float, ptr %i.g, align 16          ; 2 uses
  %i.wr = insertelement <4 x float> poison, float %i.wq, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wt = fmul <4 x float> %i.uz, %i.ws
  %i.wu = fcmp oge <4 x float> %i.wt, %i.wl
  %i.wv = and <4 x i1> %i.wp, %i.wu
  %i.ww = select <4 x i1> %i.wv, <4 x i32> %i.wa, <4 x i32> zeroinitializer ; 2 uses
  %i.wx = icmp slt <4 x i32> %i.ww, zeroinitializer
  %i.wy = bitcast <4 x i1> %i.wx to i4            ; 2 uses
end_hunk_1
