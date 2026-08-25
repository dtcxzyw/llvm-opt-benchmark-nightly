Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpQualityFunctionMuOracle?download=true
inline.NumInlined: 1672
inline.NumDeleted: 183
begin_hunk_0_@_ZN5Ipopt23QualityFunctionMuOracle24CalculateQualityFunctionEdRKNS_6VectorES3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_:bb.a
  %i.jj = load ptr, ptr %i.gy, align 8, !tbaa !20
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !10
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 88
  %i.jm = load ptr, ptr %i.jl, align 8
  tail call void %i.jm(ptr noundef nonnull align 8 dereferenceable(205) %i.ji, ptr noundef nonnull align 8 dereferenceable(205) %i.jj), !inline_history !892
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.ji)
  %i.jn = load ptr, ptr %i.d, align 8, !tbaa !28  ; 10 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1624
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !155, !range !157, !noundef !115
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.i, label %_ZN5Ipopt9TimedTask3EndEv.exit90

bb.i:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit89
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 1576
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 1626
  store i8 1, ptr %i.js, align 2, !tbaa !158
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 1625
  store i8 0, ptr %i.jt, align 1, !tbaa !159
  %i.ju = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.jv = load double, ptr %i.jr, align 8, !tbaa !160
  %i.jw = fsub double %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 1584 ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !335
  %i.jz = fadd double %i.jy, %i.jw
  store double %i.jz, ptr %i.jx, align 8, !tbaa !335
  %i.ka = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 1592
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !161
  %i.kd = fsub double %i.ka, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jn, i64 1600 ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !336
  %i.kg = fadd double %i.kf, %i.kd
  store double %i.kg, ptr %i.ke, align 8, !tbaa !336
  %i.kh = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jn, i64 1608
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !162
  %i.kk = fsub double %i.kh, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jn, i64 1616 ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !337
  %i.kn = fadd double %i.km, %i.kk
  store double %i.kn, ptr %i.kl, align 8, !tbaa !337
  %.pre176 = load ptr, ptr %i.d, align 8, !tbaa !28
  br label %_ZN5Ipopt9TimedTask3EndEv.exit90

_ZN5Ipopt9TimedTask3EndEv.exit90:                 ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit89, %bb.i
  %i.ko = phi ptr [ %i.jn, %_ZN5Ipopt9TimedTask5StartEv.exit89 ], [ %.pre176, %bb.i ] ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1736
  %i.kq = load i8, ptr %i.kp, align 8, !tbaa !155, !range !157, !noundef !115
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.j, label %_ZN5Ipopt9TimedTask5StartEv.exit91

bb.j:                                             ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit90
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 1688
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 1738
  store i8 0, ptr %i.kt, align 2, !tbaa !158
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 1737
  store i8 1, ptr %i.ku, align 1, !tbaa !159
  %i.kv = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.kv, ptr %i.ks, align 8, !tbaa !160
  %i.kw = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ko, i64 1704
  store double %i.kw, ptr %i.kx, align 8, !tbaa !161
  %i.ky = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ko, i64 1720
  store double %i.ky, ptr %i.kz, align 8, !tbaa !162
  br label %_ZN5Ipopt9TimedTask5StartEv.exit91

_ZN5Ipopt9TimedTask5StartEv.exit91:               ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit90, %bb.j
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !53
  switch i32 %i.lb, label %bb.ae [
    i32 0, label %bb.k
    i32 1, label %bb.p
    i32 2, label %bb.u
    i32 3, label %bb.z
  ]

bb.k:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit91
  %i.lc = fsub double 1.000000e+00, %i.dg
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.le = load double, ptr %i.ld, align 8, !tbaa !316
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !318
  %i.lh = fadd double %i.le, %i.lg
  %i.li = fmul double %i.lc, %i.lh
  %i.lj = fsub double 1.000000e+00, %i.da
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !319
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !320
  %i.lo = fadd double %i.ll, %i.ln
  %i.lp = fmul double %i.lj, %i.lo                ; 2 uses
  %i.lq = load ptr, ptr %i.eu, align 8, !tbaa !20 ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 104 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !302
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 48 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !314
  %.not.i = icmp eq i32 %i.ls, %i.lu
  br i1 %.not.i, label %._crit_edge.i, label %bb.l

