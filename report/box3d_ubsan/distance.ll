Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance?download=true
inline.NumInlined: 304
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3TimeOfImpact:bb.a
  %i.ix = fcmp ugt float %i.em, %i.az
  br i1 %i.ix, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.iy = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2206.0.copyload
  %i.iz = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ja = insertelement <2 x float> %i.iz, float %.sroa.2206.0.copyload, i64 1
  %i.jb = fmul <2 x float> %.sroa.5649.0.copyload, %i.ja
  %i.jc = fmul <2 x float> %i.cw, %.sroa.0205.0.copyload
  %i.jd = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2196.0.copyload
  %i.je = shufflevector <2 x float> %.sroa.0195.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jf = insertelement <2 x float> %i.je, float %.sroa.2196.0.copyload, i64 1
  %i.jg = fmul <2 x float> %.sroa.5649.0.copyload, %i.jf
  %i.jh = fmul <2 x float> %i.cw, %.sroa.0195.0.copyload
  store i32 3, ptr %0, align 4, !tbaa !98
  %i.ji = load float, ptr %i.ai, align 4, !tbaa !95 ; 2 uses
  %i.jj = fmul float %i.fn, %i.ji
  %i.jk = load float, ptr %i.aj, align 4, !tbaa !95 ; 2 uses
  %i.jl = fmul float %i.fn, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jn = fsub <2 x float> %i.jb, %i.jc
  %i.jo = insertelement <2 x float> %i.iz, float %.sroa.2206.0.copyload, i64 0
  %i.jp = fmul <2 x float> %i.dc, %i.jo
  %i.jq = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0205.0.copyload ; 2 uses
  %i.jr = extractelement <2 x float> %i.jq, i64 0
  %i.js = fsub float %i.jr, %i.iy
  %i.jt = fadd <2 x float> %i.jp, %i.jn           ; 3 uses
  %i.ju = extractelement <2 x float> %i.jq, i64 1
  %i.jv = fadd float %i.ju, %i.js                 ; 2 uses
  %i.jw = fmul <2 x float> %i.cw, %i.jt
  %i.jx = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jy = insertelement <2 x float> %i.jx, float %i.jv, i64 0
  %i.jz = fmul <2 x float> %i.cu, %i.jy
  %i.ka = fsub <2 x float> %i.jw, %i.jz
  %i.kb = fmul float %.sroa.09.0.vec.extract.i.i, %i.jv
  %foldExtExtBinop9186 = fmul <2 x float> %.sroa.5649.0.copyload, %i.jt
  %i.kc = extractelement <2 x float> %foldExtExtBinop9186, i64 1
  %i.kd = fsub float %i.kb, %i.kc
  %i.ke = fmul <2 x float> %i.ka, splat (float 2.000000e+00)
  %i.kf = fadd <2 x float> %.sroa.0205.0.copyload, %i.ke
  %i.kg = fmul float %i.kd, 2.000000e+00
  %i.kh = fadd float %.sroa.2206.0.copyload, %i.kg
  %i.ki = fadd <2 x float> %.sroa.0647.0.copyload, %i.kf
  %i.kj = fadd float %.sroa.4648.0.copyload, %i.kh
  %i.kk = fsub <2 x float> %i.jg, %i.jh
  %i.kl = insertelement <2 x float> %i.je, float %.sroa.2196.0.copyload, i64 0
  %i.km = fmul <2 x float> %i.dc, %i.kl
  %i.kn = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0195.0.copyload ; 2 uses
  %i.ko = extractelement <2 x float> %i.kn, i64 0
  %i.kp = fsub float %i.ko, %i.jd
  %i.kq = fadd <2 x float> %i.km, %i.kk           ; 3 uses
  %i.kr = extractelement <2 x float> %i.kn, i64 1
  %i.ks = fadd float %i.kr, %i.kp                 ; 2 uses
  %i.kt = fmul <2 x float> %i.cw, %i.kq
  %i.ku = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kv = insertelement <2 x float> %i.ku, float %i.ks, i64 0
  %i.kw = fmul <2 x float> %i.cu, %i.kv
  %i.kx = fsub <2 x float> %i.kt, %i.kw
  %i.ky = fmul float %.sroa.09.0.vec.extract.i.i, %i.ks
  %foldExtExtBinop9188 = fmul <2 x float> %.sroa.5649.0.copyload, %i.kq
  %i.kz = extractelement <2 x float> %foldExtExtBinop9188, i64 1
  %i.la = fsub float %i.ky, %i.kz
  %i.lb = fmul <2 x float> %i.kx, splat (float 2.000000e+00)
  %i.lc = fadd <2 x float> %.sroa.0195.0.copyload, %i.lb
  %i.ld = fmul float %i.la, 2.000000e+00
  %i.le = fadd float %.sroa.2196.0.copyload, %i.ld
  %i.lf = fadd <2 x float> %.sroa.0647.0.copyload, %i.lc
  %i.lg = fadd float %.sroa.4648.0.copyload, %i.le
  %i.lh = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = fmul <2 x float> %i.fl, %i.li
  %i.lk = fadd <2 x float> %i.ki, %i.lj
  %i.ll = fadd float %i.kj, %i.jj
  %i.lm = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lo = fmul <2 x float> %i.fl, %i.ln
  %i.lp = fsub <2 x float> %i.lf, %i.lo
  %i.lq = fsub float %i.lg, %i.jl
  %i.lr = fmul float %i.ll, 5.000000e-01
  %i.ls = fmul <2 x float> %i.lk, splat (float 5.000000e-01)
  %i.lt = fmul <2 x float> %i.lp, splat (float 5.000000e-01)
  %i.lu = fadd <2 x float> %i.ls, %i.lt
  %i.lv = fmul float %i.lq, 5.000000e-01
  %i.lw = fadd float %i.lr, %i.lv
  %i.lx = fadd <2 x float> %.sroa.0298.0.copyload, %i.lu
  %i.ly = fadd float %.sroa.10.0.copyload, %i.lw
  store <2 x float> %i.lx, ptr %i.jm, align 4
  store float %i.ly, ptr %.sroa.4127.0..sroa_idx, align 4, !tbaa !19
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.fl, ptr %i.lz, align 4
  %.sroa.16.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.fn, ptr %.sroa.16.0..sroa_idx230, align 4, !tbaa !19
  store float %.0, ptr %i.c, align 4, !tbaa !91
  br label %.thread715

