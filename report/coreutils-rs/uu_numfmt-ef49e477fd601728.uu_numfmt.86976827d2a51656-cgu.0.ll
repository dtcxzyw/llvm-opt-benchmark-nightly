Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_numfmt-ef49e477fd601728.uu_numfmt.86976827d2a51656-cgu.0?download=true
inline.NumInlined: 1038
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format13format_string:bb.a
  %.sroa.17.0..sroa.17.0..sroa.17.32..i.i = phi double [ f0x4270000000000000, %bb.bd ], [ 1.000000e+12, %bb.ba ] ; 2 uses
  %.sroa.22.0..sroa.22.0..sroa.22.40..i.i = phi double [ f0x4310000000000000, %bb.bd ], [ 1.000000e+15, %bb.ba ] ; 2 uses
  %.sroa.27.0..sroa.27.0..sroa.27.48..i.i = phi double [ f0x43B0000000000000, %bb.bd ], [ 1.000000e+18, %bb.ba ] ; 2 uses
  %.sroa.32.0..sroa.32.0..sroa.32.56..i.i = phi double [ f0x4450000000000000, %bb.bd ], [ 1.000000e+21, %bb.ba ] ; 2 uses
  %.sroa.37.0..sroa.37.0..sroa.37.64..i.i = phi double [ f0x44F0000000000000, %bb.bd ], [ f0x44EA784379D99DB4, %bb.ba ] ; 2 uses
  %.sroa.42.0..sroa.42.0..sroa.42.72..i.i = phi double [ f0x4590000000000000, %bb.bd ], [ 1.000000e+27, %bb.ba ] ; 2 uses
  %.sroa.47.0..sroa.47.0..sroa.47.80..i.i = phi double [ f0x4630000000000000, %bb.bd ], [ 1.000000e+30, %bb.ba ] ; 3 uses
  %.sroa.02.0.i.i = phi i8 [ %.val126, %bb.bd ], [ 0, %bb.ba ]
  store double %storemerge159.i.i, ptr %.sroa.2.i.i, align 8, !noalias !2081
  store double %.sroa.7.0..sroa.7.0..sroa.7.16..i.i, ptr %.sroa.7.i.i, align 8, !noalias !2081
  store double %.sroa.12.0..sroa.12.0..sroa.12.24..i.i, ptr %.sroa.12.i.i, align 8, !noalias !2081
  store double %.sroa.17.0..sroa.17.0..sroa.17.32..i.i, ptr %.sroa.17.i.i, align 8, !noalias !2081
  store double %.sroa.22.0..sroa.22.0..sroa.22.40..i.i, ptr %.sroa.22.i.i, align 8, !noalias !2081
  store double %.sroa.27.0..sroa.27.0..sroa.27.48..i.i, ptr %.sroa.27.i.i, align 8, !noalias !2081
  store double %.sroa.32.0..sroa.32.0..sroa.32.56..i.i, ptr %.sroa.32.i.i, align 8, !noalias !2081
  store double %.sroa.37.0..sroa.37.0..sroa.37.64..i.i, ptr %.sroa.37.i.i, align 8, !noalias !2081
  store double %.sroa.42.0..sroa.42.0..sroa.42.72..i.i, ptr %.sroa.42.i.i, align 8, !noalias !2081
  store double %.sroa.47.0..sroa.47.0..sroa.47.80..i.i, ptr %.sroa.47.i.i, align 8, !noalias !2081
  %i.mv = fadd double %storemerge159.i.i, -1.000000e+00
  %i.mw = fcmp ugt double %i.lw, %i.mv
  br i1 %i.mw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mx = fcmp olt double %i.lw, %.sroa.7.0..sroa.7.0..sroa.7.16..i.i
  br i1 %i.mx, label %bb.cc, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.my = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %i.lv, ptr %i.my, align 8, !noalias !2056
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 -1, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !2056
  br label %bb.dq

bb.bs:                                            ; preds = %bb.bq
  %i.mz = fcmp olt double %i.lw, %.sroa.12.0..sroa.12.0..sroa.12.24..i.i
  br i1 %i.mz, label %bb.cc, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.na = fcmp olt double %i.lw, %.sroa.17.0..sroa.17.0..sroa.17.32..i.i
  br i1 %i.na, label %bb.cc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nb = fcmp olt double %i.lw, %.sroa.22.0..sroa.22.0..sroa.22.40..i.i
  br i1 %i.nb, label %bb.cc, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nc = fcmp olt double %i.lw, %.sroa.27.0..sroa.27.0..sroa.27.48..i.i
  br i1 %i.nc, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nd = fcmp olt double %i.lw, %.sroa.32.0..sroa.32.0..sroa.32.56..i.i
  br i1 %i.nd, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ne = fcmp olt double %i.lw, %.sroa.37.0..sroa.37.0..sroa.37.64..i.i
  br i1 %i.ne, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nf = fcmp olt double %i.lw, %.sroa.42.0..sroa.42.0..sroa.42.72..i.i
  br i1 %i.nf, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ng = fcmp olt double %i.lw, %.sroa.47.0..sroa.47.0..sroa.47.80..i.i
  br i1 %i.ng, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nh = fmul nnan double %.sroa.47.0..sroa.47.0..sroa.47.80..i.i, 1.000000e+03
  %i.ni = fcmp olt double %i.lw, %i.nh
  br i1 %i.ni, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.nj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 27) #26, !noalias !2072
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %i.nk = phi i1 [ true, %bb.bz ], [ true, %bb.bq ], [ true, %bb.bs ], [ true, %bb.bt ], [ true, %bb.bu ], [ true, %bb.bv ], [ true, %bb.bw ], [ true, %bb.bx ], [ true, %bb.by ], [ false, %bb.ca ]
  %.sroa.05.0.sroa.phi.i.i = phi ptr [ %i.mf, %bb.bz ], [ %i.lx, %bb.bq ], [ %i.ly, %bb.bs ], [ %i.lz, %bb.bt ], [ %i.ma, %bb.bu ], [ %i.mb, %bb.bv ], [ %i.mc, %bb.bw ], [ %i.md, %bb.bx ], [ %i.me, %bb.by ], [ %.sroa.05.0.sroa.gep84.i.i, %bb.ca ] ; 2 uses
  %.sroa.05.0.sroa.phi96.i.i = phi ptr [ %.sroa.42.i.i, %bb.bz ], [ %.sroa.2.i.i, %bb.bq ], [ %.sroa.7.i.i, %bb.bs ], [ %.sroa.12.i.i, %bb.bt ], [ %.sroa.17.i.i, %bb.bu ], [ %.sroa.22.i.i, %bb.bv ], [ %.sroa.27.i.i, %bb.bw ], [ %.sroa.32.i.i, %bb.bx ], [ %.sroa.37.i.i, %bb.by ], [ %.sroa.47.i.i, %bb.ca ] ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.021.0, 0
  br i1 %.not.i.i, label %bb.cd, label %bb.cz

bb.cd:                                            ; preds = %bb.cc
  %i.nl = load double, ptr %.sroa.05.0.sroa.phi96.i.i, align 8, !noalias !2081, !noundef !4
  %i.nm = fdiv double %i.lv, %i.nl                ; 11 uses
  %i.nn = tail call double @llvm.fabs.f64(double %i.nm)
  %i.no = fcmp olt double %i.nn, 1.000000e+01
  br i1 %i.no, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.cg
    i8 1, label %bb.ch
    i8 2, label %bb.ci
    i8 3, label %bb.cj
    i8 4, label %bb.ck
  ]

bb.cf:                                            ; preds = %bb.cd
  %i.np = fmul nnan double %i.nm, 1.000000e+01    ; 9 uses
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.cp
    i8 1, label %bb.cq
    i8 2, label %bb.cr
    i8 3, label %bb.cs
    i8 4, label %bb.ct
  ]

