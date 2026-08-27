Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@sinfl_decompress:bb.a
sinfl_refill.exit208:                             ; preds = %bb.ak, %bb.al
  %.pre.i215 = phi i32 [ %i.lw, %bb.ak ], [ %i.mk, %bb.al ] ; 2 uses
  %.val15.i209 = phi i64 [ %i.lr, %bb.ak ], [ %i.mh, %bb.al ] ; 3 uses
  %i.ml = and i64 %.val15.i209, 1023
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4            ; 4 uses
  %i.mo = and i32 %i.mn, 16
  %.not.i210 = icmp eq i32 %i.mo, 0
  br i1 %.not.i210, label %sinfl_decode.exit216, label %bb.am

bb.am:                                            ; preds = %sinfl_refill.exit208
  %i.mp = and i32 %i.mn, 15
  %i.mq = lshr i64 %.val15.i209, 10               ; 2 uses
  %i.mr = add nsw i32 %.pre.i215, -10
  %i.ms = zext nneg i32 %i.mp to i64
  %notmask.i16.i211 = shl nsw i64 -1, %i.ms
  %i.mt = xor i64 %notmask.i16.i211, -1
  %i.mu = and i64 %i.mq, %i.mt
  %i.mv = trunc nuw nsw i64 %i.mu to i32
  %i.mw = lshr i32 %i.mn, 16
  %i.mx = add nuw nsw i32 %i.mw, %i.mv
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4
  br label %sinfl_decode.exit216

sinfl_decode.exit216:                             ; preds = %sinfl_refill.exit208, %bb.am
  %i.nb = phi i32 [ %i.mr, %bb.am ], [ %.pre.i215, %sinfl_refill.exit208 ]
  %i.nc = phi i64 [ %i.mq, %bb.am ], [ %.val15.i209, %sinfl_refill.exit208 ]
  %.0.i212 = phi i32 [ %i.na, %bb.am ], [ %i.mn, %sinfl_refill.exit208 ] ; 2 uses
  %i.nd = and i32 %.0.i212, 15                    ; 2 uses
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = lshr i64 %i.nc, %i.ne                   ; 2 uses
  store i64 %i.nf, ptr %i.t, align 8
  %i.ng = sub nsw i32 %i.nb, %i.nd                ; 2 uses
  store i32 %i.ng, ptr %i.u, align 8
  %i.nh = lshr i32 %.0.i212, 16                   ; 2 uses
  %i.ni = and i32 %i.nh, 4095                     ; 2 uses
  %i.nj = icmp samesign ult i32 %i.ni, 256
  br i1 %i.nj, label %bb.an, label %bb.as

bb.an:                                            ; preds = %sinfl_decode.exit216
  %.not = icmp ult ptr %.2155, %i.n
  br i1 %.not, label %bb.ap, label %bb.ao, !prof !213

bb.ao:                                            ; preds = %bb.an
  %i.nk = ptrtoint ptr %.2155 to i64
  %i.nl = sub i64 %i.nk, %i.w
  %i.nm = trunc i64 %i.nl to i32
  br label %.thread274

bb.ap:                                            ; preds = %bb.an
  %i.nn = trunc i32 %i.nh to i8
  %i.no = getelementptr inbounds nuw i8, ptr %.2155, i64 1 ; 2 uses
  store i8 %i.nn, ptr %.2155, align 1
  %.val15.i217 = load i64, ptr %i.t, align 8      ; 3 uses
  %i.np = and i64 %.val15.i217, 1023
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4            ; 4 uses
  %i.ns = and i32 %i.nr, 16
  %.not.i218 = icmp eq i32 %i.ns, 0
  br i1 %.not.i218, label %._crit_edge.i221, label %bb.aq

._crit_edge.i221:                                 ; preds = %bb.ap
  %.pre.i223 = load i32, ptr %i.u, align 8
  br label %sinfl_decode.exit224

bb.aq:                                            ; preds = %bb.ap
  %i.nt = and i32 %i.nr, 15
  %i.nu = lshr i64 %.val15.i217, 10               ; 2 uses
  %i.nv = load i32, ptr %i.u, align 8
  %i.nw = add nsw i32 %i.nv, -10
  %i.nx = zext nneg i32 %i.nt to i64
  %notmask.i16.i219 = shl nsw i64 -1, %i.nx
  %i.ny = xor i64 %notmask.i16.i219, -1
  %i.nz = and i64 %i.nu, %i.ny
  %i.oa = trunc nuw nsw i64 %i.nz to i32
  %i.ob = lshr i32 %i.nr, 16
  %i.oc = add nuw nsw i32 %i.ob, %i.oa
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4
  br label %sinfl_decode.exit224

