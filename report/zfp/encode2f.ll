Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode2f?download=true
inline.NumInlined: 53
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@zfp_encode_block_float_2:bb.a
  %i.lh = lshr i64 %i.la, %i.lg
  br label %stream_write_bits.exit.i.i

stream_write_bits.exit.i.i:                       ; preds = %bb.l, %rev_precision_uint32.exit.i.i
  %i.li = phi i64 [ %i.lh, %bb.l ], [ %i.kx, %rev_precision_uint32.exit.i.i ]
  %i.lj = phi i64 [ %i.lf, %bb.l ], [ %i.ky, %rev_precision_uint32.exit.i.i ]
  %notmask.i.i.i = shl nsw i64 -1, %i.lj
  %i.lk = xor i64 %notmask.i.i.i, -1
  %i.ll = and i64 %i.li, %i.lk
  store i64 %i.ll, ptr %i.kv, align 8, !tbaa !26
  %reass.sub80 = sub i32 %i.fq, %.1.i
  %i.lm = add i32 %reass.sub80, -5
  %i.ln = call fastcc i32 @encode_ints_uint32(ptr noundef nonnull %i.fh, i32 noundef %i.lm, i32 noundef %.013.lcssa.i.i.i, ptr noundef %i.b)
  %i.lo = add i32 %i.ln, 5                        ; 3 uses
  %i.lp = icmp ult i32 %i.lo, %i.fo
  br i1 %i.lp, label %bb.m, label %rev_encode_block_int32_2.exit.i

bb.m:                                             ; preds = %stream_write_bits.exit.i.i
  %i.lq = sub nuw i32 %i.fo, %i.lo
  %i.lr = zext i32 %i.lq to i64
  %i.ls = load i64, ptr %i.fh, align 8, !tbaa !25
  %i.lt = add i64 %i.ls, %i.lr                    ; 5 uses
  %i.lu = icmp ugt i64 %i.lt, 63
  br i1 %i.lu, label %.lr.ph.i.i.i, label %stream_pad.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.lv = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.lv, align 8, !tbaa !27 ; 3 uses
  %.pre.i.i.i = load i64, ptr %i.kv, align 8, !tbaa !26
  %i.lw = getelementptr i8, ptr %.promoted.i.i.i, i64 8 ; 2 uses
  store i64 %.pre.i.i.i, ptr %.promoted.i.i.i, align 8, !tbaa !14
  store i64 0, ptr %i.kv, align 8, !tbaa !26
  %i.lx = add i64 %i.lt, -64                      ; 2 uses
  %i.ly = icmp ugt i64 %i.lx, 63
  br i1 %i.ly, label %.peel.next.i.preheader.i, label %._crit_edge.i.i.i

.peel.next.i.preheader.i:                         ; preds = %.lr.ph.i.i.i
  %i.lz = add i64 %i.lt, -128                     ; 2 uses
  %i.ma = lshr i64 %i.lz, 3
  %i.mb = and i64 %i.ma, 2305843009213693944
  %i.mc = add nuw nsw i64 %i.mb, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lw, i8 0, i64 %i.mc, i1 false), !tbaa !14
  store i64 0, ptr %i.kv, align 8, !tbaa !26
  %i.md = lshr i64 %i.lz, 3
  %i.me = and i64 %i.md, 2305843009213693944
  %i.mf = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.me
  %scevgep86 = getelementptr i8, ptr %i.mf, i64 16
  %i.mg = and i64 %i.lt, 63
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.peel.next.i.preheader.i, %.lr.ph.i.i.i
  %.lcssa63.i.i = phi ptr [ %i.lw, %.lr.ph.i.i.i ], [ %scevgep86, %.peel.next.i.preheader.i ]
  %.lcssa.i.i = phi i64 [ %i.lx, %.lr.ph.i.i.i ], [ %i.mg, %.peel.next.i.preheader.i ]
  store ptr %.lcssa63.i.i, ptr %i.lv, align 8, !tbaa !27
  br label %stream_pad.exit.i.i

