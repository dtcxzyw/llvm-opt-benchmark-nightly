Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/base64-a5be3ff61865da80.base64.4b5840a3fb7cbc5d-cgu.0?download=true
inline.NumInlined: 41
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode:bb.a

bb.bz:                                            ; preds = %bb.by
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 21
  %i.oo = load i8, ptr %i.on, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !alias.scope !182, !noalias !183, !noundef !5 ; 2 uses
  %i.os = icmp eq i8 %i.or, -1
  br i1 %i.os, label %.loopexit344.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 22
  %i.ou = load i8, ptr %i.ot, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.ov = zext i8 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !alias.scope !182, !noalias !183, !noundef !5 ; 2 uses
  %i.oy = icmp eq i8 %i.ox, -1
  br i1 %i.oy, label %.loopexit344.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 23
  %i.pa = load i8, ptr %i.oz, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.pb = zext i8 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !alias.scope !182, !noalias !183, !noundef !5 ; 2 uses
  %i.pe = icmp eq i8 %i.pd, -1
  br i1 %i.pe, label %.loopexit344.i, label %bb.cc

.loopexit344.i:                                   ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.sink2634.i = phi i64 [ 23, %bb.cb ], [ 22, %bb.ca ], [ 17, %bb.bv ], [ 18, %bb.bw ], [ 19, %bb.bx ], [ 20, %bb.by ], [ 21, %bb.bz ], [ 16, %bb.bu ]
  %.sroa.14129.0.ph.i = phi i8 [ %i.pa, %bb.cb ], [ %i.ou, %bb.ca ], [ %i.nq, %bb.bv ], [ %i.nw, %bb.bw ], [ %i.oc, %bb.bx ], [ %i.oi, %bb.by ], [ %i.oo, %bb.bz ], [ %i.nk, %bb.bu ]
  %i.pf = shl i64 %.sroa.13.01117.i, 5
  %i.pg = or disjoint i64 %.sink2634.i, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ph, align 8, !alias.scope !127, !noalias !138
  %.sroa.4221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.14129.0.ph.i, ptr %.sroa.4221.0..sroa_idx.i, align 1, !alias.scope !127, !noalias !138
  %.sroa.6223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.pg, ptr %.sroa.6223.0..sroa_idx.i, align 8, !alias.scope !127, !noalias !138
  store i64 2, ptr %0, align 8, !alias.scope !127, !noalias !138
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.cc:                                            ; preds = %bb.cb
  %i.pi = zext i8 %i.nn to i64
  %i.pj = shl i64 %i.pi, 58
  %i.pk = zext i8 %i.nt to i64
  %i.pl = shl nuw nsw i64 %i.pk, 52
  %i.pm = or i64 %i.pl, %i.pj
  %i.pn = zext i8 %i.nz to i64
  %i.po = shl nuw nsw i64 %i.pn, 46
  %i.pp = or i64 %i.pm, %i.po
  %i.pq = zext i8 %i.of to i64
  %i.pr = shl nuw nsw i64 %i.pq, 40
  %i.ps = or i64 %i.pp, %i.pr
  %i.pt = zext i8 %i.ol to i64
  %i.pu = shl nuw nsw i64 %i.pt, 34
  %i.pv = or i64 %i.ps, %i.pu
  %i.pw = zext i8 %i.or to i64
  %i.px = shl nuw nsw i64 %i.pw, 28
  %i.py = or i64 %i.pv, %i.px
  %i.pz = zext i8 %i.ox to i64
  %i.qa = shl nuw nsw i64 %i.pz, 22
  %i.qb = or i64 %i.py, %i.qa
  %i.qc = zext i8 %i.pd to i64
  %i.qd = shl nuw nsw i64 %i.qc, 16
  %i.qe = or i64 %i.qb, %i.qd
  %i.qf = tail call i64 @llvm.bswap.i64(i64 %i.qe)
  %.sroa.0274.0.extract.trunc.i = trunc i64 %i.qf to i48
  store i48 %.sroa.0274.0.extract.trunc.i, ptr %i.nj, align 1, !alias.scope !184, !noalias !185
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 24
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ha, i64 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.qi = load i8, ptr %i.qg, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.qj = zext i8 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !alias.scope !190, !noalias !191, !noundef !5 ; 2 uses
  %i.qm = icmp eq i8 %i.ql, -1
  br i1 %i.qm, label %.loopexit345.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 25
  %i.qo = load i8, ptr %i.qn, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.qp = zext i8 %i.qo to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !alias.scope !190, !noalias !191, !noundef !5 ; 2 uses
  %i.qs = icmp eq i8 %i.qr, -1
  br i1 %i.qs, label %.loopexit345.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 26
  %i.qu = load i8, ptr %i.qt, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !alias.scope !190, !noalias !191, !noundef !5 ; 2 uses
  %i.qy = icmp eq i8 %i.qx, -1
  br i1 %i.qy, label %.loopexit345.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 27
  %i.ra = load i8, ptr %i.qz, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.rb = zext i8 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !alias.scope !190, !noalias !191, !noundef !5 ; 2 uses
  %i.re = icmp eq i8 %i.rd, -1
  br i1 %i.re, label %.loopexit345.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 28
  %i.rg = load i8, ptr %i.rf, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.rh = zext i8 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !alias.scope !190, !noalias !191, !noundef !5 ; 2 uses
  %i.rk = icmp eq i8 %i.rj, -1
  br i1 %i.rk, label %.loopexit345.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 29
  %i.rm = load i8, ptr %i.rl, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !alias.scope !190, !noalias !191, !noundef !5 ; 2 uses
  %i.rq = icmp eq i8 %i.rp, -1
  br i1 %i.rq, label %.loopexit345.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 30
  %i.rs = load i8, ptr %i.rr, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.rt = zext i8 %i.rs to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !alias.scope !190, !noalias !191, !noundef !5 ; 2 uses
  %i.rw = icmp eq i8 %i.rv, -1
  br i1 %i.rw, label %.loopexit345.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 31
  %i.ry = load i8, ptr %i.rx, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !190, !noalias !191, !noundef !5 ; 2 uses
  %i.sc = icmp eq i8 %i.sb, -1
  br i1 %i.sc, label %.loopexit345.i, label %bb.ck

