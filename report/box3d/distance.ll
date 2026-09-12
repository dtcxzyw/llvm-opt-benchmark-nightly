Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance?download=true
inline.NumInlined: 318
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3TimeOfImpact:bb.a
  %i.mz = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2208.0.copyload
  %i.na = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nb = insertelement <2 x float> %i.na, float %.sroa.2208.0.copyload, i64 1
  %i.nc = fmul <2 x float> %.sroa.010.0.i.i.i, %i.nb
  %i.nd = fmul <2 x float> %i.eg, %.sroa.0207.0.copyload
  %i.ne = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2198.0.copyload
  %i.nf = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ng = insertelement <2 x float> %i.nf, float %.sroa.2198.0.copyload, i64 1
  %i.nh = fmul <2 x float> %.sroa.010.0.i.i.i, %i.ng
  %i.ni = fmul <2 x float> %i.eg, %.sroa.0197.0.copyload
  store i32 3, ptr %0, align 4, !tbaa !86
  %i.nj = load float, ptr %i.z, align 4, !tbaa !85 ; 2 uses
  %i.nk = fmul float %i.js, %i.nj
  %i.nl = load float, ptr %i.ab, align 4, !tbaa !85 ; 2 uses
  %i.nm = fmul float %i.js, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.no = fsub <2 x float> %i.nc, %i.nd
  %i.np = insertelement <2 x float> %i.na, float %.sroa.2208.0.copyload, i64 0
  %i.nq = fmul <2 x float> %i.ej, %i.np
  %i.nr = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0207.0.copyload ; 2 uses
  %i.ns = extractelement <2 x float> %i.nr, i64 0
  %i.nt = fsub float %i.ns, %i.mz
  %i.nu = fadd <2 x float> %i.nq, %i.no           ; 3 uses
  %i.nv = extractelement <2 x float> %i.nr, i64 1
  %i.nw = fadd float %i.nv, %i.nt                 ; 2 uses
  %i.nx = fmul <2 x float> %i.eg, %i.nu
  %i.ny = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nz = insertelement <2 x float> %i.ny, float %i.nw, i64 0
  %i.oa = fmul <2 x float> %i.ep, %i.nz
  %i.ob = fsub <2 x float> %i.nx, %i.oa
  %i.oc = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.nw
  %foldExtExtBinop2496 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.nu
  %i.od = extractelement <2 x float> %foldExtExtBinop2496, i64 1
  %i.oe = fsub float %i.oc, %i.od
  %i.of = fmul <2 x float> %i.ob, splat (float 2.000000e+00)
  %i.og = fadd <2 x float> %.sroa.0207.0.copyload, %i.of
  %i.oh = fmul float %i.oe, 2.000000e+00
  %i.oi = fadd float %.sroa.2208.0.copyload, %i.oh
  %i.oj = fadd <2 x float> %i.fb, %i.og
  %i.ok = fadd float %i.fc, %i.oi
  %i.ol = fsub <2 x float> %i.nh, %i.ni
  %i.om = insertelement <2 x float> %i.nf, float %.sroa.2198.0.copyload, i64 0
  %i.on = fmul <2 x float> %i.ej, %i.om
  %i.oo = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0197.0.copyload ; 2 uses
  %i.op = extractelement <2 x float> %i.oo, i64 0
  %i.oq = fsub float %i.op, %i.ne
  %i.or = fadd <2 x float> %i.on, %i.ol           ; 3 uses
  %i.os = extractelement <2 x float> %i.oo, i64 1
  %i.ot = fadd float %i.os, %i.oq                 ; 2 uses
  %i.ou = fmul <2 x float> %i.eg, %i.or
  %i.ov = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ow = insertelement <2 x float> %i.ov, float %i.ot, i64 0
  %i.ox = fmul <2 x float> %i.ep, %i.ow
  %i.oy = fsub <2 x float> %i.ou, %i.ox
  %i.oz = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.ot
  %foldExtExtBinop2498 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.or
  %i.pa = extractelement <2 x float> %foldExtExtBinop2498, i64 1
  %i.pb = fsub float %i.oz, %i.pa
  %i.pc = fmul <2 x float> %i.oy, splat (float 2.000000e+00)
  %i.pd = fadd <2 x float> %.sroa.0197.0.copyload, %i.pc
  %i.pe = fmul float %i.pb, 2.000000e+00
  %i.pf = fadd float %.sroa.2198.0.copyload, %i.pe
  %i.pg = fadd <2 x float> %i.fb, %i.pd
  %i.ph = fadd float %i.fc, %i.pf
  %i.pi = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.pj = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pk = fmul <2 x float> %i.jq, %i.pj
  %i.pl = fadd <2 x float> %i.oj, %i.pk
  %i.pm = fadd float %i.ok, %i.nk
  %i.pn = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = fmul <2 x float> %i.jq, %i.po
  %i.pq = fsub <2 x float> %i.pg, %i.pp
  %i.pr = fsub float %i.ph, %i.nm
  %i.ps = fmul <2 x float> %i.pl, splat (float 5.000000e-01)
  %i.pt = fmul <2 x float> %i.pq, splat (float 5.000000e-01)
  %i.pu = fadd <2 x float> %i.ps, %i.pt
  %i.pv = fmul float %i.pm, 5.000000e-01
  %i.pw = fmul float %i.pr, 5.000000e-01
  %i.px = fadd float %i.pv, %i.pw
  %i.py = fadd <2 x float> %.sroa.8970.0.copyload, %i.pu
  %i.pz = fadd float %.sroa.12975.0.copyload, %i.px
  store <2 x float> %i.py, ptr %i.nn, align 4
  store float %i.pz, ptr %.sroa.4129.0..sroa_idx, align 4, !tbaa !16
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.jq, ptr %i.qa, align 4
  %.sroa.16.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.js, ptr %.sroa.16.0..sroa_idx232, align 4, !tbaa !16
  store float %.0, ptr %i.a, align 4, !tbaa !82
  br label %.thread1087

bb.h:                                             ; preds = %bb.f
  %i.qb = icmp eq i32 %i.ju, 25
  br i1 %i.qb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.ir, ptr %i.bf, align 4
  store i32 %i.bu, ptr %i.bi, align 4
  store i32 %.lcssa116111701984, ptr %i.bs, align 4
  store i32 %i.cu, ptr %i.bt, align 4
  %i.qc = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2208.0.copyload
  %i.qd = fmul <2 x float> %i.eg, %.sroa.0207.0.copyload
  %i.qe = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2198.0.copyload
  %i.qf = fmul <2 x float> %i.eg, %.sroa.0197.0.copyload
  store i32 1, ptr %0, align 4, !tbaa !86
  store float %.0, ptr %i.a, align 4, !tbaa !82
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !87 ; 2 uses
  %i.qi = fmul float %i.js, %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !88 ; 2 uses
  %i.ql = fmul float %i.js, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.qn = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qo = insertelement <2 x float> %i.qn, float %.sroa.2208.0.copyload, i64 1
  %i.qp = fmul <2 x float> %.sroa.010.0.i.i.i, %i.qo
  %i.qq = fsub <2 x float> %i.qp, %i.qd
  %i.qr = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qs = insertelement <2 x float> %i.qr, float %.sroa.2208.0.copyload, i64 0
  %i.qt = fmul <2 x float> %i.ej, %i.qs
  %i.qu = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0207.0.copyload ; 2 uses
  %i.qv = extractelement <2 x float> %i.qu, i64 0
  %i.qw = fsub float %i.qv, %i.qc
  %i.qx = fadd <2 x float> %i.qt, %i.qq           ; 3 uses
  %i.qy = extractelement <2 x float> %i.qu, i64 1
  %i.qz = fadd float %i.qy, %i.qw                 ; 2 uses
  %i.ra = fmul <2 x float> %i.eg, %i.qx
  %i.rb = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.rc = insertelement <2 x float> %i.rb, float %i.qz, i64 0
  %i.rd = fmul <2 x float> %i.ep, %i.rc
  %i.re = fsub <2 x float> %i.ra, %i.rd
  %i.rf = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.qz
  %foldExtExtBinop2506 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.qx
  %i.rg = extractelement <2 x float> %foldExtExtBinop2506, i64 1
  %i.rh = fsub float %i.rf, %i.rg
  %i.ri = fmul <2 x float> %i.re, splat (float 2.000000e+00)
  %i.rj = fadd <2 x float> %.sroa.0207.0.copyload, %i.ri
  %i.rk = fmul float %i.rh, 2.000000e+00
  %i.rl = fadd float %.sroa.2208.0.copyload, %i.rk
  %i.rm = fadd <2 x float> %i.fb, %i.rj
  %i.rn = fadd float %i.fc, %i.rl
  %i.ro = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.rp = insertelement <2 x float> %i.ro, float %.sroa.2198.0.copyload, i64 1
  %i.rq = fmul <2 x float> %.sroa.010.0.i.i.i, %i.rp
  %i.rr = fsub <2 x float> %i.rq, %i.qf
  %i.rs = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.rt = insertelement <2 x float> %i.rs, float %.sroa.2198.0.copyload, i64 0
  %i.ru = fmul <2 x float> %i.ej, %i.rt
  %i.rv = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0197.0.copyload ; 2 uses
  %i.rw = extractelement <2 x float> %i.rv, i64 0
  %i.rx = fsub float %i.rw, %i.qe
  %i.ry = fadd <2 x float> %i.ru, %i.rr           ; 3 uses
  %i.rz = extractelement <2 x float> %i.rv, i64 1
  %i.sa = fadd float %i.rz, %i.rx                 ; 2 uses
  %i.sb = fmul <2 x float> %i.eg, %i.ry
  %i.sc = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.sd = insertelement <2 x float> %i.sc, float %i.sa, i64 0
  %i.se = fmul <2 x float> %i.ep, %i.sd
  %i.sf = fsub <2 x float> %i.sb, %i.se
  %i.sg = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.sa
  %foldExtExtBinop2508 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.ry
  %i.sh = extractelement <2 x float> %foldExtExtBinop2508, i64 1
  %i.si = fsub float %i.sg, %i.sh
  %i.sj = fmul <2 x float> %i.sf, splat (float 2.000000e+00)
  %i.sk = fadd <2 x float> %.sroa.0197.0.copyload, %i.sj
  %i.sl = fmul float %i.si, 2.000000e+00
  %i.sm = fadd float %.sroa.2198.0.copyload, %i.sl
  %i.sn = fadd <2 x float> %i.fb, %i.sk
  %i.so = fadd float %i.fc, %i.sm
  %i.sp = insertelement <2 x float> poison, float %i.qh, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x float> %i.jq, %i.sq
  %i.ss = fadd <2 x float> %i.rm, %i.sr
  %i.st = fadd float %i.rn, %i.qi
  %i.su = insertelement <2 x float> poison, float %i.qk, i64 0
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sw = fmul <2 x float> %i.jq, %i.sv
  %i.sx = fsub <2 x float> %i.sn, %i.sw
  %i.sy = fsub float %i.so, %i.ql
  %i.sz = fmul <2 x float> %i.ss, splat (float 5.000000e-01)
  %i.ta = fmul <2 x float> %i.sx, splat (float 5.000000e-01)
  %i.tb = fadd <2 x float> %i.sz, %i.ta
  %i.tc = fmul float %i.st, 5.000000e-01
  %i.td = fmul float %i.sy, 5.000000e-01
  %i.te = fadd float %i.tc, %i.td
  %i.tf = fadd <2 x float> %.sroa.8970.0.copyload, %i.tb
  %i.tg = fadd float %.sroa.12975.0.copyload, %i.te
  store <2 x float> %i.tf, ptr %i.qm, align 4
  store float %i.tg, ptr %.sroa.489.0..sroa_idx, align 4, !tbaa !16
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.jq, ptr %i.th, align 4
  %.sroa.16.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.js, ptr %.sroa.16.0..sroa_idx234, align 4, !tbaa !16
  br label %.thread1087

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ti = load i64, ptr %4, align 8               ; 3 uses
  %i.tj = load i64, ptr %i.bk, align 8            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %.sroa.1.0.extract.shift.i = lshr i64 %i.ti, 32
  %.sroa.1.0.extract.trunc.i = trunc i64 %.sroa.1.0.extract.shift.i to i16 ; 2 uses
  %.sroa.4654.0.extract.shift.i = lshr i64 %i.ti, 48 ; 5 uses
  %.sroa.4654.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.4654.0.extract.shift.i to i32
  %.sroa.5655.0.extract.shift.i = lshr i64 %i.ti, 56 ; 3 uses
  %.sroa.5655.0.extract.trunc.i.a = trunc nuw nsw i64 %.sroa.5655.0.extract.shift.i to i32 ; 5 uses
  %.sroa.6656.8.extract.trunc.i = trunc i64 %i.tj to i32 ; 3 uses
  %8 = lshr i32 %.sroa.6656.8.extract.trunc.i, 16
  %9 = lshr i32 %.sroa.6656.8.extract.trunc.i, 24 ; 7 uses
  %.sroa.10660.8.extract.shift.i = lshr i64 %i.tj, 32 ; 2 uses
  %.sroa.10660.8.extract.trunc.i = trunc nuw i64 %.sroa.10660.8.extract.shift.i to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i8 0, i64 32, i1 false), !alias.scope !89
  store ptr %2, ptr %7, align 8, !tbaa !37, !alias.scope !89
  store ptr %3, ptr %i.bm, align 8, !tbaa !38, !alias.scope !89
  store <2 x float> %.sroa.0964.0.copyload, ptr %i.bn, align 8
  store float %.sroa.6967.0.copyload, ptr %.sroa.6967.0..sroa_idx968, align 8, !tbaa !16
  store <2 x float> zeroinitializer, ptr %.sroa.8970.0..sroa_idx971, align 4
  store float 0.000000e+00, ptr %.sroa.12975.0..sroa_idx976, align 4, !tbaa !16
  store <2 x float> %i.d, ptr %.sroa.15.0..sroa_idx978, align 8
  store float %i.e, ptr %.sroa.19.0..sroa_idx982, align 8, !tbaa !16
  store <2 x float> %.sroa.23.0.copyload, ptr %.sroa.23.0..sroa_idx984, align 4
  store <2 x float> %.sroa.25.0.copyload, ptr %.sroa.25.0..sroa_idx987, align 4
  store <2 x float> %.sroa.27.0.copyload, ptr %.sroa.27.0..sroa_idx990, align 4
  store <2 x float> %.sroa.31.0.copyload, ptr %.sroa.31.0..sroa_idx995, align 4
  store <2 x float> %.sroa.0929.0.copyload, ptr %i.bo, align 4
  store float %.sroa.6932.0.copyload, ptr %.sroa.6932.0..sroa_idx933, align 4, !tbaa !16
  store <2 x float> %.sroa.08.4.vec.insert.i367, ptr %.sroa.8.0..sroa_idx935, align 8
  store float %i.bw, ptr %.sroa.12.0..sroa_idx939, align 8, !tbaa !16
  store <2 x float> %.sroa.08.4.vec.insert.i375, ptr %.sroa.16.0..sroa_idx942, align 4
  store float %i.bv, ptr %.sroa.20.0..sroa_idx946, align 4, !tbaa !16
  store <2 x float> %.sroa.24.0.copyload, ptr %.sroa.24.0..sroa_idx948, align 8
  store <2 x float> %.sroa.26.0.copyload, ptr %.sroa.26.0..sroa_idx951, align 8
  store <2 x float> %.sroa.28.0.copyload, ptr %.sroa.28.0..sroa_idx954, align 8
  store <2 x float> %.sroa.32.0.copyload, ptr %.sroa.32.0..sroa_idx959, align 8
  %i.tk = and i32 %.sroa.4654.0.extract.trunc.i, 255 ; 4 uses
  %i.tl = and i32 %.sroa.6656.8.extract.trunc.i, 255 ; 3 uses
  %i.tm = and i32 %8, 255                         ; 8 uses
  %i.tn = and i32 %.sroa.10660.8.extract.trunc.i, 255 ; 3 uses
  switch i16 %.sroa.1.0.extract.trunc.i, label %b3UniqueCount.exit.i [
    i16 1, label %b3UniqueCount.exit737.i
    i16 2, label %b3UniqueCount.exit.thread1245.i
    i16 3, label %bb.k
  ]

