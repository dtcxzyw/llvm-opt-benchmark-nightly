inline.NumInlined: 23
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@php_json_scan:bb.a
  %i.oc = icmp ult i8 %i.nz, 71
  %i.od = add i8 %i.nz, -97
  %or.cond133 = icmp ult i8 %i.od, 6
  %or.cond1462 = or i1 %i.oc, %or.cond133
  br i1 %or.cond1462, label %bb.gu, label %.critedge1507.loopexit

bb.gi:                                            ; preds = %bb.fu, %bb.fv, %bb.fs, %bb.fr
  %i.oe = getelementptr inbounds nuw i8, ptr %i.hp, i64 5 ; 2 uses
  store ptr %i.oe, ptr %0, align 8, !tbaa !12
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !20  ; 4 uses
  %i.og = icmp ult i8 %i.of, 65
  br i1 %i.og, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.oh = add nsw i8 %i.of, -48
  %or.cond136 = icmp ult i8 %i.oh, 10
  br i1 %or.cond136, label %bb.gv, label %.critedge1507.loopexit

bb.gk:                                            ; preds = %bb.gi
  %i.oi = icmp ult i8 %i.of, 71
  %i.oj = add i8 %i.of, -97
  %or.cond139 = icmp ult i8 %i.oj, 6
  %or.cond1463 = or i1 %i.oi, %or.cond139
  br i1 %or.cond1463, label %bb.gv, label %.critedge1507.loopexit

bb.gl:                                            ; preds = %bb.fx, %bb.fy
  %i.ok = getelementptr inbounds nuw i8, ptr %i.hp, i64 5 ; 2 uses
  store ptr %i.ok, ptr %0, align 8, !tbaa !12
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !20  ; 4 uses
  %i.om = icmp ult i8 %i.ol, 65
  br i1 %i.om, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.on = add nsw i8 %i.ol, -48
  %or.cond142 = icmp ult i8 %i.on, 10
  br i1 %or.cond142, label %bb.gw, label %.critedge1507.loopexit

bb.gn:                                            ; preds = %bb.gl
  %i.oo = icmp ult i8 %i.ol, 71
  %i.op = add i8 %i.ol, -97
  %or.cond145 = icmp ult i8 %i.op, 6
  %or.cond1464 = or i1 %i.oo, %or.cond145
  br i1 %or.cond1464, label %bb.gw, label %.critedge1507.loopexit

bb.go:                                            ; preds = %bb.ga, %bb.gb
  %i.oq = getelementptr inbounds nuw i8, ptr %i.hp, i64 5 ; 2 uses
  store ptr %i.oq, ptr %0, align 8, !tbaa !12
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !20  ; 4 uses
  %i.os = icmp ult i8 %i.or, 65
  br i1 %i.os, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ot = add nsw i8 %i.or, -48
  %or.cond148 = icmp ult i8 %i.ot, 10
  br i1 %or.cond148, label %bb.gx, label %.critedge1507.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ou = icmp ult i8 %i.or, 71
  %i.ov = add i8 %i.or, -97
  %or.cond151 = icmp ult i8 %i.ov, 6
  %or.cond1465 = or i1 %i.ou, %or.cond151
  br i1 %or.cond1465, label %bb.gx, label %.critedge1507.loopexit

bb.gr:                                            ; preds = %bb.gd, %bb.ge
  %i.ow = getelementptr inbounds nuw i8, ptr %i.hp, i64 5 ; 2 uses
  store ptr %i.ow, ptr %0, align 8, !tbaa !12
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !20  ; 4 uses
  %i.oy = icmp ult i8 %i.ox, 65
  br i1 %i.oy, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.oz = add nsw i8 %i.ox, -48
  %or.cond154 = icmp ult i8 %i.oz, 10
  br i1 %or.cond154, label %.loopexit1630.sink.split, label %.critedge1507

bb.gt:                                            ; preds = %bb.gr
  %i.pa = icmp ult i8 %i.ox, 71
  %i.pb = add i8 %i.ox, -97
  %or.cond157 = icmp ult i8 %i.pb, 6
  %or.cond1466 = or i1 %i.pa, %or.cond157
  br i1 %or.cond1466, label %.loopexit1630.sink.split, label %.critedge1507

bb.gu:                                            ; preds = %bb.gg, %bb.gh
  %i.pc = getelementptr inbounds nuw i8, ptr %i.hp, i64 6 ; 2 uses
  store ptr %i.pc, ptr %0, align 8, !tbaa !12
  %i.pd = load i32, ptr %i.m, align 8, !tbaa !24
  %i.pe = add nsw i32 %i.pd, 5
  store i32 %i.pe, ptr %i.m, align 8, !tbaa !24
  br label %.backedge1631.backedge

bb.gv:                                            ; preds = %bb.gj, %bb.gk
  %i.pf = getelementptr inbounds nuw i8, ptr %i.hp, i64 6 ; 2 uses
  store ptr %i.pf, ptr %0, align 8, !tbaa !12
  %i.pg = load i32, ptr %i.m, align 8, !tbaa !24
  %i.ph = add nsw i32 %i.pg, 4
  store i32 %i.ph, ptr %i.m, align 8, !tbaa !24
  br label %.backedge1631.backedge

bb.gw:                                            ; preds = %bb.gm, %bb.gn
  %i.pi = getelementptr inbounds nuw i8, ptr %i.hp, i64 6 ; 2 uses
  store ptr %i.pi, ptr %0, align 8, !tbaa !12
  %i.pj = load i32, ptr %i.m, align 8, !tbaa !24
  %i.pk = add nsw i32 %i.pj, 3
  store i32 %i.pk, ptr %i.m, align 8, !tbaa !24
  br label %.backedge1631.backedge

bb.gx:                                            ; preds = %bb.gp, %bb.gq
  %i.pl = getelementptr inbounds nuw i8, ptr %i.hp, i64 6 ; 3 uses
  store ptr %i.pl, ptr %0, align 8, !tbaa !12
  store ptr %i.pl, ptr %i.i, align 8, !tbaa !27
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !20
  %i.pn = icmp eq i8 %i.pm, 92
  br i1 %i.pn, label %bb.gy, label %.loopexit1630

.loopexit1630.sink.split:                         ; preds = %bb.gy, %bb.gz, %bb.ha, %bb.hd, %bb.hg, %bb.hb, %bb.he, %bb.hh, %bb.gt, %bb.gs
  %i.po = getelementptr inbounds nuw i8, ptr %i.hp, i64 6
  store ptr %i.po, ptr %0, align 8, !tbaa !12
  br label %.loopexit1630

.loopexit1630:                                    ; preds = %bb.gx, %.loopexit1630.sink.split
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 10, ptr %i.pp, align 4, !tbaa !22
  br label %.thread1599

bb.gy:                                            ; preds = %bb.gx
  %i.pq = getelementptr inbounds nuw i8, ptr %i.hp, i64 7 ; 2 uses
  store ptr %i.pq, ptr %0, align 8, !tbaa !12
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !20
  %.not1424 = icmp eq i8 %i.pr, 117
  br i1 %.not1424, label %bb.gz, label %.loopexit1630.sink.split

bb.gz:                                            ; preds = %bb.gy
  %i.ps = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  store ptr %i.ps, ptr %0, align 8, !tbaa !12
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !20
  %i.pu = and i8 %i.pt, -33
  %or.cond160.not = icmp eq i8 %i.pu, 68
  br i1 %or.cond160.not, label %bb.ha, label %.loopexit1630.sink.split

bb.ha:                                            ; preds = %bb.gz
  %i.pv = getelementptr inbounds nuw i8, ptr %i.hp, i64 9 ; 2 uses
  store ptr %i.pv, ptr %0, align 8, !tbaa !12
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !20  ; 3 uses
  %i.px = icmp ult i8 %i.pw, 67
  br i1 %i.px, label %.loopexit1630.sink.split, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.py = icmp ugt i8 %i.pw, 70
  %i.pz = add i8 %i.pw, -103
  %or.cond163 = icmp ult i8 %i.pz, -4
  %or.cond1467 = and i1 %i.py, %or.cond163
  br i1 %or.cond1467, label %.loopexit1630.sink.split, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.qa = getelementptr inbounds nuw i8, ptr %i.hp, i64 10 ; 2 uses
  store ptr %i.qa, ptr %0, align 8, !tbaa !12
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !20  ; 4 uses
  %i.qc = icmp ult i8 %i.qb, 65
  br i1 %i.qc, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.qd = add nsw i8 %i.qb, -58
  %or.cond166 = icmp ult i8 %i.qd, -10
  br i1 %or.cond166, label %.loopexit1630.sink.split, label %bb.hf

bb.he:                                            ; preds = %bb.hc
  %i.qe = icmp ugt i8 %i.qb, 70
  %i.qf = add i8 %i.qb, -103
  %or.cond169 = icmp ult i8 %i.qf, -6
  %or.cond1468 = and i1 %i.qe, %or.cond169
  br i1 %or.cond1468, label %.loopexit1630.sink.split, label %bb.hf

bb.hf:                                            ; preds = %bb.hd, %bb.he
  %i.qg = getelementptr inbounds nuw i8, ptr %i.hp, i64 11 ; 2 uses
  store ptr %i.qg, ptr %0, align 8, !tbaa !12
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !20  ; 4 uses
  %i.qi = icmp ult i8 %i.qh, 65
  br i1 %i.qi, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.qj = add nsw i8 %i.qh, -58
  %or.cond172 = icmp ult i8 %i.qj, -10
  br i1 %or.cond172, label %.loopexit1630.sink.split, label %bb.hi

bb.hh:                                            ; preds = %bb.hf
  %i.qk = icmp ugt i8 %i.qh, 70
  %i.ql = add i8 %i.qh, -103
  %or.cond175 = icmp ult i8 %i.ql, -6
  %or.cond1469 = and i1 %i.qk, %or.cond175
  br i1 %or.cond1469, label %.loopexit1630.sink.split, label %bb.hi

bb.hi:                                            ; preds = %bb.hg, %bb.hh
  %i.qm = getelementptr inbounds nuw i8, ptr %i.hp, i64 12 ; 2 uses
  store ptr %i.qm, ptr %0, align 8, !tbaa !12
  %i.qn = load i32, ptr %i.m, align 8, !tbaa !24
  %i.qo = add nsw i32 %i.qn, 8
  store i32 %i.qo, ptr %i.m, align 8, !tbaa !24
  br label %.backedge1631.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %i.qp = phi ptr [ %i.aff, %.preheader ], [ %.be1992, %.backedge.backedge ] ; 46 uses
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !20  ; 11 uses
  %i.qr = icmp ult i8 %i.qq, -32
  br i1 %i.qr, label %bb.hj, label %bb.ho

bb.hj:                                            ; preds = %.backedge
  %i.qs = icmp ult i8 %i.qq, 92
  br i1 %i.qs, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.qt = icmp eq i8 %i.qq, 34
  br i1 %i.qt, label %bb.hu, label %bb.ht

bb.hl:                                            ; preds = %bb.hj
  %i.qu = icmp eq i8 %i.qq, 92
  br i1 %i.qu, label %bb.hw, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.qv = icmp sgt i8 %i.qq, -1
  br i1 %i.qv, label %bb.ht, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.qw = icmp samesign ult i8 %i.qq, -62
  br i1 %i.qw, label %bb.ie, label %bb.ik

bb.ho:                                            ; preds = %.backedge
  %i.qx = icmp samesign ult i8 %i.qq, -16
  br i1 %i.qx, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qp, i64 1 ; 12 uses
  store ptr %i.qy, ptr %0, align 8, !tbaa !12
  store ptr %i.qy, ptr %i.afg, align 8, !tbaa !27
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !20  ; 3 uses
  switch i8 %i.qq, label %bb.im [
    i8 -32, label %bb.il
    i8 -19, label %bb.in
  ]

bb.hq:                                            ; preds = %bb.ho
  %i.ra = icmp eq i8 %i.qq, -16
  br i1 %i.ra, label %bb.io, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.rb = icmp samesign ult i8 %i.qq, -12
  br i1 %i.rb, label %bb.ip, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.rc = icmp eq i8 %i.qq, -12
  br i1 %i.rc, label %bb.iq, label %bb.ie

bb.ht:                                            ; preds = %bb.jb, %bb.ik, %bb.hk, %bb.hm
  %i.rd = phi ptr [ %i.ty, %bb.jb ], [ %i.tb, %bb.ik ], [ %i.qp, %bb.hk ], [ %i.qp, %bb.hm ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 1 ; 2 uses
  store ptr %i.re, ptr %0, align 8, !tbaa !12
  br label %.backedge.backedge

bb.hu:                                            ; preds = %bb.hk
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qp, i64 1 ; 2 uses
  store ptr %i.rf, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.rg = load ptr, ptr %i.afi, align 8, !tbaa !23 ; 2 uses
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = xor i64 %i.ri, -1
  %i.rk = add i64 %i.rj, %i.rh                    ; 3 uses
  %.not.i = icmp eq i64 %i.rk, 0
  br i1 %.not.i, label %.thread1599, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.rl = load ptr, ptr %i.afj, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rl, ptr align 1 %i.rg, i64 %i.rk, i1 false)
  %i.rm = load ptr, ptr %i.afj, align 8, !tbaa !36
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rk
  store ptr %i.rn, ptr %i.afj, align 8, !tbaa !36
  br label %.thread1599

bb.hw:                                            ; preds = %bb.hl
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qp, i64 1 ; 6 uses
  store ptr %i.ro, ptr %0, align 8, !tbaa !12
  store ptr %i.ro, ptr %i.afg, align 8, !tbaa !27
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !20
  %i.rq = icmp eq i8 %i.rp, 117
  br i1 %i.rq, label %bb.ir, label %bb.hx

bb.hx:                                            ; preds = %.thread1607, %bb.hw
  %i.rr = load ptr, ptr %i.afi, align 8, !tbaa !23 ; 2 uses
  %i.rs = ptrtoint ptr %i.ro to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = xor i64 %i.rt, -1
  %i.rv = add i64 %i.ru, %i.rs                    ; 3 uses
  %.not.i1518 = icmp eq i64 %i.rv, 0
  br i1 %.not.i1518, label %php_json_scanner_copy_string.exit1519, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.rw = load ptr, ptr %i.afj, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rw, ptr align 1 %i.rr, i64 %i.rv, i1 false)
  %i.rx = load ptr, ptr %i.afj, align 8, !tbaa !36
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rv
  store ptr %i.ry, ptr %i.afj, align 8, !tbaa !36
  %.pre1766 = load ptr, ptr %0, align 8, !tbaa !12
  br label %php_json_scanner_copy_string.exit1519

php_json_scanner_copy_string.exit1519:            ; preds = %bb.hx, %bb.hy
  %i.rz = phi ptr [ %i.ro, %bb.hx ], [ %.pre1766, %bb.hy ]
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.sa, label %.thread1603 [
    i8 98, label %select.unfold1602
    i8 102, label %bb.hz
    i8 110, label %bb.ia
    i8 114, label %bb.ib
    i8 116, label %bb.ic
    i8 92, label %bb.id
    i8 47, label %bb.id
    i8 34, label %bb.id
  ]

bb.hz:                                            ; preds = %php_json_scanner_copy_string.exit1519
  br label %select.unfold1602

bb.ia:                                            ; preds = %php_json_scanner_copy_string.exit1519
  br label %select.unfold1602

bb.ib:                                            ; preds = %php_json_scanner_copy_string.exit1519
  br label %select.unfold1602

bb.ic:                                            ; preds = %php_json_scanner_copy_string.exit1519
  br label %select.unfold1602

bb.id:                                            ; preds = %php_json_scanner_copy_string.exit1519, %php_json_scanner_copy_string.exit1519, %php_json_scanner_copy_string.exit1519
  br label %select.unfold1602

.thread1603:                                      ; preds = %php_json_scanner_copy_string.exit1519
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 4, ptr %i.sb, align 4, !tbaa !22
  br label %.thread1599

select.unfold1602:                                ; preds = %php_json_scanner_copy_string.exit1519, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz
  %.01298 = phi i8 [ %i.sa, %bb.id ], [ 12, %bb.hz ], [ 10, %bb.ia ], [ 13, %bb.ib ], [ 9, %bb.ic ], [ 8, %php_json_scanner_copy_string.exit1519 ]
  %i.sc = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  store ptr %i.sd, ptr %i.afj, align 8, !tbaa !36
  store i8 %.01298, ptr %i.sc, align 1, !tbaa !20
  %i.se = load ptr, ptr %0, align 8, !tbaa !12
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 1 ; 4 uses
  store ptr %i.sf, ptr %0, align 8, !tbaa !12
  store ptr %i.sf, ptr %i.afi, align 8, !tbaa !23
  %i.sg = load i32, ptr %i.afh, align 8, !tbaa !25
  %.not1448 = icmp eq i32 %i.sg, 0
  br i1 %.not1448, label %.preheader1626, label %.backedge.backedge

