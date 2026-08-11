inline.NumInlined: 41
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode:bb.a
  %i.oo = load i8, ptr %i.on, align 1, !alias.scope !165, !noalias !166, !noundef !8 ; 2 uses
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !alias.scope !169, !noalias !170, !noundef !8 ; 2 uses
  %i.os = icmp eq i8 %i.or, -1
  br i1 %i.os, label %.loopexit345.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 21
  %i.ou = load i8, ptr %i.ot, align 1, !alias.scope !165, !noalias !166, !noundef !8 ; 2 uses
  %i.ov = zext i8 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !alias.scope !169, !noalias !170, !noundef !8 ; 2 uses
  %i.oy = icmp eq i8 %i.ox, -1
  br i1 %i.oy, label %.loopexit345.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 22
  %i.pa = load i8, ptr %i.oz, align 1, !alias.scope !165, !noalias !166, !noundef !8 ; 2 uses
  %i.pb = zext i8 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !alias.scope !169, !noalias !170, !noundef !8 ; 2 uses
  %i.pe = icmp eq i8 %i.pd, -1
  br i1 %i.pe, label %.loopexit345.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 23
  %i.pg = load i8, ptr %i.pf, align 1, !alias.scope !165, !noalias !166, !noundef !8 ; 2 uses
  %i.ph = zext i8 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !alias.scope !169, !noalias !170, !noundef !8 ; 2 uses
  %i.pk = icmp eq i8 %i.pj, -1
  br i1 %i.pk, label %.loopexit345.i, label %bb.ce

