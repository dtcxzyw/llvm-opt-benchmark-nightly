Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 175
begin_hunk_0_@js_bigint_divrem:bb.a

bb.bu:                                            ; preds = %bb.bt
  %i.na = zext i32 %i.mv to i64                   ; 2 uses
  %.030.i.i = add i32 %.1, -1                     ; 2 uses
  %i.nb = icmp sgt i32 %.030.i.i, -1
  br i1 %i.nb, label %.lr.ph33.i.i, label %js_mp_div1norm.exit.i

.lr.ph33.i.i:                                     ; preds = %bb.bu
  %i.nc = xor i32 %i.mv, -1
  %i.nd = zext i32 %i.nc to i64
  %i.ne = shl nuw i64 %i.nd, 32
  %i.nf = or disjoint i64 %i.ne, 4294967295
  %i.ng = udiv i64 %i.nf, %i.na
  %i.nh = and i64 %i.ng, 4294967295
  %i.ni = zext nneg i32 %.030.i.i to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph33.i.i
  %indvars.iv38.i.i = phi i64 [ %i.ni, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.bv ] ; 4 uses
  %.02531.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %i.oi, %bb.bv ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv38.i.i
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !191 ; 3 uses
  %i.nl = ashr i32 %i.nk, 31                      ; 2 uses
  %i.nm = and i32 %i.nl, %i.mv
  %i.nn = add i32 %i.nm, %i.nk
  %i.no = sub i32 %.02531.i.i, %i.nl
  %i.np = zext i32 %i.no to i64
  %i.nq = mul nuw i64 %i.nh, %i.np
  %i.nr = zext i32 %i.nn to i64
  %i.ns = add nuw i64 %i.nq, %i.nr
  %i.nt = lshr i64 %i.ns, 32
  %i.nu = zext i32 %.02531.i.i to i64
  %i.nv = trunc nuw i64 %i.nt to i32
  %i.nw = add i32 %.02531.i.i, %i.nv              ; 2 uses
  %i.nx = shl nuw i64 %i.nu, 32
  %i.ny = zext i32 %i.nk to i64
  %i.nz = or disjoint i64 %i.nx, %i.ny
  %i.oa = zext i32 %i.nw to i64
  %.neg.i.i.i = xor i64 %i.oa, -1
  %.neg24.i.i.i = mul i64 %.neg.i.i.i, %i.na
  %i.ob = add i64 %i.nz, %.neg24.i.i.i            ; 2 uses
  %i.oc = lshr i64 %i.ob, 32
  %i.od = trunc nuw i64 %i.oc to i32              ; 2 uses
  %i.oe = add i32 %i.nw, 1
  %i.of = add i32 %i.oe, %i.od
  %i.og = trunc i64 %i.ob to i32
  %i.oh = and i32 %i.mv, %i.od
  %i.oi = add i32 %i.oh, %i.og                    ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv38.i.i
  store i32 %i.of, ptr %i.oj, align 4, !tbaa !191
  %indvars.iv.next39.i.i = add nsw i64 %indvars.iv38.i.i, -1
  %.not42.i.i = icmp eq i64 %indvars.iv38.i.i, 0
  br i1 %.not42.i.i, label %js_mp_div1norm.exit.i, label %bb.bv, !llvm.loop !1783

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.mz, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bw ] ; 4 uses
  %.12628.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.os, %bb.bw ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.ok = shl nuw i64 %.12628.i.i, 32
  %i.ol = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !191
  %i.on = zext i32 %i.om to i64
  %i.oo = or disjoint i64 %i.ok, %i.on            ; 2 uses
  %i.op = udiv i64 %i.oo, %i.my
  %i.oq = trunc i64 %i.op to i32
  %i.or = getelementptr [4 x i8], ptr %i.lo, i64 %indvars.iv.i.i
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !191
  %i.os = urem i64 %i.oo, %i.my                   ; 2 uses
  %i.ot = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.ot, label %bb.bw, label %.loopexit.loopexit35.i.i, !llvm.loop !1784

.loopexit.loopexit35.i.i:                         ; preds = %bb.bw
  %i.ou = trunc nuw i64 %i.os to i32
  br label %js_mp_div1norm.exit.i

js_mp_div1norm.exit.i:                            ; preds = %bb.bv, %.loopexit.loopexit35.i.i, %bb.bu, %.preheader.i.i
  %.2.i.i = phi i32 [ %i.ou, %.loopexit.loopexit35.i.i ], [ 0, %bb.bu ], [ 0, %.preheader.i.i ], [ %i.oi, %bb.bv ]
  store i32 %.2.i.i, ptr %i.mr, align 4, !tbaa !191
  br label %js_mp_divnorm.exit

