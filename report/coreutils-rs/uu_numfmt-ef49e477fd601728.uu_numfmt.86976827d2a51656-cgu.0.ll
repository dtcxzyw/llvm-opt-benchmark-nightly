Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_numfmt-ef49e477fd601728.uu_numfmt.86976827d2a51656-cgu.0?download=true
inline.NumInlined: 1038
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format13format_string:bb.a
  %i.na = phi double [ f0x43B0000000000000, %bb.bd ], [ 1.000000e+18, %bb.ba ] ; 2 uses
  %i.nb = phi double [ f0x4450000000000000, %bb.bd ], [ 1.000000e+21, %bb.ba ] ; 2 uses
  %i.nc = phi double [ f0x44F0000000000000, %bb.bd ], [ f0x44EA784379D99DB4, %bb.ba ] ; 2 uses
  %i.nd = phi double [ f0x4590000000000000, %bb.bd ], [ 1.000000e+27, %bb.ba ] ; 2 uses
  %i.ne = phi double [ f0x4630000000000000, %bb.bd ], [ 1.000000e+30, %bb.ba ] ; 3 uses
  %.sroa.02.0.i.i = phi i8 [ %.val126, %bb.bd ], [ 0, %bb.ba ]
  store double %i.mv, ptr %.sroa.2.i.i, align 8, !noalias !2005
  store double %i.mw, ptr %.sroa.7.i.i, align 8, !noalias !2005
  store double %i.mx, ptr %.sroa.12.i.i, align 8, !noalias !2005
  store double %i.my, ptr %.sroa.17.i.i, align 8, !noalias !2005
  store double %i.mz, ptr %.sroa.22.i.i, align 8, !noalias !2005
  store double %i.na, ptr %.sroa.27.i.i, align 8, !noalias !2005
  store double %i.nb, ptr %.sroa.32.i.i, align 8, !noalias !2005
  store double %i.nc, ptr %.sroa.37.i.i, align 8, !noalias !2005
  store double %i.nd, ptr %.sroa.42.i.i, align 8, !noalias !2005
  store double %i.ne, ptr %.sroa.47.i.i, align 8, !noalias !2005
  %i.nf = fadd double %i.mv, -1.000000e+00
  %i.ng = fcmp ugt double %i.lw, %i.nf
  br i1 %i.ng, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nh = fcmp olt double %i.lw, %i.mw
  br i1 %i.nh, label %bb.cc, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %i.lv, ptr %i.ni, align 8, !noalias !1928
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 -1, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !1928
  br label %bb.dq

bb.bs:                                            ; preds = %bb.bq
  %i.nj = fcmp olt double %i.lw, %i.mx
  br i1 %i.nj, label %bb.cc, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nk = fcmp olt double %i.lw, %i.my
  br i1 %i.nk, label %bb.cc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nl = fcmp olt double %i.lw, %i.mz
  br i1 %i.nl, label %bb.cc, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nm = fcmp olt double %i.lw, %i.na
  br i1 %i.nm, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nn = fcmp olt double %i.lw, %i.nb
  br i1 %i.nn, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.no = fcmp olt double %i.lw, %i.nc
  br i1 %i.no, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.np = fcmp olt double %i.lw, %i.nd
  br i1 %i.np, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nq = fcmp olt double %i.lw, %i.ne
  br i1 %i.nq, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nr = fmul nnan double %i.ne, 1.000000e+03
  %i.ns = fcmp olt double %i.lw, %i.nr
  br i1 %i.ns, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.nt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 27) #26, !noalias !1984
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %i.nu = phi i1 [ true, %bb.bz ], [ true, %bb.bq ], [ true, %bb.bs ], [ true, %bb.bt ], [ true, %bb.bu ], [ true, %bb.bv ], [ true, %bb.bw ], [ true, %bb.bx ], [ true, %bb.by ], [ false, %bb.ca ]
  %.sroa.05.0.sroa.phi.i.i = phi ptr [ %i.mf, %bb.bz ], [ %i.lx, %bb.bq ], [ %i.ly, %bb.bs ], [ %i.lz, %bb.bt ], [ %i.ma, %bb.bu ], [ %i.mb, %bb.bv ], [ %i.mc, %bb.bw ], [ %i.md, %bb.bx ], [ %i.me, %bb.by ], [ %.sroa.05.0.sroa.gep84.i.i, %bb.ca ] ; 2 uses
  %.sroa.05.0.sroa.phi96.i.i = phi ptr [ %.sroa.42.i.i, %bb.bz ], [ %.sroa.2.i.i, %bb.bq ], [ %.sroa.7.i.i, %bb.bs ], [ %.sroa.12.i.i, %bb.bt ], [ %.sroa.17.i.i, %bb.bu ], [ %.sroa.22.i.i, %bb.bv ], [ %.sroa.27.i.i, %bb.bw ], [ %.sroa.32.i.i, %bb.bx ], [ %.sroa.37.i.i, %bb.by ], [ %.sroa.47.i.i, %bb.ca ] ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.021.0, 0
  br i1 %.not.i.i, label %bb.cd, label %bb.cz