.loopexit345.i:                                   ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw
  %.sink2629.i = phi i64 [ 23, %bb.cd ], [ 22, %bb.cc ], [ 17, %bb.bx ], [ 18, %bb.by ], [ 19, %bb.bz ], [ 20, %bb.ca ], [ 21, %bb.cb ], [ 16, %bb.bw ]
  %.sroa.14129.1.ph.i = phi i8 [ %i.pg, %bb.cd ], [ %i.pa, %bb.cc ], [ %i.nw, %bb.bx ], [ %i.oc, %bb.by ], [ %i.oi, %bb.bz ], [ %i.oo, %bb.ca ], [ %i.ou, %bb.cb ], [ %i.nq, %bb.bw ]
  %i.pl = shl i64 %.sroa.13.01120.i, 5
  %i.pm = or disjoint i64 %.sink2629.i, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.pn, align 8, !alias.scope !66, !noalias !86
  %.sroa.4221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.14129.1.ph.i, ptr %.sroa.4221.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !86
  %.sroa.6223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.pm, ptr %.sroa.6223.0..sroa_idx.i, align 8, !alias.scope !66, !noalias !86
  store i64 2, ptr %0, align 8, !alias.scope !66, !noalias !86
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.ce:                                            ; preds = %bb.cd
  %i.po = zext i8 %i.nt to i64
  %i.pp = shl i64 %i.po, 58
  %i.pq = zext i8 %i.nz to i64
  %i.pr = shl nuw nsw i64 %i.pq, 52
  %i.ps = or i64 %i.pr, %i.pp
  %i.pt = zext i8 %i.of to i64
  %i.pu = shl nuw nsw i64 %i.pt, 46
  %i.pv = or i64 %i.ps, %i.pu
  %i.pw = zext i8 %i.ol to i64
  %i.px = shl nuw nsw i64 %i.pw, 40
  %i.py = or i64 %i.pv, %i.px
  %i.pz = zext i8 %i.or to i64
  %i.qa = shl nuw nsw i64 %i.pz, 34
  %i.qb = or i64 %i.py, %i.qa
  %i.qc = zext i8 %i.ox to i64
  %i.qd = shl nuw nsw i64 %i.qc, 28
  %i.qe = or i64 %i.qb, %i.qd
  %i.qf = zext i8 %i.pd to i64
  %i.qg = shl nuw nsw i64 %i.qf, 22
  %i.qh = or i64 %i.qe, %i.qg
  %i.qi = zext i8 %i.pj to i64
  %i.qj = shl nuw nsw i64 %i.qi, 16
  %i.qk = or i64 %i.qh, %i.qj
  %i.ql = tail call i64 @llvm.bswap.i64(i64 %i.qk)
  %.sroa.0274.0.extract.trunc.i = trunc i64 %i.ql to i48
  store i48 %.sroa.0274.0.extract.trunc.i, ptr %i.np, align 1, !alias.scope !171, !noalias !175
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 24
  %i.qn = getelementptr inbounds nuw i8, ptr %i.hg, i64 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.qo = load i8, ptr %i.qm, align 1, !alias.scope !182, !noalias !183, !noundef !8 ; 2 uses
  %i.qp = zext i8 %i.qo to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !alias.scope !186, !noalias !187, !noundef !8 ; 2 uses
  %i.qs = icmp eq i8 %i.qr, -1
  br i1 %i.qs, label %.loopexit346.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 25
  %i.qu = load i8, ptr %i.qt, align 1, !alias.scope !182, !noalias !183, !noundef !8 ; 2 uses
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !alias.scope !186, !noalias !187, !noundef !8 ; 2 uses
  %i.qy = icmp eq i8 %i.qx, -1
  br i1 %i.qy, label %.loopexit346.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 26
  %i.ra = load i8, ptr %i.qz, align 1, !alias.scope !182, !noalias !183, !noundef !8 ; 2 uses
  %i.rb = zext i8 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !alias.scope !186, !noalias !187, !noundef !8 ; 2 uses
  %i.re = icmp eq i8 %i.rd, -1
  br i1 %i.re, label %.loopexit346.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 27
  %i.rg = load i8, ptr %i.rf, align 1, !alias.scope !182, !noalias !183, !noundef !8 ; 2 uses
  %i.rh = zext i8 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !alias.scope !186, !noalias !187, !noundef !8 ; 2 uses
  %i.rk = icmp eq i8 %i.rj, -1
  br i1 %i.rk, label %.loopexit346.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 28
  %i.rm = load i8, ptr %i.rl, align 1, !alias.scope !182, !noalias !183, !noundef !8 ; 2 uses
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !alias.scope !186, !noalias !187, !noundef !8 ; 2 uses
  %i.rq = icmp eq i8 %i.rp, -1
  br i1 %i.rq, label %.loopexit346.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 29
  %i.rs = load i8, ptr %i.rr, align 1, !alias.scope !182, !noalias !183, !noundef !8 ; 2 uses
  %i.rt = zext i8 %i.rs to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !alias.scope !186, !noalias !187, !noundef !8 ; 2 uses
  %i.rw = icmp eq i8 %i.rv, -1
  br i1 %i.rw, label %.loopexit346.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 30
  %i.ry = load i8, ptr %i.rx, align 1, !alias.scope !182, !noalias !183, !noundef !8 ; 2 uses
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !186, !noalias !187, !noundef !8 ; 2 uses
  %i.sc = icmp eq i8 %i.sb, -1
  br i1 %i.sc, label %.loopexit346.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0116.01122.i, i64 31
  %i.se = load i8, ptr %i.sd, align 1, !alias.scope !182, !noalias !183, !noundef !8 ; 2 uses
  %i.sf = zext i8 %i.se to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !alias.scope !186, !noalias !187, !noundef !8 ; 2 uses
  %i.si = icmp eq i8 %i.sh, -1
  br i1 %i.si, label %.loopexit346.i, label %bb.cm