bb.bx:                                            ; preds = %bb.bs
  %i.ov = icmp ugt i32 %i.kx, 2
  br i1 %i.ov, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ow = xor i32 %i.mv, -1
  %i.ox = zext i32 %i.ow to i64
  %i.oy = shl nuw i64 %i.ox, 32
  %i.oz = or disjoint i64 %i.oy, 4294967295
  %i.pa = zext i32 %i.mv to i64
  %i.pb = udiv i64 %i.oz, %i.pa
  %i.pc = trunc i64 %i.pb to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.092.i = phi i32 [ %i.pc, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  %i.pd = icmp sgt i32 %i.ms, -1
  br i1 %i.pd, label %.lr.ph.i167, label %.thread.i

bb.ca:                                            ; preds = %.lr.ph.i167
  %i.pe = add nsw i32 %.0137.i, -1
  %i.pf = icmp sgt i32 %.0137.i, 0
  br i1 %i.pf, label %.lr.ph.i167, label %.thread.i, !llvm.loop !1785

.thread.i:                                        ; preds = %bb.ca, %bb.bz
  %i.pg = zext i32 %i.kx to i64                   ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.pg
  store i32 1, ptr %i.ph, align 4, !tbaa !191
  br label %bb.cc

.lr.ph.i167:                                      ; preds = %bb.bz, %bb.ca
  %.0137.i = phi i32 [ %i.pe, %bb.ca ], [ %i.ms, %bb.bz ] ; 4 uses
  %i.pi = add i32 %.0137.i, %i.kx
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !191 ; 2 uses
  %i.pm = zext nneg i32 %.0137.i to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !191 ; 2 uses
  %.not.i168 = icmp eq i32 %i.pl, %i.po
  br i1 %.not.i168, label %bb.ca, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i167
  %i.pp = icmp uge i32 %i.pl, %i.po               ; 2 uses
  %spec.select103.i = zext i1 %i.pp to i32
  %i.pq = zext i32 %i.kx to i64                   ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.pq
  store i32 %spec.select103.i, ptr %i.pr, align 4, !tbaa !191
  br i1 %i.pp, label %bb.cc, label %js_mp_sub.exit.i

bb.cc:                                            ; preds = %bb.cb, %.thread.i
  %i.ps = phi i64 [ %i.pg, %.thread.i ], [ %i.pq, %bb.cb ]
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ps ; 3 uses
  %i.pu = icmp sgt i32 %.0115.lcssa, 0
  br i1 %i.pu, label %.lr.ph.preheader.i.i, label %js_mp_sub.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.cc
  %wide.trip.count.i.i = zext nneg i32 %.0115.lcssa to i64 ; 2 uses
  %xtraiter421 = and i64 %wide.trip.count.i.i, 1
  %unroll_iter424 = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %.lr.ph.i104.i, %.lr.ph.preheader.i.i
  %indvars.iv.i105.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i106.i.1, %.lr.ph.i104.i ] ; 4 uses
  %.021.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.qo, %.lr.ph.i104.i ] ; 2 uses
  %niter425 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %niter425.next.1, %.lr.ph.i104.i ]
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv.i105.i ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !191 ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i105.i
  %i.py = load i32, ptr %i.px, align 4, !tbaa !191 ; 2 uses
  %i.pz = sub i32 %i.pw, %i.py                    ; 2 uses
  %i.qa = icmp ugt i32 %i.py, %i.pw
  %i.qb = sub i32 %i.pz, %.021.i.i
  %i.qc = icmp ugt i32 %.021.i.i, %i.pz
  %i.qd = or i1 %i.qa, %i.qc
  %i.qe = zext i1 %i.qd to i32                    ; 2 uses
  store i32 %i.qb, ptr %i.pv, align 4, !tbaa !191
  %indvars.iv.next.i106.i = or disjoint i64 %indvars.iv.i105.i, 1 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv.next.i106.i ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !191 ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i106.i
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !191 ; 2 uses
  %i.qj = sub i32 %i.qg, %i.qi                    ; 2 uses
  %i.qk = icmp ugt i32 %i.qi, %i.qg
  %i.ql = sub i32 %i.qj, %i.qe
  %i.qm = icmp ult i32 %i.qj, %i.qe
  %i.qn = or i1 %i.qk, %i.qm
  %i.qo = zext i1 %i.qn to i32                    ; 2 uses
  store i32 %i.ql, ptr %i.qf, align 4, !tbaa !191
  %indvars.iv.next.i106.i.1 = add nuw nsw i64 %indvars.iv.i105.i, 2 ; 3 uses
  %niter425.next.1 = add i64 %niter425, 2         ; 2 uses
  %niter425.ncmp.1 = icmp eq i64 %niter425.next.1, %unroll_iter424
  br i1 %niter425.ncmp.1, label %js_mp_sub.exit.i.loopexit.unr-lcssa, label %.lr.ph.i104.i, !llvm.loop !154

