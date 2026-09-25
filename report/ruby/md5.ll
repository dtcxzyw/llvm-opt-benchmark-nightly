Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/md5?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@md5_process:bb.a
  %i.mu = xor i32 %i.mt, %i.ms
  %i.mv = add i32 %.0.sroa.phi592.sroa.speculated, 681279174
  %i.mw = add i32 %i.mv, %i.lx
  %i.mx = add i32 %i.mw, %i.mu                    ; 2 uses
  %i.my = tail call i32 @llvm.fshl.i32(i32 %i.mx, i32 %i.mx, i32 4)
  %i.mz = add i32 %i.my, %i.ms                    ; 5 uses
  %i.na = xor i32 %i.ms, %i.ml
  %i.nb = xor i32 %i.na, %i.mz
  %i.nc = add i32 %i.i, -358537222
  %i.nd = add i32 %i.nc, %i.me
  %i.ne = add i32 %i.nd, %i.nb                    ; 2 uses
  %i.nf = tail call i32 @llvm.fshl.i32(i32 %i.ne, i32 %i.ne, i32 11)
  %i.ng = add i32 %i.nf, %i.mz                    ; 5 uses
  %i.nh = xor i32 %i.mz, %i.ms
  %i.ni = xor i32 %i.nh, %i.ng
  %i.nj = add i32 %i.l, -722521979
  %i.nk = add i32 %i.nj, %i.ml
  %i.nl = add i32 %i.nk, %i.ni                    ; 2 uses
  %i.nm = tail call i32 @llvm.fshl.i32(i32 %i.nl, i32 %i.nl, i32 16)
  %i.nn = add i32 %i.nm, %i.ng                    ; 5 uses
  %i.no = xor i32 %i.ng, %i.mz
  %i.np = xor i32 %i.no, %i.nn
  %i.nq = add i32 %i.o, 76029189
  %i.nr = add i32 %i.nq, %i.ms
  %i.ns = add i32 %i.nr, %i.np                    ; 2 uses
  %i.nt = tail call i32 @llvm.fshl.i32(i32 %i.ns, i32 %i.ns, i32 23)
  %i.nu = add i32 %i.nt, %i.nn                    ; 5 uses
  %i.nv = xor i32 %i.nn, %i.ng
  %i.nw = xor i32 %i.nv, %i.nu
  %i.nx = add i32 %.0.sroa.phi580.sroa.speculated, -640364487
  %i.ny = add i32 %i.nx, %i.mz
  %i.nz = add i32 %i.ny, %i.nw                    ; 2 uses
  %i.oa = tail call i32 @llvm.fshl.i32(i32 %i.nz, i32 %i.nz, i32 4)
  %i.ob = add i32 %i.oa, %i.nu                    ; 5 uses
  %i.oc = xor i32 %i.nu, %i.nn
  %i.od = xor i32 %i.oc, %i.ob
  %i.oe = add i32 %.0.sroa.phi589.sroa.speculated, -421815835
  %i.of = add i32 %i.oe, %i.ng
  %i.og = add i32 %i.of, %i.od                    ; 2 uses
  %i.oh = tail call i32 @llvm.fshl.i32(i32 %i.og, i32 %i.og, i32 11)
  %i.oi = add i32 %i.oh, %i.ob                    ; 5 uses
  %i.oj = xor i32 %i.ob, %i.nu
  %i.ok = xor i32 %i.oj, %i.oi
  %i.ol = add i32 %.0.sroa.phi598.sroa.speculated, 530742520
  %i.om = add i32 %i.ol, %i.nn
  %i.on = add i32 %i.om, %i.ok                    ; 2 uses
  %i.oo = tail call i32 @llvm.fshl.i32(i32 %i.on, i32 %i.on, i32 16)
  %i.op = add i32 %i.oo, %i.oi                    ; 5 uses
  %i.oq = xor i32 %i.oi, %i.ob
  %i.or = xor i32 %i.oq, %i.op
  %i.os = add i32 %i.k, -995338651
  %i.ot = add i32 %i.os, %i.nu
  %i.ou = add i32 %i.ot, %i.or                    ; 2 uses
  %i.ov = tail call i32 @llvm.fshl.i32(i32 %i.ou, i32 %i.ou, i32 23)
  %i.ow = add i32 %i.ov, %i.op                    ; 5 uses
  %i.ox = xor i32 %i.oi, -1
  %i.oy = or i32 %i.ow, %i.ox
  %i.oz = xor i32 %i.oy, %i.op
  %i.pa = add i32 %i.i, -198630844
  %i.pb = add i32 %i.pa, %i.ob
  %i.pc = add i32 %i.pb, %i.oz                    ; 2 uses
  %i.pd = tail call i32 @llvm.fshl.i32(i32 %i.pc, i32 %i.pc, i32 6)
  %i.pe = add i32 %i.pd, %i.ow                    ; 5 uses
  %i.pf = xor i32 %i.op, -1
  %i.pg = or i32 %i.pe, %i.pf
  %i.ph = xor i32 %i.pg, %i.ow
  %i.pi = add i32 %i.p, 1126891415
  %i.pj = add i32 %i.pi, %i.oi
  %i.pk = add i32 %i.pj, %i.ph                    ; 2 uses
  %i.pl = tail call i32 @llvm.fshl.i32(i32 %i.pk, i32 %i.pk, i32 10)
  %i.pm = add i32 %i.pl, %i.pe                    ; 5 uses
  %i.pn = xor i32 %i.ow, -1
  %i.po = or i32 %i.pm, %i.pn
  %i.pp = xor i32 %i.po, %i.pe
  %i.pq = add i32 %.0.sroa.phi595.sroa.speculated, -1416354905
  %i.pr = add i32 %i.pq, %i.op
  %i.ps = add i32 %i.pr, %i.pp                    ; 2 uses
  %i.pt = tail call i32 @llvm.fshl.i32(i32 %i.ps, i32 %i.ps, i32 15)
  %i.pu = add i32 %i.pt, %i.pm                    ; 5 uses
  %i.pv = xor i32 %i.pe, -1
  %i.pw = or i32 %i.pu, %i.pv
  %i.px = xor i32 %i.pw, %i.pm
  %i.py = add i32 %i.n, -57434055
  %i.pz = add i32 %i.py, %i.ow
  %i.qa = add i32 %i.pz, %i.px                    ; 2 uses
  %i.qb = tail call i32 @llvm.fshl.i32(i32 %i.qa, i32 %i.qa, i32 21)
  %i.qc = add i32 %i.qb, %i.pu                    ; 5 uses
  %i.qd = xor i32 %i.pm, -1
  %i.qe = or i32 %i.qc, %i.qd
  %i.qf = xor i32 %i.qe, %i.pu
  %i.qg = add i32 %.0.sroa.phi589.sroa.speculated, 1700485571
  %i.qh = add i32 %i.qg, %i.pe
  %i.qi = add i32 %i.qh, %i.qf                    ; 2 uses
  %i.qj = tail call i32 @llvm.fshl.i32(i32 %i.qi, i32 %i.qi, i32 6)
  %i.qk = add i32 %i.qj, %i.qc                    ; 5 uses
  %i.ql = xor i32 %i.pu, -1
  %i.qm = or i32 %i.qk, %i.ql
  %i.qn = xor i32 %i.qm, %i.qc
  %i.qo = add i32 %i.l, -1894986606
  %i.qp = add i32 %i.qo, %i.pm
  %i.qq = add i32 %i.qp, %i.qn                    ; 2 uses
  %i.qr = tail call i32 @llvm.fshl.i32(i32 %i.qq, i32 %i.qq, i32 10)
  %i.qs = add i32 %i.qr, %i.qk                    ; 5 uses
  %i.qt = xor i32 %i.qc, -1
  %i.qu = or i32 %i.qs, %i.qt
  %i.qv = xor i32 %i.qu, %i.qk
  %i.qw = add i32 %.0.sroa.phi583.sroa.speculated, -1051523
  %i.qx = add i32 %i.qw, %i.pu
  %i.qy = add i32 %i.qx, %i.qv                    ; 2 uses
  %i.qz = tail call i32 @llvm.fshl.i32(i32 %i.qy, i32 %i.qy, i32 15)
  %i.ra = add i32 %i.qz, %i.qs                    ; 5 uses
  %i.rb = xor i32 %i.qk, -1
  %i.rc = or i32 %i.ra, %i.rb
  %i.rd = xor i32 %i.rc, %i.qs
  %i.re = add i32 %i.j, -2054922799
  %i.rf = add i32 %i.re, %i.qc
  %i.rg = add i32 %i.rf, %i.rd                    ; 2 uses
  %i.rh = tail call i32 @llvm.fshl.i32(i32 %i.rg, i32 %i.rg, i32 21)
  %i.ri = add i32 %i.rh, %i.ra                    ; 5 uses
  %i.rj = xor i32 %i.qs, -1
  %i.rk = or i32 %i.ri, %i.rj
  %i.rl = xor i32 %i.rk, %i.ra
  %i.rm = add i32 %.0.sroa.phi577.sroa.speculated, 1873313359
  %i.rn = add i32 %i.rm, %i.qk
  %i.ro = add i32 %i.rn, %i.rl                    ; 2 uses
  %i.rp = tail call i32 @llvm.fshl.i32(i32 %i.ro, i32 %i.ro, i32 6)
  %i.rq = add i32 %i.rp, %i.ri                    ; 5 uses
  %i.rr = xor i32 %i.ra, -1
  %i.rs = or i32 %i.rq, %i.rr
  %i.rt = xor i32 %i.rs, %i.ri
  %i.ru = add i32 %.0.sroa.phi598.sroa.speculated, -30611744
  %i.rv = add i32 %i.ru, %i.qs
  %i.rw = add i32 %i.rv, %i.rt                    ; 2 uses
  %i.rx = tail call i32 @llvm.fshl.i32(i32 %i.rw, i32 %i.rw, i32 10)
  %i.ry = add i32 %i.rx, %i.rq                    ; 5 uses
  %i.rz = xor i32 %i.ri, -1
  %i.sa = or i32 %i.ry, %i.rz
  %i.sb = xor i32 %i.sa, %i.rq
  %i.sc = add i32 %i.o, -1560198380
  %i.sd = add i32 %i.sc, %i.ra
  %i.se = add i32 %i.sd, %i.sb                    ; 2 uses
  %i.sf = tail call i32 @llvm.fshl.i32(i32 %i.se, i32 %i.se, i32 15)
  %i.sg = add i32 %i.sf, %i.ry                    ; 5 uses
  %i.sh = xor i32 %i.rq, -1
  %i.si = or i32 %i.sg, %i.sh
  %i.sj = xor i32 %i.si, %i.ry
  %i.sk = add i32 %.0.sroa.phi592.sroa.speculated, 1309151649
  %i.sl = add i32 %i.sk, %i.ri
  %i.sm = add i32 %i.sl, %i.sj                    ; 2 uses
  %i.sn = tail call i32 @llvm.fshl.i32(i32 %i.sm, i32 %i.sm, i32 21)
  %i.so = add i32 %i.sn, %i.sg                    ; 5 uses
  %i.sp = xor i32 %i.ry, -1
  %i.sq = or i32 %i.so, %i.sp
  %i.sr = xor i32 %i.sq, %i.sg
  %i.ss = add i32 %i.m, -145523070
  %i.st = add i32 %i.ss, %i.rq
  %i.su = add i32 %i.st, %i.sr                    ; 2 uses
  %i.sv = tail call i32 @llvm.fshl.i32(i32 %i.su, i32 %i.su, i32 6)
  %i.sw = add i32 %i.sv, %i.so                    ; 5 uses
  %i.sx = xor i32 %i.sg, -1
  %i.sy = or i32 %i.sw, %i.sx
  %i.sz = xor i32 %i.sy, %i.so
  %i.ta = add i32 %.0.sroa.phi586.sroa.speculated, -1120210379
  %i.tb = add i32 %i.ta, %i.ry
  %i.tc = add i32 %i.tb, %i.sz                    ; 2 uses
  %i.td = tail call i32 @llvm.fshl.i32(i32 %i.tc, i32 %i.tc, i32 10)
  %i.te = add i32 %i.td, %i.sw                    ; 4 uses
  %i.tf = xor i32 %i.so, -1
  %i.tg = or i32 %i.te, %i.tf
  %i.th = xor i32 %i.tg, %i.sw
  %i.ti = add i32 %i.k, 718787259
  %i.tj = add i32 %i.ti, %i.sg
  %i.tk = add i32 %i.tj, %i.th                    ; 2 uses
  %i.tl = tail call i32 @llvm.fshl.i32(i32 %i.tk, i32 %i.tk, i32 15)
  %i.tm = add i32 %i.tl, %i.te                    ; 3 uses
  %i.tn = xor i32 %i.sw, -1
  %i.to = or i32 %i.tm, %i.tn
  %i.tp = xor i32 %i.to, %i.te
  %i.tq = add i32 %.0.sroa.phi580.sroa.speculated, -343485551
  %i.tr = add i32 %i.tq, %i.so
  %i.ts = add i32 %i.tr, %i.tp                    ; 2 uses
  %i.tt = tail call i32 @llvm.fshl.i32(i32 %i.ts, i32 %i.ts, i32 21)
  %i.tu = add i32 %i.sw, %i.b
  store i32 %i.tu, ptr %i.a, align 4, !tbaa !10
  %i.tv = add i32 %i.tm, %i.d
  %i.tw = add i32 %i.tv, %i.tt
  store i32 %i.tw, ptr %i.c, align 4, !tbaa !10
  %i.tx = add i32 %i.tm, %i.f
  store i32 %i.tx, ptr %i.e, align 4, !tbaa !10
  %i.ty = add i32 %i.te, %i.h
  store i32 %i.ty, ptr %i.g, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @rb_Digest_MD5_Finish(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 6 uses
  %2 = trunc i32 %i.b to i8
  store i8 %2, ptr %i.a, align 1, !tbaa !12
  %3 = lshr i32 %i.b, 8
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %4, ptr %5, align 1, !tbaa !12
  %6 = lshr i32 %i.b, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %7, ptr %8, align 1, !tbaa !12
  %9 = lshr i32 %i.b, 24
  %10 = trunc nuw i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %10, ptr %11, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 5 uses
  %12 = trunc i32 %i.d to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %12, ptr %13, align 1, !tbaa !12
  %14 = lshr i32 %i.d, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %15, ptr %16, align 1, !tbaa !12
  %17 = lshr i32 %i.d, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %18, ptr %19, align 1, !tbaa !12
  %20 = lshr i32 %i.d, 24
  %21 = trunc nuw i32 %20 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %21, ptr %i.e, align 1, !tbaa !12
  %i.f = lshr i32 %i.b, 3                         ; 2 uses
  %i.g = sub nsw i32 55, %i.f
  %i.h = and i32 %i.g, 63
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  %i.k = and i32 %i.f, 63                         ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = shl nuw nsw i32 %i.i, 3                  ; 2 uses
  %i.n = add i32 %i.m, %i.b                       ; 2 uses
  store i32 %i.n, ptr %0, align 4, !tbaa !10
  %i.o = icmp ult i32 %i.n, %i.m
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.d, 1
  store i32 %i.p, ptr %i.c, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add nuw nsw i64 %i.j, %i.l
  %i.r = icmp samesign ugt i64 %i.q, 64
  %i.s = sub nuw nsw i64 64, %i.l
  %i.t = select i1 %i.r, i64 %i.s, i64 %i.j       ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 16 dereferenceable(1) @rb_Digest_MD5_Finish.pad, i64 %i.t, i1 false)
  %i.w = add nuw nsw i64 %i.t, %i.l
  %i.x = icmp samesign ugt i64 %i.w, 63
  br i1 %i.x, label %bb.e, label %rb_Digest_MD5_Update.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr @rb_Digest_MD5_Finish.pad, i64 %i.t
  %i.z = sub nsw i64 %i.j, %i.t
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.140.i = phi ptr [ %i.y, %bb.e ], [ @rb_Digest_MD5_Finish.pad, %bb.c ] ; 2 uses
  %.1.i = phi i64 [ %i.z, %bb.e ], [ %i.j, %bb.c ] ; 3 uses
  %i.aa = icmp ugt i64 %.1.i, 63
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.246.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.1.i, %bb.f ]
  %.24145.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.140.i, %bb.f ] ; 2 uses
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef %.24145.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.24145.i, i64 64 ; 2 uses
  %i.ac = add i64 %.246.i, -64                    ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 63
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.241.lcssa.i = phi ptr [ %.140.i, %bb.f ], [ %i.ab, %.lr.ph.i ]
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.f ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %.not44.i = icmp eq i64 %.2.lcssa.i, 0
  br i1 %.not44.i, label %rb_Digest_MD5_Update.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 1 %.241.lcssa.i, i64 %.2.lcssa.i, i1 false)
  br label %rb_Digest_MD5_Update.exit

