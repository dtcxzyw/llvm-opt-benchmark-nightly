Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody7setPoseEbb:bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !159
  %i.ij = fsub float %i.ii, %.sroa.6100.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ij, i64 0
  %i.ik = load ptr, ptr %i.ia, align 8, !tbaa !36
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %indvars.iv125 ; 2 uses
  store <2 x float> %i.ig, ptr %i.il, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !185
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.im = load ptr, ptr %i.hz, align 8, !tbaa !109
  %i.in = getelementptr inbounds nuw [120 x i8], ptr %i.im, i64 %indvars.iv.next126 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load <2 x float>, ptr %i.io, align 4, !tbaa !159
  %i.iq = fsub <2 x float> %i.ip, %.sroa.07.1.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.is = load float, ptr %i.ir, align 4, !tbaa !159
  %i.it = fsub float %i.is, %.sroa.6100.8.vec.extract
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.it, i64 0
  %i.iu = load ptr, ptr %i.ia, align 8, !tbaa !36
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %indvars.iv.next126 ; 2 uses
  store <2 x float> %i.iq, ptr %i.iv, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !185
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter250.next.1 = add i64 %niter250, 2         ; 2 uses
  %niter250.ncmp.1 = icmp eq i64 %niter250.next.1, %unroll_iter249
  br i1 %niter250.ncmp.1, label %._crit_edge108.loopexit.unr-lcssa, label %bb.o

._crit_edge108.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %._crit_edge108.loopexit, label %.epil.preheader245

.epil.preheader245:                               ; preds = %._crit_edge108.loopexit.unr-lcssa, %.lr.ph107
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next126.1, %._crit_edge108.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod248 = trunc i32 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod248)
  %i.iw = load ptr, ptr %i.hz, align 8, !tbaa !109
  %i.ix = getelementptr inbounds nuw [120 x i8], ptr %i.iw, i64 %indvars.iv125.epil.init ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load <2 x float>, ptr %i.iy, align 4, !tbaa !159
  %i.ja = fsub <2 x float> %i.iz, %.sroa.07.1.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !159
  %i.jd = fsub float %i.jc, %.sroa.6100.8.vec.extract
  %.sroa.3.12.vec.insert.i.epil = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jd, i64 0
  %i.je = load ptr, ptr %i.ia, align 8, !tbaa !36
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %indvars.iv125.epil.init ; 2 uses
  store <2 x float> %i.ja, ptr %i.jf, align 4
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.epil, ptr %.sroa.4.0..sroa_idx.epil, align 4, !tbaa !185
  br label %._crit_edge108.loopexit

._crit_edge108.loopexit:                          ; preds = %._crit_edge108.loopexit.unr-lcssa, %.epil.preheader245
  %.pre137.pre = load i32, ptr %i.e, align 4, !tbaa !110
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %.pre137 = phi i32 [ %.pre137.pre, %._crit_edge108.loopexit ], [ %i.hx, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit ] ; 3 uses
  %i.jg = icmp sgt i32 %.pre137, 0
  %or.cond = select i1 %1, i1 %i.jg, i1 false
  br i1 %or.cond, label %bb.p, label %_ZNK10btSoftBody9getVolumeEv.exit

bb.p:                                             ; preds = %._crit_edge108
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !109 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %.sroa.027.0.copyload.i = load float, ptr %i.jj, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.jk = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !118 ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph.i63, label %._crit_edge.i

.lr.ph.i63:                                       ; preds = %bb.p
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !117
  %wide.trip.count.i64 = zext nneg i32 %i.jm to i64
  %i.jq = extractelement <2 x float> %i.jk, i64 0 ; 2 uses
  %i.jr = extractelement <2 x float> %i.jk, i64 1 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i63
  %indvars.iv.i65 = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i66, %bb.q ] ; 2 uses
  %.035.i = phi float [ 0.000000e+00, %.lr.ph.i63 ], [ %i.ll, %bb.q ]
  %i.js = getelementptr inbounds nuw [72 x i8], ptr %i.jp, i64 %indvars.iv.i65 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !251 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !159
  %i.jx = fsub float %i.jw, %.sroa.027.0.copyload.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  %i.jz = load <2 x float>, ptr %i.jy, align 4, !tbaa !159
  %i.ka = fsub <2 x float> %i.jz, %i.jk           ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !251 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !159
  %i.kf = fsub float %i.ke, %.sroa.027.0.copyload.i ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !159
  %i.ki = fsub float %i.kh, %i.jq                 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !159
  %i.kl = fsub float %i.kk, %i.jr                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !251 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !159
  %i.kq = fsub float %i.kp, %.sroa.027.0.copyload.i ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !159
  %i.kt = fsub float %i.ks, %i.jq                 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !159
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
  br i1 %exitcond.not.i67, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %bb.q, %bb.p
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.p ], [ %i.ll, %bb.q ]
  %i.lm = fdiv float %.0.lcssa.i, 6.000000e+00
  br label %_ZNK10btSoftBody9getVolumeEv.exit