js_mp_sub.exit.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i104.i
  %lcmp.mod422.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod422.not, label %js_mp_sub.exit.i, label %.lr.ph.i104.i.epil.preheader

.lr.ph.i104.i.epil.preheader:                     ; preds = %js_mp_sub.exit.i.loopexit.unr-lcssa
  %lcmp.mod423 = trunc i32 %.0115.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod423)
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv.next.i106.i.1 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !191
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i106.i.1
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !191
  %i.qt = add i32 %i.qs, %i.qo
  %i.qu = sub i32 %i.qq, %i.qt
  store i32 %i.qu, ptr %i.qp, align 4, !tbaa !191
  br label %js_mp_sub.exit.i

js_mp_sub.exit.i:                                 ; preds = %.lr.ph.i104.i.epil.preheader, %js_mp_sub.exit.i.loopexit.unr-lcssa, %bb.cc, %bb.cb
  %.091138.i = add i32 %i.kx, -1                  ; 2 uses
  %i.qv = icmp sgt i32 %.091138.i, -1
  br i1 %i.qv, label %.lr.ph140.i, label %js_mp_divnorm.exit

.lr.ph140.i:                                      ; preds = %js_mp_sub.exit.i
  %.not101.i = icmp eq i32 %.092.i, 0
  %i.qw = zext i32 %.092.i to i64
  %i.qx = zext i32 %i.mv to i64                   ; 2 uses
  %.not.i107.i = icmp eq i32 %.0115.lcssa, 0
  %wide.trip.count.i109.i = zext i32 %.0115.lcssa to i64 ; 5 uses
  %i.qy = zext nneg i32 %.091138.i to i64
  %4 = add nsw i64 %wide.trip.count.i109.i, -1    ; 2 uses
  %xtraiter427 = and i64 %wide.trip.count.i109.i, 1
  %5 = icmp eq i64 %4, 0
  %unroll_iter432 = and i64 %wide.trip.count.i109.i, 4294967294
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  %lcmp.mod431 = trunc i32 %.0115.lcssa to i1
  %xtraiter434 = and i64 %wide.trip.count.i109.i, 1
  %6 = icmp eq i64 %4, 0
  %unroll_iter438 = and i64 %wide.trip.count.i109.i, 4294967294
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  %lcmp.mod437 = trunc i32 %.0115.lcssa to i1
  br label %bb.cd

bb.cd:                                            ; preds = %js_mp_sub_mul1.exit.thread.i, %.lr.ph140.i
  %indvars.iv.i165 = phi i64 [ %i.qy, %.lr.ph140.i ], [ %indvars.iv.next.i166, %js_mp_sub_mul1.exit.thread.i ] ; 5 uses
  %i.qz = trunc nuw nsw i64 %indvars.iv.i165 to i32
  %i.ra = add i32 %.0115.lcssa, %i.qz             ; 3 uses
  %i.rb = zext i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.rb ; 5 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !191 ; 5 uses
  %.not100.i = icmp ult i32 %i.rd, %i.mv
  br i1 %.not100.i, label %bb.ce, label %bb.ch, !prof !324

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not101.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.re = add i32 %i.ra, -1
  %i.rf = zext i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !191 ; 3 uses
  %i.ri = ashr i32 %i.rh, 31                      ; 2 uses
  %i.rj = and i32 %i.ri, %i.mv
  %i.rk = add i32 %i.rj, %i.rh
  %i.rl = sub i32 %i.rd, %i.ri
  %i.rm = zext i32 %i.rl to i64
  %i.rn = mul nuw i64 %i.rm, %i.qw
  %i.ro = zext i32 %i.rk to i64
  %i.rp = add nuw i64 %i.rn, %i.ro
  %i.rq = lshr i64 %i.rp, 32
  %i.rr = zext i32 %i.rd to i64
  %i.rs = trunc nuw i64 %i.rq to i32
  %i.rt = add i32 %i.rd, %i.rs                    ; 2 uses
  %i.ru = shl nuw i64 %i.rr, 32
  %i.rv = zext i32 %i.rh to i64
  %i.rw = or disjoint i64 %i.ru, %i.rv
  %i.rx = zext i32 %i.rt to i64
  %.neg.i.i = xor i64 %i.rx, -1
  %.neg24.i.i = mul i64 %.neg.i.i, %i.qx
  %i.ry = add i64 %.neg24.i.i, %i.rw
  %i.rz = lshr i64 %i.ry, 32
  %i.sa = trunc nuw i64 %i.rz to i32
  %i.sb = add i32 %i.rt, 1
  %i.sc = add i32 %i.sb, %i.sa
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.sd = zext i32 %i.rd to i64
  %i.se = shl nuw i64 %i.sd, 32
  %i.sf = add i32 %i.ra, -1
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !191
  %i.sj = zext i32 %i.si to i64
  %i.sk = or disjoint i64 %i.se, %i.sj
  %i.sl = udiv i64 %i.sk, %i.qx
  %i.sm = trunc i64 %i.sl to i32
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd
  %.1.i = phi i32 [ %i.sm, %bb.cg ], [ %i.sc, %bb.cf ], [ -1, %bb.cd ] ; 4 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i165 ; 6 uses
  br i1 %.not.i107.i, label %js_mp_sub_mul1.exit.thread.i, label %.lr.ph.i108.i