stream_pad.exit.i.i:                              ; preds = %._crit_edge.i.i.i, %bb.m
  %.0.lcssa.i.i.i = phi i64 [ %.lcssa.i.i, %._crit_edge.i.i.i ], [ %i.lt, %bb.m ]
  store i64 %.0.lcssa.i.i.i, ptr %i.fh, align 8, !tbaa !25
  br label %rev_encode_block_int32_2.exit.i

rev_encode_block_int32_2.exit.i:                  ; preds = %stream_pad.exit.i.i, %stream_write_bits.exit.i.i
  %.0.i45.i = phi i32 [ %i.fo, %stream_pad.exit.i.i ], [ %i.lo, %stream_write_bits.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.mh = add i32 %.0.i45.i, %.1.i
  br label %rev_encode_block_float_2.exit

bb.n:                                             ; preds = %bb.a
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !30
  %i.mk = sub nsw i32 %i.g, %i.e                  ; 2 uses
  %i.ml = add nsw i32 %i.mk, 6
  %i.mm = icmp sgt i32 %i.mk, -7
  %spec.select15.i.i = tail call i32 @llvm.umin.i32(i32 %i.mj, i32 %i.ml)
  %i.mn = select i1 %i.mm, i32 %spec.select15.i.i, i32 0 ; 2 uses
  %.not.i = icmp eq i32 %i.mn, 0
  %i.mo = add nsw i32 %i.g, 127                   ; 2 uses
  %.not3334.i = icmp eq i32 %i.mo, 0
  %.not33.i = select i1 %.not.i, i1 true, i1 %.not3334.i
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !23 ; 15 uses
  br i1 %.not33.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.mr = shl nuw i32 %i.mo, 1
  %i.ms = or disjoint i32 %i.mr, 1
  %i.mt = zext i32 %i.ms to i64                   ; 2 uses
  %i.mu = load i64, ptr %i.mq, align 8, !tbaa !25 ; 3 uses
  %i.mv = shl i64 %i.mt, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 5 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !26
  %i.my = add i64 %i.mx, %i.mv                    ; 2 uses
  %i.mz = add i64 %i.mu, 9                        ; 3 uses
  store i64 %i.mz, ptr %i.mq, align 8, !tbaa !25
  %i.na = icmp ugt i64 %i.mz, 63
  br i1 %i.na, label %bb.p, label %stream_write_bits.exit.i5

bb.p:                                             ; preds = %bb.o
  %i.nb = lshr i64 %i.mt, 1
  %i.nc = add i64 %i.mu, -55
  store i64 %i.nc, ptr %i.mq, align 8, !tbaa !25
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !27 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store ptr %i.nf, ptr %i.nd, align 8, !tbaa !27
  store i64 %i.my, ptr %i.ne, align 8, !tbaa !14
  %i.ng = load i64, ptr %i.mq, align 8, !tbaa !25 ; 2 uses
  %i.nh = sub i64 8, %i.ng
  %i.ni = lshr i64 %i.nb, %i.nh
  br label %stream_write_bits.exit.i5

stream_write_bits.exit.i5:                        ; preds = %bb.p, %bb.o
  %i.nj = phi i64 [ %i.ni, %bb.p ], [ %i.my, %bb.o ]
  %i.nk = phi i64 [ %i.ng, %bb.p ], [ %i.mz, %bb.o ]
  %notmask.i.i6 = shl nsw i64 -1, %i.nk
  %i.nl = xor i64 %notmask.i.i6, -1
  %i.nm = and i64 %i.nj, %i.nl
  store i64 %i.nm, ptr %i.mw, align 8, !tbaa !26
  %i.nn = sub nsw i32 30, %i.g
  %i.no = tail call float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.nn) #11
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nt = load i32, ptr %0, align 8, !tbaa !28
  %i.nu = tail call i32 @llvm.usub.sat.i32(i32 %i.nt, i32 9) ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !29
  %i.nx = add i32 %i.nw, -9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.og = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.oj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ok = load <8 x float>, ptr %i.nq, align 4, !tbaa !11 ; 4 uses
  %i.ol = insertelement <2 x float> poison, float %i.no, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.on = shufflevector <8 x float> %i.ok, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.oo = fmul <2 x float> %i.om, %i.on
  %i.op = fptosi <2 x float> %i.oo to <2 x i32>
  %i.oq = shufflevector <8 x float> %i.ok, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.or = fmul <2 x float> %i.om, %i.oq
  %i.os = fptosi <2 x float> %i.or to <2 x i32>   ; 2 uses
  %i.ot = shufflevector <8 x float> %i.ok, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ou = fmul <2 x float> %i.om, %i.ot
  %i.ov = fptosi <2 x float> %i.ou to <2 x i32>
  %i.ow = shufflevector <8 x float> %i.ok, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.ox = fmul <2 x float> %i.om, %i.ow
  %i.oy = fptosi <2 x float> %i.ox to <2 x i32>   ; 2 uses
  %i.oz = add nsw <2 x i32> %i.oy, %i.op
  %i.pa = add nsw <2 x i32> %i.ov, %i.os
  %i.pb = ashr <2 x i32> %i.oz, splat (i32 1)     ; 3 uses
  %i.pc = ashr <2 x i32> %i.pa, splat (i32 1)     ; 5 uses
  %i.pd = extractelement <2 x i32> %i.pc, i64 1
  %foldExtExtBinop = add nsw <2 x i32> %i.pb, %i.pc
  %i.pe = extractelement <2 x i32> %foldExtExtBinop, i64 1
  %i.pf = ashr i32 %i.pe, 1                       ; 3 uses
  %i.pg = sub nsw i32 %i.pd, %i.pf                ; 2 uses
  %i.ph = sub <2 x i32> %i.oy, %i.pb
  %i.pi = sub nsw <2 x i32> %i.os, %i.pc          ; 2 uses
  %i.pj = add nsw <2 x i32> %i.ph, %i.pi
  %i.pk = ashr <2 x i32> %i.pj, splat (i32 1)     ; 2 uses
  %i.pl = sub nsw <2 x i32> %i.pi, %i.pk          ; 3 uses
  %i.pm = ashr <2 x i32> %i.pl, splat (i32 1)
  %i.pn = add nsw <2 x i32> %i.pm, %i.pk          ; 2 uses
  %i.po = extractelement <2 x i32> %i.pn, i64 1   ; 3 uses
  %i.pp = ashr i32 %i.po, 1
  %i.pq = extractelement <2 x i32> %i.pl, i64 1
  %i.pr = sub nsw i32 %i.pq, %i.pp                ; 2 uses
  %i.ps = extractelement <2 x i32> %i.pc, i64 0
  %foldExtExtBinop117 = add nsw <2 x i32> %i.pb, %i.pc
  %i.pt = extractelement <2 x i32> %foldExtExtBinop117, i64 0
  %i.pu = ashr i32 %i.pt, 1                       ; 2 uses
  %i.pv = extractelement <2 x i32> %i.pn, i64 0   ; 2 uses
  %i.pw = ashr i32 %i.pv, 1
  %i.px = load <2 x float>, ptr %1, align 4, !tbaa !11 ; 2 uses
  %i.py = load <2 x float>, ptr %i.np, align 4, !tbaa !11 ; 2 uses
  %i.pz = load <2 x float>, ptr %i.nr, align 4, !tbaa !11 ; 2 uses
  %i.qa = shufflevector <2 x float> %i.px, <2 x float> %i.pz, <2 x i32> <i32 0, i32 2>
  %i.qb = fmul <2 x float> %i.om, %i.qa
  %i.qc = fptosi <2 x float> %i.qb to <2 x i32>
  %i.qd = shufflevector <2 x float> %i.px, <2 x float> %i.pz, <2 x i32> <i32 1, i32 3>
  %i.qe = fmul <2 x float> %i.om, %i.qd
  %i.qf = fptosi <2 x float> %i.qe to <2 x i32>   ; 2 uses
  %i.qg = load <2 x float>, ptr %i.ns, align 4, !tbaa !11 ; 2 uses
  %i.qh = shufflevector <2 x float> %i.py, <2 x float> %i.qg, <2 x i32> <i32 0, i32 2>
  %i.qi = fmul <2 x float> %i.om, %i.qh
  %i.qj = fptosi <2 x float> %i.qi to <2 x i32>
  %i.qk = shufflevector <2 x float> %i.py, <2 x float> %i.qg, <2 x i32> <i32 1, i32 3>
  %i.ql = fmul <2 x float> %i.om, %i.qk
  %i.qm = fptosi <2 x float> %i.ql to <2 x i32>   ; 2 uses
  %i.qn = add nsw <2 x i32> %i.qm, %i.qc
  %2 = ashr <2 x i32> %i.qn, splat (i32 1)        ; 3 uses
  %3 = sub <2 x i32> %i.qm, %2
  %4 = add nsw <2 x i32> %i.qj, %i.qf
  %i.qo = ashr <2 x i32> %4, splat (i32 1)        ; 5 uses
  %i.qp = extractelement <2 x i32> %i.qo, i64 1
  %foldExtExtBinop119 = add nsw <2 x i32> %2, %i.qo
  %i.qq = extractelement <2 x i32> %foldExtExtBinop119, i64 1
  %i.qr = ashr i32 %i.qq, 1                       ; 3 uses
  %5 = sub nsw i32 %i.qp, %i.qr                   ; 2 uses
  %i.qs = extractelement <2 x i32> %i.qo, i64 0
  %foldExtExtBinop121 = add nsw <2 x i32> %2, %i.qo
  %i.qt = extractelement <2 x i32> %foldExtExtBinop121, i64 0
  %i.qu = ashr i32 %i.qt, 1                       ; 2 uses
  %i.qv = sub nsw i32 %i.qs, %i.qu
  %i.qw = sub nsw <2 x i32> %i.qf, %i.qo          ; 2 uses
  %i.qx = add nsw <2 x i32> %3, %i.qw
  %i.qy = ashr <2 x i32> %i.qx, splat (i32 1)     ; 2 uses
  %i.qz = sub nsw <2 x i32> %i.qw, %i.qy          ; 2 uses
  %i.ra = ashr <2 x i32> %i.qz, splat (i32 1)
  %i.rb = add nsw <2 x i32> %i.ra, %i.qy          ; 3 uses
  %i.rc = ashr <2 x i32> %i.rb, splat (i32 1)
  %i.rd = sub <2 x i32> %i.qz, %i.rc              ; 2 uses
  %i.re = add nsw i32 %i.qr, %i.qu
  %i.rf = ashr i32 %i.re, 1                       ; 2 uses
  %i.rg = add nsw i32 %i.pu, %i.pf
  %i.rh = ashr i32 %i.rg, 1                       ; 3 uses
  %i.ri = sub nsw i32 %i.pf, %i.rh                ; 2 uses
  %i.rj = add nsw i32 %i.rf, %i.rh
  %i.rk = ashr i32 %i.rj, 1                       ; 2 uses
  %i.rl = add i32 %i.qr, %i.ri
  %i.rm = sub i32 %i.rl, %i.rf
  %i.rn = ashr i32 %i.rm, 1                       ; 2 uses
  %i.ro = sub nsw i32 %i.ri, %i.rn                ; 2 uses
  %i.rp = ashr i32 %i.ro, 1
  %i.rq = add nsw i32 %i.rp, %i.rn                ; 2 uses
  %i.rr = ashr i32 %i.rq, 1
  %i.rs = extractelement <2 x i32> %i.rd, i64 0
  %i.rt = extractelement <2 x i32> %i.rd, i64 1   ; 2 uses
  %i.ru = add nsw i32 %i.rs, %i.rt
  %i.rv = ashr i32 %i.ru, 1                       ; 2 uses
  %i.rw = extractelement <2 x i32> %i.pl, i64 0
  %i.rx = add i32 %i.rw, %i.pr
  %i.ry = sub i32 %i.rx, %i.pw
  %i.rz = ashr i32 %i.ry, 1                       ; 3 uses
  %i.sa = sub nsw i32 %i.pr, %i.rz                ; 2 uses
  %i.sb = add nsw i32 %i.rv, %i.rz
  %i.sc = ashr i32 %i.sb, 1                       ; 2 uses
  %i.sd = add i32 %i.rt, %i.sa
  %i.se = sub i32 %i.sd, %i.rv
  %i.sf = ashr i32 %i.se, 1                       ; 2 uses
  %i.sg = sub nsw i32 %i.sa, %i.sf                ; 2 uses
  %i.sh = ashr i32 %i.sg, 1
  %i.si = add nsw i32 %i.sh, %i.sf                ; 2 uses
  %i.sj = ashr i32 %i.si, 1
  %i.sk = add nsw i32 %i.qv, %5
  %i.sl = ashr i32 %i.sk, 1                       ; 2 uses
  %i.sm = add i32 %i.ps, %i.pg
  %i.sn = sub i32 %i.sm, %i.pu
  %i.so = ashr i32 %i.sn, 1                       ; 3 uses
  %i.sp = sub nsw i32 %i.pg, %i.so                ; 2 uses
  %i.sq = add nsw i32 %i.sl, %i.so
  %i.sr = ashr i32 %i.sq, 1                       ; 2 uses
  %i.ss = add i32 %5, %i.sp
  %i.st = sub i32 %i.ss, %i.sl
  %i.su = ashr i32 %i.st, 1                       ; 2 uses
  %i.sv = sub nsw i32 %i.sp, %i.su                ; 2 uses
  %i.sw = ashr i32 %i.sv, 1
  %i.sx = add nsw i32 %i.sw, %i.su                ; 2 uses
  %i.sy = ashr i32 %i.sx, 1
  %i.sz = extractelement <2 x i32> %i.rb, i64 0
  %i.ta = extractelement <2 x i32> %i.rb, i64 1   ; 2 uses
  %i.tb = add nsw i32 %i.ta, %i.sz
  %i.tc = ashr i32 %i.tb, 1                       ; 2 uses
  %i.td = add nsw i32 %i.pv, %i.po
  %i.te = ashr i32 %i.td, 1                       ; 3 uses
  %i.tf = sub nsw i32 %i.po, %i.te                ; 2 uses
  %i.tg = add nsw i32 %i.tc, %i.te
  %i.th = ashr i32 %i.tg, 1                       ; 2 uses
  %i.ti = add i32 %i.ta, %i.tf
  %i.tj = sub i32 %i.ti, %i.tc
  %i.tk = ashr i32 %i.tj, 1                       ; 2 uses
  %i.tl = sub nsw i32 %i.tf, %i.tk                ; 2 uses
  %i.tm = ashr i32 %i.tl, 1
  %i.tn = add nsw i32 %i.tm, %i.tk                ; 2 uses
  %i.to = ashr i32 %i.tn, 1
  %i.tp = add i32 %i.rk, -1431655766
  %i.tq = xor i32 %i.tp, -1431655766
  store i32 %i.tq, ptr %i.a, align 256, !tbaa !15
  %i.tr = add i32 %i.sc, -1431655766
  %i.ts = xor i32 %i.tr, -1431655766
  store i32 %i.ts, ptr %i.ny, align 4, !tbaa !15
  %i.tt = add i32 %i.ro, -1431655766
  %i.tu = sub i32 %i.tt, %i.rr
  %i.tv = xor i32 %i.tu, -1431655766
  store i32 %i.tv, ptr %i.nz, align 8, !tbaa !15
  %i.tw = add i32 %i.sg, -1431655766
  %i.tx = sub i32 %i.tw, %i.sj
  %i.ty = xor i32 %i.tx, -1431655766
  store i32 %i.ty, ptr %i.oa, align 4, !tbaa !15
  %i.tz = add i32 %i.sr, -1431655766
  %i.ua = xor i32 %i.tz, -1431655766
  store i32 %i.ua, ptr %i.ob, align 16, !tbaa !15
  %i.ub = add i32 %i.rh, -1431655766
  %i.uc = sub i32 %i.ub, %i.rk
  %i.ud = xor i32 %i.uc, -1431655766
  store i32 %i.ud, ptr %i.oc, align 4, !tbaa !15
  %i.ue = add i32 %i.sv, -1431655766
  %i.uf = sub i32 %i.ue, %i.sy
  %i.ug = xor i32 %i.uf, -1431655766
  store i32 %i.ug, ptr %i.od, align 8, !tbaa !15
  %i.uh = add i32 %i.rz, -1431655766
  %i.ui = sub i32 %i.uh, %i.sc
  %i.uj = xor i32 %i.ui, -1431655766
  store i32 %i.uj, ptr %i.oe, align 4, !tbaa !15
  %i.uk = add i32 %i.th, -1431655766
  %i.ul = xor i32 %i.uk, -1431655766
  store i32 %i.ul, ptr %i.of, align 32, !tbaa !15
  %i.um = add i32 %i.rq, -1431655766
  %i.un = xor i32 %i.um, -1431655766
  store i32 %i.un, ptr %i.og, align 4, !tbaa !15
  %i.uo = add i32 %i.so, -1431655766
  %i.up = sub i32 %i.uo, %i.sr
  %i.uq = xor i32 %i.up, -1431655766
  store i32 %i.uq, ptr %i.oh, align 8, !tbaa !15
  %i.ur = add i32 %i.tl, -1431655766
  %i.us = sub i32 %i.ur, %i.to
  %i.ut = xor i32 %i.us, -1431655766
  store i32 %i.ut, ptr %i.oi, align 4, !tbaa !15
  %i.uu = add i32 %i.te, -1431655766
  %i.uv = sub i32 %i.uu, %i.th
  %i.uw = insertelement <4 x i32> poison, i32 %i.si, i64 0
  %i.ux = insertelement <4 x i32> %i.uw, i32 %i.uv, i64 1
  %i.uy = insertelement <4 x i32> %i.ux, i32 %i.sx, i64 2
  %i.uz = insertelement <4 x i32> %i.uy, i32 %i.tn, i64 3
  %i.va = add <4 x i32> %i.uz, <i32 -1431655766, i32 0, i32 -1431655766, i32 -1431655766>
  %i.vb = xor <4 x i32> %i.va, splat (i32 -1431655766)
  store <4 x i32> %i.vb, ptr %i.oj, align 16, !tbaa !15
  %i.vc = call fastcc i32 @encode_ints_uint32(ptr noundef nonnull %i.mq, i32 noundef %i.nx, i32 noundef range(i32 0, -2147483648) %i.mn, ptr noundef %i.a) ; 3 uses
  %i.vd = icmp ult i32 %i.vc, %i.nu
  br i1 %i.vd, label %bb.q, label %encode_block_int32_2.exit.i