bb.ie:                                            ; preds = %bb.hs, %bb.hn
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qp, i64 1
  br label %.sink.split1945

.sink.split1945:                                  ; preds = %bb.jb, %bb.jc, %bb.ie
  %.sink1947 = phi ptr [ %i.sh, %bb.ie ], [ %i.ua, %bb.jc ], [ %i.tw, %bb.jb ] ; 2 uses
  store ptr %.sink1947, ptr %0, align 8, !tbaa !12
  br label %bb.if

bb.if:                                            ; preds = %.sink.split1945, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik
  %i.si = phi ptr [ %i.tb, %bb.ik ], [ %i.tj, %bb.iq ], [ %i.th, %bb.ip ], [ %i.te, %bb.io ], [ %i.qy, %bb.in ], [ %i.qy, %bb.im ], [ %i.qy, %bb.il ], [ %.sink1947, %.sink.split1945 ] ; 2 uses
  %i.sj = load i32, ptr %i.afh, align 8, !tbaa !25
  %.not1446 = icmp eq i32 %i.sj, 0
  br i1 %.not1446, label %.backedge.backedge, label %bb.ig

.backedge.backedge:                               ; preds = %bb.if, %bb.ij, %bb.ht, %php_json_scanner_copy_string.exit1523, %php_json_scanner_copy_string.exit1525, %php_json_scanner_copy_string.exit1539, %php_json_scanner_copy_string.exit1541, %select.unfold1602
  %.be1992 = phi ptr [ %i.si, %bb.if ], [ %i.ta, %bb.ij ], [ %i.re, %bb.ht ], [ %i.xj, %php_json_scanner_copy_string.exit1523 ], [ %i.ze, %php_json_scanner_copy_string.exit1525 ], [ %i.abp, %php_json_scanner_copy_string.exit1539 ], [ %i.adv, %php_json_scanner_copy_string.exit1541 ], [ %i.sf, %select.unfold1602 ]
  br label %.backedge

bb.ig:                                            ; preds = %bb.if
  %i.sk = load ptr, ptr %i.afi, align 8, !tbaa !23 ; 2 uses
  %i.sl = ptrtoint ptr %i.si to i64
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = xor i64 %i.sm, -1
  %i.so = add i64 %i.sn, %i.sl                    ; 3 uses
  %.not.i1520 = icmp eq i64 %i.so, 0
  br i1 %.not.i1520, label %php_json_scanner_copy_string.exit1521, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.sp = load ptr, ptr %i.afj, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sp, ptr align 1 %i.sk, i64 %i.so, i1 false)
  %i.sq = load ptr, ptr %i.afj, align 8, !tbaa !36
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.so
  store ptr %i.sr, ptr %i.afj, align 8, !tbaa !36
  br label %php_json_scanner_copy_string.exit1521

php_json_scanner_copy_string.exit1521:            ; preds = %bb.ig, %bb.ih
  %i.ss = load i32, ptr %i.afk, align 8, !tbaa !18
  %i.st = and i32 %i.ss, 2097152
  %.not1447 = icmp eq i32 %i.st, 0
  br i1 %.not1447, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %php_json_scanner_copy_string.exit1521
  %i.su = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  store ptr %i.sv, ptr %i.afj, align 8, !tbaa !36
  store i8 -17, ptr %i.su, align 1, !tbaa !20
  %i.sw = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 1
  store ptr %i.sx, ptr %i.afj, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@php_json_scan:bb.a

bb.jh:                                            ; preds = %bb.jd
  %i.uj = icmp ult i8 %i.ue, 71
  br i1 %i.uj, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.uk = icmp samesign ult i8 %i.ue, 65
  br i1 %i.uk, label %.thread1607, label %bb.ka

bb.jj:                                            ; preds = %bb.jh
  %i.ul = add i8 %i.ue, -97
  %or.cond208 = icmp ult i8 %i.ul, 6
  br i1 %or.cond208, label %bb.ka, label %.thread1607

bb.jk:                                            ; preds = %bb.ja, %bb.iy, %bb.iw, %bb.iu
  %i.um = getelementptr inbounds nuw i8, ptr %i.qp, i64 3 ; 2 uses
  store ptr %i.um, ptr %0, align 8, !tbaa !12
  %i.un = load i8, ptr %i.um, align 1, !tbaa !20  ; 4 uses
  %i.uo = icmp ult i8 %i.un, 65
  br i1 %i.uo, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.up = add nsw i8 %i.un, -48
  %or.cond211 = icmp ult i8 %i.up, 10
  br i1 %or.cond211, label %bb.ka, label %.thread1607

bb.jm:                                            ; preds = %bb.jk
  %i.uq = icmp ult i8 %i.un, 71
  %i.ur = add i8 %i.un, -97
  %or.cond214 = icmp ult i8 %i.ur, 6
  %or.cond1471 = or i1 %i.uq, %or.cond214
  br i1 %or.cond1471, label %bb.ka, label %.thread1607

bb.jn:                                            ; preds = %bb.iz, %bb.iw
  %i.us = getelementptr inbounds nuw i8, ptr %i.qp, i64 3 ; 2 uses
  store ptr %i.us, ptr %0, align 8, !tbaa !12
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !20  ; 6 uses
  %i.uu = icmp ult i8 %i.ut, 65
  br i1 %i.uu, label %bb.jo, label %bb.jr

bb.jo:                                            ; preds = %bb.jn
  %i.uv = icmp samesign ult i8 %i.ut, 48
  br i1 %i.uv, label %.thread1607, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.uw = icmp samesign ult i8 %i.ut, 56
  br i1 %i.uw, label %bb.ka, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ux = icmp samesign ult i8 %i.ut, 58
  br i1 %i.ux, label %bb.kd, label %.thread1607

bb.jr:                                            ; preds = %bb.jn
  %i.uy = icmp ult i8 %i.ut, 67
  %i.uz = add i8 %i.ut, -97
  %or.cond217 = icmp ult i8 %i.uz, 2
  %or.cond1472 = or i1 %i.uy, %or.cond217
  br i1 %or.cond1472, label %bb.kd, label %.thread1607

bb.js:                                            ; preds = %bb.jf
  %i.va = getelementptr inbounds nuw i8, ptr %i.qp, i64 4 ; 2 uses
  store ptr %i.va, ptr %0, align 8, !tbaa !12
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !20  ; 6 uses
  %i.vc = icmp ult i8 %i.vb, 65
  br i1 %i.vc, label %bb.jt, label %bb.jw

bb.jt:                                            ; preds = %bb.js
  %i.vd = icmp samesign ult i8 %i.vb, 48
  br i1 %i.vd, label %.thread1607, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.ve = icmp samesign ult i8 %i.vb, 56
  br i1 %i.ve, label %bb.kg, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.vf = icmp samesign ult i8 %i.vb, 58
  br i1 %i.vf, label %bb.kj, label %.thread1607

bb.jw:                                            ; preds = %bb.js
  %i.vg = icmp ult i8 %i.vb, 71
  %i.vh = add i8 %i.vb, -97
  %or.cond220 = icmp ult i8 %i.vh, 6
  %or.cond1473 = or i1 %i.vg, %or.cond220
  br i1 %or.cond1473, label %bb.kj, label %.thread1607

bb.jx:                                            ; preds = %bb.jg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.qp, i64 4 ; 2 uses
  store ptr %i.vi, ptr %0, align 8, !tbaa !12
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !20  ; 4 uses
  %i.vk = icmp ult i8 %i.vj, 65
  br i1 %i.vk, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.vl = add nsw i8 %i.vj, -48
  %or.cond223 = icmp ult i8 %i.vl, 10
  br i1 %or.cond223, label %bb.kj, label %.thread1607

bb.jz:                                            ; preds = %bb.jx
  %i.vm = icmp ult i8 %i.vj, 71
  %i.vn = add i8 %i.vj, -97
  %or.cond226 = icmp ult i8 %i.vn, 6
  %or.cond1474 = or i1 %i.vm, %or.cond226
  br i1 %or.cond1474, label %bb.kj, label %.thread1607

bb.ka:                                            ; preds = %bb.jl, %bb.jj, %bb.jp, %bb.jm, %bb.ji, %bb.jg
  %i.vo = getelementptr inbounds nuw i8, ptr %i.qp, i64 4 ; 2 uses
  store ptr %i.vo, ptr %0, align 8, !tbaa !12
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !20  ; 4 uses
  %i.vq = icmp ult i8 %i.vp, 65
  br i1 %i.vq, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.vr = add nsw i8 %i.vp, -48
  %or.cond229 = icmp ult i8 %i.vr, 10
  br i1 %or.cond229, label %bb.km, label %.thread1607

bb.kc:                                            ; preds = %bb.ka
  %i.vs = icmp ult i8 %i.vp, 71
  %i.vt = add i8 %i.vp, -97
  %or.cond232 = icmp ult i8 %i.vt, 6
  %or.cond1475 = or i1 %i.vs, %or.cond232
  br i1 %or.cond1475, label %bb.km, label %.thread1607

bb.kd:                                            ; preds = %bb.jr, %bb.jq
  %i.vu = getelementptr inbounds nuw i8, ptr %i.qp, i64 4 ; 2 uses
  store ptr %i.vu, ptr %0, align 8, !tbaa !12
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !20  ; 4 uses
  %i.vw = icmp ult i8 %i.vv, 65
  br i1 %i.vw, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.vx = add nsw i8 %i.vv, -48
  %or.cond235 = icmp ult i8 %i.vx, 10
  br i1 %or.cond235, label %bb.kp, label %.thread1607

bb.kf:                                            ; preds = %bb.kd
  %i.vy = icmp ult i8 %i.vv, 71
  %i.vz = add i8 %i.vv, -97
  %or.cond238 = icmp ult i8 %i.vz, 6
  %or.cond1476 = or i1 %i.vy, %or.cond238
  br i1 %or.cond1476, label %bb.kp, label %.thread1607

bb.kg:                                            ; preds = %bb.ju
  %i.wa = getelementptr inbounds nuw i8, ptr %i.qp, i64 5 ; 2 uses
  store ptr %i.wa, ptr %0, align 8, !tbaa !12
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !20  ; 4 uses
  %i.wc = icmp ult i8 %i.wb, 65
  br i1 %i.wc, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.wd = add nsw i8 %i.wb, -48
  %or.cond241 = icmp ult i8 %i.wd, 10
  br i1 %or.cond241, label %bb.ks, label %.thread1607

bb.ki:                                            ; preds = %bb.kg
  %i.we = icmp ult i8 %i.wb, 71
  %i.wf = add i8 %i.wb, -97
  %or.cond244 = icmp ult i8 %i.wf, 6
  %or.cond1477 = or i1 %i.we, %or.cond244
  br i1 %or.cond1477, label %bb.ks, label %.thread1607

bb.kj:                                            ; preds = %bb.jy, %bb.jz, %bb.jw, %bb.jv
  %i.wg = getelementptr inbounds nuw i8, ptr %i.qp, i64 5 ; 2 uses
  store ptr %i.wg, ptr %0, align 8, !tbaa !12
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !20  ; 4 uses
  %i.wi = icmp ult i8 %i.wh, 65
  br i1 %i.wi, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.wj = add nsw i8 %i.wh, -48
  %or.cond247 = icmp ult i8 %i.wj, 10
  br i1 %or.cond247, label %bb.ku, label %.thread1607

bb.kl:                                            ; preds = %bb.kj
  %i.wk = icmp ult i8 %i.wh, 71
  %i.wl = add i8 %i.wh, -97
  %or.cond250 = icmp ult i8 %i.wl, 6
  %or.cond1478 = or i1 %i.wk, %or.cond250
  br i1 %or.cond1478, label %bb.ku, label %.thread1607

bb.km:                                            ; preds = %bb.kb, %bb.kc
  %i.wm = getelementptr inbounds nuw i8, ptr %i.qp, i64 5 ; 2 uses
  store ptr %i.wm, ptr %0, align 8, !tbaa !12
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !20  ; 4 uses
  %i.wo = icmp ult i8 %i.wn, 65
  br i1 %i.wo, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.wp = add nsw i8 %i.wn, -48
  %or.cond253 = icmp ult i8 %i.wp, 10
  br i1 %or.cond253, label %bb.li, label %.thread1607

bb.ko:                                            ; preds = %bb.km
  %i.wq = icmp ult i8 %i.wn, 71
  %i.wr = add i8 %i.wn, -97
  %or.cond256 = icmp ult i8 %i.wr, 6
  %or.cond1479 = or i1 %i.wq, %or.cond256
  br i1 %or.cond1479, label %bb.li, label %.thread1607

bb.kp:                                            ; preds = %bb.ke, %bb.kf
  %i.ws = getelementptr inbounds nuw i8, ptr %i.qp, i64 5 ; 3 uses
  store ptr %i.ws, ptr %0, align 8, !tbaa !12
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !20  ; 4 uses
  %i.wu = icmp ult i8 %i.wt, 65
  br i1 %i.wu, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.wv = add nsw i8 %i.wt, -48
  %or.cond259 = icmp ult i8 %i.wv, 10
  br i1 %or.cond259, label %bb.ma, label %.thread1607

bb.kr:                                            ; preds = %bb.kp
  %i.ww = icmp ult i8 %i.wt, 71
  %i.wx = add i8 %i.wt, -97
  %or.cond262 = icmp ult i8 %i.wx, 6
  %or.cond1480 = or i1 %i.ww, %or.cond262
  br i1 %or.cond1480, label %bb.ma, label %.thread1607

bb.ks:                                            ; preds = %bb.kh, %bb.ki
  %i.wy = getelementptr inbounds nuw i8, ptr %i.qp, i64 6 ; 3 uses
  store ptr %i.wy, ptr %0, align 8, !tbaa !12
  %i.wz = tail call fastcc i32 @php_json_ucs2_to_int(ptr nonnull %i.wy, i32 noundef 2)
  %i.xa = load ptr, ptr %i.afi, align 8, !tbaa !23 ; 2 uses
  %i.xb = ptrtoint ptr %i.wy to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %reass.sub1625 = sub i64 %i.xb, %i.xc
  %i.xd = add i64 %reass.sub1625, -6              ; 3 uses
  %.not.i1522 = icmp eq i64 %i.xd, 0
  %.pre1765 = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1522, label %php_json_scanner_copy_string.exit1523, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1765, ptr align 1 %i.xa, i64 %i.xd, i1 false)
  %i.xe = load ptr, ptr %i.afj, align 8, !tbaa !36
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xd
  br label %php_json_scanner_copy_string.exit1523

php_json_scanner_copy_string.exit1523:            ; preds = %bb.ks, %bb.kt
  %i.xg = phi ptr [ %.pre1765, %bb.ks ], [ %i.xf, %bb.kt ] ; 2 uses
  %i.xh = trunc i32 %i.wz to i8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 1
  store ptr %i.xi, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.xh, ptr %i.xg, align 1, !tbaa !20
  %i.xj = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  store ptr %i.xj, ptr %i.afi, align 8, !tbaa !23
  %i.xk = load i32, ptr %i.afh, align 8, !tbaa !25
  %.not1445 = icmp eq i32 %i.xk, 0
  br i1 %.not1445, label %.preheader1626, label %.backedge.backedge

bb.ku:                                            ; preds = %bb.kk, %bb.kl
  %i.xl = getelementptr inbounds nuw i8, ptr %i.qp, i64 6 ; 2 uses
  store ptr %i.xl, ptr %0, align 8, !tbaa !12
  %.03.i.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 5
  %i.xm = load i8, ptr %.03.i.i, align 1, !tbaa !20 ; 4 uses
  %i.xn = zext i8 %i.xm to i32                    ; 3 uses
  %i.xo = add i8 %i.xm, -48
  %or.cond.i.i.i = icmp ult i8 %i.xo, 10
  br i1 %or.cond.i.i.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.xp = add nsw i32 %i.xn, -48
  br label %php_json_hex_to_int.exit.i.i

bb.kw:                                            ; preds = %bb.ku
  %i.xq = add i8 %i.xm, -65
  %or.cond5.i.i.i = icmp ult i8 %i.xq, 6
  br i1 %or.cond5.i.i.i, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.xr = add nsw i32 %i.xn, -55
  br label %php_json_hex_to_int.exit.i.i