._crit_edge.i:                                    ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 112
  %.pre.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !315
  br label %_ZNK5Ipopt6Vector4AsumEv.exit

bb.l:                                             ; preds = %bb.k
  %i.lv = load ptr, ptr %i.lq, align 8, !tbaa !10
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 56
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = tail call noundef double %i.lx(ptr noundef nonnull align 8 dereferenceable(205) %i.lq), !inline_history !317 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 112
  store double %i.ly, ptr %i.lz, align 8, !tbaa !315
  %i.ma = load i32, ptr %i.lt, align 8, !tbaa !314
  store i32 %i.ma, ptr %i.lr, align 8, !tbaa !302
  br label %_ZNK5Ipopt6Vector4AsumEv.exit

_ZNK5Ipopt6Vector4AsumEv.exit:                    ; preds = %._crit_edge.i, %bb.l
  %i.mb = phi double [ %.pre.i, %._crit_edge.i ], [ %i.ly, %bb.l ]
  %i.mc = load ptr, ptr %i.fc, align 8, !tbaa !20 ; 6 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 104 ; 2 uses
  %i.me = load i32, ptr %i.md, align 8, !tbaa !302
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 48 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !314
  %.not.i92 = icmp eq i32 %i.me, %i.mg
  br i1 %.not.i92, label %._crit_edge.i93, label %bb.m

._crit_edge.i93:                                  ; preds = %_ZNK5Ipopt6Vector4AsumEv.exit
  %.phi.trans.insert.i94 = getelementptr inbounds nuw i8, ptr %i.mc, i64 112
  %.pre.i95 = load double, ptr %.phi.trans.insert.i94, align 8, !tbaa !315
  br label %_ZNK5Ipopt6Vector4AsumEv.exit96

bb.m:                                             ; preds = %_ZNK5Ipopt6Vector4AsumEv.exit
  %i.mh = load ptr, ptr %i.mc, align 8, !tbaa !10
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 56
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = tail call noundef double %i.mj(ptr noundef nonnull align 8 dereferenceable(205) %i.mc), !inline_history !317 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mc, i64 112
  store double %i.mk, ptr %i.ml, align 8, !tbaa !315
  %i.mm = load i32, ptr %i.mf, align 8, !tbaa !314
  store i32 %i.mm, ptr %i.md, align 8, !tbaa !302
  br label %_ZNK5Ipopt6Vector4AsumEv.exit96

_ZNK5Ipopt6Vector4AsumEv.exit96:                  ; preds = %._crit_edge.i93, %bb.m
  %i.mn = phi double [ %.pre.i95, %._crit_edge.i93 ], [ %i.mk, %bb.m ]
  %i.mo = fadd double %i.mb, %i.mn
  %i.mp = load ptr, ptr %i.fk, align 8, !tbaa !20 ; 6 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 104 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !302
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 48 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !314
  %.not.i97 = icmp eq i32 %i.mr, %i.mt
  br i1 %.not.i97, label %._crit_edge.i98, label %bb.n

._crit_edge.i98:                                  ; preds = %_ZNK5Ipopt6Vector4AsumEv.exit96
  %.phi.trans.insert.i99 = getelementptr inbounds nuw i8, ptr %i.mp, i64 112
  %.pre.i100 = load double, ptr %.phi.trans.insert.i99, align 8, !tbaa !315
  br label %_ZNK5Ipopt6Vector4AsumEv.exit101

bb.n:                                             ; preds = %_ZNK5Ipopt6Vector4AsumEv.exit96
  %i.mu = load ptr, ptr %i.mp, align 8, !tbaa !10
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = tail call noundef double %i.mw(ptr noundef nonnull align 8 dereferenceable(205) %i.mp), !inline_history !317 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mp, i64 112
  store double %i.mx, ptr %i.my, align 8, !tbaa !315
  %i.mz = load i32, ptr %i.ms, align 8, !tbaa !314
  store i32 %i.mz, ptr %i.mq, align 8, !tbaa !302
  br label %_ZNK5Ipopt6Vector4AsumEv.exit101