_ZNK10btSoftBody9getVolumeEv.exit:                ; preds = %._crit_edge.i, %._crit_edge108
  %i.ln = phi float [ 0.000000e+00, %._crit_edge108 ], [ %i.lm, %._crit_edge.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 540
  store float %i.ln, ptr %i.lo, align 4, !tbaa !163
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 608
  store <2 x float> %.sroa.07.1.i, ptr %i.lp, align 8
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store <2 x float> %.sroa.7.1.i, ptr %.sroa.6100.0..sroa_idx, align 8, !tbaa !185
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float 1.000000e+00, ptr %i.lq, align 8, !tbaa !159
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ls, align 4, !tbaa !159
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.lu, align 8, !tbaa !159
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float 1.000000e+00, ptr %i.lv, align 8, !tbaa !159
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 692
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.lx, align 4, !tbaa !159
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.lz, align 8, !tbaa !159
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 756 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 4 uses
  %i.me = icmp sgt i32 %.pre137, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ma, i8 0, i64 52, i1 false)
  br i1 %i.me, label %.lr.ph110, label %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge

_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge: ; preds = %_ZNK10btSoftBody9getVolumeEv.exit
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %0, i64 740
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.pre142 = load float, ptr %i.md, align 8, !tbaa !159, !noalias !355
  %.pre143 = load float, ptr %i.mb, align 8, !tbaa !159, !noalias !355 ; 2 uses
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %0, i64 724
  %.phi.trans.insert146 = getelementptr inbounds nuw i8, ptr %0, i64 728
  %.pre141 = load float, ptr %.phi.trans.insert140, align 8, !tbaa !159, !noalias !355
  %.pre139 = load float, ptr %.phi.trans.insert138, align 4, !tbaa !159, !noalias !355
  %.pre147 = load float, ptr %.phi.trans.insert146, align 8, !tbaa !159, !noalias !355 ; 2 uses
  %.pre145 = load float, ptr %.phi.trans.insert144, align 4, !tbaa !159, !noalias !355
  %i.mf = insertelement <2 x float> poison, float %.pre147, i64 0
  %i.mg = insertelement <2 x float> %i.mf, float %.pre143, i64 1
  br label %._crit_edge111

.lr.ph110:                                        ; preds = %_ZNK10btSoftBody9getVolumeEv.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !36
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !43
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %.promoted = load float, ptr %i.mb, align 8, !tbaa !159
  %.promoted113.a = load float, ptr %i.ml, align 4, !tbaa !159
  %.promoted114 = load float, ptr %i.mm, align 8, !tbaa !159
  %3 = load <2 x float>, ptr %i.md, align 8, !tbaa !159
  %.promoted116 = load float, ptr %i.mn, align 8, !tbaa !159
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
  %i.mx = load float, ptr %i.mv, align 4, !tbaa !159 ; 2 uses
  %i.my = load float, ptr %i.mw, align 4, !tbaa !159 ; 3 uses
  %i.mz = fmul float %i.mx, %i.my                 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 4 ; 2 uses
  %i.nb = load float, ptr %i.na, align 4, !tbaa !159 ; 2 uses
  %i.nc = fmul float %i.my, %i.nb                 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !159 ; 2 uses
  %i.nf = fmul float %i.my, %i.ne                 ; 2 uses
  %i.ng = fmul float %i.mz, %i.nb
  %i.nh = fadd float %i.ng, %i.ms                 ; 3 uses
  store float %i.nh, ptr %i.ml, align 4, !tbaa !159
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
  store float %i.nq, ptr %i.mb, align 8, !tbaa !159
  store float %i.nr, ptr %i.mm, align 8, !tbaa !159
  %i.ns = load float, ptr %i.nd, align 4, !tbaa !159
  %i.nt = fmul float %i.nc, %i.ns
  %5 = load <2 x float>, ptr %i.mv, align 4, !tbaa !159
  %6 = insertelement <2 x float> poison, float %i.nc, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, %5
  %9 = fadd <2 x float> %8, %i.mu                 ; 4 uses
  store <2 x float> %9, ptr %i.md, align 8, !tbaa !159
  %i.nu = fadd float %i.nt, %i.mr                 ; 3 uses
  store float %i.nu, ptr %i.mn, align 8, !tbaa !159
  %i.nv = load float, ptr %i.mv, align 4, !tbaa !159
  %i.nw = fmul float %i.nf, %i.nv
  %i.nx = load <2 x float>, ptr %i.na, align 4, !tbaa !159
  %i.ny = fmul <2 x float> %i.nj, %i.nx
  %i.nz = fadd float %i.nw, %i.mq                 ; 3 uses
  store float %i.nz, ptr %i.mc, align 8, !tbaa !159
  %i.oa = fadd <2 x float> %i.ny, %4              ; 5 uses
  store <2 x float> %i.oa, ptr %.sroa.495.0..sroa_idx, align 4, !tbaa !159
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge111.loopexit, label %bb.r

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
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 740
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
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 728
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
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 732
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !185
  store float %i.py, ptr %i.md, align 8
  %i.qd = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qe = fmul <2 x float> %i.qd, %i.ow
  %i.qf = insertelement <2 x float> poison, float %i.og, i64 0
  %i.qg = insertelement <2 x float> %i.qf, float %i.ok, i64 1
  %i.qh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.qg, <2 x float> %i.qe)
  %i.qi = fmul <2 x float> %i.qh, %i.pv
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qj, ptr %i.oo, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 748
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !185
  store float %i.pz, ptr %i.mc, align 8
  store float %i.qa, ptr %.sroa.495.0..sroa_idx, align 4
  store float %i.qb, ptr %.sroa.596.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.697.0..sroa_idx, align 4, !tbaa !185
  tail call void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK10btSoftBody11evaluateComEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 537
  %i.b = load i8, ptr %i.a, align 1, !tbaa !162, !range !179, !noundef !180
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110  ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %.sroa.7.020 = phi <2 x float> [ zeroinitializer, %.lr.ph.new ], [ %.sroa.7.8.vec.insert18.1, %bb.c ] ; 2 uses
  %.sroa.07.019 = phi <2 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.aj, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !159 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !159
  %i.r = fmul float %i.o, %i.q
  %i.s = load <2 x float>, ptr %i.m, align 4, !tbaa !159
  %i.t = insertelement <2 x float> poison, float %i.o, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = fadd <2 x float> %.sroa.07.019, %i.v
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.7.020, i64 0
  %i.x = fadd float %.sroa.7.8.vec.extract, %i.r
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv.next ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !159 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !159
  %i.ae = fmul float %i.ab, %i.ad
  %i.af = load <2 x float>, ptr %i.z, align 4, !tbaa !159
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %i.af
  %i.aj = fadd <2 x float> %i.w, %i.ai            ; 3 uses
  %i.ak = fadd float %i.x, %i.ae
  %.sroa.7.8.vec.insert18.1 = insertelement <2 x float> %.sroa.7.020, float %i.ak, i64 0 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.7.020.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.7.8.vec.insert18.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.07.019.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.al = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv.epil.init ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.ao = load float, ptr %i.an, align 4, !tbaa !159 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !159
  %i.ar = fmul float %i.ao, %i.aq
  %i.as = load <2 x float>, ptr %i.am, align 4, !tbaa !159
  %i.at = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.au, %i.as
  %i.aw = fadd <2 x float> %.sroa.07.019.epil.init, %i.av
  %.sroa.7.8.vec.extract.epil = extractelement <2 x float> %.sroa.7.020.epil.init, i64 0
  %i.ax = fadd float %.sroa.7.8.vec.extract.epil, %i.ar
  %.sroa.7.8.vec.insert18.epil = insertelement <2 x float> %.sroa.7.020.epil.init, float %i.ax, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.sroa.07.1 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ], [ %i.aw, %.epil.preheader ]
  %.sroa.7.1 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ %.sroa.7.8.vec.insert18.1, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.7.8.vec.insert18.epil, %.epil.preheader ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.07.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.7.1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK10btSoftBody12clusterCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN10btSoftBody10clusterComEPKNS_7ClusterE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !358  ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !362  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %i.b, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZN10btSoftBody18initializeClustersEv:bb.a