bb.cd:                                            ; preds = %bb.cc
  %i.nv = load double, ptr %.sroa.05.0.sroa.phi96.i.i, align 8, !noalias !2005, !noundef !18
  %i.nw = fdiv double %i.lv, %i.nv                ; 11 uses
  %i.nx = tail call double @llvm.fabs.f64(double %i.nw)
  %i.ny = fcmp olt double %i.nx, 1.000000e+01
  br i1 %i.ny, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.cg
    i8 1, label %bb.ch
    i8 2, label %bb.ci
    i8 3, label %bb.cj
    i8 4, label %bb.ck
  ]

bb.cf:                                            ; preds = %bb.cd
  %i.nz = fmul nnan double %i.nw, 1.000000e+01    ; 9 uses
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
  %i.oa = tail call double @llvm.ceil.f64(double %i.nw)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.ch:                                            ; preds = %bb.ce
  %i.ob = tail call double @llvm.floor.f64(double %i.nw)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.ci:                                            ; preds = %bb.ce
  %i.oc = fcmp olt double %i.nw, 0.000000e+00
  br i1 %i.oc, label %bb.cm, label %bb.cl

bb.cj:                                            ; preds = %bb.ce
  %i.od = fcmp olt double %i.nw, 0.000000e+00
  br i1 %i.od, label %bb.co, label %bb.cn

bb.ck:                                            ; preds = %bb.ce
  %i.oe = tail call double @llvm.round.f64(double %i.nw)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cl:                                            ; preds = %bb.ci
  %i.of = tail call double @llvm.ceil.f64(double %i.nw)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cm:                                            ; preds = %bb.ci
  %i.og = tail call double @llvm.floor.f64(double %i.nw)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cn:                                            ; preds = %bb.cj
  %i.oh = tail call double @llvm.floor.f64(double %i.nw)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.co:                                            ; preds = %bb.cj
  %i.oi = tail call double @llvm.ceil.f64(double %i.nw)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cp:                                            ; preds = %bb.cf
  %i.oj = tail call double @llvm.ceil.f64(double %i.nz)
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cf
  %i.ok = tail call double @llvm.floor.f64(double %i.nz)
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cf
  %i.ol = fcmp olt double %i.nz, 0.000000e+00
  br i1 %i.ol, label %bb.cw, label %bb.cv

bb.cs:                                            ; preds = %bb.cf
  %i.om = fcmp olt double %i.nz, 0.000000e+00
  br i1 %i.om, label %bb.cy, label %bb.cx

bb.ct:                                            ; preds = %bb.cf
  %i.on = tail call double @llvm.round.f64(double %i.nz)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.ct, %bb.cq, %bb.cp
  %.sroa.01.0.i.i192.i = phi double [ %i.oj, %bb.cp ], [ %i.ok, %bb.cq ], [ %i.oq, %bb.cw ], [ %i.op, %bb.cv ], [ %i.os, %bb.cy ], [ %i.or, %bb.cx ], [ %i.on, %bb.ct ]
  %i.oo = fdiv double %.sroa.01.0.i.i192.i, 1.000000e+01
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cv:                                            ; preds = %bb.cr
  %i.op = tail call double @llvm.ceil.f64(double %i.nz)
  br label %bb.cu