bb.l:                                             ; preds = %bb.j
  %i.ma = icmp eq i32 %i.ft, 25
  br i1 %i.ma, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mb = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2206.0.copyload
  %i.mc = fmul <2 x float> %i.cw, %.sroa.0205.0.copyload
  %i.md = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2196.0.copyload
  %i.me = fmul <2 x float> %i.cw, %.sroa.0195.0.copyload
  store i32 1, ptr %0, align 4, !tbaa !98
  store float %.0, ptr %i.c, align 4, !tbaa !91
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mh = load float, ptr %i.mf, align 4, !tbaa !99 ; 2 uses
  %i.mi = fmul float %i.fn, %i.mh
  %i.mj = load float, ptr %i.mg, align 4, !tbaa !100 ; 2 uses
  %i.mk = fmul float %i.fn, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.mm = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mn = insertelement <2 x float> %i.mm, float %.sroa.2206.0.copyload, i64 1
  %i.mo = fmul <2 x float> %.sroa.5649.0.copyload, %i.mn
  %i.mp = fsub <2 x float> %i.mo, %i.mc
  %i.mq = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mr = insertelement <2 x float> %i.mq, float %.sroa.2206.0.copyload, i64 0
  %i.ms = fmul <2 x float> %i.dc, %i.mr
  %i.mt = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0205.0.copyload ; 2 uses
  %i.mu = extractelement <2 x float> %i.mt, i64 0
  %i.mv = fsub float %i.mu, %i.mb
  %i.mw = fadd <2 x float> %i.ms, %i.mp           ; 3 uses
  %i.mx = extractelement <2 x float> %i.mt, i64 1
  %i.my = fadd float %i.mx, %i.mv                 ; 2 uses
  %i.mz = fmul <2 x float> %i.cw, %i.mw
  %i.na = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nb = insertelement <2 x float> %i.na, float %i.my, i64 0
  %i.nc = fmul <2 x float> %i.cu, %i.nb
  %i.nd = fsub <2 x float> %i.mz, %i.nc
  %i.ne = fmul float %.sroa.09.0.vec.extract.i.i, %i.my
  %foldExtExtBinop9196 = fmul <2 x float> %.sroa.5649.0.copyload, %i.mw
  %i.nf = extractelement <2 x float> %foldExtExtBinop9196, i64 1
  %i.ng = fsub float %i.ne, %i.nf
  %i.nh = fmul <2 x float> %i.nd, splat (float 2.000000e+00)
  %i.ni = fadd <2 x float> %.sroa.0205.0.copyload, %i.nh
  %i.nj = fmul float %i.ng, 2.000000e+00
  %i.nk = fadd float %.sroa.2206.0.copyload, %i.nj
  %i.nl = fadd <2 x float> %.sroa.0647.0.copyload, %i.ni
  %i.nm = fadd float %.sroa.4648.0.copyload, %i.nk
  %i.nn = shufflevector <2 x float> %.sroa.0195.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.no = insertelement <2 x float> %i.nn, float %.sroa.2196.0.copyload, i64 1
  %i.np = fmul <2 x float> %.sroa.5649.0.copyload, %i.no
  %i.nq = fsub <2 x float> %i.np, %i.me
  %i.nr = shufflevector <2 x float> %.sroa.0195.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ns = insertelement <2 x float> %i.nr, float %.sroa.2196.0.copyload, i64 0
  %i.nt = fmul <2 x float> %i.dc, %i.ns
  %i.nu = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0195.0.copyload ; 2 uses
  %i.nv = extractelement <2 x float> %i.nu, i64 0
  %i.nw = fsub float %i.nv, %i.md
  %i.nx = fadd <2 x float> %i.nt, %i.nq           ; 3 uses
  %i.ny = extractelement <2 x float> %i.nu, i64 1
  %i.nz = fadd float %i.ny, %i.nw                 ; 2 uses
  %i.oa = fmul <2 x float> %i.cw, %i.nx
  %i.ob = shufflevector <2 x float> %i.nx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oc = insertelement <2 x float> %i.ob, float %i.nz, i64 0
  %i.od = fmul <2 x float> %i.cu, %i.oc
  %i.oe = fsub <2 x float> %i.oa, %i.od
  %i.of = fmul float %.sroa.09.0.vec.extract.i.i, %i.nz
  %foldExtExtBinop9198 = fmul <2 x float> %.sroa.5649.0.copyload, %i.nx
  %i.og = extractelement <2 x float> %foldExtExtBinop9198, i64 1
  %i.oh = fsub float %i.of, %i.og
  %i.oi = fmul <2 x float> %i.oe, splat (float 2.000000e+00)
  %i.oj = fadd <2 x float> %.sroa.0195.0.copyload, %i.oi
  %i.ok = fmul float %i.oh, 2.000000e+00
  %i.ol = fadd float %.sroa.2196.0.copyload, %i.ok
  %i.om = fadd <2 x float> %.sroa.0647.0.copyload, %i.oj
  %i.on = fadd float %.sroa.4648.0.copyload, %i.ol
  %i.oo = fadd float %i.nm, %i.mi
  %i.op = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.oq = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> zeroinitializer
  %i.or = fmul <2 x float> %i.fl, %i.oq
  %i.os = fadd <2 x float> %i.nl, %i.or
  %i.ot = insertelement <2 x float> poison, float %i.mj, i64 0
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ov = fmul <2 x float> %i.fl, %i.ou
  %i.ow = fsub <2 x float> %i.om, %i.ov
  %i.ox = fsub float %i.on, %i.mk
  %i.oy = fmul float %i.oo, 5.000000e-01
  %i.oz = fmul <2 x float> %i.os, splat (float 5.000000e-01)
  %i.pa = fmul <2 x float> %i.ow, splat (float 5.000000e-01)
  %i.pb = fadd <2 x float> %i.oz, %i.pa
  %i.pc = fmul float %i.ox, 5.000000e-01
  %i.pd = fadd float %i.oy, %i.pc
  %i.pe = fadd <2 x float> %.sroa.0298.0.copyload, %i.pb
  %i.pf = fadd float %.sroa.10.0.copyload, %i.pd
  store <2 x float> %i.pe, ptr %i.ml, align 4
  store float %i.pf, ptr %.sroa.487.0..sroa_idx, align 4, !tbaa !19
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.fl, ptr %i.pg, align 4
  %.sroa.16.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.fn, ptr %.sroa.16.0..sroa_idx232, align 4, !tbaa !19
  br label %.thread715

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.ph = load i64, ptr %10, align 8              ; 3 uses
  %i.pi = load i64, ptr %i.ba, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  store ptr %8, ptr %15, align 8, !tbaa !39, !alias.scope !101
  store ptr %9, ptr %i.bc, align 8, !tbaa !40, !alias.scope !101
  %i.pj = lshr i64 %i.ph, 48
  %i.pk = trunc nuw nsw i64 %i.pj to i32
  %i.pl = lshr i64 %i.ph, 56
  %i.pm = trunc nuw nsw i64 %i.pl to i32
  %i.pn = trunc i64 %i.pi to i32                  ; 3 uses
  %16 = lshr i32 %i.pn, 16
  %17 = lshr i32 %i.pn, 24
  %i.po = lshr i64 %i.pi, 32
  %i.pp = trunc nuw i64 %i.po to i32
  %i.pq = lshr i64 %i.ph, 32                      ; 2 uses
  %i.pr = trunc i64 %i.pq to i16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.bb, ptr noundef nonnull align 4 dereferenceable(68) %6, i64 68, i1 false), !tbaa.struct !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(68) %7, i64 68, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9, !noalias !101
  %i.ps = and i32 %i.pk, 255
  store i32 %i.ps, ptr %i.a, align 4, !tbaa !27, !noalias !101
  store i32 %i.pm, ptr %i.bf, align 4, !tbaa !27, !noalias !101
  %i.pt = and i32 %i.pn, 255
  store i32 %i.pt, ptr %i.bg, align 4, !tbaa !27, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9, !noalias !101
  %i.pu = and i32 %16, 255
  store i32 %i.pu, ptr %i.b, align 4, !tbaa !27, !noalias !101
  store i32 %17, ptr %i.bh, align 4, !tbaa !27, !noalias !101
  %i.pv = and i32 %i.pp, 255
  store i32 %i.pv, ptr %i.bi, align 4, !tbaa !27, !noalias !101
  %i.pw = trunc nuw i64 %i.pq to i32
  %i.px = and i32 %i.pw, 65535                    ; 2 uses
  %i.py = call fastcc i32 @b3UniqueCount(i32 noundef %i.px, ptr noundef %i.a), !noalias !101 ; 2 uses
  %i.pz = call fastcc i32 @b3UniqueCount(i32 noundef %i.px, ptr noundef %i.b), !noalias !101 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9, !noalias !101
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %6, float noundef %.0), !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !101
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %5, ptr noundef nonnull %7, float noundef %.0), !noalias !101
  %.sroa.0592.0.copyload.i = load <2 x float>, ptr %i.bj, align 4, !noalias !101 ; 31 uses
  %.sroa.10599.0.copyload.i = load <2 x float>, ptr %.sroa.10599.0..sroa_idx.i, align 4, !noalias !101 ; 24 uses
  %.sroa.0578.0.copyload.i = load <2 x float>, ptr %i.bk, align 4, !noalias !101 ; 33 uses
  %.sroa.10585.0.copyload.i = load <2 x float>, ptr %.sroa.10585.0..sroa_idx.i, align 4, !noalias !101 ; 25 uses
  %.sroa.0572.0.copyload.i = load <2 x float>, ptr %5, align 8, !noalias !101 ; 2 uses
  %.sroa.2573.0.copyload.i = load float, ptr %.sroa.2573.0..sroa_idx.i, align 8, !noalias !101
  %.sroa.0570.0.copyload.i = load <2 x float>, ptr %4, align 8, !noalias !101 ; 2 uses
  %.sroa.2571.0.copyload.i = load float, ptr %.sroa.2571.0..sroa_idx.i, align 8, !noalias !101
  %foldExtExtBinop9200 = fsub <2 x float> %.sroa.0572.0.copyload.i, %.sroa.0570.0.copyload.i
  %i.qa = extractelement <2 x float> %foldExtExtBinop9200, i64 1 ; 4 uses
  %i.qb = shufflevector <2 x float> %.sroa.0572.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qc = insertelement <2 x float> %i.qb, float %.sroa.2573.0.copyload.i, i64 0
  %i.qd = shufflevector <2 x float> %.sroa.0570.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qe = insertelement <2 x float> %i.qd, float %.sroa.2571.0.copyload.i, i64 0
  %i.qf = fsub <2 x float> %i.qc, %i.qe           ; 4 uses
  switch i16 %i.pr, label %b3MakeSeparationFunction.exit [
    i16 1, label %bb.o
    i16 2, label %bb.p
    i16 3, label %bb.aq
  ]

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.be, align 8, !tbaa !41, !alias.scope !101
  store <2 x float> %i.fl, ptr %i.br, align 8, !alias.scope !101
  store float %i.fn, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !101
  br label %b3MakeSeparationFunction.exit