bb.r:                                             ; preds = %bb.q
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jk)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.r, %bb.q, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i8 1, ptr %i.jo, align 8, !tbaa !32
  store ptr %.0.i.i.i96, ptr %i.jj, align 8, !tbaa !36
  store i32 %i.be, ptr %i.iq, align 8, !tbaa !38
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %._crit_edge164
  store i32 %i.be, ptr %i.in, align 4, !tbaa !37
  br i1 %i.bf, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %bb.s
  %indvars.iv184 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next185, %bb.s ] ; 3 uses
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !362
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv184
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !251 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !159
  %i.jw = load <2 x float>, ptr %i.dr, align 8, !tbaa !159
  %i.jx = fsub <2 x float> %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !159
  %i.ka = load float, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !159
  %i.kb = fsub float %i.jz, %i.ka
  %.sroa.3.12.vec.insert.i105 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kb, i64 0
  %i.kc = load ptr, ptr %i.jq, align 8, !tbaa !36
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv184 ; 2 uses
  store <2 x float> %i.jx, ptr %i.kd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i105, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !185
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ke = load i32, ptr %i.in, align 4, !tbaa !37
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp slt i64 %indvars.iv.next185, %i.kf
  br i1 %i.kg, label %bb.s, label %._crit_edge171

._crit_edge171:                                   ; preds = %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kh = load i32, ptr %i.a, align 4, !tbaa !146
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next188, %i.ki
  br i1 %i.kj, label %bb.b, label %._crit_edge175

._crit_edge175:                                   ; preds = %._crit_edge171, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btMatrix3x3, align 4         ; 11 uses
  %2 = alloca %class.btMatrix3x3, align 4         ; 7 uses
  %3 = alloca %class.btMatrix3x3, align 4         ; 4 uses
  %4 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph352, label %._crit_edge353