bb.ky:                                            ; preds = %bb.kw
  %i.xs = add i8 %i.xm, -97
  %or.cond8.i.i.i = icmp ult i8 %i.xs, 6
  %i.xt = add nsw i32 %i.xn, -87
  %spec.select.i.i.i = select i1 %or.cond8.i.i.i, i32 %i.xt, i32 -1
  br label %php_json_hex_to_int.exit.i.i

php_json_hex_to_int.exit.i.i:                     ; preds = %bb.ky, %bb.kx, %bb.kv
  %.0.i.i.i = phi i32 [ %i.xp, %bb.kv ], [ %i.xr, %bb.kx ], [ %spec.select.i.i.i, %bb.ky ]
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.xu = load i8, ptr %.03.i.i.1, align 1, !tbaa !20 ; 4 uses
  %i.xv = zext i8 %i.xu to i32                    ; 3 uses
  %i.xw = add i8 %i.xu, -48
  %or.cond.i.i.i.1 = icmp ult i8 %i.xw, 10
  br i1 %or.cond.i.i.i.1, label %bb.lc, label %bb.kz

bb.kz:                                            ; preds = %php_json_hex_to_int.exit.i.i
  %i.xx = add i8 %i.xu, -65
  %or.cond5.i.i.i.1 = icmp ult i8 %i.xx, 6
  br i1 %or.cond5.i.i.i.1, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.xy = add i8 %i.xu, -97
  %or.cond8.i.i.i.1 = icmp ult i8 %i.xy, 6
  %i.xz = add nsw i32 %i.xv, -87
  %spec.select.i.i.i.1 = select i1 %or.cond8.i.i.i.1, i32 %i.xz, i32 -1
  br label %php_json_hex_to_int.exit.i.i.1

bb.lb:                                            ; preds = %bb.kz
  %i.ya = add nsw i32 %i.xv, -55
  br label %php_json_hex_to_int.exit.i.i.1

bb.lc:                                            ; preds = %php_json_hex_to_int.exit.i.i
  %i.yb = add nsw i32 %i.xv, -48
  br label %php_json_hex_to_int.exit.i.i.1

php_json_hex_to_int.exit.i.i.1:                   ; preds = %bb.lc, %bb.lb, %bb.la
  %.0.i.i.i.1 = phi i32 [ %i.yb, %bb.lc ], [ %i.ya, %bb.lb ], [ %spec.select.i.i.i.1, %bb.la ]
  %i.yc = shl nsw i32 %.0.i.i.i.1, 4
  %i.yd = or i32 %i.yc, %.0.i.i.i                 ; 2 uses
  %.03.i.i.2 = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
  %i.ye = load i8, ptr %.03.i.i.2, align 1, !tbaa !20 ; 4 uses
  %i.yf = zext i8 %i.ye to i32                    ; 3 uses
  %i.yg = add i8 %i.ye, -48
  %or.cond.i.i.i.2 = icmp ult i8 %i.yg, 10
  br i1 %or.cond.i.i.i.2, label %bb.lg, label %bb.ld

bb.ld:                                            ; preds = %php_json_hex_to_int.exit.i.i.1
  %i.yh = add i8 %i.ye, -65
  %or.cond5.i.i.i.2 = icmp ult i8 %i.yh, 6
  br i1 %or.cond5.i.i.i.2, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.yi = add i8 %i.ye, -97
  %or.cond8.i.i.i.2 = icmp ult i8 %i.yi, 6
  %i.yj = add nsw i32 %i.yf, -87
  %spec.select.i.i.i.2 = select i1 %or.cond8.i.i.i.2, i32 %i.yj, i32 -1
  br label %php_json_hex_to_int.exit.i.i.2

bb.lf:                                            ; preds = %bb.ld
  %i.yk = add nsw i32 %i.yf, -55
  br label %php_json_hex_to_int.exit.i.i.2

bb.lg:                                            ; preds = %php_json_hex_to_int.exit.i.i.1
  %i.yl = add nsw i32 %i.yf, -48
  br label %php_json_hex_to_int.exit.i.i.2

php_json_hex_to_int.exit.i.i.2:                   ; preds = %bb.lg, %bb.lf, %bb.le
  %.0.i.i.i.2 = phi i32 [ %i.yl, %bb.lg ], [ %i.yk, %bb.lf ], [ %spec.select.i.i.i.2, %bb.le ]
  %i.ym = shl nsw i32 %.0.i.i.i.2, 8
  %i.yn = or i32 %i.ym, %i.yd
  %i.yo = load ptr, ptr %i.afi, align 8, !tbaa !23 ; 2 uses
  %i.yp = ptrtoint ptr %i.xl to i64
  %i.yq = ptrtoint ptr %i.yo to i64
  %reass.sub1624 = sub i64 %i.yp, %i.yq
  %i.yr = add i64 %reass.sub1624, -6              ; 3 uses
  %.not.i1524 = icmp eq i64 %i.yr, 0
  %.pre1764 = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1524, label %php_json_scanner_copy_string.exit1525, label %bb.lh

bb.lh:                                            ; preds = %php_json_hex_to_int.exit.i.i.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1764, ptr align 1 %i.yo, i64 %i.yr, i1 false)
  %i.ys = load ptr, ptr %i.afj, align 8, !tbaa !36
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yr
  br label %php_json_scanner_copy_string.exit1525

php_json_scanner_copy_string.exit1525:            ; preds = %php_json_hex_to_int.exit.i.i.2, %bb.lh
  %i.yu = phi ptr [ %.pre1764, %php_json_hex_to_int.exit.i.i.2 ], [ %i.yt, %bb.lh ] ; 2 uses
  %i.yv = lshr i32 %i.yn, 6
  %i.yw = trunc i32 %i.yv to i8
  %i.yx = or i8 %i.yw, -64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 1
  store ptr %i.yy, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.yx, ptr %i.yu, align 1, !tbaa !20
  %i.yz = trunc i32 %i.yd to i8
  %i.za = and i8 %i.yz, 63
  %i.zb = or disjoint i8 %i.za, -128
  %i.zc = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 1
  store ptr %i.zd, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.zb, ptr %i.zc, align 1, !tbaa !20
  %i.ze = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  store ptr %i.ze, ptr %i.afi, align 8, !tbaa !23
  %i.zf = load i32, ptr %i.afh, align 8, !tbaa !25
  %.not1444 = icmp eq i32 %i.zf, 0
  br i1 %.not1444, label %.preheader1626, label %.backedge.backedge

bb.li:                                            ; preds = %bb.kn, %bb.ko
  %i.zg = getelementptr inbounds nuw i8, ptr %i.qp, i64 6 ; 2 uses
  store ptr %i.zg, ptr %0, align 8, !tbaa !12
  %.03.i.i1529 = getelementptr inbounds nuw i8, ptr %i.qp, i64 5
  %i.zh = load i8, ptr %.03.i.i1529, align 1, !tbaa !20 ; 4 uses
  %i.zi = zext i8 %i.zh to i32                    ; 3 uses
  %i.zj = add i8 %i.zh, -48
  %or.cond.i.i.i1530 = icmp ult i8 %i.zj, 10
  br i1 %or.cond.i.i.i1530, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.zk = add nsw i32 %i.zi, -48
  br label %php_json_hex_to_int.exit.i.i1534

bb.lk:                                            ; preds = %bb.li
  %i.zl = add i8 %i.zh, -65
  %or.cond5.i.i.i1531 = icmp ult i8 %i.zl, 6
  br i1 %or.cond5.i.i.i1531, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.zm = add nsw i32 %i.zi, -55
  br label %php_json_hex_to_int.exit.i.i1534
end_hunk_1
begin_hunk_2_@php_json_scan:bb.a
  %i.zq = zext i8 %i.zp to i32                    ; 3 uses
  %i.zr = add i8 %i.zp, -48
  %or.cond.i.i.i1530.1 = icmp ult i8 %i.zr, 10
  br i1 %or.cond.i.i.i1530.1, label %bb.lq, label %bb.ln

bb.ln:                                            ; preds = %php_json_hex_to_int.exit.i.i1534
  %i.zs = add i8 %i.zp, -65
  %or.cond5.i.i.i1531.1 = icmp ult i8 %i.zs, 6
  br i1 %or.cond5.i.i.i1531.1, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.zt = add i8 %i.zp, -97
  %or.cond8.i.i.i1532.1 = icmp ult i8 %i.zt, 6
  %i.zu = add nsw i32 %i.zq, -87
  %spec.select.i.i.i1533.1 = select i1 %or.cond8.i.i.i1532.1, i32 %i.zu, i32 -1
  br label %php_json_hex_to_int.exit.i.i1534.1

bb.lp:                                            ; preds = %bb.ln
  %i.zv = add nsw i32 %i.zq, -55
  br label %php_json_hex_to_int.exit.i.i1534.1

bb.lq:                                            ; preds = %php_json_hex_to_int.exit.i.i1534
  %i.zw = add nsw i32 %i.zq, -48
  br label %php_json_hex_to_int.exit.i.i1534.1

php_json_hex_to_int.exit.i.i1534.1:               ; preds = %bb.lq, %bb.lp, %bb.lo
  %.0.i.i.i1535.1 = phi i32 [ %i.zw, %bb.lq ], [ %i.zv, %bb.lp ], [ %spec.select.i.i.i1533.1, %bb.lo ]
  %i.zx = shl nsw i32 %.0.i.i.i1535.1, 4
  %i.zy = or i32 %i.zx, %.0.i.i.i1535             ; 2 uses
  %.03.i.i1529.2 = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
  %i.zz = load i8, ptr %.03.i.i1529.2, align 1, !tbaa !20 ; 4 uses
  %i.aaa = zext i8 %i.zz to i32                   ; 3 uses
  %i.aab = add i8 %i.zz, -48
  %or.cond.i.i.i1530.2 = icmp ult i8 %i.aab, 10
  br i1 %or.cond.i.i.i1530.2, label %bb.lu, label %bb.lr

bb.lr:                                            ; preds = %php_json_hex_to_int.exit.i.i1534.1
  %i.aac = add i8 %i.zz, -65
  %or.cond5.i.i.i1531.2 = icmp ult i8 %i.aac, 6
  br i1 %or.cond5.i.i.i1531.2, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.aad = add i8 %i.zz, -97
  %or.cond8.i.i.i1532.2 = icmp ult i8 %i.aad, 6
  %i.aae = add nsw i32 %i.aaa, -87
  %spec.select.i.i.i1533.2 = select i1 %or.cond8.i.i.i1532.2, i32 %i.aae, i32 -1
  br label %php_json_hex_to_int.exit.i.i1534.2

bb.lt:                                            ; preds = %bb.lr
  %i.aaf = add nsw i32 %i.aaa, -55
  br label %php_json_hex_to_int.exit.i.i1534.2

bb.lu:                                            ; preds = %php_json_hex_to_int.exit.i.i1534.1
  %i.aag = add nsw i32 %i.aaa, -48
  br label %php_json_hex_to_int.exit.i.i1534.2

php_json_hex_to_int.exit.i.i1534.2:               ; preds = %bb.lu, %bb.lt, %bb.ls
  %.0.i.i.i1535.2 = phi i32 [ %i.aag, %bb.lu ], [ %i.aaf, %bb.lt ], [ %spec.select.i.i.i1533.2, %bb.ls ]
  %i.aah = shl nsw i32 %.0.i.i.i1535.2, 8
  %i.aai = or i32 %i.aah, %i.zy                   ; 2 uses
  %.03.i.i1529.3 = getelementptr inbounds nuw i8, ptr %i.qp, i64 2
  %i.aaj = load i8, ptr %.03.i.i1529.3, align 1, !tbaa !20 ; 4 uses
  %i.aak = zext i8 %i.aaj to i32                  ; 3 uses
  %i.aal = add i8 %i.aaj, -48
  %or.cond.i.i.i1530.3 = icmp ult i8 %i.aal, 10
  br i1 %or.cond.i.i.i1530.3, label %bb.ly, label %bb.lv

bb.lv:                                            ; preds = %php_json_hex_to_int.exit.i.i1534.2
  %i.aam = add i8 %i.aaj, -65
  %or.cond5.i.i.i1531.3 = icmp ult i8 %i.aam, 6
  br i1 %or.cond5.i.i.i1531.3, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aan = add i8 %i.aaj, -97
  %or.cond8.i.i.i1532.3 = icmp ult i8 %i.aan, 6
  %i.aao = add nsw i32 %i.aak, -87
  %spec.select.i.i.i1533.3 = select i1 %or.cond8.i.i.i1532.3, i32 %i.aao, i32 -1
  br label %php_json_hex_to_int.exit.i.i1534.3

bb.lx:                                            ; preds = %bb.lv
  %i.aap = add nsw i32 %i.aak, -55
  br label %php_json_hex_to_int.exit.i.i1534.3

bb.ly:                                            ; preds = %php_json_hex_to_int.exit.i.i1534.2
  %i.aaq = add nsw i32 %i.aak, -48
  br label %php_json_hex_to_int.exit.i.i1534.3

php_json_hex_to_int.exit.i.i1534.3:               ; preds = %bb.ly, %bb.lx, %bb.lw
  %.0.i.i.i1535.3 = phi i32 [ %i.aaq, %bb.ly ], [ %i.aap, %bb.lx ], [ %spec.select.i.i.i1533.3, %bb.lw ]
  %i.aar = shl nsw i32 %.0.i.i.i1535.3, 12
  %i.aas = or i32 %i.aar, %i.aai
  %i.aat = load ptr, ptr %i.afi, align 8, !tbaa !23 ; 2 uses
  %i.aau = ptrtoint ptr %i.zg to i64
  %i.aav = ptrtoint ptr %i.aat to i64
  %reass.sub1623 = sub i64 %i.aau, %i.aav
  %i.aaw = add i64 %reass.sub1623, -6             ; 3 uses
  %.not.i1538 = icmp eq i64 %i.aaw, 0
  %.pre1763 = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1538, label %php_json_scanner_copy_string.exit1539, label %bb.lz

bb.lz:                                            ; preds = %php_json_hex_to_int.exit.i.i1534.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1763, ptr align 1 %i.aat, i64 %i.aaw, i1 false)
  %i.aax = load ptr, ptr %i.afj, align 8, !tbaa !36
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.aaw
  br label %php_json_scanner_copy_string.exit1539

php_json_scanner_copy_string.exit1539:            ; preds = %php_json_hex_to_int.exit.i.i1534.3, %bb.lz
  %i.aaz = phi ptr [ %.pre1763, %php_json_hex_to_int.exit.i.i1534.3 ], [ %i.aay, %bb.lz ] ; 2 uses
  %i.aba = lshr i32 %i.aas, 12
  %i.abb = trunc i32 %i.aba to i8
  %i.abc = or i8 %i.abb, -32
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1
  store ptr %i.abd, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.abc, ptr %i.aaz, align 1, !tbaa !20
  %i.abe = lshr i32 %i.aai, 6
  %i.abf = trunc i32 %i.abe to i8
  %i.abg = and i8 %i.abf, 63
  %i.abh = or disjoint i8 %i.abg, -128
  %i.abi = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 1
  store ptr %i.abj, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.abh, ptr %i.abi, align 1, !tbaa !20
  %i.abk = trunc i32 %i.zy to i8
  %i.abl = and i8 %i.abk, 63
  %i.abm = or disjoint i8 %i.abl, -128
  %i.abn = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 1
  store ptr %i.abo, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.abm, ptr %i.abn, align 1, !tbaa !20
  %i.abp = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.abp, ptr %i.afi, align 8, !tbaa !23
  %i.abq = load i32, ptr %i.afh, align 8, !tbaa !25
  %.not1443 = icmp eq i32 %i.abq, 0
  br i1 %.not1443, label %.preheader1626, label %.backedge.backedge

bb.ma:                                            ; preds = %bb.kq, %bb.kr
  %i.abr = getelementptr inbounds nuw i8, ptr %i.qp, i64 6 ; 2 uses
  store ptr %i.abr, ptr %0, align 8, !tbaa !12
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !20
  %.not1440 = icmp eq i8 %i.abs, 92
  br i1 %.not1440, label %bb.mb, label %.thread1607

bb.mb:                                            ; preds = %bb.ma
  %i.abt = getelementptr inbounds nuw i8, ptr %i.qp, i64 7 ; 2 uses
  store ptr %i.abt, ptr %0, align 8, !tbaa !12
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !20
  %.not1441 = icmp eq i8 %i.abu, 117
  br i1 %.not1441, label %bb.mc, label %.thread1607