.loopexit345.i:                                   ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %.sink2635.i = phi i64 [ 31, %bb.cj ], [ 30, %bb.ci ], [ 25, %bb.cd ], [ 26, %bb.ce ], [ 27, %bb.cf ], [ 28, %bb.cg ], [ 29, %bb.ch ], [ 24, %bb.cc ]
  %.sroa.14133.0.ph.i = phi i8 [ %i.ry, %bb.cj ], [ %i.rs, %bb.ci ], [ %i.qo, %bb.cd ], [ %i.qu, %bb.ce ], [ %i.ra, %bb.cf ], [ %i.rg, %bb.cg ], [ %i.rm, %bb.ch ], [ %i.qi, %bb.cc ]
  %i.sd = shl i64 %.sroa.13.01117.i, 5
  %i.se = or disjoint i64 %.sink2635.i, %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.sf, align 8, !alias.scope !127, !noalias !138
  %.sroa.4245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.14133.0.ph.i, ptr %.sroa.4245.0..sroa_idx.i, align 1, !alias.scope !127, !noalias !138
  %.sroa.6247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.se, ptr %.sroa.6247.0..sroa_idx.i, align 8, !alias.scope !127, !noalias !138
  store i64 2, ptr %0, align 8, !alias.scope !127, !noalias !138
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.ck:                                            ; preds = %bb.cj
  %i.sg = zext i8 %i.ql to i64
  %i.sh = shl i64 %i.sg, 58
  %i.si = zext i8 %i.qr to i64
  %i.sj = shl nuw nsw i64 %i.si, 52
  %i.sk = or i64 %i.sj, %i.sh
  %i.sl = zext i8 %i.qx to i64
  %i.sm = shl nuw nsw i64 %i.sl, 46
  %i.sn = or i64 %i.sk, %i.sm
  %i.so = zext i8 %i.rd to i64
  %i.sp = shl nuw nsw i64 %i.so, 40
  %i.sq = or i64 %i.sn, %i.sp
  %i.sr = zext i8 %i.rj to i64
  %i.ss = shl nuw nsw i64 %i.sr, 34
  %i.st = or i64 %i.sq, %i.ss
  %i.su = zext i8 %i.rp to i64
  %i.sv = shl nuw nsw i64 %i.su, 28
  %i.sw = or i64 %i.st, %i.sv
  %i.sx = zext i8 %i.rv to i64
  %i.sy = shl nuw nsw i64 %i.sx, 22
  %i.sz = or i64 %i.sw, %i.sy
  %i.ta = zext i8 %i.sb to i64
  %i.tb = shl nuw nsw i64 %i.ta, 16
  %i.tc = or i64 %i.sz, %i.tb
  %i.td = tail call i64 @llvm.bswap.i64(i64 %i.tc)
  %.sroa.0273.0.extract.trunc.i = trunc i64 %i.td to i48
  store i48 %.sroa.0273.0.extract.trunc.i, ptr %i.qh, align 1, !alias.scope !192, !noalias !193
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %._crit_edge.i, label %.lr.ph.i