rb_Digest_MD5_Update.exit:                        ; preds = %bb.d, %._crit_edge.i, %bb.g
  %i.af = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ag = lshr i32 %i.af, 3
  %i.ah = and i32 %i.ag, 63                       ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ak = add i32 %i.af, 64
  store i32 %i.ak, ptr %0, align 4, !tbaa !10
  %i.al = icmp ugt i32 %i.af, -65
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_Digest_MD5_Update.exit
  %i.am = add i32 %i.aj, 1
  store i32 %i.am, ptr %i.c, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_Digest_MD5_Update.exit
  %.not.i15 = icmp eq i32 %i.ah, 0
  br i1 %.not.i15, label %._crit_edge.i18.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp samesign ugt i32 %i.ah, 56
  %i.ao = sub nuw nsw i64 64, %i.ai
  %i.ap = select i1 %i.an, i64 %i.ao, i64 8       ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.ap, i1 false)
  %i.as = add nuw nsw i64 %i.ap, %i.ai
  %i.at = icmp samesign ugt i64 %i.as, 63
  br i1 %i.at, label %bb.k, label %rb_Digest_MD5_Update.exit25

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap ; 2 uses
  %i.av = sub nsw i64 8, %i.ap                    ; 3 uses
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.aq)
  %i.aw = icmp ugt i64 %i.av, 63
  br i1 %i.aw, label %.lr.ph.i22, label %._crit_edge.i18

