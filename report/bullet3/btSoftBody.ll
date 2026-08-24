Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody7setPoseEbb:bb.a
  %i.ij = fsub float %i.ii, %.sroa.6100.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ij, i64 0
  %i.ik = load ptr, ptr %i.ia, align 8, !tbaa !127
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %indvars.iv125 ; 2 uses
  store <2 x float> %i.ig, ptr %i.il, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !230
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.im = load ptr, ptr %i.hz, align 8, !tbaa !140
  %i.in = getelementptr inbounds nuw [256 x i8], ptr %i.im, i64 %indvars.iv.next126 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load <2 x float>, ptr %i.io, align 4, !tbaa !223
  %i.iq = fsub <2 x float> %i.ip, %.sroa.07.1.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.is = load float, ptr %i.ir, align 4, !tbaa !223
  %i.it = fsub float %i.is, %.sroa.6100.8.vec.extract
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.it, i64 0
  %i.iu = load ptr, ptr %i.ia, align 8, !tbaa !127
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %indvars.iv.next126 ; 2 uses
  store <2 x float> %i.iq, ptr %i.iv, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !230
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter251.next.1 = add i64 %niter251, 2         ; 2 uses
  %niter251.ncmp.1 = icmp eq i64 %niter251.next.1, %unroll_iter250
  br i1 %niter251.ncmp.1, label %._crit_edge108.loopexit.unr-lcssa, label %bb.o, !llvm.loop !674

._crit_edge108.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %._crit_edge108.loopexit, label %.epil.preheader246

.epil.preheader246:                               ; preds = %._crit_edge108.loopexit.unr-lcssa, %.lr.ph107
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next126.1, %._crit_edge108.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod249 = trunc i32 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod249)
  %i.iw = load ptr, ptr %i.hz, align 8, !tbaa !140
  %i.ix = getelementptr inbounds nuw [256 x i8], ptr %i.iw, i64 %indvars.iv125.epil.init ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load <2 x float>, ptr %i.iy, align 4, !tbaa !223
  %i.ja = fsub <2 x float> %i.iz, %.sroa.07.1.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !223
  %i.jd = fsub float %i.jc, %.sroa.6100.8.vec.extract
  %.sroa.3.12.vec.insert.i.epil = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jd, i64 0
  %i.je = load ptr, ptr %i.ia, align 8, !tbaa !127
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %indvars.iv125.epil.init ; 2 uses
  store <2 x float> %i.ja, ptr %i.jf, align 4
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.epil, ptr %.sroa.4.0..sroa_idx.epil, align 4, !tbaa !230
  br label %._crit_edge108.loopexit

._crit_edge108.loopexit:                          ; preds = %._crit_edge108.loopexit.unr-lcssa, %.epil.preheader246
  %.pre137.pre = load i32, ptr %i.e, align 4, !tbaa !141
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %.pre137 = phi i32 [ %.pre137.pre, %._crit_edge108.loopexit ], [ %i.hx, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit ] ; 3 uses
  %i.jg = icmp sgt i32 %.pre137, 0
  %or.cond = select i1 %1, i1 %i.jg, i1 false
  br i1 %or.cond, label %bb.p, label %_ZNK10btSoftBody9getVolumeEv.exit

bb.p:                                             ; preds = %._crit_edge108
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !140 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %.sroa.027.0.copyload.i = load float, ptr %i.jj, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.jk = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !153 ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph.i63, label %._crit_edge.i

.lr.ph.i63:                                       ; preds = %bb.p
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !152
  %wide.trip.count.i64 = zext nneg i32 %i.jm to i64
  %i.jq = extractelement <2 x float> %i.jk, i64 0 ; 2 uses
  %i.jr = extractelement <2 x float> %i.jk, i64 1 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i63
  %indvars.iv.i65 = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i66, %bb.q ] ; 2 uses
  %.035.i = phi float [ 0.000000e+00, %.lr.ph.i63 ], [ %i.ll, %bb.q ]
  %i.js = getelementptr inbounds nuw [144 x i8], ptr %i.jp, i64 %indvars.iv.i65 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !345 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !223
  %i.jx = fsub float %i.jw, %.sroa.027.0.copyload.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  %i.jz = load <2 x float>, ptr %i.jy, align 4, !tbaa !223
  %i.ka = fsub <2 x float> %i.jz, %i.jk           ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !345 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !223
  %i.kf = fsub float %i.ke, %.sroa.027.0.copyload.i ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !223
  %i.ki = fsub float %i.kh, %i.jq                 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !223
  %i.kl = fsub float %i.kk, %i.jr                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !345 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !223
  %i.kq = fsub float %i.kp, %.sroa.027.0.copyload.i ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !223
  %i.kt = fsub float %i.ks, %i.jq                 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !223
  %i.kw = fsub float %i.kv, %i.jr                 ; 2 uses
  %i.kx = fneg float %i.kt
  %i.ky = fmul float %i.kl, %i.kx
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.kw, float %i.ky)
  %i.la = fneg float %i.kw
  %i.lb = fmul float %i.kf, %i.la
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.kq, float %i.lb)
  %i.ld = fneg float %i.kq
  %i.le = fmul float %i.ki, %i.ld
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.kt, float %i.le)
  %i.lg = extractelement <2 x float> %i.ka, i64 0
  %i.lh = fmul float %i.lg, %i.lc
  %i.li = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.kz, float %i.lh)
  %i.lj = extractelement <2 x float> %i.ka, i64 1
  %i.lk = tail call noundef float @llvm.fmuladd.f32(float %i.lj, float %i.lf, float %i.li)
  %i.ll = fadd float %.035.i, %i.lk               ; 2 uses
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i64
  br i1 %exitcond.not.i67, label %._crit_edge.i, label %bb.q, !llvm.loop !601

._crit_edge.i:                                    ; preds = %bb.q, %bb.p
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.p ], [ %i.ll, %bb.q ]
  %i.lm = fdiv float %.0.lcssa.i, 6.000000e+00
  br label %_ZNK10btSoftBody9getVolumeEv.exit

_ZNK10btSoftBody9getVolumeEv.exit:                ; preds = %._crit_edge.i, %._crit_edge108
  %i.ln = phi float [ 0.000000e+00, %._crit_edge108 ], [ %i.lm, %._crit_edge.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 652
  store float %i.ln, ptr %i.lo, align 4, !tbaa !261
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.07.1.i, ptr %i.lp, align 8
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <2 x float> %.sroa.7.1.i, ptr %.sroa.6100.0..sroa_idx, align 8, !tbaa !230
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 736
  store float 1.000000e+00, ptr %i.lq, align 8, !tbaa !223
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 756
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ls, align 4, !tbaa !223
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.lu, align 8, !tbaa !223
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 784
  store float 1.000000e+00, ptr %i.lv, align 8, !tbaa !223
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 804
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.lx, align 4, !tbaa !223
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.lz, align 8, !tbaa !223
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 4 uses
  %i.me = icmp sgt i32 %.pre137, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ma, i8 0, i64 52, i1 false)
  br i1 %i.me, label %.lr.ph110, label %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge

_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge: ; preds = %_ZNK10btSoftBody9getVolumeEv.exit
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %0, i64 852
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %0, i64 856
  %.pre142 = load float, ptr %i.md, align 8, !tbaa !223, !noalias !675
  %.pre143 = load float, ptr %i.mb, align 8, !tbaa !223, !noalias !675 ; 2 uses
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %0, i64 836
  %.phi.trans.insert146 = getelementptr inbounds nuw i8, ptr %0, i64 840
  %.pre141 = load float, ptr %.phi.trans.insert140, align 8, !tbaa !223, !noalias !675
  %.pre139 = load float, ptr %.phi.trans.insert138, align 4, !tbaa !223, !noalias !675
  %.pre147 = load float, ptr %.phi.trans.insert146, align 8, !tbaa !223, !noalias !675 ; 2 uses
  %.pre145 = load float, ptr %.phi.trans.insert144, align 4, !tbaa !223, !noalias !675
  %i.mf = insertelement <2 x float> poison, float %.pre147, i64 0
  %i.mg = insertelement <2 x float> %i.mf, float %.pre143, i64 1
  br label %._crit_edge111

.lr.ph110:                                        ; preds = %_ZNK10btSoftBody9getVolumeEv.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !127
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !131
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 836 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %.promoted = load float, ptr %i.mb, align 8, !tbaa !223
  %.promoted113.a = load float, ptr %i.ml, align 4, !tbaa !223
  %.promoted114 = load float, ptr %i.mm, align 8, !tbaa !223
  %3 = load <2 x float>, ptr %i.md, align 8, !tbaa !223
  %.promoted116 = load float, ptr %i.mn, align 8, !tbaa !223
  %wide.trip.count133 = zext nneg i32 %.pre137 to i64
  %i.mo = insertelement <2 x float> poison, float %.promoted114, i64 0
  %i.mp = insertelement <2 x float> %i.mo, float %.promoted, i64 1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph110, %bb.r
  %indvars.iv130 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next131, %bb.r ] ; 3 uses
  %i.mq = phi float [ 0.000000e+00, %.lr.ph110 ], [ %i.nz, %bb.r ]
  %i.mr = phi float [ %.promoted116, %.lr.ph110 ], [ %i.nu, %bb.r ]
  %i.ms = phi float [ %.promoted113.a, %.lr.ph110 ], [ %i.nh, %bb.r ]
  %4 = phi <2 x float> [ zeroinitializer, %.lr.ph110 ], [ %i.oa, %bb.r ]
  %i.mt = phi <2 x float> [ %i.mp, %.lr.ph110 ], [ %i.np, %bb.r ]
  %i.mu = phi <2 x float> [ %3, %.lr.ph110 ], [ %9, %bb.r ]
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %indvars.iv130 ; 5 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv130
  %i.mx = load float, ptr %i.mv, align 4, !tbaa !223 ; 2 uses
  %i.my = load float, ptr %i.mw, align 4, !tbaa !223 ; 3 uses
  %i.mz = fmul float %i.mx, %i.my                 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 4 ; 2 uses
  %i.nb = load float, ptr %i.na, align 4, !tbaa !223 ; 2 uses
  %i.nc = fmul float %i.my, %i.nb                 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !223 ; 2 uses
  %i.nf = fmul float %i.my, %i.ne                 ; 2 uses
  %i.ng = fmul float %i.mz, %i.nb
  %i.nh = fadd float %i.ng, %i.ms                 ; 3 uses
  store float %i.nh, ptr %i.ml, align 4, !tbaa !223
  %i.ni = insertelement <2 x float> poison, float %i.nf, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.nl = insertelement <2 x float> %i.nk, float %i.mx, i64 1
  %i.nm = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.nn = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.no = fmul <2 x float> %i.nl, %i.nn
  %i.np = fadd <2 x float> %i.no, %i.mt           ; 4 uses
  %i.nq = extractelement <2 x float> %i.np, i64 1 ; 2 uses
  %i.nr = extractelement <2 x float> %i.np, i64 0 ; 2 uses
  store float %i.nq, ptr %i.mb, align 8, !tbaa !223
  store float %i.nr, ptr %i.mm, align 8, !tbaa !223
  %i.ns = load float, ptr %i.nd, align 4, !tbaa !223
  %i.nt = fmul float %i.nc, %i.ns
  %5 = load <2 x float>, ptr %i.mv, align 4, !tbaa !223
  %6 = insertelement <2 x float> poison, float %i.nc, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, %5
  %9 = fadd <2 x float> %8, %i.mu                 ; 4 uses
  store <2 x float> %9, ptr %i.md, align 8, !tbaa !223
  %i.nu = fadd float %i.nt, %i.mr                 ; 3 uses
  store float %i.nu, ptr %i.mn, align 8, !tbaa !223
  %i.nv = load float, ptr %i.mv, align 4, !tbaa !223
  %i.nw = fmul float %i.nf, %i.nv
  %i.nx = load <2 x float>, ptr %i.na, align 4, !tbaa !223
  %i.ny = fmul <2 x float> %i.nj, %i.nx
  %i.nz = fadd float %i.nw, %i.mq                 ; 3 uses
  store float %i.nz, ptr %i.mc, align 8, !tbaa !223
  %i.oa = fadd <2 x float> %i.ny, %4              ; 5 uses
  store <2 x float> %i.oa, ptr %.sroa.495.0..sroa_idx, align 4, !tbaa !223
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge111.loopexit, label %bb.r, !llvm.loop !678

