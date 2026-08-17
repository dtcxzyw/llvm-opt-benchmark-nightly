inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 40
begin_hunk_0_@vp6_parse_header:bb.a
  %i.ov = load i16, ptr %i.or, align 1, !tbaa !62
  %i.ow = tail call i16 @llvm.bswap.i16(i16 %i.ov)
  %i.ox = zext i16 %i.ow to i32
  %i.oy = shl i32 %i.ox, %i.op
  %i.oz = or i32 %i.oy, %i.oo
  %i.pa = add nsw i32 %i.op, -16
  br label %vpx_rac_renorm.exit.i.i211.3

vpx_rac_renorm.exit.i.i211.3:                     ; preds = %bb.bc, %bb.bb, %vpx_rac_renorm.exit.i.i211.2
  %.018.i.i.i212.3 = phi i32 [ %i.pa, %bb.bc ], [ %i.op, %bb.bb ], [ %i.op, %vpx_rac_renorm.exit.i.i211.2 ] ; 2 uses
  %.0.i.i.i213.3 = phi i32 [ %i.oz, %bb.bc ], [ %i.oo, %bb.bb ], [ %i.oo, %vpx_rac_renorm.exit.i.i211.2 ] ; 2 uses
  store i32 %.018.i.i.i212.3, ptr %i.kl, align 4, !tbaa !60
  %i.pb = add nsw i32 %i.on, 1
  %i.pc = ashr i32 %i.pb, 1                       ; 3 uses
  %i.pd = shl i32 %i.pc, 16                       ; 2 uses
  %i.pe = icmp uge i32 %.0.i.i.i213.3, %i.pd      ; 3 uses
  %i.pf = sub nsw i32 %i.on, %i.pc
  %.sink.i214.3 = select i1 %i.pe, i32 %i.pf, i32 %i.pc ; 2 uses
  %i.pg = select i1 %i.pe, i32 %i.pd, i32 0
  %.0.i.i215.3 = sub nuw i32 %.0.i.i.i213.3, %i.pg ; 2 uses
  %i.ph = zext i1 %i.pe to i32
  store i32 %.0.i.i215.3, ptr %i.km, align 16, !tbaa !61
  %i.pi = or disjoint i32 %i.oi, %i.ph
  %i.pj = shl nuw nsw i32 %i.pi, 1
  %i.pk = sext i32 %.sink.i214.3 to i64
  %i.pl = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !62
  %i.pn = zext i8 %i.pm to i32                    ; 3 uses
  %i.po = shl i32 %.sink.i214.3, %i.pn            ; 3 uses
  store i32 %i.po, ptr %i.a, align 8, !tbaa !59
  %i.pp = shl i32 %.0.i.i215.3, %i.pn             ; 3 uses
  %i.pq = add nsw i32 %.018.i.i.i212.3, %i.pn     ; 5 uses
  %i.pr = icmp sgt i32 %i.pq, -1
  br i1 %i.pr, label %bb.bd, label %vpx_rac_renorm.exit.i.i211.4

bb.bd:                                            ; preds = %vpx_rac_renorm.exit.i.i211.3
  %i.ps = load ptr, ptr %i.lj, align 16, !tbaa !63 ; 3 uses
  %i.pt = load ptr, ptr %i.lk, align 8, !tbaa !64
  %i.pu = icmp ult ptr %i.ps, %i.pt
  br i1 %i.pu, label %bb.be, label %vpx_rac_renorm.exit.i.i211.4

bb.be:                                            ; preds = %bb.bd
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  store ptr %i.pv, ptr %i.lj, align 16, !tbaa !65
  %i.pw = load i16, ptr %i.ps, align 1, !tbaa !62
  %i.px = tail call i16 @llvm.bswap.i16(i16 %i.pw)
  %i.py = zext i16 %i.px to i32
  %i.pz = shl i32 %i.py, %i.pq
  %i.qa = or i32 %i.pz, %i.pp
  %i.qb = add nsw i32 %i.pq, -16
  br label %vpx_rac_renorm.exit.i.i211.4