bb.cw:                                            ; preds = %bb.cr
  %i.oq = tail call double @llvm.floor.f64(double %i.nz)
  br label %bb.cu

bb.cx:                                            ; preds = %bb.cs
  %i.or = tail call double @llvm.floor.f64(double %i.nz)
  br label %bb.cu

bb.cy:                                            ; preds = %bb.cs
  %i.os = tail call double @llvm.ceil.f64(double %i.nz)
  br label %bb.cu

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i: ; preds = %bb.dg, %bb.cz, %bb.cu, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %bb.cg
  %.sroa.016.0.i.i = phi double [ %i.oe, %bb.ck ], [ %i.oo, %bb.cu ], [ %i.oa, %bb.cg ], [ %i.ob, %bb.ch ], [ %i.og, %bb.cm ], [ %i.of, %bb.cl ], [ %i.oi, %bb.co ], [ %i.oh, %bb.cn ], [ %i.ph, %bb.dg ], [ %i.ox, %bb.cz ] ; 3 uses
  %i.ot = tail call double @llvm.fabs.f64(double %.sroa.016.0.i.i)
  %i.ou = fcmp ult double %i.ot, %i.mv
  br i1 %i.ou, label %bb.dm, label %bb.dl

bb.cz:                                            ; preds = %bb.cc
  %i.ov = icmp eq i8 %narrow.i.i, 2
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.021.0, i64 3)
  %.sroa.015.0.i.i = select i1 %i.ov, i64 %..i.i.i, i64 %.sroa.021.0
  %i.ow = load double, ptr %.sroa.05.0.sroa.phi96.i.i, align 8, !noalias !2005, !noundef !18
  %i.ox = fdiv double %i.lv, %i.ow                ; 2 uses
  %i.oy = uitofp i64 %.sroa.015.0.i.i to double
  %i.oz = tail call double @llvm.pow.f64(double 1.000000e+01, double %i.oy) ; 3 uses
  %i.pa = fcmp ueq double %i.oz, +inf
  br i1 %i.pa, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pb = fmul double %i.oz, %i.ox                ; 9 uses
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.db
    i8 1, label %bb.dc
    i8 2, label %bb.dd
    i8 3, label %bb.de
    i8 4, label %bb.df
  ]

bb.db:                                            ; preds = %bb.da
  %i.pc = tail call double @llvm.ceil.f64(double %i.pb)
  br label %bb.dg

bb.dc:                                            ; preds = %bb.da
  %i.pd = tail call double @llvm.floor.f64(double %i.pb)
  br label %bb.dg

bb.dd:                                            ; preds = %bb.da
  %i.pe = fcmp olt double %i.pb, 0.000000e+00
  br i1 %i.pe, label %bb.di, label %bb.dh

bb.de:                                            ; preds = %bb.da
  %i.pf = fcmp olt double %i.pb, 0.000000e+00
  br i1 %i.pf, label %bb.dk, label %bb.dj

bb.df:                                            ; preds = %bb.da
  %i.pg = tail call double @llvm.round.f64(double %i.pb)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.dc, %bb.db
  %.sroa.01.0.i74.i.i = phi double [ %i.pc, %bb.db ], [ %i.pd, %bb.dc ], [ %i.pj, %bb.di ], [ %i.pi, %bb.dh ], [ %i.pl, %bb.dk ], [ %i.pk, %bb.dj ], [ %i.pg, %bb.df ]
  %i.ph = fdiv double %.sroa.01.0.i74.i.i, %i.oz
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.dh:                                            ; preds = %bb.dd
  %i.pi = tail call double @llvm.ceil.f64(double %i.pb)
  br label %bb.dg

bb.di:                                            ; preds = %bb.dd
  %i.pj = tail call double @llvm.floor.f64(double %i.pb)
  br label %bb.dg

bb.dj:                                            ; preds = %bb.de
  %i.pk = tail call double @llvm.floor.f64(double %i.pb)
  br label %bb.dg