default.unreachable:                              ; preds = %.split149.i, %bb.dt, %bb.da, %bb.cf, %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.nq = tail call double @llvm.ceil.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.ch:                                            ; preds = %bb.ce
  %i.nr = tail call double @llvm.floor.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.ci:                                            ; preds = %bb.ce
  %i.ns = fcmp olt double %i.nm, 0.000000e+00
  br i1 %i.ns, label %bb.cm, label %bb.cl

bb.cj:                                            ; preds = %bb.ce
  %i.nt = fcmp olt double %i.nm, 0.000000e+00
  br i1 %i.nt, label %bb.co, label %bb.cn

bb.ck:                                            ; preds = %bb.ce
  %i.nu = tail call double @llvm.round.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cl:                                            ; preds = %bb.ci
  %i.nv = tail call double @llvm.ceil.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cm:                                            ; preds = %bb.ci
  %i.nw = tail call double @llvm.floor.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cn:                                            ; preds = %bb.cj
  %i.nx = tail call double @llvm.floor.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.co:                                            ; preds = %bb.cj
  %i.ny = tail call double @llvm.ceil.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cp:                                            ; preds = %bb.cf
  %i.nz = tail call double @llvm.ceil.f64(double %i.np)
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cf
  %i.oa = tail call double @llvm.floor.f64(double %i.np)
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cf
  %i.ob = fcmp olt double %i.np, 0.000000e+00
  br i1 %i.ob, label %bb.cw, label %bb.cv

bb.cs:                                            ; preds = %bb.cf
  %i.oc = fcmp olt double %i.np, 0.000000e+00
  br i1 %i.oc, label %bb.cy, label %bb.cx

bb.ct:                                            ; preds = %bb.cf
  %i.od = tail call double @llvm.round.f64(double %i.np)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.ct, %bb.cq, %bb.cp
  %.sroa.01.0.i.i192.i = phi double [ %i.nz, %bb.cp ], [ %i.oa, %bb.cq ], [ %i.og, %bb.cw ], [ %i.of, %bb.cv ], [ %i.oi, %bb.cy ], [ %i.oh, %bb.cx ], [ %i.od, %bb.ct ]
  %i.oe = fdiv double %.sroa.01.0.i.i192.i, 1.000000e+01
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cv:                                            ; preds = %bb.cr
  %i.of = tail call double @llvm.ceil.f64(double %i.np)
  br label %bb.cu

bb.cw:                                            ; preds = %bb.cr
  %i.og = tail call double @llvm.floor.f64(double %i.np)
  br label %bb.cu

bb.cx:                                            ; preds = %bb.cs
  %i.oh = tail call double @llvm.floor.f64(double %i.np)
  br label %bb.cu

bb.cy:                                            ; preds = %bb.cs
  %i.oi = tail call double @llvm.ceil.f64(double %i.np)
  br label %bb.cu

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i: ; preds = %bb.dg, %bb.cz, %bb.cu, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %bb.cg
  %.sroa.016.0.i.i = phi double [ %i.nu, %bb.ck ], [ %i.oe, %bb.cu ], [ %i.nq, %bb.cg ], [ %i.nr, %bb.ch ], [ %i.nw, %bb.cm ], [ %i.nv, %bb.cl ], [ %i.ny, %bb.co ], [ %i.nx, %bb.cn ], [ %i.ox, %bb.dg ], [ %i.on, %bb.cz ] ; 3 uses
  %i.oj = tail call double @llvm.fabs.f64(double %.sroa.016.0.i.i)
  %i.ok = fcmp ult double %i.oj, %storemerge159.i.i
  br i1 %i.ok, label %bb.dm, label %bb.dl

bb.cz:                                            ; preds = %bb.cc
  %i.ol = icmp eq i8 %narrow.i.i, 2
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.021.0, i64 3)
  %.sroa.015.0.i.i = select i1 %i.ol, i64 %..i.i.i, i64 %.sroa.021.0
  %i.om = load double, ptr %.sroa.05.0.sroa.phi96.i.i, align 8, !noalias !2081, !noundef !4
  %i.on = fdiv double %i.lv, %i.om                ; 2 uses
  %i.oo = uitofp nneg i64 %.sroa.015.0.i.i to double
  %i.op = tail call double @llvm.pow.f64(double 1.000000e+01, double %i.oo) ; 3 uses
  %i.oq = fcmp ueq double %i.op, +inf
  br i1 %i.oq, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.or = fmul double %i.op, %i.on                ; 9 uses
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.db
    i8 1, label %bb.dc
    i8 2, label %bb.dd
    i8 3, label %bb.de
    i8 4, label %bb.df
  ]

bb.db:                                            ; preds = %bb.da
  %i.os = tail call double @llvm.ceil.f64(double %i.or)
  br label %bb.dg

bb.dc:                                            ; preds = %bb.da
  %i.ot = tail call double @llvm.floor.f64(double %i.or)
  br label %bb.dg

bb.dd:                                            ; preds = %bb.da
  %i.ou = fcmp olt double %i.or, 0.000000e+00
  br i1 %i.ou, label %bb.di, label %bb.dh

bb.de:                                            ; preds = %bb.da
  %i.ov = fcmp olt double %i.or, 0.000000e+00
  br i1 %i.ov, label %bb.dk, label %bb.dj

bb.df:                                            ; preds = %bb.da
  %i.ow = tail call double @llvm.round.f64(double %i.or)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.dc, %bb.db
  %.sroa.01.0.i74.i.i = phi double [ %i.os, %bb.db ], [ %i.ot, %bb.dc ], [ %i.oz, %bb.di ], [ %i.oy, %bb.dh ], [ %i.pb, %bb.dk ], [ %i.pa, %bb.dj ], [ %i.ow, %bb.df ]
  %i.ox = fdiv double %.sroa.01.0.i74.i.i, %i.op
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.dh:                                            ; preds = %bb.dd
  %i.oy = tail call double @llvm.ceil.f64(double %i.or)
  br label %bb.dg

bb.di:                                            ; preds = %bb.dd
  %i.oz = tail call double @llvm.floor.f64(double %i.or)
  br label %bb.dg

bb.dj:                                            ; preds = %bb.de
  %i.pa = tail call double @llvm.floor.f64(double %i.or)
  br label %bb.dg

bb.dk:                                            ; preds = %bb.de
  %i.pb = tail call double @llvm.ceil.f64(double %i.or)
  br label %bb.dg

bb.dl:                                            ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i
  br i1 %i.nk, label %bb.do, label %bb.dp

bb.dm:                                            ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i
  %i.pc = getelementptr i8, ptr %.sroa.05.0.sroa.phi.i.i, i64 -8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.do, %bb.dm
  %.sink180.i.i = phi double [ %i.pe, %bb.do ], [ %.sroa.016.0.i.i, %bb.dm ] ; 2 uses
  %.sink.in.i.i = phi ptr [ %.sroa.05.0.sroa.phi.i.i, %bb.do ], [ %i.pc, %bb.dm ]
  %.sink.i.i = load i64, ptr %.sink.in.i.i, align 8, !range !24, !noalias !2081, !noundef !4 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %.sink180.i.i, ptr %i.pd, align 8, !noalias !2056
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sink.i.i, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !2056
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i8 %.sroa.02.0.i.i, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !2056
  br label %bb.dq

bb.do:                                            ; preds = %bb.dl
  %i.pe = fdiv double %.sroa.016.0.i.i, %storemerge159.i.i
  br label %bb.dn

bb.dp:                                            ; preds = %bb.dl
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 10, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #27, !noalias !2083
  unreachable

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread: ; preds = %bb.bo, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2081
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.i.i)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.032.0.copyload.i = load double, ptr %i.pf, align 8, !noalias !2056
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.433.0.copyload.i = load i64, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !2056
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.534.0.copyload.i = load i8, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !2056
  %.sroa.14.sroa.0.0.copyload233 = load i56, ptr %i.gb, align 1, !noalias !2079
  br label %bb.eq