b3UniqueCount.exit.thread1245.i:                  ; preds = %bb.j
  %.not23.i.i = icmp eq i32 %i.tk, %.sroa.5655.0.extract.trunc.i.a
  %i.to = select i1 %.not23.i.i, i32 1, i32 2
  %.not23.i736.i = icmp eq i32 %i.tm, %9
  %i.tp = select i1 %.not23.i736.i, i32 1, i32 2
  br label %b3UniqueCount.exit737.i

bb.k:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %i.tk, %.sroa.5655.0.extract.trunc.i.a
  %i.tq = icmp eq i32 %i.tk, %i.tl                ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not22.i.i = icmp eq i32 %i.tl, %.sroa.5655.0.extract.trunc.i.a
  %or.cond.i.i = or i1 %i.tq, %.not22.i.i
  br i1 %or.cond.i.i, label %bb.n, label %b3UniqueCount.exit.thread.i

bb.m:                                             ; preds = %bb.k
  br i1 %i.tq, label %b3UniqueCount.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %b3UniqueCount.exit.thread.i

b3UniqueCount.exit.thread.i:                      ; preds = %bb.n, %bb.m, %bb.l
  %.0.i1241.i = phi i32 [ 2, %bb.n ], [ 1, %bb.m ], [ 3, %bb.l ] ; 3 uses
  %.not.i732.i = icmp eq i32 %i.tm, %9
  %i.tr = icmp eq i32 %i.tm, %i.tn                ; 2 uses
  br i1 %.not.i732.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %b3UniqueCount.exit.thread.i
  %.not22.i733.i = icmp eq i32 %9, %i.tn
  %or.cond.i734.i = or i1 %i.tr, %.not22.i733.i
  br i1 %or.cond.i734.i, label %bb.q, label %b3UniqueCount.exit737.i

bb.p:                                             ; preds = %b3UniqueCount.exit.thread.i
  br i1 %i.tr, label %b3UniqueCount.exit737.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %b3UniqueCount.exit737.i

b3UniqueCount.exit.i:                             ; preds = %bb.j
  br label %b3UniqueCount.exit737.i