vpx_rac_renorm.exit.i.i211.4:                     ; preds = %bb.be, %bb.bd, %vpx_rac_renorm.exit.i.i211.3
  %.018.i.i.i212.4 = phi i32 [ %i.qb, %bb.be ], [ %i.pq, %bb.bd ], [ %i.pq, %vpx_rac_renorm.exit.i.i211.3 ] ; 2 uses
  %.0.i.i.i213.4 = phi i32 [ %i.qa, %bb.be ], [ %i.pp, %bb.bd ], [ %i.pp, %vpx_rac_renorm.exit.i.i211.3 ] ; 2 uses
  store i32 %.018.i.i.i212.4, ptr %i.kl, align 4, !tbaa !60
  %i.qc = add nsw i32 %i.po, 1
  %i.qd = ashr i32 %i.qc, 1                       ; 3 uses
  %i.qe = shl i32 %i.qd, 16                       ; 2 uses
  %i.qf = icmp uge i32 %.0.i.i.i213.4, %i.qe      ; 3 uses
  %i.qg = sub nsw i32 %i.po, %i.qd
  %.sink.i214.4 = select i1 %i.qf, i32 %i.qg, i32 %i.qd ; 2 uses
  %i.qh = select i1 %i.qf, i32 %i.qe, i32 0
  %.0.i.i215.4 = sub nuw i32 %.0.i.i.i213.4, %i.qh ; 2 uses
  %i.qi = zext i1 %i.qf to i32
  store i32 %.0.i.i215.4, ptr %i.km, align 16, !tbaa !61
  %i.qj = or disjoint i32 %i.pj, %i.qi
  %i.qk = shl nuw nsw i32 %i.qj, %.1139373
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 1784
  store i32 %i.qk, ptr %i.ql, align 8, !tbaa !77
  %i.qm = sext i32 %.sink.i214.4 to i64
  %i.qn = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !62
  %i.qp = zext i8 %i.qo to i32                    ; 3 uses
  %i.qq = shl i32 %.sink.i214.4, %i.qp            ; 3 uses
  store i32 %i.qq, ptr %i.a, align 8, !tbaa !59
  %i.qr = shl i32 %.0.i.i215.4, %i.qp             ; 3 uses
  %i.qs = add nsw i32 %.018.i.i.i212.4, %i.qp     ; 5 uses
  %i.qt = icmp sgt i32 %i.qs, -1
  br i1 %i.qt, label %bb.bf, label %vpx_rac_renorm.exit.i.i225

bb.bf:                                            ; preds = %vpx_rac_renorm.exit.i.i211.4
  %i.qu = load ptr, ptr %i.lj, align 16, !tbaa !63 ; 3 uses
  %i.qv = load ptr, ptr %i.lk, align 8, !tbaa !64
  %i.qw = icmp ult ptr %i.qu, %i.qv
  br i1 %i.qw, label %bb.bg, label %vpx_rac_renorm.exit.i.i225

bb.bg:                                            ; preds = %bb.bf
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  store ptr %i.qx, ptr %i.lj, align 16, !tbaa !65
  %i.qy = load i16, ptr %i.qu, align 1, !tbaa !62
  %i.qz = tail call i16 @llvm.bswap.i16(i16 %i.qy)
  %i.ra = zext i16 %i.qz to i32
  %i.rb = shl i32 %i.ra, %i.qs
  %i.rc = or i32 %i.rb, %i.qr
  %i.rd = add nsw i32 %i.qs, -16
  br label %vpx_rac_renorm.exit.i.i225

vpx_rac_renorm.exit.i.i225:                       ; preds = %bb.bg, %bb.bf, %vpx_rac_renorm.exit.i.i211.4
  %.018.i.i.i226 = phi i32 [ %i.rd, %bb.bg ], [ %i.qs, %bb.bf ], [ %i.qs, %vpx_rac_renorm.exit.i.i211.4 ] ; 2 uses
  %.0.i.i.i227 = phi i32 [ %i.rc, %bb.bg ], [ %i.qr, %bb.bf ], [ %i.qr, %vpx_rac_renorm.exit.i.i211.4 ] ; 2 uses
  store i32 %.018.i.i.i226, ptr %i.kl, align 4, !tbaa !60
  %i.re = add nsw i32 %i.qq, 1
  %i.rf = ashr i32 %i.re, 1                       ; 3 uses
  %i.rg = shl i32 %i.rf, 16                       ; 2 uses
  %.not366 = icmp ult i32 %.0.i.i.i227, %i.rg     ; 3 uses
  %i.rh = sub nsw i32 %i.qq, %i.rf
  %.sink.i228 = select i1 %.not366, i32 %i.rf, i32 %i.rh ; 2 uses
  %i.ri = select i1 %.not366, i32 0, i32 %i.rg
  %.0.i.i229 = sub nuw i32 %.0.i.i.i227, %i.ri    ; 2 uses
  store i32 %.0.i.i229, ptr %i.km, align 16, !tbaa !61
  %i.rj = select i1 %.not366, i32 0, i32 2
  %i.rk = sext i32 %.sink.i228 to i64
  %i.rl = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !62
  %i.rn = zext i8 %i.rm to i32                    ; 3 uses
  %i.ro = shl i32 %.sink.i228, %i.rn              ; 3 uses
  store i32 %i.ro, ptr %i.a, align 8, !tbaa !59
  %i.rp = shl i32 %.0.i.i229, %i.rn               ; 3 uses
  %i.rq = add nsw i32 %.018.i.i.i226, %i.rn       ; 5 uses
  %i.rr = icmp sgt i32 %i.rq, -1
  br i1 %i.rr, label %bb.bh, label %vpx_rac_renorm.exit.i.i225.1