bb.dq:                                            ; preds = %bb.dn, %bb.br, %bb.be
  %.sroa.425.0.copyload.i = phi i64 [ %.sink.i.i, %bb.dn ], [ -1, %bb.br ], [ -1, %bb.be ] ; 5 uses
  %.sroa.024.0.copyload.i = phi double [ %.sink180.i.i, %bb.dn ], [ %i.lv, %bb.br ], [ %i.lv, %bb.be ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2081
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.i.i)
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.526.0.copyload.i = load i8, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !2056 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2056
  store double %.sroa.024.0.copyload.i, ptr %i.ax, align 8, !noalias !2056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2056
  %i.pg = tail call { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() #26, !noalias !2072 ; 2 uses
  %i.ph = extractvalue { ptr, i64 } %i.pg, 0
  %i.pi = extractvalue { ptr, i64 } %i.pg, 1
  store ptr %i.ph, ptr %i.aw, align 8, !noalias !2056
  %i.pj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.pi, ptr %i.pj, align 8, !noalias !2056
  %.not168.i = icmp eq i64 %.sroa.425.0.copyload.i, -1
  br i1 %.not168.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pk = add i64 %.sroa.021.0, -1
  %or.cond2.i = icmp ult i64 %i.pk, 65535
  br i1 %or.cond2.i, label %.split165.i, label %bb.eo

bb.ds:                                            ; preds = %bb.dq
  %i.pl = icmp ult i64 %.sroa.021.0, 65536        ; 2 uses
  %or.cond.i = and i1 %i.pl, %i.ge
  br i1 %or.cond.i, label %.split.i, label %bb.ee

.split.i:                                         ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2056
  %i.pm = uitofp nneg i64 %.sroa.021.0 to double
  %i.pn = tail call double @llvm.pow.f64(double 1.000000e+01, double %i.pm) ; 3 uses
  %i.po = fcmp ueq double %i.pn, +inf
  br i1 %i.po, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit.i, label %bb.dt

bb.dt:                                            ; preds = %.split.i
  %i.pp = fmul double %i.pn, %.sroa.024.0.copyload.i ; 9 uses
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.du
    i8 1, label %bb.dv
    i8 2, label %bb.dw
    i8 3, label %bb.dx
    i8 4, label %bb.dy
  ]

bb.du:                                            ; preds = %bb.dt
  %i.pq = tail call double @llvm.ceil.f64(double %i.pp)
  br label %bb.dz

bb.dv:                                            ; preds = %bb.dt
  %i.pr = tail call double @llvm.floor.f64(double %i.pp)
  br label %bb.dz

bb.dw:                                            ; preds = %bb.dt
  %i.ps = fcmp olt double %i.pp, 0.000000e+00
  br i1 %i.ps, label %bb.eb, label %bb.ea

bb.dx:                                            ; preds = %bb.dt
  %i.pt = fcmp olt double %i.pp, 0.000000e+00
  br i1 %i.pt, label %bb.ed, label %bb.ec

bb.dy:                                            ; preds = %bb.dt
  %i.pu = tail call double @llvm.round.f64(double %i.pp)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dy, %bb.dv, %bb.du
  %.sroa.01.0.i.i = phi double [ %i.pq, %bb.du ], [ %i.pr, %bb.dv ], [ %i.px, %bb.eb ], [ %i.pw, %bb.ea ], [ %i.pz, %bb.ed ], [ %i.py, %bb.ec ], [ %i.pu, %bb.dy ]
  %i.pv = fdiv double %.sroa.01.0.i.i, %i.pn
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit.i

bb.ea:                                            ; preds = %bb.dw
  %i.pw = tail call double @llvm.ceil.f64(double %i.pp)
  br label %bb.dz

bb.eb:                                            ; preds = %bb.dw
  %i.px = tail call double @llvm.floor.f64(double %i.pp)
  br label %bb.dz

bb.ec:                                            ; preds = %bb.dx
  %i.py = tail call double @llvm.floor.f64(double %i.pp)
  br label %bb.dz

bb.ed:                                            ; preds = %bb.dx
  %i.pz = tail call double @llvm.ceil.f64(double %i.pp)
  br label %bb.dz

end_hunk_0
begin_hunk_1_@_RNvXs_NtCsbyqtxyC5WYI_9uu_numfmt7optionsNtB4_13FormatOptionsNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_str:bb.a
  %i.cf = shl nuw nsw i32 %i.bi, 18
  %i.cg = and i32 %i.cf, 1835008
  %i.ch = shl nuw nsw i32 %i.by, 6
  %i.ci = and i8 %i.ce, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.cg
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i, %bb.b
  %.sroa.0.18.ph = phi ptr [ %i.bk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i ], [ %i.bt, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i ], [ %i.cd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i ], [ %i.be, %bb.b ] ; 7 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.bp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i ], [ %i.ca, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i ], [ %i.cl, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i ], [ %i.br, %bb.b ] ; 12 uses
  %i.cm = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp eq i32 %.sroa.4.0.i.ph, 37
  br i1 %i.cn, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.0.18.ph, %i.at
  br i1 %.not.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.18.ph, i64 1 ; 3 uses
  %i.cp = load i8, ptr %.sroa.0.18.ph, align 1, !noalias !2976, !noundef !4 ; 5 uses
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %bb.f, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i: ; preds = %bb.e
  %i.cr = and i8 %i.cp, 31
  %i.cs = zext nneg i8 %i.cr to i32               ; 3 uses
  %i.ct = icmp ne ptr %i.co, %i.at
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.18.ph, i64 2 ; 3 uses
  %i.cv = load i8, ptr %i.co, align 1, !noalias !2976, !noundef !4
  %i.cw = shl nuw nsw i32 %i.cs, 6
  %i.cx = and i8 %i.cv, 63
  %i.cy = zext nneg i8 %i.cx to i32               ; 2 uses
  %i.cz = or disjoint i32 %i.cw, %i.cy
  %i.da = icmp samesign ugt i8 %i.cp, -33
  br i1 %i.da, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit

bb.f:                                             ; preds = %bb.e
  %i.db = zext nneg i8 %i.cp to i32
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i
  %i.dc = icmp ne ptr %i.cu, %i.at
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.18.ph, i64 3 ; 3 uses
  %i.de = load i8, ptr %i.cu, align 1, !noalias !2976, !noundef !4
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh            ; 2 uses
  %i.dj = shl nuw nsw i32 %i.cs, 12
  %i.dk = or disjoint i32 %i.di, %i.dj
  %i.dl = icmp samesign ugt i8 %i.cp, -17
  br i1 %i.dl, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i
  %i.dm = icmp ne ptr %i.dd, %i.at
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.18.ph, i64 4
  %i.do = load i8, ptr %i.dd, align 1, !noalias !2976, !noundef !4
  %i.dp = shl nuw nsw i32 %i.cs, 18
  %i.dq = and i32 %i.dp, 1835008
  %i.dr = shl nuw nsw i32 %i.di, 6
  %i.ds = and i8 %i.do, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt
  %i.dv = or disjoint i32 %i.du, %i.dq
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i, %bb.f, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i
  %.sroa.0.19 = phi ptr [ %i.cu, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i ], [ %i.co, %bb.f ], [ %i.dn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i ], [ %i.dd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i ] ; 2 uses
  %spec.select.i.i.i = phi i32 [ %i.cz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i ], [ %i.db, %bb.f ], [ %i.dv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i ], [ %i.dk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i ] ; 2 uses
  %i.dw = icmp eq i32 %spec.select.i.i.i, 37
  br i1 %i.dw, label %bb.r, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit.thread

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %i.dx = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp samesign ult i32 %.sroa.4.0.i.ph, 128 ; 2 uses
  br i1 %i.dy, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dz = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.dz, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ea = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %..i = select i1 %i.ea, i64 3, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i152 = phi i64 [ 2, %bb.h ], [ %..i, %bb.i ], [ 1, %bb.g ] ; 3 uses
  %i.eb = load i64, ptr %i.ay, align 8, !range !5, !alias.scope !2978, !noundef !4
  %i.ec = sub nsw i64 %i.eb, %i.bd
  %i.ed = icmp ugt i64 %.sroa.0.0.i152, %i.ec
  br i1 %i.ed, label %bb.k, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i, !prof !15

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef %i.bd, i64 noundef %.sroa.0.0.i152, i64 noundef 1, i64 noundef 1) #26
  %.pre = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2977
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i: ; preds = %bb.k, %bb.j
  %i.ee = phi ptr [ %.pre, %bb.k ], [ %i.bc, %bb.j ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.bd ; 10 uses
  br i1 %i.dy, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i
  %i.eg = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  %i.eh = trunc i32 %.sroa.4.0.i.ph to i8
  %i.ei = and i8 %i.eh, 63
  %i.ej = or disjoint i8 %i.ei, -128              ; 3 uses
  %i.ek = lshr i32 %.sroa.4.0.i.ph, 6
  %i.el = trunc i32 %i.ek to i8                   ; 2 uses
  %i.em = and i8 %i.el, 63
  %i.en = or disjoint i8 %i.em, -128              ; 2 uses
  %i.eo = lshr i32 %.sroa.4.0.i.ph, 12
  %i.ep = trunc i32 %i.eo to i8                   ; 2 uses
  %i.eq = and i8 %i.ep, 63
  %i.er = or disjoint i8 %i.eq, -128
  %i.es = lshr i32 %.sroa.4.0.i.ph, 18
  %i.et = trunc nuw nsw i32 %i.es to i8
  %i.eu = or disjoint i8 %i.et, -16
  br i1 %i.eg, label %bb.n, label %bb.o

bb.m:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i
  %i.ev = trunc nuw nsw i32 %.sroa.4.0.i.ph to i8
  store i8 %i.ev, ptr %i.ef, align 1, !noalias !2977
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.n:                                             ; preds = %bb.l
  %i.ew = or disjoint i8 %i.el, -64
  store i8 %i.ew, ptr %i.ef, align 1, !noalias !2977
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 %i.ej, ptr %i.ex, align 1, !noalias !2977
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.o:                                             ; preds = %bb.l
  %i.ey = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  br i1 %i.ey, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ez = or disjoint i8 %i.ep, -32
  store i8 %i.ez, ptr %i.ef, align 1, !noalias !2977
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 %i.en, ptr %i.fa, align 1, !noalias !2977
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i8 %i.ej, ptr %i.fb, align 1, !noalias !2977
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.q:                                             ; preds = %bb.o
  store i8 %i.eu, ptr %i.ef, align 1, !noalias !2977
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 %i.er, ptr %i.fc, align 1, !noalias !2977
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i8 %i.en, ptr %i.fd, align 1, !noalias !2977
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  store i8 %i.ej, ptr %i.fe, align 1, !noalias !2977
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.m, %bb.n, %bb.p, %bb.q
  %i.ff = add nuw i64 %.sroa.0.0.i152, %i.bd      ; 2 uses
  store i64 %i.ff, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2977
  br label %.loopexit1099

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit.thread: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit, %bb.d, %.loopexit1099
  %.promoted = phi i64 [ %i.fv, %.loopexit1099 ], [ %i.bd, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit ], [ %i.bd, %bb.d ] ; 2 uses
  %.sroa.0.0.lcssa = phi i32 [ %.sroa.0.1, %.loopexit1099 ], [ %.sroa.0.01135, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit ], [ %.sroa.0.01135, %bb.d ] ; 2 uses
  %.sroa.131.1 = phi i32 [ -2, %.loopexit1099 ], [ %spec.select.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit ], [ -1, %bb.d ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.at, %.loopexit1099 ], [ %.sroa.0.19, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit ], [ %i.at, %bb.d ] ; 2 uses
  %i.fg = icmp sgt i32 %.sroa.0.0.lcssa, 0
  br i1 %i.fg, label %.lr.ph1146, label %bb.u

.lr.ph1146:                                       ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit.thread
  %i.fh = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2979, !nonnull !4, !noundef !4
  br label %bb.z

bb.r:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.fi = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = load i64, ptr %i.ay, align 8, !range !5, !alias.scope !2981, !noundef !4 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, %i.bd
  br i1 %i.fk, label %bb.s, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161, !prof !15

bb.s:                                             ; preds = %bb.r
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef %i.bd, i64 noundef 1, i64 noundef 1, i64 noundef 1) #26
  %.pre1239 = load i64, ptr %i.ay, align 8, !range !5, !alias.scope !2982
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161: ; preds = %bb.r, %bb.s
  %i.fl = phi i64 [ %i.fj, %bb.r ], [ %.pre1239, %bb.s ] ; 2 uses
  %i.fm = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2980, !nonnull !4, !noundef !4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.bd
  store i8 37, ptr %i.fn, align 1, !noalias !2980
  %i.fo = add nuw i64 %i.bd, 1                    ; 4 uses
  store i64 %i.fo, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2980
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %3 = icmp sgt i64 %i.fo, -1
  tail call void @llvm.assume(i1 %3)
  %i.fp = icmp eq i64 %i.fl, %i.fo
  br i1 %i.fp, label %bb.t, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161.1, !prof !15