._crit_edge111.loopexit:                          ; preds = %bb.r
  %10 = extractelement <2 x float> %9, i64 1
  %11 = extractelement <2 x float> %9, i64 0
  %i.ob = extractelement <2 x float> %i.oa, i64 0
  %i.oc = extractelement <2 x float> %i.oa, i64 1
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge
  %i.od = phi float [ %.pre147, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.nr, %._crit_edge111.loopexit ] ; 2 uses
  %i.oe = phi float [ %.pre145, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.nh, %._crit_edge111.loopexit ] ; 5 uses
  %i.of = phi float [ %.pre143, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.nq, %._crit_edge111.loopexit ] ; 3 uses
  %i.og = phi float [ %.pre142, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %11, %._crit_edge111.loopexit ] ; 4 uses
  %i.oh = phi float [ 0.000000e+00, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.nz, %._crit_edge111.loopexit ] ; 4 uses
  %i.oi = phi float [ 0.000000e+00, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.ob, %._crit_edge111.loopexit ]
  %i.oj = phi float [ %.pre141, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.nu, %._crit_edge111.loopexit ] ; 4 uses
  %i.ok = phi float [ 0.000000e+00, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.oc, %._crit_edge111.loopexit ]
  %i.ol = phi float [ %.pre139, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %10, %._crit_edge111.loopexit ] ; 4 uses
  %i.om = phi <2 x float> [ zeroinitializer, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.oa, %._crit_edge111.loopexit ] ; 2 uses
  %i.on = phi <2 x float> [ %i.mg, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.np, %._crit_edge111.loopexit ] ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.op = fneg <2 x float> %i.om                  ; 3 uses
  %i.oq = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.or = extractelement <2 x float> %i.op, i64 1
  %i.os = fmul float %i.og, %i.or
  %i.ot = tail call noundef float @llvm.fmuladd.f32(float %i.oj, float %i.oh, float %i.os) ; 2 uses
  %i.ou = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.oh, i64 1
  %i.ow = fneg <2 x float> %i.ov
  %i.ox = fneg float %i.oh
  %i.oy = fmul float %i.ol, %i.ox
  %i.oz = tail call noundef float @llvm.fmuladd.f32(float %i.og, float %i.oi, float %i.oy) ; 2 uses
  %i.pa = fmul float %i.oe, %i.ot
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.pc = fneg float %i.ol
  %i.pd = fmul float %i.od, %i.pc
  %i.pe = tail call noundef float @llvm.fmuladd.f32(float %i.oe, float %i.oj, float %i.pd)
  %i.pf = extractelement <2 x float> %i.op, i64 0
  %i.pg = fmul float %i.of, %i.pf
  %i.ph = tail call noundef float @llvm.fmuladd.f32(float %i.oe, float %i.oh, float %i.pg)
  %i.pi = fneg float %i.og
  %i.pj = fmul float %i.oe, %i.pi
  %i.pk = tail call noundef float @llvm.fmuladd.f32(float %i.of, float %i.ol, float %i.pj)
  %i.pl = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.pm = insertelement <2 x float> %i.pl, float %i.oj, i64 1
  %i.pn = fmul <2 x float> %i.pm, %i.oq
  %i.po = insertelement <2 x float> %i.on, float %i.ol, i64 1
  %i.pp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.om, <2 x float> %i.pn) ; 2 uses
  %i.pq = extractelement <2 x float> %i.pp, i64 1
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.of, float %i.pq, float %i.pa)
  %i.ps = tail call noundef float @llvm.fmuladd.f32(float %i.od, float %i.oz, float %i.pr)
  %i.pt = fdiv float 1.000000e+00, %i.ps          ; 6 uses
  %i.pu = insertelement <2 x float> poison, float %i.pt, i64 0
  %i.pv = shufflevector <2 x float> %i.pu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pw = fmul <2 x float> %i.pp, %i.pv
  %i.px = fmul float %i.pe, %i.pt
  %i.py = fmul float %i.ot, %i.pt
  %i.pz = fmul float %i.oz, %i.pt
  %i.qa = fmul float %i.ph, %i.pt
  %i.qb = fmul float %i.pk, %i.pt
  %i.qc = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qc, ptr %i.mb, align 8
  store float %i.px, ptr %i.pb, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 844
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !230
  store float %i.py, ptr %i.md, align 8
  %i.qd = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qe = fmul <2 x float> %i.qd, %i.ow
  %i.qf = insertelement <2 x float> poison, float %i.og, i64 0
  %i.qg = insertelement <2 x float> %i.qf, float %i.ok, i64 1
  %i.qh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.qg, <2 x float> %i.qe)
  %i.qi = fmul <2 x float> %i.qh, %i.pv
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qj, ptr %i.oo, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 860
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !230
  store float %i.pz, ptr %i.mc, align 8
  store float %i.qa, ptr %.sroa.495.0..sroa_idx, align 4
  store float %i.qb, ptr %.sroa.596.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.697.0..sroa_idx, align 4, !tbaa !230
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !149 ; 4 uses
  %i.qm = icmp sgt i32 %i.ql, 0
  br i1 %i.qm, label %.lr.ph.i.i, label %_ZN10btSoftBody15updateConstantsEv.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge111
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !148 ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ql to i64 ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.s ] ; 2 uses
  %i.qp = getelementptr inbounds nuw [72 x i8], ptr %i.qo, i64 %indvars.iv.i.i ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !345 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !345 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = load float, ptr %i.qs, align 4, !tbaa !223
  %i.qx = load float, ptr %i.qv, align 4, !tbaa !223
  %i.qy = fsub float %i.qw, %i.qx                 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 20
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !223
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qu, i64 20
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !223
  %i.rd = fsub float %i.ra, %i.rc                 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.rf = load float, ptr %i.re, align 4, !tbaa !223
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !223
  %i.ri = fsub float %i.rf, %i.rh                 ; 2 uses
  %i.rj = fmul float %i.rd, %i.rd
  %i.rk = tail call float @llvm.fmuladd.f32(float %i.qy, float %i.qy, float %i.rj)
  %i.rl = tail call noundef float @llvm.fmuladd.f32(float %i.ri, float %i.ri, float %i.rk)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.rl) ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qp, i64 48
  store float %sqrt.i.i.i, ptr %i.rm, align 8, !tbaa !382
  %i.rn = fmul float %sqrt.i.i.i, %sqrt.i.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qp, i64 60
  store float %i.rn, ptr %i.ro, align 4, !tbaa !646
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.i1.i.preheader, label %bb.s, !llvm.loop !647

.lr.ph.i1.i.preheader:                            ; preds = %bb.s
  %xtraiter252 = and i64 %wide.trip.count.i.i, 1
  %i.rp = icmp eq i32 %i.ql, 1
  br i1 %i.rp, label %.lr.ph.i1.i.epil.preheader, label %.lr.ph.i1.i.preheader.new