bb.dk:                                            ; preds = %bb.de
  %i.pl = tail call double @llvm.ceil.f64(double %i.pb)
  br label %bb.dg

bb.dl:                                            ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i
  br i1 %i.nu, label %bb.do, label %bb.dp

bb.dm:                                            ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i
  %i.pm = getelementptr i8, ptr %.sroa.05.0.sroa.phi.i.i, i64 -8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.do, %bb.dm
  %.sink191.i.i = phi double [ %i.po, %bb.do ], [ %.sroa.016.0.i.i, %bb.dm ] ; 2 uses
  %.sink.in.i.i = phi ptr [ %.sroa.05.0.sroa.phi.i.i, %bb.do ], [ %i.pm, %bb.dm ]
  %.sink.i.i = load i64, ptr %.sink.in.i.i, align 8, !range !2021, !noalias !2005, !noundef !18 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %.sink191.i.i, ptr %i.pn, align 8, !noalias !1928
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sink.i.i, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !1928
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i8 %.sroa.02.0.i.i, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !1928
  br label %bb.dq

bb.do:                                            ; preds = %bb.dl
  %i.po = fdiv double %.sroa.016.0.i.i, %i.mv
  br label %bb.dn

bb.dp:                                            ; preds = %bb.dl
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 10, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #27, !noalias !2011
  unreachable

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread: ; preds = %bb.bo, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2005
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
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.032.0.copyload.i = load double, ptr %i.pp, align 8, !noalias !1928
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.433.0.copyload.i = load i64, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !1928
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.534.0.copyload.i = load i8, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !1928
  %.sroa.14.sroa.0.0.copyload233 = load i56, ptr %i.gb, align 1, !noalias !2003
  br label %bb.eq