bb.t:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef %i.fl, i64 noundef 1, i64 noundef 1, i64 noundef 1) #26
  %.pre1240 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2983
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161.1

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161.1: ; preds = %bb.t, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161
  %i.fq = phi ptr [ %.pre1240, %bb.t ], [ %i.fm, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  store i8 37, ptr %i.fr, align 1, !noalias !2983
  %i.fs = add nuw i64 %i.bd, 2                    ; 2 uses
  store i64 %i.fs, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2983
  %i.ft = add i32 %.sroa.0.01135, 1
  br label %.loopexit1099

.loopexit1099:                                    ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161.1, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit
  %i.fu = phi ptr [ %i.ee, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ], [ %i.fq, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161.1 ]
  %i.fv = phi i64 [ %i.ff, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ], [ %i.fs, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161.1 ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.18.ph, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ], [ %.sroa.0.19, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161.1 ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.01135, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ], [ %i.ft, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit161.1 ] ; 2 uses
  %i.fw = icmp eq ptr %.sroa.0.4, %i.at
  br i1 %i.fw, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop.exit
  store i64 %i.iu, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit.thread
  %i.fx = phi i64 [ %i.iu, %._crit_edge ], [ %.promoted, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit.thread ] ; 2 uses
  switch i32 %.sroa.131.1, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel [
    i32 -2, label %.thread1400
    i32 -1, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit169.thread
  ]

.thread1400:                                      ; preds = %bb.u, %bb.a
  %i.fy = phi i64 [ %i.fx, %bb.u ], [ 0, %bb.a ]
  %.sroa.0.213991404 = phi ptr [ %.sroa.0.2, %bb.u ], [ %1, %bb.a ] ; 6 uses
  %.not.i.i.i163 = icmp eq ptr %.sroa.0.213991404, %i.at
  br i1 %.not.i.i.i163, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit169.thread, label %bb.v

bb.v:                                             ; preds = %.thread1400
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.213991404, i64 1 ; 3 uses
  %i.ga = load i8, ptr %.sroa.0.213991404, align 1, !noalias !2984, !noundef !4 ; 5 uses
  %i.gb = icmp sgt i8 %i.ga, -1
  br i1 %i.gb, label %bb.w, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i164

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i164: ; preds = %bb.v
  %i.gc = and i8 %i.ga, 31
  %i.gd = zext nneg i8 %i.gc to i32               ; 3 uses
  %i.ge = icmp ne ptr %i.fz, %i.at
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.213991404, i64 2 ; 3 uses
  %i.gg = load i8, ptr %i.fz, align 1, !noalias !2984, !noundef !4
  %i.gh = shl nuw nsw i32 %i.gd, 6
  %i.gi = and i8 %i.gg, 63
  %i.gj = zext nneg i8 %i.gi to i32               ; 2 uses
  %i.gk = or disjoint i32 %i.gh, %i.gj
  %i.gl = icmp samesign ugt i8 %i.ga, -33
  br i1 %i.gl, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i167, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel

bb.w:                                             ; preds = %bb.v
  %i.gm = zext nneg i8 %i.ga to i32
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i167: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i164
  %i.gn = icmp ne ptr %i.gf, %i.at
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.213991404, i64 3 ; 3 uses
  %i.gp = load i8, ptr %i.gf, align 1, !noalias !2984, !noundef !4
  %i.gq = shl nuw nsw i32 %i.gj, 6
  %i.gr = and i8 %i.gp, 63
  %i.gs = zext nneg i8 %i.gr to i32
  %i.gt = or disjoint i32 %i.gq, %i.gs            ; 2 uses
  %i.gu = shl nuw nsw i32 %i.gd, 12
  %i.gv = or disjoint i32 %i.gt, %i.gu
  %i.gw = icmp samesign ugt i8 %i.ga, -17
  br i1 %i.gw, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i168, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i168: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i167
  %i.gx = icmp ne ptr %i.go, %i.at
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.213991404, i64 4
  %i.gz = load i8, ptr %i.go, align 1, !noalias !2984, !noundef !4
  %i.ha = shl nuw nsw i32 %i.gd, 18
  %i.hb = and i32 %i.ha, 1835008
  %i.hc = shl nuw nsw i32 %i.gt, 6
  %i.hd = and i8 %i.gz, 63
  %i.he = zext nneg i8 %i.hd to i32
  %i.hf = or disjoint i32 %i.hc, %i.he
  %i.hg = or disjoint i32 %i.hf, %i.hb
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel: ; preds = %bb.u, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i167, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i168, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i164, %bb.w
  %.sroa.0.231410 = phi ptr [ %.sroa.0.2, %bb.u ], [ %i.go, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i167 ], [ %i.gy, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i168 ], [ %i.gf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i164 ], [ %i.fz, %bb.w ] ; 5 uses
  %.sroa.131.101409 = phi i32 [ %.sroa.131.1, %bb.u ], [ %i.gv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i167 ], [ %i.hg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i168 ], [ %i.gk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i164 ], [ %i.gm, %bb.w ] ; 2 uses
  switch i32 %.sroa.131.101409, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit237 [
    i32 32, label %.preheader1098.peel.next
    i32 39, label %bb.y
    i32 48, label %bb.x
  ], !prof !2985

bb.x:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel
  store i8 1, ptr %i.ba, align 1
  br label %.preheader1098.peel.next

bb.y:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel
  store i8 1, ptr %i.au, align 8
  br label %.preheader1098.peel.next

.preheader1098.peel.next:                         ; preds = %bb.y, %bb.x, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit229.peel
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.231410) ]
  %.not.i.i.i2231613 = icmp eq ptr %.sroa.0.231410, %i.at
  br i1 %.not.i.i.i2231613, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit309.thread881, label %.lr.ph1615

bb.z:                                             ; preds = %.lr.ph1146, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop.exit
  %i.hh = phi i64 [ %.promoted, %.lr.ph1146 ], [ %i.iu, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop.exit ] ; 8 uses
  %.sroa.051.01145 = phi i32 [ 0, %.lr.ph1146 ], [ %i.hi, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop.exit ]
  %i.hi = add nuw nsw i32 %.sroa.051.01145, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.hh ; 4 uses
  %i.hk = icmp samesign eq i64 %i.hh, 0
  br i1 %i.hk, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -1
  %i.hm = load i8, ptr %i.hl, align 1, !noalias !2986, !noundef !4
  %i.hn = icmp sgt i8 %i.hm, -1
  br i1 %i.hn, label %.thread.i, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i.i

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i.i: ; preds = %bb.aa
  %i.ho = icmp ne i64 %i.hh, 1
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds i8, ptr %i.hj, i64 -2
  %i.hq = load i8, ptr %i.hp, align 1, !noalias !2986, !noundef !4 ; 3 uses
  %i.hr = and i8 %i.hq, 31
  %i.hs = zext nneg i8 %i.hr to i32
  %i.ht = icmp slt i8 %i.hq, -64
  br i1 %i.ht, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i.i, label %bb.ac

.thread.i:                                        ; preds = %bb.aa
  %i.hu = icmp sgt i64 %i.hh, -1
  tail call void @llvm.assume(i1 %i.hu)
  br label %bb.af

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i.i
  %i.hv = icmp ne i64 %i.hh, 2
  tail call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds i8, ptr %i.hj, i64 -3
  %i.hx = load i8, ptr %i.hw, align 1, !noalias !2986, !noundef !4 ; 3 uses
  %i.hy = and i8 %i.hx, 15
  %i.hz = zext nneg i8 %i.hy to i32
  %i.ia = icmp slt i8 %i.hx, -64
  br i1 %i.ia, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit21.i.i, label %bb.ab

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i.i
  %i.ib = icmp ne i64 %i.hh, 3
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds i8, ptr %i.hj, i64 -4
  %i.id = load i8, ptr %i.ic, align 1, !noalias !2986, !noundef !4
  %i.ie = and i8 %i.id, 7
  %i.if = zext nneg i8 %i.ie to i32
  %i.ig = shl nuw nsw i32 %i.if, 6
  %i.ih = and i8 %i.hx, 63
  %i.ii = zext nneg i8 %i.ih to i32
  %i.ij = or disjoint i32 %i.ig, %i.ii
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit21.i.i, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i.i
  %.sroa.010.1.i.i = phi i32 [ %i.ij, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit21.i.i ], [ %i.hz, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i.i ]
  %i.ik = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.il = and i8 %i.hq, 63
  %i.im = zext nneg i8 %i.il to i32
  %i.in = or disjoint i32 %i.ik, %i.im
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i.i
  %.sroa.010.0.i.i = phi i32 [ %i.in, %bb.ab ], [ %i.hs, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i.i ] ; 4 uses
  %i.io = icmp sgt i64 %i.hh, -1
  tail call void @llvm.assume(i1 %i.io)
  %i.ip = icmp samesign ult i32 %.sroa.010.0.i.i, 17408
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = icmp samesign ult i32 %.sroa.010.0.i.i, 2
  br i1 %i.iq, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ir = icmp samesign ult i32 %.sroa.010.0.i.i, 32
  br i1 %i.ir, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.is = icmp samesign ult i32 %.sroa.010.0.i.i, 1024
  %..i170 = select i1 %i.is, i64 -3, i64 -4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %.thread.i
  %.sroa.03.0.neg.i = phi i64 [ -2, %bb.ad ], [ %..i170, %bb.ae ], [ -1, %bb.ac ], [ -1, %.thread.i ]
  %i.it = add nsw i64 %.sroa.03.0.neg.i, %i.hh
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop.exit

end_hunk_1
begin_hunk_2_@_RNvXs_NtCsbyqtxyC5WYI_9uu_numfmt7optionsNtB4_13FormatOptionsNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_str:bb.a
bb.gy:                                            ; preds = %bb.gx
  switch i8 %i.akx, label %bb.hf [
    i8 43, label %.thread992
    i8 45, label %.thread992
  ]

thread-pre-split.i556:                            ; preds = %bb.gx
  switch i8 %i.akx, label %bb.hf [
    i8 43, label %bb.gz
    i8 45, label %bb.ha
  ]

bb.gz:                                            ; preds = %thread-pre-split.i556
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akv, i64 1
  %i.akz = add nsw i64 %2, -1
  br label %bb.hf

bb.ha:                                            ; preds = %thread-pre-split.i556
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akv, i64 1 ; 2 uses
  %i.alb = add nsw i64 %2, -1                     ; 3 uses
  %i.alc = icmp samesign ult i64 %2, 17
  br i1 %i.alc, label %.preheader114.i534, label %.lr.ph.i526

.preheader114.i534:                               ; preds = %bb.ha
  %.not103137.i535 = icmp eq i64 %i.alb, 0
  br i1 %.not103137.i535, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558, label %.lr.ph141.i536