bb.q:                                             ; preds = %stream_write_bits.exit.i5
  %i.ve = sub nuw i32 %i.nu, %i.vc
  %i.vf = zext i32 %i.ve to i64
  %i.vg = load i64, ptr %i.mq, align 8, !tbaa !25
  %i.vh = add i64 %i.vg, %i.vf                    ; 5 uses
  %i.vi = icmp ugt i64 %i.vh, 63
  br i1 %i.vi, label %.lr.ph.i.i.i9, label %stream_pad.exit.i.i7

.lr.ph.i.i.i9:                                    ; preds = %bb.q
  %i.vj = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %.promoted.i.i.i10 = load ptr, ptr %i.vj, align 8, !tbaa !27 ; 3 uses
  %.pre.i.i.i11 = load i64, ptr %i.mw, align 8, !tbaa !26
  %i.vk = getelementptr i8, ptr %.promoted.i.i.i10, i64 8 ; 2 uses
  store i64 %.pre.i.i.i11, ptr %.promoted.i.i.i10, align 8, !tbaa !14
  store i64 0, ptr %i.mw, align 8, !tbaa !26
  %i.vl = add i64 %i.vh, -64                      ; 2 uses
  %i.vm = icmp ugt i64 %i.vl, 63
  br i1 %i.vm, label %.peel.next.i.preheader.i14, label %._crit_edge.i.i.i12