.lr.ph.i1.i.preheader.new:                        ; preds = %.lr.ph.i1.i.preheader
  %unroll_iter255 = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i, %.lr.ph.i1.i.preheader.new
  %indvars.iv.i3.i = phi i64 [ 0, %.lr.ph.i1.i.preheader.new ], [ %indvars.iv.next.i4.i.1, %.lr.ph.i1.i ] ; 3 uses
  %niter256 = phi i64 [ 0, %.lr.ph.i1.i.preheader.new ], [ %niter256.next.1, %.lr.ph.i1.i ]
  %i.rq = getelementptr inbounds nuw [72 x i8], ptr %i.qo, i64 %indvars.iv.i3.i ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !251
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !345
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 112
  %i.rw = load float, ptr %i.rv, align 8, !tbaa !239
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !345
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 112
  %i.sa = load float, ptr %i.rz, align 8, !tbaa !239
  %i.sb = fadd float %i.rw, %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.sd = load float, ptr %i.sc, align 8, !tbaa !648
  %i.se = fdiv float %i.sb, %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rq, i64 56
  store float %i.se, ptr %i.sf, align 8, !tbaa !649
  %i.sg = getelementptr inbounds nuw [72 x i8], ptr %i.qo, i64 %indvars.iv.i3.i ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 80
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !251
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 104
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !345
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 112
  %i.sm = load float, ptr %i.sl, align 8, !tbaa !239
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sg, i64 112
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !345
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 112
  %i.sq = load float, ptr %i.sp, align 8, !tbaa !239
  %i.sr = fadd float %i.sm, %i.sq
  %i.ss = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.st = load float, ptr %i.ss, align 8, !tbaa !648
  %i.su = fdiv float %i.sr, %i.st
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sg, i64 128
  store float %i.su, ptr %i.sv, align 8, !tbaa !649
  %indvars.iv.next.i4.i.1 = add nuw nsw i64 %indvars.iv.i3.i, 2 ; 2 uses
  %niter256.next.1 = add i64 %niter256, 2         ; 2 uses
  %niter256.ncmp.1 = icmp eq i64 %niter256.next.1, %unroll_iter255
  br i1 %niter256.ncmp.1, label %_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa, label %.lr.ph.i1.i, !llvm.loop !650

_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i1.i
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %_ZN10btSoftBody15updateConstantsEv.exit, label %.lr.ph.i1.i.epil.preheader

.lr.ph.i1.i.epil.preheader:                       ; preds = %_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa, %.lr.ph.i1.i.preheader
  %indvars.iv.i3.i.epil.init = phi i64 [ 0, %.lr.ph.i1.i.preheader ], [ %indvars.iv.next.i4.i.1, %_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod254 = trunc i32 %i.ql to i1
  tail call void @llvm.assume(i1 %lcmp.mod254)
  %i.sw = getelementptr inbounds nuw [72 x i8], ptr %i.qo, i64 %indvars.iv.i3.i.epil.init ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !251
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !345
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 112
  %i.tc = load float, ptr %i.tb, align 8, !tbaa !239
  %i.td = getelementptr inbounds nuw i8, ptr %i.sw, i64 40
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !345
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 112
  %i.tg = load float, ptr %i.tf, align 8, !tbaa !239
  %i.th = fadd float %i.tc, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.tj = load float, ptr %i.ti, align 8, !tbaa !648
  %i.tk = fdiv float %i.th, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sw, i64 56
  store float %i.tk, ptr %i.tl, align 8, !tbaa !649
  br label %_ZN10btSoftBody15updateConstantsEv.exit

_ZN10btSoftBody15updateConstantsEv.exit:          ; preds = %.lr.ph.i1.i.epil.preheader, %_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa, %._crit_edge111
  tail call void @_ZN10btSoftBody10updateAreaEb(ptr noundef nonnull readonly align 8 dereferenceable(2064) %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK10btSoftBody11evaluateComEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 649
  %i.b = load i8, ptr %i.a, align 1, !tbaa !260, !range !233, !noundef !234
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody18initializeClustersEv:bb.a
  store i32 %i.be, ptr %i.iq, align 8, !tbaa !129
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %._crit_edge164
  store i32 %i.be, ptr %i.in, align 4, !tbaa !128
  br i1 %i.bf, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %bb.s
  %indvars.iv184 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next185, %bb.s ] ; 3 uses
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !682
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv184
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !345 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !223
  %i.jw = load <2 x float>, ptr %i.dr, align 8, !tbaa !223
  %i.jx = fsub <2 x float> %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !223
  %i.ka = load float, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !223
  %i.kb = fsub float %i.jz, %i.ka
  %.sroa.3.12.vec.insert.i105 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kb, i64 0
  %i.kc = load ptr, ptr %i.jq, align 8, !tbaa !127
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv184 ; 2 uses
  store <2 x float> %i.jx, ptr %i.kd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i105, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !230
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ke = load i32, ptr %i.in, align 4, !tbaa !128
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp slt i64 %indvars.iv.next185, %i.kf
  br i1 %i.kg, label %bb.s, label %._crit_edge171, !llvm.loop !821

._crit_edge171:                                   ; preds = %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kh = load i32, ptr %i.a, align 4, !tbaa !205
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next188, %i.ki
  br i1 %i.kj, label %bb.b, label %._crit_edge175, !llvm.loop !822

._crit_edge175:                                   ; preds = %._crit_edge171, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CProfileSample, align 1      ; 6 uses
  %2 = alloca %class.btMatrix3x3, align 8         ; 14 uses
  %3 = alloca %class.btMatrix3x3, align 4         ; 7 uses
  %4 = alloca %class.btMatrix3x3, align 4         ; 4 uses
  %5 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1748 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !205  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph331, label %._crit_edge332

.lr.ph331:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph331, %bb.y
  %i.s = phi i32 [ %i.b, %.lr.ph331 ], [ %i.qd, %bb.y ]
  %indvars.iv349 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next350, %bb.y ] ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv349
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !541  ; 53 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 36 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !679  ; 6 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.r, i8 0, i64 44, i1 false)
  store float f0x38D1B717, ptr %2, align 8, !tbaa !223
  store float 2.000000e-04, ptr %i.g, align 4, !tbaa !223
  store float f0x399D4951, ptr %.sroa.5292.0..sroa_idx, align 8, !tbaa !223
  %i.y = load i32, ptr %i.w, align 4, !tbaa !679  ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0                     ; 2 uses
  br i1 %i.z, label %.lr.ph.i, label %.loopexit294

.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !682 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !131 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.y to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ae = icmp eq i32 %i.y, 1
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bg, %bb.d ]
  %i.af = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.bh, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !345 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !223
  %i.al = load float, ptr %i.aj, align 4, !tbaa !223 ; 2 uses
  %i.am = fmul float %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.ao = load <2 x float>, ptr %i.an, align 4, !tbaa !223
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %i.ao
  %i.as = fadd float %.sroa.015.019.i, %i.am
  %i.at = fadd <2 x float> %i.af, %i.ar
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !345 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !223
  %i.az = load float, ptr %i.ax, align 4, !tbaa !223 ; 2 uses
  %i.ba = fmul float %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !223
  %i.bd = insertelement <2 x float> poison, float %i.az, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %i.bc
  %i.bg = fadd float %i.as, %i.ba                 ; 3 uses
  %i.bh = fadd <2 x float> %i.at, %i.bf           ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit294.loopexit.unr-lcssa, label %bb.d, !llvm.loop !683