bb.mc:                                            ; preds = %bb.mb
  %i.abv = getelementptr inbounds nuw i8, ptr %i.qp, i64 8 ; 2 uses
  store ptr %i.abv, ptr %0, align 8, !tbaa !12
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !20
  %i.abx = and i8 %i.abw, -33
  %or.cond265.not = icmp eq i8 %i.abx, 68
  br i1 %or.cond265.not, label %bb.md, label %.thread1607

bb.md:                                            ; preds = %bb.mc
  %i.aby = getelementptr inbounds nuw i8, ptr %i.qp, i64 9 ; 2 uses
  store ptr %i.aby, ptr %0, align 8, !tbaa !12
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !20 ; 3 uses
  %i.aca = icmp ult i8 %i.abz, 67
  br i1 %i.aca, label %.thread1607, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.acb = icmp ugt i8 %i.abz, 70
  %i.acc = add i8 %i.abz, -103
  %or.cond268 = icmp ult i8 %i.acc, -4
  %or.cond1484 = and i1 %i.acb, %or.cond268
  br i1 %or.cond1484, label %.thread1607, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.acd = getelementptr inbounds nuw i8, ptr %i.qp, i64 10 ; 2 uses
  store ptr %i.acd, ptr %0, align 8, !tbaa !12
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !20 ; 4 uses
  %i.acf = icmp ult i8 %i.ace, 65
  br i1 %i.acf, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.acg = add nsw i8 %i.ace, -58
  %or.cond271 = icmp ult i8 %i.acg, -10
  br i1 %or.cond271, label %.thread1607, label %bb.mi

bb.mh:                                            ; preds = %bb.mf
  %i.ach = icmp ugt i8 %i.ace, 70
  %i.aci = add i8 %i.ace, -103
  %or.cond274 = icmp ult i8 %i.aci, -6
  %or.cond1485 = and i1 %i.ach, %or.cond274
  br i1 %or.cond1485, label %.thread1607, label %bb.mi

bb.mi:                                            ; preds = %bb.mg, %bb.mh
  %i.acj = getelementptr inbounds nuw i8, ptr %i.qp, i64 11 ; 2 uses
  store ptr %i.acj, ptr %0, align 8, !tbaa !12
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !20 ; 4 uses
  %i.acl = icmp ult i8 %i.ack, 65
  br i1 %i.acl, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.acm = add nsw i8 %i.ack, -58
  %or.cond277 = icmp ult i8 %i.acm, -10
  br i1 %or.cond277, label %.thread1607, label %1

bb.mk:                                            ; preds = %bb.mi
  %i.acn = icmp ugt i8 %i.ack, 70
  %i.aco = add i8 %i.ack, -103
  %or.cond280 = icmp ult i8 %i.aco, -6
  %or.cond1486 = and i1 %i.acn, %or.cond280
  br i1 %or.cond1486, label %.thread1607, label %1

1:                                                ; preds = %bb.mj, %bb.mk
  %2 = getelementptr inbounds nuw i8, ptr %i.qp, i64 12 ; 2 uses
  store ptr %2, ptr %0, align 8, !tbaa !12
  %.03.i.i1543 = getelementptr inbounds nuw i8, ptr %i.qp, i64 11
  %3 = load i8, ptr %.03.i.i1543, align 1, !tbaa !20 ; 4 uses
  %4 = zext i8 %3 to i32                          ; 3 uses
  %5 = add i8 %3, -48
  %or.cond.i.i.i1544 = icmp ult i8 %5, 10
  br i1 %or.cond.i.i.i1544, label %6, label %8

6:                                                ; preds = %1
  %7 = add nsw i32 %4, -48
  br label %php_json_hex_to_int.exit.i.i1548

8:                                                ; preds = %1
  %9 = add i8 %3, -65
  %or.cond5.i.i.i1545 = icmp ult i8 %9, 6
  br i1 %or.cond5.i.i.i1545, label %10, label %12

10:                                               ; preds = %8
  %11 = add nsw i32 %4, -55
  br label %php_json_hex_to_int.exit.i.i1548

12:                                               ; preds = %8
  %13 = add i8 %3, -97
  %or.cond8.i.i.i1546 = icmp ult i8 %13, 6
  %14 = add nsw i32 %4, -87
  %spec.select.i.i.i1547 = select i1 %or.cond8.i.i.i1546, i32 %14, i32 -1
  br label %php_json_hex_to_int.exit.i.i1548

php_json_hex_to_int.exit.i.i1548:                 ; preds = %12, %10, %6
  %.0.i.i.i1549 = phi i32 [ %7, %6 ], [ %11, %10 ], [ %spec.select.i.i.i1547, %12 ]
  %.03.i.i1543.1 = getelementptr inbounds nuw i8, ptr %i.qp, i64 10
  %15 = load i8, ptr %.03.i.i1543.1, align 1, !tbaa !20 ; 4 uses
  %16 = zext i8 %15 to i32                        ; 3 uses
  %17 = add i8 %15, -48
  %or.cond.i.i.i1544.1 = icmp ult i8 %17, 10
  br i1 %or.cond.i.i.i1544.1, label %25, label %18

18:                                               ; preds = %php_json_hex_to_int.exit.i.i1548
  %19 = add i8 %15, -65
  %or.cond5.i.i.i1545.1 = icmp ult i8 %19, 6
  br i1 %or.cond5.i.i.i1545.1, label %23, label %20

20:                                               ; preds = %18
  %21 = add i8 %15, -97
  %or.cond8.i.i.i1546.1 = icmp ult i8 %21, 6
  %22 = add nsw i32 %16, -87
  %spec.select.i.i.i1547.1 = select i1 %or.cond8.i.i.i1546.1, i32 %22, i32 -1
  br label %php_json_hex_to_int.exit.i.i1548.1

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -55
  br label %php_json_hex_to_int.exit.i.i1548.1

25:                                               ; preds = %php_json_hex_to_int.exit.i.i1548
  %26 = add nsw i32 %16, -48
  br label %php_json_hex_to_int.exit.i.i1548.1

php_json_hex_to_int.exit.i.i1548.1:               ; preds = %25, %23, %20
  %.0.i.i.i1549.1 = phi i32 [ %26, %25 ], [ %24, %23 ], [ %spec.select.i.i.i1547.1, %20 ]
  %27 = shl nsw i32 %.0.i.i.i1549.1, 4
  %28 = or i32 %27, %.0.i.i.i1549                 ; 2 uses
  %.03.i.i1543.2 = getelementptr inbounds nuw i8, ptr %i.qp, i64 9
  %29 = load i8, ptr %.03.i.i1543.2, align 1, !tbaa !20 ; 4 uses
  %30 = zext i8 %29 to i32                        ; 3 uses
  %31 = add i8 %29, -48
  %or.cond.i.i.i1544.2 = icmp ult i8 %31, 10
  br i1 %or.cond.i.i.i1544.2, label %39, label %32

32:                                               ; preds = %php_json_hex_to_int.exit.i.i1548.1
  %33 = add i8 %29, -65
  %or.cond5.i.i.i1545.2 = icmp ult i8 %33, 6
  br i1 %or.cond5.i.i.i1545.2, label %37, label %34

34:                                               ; preds = %32
  %35 = add i8 %29, -97
  %or.cond8.i.i.i1546.2 = icmp ult i8 %35, 6
  %36 = add nsw i32 %30, -87
  %spec.select.i.i.i1547.2 = select i1 %or.cond8.i.i.i1546.2, i32 %36, i32 -1
  br label %php_json_hex_to_int.exit.i.i1548.2

37:                                               ; preds = %32
  %38 = add nsw i32 %30, -55
  br label %php_json_hex_to_int.exit.i.i1548.2

39:                                               ; preds = %php_json_hex_to_int.exit.i.i1548.1
  %40 = add nsw i32 %30, -48
  br label %php_json_hex_to_int.exit.i.i1548.2

php_json_hex_to_int.exit.i.i1548.2:               ; preds = %39, %37, %34
  %.0.i.i.i1549.2 = phi i32 [ %40, %39 ], [ %38, %37 ], [ %spec.select.i.i.i1547.2, %34 ]
  %41 = shl nsw i32 %.0.i.i.i1549.2, 8
  %42 = or i32 %41, %28
  %43 = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %44 = load i8, ptr %i.ws, align 1, !tbaa !20    ; 4 uses
  %45 = zext i8 %44 to i32                        ; 3 uses
  %46 = add i8 %44, -48
  %or.cond.i.i = icmp ult i8 %46, 10
  br i1 %or.cond.i.i, label %47, label %49

47:                                               ; preds = %php_json_hex_to_int.exit.i.i1548.2
  %48 = add nsw i32 %45, -48
  br label %php_json_hex_to_int.exit.i

49:                                               ; preds = %php_json_hex_to_int.exit.i.i1548.2
  %50 = add i8 %44, -65
  %or.cond5.i.i = icmp ult i8 %50, 6
  br i1 %or.cond5.i.i, label %51, label %53

51:                                               ; preds = %49
  %52 = add nsw i32 %45, -55
  br label %php_json_hex_to_int.exit.i

53:                                               ; preds = %49
  %54 = add i8 %44, -97
  %or.cond8.i.i = icmp ult i8 %54, 6
  %55 = add nsw i32 %45, -87
  %spec.select.i.i = select i1 %or.cond8.i.i, i32 %55, i32 -1
  br label %php_json_hex_to_int.exit.i

php_json_hex_to_int.exit.i:                       ; preds = %53, %51, %47
  %.0.i.i = phi i32 [ %48, %47 ], [ %52, %51 ], [ %spec.select.i.i, %53 ]
  %56 = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
  %57 = load i8, ptr %43, align 1, !tbaa !20      ; 4 uses
  %58 = zext i8 %57 to i32                        ; 3 uses
  %59 = add i8 %57, -48
  %or.cond.i.i.1 = icmp ult i8 %59, 10
  br i1 %or.cond.i.i.1, label %67, label %60

60:                                               ; preds = %php_json_hex_to_int.exit.i
  %61 = add i8 %57, -65
  %or.cond5.i.i.1 = icmp ult i8 %61, 6
  br i1 %or.cond5.i.i.1, label %65, label %62

62:                                               ; preds = %60
  %63 = add i8 %57, -97
  %or.cond8.i.i.1 = icmp ult i8 %63, 6
  %64 = add nsw i32 %58, -87
  %spec.select.i.i.1 = select i1 %or.cond8.i.i.1, i32 %64, i32 -1
  br label %php_json_hex_to_int.exit.i.1

65:                                               ; preds = %60
  %66 = add nsw i32 %58, -55
  br label %php_json_hex_to_int.exit.i.1

67:                                               ; preds = %php_json_hex_to_int.exit.i
  %68 = add nsw i32 %58, -48
  br label %php_json_hex_to_int.exit.i.1

php_json_hex_to_int.exit.i.1:                     ; preds = %67, %65, %62
  %.0.i.i.1 = phi i32 [ %68, %67 ], [ %66, %65 ], [ %spec.select.i.i.1, %62 ]
  %69 = load i8, ptr %56, align 1, !tbaa !20      ; 4 uses
  %70 = zext i8 %69 to i32                        ; 3 uses
  %71 = add i8 %69, -48
  %or.cond.i.i.2 = icmp ult i8 %71, 10
  br i1 %or.cond.i.i.2, label %79, label %72

72:                                               ; preds = %php_json_hex_to_int.exit.i.1
  %73 = add i8 %69, -65
  %or.cond5.i.i.2 = icmp ult i8 %73, 6
  br i1 %or.cond5.i.i.2, label %77, label %74

74:                                               ; preds = %72
  %75 = add i8 %69, -97
  %or.cond8.i.i.2 = icmp ult i8 %75, 6
  %76 = add nsw i32 %70, -87
  %spec.select.i.i.2 = select i1 %or.cond8.i.i.2, i32 %76, i32 -1
  br label %bb.ml

77:                                               ; preds = %72
  %78 = add nsw i32 %70, -55
  br label %bb.ml

79:                                               ; preds = %php_json_hex_to_int.exit.i.1
  %80 = add nsw i32 %70, -48
  br label %bb.ml

bb.ml:                                            ; preds = %74, %77, %79
  %.0.i.i.2 = phi i32 [ %80, %79 ], [ %78, %77 ], [ %spec.select.i.i.2, %74 ]
  %81 = shl nsw i32 %.0.i.i.2, 18
  %82 = shl nsw i32 %.0.i.i.1, 14
  %83 = shl nsw i32 %.0.i.i, 10
  %84 = or i32 %82, %83
  %85 = or i32 %81, %84
  %i.acp = and i32 %85, 1047552
  %i.acq = and i32 %42, 1023
  %i.acr = or disjoint i32 %i.acp, %i.acq         ; 2 uses
  %i.acs = add nuw nsw i32 %i.acr, 65536          ; 2 uses
  %i.act = load ptr, ptr %i.afi, align 8, !tbaa !23 ; 2 uses
  %i.acu = ptrtoint ptr %2 to i64
  %i.acv = ptrtoint ptr %i.act to i64
  %reass.sub1622 = sub i64 %i.acu, %i.acv
  %i.acw = add i64 %reass.sub1622, -12            ; 3 uses
  %.not.i1540 = icmp eq i64 %i.acw, 0
  %.pre1762 = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1540, label %php_json_scanner_copy_string.exit1541, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1762, ptr align 1 %i.act, i64 %i.acw, i1 false)
  %i.acx = load ptr, ptr %i.afj, align 8, !tbaa !36
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.acw
  br label %php_json_scanner_copy_string.exit1541

php_json_scanner_copy_string.exit1541:            ; preds = %bb.ml, %bb.mm
  %i.acz = phi ptr [ %.pre1762, %bb.ml ], [ %i.acy, %bb.mm ] ; 2 uses
  %i.ada = lshr i32 %i.acs, 18
  %i.adb = trunc nuw nsw i32 %i.ada to i8
  %i.adc = or disjoint i8 %i.adb, -16
  %i.add = getelementptr inbounds nuw i8, ptr %i.acz, i64 1
  store ptr %i.add, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.adc, ptr %i.acz, align 1, !tbaa !20
  %i.ade = lshr i32 %i.acs, 12
  %i.adf = trunc i32 %i.ade to i8
  %i.adg = and i8 %i.adf, 63
  %i.adh = or disjoint i8 %i.adg, -128
  %i.adi = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 1
  store ptr %i.adj, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.adh, ptr %i.adi, align 1, !tbaa !20
  %i.adk = lshr i32 %i.acr, 6
  %i.adl = trunc i32 %i.adk to i8
  %i.adm = and i8 %i.adl, 63
  %i.adn = or disjoint i8 %i.adm, -128
  %i.ado = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 1
  store ptr %i.adp, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.adn, ptr %i.ado, align 1, !tbaa !20
  %i.adq = trunc i32 %28 to i8
  %i.adr = and i8 %i.adq, 63
  %i.ads = or disjoint i8 %i.adr, -128
  %i.adt = load ptr, ptr %i.afj, align 8, !tbaa !36 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 1
  store ptr %i.adu, ptr %i.afj, align 8, !tbaa !36
  store i8 %i.ads, ptr %i.adt, align 1, !tbaa !20
  %i.adv = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.adv, ptr %i.afi, align 8, !tbaa !23
  %i.adw = load i32, ptr %i.afh, align 8, !tbaa !25
  %.not1442 = icmp eq i32 %i.adw, 0
  br i1 %.not1442, label %.preheader1626, label %.backedge.backedge

.preheader1626:                                   ; preds = %select.unfold1602, %php_json_scanner_copy_string.exit1541, %php_json_scanner_copy_string.exit1539, %php_json_scanner_copy_string.exit1525, %php_json_scanner_copy_string.exit1523, %._crit_edge, %select.unfold
  %i.adx = phi ptr [ %.promoted, %._crit_edge ], [ %i.jj, %select.unfold ], [ %i.xj, %php_json_scanner_copy_string.exit1523 ], [ %i.ze, %php_json_scanner_copy_string.exit1525 ], [ %i.abp, %php_json_scanner_copy_string.exit1539 ], [ %i.adv, %php_json_scanner_copy_string.exit1541 ], [ %i.sf, %select.unfold1602 ]
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 32 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  br label %.backedge1627

.backedge1627:                                    ; preds = %.backedge1627.backedge, %.preheader1626
  %i.aec = phi ptr [ %i.adx, %.preheader1626 ], [ %.be, %.backedge1627.backedge ] ; 36 uses
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !20
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 1 ; 8 uses
  store ptr %i.aee, ptr %0, align 8, !tbaa !12
  switch i8 %i.aed, label %.backedge1627.backedge [
    i8 34, label %bb.mn
    i8 92, label %bb.mp
  ]