.peel.next.i.preheader.i14:                       ; preds = %.lr.ph.i.i.i9
  %i.vn = add i64 %i.vh, -128                     ; 2 uses
  %i.vo = lshr i64 %i.vn, 3
  %i.vp = and i64 %i.vo, 2305843009213693944
  %i.vq = add nuw nsw i64 %i.vp, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vk, i8 0, i64 %i.vq, i1 false), !tbaa !14
  store i64 0, ptr %i.mw, align 8, !tbaa !26
  %i.vr = lshr i64 %i.vn, 3
  %i.vs = and i64 %i.vr, 2305843009213693944
  %i.vt = getelementptr i8, ptr %.promoted.i.i.i10, i64 %i.vs
  %scevgep = getelementptr i8, ptr %i.vt, i64 16
  %i.vu = and i64 %i.vh, 63
  br label %._crit_edge.i.i.i12

._crit_edge.i.i.i12:                              ; preds = %.peel.next.i.preheader.i14, %.lr.ph.i.i.i9
  %.lcssa23.i.i = phi ptr [ %i.vk, %.lr.ph.i.i.i9 ], [ %scevgep, %.peel.next.i.preheader.i14 ]
  %.lcssa.i.i13 = phi i64 [ %i.vl, %.lr.ph.i.i.i9 ], [ %i.vu, %.peel.next.i.preheader.i14 ]
  store ptr %.lcssa23.i.i, ptr %i.vj, align 8, !tbaa !27
  br label %stream_pad.exit.i.i7

