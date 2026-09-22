Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance?download=true
inline.NumInlined: 318
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3TimeOfImpact:bb.a
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
  %.sroa.5655.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.5655.0.extract.shift.i to i32 ; 5 uses
  %.sroa.6656.8.extract.trunc.i = trunc i64 %i.tj to i32 ; 3 uses
  %i.tk = lshr i32 %.sroa.6656.8.extract.trunc.i, 16
  %i.tl = lshr i32 %.sroa.6656.8.extract.trunc.i, 24 ; 7 uses
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
  %i.tm = and i32 %.sroa.4654.0.extract.trunc.i, 255 ; 4 uses
  %i.tn = and i32 %.sroa.6656.8.extract.trunc.i, 255 ; 3 uses
  %i.to = and i32 %i.tk, 255                      ; 8 uses
  %i.tp = and i32 %.sroa.10660.8.extract.trunc.i, 255 ; 3 uses
  switch i16 %.sroa.1.0.extract.trunc.i, label %b3UniqueCount.exit.i [
    i16 1, label %b3UniqueCount.exit737.i
    i16 2, label %b3UniqueCount.exit.thread1245.i
    i16 3, label %bb.k
  ]

b3UniqueCount.exit.thread1245.i:                  ; preds = %bb.j
  %.not23.i.i = icmp eq i32 %i.tm, %.sroa.5655.0.extract.trunc.i
  %i.tq = select i1 %.not23.i.i, i32 1, i32 2
  %.not23.i736.i = icmp eq i32 %i.to, %i.tl
  %i.tr = select i1 %.not23.i736.i, i32 1, i32 2
  br label %b3UniqueCount.exit737.i

bb.k:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %i.tm, %.sroa.5655.0.extract.trunc.i
  %i.ts = icmp eq i32 %i.tm, %i.tn                ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not22.i.i = icmp eq i32 %i.tn, %.sroa.5655.0.extract.trunc.i
  %or.cond.i.i = or i1 %i.ts, %.not22.i.i
  br i1 %or.cond.i.i, label %bb.n, label %b3UniqueCount.exit.thread.i

bb.m:                                             ; preds = %bb.k
  br i1 %i.ts, label %b3UniqueCount.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %b3UniqueCount.exit.thread.i

b3UniqueCount.exit.thread.i:                      ; preds = %bb.n, %bb.m, %bb.l
  %.0.i1241.i = phi i32 [ 2, %bb.n ], [ 1, %bb.m ], [ 3, %bb.l ] ; 3 uses
  %.not.i732.i = icmp eq i32 %i.to, %i.tl
  %i.tt = icmp eq i32 %i.to, %i.tp                ; 2 uses
  br i1 %.not.i732.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %b3UniqueCount.exit.thread.i
  %.not22.i733.i = icmp eq i32 %i.tl, %i.tp
  %or.cond.i734.i = or i1 %i.tt, %.not22.i733.i
  br i1 %or.cond.i734.i, label %bb.q, label %b3UniqueCount.exit737.i

bb.p:                                             ; preds = %b3UniqueCount.exit.thread.i
  br i1 %i.tt, label %b3UniqueCount.exit737.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %b3UniqueCount.exit737.i

b3UniqueCount.exit.i:                             ; preds = %bb.j
  br label %b3UniqueCount.exit737.i