sinfl_decode.exit224:                             ; preds = %._crit_edge.i221, %bb.aq
  %i.og = phi i32 [ %i.nw, %bb.aq ], [ %.pre.i223, %._crit_edge.i221 ]
  %i.oh = phi i64 [ %i.nu, %bb.aq ], [ %.val15.i217, %._crit_edge.i221 ]
  %.0.i220 = phi i32 [ %i.of, %bb.aq ], [ %i.nr, %._crit_edge.i221 ] ; 2 uses
  %i.oi = and i32 %.0.i220, 15                    ; 2 uses
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = lshr i64 %i.oh, %i.oj                   ; 2 uses
  store i64 %i.ok, ptr %i.t, align 8
  %i.ol = sub nsw i32 %i.og, %i.oi                ; 2 uses
  store i32 %i.ol, ptr %i.u, align 8
  %i.om = lshr i32 %.0.i220, 16                   ; 2 uses
  %i.on = and i32 %i.om, 4095                     ; 2 uses
  %i.oo = icmp samesign ult i32 %i.on, 256
  br i1 %i.oo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %sinfl_decode.exit224
  %i.op = trunc i32 %i.om to i8
  %i.oq = getelementptr inbounds nuw i8, ptr %.2155, i64 2
  store i8 %i.op, ptr %i.no, align 1
  br label %.preheader299.backedge

bb.as:                                            ; preds = %sinfl_decode.exit224, %sinfl_decode.exit216
  %i.or = phi i32 [ %i.ol, %sinfl_decode.exit224 ], [ %i.ng, %sinfl_decode.exit216 ]
  %.val.i225 = phi i64 [ %i.ok, %sinfl_decode.exit224 ], [ %i.nf, %sinfl_decode.exit216 ] ; 2 uses
  %.3156 = phi ptr [ %i.no, %sinfl_decode.exit224 ], [ %.2155, %sinfl_decode.exit216 ] ; 18 uses
  %.0 = phi i32 [ %i.on, %sinfl_decode.exit224 ], [ %i.ni, %sinfl_decode.exit216 ] ; 3 uses
  %i.os = icmp eq i32 %.0, 256
  br i1 %i.os, label %bb.at, label %bb.av, !prof !214

bb.at:                                            ; preds = %bb.as
  %.not168 = icmp eq i32 %i.bg, 0
  br i1 %.not168, label %.backedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ot = ptrtoint ptr %.3156 to i64
  %i.ou = sub i64 %i.ot, %i.w
  %i.ov = trunc i64 %i.ou to i32
  br label %.thread274

bb.av:                                            ; preds = %bb.as
  %i.ow = icmp samesign ugt i32 %.0, 285
  br i1 %i.ow, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ox = ptrtoint ptr %.3156 to i64
  %i.oy = sub i64 %i.ox, %i.w
  %i.oz = trunc i64 %i.oy to i32
  br label %.thread274

bb.ax:                                            ; preds = %bb.av
  %i.pa = add nsw i32 %.0, -257
  %i.pb = zext nneg i32 %i.pa to i64              ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr @sinfl_decompress.lbits, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1             ; 2 uses
  %i.pe = zext i8 %i.pd to i32
  %i.pf = zext i8 %i.pd to i64                    ; 2 uses
  %notmask.i.i226 = shl nsw i64 -1, %i.pf
  %i.pg = xor i64 %notmask.i.i226, -1
  %i.ph = and i64 %.val.i225, %i.pg
  %i.pi = lshr i64 %.val.i225, %i.pf              ; 3 uses
  %i.pj = sub nsw i32 %i.or, %i.pe                ; 2 uses
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr @sinfl_decompress.lbase, i64 %i.pb
  %i.pl = load i16, ptr %i.pk, align 2
  %i.pm = and i64 %i.pi, 255
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4            ; 4 uses
  %i.pp = and i32 %i.po, 16
  %.not.i228 = icmp eq i32 %i.pp, 0
  br i1 %.not.i228, label %sinfl_decode.exit234, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pq = and i32 %i.po, 15
  %i.pr = lshr i64 %i.pi, 8                       ; 2 uses
  %i.ps = add nsw i32 %i.pj, -8
  %i.pt = zext nneg i32 %i.pq to i64
  %notmask.i16.i229 = shl nsw i64 -1, %i.pt
  %i.pu = xor i64 %notmask.i16.i229, -1
  %i.pv = and i64 %i.pr, %i.pu
  %i.pw = trunc nuw nsw i64 %i.pv to i32
  %i.px = lshr i32 %i.po, 16
  %i.py = add nuw nsw i32 %i.px, %i.pw
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4
  br label %sinfl_decode.exit234