bb.p:                                             ; preds = %bb.n
  %i.qg = icmp eq i32 %i.py, 2
  %i.qh = icmp eq i32 %i.pz, 2
  %or.cond.i = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %or.cond.i, label %bb.q, label %bb.ap

bb.q:                                             ; preds = %bb.p
  %i.qi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !101 ; 4 uses
  %i.qj = load i32, ptr %i.a, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.qk = sext i32 %i.qj to i64                   ; 2 uses
  %i.ql = getelementptr inbounds [12 x i8], ptr %i.qi, i64 %i.qk ; 3 uses
  %i.qm = mul nsw i64 %i.qk, 12
  %i.qn = ptrtoint ptr %i.qi to i64, !nosanitize !11 ; 6 uses
  %i.qo = add i64 %i.qm, %i.qn, !nosanitize !11   ; 3 uses
  %i.qp = icmp ne ptr %i.qi, null, !nosanitize !11 ; 2 uses
  %i.qq = icmp eq i64 %i.qo, 0
  %i.qr = xor i1 %i.qp, %i.qq
  %i.qs = icmp uge i64 %i.qo, %i.qn, !nosanitize !11
  %i.qt = icmp slt i32 %i.qj, 0
  %i.qu = xor i1 %i.qt, %i.qs
  %i.qv = and i1 %i.qr, %i.qu, !nosanitize !11
  br i1 %i.qv, label %bb.s, label %bb.r, !prof !12, !nosanitize !11

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @131, i64 %i.qn, i64 %i.qo) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.s:                                             ; preds = %bb.q
  %i.qw = ptrtoint ptr %i.ql to i64, !nosanitize !11 ; 2 uses
  %i.qx = and i64 %i.qw, 3, !nosanitize !11
  %i.qy = icmp eq i64 %i.qx, 0, !nosanitize !11
  %i.qz = and i1 %i.qp, %i.qy
  br i1 %i.qz, label %bb.u, label %bb.t, !prof !12, !nosanitize !11

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @132, i64 %i.qw) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.u:                                             ; preds = %bb.s
  %.sroa.0563.0.copyload.i = load <2 x float>, ptr %i.ql, align 4, !noalias !101 ; 5 uses
  %.sroa.5565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %.sroa.5565.0.copyload.i = load float, ptr %.sroa.5565.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 3 uses
  br i1 %.not715.i, label %bb.v, label %bb.w, !prof !20, !nosanitize !11

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @133, i64 -4, i64 0) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.w:                                             ; preds = %bb.u
  %i.ra = load i32, ptr %i.bf, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.rb = sext i32 %i.ra to i64                   ; 2 uses
  %i.rc = mul nsw i64 %i.rb, 12
  %i.rd = add i64 %i.rc, %i.qn, !nosanitize !11   ; 3 uses
  %i.re = icmp ne i64 %i.rd, 0
  %i.rf = icmp uge i64 %i.rd, %i.qn, !nosanitize !11
  %i.rg = icmp slt i32 %i.ra, 0
  %i.rh = xor i1 %i.rg, %i.rf
  %i.ri = and i1 %i.re, %i.rh, !nosanitize !11
  br i1 %i.ri, label %bb.y, label %bb.x, !prof !12, !nosanitize !11

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @134, i64 %i.qn, i64 %i.rd) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.y:                                             ; preds = %bb.w
  %i.rj = getelementptr inbounds [12 x i8], ptr %i.qi, i64 %i.rb ; 2 uses
  %.sroa.0557.0.copyload.i = load <2 x float>, ptr %i.rj, align 4, !noalias !101
  %.sroa.2558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %.sroa.2558.0.copyload.i = load float, ptr %.sroa.2558.0..sroa_idx.i, align 4, !noalias !101
  %i.rk = fsub <2 x float> %.sroa.0557.0.copyload.i, %.sroa.0563.0.copyload.i ; 3 uses
  %i.rl = fsub float %.sroa.2558.0.copyload.i, %.sroa.5565.0.copyload.i ; 3 uses
  %i.rm = fmul <2 x float> %i.rk, %i.rk           ; 2 uses
  %shift9202 = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9203 = fadd <2 x float> %i.rm, %shift9202
  %i.rn = extractelement <2 x float> %foldExtExtBinop9203, i64 0
  %i.ro = fmul float %i.rl, %i.rl
  %i.rp = fadd float %i.ro, %i.rn                 ; 2 uses
  %i.rq = fcmp ogt float %i.rp, f0x057A0000
  br i1 %i.rq, label %bb.z, label %b3Normalize.exit781.i