bb.bh:                                            ; preds = %vpx_rac_renorm.exit.i.i225
  %i.rs = load ptr, ptr %i.lj, align 16, !tbaa !63 ; 3 uses
  %i.rt = load ptr, ptr %i.lk, align 8, !tbaa !64
  %i.ru = icmp ult ptr %i.rs, %i.rt
  br i1 %i.ru, label %bb.bi, label %vpx_rac_renorm.exit.i.i225.1

bb.bi:                                            ; preds = %bb.bh
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 2
  store ptr %i.rv, ptr %i.lj, align 16, !tbaa !65
  %i.rw = load i16, ptr %i.rs, align 1, !tbaa !62
  %i.rx = tail call i16 @llvm.bswap.i16(i16 %i.rw)
  %i.ry = zext i16 %i.rx to i32
  %i.rz = shl i32 %i.ry, %i.rq
  %i.sa = or i32 %i.rz, %i.rp
  %i.sb = add nsw i32 %i.rq, -16
  br label %vpx_rac_renorm.exit.i.i225.1

vpx_rac_renorm.exit.i.i225.1:                     ; preds = %bb.bi, %bb.bh, %vpx_rac_renorm.exit.i.i225
  %.018.i.i.i226.1 = phi i32 [ %i.sb, %bb.bi ], [ %i.rq, %bb.bh ], [ %i.rq, %vpx_rac_renorm.exit.i.i225 ] ; 2 uses
  %.0.i.i.i227.1 = phi i32 [ %i.sa, %bb.bi ], [ %i.rp, %bb.bh ], [ %i.rp, %vpx_rac_renorm.exit.i.i225 ] ; 2 uses
  store i32 %.018.i.i.i226.1, ptr %i.kl, align 4, !tbaa !60
  %i.sc = add nsw i32 %i.ro, 1
  %i.sd = ashr i32 %i.sc, 1                       ; 3 uses
  %i.se = shl i32 %i.sd, 16                       ; 2 uses
  %i.sf = icmp uge i32 %.0.i.i.i227.1, %i.se      ; 3 uses
  %i.sg = sub nsw i32 %i.ro, %i.sd
  %.sink.i228.1 = select i1 %i.sf, i32 %i.sg, i32 %i.sd ; 2 uses
  %i.sh = select i1 %i.sf, i32 %i.se, i32 0
  %.0.i.i229.1 = sub nuw i32 %.0.i.i.i227.1, %i.sh ; 2 uses
  %i.si = zext i1 %i.sf to i32
  store i32 %.0.i.i229.1, ptr %i.km, align 16, !tbaa !61
  %i.sj = or disjoint i32 %i.rj, %i.si
  %i.sk = shl nuw nsw i32 %i.sj, 1
  %i.sl = sext i32 %.sink.i228.1 to i64
  %i.sm = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !62
  %i.so = zext i8 %i.sn to i32                    ; 3 uses
  %i.sp = shl i32 %.sink.i228.1, %i.so            ; 3 uses
  store i32 %i.sp, ptr %i.a, align 8, !tbaa !59
  %i.sq = shl i32 %.0.i.i229.1, %i.so             ; 3 uses
  %i.sr = add nsw i32 %.018.i.i.i226.1, %i.so     ; 5 uses
  %i.ss = icmp sgt i32 %i.sr, -1
  br i1 %i.ss, label %bb.bj, label %vpx_rac_renorm.exit.i.i225.2

bb.bj:                                            ; preds = %vpx_rac_renorm.exit.i.i225.1
  %i.st = load ptr, ptr %i.lj, align 16, !tbaa !63 ; 3 uses
  %i.su = load ptr, ptr %i.lk, align 8, !tbaa !64
  %i.sv = icmp ult ptr %i.st, %i.su
  br i1 %i.sv, label %bb.bk, label %vpx_rac_renorm.exit.i.i225.2