.loopexit294.loopexit.unr-lcssa:                  ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit294, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit294.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.loopexit294.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bg, %.loopexit294.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bh, %.loopexit294.loopexit.unr-lcssa ]
  %lcmp.mod385 = trunc i32 %i.y to i1
  call void @llvm.assume(i1 %lcmp.mod385)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !345 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.epil.init
  %i.bm = load float, ptr %i.bk, align 4, !tbaa !223
  %i.bn = load float, ptr %i.bl, align 4, !tbaa !223 ; 2 uses
  %i.bo = fmul float %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !223
  %i.br = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bs, %i.bq
  %i.bu = fadd float %.sroa.015.019.i.epil.init, %i.bo
  %i.bv = fadd <2 x float> %.epil.init, %i.bt
  br label %.loopexit294

.loopexit294:                                     ; preds = %.epil.preheader, %.loopexit294.loopexit.unr-lcssa, %bb.c
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.bg, %.loopexit294.loopexit.unr-lcssa ], [ %i.bu, %.epil.preheader ]
  %i.bw = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.bh, %.loopexit294.loopexit.unr-lcssa ], [ %i.bv, %.epil.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 164 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !223 ; 3 uses
  %i.bz = fmul float %.sroa.015.0.lcssa.i, %i.by  ; 2 uses
  %i.ca = extractelement <2 x float> %i.bw, i64 0
  %i.cb = fmul float %i.ca, %i.by                 ; 2 uses
  %i.cc = extractelement <2 x float> %i.bw, i64 1
  %i.cd = fmul float %i.cc, %i.by                 ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bz, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.cb, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 264 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ce, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !230
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit294
  %.promoted297 = load float, ptr %i.f, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !682
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !127
  %.promoted301 = load float, ptr %i.h, align 4, !tbaa !223
  %.promoted302 = load float, ptr %i.i, align 8, !tbaa !223
  %.promoted303 = load float, ptr %i.j, align 8, !tbaa !223
  %wide.trip.count = zext nneg i32 %i.y to i64
  %i.cj = insertelement <2 x float> <float f0x38D1B717, float poison>, float %.promoted301, i64 1
  %i.ck = insertelement <2 x float> <float poison, float 2.000000e-04>, float %.promoted297, i64 0
  br label %bb.k

._crit_edge:                                      ; preds = %bb.k, %.loopexit294
  %i.cl = load atomic i8, ptr @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar acquire, align 8
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.e, label %bb.h, !prof !431

bb.e:                                             ; preds = %._crit_edge
  %i.cn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #39
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN20btPolarDecompositionC1Efj(ptr noundef nonnull align 4 dereferenceable(8) @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar, float noundef f0x38D1B717, i32 noundef 16)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.co = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %._crit_edge
  %i.cp = invoke noundef i32 @_ZNK20btPolarDecomposition9decomposeERK11btMatrix3x3RS0_S3_(ptr noundef nonnull align 4 dereferenceable(8) @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(48) %4)
          to label %bb.l unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #39
  br label %.body

bb.j:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.cs = phi float [ %.promoted303, %.lr.ph ], [ %i.ea, %bb.k ]
  %i.ct = phi float [ %.promoted302, %.lr.ph ], [ %i.ds, %bb.k ]
  %i.cu = phi float [ f0x399D4951, %.lr.ph ], [ %i.ei, %bb.k ]
  %i.cv = phi <2 x float> [ %i.cj, %.lr.ph ], [ %i.dr, %bb.k ]
  %i.cw = phi <2 x float> [ %i.ck, %.lr.ph ], [ %i.dz, %bb.k ]
  %i.cx = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.eh, %bb.k ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !345 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load float, ptr %i.da, align 4, !tbaa !223
  %i.dc = fsub float %i.db, %i.bz                 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.de = load float, ptr %i.dd, align 4, !tbaa !223
  %i.df = fsub float %i.de, %i.cb                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !223
  %i.di = fsub float %i.dh, %i.cd                 ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %indvars.iv ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !223
  %i.dm = fmul float %i.dc, %i.dl
  %i.dn = load <2 x float>, ptr %i.dj, align 4, !tbaa !223
  %i.do = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dp, %i.dn
  %i.dr = fadd <2 x float> %i.dq, %i.cv           ; 2 uses
  store <2 x float> %i.dr, ptr %2, align 8, !tbaa !223
  %i.ds = fadd float %i.dm, %i.ct                 ; 2 uses
  store float %i.ds, ptr %i.i, align 8, !tbaa !223
  %i.dt = load float, ptr %i.dk, align 4, !tbaa !223
  %i.du = fmul float %i.df, %i.dt
  %i.dv = load <2 x float>, ptr %i.dj, align 4, !tbaa !223
  %i.dw = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %i.dx, %i.dv
  %i.dz = fadd <2 x float> %i.dy, %i.cw           ; 2 uses
  store <2 x float> %i.dz, ptr %i.f, align 8, !tbaa !223
  %i.ea = fadd float %i.du, %i.cs                 ; 2 uses
  store float %i.ea, ptr %i.j, align 8, !tbaa !223
  %i.eb = load float, ptr %i.dk, align 4, !tbaa !223
  %i.ec = fmul float %i.di, %i.eb
  %i.ed = load <2 x float>, ptr %i.dj, align 4, !tbaa !223
  %i.ee = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.ef, %i.ed
  %i.eh = fadd <2 x float> %i.eg, %i.cx           ; 2 uses
  store <2 x float> %i.eh, ptr %i.e, align 8, !tbaa !223
  %i.ei = fadd float %i.ec, %i.cu                 ; 2 uses
  store float %i.ei, ptr %.sroa.5292.0..sroa_idx, align 8, !tbaa !223
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !823

bb.l:                                             ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.v, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !tbaa.struct !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ej, ptr noundef nonnull align 4 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !229
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !229
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !229
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.eo = load float, ptr %i.en, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.es = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.et = load float, ptr %i.es, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.v, i64 172
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !223, !noalias !824 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.v, i64 188
  %i.ey = getelementptr inbounds nuw i8, ptr %i.v, i64 204
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !223, !noalias !824 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.fh = load float, ptr %i.em, align 8, !tbaa !223, !noalias !824 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.v, i64 132 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !223, !noalias !824 ; 5 uses
  %i.fk = fmul float %i.eq, %i.fj
  %i.fl = call float @llvm.fmuladd.f32(float %i.eo, float %i.fh, float %i.fk)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.v, i64 136 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !223, !noalias !824 ; 5 uses
  %i.fo = call noundef float @llvm.fmuladd.f32(float %i.et, float %i.fn, float %i.fl) ; 2 uses
  %i.fp = load <2 x float>, ptr %i.ej, align 8, !tbaa !223, !noalias !824 ; 5 uses
  %i.fq = load <2 x float>, ptr %i.ex, align 4, !tbaa !223, !noalias !824 ; 5 uses
  %i.fr = load float, ptr %i.fc, align 8, !tbaa !223, !noalias !824
  %i.fs = load <2 x float>, ptr %i.el, align 8, !tbaa !223, !noalias !824 ; 5 uses
  %i.ft = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = shufflevector <2 x float> %i.fp, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = shufflevector <2 x float> %i.fp, <2 x float> %i.fs, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fz, <2 x float> %i.fw)
  %i.gb = insertelement <2 x float> poison, float %i.et, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 1, i32 2>
  %i.ge = shufflevector <2 x float> %i.fq, <2 x float> %i.fv, <2 x i32> <i32 0, i32 3>
  %i.gf = fmul <2 x float> %i.gd, %i.ge
  %i.gg = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.fz, <2 x float> %i.gf)
  %i.gj = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = shufflevector <2 x float> %i.fv, <2 x float> %i.fq, <2 x i32> <i32 0, i32 3>
  %i.gm = shufflevector <2 x float> %i.fq, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.gn = fmul <2 x float> %i.gl, %i.gm
  %i.go = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.fz, <2 x float> %i.gn)
  %i.gr = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = extractelement <2 x float> %i.fq, i64 0
  %i.gu = fmul float %i.gt, %i.fj
  %i.gv = call float @llvm.fmuladd.f32(float %i.ew, float %i.fh, float %i.gu)
  %i.gw = call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.fn, float %i.gv) ; 2 uses
  %i.gx = fmul float %i.fr, %i.fj
  %i.gy = call float @llvm.fmuladd.f32(float %i.fb, float %i.fh, float %i.gx)
  %i.gz = call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.fn, float %i.gy) ; 2 uses
  %i.ha = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hb = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul float %i.fj, %i.gw
  %i.hl = call float @llvm.fmuladd.f32(float %i.fh, float %i.fo, float %i.hk)
  %i.hm = call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.gz, float %i.hl) ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  %.sroa.7272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 228
  %.sroa.12276.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 244
  store float 0.000000e+00, ptr %.sroa.12276.16..sroa_idx, align 4, !tbaa !230
  %i.ho = getelementptr inbounds nuw i8, ptr %i.v, i64 248
  %i.hp = load <2 x float>, ptr %i.er, align 4, !tbaa !223, !noalias !824 ; 3 uses
  %i.hq = load <2 x float>, ptr %i.ff, align 4, !tbaa !223, !noalias !824 ; 3 uses
  %i.hr = shufflevector <2 x float> %i.hp, <2 x float> %i.hq, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.hr, <2 x float> %i.ga) ; 3 uses
  %i.ht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.hr, <2 x float> %i.gi) ; 3 uses
  %i.hu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.hr, <2 x float> %i.gq) ; 3 uses
  %i.hv = fmul <2 x float> %i.ha, %i.ht
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hs, <2 x float> %i.hv)
  %i.hx = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hu, <2 x float> %i.hw) ; 3 uses
  %i.hz = fmul <2 x float> %i.ht, %i.hc
  %i.ia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.hs, <2 x float> %i.hz)
  %i.ib = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.hu, <2 x float> %i.ia) ; 3 uses
  %i.id = fmul <2 x float> %i.ht, %i.hf
  %i.ie = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hs, <2 x float> %i.id)
  %i.if = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hu, <2 x float> %i.ie) ; 3 uses
  %i.ig = shufflevector <2 x float> %i.hp, <2 x float> %i.hq, <2 x i32> <i32 0, i32 2>
  %i.ih = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ig, %i.ii
  %i.ik = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.il, <2 x float> %i.ij)
  %i.in = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.io, <2 x float> %i.im) ; 3 uses
  %i.iq = extractelement <2 x float> %i.hy, i64 0
  store float %i.iq, ptr %i.hn, align 8
  %i.ir = extractelement <2 x float> %i.ic, i64 0
  store float %i.ir, ptr %.sroa.5270.0..sroa_idx, align 4
  %i.is = extractelement <2 x float> %i.if, i64 0
  store float %i.is, ptr %.sroa.6271.0..sroa_idx, align 8
  %i.it = shufflevector <2 x float> %i.hy, <2 x float> %i.ic, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.iu = insertelement <4 x float> %i.it, float 0.000000e+00, i64 0
  %i.iv = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.iw, ptr %.sroa.7272.0..sroa_idx, align 4
  store <2 x float> %i.ip, ptr %i.ho, align 8
  %.sroa.16277.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  store float %i.hm, ptr %.sroa.16277.32..sroa_idx, align 8
  %.sroa.17278.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 260
  store float 0.000000e+00, ptr %.sroa.17278.32..sroa_idx, align 4, !tbaa !230
  %i.ix = getelementptr inbounds nuw i8, ptr %i.v, i64 352 ; 4 uses
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 360 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.v, i64 368 ; 2 uses
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 376 ; 2 uses
  %i.iz = icmp sgt i32 %i.x, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, i8 0, i64 32, i1 false)
  br i1 %i.iz, label %.lr.ph306, label %._crit_edge307