.loopexit346.i:                                   ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.sink2630.i = phi i64 [ 31, %bb.cl ], [ 30, %bb.ck ], [ 25, %bb.cf ], [ 26, %bb.cg ], [ 27, %bb.ch ], [ 28, %bb.ci ], [ 29, %bb.cj ], [ 24, %bb.ce ]
  %.sroa.14133.1.ph.i = phi i8 [ %i.se, %bb.cl ], [ %i.ry, %bb.ck ], [ %i.qu, %bb.cf ], [ %i.ra, %bb.cg ], [ %i.rg, %bb.ch ], [ %i.rm, %bb.ci ], [ %i.rs, %bb.cj ], [ %i.qo, %bb.ce ]
  %i.sj = shl i64 %.sroa.13.01120.i, 5
  %i.sk = or disjoint i64 %.sink2630.i, %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.sl, align 8, !alias.scope !66, !noalias !86
  %.sroa.4245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.14133.1.ph.i, ptr %.sroa.4245.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !86
  %.sroa.6247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.sk, ptr %.sroa.6247.0..sroa_idx.i, align 8, !alias.scope !66, !noalias !86
  store i64 2, ptr %0, align 8, !alias.scope !66, !noalias !86
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.cm:                                            ; preds = %bb.cl
  %i.sm = zext i8 %i.qr to i64
  %i.sn = shl i64 %i.sm, 58
  %i.so = zext i8 %i.qx to i64
  %i.sp = shl nuw nsw i64 %i.so, 52
  %i.sq = or i64 %i.sp, %i.sn
  %i.sr = zext i8 %i.rd to i64
  %i.ss = shl nuw nsw i64 %i.sr, 46
  %i.st = or i64 %i.sq, %i.ss
  %i.su = zext i8 %i.rj to i64
  %i.sv = shl nuw nsw i64 %i.su, 40
  %i.sw = or i64 %i.st, %i.sv
  %i.sx = zext i8 %i.rp to i64
  %i.sy = shl nuw nsw i64 %i.sx, 34
  %i.sz = or i64 %i.sw, %i.sy
  %i.ta = zext i8 %i.rv to i64
  %i.tb = shl nuw nsw i64 %i.ta, 28
  %i.tc = or i64 %i.sz, %i.tb
  %i.td = zext i8 %i.sb to i64
  %i.te = shl nuw nsw i64 %i.td, 22
  %i.tf = or i64 %i.tc, %i.te
  %i.tg = zext i8 %i.sh to i64
  %i.th = shl nuw nsw i64 %i.tg, 16
  %i.ti = or i64 %i.tf, %i.th
  %i.tj = tail call i64 @llvm.bswap.i64(i64 %i.ti)
  %.sroa.0273.0.extract.trunc.i = trunc i64 %i.tj to i48
  store i48 %.sroa.0273.0.extract.trunc.i, ptr %i.qn, align 1, !alias.scope !188, !noalias !192
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %._crit_edge.i, label %.lr.ph.i

_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit: ; preds = %bb.g, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i, %bb.p, %bb.q, %bb.u, %._crit_edge.i.i, %.loopexit211.i.i, %.loopexit1941.i, %bb.aa, %bb.av, %bb.bn, %.loopexit344.i, %.loopexit345.i, %.loopexit346.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(323) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %5 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 26)
  %.not = icmp samesign ult i64 %2, 27
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 32 uses
  br label %bb.v

.loopexit:                                        ; preds = %bb.w, %bb.a
  %.sroa.015.0 = phi i64 [ 0, %bb.a ], [ %i.ik, %bb.w ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.cb, %bb.w ] ; 2 uses
  %i.b = urem i64 %2, 3                           ; 2 uses
  %i.c = sub nuw nsw i64 %2, %i.b                 ; 4 uses
  %i.d = icmp ult i64 %.sroa.015.0, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.w
  %i.f = add nuw nsw i64 %.sroa.015.1149, 50      ; 2 uses
  %.not41 = icmp samesign ugt i64 %i.f, %2
  br i1 %.not41, label %bb.u, label %bb.v, !prof !194

._crit_edge:                                      ; preds = %bb.s, %.loopexit
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.0, %.loopexit ], [ %i.ax, %bb.s ] ; 11 uses
  switch i64 %i.b, label %bb.k [
    i64 2, label %bb.d
    i64 1, label %bb.l
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.0.269 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.ax, %bb.s ] ; 3 uses
  %.sroa.015.268 = phi i64 [ %.sroa.015.0, %.lr.ph ], [ %i.g, %bb.s ] ; 3 uses
  %i.g = add nuw i64 %.sroa.015.268, 3            ; 4 uses
  %.not45 = icmp ugt i64 %i.g, %2
  br i1 %.not45, label %bb.q, label %bb.r, !prof !87