_ZNK5Ipopt6Vector4AsumEv.exit101:                 ; preds = %._crit_edge.i98, %bb.n
  %i.na = phi double [ %.pre.i100, %._crit_edge.i98 ], [ %i.mx, %bb.n ]
  %i.nb = fadd double %i.mo, %i.na
  %i.nc = load ptr, ptr %i.fs, align 8, !tbaa !20 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 104 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !302
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 48 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !314
  %.not.i102 = icmp eq i32 %i.ne, %i.ng
  br i1 %.not.i102, label %._crit_edge.i103, label %bb.o

._crit_edge.i103:                                 ; preds = %_ZNK5Ipopt6Vector4AsumEv.exit101
  %.phi.trans.insert.i104 = getelementptr inbounds nuw i8, ptr %i.nc, i64 112
  %.pre.i105 = load double, ptr %.phi.trans.insert.i104, align 8, !tbaa !315
  br label %_ZNK5Ipopt6Vector4AsumEv.exit106

bb.o:                                             ; preds = %_ZNK5Ipopt6Vector4AsumEv.exit101
  %i.nh = load ptr, ptr %i.nc, align 8, !tbaa !10
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 56
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = tail call noundef double %i.nj(ptr noundef nonnull align 8 dereferenceable(205) %i.nc), !inline_history !317 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nc, i64 112
  store double %i.nk, ptr %i.nl, align 8, !tbaa !315
  %i.nm = load i32, ptr %i.nf, align 8, !tbaa !314
  store i32 %i.nm, ptr %i.nd, align 8, !tbaa !302
  br label %_ZNK5Ipopt6Vector4AsumEv.exit106

_ZNK5Ipopt6Vector4AsumEv.exit106:                 ; preds = %._crit_edge.i103, %bb.o
  %i.nn = phi double [ %.pre.i105, %._crit_edge.i103 ], [ %i.nk, %bb.o ]
  %i.no = fadd double %i.nb, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 256
  %22 = load i32, ptr %i.np, align 8, !tbaa !187
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !210 ; 2 uses
  %i.ns = icmp sgt i32 %i.nr, 0
  %i.nt = uitofp nneg i32 %i.nr to double
  %i.nu = fdiv double %i.lp, %i.nt
  %.078 = select i1 %i.ns, double %i.nu, double %i.lp
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !255
  %23 = insertelement <2 x i32> poison, i32 %22, i64 0
  %i.nx = insertelement <2 x i32> %23, i32 %i.nw, i64 1
  %i.ny = sitofp <2 x i32> %i.nx to <2 x double>
  %i.nz = insertelement <2 x double> poison, double %i.li, i64 0
  %i.oa = insertelement <2 x double> %i.nz, double %i.no, i64 1
  %i.ob = fdiv <2 x double> %i.oa, %i.ny
  br label %bb.ae

bb.p:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit91
  %i.oc = fsub double 1.000000e+00, %i.dg
  %i.od = tail call noundef double @pow(double noundef %i.oc, double noundef 2.000000e+00) #12
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.of = load double, ptr %i.oe, align 8, !tbaa !323
  %i.og = tail call noundef double @pow(double noundef %i.of, double noundef 2.000000e+00) #12
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !325
  %i.oj = tail call noundef double @pow(double noundef %i.oi, double noundef 2.000000e+00) #12
  %i.ok = fadd double %i.og, %i.oj
  %i.ol = fmul double %i.od, %i.ok
  %i.om = fsub double 1.000000e+00, %i.da
  %i.on = tail call noundef double @pow(double noundef %i.om, double noundef 2.000000e+00) #12
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.op = load double, ptr %i.oo, align 8, !tbaa !326
  %i.oq = tail call noundef double @pow(double noundef %i.op, double noundef 2.000000e+00) #12
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.os = load double, ptr %i.or, align 8, !tbaa !327
  %i.ot = tail call noundef double @pow(double noundef %i.os, double noundef 2.000000e+00) #12
  %i.ou = fadd double %i.oq, %i.ot
  %i.ov = fmul double %i.on, %i.ou                ; 2 uses
  %i.ow = load ptr, ptr %i.eu, align 8, !tbaa !20 ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 88 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !321
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 48 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !314
  %.not.i107 = icmp eq i32 %i.oy, %i.pa
  br i1 %.not.i107, label %._crit_edge.i108, label %bb.q