.lr.ph.i22:                                       ; preds = %bb.k, %.lr.ph.i22
  %.246.i23 = phi i64 [ %i.ay, %.lr.ph.i22 ], [ %i.av, %bb.k ]
  %.24145.i24 = phi ptr [ %i.ax, %.lr.ph.i22 ], [ %i.au, %bb.k ] ; 2 uses
  call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %.24145.i24)
  %i.ax = getelementptr inbounds nuw i8, ptr %.24145.i24, i64 64 ; 2 uses
  %i.ay = add i64 %.246.i23, -64                  ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 63
  br i1 %i.az, label %.lr.ph.i22, label %._crit_edge.i18, !llvm.loop !0

._crit_edge.i18:                                  ; preds = %.lr.ph.i22, %bb.k
  %.241.lcssa.i19 = phi ptr [ %i.au, %bb.k ], [ %i.ax, %.lr.ph.i22 ]
  %.2.lcssa.i20 = phi i64 [ %i.av, %bb.k ], [ %i.ay, %.lr.ph.i22 ] ; 2 uses
  %.not44.i21 = icmp eq i64 %.2.lcssa.i20, 0
  br i1 %.not44.i21, label %rb_Digest_MD5_Update.exit25, label %._crit_edge.i18.thread

._crit_edge.i18.thread:                           ; preds = %bb.i, %._crit_edge.i18
  %.2.lcssa.i2032 = phi i64 [ %.2.lcssa.i20, %._crit_edge.i18 ], [ 8, %bb.i ]
  %.241.lcssa.i1931 = phi ptr [ %.241.lcssa.i19, %._crit_edge.i18 ], [ %i.a, %bb.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, ptr noundef nonnull align 1 dereferenceable(1) %.241.lcssa.i1931, i64 %.2.lcssa.i2032, i1 false)
  br label %rb_Digest_MD5_Update.exit25