sinfl_decode.exit234:                             ; preds = %bb.ax, %bb.ay
  %i.qc = phi i32 [ %i.ps, %bb.ay ], [ %i.pj, %bb.ax ]
  %i.qd = phi i64 [ %i.pr, %bb.ay ], [ %i.pi, %bb.ax ]
  %.0.i230 = phi i32 [ %i.qb, %bb.ay ], [ %i.po, %bb.ax ] ; 2 uses
  %i.qe = and i32 %.0.i230, 15                    ; 2 uses
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = lshr i64 %i.qd, %i.qf                   ; 2 uses
  %i.qh = lshr i32 %.0.i230, 16
  %i.qi = and i32 %i.qh, 4095
  %i.qj = zext nneg i32 %i.qi to i64              ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr @sinfl_decompress.dbits, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1             ; 2 uses
  %i.qm = zext i8 %i.ql to i32
  %i.qn = zext i8 %i.ql to i64                    ; 2 uses
  %notmask.i.i236 = shl nsw i64 -1, %i.qn
  %i.qo = xor i64 %notmask.i.i236, -1
  %i.qp = and i64 %i.qg, %i.qo
  %i.qq = trunc i64 %i.qp to i32
  %i.qr = lshr i64 %i.qg, %i.qn
  store i64 %i.qr, ptr %i.t, align 8
  %i.qs = add nuw nsw i32 %i.qe, %i.qm
  %i.qt = sub i32 %i.qc, %i.qs
  store i32 %i.qt, ptr %i.u, align 8
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr @sinfl_decompress.dbase, i64 %i.qj
  %i.qv = load i16, ptr %i.qu, align 2
  %i.qw = sext i16 %i.qv to i32
  %i.qx = add nsw i32 %i.qq, %i.qw                ; 5 uses
  %i.qy = sext i32 %i.qx to i64                   ; 3 uses
  %i.qz = sub nsw i64 0, %i.qy
  %i.ra = getelementptr inbounds i8, ptr %.3156, i64 %i.qz ; 10 uses
  %i.rb = ptrtoint ptr %.3156 to i64              ; 9 uses
  %i.rc = sub i64 %i.rb, %i.w
  %i.rd = trunc i64 %i.rc to i32                  ; 2 uses
  %i.re = icmp sgt i32 %i.qx, %i.rd
  br i1 %i.re, label %.thread274, label %bb.az, !prof !214

bb.az:                                            ; preds = %sinfl_decode.exit234
  %i.rf = sext i16 %i.pl to i64
  %i.rg = add i64 %i.ph, %i.rf
  %sext = shl i64 %i.rg, 32
  %i.rh = ashr exact i64 %sext, 32
  %i.ri = getelementptr inbounds i8, ptr %.3156, i64 %i.rh ; 15 uses
  %i.rj = ptrtoint ptr %i.ri to i64               ; 5 uses
  %i.rk = sub i64 %i.x, %i.rj
  %i.rl = icmp sgt i64 %i.rk, 20
  br i1 %i.rl, label %bb.ba, label %iter.check534, !prof !213