._crit_edge.i108:                                 ; preds = %bb.p
  %.phi.trans.insert.i109 = getelementptr inbounds nuw i8, ptr %i.ow, i64 96
  %.pre.i110 = load double, ptr %.phi.trans.insert.i109, align 8, !tbaa !322
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.pb = load ptr, ptr %i.ow, align 8, !tbaa !10
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 48
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = tail call noundef double %i.pd(ptr noundef nonnull align 8 dereferenceable(205) %i.ow), !inline_history !324 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ow, i64 96
  store double %i.pe, ptr %i.pf, align 8, !tbaa !322
  %i.pg = load i32, ptr %i.oz, align 8, !tbaa !314
  store i32 %i.pg, ptr %i.ox, align 8, !tbaa !321
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit

_ZNK5Ipopt6Vector4Nrm2Ev.exit:                    ; preds = %._crit_edge.i108, %bb.q
  %i.ph = phi double [ %.pre.i110, %._crit_edge.i108 ], [ %i.pe, %bb.q ]
  %i.pi = tail call noundef double @pow(double noundef %i.ph, double noundef 2.000000e+00) #12
  %i.pj = load ptr, ptr %i.fc, align 8, !tbaa !20 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 88 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !321
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 48 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !314
  %.not.i111 = icmp eq i32 %i.pl, %i.pn
  br i1 %.not.i111, label %._crit_edge.i112, label %bb.r

._crit_edge.i112:                                 ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit
  %.phi.trans.insert.i113 = getelementptr inbounds nuw i8, ptr %i.pj, i64 96
  %.pre.i114 = load double, ptr %.phi.trans.insert.i113, align 8, !tbaa !322
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit115

bb.r:                                             ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit
  %i.po = load ptr, ptr %i.pj, align 8, !tbaa !10
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = tail call noundef double %i.pq(ptr noundef nonnull align 8 dereferenceable(205) %i.pj), !inline_history !324 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pj, i64 96
  store double %i.pr, ptr %i.ps, align 8, !tbaa !322
  %i.pt = load i32, ptr %i.pm, align 8, !tbaa !314
  store i32 %i.pt, ptr %i.pk, align 8, !tbaa !321
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit115

_ZNK5Ipopt6Vector4Nrm2Ev.exit115:                 ; preds = %._crit_edge.i112, %bb.r
  %i.pu = phi double [ %.pre.i114, %._crit_edge.i112 ], [ %i.pr, %bb.r ]
  %i.pv = tail call noundef double @pow(double noundef %i.pu, double noundef 2.000000e+00) #12
  %i.pw = fadd double %i.pi, %i.pv
  %i.px = load ptr, ptr %i.fk, align 8, !tbaa !20 ; 6 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 88 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !321
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 48 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !314
  %.not.i116 = icmp eq i32 %i.pz, %i.qb
  br i1 %.not.i116, label %._crit_edge.i117, label %bb.s

._crit_edge.i117:                                 ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit115
  %.phi.trans.insert.i118 = getelementptr inbounds nuw i8, ptr %i.px, i64 96
  %.pre.i119 = load double, ptr %.phi.trans.insert.i118, align 8, !tbaa !322
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit120

bb.s:                                             ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit115
  %i.qc = load ptr, ptr %i.px, align 8, !tbaa !10
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 48
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = tail call noundef double %i.qe(ptr noundef nonnull align 8 dereferenceable(205) %i.px), !inline_history !324 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.px, i64 96
  store double %i.qf, ptr %i.qg, align 8, !tbaa !322
  %i.qh = load i32, ptr %i.qa, align 8, !tbaa !314
  store i32 %i.qh, ptr %i.py, align 8, !tbaa !321
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit120

_ZNK5Ipopt6Vector4Nrm2Ev.exit120:                 ; preds = %._crit_edge.i117, %bb.s
  %i.qi = phi double [ %.pre.i119, %._crit_edge.i117 ], [ %i.qf, %bb.s ]
  %i.qj = tail call noundef double @pow(double noundef %i.qi, double noundef 2.000000e+00) #12
  %i.qk = fadd double %i.pw, %i.qj
  %i.ql = load ptr, ptr %i.fs, align 8, !tbaa !20 ; 6 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 88 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !321
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 48 ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !314
  %.not.i121 = icmp eq i32 %i.qn, %i.qp
  br i1 %.not.i121, label %._crit_edge.i122, label %bb.t