bb.dq:                                            ; preds = %bb.dn, %bb.br, %bb.be
  %.sroa.425.0.copyload.i = phi i64 [ %.sink.i.i, %bb.dn ], [ -1, %bb.br ], [ -1, %bb.be ] ; 5 uses
  %.sroa.024.0.copyload.i = phi double [ %.sink191.i.i, %bb.dn ], [ %i.lv, %bb.br ], [ %i.lv, %bb.be ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2005
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
  %.sroa.526.0.copyload.i = load i8, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !1928 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1928
  store double %.sroa.024.0.copyload.i, ptr %i.ax, align 8, !noalias !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1928
  %i.pq = tail call { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() #26, !noalias !1984 ; 2 uses
  %i.pr = extractvalue { ptr, i64 } %i.pq, 0
  %i.ps = extractvalue { ptr, i64 } %i.pq, 1
  store ptr %i.pr, ptr %i.aw, align 8, !noalias !1928
  %i.pt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.ps, ptr %i.pt, align 8, !noalias !1928
  %.not168.i = icmp eq i64 %.sroa.425.0.copyload.i, -1
  br i1 %.not168.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pu = add i64 %.sroa.021.0, -1
  %or.cond2.i = icmp ult i64 %i.pu, 65535
  br i1 %or.cond2.i, label %.split165.i, label %bb.eo

bb.ds:                                            ; preds = %bb.dq
  %i.pv = icmp ult i64 %.sroa.021.0, 65536        ; 2 uses
  %or.cond.i = and i1 %i.pv, %i.ge
  br i1 %or.cond.i, label %.split.i, label %bb.ee

.split.i:                                         ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1928
  %i.pw = uitofp nneg i64 %.sroa.021.0 to double
  %i.px = tail call double @llvm.pow.f64(double 1.000000e+01, double %i.pw) ; 3 uses
  %i.py = fcmp ueq double %i.px, +inf
  br i1 %i.py, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit.i, label %bb.dt

bb.dt:                                            ; preds = %.split.i
  %i.pz = fmul double %i.px, %.sroa.024.0.copyload.i ; 9 uses
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.du
    i8 1, label %bb.dv
    i8 2, label %bb.dw
    i8 3, label %bb.dx
    i8 4, label %bb.dy
  ]

bb.du:                                            ; preds = %bb.dt
  %i.qa = tail call double @llvm.ceil.f64(double %i.pz)
  br label %bb.dz

bb.dv:                                            ; preds = %bb.dt
  %i.qb = tail call double @llvm.floor.f64(double %i.pz)
  br label %bb.dz

bb.dw:                                            ; preds = %bb.dt
  %i.qc = fcmp olt double %i.pz, 0.000000e+00
  br i1 %i.qc, label %bb.eb, label %bb.ea

bb.dx:                                            ; preds = %bb.dt
  %i.qd = fcmp olt double %i.pz, 0.000000e+00
  br i1 %i.qd, label %bb.ed, label %bb.ec

bb.dy:                                            ; preds = %bb.dt
  %i.qe = tail call double @llvm.round.f64(double %i.pz)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dy, %bb.dv, %bb.du
  %.sroa.01.0.i.i = phi double [ %i.qa, %bb.du ], [ %i.qb, %bb.dv ], [ %i.qh, %bb.eb ], [ %i.qg, %bb.ea ], [ %i.qj, %bb.ed ], [ %i.qi, %bb.ec ], [ %i.qe, %bb.dy ]
  %i.qf = fdiv double %.sroa.01.0.i.i, %i.px
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit.i

bb.ea:                                            ; preds = %bb.dw
  %i.qg = tail call double @llvm.ceil.f64(double %i.pz)
  br label %bb.dz

bb.eb:                                            ; preds = %bb.dw
  %i.qh = tail call double @llvm.floor.f64(double %i.pz)
  br label %bb.dz

bb.ec:                                            ; preds = %bb.dx
  %i.qi = tail call double @llvm.floor.f64(double %i.pz)
  br label %bb.dz

bb.ed:                                            ; preds = %bb.dx
  %i.qj = tail call double @llvm.ceil.f64(double %i.pz)
  br label %bb.dz

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit.i: ; preds = %bb.dz, %.split.i
  %.sroa.0.0.i.i = phi double [ %i.qf, %bb.dz ], [ %.sroa.024.0.copyload.i, %.split.i ]
  store double %.sroa.0.0.i.i, ptr %i.au, align 8, !noalias !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1928
  %i.qk = trunc nuw i64 %.sroa.021.0 to i16
  store ptr %i.au, ptr %i.at, align 8, !noalias !1928
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !1928
  %i.ql = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %i.ql, align 8, !noalias !1928
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i16 %i.qk, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !1928
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noundef nonnull @116, ptr noundef nonnull %i.at) #26, !noalias !1984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1928
  call fastcc void @_RNCNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to0B5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.av) #28, !noalias !1984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1928
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread258

bb.ee:                                            ; preds = %bb.ds
  %or.cond1.i = and i1 %i.pv, %.sroa.020.0
  br i1 %or.cond1.i, label %.split149.i, label %.split145.i

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread258: ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit.i, %.split145.i, %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i, %.split165.i, %.split161.i, %.split153.i, %.split157.i
  %.sroa.8160.8.copyload162370 = load i64, ptr %i.af, align 8, !noalias !2003
  %.sroa.12.8..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.12.8.copyload166 = load i64, ptr %.sroa.12.8..sroa_idx165, align 8, !noalias !2003
  %.sroa.13.8..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.13.8.copyload170 = load i8, ptr %.sroa.13.8..sroa_idx169, align 8, !noalias !2003
  %.sroa.14.8..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %.sroa.14.sroa.0.0.copyload232 = load i56, ptr %.sroa.14.8..sroa_idx172, align 1, !noalias !2003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1928
  br label %.sink.split

.split145.i:                                      ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1928
  store ptr %i.ax, ptr %i.ao, align 8, !noalias !1928
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !1928
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noundef nonnull @117, ptr noundef nonnull %i.ao) #26, !noalias !1984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1928
  call fastcc void @_RNCNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to0B5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap) #28, !noalias !1984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1928
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread258

.split149.i:                                      ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1928
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.ef
    i8 1, label %bb.eg
    i8 2, label %bb.eh
    i8 3, label %bb.ei
    i8 4, label %bb.ej
  ]