bb.d:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noundef !8  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.k = icmp ult i64 %.sroa.0.2.lcssa, %4
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i8 %i.i, 2
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.2.lcssa
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.r = load i8, ptr %i.q, align 1, !noundef !8  ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.0.2.lcssa, 1      ; 3 uses
  %i.t = icmp ult i64 %i.s, %4
  br i1 %i.t, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.2.lcssa, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i8 @llvm.fshl.i8(i8 %i.i, i8 %i.r, i8 4)
  %i.v = and i8 %i.u, 63
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = add nuw i64 %.sroa.0.2.lcssa, 2         ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %4
  br i1 %i.ab, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = shl i8 %i.r, 2
  %i.ad = and i8 %i.ac, 60
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #19
  unreachable

.sink.split:                                      ; preds = %bb.i, %bb.o
  %.sink130 = phi i8 [ %i.aw, %bb.o ], [ %i.ad, %bb.i ]
  %.sink126 = phi i64 [ %i.at, %bb.o ], [ %i.aa, %bb.i ]
  %.sink = phi i64 [ 2, %bb.o ], [ 3, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.af = zext nneg i8 %.sink130 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %.sink126
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = add nuw i64 %.sroa.0.2.lcssa, %.sink
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %._crit_edge
  %.sroa.0.3 = phi i64 [ %.sroa.0.2.lcssa, %._crit_edge ], [ %i.aj, %.sink.split ]
  ret i64 %.sroa.0.3

bb.l:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.al = load i8, ptr %i.ak, align 1, !noundef !8 ; 2 uses
  %i.am = icmp ult i64 %.sroa.0.2.lcssa, %4
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ao = lshr i8 %i.al, 2
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.2.lcssa
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.sroa.0.2.lcssa, 1     ; 3 uses
  %i.au = icmp ult i64 %i.at, %4
  br i1 %i.au, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.2.lcssa, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.av = shl i8 %i.al, 4
  %i.aw = and i8 %i.av, 48
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19
  unreachable

bb.q:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.268, i64 noundef %i.g, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #19
  unreachable

bb.r:                                             ; preds = %bb.c
  %i.ax = add nuw i64 %.sroa.0.269, 4             ; 4 uses
  %.not46 = icmp ugt i64 %i.ax, %4
  br i1 %.not46, label %bb.t, label %bb.s, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.015.268 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.269 ; 4 uses
  %i.ba = load i8, ptr %i.ay, align 1, !noundef !8 ; 2 uses
  %i.bb = lshr i8 %i.ba, 2
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !8
  store i8 %i.be, ptr %i.az, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !8 ; 2 uses
  %i.bh = tail call i8 @llvm.fshl.i8(i8 %i.ba, i8 %i.bg, i8 4)
  %i.bi = and i8 %i.bh, 63
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !8 ; 2 uses
  %i.bp = tail call i8 @llvm.fshl.i8(i8 %i.bg, i8 %i.bo, i8 2)
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = and i8 %i.bo, 63
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = icmp ult i64 %i.g, %i.c
  br i1 %i.ca, label %bb.c, label %._crit_edge

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.269, i64 noundef %i.ax, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #19
  unreachable

bb.u:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ik, i64 noundef %i.f, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19
  unreachable

bb.v:                                             ; preds = %.preheader, %bb.b
  %.sroa.0.1150 = phi i64 [ 0, %.preheader ], [ %i.cb, %bb.b ] ; 3 uses
  %.sroa.015.1149 = phi i64 [ 0, %.preheader ], [ %i.ik, %bb.b ] ; 3 uses
  %i.cb = add nuw i64 %.sroa.0.1150, 32           ; 4 uses
  %.not42 = icmp ugt i64 %i.cb, %4
  br i1 %.not42, label %bb.x, label %bb.w, !prof !87

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.015.1149 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.1150 ; 32 uses
  %.val51 = load i64, ptr %i.cc, align 1
  %i.ce = tail call noundef i64 @llvm.bswap.i64(i64 %.val51) ; 8 uses
end_hunk_0