._crit_edge.i122:                                 ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit120
  %.phi.trans.insert.i123 = getelementptr inbounds nuw i8, ptr %i.ql, i64 96
  %.pre.i124 = load double, ptr %.phi.trans.insert.i123, align 8, !tbaa !322
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit125

bb.t:                                             ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit120
  %i.qq = load ptr, ptr %i.ql, align 8, !tbaa !10
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 48
  %i.qs = load ptr, ptr %i.qr, align 8
  %i.qt = tail call noundef double %i.qs(ptr noundef nonnull align 8 dereferenceable(205) %i.ql), !inline_history !324 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ql, i64 96
  store double %i.qt, ptr %i.qu, align 8, !tbaa !322
  %i.qv = load i32, ptr %i.qo, align 8, !tbaa !314
  store i32 %i.qv, ptr %i.qm, align 8, !tbaa !321
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit125

_ZNK5Ipopt6Vector4Nrm2Ev.exit125:                 ; preds = %._crit_edge.i122, %bb.t
  %i.qw = phi double [ %.pre.i124, %._crit_edge.i122 ], [ %i.qt, %bb.t ]
  %i.qx = tail call noundef double @pow(double noundef %i.qw, double noundef 2.000000e+00) #12
  %i.qy = fadd double %i.qk, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 256
  %24 = load i32, ptr %i.qz, align 8, !tbaa !187
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !210 ; 2 uses
  %i.rc = icmp sgt i32 %i.rb, 0
  %i.rd = uitofp nneg i32 %i.rb to double
  %i.re = fdiv double %i.ov, %i.rd
  %.179 = select i1 %i.rc, double %i.re, double %i.ov
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !255
  %25 = insertelement <2 x i32> poison, i32 %24, i64 0
  %i.rh = insertelement <2 x i32> %25, i32 %i.rg, i64 1
  %i.ri = sitofp <2 x i32> %i.rh to <2 x double>
  %i.rj = insertelement <2 x double> poison, double %i.ol, i64 0
  %i.rk = insertelement <2 x double> %i.rj, double %i.qy, i64 1
  %i.rl = fdiv <2 x double> %i.rk, %i.ri
  br label %bb.ae

bb.u:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit91
  %i.rm = fsub double 1.000000e+00, %i.dg
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !330 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !332 ; 2 uses
  %i.rr = fcmp olt double %i.ro, %i.rq
  %.sroa.speculated.i = select i1 %i.rr, double %i.rq, double %i.ro
  %i.rs = fmul double %i.rm, %.sroa.speculated.i
  %i.rt = fsub double 1.000000e+00, %i.da
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !333 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !334 ; 2 uses
  %i.ry = fcmp olt double %i.rv, %i.rx
  %.sroa.speculated.i126 = select i1 %i.ry, double %i.rx, double %i.rv
  %i.rz = fmul double %i.rt, %.sroa.speculated.i126
  %i.sa = load ptr, ptr %i.eu, align 8, !tbaa !20 ; 6 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 120 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !328
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 48 ; 2 uses
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !314
  %.not.i127 = icmp eq i32 %i.sc, %i.se
  br i1 %.not.i127, label %._crit_edge.i128, label %bb.v

._crit_edge.i128:                                 ; preds = %bb.u
  %.phi.trans.insert.i129 = getelementptr inbounds nuw i8, ptr %i.sa, i64 128
  %.pre.i130 = load double, ptr %.phi.trans.insert.i129, align 8, !tbaa !329
  br label %_ZNK5Ipopt6Vector4AmaxEv.exit

bb.v:                                             ; preds = %bb.u
  %i.sf = load ptr, ptr %i.sa, align 8, !tbaa !10
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 64
  %i.sh = load ptr, ptr %i.sg, align 8
  %i.si = tail call noundef double %i.sh(ptr noundef nonnull align 8 dereferenceable(205) %i.sa), !inline_history !331 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 128
  store double %i.si, ptr %i.sj, align 8, !tbaa !329
  %i.sk = load i32, ptr %i.sd, align 8, !tbaa !314
  store i32 %i.sk, ptr %i.sb, align 8, !tbaa !328
  br label %_ZNK5Ipopt6Vector4AmaxEv.exit