.lr.ph306:                                        ; preds = %bb.l
  %i.ja = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !682
  %i.jc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !131
  %7 = getelementptr inbounds nuw i8, ptr %i.v, i64 268
  %wide.trip.count339 = zext nneg i32 %i.x to i64
  %.pre353 = load float, ptr %i.ce, align 8, !tbaa !223
  %8 = load <2 x float>, ptr %7, align 4, !tbaa !223
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph306, %bb.m
  %indvars.iv336 = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next337, %bb.m ] ; 3 uses
  %i.je = phi float [ 0.000000e+00, %.lr.ph306 ], [ %i.kc, %bb.m ]
  %i.jf = phi float [ 0.000000e+00, %.lr.ph306 ], [ %i.ju, %bb.m ]
  %9 = phi <2 x float> [ zeroinitializer, %.lr.ph306 ], [ %i.jt, %bb.m ]
  %i.jg = phi <2 x float> [ zeroinitializer, %.lr.ph306 ], [ %25, %bb.m ]
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv336
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !345 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv336
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !223 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !223
  %i.jo = fmul float %i.jl, %i.jn                 ; 3 uses
  %i.jp = load <2 x float>, ptr %i.jj, align 4, !tbaa !223
  %i.jq = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = fmul <2 x float> %i.jr, %i.jp           ; 4 uses
  %i.jt = fadd <2 x float> %i.js, %9              ; 3 uses
  store <2 x float> %i.jt, ptr %i.ix, align 8, !tbaa !223
  %i.ju = fadd float %i.jo, %i.jf                 ; 3 uses
  store float %i.ju, ptr %.sroa.5250.0..sroa_idx, align 8, !tbaa !223
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %10 = load float, ptr %i.jv, align 4, !tbaa !223
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %11 = extractelement <2 x float> %i.js, i64 1   ; 2 uses
  %i.jx = extractelement <2 x float> %i.js, i64 0
  %i.jy = fneg float %i.jx
  %i.jz = load <2 x float>, ptr %i.jw, align 4, !tbaa !223
  %i.ka = fsub <2 x float> %i.jz, %8              ; 3 uses
  %12 = fsub float %10, %.pre353                  ; 2 uses
  %13 = fneg float %i.jo
  %14 = fneg float %11
  %15 = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x float> %15, float %12, i64 1
  %17 = insertelement <2 x float> poison, float %14, i64 0
  %18 = insertelement <2 x float> %17, float %13, i64 1
  %19 = fmul <2 x float> %16, %18
  %20 = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %21 = insertelement <2 x float> %20, float %i.jo, i64 0
  %i.kb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %21, <2 x float> %19)
  %22 = extractelement <2 x float> %i.ka, i64 0
  %23 = fmul float %22, %i.jy
  %24 = call float @llvm.fmuladd.f32(float %12, float %11, float %23)
  %25 = fadd <2 x float> %i.jg, %i.kb             ; 4 uses
  store <2 x float> %25, ptr %i.iy, align 8, !tbaa !223
  %i.kc = fadd float %24, %i.je                   ; 3 uses
  store float %i.kc, ptr %.sroa.5243.0..sroa_idx, align 8, !tbaa !223
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count339
  br i1 %exitcond340.not, label %._crit_edge307.loopexit, label %bb.m, !llvm.loop !827