.lr.ph.i526:                                      ; preds = %bb.ha, %bb.hd
  %.sroa.0.1136.i527 = phi ptr [ %i.ald, %bb.hd ], [ %i.ala, %bb.ha ] ; 2 uses
  %.sroa.26.1135.i528 = phi i64 [ %i.ale, %bb.hd ], [ %i.alb, %bb.ha ]
  %.sroa.084.0134.i529 = phi i64 [ %i.alp, %bb.hd ], [ 0, %bb.ha ]
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i527, i64 1
  %i.ale = add nsw i64 %.sroa.26.1135.i528, -1    ; 2 uses
  %i.alf = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i529, i64 10) ; 2 uses
  %i.alg = extractvalue { i64, i1 } %i.alf, 0
  %i.alh = extractvalue { i64, i1 } %i.alf, 1
  br i1 %i.alh, label %.thread992, label %bb.hb, !prof !15

bb.hb:                                            ; preds = %.lr.ph.i526
  %i.ali = load i8, ptr %.sroa.0.1136.i527, align 1, !alias.scope !3046, !noalias !3047, !noundef !4
  %i.alj = zext i8 %i.ali to i32
  %i.alk = add nsw i32 %i.alj, -48                ; 2 uses
  %i.all = icmp ult i32 %i.alk, 10
  br i1 %i.all, label %bb.hc, label %.thread992

bb.hc:                                            ; preds = %bb.hb
  %i.alm = zext nneg i32 %i.alk to i64
  %i.aln = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.alg, i64 %i.alm) ; 2 uses
  %i.alo = extractvalue { i64, i1 } %i.aln, 1
  br i1 %i.alo, label %.thread992, label %bb.hd, !prof !15

bb.hd:                                            ; preds = %bb.hc
  %i.alp = extractvalue { i64, i1 } %i.aln, 0     ; 2 uses
  %.not102.i531 = icmp eq i64 %i.ale, 0
  br i1 %.not102.i531, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558, label %.lr.ph.i526

.lr.ph141.i536:                                   ; preds = %.preheader114.i534, %bb.he
  %.sroa.0.2140.i537 = phi ptr [ %i.alw, %bb.he ], [ %i.ala, %.preheader114.i534 ] ; 2 uses
  %.sroa.26.2139.i538 = phi i64 [ %i.alv, %bb.he ], [ %i.alb, %.preheader114.i534 ]
  %.sroa.084.2138.i539 = phi i64 [ %i.aly, %bb.he ], [ 0, %.preheader114.i534 ]
  %i.alq = load i8, ptr %.sroa.0.2140.i537, align 1, !alias.scope !3046, !noalias !3047, !noundef !4
  %i.alr = zext i8 %i.alq to i32
  %i.als = add nsw i32 %i.alr, -48                ; 2 uses
  %i.alt = icmp ult i32 %i.als, 10
  br i1 %i.alt, label %bb.he, label %.thread992

bb.he:                                            ; preds = %.lr.ph141.i536
  %i.alu = mul i64 %.sroa.084.2138.i539, 10
  %i.alv = add nsw i64 %.sroa.26.2139.i538, -1    ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i537, i64 1
  %i.alx = zext nneg i32 %i.als to i64
  %i.aly = sub i64 %i.alu, %i.alx                 ; 2 uses
  %.not103.i540 = icmp eq i64 %i.alv, 0
  br i1 %.not103.i540, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558, label %.lr.ph141.i536

bb.hf:                                            ; preds = %bb.gy, %bb.gz, %thread-pre-split.i556
  %.sroa.26.0.i541 = phi i64 [ %i.akz, %bb.gz ], [ %2, %thread-pre-split.i556 ], [ %2, %bb.gy ] ; 4 uses
  %.sroa.0.0.i542 = phi ptr [ %i.aky, %bb.gz ], [ %i.akv, %thread-pre-split.i556 ], [ %i.akv, %bb.gy ] ; 2 uses
  %i.alz = icmp samesign ult i64 %.sroa.26.0.i541, 16
  br i1 %i.alz, label %.preheader.i549, label %.preheader111.i543

.preheader.i549:                                  ; preds = %bb.hf
  %.not105146.i550 = icmp eq i64 %.sroa.26.0.i541, 0
  br i1 %.not105146.i550, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558, label %.lr.ph150.i551

.preheader111.i543:                               ; preds = %bb.hf, %bb.hi
  %.sroa.0.3145.i544 = phi ptr [ %i.ama, %bb.hi ], [ %.sroa.0.0.i542, %bb.hf ] ; 2 uses
  %.sroa.26.3144.i545 = phi i64 [ %i.amb, %bb.hi ], [ %.sroa.26.0.i541, %bb.hf ]
  %.sroa.084.3143.i546 = phi i64 [ %i.amm, %bb.hi ], [ 0, %bb.hf ]
  %i.ama = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i544, i64 1
  %i.amb = add nsw i64 %.sroa.26.3144.i545, -1    ; 2 uses
  %i.amc = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i546, i64 10) ; 2 uses
  %i.amd = extractvalue { i64, i1 } %i.amc, 0
  %i.ame = extractvalue { i64, i1 } %i.amc, 1
  br i1 %i.ame, label %.thread992, label %bb.hg, !prof !15

bb.hg:                                            ; preds = %.preheader111.i543
  %i.amf = load i8, ptr %.sroa.0.3145.i544, align 1, !alias.scope !3046, !noalias !3047, !noundef !4
  %i.amg = zext i8 %i.amf to i32
  %i.amh = add nsw i32 %i.amg, -48                ; 2 uses
  %i.ami = icmp ult i32 %i.amh, 10
  br i1 %i.ami, label %bb.hh, label %.thread992

bb.hh:                                            ; preds = %bb.hg
  %i.amj = zext nneg i32 %i.amh to i64
  %i.amk = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.amd, i64 %i.amj) ; 2 uses
  %i.aml = extractvalue { i64, i1 } %i.amk, 1
  br i1 %i.aml, label %.thread992, label %bb.hi, !prof !15

bb.hi:                                            ; preds = %bb.hh
  %i.amm = extractvalue { i64, i1 } %i.amk, 0     ; 2 uses
  %.not104.i548 = icmp eq i64 %i.amb, 0
  br i1 %.not104.i548, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558, label %.preheader111.i543

.lr.ph150.i551:                                   ; preds = %.preheader.i549, %bb.hj
  %.sroa.0.4149.i552 = phi ptr [ %i.amt, %bb.hj ], [ %.sroa.0.0.i542, %.preheader.i549 ] ; 2 uses
  %.sroa.26.4148.i553 = phi i64 [ %i.ams, %bb.hj ], [ %.sroa.26.0.i541, %.preheader.i549 ]
  %.sroa.084.4147.i554 = phi i64 [ %i.amv, %bb.hj ], [ 0, %.preheader.i549 ]
  %i.amn = load i8, ptr %.sroa.0.4149.i552, align 1, !alias.scope !3046, !noalias !3047, !noundef !4
  %i.amo = zext i8 %i.amn to i32
  %i.amp = add nsw i32 %i.amo, -48                ; 2 uses
  %i.amq = icmp ult i32 %i.amp, 10
  br i1 %i.amq, label %bb.hj, label %.thread992

bb.hj:                                            ; preds = %.lr.ph150.i551
  %i.amr = mul i64 %.sroa.084.4147.i554, 10
  %i.ams = add nsw i64 %.sroa.26.4148.i553, -1    ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i552, i64 1
  %i.amu = zext nneg i32 %i.amp to i64
  %i.amv = add i64 %i.amr, %i.amu                 ; 2 uses
  %.not105.i555 = icmp eq i64 %i.ams, 0
  br i1 %.not105.i555, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558, label %.lr.ph150.i551