bb.ef:                                            ; preds = %.split149.i
  %i.qm = tail call double @llvm.ceil.f64(double %.sroa.024.0.copyload.i)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i

bb.eg:                                            ; preds = %.split149.i
  %i.qn = tail call double @llvm.floor.f64(double %.sroa.024.0.copyload.i)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i

bb.eh:                                            ; preds = %.split149.i
  %i.qo = fcmp olt double %.sroa.024.0.copyload.i, 0.000000e+00
  br i1 %i.qo, label %bb.el, label %bb.ek

bb.ei:                                            ; preds = %.split149.i
  %i.qp = fcmp olt double %.sroa.024.0.copyload.i, 0.000000e+00
  br i1 %i.qp, label %bb.en, label %bb.em

bb.ej:                                            ; preds = %.split149.i
  %i.qq = tail call double @llvm.round.f64(double %.sroa.024.0.copyload.i)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i

bb.ek:                                            ; preds = %bb.eh
  %i.qr = tail call double @llvm.ceil.f64(double %.sroa.024.0.copyload.i)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i

bb.el:                                            ; preds = %bb.eh
  %i.qs = tail call double @llvm.floor.f64(double %.sroa.024.0.copyload.i)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i

bb.em:                                            ; preds = %bb.ei
  %i.qt = tail call double @llvm.floor.f64(double %.sroa.024.0.copyload.i)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i

bb.en:                                            ; preds = %bb.ei
  %i.qu = tail call double @llvm.ceil.f64(double %.sroa.024.0.copyload.i)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit198.i: ; preds = %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.eg, %bb.ef
  %.sroa.01.0.i195.i = phi double [ %i.qm, %bb.ef ], [ %i.qn, %bb.eg ], [ %i.qs, %bb.el ], [ %i.qr, %bb.ek ], [ %i.qu, %bb.en ], [ %i.qt, %bb.em ], [ %i.qq, %bb.ej ]
  store double %.sroa.01.0.i195.i, ptr %i.as, align 8, !noalias !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1928
  %i.qv = trunc nuw i64 %.sroa.021.0 to i16
  store ptr %i.as, ptr %i.aq, align 8, !noalias !1928
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !1928
  %i.qw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr null, ptr %i.qw, align 8, !noalias !1928
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i16 %i.qv, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !1928
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noundef nonnull @116, ptr noundef nonnull %i.aq) #26, !noalias !1984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1928
  call fastcc void @_RNCNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to0B5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar) #28, !noalias !1984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1928
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread258

bb.eo:                                            ; preds = %bb.dr
  br i1 %.sroa.020.0, label %.split161.i, label %bb.ep

.split165.i:                                      ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1928
  store i64 %.sroa.425.0.copyload.i, ptr %i.am, align 8, !noalias !1928
  %i.qx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i8 %.sroa.526.0.copyload.i, ptr %i.qx, align 8, !noalias !1928
  %i.qy = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i8 %.val126, ptr %i.qy, align 8, !noalias !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1928
  %i.qz = trunc nuw i64 %.sroa.021.0 to i16
  store ptr %i.ax, ptr %i.al, align 8, !noalias !1928
  %.sroa.473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.473.0..sroa_idx.i, align 8, !noalias !1928
  %i.ra = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr null, ptr %i.ra, align 8, !noalias !1928
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i16 %i.qz, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !1928
  %i.rb = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.az, ptr %i.rb, align 8, !noalias !1928
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsbyqtxyC5WYI_9uu_numfmt, ptr %.sroa.483.0..sroa_idx.i, align 8, !noalias !1928
  %i.rc = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr %i.am, ptr %i.rc, align 8, !noalias !1928
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr @_RNvXs0_NtCsbyqtxyC5WYI_9uu_numfmt5unitsNtB5_17DisplayableSuffixNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.487.0..sroa_idx.i, align 8, !noalias !1928
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull @120, ptr noundef nonnull %i.al) #26, !noalias !1984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1928
  call fastcc void @_RNCNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to0B5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.an) #28, !noalias !1984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1928
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread258
end_hunk_0