rb_Digest_MD5_Update.exit25:                      ; preds = %bb.j, %._crit_edge.i18, %._crit_edge.i18.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %1, align 1, !tbaa !12
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bf = lshr i32 %i.be, 8
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !12
  %i.bi = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !12
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bn = lshr i32 %i.bm, 24
  %i.bo = trunc nuw i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !10
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !12
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !10
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !12
  %i.by = load i32, ptr %i.bq, align 4, !tbaa !10
  %i.bz = lshr i32 %i.by, 16
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !12
  %i.cc = load i32, ptr %i.bq, align 4, !tbaa !10
  %i.cd = lshr i32 %i.cc, 24
  %i.ce = trunc nuw i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !12
  %i.ck = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !12
  %i.co = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.cp = lshr i32 %i.co, 16
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !12
  %i.cs = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.ct = lshr i32 %i.cs, 24
  %i.cu = trunc nuw i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !10
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !12
  %i.da = load i32, ptr %i.cw, align 4, !tbaa !10
  %i.db = lshr i32 %i.da, 8
  %i.dc = trunc i32 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !12
  %i.de = load i32, ptr %i.cw, align 4, !tbaa !10
  %i.df = lshr i32 %i.de, 16
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !12
  %i.di = load i32, ptr %i.cw, align 4, !tbaa !10
  %i.dj = lshr i32 %i.di, 24
  %i.dk = trunc nuw i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !11}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
end_hunk_0