stream_pad.exit.i.i7:                             ; preds = %._crit_edge.i.i.i12, %bb.q
  %.0.lcssa.i.i.i8 = phi i64 [ %.lcssa.i.i13, %._crit_edge.i.i.i12 ], [ %i.vh, %bb.q ]
  store i64 %.0.lcssa.i.i.i8, ptr %i.mq, align 8, !tbaa !25
  br label %encode_block_int32_2.exit.i

encode_block_int32_2.exit.i:                      ; preds = %stream_pad.exit.i.i7, %stream_write_bits.exit.i5
  %.0.i35.i = phi i32 [ %i.nu, %stream_pad.exit.i.i7 ], [ %i.vc, %stream_write_bits.exit.i5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.vv = add i32 %.0.i35.i, 9
  br label %rev_encode_block_float_2.exit

bb.r:                                             ; preds = %bb.n
  %i.vw = load i64, ptr %i.mq, align 8, !tbaa !25
  %i.vx = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !26
  %i.vz = add i64 %i.vw, 1                        ; 2 uses
  store i64 %i.vz, ptr %i.mq, align 8, !tbaa !25
  %i.wa = icmp eq i64 %i.vz, 64
  br i1 %i.wa, label %bb.s, label %stream_write_bit.exit.i17

bb.s:                                             ; preds = %bb.r
  %i.wb = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !27 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  store ptr %i.wd, ptr %i.wb, align 8, !tbaa !27
  store i64 %i.vy, ptr %i.wc, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mq, i8 0, i64 16, i1 false)
  br label %stream_write_bit.exit.i17

stream_write_bit.exit.i17:                        ; preds = %bb.s, %bb.r
  %i.we = load i32, ptr %0, align 8, !tbaa !28    ; 3 uses
  %i.wf = icmp ugt i32 %i.we, 1
  br i1 %i.wf, label %bb.t, label %rev_encode_block_float_2.exit

bb.t:                                             ; preds = %stream_write_bit.exit.i17
  %i.wg = load ptr, ptr %i.mp, align 8, !tbaa !23 ; 4 uses
end_hunk_0