.backedge1627.backedge:                           ; preds = %.backedge1627, %php_json_scanner_copy_string.exit1559, %php_json_scanner_copy_string.exit1573, %php_json_scanner_copy_string.exit1587, %php_json_scanner_copy_string.exit1589, %select.unfold1608
  %.be = phi ptr [ %i.afd, %select.unfold1608 ], [ %i.aiz, %php_json_scanner_copy_string.exit1559 ], [ %i.aku, %php_json_scanner_copy_string.exit1573 ], [ %i.anf, %php_json_scanner_copy_string.exit1587 ], [ %i.apl, %php_json_scanner_copy_string.exit1589 ], [ %i.aee, %.backedge1627 ]
  br label %.backedge1627

bb.mn:                                            ; preds = %.backedge1627
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.aef = load ptr, ptr %i.adz, align 8, !tbaa !23 ; 2 uses
  %i.aeg = ptrtoint ptr %i.aee to i64
  %i.aeh = ptrtoint ptr %i.aef to i64
  %i.aei = xor i64 %i.aeh, -1
  %i.aej = add i64 %i.aei, %i.aeg                 ; 3 uses
  %.not.i1542 = icmp eq i64 %i.aej, 0
  br i1 %.not.i1542, label %.thread1599, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.aek = load ptr, ptr %i.aea, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aek, ptr align 1 %i.aef, i64 %i.aej, i1 false)
  %i.ael = load ptr, ptr %i.aea, align 8, !tbaa !36
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aej
  store ptr %i.aem, ptr %i.aea, align 8, !tbaa !36
  br label %.thread1599

bb.mp:                                            ; preds = %.backedge1627
  store ptr %i.aee, ptr %i.ady, align 8, !tbaa !27
  %i.aen = load i8, ptr %i.aee, align 1, !tbaa !20
  %i.aeo = icmp eq i8 %i.aen, 117
  br i1 %i.aeo, label %bb.mx, label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.nh
  %i.aep = load ptr, ptr %i.adz, align 8, !tbaa !23 ; 2 uses
  %i.aeq = ptrtoint ptr %i.aee to i64
  %i.aer = ptrtoint ptr %i.aep to i64
  %i.aes = xor i64 %i.aer, -1
  %i.aet = add i64 %i.aes, %i.aeq                 ; 3 uses
  %.not.i1544 = icmp eq i64 %i.aet, 0
  br i1 %.not.i1544, label %php_json_scanner_copy_string.exit1545, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.aeu = load ptr, ptr %i.aea, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aeu, ptr align 1 %i.aep, i64 %i.aet, i1 false)
  %i.aev = load ptr, ptr %i.aea, align 8, !tbaa !36
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.aet
  store ptr %i.aew, ptr %i.aea, align 8, !tbaa !36
  %.pre1761 = load ptr, ptr %0, align 8, !tbaa !12
  br label %php_json_scanner_copy_string.exit1545

php_json_scanner_copy_string.exit1545:            ; preds = %bb.mq, %bb.mr
  %i.aex = phi ptr [ %i.aee, %bb.mq ], [ %.pre1761, %bb.mr ]
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !20 ; 2 uses
  switch i8 %i.aey, label %.thread1609 [
    i8 98, label %select.unfold1608
    i8 102, label %bb.ms
    i8 110, label %bb.mt
    i8 114, label %bb.mu
    i8 116, label %bb.mv
    i8 92, label %bb.mw
    i8 47, label %bb.mw
    i8 34, label %bb.mw
  ]

bb.ms:                                            ; preds = %php_json_scanner_copy_string.exit1545
  br label %select.unfold1608

bb.mt:                                            ; preds = %php_json_scanner_copy_string.exit1545
  br label %select.unfold1608

bb.mu:                                            ; preds = %php_json_scanner_copy_string.exit1545
  br label %select.unfold1608

bb.mv:                                            ; preds = %php_json_scanner_copy_string.exit1545
  br label %select.unfold1608

bb.mw:                                            ; preds = %php_json_scanner_copy_string.exit1545, %php_json_scanner_copy_string.exit1545, %php_json_scanner_copy_string.exit1545
  br label %select.unfold1608

.thread1609:                                      ; preds = %php_json_scanner_copy_string.exit1545
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 4, ptr %i.aez, align 4, !tbaa !22
  br label %.thread1599

select.unfold1608:                                ; preds = %php_json_scanner_copy_string.exit1545, %bb.mw, %bb.mv, %bb.mu, %bb.mt, %bb.ms
  %.01299 = phi i8 [ %i.aey, %bb.mw ], [ 12, %bb.ms ], [ 10, %bb.mt ], [ 13, %bb.mu ], [ 9, %bb.mv ], [ 8, %php_json_scanner_copy_string.exit1545 ]
  %i.afa = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 1
  store ptr %i.afb, ptr %i.aea, align 8, !tbaa !36
  store i8 %.01299, ptr %i.afa, align 1, !tbaa !20
  %i.afc = load ptr, ptr %0, align 8, !tbaa !12
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 1 ; 4 uses
  store ptr %i.afd, ptr %0, align 8, !tbaa !12
  store ptr %i.afd, ptr %i.adz, align 8, !tbaa !23
  %i.afe = load i32, ptr %i.aeb, align 8, !tbaa !25
  %.not1438 = icmp eq i32 %i.afe, 0
  br i1 %.not1438, label %.backedge1627.backedge, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %select.unfold1608, %php_json_scanner_copy_string.exit1589, %php_json_scanner_copy_string.exit1587, %php_json_scanner_copy_string.exit1573, %php_json_scanner_copy_string.exit1559
  %.ph = phi ptr [ %i.afd, %select.unfold1608 ], [ %i.apl, %php_json_scanner_copy_string.exit1589 ], [ %i.anf, %php_json_scanner_copy_string.exit1587 ], [ %i.aku, %php_json_scanner_copy_string.exit1573 ], [ %i.aiz, %php_json_scanner_copy_string.exit1559 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %select.unfold.thread, %._crit_edge, %select.unfold
  %i.aff = phi ptr [ %i.jj, %select.unfold ], [ %.promoted, %._crit_edge ], [ %i.jh, %select.unfold.thread ], [ %.ph, %.preheader.loopexit ]
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 41 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.backedge

bb.mx:                                            ; preds = %bb.mp
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aec, i64 2 ; 2 uses
  store ptr %i.afl, ptr %0, align 8, !tbaa !12
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !20 ; 10 uses
  %i.afn = icmp ult i8 %i.afm, 69
  br i1 %i.afn, label %bb.my, label %bb.nd

bb.my:                                            ; preds = %bb.mx
  %i.afo = icmp samesign ult i8 %i.afm, 58
  br i1 %i.afo, label %bb.mz, label %bb.nb

bb.mz:                                            ; preds = %bb.my
  %i.afp = icmp samesign ult i8 %i.afm, 48
  br i1 %i.afp, label %bb.nh, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.afq = icmp eq i8 %i.afm, 48
  br i1 %i.afq, label %bb.ni, label %bb.np

bb.nb:                                            ; preds = %bb.my
  %i.afr = icmp samesign ult i8 %i.afm, 65
  br i1 %i.afr, label %bb.nh, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %.not1431 = icmp eq i8 %i.afm, 68
  br i1 %.not1431, label %bb.ns, label %bb.np

bb.nd:                                            ; preds = %bb.mx
  %i.afs = icmp ult i8 %i.afm, 100
  br i1 %i.afs, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.aft = add nsw i8 %i.afm, -97
  %or.cond283 = icmp ult i8 %i.aft, -26
  br i1 %or.cond283, label %bb.np, label %bb.nh

bb.nf:                                            ; preds = %bb.nd
  %i.afu = icmp eq i8 %i.afm, 100
  br i1 %i.afu, label %bb.ns, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.afv = icmp ult i8 %i.afm, 103
  br i1 %i.afv, label %bb.np, label %bb.nh

bb.nh:                                            ; preds = %bb.qo, %bb.ql, %bb.qi, %bb.ow, %bb.ot, %bb.oq, %bb.on, %bb.ok, %bb.oh, %bb.oe, %bb.ob, %bb.nw, %bb.nr, %bb.qg, %bb.ne, %bb.qn, %bb.qk, %bb.qh, %bb.qf, %bb.qe, %bb.ov, %bb.os, %bb.op, %bb.om, %bb.oj, %bb.og, %bb.od, %bb.oa, %bb.ny, %bb.nv, %bb.nt, %bb.nq, %bb.no, %bb.nn, %bb.nj, %bb.ng, %bb.nb, %bb.mz
  store ptr %i.aee, ptr %0, align 8, !tbaa !12
  br label %bb.mq

bb.ni:                                            ; preds = %bb.na
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aec, i64 3 ; 2 uses
  store ptr %i.afw, ptr %0, align 8, !tbaa !12
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !20 ; 7 uses
  %i.afy = icmp ult i8 %i.afx, 58
  br i1 %i.afy, label %bb.nj, label %bb.nm

bb.nj:                                            ; preds = %bb.ni
  %i.afz = icmp samesign ult i8 %i.afx, 48
  br i1 %i.afz, label %bb.nh, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.aga = icmp eq i8 %i.afx, 48
  br i1 %i.aga, label %bb.nx, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.agb = icmp samesign ult i8 %i.afx, 56
  br i1 %i.agb, label %bb.oc, label %bb.of

bb.nm:                                            ; preds = %bb.ni
  %i.agc = icmp ult i8 %i.afx, 71
  br i1 %i.agc, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %bb.nm
  %i.agd = icmp samesign ult i8 %i.afx, 65
  br i1 %i.agd, label %bb.nh, label %bb.of

bb.no:                                            ; preds = %bb.nm
  %i.age = add i8 %i.afx, -97
  %or.cond286 = icmp ult i8 %i.age, 6
  br i1 %or.cond286, label %bb.of, label %bb.nh

bb.np:                                            ; preds = %bb.ng, %bb.ne, %bb.nc, %bb.na
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aec, i64 3 ; 2 uses
  store ptr %i.agf, ptr %0, align 8, !tbaa !12
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !20 ; 4 uses
  %i.agh = icmp ult i8 %i.agg, 65
  br i1 %i.agh, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.np
  %i.agi = add nsw i8 %i.agg, -48
  %or.cond289 = icmp ult i8 %i.agi, 10
  br i1 %or.cond289, label %bb.of, label %bb.nh

bb.nr:                                            ; preds = %bb.np
  %i.agj = icmp ult i8 %i.agg, 71
  %i.agk = add i8 %i.agg, -97
  %or.cond292 = icmp ult i8 %i.agk, 6
  %or.cond1489 = or i1 %i.agj, %or.cond292
  br i1 %or.cond1489, label %bb.of, label %bb.nh

bb.ns:                                            ; preds = %bb.nf, %bb.nc
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aec, i64 3 ; 2 uses
  store ptr %i.agl, ptr %0, align 8, !tbaa !12
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !20 ; 6 uses
  %i.agn = icmp ult i8 %i.agm, 65
  br i1 %i.agn, label %bb.nt, label %bb.nw

bb.nt:                                            ; preds = %bb.ns
  %i.ago = icmp samesign ult i8 %i.agm, 48
  br i1 %i.ago, label %bb.nh, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.agp = icmp samesign ult i8 %i.agm, 56
  br i1 %i.agp, label %bb.of, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.agq = icmp samesign ult i8 %i.agm, 58
  br i1 %i.agq, label %bb.oi, label %bb.nh

bb.nw:                                            ; preds = %bb.ns
  %i.agr = icmp ult i8 %i.agm, 67
  %i.ags = add i8 %i.agm, -97
  %or.cond295 = icmp ult i8 %i.ags, 2
  %or.cond1490 = or i1 %i.agr, %or.cond295
  br i1 %or.cond1490, label %bb.oi, label %bb.nh

bb.nx:                                            ; preds = %bb.nk
  %i.agt = getelementptr inbounds nuw i8, ptr %i.aec, i64 4 ; 2 uses
  store ptr %i.agt, ptr %0, align 8, !tbaa !12
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !20 ; 6 uses
  %i.agv = icmp ult i8 %i.agu, 65
  br i1 %i.agv, label %bb.ny, label %bb.ob

bb.ny:                                            ; preds = %bb.nx
  %i.agw = icmp samesign ult i8 %i.agu, 48
  br i1 %i.agw, label %bb.nh, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.agx = icmp samesign ult i8 %i.agu, 56
  br i1 %i.agx, label %bb.ol, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.agy = icmp samesign ult i8 %i.agu, 58
  br i1 %i.agy, label %bb.oo, label %bb.nh

bb.ob:                                            ; preds = %bb.nx
  %i.agz = icmp ult i8 %i.agu, 71
  %i.aha = add i8 %i.agu, -97
  %or.cond298 = icmp ult i8 %i.aha, 6
  %or.cond1491 = or i1 %i.agz, %or.cond298
  br i1 %or.cond1491, label %bb.oo, label %bb.nh

bb.oc:                                            ; preds = %bb.nl
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aec, i64 4 ; 2 uses
  store ptr %i.ahb, ptr %0, align 8, !tbaa !12
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !20 ; 4 uses
  %i.ahd = icmp ult i8 %i.ahc, 65
  br i1 %i.ahd, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  %i.ahe = add nsw i8 %i.ahc, -48
  %or.cond301 = icmp ult i8 %i.ahe, 10
  br i1 %or.cond301, label %bb.oo, label %bb.nh

bb.oe:                                            ; preds = %bb.oc
  %i.ahf = icmp ult i8 %i.ahc, 71
  %i.ahg = add i8 %i.ahc, -97
  %or.cond304 = icmp ult i8 %i.ahg, 6
  %or.cond1492 = or i1 %i.ahf, %or.cond304
  br i1 %or.cond1492, label %bb.oo, label %bb.nh

bb.of:                                            ; preds = %bb.nq, %bb.no, %bb.nu, %bb.nr, %bb.nn, %bb.nl
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.aec, i64 4 ; 2 uses
  store ptr %i.ahh, ptr %0, align 8, !tbaa !12
  %i.ahi = load i8, ptr %i.ahh, align 1, !tbaa !20 ; 4 uses
  %i.ahj = icmp ult i8 %i.ahi, 65
  br i1 %i.ahj, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.ahk = add nsw i8 %i.ahi, -48
  %or.cond307 = icmp ult i8 %i.ahk, 10
  br i1 %or.cond307, label %bb.or, label %bb.nh

bb.oh:                                            ; preds = %bb.of
  %i.ahl = icmp ult i8 %i.ahi, 71
  %i.ahm = add i8 %i.ahi, -97
  %or.cond310 = icmp ult i8 %i.ahm, 6
  %or.cond1493 = or i1 %i.ahl, %or.cond310
  br i1 %or.cond1493, label %bb.or, label %bb.nh

bb.oi:                                            ; preds = %bb.nw, %bb.nv
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.aec, i64 4 ; 2 uses
  store ptr %i.ahn, ptr %0, align 8, !tbaa !12
  %i.aho = load i8, ptr %i.ahn, align 1, !tbaa !20 ; 4 uses
  %i.ahp = icmp ult i8 %i.aho, 65
  br i1 %i.ahp, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  %i.ahq = add nsw i8 %i.aho, -48
  %or.cond313 = icmp ult i8 %i.ahq, 10
  br i1 %or.cond313, label %bb.ou, label %bb.nh

bb.ok:                                            ; preds = %bb.oi
  %i.ahr = icmp ult i8 %i.aho, 71
  %i.ahs = add i8 %i.aho, -97
  %or.cond316 = icmp ult i8 %i.ahs, 6
  %or.cond1494 = or i1 %i.ahr, %or.cond316
  br i1 %or.cond1494, label %bb.ou, label %bb.nh

bb.ol:                                            ; preds = %bb.nz
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aec, i64 5 ; 2 uses
  store ptr %i.aht, ptr %0, align 8, !tbaa !12
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !20 ; 4 uses
  %i.ahv = icmp ult i8 %i.ahu, 65
  br i1 %i.ahv, label %bb.om, label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.ahw = add nsw i8 %i.ahu, -48
  %or.cond319 = icmp ult i8 %i.ahw, 10
  br i1 %or.cond319, label %php_json_hex_to_int.exit.i.i1554.1, label %bb.nh

bb.on:                                            ; preds = %bb.ol
  %i.ahx = icmp ult i8 %i.ahu, 71
  %i.ahy = add i8 %i.ahu, -97
  %or.cond322 = icmp ult i8 %i.ahy, 6
  %or.cond1495 = or i1 %i.ahx, %or.cond322
  br i1 %or.cond1495, label %php_json_hex_to_int.exit.i.i1554.1, label %bb.nh

bb.oo:                                            ; preds = %bb.od, %bb.oe, %bb.ob, %bb.oa
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aec, i64 5 ; 2 uses
  store ptr %i.ahz, ptr %0, align 8, !tbaa !12
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !20 ; 4 uses
  %i.aib = icmp ult i8 %i.aia, 65
  br i1 %i.aib, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.aic = add nsw i8 %i.aia, -48
  %or.cond325 = icmp ult i8 %i.aic, 10
  br i1 %or.cond325, label %bb.oy, label %bb.nh

bb.oq:                                            ; preds = %bb.oo
  %i.aid = icmp ult i8 %i.aia, 71
  %i.aie = add i8 %i.aia, -97
  %or.cond328 = icmp ult i8 %i.aie, 6
  %or.cond1496 = or i1 %i.aid, %or.cond328
  br i1 %or.cond1496, label %bb.oy, label %bb.nh

bb.or:                                            ; preds = %bb.og, %bb.oh
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aec, i64 5 ; 2 uses
  store ptr %i.aif, ptr %0, align 8, !tbaa !12
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !20 ; 4 uses
  %i.aih = icmp ult i8 %i.aig, 65
  br i1 %i.aih, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.or
  %i.aii = add nsw i8 %i.aig, -48
  %or.cond331 = icmp ult i8 %i.aii, 10
  br i1 %or.cond331, label %bb.pm, label %bb.nh

bb.ot:                                            ; preds = %bb.or
  %i.aij = icmp ult i8 %i.aig, 71
  %i.aik = add i8 %i.aig, -97
  %or.cond334 = icmp ult i8 %i.aik, 6
  %or.cond1497 = or i1 %i.aij, %or.cond334
  br i1 %or.cond1497, label %bb.pm, label %bb.nh

bb.ou:                                            ; preds = %bb.oj, %bb.ok
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aec, i64 5 ; 3 uses
  store ptr %i.ail, ptr %0, align 8, !tbaa !12
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !20 ; 4 uses
  %i.ain = icmp ult i8 %i.aim, 65
  br i1 %i.ain, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  %i.aio = add nsw i8 %i.aim, -48
  %or.cond337 = icmp ult i8 %i.aio, 10
  br i1 %or.cond337, label %bb.qe, label %bb.nh

bb.ow:                                            ; preds = %bb.ou
  %i.aip = icmp ult i8 %i.aim, 71
  %i.aiq = add i8 %i.aim, -97
  %or.cond340 = icmp ult i8 %i.aiq, 6
  %or.cond1498 = or i1 %i.aip, %or.cond340
  br i1 %or.cond1498, label %bb.qe, label %bb.nh

php_json_hex_to_int.exit.i.i1554.1:               ; preds = %bb.om, %bb.on
  %86 = getelementptr inbounds nuw i8, ptr %i.aec, i64 6 ; 3 uses
  store ptr %86, ptr %0, align 8, !tbaa !12
  %87 = tail call fastcc i32 @php_json_ucs2_to_int(ptr nonnull %86, i32 noundef 2)
  %i.air = load ptr, ptr %i.adz, align 8, !tbaa !23 ; 2 uses
  %i.ais = ptrtoint ptr %86 to i64
  %i.ait = ptrtoint ptr %i.air to i64
  %reass.sub1621 = sub i64 %i.ais, %i.ait
  %i.aiu = add i64 %reass.sub1621, -6             ; 3 uses
  %.not.i1558 = icmp eq i64 %i.aiu, 0
  %.pre1760 = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1558, label %php_json_scanner_copy_string.exit1559, label %bb.ox

bb.ox:                                            ; preds = %php_json_hex_to_int.exit.i.i1554.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1760, ptr align 1 %i.air, i64 %i.aiu, i1 false)
  %i.aiv = load ptr, ptr %i.aea, align 8, !tbaa !36
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %i.aiu
  br label %php_json_scanner_copy_string.exit1559