b3UniqueCount.exit737.i:                          ; preds = %b3UniqueCount.exit.i, %bb.q, %bb.p, %bb.o, %b3UniqueCount.exit.thread1245.i, %bb.j
  %.0.i1242.i = phi i32 [ 0, %b3UniqueCount.exit.i ], [ %.0.i1241.i, %bb.q ], [ %i.tq, %b3UniqueCount.exit.thread1245.i ], [ 1, %bb.j ], [ %.0.i1241.i, %bb.o ], [ %.0.i1241.i, %bb.p ] ; 2 uses
  %.0.i735.i = phi i32 [ 0, %b3UniqueCount.exit.i ], [ 2, %bb.q ], [ %i.tr, %b3UniqueCount.exit.thread1245.i ], [ 1, %bb.j ], [ 3, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %i.tu = select i1 %i.cm, <2 x float> %i.bb, <2 x float> %.sroa.25.0.copyload
  %i.tv = select i1 %i.cm, <2 x float> %i.ba, <2 x float> %.sroa.23.0.copyload
  %i.tw = fmul <2 x float> %i.dd, %i.tv
  %i.tx = fadd <2 x float> %i.db, %i.tw           ; 2 uses
  %i.ty = fmul <2 x float> %i.dd, %i.tu
  %i.tz = fadd <2 x float> %i.dg, %i.ty           ; 2 uses
  %i.ua = shufflevector <2 x float> %i.tx, <2 x float> %i.tz, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.ub = fmul <4 x float> %i.ua, %i.ua           ; 4 uses
  %shift2510 = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2511 = fadd <4 x float> %i.ub, %shift2510
  %shift2513 = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2514 = fadd <4 x float> %foldExtExtBinop2511, %shift2513
  %shift2516 = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2517 = fadd <4 x float> %shift2516, %foldExtExtBinop2514
  %i.uc = extractelement <4 x float> %foldExtExtBinop2517, i64 0 ; 2 uses
  %i.ud = fcmp ogt float %i.uc, f0x057A0000
  br i1 %i.ud, label %bb.r, label %b3GetSweepTransform.exit731

bb.r:                                             ; preds = %b3UniqueCount.exit737.i
  %sqrt.i.i.i726 = call float @llvm.sqrt.f32(float %i.uc)
  %i.ue = fdiv float 1.000000e+00, %sqrt.i.i.i726
  %i.uf = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uh = fmul <2 x float> %i.tx, %i.ug
  %i.ui = fmul <2 x float> %i.tz, %i.ug
  br label %b3GetSweepTransform.exit731

b3GetSweepTransform.exit731:                      ; preds = %b3UniqueCount.exit737.i, %bb.r
  %.sroa.010.0.i.i.i701 = phi <2 x float> [ %i.uh, %bb.r ], [ zeroinitializer, %b3UniqueCount.exit737.i ] ; 25 uses
  %.sroa.4.0.i.i.i702 = phi <2 x float> [ %i.ui, %bb.r ], [ <float 0.000000e+00, float 1.000000e+00>, %b3UniqueCount.exit737.i ] ; 16 uses
  %.sroa.3.8.vec.extract.i.i717 = extractelement <2 x float> %.sroa.4.0.i.i.i702, i64 0 ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i718 = extractelement <2 x float> %.sroa.010.0.i.i.i701, i64 1 ; 8 uses
  %i.uj = fmul float %.sroa.6967.0.copyload, %.sroa.011.4.vec.extract.i.i.i718
  %i.uk = fmul float %.sroa.03.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i717
  %i.ul = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2> ; 12 uses
  %i.um = fmul <2 x float> %.sroa.0964.0.copyload, %i.ul ; 2 uses
  %i.un = fmul <2 x float> %i.ck, %.sroa.010.0.i.i.i701 ; 2 uses
  %i.uo = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.up = insertelement <2 x float> %i.uo, float %i.uj, i64 0
  %i.uq = shufflevector <2 x float> %i.un, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ur = insertelement <2 x float> %i.uq, float %i.uk, i64 0
  %i.us = fsub <2 x float> %i.up, %i.ur
  %i.ut = fsub <2 x float> %i.um, %i.un
  %i.uu = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 16 uses
  %i.uv = fmul <2 x float> %.sroa.0964.0.copyload, %i.uu
  %i.uw = fmul <2 x float> %i.cj, %i.uu
  %i.ux = fadd <2 x float> %i.uv, %i.us           ; 2 uses
  %i.uy = fadd <2 x float> %i.uw, %i.ut           ; 2 uses
  %foldExtExtBinop2519 = fmul <2 x float> %.sroa.4.0.i.i.i702, %i.ux
  %shift2521 = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2522 = fmul <2 x float> %.sroa.010.0.i.i.i701, %shift2521
  %foldExtExtBinop2524 = fsub <2 x float> %foldExtExtBinop2519, %foldExtExtBinop2522
  %i.uz = extractelement <2 x float> %foldExtExtBinop2524, i64 0
  %i.va = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.uy
  %i.vb = shufflevector <2 x float> %.sroa.010.0.i.i.i701, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 1, i32 2> ; 8 uses
  %i.vc = fmul <2 x float> %i.vb, %i.ux
  %i.vd = fsub <2 x float> %i.va, %i.vc
  %i.ve = fmul float %i.uz, 2.000000e+00
  %i.vf = fadd float %.sroa.03.4.vec.extract.i.i.i, %i.ve
  %i.vg = fmul <2 x float> %i.vd, splat (float 2.000000e+00)
  %i.vh = fadd <2 x float> %i.ck, %i.vg
  %i.vi = extractelement <2 x float> %i.ee, i64 1
  %i.vj = fsub float %i.vi, %i.vf
  %i.vk = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vl = insertelement <2 x float> %i.vk, float %i.dv, i64 0
  %i.vm = fsub <2 x float> %i.vl, %i.vh
  %i.vn = select i1 %i.cl, <2 x float> %i.bd, <2 x float> %.sroa.26.0.copyload
  %i.vo = select i1 %i.cl, <2 x float> %i.bc, <2 x float> %.sroa.24.0.copyload
  %i.vp = fmul <2 x float> %i.dd, %i.vo
  %i.vq = fadd <2 x float> %i.fg, %i.vp           ; 2 uses
  %i.vr = fmul <2 x float> %i.dd, %i.vn
  %i.vs = fadd <2 x float> %i.fj, %i.vr           ; 2 uses
  %i.vt = shufflevector <2 x float> %i.vq, <2 x float> %i.vs, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.vu = fmul <4 x float> %i.vt, %i.vt           ; 4 uses
  %shift2526 = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2527 = fadd <4 x float> %i.vu, %shift2526
  %shift2529 = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2530 = fadd <4 x float> %foldExtExtBinop2527, %shift2529
  %shift2532 = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2533 = fadd <4 x float> %shift2532, %foldExtExtBinop2530
  %i.vv = extractelement <4 x float> %foldExtExtBinop2533, i64 0 ; 2 uses
  %i.vw = fcmp ogt float %i.vv, f0x057A0000
  br i1 %i.vw, label %bb.s, label %b3GetSweepTransform.exit688

bb.s:                                             ; preds = %b3GetSweepTransform.exit731
  %sqrt.i.i.i683 = call float @llvm.sqrt.f32(float %i.vv)
  %i.vx = fdiv float 1.000000e+00, %sqrt.i.i.i683
  %i.vy = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.vz = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wa = fmul <2 x float> %i.vq, %i.vz
  %i.wb = fmul <2 x float> %i.vs, %i.vz
  br label %b3GetSweepTransform.exit688

b3GetSweepTransform.exit688:                      ; preds = %b3GetSweepTransform.exit731, %bb.s
  %.sroa.010.0.i.i.i658 = phi <2 x float> [ %i.wa, %bb.s ], [ zeroinitializer, %b3GetSweepTransform.exit731 ] ; 27 uses
  %.sroa.4.0.i.i.i659 = phi <2 x float> [ %i.wb, %bb.s ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit731 ] ; 15 uses
  %.sroa.3.8.vec.extract.i.i674 = extractelement <2 x float> %.sroa.4.0.i.i.i659, i64 0 ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i675 = extractelement <2 x float> %.sroa.010.0.i.i.i658, i64 1 ; 6 uses
  %.sroa.3.12.vec.extract.i.i679 = extractelement <2 x float> %.sroa.4.0.i.i.i659, i64 1 ; 2 uses
  %i.wc = fmul float %.sroa.6932.0.copyload, %.sroa.011.4.vec.extract.i.i.i675
  %i.wd = fmul float %.sroa.03.4.vec.extract.i.i.i409, %.sroa.3.8.vec.extract.i.i674
  %i.we = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.010.0.i.i.i658, <2 x i32> <i32 0, i32 2> ; 12 uses
  %i.wf = fmul <2 x float> %.sroa.0929.0.copyload, %i.we ; 2 uses
  %i.wg = fmul <2 x float> %i.ch, %.sroa.010.0.i.i.i658 ; 2 uses
  %i.wh = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wi = insertelement <2 x float> %i.wh, float %i.wc, i64 0
  %i.wj = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wk = insertelement <2 x float> %i.wj, float %i.wd, i64 0
  %i.wl = fsub <2 x float> %i.wi, %i.wk
  %i.wm = fsub <2 x float> %i.wf, %i.wg
  %i.wn = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 14 uses
  %i.wo = fmul <2 x float> %.sroa.0929.0.copyload, %i.wn
  %i.wp = fmul <2 x float> %i.cg, %i.wn
  %i.wq = fadd <2 x float> %i.wo, %i.wl           ; 2 uses
  %i.wr = fadd <2 x float> %i.wp, %i.wm           ; 2 uses
  %foldExtExtBinop2535 = fmul <2 x float> %.sroa.4.0.i.i.i659, %i.wq
  %shift2537 = shufflevector <2 x float> %i.wr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2538 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2537
  %foldExtExtBinop2540 = fsub <2 x float> %foldExtExtBinop2535, %foldExtExtBinop2538
  %i.ws = extractelement <2 x float> %foldExtExtBinop2540, i64 0
  %i.wt = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.wr
  %i.wu = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.4.0.i.i.i659, <2 x i32> <i32 1, i32 2> ; 10 uses
  %i.wv = fmul <2 x float> %i.wu, %i.wq
  %i.ww = fsub <2 x float> %i.wt, %i.wv
  %i.wx = fmul float %i.ws, 2.000000e+00
  %i.wy = fadd float %.sroa.03.4.vec.extract.i.i.i409, %i.wx
  %i.wz = fmul <2 x float> %i.ww, splat (float 2.000000e+00)
  %i.xa = fadd <2 x float> %i.ch, %i.wz
  %i.xb = fsub float %i.fw, %i.wy
  %i.xc = fsub <2 x float> %i.fz, %i.xa
  %i.xd = fsub float %i.xb, %i.vj                 ; 4 uses
  %i.xe = fsub <2 x float> %i.xc, %i.vm           ; 4 uses
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
  %i.xf = icmp eq i32 %.0.i1242.i, 2
  %i.xg = icmp eq i32 %.0.i735.i, 2
  %or.cond.i = select i1 %i.xf, i1 %i.xg, i1 false
  br i1 %or.cond.i, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.xh = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.xi = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.xj = getelementptr inbounds nuw [12 x i8], ptr %i.xh, i64 %i.xi ; 2 uses
  %.sroa.0563.0.copyload.i = load <2 x float>, ptr %i.xj, align 4, !noalias !89 ; 5 uses
  %.sroa.5565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %.sroa.5565.0.copyload.i = load float, ptr %.sroa.5565.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.xk = getelementptr inbounds nuw [12 x i8], ptr %i.xh, i64 %.sroa.5655.0.extract.shift.i ; 2 uses
  %.sroa.0557.0.copyload.i = load <2 x float>, ptr %i.xk, align 4, !noalias !89
  %.sroa.2558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %.sroa.2558.0.copyload.i = load float, ptr %.sroa.2558.0..sroa_idx.i, align 4, !noalias !89
  %i.xl = fsub <2 x float> %.sroa.0557.0.copyload.i, %.sroa.0563.0.copyload.i ; 3 uses
  %i.xm = fsub float %.sroa.2558.0.copyload.i, %.sroa.5565.0.copyload.i ; 3 uses
  %i.xn = fmul <2 x float> %i.xl, %i.xl           ; 2 uses
  %shift2542 = shufflevector <2 x float> %i.xn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2543 = fadd <2 x float> %i.xn, %shift2542
  %i.xo = extractelement <2 x float> %foldExtExtBinop2543, i64 0
  %i.xp = fmul float %i.xm, %i.xm
end_hunk_0
begin_hunk_1_@b3TimeOfImpact:bb.a
  %i.aku = fadd float %i.akt, %i.akr
  %i.akv = extractelement <2 x float> %i.aks, i64 0
  %i.akw = fadd float %i.akv, %i.aku
  %i.akx = fcmp olt float %i.akw, 0.000000e+00    ; 2 uses
  %i.aky = fneg <2 x float> %.sroa.018.0.i690.i
  %i.akz = fneg float %.sroa.5.0.i691.i
  %.sroa.0402.0.i = select i1 %i.akx, <2 x float> %i.aky, <2 x float> %.sroa.018.0.i690.i ; 2 uses
  %.sroa.9405.0.i = select i1 %i.akx, float %i.akz, float %.sroa.5.0.i691.i
  store i32 3, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.0402.0.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.9405.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.ahj, ptr %i.bq, align 4, !alias.scope !89
  store float %i.aim, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ala = icmp eq i32 %.0.i735.i, 3
  br i1 %i.ala, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.alb = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89 ; 3 uses
  %i.alc = zext nneg i32 %i.to to i64
  %i.ald = getelementptr inbounds nuw [12 x i8], ptr %i.alb, i64 %i.alc ; 2 uses
  %.sroa.0276.0.copyload.i = load <2 x float>, ptr %i.ald, align 4, !noalias !89 ; 3 uses
  %.sroa.6279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ald, i64 8
  %.sroa.6279.0.copyload.i = load float, ptr %.sroa.6279.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.ale = zext nneg i32 %i.tl to i64
  %i.alf = getelementptr inbounds nuw [12 x i8], ptr %i.alb, i64 %i.ale ; 2 uses
  %.sroa.0273.0.copyload.i = load <2 x float>, ptr %i.alf, align 4, !noalias !89 ; 3 uses
  %.sroa.5275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %.sroa.5275.0.copyload.i = load float, ptr %.sroa.5275.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.alg = and i64 %.sroa.10660.8.extract.shift.i, 255
  %i.alh = getelementptr inbounds nuw [12 x i8], ptr %i.alb, i64 %i.alg ; 2 uses
  %.sroa.0270.0.copyload.i = load <2 x float>, ptr %i.alh, align 4, !noalias !89 ; 3 uses
  %.sroa.5272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %.sroa.5272.0.copyload.i = load float, ptr %.sroa.5272.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.ali = shufflevector <2 x float> %.sroa.0270.0.copyload.i, <2 x float> %.sroa.0273.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.alj = fsub <2 x float> %i.ali, %.sroa.0276.0.copyload.i ; 3 uses
  %i.alk = shufflevector <2 x float> %.sroa.0273.0.copyload.i, <2 x float> %.sroa.0270.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.all = fsub <2 x float> %i.alk, %.sroa.0276.0.copyload.i ; 3 uses
  %i.alm = insertelement <2 x float> poison, float %.sroa.5275.0.copyload.i, i64 0
  %i.aln = insertelement <2 x float> %i.alm, float %.sroa.5272.0.copyload.i, i64 1
  %i.alo = insertelement <2 x float> poison, float %.sroa.6279.0.copyload.i, i64 0
  %i.alp = shufflevector <2 x float> %i.alo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alq = fsub <2 x float> %i.aln, %i.alp        ; 2 uses
  %i.alr = fmul <2 x float> %i.alq, %i.alj
  %i.als = shufflevector <2 x float> %i.alq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.alt = fmul <2 x float> %i.all, %i.als
  %i.alu = fsub <2 x float> %i.alr, %i.alt        ; 3 uses
  %shift2625 = shufflevector <2 x float> %i.all, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2626 = fmul <2 x float> %i.all, %shift2625
  %shift2628 = shufflevector <2 x float> %i.alj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2629 = fmul <2 x float> %shift2628, %i.alj
  %foldExtExtBinop2631 = fsub <2 x float> %foldExtExtBinop2626, %foldExtExtBinop2629 ; 3 uses
  %i.alv = fmul <2 x float> %i.alu, %i.alu        ; 2 uses
  %shift2633 = shufflevector <2 x float> %i.alv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2634 = fadd <2 x float> %shift2633, %i.alv
  %foldExtExtBinop2636 = fmul <2 x float> %foldExtExtBinop2631, %foldExtExtBinop2631
  %foldExtExtBinop2638 = fadd <2 x float> %foldExtExtBinop2636, %foldExtExtBinop2634
  %i.alw = extractelement <2 x float> %foldExtExtBinop2638, i64 0 ; 2 uses
  %i.alx = fcmp ogt float %i.alw, f0x057A0000
  br i1 %i.alx, label %bb.al, label %b3Normalize.exit687.i

bb.al:                                            ; preds = %bb.ak
  %i.aly = extractelement <2 x float> %foldExtExtBinop2631, i64 0
  %sqrt1252.i = call float @llvm.sqrt.f32(float %i.alw)
  %i.alz = fdiv float 1.000000e+00, %sqrt1252.i   ; 2 uses
  %i.ama = insertelement <2 x float> poison, float %i.alz, i64 0
  %i.amb = shufflevector <2 x float> %i.alu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.amc = shufflevector <2 x float> %i.ama, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amd = fmul <2 x float> %i.amb, %i.amc
  %i.ame = fmul float %i.aly, %i.alz
  br label %b3Normalize.exit687.i

b3Normalize.exit687.i:                            ; preds = %bb.al, %bb.ak
  %.sroa.018.0.i681.i = phi <2 x float> [ %i.amd, %bb.al ], [ zeroinitializer, %bb.ak ] ; 6 uses
  %.sroa.5.0.i682.i = phi float [ %i.ame, %bb.al ], [ 0.000000e+00, %bb.ak ] ; 5 uses
  %.sroa.03.4.vec.extract.i.i967.i = extractelement <2 x float> %.sroa.018.0.i681.i, i64 1 ; 2 uses
  %i.amf = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89
  %i.amg = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.amh = getelementptr inbounds nuw [12 x i8], ptr %i.amf, i64 %i.amg ; 2 uses
  %.sroa.0220.0.copyload.i = load <2 x float>, ptr %i.amh, align 4, !noalias !89 ; 5 uses
  %.sroa.4221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %.sroa.4221.0.copyload.i = load float, ptr %.sroa.4221.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.ami = fadd <2 x float> %.sroa.0276.0.copyload.i, %.sroa.0273.0.copyload.i
  %i.amj = fadd float %.sroa.6279.0.copyload.i, %.sroa.5275.0.copyload.i
  %i.amk = fadd float %i.amj, %.sroa.5272.0.copyload.i
  %i.aml = fadd <2 x float> %i.ami, %.sroa.0270.0.copyload.i
  %i.amm = fmul <2 x float> %i.aml, splat (float f0x3EAAAAAB) ; 7 uses
  %i.amn = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.5.0.i682.i
  %i.amo = fmul float %.sroa.3.8.vec.extract.i.i674, %.sroa.03.4.vec.extract.i.i967.i
  %i.amp = fmul <2 x float> %i.we, %.sroa.018.0.i681.i ; 2 uses
  %i.amq = shufflevector <2 x float> %.sroa.018.0.i681.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.amr = insertelement <2 x float> %i.amq, float %.sroa.5.0.i682.i, i64 0 ; 2 uses
  %i.ams = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.amr ; 2 uses
  %i.amt = shufflevector <2 x float> %i.amp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.amu = insertelement <2 x float> %i.amt, float %i.amn, i64 0
  %i.amv = shufflevector <2 x float> %i.ams, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.amw = insertelement <2 x float> %i.amv, float %i.amo, i64 0
  %i.amx = fsub <2 x float> %i.amu, %i.amw
  %i.amy = fsub <2 x float> %i.amp, %i.ams
  %i.amz = fmul <2 x float> %i.wn, %.sroa.018.0.i681.i
  %i.ana = insertelement <2 x float> %i.amq, float %.sroa.5.0.i682.i, i64 1
  %i.anb = fmul <2 x float> %i.wn, %i.ana
  %i.anc = fadd <2 x float> %i.amz, %i.amx        ; 2 uses
  %i.and = fadd <2 x float> %i.anb, %i.amy        ; 2 uses
  %foldExtExtBinop2640 = fmul <2 x float> %.sroa.4.0.i.i.i659, %i.anc
  %shift2642 = shufflevector <2 x float> %i.and, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2643 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2642
  %foldExtExtBinop2645 = fsub <2 x float> %foldExtExtBinop2640, %foldExtExtBinop2643
  %i.ane = extractelement <2 x float> %foldExtExtBinop2645, i64 0
  %i.anf = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.and
  %i.ang = fmul <2 x float> %i.wu, %i.anc
  %i.anh = fsub <2 x float> %i.anf, %i.ang
  %i.ani = fmul float %i.ane, 2.000000e+00
  %i.anj = fadd float %.sroa.03.4.vec.extract.i.i967.i, %i.ani
  %i.ank = fmul <2 x float> %i.anh, splat (float 2.000000e+00)
  %i.anl = fadd <2 x float> %i.amr, %i.ank
  %i.anm = fmul float %i.amk, f0x3EAAAAAB         ; 5 uses
  %i.ann = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.4221.0.copyload.i
  %shift2647 = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2648 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2647
  %i.ano = fmul <2 x float> %i.ul, %.sroa.0220.0.copyload.i ; 2 uses
  %i.anp = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.anq = insertelement <2 x float> %i.anp, float %.sroa.4221.0.copyload.i, i64 0 ; 2 uses
  %i.anr = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.anq ; 2 uses
  %i.ans = shufflevector <2 x float> %i.ano, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ant = insertelement <2 x float> %i.ans, float %i.ann, i64 0
  %i.anu = shufflevector <2 x float> %i.anr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.anv = shufflevector <2 x float> %foldExtExtBinop2648, <2 x float> %i.anu, <2 x i32> <i32 0, i32 3>
  %i.anw = fsub <2 x float> %i.ant, %i.anv
  %i.anx = fsub <2 x float> %i.ano, %i.anr
  %i.any = fmul <2 x float> %i.uu, %.sroa.0220.0.copyload.i
  %i.anz = insertelement <2 x float> %i.anp, float %.sroa.4221.0.copyload.i, i64 1
  %i.aoa = fmul <2 x float> %i.uu, %i.anz
  %i.aob = fadd <2 x float> %i.any, %i.anw        ; 2 uses
  %i.aoc = fadd <2 x float> %i.aoa, %i.anx        ; 2 uses
  %i.aod = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.aoc
  %i.aoe = fmul <2 x float> %i.vb, %i.aob
  %i.aof = fsub <2 x float> %i.aod, %i.aoe
  %i.aog = fmul <2 x float> %i.aof, splat (float 2.000000e+00)
  %i.aoh = fadd <2 x float> %i.anq, %i.aog
  %i.aoi = fmul float %.sroa.011.4.vec.extract.i.i.i675, %i.anm
  %shift2650 = shufflevector <2 x float> %i.amm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2651 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2650
  %i.aoj = fmul <2 x float> %i.we, %i.amm         ; 2 uses
  %i.aok = shufflevector <2 x float> %i.amm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aol = insertelement <2 x float> %i.aok, float %i.anm, i64 0 ; 2 uses
  %i.aom = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aol ; 2 uses
  %i.aon = shufflevector <2 x float> %i.aoj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aoo = insertelement <2 x float> %i.aon, float %i.aoi, i64 0
  %i.aop = shufflevector <2 x float> %i.aom, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aoq = shufflevector <2 x float> %foldExtExtBinop2651, <2 x float> %i.aop, <2 x i32> <i32 0, i32 3>
  %i.aor = fsub <2 x float> %i.aoo, %i.aoq
  %i.aos = fsub <2 x float> %i.aoj, %i.aom
  %i.aot = fmul <2 x float> %i.wn, %i.amm
  %i.aou = insertelement <2 x float> %i.aok, float %i.anm, i64 1
  %i.aov = fmul <2 x float> %i.wn, %i.aou
  %i.aow = fadd <2 x float> %i.aot, %i.aor        ; 2 uses
  %i.aox = fadd <2 x float> %i.aov, %i.aos        ; 2 uses
  %i.aoy = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aox
  %i.aoz = fmul <2 x float> %i.wu, %i.aow
  %i.apa = fsub <2 x float> %i.aoy, %i.aoz
  %i.apb = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> %.sroa.4.0.i.i.i659, <2 x i32> <i32 0, i32 2>
  %i.apc = shufflevector <2 x float> %i.aob, <2 x float> %i.aow, <2 x i32> <i32 0, i32 2>
  %i.apd = fmul <2 x float> %i.apb, %i.apc
  %i.ape = shufflevector <2 x float> %.sroa.010.0.i.i.i701, <2 x float> %.sroa.010.0.i.i.i658, <2 x i32> <i32 0, i32 2>
  %i.apf = shufflevector <2 x float> %i.aoc, <2 x float> %i.aox, <2 x i32> <i32 1, i32 3>
  %i.apg = fmul <2 x float> %i.ape, %i.apf
  %i.aph = fsub <2 x float> %i.apd, %i.apg
  %i.api = fmul <2 x float> %i.aph, splat (float 2.000000e+00)
  %i.apj = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> %i.amm, <2 x i32> <i32 1, i32 3>
  %i.apk = fadd <2 x float> %i.apj, %i.api        ; 2 uses
  %i.apl = fmul <2 x float> %i.apa, splat (float 2.000000e+00)
  %i.apm = fadd <2 x float> %i.aol, %i.apl
  %shift2653 = shufflevector <2 x float> %i.apk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2654 = fsub <2 x float> %i.apk, %shift2653
  %i.apn = extractelement <2 x float> %foldExtExtBinop2654, i64 0
  %i.apo = fsub <2 x float> %i.aoh, %i.apm
  %i.app = fsub float %i.apn, %i.xd
  %i.apq = fsub <2 x float> %i.apo, %i.xe
  %i.apr = fmul float %i.anj, %i.app
  %i.aps = fmul <2 x float> %i.anl, %i.apq        ; 2 uses
  %i.apt = extractelement <2 x float> %i.aps, i64 1
  %i.apu = fadd float %i.apt, %i.apr
  %i.apv = extractelement <2 x float> %i.aps, i64 0
  %i.apw = fadd float %i.apv, %i.apu
  %i.apx = fcmp olt float %i.apw, 0.000000e+00    ; 2 uses
  %i.apy = fneg <2 x float> %.sroa.018.0.i681.i
  %i.apz = fneg float %.sroa.5.0.i682.i
  %.sroa.0266.0.i = select i1 %i.apx, <2 x float> %i.apy, <2 x float> %.sroa.018.0.i681.i ; 2 uses
  %.sroa.9269.0.i = select i1 %i.apx, float %i.apz, float %.sroa.5.0.i682.i
  store i32 4, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.0266.0.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.9269.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.amm, ptr %i.bq, align 4, !alias.scope !89
  store float %i.anm, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.am:                                            ; preds = %bb.aj
  %i.aqa = icmp eq i32 %i.tm, %.sroa.5655.0.extract.trunc.i
  %spec.select.i = select i1 %i.aqa, i32 %i.tn, i32 %.sroa.5655.0.extract.trunc.i
  %i.aqb = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.aqc = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.aqd = getelementptr inbounds nuw [12 x i8], ptr %i.aqb, i64 %i.aqc ; 2 uses
  %.sroa.0141.0.copyload.i = load <2 x float>, ptr %i.aqd, align 4, !noalias !89 ; 5 uses
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %.sroa.5143.0.copyload.i = load float, ptr %.sroa.5143.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.aqe = zext nneg i32 %spec.select.i to i64
  %i.aqf = getelementptr inbounds nuw [12 x i8], ptr %i.aqb, i64 %i.aqe ; 2 uses
  %.sroa.0139.0.copyload.i = load <2 x float>, ptr %i.aqf, align 4, !noalias !89
  %.sroa.4140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %.sroa.4140.0.copyload.i = load float, ptr %.sroa.4140.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89
  %i.aqg = fsub <2 x float> %.sroa.0139.0.copyload.i, %.sroa.0141.0.copyload.i ; 3 uses
  %i.aqh = fsub float %.sroa.4140.0.copyload.i, %.sroa.5143.0.copyload.i ; 3 uses
  %i.aqi = fmul <2 x float> %i.aqg, %i.aqg        ; 2 uses
  %shift2656 = shufflevector <2 x float> %i.aqi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2657 = fadd <2 x float> %i.aqi, %shift2656
  %i.aqj = extractelement <2 x float> %foldExtExtBinop2657, i64 0
  %i.aqk = fmul float %i.aqh, %i.aqh
  %i.aql = fadd float %i.aqk, %i.aqj              ; 2 uses
  %i.aqm = fcmp ogt float %i.aql, f0x057A0000
  br i1 %i.aqm, label %bb.an, label %b3Normalize.exit678.i

bb.an:                                            ; preds = %bb.am
  %sqrt1253.i = call float @llvm.sqrt.f32(float %i.aql)
  %i.aqn = fdiv float 1.000000e+00, %sqrt1253.i   ; 2 uses
  %i.aqo = insertelement <2 x float> poison, float %i.aqn, i64 0
  %i.aqp = shufflevector <2 x float> %i.aqo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqq = fmul <2 x float> %i.aqg, %i.aqp
  %i.aqr = fmul float %i.aqh, %i.aqn
  br label %b3Normalize.exit678.i

b3Normalize.exit678.i:                            ; preds = %bb.an, %bb.am
  %.sroa.018.0.i672.i = phi <2 x float> [ %i.aqq, %bb.an ], [ zeroinitializer, %bb.am ] ; 10 uses
  %.sroa.5.0.i673.i = phi float [ %i.aqr, %bb.an ], [ 0.000000e+00, %bb.am ] ; 6 uses
  %i.aqs = shufflevector <2 x float> %.sroa.018.0.i672.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %.sroa.03.0.vec.extract.i.i1054.i = extractelement <2 x float> %.sroa.018.0.i672.i, i64 0
  %foldExtExtBinop2659 = fmul <2 x float> %.sroa.4.0.i.i.i702, %.sroa.018.0.i672.i
  %i.aqt = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.5.0.i673.i
  %i.aqu = insertelement <2 x float> %i.aqs, float %.sroa.5.0.i673.i, i64 1 ; 2 uses
  %i.aqv = fmul <2 x float> %i.ul, %i.aqu
  %i.aqw = insertelement <2 x float> poison, float %i.aqt, i64 0
  %i.aqx = shufflevector <2 x float> %i.aqw, <2 x float> %foldExtExtBinop2659, <2 x i32> <i32 0, i32 2>
  %i.aqy = fsub <2 x float> %i.aqx, %i.aqv        ; 2 uses
  %i.aqz = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.aqs ; 2 uses
  %shift2661 = shufflevector <2 x float> %i.aqz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2662 = fsub <2 x float> %i.aqz, %shift2661
  %i.ara = fmul <2 x float> %i.uu, %.sroa.018.0.i672.i
  %i.arb = insertelement <2 x float> %i.aqs, float %.sroa.5.0.i673.i, i64 0 ; 3 uses
  %i.arc = fmul <2 x float> %i.uu, %i.arb
  %i.ard = fadd <2 x float> %i.ara, %i.aqy        ; 2 uses
  %i.are = shufflevector <2 x float> %i.aqy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.arf = shufflevector <2 x float> %foldExtExtBinop2662, <2 x float> %i.are, <2 x i32> <i32 0, i32 3>
  %i.arg = fadd <2 x float> %i.arc, %i.arf        ; 2 uses
  %i.arh = fmul <2 x float> %i.ul, %i.ard
  %i.ari = extractelement <2 x float> %i.arg, i64 0
  %i.arj = fmul float %.sroa.011.4.vec.extract.i.i.i718, %i.ari
  %i.ark = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.arg
  %shift2664 = shufflevector <2 x float> %i.ard, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2665 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2664
  %i.arl = extractelement <2 x float> %foldExtExtBinop2665, i64 0
  %i.arm = fsub <2 x float> %i.arh, %i.ark
  %i.arn = fsub float %i.arj, %i.arl
  %i.aro = fmul float %i.arn, 2.000000e+00
  %i.arp = fadd float %.sroa.03.0.vec.extract.i.i1054.i, %i.aro ; 2 uses
  %i.arq = fmul <2 x float> %i.arm, splat (float 2.000000e+00)
  %i.arr = fadd <2 x float> %i.aqu, %i.arq        ; 3 uses
  %i.ars = icmp eq i32 %i.to, %i.tl
  %spec.select1248.i = select i1 %i.ars, i32 %i.tp, i32 %i.tl
  %i.art = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.aru = zext nneg i32 %i.to to i64
  %i.arv = getelementptr inbounds nuw [12 x i8], ptr %i.art, i64 %i.aru ; 2 uses
  %.sroa.0111.0.copyload.i = load <2 x float>, ptr %i.arv, align 4, !noalias !89 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.arv, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.arw = zext nneg i32 %spec.select1248.i to i64
  %i.arx = getelementptr inbounds nuw [12 x i8], ptr %i.art, i64 %i.arw ; 2 uses
  %.sroa.0109.0.copyload.i = load <2 x float>, ptr %i.arx, align 4, !noalias !89
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.arx, i64 8
  %.sroa.4110.0.copyload.i = load float, ptr %.sroa.4110.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89
  %i.ary = fsub <2 x float> %.sroa.0109.0.copyload.i, %.sroa.0111.0.copyload.i ; 3 uses
  %i.arz = fsub float %.sroa.4110.0.copyload.i, %.sroa.5.0.copyload.i ; 3 uses
  %i.asa = fmul <2 x float> %i.ary, %i.ary        ; 2 uses
  %shift2667 = shufflevector <2 x float> %i.asa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2668 = fadd <2 x float> %i.asa, %shift2667
  %i.asb = extractelement <2 x float> %foldExtExtBinop2668, i64 0
  %i.asc = fmul float %i.arz, %i.arz
  %i.asd = fadd float %i.asc, %i.asb              ; 2 uses
  %i.ase = fcmp ogt float %i.asd, f0x057A0000
  br i1 %i.ase, label %bb.ao, label %b3Normalize.exit669.i

bb.ao:                                            ; preds = %b3Normalize.exit678.i
  %sqrt1254.i = call float @llvm.sqrt.f32(float %i.asd)
  %i.asf = fdiv float 1.000000e+00, %sqrt1254.i   ; 2 uses
  %i.asg = insertelement <2 x float> poison, float %i.asf, i64 0
  %i.ash = shufflevector <2 x float> %i.asg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asi = fmul <2 x float> %i.ary, %i.ash
  %i.asj = fmul float %i.arz, %i.asf
  br label %b3Normalize.exit669.i

b3Normalize.exit669.i:                            ; preds = %bb.ao, %b3Normalize.exit678.i
  %.sroa.018.0.i663.i = phi <2 x float> [ %i.asi, %bb.ao ], [ zeroinitializer, %b3Normalize.exit678.i ] ; 6 uses
  %.sroa.5.0.i664.i = phi float [ %i.asj, %bb.ao ], [ 0.000000e+00, %b3Normalize.exit678.i ] ; 6 uses
  %i.ask = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.5.0.i664.i
  %shift2670 = shufflevector <2 x float> %.sroa.018.0.i663.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2671 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2670
  %i.asl = extractelement <2 x float> %foldExtExtBinop2671, i64 0
  %i.asm = fmul <2 x float> %i.we, %.sroa.018.0.i663.i
  %i.asn = shufflevector <2 x float> %.sroa.018.0.i663.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aso = insertelement <2 x float> %i.asn, float %.sroa.5.0.i664.i, i64 0 ; 2 uses
  %i.asp = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aso
  %i.asq = fsub float %i.ask, %i.asl
  %i.asr = fsub <2 x float> %i.asm, %i.asp        ; 2 uses
  %i.ass = fmul <2 x float> %i.wn, %.sroa.018.0.i663.i ; 2 uses
  %i.ast = fmul float %.sroa.3.12.vec.extract.i.i679, %.sroa.5.0.i664.i
  %i.asu = shufflevector <2 x float> %i.asr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.asv = insertelement <2 x float> %i.asu, float %i.asq, i64 0
  %i.asw = fadd <2 x float> %i.ass, %i.asv        ; 2 uses
  %i.asx = shufflevector <2 x float> %i.ass, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.asy = insertelement <2 x float> %i.asx, float %i.ast, i64 1
  %i.asz = fadd <2 x float> %i.asy, %i.asr        ; 2 uses
  %i.ata = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.asz
  %i.atb = fmul <2 x float> %i.we, %i.asw
  %i.atc = fmul <2 x float> %i.wu, %i.asw         ; 2 uses
  %shift2673 = shufflevector <2 x float> %i.asz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2674 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2673
  %i.atd = fsub <2 x float> %i.ata, %i.atc
  %i.ate = shufflevector <2 x float> %i.atc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.atf = shufflevector <2 x float> %foldExtExtBinop2674, <2 x float> %i.ate, <2 x i32> <i32 0, i32 3>
  %i.atg = fsub <2 x float> %i.atb, %i.atf
  %i.ath = fmul <2 x float> %i.atd, splat (float 2.000000e+00)
  %i.ati = fmul <2 x float> %i.atg, splat (float 2.000000e+00)
  %i.atj = fadd <2 x float> %i.aso, %i.ath        ; 2 uses
  %i.atk = insertelement <2 x float> %i.asn, float %.sroa.5.0.i664.i, i64 1
  %i.atl = fadd <2 x float> %i.atk, %i.ati        ; 2 uses
  %i.atm = fmul <2 x float> %i.arr, %i.atj
  %i.atn = shufflevector <2 x float> %i.arr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ato = insertelement <2 x float> %i.atn, float %i.arp, i64 1
  %i.atp = fmul <2 x float> %i.ato, %i.atl
  %i.atq = fsub <2 x float> %i.atm, %i.atp        ; 6 uses
  %i.atr = extractelement <2 x float> %i.atl, i64 0
  %i.ats = fmul float %i.arp, %i.atr
  %shift2676 = shufflevector <2 x float> %i.atj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2677 = fmul <2 x float> %i.arr, %shift2676
  %i.att = extractelement <2 x float> %foldExtExtBinop2677, i64 0
  %i.atu = fsub float %i.ats, %i.att              ; 5 uses
  %i.atv = fmul <2 x float> %i.atq, %i.atq        ; 2 uses
  %shift2679 = shufflevector <2 x float> %i.atv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2680 = fadd <2 x float> %i.atv, %shift2679
  %i.atw = extractelement <2 x float> %foldExtExtBinop2680, i64 0
  %i.atx = fmul float %i.atu, %i.atu
  %i.aty = fadd float %i.atx, %i.atw
  %i.atz = fcmp olt float %i.aty, 2.500000e-05
  br i1 %i.atz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %b3Normalize.exit669.i
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.aq:                                            ; preds = %b3Normalize.exit669.i
  %i.aua = shufflevector <2 x float> %.sroa.0111.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aub = insertelement <2 x float> %i.aua, float %.sroa.5.0.copyload.i, i64 0 ; 3 uses
  %i.auc = fmul <2 x float> %i.wu, %i.aub
  %i.aud = insertelement <2 x float> %i.aua, float %.sroa.5.0.copyload.i, i64 1 ; 2 uses
  %i.aue = fmul <2 x float> %i.we, %i.aud
  %i.auf = fmul <2 x float> %i.we, %.sroa.0111.0.copyload.i
  %i.aug = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aub
  %i.auh = fmul <2 x float> %i.wn, %.sroa.0111.0.copyload.i
  %i.aui = fmul <2 x float> %i.wn, %i.aud
  %i.auj = shufflevector <2 x float> %.sroa.0141.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.auk = insertelement <2 x float> %i.auj, float %.sroa.5143.0.copyload.i, i64 0 ; 3 uses
  %i.aul = fmul <2 x float> %i.vb, %i.auk
  %i.aum = insertelement <2 x float> %i.auj, float %.sroa.5143.0.copyload.i, i64 1 ; 2 uses
  %i.aun = fmul <2 x float> %i.ul, %i.aum
  %i.auo = fmul <2 x float> %i.ul, %.sroa.0141.0.copyload.i
  %i.aup = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.auk
  %i.auq = fmul <2 x float> %i.uu, %.sroa.0141.0.copyload.i
  %i.aur = fmul <2 x float> %i.uu, %i.aum
  %i.aus = extractelement <2 x float> %i.atq, i64 1
  %i.aut = fsub <2 x float> %i.auc, %i.aue
  %i.auu = fsub <2 x float> %i.auf, %i.aug
  %i.auv = fadd <2 x float> %i.auh, %i.aut        ; 2 uses
  %i.auw = fadd <2 x float> %i.aui, %i.auu        ; 2 uses
  %i.aux = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.auw
  %i.auy = fmul <2 x float> %i.wu, %i.auv
  %i.auz = fsub <2 x float> %i.aux, %i.auy
  %i.ava = fmul <2 x float> %i.auz, splat (float 2.000000e+00)
  %i.avb = fadd <2 x float> %i.aub, %i.ava
  %i.avc = fsub <2 x float> %i.aul, %i.aun
  %i.avd = fsub <2 x float> %i.auo, %i.aup
  %i.ave = fadd <2 x float> %i.auq, %i.avc        ; 2 uses
  %i.avf = fadd <2 x float> %i.aur, %i.avd        ; 2 uses
  %i.avg = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.avf
  %i.avh = fmul <2 x float> %i.vb, %i.ave
  %i.avi = fsub <2 x float> %i.avg, %i.avh
  %i.avj = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 0, i32 2>
  %i.avk = shufflevector <2 x float> %i.auv, <2 x float> %i.ave, <2 x i32> <i32 0, i32 2>
  %i.avl = fmul <2 x float> %i.avj, %i.avk
  %i.avm = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2>
end_hunk_1