.lr.ph352:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 524
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph352, %bb.s
  %i.p = phi i32 [ %i.b, %.lr.ph352 ], [ %i.ps, %bb.s ]
  %indvars.iv379 = phi i64 [ 0, %.lr.ph352 ], [ %indvars.iv.next380, %bb.s ] ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv379
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !287  ; 53 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !358  ; 10 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.v = icmp sgt i32 %i.u, 0                     ; 3 uses
  br i1 %i.v, label %.lr.ph.i, label %.loopexit300

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !362  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.u to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aa = icmp eq i32 %i.u, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bc, %bb.d ]
  %i.ab = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.bd, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !251 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !159
  %i.ah = load float, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !159
  %i.al = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.am, %i.ak
  %i.ao = fadd float %.sroa.015.019.i, %i.ai
  %i.ap = fadd <2 x float> %i.ab, %i.an
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !251 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i
  %i.au = load float, ptr %i.as, align 4, !tbaa !159
  %i.av = load float, ptr %i.at, align 4, !tbaa !159 ; 2 uses
  %i.aw = fmul float %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !tbaa !159
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %i.ay
  %i.bc = fadd float %i.ao, %i.aw                 ; 3 uses
  %i.bd = fadd <2 x float> %i.ap, %i.bb           ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit300.loopexit.unr-lcssa, label %bb.d

.loopexit300.loopexit.unr-lcssa:                  ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit300, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit300.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.loopexit300.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bc, %.loopexit300.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bd, %.loopexit300.loopexit.unr-lcssa ]
  %lcmp.mod438 = trunc i32 %i.u to i1
  call void @llvm.assume(i1 %lcmp.mod438)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.epil.init
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !251 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.epil.init
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !159
  %i.bj = load float, ptr %i.bh, align 4, !tbaa !159 ; 2 uses
  %i.bk = fmul float %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !159
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bo, %i.bm
  %i.bq = fadd float %.sroa.015.019.i.epil.init, %i.bk
  %i.br = fadd <2 x float> %.epil.init, %i.bp
  br label %.loopexit300