_ZNK5Ipopt6Vector4AmaxEv.exit:                    ; preds = %._crit_edge.i128, %bb.v
  %i.sl = phi double [ %.pre.i130, %._crit_edge.i128 ], [ %i.si, %bb.v ] ; 2 uses
  %i.sm = load ptr, ptr %i.fc, align 8, !tbaa !20 ; 6 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 120 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !328
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 48 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !314
  %.not.i131 = icmp eq i32 %i.so, %i.sq
  br i1 %.not.i131, label %._crit_edge.i132, label %bb.w

._crit_edge.i132:                                 ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit
  %.phi.trans.insert.i133 = getelementptr inbounds nuw i8, ptr %i.sm, i64 128
  %.pre.i134 = load double, ptr %.phi.trans.insert.i133, align 8, !tbaa !329
  br label %_ZNK5Ipopt6Vector4AmaxEv.exit135

bb.w:                                             ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit
  %i.sr = load ptr, ptr %i.sm, align 8, !tbaa !10
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 64
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = tail call noundef double %i.st(ptr noundef nonnull align 8 dereferenceable(205) %i.sm), !inline_history !331 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sm, i64 128
  store double %i.su, ptr %i.sv, align 8, !tbaa !329
  %i.sw = load i32, ptr %i.sp, align 8, !tbaa !314
  store i32 %i.sw, ptr %i.sn, align 8, !tbaa !328
  br label %_ZNK5Ipopt6Vector4AmaxEv.exit135

_ZNK5Ipopt6Vector4AmaxEv.exit135:                 ; preds = %._crit_edge.i132, %bb.w
  %i.sx = phi double [ %.pre.i134, %._crit_edge.i132 ], [ %i.su, %bb.w ] ; 2 uses
  %i.sy = load ptr, ptr %i.fk, align 8, !tbaa !20 ; 6 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 120 ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !328
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 48 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !314
  %.not.i136 = icmp eq i32 %i.ta, %i.tc
  br i1 %.not.i136, label %._crit_edge.i137, label %bb.x

._crit_edge.i137:                                 ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit135
  %.phi.trans.insert.i138 = getelementptr inbounds nuw i8, ptr %i.sy, i64 128
  %.pre.i139 = load double, ptr %.phi.trans.insert.i138, align 8, !tbaa !329
  br label %_ZNK5Ipopt6Vector4AmaxEv.exit140

bb.x:                                             ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit135
  %i.td = load ptr, ptr %i.sy, align 8, !tbaa !10
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 64
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = tail call noundef double %i.tf(ptr noundef nonnull align 8 dereferenceable(205) %i.sy), !inline_history !331 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sy, i64 128
  store double %i.tg, ptr %i.th, align 8, !tbaa !329
  %i.ti = load i32, ptr %i.tb, align 8, !tbaa !314
  store i32 %i.ti, ptr %i.sz, align 8, !tbaa !328
  br label %_ZNK5Ipopt6Vector4AmaxEv.exit140

_ZNK5Ipopt6Vector4AmaxEv.exit140:                 ; preds = %._crit_edge.i137, %bb.x
  %i.tj = phi double [ %.pre.i139, %._crit_edge.i137 ], [ %i.tg, %bb.x ] ; 2 uses
  %i.tk = load ptr, ptr %i.fs, align 8, !tbaa !20 ; 6 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 120 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !328
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 48 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !314
  %.not.i141 = icmp eq i32 %i.tm, %i.to
  br i1 %.not.i141, label %._crit_edge.i142, label %bb.y

._crit_edge.i142:                                 ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit140
  %.phi.trans.insert.i143 = getelementptr inbounds nuw i8, ptr %i.tk, i64 128
  %.pre.i144 = load double, ptr %.phi.trans.insert.i143, align 8, !tbaa !329
  br label %_ZNK5Ipopt6Vector4AmaxEv.exit145

bb.y:                                             ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit140
  %i.tp = load ptr, ptr %i.tk, align 8, !tbaa !10
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 64
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = tail call noundef double %i.tr(ptr noundef nonnull align 8 dereferenceable(205) %i.tk), !inline_history !331 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tk, i64 128
  store double %i.ts, ptr %i.tt, align 8, !tbaa !329
  %i.tu = load i32, ptr %i.tn, align 8, !tbaa !314
  store i32 %i.tu, ptr %i.tl, align 8, !tbaa !328
  br label %_ZNK5Ipopt6Vector4AmaxEv.exit145