.lr.ph.i108.i:                                    ; preds = %bb.ch
  %i.so = zext i32 %.1.i to i64                   ; 3 uses
  br i1 %5, label %.epil.preheader426, label %.lr.ph.i108.i.new

.lr.ph.i108.i.new:                                ; preds = %.lr.ph.i108.i, %.lr.ph.i108.i.new
  %indvars.iv.i110.i = phi i64 [ %indvars.iv.next.i111.i.1, %.lr.ph.i108.i.new ], [ 0, %.lr.ph.i108.i ] ; 4 uses
  %.017.i.i = phi i32 [ %i.tp, %.lr.ph.i108.i.new ], [ 0, %.lr.ph.i108.i ]
  %niter433 = phi i64 [ %niter433.next.1, %.lr.ph.i108.i.new ], [ 0, %.lr.ph.i108.i ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.i110.i ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !191
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i110.i
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !191
  %i.su = zext i32 %i.st to i64
  %i.sv = mul nuw i64 %i.so, %i.su
  %i.sw = zext i32 %.017.i.i to i64
  %i.sx = add nuw i64 %i.sv, %i.sw
  %i.sy = sub i64 %i.sr, %i.sx                    ; 2 uses
  %i.sz = trunc i64 %i.sy to i32
  store i32 %i.sz, ptr %i.sp, align 4, !tbaa !191
  %i.ta = lshr i64 %i.sy, 32
  %i.tb = sub nsw i64 0, %i.ta
  %indvars.iv.next.i111.i = or disjoint i64 %indvars.iv.i110.i, 1 ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.i111.i ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !191
  %i.te = zext i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i111.i
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !191
  %i.th = zext i32 %i.tg to i64
  %i.ti = mul nuw i64 %i.so, %i.th
  %i.tj = and i64 %i.tb, 4294967295
  %i.tk = add nuw i64 %i.ti, %i.tj
  %i.tl = sub i64 %i.te, %i.tk                    ; 2 uses
  %i.tm = trunc i64 %i.tl to i32
  store i32 %i.tm, ptr %i.tc, align 4, !tbaa !191
  %i.tn = lshr i64 %i.tl, 32
  %i.to = trunc nuw i64 %i.tn to i32              ; 2 uses
  %i.tp = sub i32 0, %i.to                        ; 3 uses
  %indvars.iv.next.i111.i.1 = add nuw nsw i64 %indvars.iv.i110.i, 2 ; 2 uses
  %niter433.next.1 = add i64 %niter433, 2         ; 2 uses
  %niter433.ncmp.1 = icmp eq i64 %niter433.next.1, %unroll_iter432
  br i1 %niter433.ncmp.1, label %js_mp_sub_mul1.exit.i.unr-lcssa, label %.lr.ph.i108.i.new, !llvm.loop !1786

js_mp_sub_mul1.exit.i.unr-lcssa:                  ; preds = %.lr.ph.i108.i.new
  br i1 %lcmp.mod428.not, label %js_mp_sub_mul1.exit.i, label %.epil.preheader426

.epil.preheader426:                               ; preds = %js_mp_sub_mul1.exit.i.unr-lcssa, %.lr.ph.i108.i
  %indvars.iv.i110.i.epil.init = phi i64 [ 0, %.lr.ph.i108.i ], [ %indvars.iv.next.i111.i.1, %js_mp_sub_mul1.exit.i.unr-lcssa ] ; 2 uses
  %.017.i.i.epil.init = phi i32 [ 0, %.lr.ph.i108.i ], [ %i.tp, %js_mp_sub_mul1.exit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod431)
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.i110.i.epil.init ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !191
  %i.ts = zext i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i110.i.epil.init
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !191
  %i.tv = zext i32 %i.tu to i64
  %i.tw = mul nuw i64 %i.so, %i.tv
  %i.tx = zext i32 %.017.i.i.epil.init to i64
  %i.ty = add nuw i64 %i.tw, %i.tx
  %i.tz = sub i64 %i.ts, %i.ty                    ; 2 uses
  %i.ua = trunc i64 %i.tz to i32
  store i32 %i.ua, ptr %i.tq, align 4, !tbaa !191
  %i.ub = lshr i64 %i.tz, 32
  %i.uc = trunc nuw i64 %i.ub to i32              ; 2 uses
  %i.ud = sub i32 0, %i.uc
  br label %js_mp_sub_mul1.exit.i

js_mp_sub_mul1.exit.i:                            ; preds = %js_mp_sub_mul1.exit.i.unr-lcssa, %.epil.preheader426
  %.lcssa395 = phi i32 [ %i.to, %js_mp_sub_mul1.exit.i.unr-lcssa ], [ %i.uc, %.epil.preheader426 ]
  %.lcssa394 = phi i32 [ %i.tp, %js_mp_sub_mul1.exit.i.unr-lcssa ], [ %i.ud, %.epil.preheader426 ]
  %i.ue = load i32, ptr %i.rc, align 4, !tbaa !191 ; 2 uses
  %i.uf = add i32 %i.ue, %.lcssa395
  %i.ug = icmp ult i32 %i.ue, %.lcssa394
  store i32 %i.uf, ptr %i.rc, align 4, !tbaa !191
  br i1 %i.ug, label %.lr.ph.preheader.i115.i, label %js_mp_sub_mul1.exit.thread.i

.lr.ph.preheader.i115.i:                          ; preds = %js_mp_sub_mul1.exit.i, %.lr.ph.preheader.i115.i.backedge
  %.2.i = phi i32 [ %i.vk, %.lr.ph.preheader.i115.i.backedge ], [ %.1.i, %js_mp_sub_mul1.exit.i ]
  br i1 %6, label %.lr.ph.i117.i.epil.preheader, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %.lr.ph.preheader.i115.i, %.lr.ph.i117.i
  %indvars.iv.i118.i = phi i64 [ %indvars.iv.next.i120.i.1, %.lr.ph.i117.i ], [ 0, %.lr.ph.preheader.i115.i ] ; 4 uses
  %.021.i119.i = phi i32 [ %i.va, %.lr.ph.i117.i ], [ 0, %.lr.ph.preheader.i115.i ] ; 2 uses
  %niter439 = phi i64 [ %niter439.next.1, %.lr.ph.i117.i ], [ 0, %.lr.ph.preheader.i115.i ]
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.i118.i ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !191 ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i118.i
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !191
  %i.ul = add i32 %i.uk, %i.ui                    ; 2 uses
  %i.um = icmp ult i32 %i.ul, %i.ui
  %i.un = add i32 %i.ul, %.021.i119.i             ; 2 uses
  %i.uo = icmp ult i32 %i.un, %.021.i119.i
  %i.up = or i1 %i.um, %i.uo
  %i.uq = zext i1 %i.up to i32                    ; 2 uses
  store i32 %i.un, ptr %i.uh, align 4, !tbaa !191
  %indvars.iv.next.i120.i = or disjoint i64 %indvars.iv.i118.i, 1 ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.i120.i ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !191 ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i120.i
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !191
  %i.uv = add i32 %i.uu, %i.us                    ; 2 uses
  %i.uw = icmp ult i32 %i.uv, %i.us
  %i.ux = add i32 %i.uv, %i.uq                    ; 2 uses
  %i.uy = icmp ult i32 %i.ux, %i.uq
  %i.uz = or i1 %i.uw, %i.uy                      ; 2 uses
  %i.va = zext i1 %i.uz to i32                    ; 2 uses
  store i32 %i.ux, ptr %i.ur, align 4, !tbaa !191
  %indvars.iv.next.i120.i.1 = add nuw nsw i64 %indvars.iv.i118.i, 2 ; 2 uses
  %niter439.next.1 = add i64 %niter439, 2         ; 2 uses
  %niter439.ncmp.1 = icmp eq i64 %niter439.next.1, %unroll_iter438
  br i1 %niter439.ncmp.1, label %js_mp_add.exit.i.unr-lcssa, label %.lr.ph.i117.i, !llvm.loop !1787

js_mp_add.exit.i.unr-lcssa:                       ; preds = %.lr.ph.i117.i
  br i1 %lcmp.mod435.not, label %js_mp_add.exit.i, label %.lr.ph.i117.i.epil.preheader

.lr.ph.i117.i.epil.preheader:                     ; preds = %js_mp_add.exit.i.unr-lcssa, %.lr.ph.preheader.i115.i
  %indvars.iv.i118.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i115.i ], [ %indvars.iv.next.i120.i.1, %js_mp_add.exit.i.unr-lcssa ] ; 2 uses
  %.021.i119.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i115.i ], [ %i.va, %js_mp_add.exit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod437)
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.i118.i.epil.init ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !191 ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i118.i.epil.init
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !191
  %i.vf = add i32 %i.ve, %i.vc                    ; 2 uses
  %i.vg = icmp ult i32 %i.vf, %i.vc
  %i.vh = add i32 %i.vf, %.021.i119.i.epil.init   ; 2 uses
  %i.vi = icmp ult i32 %i.vh, %.021.i119.i.epil.init
  %i.vj = or i1 %i.vg, %i.vi
  store i32 %i.vh, ptr %i.vb, align 4, !tbaa !191
  br label %js_mp_add.exit.i