._crit_edge307.loopexit:                          ; preds = %bb.m
  %26 = extractelement <2 x float> %25, i64 1
  %27 = extractelement <2 x float> %25, i64 0
  br label %._crit_edge307

._crit_edge307:                                   ; preds = %._crit_edge307.loopexit, %bb.l
  %i.kd = phi float [ 0.000000e+00, %bb.l ], [ %i.kc, %._crit_edge307.loopexit ] ; 2 uses
  %i.ke = phi float [ 0.000000e+00, %bb.l ], [ %26, %._crit_edge307.loopexit ] ; 2 uses
  %i.kf = phi float [ 0.000000e+00, %bb.l ], [ %27, %._crit_edge307.loopexit ] ; 2 uses
  %i.kg = phi float [ 0.000000e+00, %bb.l ], [ %i.ju, %._crit_edge307.loopexit ]
  %i.kh = phi <2 x float> [ zeroinitializer, %bb.l ], [ %i.jt, %._crit_edge307.loopexit ]
  %i.ki = load float, ptr %i.bx, align 4, !tbaa !223 ; 2 uses
  %i.kj = fmul float %i.ki, %i.kg
  %i.kk = getelementptr inbounds nuw i8, ptr %i.v, i64 396
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !828
  %i.km = fsub float 1.000000e+00, %i.kl          ; 2 uses
  %i.kn = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = fmul <2 x float> %i.kh, %i.ko
  %i.kq = insertelement <2 x float> poison, float %i.km, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x float> %i.kp, %i.kr
  %i.kt = fmul float %i.kj, %i.km
  %.sroa.3.12.vec.insert.i165 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kt, i64 0
  store <2 x float> %i.ks, ptr %i.ix, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i165, ptr %.sroa.5250.0..sroa_idx, align 8, !tbaa !230
  %i.ku = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = fmul <2 x float> %i.ic, %i.kv
  %i.kx = extractelement <2 x float> %i.ip, i64 1
  %i.ky = fmul float %i.ke, %i.kx
  %i.kz = extractelement <2 x float> %i.ip, i64 0
  %i.la = call float @llvm.fmuladd.f32(float %i.kz, float %i.kf, float %i.ky)
  %i.lb = call noundef float @llvm.fmuladd.f32(float %i.hm, float %i.kd, float %i.la)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.v, i64 400
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !829
  %i.le = fsub float 1.000000e+00, %i.ld          ; 2 uses
  %i.lf = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.lg, <2 x float> %i.kw)
  %i.li = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.lj, <2 x float> %i.lh)
  %i.ll = insertelement <2 x float> poison, float %i.le, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x float> %i.lk, %i.lm
  %i.lo = fmul float %i.le, %i.lb
  %.sroa.3.12.vec.insert.i175 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lo, i64 0
  store <2 x float> %i.ln, ptr %i.iy, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i175, ptr %.sroa.5243.0..sroa_idx, align 8, !tbaa !230
  %i.lp = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.lq = getelementptr inbounds nuw i8, ptr %i.v, i64 404 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lp, i8 0, i64 72, i1 false)
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !830
  %i.ls = fcmp ogt float %i.lr, 0.000000e+00
  br i1 %i.ls, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge307
  %i.lt = load i32, ptr %i.w, align 4, !tbaa !679
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph311, label %.loopexit