php_json_scanner_copy_string.exit1559:            ; preds = %php_json_hex_to_int.exit.i.i1554.1, %bb.ox
  %i.aix = phi ptr [ %.pre1760, %php_json_hex_to_int.exit.i.i1554.1 ], [ %i.aiw, %bb.ox ] ; 2 uses
  %88 = trunc i32 %87 to i8
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 1
  store ptr %i.aiy, ptr %i.aea, align 8, !tbaa !36
  store i8 %88, ptr %i.aix, align 1, !tbaa !20
  %i.aiz = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.aiz, ptr %i.adz, align 8, !tbaa !23
  %i.aja = load i32, ptr %i.aeb, align 8, !tbaa !25
  %.not1437 = icmp eq i32 %i.aja, 0
  br i1 %.not1437, label %.backedge1627.backedge, label %.preheader.loopexit

bb.oy:                                            ; preds = %bb.op, %bb.oq
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aec, i64 6 ; 2 uses
  store ptr %i.ajb, ptr %0, align 8, !tbaa !12
  %.03.i.i1563 = getelementptr inbounds nuw i8, ptr %i.aec, i64 5
  %i.ajc = load i8, ptr %.03.i.i1563, align 1, !tbaa !20 ; 4 uses
  %i.ajd = zext i8 %i.ajc to i32                  ; 3 uses
  %i.aje = add i8 %i.ajc, -48
  %or.cond.i.i.i1564 = icmp ult i8 %i.aje, 10
  br i1 %or.cond.i.i.i1564, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.ajf = add nsw i32 %i.ajd, -48
  br label %php_json_hex_to_int.exit.i.i1568

bb.pa:                                            ; preds = %bb.oy
  %i.ajg = add i8 %i.ajc, -65
  %or.cond5.i.i.i1565 = icmp ult i8 %i.ajg, 6
  br i1 %or.cond5.i.i.i1565, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  %i.ajh = add nsw i32 %i.ajd, -55
  br label %php_json_hex_to_int.exit.i.i1568

bb.pc:                                            ; preds = %bb.pa
  %i.aji = add i8 %i.ajc, -97
  %or.cond8.i.i.i1566 = icmp ult i8 %i.aji, 6
  %i.ajj = add nsw i32 %i.ajd, -87
  %spec.select.i.i.i1567 = select i1 %or.cond8.i.i.i1566, i32 %i.ajj, i32 -1
  br label %php_json_hex_to_int.exit.i.i1568

php_json_hex_to_int.exit.i.i1568:                 ; preds = %bb.pc, %bb.pb, %bb.oz
  %.0.i.i.i1569 = phi i32 [ %i.ajf, %bb.oz ], [ %i.ajh, %bb.pb ], [ %spec.select.i.i.i1567, %bb.pc ]
  %.03.i.i1563.1 = getelementptr inbounds nuw i8, ptr %i.aec, i64 4
  %i.ajk = load i8, ptr %.03.i.i1563.1, align 1, !tbaa !20 ; 4 uses
  %i.ajl = zext i8 %i.ajk to i32                  ; 3 uses
  %i.ajm = add i8 %i.ajk, -48
  %or.cond.i.i.i1564.1 = icmp ult i8 %i.ajm, 10
  br i1 %or.cond.i.i.i1564.1, label %bb.pg, label %bb.pd

bb.pd:                                            ; preds = %php_json_hex_to_int.exit.i.i1568
  %i.ajn = add i8 %i.ajk, -65
  %or.cond5.i.i.i1565.1 = icmp ult i8 %i.ajn, 6
  br i1 %or.cond5.i.i.i1565.1, label %bb.pf, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.ajo = add i8 %i.ajk, -97
  %or.cond8.i.i.i1566.1 = icmp ult i8 %i.ajo, 6
  %i.ajp = add nsw i32 %i.ajl, -87
  %spec.select.i.i.i1567.1 = select i1 %or.cond8.i.i.i1566.1, i32 %i.ajp, i32 -1
  br label %php_json_hex_to_int.exit.i.i1568.1

bb.pf:                                            ; preds = %bb.pd
  %i.ajq = add nsw i32 %i.ajl, -55
  br label %php_json_hex_to_int.exit.i.i1568.1

bb.pg:                                            ; preds = %php_json_hex_to_int.exit.i.i1568
  %i.ajr = add nsw i32 %i.ajl, -48
  br label %php_json_hex_to_int.exit.i.i1568.1

php_json_hex_to_int.exit.i.i1568.1:               ; preds = %bb.pg, %bb.pf, %bb.pe
  %.0.i.i.i1569.1 = phi i32 [ %i.ajr, %bb.pg ], [ %i.ajq, %bb.pf ], [ %spec.select.i.i.i1567.1, %bb.pe ]
  %i.ajs = shl nsw i32 %.0.i.i.i1569.1, 4
  %i.ajt = or i32 %i.ajs, %.0.i.i.i1569           ; 2 uses
  %.03.i.i1563.2 = getelementptr inbounds nuw i8, ptr %i.aec, i64 3
  %i.aju = load i8, ptr %.03.i.i1563.2, align 1, !tbaa !20 ; 4 uses
  %i.ajv = zext i8 %i.aju to i32                  ; 3 uses
  %i.ajw = add i8 %i.aju, -48
  %or.cond.i.i.i1564.2 = icmp ult i8 %i.ajw, 10
  br i1 %or.cond.i.i.i1564.2, label %bb.pk, label %bb.ph

bb.ph:                                            ; preds = %php_json_hex_to_int.exit.i.i1568.1
  %i.ajx = add i8 %i.aju, -65
  %or.cond5.i.i.i1565.2 = icmp ult i8 %i.ajx, 6
  br i1 %or.cond5.i.i.i1565.2, label %bb.pj, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.ajy = add i8 %i.aju, -97
  %or.cond8.i.i.i1566.2 = icmp ult i8 %i.ajy, 6
  %i.ajz = add nsw i32 %i.ajv, -87
  %spec.select.i.i.i1567.2 = select i1 %or.cond8.i.i.i1566.2, i32 %i.ajz, i32 -1
  br label %php_json_hex_to_int.exit.i.i1568.2

bb.pj:                                            ; preds = %bb.ph
  %i.aka = add nsw i32 %i.ajv, -55
  br label %php_json_hex_to_int.exit.i.i1568.2

bb.pk:                                            ; preds = %php_json_hex_to_int.exit.i.i1568.1
  %i.akb = add nsw i32 %i.ajv, -48
  br label %php_json_hex_to_int.exit.i.i1568.2

php_json_hex_to_int.exit.i.i1568.2:               ; preds = %bb.pk, %bb.pj, %bb.pi
  %.0.i.i.i1569.2 = phi i32 [ %i.akb, %bb.pk ], [ %i.aka, %bb.pj ], [ %spec.select.i.i.i1567.2, %bb.pi ]
  %i.akc = shl nsw i32 %.0.i.i.i1569.2, 8
  %i.akd = or i32 %i.akc, %i.ajt
  %i.ake = load ptr, ptr %i.adz, align 8, !tbaa !23 ; 2 uses
  %i.akf = ptrtoint ptr %i.ajb to i64
  %i.akg = ptrtoint ptr %i.ake to i64
  %reass.sub1620 = sub i64 %i.akf, %i.akg
  %i.akh = add i64 %reass.sub1620, -6             ; 3 uses
  %.not.i1572 = icmp eq i64 %i.akh, 0
  %.pre1759 = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1572, label %php_json_scanner_copy_string.exit1573, label %bb.pl

bb.pl:                                            ; preds = %php_json_hex_to_int.exit.i.i1568.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1759, ptr align 1 %i.ake, i64 %i.akh, i1 false)
  %i.aki = load ptr, ptr %i.aea, align 8, !tbaa !36
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %i.akh
  br label %php_json_scanner_copy_string.exit1573

php_json_scanner_copy_string.exit1573:            ; preds = %php_json_hex_to_int.exit.i.i1568.2, %bb.pl
  %i.akk = phi ptr [ %.pre1759, %php_json_hex_to_int.exit.i.i1568.2 ], [ %i.akj, %bb.pl ] ; 2 uses
  %i.akl = lshr i32 %i.akd, 6
  %i.akm = trunc i32 %i.akl to i8
  %i.akn = or i8 %i.akm, -64
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akk, i64 1
  store ptr %i.ako, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.akn, ptr %i.akk, align 1, !tbaa !20
  %i.akp = trunc i32 %i.ajt to i8
  %i.akq = and i8 %i.akp, 63
  %i.akr = or disjoint i8 %i.akq, -128
  %i.aks = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 1
  store ptr %i.akt, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.akr, ptr %i.aks, align 1, !tbaa !20
  %i.aku = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.aku, ptr %i.adz, align 8, !tbaa !23
  %i.akv = load i32, ptr %i.aeb, align 8, !tbaa !25
  %.not1436 = icmp eq i32 %i.akv, 0
  br i1 %.not1436, label %.backedge1627.backedge, label %.preheader.loopexit

bb.pm:                                            ; preds = %bb.os, %bb.ot
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aec, i64 6 ; 2 uses
  store ptr %i.akw, ptr %0, align 8, !tbaa !12
  %.03.i.i1577 = getelementptr inbounds nuw i8, ptr %i.aec, i64 5
  %i.akx = load i8, ptr %.03.i.i1577, align 1, !tbaa !20 ; 4 uses
  %i.aky = zext i8 %i.akx to i32                  ; 3 uses
  %i.akz = add i8 %i.akx, -48
  %or.cond.i.i.i1578 = icmp ult i8 %i.akz, 10
  br i1 %or.cond.i.i.i1578, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.pm
  %i.ala = add nsw i32 %i.aky, -48
  br label %php_json_hex_to_int.exit.i.i1582

bb.po:                                            ; preds = %bb.pm
  %i.alb = add i8 %i.akx, -65
  %or.cond5.i.i.i1579 = icmp ult i8 %i.alb, 6
  br i1 %or.cond5.i.i.i1579, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  %i.alc = add nsw i32 %i.aky, -55
  br label %php_json_hex_to_int.exit.i.i1582

bb.pq:                                            ; preds = %bb.po
  %i.ald = add i8 %i.akx, -97
  %or.cond8.i.i.i1580 = icmp ult i8 %i.ald, 6
  %i.ale = add nsw i32 %i.aky, -87
  %spec.select.i.i.i1581 = select i1 %or.cond8.i.i.i1580, i32 %i.ale, i32 -1
  br label %php_json_hex_to_int.exit.i.i1582

php_json_hex_to_int.exit.i.i1582:                 ; preds = %bb.pq, %bb.pp, %bb.pn
  %.0.i.i.i1583 = phi i32 [ %i.ala, %bb.pn ], [ %i.alc, %bb.pp ], [ %spec.select.i.i.i1581, %bb.pq ]
  %.03.i.i1577.1 = getelementptr inbounds nuw i8, ptr %i.aec, i64 4
  %i.alf = load i8, ptr %.03.i.i1577.1, align 1, !tbaa !20 ; 4 uses
  %i.alg = zext i8 %i.alf to i32                  ; 3 uses
  %i.alh = add i8 %i.alf, -48
  %or.cond.i.i.i1578.1 = icmp ult i8 %i.alh, 10
  br i1 %or.cond.i.i.i1578.1, label %bb.pu, label %bb.pr

bb.pr:                                            ; preds = %php_json_hex_to_int.exit.i.i1582
  %i.ali = add i8 %i.alf, -65
  %or.cond5.i.i.i1579.1 = icmp ult i8 %i.ali, 6
  br i1 %or.cond5.i.i.i1579.1, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.alj = add i8 %i.alf, -97
  %or.cond8.i.i.i1580.1 = icmp ult i8 %i.alj, 6
  %i.alk = add nsw i32 %i.alg, -87
  %spec.select.i.i.i1581.1 = select i1 %or.cond8.i.i.i1580.1, i32 %i.alk, i32 -1
  br label %php_json_hex_to_int.exit.i.i1582.1

bb.pt:                                            ; preds = %bb.pr
  %i.all = add nsw i32 %i.alg, -55
  br label %php_json_hex_to_int.exit.i.i1582.1

bb.pu:                                            ; preds = %php_json_hex_to_int.exit.i.i1582
  %i.alm = add nsw i32 %i.alg, -48
  br label %php_json_hex_to_int.exit.i.i1582.1