js_mp_add.exit.i:                                 ; preds = %js_mp_add.exit.i.unr-lcssa, %.lr.ph.i117.i.epil.preheader
  %.lcssa396 = phi i1 [ %i.uz, %js_mp_add.exit.i.unr-lcssa ], [ %i.vj, %.lr.ph.i117.i.epil.preheader ]
  %i.vk = add i32 %.2.i, -1                       ; 2 uses
  br i1 %.lcssa396, label %bb.ci, label %.lr.ph.preheader.i115.i.backedge

bb.ci:                                            ; preds = %js_mp_add.exit.i
  %i.vl = load i32, ptr %i.rc, align 4, !tbaa !191
  %i.vm = add i32 %i.vl, 1                        ; 2 uses
  store i32 %i.vm, ptr %i.rc, align 4, !tbaa !191
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %js_mp_sub_mul1.exit.thread.i, label %.lr.ph.preheader.i115.i.backedge

.lr.ph.preheader.i115.i.backedge:                 ; preds = %bb.ci, %js_mp_add.exit.i
  br label %.lr.ph.preheader.i115.i

js_mp_sub_mul1.exit.thread.i:                     ; preds = %bb.ci, %js_mp_sub_mul1.exit.i, %bb.ch
  %.3.i = phi i32 [ %.1.i, %bb.ch ], [ %.1.i, %js_mp_sub_mul1.exit.i ], [ %i.vk, %bb.ci ]
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.i165
  store i32 %.3.i, ptr %i.vo, align 4, !tbaa !191
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1
  %i.vp = icmp sgt i64 %indvars.iv.i165, 0
  br i1 %i.vp, label %bb.cd, label %js_mp_divnorm.exit, !llvm.loop !1788