.lr.ph311:                                        ; preds = %.preheader
  %i.lv = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.lw = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.lx = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph311, %bb.n
  %indvars.iv341 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next342, %bb.n ] ; 3 uses
  %i.ly = load ptr, ptr %i.lv, align 8, !tbaa !682
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv341
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !345 ; 2 uses
  %i.mb = load ptr, ptr %i.lw, align 8, !tbaa !127
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv341 ; 3 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !223 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.mf = load float, ptr %i.me, align 4, !tbaa !223 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !223 ; 2 uses
  %i.mi = load float, ptr %i.eu, align 8, !tbaa !223
  %i.mj = load float, ptr %i.fg, align 8, !tbaa !223
  %i.mk = load float, ptr %i.em, align 8, !tbaa !223
  %i.ml = load float, ptr %i.fi, align 4, !tbaa !223
  %i.mm = fmul float %i.mf, %i.ml
  %i.mn = call float @llvm.fmuladd.f32(float %i.md, float %i.mk, float %i.mm)
  %i.mo = load float, ptr %i.fm, align 8, !tbaa !223
  %i.mp = call noundef float @llvm.fmuladd.f32(float %i.mh, float %i.mo, float %i.mn)
  %i.mq = load float, ptr %i.lx, align 8, !tbaa !223
  %i.mr = fadd float %i.mp, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 2 uses
  %i.mt = load float, ptr %i.lq, align 4, !tbaa !830 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ma, i64 24 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !223 ; 2 uses
  %i.mw = fsub float %i.mr, %i.mv
  %i.mx = fmul float %i.mt, %i.mw
  %i.my = load <2 x float>, ptr %i.ej, align 8, !tbaa !223 ; 2 uses
  %i.mz = load <2 x float>, ptr %i.el, align 8, !tbaa !223 ; 2 uses
  %i.na = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nc = shufflevector <2 x float> %i.my, <2 x float> %i.mz, <2 x i32> <i32 1, i32 3>
  %i.nd = fmul <2 x float> %i.nb, %i.nc
  %i.ne = insertelement <2 x float> poison, float %i.md, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = shufflevector <2 x float> %i.my, <2 x float> %i.mz, <2 x i32> <i32 0, i32 2>
  %i.nh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nf, <2 x float> %i.ng, <2 x float> %i.nd)
  %i.ni = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.nl = insertelement <2 x float> %i.nk, float %i.mj, i64 1
  %i.nm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.nl, <2 x float> %i.nh)
  %i.nn = load <2 x float>, ptr %i.ek, align 8, !tbaa !223
  %i.no = fadd <2 x float> %i.nm, %i.nn
  %i.np = load <2 x float>, ptr %i.ms, align 4, !tbaa !223 ; 2 uses
  %i.nq = fsub <2 x float> %i.no, %i.np
  %i.nr = insertelement <2 x float> poison, float %i.mt, i64 0
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nt = fmul <2 x float> %i.ns, %i.nq
  %i.nu = fadd <2 x float> %i.np, %i.nt
  %i.nv = fadd float %i.mv, %i.mx
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nv, i64 0
  store <2 x float> %i.nu, ptr %i.ms, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.mu, align 8, !tbaa !230
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %i.nw = load i32, ptr %i.w, align 4, !tbaa !679
  %i.nx = sext i32 %i.nw to i64
  %i.ny = icmp slt i64 %indvars.iv.next342, %i.nx
  br i1 %i.ny, label %bb.n, label %.loopexit, !llvm.loop !831

.loopexit:                                        ; preds = %bb.n, %.preheader, %._crit_edge307
  %i.nz = getelementptr inbounds nuw i8, ptr %i.v, i64 417
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !733, !range !233, !noundef !234
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.loopexit
  %i.oc = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !682 ; 4 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !345
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load <4 x float>, ptr %i.of, align 8    ; 6 uses
  %i.oh = icmp sgt i32 %i.x, 1
  br i1 %i.oh, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader, label %._crit_edge321

_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader:         ; preds = %bb.o
  %wide.trip.count347 = zext nneg i32 %i.x to i64
  %i.oi = add nsw i64 %wide.trip.count347, -1     ; 3 uses
  %xtraiter386 = and i64 %i.oi, 1
  %i.oj = icmp eq i32 %i.x, 2
  br i1 %i.oj, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new

_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new:     ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader
  %unroll_iter395 = and i64 %i.oi, -2
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new
  %indvars.iv344 = phi i64 [ 1, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %indvars.iv.next345.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 3 uses
  %i.ok = phi <4 x float> [ %i.og, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %i.pa, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %i.ol = phi <4 x float> [ %i.og, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %i.pc, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %niter396 = phi i64 [ 0, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %niter396.next.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv344
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !345
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load <4 x float>, ptr %i.oo, align 4, !tbaa !223 ; 4 uses
  %i.oq = fcmp olt <4 x float> %i.op, %i.ok
  %i.or = select <4 x i1> %i.oq, <4 x float> %i.op, <4 x float> %i.ok ; 2 uses
  %i.os = fcmp olt <4 x float> %i.ol, %i.op
  %i.ot = select <4 x i1> %i.os, <4 x float> %i.op, <4 x float> %i.ol ; 2 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv344
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !345
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load <4 x float>, ptr %i.ox, align 4, !tbaa !223 ; 4 uses
  %i.oz = fcmp olt <4 x float> %i.oy, %i.or
  %i.pa = select <4 x i1> %i.oz, <4 x float> %i.oy, <4 x float> %i.or ; 3 uses
  %i.pb = fcmp olt <4 x float> %i.ot, %i.oy
  %i.pc = select <4 x i1> %i.pb, <4 x float> %i.oy, <4 x float> %i.ot ; 3 uses
  %indvars.iv.next345.1 = add nuw nsw i64 %indvars.iv344, 2 ; 2 uses
  %niter396.next.1 = add nuw i64 %niter396, 2     ; 2 uses
  %niter396.ncmp.1 = icmp eq i64 %niter396.next.1, %unroll_iter395
  br i1 %niter396.ncmp.1, label %._crit_edge321.loopexit.unr-lcssa, label %_Z8btSetMinIfEvRT_RKS0_.exit.i, !llvm.loop !832

._crit_edge321.loopexit.unr-lcssa:                ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %lcmp.mod391.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod391.not, label %._crit_edge321, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader

_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader:    ; preds = %._crit_edge321.loopexit.unr-lcssa, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader
  %indvars.iv344.epil.init = phi i64 [ 1, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %indvars.iv.next345.1, %._crit_edge321.loopexit.unr-lcssa ]
  %.epil.init388 = phi <4 x float> [ %i.og, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %i.pa, %._crit_edge321.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init390 = phi <4 x float> [ %i.og, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %i.pc, %._crit_edge321.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod394 = trunc i64 %i.oi to i1
  call void @llvm.assume(i1 %lcmp.mod394)
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv344.epil.init
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !345
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load <4 x float>, ptr %i.pf, align 4, !tbaa !223 ; 4 uses
  %i.ph = fcmp olt <4 x float> %i.pg, %.epil.init388
  %i.pi = select <4 x i1> %i.ph, <4 x float> %i.pg, <4 x float> %.epil.init388
  %i.pj = fcmp olt <4 x float> %.epil.init390, %i.pg
  %i.pk = select <4 x i1> %i.pj, <4 x float> %i.pg, <4 x float> %.epil.init390
  br label %._crit_edge321

._crit_edge321:                                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader, %._crit_edge321.loopexit.unr-lcssa, %bb.o
  %i.pl = phi <4 x float> [ %i.og, %bb.o ], [ %i.pa, %._crit_edge321.loopexit.unr-lcssa ], [ %i.pi, %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader ]
  %i.pm = phi <4 x float> [ %i.og, %bb.o ], [ %i.pc, %._crit_edge321.loopexit.unr-lcssa ], [ %i.pk, %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store <4 x float> %i.pl, ptr %5, align 16
  store <4 x float> %i.pm, ptr %i.m, align 16
  %i.pn = getelementptr inbounds nuw i8, ptr %i.v, i64 384 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !725 ; 2 uses
  %.not112 = icmp eq ptr %i.po, null
end_hunk_1