_ZNK5Ipopt6Vector4AmaxEv.exit145:                 ; preds = %._crit_edge.i142, %bb.y
  %i.tv = phi double [ %.pre.i144, %._crit_edge.i142 ], [ %i.ts, %bb.y ] ; 2 uses
  %i.tw = fcmp olt double %i.sl, %i.sx
  %i.tx = fcmp olt double %i.tj, %i.tv
  %i.ty = select i1 %i.tw, double %i.sx, double %i.sl ; 2 uses
  %i.tz = select i1 %i.tx, double %i.tv, double %i.tj ; 2 uses
  %i.ua = fcmp olt double %i.ty, %i.tz
  %i.ub = select i1 %i.ua, double %i.tz, double %i.ty
  %i.uc = insertelement <2 x double> poison, double %i.rs, i64 0
  %i.ud = insertelement <2 x double> %i.uc, double %i.ub, i64 1
  br label %bb.ae

bb.z:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit91
  %i.ue = fsub double 1.000000e+00, %i.dg
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !323
  %i.uh = tail call noundef double @pow(double noundef %i.ug, double noundef 2.000000e+00) #12
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !325
  %i.uk = tail call noundef double @pow(double noundef %i.uj, double noundef 2.000000e+00) #12
  %i.ul = fadd double %i.uh, %i.uk
  %i.um = tail call double @sqrt(double noundef %i.ul) #12
  %i.un = fmul double %i.ue, %i.um
  %i.uo = fsub double 1.000000e+00, %i.da
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.uq = load double, ptr %i.up, align 8, !tbaa !326
  %i.ur = tail call noundef double @pow(double noundef %i.uq, double noundef 2.000000e+00) #12
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ut = load double, ptr %i.us, align 8, !tbaa !327
  %i.uu = tail call noundef double @pow(double noundef %i.ut, double noundef 2.000000e+00) #12
  %i.uv = fadd double %i.ur, %i.uu
  %i.uw = tail call double @sqrt(double noundef %i.uv) #12
  %i.ux = fmul double %i.uo, %i.uw                ; 2 uses
  %i.uy = load ptr, ptr %i.eu, align 8, !tbaa !20 ; 6 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 88 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !321
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 48 ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !314
  %.not.i146 = icmp eq i32 %i.va, %i.vc
  br i1 %.not.i146, label %._crit_edge.i147, label %bb.aa

._crit_edge.i147:                                 ; preds = %bb.z
  %.phi.trans.insert.i148 = getelementptr inbounds nuw i8, ptr %i.uy, i64 96
  %.pre.i149 = load double, ptr %.phi.trans.insert.i148, align 8, !tbaa !322
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit150

bb.aa:                                            ; preds = %bb.z
  %i.vd = load ptr, ptr %i.uy, align 8, !tbaa !10
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 48
  %i.vf = load ptr, ptr %i.ve, align 8
  %i.vg = tail call noundef double %i.vf(ptr noundef nonnull align 8 dereferenceable(205) %i.uy), !inline_history !324 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 96
  store double %i.vg, ptr %i.vh, align 8, !tbaa !322
  %i.vi = load i32, ptr %i.vb, align 8, !tbaa !314
  store i32 %i.vi, ptr %i.uz, align 8, !tbaa !321
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit150

_ZNK5Ipopt6Vector4Nrm2Ev.exit150:                 ; preds = %._crit_edge.i147, %bb.aa
  %i.vj = phi double [ %.pre.i149, %._crit_edge.i147 ], [ %i.vg, %bb.aa ]
  %i.vk = tail call noundef double @pow(double noundef %i.vj, double noundef 2.000000e+00) #12
  %i.vl = load ptr, ptr %i.fc, align 8, !tbaa !20 ; 6 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 88 ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !321
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 48 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !314
  %.not.i151 = icmp eq i32 %i.vn, %i.vp
  br i1 %.not.i151, label %._crit_edge.i152, label %bb.ab

._crit_edge.i152:                                 ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit150
  %.phi.trans.insert.i153 = getelementptr inbounds nuw i8, ptr %i.vl, i64 96
  %.pre.i154 = load double, ptr %.phi.trans.insert.i153, align 8, !tbaa !322
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit155

bb.ab:                                            ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit150
end_hunk_0