_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit: ; preds = %bb.g, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i, %bb.p, %bb.q, %bb.u, %._crit_edge.i.i, %.loopexit211.i.i, %.loopexit1134.i, %._crit_edge, %bb.at, %bb.bl, %.loopexit343.i, %.loopexit344.i, %.loopexit345.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(323) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add nsw i64 %2, -26
  %.not = icmp samesign ult i64 %2, 27
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 32 uses
  br label %bb.b

.loopexit:                                        ; preds = %bb.w, %bb.a
  %.sroa.015.0 = phi i64 [ 0, %bb.a ], [ %i.il, %bb.w ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.cc, %bb.w ] ; 2 uses
  %i.c = urem i64 %2, 3                           ; 2 uses
  %i.d = sub nuw nsw i64 %2, %i.c                 ; 4 uses
  %i.e = icmp ult i64 %.sroa.015.0, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %.preheader, %bb.w
  %.sroa.015.1 = phi i64 [ %i.il, %bb.w ], [ 0, %.preheader ] ; 4 uses
  %.sroa.0.1 = phi i64 [ %i.cc, %bb.w ], [ 0, %.preheader ] ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.015.1, 26         ; 2 uses
  %.not41 = icmp samesign ugt i64 %i.g, %2
  br i1 %.not41, label %bb.u, label %bb.v, !prof !11

._crit_edge:                                      ; preds = %bb.s, %.loopexit
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.0, %.loopexit ], [ %i.ay, %bb.s ] ; 11 uses
  switch i64 %i.c, label %bb.k [
    i64 2, label %bb.d
    i64 1, label %bb.l
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.0.269 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.ay, %bb.s ] ; 3 uses
  %.sroa.015.268 = phi i64 [ %.sroa.015.0, %.lr.ph ], [ %i.h, %bb.s ] ; 3 uses
  %i.h = add nuw i64 %.sroa.015.268, 3            ; 4 uses
  %.not45 = icmp ugt i64 %i.h, %2
  br i1 %.not45, label %bb.q, label %bb.r, !prof !11

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noundef !5  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.l = icmp ult i64 %.sroa.0.2.lcssa, %4
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i8 %i.j, 2
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.2.lcssa
  store i8 %i.p, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !5  ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.0.2.lcssa, 1      ; 3 uses
  %i.u = icmp ult i64 %i.t, %4
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.2.lcssa, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i8 @llvm.fshl.i8(i8 %i.j, i8 %i.s, i8 4)
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.t
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = add nuw i64 %.sroa.0.2.lcssa, 2         ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %4
  br i1 %i.ac, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ad = shl i8 %i.s, 2
  %i.ae = and i8 %i.ad, 60
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #19
  unreachable