bb.bk:                                            ; preds = %bb.bj
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 2
  store ptr %i.sw, ptr %i.lj, align 16, !tbaa !65
  %i.sx = load i16, ptr %i.st, align 1, !tbaa !62
  %i.sy = tail call i16 @llvm.bswap.i16(i16 %i.sx)
  %i.sz = zext i16 %i.sy to i32
  %i.ta = shl i32 %i.sz, %i.sr
  %i.tb = or i32 %i.ta, %i.sq
  %i.tc = add nsw i32 %i.sr, -16
  br label %vpx_rac_renorm.exit.i.i225.2

vpx_rac_renorm.exit.i.i225.2:                     ; preds = %bb.bk, %bb.bj, %vpx_rac_renorm.exit.i.i225.1
  %.018.i.i.i226.2 = phi i32 [ %i.tc, %bb.bk ], [ %i.sr, %bb.bj ], [ %i.sr, %vpx_rac_renorm.exit.i.i225.1 ] ; 2 uses
  %.0.i.i.i227.2 = phi i32 [ %i.tb, %bb.bk ], [ %i.sq, %bb.bj ], [ %i.sq, %vpx_rac_renorm.exit.i.i225.1 ] ; 2 uses
  store i32 %.018.i.i.i226.2, ptr %i.kl, align 4, !tbaa !60
  %i.td = add nsw i32 %i.sp, 1
  %i.te = ashr i32 %i.td, 1                       ; 3 uses
  %i.tf = shl i32 %i.te, 16                       ; 2 uses
  %i.tg = icmp uge i32 %.0.i.i.i227.2, %i.tf      ; 3 uses
  %i.th = sub nsw i32 %i.sp, %i.te
  %.sink.i228.2 = select i1 %i.tg, i32 %i.th, i32 %i.te
  %i.ti = select i1 %i.tg, i32 %i.tf, i32 0
  %.0.i.i229.2 = sub nuw i32 %.0.i.i.i227.2, %i.ti ; 2 uses
  %i.tj = zext i1 %i.tg to i32
  store i32 %.0.i.i229.2, ptr %i.km, align 16, !tbaa !61
  %i.tk = or disjoint i32 %i.sk, %i.tj
  %i.tl = shl nuw nsw i32 2, %i.tk
  br label %bb.bq

bb.bl:                                            ; preds = %vpx_rac_renorm.exit.i178
  store i32 %.0.i.i180, ptr %i.km, align 8, !tbaa !61
  %i.tm = sext i32 %i.le to i64
  %i.tn = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !62
  %i.tp = zext i8 %i.to to i32                    ; 3 uses
  %i.tq = shl i32 %i.le, %i.tp                    ; 3 uses
  store i32 %i.tq, ptr %i.a, align 8, !tbaa !59
  %i.tr = shl i32 %.0.i.i180, %i.tp               ; 3 uses
  %i.ts = add nsw i32 %.018.i.i179, %i.tp         ; 5 uses
  %i.tt = icmp sgt i32 %i.ts, -1
  br i1 %i.tt, label %bb.bm, label %vpx_rac_renorm.exit.i173

bb.bm:                                            ; preds = %bb.bl
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !63 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !64
  %i.ty = icmp ult ptr %i.tv, %i.tx
  br i1 %i.ty, label %bb.bn, label %vpx_rac_renorm.exit.i173

bb.bn:                                            ; preds = %bb.bm
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 2
  store ptr %i.tz, ptr %i.tu, align 8, !tbaa !65
  %i.ua = load i16, ptr %i.tv, align 1, !tbaa !62
  %i.ub = tail call i16 @llvm.bswap.i16(i16 %i.ua)
  %i.uc = zext i16 %i.ub to i32
  %i.ud = shl i32 %i.uc, %i.ts
  %i.ue = or i32 %i.ud, %i.tr
  %i.uf = add nsw i32 %i.ts, -16
  br label %vpx_rac_renorm.exit.i173

vpx_rac_renorm.exit.i173:                         ; preds = %bb.bn, %bb.bm, %bb.bl
  %.018.i.i174 = phi i32 [ %i.uf, %bb.bn ], [ %i.ts, %bb.bm ], [ %i.ts, %bb.bl ] ; 3 uses
  %.0.i.i175 = phi i32 [ %i.ue, %bb.bn ], [ %i.tr, %bb.bm ], [ %i.tr, %bb.bl ] ; 4 uses
  store i32 %.018.i.i174, ptr %i.kl, align 4, !tbaa !60
  %i.ug = add nsw i32 %i.tq, 1
  %i.uh = ashr i32 %i.ug, 1                       ; 3 uses
  %i.ui = shl i32 %i.uh, 16                       ; 2 uses
  %.not270 = icmp ult i32 %.0.i.i175, %i.ui
  br i1 %.not270, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %vpx_rac_renorm.exit.i173
  %i.uj = sub nsw i32 %i.tq, %i.uh
  %i.uk = sub nuw i32 %.0.i.i175, %i.ui           ; 2 uses
  store i32 %i.uk, ptr %i.km, align 8, !tbaa !61
  br label %bb.bq