php_json_hex_to_int.exit.i.i1582.1:               ; preds = %bb.pu, %bb.pt, %bb.ps
  %.0.i.i.i1583.1 = phi i32 [ %i.alm, %bb.pu ], [ %i.all, %bb.pt ], [ %spec.select.i.i.i1581.1, %bb.ps ]
  %i.aln = shl nsw i32 %.0.i.i.i1583.1, 4
  %i.alo = or i32 %i.aln, %.0.i.i.i1583           ; 2 uses
  %.03.i.i1577.2 = getelementptr inbounds nuw i8, ptr %i.aec, i64 3
  %i.alp = load i8, ptr %.03.i.i1577.2, align 1, !tbaa !20 ; 4 uses
  %i.alq = zext i8 %i.alp to i32                  ; 3 uses
  %i.alr = add i8 %i.alp, -48
  %or.cond.i.i.i1578.2 = icmp ult i8 %i.alr, 10
  br i1 %or.cond.i.i.i1578.2, label %bb.py, label %bb.pv

bb.pv:                                            ; preds = %php_json_hex_to_int.exit.i.i1582.1
  %i.als = add i8 %i.alp, -65
  %or.cond5.i.i.i1579.2 = icmp ult i8 %i.als, 6
  br i1 %or.cond5.i.i.i1579.2, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.alt = add i8 %i.alp, -97
  %or.cond8.i.i.i1580.2 = icmp ult i8 %i.alt, 6
  %i.alu = add nsw i32 %i.alq, -87
  %spec.select.i.i.i1581.2 = select i1 %or.cond8.i.i.i1580.2, i32 %i.alu, i32 -1
  br label %php_json_hex_to_int.exit.i.i1582.2

bb.px:                                            ; preds = %bb.pv
  %i.alv = add nsw i32 %i.alq, -55
  br label %php_json_hex_to_int.exit.i.i1582.2

bb.py:                                            ; preds = %php_json_hex_to_int.exit.i.i1582.1
  %i.alw = add nsw i32 %i.alq, -48
  br label %php_json_hex_to_int.exit.i.i1582.2

php_json_hex_to_int.exit.i.i1582.2:               ; preds = %bb.py, %bb.px, %bb.pw
  %.0.i.i.i1583.2 = phi i32 [ %i.alw, %bb.py ], [ %i.alv, %bb.px ], [ %spec.select.i.i.i1581.2, %bb.pw ]
  %i.alx = shl nsw i32 %.0.i.i.i1583.2, 8
  %i.aly = or i32 %i.alx, %i.alo                  ; 2 uses
  %.03.i.i1577.3 = getelementptr inbounds nuw i8, ptr %i.aec, i64 2
  %i.alz = load i8, ptr %.03.i.i1577.3, align 1, !tbaa !20 ; 4 uses
  %i.ama = zext i8 %i.alz to i32                  ; 3 uses
  %i.amb = add i8 %i.alz, -48
  %or.cond.i.i.i1578.3 = icmp ult i8 %i.amb, 10
  br i1 %or.cond.i.i.i1578.3, label %bb.qc, label %bb.pz

bb.pz:                                            ; preds = %php_json_hex_to_int.exit.i.i1582.2
  %i.amc = add i8 %i.alz, -65
  %or.cond5.i.i.i1579.3 = icmp ult i8 %i.amc, 6
  br i1 %or.cond5.i.i.i1579.3, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.amd = add i8 %i.alz, -97
  %or.cond8.i.i.i1580.3 = icmp ult i8 %i.amd, 6
  %i.ame = add nsw i32 %i.ama, -87
  %spec.select.i.i.i1581.3 = select i1 %or.cond8.i.i.i1580.3, i32 %i.ame, i32 -1
  br label %php_json_hex_to_int.exit.i.i1582.3

bb.qb:                                            ; preds = %bb.pz
  %i.amf = add nsw i32 %i.ama, -55
  br label %php_json_hex_to_int.exit.i.i1582.3

bb.qc:                                            ; preds = %php_json_hex_to_int.exit.i.i1582.2
  %i.amg = add nsw i32 %i.ama, -48
  br label %php_json_hex_to_int.exit.i.i1582.3

php_json_hex_to_int.exit.i.i1582.3:               ; preds = %bb.qc, %bb.qb, %bb.qa
  %.0.i.i.i1583.3 = phi i32 [ %i.amg, %bb.qc ], [ %i.amf, %bb.qb ], [ %spec.select.i.i.i1581.3, %bb.qa ]
  %i.amh = shl nsw i32 %.0.i.i.i1583.3, 12
  %i.ami = or i32 %i.amh, %i.aly
  %i.amj = load ptr, ptr %i.adz, align 8, !tbaa !23 ; 2 uses
  %i.amk = ptrtoint ptr %i.akw to i64
  %i.aml = ptrtoint ptr %i.amj to i64
  %reass.sub1619 = sub i64 %i.amk, %i.aml
  %i.amm = add i64 %reass.sub1619, -6             ; 3 uses
  %.not.i1586 = icmp eq i64 %i.amm, 0
  %.pre1758 = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1586, label %php_json_scanner_copy_string.exit1587, label %bb.qd

bb.qd:                                            ; preds = %php_json_hex_to_int.exit.i.i1582.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1758, ptr align 1 %i.amj, i64 %i.amm, i1 false)
  %i.amn = load ptr, ptr %i.aea, align 8, !tbaa !36
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 %i.amm
  br label %php_json_scanner_copy_string.exit1587

php_json_scanner_copy_string.exit1587:            ; preds = %php_json_hex_to_int.exit.i.i1582.3, %bb.qd
  %i.amp = phi ptr [ %.pre1758, %php_json_hex_to_int.exit.i.i1582.3 ], [ %i.amo, %bb.qd ] ; 2 uses
  %i.amq = lshr i32 %i.ami, 12
  %i.amr = trunc i32 %i.amq to i8
  %i.ams = or i8 %i.amr, -32
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amp, i64 1
  store ptr %i.amt, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.ams, ptr %i.amp, align 1, !tbaa !20
  %i.amu = lshr i32 %i.aly, 6
  %i.amv = trunc i32 %i.amu to i8
  %i.amw = and i8 %i.amv, 63
  %i.amx = or disjoint i8 %i.amw, -128
  %i.amy = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 1
  store ptr %i.amz, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.amx, ptr %i.amy, align 1, !tbaa !20
  %i.ana = trunc i32 %i.alo to i8
  %i.anb = and i8 %i.ana, 63
  %i.anc = or disjoint i8 %i.anb, -128
  %i.and = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 1
  store ptr %i.ane, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.anc, ptr %i.and, align 1, !tbaa !20
  %i.anf = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.anf, ptr %i.adz, align 8, !tbaa !23
  %i.ang = load i32, ptr %i.aeb, align 8, !tbaa !25
  %.not1435 = icmp eq i32 %i.ang, 0
  br i1 %.not1435, label %.backedge1627.backedge, label %.preheader.loopexit

bb.qe:                                            ; preds = %bb.ov, %bb.ow
  %i.anh = getelementptr inbounds nuw i8, ptr %i.aec, i64 6 ; 2 uses
  store ptr %i.anh, ptr %0, align 8, !tbaa !12
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !20
  %.not1432 = icmp eq i8 %i.ani, 92
  br i1 %.not1432, label %bb.qf, label %bb.nh

bb.qf:                                            ; preds = %bb.qe
  %i.anj = getelementptr inbounds nuw i8, ptr %i.aec, i64 7 ; 2 uses
  store ptr %i.anj, ptr %0, align 8, !tbaa !12
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !20
  %.not1433 = icmp eq i8 %i.ank, 117
  br i1 %.not1433, label %bb.qg, label %bb.nh

bb.qg:                                            ; preds = %bb.qf
  %i.anl = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  store ptr %i.anl, ptr %0, align 8, !tbaa !12
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !20
  %i.ann = and i8 %i.anm, -33
  %or.cond343.not = icmp eq i8 %i.ann, 68
  br i1 %or.cond343.not, label %bb.qh, label %bb.nh

bb.qh:                                            ; preds = %bb.qg
  %i.ano = getelementptr inbounds nuw i8, ptr %i.aec, i64 9 ; 2 uses
  store ptr %i.ano, ptr %0, align 8, !tbaa !12
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !20 ; 3 uses
  %i.anq = icmp ult i8 %i.anp, 67
  br i1 %i.anq, label %bb.nh, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.anr = icmp ugt i8 %i.anp, 70
  %i.ans = add i8 %i.anp, -103
  %or.cond346 = icmp ult i8 %i.ans, -4
  %or.cond1502 = and i1 %i.anr, %or.cond346
  br i1 %or.cond1502, label %bb.nh, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.ant = getelementptr inbounds nuw i8, ptr %i.aec, i64 10 ; 2 uses
  store ptr %i.ant, ptr %0, align 8, !tbaa !12
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !20 ; 4 uses
  %i.anv = icmp ult i8 %i.anu, 65
  br i1 %i.anv, label %bb.qk, label %bb.ql

bb.qk:                                            ; preds = %bb.qj
  %i.anw = add nsw i8 %i.anu, -58
  %or.cond349 = icmp ult i8 %i.anw, -10
  br i1 %or.cond349, label %bb.nh, label %bb.qm

bb.ql:                                            ; preds = %bb.qj
  %i.anx = icmp ugt i8 %i.anu, 70
  %i.any = add i8 %i.anu, -103
  %or.cond352 = icmp ult i8 %i.any, -6
  %or.cond1503 = and i1 %i.anx, %or.cond352
  br i1 %or.cond1503, label %bb.nh, label %bb.qm

bb.qm:                                            ; preds = %bb.qk, %bb.ql
  %i.anz = getelementptr inbounds nuw i8, ptr %i.aec, i64 11 ; 2 uses
  store ptr %i.anz, ptr %0, align 8, !tbaa !12
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !20 ; 4 uses
  %i.aob = icmp ult i8 %i.aoa, 65
  br i1 %i.aob, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  %i.aoc = add nsw i8 %i.aoa, -58
  %or.cond355 = icmp ult i8 %i.aoc, -10
  br i1 %or.cond355, label %bb.nh, label %89

bb.qo:                                            ; preds = %bb.qm
  %i.aod = icmp ugt i8 %i.aoa, 70
  %i.aoe = add i8 %i.aoa, -103
  %or.cond358 = icmp ult i8 %i.aoe, -6
  %or.cond1504 = and i1 %i.aod, %or.cond358
  br i1 %or.cond1504, label %bb.nh, label %89

89:                                               ; preds = %bb.qn, %bb.qo
  %90 = getelementptr inbounds nuw i8, ptr %i.aec, i64 12 ; 2 uses
  store ptr %90, ptr %0, align 8, !tbaa !12
  %.03.i.i1591 = getelementptr inbounds nuw i8, ptr %i.aec, i64 11
  %91 = load i8, ptr %.03.i.i1591, align 1, !tbaa !20 ; 4 uses
  %92 = zext i8 %91 to i32                        ; 3 uses
  %93 = add i8 %91, -48
  %or.cond.i.i.i1592 = icmp ult i8 %93, 10
  br i1 %or.cond.i.i.i1592, label %94, label %96

94:                                               ; preds = %89
  %95 = add nsw i32 %92, -48
  br label %php_json_hex_to_int.exit.i.i1596

96:                                               ; preds = %89
  %97 = add i8 %91, -65
  %or.cond5.i.i.i1593 = icmp ult i8 %97, 6
  br i1 %or.cond5.i.i.i1593, label %98, label %100

98:                                               ; preds = %96
  %99 = add nsw i32 %92, -55
  br label %php_json_hex_to_int.exit.i.i1596

100:                                              ; preds = %96
  %101 = add i8 %91, -97
  %or.cond8.i.i.i1594 = icmp ult i8 %101, 6
  %102 = add nsw i32 %92, -87
  %spec.select.i.i.i1595 = select i1 %or.cond8.i.i.i1594, i32 %102, i32 -1
  br label %php_json_hex_to_int.exit.i.i1596

php_json_hex_to_int.exit.i.i1596:                 ; preds = %100, %98, %94
  %.0.i.i.i1597 = phi i32 [ %95, %94 ], [ %99, %98 ], [ %spec.select.i.i.i1595, %100 ]
  %.03.i.i1591.1 = getelementptr inbounds nuw i8, ptr %i.aec, i64 10
  %103 = load i8, ptr %.03.i.i1591.1, align 1, !tbaa !20 ; 4 uses
  %104 = zext i8 %103 to i32                      ; 3 uses
  %105 = add i8 %103, -48
  %or.cond.i.i.i1592.1 = icmp ult i8 %105, 10
  br i1 %or.cond.i.i.i1592.1, label %113, label %106

106:                                              ; preds = %php_json_hex_to_int.exit.i.i1596
  %107 = add i8 %103, -65
  %or.cond5.i.i.i1593.1 = icmp ult i8 %107, 6
  br i1 %or.cond5.i.i.i1593.1, label %111, label %108

108:                                              ; preds = %106
  %109 = add i8 %103, -97
  %or.cond8.i.i.i1594.1 = icmp ult i8 %109, 6
  %110 = add nsw i32 %104, -87
  %spec.select.i.i.i1595.1 = select i1 %or.cond8.i.i.i1594.1, i32 %110, i32 -1
  br label %php_json_hex_to_int.exit.i.i1596.1

111:                                              ; preds = %106
  %112 = add nsw i32 %104, -55
  br label %php_json_hex_to_int.exit.i.i1596.1

113:                                              ; preds = %php_json_hex_to_int.exit.i.i1596
  %114 = add nsw i32 %104, -48
  br label %php_json_hex_to_int.exit.i.i1596.1

php_json_hex_to_int.exit.i.i1596.1:               ; preds = %113, %111, %108
  %.0.i.i.i1597.1 = phi i32 [ %114, %113 ], [ %112, %111 ], [ %spec.select.i.i.i1595.1, %108 ]
  %115 = shl nsw i32 %.0.i.i.i1597.1, 4
  %116 = or i32 %115, %.0.i.i.i1597               ; 2 uses
  %.03.i.i1591.2 = getelementptr inbounds nuw i8, ptr %i.aec, i64 9
  %117 = load i8, ptr %.03.i.i1591.2, align 1, !tbaa !20 ; 4 uses
  %118 = zext i8 %117 to i32                      ; 3 uses
  %119 = add i8 %117, -48
  %or.cond.i.i.i1592.2 = icmp ult i8 %119, 10
  br i1 %or.cond.i.i.i1592.2, label %127, label %120

120:                                              ; preds = %php_json_hex_to_int.exit.i.i1596.1
  %121 = add i8 %117, -65
  %or.cond5.i.i.i1593.2 = icmp ult i8 %121, 6
  br i1 %or.cond5.i.i.i1593.2, label %125, label %122

122:                                              ; preds = %120
  %123 = add i8 %117, -97
  %or.cond8.i.i.i1594.2 = icmp ult i8 %123, 6
  %124 = add nsw i32 %118, -87
  %spec.select.i.i.i1595.2 = select i1 %or.cond8.i.i.i1594.2, i32 %124, i32 -1
  br label %php_json_hex_to_int.exit.i.i1596.2

125:                                              ; preds = %120
  %126 = add nsw i32 %118, -55
  br label %php_json_hex_to_int.exit.i.i1596.2

127:                                              ; preds = %php_json_hex_to_int.exit.i.i1596.1
  %128 = add nsw i32 %118, -48
  br label %php_json_hex_to_int.exit.i.i1596.2

php_json_hex_to_int.exit.i.i1596.2:               ; preds = %127, %125, %122
  %.0.i.i.i1597.2 = phi i32 [ %128, %127 ], [ %126, %125 ], [ %spec.select.i.i.i1595.2, %122 ]
  %129 = shl nsw i32 %.0.i.i.i1597.2, 8
  %130 = or i32 %129, %116
  %131 = getelementptr inbounds nuw i8, ptr %i.aec, i64 4
  %132 = load i8, ptr %i.ail, align 1, !tbaa !20  ; 4 uses
  %133 = zext i8 %132 to i32                      ; 3 uses
  %134 = add i8 %132, -48
  %or.cond.i.i1603 = icmp ult i8 %134, 10
  br i1 %or.cond.i.i1603, label %135, label %137

135:                                              ; preds = %php_json_hex_to_int.exit.i.i1596.2
  %136 = add nsw i32 %133, -48
  br label %php_json_hex_to_int.exit.i1607

137:                                              ; preds = %php_json_hex_to_int.exit.i.i1596.2
  %138 = add i8 %132, -65
  %or.cond5.i.i1604 = icmp ult i8 %138, 6
  br i1 %or.cond5.i.i1604, label %139, label %141

139:                                              ; preds = %137
  %140 = add nsw i32 %133, -55
  br label %php_json_hex_to_int.exit.i1607