js_mp_divnorm.exit:                               ; preds = %js_mp_sub_mul1.exit.thread.i, %js_mp_div1norm.exit.i, %js_mp_sub.exit.i
  %i.vq = load ptr, ptr %i.x, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.vq, ptr noundef nonnull %i.cz)
  %i.vr = load ptr, ptr %i.x, align 8, !tbaa !232 ; 2 uses
  br i1 %3, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %js_mp_divnorm.exit
  tail call void @js_free_rt(ptr noundef %i.vr, ptr noundef nonnull %i.lo)
  %i.vs = icmp sgt i32 %.0115.lcssa, 0            ; 2 uses
  %or.cond283 = and i1 %i.vs, %.not127
  br i1 %or.cond283, label %.lr.ph.i170, label %js_mp_shr.exit

.lr.ph.i170:                                      ; preds = %bb.cj
  %i.vt = sub nuw nsw i32 32, %i.ji               ; 2 uses
  %i.vu = zext nneg i32 %.0115.lcssa to i64       ; 5 uses
  %min.iters.check = icmp ult i32 %.0115.lcssa, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i170
  %n.vec = and i64 %i.vu, 2147483640              ; 2 uses
  %i.vv = and i64 %i.vu, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.vt, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert387 = insertelement <4 x i32> poison, i32 %i.ji, i64 0
  %broadcast.splat388 = shufflevector <4 x i32> %broadcast.splatinsert387, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %reverse390, %vector.body ]
  %i.vw = sub i64 %i.vu, %index
  %i.vx = getelementptr [4 x i8], ptr %i.ai, i64 %i.vw ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vx, i64 -12    ; 2 uses
  %i.vz = getelementptr i8, ptr %i.vx, i64 -28    ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.vy, align 4, !tbaa !191 ; 3 uses
  %wide.load389 = load <4 x i32>, ptr %i.vz, align 4, !tbaa !191 ; 3 uses
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse390 = shufflevector <4 x i32> %wide.load389, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.wa = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 7, i32 6, i32 5>
  %i.wb = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load389, <4 x i32> <i32 0, i32 7, i32 6, i32 5>
  %i.wc = lshr <4 x i32> %reverse, %broadcast.splat388
  %i.wd = lshr <4 x i32> %reverse390, %broadcast.splat388
  %i.we = shl <4 x i32> %i.wa, %broadcast.splat
  %i.wf = shl <4 x i32> %i.wb, %broadcast.splat
  %i.wg = or disjoint <4 x i32> %i.wc, %i.we
  %i.wh = or disjoint <4 x i32> %i.wd, %i.wf
  %reverse391 = shufflevector <4 x i32> %i.wg, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse392 = shufflevector <4 x i32> %i.wh, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse391, ptr %i.vy, align 4, !tbaa !191
  store <4 x i32> %reverse392, ptr %i.vz, align 4, !tbaa !191
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wi = icmp eq i64 %index.next, %n.vec
  br i1 %i.wi, label %middle.block, label %vector.body, !llvm.loop !1789

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load389, i64 0
  %cmp.n = icmp eq i64 %n.vec, %i.vu
  br i1 %cmp.n, label %js_mp_shr.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i170, %middle.block
  %indvars.iv.i171.ph = phi i64 [ %i.vu, %.lr.ph.i170 ], [ %i.vv, %middle.block ]
  %.016.i.ph = phi i32 [ 0, %.lr.ph.i170 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i172, %scalar.ph ], [ %indvars.iv.i171.ph, %scalar.ph.preheader ] ; 3 uses
  %.016.i = phi i32 [ %i.wk, %scalar.ph ], [ %.016.i.ph, %scalar.ph.preheader ]
  %indvars.iv.next.i172 = add nsw i64 %indvars.iv.i171, -1
  %i.wj = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.i171 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !191 ; 2 uses
  %i.wl = lshr i32 %i.wk, %i.ji
  %i.wm = shl i32 %.016.i, %i.vt
  %i.wn = or disjoint i32 %i.wl, %i.wm
  store i32 %i.wn, ptr %i.wj, align 4, !tbaa !191
  %i.wo = icmp samesign ugt i64 %indvars.iv.i171, 1
  br i1 %i.wo, label %scalar.ph, label %js_mp_shr.exit, !llvm.loop !1790