.thread992:                                       ; preds = %.lr.ph.i526, %bb.hc, %bb.hb, %.lr.ph141.i536, %.preheader111.i543, %bb.hg, %bb.hh, %.lr.ph150.i551, %bb.gy, %bb.gy, %bb.gv
  %.ph1000 = phi ptr [ inttoptr (i64 1 to ptr), %bb.gv ], [ %i.akv, %.preheader111.i543 ], [ %i.akv, %.lr.ph150.i551 ], [ %i.akv, %bb.gy ], [ %i.akv, %.lr.ph141.i536 ], [ %i.akv, %bb.gy ], [ %i.akv, %bb.hh ], [ %i.akv, %bb.hg ], [ %i.akv, %bb.hb ], [ %i.akv, %bb.hc ], [ %i.akv, %.lr.ph.i526 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1000, i64 noundef %2) #25
  %i.amw = load i8, ptr %i.d, align 8, !range !19, !noundef !4
  %i.amx = trunc nuw i8 %i.amw to i1
  br i1 %i.amx, label %bb.hm, label %bb.hn

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558: ; preds = %bb.hd, %bb.he, %bb.hi, %bb.hj, %.preheader.i549, %.preheader114.i534
  %.sroa.15741.0 = phi i64 [ %i.aly, %bb.he ], [ 0, %.preheader114.i534 ], [ %i.amv, %bb.hj ], [ 0, %.preheader.i549 ], [ %i.amm, %bb.hi ], [ %i.alp, %bb.hd ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, i64 noundef %.sroa.15741.0) #26
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hn, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558
  %i.amy = phi ptr [ %.ph1000, %bb.hn ], [ %i.akv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit558 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 36, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.amz = icmp eq i64 %2, 0
  br i1 %i.amz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit561, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amy, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3048
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit561

bb.hm:                                            ; preds = %.thread992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %2, ptr %i.c, align 8
  %.sroa.5736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph1000, ptr %.sroa.5736.0..sroa_idx, align 8
  %.sroa.8737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %.sroa.8737.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 36, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit561

bb.hn:                                            ; preds = %.thread992
  %i.ana = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.anb = load double, ptr %i.ana, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, double noundef %i.anb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.hk

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit561: ; preds = %bb.hl, %bb.hk, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anc, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bv

bb.ho:                                            ; preds = %.preheader.preheader
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef %i.ajh, i64 noundef 1, i64 noundef 1, i64 noundef 1) #26
  %.pre1244 = load i64, ptr %i.az, align 8, !range !5, !alias.scope !3049
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564: ; preds = %.preheader.preheader, %bb.ho
  %i.and = phi i64 [ %i.ajj, %.preheader.preheader ], [ %.pre1244, %bb.ho ] ; 2 uses
  %i.ane = load ptr, ptr %.sroa.5.0..sroa_idx32, align 8, !alias.scope !3041, !nonnull !4, !noundef !4 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 %i.ajh
  store i8 37, ptr %i.anf, align 1, !noalias !3041
  %i.ang = add nuw i64 %i.ajh, 1                  ; 4 uses
  store i64 %i.ang, ptr %.sroa.6.0..sroa_idx38, align 8, !alias.scope !3041
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  %4 = icmp sgt i64 %i.ang, -1
  tail call void @llvm.assume(i1 %4)
  %i.anh = icmp eq i64 %i.and, %i.ang
  br i1 %i.anh, label %bb.hp, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564.1, !prof !15

bb.hp:                                            ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef %i.and, i64 noundef 1, i64 noundef 1, i64 noundef 1) #26
  %.pre1245 = load ptr, ptr %.sroa.5.0..sroa_idx32, align 8, !alias.scope !3050
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564.1

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564.1: ; preds = %bb.hp, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564
  %i.ani = phi ptr [ %.pre1245, %bb.hp ], [ %i.ane, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564 ]
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 %i.ang
  store i8 37, ptr %i.anj, align 1, !noalias !3050
  %i.ank = add nuw i64 %i.ajh, 2
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564.1, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit520
  %storemerge1393 = phi i64 [ %i.aku, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit520 ], [ %i.ank, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564.1 ]
  %.sroa.0.16 = phi ptr [ %.sroa.0.45.ph, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit520 ], [ %.sroa.0.46, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit564.1 ] ; 3 uses
  store i64 %storemerge1393, ptr %.sroa.6.0..sroa_idx38, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.16) ]
  %i.anl = icmp eq ptr %.sroa.0.16, %i.at
  br i1 %i.anl, label %._crit_edge1151, label %.lr.ph1150

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsbyqtxyC5WYI_9uu_numfmt7options13FormatOptionsEBF_.exit: ; preds = %bb.bz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret void

bb.hq:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit480.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i488
  %.sroa.4761.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i488 ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt.exit480.thread ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4761.0.ph, i64 %2) #29
  unreachable

bb.hr:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i488
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agk, ptr nonnull align 1 %1, i64 %2, i1 false)
  %cond1034 = icmp eq i64 %2, 1
  %i.anm = load i8, ptr %i.agk, align 1, !alias.scope !3051, !noalias !3052 ; 2 uses
  br i1 %cond1034, label %bb.hs, label %thread-pre-split.i602

bb.hs:                                            ; preds = %bb.hr
  switch i8 %i.anm, label %bb.hz [
    i8 43, label %.thread1014
    i8 45, label %.thread1014
  ]

thread-pre-split.i602:                            ; preds = %bb.hr
  switch i8 %i.anm, label %bb.hz [
    i8 43, label %bb.ht
    i8 45, label %bb.hu
  ]

bb.ht:                                            ; preds = %thread-pre-split.i602
  %i.ann = getelementptr inbounds nuw i8, ptr %i.agk, i64 1
  %i.ano = add nsw i64 %2, -1
  br label %bb.hz

bb.hu:                                            ; preds = %thread-pre-split.i602
  %i.anp = getelementptr inbounds nuw i8, ptr %i.agk, i64 1 ; 2 uses
  %i.anq = add nsw i64 %2, -1                     ; 3 uses
  %i.anr = icmp samesign ult i64 %2, 17
  br i1 %i.anr, label %.preheader114.i580, label %.lr.ph.i572

.preheader114.i580:                               ; preds = %bb.hu
  %.not103137.i581 = icmp eq i64 %i.anq, 0
  br i1 %.not103137.i581, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604, label %.lr.ph141.i582

.lr.ph.i572:                                      ; preds = %bb.hu, %bb.hx
  %.sroa.0.1136.i573 = phi ptr [ %i.ans, %bb.hx ], [ %i.anp, %bb.hu ] ; 2 uses
  %.sroa.26.1135.i574 = phi i64 [ %i.ant, %bb.hx ], [ %i.anq, %bb.hu ]
  %.sroa.084.0134.i575 = phi i64 [ %i.aoe, %bb.hx ], [ 0, %bb.hu ]
  %i.ans = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i573, i64 1
  %i.ant = add nsw i64 %.sroa.26.1135.i574, -1    ; 2 uses
  %i.anu = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i575, i64 10) ; 2 uses
  %i.anv = extractvalue { i64, i1 } %i.anu, 0
  %i.anw = extractvalue { i64, i1 } %i.anu, 1
  br i1 %i.anw, label %.thread1014, label %bb.hv, !prof !15

bb.hv:                                            ; preds = %.lr.ph.i572
  %i.anx = load i8, ptr %.sroa.0.1136.i573, align 1, !alias.scope !3051, !noalias !3052, !noundef !4
  %i.any = zext i8 %i.anx to i32
  %i.anz = add nsw i32 %i.any, -48                ; 2 uses
  %i.aoa = icmp ult i32 %i.anz, 10
  br i1 %i.aoa, label %bb.hw, label %.thread1014

bb.hw:                                            ; preds = %bb.hv
  %i.aob = zext nneg i32 %i.anz to i64
  %i.aoc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.anv, i64 %i.aob) ; 2 uses
  %i.aod = extractvalue { i64, i1 } %i.aoc, 1
  br i1 %i.aod, label %.thread1014, label %bb.hx, !prof !15