bb.ba:                                            ; preds = %bb.az
  %i.rm = icmp sgt i32 %i.qx, 7
  br i1 %i.rm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.rn = load i64, ptr %i.ra, align 1
  store i64 %i.rn, ptr %.3156, align 1
  %i.ro = getelementptr inbounds nuw i8, ptr %.3156, i64 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rq = load i64, ptr %i.rp, align 1
  store i64 %i.rq, ptr %i.ro, align 1
  %i.rr = getelementptr inbounds nuw i8, ptr %.3156, i64 16 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ra, i64 16 ; 3 uses
  %i.rt = add i64 %i.rb, 24
  %i.ru = tail call i64 @llvm.umax.i64(i64 %i.rj, i64 %i.rt)
  %i.rv = add i64 %i.ru, -17
  %i.rw = sub i64 %i.rv, %i.rb                    ; 2 uses
  %i.rx = lshr i64 %i.rw, 3
  %i.ry = add nuw nsw i64 %i.rx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rw, 24
  %diff.check = icmp ult i32 %i.qx, 32
  %or.cond552 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond552, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bb
  %n.vec = and i64 %i.ry, 4611686018427387900     ; 3 uses
  %i.rz = shl i64 %n.vec, 3                       ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rr, i64 %i.rz
  %i.sb = getelementptr i8, ptr %i.rs, i64 %i.rz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.rr, i64 %i.sc ; 2 uses
  %next.gep472 = getelementptr i8, ptr %i.rs, i64 %i.sc ; 2 uses
  %i.sd = getelementptr i8, ptr %next.gep472, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep472, align 1
  %wide.load473 = load <2 x i64>, ptr %i.sd, align 1
  %i.se = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load473, ptr %i.se, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sf = icmp eq i64 %index.next, %n.vec
  br i1 %i.sf, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ry, %n.vec
  br i1 %cmp.n, label %.preheader299.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bb, %middle.block
  %.0266.ph = phi ptr [ %i.rr, %bb.bb ], [ %i.sa, %middle.block ]
  %.0263.ph = phi ptr [ %i.rs, %bb.bb ], [ %i.sb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0266 = phi ptr [ %i.sh, %scalar.ph ], [ %.0266.ph, %scalar.ph.preheader ] ; 2 uses
  %.0263 = phi ptr [ %i.si, %scalar.ph ], [ %.0263.ph, %scalar.ph.preheader ] ; 2 uses
  %i.sg = load i64, ptr %.0263, align 1
  store i64 %i.sg, ptr %.0266, align 1
  %i.sh = getelementptr inbounds nuw i8, ptr %.0266, i64 8 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.0263, i64 8
  %i.sj = icmp ult ptr %i.sh, %i.ri
  br i1 %i.sj, label %scalar.ph, label %.preheader299.backedge, !llvm.loop !218

bb.bc:                                            ; preds = %bb.ba
  %i.sk = icmp eq i32 %i.qx, 1
  br i1 %i.sk, label %bb.bd, label %iter.check

bb.bd:                                            ; preds = %bb.bc
  %i.sl = load i8, ptr %i.ra, align 1
  %i.sm = zext i8 %i.sl to i32                    ; 4 uses
  %i.sn = shl nuw i32 %i.sm, 24
  %i.so = shl nuw nsw i32 %i.sm, 16
  %i.sp = shl nuw nsw i32 %i.sm, 8
  %i.sq = or disjoint i32 %i.so, %i.sn
  %i.sr = or disjoint i32 %i.sq, %i.sp
  %i.ss = or disjoint i32 %i.sr, %i.sm
  %i.st = zext i32 %i.ss to i64                   ; 2 uses
  %i.su = shl nuw i64 %i.st, 32
  %i.sv = or disjoint i64 %i.su, %i.st            ; 4 uses
  store i64 %i.sv, ptr %.3156, align 1
  %i.sw = getelementptr inbounds nuw i8, ptr %.3156, i64 8
  store i64 %i.sv, ptr %i.sw, align 1
  %i.sx = getelementptr inbounds nuw i8, ptr %.3156, i64 16 ; 3 uses
  %i.sy = add i64 %i.rb, 24
  %i.sz = tail call i64 @llvm.umax.i64(i64 %i.rj, i64 %i.sy)
  %i.ta = add i64 %i.sz, -17
  %i.tb = sub i64 %i.ta, %i.rb                    ; 2 uses
  %i.tc = lshr i64 %i.tb, 3
  %i.td = add nuw nsw i64 %i.tc, 1                ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.tb, 24
  br i1 %min.iters.check476, label %scalar.ph475.preheader, label %vector.ph477

vector.ph477:                                     ; preds = %bb.bd
  %n.vec478 = and i64 %i.td, 4611686018427387900  ; 3 uses
  %i.te = shl i64 %n.vec478, 3
  %i.tf = getelementptr i8, ptr %i.sx, i64 %i.te
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.sv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next482, %vector.body479 ] ; 2 uses
  %i.tg = shl i64 %index480, 3
  %next.gep481 = getelementptr i8, ptr %i.sx, i64 %i.tg ; 2 uses
  %i.th = getelementptr i8, ptr %next.gep481, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep481, align 1
  store <2 x i64> %broadcast.splat, ptr %i.th, align 1
  %index.next482 = add nuw i64 %index480, 4       ; 2 uses
  %i.ti = icmp eq i64 %index.next482, %n.vec478
  br i1 %i.ti, label %middle.block483, label %vector.body479, !llvm.loop !219

middle.block483:                                  ; preds = %vector.body479
  %cmp.n484 = icmp eq i64 %i.td, %n.vec478
  br i1 %cmp.n484, label %.preheader299.backedge, label %scalar.ph475.preheader

scalar.ph475.preheader:                           ; preds = %bb.bd, %middle.block483
  %.1267.ph = phi ptr [ %i.sx, %bb.bd ], [ %i.tf, %middle.block483 ]
  br label %scalar.ph475

scalar.ph475:                                     ; preds = %scalar.ph475.preheader, %scalar.ph475
  %.1267 = phi ptr [ %i.tj, %scalar.ph475 ], [ %.1267.ph, %scalar.ph475.preheader ] ; 2 uses
  store i64 %i.sv, ptr %.1267, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.1267, i64 8 ; 2 uses
  %i.tk = icmp ult ptr %i.tj, %i.ri
  br i1 %i.tk, label %scalar.ph475, label %.preheader299.backedge, !llvm.loop !220