js_mp_shr.exit:                                   ; preds = %scalar.ph, %middle.block, %bb.cj
  %i.wp = add i32 %.0115.lcssa, 1                 ; 5 uses
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.je
  store i32 0, ptr %i.wq, align 4, !tbaa !191
  %i.wr = icmp sgt i32 %.0115.lcssa, -1
  %or.cond = and i1 %.not124, %i.wr
  br i1 %or.cond, label %.lr.ph.preheader.i174, label %js_mp_neg.exit181

.lr.ph.preheader.i174:                            ; preds = %js_mp_shr.exit
  %wide.trip.count.i175 = zext nneg i32 %i.wp to i64 ; 2 uses
  %xtraiter445 = and i64 %wide.trip.count.i175, 1
  %i.ws = icmp eq i32 %.0115.lcssa, 0
  br i1 %i.ws, label %.lr.ph.i176.epil.preheader, label %.lr.ph.preheader.i174.new

.lr.ph.preheader.i174.new:                        ; preds = %.lr.ph.preheader.i174
  %unroll_iter448 = and i64 %wide.trip.count.i175, 2147483646
  br label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %.lr.ph.i176, %.lr.ph.preheader.i174.new
  %indvars.iv.i177 = phi i64 [ 0, %.lr.ph.preheader.i174.new ], [ %indvars.iv.next.i179.1, %.lr.ph.i176 ] ; 3 uses
  %.013.i178 = phi i32 [ 1, %.lr.ph.preheader.i174.new ], [ %i.xf, %.lr.ph.i176 ] ; 2 uses
  %niter449 = phi i64 [ 0, %.lr.ph.preheader.i174.new ], [ %niter449.next.1, %.lr.ph.i176 ]
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i177 ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !191
  %i.wv = xor i32 %i.wu, -1
  %i.ww = add i32 %.013.i178, %i.wv               ; 2 uses
  %i.wx = icmp ult i32 %i.ww, %.013.i178
  %i.wy = zext i1 %i.wx to i32                    ; 2 uses
  store i32 %i.ww, ptr %i.wt, align 4, !tbaa !191
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i177
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 4 ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !191
  %i.xc = xor i32 %i.xb, -1
  %i.xd = add i32 %i.wy, %i.xc                    ; 2 uses
  %i.xe = icmp ult i32 %i.xd, %i.wy
  %i.xf = zext i1 %i.xe to i32                    ; 2 uses
  store i32 %i.xd, ptr %i.xa, align 4, !tbaa !191
  %indvars.iv.next.i179.1 = add nuw nsw i64 %indvars.iv.i177, 2 ; 2 uses
  %niter449.next.1 = add i64 %niter449, 2         ; 2 uses
  %niter449.ncmp.1 = icmp eq i64 %niter449.next.1, %unroll_iter448
  br i1 %niter449.ncmp.1, label %js_mp_neg.exit181.loopexit.unr-lcssa, label %.lr.ph.i176, !llvm.loop !1780