bb.bp:                                            ; preds = %vpx_rac_renorm.exit.i173
  store i32 %.0.i.i175, ptr %i.km, align 8, !tbaa !61
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %vpx_rac_renorm.exit.i.i225.2
  %.sink383 = phi i64 [ 1776, %bb.bo ], [ 1776, %bb.bp ], [ 1780, %vpx_rac_renorm.exit.i.i225.2 ]
  %.sink381 = phi i32 [ 1, %bb.bo ], [ 0, %bb.bp ], [ %i.tl, %vpx_rac_renorm.exit.i.i225.2 ]
  %.promoted6.i234 = phi i32 [ %i.uk, %bb.bo ], [ %.0.i.i175, %bb.bp ], [ %.0.i.i229.2, %vpx_rac_renorm.exit.i.i225.2 ] ; 2 uses
  %.promoted4.i233 = phi i32 [ %.018.i.i174, %bb.bo ], [ %.018.i.i174, %bb.bp ], [ %.018.i.i.i226.2, %vpx_rac_renorm.exit.i.i225.2 ] ; 2 uses
  %.promoted.i232 = phi i32 [ %i.uj, %bb.bo ], [ %i.uh, %bb.bp ], [ %.sink.i228.2, %vpx_rac_renorm.exit.i.i225.2 ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink383
  store i32 %.sink381, ptr %3, align 4, !tbaa !84
  %i.ul = icmp samesign ugt i32 %i.kg, 7
  br i1 %i.ul, label %bb.br, label %bb.ca

bb.br:                                            ; preds = %bb.bq
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 8 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.uo = sext i32 %.promoted.i232 to i64
  %i.up = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !62
  %i.ur = zext i8 %i.uq to i32                    ; 3 uses
  %i.us = shl i32 %.promoted.i232, %i.ur          ; 3 uses
  store i32 %i.us, ptr %i.a, align 8, !tbaa !59
  %i.ut = shl i32 %.promoted6.i234, %i.ur         ; 3 uses
  %i.uu = add nsw i32 %.promoted4.i233, %i.ur     ; 5 uses
  %i.uv = icmp sgt i32 %i.uu, -1
  br i1 %i.uv, label %bb.bs, label %vpx_rac_renorm.exit.i.i239

bb.bs:                                            ; preds = %bb.br
  %i.uw = load ptr, ptr %i.um, align 8, !tbaa !63 ; 3 uses
  %i.ux = load ptr, ptr %i.un, align 8, !tbaa !64
  %i.uy = icmp ult ptr %i.uw, %i.ux
  br i1 %i.uy, label %bb.bt, label %vpx_rac_renorm.exit.i.i239

bb.bt:                                            ; preds = %bb.bs
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 2
  store ptr %i.uz, ptr %i.um, align 8, !tbaa !65
  %i.va = load i16, ptr %i.uw, align 1, !tbaa !62
  %i.vb = tail call i16 @llvm.bswap.i16(i16 %i.va)
  %i.vc = zext i16 %i.vb to i32
  %i.vd = shl i32 %i.vc, %i.uu
  %i.ve = or i32 %i.vd, %i.ut
  %i.vf = add nsw i32 %i.uu, -16
  br label %vpx_rac_renorm.exit.i.i239

vpx_rac_renorm.exit.i.i239:                       ; preds = %bb.bt, %bb.bs, %bb.br
  %.018.i.i.i240 = phi i32 [ %i.vf, %bb.bt ], [ %i.uu, %bb.bs ], [ %i.uu, %bb.br ] ; 2 uses
  %.0.i.i.i241 = phi i32 [ %i.ve, %bb.bt ], [ %i.ut, %bb.bs ], [ %i.ut, %bb.br ] ; 2 uses
  store i32 %.018.i.i.i240, ptr %i.kl, align 4, !tbaa !60
  %i.vg = add nsw i32 %i.us, 1
  %i.vh = ashr i32 %i.vg, 1                       ; 3 uses
  %i.vi = shl i32 %i.vh, 16                       ; 2 uses
  %.not367 = icmp ult i32 %.0.i.i.i241, %i.vi     ; 3 uses
  %i.vj = sub nsw i32 %i.us, %i.vh
  %.sink.i242 = select i1 %.not367, i32 %i.vh, i32 %i.vj ; 2 uses
  %i.vk = select i1 %.not367, i32 0, i32 %i.vi
  %.0.i.i243 = sub nuw i32 %.0.i.i.i241, %i.vk    ; 2 uses
  store i32 %.0.i.i243, ptr %i.km, align 8, !tbaa !61
  %i.vl = select i1 %.not367, i32 0, i32 2
  %i.vm = sext i32 %.sink.i242 to i64
  %i.vn = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !62
  %i.vp = zext i8 %i.vo to i32                    ; 3 uses
  %i.vq = shl i32 %.sink.i242, %i.vp              ; 3 uses
  store i32 %i.vq, ptr %i.a, align 8, !tbaa !59
  %i.vr = shl i32 %.0.i.i243, %i.vp               ; 3 uses
  %i.vs = add nsw i32 %.018.i.i.i240, %i.vp       ; 5 uses
  %i.vt = icmp sgt i32 %i.vs, -1
  br i1 %i.vt, label %bb.bu, label %vpx_rac_renorm.exit.i.i239.1

bb.bu:                                            ; preds = %vpx_rac_renorm.exit.i.i239
  %i.vu = load ptr, ptr %i.um, align 8, !tbaa !63 ; 3 uses
  %i.vv = load ptr, ptr %i.un, align 8, !tbaa !64
  %i.vw = icmp ult ptr %i.vu, %i.vv
  br i1 %i.vw, label %bb.bv, label %vpx_rac_renorm.exit.i.i239.1

bb.bv:                                            ; preds = %bb.bu
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  store ptr %i.vx, ptr %i.um, align 8, !tbaa !65
  %i.vy = load i16, ptr %i.vu, align 1, !tbaa !62
  %i.vz = tail call i16 @llvm.bswap.i16(i16 %i.vy)
  %i.wa = zext i16 %i.vz to i32
  %i.wb = shl i32 %i.wa, %i.vs
  %i.wc = or i32 %i.wb, %i.vr
  %i.wd = add nsw i32 %i.vs, -16
  br label %vpx_rac_renorm.exit.i.i239.1

vpx_rac_renorm.exit.i.i239.1:                     ; preds = %bb.bv, %bb.bu, %vpx_rac_renorm.exit.i.i239
  %.018.i.i.i240.1 = phi i32 [ %i.wd, %bb.bv ], [ %i.vs, %bb.bu ], [ %i.vs, %vpx_rac_renorm.exit.i.i239 ] ; 2 uses
  %.0.i.i.i241.1 = phi i32 [ %i.wc, %bb.bv ], [ %i.vr, %bb.bu ], [ %i.vr, %vpx_rac_renorm.exit.i.i239 ] ; 2 uses
  store i32 %.018.i.i.i240.1, ptr %i.kl, align 4, !tbaa !60
  %i.we = add nsw i32 %i.vq, 1
  %i.wf = ashr i32 %i.we, 1                       ; 3 uses
  %i.wg = shl i32 %i.wf, 16                       ; 2 uses
  %i.wh = icmp uge i32 %.0.i.i.i241.1, %i.wg      ; 3 uses
  %i.wi = sub nsw i32 %i.vq, %i.wf
  %.sink.i242.1 = select i1 %i.wh, i32 %i.wi, i32 %i.wf ; 2 uses
  %i.wj = select i1 %i.wh, i32 %i.wg, i32 0
  %.0.i.i243.1 = sub nuw i32 %.0.i.i.i241.1, %i.wj ; 2 uses
  %i.wk = zext i1 %i.wh to i32
  store i32 %.0.i.i243.1, ptr %i.km, align 8, !tbaa !61
  %i.wl = or disjoint i32 %i.vl, %i.wk
  %i.wm = sext i32 %.sink.i242.1 to i64
  %i.wn = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !62
  %i.wp = zext i8 %i.wo to i32                    ; 3 uses
  %i.wq = shl i32 %.sink.i242.1, %i.wp            ; 3 uses
  store i32 %i.wq, ptr %i.a, align 8, !tbaa !59
  %i.wr = shl i32 %.0.i.i243.1, %i.wp             ; 3 uses
  %i.ws = add nsw i32 %.018.i.i.i240.1, %i.wp     ; 5 uses
  %i.wt = icmp sgt i32 %i.ws, -1
  br i1 %i.wt, label %bb.bw, label %vpx_rac_renorm.exit.i.i239.2

bb.bw:                                            ; preds = %vpx_rac_renorm.exit.i.i239.1
  %i.wu = load ptr, ptr %i.um, align 8, !tbaa !63 ; 3 uses
  %i.wv = load ptr, ptr %i.un, align 8, !tbaa !64
  %i.ww = icmp ult ptr %i.wu, %i.wv
  br i1 %i.ww, label %bb.bx, label %vpx_rac_renorm.exit.i.i239.2

bb.bx:                                            ; preds = %bb.bw
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 2
  store ptr %i.wx, ptr %i.um, align 8, !tbaa !65
  %i.wy = load i16, ptr %i.wu, align 1, !tbaa !62
  %i.wz = tail call i16 @llvm.bswap.i16(i16 %i.wy)
  %i.xa = zext i16 %i.wz to i32
  %i.xb = shl i32 %i.xa, %i.ws
  %i.xc = or i32 %i.xb, %i.wr
  %i.xd = add nsw i32 %i.ws, -16
  br label %vpx_rac_renorm.exit.i.i239.2

vpx_rac_renorm.exit.i.i239.2:                     ; preds = %bb.bx, %bb.bw, %vpx_rac_renorm.exit.i.i239.1
  %.018.i.i.i240.2 = phi i32 [ %i.xd, %bb.bx ], [ %i.ws, %bb.bw ], [ %i.ws, %vpx_rac_renorm.exit.i.i239.1 ] ; 2 uses
  %.0.i.i.i241.2 = phi i32 [ %i.xc, %bb.bx ], [ %i.wr, %bb.bw ], [ %i.wr, %vpx_rac_renorm.exit.i.i239.1 ] ; 2 uses
  store i32 %.018.i.i.i240.2, ptr %i.kl, align 4, !tbaa !60
  %i.xe = add nsw i32 %i.wq, 1
  %i.xf = ashr i32 %i.xe, 1                       ; 3 uses
  %i.xg = shl i32 %i.xf, 16                       ; 2 uses
  %.not368 = icmp ult i32 %.0.i.i.i241.2, %i.xg   ; 3 uses
  %i.xh = sub nsw i32 %i.wq, %i.xf
  %.sink.i242.2 = select i1 %.not368, i32 %i.xf, i32 %i.xh ; 2 uses
  %i.xi = select i1 %.not368, i32 0, i32 %i.xg
  %.0.i.i243.2 = sub nuw i32 %.0.i.i.i241.2, %i.xi ; 2 uses
  store i32 %.0.i.i243.2, ptr %i.km, align 8, !tbaa !61
  %i.xj = shl nuw nsw i32 %i.wl, 2
  %i.xk = select i1 %.not368, i32 0, i32 2
  %i.xl = or disjoint i32 %i.xj, %i.xk
  %i.xm = sext i32 %.sink.i242.2 to i64
  %i.xn = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.xm
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !62
  %i.xp = zext i8 %i.xo to i32                    ; 3 uses
  %i.xq = shl i32 %.sink.i242.2, %i.xp            ; 3 uses
  store i32 %i.xq, ptr %i.a, align 8, !tbaa !59
  %i.xr = shl i32 %.0.i.i243.2, %i.xp             ; 3 uses
  %i.xs = add nsw i32 %.018.i.i.i240.2, %i.xp     ; 5 uses
  %i.xt = icmp sgt i32 %i.xs, -1
  br i1 %i.xt, label %bb.by, label %vpx_rac_renorm.exit.i.i239.3

bb.by:                                            ; preds = %vpx_rac_renorm.exit.i.i239.2
  %i.xu = load ptr, ptr %i.um, align 8, !tbaa !63 ; 3 uses
  %i.xv = load ptr, ptr %i.un, align 8, !tbaa !64
  %i.xw = icmp ult ptr %i.xu, %i.xv
  br i1 %i.xw, label %bb.bz, label %vpx_rac_renorm.exit.i.i239.3

bb.bz:                                            ; preds = %bb.by
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xu, i64 2
  store ptr %i.xx, ptr %i.um, align 8, !tbaa !65
  %i.xy = load i16, ptr %i.xu, align 1, !tbaa !62
  %i.xz = tail call i16 @llvm.bswap.i16(i16 %i.xy)
  %i.ya = zext i16 %i.xz to i32
  %i.yb = shl i32 %i.ya, %i.xs
  %i.yc = or i32 %i.yb, %i.xr
  %i.yd = add nsw i32 %i.xs, -16
  br label %vpx_rac_renorm.exit.i.i239.3

vpx_rac_renorm.exit.i.i239.3:                     ; preds = %bb.bz, %bb.by, %vpx_rac_renorm.exit.i.i239.2
  %.018.i.i.i240.3 = phi i32 [ %i.yd, %bb.bz ], [ %i.xs, %bb.by ], [ %i.xs, %vpx_rac_renorm.exit.i.i239.2 ] ; 2 uses
  %.0.i.i.i241.3 = phi i32 [ %i.yc, %bb.bz ], [ %i.xr, %bb.by ], [ %i.xr, %vpx_rac_renorm.exit.i.i239.2 ] ; 2 uses
  store i32 %.018.i.i.i240.3, ptr %i.kl, align 4, !tbaa !60
  %i.ye = add nsw i32 %i.xq, 1
  %i.yf = ashr i32 %i.ye, 1                       ; 3 uses
  %i.yg = shl i32 %i.yf, 16                       ; 2 uses
  %i.yh = icmp uge i32 %.0.i.i.i241.3, %i.yg      ; 3 uses
  %i.yi = sub nsw i32 %i.xq, %i.yf
  %.sink.i242.3 = select i1 %i.yh, i32 %i.yi, i32 %i.yf
  %i.yj = select i1 %i.yh, i32 %i.yg, i32 0
  %.0.i.i243.3 = sub nuw i32 %.0.i.i.i241.3, %i.yj ; 2 uses
  %i.yk = zext i1 %i.yh to i32
  store i32 %.0.i.i243.3, ptr %i.km, align 8, !tbaa !61
  %i.yl = or disjoint i32 %i.xl, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 1772
  store i32 %i.yl, ptr %i.ym, align 4, !tbaa !116
  br label %.thread

bb.ca:                                            ; preds = %bb.bq
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 1772
  store i32 16, ptr %i.yn, align 4, !tbaa !116
  br label %.thread

.thread:                                          ; preds = %.thread377, %vpx_rac_renorm.exit.i.i.1, %vpx_rac_renorm.exit.i198, %bb.am, %vpx_rac_renorm.exit.i.i239.3, %bb.ca
  %i.yo = phi i32 [ %.0.i.i185, %.thread377 ], [ %.0.i.i243.3, %vpx_rac_renorm.exit.i.i239.3 ], [ %.promoted6.i234, %bb.ca ], [ %i.iz, %bb.am ], [ %.0.i201, %vpx_rac_renorm.exit.i198 ], [ %.0.i.i203.1, %vpx_rac_renorm.exit.i.i.1 ]
  %i.yp = phi i32 [ %.018.i.i184, %.thread377 ], [ %.018.i.i.i240.3, %vpx_rac_renorm.exit.i.i239.3 ], [ %.promoted4.i233, %bb.ca ], [ %i.ja, %bb.am ], [ %.018.i.i199, %vpx_rac_renorm.exit.i198 ], [ %.018.i.i.i.1, %vpx_rac_renorm.exit.i.i.1 ]
  %i.yq = phi i32 [ %i.jz, %.thread377 ], [ %.sink.i242.3, %vpx_rac_renorm.exit.i.i239.3 ], [ %.promoted.i232, %bb.ca ], [ %i.jb, %bb.am ], [ %i.gt, %vpx_rac_renorm.exit.i198 ], [ %.sink.i.1, %vpx_rac_renorm.exit.i.i.1 ] ; 2 uses
  %.1259 = phi i32 [ 0, %.thread377 ], [ %.1376, %vpx_rac_renorm.exit.i.i239.3 ], [ %.1376, %bb.ca ], [ 0, %bb.am ], [ 0, %vpx_rac_renorm.exit.i198 ], [ %.0130, %vpx_rac_renorm.exit.i.i.1 ] ; 3 uses
  %.2133258 = phi ptr [ %.1132, %.thread377 ], [ %.2133375, %vpx_rac_renorm.exit.i.i239.3 ], [ %.2133375, %bb.ca ], [ %.1132, %bb.am ], [ %.1132, %vpx_rac_renorm.exit.i198 ], [ %.0131, %vpx_rac_renorm.exit.i.i.1 ]
  %.2136257 = phi i32 [ %.1135, %.thread377 ], [ %.2136374, %vpx_rac_renorm.exit.i.i239.3 ], [ %.2136374, %bb.ca ], [ %.1135, %bb.am ], [ %.1135, %vpx_rac_renorm.exit.i198 ], [ %.0134, %vpx_rac_renorm.exit.i.i.1 ]
  %.2142256 = phi i32 [ %.1141, %.thread377 ], [ %.2142372, %vpx_rac_renorm.exit.i.i239.3 ], [ %.2142372, %bb.ca ], [ %.1141, %bb.am ], [ %.1141, %vpx_rac_renorm.exit.i198 ], [ %.0140, %vpx_rac_renorm.exit.i.i.1 ] ; 3 uses
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !62
  %i.yu = zext i8 %i.yt to i32                    ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 668
end_hunk_0