iter.check:                                       ; preds = %bb.bc
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  %i.tm = load i8, ptr %i.ra, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %.3156, i64 1
  store i8 %i.tm, ptr %.3156, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.ra, i64 2 ; 5 uses
  %i.tp = load i8, ptr %i.tl, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %.3156, i64 2 ; 5 uses
  store i8 %i.tp, ptr %i.tn, align 1
  %i.tr = add i64 %i.rb, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rj, i64 %i.tr)
  %i.ts = add i64 %umax, -2
  %i.tt = sub i64 %i.ts, %i.rb                    ; 7 uses
  %min.iters.check489 = icmp ult i64 %i.tt, 4
  %i.tu = add nsw i64 %i.qy, -1
  %diff.check487 = icmp ult i64 %i.tu, 31
  %or.cond553 = select i1 %min.iters.check489, i1 true, i1 %diff.check487
  br i1 %or.cond553, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check490 = icmp ult i64 %i.tt, 32
  br i1 %min.iters.check490, label %vec.epilog.ph, label %vector.ph491

vector.ph491:                                     ; preds = %vector.main.loop.iter.check
  %i.tv = and i64 %i.tt, 28
  %n.vec492 = and i64 %i.tt, -32                  ; 5 uses
  %i.tw = getelementptr i8, ptr %i.tq, i64 %n.vec492
  %i.tx = getelementptr i8, ptr %i.to, i64 %n.vec492
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph491
  %index494 = phi i64 [ 0, %vector.ph491 ], [ %index.next499, %vector.body493 ] ; 3 uses
  %next.gep495 = getelementptr i8, ptr %i.tq, i64 %index494 ; 2 uses
  %next.gep496 = getelementptr i8, ptr %i.to, i64 %index494 ; 2 uses
  %i.ty = getelementptr i8, ptr %next.gep496, i64 16
  %wide.load497 = load <16 x i8>, ptr %next.gep496, align 1
  %wide.load498 = load <16 x i8>, ptr %i.ty, align 1
  %i.tz = getelementptr i8, ptr %next.gep495, i64 16
  store <16 x i8> %wide.load497, ptr %next.gep495, align 1
  store <16 x i8> %wide.load498, ptr %i.tz, align 1
  %index.next499 = add nuw i64 %index494, 32      ; 2 uses
  %i.ua = icmp eq i64 %index.next499, %n.vec492
  br i1 %i.ua, label %middle.block500, label %vector.body493, !llvm.loop !221