.loopexit300:                                     ; preds = %.epil.preheader, %.loopexit300.loopexit.unr-lcssa, %bb.c
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.bc, %.loopexit300.loopexit.unr-lcssa ], [ %i.bq, %.epil.preheader ]
  %i.bs = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.bd, %.loopexit300.loopexit.unr-lcssa ], [ %i.br, %.epil.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 164 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !159 ; 3 uses
  %i.bv = fmul float %.sroa.015.0.lcssa.i, %i.bu  ; 2 uses
  %i.bw = extractelement <2 x float> %i.bs, i64 0
  %i.bx = fmul float %i.bw, %i.bu                 ; 2 uses
  %i.by = extractelement <2 x float> %i.bs, i64 1
  %i.bz = fmul float %i.by, %i.bu                 ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bv, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bx, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 264 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ca, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !185
  %.promoted304 = load float, ptr %i.f, align 4
  %i.cb = insertelement <2 x float> <float poison, float 2.000000e-04>, float %.promoted304, i64 0 ; 2 uses
  br i1 %i.v, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %.loopexit300
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !362
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !36
  %i.cg = load <2 x float>, ptr %i.g, align 4, !tbaa !159
  %.promoted322 = load float, ptr %i.h, align 4, !tbaa !159
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f
  store <2 x float> %i.ig, ptr %i.g, align 4, !tbaa !159
  store float %i.im, ptr %i.h, align 4, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.loopexit300
  %.lcssa311 = phi float [ %i.is, %._crit_edge ], [ f0x399D4951, %.loopexit300 ]
  %.lcssa303 = phi float [ %i.if, %._crit_edge ], [ f0x38D1B717, %.loopexit300 ]
  %i.ch = phi <2 x float> [ %i.il, %._crit_edge ], [ %i.cb, %.loopexit300 ]
  %i.ci = phi <2 x float> [ %i.ir, %._crit_edge ], [ zeroinitializer, %.loopexit300 ]
  store float %.lcssa303, ptr %1, align 4
  store <2 x float> %i.ch, ptr %i.f, align 4
  store <2 x float> %i.ci, ptr %i.e, align 4
  store float %.lcssa311, ptr %.sroa.5297.0..sroa_idx, align 4
  call fastcc void @_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %3)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cj, ptr noundef nonnull align 4 dereferenceable(48) %2, i64 16, i1 false), !tbaa.struct !198
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !198
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !198
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.co = load float, ptr %i.cn, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 172
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !159, !noalias !456 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 188
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 204
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !159, !noalias !456 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.db = load float, ptr %i.da, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.de = load float, ptr %i.dd, align 8, !tbaa !159, !noalias !456 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 116
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.dh = load float, ptr %i.cm, align 8, !tbaa !159, !noalias !456 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 132 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !159, !noalias !456 ; 5 uses
  %i.dk = fmul float %i.cq, %i.dj
  %i.dl = call float @llvm.fmuladd.f32(float %i.co, float %i.dh, float %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !159, !noalias !456 ; 5 uses
  %i.do = call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.dn, float %i.dl) ; 2 uses
  %i.dp = load <2 x float>, ptr %i.cj, align 8, !tbaa !159, !noalias !456 ; 5 uses
  %i.dq = load <2 x float>, ptr %i.cx, align 4, !tbaa !159, !noalias !456 ; 5 uses
  %i.dr = load float, ptr %i.dc, align 8, !tbaa !159, !noalias !456
  %i.ds = load <2 x float>, ptr %i.cl, align 8, !tbaa !159, !noalias !456 ; 5 uses
  %i.dt = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <2 x float> %i.dp, <2 x float> %i.ds, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.dw = fmul <2 x float> %i.du, %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.co, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x float> %i.dp, <2 x float> %i.ds, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dz, <2 x float> %i.dw)
  %i.eb = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 1, i32 2>
  %i.ee = shufflevector <2 x float> %i.dq, <2 x float> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.ef = fmul <2 x float> %i.ed, %i.ee
  %i.eg = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.dz, <2 x float> %i.ef)
  %i.ej = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x float> %i.dv, <2 x float> %i.dq, <2 x i32> <i32 0, i32 3>
  %i.em = shufflevector <2 x float> %i.dq, <2 x float> %i.ds, <2 x i32> <i32 1, i32 3>
  %i.en = fmul <2 x float> %i.el, %i.em
  %i.eo = insertelement <2 x float> poison, float %i.db, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.dz, <2 x float> %i.en)
  %i.er = insertelement <2 x float> poison, float %i.de, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = extractelement <2 x float> %i.dq, i64 0
  %i.eu = fmul float %i.et, %i.dj
  %i.ev = call float @llvm.fmuladd.f32(float %i.cw, float %i.dh, float %i.eu)
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.cz, float %i.dn, float %i.ev) ; 2 uses
  %i.ex = fmul float %i.dr, %i.dj
  %i.ey = call float @llvm.fmuladd.f32(float %i.db, float %i.dh, float %i.ex)
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.de, float %i.dn, float %i.ey) ; 2 uses
  %i.fa = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul float %i.dj, %i.ew
  %i.fl = call float @llvm.fmuladd.f32(float %i.dh, float %i.do, float %i.fk)
  %i.fm = call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.ez, float %i.fl) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 220
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %.sroa.7277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 228
  %.sroa.12281.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 244
  store float 0.000000e+00, ptr %.sroa.12281.16..sroa_idx, align 4, !tbaa !185
  %i.fo = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.fp = load <2 x float>, ptr %i.cr, align 4, !tbaa !159, !noalias !456 ; 3 uses
  %i.fq = load <2 x float>, ptr %i.df, align 4, !tbaa !159, !noalias !456 ; 3 uses
  %i.fr = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.fs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.fr, <2 x float> %i.ea) ; 3 uses
  %i.ft = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.fr, <2 x float> %i.ei) ; 3 uses
  %i.fu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fr, <2 x float> %i.eq) ; 3 uses
  %i.fv = fmul <2 x float> %i.fa, %i.ft
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fs, <2 x float> %i.fv)
  %i.fx = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fu, <2 x float> %i.fw) ; 3 uses
  %i.fz = fmul <2 x float> %i.ft, %i.fc
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fs, <2 x float> %i.fz)
  %i.gb = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.fu, <2 x float> %i.ga) ; 3 uses
  %i.gd = fmul <2 x float> %i.ft, %i.ff
  %i.ge = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fs, <2 x float> %i.gd)
  %i.gf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fu, <2 x float> %i.ge) ; 3 uses
  %i.gg = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.gh = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x float> %i.gg, %i.gi
  %i.gk = insertelement <2 x float> poison, float %i.do, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.gl, <2 x float> %i.gj)
  %i.gn = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.go, <2 x float> %i.gm) ; 3 uses
  %i.gq = extractelement <2 x float> %i.fy, i64 0
  store float %i.gq, ptr %i.fn, align 8
  %i.gr = extractelement <2 x float> %i.gc, i64 0
  store float %i.gr, ptr %.sroa.5275.0..sroa_idx, align 4
  %i.gs = extractelement <2 x float> %i.gf, i64 0
  store float %i.gs, ptr %.sroa.6276.0..sroa_idx, align 8
  %i.gt = shufflevector <2 x float> %i.fy, <2 x float> %i.gc, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float 0.000000e+00, i64 0
  %i.gv = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.gw, ptr %.sroa.7277.0..sroa_idx, align 4
  store <2 x float> %i.gp, ptr %i.fo, align 8
  %.sroa.16282.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  store float %i.fm, ptr %.sroa.16282.32..sroa_idx, align 8
  %.sroa.17283.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 260
  store float 0.000000e+00, ptr %.sroa.17283.32..sroa_idx, align 4, !tbaa !185
  %i.gx = getelementptr inbounds nuw i8, ptr %i.s, i64 352 ; 4 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 360 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.s, i64 368 ; 2 uses
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 376 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i8 0, i64 32, i1 false)
  br i1 %i.v, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.e
  %i.gz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !362
  %i.hb = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !43
  %6 = getelementptr inbounds nuw i8, ptr %i.s, i64 268
  %wide.trip.count369 = zext nneg i32 %i.u to i64
  %.pre383 = load float, ptr %i.ca, align 8, !tbaa !159
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !159
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.hd = phi float [ %.promoted322, %.lr.ph ], [ %i.im, %bb.f ]
  %i.he = phi float [ f0x38D1B717, %.lr.ph ], [ %i.if, %bb.f ]
  %i.hf = phi float [ f0x399D4951, %.lr.ph ], [ %i.is, %bb.f ]
  %i.hg = phi <2 x float> [ %i.cb, %.lr.ph ], [ %i.il, %bb.f ]
  %i.hh = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ir, %bb.f ]
  %i.hi = phi <2 x float> [ %i.cg, %.lr.ph ], [ %i.ig, %bb.f ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !251 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !159
  %i.hn = fsub float %i.hm, %i.bv                 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 20
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !159
  %i.hq = fsub float %i.hp, %i.bx                 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !159
  %i.ht = fsub float %i.hs, %i.bz                 ; 2 uses
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %indvars.iv ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !159 ; 3 uses
  %i.hx = load <2 x float>, ptr %i.hu, align 4, !tbaa !159 ; 4 uses
  %i.hy = extractelement <2 x float> %i.hx, i64 0
  %i.hz = fmul float %i.hn, %i.hy
  %i.ia = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.id = insertelement <2 x float> %i.ic, float %i.hw, i64 1
  %i.ie = fmul <2 x float> %i.ib, %i.id
  %i.if = fadd float %i.hz, %i.he                 ; 2 uses
  %i.ig = fadd <2 x float> %i.ie, %i.hi           ; 2 uses
  %i.ih = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ii, %i.hx
  %i.ik = fmul float %i.hq, %i.hw
  %i.il = fadd <2 x float> %i.ij, %i.hg           ; 2 uses
  %i.im = fadd float %i.ik, %i.hd                 ; 2 uses
  %i.in = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %i.io, %i.hx
  %i.iq = fmul float %i.ht, %i.hw
  %i.ir = fadd <2 x float> %i.ip, %i.hh           ; 2 uses
  %i.is = fadd float %i.iq, %i.hf                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f

bb.g:                                             ; preds = %.lr.ph326, %bb.g
  %indvars.iv366 = phi i64 [ 0, %.lr.ph326 ], [ %indvars.iv.next367, %bb.g ] ; 3 uses
  %i.it = phi float [ 0.000000e+00, %.lr.ph326 ], [ %i.jr, %bb.g ]
  %i.iu = phi float [ 0.000000e+00, %.lr.ph326 ], [ %i.jj, %bb.g ]
  %8 = phi <2 x float> [ zeroinitializer, %.lr.ph326 ], [ %i.ji, %bb.g ]
  %i.iv = phi <2 x float> [ zeroinitializer, %.lr.ph326 ], [ %24, %bb.g ]
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv366
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !251 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv366
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !159 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !159
  %i.jd = fmul float %i.ja, %i.jc                 ; 3 uses
  %i.je = load <2 x float>, ptr %i.iy, align 4, !tbaa !159
  %i.jf = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x float> %i.jg, %i.je           ; 4 uses
  %i.ji = fadd <2 x float> %i.jh, %8              ; 3 uses
  store <2 x float> %i.ji, ptr %i.gx, align 8, !tbaa !159
  %i.jj = fadd float %i.jd, %i.iu                 ; 3 uses
  store float %i.jj, ptr %.sroa.5255.0..sroa_idx, align 8, !tbaa !159
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %9 = load float, ptr %i.jk, align 4, !tbaa !159
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 20
  %10 = extractelement <2 x float> %i.jh, i64 1   ; 2 uses
  %i.jm = extractelement <2 x float> %i.jh, i64 0
  %i.jn = fneg float %i.jm
  %i.jo = load <2 x float>, ptr %i.jl, align 4, !tbaa !159
  %i.jp = fsub <2 x float> %i.jo, %7              ; 3 uses
  %11 = fsub float %9, %.pre383                   ; 2 uses
  %12 = fneg float %i.jd
  %13 = fneg float %10
  %14 = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %11, i64 1
  %16 = insertelement <2 x float> poison, float %13, i64 0
  %17 = insertelement <2 x float> %16, float %12, i64 1
  %18 = fmul <2 x float> %15, %17
  %19 = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %20 = insertelement <2 x float> %19, float %i.jd, i64 0
  %i.jq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %20, <2 x float> %18)
  %21 = extractelement <2 x float> %i.jp, i64 0
  %22 = fmul float %21, %i.jn
  %23 = call float @llvm.fmuladd.f32(float %11, float %10, float %22)
  %24 = fadd <2 x float> %i.iv, %i.jq             ; 4 uses
  store <2 x float> %24, ptr %i.gy, align 8, !tbaa !159
  %i.jr = fadd float %23, %i.it                   ; 3 uses
  store float %i.jr, ptr %.sroa.5248.0..sroa_idx, align 8, !tbaa !159
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %._crit_edge327.loopexit, label %bb.g