bb.hx:                                            ; preds = %bb.hw
  %i.aoe = extractvalue { i64, i1 } %i.aoc, 0     ; 2 uses
  %.not102.i577 = icmp eq i64 %i.ant, 0
  br i1 %.not102.i577, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604, label %.lr.ph.i572

.lr.ph141.i582:                                   ; preds = %.preheader114.i580, %bb.hy
  %.sroa.0.2140.i583 = phi ptr [ %i.aol, %bb.hy ], [ %i.anp, %.preheader114.i580 ] ; 2 uses
  %.sroa.26.2139.i584 = phi i64 [ %i.aok, %bb.hy ], [ %i.anq, %.preheader114.i580 ]
  %.sroa.084.2138.i585 = phi i64 [ %i.aon, %bb.hy ], [ 0, %.preheader114.i580 ]
  %i.aof = load i8, ptr %.sroa.0.2140.i583, align 1, !alias.scope !3051, !noalias !3052, !noundef !4
  %i.aog = zext i8 %i.aof to i32
  %i.aoh = add nsw i32 %i.aog, -48                ; 2 uses
  %i.aoi = icmp ult i32 %i.aoh, 10
  br i1 %i.aoi, label %bb.hy, label %.thread1014

bb.hy:                                            ; preds = %.lr.ph141.i582
  %i.aoj = mul i64 %.sroa.084.2138.i585, 10
  %i.aok = add nsw i64 %.sroa.26.2139.i584, -1    ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i583, i64 1
  %i.aom = zext nneg i32 %i.aoh to i64
  %i.aon = sub i64 %i.aoj, %i.aom                 ; 2 uses
  %.not103.i586 = icmp eq i64 %i.aok, 0
  br i1 %.not103.i586, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604, label %.lr.ph141.i582

bb.hz:                                            ; preds = %bb.hs, %bb.ht, %thread-pre-split.i602
  %.sroa.26.0.i587 = phi i64 [ %i.ano, %bb.ht ], [ %2, %thread-pre-split.i602 ], [ %2, %bb.hs ] ; 4 uses
  %.sroa.0.0.i588 = phi ptr [ %i.ann, %bb.ht ], [ %i.agk, %thread-pre-split.i602 ], [ %i.agk, %bb.hs ] ; 2 uses
  %i.aoo = icmp samesign ult i64 %.sroa.26.0.i587, 16
  br i1 %i.aoo, label %.preheader.i595, label %.preheader111.i589

.preheader.i595:                                  ; preds = %bb.hz
  %.not105146.i596 = icmp eq i64 %.sroa.26.0.i587, 0
  br i1 %.not105146.i596, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604, label %.lr.ph150.i597

.preheader111.i589:                               ; preds = %bb.hz, %bb.ic
  %.sroa.0.3145.i590 = phi ptr [ %i.aop, %bb.ic ], [ %.sroa.0.0.i588, %bb.hz ] ; 2 uses
  %.sroa.26.3144.i591 = phi i64 [ %i.aoq, %bb.ic ], [ %.sroa.26.0.i587, %bb.hz ]
  %.sroa.084.3143.i592 = phi i64 [ %i.apb, %bb.ic ], [ 0, %bb.hz ]
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i590, i64 1
  %i.aoq = add nsw i64 %.sroa.26.3144.i591, -1    ; 2 uses
  %i.aor = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i592, i64 10) ; 2 uses
  %i.aos = extractvalue { i64, i1 } %i.aor, 0
  %i.aot = extractvalue { i64, i1 } %i.aor, 1
  br i1 %i.aot, label %.thread1014, label %bb.ia, !prof !15

bb.ia:                                            ; preds = %.preheader111.i589
  %i.aou = load i8, ptr %.sroa.0.3145.i590, align 1, !alias.scope !3051, !noalias !3052, !noundef !4
  %i.aov = zext i8 %i.aou to i32
  %i.aow = add nsw i32 %i.aov, -48                ; 2 uses
  %i.aox = icmp ult i32 %i.aow, 10
  br i1 %i.aox, label %bb.ib, label %.thread1014

bb.ib:                                            ; preds = %bb.ia
  %i.aoy = zext nneg i32 %i.aow to i64
  %i.aoz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aos, i64 %i.aoy) ; 2 uses
  %i.apa = extractvalue { i64, i1 } %i.aoz, 1
  br i1 %i.apa, label %.thread1014, label %bb.ic, !prof !15

bb.ic:                                            ; preds = %bb.ib
  %i.apb = extractvalue { i64, i1 } %i.aoz, 0     ; 2 uses
  %.not104.i594 = icmp eq i64 %i.aoq, 0
  br i1 %.not104.i594, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604, label %.preheader111.i589

.lr.ph150.i597:                                   ; preds = %.preheader.i595, %bb.id
  %.sroa.0.4149.i598 = phi ptr [ %i.api, %bb.id ], [ %.sroa.0.0.i588, %.preheader.i595 ] ; 2 uses
  %.sroa.26.4148.i599 = phi i64 [ %i.aph, %bb.id ], [ %.sroa.26.0.i587, %.preheader.i595 ]
  %.sroa.084.4147.i600 = phi i64 [ %i.apk, %bb.id ], [ 0, %.preheader.i595 ]
  %i.apc = load i8, ptr %.sroa.0.4149.i598, align 1, !alias.scope !3051, !noalias !3052, !noundef !4
  %i.apd = zext i8 %i.apc to i32
  %i.ape = add nsw i32 %i.apd, -48                ; 2 uses
  %i.apf = icmp ult i32 %i.ape, 10
  br i1 %i.apf, label %bb.id, label %.thread1014

bb.id:                                            ; preds = %.lr.ph150.i597
  %i.apg = mul i64 %.sroa.084.4147.i600, 10
  %i.aph = add nsw i64 %.sroa.26.4148.i599, -1    ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i598, i64 1
  %i.apj = zext nneg i32 %i.ape to i64
  %i.apk = add i64 %i.apg, %i.apj                 ; 2 uses
  %.not105.i601 = icmp eq i64 %i.aph, 0
  br i1 %.not105.i601, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604, label %.lr.ph150.i597

.thread1014:                                      ; preds = %.lr.ph.i572, %bb.hw, %bb.hv, %.lr.ph141.i582, %.preheader111.i589, %bb.ia, %bb.ib, %.lr.ph150.i597, %bb.hs, %bb.hs, %bb.gc
  %.ph1022 = phi ptr [ inttoptr (i64 1 to ptr), %bb.gc ], [ %i.agk, %.preheader111.i589 ], [ %i.agk, %.lr.ph150.i597 ], [ %i.agk, %bb.hs ], [ %i.agk, %.lr.ph141.i582 ], [ %i.agk, %bb.hs ], [ %i.agk, %bb.ib ], [ %i.agk, %bb.ia ], [ %i.agk, %bb.hv ], [ %i.agk, %bb.hw ], [ %i.agk, %.lr.ph.i572 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1022, i64 noundef %2) #25
  %i.apl = load i8, ptr %i.i, align 8, !range !19, !noundef !4
  %i.apm = trunc nuw i8 %i.apl to i1
  br i1 %i.apm, label %bb.ig, label %bb.ih

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604: ; preds = %bb.hx, %bb.hy, %bb.ic, %bb.id, %.preheader.i595, %.preheader114.i580
  %.sroa.15734.0 = phi i64 [ %i.aon, %bb.hy ], [ 0, %.preheader114.i580 ], [ %i.apk, %bb.id ], [ 0, %.preheader.i595 ], [ %i.apb, %bb.ic ], [ %i.aoe, %bb.hx ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, i64 noundef %.sroa.15734.0) #26
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ih, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604
  %i.apn = phi ptr [ %.ph1022, %bb.ih ], [ %i.agk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit604 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 37, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.apo = icmp eq i64 %2, 0
  br i1 %i.apo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit607, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apn, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3053
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit607

bb.ig:                                            ; preds = %.thread1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
end_hunk_2