middle.block500:                                  ; preds = %vector.body493
  %cmp.n501 = icmp eq i64 %i.tt, %n.vec492
  br i1 %cmp.n501, label %.preheader299.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block500
  %min.epilog.iters.check = icmp eq i64 %i.tv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec492, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec504 = and i64 %i.tt, -4                   ; 4 uses
  %i.ub = getelementptr i8, ptr %i.tq, i64 %n.vec504
  %i.uc = getelementptr i8, ptr %i.to, i64 %n.vec504
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index505 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next509, %vec.epilog.vector.body ] ; 3 uses
  %next.gep506 = getelementptr i8, ptr %i.tq, i64 %index505
  %next.gep507 = getelementptr i8, ptr %i.to, i64 %index505
  %wide.load508 = load <4 x i8>, ptr %next.gep507, align 1
  store <4 x i8> %wide.load508, ptr %next.gep506, align 1
  %index.next509 = add nuw i64 %index505, 4       ; 2 uses
  %i.ud = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.ud, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n510 = icmp eq i64 %i.tt, %n.vec504
  br i1 %cmp.n510, label %.preheader299.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2268.ph = phi ptr [ %i.tq, %iter.check ], [ %i.tw, %vec.epilog.iter.check ], [ %i.ub, %vec.epilog.middle.block ]
  %.1264.ph = phi ptr [ %i.to, %iter.check ], [ %i.tx, %vec.epilog.iter.check ], [ %i.uc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.2268 = phi ptr [ %i.ug, %vec.epilog.scalar.ph ], [ %.2268.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1264 = phi ptr [ %i.ue, %vec.epilog.scalar.ph ], [ %.1264.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.1264, i64 1
  %i.uf = load i8, ptr %.1264, align 1
  %i.ug = getelementptr inbounds nuw i8, ptr %.2268, i64 1 ; 2 uses
  store i8 %i.uf, ptr %.2268, align 1
  %i.uh = icmp ult ptr %i.ug, %i.ri
  br i1 %i.uh, label %vec.epilog.scalar.ph, label %.preheader299.backedge, !llvm.loop !224

iter.check534:                                    ; preds = %bb.az
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  %i.uj = load i8, ptr %i.ra, align 1
  %i.uk = getelementptr inbounds nuw i8, ptr %.3156, i64 1
  store i8 %i.uj, ptr %.3156, align 1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ra, i64 2 ; 5 uses
  %i.um = load i8, ptr %i.ui, align 1
  %i.un = getelementptr inbounds nuw i8, ptr %.3156, i64 2 ; 5 uses
  store i8 %i.um, ptr %i.uk, align 1
  %i.uo = add i64 %i.rb, 3
  %umax515 = tail call i64 @llvm.umax.i64(i64 %i.rj, i64 %i.uo)
  %i.up = add i64 %umax515, -2
  %i.uq = sub i64 %i.up, %i.rb                    ; 7 uses
  %min.iters.check517 = icmp ult i64 %i.uq, 4
  %i.ur = add nsw i64 %i.qy, -1
  %diff.check514 = icmp ult i64 %i.ur, 31
  %or.cond554 = select i1 %min.iters.check517, i1 true, i1 %diff.check514
  br i1 %or.cond554, label %vec.epilog.scalar.ph535.preheader, label %vector.main.loop.iter.check518

vector.main.loop.iter.check518:                   ; preds = %iter.check534
  %min.iters.check519 = icmp ult i64 %i.uq, 32
  br i1 %min.iters.check519, label %vec.epilog.ph538, label %vector.ph520

vector.ph520:                                     ; preds = %vector.main.loop.iter.check518
  %i.us = and i64 %i.uq, 28
  %n.vec521 = and i64 %i.uq, -32                  ; 5 uses
  %i.ut = getelementptr i8, ptr %i.un, i64 %n.vec521
  %i.uu = getelementptr i8, ptr %i.ul, i64 %n.vec521
  br label %vector.body522

vector.body522:                                   ; preds = %vector.body522, %vector.ph520
  %index523 = phi i64 [ 0, %vector.ph520 ], [ %index.next528, %vector.body522 ] ; 3 uses
  %next.gep524 = getelementptr i8, ptr %i.un, i64 %index523 ; 2 uses
  %next.gep525 = getelementptr i8, ptr %i.ul, i64 %index523 ; 2 uses
  %i.uv = getelementptr i8, ptr %next.gep525, i64 16
  %wide.load526 = load <16 x i8>, ptr %next.gep525, align 1
  %wide.load527 = load <16 x i8>, ptr %i.uv, align 1
  %i.uw = getelementptr i8, ptr %next.gep524, i64 16
  store <16 x i8> %wide.load526, ptr %next.gep524, align 1
  store <16 x i8> %wide.load527, ptr %i.uw, align 1
  %index.next528 = add nuw i64 %index523, 32      ; 2 uses
  %i.ux = icmp eq i64 %index.next528, %n.vec521
  br i1 %i.ux, label %middle.block529, label %vector.body522, !llvm.loop !225

middle.block529:                                  ; preds = %vector.body522
  %cmp.n530 = icmp eq i64 %i.uq, %n.vec521
  br i1 %cmp.n530, label %.preheader299.backedge, label %vec.epilog.iter.check536

.preheader299.backedge:                           ; preds = %vec.epilog.scalar.ph535, %vec.epilog.scalar.ph, %scalar.ph475, %scalar.ph, %middle.block529, %vec.epilog.middle.block546, %middle.block500, %vec.epilog.middle.block, %middle.block483, %middle.block, %bb.ar
  %.2155.be = phi ptr [ %i.ri, %vec.epilog.middle.block546 ], [ %i.ri, %vec.epilog.scalar.ph ], [ %i.ri, %middle.block500 ], [ %i.oq, %bb.ar ], [ %i.ri, %middle.block483 ], [ %i.ri, %middle.block ], [ %i.ri, %middle.block529 ], [ %i.ri, %scalar.ph475 ], [ %i.ri, %scalar.ph ], [ %i.ri, %vec.epilog.middle.block ], [ %i.ri, %vec.epilog.scalar.ph535 ]
  br label %.preheader299

vec.epilog.iter.check536:                         ; preds = %middle.block529
  %min.epilog.iters.check537 = icmp eq i64 %i.us, 0
  br i1 %min.epilog.iters.check537, label %vec.epilog.scalar.ph535.preheader, label %vec.epilog.ph538, !prof !222

vec.epilog.ph538:                                 ; preds = %vector.main.loop.iter.check518, %vec.epilog.iter.check536
  %vec.epilog.resume.val531 = phi i64 [ %n.vec521, %vec.epilog.iter.check536 ], [ 0, %vector.main.loop.iter.check518 ]
  %n.vec539 = and i64 %i.uq, -4                   ; 4 uses
  %i.uy = getelementptr i8, ptr %i.un, i64 %n.vec539
  %i.uz = getelementptr i8, ptr %i.ul, i64 %n.vec539
  br label %vec.epilog.vector.body540

vec.epilog.vector.body540:                        ; preds = %vec.epilog.vector.body540, %vec.epilog.ph538
  %index541 = phi i64 [ %vec.epilog.resume.val531, %vec.epilog.ph538 ], [ %index.next545, %vec.epilog.vector.body540 ] ; 3 uses
  %next.gep542 = getelementptr i8, ptr %i.un, i64 %index541
  %next.gep543 = getelementptr i8, ptr %i.ul, i64 %index541
  %wide.load544 = load <4 x i8>, ptr %next.gep543, align 1
  store <4 x i8> %wide.load544, ptr %next.gep542, align 1
  %index.next545 = add nuw i64 %index541, 4       ; 2 uses
  %i.va = icmp eq i64 %index.next545, %n.vec539
  br i1 %i.va, label %vec.epilog.middle.block546, label %vec.epilog.vector.body540, !llvm.loop !226

vec.epilog.middle.block546:                       ; preds = %vec.epilog.vector.body540
  %cmp.n547 = icmp eq i64 %i.uq, %n.vec539
  br i1 %cmp.n547, label %.preheader299.backedge, label %vec.epilog.scalar.ph535.preheader

vec.epilog.scalar.ph535.preheader:                ; preds = %iter.check534, %vec.epilog.iter.check536, %vec.epilog.middle.block546
  %.3269.ph = phi ptr [ %i.un, %iter.check534 ], [ %i.ut, %vec.epilog.iter.check536 ], [ %i.uy, %vec.epilog.middle.block546 ]
  %.2265.ph = phi ptr [ %i.ul, %iter.check534 ], [ %i.uu, %vec.epilog.iter.check536 ], [ %i.uz, %vec.epilog.middle.block546 ]
  br label %vec.epilog.scalar.ph535

vec.epilog.scalar.ph535:                          ; preds = %vec.epilog.scalar.ph535.preheader, %vec.epilog.scalar.ph535
  %.3269 = phi ptr [ %i.vd, %vec.epilog.scalar.ph535 ], [ %.3269.ph, %vec.epilog.scalar.ph535.preheader ] ; 2 uses
  %.2265 = phi ptr [ %i.vb, %vec.epilog.scalar.ph535 ], [ %.2265.ph, %vec.epilog.scalar.ph535.preheader ] ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.2265, i64 1
  %i.vc = load i8, ptr %.2265, align 1
  %i.vd = getelementptr inbounds nuw i8, ptr %.3269, i64 1 ; 2 uses
  store i8 %i.vc, ptr %.3269, align 1
  %i.ve = icmp ult ptr %i.vd, %i.ri
  br i1 %i.ve, label %vec.epilog.scalar.ph535, label %.preheader299.backedge, !llvm.loop !227

default.unreachable416:                           ; preds = %sinfl_refill.exit
  unreachable

.thread274:                                       ; preds = %sinfl_decode.exit234, %bb.aw, %bb.au, %bb.ao, %bb.i, %bb.k, %bb.g, %bb.e
  %.7 = phi i32 [ %i.bo, %bb.e ], [ %i.cc, %bb.g ], [ %i.ck, %bb.i ], [ %i.cp, %bb.k ], [ %i.nm, %bb.ao ], [ %i.oz, %bb.aw ], [ %i.ov, %bb.au ], [ %i.rd, %sinfl_decode.exit234 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  ret i32 %.7
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @zsinflate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #30 {
bb.a:
  %i.a = icmp sgt i32 %3, 5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = tail call fastcc i32 @sinfl_decompress(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.e, i32 noundef %3) ; 4 uses
  %.not78.i = icmp eq i32 %i.f, 0
  br i1 %.not78.i, label %sinfl_adler32.exit, label %.preheader62.preheader.i

.preheader62.preheader.i:                         ; preds = %bb.b
  %i.g = srem i32 %i.f, 5552
  br label %.preheader62.i

.preheader62.i:                                   ; preds = %._crit_edge.i, %.preheader62.preheader.i
  %.05283.i = phi i32 [ 5552, %._crit_edge.i ], [ %i.g, %.preheader62.preheader.i ] ; 7 uses
  %.05382.i = phi i32 [ %i.cf, %._crit_edge.i ], [ 0, %.preheader62.preheader.i ] ; 2 uses
  %.05581.i = phi i32 [ %i.ce, %._crit_edge.i ], [ 1, %.preheader62.preheader.i ] ; 2 uses
  %.05880.i = phi i32 [ %i.cg, %._crit_edge.i ], [ %i.f, %.preheader62.preheader.i ]
  %.05979.i = phi ptr [ %.261.lcssa.i, %._crit_edge.i ], [ %0, %.preheader62.preheader.i ] ; 2 uses
  %i.h = icmp ugt i32 %.05283.i, 7
  br i1 %i.h, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader62.i
  %.160.lcssa.i = phi ptr [ %.05979.i, %.preheader62.i ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %.156.lcssa.i = phi i32 [ %.05581.i, %.preheader62.i ], [ %i.bd, %.lr.ph.i ] ; 3 uses
  %.154.lcssa.i = phi i32 [ %.05382.i, %.preheader62.i ], [ %i.be, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %.preheader62.i ], [ %i.bg, %.lr.ph.i ] ; 5 uses
  %i.i = icmp ult i32 %.0.lcssa.i, %.05283.i
  br i1 %i.i, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.j = sub nuw i32 %.05283.i, %.0.lcssa.i
  %xtraiter = and i32 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i.prol
  %.173.i.prol = phi i32 [ %i.p, %.lr.ph74.i.prol ], [ %.0.lcssa.i, %.lr.ph74.i.preheader ]
  %.272.i.prol = phi i32 [ %i.o, %.lr.ph74.i.prol ], [ %.154.lcssa.i, %.lr.ph74.i.preheader ]
  %.25771.i.prol = phi i32 [ %i.n, %.lr.ph74.i.prol ], [ %.156.lcssa.i, %.lr.ph74.i.preheader ]
  %.26170.i.prol = phi ptr [ %i.k, %.lr.ph74.i.prol ], [ %.160.lcssa.i, %.lr.ph74.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph74.i.prol ], [ 0, %.lr.ph74.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.26170.i.prol, i64 1 ; 3 uses
  %i.l = load i8, ptr %.26170.i.prol, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = add i32 %.25771.i.prol, %i.m             ; 4 uses
  %i.o = add i32 %i.n, %.272.i.prol               ; 3 uses
  %i.p = add nuw i32 %.173.i.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol, !llvm.loop !228

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader
  %.lcssa58.unr = phi ptr [ poison, %.lr.ph74.i.preheader ], [ %i.k, %.lr.ph74.i.prol ]
  %.lcssa57.unr = phi i32 [ poison, %.lr.ph74.i.preheader ], [ %i.n, %.lr.ph74.i.prol ]
  %.lcssa56.unr = phi i32 [ poison, %.lr.ph74.i.preheader ], [ %i.o, %.lr.ph74.i.prol ]
  %.173.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph74.i.preheader ], [ %i.p, %.lr.ph74.i.prol ]
  %.272.i.unr = phi i32 [ %.154.lcssa.i, %.lr.ph74.i.preheader ], [ %i.o, %.lr.ph74.i.prol ]
  %.25771.i.unr = phi i32 [ %.156.lcssa.i, %.lr.ph74.i.preheader ], [ %i.n, %.lr.ph74.i.prol ]
  %.26170.i.unr = phi ptr [ %.160.lcssa.i, %.lr.ph74.i.preheader ], [ %i.k, %.lr.ph74.i.prol ]
  %i.q = sub i32 %.0.lcssa.i, %.05283.i
  %i.r = icmp ugt i32 %i.q, -4
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader62.i, %.lr.ph.i
  %.066.i = phi i32 [ %i.bg, %.lr.ph.i ], [ 0, %.preheader62.i ]
  %.15465.i = phi i32 [ %i.be, %.lr.ph.i ], [ %.05382.i, %.preheader62.i ]
  %.15664.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.05581.i, %.preheader62.i ]
  %.16063.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.05979.i, %.preheader62.i ] ; 9 uses
  %i.s = load i8, ptr %.16063.i, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = add i32 %.15664.i, %i.t                  ; 2 uses
  %i.v = add i32 %i.u, %.15465.i
  %i.w = getelementptr inbounds nuw i8, ptr %.16063.i, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = add i32 %i.u, %i.y                       ; 2 uses
  %i.aa = add i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.16063.i, i64 2
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add i32 %i.z, %i.ad                     ; 2 uses
  %i.af = add i32 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.16063.i, i64 3
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %i.ae, %i.ai                    ; 2 uses
  %i.ak = add i32 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.16063.i, i64 4
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = add i32 %i.aj, %i.an                    ; 2 uses
  %i.ap = add i32 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.16063.i, i64 5
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %i.ao, %i.as                    ; 2 uses
  %i.au = add i32 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.16063.i, i64 6
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i32 %i.at, %i.ax                    ; 2 uses
  %i.az = add i32 %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.16063.i, i64 7
end_hunk_0