._crit_edge327.loopexit:                          ; preds = %bb.g
  %25 = extractelement <2 x float> %24, i64 1
  %26 = extractelement <2 x float> %24, i64 0
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge327.loopexit, %bb.e
  %i.js = phi float [ 0.000000e+00, %bb.e ], [ %i.jr, %._crit_edge327.loopexit ] ; 2 uses
  %i.jt = phi float [ 0.000000e+00, %bb.e ], [ %25, %._crit_edge327.loopexit ] ; 2 uses
  %i.ju = phi float [ 0.000000e+00, %bb.e ], [ %26, %._crit_edge327.loopexit ] ; 2 uses
  %i.jv = phi float [ 0.000000e+00, %bb.e ], [ %i.jj, %._crit_edge327.loopexit ]
  %i.jw = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.ji, %._crit_edge327.loopexit ]
  %i.jx = load float, ptr %i.bt, align 4, !tbaa !159 ; 2 uses
  %i.jy = fmul float %i.jx, %i.jv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.s, i64 396
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !459
  %i.kb = fsub float 1.000000e+00, %i.ka          ; 2 uses
  %i.kc = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = fmul <2 x float> %i.jw, %i.kd
  %i.kf = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x float> %i.ke, %i.kg
  %i.ki = fmul float %i.jy, %i.kb
  %.sroa.3.12.vec.insert.i165 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ki, i64 0
  store <2 x float> %i.kh, ptr %i.gx, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i165, ptr %.sroa.5255.0..sroa_idx, align 8, !tbaa !185
  %i.kj = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x float> %i.gc, %i.kk
  %i.km = extractelement <2 x float> %i.gp, i64 1
  %i.kn = fmul float %i.jt, %i.km
  %i.ko = extractelement <2 x float> %i.gp, i64 0
  %i.kp = call float @llvm.fmuladd.f32(float %i.ko, float %i.ju, float %i.kn)
  %i.kq = call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.js, float %i.kp)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.s, i64 400
  %i.ks = load float, ptr %i.kr, align 8, !tbaa !460
  %i.kt = fsub float 1.000000e+00, %i.ks          ; 2 uses
  %i.ku = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.kv, <2 x float> %i.kl)
  %i.kx = insertelement <2 x float> poison, float %i.js, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.ky, <2 x float> %i.kw)
  %i.la = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = fmul <2 x float> %i.kz, %i.lb
  %i.ld = fmul float %i.kt, %i.kq
  %.sroa.3.12.vec.insert.i175 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ld, i64 0
  store <2 x float> %i.lc, ptr %i.gy, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i175, ptr %.sroa.5248.0..sroa_idx, align 8, !tbaa !185
  %i.le = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  %i.lf = getelementptr inbounds nuw i8, ptr %i.s, i64 404 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.le, i8 0, i64 72, i1 false)
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !461
  %i.lh = fcmp ogt float %i.lg, 0.000000e+00
  br i1 %i.lh, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge327
  %i.li = load i32, ptr %i.t, align 4, !tbaa !358
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.lr.ph331, label %.loopexit