bb.z:                                             ; preds = %bb.y
  %sqrt.i = call float @llvm.sqrt.f32(float %i.rp)
  %i.rr = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.rs = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.rt = shufflevector <2 x float> %i.rs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ru = fmul <2 x float> %i.rk, %i.rt
  %i.rv = fmul float %i.rl, %i.rr
  br label %b3Normalize.exit781.i

b3Normalize.exit781.i:                            ; preds = %bb.z, %bb.y
  %.sroa.07.0.i775.i = phi <2 x float> [ %i.ru, %bb.z ], [ zeroinitializer, %bb.y ] ; 10 uses
  %.sroa.5.0.i776.i = phi float [ %i.rv, %bb.z ], [ 0.000000e+00, %bb.y ] ; 9 uses
  %.sroa.09.4.vec.extract13.i.i.i = extractelement <2 x float> %.sroa.0592.0.copyload.i, i64 1 ; 2 uses
  %i.rw = shufflevector <2 x float> %.sroa.07.0.i775.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.07.0.i775.i, i64 0
  %foldExtExtBinop9205 = fmul <2 x float> %.sroa.10599.0.copyload.i, %.sroa.07.0.i775.i
  %i.rx = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.5.0.i776.i
  %i.ry = shufflevector <2 x float> %.sroa.10599.0.copyload.i, <2 x float> %.sroa.0592.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.rz = insertelement <2 x float> %i.rw, float %.sroa.5.0.i776.i, i64 1 ; 2 uses
  %i.sa = fmul <2 x float> %i.ry, %i.rz
  %i.sb = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.sc = shufflevector <2 x float> %i.sb, <2 x float> %foldExtExtBinop9205, <2 x i32> <i32 0, i32 2>
  %i.sd = fsub <2 x float> %i.sc, %i.sa           ; 2 uses
  %i.se = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.rw ; 2 uses
  %shift9207 = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9208 = fsub <2 x float> %i.se, %shift9207
  %i.sf = shufflevector <2 x float> %.sroa.10599.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.sg = fmul <2 x float> %i.sf, %.sroa.07.0.i775.i
  %i.sh = insertelement <2 x float> %i.rw, float %.sroa.5.0.i776.i, i64 0
  %i.si = fmul <2 x float> %i.sf, %i.sh
  %i.sj = fadd <2 x float> %i.sg, %i.sd           ; 2 uses
  %i.sk = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.sl = shufflevector <2 x float> %foldExtExtBinop9208, <2 x float> %i.sk, <2 x i32> <i32 0, i32 3>
  %i.sm = fadd <2 x float> %i.si, %i.sl           ; 2 uses
  %i.sn = fmul <2 x float> %i.ry, %i.sj
  %i.so = extractelement <2 x float> %i.sm, i64 0
  %i.sp = fmul float %.sroa.09.4.vec.extract13.i.i.i, %i.so
  %i.sq = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.sm
  %shift9210 = shufflevector <2 x float> %i.sj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9211 = fmul <2 x float> %.sroa.10599.0.copyload.i, %shift9210
  %i.sr = extractelement <2 x float> %foldExtExtBinop9211, i64 0
  %i.ss = fsub <2 x float> %i.sn, %i.sq
  %i.st = fsub float %i.sp, %i.sr
  %i.su = fmul float %i.st, 2.000000e+00
  %i.sv = fadd float %.sroa.0.0.vec.extract.i.i.i, %i.su ; 2 uses
  %i.sw = fmul <2 x float> %i.ss, splat (float 2.000000e+00)
  %i.sx = fadd <2 x float> %i.rz, %i.sw           ; 3 uses
  %i.sy = load ptr, ptr %9, align 8, !tbaa !18, !noalias !101 ; 4 uses
  %i.sz = load i32, ptr %i.b, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.ta = sext i32 %i.sz to i64                   ; 2 uses
  %i.tb = getelementptr inbounds [12 x i8], ptr %i.sy, i64 %i.ta ; 3 uses
  %i.tc = mul nsw i64 %i.ta, 12
  %i.td = ptrtoint ptr %i.sy to i64, !nosanitize !11 ; 6 uses
  %i.te = add i64 %i.tc, %i.td, !nosanitize !11   ; 3 uses
  %i.tf = icmp ne ptr %i.sy, null, !nosanitize !11 ; 2 uses
  %i.tg = icmp eq i64 %i.te, 0
  %i.th = xor i1 %i.tf, %i.tg
  %i.ti = icmp uge i64 %i.te, %i.td, !nosanitize !11
  %i.tj = icmp slt i32 %i.sz, 0
  %i.tk = xor i1 %i.tj, %i.ti
  %i.tl = and i1 %i.th, %i.tk, !nosanitize !11
  br i1 %i.tl, label %bb.ab, label %bb.aa, !prof !12, !nosanitize !11

bb.aa:                                            ; preds = %b3Normalize.exit781.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @135, i64 %i.td, i64 %i.te) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.ab:                                            ; preds = %b3Normalize.exit781.i
  %i.tm = ptrtoint ptr %i.tb to i64, !nosanitize !11 ; 2 uses
  %i.tn = and i64 %i.tm, 3, !nosanitize !11
  %i.to = icmp eq i64 %i.tn, 0, !nosanitize !11
  %i.tp = and i1 %i.tf, %i.to
  br i1 %i.tp, label %bb.ad, label %bb.ac, !prof !12, !nosanitize !11

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @136, i64 %i.tm) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.ad:                                            ; preds = %bb.ab
  %.sroa.0532.0.copyload.i = load <2 x float>, ptr %i.tb, align 4, !noalias !101 ; 5 uses
  %.sroa.5534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.sroa.5534.0.copyload.i = load float, ptr %.sroa.5534.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 3 uses
  br i1 %.not718.i, label %bb.ae, label %bb.af, !prof !20, !nosanitize !11
end_hunk_0