.sink.split:                                      ; preds = %bb.i, %bb.o
  %.sink130 = phi i8 [ %i.ax, %bb.o ], [ %i.ae, %bb.i ]
  %.sink126 = phi i64 [ %i.au, %bb.o ], [ %i.ab, %bb.i ]
  %.sink = phi i64 [ 2, %bb.o ], [ 3, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ag = zext nneg i8 %.sink130 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %.sink126
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = add nuw i64 %.sroa.0.2.lcssa, %.sink
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %._crit_edge
  %.sroa.0.3 = phi i64 [ %.sroa.0.2.lcssa, %._crit_edge ], [ %i.ak, %.sink.split ]
  ret i64 %.sroa.0.3

bb.l:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.am = load i8, ptr %i.al, align 1, !noundef !5 ; 2 uses
  %i.an = icmp ult i64 %.sroa.0.2.lcssa, %4
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ap = lshr i8 %i.am, 2
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.2.lcssa
  store i8 %i.as, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %.sroa.0.2.lcssa, 1     ; 3 uses
  %i.av = icmp ult i64 %i.au, %4
  br i1 %i.av, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.2.lcssa, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aw = shl i8 %i.am, 4
  %i.ax = and i8 %i.aw, 48
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19
  unreachable

bb.q:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.268, i64 noundef %i.h, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #19
  unreachable

bb.r:                                             ; preds = %bb.c
  %i.ay = add nuw i64 %.sroa.0.269, 4             ; 4 uses
  %.not46 = icmp ugt i64 %i.ay, %4
  br i1 %.not46, label %bb.t, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.015.268 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.269 ; 4 uses
  %i.bb = load i8, ptr %i.az, align 1, !noundef !5 ; 2 uses
  %i.bc = lshr i8 %i.bb, 2
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  store i8 %i.bf, ptr %i.ba, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !5 ; 2 uses
  %i.bi = tail call i8 @llvm.fshl.i8(i8 %i.bb, i8 %i.bh, i8 4)
  %i.bj = and i8 %i.bi, 63
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5 ; 2 uses
  %i.bq = tail call i8 @llvm.fshl.i8(i8 %i.bh, i8 %i.bp, i8 2)
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = and i8 %i.bp, 63
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = icmp ult i64 %i.h, %i.d
  br i1 %i.cb, label %bb.c, label %._crit_edge

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.269, i64 noundef %i.ay, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #19
  unreachable

bb.u:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1, i64 noundef %i.g, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19
  unreachable

bb.v:                                             ; preds = %bb.b
  %i.cc = add nuw i64 %.sroa.0.1, 32              ; 4 uses
  %.not42 = icmp ugt i64 %i.cc, %4
  br i1 %.not42, label %bb.x, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.015.1 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.1 ; 32 uses
  %.val51 = load i64, ptr %i.cd, align 1
  %i.cf = tail call noundef i64 @llvm.bswap.i64(i64 %.val51) ; 8 uses
  %i.cg = lshr i64 %i.cf, 58
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !5
  store i8 %i.ci, ptr %i.ce, align 1
  %i.cj = lshr i64 %i.cf, 52
  %i.ck = and i64 %i.cj, 63
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = lshr i64 %i.cf, 46
  %i.cp = and i64 %i.co, 63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 %i.cr, ptr %i.cs, align 1
  %i.ct = lshr i64 %i.cf, 40
  %i.cu = and i64 %i.ct, 63
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  store i8 %i.cw, ptr %i.cx, align 1
  %i.cy = lshr i64 %i.cf, 34
  %i.cz = and i64 %i.cy, 63
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = lshr i64 %i.cf, 28
  %i.de = and i64 %i.dd, 63
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noundef !5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ce, i64 5
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = lshr i64 %i.cf, 22
  %i.dj = and i64 %i.di, 63
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = lshr i64 %i.cf, 16
  %i.do = and i64 %i.dn, 63
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noundef !5
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ce, i64 7
  store i8 %i.dq, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %.val50 = load i64, ptr %i.ds, align 1
  %i.dt = tail call noundef i64 @llvm.bswap.i64(i64 %.val50) ; 8 uses
  %i.du = lshr i64 %i.dt, 58
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !noundef !5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i8 %i.dw, ptr %i.dx, align 1
  %i.dy = lshr i64 %i.dt, 52
  %i.dz = and i64 %i.dy, 63
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ce, i64 9
  store i8 %i.eb, ptr %i.ec, align 1
  %i.ed = lshr i64 %i.dt, 46
  %i.ee = and i64 %i.ed, 63
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ce, i64 10
  store i8 %i.eg, ptr %i.eh, align 1
  %i.ei = lshr i64 %i.dt, 40
  %i.ej = and i64 %i.ei, 63
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 11
  store i8 %i.el, ptr %i.em, align 1
  %i.en = lshr i64 %i.dt, 34
  %i.eo = and i64 %i.en, 63
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noundef !5
  %i.er = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = lshr i64 %i.dt, 28
  %i.et = and i64 %i.es, 63
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ce, i64 13
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = lshr i64 %i.dt, 22
  %i.ey = and i64 %i.ex, 63
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ce, i64 14
  store i8 %i.fa, ptr %i.fb, align 1
  %i.fc = lshr i64 %i.dt, 16
  %i.fd = and i64 %i.fc, 63
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !noundef !5
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ce, i64 15
  store i8 %i.ff, ptr %i.fg, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %.val49 = load i64, ptr %i.fh, align 1
  %i.fi = tail call noundef i64 @llvm.bswap.i64(i64 %.val49) ; 8 uses
  %i.fj = lshr i64 %i.fi, 58
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i8 %i.fl, ptr %i.fm, align 1
  %i.fn = lshr i64 %i.fi, 52
  %i.fo = and i64 %i.fn, 63
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ce, i64 17
  store i8 %i.fq, ptr %i.fr, align 1
  %i.fs = lshr i64 %i.fi, 46
  %i.ft = and i64 %i.fs, 63
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !noundef !5
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ce, i64 18
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = lshr i64 %i.fi, 40
  %i.fy = and i64 %i.fx, 63
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !noundef !5
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ce, i64 19
  store i8 %i.ga, ptr %i.gb, align 1
  %i.gc = lshr i64 %i.fi, 34
  %i.gd = and i64 %i.gc, 63
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noundef !5
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  store i8 %i.gf, ptr %i.gg, align 1
  %i.gh = lshr i64 %i.fi, 28
  %i.gi = and i64 %i.gh, 63
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !noundef !5
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ce, i64 21
  store i8 %i.gk, ptr %i.gl, align 1
  %i.gm = lshr i64 %i.fi, 22
  %i.gn = and i64 %i.gm, 63
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noundef !5
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ce, i64 22
  store i8 %i.gp, ptr %i.gq, align 1
  %i.gr = lshr i64 %i.fi, 16
  %i.gs = and i64 %i.gr, 63
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ce, i64 23
  store i8 %i.gu, ptr %i.gv, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cd, i64 18
  %.val = load i64, ptr %i.gw, align 1
  %i.gx = tail call noundef i64 @llvm.bswap.i64(i64 %.val) ; 8 uses
  %i.gy = lshr i64 %i.gx, 58
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !noundef !5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 %i.ha, ptr %i.hb, align 1
  %i.hc = lshr i64 %i.gx, 52
  %i.hd = and i64 %i.hc, 63
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !noundef !5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ce, i64 25
  store i8 %i.hf, ptr %i.hg, align 1
  %i.hh = lshr i64 %i.gx, 46
  %i.hi = and i64 %i.hh, 63
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !noundef !5
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ce, i64 26
  store i8 %i.hk, ptr %i.hl, align 1
  %i.hm = lshr i64 %i.gx, 40
  %i.hn = and i64 %i.hm, 63
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !noundef !5
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ce, i64 27
  store i8 %i.hp, ptr %i.hq, align 1
  %i.hr = lshr i64 %i.gx, 34
  %i.hs = and i64 %i.hr, 63
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !noundef !5
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  store i8 %i.hu, ptr %i.hv, align 1
  %i.hw = lshr i64 %i.gx, 28
  %i.hx = and i64 %i.hw, 63
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !noundef !5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ce, i64 29
  store i8 %i.hz, ptr %i.ia, align 1
  %i.ib = lshr i64 %i.gx, 22
  %i.ic = and i64 %i.ib, 63
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !noundef !5
  %i.if = getelementptr inbounds nuw i8, ptr %i.ce, i64 30
  store i8 %i.ie, ptr %i.if, align 1
  %i.ig = lshr i64 %i.gx, 16
  %i.ih = and i64 %i.ig, 63
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ce, i64 31
  store i8 %i.ij, ptr %i.ik, align 1
  %i.il = add nuw nsw i64 %.sroa.015.1, 24        ; 3 uses
  %.old1.not = icmp samesign ugt i64 %i.il, %i.a
  br i1 %.old1.not, label %.loopexit, label %bb.b

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1, i64 noundef %i.cc, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noreturn }
attributes #19 = { noinline noreturn }
attributes #20 = { nounwind }
attributes #21 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i64 0, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 0, i64 2}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i8 0, i8 4}
!9 = !{i64 8}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 4001, i32 4000000}
!12 = distinct !{!12, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs6t3BXPRE3GP_6base64"}
!13 = distinct !{!13, !12, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs6t3BXPRE3GP_6base64: argument 0"}
!14 = !{!13}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = distinct !{!16, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs6t3BXPRE3GP_6base64"}
!17 = distinct !{!17, !16, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs6t3BXPRE3GP_6base64: argument 0"}
!18 = distinct !{!18, !16, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs6t3BXPRE3GP_6base64: argument 1"}
!19 = !{!17}
!20 = !{!18}
!21 = !{!17, !18}
!22 = distinct !{!22, !"_RNvNtNtCs6t3BXPRE3GP_6base646engine15general_purpose12decode_table"}
!23 = distinct !{!23, !22, !"_RNvNtNtCs6t3BXPRE3GP_6base646engine15general_purpose12decode_table: argument 0"}
!24 = distinct !{!24, !22, !"_RNvNtNtCs6t3BXPRE3GP_6base646engine15general_purpose12decode_table: argument 1"}
!25 = !{!23}
!26 = !{!24}
!27 = distinct !{!27, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs6t3BXPRE3GP_6base64"}
!28 = distinct !{!28, !27, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs6t3BXPRE3GP_6base64: argument 0"}
!29 = distinct !{!29, !27, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs6t3BXPRE3GP_6base64: argument 1"}
!30 = distinct !{!30, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6t3BXPRE3GP_6base64"}
!31 = distinct !{!31, !30, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6t3BXPRE3GP_6base64: argument 0"}
!32 = distinct !{!32, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64"}
!33 = distinct !{!33, !32, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64: argument 0"}
!34 = !{!28}
!35 = !{!29}
!36 = !{!28, !29}
!37 = !{!31}
!38 = !{!33, !31}
!39 = !{i8 -1, i8 4}
!40 = distinct !{!40, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs6t3BXPRE3GP_6base64"}
!41 = distinct !{!41, !40, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs6t3BXPRE3GP_6base64: argument 0"}
!42 = !{!41}
!43 = distinct !{!43, !"_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs6t3BXPRE3GP_6base64"}
!44 = distinct !{!44, !43, !"_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs6t3BXPRE3GP_6base64: argument 0"}
!45 = distinct !{!45, !43, !"_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs6t3BXPRE3GP_6base64: argument 1"}
!46 = !{!44}
!47 = !{!45}
!48 = !{!44, !45}
!49 = distinct !{!49, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt"}
!50 = distinct !{!50, !49, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!51 = distinct !{!51, !49, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt: argument 0"}
!52 = !{!50}
!53 = !{!51}
!54 = distinct !{!54, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6t3BXPRE3GP_6base64"}
!55 = distinct !{!55, !54, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6t3BXPRE3GP_6base64: argument 0"}
!56 = distinct !{!56, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64"}
!57 = distinct !{!57, !56, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64: argument 0"}
!58 = !{!55}
!59 = !{!57, !55}
!60 = distinct !{!60, !"_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new"}
!61 = distinct !{!61, !60, !"_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new: argument 0"}
!62 = distinct !{!62, !60, !"_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new: argument 1"}
!63 = !{!61}
!64 = !{!62}
!65 = !{!61, !62}
!66 = distinct !{!66, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper"}
!67 = distinct !{!67, !66, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper: argument 0"}
!68 = distinct !{!68, !66, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper: argument 1"}
!69 = distinct !{!69, !66, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper: argument 2"}
!70 = distinct !{!70, !66, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper: argument 3"}
!71 = distinct !{!71, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len"}
!72 = distinct !{!72, !71, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len: argument 1"}
!73 = distinct !{!73, !71, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len: argument 2"}
!74 = distinct !{!74, !71, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len: argument 0"}
!75 = distinct !{!75, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose13decode_suffix13decode_suffix"}
!76 = distinct !{!76, !75, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose13decode_suffix13decode_suffix: argument 0"}
!77 = distinct !{!77, !75, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose13decode_suffix13decode_suffix: argument 1"}
!78 = distinct !{!78, !75, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose13decode_suffix13decode_suffix: argument 2"}
!79 = distinct !{!79, !75, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose13decode_suffix13decode_suffix: argument 3"}
!80 = distinct !{!80, !152}
!81 = distinct !{!81, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_4"}
!82 = distinct !{!82, !81, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_4: argument 1"}
!83 = distinct !{!83, !81, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_4: argument 2"}
!84 = distinct !{!84, !81, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_4: argument 3"}
!85 = distinct !{!85, !81, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_4: argument 0"}
!86 = distinct !{!86, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64"}
!87 = distinct !{!87, !86, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 1"}
!88 = distinct !{!88, !86, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 0"}
!89 = distinct !{!89, !86, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 2"}
!90 = distinct !{!90, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8"}
!91 = distinct !{!91, !90, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!92 = distinct !{!92, !90, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!93 = distinct !{!93, !90, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!94 = distinct !{!94, !90, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!95 = distinct !{!95, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64"}
!96 = distinct !{!96, !95, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 1"}
!97 = distinct !{!97, !95, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 0"}
!98 = distinct !{!98, !95, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 2"}
!99 = distinct !{!99, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8"}
!100 = distinct !{!100, !99, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!101 = distinct !{!101, !99, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!102 = distinct !{!102, !99, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!103 = distinct !{!103, !99, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!104 = distinct !{!104, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64"}
!105 = distinct !{!105, !104, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 1"}
!106 = distinct !{!106, !104, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 0"}
!107 = distinct !{!107, !104, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 2"}
!108 = distinct !{!108, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8"}
!109 = distinct !{!109, !108, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!110 = distinct !{!110, !108, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!111 = distinct !{!111, !108, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!112 = distinct !{!112, !108, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!113 = distinct !{!113, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64"}
!114 = distinct !{!114, !113, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 1"}
!115 = distinct !{!115, !113, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 0"}
!116 = distinct !{!116, !113, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 2"}
!117 = distinct !{!117, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8"}
!118 = distinct !{!118, !117, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!119 = distinct !{!119, !117, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!120 = distinct !{!120, !117, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!121 = distinct !{!121, !117, !"_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!122 = distinct !{!122, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64"}
!123 = distinct !{!123, !122, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 1"}
!124 = distinct !{!124, !122, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 0"}
!125 = distinct !{!125, !122, !"_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs6t3BXPRE3GP_6base64: argument 2"}
!126 = !{i8 0, i8 3}
!127 = !{!67}
!128 = !{!68}
!129 = !{!69}
!130 = !{!70}
!131 = !{!72}
!132 = !{!73}
!133 = !{!72, !68}
!134 = !{!74, !73, !67, !69, !70}
!135 = !{!74, !72, !73, !67, !69, !70}
!136 = !{!73, !70}
!137 = !{!74, !72, !67, !68, !69}
!138 = !{!68, !69, !70}
!139 = !{!67, !69, !70}
!140 = !{!76}
!141 = !{!77}
!142 = !{!78}
!143 = !{!79}
!144 = !{!77, !68}
!145 = !{!76, !78, !79, !67, !69, !70}
!146 = !{!76, !67}
!147 = !{!77, !78, !79, !68, !69, !70}
!148 = !{!78, !69}
!149 = !{!76, !77, !79, !67, !68, !70}
!150 = !{!79, !70}
!151 = !{!76, !77, !78, !67, !68, !69}
!152 = !{!"llvm.loop.peeled.count", i32 1}
!153 = !{!76, !77, !78, !79, !67, !69, !70}
!154 = !{!82}
!155 = !{!83}
!156 = !{!82, !68}
!157 = !{!85, !83, !84, !67, !69, !70}
!158 = !{!83, !70}
!159 = !{!85, !82, !84, !67, !68, !69}
!160 = !{!88, !87, !69}
!161 = !{!89, !85, !82, !83, !67, !68, !70}
!162 = !{!91}
!163 = !{!92}
!164 = !{!91, !68}
!165 = !{!94, !92, !93, !67, !69, !70}
!166 = !{!92, !70}
!167 = !{!94, !91, !93, !67, !68, !69}
!168 = !{!97, !96, !69}
!169 = !{!98, !94, !91, !92, !67, !68, !70}
!170 = !{!100}
!171 = !{!101}
!172 = !{!100, !68}
!173 = !{!103, !101, !102, !67, !69, !70}
!174 = !{!101, !70}
!175 = !{!103, !100, !102, !67, !68, !69}
!176 = !{!106, !105, !69}
!177 = !{!107, !103, !100, !101, !67, !68, !70}
!178 = !{!109}
!179 = !{!110}
!180 = !{!109, !68}
!181 = !{!112, !110, !111, !67, !69, !70}
!182 = !{!110, !70}
!183 = !{!112, !109, !111, !67, !68, !69}
!184 = !{!115, !114, !69}
!185 = !{!116, !112, !109, !110, !67, !68, !70}
!186 = !{!118}
!187 = !{!119}
!188 = !{!118, !68}
!189 = !{!121, !119, !120, !67, !69, !70}
!190 = !{!119, !70}
!191 = !{!121, !118, !120, !67, !68, !69}
!192 = !{!124, !123, !69}
!193 = !{!125, !121, !118, !119, !67, !68, !70}
end_hunk_0