.lr.ph331:                                        ; preds = %.preheader
  %i.lk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.lm = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph331, %bb.h
  %indvars.iv371 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next372, %bb.h ] ; 3 uses
  %i.ln = load ptr, ptr %i.lk, align 8, !tbaa !362
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv371
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !251 ; 2 uses
  %i.lq = load ptr, ptr %i.ll, align 8, !tbaa !36
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %indvars.iv371 ; 3 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !159 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !159 ; 2 uses
  %i.lv = load float, ptr %i.cu, align 8, !tbaa !159
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !159 ; 2 uses
  %i.ly = load float, ptr %i.dg, align 8, !tbaa !159
  %i.lz = load float, ptr %i.cm, align 8, !tbaa !159
  %i.ma = load float, ptr %i.di, align 4, !tbaa !159
  %i.mb = fmul float %i.lu, %i.ma
  %i.mc = call float @llvm.fmuladd.f32(float %i.lz, float %i.ls, float %i.mb)
  %i.md = load float, ptr %i.dm, align 8, !tbaa !159
  %i.me = call noundef float @llvm.fmuladd.f32(float %i.md, float %i.lx, float %i.mc)
  %i.mf = load float, ptr %i.lm, align 8, !tbaa !159
  %i.mg = fadd float %i.mf, %i.me
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  %i.mi = load float, ptr %i.lf, align 4, !tbaa !461 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lp, i64 24 ; 2 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !159 ; 2 uses
  %i.ml = fsub float %i.mg, %i.mk
  %i.mm = fmul float %i.mi, %i.ml
  %i.mn = load <2 x float>, ptr %i.cj, align 8, !tbaa !159 ; 2 uses
  %i.mo = load <2 x float>, ptr %i.cl, align 8, !tbaa !159 ; 2 uses
  %i.mp = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = shufflevector <2 x float> %i.mn, <2 x float> %i.mo, <2 x i32> <i32 1, i32 3>
  %i.ms = fmul <2 x float> %i.mq, %i.mr
  %i.mt = shufflevector <2 x float> %i.mn, <2 x float> %i.mo, <2 x i32> <i32 0, i32 2>
  %i.mu = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.mv, <2 x float> %i.ms)
  %i.mx = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.my = insertelement <2 x float> %i.mx, float %i.ly, i64 1
  %i.mz = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> %i.na, <2 x float> %i.mw)
  %i.nc = load <2 x float>, ptr %i.ck, align 8, !tbaa !159
  %i.nd = fadd <2 x float> %i.nb, %i.nc
  %i.ne = load <2 x float>, ptr %i.mh, align 4, !tbaa !159 ; 2 uses
  %i.nf = fsub <2 x float> %i.nd, %i.ne
  %i.ng = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ni = fmul <2 x float> %i.nh, %i.nf
  %i.nj = fadd <2 x float> %i.ne, %i.ni
  %i.nk = fadd float %i.mk, %i.mm
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nk, i64 0
  store <2 x float> %i.nj, ptr %i.mh, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.mj, align 8, !tbaa !185
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.nl = load i32, ptr %i.t, align 4, !tbaa !358
  %i.nm = sext i32 %i.nl to i64
  %i.nn = icmp slt i64 %indvars.iv.next372, %i.nm
  br i1 %i.nn, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.preheader, %._crit_edge327
  %i.no = getelementptr inbounds nuw i8, ptr %i.s, i64 417
  %i.np = load i8, ptr %i.no, align 1, !tbaa !392, !range !179, !noundef !180
  %i.nq = trunc nuw i8 %i.np to i1
  br i1 %i.nq, label %bb.i, label %bb.r