js_mp_neg.exit181.loopexit.unr-lcssa:             ; preds = %.lr.ph.i176
  %lcmp.mod446.not = icmp eq i64 %xtraiter445, 0
  br i1 %lcmp.mod446.not, label %js_mp_neg.exit181, label %.lr.ph.i176.epil.preheader

.lr.ph.i176.epil.preheader:                       ; preds = %js_mp_neg.exit181.loopexit.unr-lcssa, %.lr.ph.preheader.i174
  %indvars.iv.i177.epil.init = phi i64 [ 0, %.lr.ph.preheader.i174 ], [ %indvars.iv.next.i179.1, %js_mp_neg.exit181.loopexit.unr-lcssa ]
  %.013.i178.epil.init = phi i32 [ 1, %.lr.ph.preheader.i174 ], [ %i.xf, %js_mp_neg.exit181.loopexit.unr-lcssa ]
  %lcmp.mod447 = trunc i32 %i.wp to i1
  tail call void @llvm.assume(i1 %lcmp.mod447)
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i177.epil.init ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !191
  %i.xi = xor i32 %i.xh, -1
  %i.xj = add i32 %.013.i178.epil.init, %i.xi
  store i32 %i.xj, ptr %i.xg, align 4, !tbaa !191
  br label %js_mp_neg.exit181

js_mp_neg.exit181:                                ; preds = %.lr.ph.i176.epil.preheader, %js_mp_neg.exit181.loopexit.unr-lcssa, %js_mp_shr.exit
  br i1 %i.vs, label %.lr.ph312.preheader, label %._crit_edge313

.lr.ph312.preheader:                              ; preds = %js_mp_neg.exit181
  %smin = tail call i32 @llvm.smin.i32(i32 %i.wp, i32 2)
  %i.xk = add i32 %smin, -1
  br label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %bb.cl
  %.0.i182311 = phi i32 [ %i.xu, %bb.cl ], [ %i.wp, %.lr.ph312.preheader ] ; 5 uses
  %i.xl = zext nneg i32 %.0.i182311 to i64
  %i.xm = getelementptr [4 x i8], ptr %i.mr, i64 %i.xl ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 -4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !191 ; 2 uses
  %i.xp = add i32 %i.xo, -1
  %or.cond.i = icmp ult i32 %i.xp, -2
  br i1 %or.cond.i, label %._crit_edge313, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph312
  %i.xq = and i32 %i.xo, 1
  %i.xr = getelementptr i8, ptr %i.xm, i64 -8
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !191
  %i.xt = lshr i32 %i.xs, 31
  %.not.i184 = icmp eq i32 %i.xq, %i.xt
  br i1 %.not.i184, label %bb.cl, label %._crit_edge313

bb.cl:                                            ; preds = %bb.ck
  %i.xu = add nsw i32 %.0.i182311, -1
  %i.xv = icmp sgt i32 %.0.i182311, 2
  br i1 %i.xv, label %.lr.ph312, label %._crit_edge313, !llvm.loop !140

._crit_edge313:                                   ; preds = %bb.cl, %.lr.ph312, %bb.ck, %js_mp_neg.exit181
  %.0.i182.lcssa = phi i32 [ %i.wp, %js_mp_neg.exit181 ], [ %.0.i182311, %bb.ck ], [ %.0.i182311, %.lr.ph312 ], [ %i.xk, %bb.cl ] ; 3 uses
  %i.xw = load i32, ptr %i.ai, align 8, !tbaa !191
  %.not21.i = icmp eq i32 %.0.i182.lcssa, %i.xw
  br i1 %.not21.i, label %js_bigint_new_si.exit, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge313
end_hunk_0