141:                                              ; preds = %137
  %142 = add i8 %132, -97
  %or.cond8.i.i1605 = icmp ult i8 %142, 6
  %143 = add nsw i32 %133, -87
  %spec.select.i.i1606 = select i1 %or.cond8.i.i1605, i32 %143, i32 -1
  br label %php_json_hex_to_int.exit.i1607

php_json_hex_to_int.exit.i1607:                   ; preds = %141, %139, %135
  %.0.i.i1608 = phi i32 [ %136, %135 ], [ %140, %139 ], [ %spec.select.i.i1606, %141 ]
  %144 = getelementptr inbounds nuw i8, ptr %i.aec, i64 3
  %145 = load i8, ptr %131, align 1, !tbaa !20    ; 4 uses
  %146 = zext i8 %145 to i32                      ; 3 uses
  %147 = add i8 %145, -48
  %or.cond.i.i1603.1 = icmp ult i8 %147, 10
  br i1 %or.cond.i.i1603.1, label %155, label %148

148:                                              ; preds = %php_json_hex_to_int.exit.i1607
  %149 = add i8 %145, -65
  %or.cond5.i.i1604.1 = icmp ult i8 %149, 6
  br i1 %or.cond5.i.i1604.1, label %153, label %150

150:                                              ; preds = %148
  %151 = add i8 %145, -97
  %or.cond8.i.i1605.1 = icmp ult i8 %151, 6
  %152 = add nsw i32 %146, -87
  %spec.select.i.i1606.1 = select i1 %or.cond8.i.i1605.1, i32 %152, i32 -1
  br label %php_json_hex_to_int.exit.i1607.1

153:                                              ; preds = %148
  %154 = add nsw i32 %146, -55
  br label %php_json_hex_to_int.exit.i1607.1

155:                                              ; preds = %php_json_hex_to_int.exit.i1607
  %156 = add nsw i32 %146, -48
  br label %php_json_hex_to_int.exit.i1607.1

php_json_hex_to_int.exit.i1607.1:                 ; preds = %155, %153, %150
  %.0.i.i1608.1 = phi i32 [ %156, %155 ], [ %154, %153 ], [ %spec.select.i.i1606.1, %150 ]
  %157 = load i8, ptr %144, align 1, !tbaa !20    ; 4 uses
  %158 = zext i8 %157 to i32                      ; 3 uses
  %159 = add i8 %157, -48
  %or.cond.i.i1603.2 = icmp ult i8 %159, 10
  br i1 %or.cond.i.i1603.2, label %167, label %160

160:                                              ; preds = %php_json_hex_to_int.exit.i1607.1
  %161 = add i8 %157, -65
  %or.cond5.i.i1604.2 = icmp ult i8 %161, 6
  br i1 %or.cond5.i.i1604.2, label %165, label %162

162:                                              ; preds = %160
  %163 = add i8 %157, -97
  %or.cond8.i.i1605.2 = icmp ult i8 %163, 6
  %164 = add nsw i32 %158, -87
  %spec.select.i.i1606.2 = select i1 %or.cond8.i.i1605.2, i32 %164, i32 -1
  br label %bb.qp

165:                                              ; preds = %160
  %166 = add nsw i32 %158, -55
  br label %bb.qp

167:                                              ; preds = %php_json_hex_to_int.exit.i1607.1
  %168 = add nsw i32 %158, -48
  br label %bb.qp

bb.qp:                                            ; preds = %162, %165, %167
  %.0.i.i1608.2 = phi i32 [ %168, %167 ], [ %166, %165 ], [ %spec.select.i.i1606.2, %162 ]
  %169 = shl nsw i32 %.0.i.i1608.2, 18
  %170 = shl nsw i32 %.0.i.i1608.1, 14
  %171 = shl nsw i32 %.0.i.i1608, 10
  %172 = or i32 %170, %171
  %173 = or i32 %169, %172
  %i.aof = and i32 %173, 1047552
  %i.aog = and i32 %130, 1023
  %i.aoh = or disjoint i32 %i.aof, %i.aog         ; 2 uses
  %i.aoi = add nuw nsw i32 %i.aoh, 65536          ; 2 uses
  %i.aoj = load ptr, ptr %i.adz, align 8, !tbaa !23 ; 2 uses
  %i.aok = ptrtoint ptr %90 to i64
  %i.aol = ptrtoint ptr %i.aoj to i64
  %reass.sub = sub i64 %i.aok, %i.aol
  %i.aom = add i64 %reass.sub, -12                ; 3 uses
  %.not.i1588 = icmp eq i64 %i.aom, 0
  %.pre1757 = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1588, label %php_json_scanner_copy_string.exit1589, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1757, ptr align 1 %i.aoj, i64 %i.aom, i1 false)
  %i.aon = load ptr, ptr %i.aea, align 8, !tbaa !36
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 %i.aom
  br label %php_json_scanner_copy_string.exit1589

php_json_scanner_copy_string.exit1589:            ; preds = %bb.qp, %bb.qq
  %i.aop = phi ptr [ %.pre1757, %bb.qp ], [ %i.aoo, %bb.qq ] ; 2 uses
  %i.aoq = lshr i32 %i.aoi, 18
  %i.aor = trunc nuw nsw i32 %i.aoq to i8
  %i.aos = or disjoint i8 %i.aor, -16
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aop, i64 1
  store ptr %i.aot, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.aos, ptr %i.aop, align 1, !tbaa !20
  %i.aou = lshr i32 %i.aoi, 12
  %i.aov = trunc i32 %i.aou to i8
  %i.aow = and i8 %i.aov, 63
  %i.aox = or disjoint i8 %i.aow, -128
  %i.aoy = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 1
  store ptr %i.aoz, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.aox, ptr %i.aoy, align 1, !tbaa !20
  %i.apa = lshr i32 %i.aoh, 6
  %i.apb = trunc i32 %i.apa to i8
  %i.apc = and i8 %i.apb, 63
  %i.apd = or disjoint i8 %i.apc, -128
  %i.ape = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 1
  store ptr %i.apf, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.apd, ptr %i.ape, align 1, !tbaa !20
  %i.apg = trunc i32 %116 to i8
  %i.aph = and i8 %i.apg, 63
  %i.api = or disjoint i8 %i.aph, -128
  %i.apj = load ptr, ptr %i.aea, align 8, !tbaa !36 ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 1
  store ptr %i.apk, ptr %i.aea, align 8, !tbaa !36
  store i8 %i.api, ptr %i.apj, align 1, !tbaa !20
  %i.apl = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.apl, ptr %i.adz, align 8, !tbaa !23
  %i.apm = load i32, ptr %i.aeb, align 8, !tbaa !25
  %.not1434 = icmp eq i32 %i.apm, 0
  br i1 %.not1434, label %.backedge1627.backedge, label %.preheader.loopexit

php_json_scanner_copy_string.exit:                ; preds = %bb.al, %bb.ak
  %i.apn = phi ptr [ %i.bg, %bb.al ], [ %i.ba, %bb.ak ] ; 4 uses
  store ptr %i.apn, ptr %i.c, align 8, !tbaa !21
  %i.apo = load i8, ptr %i.apn, align 1, !tbaa !20 ; 3 uses
  %i.app = icmp ult i8 %i.apo, 94
  br i1 %i.app, label %.lr.ph1987, label %.lr.ph.split._crit_edge

.thread1599:                                      ; preds = %bb.di, %bb.dg, %.loopexit1638, %bb.bg, %bb.ai, %bb.ah, %bb.an, %bb.dd, %.loopexit1629, %bb.dz, %bb.eb, %.loopexit1630, %.thread1603, %bb.bl, %bb.bk, %bb.cq, %bb.cp, %bb.cr, %bb.ap, %.loopexit1633, %bb.bn, %bb.be, %bb.bf, %bb.az, %zend_string_alloc.exit, %.critedge, %bb.hu, %bb.hv, %bb.mn, %bb.mo, %.thread1609
  %.15.ph = phi i32 [ 266, %.thread1609 ], [ 263, %bb.mo ], [ 263, %bb.mn ], [ 263, %bb.hv ], [ 263, %bb.hu ], [ 261, %.critedge ], [ 262, %bb.az ], [ 263, %zend_string_alloc.exit ], [ 91, %bb.bf ], [ 58, %bb.be ], [ 266, %bb.bn ], [ 262, %.loopexit1633 ], [ 44, %bb.ap ], [ 260, %bb.cr ], [ 258, %bb.cp ], [ 259, %bb.cq ], [ 123, %bb.bk ], [ 125, %bb.bl ], [ 263, %bb.di ], [ 266, %.thread1603 ], [ 93, %bb.bg ], [ 266, %.loopexit1638 ], [ 266, %.loopexit1630 ], [ 266, %bb.eb ], [ 266, %bb.dz ], [ 266, %.loopexit1629 ], [ 264, %bb.dg ], [ 266, %bb.dd ], [ 266, %bb.an ], [ 265, %bb.ah ], [ 266, %bb.ai ]
  ret i32 %.15.ph
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare double @zend_strtod(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @php_json_ucs2_to_int(ptr nofree readonly captures(none) %.0.val, i32 noundef range(i32 2, 5) %0) unnamed_addr #6 {
bb.a:
  %.03.i = getelementptr inbounds i8, ptr %.0.val, i64 -1
  %i.a = load i8, ptr %.03.i, align 1, !tbaa !20  ; 4 uses
  %i.b = zext i8 %i.a to i32                      ; 3 uses
  %i.c = add i8 %i.a, -48
  %or.cond.i.i = icmp ult i8 %i.c, 10
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -48
  br label %php_json_hex_to_int.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = add i8 %i.a, -65
  %or.cond5.i.i = icmp ult i8 %i.e, 6
  br i1 %or.cond5.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.b, -55
  br label %php_json_hex_to_int.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = add i8 %i.a, -97
  %or.cond8.i.i = icmp ult i8 %i.g, 6
  %i.h = add nsw i32 %i.b, -87
  %spec.select.i.i = select i1 %or.cond8.i.i, i32 %i.h, i32 -1
  br label %php_json_hex_to_int.exit.i

php_json_hex_to_int.exit.i:                       ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %.03.i.1 = getelementptr inbounds i8, ptr %.0.val, i64 -2
  %i.i = load i8, ptr %.03.i.1, align 1, !tbaa !20 ; 4 uses
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = add i8 %i.i, -48
  %or.cond.i.i.1 = icmp ult i8 %i.k, 10
  br i1 %or.cond.i.i.1, label %bb.i, label %bb.f

bb.f:                                             ; preds = %php_json_hex_to_int.exit.i
  %i.l = add i8 %i.i, -65
  %or.cond5.i.i.1 = icmp ult i8 %i.l, 6
  br i1 %or.cond5.i.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = add i8 %i.i, -97
  %or.cond8.i.i.1 = icmp ult i8 %i.m, 6
  %i.n = add nsw i32 %i.j, -87
  %spec.select.i.i.1 = select i1 %or.cond8.i.i.1, i32 %i.n, i32 -1
  br label %php_json_hex_to_int.exit.i.1

bb.h:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.j, -55
  br label %php_json_hex_to_int.exit.i.1

bb.i:                                             ; preds = %php_json_hex_to_int.exit.i
  %i.p = add nsw i32 %i.j, -48
  br label %php_json_hex_to_int.exit.i.1

php_json_hex_to_int.exit.i.1:                     ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.i.1 = phi i32 [ %i.p, %bb.i ], [ %i.o, %bb.h ], [ %spec.select.i.i.1, %bb.g ]
  %i.q = shl nsw i32 %.0.i.i.1, 4
  %i.r = or i32 %i.q, %.0.i.i                     ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %0, 2
  br i1 %exitcond.not.i.1, label %php_json_ucs2_to_int_ex.exit, label %bb.j

bb.j:                                             ; preds = %php_json_hex_to_int.exit.i.1
  %.03.i.2 = getelementptr inbounds i8, ptr %.0.val, i64 -3
  %i.s = load i8, ptr %.03.i.2, align 1, !tbaa !20 ; 4 uses
  %i.t = zext i8 %i.s to i32                      ; 3 uses
  %i.u = add i8 %i.s, -48
  %or.cond.i.i.2 = icmp ult i8 %i.u, 10
  br i1 %or.cond.i.i.2, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add i8 %i.s, -65
  %or.cond5.i.i.2 = icmp ult i8 %i.v, 6
  br i1 %or.cond5.i.i.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = add i8 %i.s, -97
  %or.cond8.i.i.2 = icmp ult i8 %i.w, 6
  %i.x = add nsw i32 %i.t, -87
  %spec.select.i.i.2 = select i1 %or.cond8.i.i.2, i32 %i.x, i32 -1
  br label %php_json_hex_to_int.exit.i.2

bb.m:                                             ; preds = %bb.k
  %i.y = add nsw i32 %i.t, -55
  br label %php_json_hex_to_int.exit.i.2

bb.n:                                             ; preds = %bb.j
  %i.z = add nsw i32 %i.t, -48
  br label %php_json_hex_to_int.exit.i.2

php_json_hex_to_int.exit.i.2:                     ; preds = %bb.n, %bb.m, %bb.l
  %.0.i.i.2 = phi i32 [ %i.z, %bb.n ], [ %i.y, %bb.m ], [ %spec.select.i.i.2, %bb.l ]
  %i.aa = shl nsw i32 %.0.i.i.2, 8
  %i.ab = or i32 %i.aa, %i.r                      ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %0, 3
  br i1 %exitcond.not.i.2, label %php_json_ucs2_to_int_ex.exit, label %bb.o

bb.o:                                             ; preds = %php_json_hex_to_int.exit.i.2
  %.03.i.3 = getelementptr inbounds i8, ptr %.0.val, i64 -4
  %i.ac = load i8, ptr %.03.i.3, align 1, !tbaa !20 ; 4 uses
  %i.ad = zext i8 %i.ac to i32                    ; 3 uses
  %i.ae = add i8 %i.ac, -48
  %or.cond.i.i.3 = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i.i.3, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = add i8 %i.ac, -65
  %or.cond5.i.i.3 = icmp ult i8 %i.af, 6
  br i1 %or.cond5.i.i.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = add i8 %i.ac, -97
  %or.cond8.i.i.3 = icmp ult i8 %i.ag, 6
  %i.ah = add nsw i32 %i.ad, -87
  %spec.select.i.i.3 = select i1 %or.cond8.i.i.3, i32 %i.ah, i32 -1
  br label %php_json_hex_to_int.exit.i.3

bb.r:                                             ; preds = %bb.p
  %i.ai = add nsw i32 %i.ad, -55
  br label %php_json_hex_to_int.exit.i.3

bb.s:                                             ; preds = %bb.o
  %i.aj = add nsw i32 %i.ad, -48
  br label %php_json_hex_to_int.exit.i.3

php_json_hex_to_int.exit.i.3:                     ; preds = %bb.s, %bb.r, %bb.q
  %.0.i.i.3 = phi i32 [ %i.aj, %bb.s ], [ %i.ai, %bb.r ], [ %spec.select.i.i.3, %bb.q ]
  %i.ak = shl nsw i32 %.0.i.i.3, 12
  %i.al = or i32 %i.ak, %i.ab
  br label %php_json_ucs2_to_int_ex.exit

php_json_ucs2_to_int_ex.exit:                     ; preds = %php_json_hex_to_int.exit.i.3, %php_json_hex_to_int.exit.i.2, %php_json_hex_to_int.exit.i.1
  %.lcssa = phi i32 [ %i.al, %php_json_hex_to_int.exit.i.3 ], [ %i.r, %php_json_hex_to_int.exit.i.1 ], [ %i.ab, %php_json_hex_to_int.exit.i.2 ]
  ret i32 %.lcssa
}

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_php_json_scanner", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !16, i64 56, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!17 = !{!13, !14, i64 16}
!18 = !{!13, !9, i64 80}
!19 = !{!13, !9, i64 76}
!20 = !{!10, !10, i64 0}
!21 = !{!13, !14, i64 8}
!22 = !{!13, !9, i64 84}
!23 = !{!13, !14, i64 40}
!24 = !{!13, !9, i64 72}
!25 = !{!13, !9, i64 88}
!26 = !{!13, !9, i64 92}
!27 = !{!13, !14, i64 24}
!28 = !{!29, !9, i64 0}
!29 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!30 = !{!31, !32, i64 8}
!31 = !{!"_zend_string", !29, i64 0, !32, i64 8, !32, i64 16, !10, i64 24}
!32 = !{!"long", !10, i64 0}
!33 = !{!31, !32, i64 16}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTS12_zend_string", !15, i64 0}
!36 = !{!13, !14, i64 48}
end_hunk_2