bb.i:                                             ; preds = %.loopexit
  %i.nr = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !362 ; 4 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !251
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load <4 x float>, ptr %i.nu, align 8    ; 6 uses
  %i.nw = icmp sgt i32 %i.u, 1
  br i1 %i.nw, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader, label %._crit_edge341

_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader:         ; preds = %bb.i
  %wide.trip.count377 = zext nneg i32 %i.u to i64
  %i.nx = add nsw i64 %wide.trip.count377, -1     ; 3 uses
  %xtraiter439 = and i64 %i.nx, 1
  %i.ny = icmp eq i32 %i.u, 2
  br i1 %i.ny, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new

_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new:     ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader
  %unroll_iter448 = and i64 %i.nx, -2
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new
  %indvars.iv374 = phi i64 [ 1, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %indvars.iv.next375.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 3 uses
  %i.nz = phi <4 x float> [ %i.nv, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %i.op, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %i.oa = phi <4 x float> [ %i.nv, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %i.or, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %niter449 = phi i64 [ 0, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %niter449.next.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv374
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !251
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load <4 x float>, ptr %i.od, align 4, !tbaa !159 ; 4 uses
  %i.of = fcmp olt <4 x float> %i.oe, %i.nz
  %i.og = select <4 x i1> %i.of, <4 x float> %i.oe, <4 x float> %i.nz ; 2 uses
  %i.oh = fcmp olt <4 x float> %i.oa, %i.oe
  %i.oi = select <4 x i1> %i.oh, <4 x float> %i.oe, <4 x float> %i.oa ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv374
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !251
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load <4 x float>, ptr %i.om, align 4, !tbaa !159 ; 4 uses
  %i.oo = fcmp olt <4 x float> %i.on, %i.og
  %i.op = select <4 x i1> %i.oo, <4 x float> %i.on, <4 x float> %i.og ; 3 uses
  %i.oq = fcmp olt <4 x float> %i.oi, %i.on
  %i.or = select <4 x i1> %i.oq, <4 x float> %i.on, <4 x float> %i.oi ; 3 uses
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374, 2 ; 2 uses
  %niter449.next.1 = add nuw i64 %niter449, 2     ; 2 uses
  %niter449.ncmp.1 = icmp eq i64 %niter449.next.1, %unroll_iter448
  br i1 %niter449.ncmp.1, label %._crit_edge341.loopexit.unr-lcssa, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

._crit_edge341.loopexit.unr-lcssa:                ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %lcmp.mod444.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod444.not, label %._crit_edge341, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader

_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader:    ; preds = %._crit_edge341.loopexit.unr-lcssa, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader
  %indvars.iv374.epil.init = phi i64 [ 1, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %indvars.iv.next375.1, %._crit_edge341.loopexit.unr-lcssa ]
  %.epil.init441 = phi <4 x float> [ %i.nv, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %i.op, %._crit_edge341.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init443 = phi <4 x float> [ %i.nv, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %i.or, %._crit_edge341.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod447 = trunc i64 %i.nx to i1
  call void @llvm.assume(i1 %lcmp.mod447)
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv374.epil.init
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !251
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load <4 x float>, ptr %i.ou, align 4, !tbaa !159 ; 4 uses
  %i.ow = fcmp olt <4 x float> %i.ov, %.epil.init441
  %i.ox = select <4 x i1> %i.ow, <4 x float> %i.ov, <4 x float> %.epil.init441
  %i.oy = fcmp olt <4 x float> %.epil.init443, %i.ov
  %i.oz = select <4 x i1> %i.oy, <4 x float> %i.ov, <4 x float> %.epil.init443
  br label %._crit_edge341

._crit_edge341:                                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader, %._crit_edge341.loopexit.unr-lcssa, %bb.i
  %i.pa = phi <4 x float> [ %i.nv, %bb.i ], [ %i.op, %._crit_edge341.loopexit.unr-lcssa ], [ %i.ox, %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader ]
  %i.pb = phi <4 x float> [ %i.nv, %bb.i ], [ %i.or, %._crit_edge341.loopexit.unr-lcssa ], [ %i.oz, %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store <4 x float> %i.pa, ptr %4, align 16
  store <4 x float> %i.pb, ptr %i.k, align 16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.s, i64 384 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !385 ; 2 uses
  %.not112 = icmp eq ptr %i.pd, null
end_hunk_1