b3UniqueCount.exit737.i:                          ; preds = %b3UniqueCount.exit.i, %bb.q, %bb.p, %bb.o, %b3UniqueCount.exit.thread1245.i, %bb.j
  %.0.i1242.i = phi i32 [ 0, %b3UniqueCount.exit.i ], [ %.0.i1241.i, %bb.q ], [ %i.to, %b3UniqueCount.exit.thread1245.i ], [ 1, %bb.j ], [ %.0.i1241.i, %bb.o ], [ %.0.i1241.i, %bb.p ] ; 2 uses
  %.0.i735.i = phi i32 [ 0, %b3UniqueCount.exit.i ], [ 2, %bb.q ], [ %i.tp, %b3UniqueCount.exit.thread1245.i ], [ 1, %bb.j ], [ 3, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %i.ts = select i1 %i.cm, <2 x float> %i.bb, <2 x float> %.sroa.25.0.copyload
  %i.tt = select i1 %i.cm, <2 x float> %i.ba, <2 x float> %.sroa.23.0.copyload
  %i.tu = fmul <2 x float> %i.dd, %i.tt
  %i.tv = fadd <2 x float> %i.db, %i.tu           ; 2 uses
  %i.tw = fmul <2 x float> %i.dd, %i.ts
  %i.tx = fadd <2 x float> %i.dg, %i.tw           ; 2 uses
  %i.ty = shufflevector <2 x float> %i.tv, <2 x float> %i.tx, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.tz = fmul <4 x float> %i.ty, %i.ty           ; 4 uses
  %shift2510 = shufflevector <4 x float> %i.tz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2511 = fadd <4 x float> %i.tz, %shift2510
  %shift2513 = shufflevector <4 x float> %i.tz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2514 = fadd <4 x float> %foldExtExtBinop2511, %shift2513
  %shift2516 = shufflevector <4 x float> %i.tz, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2517 = fadd <4 x float> %shift2516, %foldExtExtBinop2514
  %i.ua = extractelement <4 x float> %foldExtExtBinop2517, i64 0 ; 2 uses
  %i.ub = fcmp ogt float %i.ua, f0x057A0000
  br i1 %i.ub, label %bb.r, label %b3GetSweepTransform.exit731

bb.r:                                             ; preds = %b3UniqueCount.exit737.i
  %sqrt.i.i.i726 = call float @llvm.sqrt.f32(float %i.ua)
  %i.uc = fdiv float 1.000000e+00, %sqrt.i.i.i726
  %i.ud = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uf = fmul <2 x float> %i.tv, %i.ue
  %i.ug = fmul <2 x float> %i.tx, %i.ue
  br label %b3GetSweepTransform.exit731

b3GetSweepTransform.exit731:                      ; preds = %b3UniqueCount.exit737.i, %bb.r
  %.sroa.010.0.i.i.i701 = phi <2 x float> [ %i.uf, %bb.r ], [ zeroinitializer, %b3UniqueCount.exit737.i ] ; 25 uses
  %.sroa.4.0.i.i.i702 = phi <2 x float> [ %i.ug, %bb.r ], [ <float 0.000000e+00, float 1.000000e+00>, %b3UniqueCount.exit737.i ] ; 16 uses
  %.sroa.3.8.vec.extract.i.i717 = extractelement <2 x float> %.sroa.4.0.i.i.i702, i64 0 ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i718 = extractelement <2 x float> %.sroa.010.0.i.i.i701, i64 1 ; 8 uses
  %i.uh = fmul float %.sroa.6967.0.copyload, %.sroa.011.4.vec.extract.i.i.i718
  %i.ui = fmul float %.sroa.03.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i717
  %i.uj = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2> ; 12 uses
  %i.uk = fmul <2 x float> %.sroa.0964.0.copyload, %i.uj ; 2 uses
  %i.ul = fmul <2 x float> %i.ck, %.sroa.010.0.i.i.i701 ; 2 uses
  %i.um = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.un = insertelement <2 x float> %i.um, float %i.uh, i64 0
  %i.uo = shufflevector <2 x float> %i.ul, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.up = insertelement <2 x float> %i.uo, float %i.ui, i64 0
  %i.uq = fsub <2 x float> %i.un, %i.up
  %i.ur = fsub <2 x float> %i.uk, %i.ul
  %i.us = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 16 uses
  %i.ut = fmul <2 x float> %.sroa.0964.0.copyload, %i.us
  %i.uu = fmul <2 x float> %i.cj, %i.us
  %i.uv = fadd <2 x float> %i.ut, %i.uq           ; 2 uses
  %i.uw = fadd <2 x float> %i.uu, %i.ur           ; 2 uses
  %foldExtExtBinop2519 = fmul <2 x float> %.sroa.4.0.i.i.i702, %i.uv
  %shift2521 = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2522 = fmul <2 x float> %.sroa.010.0.i.i.i701, %shift2521
  %foldExtExtBinop2524 = fsub <2 x float> %foldExtExtBinop2519, %foldExtExtBinop2522
  %i.ux = extractelement <2 x float> %foldExtExtBinop2524, i64 0
  %i.uy = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.uw
  %i.uz = shufflevector <2 x float> %.sroa.010.0.i.i.i701, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 1, i32 2> ; 8 uses
  %i.va = fmul <2 x float> %i.uz, %i.uv
  %i.vb = fsub <2 x float> %i.uy, %i.va
  %i.vc = fmul float %i.ux, 2.000000e+00
  %i.vd = fadd float %.sroa.03.4.vec.extract.i.i.i, %i.vc
  %i.ve = fmul <2 x float> %i.vb, splat (float 2.000000e+00)
  %i.vf = fadd <2 x float> %i.ck, %i.ve
  %i.vg = extractelement <2 x float> %i.ee, i64 1
  %i.vh = fsub float %i.vg, %i.vd
  %i.vi = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vj = insertelement <2 x float> %i.vi, float %i.dv, i64 0
  %i.vk = fsub <2 x float> %i.vj, %i.vf
  %i.vl = select i1 %i.cl, <2 x float> %i.bd, <2 x float> %.sroa.26.0.copyload
  %i.vm = select i1 %i.cl, <2 x float> %i.bc, <2 x float> %.sroa.24.0.copyload
  %i.vn = fmul <2 x float> %i.dd, %i.vm
  %i.vo = fadd <2 x float> %i.fg, %i.vn           ; 2 uses
  %i.vp = fmul <2 x float> %i.dd, %i.vl
  %i.vq = fadd <2 x float> %i.fj, %i.vp           ; 2 uses
  %i.vr = shufflevector <2 x float> %i.vo, <2 x float> %i.vq, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.vs = fmul <4 x float> %i.vr, %i.vr           ; 4 uses
  %shift2526 = shufflevector <4 x float> %i.vs, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2527 = fadd <4 x float> %i.vs, %shift2526
  %shift2529 = shufflevector <4 x float> %i.vs, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2530 = fadd <4 x float> %foldExtExtBinop2527, %shift2529
  %shift2532 = shufflevector <4 x float> %i.vs, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2533 = fadd <4 x float> %shift2532, %foldExtExtBinop2530
  %i.vt = extractelement <4 x float> %foldExtExtBinop2533, i64 0 ; 2 uses
  %i.vu = fcmp ogt float %i.vt, f0x057A0000
  br i1 %i.vu, label %bb.s, label %b3GetSweepTransform.exit688

bb.s:                                             ; preds = %b3GetSweepTransform.exit731
  %sqrt.i.i.i683 = call float @llvm.sqrt.f32(float %i.vt)
  %i.vv = fdiv float 1.000000e+00, %sqrt.i.i.i683
  %i.vw = insertelement <2 x float> poison, float %i.vv, i64 0
  %i.vx = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vy = fmul <2 x float> %i.vo, %i.vx
  %i.vz = fmul <2 x float> %i.vq, %i.vx
  br label %b3GetSweepTransform.exit688

b3GetSweepTransform.exit688:                      ; preds = %b3GetSweepTransform.exit731, %bb.s
  %.sroa.010.0.i.i.i658 = phi <2 x float> [ %i.vy, %bb.s ], [ zeroinitializer, %b3GetSweepTransform.exit731 ] ; 27 uses
  %.sroa.4.0.i.i.i659 = phi <2 x float> [ %i.vz, %bb.s ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit731 ] ; 15 uses
  %.sroa.3.8.vec.extract.i.i674 = extractelement <2 x float> %.sroa.4.0.i.i.i659, i64 0 ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i675 = extractelement <2 x float> %.sroa.010.0.i.i.i658, i64 1 ; 6 uses
  %.sroa.3.12.vec.extract.i.i679 = extractelement <2 x float> %.sroa.4.0.i.i.i659, i64 1 ; 2 uses
  %i.wa = fmul float %.sroa.6932.0.copyload, %.sroa.011.4.vec.extract.i.i.i675
  %i.wb = fmul float %.sroa.03.4.vec.extract.i.i.i409, %.sroa.3.8.vec.extract.i.i674
  %i.wc = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.010.0.i.i.i658, <2 x i32> <i32 0, i32 2> ; 12 uses
  %i.wd = fmul <2 x float> %.sroa.0929.0.copyload, %i.wc ; 2 uses
  %i.we = fmul <2 x float> %i.ch, %.sroa.010.0.i.i.i658 ; 2 uses
  %i.wf = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wg = insertelement <2 x float> %i.wf, float %i.wa, i64 0
  %i.wh = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wi = insertelement <2 x float> %i.wh, float %i.wb, i64 0
  %i.wj = fsub <2 x float> %i.wg, %i.wi
  %i.wk = fsub <2 x float> %i.wd, %i.we
  %i.wl = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 14 uses
  %i.wm = fmul <2 x float> %.sroa.0929.0.copyload, %i.wl
  %i.wn = fmul <2 x float> %i.cg, %i.wl
  %i.wo = fadd <2 x float> %i.wm, %i.wj           ; 2 uses
  %i.wp = fadd <2 x float> %i.wn, %i.wk           ; 2 uses
  %foldExtExtBinop2535 = fmul <2 x float> %.sroa.4.0.i.i.i659, %i.wo
  %shift2537 = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2538 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2537
  %foldExtExtBinop2540 = fsub <2 x float> %foldExtExtBinop2535, %foldExtExtBinop2538
  %i.wq = extractelement <2 x float> %foldExtExtBinop2540, i64 0
  %i.wr = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.wp
  %i.ws = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.4.0.i.i.i659, <2 x i32> <i32 1, i32 2> ; 10 uses
  %i.wt = fmul <2 x float> %i.ws, %i.wo
  %i.wu = fsub <2 x float> %i.wr, %i.wt
  %i.wv = fmul float %i.wq, 2.000000e+00
  %i.ww = fadd float %.sroa.03.4.vec.extract.i.i.i409, %i.wv
  %i.wx = fmul <2 x float> %i.wu, splat (float 2.000000e+00)
  %i.wy = fadd <2 x float> %i.ch, %i.wx
  %i.wz = fsub float %i.fw, %i.ww
  %i.xa = fsub <2 x float> %i.fz, %i.wy
  %i.xb = fsub float %i.wz, %i.vh                 ; 4 uses
  %i.xc = fsub <2 x float> %i.xa, %i.vk           ; 4 uses
  switch i16 %.sroa.1.0.extract.trunc.i, label %b3MakeSeparationFunction.exit [
    i16 1, label %bb.t
    i16 2, label %bb.u
    i16 3, label %bb.ag
  ]

bb.t:                                             ; preds = %b3GetSweepTransform.exit688
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.u:                                             ; preds = %b3GetSweepTransform.exit688
  %i.xd = icmp eq i32 %.0.i1242.i, 2
  %i.xe = icmp eq i32 %.0.i735.i, 2
  %or.cond.i = select i1 %i.xd, i1 %i.xe, i1 false
  br i1 %or.cond.i, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.xf = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.xg = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.xh = getelementptr inbounds nuw [12 x i8], ptr %i.xf, i64 %i.xg ; 2 uses
  %.sroa.0563.0.copyload.i = load <2 x float>, ptr %i.xh, align 4, !noalias !89 ; 5 uses
  %.sroa.5565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %.sroa.5565.0.copyload.i = load float, ptr %.sroa.5565.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.xi = getelementptr inbounds nuw [12 x i8], ptr %i.xf, i64 %.sroa.5655.0.extract.shift.i ; 2 uses
  %.sroa.0557.0.copyload.i = load <2 x float>, ptr %i.xi, align 4, !noalias !89
  %.sroa.2558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %.sroa.2558.0.copyload.i = load float, ptr %.sroa.2558.0..sroa_idx.i, align 4, !noalias !89
  %i.xj = fsub <2 x float> %.sroa.0557.0.copyload.i, %.sroa.0563.0.copyload.i ; 3 uses
  %i.xk = fsub float %.sroa.2558.0.copyload.i, %.sroa.5565.0.copyload.i ; 3 uses
  %i.xl = fmul <2 x float> %i.xj, %i.xj           ; 2 uses
  %shift2542 = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2543 = fadd <2 x float> %i.xl, %shift2542
  %i.xm = extractelement <2 x float> %foldExtExtBinop2543, i64 0
  %i.xn = fmul float %i.xk, %i.xk
  %i.xo = fadd float %i.xn, %i.xm                 ; 2 uses
  %i.xp = fcmp ogt float %i.xo, f0x057A0000
  br i1 %i.xp, label %bb.w, label %b3Normalize.exit723.i

bb.w:                                             ; preds = %bb.v
  %sqrt.i = call float @llvm.sqrt.f32(float %i.xo)
  %i.xq = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.xr = insertelement <2 x float> poison, float %i.xq, i64 0
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xt = fmul <2 x float> %i.xj, %i.xs
  %i.xu = fmul float %i.xk, %i.xq
  br label %b3Normalize.exit723.i

b3Normalize.exit723.i:                            ; preds = %bb.w, %bb.v
  %.sroa.018.0.i717.i = phi <2 x float> [ %i.xt, %bb.w ], [ zeroinitializer, %bb.v ] ; 10 uses
  %.sroa.5.0.i718.i = phi float [ %i.xu, %bb.w ], [ 0.000000e+00, %bb.v ] ; 6 uses
  %i.xv = shufflevector <2 x float> %.sroa.018.0.i717.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %.sroa.03.0.vec.extract.i.i.i576 = extractelement <2 x float> %.sroa.018.0.i717.i, i64 0
  %foldExtExtBinop2545 = fmul <2 x float> %.sroa.4.0.i.i.i702, %.sroa.018.0.i717.i
  %i.xw = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.5.0.i718.i
  %i.xx = insertelement <2 x float> %i.xv, float %.sroa.5.0.i718.i, i64 1 ; 2 uses
  %i.xy = fmul <2 x float> %i.uj, %i.xx
  %i.xz = insertelement <2 x float> poison, float %i.xw, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> %foldExtExtBinop2545, <2 x i32> <i32 0, i32 2>
  %i.yb = fsub <2 x float> %i.ya, %i.xy           ; 2 uses
  %i.yc = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.xv ; 2 uses
  %shift2547 = shufflevector <2 x float> %i.yc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2548 = fsub <2 x float> %i.yc, %shift2547
  %i.yd = fmul <2 x float> %i.us, %.sroa.018.0.i717.i
  %i.ye = insertelement <2 x float> %i.xv, float %.sroa.5.0.i718.i, i64 0 ; 3 uses
  %i.yf = fmul <2 x float> %i.us, %i.ye
  %i.yg = fadd <2 x float> %i.yd, %i.yb           ; 2 uses
  %i.yh = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yi = shufflevector <2 x float> %foldExtExtBinop2548, <2 x float> %i.yh, <2 x i32> <i32 0, i32 3>
  %i.yj = fadd <2 x float> %i.yf, %i.yi           ; 2 uses
  %i.yk = fmul <2 x float> %i.uj, %i.yg
  %i.yl = extractelement <2 x float> %i.yj, i64 0
  %i.ym = fmul float %.sroa.011.4.vec.extract.i.i.i718, %i.yl
  %i.yn = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.yj
  %shift2550 = shufflevector <2 x float> %i.yg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2551 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2550
  %i.yo = extractelement <2 x float> %foldExtExtBinop2551, i64 0
  %i.yp = fsub <2 x float> %i.yk, %i.yn
  %i.yq = fsub float %i.ym, %i.yo
  %i.yr = fmul float %i.yq, 2.000000e+00
  %i.ys = fadd float %.sroa.03.0.vec.extract.i.i.i576, %i.yr ; 2 uses
  %i.yt = fmul <2 x float> %i.yp, splat (float 2.000000e+00)
  %i.yu = fadd <2 x float> %i.xx, %i.yt           ; 3 uses
  %i.yv = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %10 = zext nneg i32 %i.tm to i64
  %i.yw = getelementptr inbounds nuw [12 x i8], ptr %i.yv, i64 %10 ; 2 uses
  %.sroa.0532.0.copyload.i = load <2 x float>, ptr %i.yw, align 4, !noalias !89 ; 5 uses
  %.sroa.5534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %.sroa.5534.0.copyload.i = load float, ptr %.sroa.5534.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %11 = zext nneg i32 %9 to i64
  %i.yx = getelementptr inbounds nuw [12 x i8], ptr %i.yv, i64 %11 ; 2 uses
  %.sroa.0526.0.copyload.i = load <2 x float>, ptr %i.yx, align 4, !noalias !89
  %.sroa.2527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %.sroa.2527.0.copyload.i = load float, ptr %.sroa.2527.0..sroa_idx.i, align 4, !noalias !89
  %i.yy = fsub <2 x float> %.sroa.0526.0.copyload.i, %.sroa.0532.0.copyload.i ; 3 uses
  %i.yz = fsub float %.sroa.2527.0.copyload.i, %.sroa.5534.0.copyload.i ; 3 uses
  %i.za = fmul <2 x float> %i.yy, %i.yy           ; 2 uses
  %shift2553 = shufflevector <2 x float> %i.za, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2554 = fadd <2 x float> %i.za, %shift2553
  %i.zb = extractelement <2 x float> %foldExtExtBinop2554, i64 0
  %i.zc = fmul float %i.yz, %i.yz
  %i.zd = fadd float %i.zc, %i.zb                 ; 2 uses
  %i.ze = fcmp ogt float %i.zd, f0x057A0000
  br i1 %i.ze, label %bb.x, label %b3Normalize.exit714.i

bb.x:                                             ; preds = %b3Normalize.exit723.i
  %sqrt1249.i = call float @llvm.sqrt.f32(float %i.zd)
  %i.zf = fdiv float 1.000000e+00, %sqrt1249.i    ; 2 uses
  %i.zg = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.zh = shufflevector <2 x float> %i.zg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zi = fmul <2 x float> %i.yy, %i.zh
  %i.zj = fmul float %i.yz, %i.zf
  br label %b3Normalize.exit714.i

b3Normalize.exit714.i:                            ; preds = %bb.x, %b3Normalize.exit723.i
  %.sroa.018.0.i708.i = phi <2 x float> [ %i.zi, %bb.x ], [ zeroinitializer, %b3Normalize.exit723.i ] ; 6 uses
  %.sroa.5.0.i709.i = phi float [ %i.zj, %bb.x ], [ 0.000000e+00, %b3Normalize.exit723.i ] ; 6 uses
  %i.zk = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.5.0.i709.i
  %shift2556 = shufflevector <2 x float> %.sroa.018.0.i708.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2557 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2556
  %i.zl = extractelement <2 x float> %foldExtExtBinop2557, i64 0
  %i.zm = fmul <2 x float> %i.wc, %.sroa.018.0.i708.i
  %i.zn = shufflevector <2 x float> %.sroa.018.0.i708.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zo = insertelement <2 x float> %i.zn, float %.sroa.5.0.i709.i, i64 0 ; 2 uses
  %i.zp = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.zo
  %i.zq = fsub float %i.zk, %i.zl
  %i.zr = fsub <2 x float> %i.zm, %i.zp           ; 2 uses
  %i.zs = fmul <2 x float> %i.wl, %.sroa.018.0.i708.i ; 2 uses
  %i.zt = fmul float %.sroa.3.12.vec.extract.i.i679, %.sroa.5.0.i709.i
  %i.zu = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.zv = insertelement <2 x float> %i.zu, float %i.zq, i64 0
  %i.zw = fadd <2 x float> %i.zs, %i.zv           ; 2 uses
  %i.zx = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.zy = insertelement <2 x float> %i.zx, float %i.zt, i64 1
  %i.zz = fadd <2 x float> %i.zy, %i.zr           ; 2 uses
  %i.aaa = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.zz
  %i.aab = fmul <2 x float> %i.wc, %i.zw
  %i.aac = fmul <2 x float> %i.ws, %i.zw          ; 2 uses
  %shift2559 = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2560 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2559
  %i.aad = fsub <2 x float> %i.aaa, %i.aac
  %i.aae = shufflevector <2 x float> %i.aac, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aaf = shufflevector <2 x float> %foldExtExtBinop2560, <2 x float> %i.aae, <2 x i32> <i32 0, i32 3>
  %i.aag = fsub <2 x float> %i.aab, %i.aaf
  %i.aah = fmul <2 x float> %i.aad, splat (float 2.000000e+00)
  %i.aai = fmul <2 x float> %i.aag, splat (float 2.000000e+00)
  %i.aaj = fadd <2 x float> %i.zo, %i.aah         ; 2 uses
  %i.aak = insertelement <2 x float> %i.zn, float %.sroa.5.0.i709.i, i64 1
  %i.aal = fadd <2 x float> %i.aak, %i.aai        ; 2 uses
  %i.aam = fmul <2 x float> %i.yu, %i.aaj
  %i.aan = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aao = insertelement <2 x float> %i.aan, float %i.ys, i64 1
  %i.aap = fmul <2 x float> %i.aao, %i.aal
  %i.aaq = fsub <2 x float> %i.aam, %i.aap        ; 6 uses
  %i.aar = extractelement <2 x float> %i.aal, i64 0
  %i.aas = fmul float %i.ys, %i.aar
  %shift2562 = shufflevector <2 x float> %i.aaj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2563 = fmul <2 x float> %i.yu, %shift2562
  %i.aat = extractelement <2 x float> %foldExtExtBinop2563, i64 0
  %i.aau = fsub float %i.aas, %i.aat              ; 5 uses
  %i.aav = fmul <2 x float> %i.aaq, %i.aaq        ; 2 uses
  %shift2565 = shufflevector <2 x float> %i.aav, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2566 = fadd <2 x float> %i.aav, %shift2565
  %i.aaw = extractelement <2 x float> %foldExtExtBinop2566, i64 0
  %i.aax = fmul float %i.aau, %i.aau
  %i.aay = fadd float %i.aax, %i.aaw
  %i.aaz = fcmp olt float %i.aay, f0x3B23D70B
  br i1 %i.aaz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %b3Normalize.exit714.i
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.z:                                             ; preds = %b3Normalize.exit714.i
  %i.aba = shufflevector <2 x float> %.sroa.0532.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abb = insertelement <2 x float> %i.aba, float %.sroa.5534.0.copyload.i, i64 0 ; 3 uses
  %i.abc = fmul <2 x float> %i.ws, %i.abb
  %i.abd = insertelement <2 x float> %i.aba, float %.sroa.5534.0.copyload.i, i64 1 ; 2 uses
  %i.abe = fmul <2 x float> %i.wc, %i.abd
  %i.abf = fmul <2 x float> %i.wc, %.sroa.0532.0.copyload.i
  %i.abg = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.abb
  %i.abh = fmul <2 x float> %i.wl, %.sroa.0532.0.copyload.i
  %i.abi = fmul <2 x float> %i.wl, %i.abd
  %i.abj = shufflevector <2 x float> %.sroa.0563.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abk = insertelement <2 x float> %i.abj, float %.sroa.5565.0.copyload.i, i64 0 ; 3 uses
  %i.abl = fmul <2 x float> %i.uz, %i.abk
  %i.abm = insertelement <2 x float> %i.abj, float %.sroa.5565.0.copyload.i, i64 1 ; 2 uses
  %i.abn = fmul <2 x float> %i.uj, %i.abm
  %i.abo = fmul <2 x float> %i.uj, %.sroa.0563.0.copyload.i
  %i.abp = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.abk
  %i.abq = fmul <2 x float> %i.us, %.sroa.0563.0.copyload.i
  %i.abr = fmul <2 x float> %i.us, %i.abm
  %i.abs = extractelement <2 x float> %i.aaq, i64 1
  %i.abt = fsub <2 x float> %i.abc, %i.abe
  %i.abu = fsub <2 x float> %i.abf, %i.abg
  %i.abv = fadd <2 x float> %i.abh, %i.abt        ; 2 uses
  %i.abw = fadd <2 x float> %i.abi, %i.abu        ; 2 uses
  %i.abx = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.abw
  %i.aby = fmul <2 x float> %i.ws, %i.abv
  %i.abz = fsub <2 x float> %i.abx, %i.aby
  %i.aca = fmul <2 x float> %i.abz, splat (float 2.000000e+00)
  %i.acb = fadd <2 x float> %i.abb, %i.aca
  %i.acc = fsub <2 x float> %i.abl, %i.abn
  %i.acd = fsub <2 x float> %i.abo, %i.abp
  %i.ace = fadd <2 x float> %i.abq, %i.acc        ; 2 uses
  %i.acf = fadd <2 x float> %i.abr, %i.acd        ; 2 uses
  %i.acg = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.acf
  %i.ach = fmul <2 x float> %i.uz, %i.ace
  %i.aci = fsub <2 x float> %i.acg, %i.ach
  %i.acj = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 0, i32 2>
  %i.ack = shufflevector <2 x float> %i.abv, <2 x float> %i.ace, <2 x i32> <i32 0, i32 2>
  %i.acl = fmul <2 x float> %i.acj, %i.ack
  %i.acm = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2>
  %i.acn = shufflevector <2 x float> %i.abw, <2 x float> %i.acf, <2 x i32> <i32 1, i32 3>
  %i.aco = fmul <2 x float> %i.acm, %i.acn
  %i.acp = fsub <2 x float> %i.acl, %i.aco
  %i.acq = fmul <2 x float> %i.acp, splat (float 2.000000e+00)
  %i.acr = shufflevector <2 x float> %.sroa.0532.0.copyload.i, <2 x float> %.sroa.0563.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.acs = fadd <2 x float> %i.acr, %i.acq        ; 2 uses
  %i.act = fmul <2 x float> %i.aci, splat (float 2.000000e+00)
  %i.acu = fadd <2 x float> %i.abk, %i.act
  %shift2568 = shufflevector <2 x float> %i.acs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2569 = fsub <2 x float> %i.acs, %shift2568
  %i.acv = extractelement <2 x float> %foldExtExtBinop2569, i64 0
  %i.acw = fsub <2 x float> %i.acb, %i.acu
  %i.acx = fadd float %i.xb, %i.acv
  %i.acy = fadd <2 x float> %i.xc, %i.acw
  %i.acz = fmul float %i.acx, %i.abs
  %i.ada = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.adb = insertelement <2 x float> %i.ada, float %i.aau, i64 0
  %i.adc = fmul <2 x float> %i.acy, %i.adb        ; 2 uses
  %i.add = extractelement <2 x float> %i.adc, i64 1
  %i.ade = fadd float %i.add, %i.acz
  %i.adf = extractelement <2 x float> %i.adc, i64 0
  %i.adg = fadd float %i.adf, %i.ade
  %i.adh = fcmp olt float %i.adg, 0.000000e+00
  br i1 %i.adh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.adi = fneg <2 x float> %i.aaq
  %i.adj = fneg float %i.aau
  %i.adk = fneg <2 x float> %.sroa.018.0.i708.i
  %i.adl = fneg float %.sroa.5.0.i709.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0498.0.i = phi <2 x float> [ %i.adi, %bb.aa ], [ %i.aaq, %bb.z ] ; 5 uses
  %.sroa.9503.0.i = phi float [ %i.adj, %bb.aa ], [ %i.aau, %bb.z ] ; 4 uses
  %.sroa.10.0.i = phi float [ %i.adl, %bb.aa ], [ %.sroa.5.0.i709.i, %bb.z ] ; 5 uses
  %i.adm = phi <2 x float> [ %i.adk, %bb.aa ], [ %.sroa.018.0.i708.i, %bb.z ] ; 5 uses
  %i.adn = shufflevector <2 x float> %.sroa.018.0.i717.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ado = insertelement <2 x float> %i.adn, float %.sroa.5.0.i718.i, i64 1 ; 2 uses
  %i.adp = fmul <2 x float> %.sroa.27.0.copyload, %i.ado
  %i.adq = fmul <2 x float> %i.bx, %.sroa.018.0.i717.i
  %i.adr = fmul <2 x float> %i.bz, %.sroa.018.0.i717.i
  %i.ads = fmul <2 x float> %.sroa.27.0.copyload, %i.ye
  %i.adt = fmul <2 x float> %i.by, %i.ye
  %i.adu = fmul <2 x float> %i.by, %i.ado
  %i.adv = shufflevector <2 x float> %i.adm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.adw = fsub <2 x float> %i.adp, %i.adq
  %i.adx = fsub <2 x float> %i.adr, %i.ads
  %i.ady = fadd <2 x float> %i.adt, %i.adw        ; 2 uses
  %i.adz = fadd <2 x float> %i.adu, %i.adx        ; 2 uses
  %i.aea = fmul <2 x float> %i.bx, %i.ady
  %i.aeb = fmul <2 x float> %i.bz, %i.adz
  %i.aec = fsub <2 x float> %i.aea, %i.aeb
  %i.aed = fmul <2 x float> %i.aec, splat (float 2.000000e+00)
  %i.aee = fadd <2 x float> %.sroa.018.0.i717.i, %i.aed ; 3 uses
  %i.aef = insertelement <2 x float> %i.adm, float %.sroa.10.0.i, i64 0 ; 2 uses
  %i.aeg = fmul <2 x float> %i.an, %i.aef
  %i.aeh = fmul <2 x float> %i.cc, %i.adv
  %i.aei = fmul <2 x float> %i.ca, %i.adv
  %i.aej = insertelement <2 x float> %i.adm, float %.sroa.10.0.i, i64 1 ; 2 uses
  %i.aek = fmul <2 x float> %i.an, %i.aej
  %i.ael = fsub <2 x float> %i.aeg, %i.aei
  %i.aem = fsub <2 x float> %i.aeh, %i.aek
  %i.aen = fmul <2 x float> %i.cb, %i.aej
  %i.aeo = fmul <2 x float> %i.cb, %i.aef
  %i.aep = fadd <2 x float> %i.aen, %i.ael        ; 2 uses
  %i.aeq = fadd <2 x float> %i.aem, %i.aeo        ; 2 uses
  %i.aer = fmul <2 x float> %i.ca, %i.aep
  %i.aes = fmul <2 x float> %i.cc, %i.aeq
  %i.aet = fsub <2 x float> %i.aer, %i.aes
  %i.aeu = fmul <2 x float> %i.aet, splat (float 2.000000e+00)
  %i.aev = fadd <2 x float> %i.adv, %i.aeu        ; 3 uses
  %i.aew = shufflevector <2 x float> %i.aeq, <2 x float> %i.adz, <2 x i32> <i32 1, i32 2>
  %i.aex = fmul <2 x float> %i.cd, %i.aew
  %i.aey = shufflevector <2 x float> %i.aep, <2 x float> %i.ady, <2 x i32> <i32 0, i32 3>
  %i.aez = fmul <2 x float> %i.ce, %i.aey
  %i.afa = fsub <2 x float> %i.aex, %i.aez
  %i.afb = fmul <2 x float> %i.afa, splat (float 2.000000e+00)
  %i.afc = insertelement <2 x float> poison, float %.sroa.10.0.i, i64 0
  %i.afd = insertelement <2 x float> %i.afc, float %.sroa.5.0.i718.i, i64 1
  %i.afe = fadd <2 x float> %i.afd, %i.afb        ; 3 uses
  %i.aff = shufflevector <2 x float> %i.aee, <2 x float> %i.aev, <2 x i32> <i32 1, i32 2>
  %i.afg = fmul <2 x float> %i.aff, %i.afe        ; 2 uses
  %shift2571 = shufflevector <2 x float> %i.afg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2572 = fsub <2 x float> %i.afg, %shift2571
  %foldExtExtBinop2574 = fmul <2 x float> %i.afe, %i.aev
  %foldExtExtBinop2576 = fmul <2 x float> %i.aee, %i.afe
  %shift2578 = shufflevector <2 x float> %foldExtExtBinop2574, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2579 = fsub <2 x float> %shift2578, %foldExtExtBinop2576
  %i.afh = fmul <2 x float> %i.aee, %i.aev        ; 2 uses
  %shift2581 = shufflevector <2 x float> %i.afh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2582 = fsub <2 x float> %i.afh, %shift2581
  %i.afi = extractelement <2 x float> %foldExtExtBinop2582, i64 0
  %foldExtExtBinop2584 = fmul <2 x float> %.sroa.0498.0.i, %foldExtExtBinop2572
  %shift2586 = shufflevector <2 x float> %.sroa.0498.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2587 = fmul <2 x float> %shift2586, %foldExtExtBinop2579
  %foldExtExtBinop2589 = fadd <2 x float> %foldExtExtBinop2584, %foldExtExtBinop2587
  %i.afj = extractelement <2 x float> %foldExtExtBinop2589, i64 0
  %i.afk = fmul float %.sroa.9503.0.i, %i.afi
  %i.afl = fadd float %i.afk, %i.afj
  %i.afm = fcmp olt float %i.afl, 0.000000e+00
  br i1 %i.afm, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  %i.afn = fmul <2 x float> %.sroa.0498.0.i, %.sroa.0498.0.i ; 2 uses
  %shift2591 = shufflevector <2 x float> %i.afn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2592 = fadd <2 x float> %i.afn, %shift2591
  %i.afo = extractelement <2 x float> %foldExtExtBinop2592, i64 0
  %i.afp = fmul float %.sroa.9503.0.i, %.sroa.9503.0.i
  %i.afq = fadd float %i.afp, %i.afo              ; 2 uses
  %i.afr = fcmp ogt float %i.afq, f0x057A0000
  br i1 %i.afr, label %bb.ad, label %b3Normalize.exit705.i

bb.ad:                                            ; preds = %bb.ac
  %sqrt1250.i = call float @llvm.sqrt.f32(float %i.afq)
  %i.afs = fdiv float 1.000000e+00, %sqrt1250.i   ; 2 uses
  %i.aft = insertelement <2 x float> poison, float %i.afs, i64 0
  %i.afu = shufflevector <2 x float> %i.aft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afv = fmul <2 x float> %.sroa.0498.0.i, %i.afu
  %i.afw = fmul float %.sroa.9503.0.i, %i.afs
  br label %b3Normalize.exit705.i

b3Normalize.exit705.i:                            ; preds = %bb.ad, %bb.ac
  %.sroa.018.0.i699.i = phi <2 x float> [ %i.afv, %bb.ad ], [ zeroinitializer, %bb.ac ] ; 2 uses
  %.sroa.5.0.i700.i = phi float [ %i.afw, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  store <2 x float> %.sroa.018.0.i699.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.5.0.i700.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.ae:                                            ; preds = %bb.ab
  store i32 2, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.018.0.i717.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.5.0.i718.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.adm, ptr %i.bq, align 4, !alias.scope !89
  store float %.sroa.10.0.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.af:                                            ; preds = %bb.u
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.ag:                                            ; preds = %b3GetSweepTransform.exit688
  %i.afx = icmp eq i32 %.0.i1242.i, 3
  br i1 %i.afx, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.afy = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89 ; 3 uses
  %i.afz = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.aga = getelementptr inbounds nuw [12 x i8], ptr %i.afy, i64 %i.afz ; 2 uses
  %.sroa.0412.0.copyload.i = load <2 x float>, ptr %i.aga, align 4, !noalias !89 ; 3 uses
  %.sroa.6415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %.sroa.6415.0.copyload.i = load float, ptr %.sroa.6415.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.agb = getelementptr inbounds nuw [12 x i8], ptr %i.afy, i64 %.sroa.5655.0.extract.shift.i ; 2 uses
  %.sroa.0409.0.copyload.i = load <2 x float>, ptr %i.agb, align 4, !noalias !89 ; 3 uses
  %.sroa.5411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %.sroa.5411.0.copyload.i = load float, ptr %.sroa.5411.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.agc = and i64 %i.tj, 255
  %i.agd = getelementptr inbounds nuw [12 x i8], ptr %i.afy, i64 %i.agc ; 2 uses
  %.sroa.0406.0.copyload.i = load <2 x float>, ptr %i.agd, align 4, !noalias !89 ; 3 uses
  %.sroa.5408.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %.sroa.5408.0.copyload.i = load float, ptr %.sroa.5408.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.age = shufflevector <2 x float> %.sroa.0406.0.copyload.i, <2 x float> %.sroa.0409.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.agf = fsub <2 x float> %i.age, %.sroa.0412.0.copyload.i ; 3 uses
  %i.agg = shufflevector <2 x float> %.sroa.0409.0.copyload.i, <2 x float> %.sroa.0406.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.agh = fsub <2 x float> %i.agg, %.sroa.0412.0.copyload.i ; 3 uses
  %i.agi = insertelement <2 x float> poison, float %.sroa.5411.0.copyload.i, i64 0
  %i.agj = insertelement <2 x float> %i.agi, float %.sroa.5408.0.copyload.i, i64 1
  %i.agk = insertelement <2 x float> poison, float %.sroa.6415.0.copyload.i, i64 0
  %i.agl = shufflevector <2 x float> %i.agk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agm = fsub <2 x float> %i.agj, %i.agl        ; 2 uses
  %i.agn = fmul <2 x float> %i.agm, %i.agf
  %i.ago = shufflevector <2 x float> %i.agm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agp = fmul <2 x float> %i.agh, %i.ago
  %i.agq = fsub <2 x float> %i.agn, %i.agp        ; 3 uses
  %shift2594 = shufflevector <2 x float> %i.agh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2595 = fmul <2 x float> %i.agh, %shift2594
  %shift2597 = shufflevector <2 x float> %i.agf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2598 = fmul <2 x float> %shift2597, %i.agf
  %foldExtExtBinop2600 = fsub <2 x float> %foldExtExtBinop2595, %foldExtExtBinop2598 ; 3 uses
  %i.agr = fmul <2 x float> %i.agq, %i.agq        ; 2 uses
  %shift2602 = shufflevector <2 x float> %i.agr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2603 = fadd <2 x float> %shift2602, %i.agr
  %foldExtExtBinop2605 = fmul <2 x float> %foldExtExtBinop2600, %foldExtExtBinop2600
  %foldExtExtBinop2607 = fadd <2 x float> %foldExtExtBinop2605, %foldExtExtBinop2603
  %i.ags = extractelement <2 x float> %foldExtExtBinop2607, i64 0 ; 2 uses
  %i.agt = fcmp ogt float %i.ags, f0x057A0000
  br i1 %i.agt, label %bb.ai, label %b3Normalize.exit696.i

bb.ai:                                            ; preds = %bb.ah
  %i.agu = extractelement <2 x float> %foldExtExtBinop2600, i64 0
  %sqrt1251.i = call float @llvm.sqrt.f32(float %i.ags)
  %i.agv = fdiv float 1.000000e+00, %sqrt1251.i   ; 2 uses
  %i.agw = insertelement <2 x float> poison, float %i.agv, i64 0
  %i.agx = shufflevector <2 x float> %i.agq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agy = shufflevector <2 x float> %i.agw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agz = fmul <2 x float> %i.agx, %i.agy
  %i.aha = fmul float %i.agu, %i.agv
  br label %b3Normalize.exit696.i

b3Normalize.exit696.i:                            ; preds = %bb.ai, %bb.ah
  %.sroa.018.0.i690.i = phi <2 x float> [ %i.agz, %bb.ai ], [ zeroinitializer, %bb.ah ] ; 6 uses
  %.sroa.5.0.i691.i = phi float [ %i.aha, %bb.ai ], [ 0.000000e+00, %bb.ah ] ; 5 uses
  %.sroa.03.4.vec.extract.i.i869.i = extractelement <2 x float> %.sroa.018.0.i690.i, i64 1 ; 2 uses
  %i.ahb = fadd <2 x float> %.sroa.0412.0.copyload.i, %.sroa.0409.0.copyload.i
  %i.ahc = fadd float %.sroa.6415.0.copyload.i, %.sroa.5411.0.copyload.i
  %i.ahd = fadd float %i.ahc, %.sroa.5408.0.copyload.i
  %i.ahe = fadd <2 x float> %i.ahb, %.sroa.0406.0.copyload.i
  %i.ahf = fmul <2 x float> %i.ahe, splat (float f0x3EAAAAAB) ; 7 uses
  %i.ahg = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89
  %12 = zext nneg i32 %i.tm to i64
  %i.ahh = getelementptr inbounds nuw [12 x i8], ptr %i.ahg, i64 %12 ; 2 uses
  %.sroa.0328.0.copyload.i = load <2 x float>, ptr %i.ahh, align 4, !noalias !89 ; 5 uses
  %.sroa.4329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  %.sroa.4329.0.copyload.i = load float, ptr %.sroa.4329.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.ahi = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.5.0.i691.i
  %i.ahj = fmul float %.sroa.3.8.vec.extract.i.i717, %.sroa.03.4.vec.extract.i.i869.i
  %i.ahk = fmul <2 x float> %i.uj, %.sroa.018.0.i690.i ; 2 uses
  %i.ahl = shufflevector <2 x float> %.sroa.018.0.i690.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ahm = insertelement <2 x float> %i.ahl, float %.sroa.5.0.i691.i, i64 0 ; 2 uses
  %i.ahn = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.ahm ; 2 uses
  %i.aho = shufflevector <2 x float> %i.ahk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ahp = insertelement <2 x float> %i.aho, float %i.ahi, i64 0
  %i.ahq = shufflevector <2 x float> %i.ahn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ahr = insertelement <2 x float> %i.ahq, float %i.ahj, i64 0
  %i.ahs = fsub <2 x float> %i.ahp, %i.ahr
  %i.aht = fsub <2 x float> %i.ahk, %i.ahn
  %i.ahu = fmul <2 x float> %i.us, %.sroa.018.0.i690.i
  %i.ahv = insertelement <2 x float> %i.ahl, float %.sroa.5.0.i691.i, i64 1
  %i.ahw = fmul <2 x float> %i.us, %i.ahv
  %i.ahx = fadd <2 x float> %i.ahu, %i.ahs        ; 2 uses
  %i.ahy = fadd <2 x float> %i.ahw, %i.aht        ; 2 uses
  %foldExtExtBinop2609 = fmul <2 x float> %.sroa.4.0.i.i.i702, %i.ahx
  %shift2611 = shufflevector <2 x float> %i.ahy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2612 = fmul <2 x float> %.sroa.010.0.i.i.i701, %shift2611
  %foldExtExtBinop2614 = fsub <2 x float> %foldExtExtBinop2609, %foldExtExtBinop2612
  %i.ahz = extractelement <2 x float> %foldExtExtBinop2614, i64 0
  %i.aia = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.ahy
  %i.aib = fmul <2 x float> %i.uz, %i.ahx
  %i.aic = fsub <2 x float> %i.aia, %i.aib
  %i.aid = fmul float %i.ahz, 2.000000e+00
  %i.aie = fadd float %.sroa.03.4.vec.extract.i.i869.i, %i.aid
  %i.aif = fmul <2 x float> %i.aic, splat (float 2.000000e+00)
  %i.aig = fadd <2 x float> %i.ahm, %i.aif
  %i.aih = fmul float %i.ahd, f0x3EAAAAAB         ; 5 uses
  %i.aii = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.4329.0.copyload.i
  %shift2616 = shufflevector <2 x float> %.sroa.0328.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2617 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2616
  %i.aij = fmul <2 x float> %i.wc, %.sroa.0328.0.copyload.i ; 2 uses
  %i.aik = shufflevector <2 x float> %.sroa.0328.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ail = insertelement <2 x float> %i.aik, float %.sroa.4329.0.copyload.i, i64 0 ; 2 uses
  %i.aim = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.ail ; 2 uses
  %i.ain = shufflevector <2 x float> %i.aij, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aio = insertelement <2 x float> %i.ain, float %i.aii, i64 0
  %i.aip = shufflevector <2 x float> %i.aim, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aiq = shufflevector <2 x float> %foldExtExtBinop2617, <2 x float> %i.aip, <2 x i32> <i32 0, i32 3>
  %i.air = fsub <2 x float> %i.aio, %i.aiq
  %i.ais = fsub <2 x float> %i.aij, %i.aim
  %i.ait = fmul <2 x float> %i.wl, %.sroa.0328.0.copyload.i
  %i.aiu = insertelement <2 x float> %i.aik, float %.sroa.4329.0.copyload.i, i64 1
  %i.aiv = fmul <2 x float> %i.wl, %i.aiu
  %i.aiw = fadd <2 x float> %i.ait, %i.air        ; 2 uses
  %i.aix = fadd <2 x float> %i.aiv, %i.ais        ; 2 uses
  %i.aiy = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aix
  %i.aiz = fmul <2 x float> %i.ws, %i.aiw
  %i.aja = fsub <2 x float> %i.aiy, %i.aiz
  %i.ajb = fmul <2 x float> %i.aja, splat (float 2.000000e+00)
  %i.ajc = fadd <2 x float> %i.ail, %i.ajb
  %i.ajd = fmul float %.sroa.011.4.vec.extract.i.i.i718, %i.aih
  %shift2619 = shufflevector <2 x float> %i.ahf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2620 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2619
  %i.aje = fmul <2 x float> %i.uj, %i.ahf         ; 2 uses
  %i.ajf = shufflevector <2 x float> %i.ahf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ajg = insertelement <2 x float> %i.ajf, float %i.aih, i64 0 ; 2 uses
  %i.ajh = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.ajg ; 2 uses
  %i.aji = shufflevector <2 x float> %i.aje, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajj = insertelement <2 x float> %i.aji, float %i.ajd, i64 0
  %i.ajk = shufflevector <2 x float> %i.ajh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajl = shufflevector <2 x float> %foldExtExtBinop2620, <2 x float> %i.ajk, <2 x i32> <i32 0, i32 3>
  %i.ajm = fsub <2 x float> %i.ajj, %i.ajl
  %i.ajn = fsub <2 x float> %i.aje, %i.ajh
  %i.ajo = fmul <2 x float> %i.us, %i.ahf
  %i.ajp = insertelement <2 x float> %i.ajf, float %i.aih, i64 1
  %i.ajq = fmul <2 x float> %i.us, %i.ajp
  %i.ajr = fadd <2 x float> %i.ajo, %i.ajm        ; 2 uses
  %i.ajs = fadd <2 x float> %i.ajq, %i.ajn        ; 2 uses
  %i.ajt = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.ajs
  %i.aju = fmul <2 x float> %i.uz, %i.ajr
  %i.ajv = fsub <2 x float> %i.ajt, %i.aju
  %i.ajw = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 0, i32 2>
  %i.ajx = shufflevector <2 x float> %i.aiw, <2 x float> %i.ajr, <2 x i32> <i32 0, i32 2>
  %i.ajy = fmul <2 x float> %i.ajw, %i.ajx
  %i.ajz = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2>
  %i.aka = shufflevector <2 x float> %i.aix, <2 x float> %i.ajs, <2 x i32> <i32 1, i32 3>
  %i.akb = fmul <2 x float> %i.ajz, %i.aka
  %i.akc = fsub <2 x float> %i.ajy, %i.akb
  %i.akd = fmul <2 x float> %i.akc, splat (float 2.000000e+00)
  %i.ake = shufflevector <2 x float> %.sroa.0328.0.copyload.i, <2 x float> %i.ahf, <2 x i32> <i32 1, i32 3>
  %i.akf = fadd <2 x float> %i.ake, %i.akd        ; 2 uses
  %i.akg = fmul <2 x float> %i.ajv, splat (float 2.000000e+00)
  %i.akh = fadd <2 x float> %i.ajg, %i.akg
  %shift2622 = shufflevector <2 x float> %i.akf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2623 = fsub <2 x float> %i.akf, %shift2622
  %i.aki = extractelement <2 x float> %foldExtExtBinop2623, i64 0
  %i.akj = fsub <2 x float> %i.ajc, %i.akh
  %i.akk = fadd float %i.xb, %i.aki
  %i.akl = fadd <2 x float> %i.xc, %i.akj
  %i.akm = fmul float %i.aie, %i.akk
  %i.akn = fmul <2 x float> %i.aig, %i.akl        ; 2 uses
  %i.ako = extractelement <2 x float> %i.akn, i64 1
  %i.akp = fadd float %i.ako, %i.akm
  %i.akq = extractelement <2 x float> %i.akn, i64 0
  %i.akr = fadd float %i.akq, %i.akp
  %i.aks = fcmp olt float %i.akr, 0.000000e+00    ; 2 uses
  %i.akt = fneg <2 x float> %.sroa.018.0.i690.i
  %i.aku = fneg float %.sroa.5.0.i691.i
  %.sroa.0402.0.i = select i1 %i.aks, <2 x float> %i.akt, <2 x float> %.sroa.018.0.i690.i ; 2 uses
  %.sroa.9405.0.i = select i1 %i.aks, float %i.aku, float %.sroa.5.0.i691.i
  store i32 3, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.0402.0.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.9405.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.ahf, ptr %i.bq, align 4, !alias.scope !89
  store float %i.aih, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.aj:                                            ; preds = %bb.ag
  %i.akv = icmp eq i32 %.0.i735.i, 3
  br i1 %i.akv, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.akw = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89 ; 3 uses
  %13 = zext nneg i32 %i.tm to i64
  %i.akx = getelementptr inbounds nuw [12 x i8], ptr %i.akw, i64 %13 ; 2 uses
  %.sroa.0276.0.copyload.i = load <2 x float>, ptr %i.akx, align 4, !noalias !89 ; 3 uses
  %.sroa.6279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %.sroa.6279.0.copyload.i = load float, ptr %.sroa.6279.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %14 = zext nneg i32 %9 to i64
  %i.aky = getelementptr inbounds nuw [12 x i8], ptr %i.akw, i64 %14 ; 2 uses
  %.sroa.0273.0.copyload.i = load <2 x float>, ptr %i.aky, align 4, !noalias !89 ; 3 uses
  %.sroa.5275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  %.sroa.5275.0.copyload.i = load float, ptr %.sroa.5275.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.akz = and i64 %.sroa.10660.8.extract.shift.i, 255
  %i.ala = getelementptr inbounds nuw [12 x i8], ptr %i.akw, i64 %i.akz ; 2 uses
  %.sroa.0270.0.copyload.i = load <2 x float>, ptr %i.ala, align 4, !noalias !89 ; 3 uses
  %.sroa.5272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %.sroa.5272.0.copyload.i = load float, ptr %.sroa.5272.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.alb = shufflevector <2 x float> %.sroa.0270.0.copyload.i, <2 x float> %.sroa.0273.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.alc = fsub <2 x float> %i.alb, %.sroa.0276.0.copyload.i ; 3 uses
  %i.ald = shufflevector <2 x float> %.sroa.0273.0.copyload.i, <2 x float> %.sroa.0270.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.ale = fsub <2 x float> %i.ald, %.sroa.0276.0.copyload.i ; 3 uses
  %i.alf = insertelement <2 x float> poison, float %.sroa.5275.0.copyload.i, i64 0
  %i.alg = insertelement <2 x float> %i.alf, float %.sroa.5272.0.copyload.i, i64 1
  %i.alh = insertelement <2 x float> poison, float %.sroa.6279.0.copyload.i, i64 0
  %i.ali = shufflevector <2 x float> %i.alh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alj = fsub <2 x float> %i.alg, %i.ali        ; 2 uses
  %i.alk = fmul <2 x float> %i.alj, %i.alc
  %i.all = shufflevector <2 x float> %i.alj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.alm = fmul <2 x float> %i.ale, %i.all
  %i.aln = fsub <2 x float> %i.alk, %i.alm        ; 3 uses
  %shift2625 = shufflevector <2 x float> %i.ale, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2626 = fmul <2 x float> %i.ale, %shift2625
  %shift2628 = shufflevector <2 x float> %i.alc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2629 = fmul <2 x float> %shift2628, %i.alc
  %foldExtExtBinop2631 = fsub <2 x float> %foldExtExtBinop2626, %foldExtExtBinop2629 ; 3 uses
  %i.alo = fmul <2 x float> %i.aln, %i.aln        ; 2 uses
  %shift2633 = shufflevector <2 x float> %i.alo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2634 = fadd <2 x float> %shift2633, %i.alo
  %foldExtExtBinop2636 = fmul <2 x float> %foldExtExtBinop2631, %foldExtExtBinop2631
  %foldExtExtBinop2638 = fadd <2 x float> %foldExtExtBinop2636, %foldExtExtBinop2634
  %i.alp = extractelement <2 x float> %foldExtExtBinop2638, i64 0 ; 2 uses
  %i.alq = fcmp ogt float %i.alp, f0x057A0000
  br i1 %i.alq, label %bb.al, label %b3Normalize.exit687.i

bb.al:                                            ; preds = %bb.ak
  %i.alr = extractelement <2 x float> %foldExtExtBinop2631, i64 0
  %sqrt1252.i = call float @llvm.sqrt.f32(float %i.alp)
  %i.als = fdiv float 1.000000e+00, %sqrt1252.i   ; 2 uses
  %i.alt = insertelement <2 x float> poison, float %i.als, i64 0
  %i.alu = shufflevector <2 x float> %i.aln, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.alv = shufflevector <2 x float> %i.alt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alw = fmul <2 x float> %i.alu, %i.alv
  %i.alx = fmul float %i.alr, %i.als
  br label %b3Normalize.exit687.i

b3Normalize.exit687.i:                            ; preds = %bb.al, %bb.ak
  %.sroa.018.0.i681.i = phi <2 x float> [ %i.alw, %bb.al ], [ zeroinitializer, %bb.ak ] ; 6 uses
  %.sroa.5.0.i682.i = phi float [ %i.alx, %bb.al ], [ 0.000000e+00, %bb.ak ] ; 5 uses
  %.sroa.03.4.vec.extract.i.i967.i = extractelement <2 x float> %.sroa.018.0.i681.i, i64 1 ; 2 uses
  %i.aly = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89
  %i.alz = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.ama = getelementptr inbounds nuw [12 x i8], ptr %i.aly, i64 %i.alz ; 2 uses
  %.sroa.0220.0.copyload.i = load <2 x float>, ptr %i.ama, align 4, !noalias !89 ; 5 uses
  %.sroa.4221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ama, i64 8
  %.sroa.4221.0.copyload.i = load float, ptr %.sroa.4221.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.amb = fadd <2 x float> %.sroa.0276.0.copyload.i, %.sroa.0273.0.copyload.i
  %i.amc = fadd float %.sroa.6279.0.copyload.i, %.sroa.5275.0.copyload.i
  %i.amd = fadd float %i.amc, %.sroa.5272.0.copyload.i
  %i.ame = fadd <2 x float> %i.amb, %.sroa.0270.0.copyload.i
  %i.amf = fmul <2 x float> %i.ame, splat (float f0x3EAAAAAB) ; 7 uses
  %i.amg = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.5.0.i682.i
  %i.amh = fmul float %.sroa.3.8.vec.extract.i.i674, %.sroa.03.4.vec.extract.i.i967.i
  %i.ami = fmul <2 x float> %i.wc, %.sroa.018.0.i681.i ; 2 uses
  %i.amj = shufflevector <2 x float> %.sroa.018.0.i681.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.amk = insertelement <2 x float> %i.amj, float %.sroa.5.0.i682.i, i64 0 ; 2 uses
  %i.aml = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.amk ; 2 uses
  %i.amm = shufflevector <2 x float> %i.ami, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.amn = insertelement <2 x float> %i.amm, float %i.amg, i64 0
  %i.amo = shufflevector <2 x float> %i.aml, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.amp = insertelement <2 x float> %i.amo, float %i.amh, i64 0
  %i.amq = fsub <2 x float> %i.amn, %i.amp
  %i.amr = fsub <2 x float> %i.ami, %i.aml
  %i.ams = fmul <2 x float> %i.wl, %.sroa.018.0.i681.i
  %i.amt = insertelement <2 x float> %i.amj, float %.sroa.5.0.i682.i, i64 1
  %i.amu = fmul <2 x float> %i.wl, %i.amt
  %i.amv = fadd <2 x float> %i.ams, %i.amq        ; 2 uses
  %i.amw = fadd <2 x float> %i.amu, %i.amr        ; 2 uses
  %foldExtExtBinop2640 = fmul <2 x float> %.sroa.4.0.i.i.i659, %i.amv
  %shift2642 = shufflevector <2 x float> %i.amw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2643 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2642
  %foldExtExtBinop2645 = fsub <2 x float> %foldExtExtBinop2640, %foldExtExtBinop2643
  %i.amx = extractelement <2 x float> %foldExtExtBinop2645, i64 0
  %i.amy = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.amw
  %i.amz = fmul <2 x float> %i.ws, %i.amv
  %i.ana = fsub <2 x float> %i.amy, %i.amz
  %i.anb = fmul float %i.amx, 2.000000e+00
  %i.anc = fadd float %.sroa.03.4.vec.extract.i.i967.i, %i.anb
  %i.and = fmul <2 x float> %i.ana, splat (float 2.000000e+00)
  %i.ane = fadd <2 x float> %i.amk, %i.and
  %i.anf = fmul float %i.amd, f0x3EAAAAAB         ; 5 uses
  %i.ang = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.4221.0.copyload.i
  %shift2647 = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2648 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2647
  %i.anh = fmul <2 x float> %i.uj, %.sroa.0220.0.copyload.i ; 2 uses
  %i.ani = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.anj = insertelement <2 x float> %i.ani, float %.sroa.4221.0.copyload.i, i64 0 ; 2 uses
  %i.ank = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.anj ; 2 uses
  %i.anl = shufflevector <2 x float> %i.anh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.anm = insertelement <2 x float> %i.anl, float %i.ang, i64 0
  %i.ann = shufflevector <2 x float> %i.ank, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ano = shufflevector <2 x float> %foldExtExtBinop2648, <2 x float> %i.ann, <2 x i32> <i32 0, i32 3>
  %i.anp = fsub <2 x float> %i.anm, %i.ano
  %i.anq = fsub <2 x float> %i.anh, %i.ank
  %i.anr = fmul <2 x float> %i.us, %.sroa.0220.0.copyload.i
  %i.ans = insertelement <2 x float> %i.ani, float %.sroa.4221.0.copyload.i, i64 1
  %i.ant = fmul <2 x float> %i.us, %i.ans
  %i.anu = fadd <2 x float> %i.anr, %i.anp        ; 2 uses
  %i.anv = fadd <2 x float> %i.ant, %i.anq        ; 2 uses
  %i.anw = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.anv
  %i.anx = fmul <2 x float> %i.uz, %i.anu
  %i.any = fsub <2 x float> %i.anw, %i.anx
  %i.anz = fmul <2 x float> %i.any, splat (float 2.000000e+00)
  %i.aoa = fadd <2 x float> %i.anj, %i.anz
  %i.aob = fmul float %.sroa.011.4.vec.extract.i.i.i675, %i.anf
  %shift2650 = shufflevector <2 x float> %i.amf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2651 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2650
  %i.aoc = fmul <2 x float> %i.wc, %i.amf         ; 2 uses
  %i.aod = shufflevector <2 x float> %i.amf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aoe = insertelement <2 x float> %i.aod, float %i.anf, i64 0 ; 2 uses
  %i.aof = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aoe ; 2 uses
  %i.aog = shufflevector <2 x float> %i.aoc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aoh = insertelement <2 x float> %i.aog, float %i.aob, i64 0
  %i.aoi = shufflevector <2 x float> %i.aof, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aoj = shufflevector <2 x float> %foldExtExtBinop2651, <2 x float> %i.aoi, <2 x i32> <i32 0, i32 3>
  %i.aok = fsub <2 x float> %i.aoh, %i.aoj
  %i.aol = fsub <2 x float> %i.aoc, %i.aof
  %i.aom = fmul <2 x float> %i.wl, %i.amf
  %i.aon = insertelement <2 x float> %i.aod, float %i.anf, i64 1
  %i.aoo = fmul <2 x float> %i.wl, %i.aon
  %i.aop = fadd <2 x float> %i.aom, %i.aok        ; 2 uses
  %i.aoq = fadd <2 x float> %i.aoo, %i.aol        ; 2 uses
  %i.aor = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aoq
  %i.aos = fmul <2 x float> %i.ws, %i.aop
  %i.aot = fsub <2 x float> %i.aor, %i.aos
  %i.aou = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> %.sroa.4.0.i.i.i659, <2 x i32> <i32 0, i32 2>
  %i.aov = shufflevector <2 x float> %i.anu, <2 x float> %i.aop, <2 x i32> <i32 0, i32 2>
  %i.aow = fmul <2 x float> %i.aou, %i.aov
  %i.aox = shufflevector <2 x float> %.sroa.010.0.i.i.i701, <2 x float> %.sroa.010.0.i.i.i658, <2 x i32> <i32 0, i32 2>
  %i.aoy = shufflevector <2 x float> %i.anv, <2 x float> %i.aoq, <2 x i32> <i32 1, i32 3>
  %i.aoz = fmul <2 x float> %i.aox, %i.aoy
  %i.apa = fsub <2 x float> %i.aow, %i.aoz
  %i.apb = fmul <2 x float> %i.apa, splat (float 2.000000e+00)
  %i.apc = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> %i.amf, <2 x i32> <i32 1, i32 3>
  %i.apd = fadd <2 x float> %i.apc, %i.apb        ; 2 uses
  %i.ape = fmul <2 x float> %i.aot, splat (float 2.000000e+00)
  %i.apf = fadd <2 x float> %i.aoe, %i.ape
  %shift2653 = shufflevector <2 x float> %i.apd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2654 = fsub <2 x float> %i.apd, %shift2653
  %i.apg = extractelement <2 x float> %foldExtExtBinop2654, i64 0
  %i.aph = fsub <2 x float> %i.aoa, %i.apf
  %i.api = fsub float %i.apg, %i.xb
  %i.apj = fsub <2 x float> %i.aph, %i.xc
  %i.apk = fmul float %i.anc, %i.api
  %i.apl = fmul <2 x float> %i.ane, %i.apj        ; 2 uses
  %i.apm = extractelement <2 x float> %i.apl, i64 1
  %i.apn = fadd float %i.apm, %i.apk
  %i.apo = extractelement <2 x float> %i.apl, i64 0
  %i.app = fadd float %i.apo, %i.apn
  %i.apq = fcmp olt float %i.app, 0.000000e+00    ; 2 uses
  %i.apr = fneg <2 x float> %.sroa.018.0.i681.i
  %i.aps = fneg float %.sroa.5.0.i682.i
  %.sroa.0266.0.i = select i1 %i.apq, <2 x float> %i.apr, <2 x float> %.sroa.018.0.i681.i ; 2 uses
  %.sroa.9269.0.i = select i1 %i.apq, float %i.aps, float %.sroa.5.0.i682.i
  store i32 4, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.0266.0.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.9269.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.amf, ptr %i.bq, align 4, !alias.scope !89
  store float %i.anf, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.am:                                            ; preds = %bb.aj
  %i.apt = icmp eq i32 %i.tk, %.sroa.5655.0.extract.trunc.i.a
  %spec.select.i = select i1 %i.apt, i32 %i.tl, i32 %.sroa.5655.0.extract.trunc.i.a
  %i.apu = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.apv = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.apw = getelementptr inbounds nuw [12 x i8], ptr %i.apu, i64 %i.apv ; 2 uses
  %.sroa.0141.0.copyload.i = load <2 x float>, ptr %i.apw, align 4, !noalias !89 ; 5 uses
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  %.sroa.5143.0.copyload.i = load float, ptr %.sroa.5143.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.apx = zext nneg i32 %spec.select.i to i64
  %i.apy = getelementptr inbounds nuw [12 x i8], ptr %i.apu, i64 %i.apx ; 2 uses
  %.sroa.0139.0.copyload.i = load <2 x float>, ptr %i.apy, align 4, !noalias !89
  %.sroa.4140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.apy, i64 8
  %.sroa.4140.0.copyload.i = load float, ptr %.sroa.4140.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89
  %i.apz = fsub <2 x float> %.sroa.0139.0.copyload.i, %.sroa.0141.0.copyload.i ; 3 uses
  %i.aqa = fsub float %.sroa.4140.0.copyload.i, %.sroa.5143.0.copyload.i ; 3 uses
  %i.aqb = fmul <2 x float> %i.apz, %i.apz        ; 2 uses
  %shift2656 = shufflevector <2 x float> %i.aqb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2657 = fadd <2 x float> %i.aqb, %shift2656
  %i.aqc = extractelement <2 x float> %foldExtExtBinop2657, i64 0
  %i.aqd = fmul float %i.aqa, %i.aqa
  %i.aqe = fadd float %i.aqd, %i.aqc              ; 2 uses
  %i.aqf = fcmp ogt float %i.aqe, f0x057A0000
  br i1 %i.aqf, label %bb.an, label %b3Normalize.exit678.i

bb.an:                                            ; preds = %bb.am
  %sqrt1253.i = call float @llvm.sqrt.f32(float %i.aqe)
  %i.aqg = fdiv float 1.000000e+00, %sqrt1253.i   ; 2 uses
  %i.aqh = insertelement <2 x float> poison, float %i.aqg, i64 0
  %i.aqi = shufflevector <2 x float> %i.aqh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqj = fmul <2 x float> %i.apz, %i.aqi
  %i.aqk = fmul float %i.aqa, %i.aqg
  br label %b3Normalize.exit678.i

b3Normalize.exit678.i:                            ; preds = %bb.an, %bb.am
  %.sroa.018.0.i672.i = phi <2 x float> [ %i.aqj, %bb.an ], [ zeroinitializer, %bb.am ] ; 10 uses
  %.sroa.5.0.i673.i = phi float [ %i.aqk, %bb.an ], [ 0.000000e+00, %bb.am ] ; 6 uses
  %i.aql = shufflevector <2 x float> %.sroa.018.0.i672.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %.sroa.03.0.vec.extract.i.i1054.i = extractelement <2 x float> %.sroa.018.0.i672.i, i64 0
  %foldExtExtBinop2659 = fmul <2 x float> %.sroa.4.0.i.i.i702, %.sroa.018.0.i672.i
  %i.aqm = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.5.0.i673.i
  %i.aqn = insertelement <2 x float> %i.aql, float %.sroa.5.0.i673.i, i64 1 ; 2 uses
  %i.aqo = fmul <2 x float> %i.uj, %i.aqn
  %i.aqp = insertelement <2 x float> poison, float %i.aqm, i64 0
  %i.aqq = shufflevector <2 x float> %i.aqp, <2 x float> %foldExtExtBinop2659, <2 x i32> <i32 0, i32 2>
  %i.aqr = fsub <2 x float> %i.aqq, %i.aqo        ; 2 uses
  %i.aqs = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.aql ; 2 uses
  %shift2661 = shufflevector <2 x float> %i.aqs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2662 = fsub <2 x float> %i.aqs, %shift2661
  %i.aqt = fmul <2 x float> %i.us, %.sroa.018.0.i672.i
  %i.aqu = insertelement <2 x float> %i.aql, float %.sroa.5.0.i673.i, i64 0 ; 3 uses
  %i.aqv = fmul <2 x float> %i.us, %i.aqu
  %i.aqw = fadd <2 x float> %i.aqt, %i.aqr        ; 2 uses
  %i.aqx = shufflevector <2 x float> %i.aqr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aqy = shufflevector <2 x float> %foldExtExtBinop2662, <2 x float> %i.aqx, <2 x i32> <i32 0, i32 3>
  %i.aqz = fadd <2 x float> %i.aqv, %i.aqy        ; 2 uses
  %i.ara = fmul <2 x float> %i.uj, %i.aqw
  %i.arb = extractelement <2 x float> %i.aqz, i64 0
  %i.arc = fmul float %.sroa.011.4.vec.extract.i.i.i718, %i.arb
  %i.ard = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.aqz
  %shift2664 = shufflevector <2 x float> %i.aqw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2665 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2664
  %i.are = extractelement <2 x float> %foldExtExtBinop2665, i64 0
  %i.arf = fsub <2 x float> %i.ara, %i.ard
  %i.arg = fsub float %i.arc, %i.are
  %i.arh = fmul float %i.arg, 2.000000e+00
  %i.ari = fadd float %.sroa.03.0.vec.extract.i.i1054.i, %i.arh ; 2 uses
  %i.arj = fmul <2 x float> %i.arf, splat (float 2.000000e+00)
  %i.ark = fadd <2 x float> %i.aqn, %i.arj        ; 3 uses
  %i.arl = icmp eq i32 %i.tm, %9
  %spec.select1248.i = select i1 %i.arl, i32 %i.tn, i32 %9
  %i.arm = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %15 = zext nneg i32 %i.tm to i64
  %i.arn = getelementptr inbounds nuw [12 x i8], ptr %i.arm, i64 %15 ; 2 uses
  %.sroa.0111.0.copyload.i = load <2 x float>, ptr %i.arn, align 4, !noalias !89 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.aro = zext nneg i32 %spec.select1248.i to i64
  %i.arp = getelementptr inbounds nuw [12 x i8], ptr %i.arm, i64 %i.aro ; 2 uses
  %.sroa.0109.0.copyload.i = load <2 x float>, ptr %i.arp, align 4, !noalias !89
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.arp, i64 8
  %.sroa.4110.0.copyload.i = load float, ptr %.sroa.4110.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89
  %i.arq = fsub <2 x float> %.sroa.0109.0.copyload.i, %.sroa.0111.0.copyload.i ; 3 uses
  %i.arr = fsub float %.sroa.4110.0.copyload.i, %.sroa.5.0.copyload.i ; 3 uses
  %i.ars = fmul <2 x float> %i.arq, %i.arq        ; 2 uses
  %shift2667 = shufflevector <2 x float> %i.ars, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2668 = fadd <2 x float> %i.ars, %shift2667
  %i.art = extractelement <2 x float> %foldExtExtBinop2668, i64 0
  %i.aru = fmul float %i.arr, %i.arr
  %i.arv = fadd float %i.aru, %i.art              ; 2 uses
  %i.arw = fcmp ogt float %i.arv, f0x057A0000
  br i1 %i.arw, label %bb.ao, label %b3Normalize.exit669.i

bb.ao:                                            ; preds = %b3Normalize.exit678.i
  %sqrt1254.i = call float @llvm.sqrt.f32(float %i.arv)
  %i.arx = fdiv float 1.000000e+00, %sqrt1254.i   ; 2 uses
  %i.ary = insertelement <2 x float> poison, float %i.arx, i64 0
  %i.arz = shufflevector <2 x float> %i.ary, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asa = fmul <2 x float> %i.arq, %i.arz
  %i.asb = fmul float %i.arr, %i.arx
  br label %b3Normalize.exit669.i

b3Normalize.exit669.i:                            ; preds = %bb.ao, %b3Normalize.exit678.i
  %.sroa.018.0.i663.i = phi <2 x float> [ %i.asa, %bb.ao ], [ zeroinitializer, %b3Normalize.exit678.i ] ; 6 uses
  %.sroa.5.0.i664.i = phi float [ %i.asb, %bb.ao ], [ 0.000000e+00, %b3Normalize.exit678.i ] ; 6 uses
  %i.asc = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.5.0.i664.i
  %shift2670 = shufflevector <2 x float> %.sroa.018.0.i663.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2671 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2670
  %i.asd = extractelement <2 x float> %foldExtExtBinop2671, i64 0
  %i.ase = fmul <2 x float> %i.wc, %.sroa.018.0.i663.i
  %i.asf = shufflevector <2 x float> %.sroa.018.0.i663.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.asg = insertelement <2 x float> %i.asf, float %.sroa.5.0.i664.i, i64 0 ; 2 uses
  %i.ash = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.asg
  %i.asi = fsub float %i.asc, %i.asd
  %i.asj = fsub <2 x float> %i.ase, %i.ash        ; 2 uses
  %i.ask = fmul <2 x float> %i.wl, %.sroa.018.0.i663.i ; 2 uses
  %i.asl = fmul float %.sroa.3.12.vec.extract.i.i679, %.sroa.5.0.i664.i
  %i.asm = shufflevector <2 x float> %i.asj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.asn = insertelement <2 x float> %i.asm, float %i.asi, i64 0
  %i.aso = fadd <2 x float> %i.ask, %i.asn        ; 2 uses
  %i.asp = shufflevector <2 x float> %i.ask, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.asq = insertelement <2 x float> %i.asp, float %i.asl, i64 1
  %i.asr = fadd <2 x float> %i.asq, %i.asj        ; 2 uses
  %i.ass = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.asr
  %i.ast = fmul <2 x float> %i.wc, %i.aso
  %i.asu = fmul <2 x float> %i.ws, %i.aso         ; 2 uses
  %shift2673 = shufflevector <2 x float> %i.asr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2674 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2673
  %i.asv = fsub <2 x float> %i.ass, %i.asu
  %i.asw = shufflevector <2 x float> %i.asu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.asx = shufflevector <2 x float> %foldExtExtBinop2674, <2 x float> %i.asw, <2 x i32> <i32 0, i32 3>
  %i.asy = fsub <2 x float> %i.ast, %i.asx
  %i.asz = fmul <2 x float> %i.asv, splat (float 2.000000e+00)
  %i.ata = fmul <2 x float> %i.asy, splat (float 2.000000e+00)
  %i.atb = fadd <2 x float> %i.asg, %i.asz        ; 2 uses
  %i.atc = insertelement <2 x float> %i.asf, float %.sroa.5.0.i664.i, i64 1
  %i.atd = fadd <2 x float> %i.atc, %i.ata        ; 2 uses
  %i.ate = fmul <2 x float> %i.ark, %i.atb
  %i.atf = shufflevector <2 x float> %i.ark, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.atg = insertelement <2 x float> %i.atf, float %i.ari, i64 1
  %i.ath = fmul <2 x float> %i.atg, %i.atd
  %i.ati = fsub <2 x float> %i.ate, %i.ath        ; 6 uses
  %i.atj = extractelement <2 x float> %i.atd, i64 0
  %i.atk = fmul float %i.ari, %i.atj
  %shift2676 = shufflevector <2 x float> %i.atb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2677 = fmul <2 x float> %i.ark, %shift2676
  %i.atl = extractelement <2 x float> %foldExtExtBinop2677, i64 0
  %i.atm = fsub float %i.atk, %i.atl              ; 5 uses
  %i.atn = fmul <2 x float> %i.ati, %i.ati        ; 2 uses
  %shift2679 = shufflevector <2 x float> %i.atn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2680 = fadd <2 x float> %i.atn, %shift2679
  %i.ato = extractelement <2 x float> %foldExtExtBinop2680, i64 0
  %i.atp = fmul float %i.atm, %i.atm
  %i.atq = fadd float %i.atp, %i.ato
  %i.atr = fcmp olt float %i.atq, 2.500000e-05
  br i1 %i.atr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %b3Normalize.exit669.i
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.aq:                                            ; preds = %b3Normalize.exit669.i
  %i.ats = shufflevector <2 x float> %.sroa.0111.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.att = insertelement <2 x float> %i.ats, float %.sroa.5.0.copyload.i, i64 0 ; 3 uses
  %i.atu = fmul <2 x float> %i.ws, %i.att
  %i.atv = insertelement <2 x float> %i.ats, float %.sroa.5.0.copyload.i, i64 1 ; 2 uses
  %i.atw = fmul <2 x float> %i.wc, %i.atv
  %i.atx = fmul <2 x float> %i.wc, %.sroa.0111.0.copyload.i
  %i.aty = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.att
  %i.atz = fmul <2 x float> %i.wl, %.sroa.0111.0.copyload.i
  %i.aua = fmul <2 x float> %i.wl, %i.atv
  %i.aub = shufflevector <2 x float> %.sroa.0141.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.auc = insertelement <2 x float> %i.aub, float %.sroa.5143.0.copyload.i, i64 0 ; 3 uses
  %i.aud = fmul <2 x float> %i.uz, %i.auc
  %i.aue = insertelement <2 x float> %i.aub, float %.sroa.5143.0.copyload.i, i64 1 ; 2 uses
  %i.auf = fmul <2 x float> %i.uj, %i.aue
  %i.aug = fmul <2 x float> %i.uj, %.sroa.0141.0.copyload.i
  %i.auh = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.auc
  %i.aui = fmul <2 x float> %i.us, %.sroa.0141.0.copyload.i
  %i.auj = fmul <2 x float> %i.us, %i.aue
  %i.auk = extractelement <2 x float> %i.ati, i64 1
  %i.aul = fsub <2 x float> %i.atu, %i.atw
  %i.aum = fsub <2 x float> %i.atx, %i.aty
  %i.aun = fadd <2 x float> %i.atz, %i.aul        ; 2 uses
  %i.auo = fadd <2 x float> %i.aua, %i.aum        ; 2 uses
  %i.aup = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.auo
  %i.auq = fmul <2 x float> %i.ws, %i.aun
  %i.aur = fsub <2 x float> %i.aup, %i.auq
  %i.aus = fmul <2 x float> %i.aur, splat (float 2.000000e+00)
  %i.aut = fadd <2 x float> %i.att, %i.aus
  %i.auu = fsub <2 x float> %i.aud, %i.auf
  %i.auv = fsub <2 x float> %i.aug, %i.auh
  %i.auw = fadd <2 x float> %i.aui, %i.auu        ; 2 uses
  %i.aux = fadd <2 x float> %i.auj, %i.auv        ; 2 uses
  %i.auy = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.aux
  %i.auz = fmul <2 x float> %i.uz, %i.auw
  %i.ava = fsub <2 x float> %i.auy, %i.auz
  %i.avb = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 0, i32 2>
  %i.avc = shufflevector <2 x float> %i.aun, <2 x float> %i.auw, <2 x i32> <i32 0, i32 2>
  %i.avd = fmul <2 x float> %i.avb, %i.avc
  %i.ave = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2>
  %i.avf = shufflevector <2 x float> %i.auo, <2 x float> %i.aux, <2 x i32> <i32 1, i32 3>
  %i.avg = fmul <2 x float> %i.ave, %i.avf
  %i.avh = fsub <2 x float> %i.avd, %i.avg
  %i.avi = fmul <2 x float> %i.avh, splat (float 2.000000e+00)
  %i.avj = shufflevector <2 x float> %.sroa.0111.0.copyload.i, <2 x float> %.sroa.0141.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.avk = fadd <2 x float> %i.avj, %i.avi        ; 2 uses
  %i.avl = fmul <2 x float> %i.ava, splat (float 2.000000e+00)
  %i.avm = fadd <2 x float> %i.auc, %i.avl
  %shift2682 = shufflevector <2 x float> %i.avk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2683 = fsub <2 x float> %i.avk, %shift2682
  %i.avn = extractelement <2 x float> %foldExtExtBinop2683, i64 0
  %i.avo = fsub <2 x float> %i.aut, %i.avm
  %i.avp = fadd float %i.xb, %i.avn
  %i.avq = fadd <2 x float> %i.xc, %i.avo
  %i.avr = fmul float %i.avp, %i.auk
  %i.avs = shufflevector <2 x float> %i.ati, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.avt = insertelement <2 x float> %i.avs, float %i.atm, i64 0
  %i.avu = fmul <2 x float> %i.avq, %i.avt        ; 2 uses
  %i.avv = extractelement <2 x float> %i.avu, i64 1
  %i.avw = fadd float %i.avv, %i.avr
  %i.avx = extractelement <2 x float> %i.avu, i64 0
  %i.avy = fadd float %i.avx, %i.avw
  %i.avz = fcmp olt float %i.avy, 0.000000e+00
  br i1 %i.avz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.awa = fneg <2 x float> %i.ati
  %i.awb = fneg float %i.atm
  %i.awc = fneg <2 x float> %.sroa.018.0.i663.i
  %i.awd = fneg float %.sroa.5.0.i664.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.8.0.i = phi float [ %i.awd, %bb.ar ], [ %.sroa.5.0.i664.i, %bb.aq ] ; 5 uses
  %.sroa.9.0.i = phi float [ %i.awb, %bb.ar ], [ %i.atm, %bb.aq ] ; 4 uses
  %.sroa.077.0.i = phi <2 x float> [ %i.awa, %bb.ar ], [ %i.ati, %bb.aq ] ; 5 uses
  %i.awe = phi <2 x float> [ %i.awc, %bb.ar ], [ %.sroa.018.0.i663.i, %bb.aq ] ; 5 uses
  %i.awf = shufflevector <2 x float> %.sroa.018.0.i672.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.awg = insertelement <2 x float> %i.awf, float %.sroa.5.0.i673.i, i64 1 ; 2 uses
  %i.awh = fmul <2 x float> %.sroa.27.0.copyload, %i.awg
  %i.awi = fmul <2 x float> %i.bx, %.sroa.018.0.i672.i
  %i.awj = fmul <2 x float> %i.bz, %.sroa.018.0.i672.i
  %i.awk = fmul <2 x float> %.sroa.27.0.copyload, %i.aqu
  %i.awl = fmul <2 x float> %i.by, %i.aqu
  %i.awm = fmul <2 x float> %i.by, %i.awg
  %i.awn = shufflevector <2 x float> %i.awe, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.awo = fsub <2 x float> %i.awh, %i.awi
  %i.awp = fsub <2 x float> %i.awj, %i.awk
  %i.awq = fadd <2 x float> %i.awl, %i.awo        ; 2 uses
  %i.awr = fadd <2 x float> %i.awm, %i.awp        ; 2 uses
  %i.aws = fmul <2 x float> %i.bx, %i.awq
  %i.awt = fmul <2 x float> %i.bz, %i.awr
  %i.awu = fsub <2 x float> %i.aws, %i.awt
  %i.awv = fmul <2 x float> %i.awu, splat (float 2.000000e+00)
  %i.aww = fadd <2 x float> %.sroa.018.0.i672.i, %i.awv ; 3 uses
  %i.awx = insertelement <2 x float> %i.awe, float %.sroa.8.0.i, i64 0 ; 2 uses
  %i.awy = fmul <2 x float> %i.an, %i.awx
  %i.awz = fmul <2 x float> %i.cc, %i.awn
  %i.axa = fmul <2 x float> %i.ca, %i.awn
  %i.axb = insertelement <2 x float> %i.awe, float %.sroa.8.0.i, i64 1 ; 2 uses
  %i.axc = fmul <2 x float> %i.an, %i.axb
  %i.axd = fsub <2 x float> %i.awy, %i.axa
  %i.axe = fsub <2 x float> %i.awz, %i.axc
  %i.axf = fmul <2 x float> %i.cb, %i.axb
  %i.axg = fmul <2 x float> %i.cb, %i.awx
  %i.axh = fadd <2 x float> %i.axf, %i.axd        ; 2 uses
  %i.axi = fadd <2 x float> %i.axe, %i.axg        ; 2 uses
  %i.axj = fmul <2 x float> %i.ca, %i.axh
  %i.axk = fmul <2 x float> %i.cc, %i.axi
  %i.axl = fsub <2 x float> %i.axj, %i.axk
  %i.axm = fmul <2 x float> %i.axl, splat (float 2.000000e+00)
end_hunk_0
