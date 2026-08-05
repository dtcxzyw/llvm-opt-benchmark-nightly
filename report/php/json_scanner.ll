inline.NumInlined: 20
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
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
  %i.qp = phi ptr [ %i.afg, %.preheader ], [ %.be1992, %.backedge.backedge ] ; 41 uses
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
  store ptr %i.qy, ptr %i.afh, align 8, !tbaa !27
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
  %i.rg = load ptr, ptr %i.afj, align 8, !tbaa !23 ; 2 uses
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = xor i64 %i.ri, -1
  %i.rk = add i64 %i.rj, %i.rh                    ; 3 uses
  %.not.i = icmp eq i64 %i.rk, 0
  br i1 %.not.i, label %.thread1599, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.rl = load ptr, ptr %i.afk, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rl, ptr align 1 %i.rg, i64 %i.rk, i1 false)
  %i.rm = load ptr, ptr %i.afk, align 8, !tbaa !36
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rk
  store ptr %i.rn, ptr %i.afk, align 8, !tbaa !36
  br label %.thread1599

bb.hw:                                            ; preds = %bb.hl
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qp, i64 1 ; 6 uses
  store ptr %i.ro, ptr %0, align 8, !tbaa !12
  store ptr %i.ro, ptr %i.afh, align 8, !tbaa !27
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !20
  %i.rq = icmp eq i8 %i.rp, 117
  br i1 %i.rq, label %bb.ir, label %bb.hx

bb.hx:                                            ; preds = %.thread1607, %bb.hw
  %i.rr = load ptr, ptr %i.afj, align 8, !tbaa !23 ; 2 uses
  %i.rs = ptrtoint ptr %i.ro to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = xor i64 %i.rt, -1
  %i.rv = add i64 %i.ru, %i.rs                    ; 3 uses
  %.not.i1518 = icmp eq i64 %i.rv, 0
  br i1 %.not.i1518, label %php_json_scanner_copy_string.exit1519, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.rw = load ptr, ptr %i.afk, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rw, ptr align 1 %i.rr, i64 %i.rv, i1 false)
  %i.rx = load ptr, ptr %i.afk, align 8, !tbaa !36
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rv
  store ptr %i.ry, ptr %i.afk, align 8, !tbaa !36
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
  %i.sc = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  store ptr %i.sd, ptr %i.afk, align 8, !tbaa !36
  store i8 %.01298, ptr %i.sc, align 1, !tbaa !20
  %i.se = load ptr, ptr %0, align 8, !tbaa !12
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 1 ; 4 uses
  store ptr %i.sf, ptr %0, align 8, !tbaa !12
  store ptr %i.sf, ptr %i.afj, align 8, !tbaa !23
  %i.sg = load i32, ptr %i.afi, align 8, !tbaa !25
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
  %i.sj = load i32, ptr %i.afi, align 8, !tbaa !25
  %.not1446 = icmp eq i32 %i.sj, 0
  br i1 %.not1446, label %.backedge.backedge, label %bb.ig

.backedge.backedge:                               ; preds = %bb.if, %bb.ij, %bb.ht, %php_json_scanner_copy_string.exit1523, %php_json_scanner_copy_string.exit1537, %php_json_scanner_copy_string.exit1551, %php_json_scanner_copy_string.exit1553, %select.unfold1602
  %.be1992 = phi ptr [ %i.si, %bb.if ], [ %i.ta, %bb.ij ], [ %i.re, %bb.ht ], [ %i.xg, %php_json_scanner_copy_string.exit1523 ], [ %i.zb, %php_json_scanner_copy_string.exit1537 ], [ %i.abm, %php_json_scanner_copy_string.exit1551 ], [ %i.adw, %php_json_scanner_copy_string.exit1553 ], [ %i.sf, %select.unfold1602 ]
  br label %.backedge

bb.ig:                                            ; preds = %bb.if
  %i.sk = load ptr, ptr %i.afj, align 8, !tbaa !23 ; 2 uses
  %i.sl = ptrtoint ptr %i.si to i64
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = xor i64 %i.sm, -1
  %i.so = add i64 %i.sn, %i.sl                    ; 3 uses
  %.not.i1520 = icmp eq i64 %i.so, 0
  br i1 %.not.i1520, label %php_json_scanner_copy_string.exit1521, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.sp = load ptr, ptr %i.afk, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sp, ptr align 1 %i.sk, i64 %i.so, i1 false)
  %i.sq = load ptr, ptr %i.afk, align 8, !tbaa !36
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.so
  store ptr %i.sr, ptr %i.afk, align 8, !tbaa !36
  br label %php_json_scanner_copy_string.exit1521

php_json_scanner_copy_string.exit1521:            ; preds = %bb.ig, %bb.ih
  %i.ss = load i32, ptr %i.afl, align 8, !tbaa !18
  %i.st = and i32 %i.ss, 2097152
  %.not1447 = icmp eq i32 %i.st, 0
  br i1 %.not1447, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %php_json_scanner_copy_string.exit1521
  %i.su = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  store ptr %i.sv, ptr %i.afk, align 8, !tbaa !36
  store i8 -17, ptr %i.su, align 1, !tbaa !20
  %i.sw = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 1
  store ptr %i.sx, ptr %i.afk, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@php_json_scan:bb.a

bb.iz:                                            ; preds = %bb.ix
  %i.tu = icmp eq i8 %i.tm, 100
  br i1 %i.tu, label %bb.jn, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.tv = icmp ult i8 %i.tm, 103
  br i1 %i.tv, label %bb.jk, label %.thread1607

.thread1607:                                      ; preds = %bb.mj, %bb.mg, %bb.md, %bb.kr, %bb.ko, %bb.kl, %bb.ki, %bb.kf, %bb.kc, %bb.jz, %bb.jw, %bb.jr, %bb.jm, %bb.mb, %bb.iy, %bb.mi, %bb.mf, %bb.mc, %bb.ma, %bb.lz, %bb.kq, %bb.kn, %bb.kk, %bb.kh, %bb.ke, %bb.kb, %bb.jy, %bb.jv, %bb.jt, %bb.jq, %bb.jo, %bb.jl, %bb.jj, %bb.ji, %bb.je, %bb.ja, %bb.iv, %bb.it
  store ptr %i.ro, ptr %0, align 8, !tbaa !12
  br label %bb.hx

bb.jb:                                            ; preds = %bb.jc, %bb.in, %bb.im, %bb.il
  %i.tw = phi ptr [ %i.ua, %bb.jc ], [ %i.qy, %bb.in ], [ %i.qy, %bb.im ], [ %i.qy, %bb.il ]
  %i.tx = phi ptr [ %i.ub, %bb.jc ], [ %i.qy, %bb.in ], [ %i.qy, %bb.im ], [ %i.qy, %bb.il ]
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 1 ; 3 uses
  store ptr %i.ty, ptr %0, align 8, !tbaa !12
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !20
  %or.cond202 = icmp slt i8 %i.tz, -64
  br i1 %or.cond202, label %bb.ht, label %.sink.split1945

bb.jc:                                            ; preds = %bb.iq, %bb.ip, %bb.io
  %i.ua = phi ptr [ %i.tj, %bb.iq ], [ %i.th, %bb.ip ], [ %i.te, %bb.io ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.qp, i64 2 ; 3 uses
  store ptr %i.ub, ptr %0, align 8, !tbaa !12
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !20
  %or.cond205 = icmp slt i8 %i.uc, -64
  br i1 %or.cond205, label %bb.jb, label %.sink.split1945

bb.jd:                                            ; preds = %bb.iu
  %i.ud = getelementptr inbounds nuw i8, ptr %i.qp, i64 3 ; 2 uses
  store ptr %i.ud, ptr %0, align 8, !tbaa !12
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !20  ; 7 uses
  %i.uf = icmp ult i8 %i.ue, 58
  br i1 %i.uf, label %bb.je, label %bb.jh

bb.je:                                            ; preds = %bb.jd
  %i.ug = icmp samesign ult i8 %i.ue, 48
  br i1 %i.ug, label %.thread1607, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.uh = icmp eq i8 %i.ue, 48
  br i1 %i.uh, label %bb.js, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.ui = icmp samesign ult i8 %i.ue, 56
  br i1 %i.ui, label %bb.jx, label %bb.ka

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
  br i1 %or.cond241, label %php_json_hex_to_int.exit.i.i.1.a, label %.thread1607

bb.ki:                                            ; preds = %bb.kg
  %i.we = icmp ult i8 %i.wb, 71
  %i.wf = add i8 %i.wb, -97
  %or.cond244 = icmp ult i8 %i.wf, 6
  %or.cond1477 = or i1 %i.we, %or.cond244
  br i1 %or.cond1477, label %php_json_hex_to_int.exit.i.i.1.a, label %.thread1607

bb.kj:                                            ; preds = %bb.jy, %bb.jz, %bb.jw, %bb.jv
  %i.wg = getelementptr inbounds nuw i8, ptr %i.qp, i64 5 ; 2 uses
  store ptr %i.wg, ptr %0, align 8, !tbaa !12
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !20  ; 4 uses
  %i.wi = icmp ult i8 %i.wh, 65
  br i1 %i.wi, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.wj = add nsw i8 %i.wh, -48
  %or.cond247 = icmp ult i8 %i.wj, 10
  br i1 %or.cond247, label %bb.kt, label %.thread1607

bb.kl:                                            ; preds = %bb.kj
  %i.wk = icmp ult i8 %i.wh, 71
  %i.wl = add i8 %i.wh, -97
  %or.cond250 = icmp ult i8 %i.wl, 6
  %or.cond1478 = or i1 %i.wk, %or.cond250
  br i1 %or.cond1478, label %bb.kt, label %.thread1607

bb.km:                                            ; preds = %bb.kb, %bb.kc
  %i.wm = getelementptr inbounds nuw i8, ptr %i.qp, i64 5 ; 2 uses
  store ptr %i.wm, ptr %0, align 8, !tbaa !12
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !20  ; 4 uses
  %i.wo = icmp ult i8 %i.wn, 65
  br i1 %i.wo, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.wp = add nsw i8 %i.wn, -48
  %or.cond253 = icmp ult i8 %i.wp, 10
  br i1 %or.cond253, label %bb.lh, label %.thread1607

bb.ko:                                            ; preds = %bb.km
  %i.wq = icmp ult i8 %i.wn, 71
  %i.wr = add i8 %i.wn, -97
  %or.cond256 = icmp ult i8 %i.wr, 6
  %or.cond1479 = or i1 %i.wq, %or.cond256
  br i1 %or.cond1479, label %bb.lh, label %.thread1607

bb.kp:                                            ; preds = %bb.ke, %bb.kf
  %i.ws = getelementptr inbounds nuw i8, ptr %i.qp, i64 5 ; 2 uses
  store ptr %i.ws, ptr %0, align 8, !tbaa !12
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !20  ; 4 uses
  %i.wu = icmp ult i8 %i.wt, 65
  br i1 %i.wu, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.wv = add nsw i8 %i.wt, -48
  %or.cond259 = icmp ult i8 %i.wv, 10
  br i1 %or.cond259, label %bb.lz, label %.thread1607

bb.kr:                                            ; preds = %bb.kp
  %i.ww = icmp ult i8 %i.wt, 71
  %i.wx = add i8 %i.wt, -97
  %or.cond262 = icmp ult i8 %i.wx, 6
  %or.cond1480 = or i1 %i.ww, %or.cond262
  br i1 %or.cond1480, label %bb.lz, label %.thread1607

php_json_hex_to_int.exit.i.i.1.a:                 ; preds = %bb.kh, %bb.ki
  %1 = getelementptr inbounds nuw i8, ptr %i.qp, i64 6 ; 3 uses
  store ptr %1, ptr %0, align 8, !tbaa !12
  %2 = tail call fastcc i32 @php_json_ucs2_to_int(ptr nonnull %1, i32 noundef 2)
  %i.wy = load ptr, ptr %i.afj, align 8, !tbaa !23 ; 2 uses
  %i.wz = ptrtoint ptr %1 to i64
  %i.xa = ptrtoint ptr %i.wy to i64
  %reass.sub1625 = sub i64 %i.wz, %i.xa
  %i.xb = add i64 %reass.sub1625, -6              ; 3 uses
  %.not.i1522 = icmp eq i64 %i.xb, 0
  %.pre1765 = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1522, label %php_json_scanner_copy_string.exit1523, label %bb.ks

bb.ks:                                            ; preds = %php_json_hex_to_int.exit.i.i.1.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1765, ptr align 1 %i.wy, i64 %i.xb, i1 false)
  %i.xc = load ptr, ptr %i.afk, align 8, !tbaa !36
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xb
  br label %php_json_scanner_copy_string.exit1523

php_json_scanner_copy_string.exit1523:            ; preds = %php_json_hex_to_int.exit.i.i.1.a, %bb.ks
  %i.xe = phi ptr [ %.pre1765, %php_json_hex_to_int.exit.i.i.1.a ], [ %i.xd, %bb.ks ] ; 2 uses
  %3 = trunc i32 %2 to i8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 1
  store ptr %i.xf, ptr %i.afk, align 8, !tbaa !36
  store i8 %3, ptr %i.xe, align 1, !tbaa !20
  %i.xg = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  store ptr %i.xg, ptr %i.afj, align 8, !tbaa !23
  %i.xh = load i32, ptr %i.afi, align 8, !tbaa !25
  %.not1445 = icmp eq i32 %i.xh, 0
  br i1 %.not1445, label %.preheader1626, label %.backedge.backedge

bb.kt:                                            ; preds = %bb.kk, %bb.kl
  %i.xi = getelementptr inbounds nuw i8, ptr %i.qp, i64 6 ; 2 uses
  store ptr %i.xi, ptr %0, align 8, !tbaa !12
  %.03.i.i1527 = getelementptr inbounds nuw i8, ptr %i.qp, i64 5
  %i.xj = load i8, ptr %.03.i.i1527, align 1, !tbaa !20 ; 4 uses
  %i.xk = zext i8 %i.xj to i32                    ; 3 uses
  %i.xl = add i8 %i.xj, -48
  %or.cond.i.i.i1528 = icmp ult i8 %i.xl, 10
  br i1 %or.cond.i.i.i1528, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.xm = add nsw i32 %i.xk, -48
  br label %php_json_hex_to_int.exit.i.i1532

bb.kv:                                            ; preds = %bb.kt
  %i.xn = add i8 %i.xj, -65
  %or.cond5.i.i.i1529 = icmp ult i8 %i.xn, 6
  br i1 %or.cond5.i.i.i1529, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.xo = add nsw i32 %i.xk, -55
  br label %php_json_hex_to_int.exit.i.i1532

bb.kx:                                            ; preds = %bb.kv
  %i.xp = add i8 %i.xj, -97
  %or.cond8.i.i.i1530 = icmp ult i8 %i.xp, 6
  %i.xq = add nsw i32 %i.xk, -87
  %spec.select.i.i.i1531 = select i1 %or.cond8.i.i.i1530, i32 %i.xq, i32 -1
  br label %php_json_hex_to_int.exit.i.i1532

php_json_hex_to_int.exit.i.i1532:                 ; preds = %bb.kx, %bb.kw, %bb.ku
  %.0.i.i.i1533 = phi i32 [ %i.xm, %bb.ku ], [ %i.xo, %bb.kw ], [ %spec.select.i.i.i1531, %bb.kx ]
  %.03.i.i1527.1 = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.xr = load i8, ptr %.03.i.i1527.1, align 1, !tbaa !20 ; 4 uses
  %i.xs = zext i8 %i.xr to i32                    ; 3 uses
  %i.xt = add i8 %i.xr, -48
  %or.cond.i.i.i1528.1 = icmp ult i8 %i.xt, 10
  br i1 %or.cond.i.i.i1528.1, label %bb.lb, label %bb.ky

bb.ky:                                            ; preds = %php_json_hex_to_int.exit.i.i1532
  %i.xu = add i8 %i.xr, -65
  %or.cond5.i.i.i1529.1 = icmp ult i8 %i.xu, 6
  br i1 %or.cond5.i.i.i1529.1, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.xv = add i8 %i.xr, -97
  %or.cond8.i.i.i1530.1 = icmp ult i8 %i.xv, 6
  %i.xw = add nsw i32 %i.xs, -87
  %spec.select.i.i.i1531.1 = select i1 %or.cond8.i.i.i1530.1, i32 %i.xw, i32 -1
  br label %php_json_hex_to_int.exit.i.i1532.1

bb.la:                                            ; preds = %bb.ky
  %i.xx = add nsw i32 %i.xs, -55
  br label %php_json_hex_to_int.exit.i.i1532.1

bb.lb:                                            ; preds = %php_json_hex_to_int.exit.i.i1532
  %i.xy = add nsw i32 %i.xs, -48
  br label %php_json_hex_to_int.exit.i.i1532.1

php_json_hex_to_int.exit.i.i1532.1:               ; preds = %bb.lb, %bb.la, %bb.kz
  %.0.i.i.i1533.1 = phi i32 [ %i.xy, %bb.lb ], [ %i.xx, %bb.la ], [ %spec.select.i.i.i1531.1, %bb.kz ]
  %i.xz = shl nsw i32 %.0.i.i.i1533.1, 4
  %i.ya = or i32 %i.xz, %.0.i.i.i1533             ; 2 uses
  %.03.i.i1527.2 = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
  %i.yb = load i8, ptr %.03.i.i1527.2, align 1, !tbaa !20 ; 4 uses
  %i.yc = zext i8 %i.yb to i32                    ; 3 uses
  %i.yd = add i8 %i.yb, -48
  %or.cond.i.i.i1528.2 = icmp ult i8 %i.yd, 10
  br i1 %or.cond.i.i.i1528.2, label %bb.lf, label %bb.lc

bb.lc:                                            ; preds = %php_json_hex_to_int.exit.i.i1532.1
  %i.ye = add i8 %i.yb, -65
  %or.cond5.i.i.i1529.2 = icmp ult i8 %i.ye, 6
  br i1 %or.cond5.i.i.i1529.2, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.yf = add i8 %i.yb, -97
  %or.cond8.i.i.i1530.2 = icmp ult i8 %i.yf, 6
  %i.yg = add nsw i32 %i.yc, -87
  %spec.select.i.i.i1531.2 = select i1 %or.cond8.i.i.i1530.2, i32 %i.yg, i32 -1
  br label %php_json_hex_to_int.exit.i.i1532.2

bb.le:                                            ; preds = %bb.lc
  %i.yh = add nsw i32 %i.yc, -55
  br label %php_json_hex_to_int.exit.i.i1532.2

bb.lf:                                            ; preds = %php_json_hex_to_int.exit.i.i1532.1
  %i.yi = add nsw i32 %i.yc, -48
  br label %php_json_hex_to_int.exit.i.i1532.2

php_json_hex_to_int.exit.i.i1532.2:               ; preds = %bb.lf, %bb.le, %bb.ld
  %.0.i.i.i1533.2 = phi i32 [ %i.yi, %bb.lf ], [ %i.yh, %bb.le ], [ %spec.select.i.i.i1531.2, %bb.ld ]
  %i.yj = shl nsw i32 %.0.i.i.i1533.2, 8
  %i.yk = or i32 %i.yj, %i.ya
  %i.yl = load ptr, ptr %i.afj, align 8, !tbaa !23 ; 2 uses
  %i.ym = ptrtoint ptr %i.xi to i64
  %i.yn = ptrtoint ptr %i.yl to i64
  %reass.sub1624 = sub i64 %i.ym, %i.yn
  %i.yo = add i64 %reass.sub1624, -6              ; 3 uses
  %.not.i1536 = icmp eq i64 %i.yo, 0
  %.pre1764 = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1536, label %php_json_scanner_copy_string.exit1537, label %bb.lg

bb.lg:                                            ; preds = %php_json_hex_to_int.exit.i.i1532.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1764, ptr align 1 %i.yl, i64 %i.yo, i1 false)
  %i.yp = load ptr, ptr %i.afk, align 8, !tbaa !36
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.yo
  br label %php_json_scanner_copy_string.exit1537

php_json_scanner_copy_string.exit1537:            ; preds = %php_json_hex_to_int.exit.i.i1532.2, %bb.lg
  %i.yr = phi ptr [ %.pre1764, %php_json_hex_to_int.exit.i.i1532.2 ], [ %i.yq, %bb.lg ] ; 2 uses
  %i.ys = lshr i32 %i.yk, 6
  %i.yt = trunc i32 %i.ys to i8
  %i.yu = or i8 %i.yt, -64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 1
  store ptr %i.yv, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.yu, ptr %i.yr, align 1, !tbaa !20
  %i.yw = trunc i32 %i.ya to i8
  %i.yx = and i8 %i.yw, 63
  %i.yy = or disjoint i8 %i.yx, -128
  %i.yz = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1
  store ptr %i.za, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.yy, ptr %i.yz, align 1, !tbaa !20
  %i.zb = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  store ptr %i.zb, ptr %i.afj, align 8, !tbaa !23
  %i.zc = load i32, ptr %i.afi, align 8, !tbaa !25
  %.not1444 = icmp eq i32 %i.zc, 0
  br i1 %.not1444, label %.preheader1626, label %.backedge.backedge

bb.lh:                                            ; preds = %bb.kn, %bb.ko
  %i.zd = getelementptr inbounds nuw i8, ptr %i.qp, i64 6 ; 2 uses
  store ptr %i.zd, ptr %0, align 8, !tbaa !12
  %.03.i.i1541 = getelementptr inbounds nuw i8, ptr %i.qp, i64 5
  %i.ze = load i8, ptr %.03.i.i1541, align 1, !tbaa !20 ; 4 uses
  %i.zf = zext i8 %i.ze to i32                    ; 3 uses
  %i.zg = add i8 %i.ze, -48
  %or.cond.i.i.i1542 = icmp ult i8 %i.zg, 10
  br i1 %or.cond.i.i.i1542, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.zh = add nsw i32 %i.zf, -48
  br label %php_json_hex_to_int.exit.i.i1546

bb.lj:                                            ; preds = %bb.lh
  %i.zi = add i8 %i.ze, -65
  %or.cond5.i.i.i1543 = icmp ult i8 %i.zi, 6
  br i1 %or.cond5.i.i.i1543, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.zj = add nsw i32 %i.zf, -55
  br label %php_json_hex_to_int.exit.i.i1546

bb.ll:                                            ; preds = %bb.lj
  %i.zk = add i8 %i.ze, -97
  %or.cond8.i.i.i1544 = icmp ult i8 %i.zk, 6
  %i.zl = add nsw i32 %i.zf, -87
  %spec.select.i.i.i1545 = select i1 %or.cond8.i.i.i1544, i32 %i.zl, i32 -1
  br label %php_json_hex_to_int.exit.i.i1546

php_json_hex_to_int.exit.i.i1546:                 ; preds = %bb.ll, %bb.lk, %bb.li
  %.0.i.i.i1547 = phi i32 [ %i.zh, %bb.li ], [ %i.zj, %bb.lk ], [ %spec.select.i.i.i1545, %bb.ll ]
  %.03.i.i1541.1 = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.zm = load i8, ptr %.03.i.i1541.1, align 1, !tbaa !20 ; 4 uses
  %i.zn = zext i8 %i.zm to i32                    ; 3 uses
  %i.zo = add i8 %i.zm, -48
  %or.cond.i.i.i1542.1 = icmp ult i8 %i.zo, 10
  br i1 %or.cond.i.i.i1542.1, label %bb.lp, label %bb.lm

bb.lm:                                            ; preds = %php_json_hex_to_int.exit.i.i1546
  %i.zp = add i8 %i.zm, -65
  %or.cond5.i.i.i1543.1 = icmp ult i8 %i.zp, 6
  br i1 %or.cond5.i.i.i1543.1, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.zq = add i8 %i.zm, -97
  %or.cond8.i.i.i1544.1 = icmp ult i8 %i.zq, 6
  %i.zr = add nsw i32 %i.zn, -87
  %spec.select.i.i.i1545.1 = select i1 %or.cond8.i.i.i1544.1, i32 %i.zr, i32 -1
  br label %php_json_hex_to_int.exit.i.i1546.1

bb.lo:                                            ; preds = %bb.lm
  %i.zs = add nsw i32 %i.zn, -55
  br label %php_json_hex_to_int.exit.i.i1546.1

bb.lp:                                            ; preds = %php_json_hex_to_int.exit.i.i1546
  %i.zt = add nsw i32 %i.zn, -48
  br label %php_json_hex_to_int.exit.i.i1546.1

php_json_hex_to_int.exit.i.i1546.1:               ; preds = %bb.lp, %bb.lo, %bb.ln
  %.0.i.i.i1547.1 = phi i32 [ %i.zt, %bb.lp ], [ %i.zs, %bb.lo ], [ %spec.select.i.i.i1545.1, %bb.ln ]
  %i.zu = shl nsw i32 %.0.i.i.i1547.1, 4
  %i.zv = or i32 %i.zu, %.0.i.i.i1547             ; 2 uses
  %.03.i.i1541.2 = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
end_hunk_1
begin_hunk_2_@php_json_scan:bb.a
  %i.aam = add nsw i32 %i.aah, -55
  br label %php_json_hex_to_int.exit.i.i1546.3

bb.lx:                                            ; preds = %php_json_hex_to_int.exit.i.i1546.2
  %i.aan = add nsw i32 %i.aah, -48
  br label %php_json_hex_to_int.exit.i.i1546.3

php_json_hex_to_int.exit.i.i1546.3:               ; preds = %bb.lx, %bb.lw, %bb.lv
  %.0.i.i.i1547.3 = phi i32 [ %i.aan, %bb.lx ], [ %i.aam, %bb.lw ], [ %spec.select.i.i.i1545.3, %bb.lv ]
  %i.aao = shl nsw i32 %.0.i.i.i1547.3, 12
  %i.aap = or i32 %i.aao, %i.aaf
  %i.aaq = load ptr, ptr %i.afj, align 8, !tbaa !23 ; 2 uses
  %i.aar = ptrtoint ptr %i.zd to i64
  %i.aas = ptrtoint ptr %i.aaq to i64
  %reass.sub1623 = sub i64 %i.aar, %i.aas
  %i.aat = add i64 %reass.sub1623, -6             ; 3 uses
  %.not.i1550 = icmp eq i64 %i.aat, 0
  %.pre1763 = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1550, label %php_json_scanner_copy_string.exit1551, label %bb.ly

bb.ly:                                            ; preds = %php_json_hex_to_int.exit.i.i1546.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1763, ptr align 1 %i.aaq, i64 %i.aat, i1 false)
  %i.aau = load ptr, ptr %i.afk, align 8, !tbaa !36
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aat
  br label %php_json_scanner_copy_string.exit1551

php_json_scanner_copy_string.exit1551:            ; preds = %php_json_hex_to_int.exit.i.i1546.3, %bb.ly
  %i.aaw = phi ptr [ %.pre1763, %php_json_hex_to_int.exit.i.i1546.3 ], [ %i.aav, %bb.ly ] ; 2 uses
  %i.aax = lshr i32 %i.aap, 12
  %i.aay = trunc i32 %i.aax to i8
  %i.aaz = or i8 %i.aay, -32
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1
  store ptr %i.aba, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.aaz, ptr %i.aaw, align 1, !tbaa !20
  %i.abb = lshr i32 %i.aaf, 6
  %i.abc = trunc i32 %i.abb to i8
  %i.abd = and i8 %i.abc, 63
  %i.abe = or disjoint i8 %i.abd, -128
  %i.abf = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 1
  store ptr %i.abg, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.abe, ptr %i.abf, align 1, !tbaa !20
  %i.abh = trunc i32 %i.zv to i8
  %i.abi = and i8 %i.abh, 63
  %i.abj = or disjoint i8 %i.abi, -128
  %i.abk = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 1
  store ptr %i.abl, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.abj, ptr %i.abk, align 1, !tbaa !20
  %i.abm = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.abm, ptr %i.afj, align 8, !tbaa !23
  %i.abn = load i32, ptr %i.afi, align 8, !tbaa !25
  %.not1443 = icmp eq i32 %i.abn, 0
  br i1 %.not1443, label %.preheader1626, label %.backedge.backedge

bb.lz:                                            ; preds = %bb.kq, %bb.kr
  %i.abo = getelementptr inbounds nuw i8, ptr %i.qp, i64 6 ; 2 uses
  store ptr %i.abo, ptr %0, align 8, !tbaa !12
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !20
  %.not1440 = icmp eq i8 %i.abp, 92
  br i1 %.not1440, label %bb.ma, label %.thread1607

bb.ma:                                            ; preds = %bb.lz
  %i.abq = getelementptr inbounds nuw i8, ptr %i.qp, i64 7 ; 2 uses
  store ptr %i.abq, ptr %0, align 8, !tbaa !12
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !20
  %.not1441 = icmp eq i8 %i.abr, 117
  br i1 %.not1441, label %bb.mb, label %.thread1607

bb.mb:                                            ; preds = %bb.ma
  %i.abs = getelementptr inbounds nuw i8, ptr %i.qp, i64 8 ; 2 uses
  store ptr %i.abs, ptr %0, align 8, !tbaa !12
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !20
  %i.abu = and i8 %i.abt, -33
  %or.cond265.not = icmp eq i8 %i.abu, 68
  br i1 %or.cond265.not, label %bb.mc, label %.thread1607

bb.mc:                                            ; preds = %bb.mb
  %i.abv = getelementptr inbounds nuw i8, ptr %i.qp, i64 9 ; 2 uses
  store ptr %i.abv, ptr %0, align 8, !tbaa !12
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !20 ; 3 uses
  %i.abx = icmp ult i8 %i.abw, 67
  br i1 %i.abx, label %.thread1607, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.aby = icmp ugt i8 %i.abw, 70
  %i.abz = add i8 %i.abw, -103
  %or.cond268 = icmp ult i8 %i.abz, -4
  %or.cond1484 = and i1 %i.aby, %or.cond268
  br i1 %or.cond1484, label %.thread1607, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.aca = getelementptr inbounds nuw i8, ptr %i.qp, i64 10 ; 2 uses
  store ptr %i.aca, ptr %0, align 8, !tbaa !12
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !20 ; 4 uses
  %i.acc = icmp ult i8 %i.acb, 65
  br i1 %i.acc, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.acd = add nsw i8 %i.acb, -58
  %or.cond271 = icmp ult i8 %i.acd, -10
  br i1 %or.cond271, label %.thread1607, label %bb.mh

bb.mg:                                            ; preds = %bb.me
  %i.ace = icmp ugt i8 %i.acb, 70
  %i.acf = add i8 %i.acb, -103
  %or.cond274 = icmp ult i8 %i.acf, -6
  %or.cond1485 = and i1 %i.ace, %or.cond274
  br i1 %or.cond1485, label %.thread1607, label %bb.mh

bb.mh:                                            ; preds = %bb.mf, %bb.mg
  %i.acg = getelementptr inbounds nuw i8, ptr %i.qp, i64 11 ; 2 uses
  store ptr %i.acg, ptr %0, align 8, !tbaa !12
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !20 ; 4 uses
  %i.aci = icmp ult i8 %i.ach, 65
  br i1 %i.aci, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.acj = add nsw i8 %i.ach, -58
  %or.cond277 = icmp ult i8 %i.acj, -10
  br i1 %or.cond277, label %.thread1607, label %bb.mk

bb.mj:                                            ; preds = %bb.mh
  %i.ack = icmp ugt i8 %i.ach, 70
  %i.acl = add i8 %i.ach, -103
  %or.cond280 = icmp ult i8 %i.acl, -6
  %or.cond1486 = and i1 %i.ack, %or.cond280
  br i1 %or.cond1486, label %.thread1607, label %bb.mk

bb.mk:                                            ; preds = %bb.mi, %bb.mj
  %i.acm = getelementptr inbounds nuw i8, ptr %i.qp, i64 12 ; 4 uses
  store ptr %i.acm, ptr %0, align 8, !tbaa !12
  %i.acn = tail call fastcc i32 @php_json_ucs2_to_int(ptr nonnull %i.acm, i32 noundef 4) ; 2 uses
  %i.aco = tail call fastcc i32 @php_json_ucs2_to_int_ex(ptr nonnull %i.acm, i32 noundef 4, i32 noundef 7)
  %i.acp = shl i32 %i.aco, 10
  %i.acq = and i32 %i.acp, 1047552
  %i.acr = and i32 %i.acn, 1023
  %i.acs = or disjoint i32 %i.acq, %i.acr         ; 2 uses
  %i.act = add nuw nsw i32 %i.acs, 65536          ; 2 uses
  %i.acu = load ptr, ptr %i.afj, align 8, !tbaa !23 ; 2 uses
  %i.acv = ptrtoint ptr %i.acm to i64
  %i.acw = ptrtoint ptr %i.acu to i64
  %reass.sub1622 = sub i64 %i.acv, %i.acw
  %i.acx = add i64 %reass.sub1622, -12            ; 3 uses
  %.not.i1552 = icmp eq i64 %i.acx, 0
  %.pre1762 = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1552, label %php_json_scanner_copy_string.exit1553, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1762, ptr align 1 %i.acu, i64 %i.acx, i1 false)
  %i.acy = load ptr, ptr %i.afk, align 8, !tbaa !36
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.acx
  br label %php_json_scanner_copy_string.exit1553

php_json_scanner_copy_string.exit1553:            ; preds = %bb.mk, %bb.ml
  %i.ada = phi ptr [ %.pre1762, %bb.mk ], [ %i.acz, %bb.ml ] ; 2 uses
  %i.adb = lshr i32 %i.act, 18
  %i.adc = trunc nuw nsw i32 %i.adb to i8
  %i.add = or disjoint i8 %i.adc, -16
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ada, i64 1
  store ptr %i.ade, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.add, ptr %i.ada, align 1, !tbaa !20
  %i.adf = lshr i32 %i.act, 12
  %i.adg = trunc i32 %i.adf to i8
  %i.adh = and i8 %i.adg, 63
  %i.adi = or disjoint i8 %i.adh, -128
  %i.adj = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 1
  store ptr %i.adk, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.adi, ptr %i.adj, align 1, !tbaa !20
  %i.adl = lshr i32 %i.acs, 6
  %i.adm = trunc i32 %i.adl to i8
  %i.adn = and i8 %i.adm, 63
  %i.ado = or disjoint i8 %i.adn, -128
  %i.adp = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 1
  store ptr %i.adq, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !20
  %i.adr = trunc i32 %i.acn to i8
  %i.ads = and i8 %i.adr, 63
  %i.adt = or disjoint i8 %i.ads, -128
  %i.adu = load ptr, ptr %i.afk, align 8, !tbaa !36 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 1
  store ptr %i.adv, ptr %i.afk, align 8, !tbaa !36
  store i8 %i.adt, ptr %i.adu, align 1, !tbaa !20
  %i.adw = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.adw, ptr %i.afj, align 8, !tbaa !23
  %i.adx = load i32, ptr %i.afi, align 8, !tbaa !25
  %.not1442 = icmp eq i32 %i.adx, 0
  br i1 %.not1442, label %.preheader1626, label %.backedge.backedge

.preheader1626:                                   ; preds = %select.unfold1602, %php_json_scanner_copy_string.exit1553, %php_json_scanner_copy_string.exit1551, %php_json_scanner_copy_string.exit1537, %php_json_scanner_copy_string.exit1523, %._crit_edge, %select.unfold
  %i.ady = phi ptr [ %.promoted, %._crit_edge ], [ %i.jj, %select.unfold ], [ %i.xg, %php_json_scanner_copy_string.exit1523 ], [ %i.zb, %php_json_scanner_copy_string.exit1537 ], [ %i.abm, %php_json_scanner_copy_string.exit1551 ], [ %i.adw, %php_json_scanner_copy_string.exit1553 ], [ %i.sf, %select.unfold1602 ]
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 32 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  br label %.backedge1627

.backedge1627:                                    ; preds = %.backedge1627.backedge, %.preheader1626
  %i.aed = phi ptr [ %i.ady, %.preheader1626 ], [ %.be, %.backedge1627.backedge ] ; 33 uses
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !20
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 1 ; 8 uses
  store ptr %i.aef, ptr %0, align 8, !tbaa !12
  switch i8 %i.aee, label %.backedge1627.backedge [
    i8 34, label %bb.mm
    i8 92, label %bb.mo
  ]

.backedge1627.backedge:                           ; preds = %.backedge1627, %php_json_scanner_copy_string.exit1559, %php_json_scanner_copy_string.exit1573, %php_json_scanner_copy_string.exit1587, %php_json_scanner_copy_string.exit1589, %select.unfold1608
  %.be = phi ptr [ %i.afe, %select.unfold1608 ], [ %i.aja, %php_json_scanner_copy_string.exit1559 ], [ %i.akv, %php_json_scanner_copy_string.exit1573 ], [ %i.ang, %php_json_scanner_copy_string.exit1587 ], [ %i.apq, %php_json_scanner_copy_string.exit1589 ], [ %i.aef, %.backedge1627 ]
  br label %.backedge1627

bb.mm:                                            ; preds = %.backedge1627
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.aeg = load ptr, ptr %i.aea, align 8, !tbaa !23 ; 2 uses
  %i.aeh = ptrtoint ptr %i.aef to i64
  %i.aei = ptrtoint ptr %i.aeg to i64
  %i.aej = xor i64 %i.aei, -1
  %i.aek = add i64 %i.aej, %i.aeh                 ; 3 uses
  %.not.i1554 = icmp eq i64 %i.aek, 0
  br i1 %.not.i1554, label %.thread1599, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.ael = load ptr, ptr %i.aeb, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ael, ptr align 1 %i.aeg, i64 %i.aek, i1 false)
  %i.aem = load ptr, ptr %i.aeb, align 8, !tbaa !36
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aek
  store ptr %i.aen, ptr %i.aeb, align 8, !tbaa !36
  br label %.thread1599

bb.mo:                                            ; preds = %.backedge1627
  store ptr %i.aef, ptr %i.adz, align 8, !tbaa !27
  %i.aeo = load i8, ptr %i.aef, align 1, !tbaa !20
  %i.aep = icmp eq i8 %i.aeo, 117
  br i1 %i.aep, label %bb.mw, label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.ng
  %i.aeq = load ptr, ptr %i.aea, align 8, !tbaa !23 ; 2 uses
  %i.aer = ptrtoint ptr %i.aef to i64
  %i.aes = ptrtoint ptr %i.aeq to i64
  %i.aet = xor i64 %i.aes, -1
  %i.aeu = add i64 %i.aet, %i.aer                 ; 3 uses
  %.not.i1556 = icmp eq i64 %i.aeu, 0
  br i1 %.not.i1556, label %php_json_scanner_copy_string.exit1557, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.aev = load ptr, ptr %i.aeb, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aev, ptr align 1 %i.aeq, i64 %i.aeu, i1 false)
  %i.aew = load ptr, ptr %i.aeb, align 8, !tbaa !36
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.aeu
  store ptr %i.aex, ptr %i.aeb, align 8, !tbaa !36
  %.pre1761 = load ptr, ptr %0, align 8, !tbaa !12
  br label %php_json_scanner_copy_string.exit1557

php_json_scanner_copy_string.exit1557:            ; preds = %bb.mp, %bb.mq
  %i.aey = phi ptr [ %i.aef, %bb.mp ], [ %.pre1761, %bb.mq ]
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !20 ; 2 uses
  switch i8 %i.aez, label %.thread1609 [
    i8 98, label %select.unfold1608
    i8 102, label %bb.mr
    i8 110, label %bb.ms
    i8 114, label %bb.mt
    i8 116, label %bb.mu
    i8 92, label %bb.mv
    i8 47, label %bb.mv
    i8 34, label %bb.mv
  ]

bb.mr:                                            ; preds = %php_json_scanner_copy_string.exit1557
  br label %select.unfold1608

bb.ms:                                            ; preds = %php_json_scanner_copy_string.exit1557
  br label %select.unfold1608

bb.mt:                                            ; preds = %php_json_scanner_copy_string.exit1557
  br label %select.unfold1608

bb.mu:                                            ; preds = %php_json_scanner_copy_string.exit1557
  br label %select.unfold1608

bb.mv:                                            ; preds = %php_json_scanner_copy_string.exit1557, %php_json_scanner_copy_string.exit1557, %php_json_scanner_copy_string.exit1557
  br label %select.unfold1608

.thread1609:                                      ; preds = %php_json_scanner_copy_string.exit1557
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 4, ptr %i.afa, align 4, !tbaa !22
  br label %.thread1599

select.unfold1608:                                ; preds = %php_json_scanner_copy_string.exit1557, %bb.mv, %bb.mu, %bb.mt, %bb.ms, %bb.mr
  %.01299 = phi i8 [ %i.aez, %bb.mv ], [ 12, %bb.mr ], [ 10, %bb.ms ], [ 13, %bb.mt ], [ 9, %bb.mu ], [ 8, %php_json_scanner_copy_string.exit1557 ]
  %i.afb = load ptr, ptr %i.aeb, align 8, !tbaa !36 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 1
  store ptr %i.afc, ptr %i.aeb, align 8, !tbaa !36
  store i8 %.01299, ptr %i.afb, align 1, !tbaa !20
  %i.afd = load ptr, ptr %0, align 8, !tbaa !12
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 1 ; 4 uses
  store ptr %i.afe, ptr %0, align 8, !tbaa !12
  store ptr %i.afe, ptr %i.aea, align 8, !tbaa !23
  %i.aff = load i32, ptr %i.aec, align 8, !tbaa !25
  %.not1438 = icmp eq i32 %i.aff, 0
  br i1 %.not1438, label %.backedge1627.backedge, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %select.unfold1608, %php_json_scanner_copy_string.exit1589, %php_json_scanner_copy_string.exit1587, %php_json_scanner_copy_string.exit1573, %php_json_scanner_copy_string.exit1559
  %.ph = phi ptr [ %i.afe, %select.unfold1608 ], [ %i.apq, %php_json_scanner_copy_string.exit1589 ], [ %i.ang, %php_json_scanner_copy_string.exit1587 ], [ %i.akv, %php_json_scanner_copy_string.exit1573 ], [ %i.aja, %php_json_scanner_copy_string.exit1559 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %select.unfold.thread, %._crit_edge, %select.unfold
  %i.afg = phi ptr [ %i.jj, %select.unfold ], [ %.promoted, %._crit_edge ], [ %i.jh, %select.unfold.thread ], [ %.ph, %.preheader.loopexit ]
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 41 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.backedge

bb.mw:                                            ; preds = %bb.mo
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aed, i64 2 ; 2 uses
  store ptr %i.afm, ptr %0, align 8, !tbaa !12
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !20 ; 10 uses
  %i.afo = icmp ult i8 %i.afn, 69
  br i1 %i.afo, label %bb.mx, label %bb.nc

bb.mx:                                            ; preds = %bb.mw
  %i.afp = icmp samesign ult i8 %i.afn, 58
  br i1 %i.afp, label %bb.my, label %bb.na

bb.my:                                            ; preds = %bb.mx
  %i.afq = icmp samesign ult i8 %i.afn, 48
  br i1 %i.afq, label %bb.ng, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.afr = icmp eq i8 %i.afn, 48
  br i1 %i.afr, label %bb.nh, label %bb.no

bb.na:                                            ; preds = %bb.mx
  %i.afs = icmp samesign ult i8 %i.afn, 65
  br i1 %i.afs, label %bb.ng, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %.not1431 = icmp eq i8 %i.afn, 68
  br i1 %.not1431, label %bb.nr, label %bb.no

bb.nc:                                            ; preds = %bb.mw
  %i.aft = icmp ult i8 %i.afn, 100
  br i1 %i.aft, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  %i.afu = add nsw i8 %i.afn, -97
  %or.cond283 = icmp ult i8 %i.afu, -26
  br i1 %or.cond283, label %bb.no, label %bb.ng

bb.ne:                                            ; preds = %bb.nc
  %i.afv = icmp eq i8 %i.afn, 100
  br i1 %i.afv, label %bb.nr, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.afw = icmp ult i8 %i.afn, 103
  br i1 %i.afw, label %bb.no, label %bb.ng

bb.ng:                                            ; preds = %bb.qo, %bb.ql, %bb.qi, %bb.ov, %bb.os, %bb.op, %bb.om, %bb.oj, %bb.og, %bb.od, %bb.oa, %bb.nv, %bb.nq, %bb.qg, %bb.nd, %bb.qn, %bb.qk, %bb.qh, %bb.qf, %bb.qe, %bb.ou, %bb.or, %bb.oo, %bb.ol, %bb.oi, %bb.of, %bb.oc, %bb.nz, %bb.nx, %bb.nu, %bb.ns, %bb.np, %bb.nn, %bb.nm, %bb.ni, %bb.nf, %bb.na, %bb.my
  store ptr %i.aef, ptr %0, align 8, !tbaa !12
  br label %bb.mp

bb.nh:                                            ; preds = %bb.mz
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aed, i64 3 ; 2 uses
  store ptr %i.afx, ptr %0, align 8, !tbaa !12
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !20 ; 7 uses
  %i.afz = icmp ult i8 %i.afy, 58
  br i1 %i.afz, label %bb.ni, label %bb.nl

bb.ni:                                            ; preds = %bb.nh
  %i.aga = icmp samesign ult i8 %i.afy, 48
  br i1 %i.aga, label %bb.ng, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.agb = icmp eq i8 %i.afy, 48
  br i1 %i.agb, label %bb.nw, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.agc = icmp samesign ult i8 %i.afy, 56
  br i1 %i.agc, label %bb.ob, label %bb.oe

bb.nl:                                            ; preds = %bb.nh
  %i.agd = icmp ult i8 %i.afy, 71
  br i1 %i.agd, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %bb.nl
  %i.age = icmp samesign ult i8 %i.afy, 65
  br i1 %i.age, label %bb.ng, label %bb.oe

bb.nn:                                            ; preds = %bb.nl
  %i.agf = add i8 %i.afy, -97
  %or.cond286 = icmp ult i8 %i.agf, 6
  br i1 %or.cond286, label %bb.oe, label %bb.ng

bb.no:                                            ; preds = %bb.nf, %bb.nd, %bb.nb, %bb.mz
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aed, i64 3 ; 2 uses
  store ptr %i.agg, ptr %0, align 8, !tbaa !12
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !20 ; 4 uses
  %i.agi = icmp ult i8 %i.agh, 65
  br i1 %i.agi, label %bb.np, label %bb.nq

bb.np:                                            ; preds = %bb.no
  %i.agj = add nsw i8 %i.agh, -48
  %or.cond289 = icmp ult i8 %i.agj, 10
  br i1 %or.cond289, label %bb.oe, label %bb.ng

bb.nq:                                            ; preds = %bb.no
  %i.agk = icmp ult i8 %i.agh, 71
  %i.agl = add i8 %i.agh, -97
  %or.cond292 = icmp ult i8 %i.agl, 6
  %or.cond1489 = or i1 %i.agk, %or.cond292
  br i1 %or.cond1489, label %bb.oe, label %bb.ng

bb.nr:                                            ; preds = %bb.ne, %bb.nb
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aed, i64 3 ; 2 uses
  store ptr %i.agm, ptr %0, align 8, !tbaa !12
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !20 ; 6 uses
  %i.ago = icmp ult i8 %i.agn, 65
  br i1 %i.ago, label %bb.ns, label %bb.nv

bb.ns:                                            ; preds = %bb.nr
  %i.agp = icmp samesign ult i8 %i.agn, 48
  br i1 %i.agp, label %bb.ng, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.agq = icmp samesign ult i8 %i.agn, 56
  br i1 %i.agq, label %bb.oe, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.agr = icmp samesign ult i8 %i.agn, 58
  br i1 %i.agr, label %bb.oh, label %bb.ng

bb.nv:                                            ; preds = %bb.nr
  %i.ags = icmp ult i8 %i.agn, 67
  %i.agt = add i8 %i.agn, -97
  %or.cond295 = icmp ult i8 %i.agt, 2
  %or.cond1490 = or i1 %i.ags, %or.cond295
  br i1 %or.cond1490, label %bb.oh, label %bb.ng

bb.nw:                                            ; preds = %bb.nj
  %i.agu = getelementptr inbounds nuw i8, ptr %i.aed, i64 4 ; 2 uses
  store ptr %i.agu, ptr %0, align 8, !tbaa !12
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !20 ; 6 uses
  %i.agw = icmp ult i8 %i.agv, 65
  br i1 %i.agw, label %bb.nx, label %bb.oa

bb.nx:                                            ; preds = %bb.nw
  %i.agx = icmp samesign ult i8 %i.agv, 48
  br i1 %i.agx, label %bb.ng, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.agy = icmp samesign ult i8 %i.agv, 56
  br i1 %i.agy, label %bb.ok, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.agz = icmp samesign ult i8 %i.agv, 58
  br i1 %i.agz, label %bb.on, label %bb.ng

bb.oa:                                            ; preds = %bb.nw
  %i.aha = icmp ult i8 %i.agv, 71
  %i.ahb = add i8 %i.agv, -97
  %or.cond298 = icmp ult i8 %i.ahb, 6
  %or.cond1491 = or i1 %i.aha, %or.cond298
  br i1 %or.cond1491, label %bb.on, label %bb.ng

bb.ob:                                            ; preds = %bb.nk
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aed, i64 4 ; 2 uses
  store ptr %i.ahc, ptr %0, align 8, !tbaa !12
  %i.ahd = load i8, ptr %i.ahc, align 1, !tbaa !20 ; 4 uses
  %i.ahe = icmp ult i8 %i.ahd, 65
  br i1 %i.ahe, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.ahf = add nsw i8 %i.ahd, -48
  %or.cond301 = icmp ult i8 %i.ahf, 10
  br i1 %or.cond301, label %bb.on, label %bb.ng

bb.od:                                            ; preds = %bb.ob
  %i.ahg = icmp ult i8 %i.ahd, 71
  %i.ahh = add i8 %i.ahd, -97
  %or.cond304 = icmp ult i8 %i.ahh, 6
  %or.cond1492 = or i1 %i.ahg, %or.cond304
  br i1 %or.cond1492, label %bb.on, label %bb.ng

bb.oe:                                            ; preds = %bb.np, %bb.nn, %bb.nt, %bb.nq, %bb.nm, %bb.nk
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.aed, i64 4 ; 2 uses
  store ptr %i.ahi, ptr %0, align 8, !tbaa !12
  %i.ahj = load i8, ptr %i.ahi, align 1, !tbaa !20 ; 4 uses
  %i.ahk = icmp ult i8 %i.ahj, 65
  br i1 %i.ahk, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.ahl = add nsw i8 %i.ahj, -48
  %or.cond307 = icmp ult i8 %i.ahl, 10
  br i1 %or.cond307, label %bb.oq, label %bb.ng

bb.og:                                            ; preds = %bb.oe
  %i.ahm = icmp ult i8 %i.ahj, 71
  %i.ahn = add i8 %i.ahj, -97
  %or.cond310 = icmp ult i8 %i.ahn, 6
  %or.cond1493 = or i1 %i.ahm, %or.cond310
  br i1 %or.cond1493, label %bb.oq, label %bb.ng

bb.oh:                                            ; preds = %bb.nv, %bb.nu
  %i.aho = getelementptr inbounds nuw i8, ptr %i.aed, i64 4 ; 2 uses
  store ptr %i.aho, ptr %0, align 8, !tbaa !12
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !20 ; 4 uses
  %i.ahq = icmp ult i8 %i.ahp, 65
  br i1 %i.ahq, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.ahr = add nsw i8 %i.ahp, -48
  %or.cond313 = icmp ult i8 %i.ahr, 10
  br i1 %or.cond313, label %bb.ot, label %bb.ng

bb.oj:                                            ; preds = %bb.oh
  %i.ahs = icmp ult i8 %i.ahp, 71
  %i.aht = add i8 %i.ahp, -97
  %or.cond316 = icmp ult i8 %i.aht, 6
  %or.cond1494 = or i1 %i.ahs, %or.cond316
  br i1 %or.cond1494, label %bb.ot, label %bb.ng

bb.ok:                                            ; preds = %bb.ny
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aed, i64 5 ; 2 uses
  store ptr %i.ahu, ptr %0, align 8, !tbaa !12
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !20 ; 4 uses
  %i.ahw = icmp ult i8 %i.ahv, 65
  br i1 %i.ahw, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %i.ahx = add nsw i8 %i.ahv, -48
  %or.cond319 = icmp ult i8 %i.ahx, 10
  br i1 %or.cond319, label %4, label %bb.ng

bb.om:                                            ; preds = %bb.ok
  %i.ahy = icmp ult i8 %i.ahv, 71
  %i.ahz = add i8 %i.ahv, -97
  %or.cond322 = icmp ult i8 %i.ahz, 6
  %or.cond1495 = or i1 %i.ahy, %or.cond322
  br i1 %or.cond1495, label %4, label %bb.ng

bb.on:                                            ; preds = %bb.oc, %bb.od, %bb.oa, %bb.nz
  %i.aia = getelementptr inbounds nuw i8, ptr %i.aed, i64 5 ; 2 uses
  store ptr %i.aia, ptr %0, align 8, !tbaa !12
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !20 ; 4 uses
  %i.aic = icmp ult i8 %i.aib, 65
  br i1 %i.aic, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on
  %i.aid = add nsw i8 %i.aib, -48
  %or.cond325 = icmp ult i8 %i.aid, 10
  br i1 %or.cond325, label %bb.oy, label %bb.ng

bb.op:                                            ; preds = %bb.on
  %i.aie = icmp ult i8 %i.aib, 71
  %i.aif = add i8 %i.aib, -97
  %or.cond328 = icmp ult i8 %i.aif, 6
  %or.cond1496 = or i1 %i.aie, %or.cond328
  br i1 %or.cond1496, label %bb.oy, label %bb.ng

bb.oq:                                            ; preds = %bb.of, %bb.og
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aed, i64 5 ; 2 uses
  store ptr %i.aig, ptr %0, align 8, !tbaa !12
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !20 ; 4 uses
  %i.aii = icmp ult i8 %i.aih, 65
  br i1 %i.aii, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.aij = add nsw i8 %i.aih, -48
  %or.cond331 = icmp ult i8 %i.aij, 10
  br i1 %or.cond331, label %bb.pm, label %bb.ng

bb.os:                                            ; preds = %bb.oq
  %i.aik = icmp ult i8 %i.aih, 71
  %i.ail = add i8 %i.aih, -97
  %or.cond334 = icmp ult i8 %i.ail, 6
  %or.cond1497 = or i1 %i.aik, %or.cond334
  br i1 %or.cond1497, label %bb.pm, label %bb.ng

bb.ot:                                            ; preds = %bb.oi, %bb.oj
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aed, i64 5 ; 2 uses
  store ptr %i.aim, ptr %0, align 8, !tbaa !12
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !20 ; 4 uses
  %i.aio = icmp ult i8 %i.ain, 65
  br i1 %i.aio, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %i.aip = add nsw i8 %i.ain, -48
  %or.cond337 = icmp ult i8 %i.aip, 10
  br i1 %or.cond337, label %bb.qe, label %bb.ng

bb.ov:                                            ; preds = %bb.ot
  %i.aiq = icmp ult i8 %i.ain, 71
  %i.air = add i8 %i.ain, -97
  %or.cond340 = icmp ult i8 %i.air, 6
  %or.cond1498 = or i1 %i.aiq, %or.cond340
  br i1 %or.cond1498, label %bb.qe, label %bb.ng

4:                                                ; preds = %bb.ol, %bb.om
  %5 = getelementptr inbounds nuw i8, ptr %i.aed, i64 6 ; 2 uses
  store ptr %5, ptr %0, align 8, !tbaa !12
  %.03.i.i1549 = getelementptr inbounds nuw i8, ptr %i.aed, i64 5
  %6 = load i8, ptr %.03.i.i1549, align 1, !tbaa !20 ; 6 uses
  %7 = add i8 %6, -48
  %or.cond.i.i.i1550 = icmp ult i8 %7, 10
  br i1 %or.cond.i.i.i1550, label %8, label %10

8:                                                ; preds = %4
  %9 = add nsw i8 %6, -48
  br label %php_json_hex_to_int.exit.i.i1554

10:                                               ; preds = %4
  %11 = add i8 %6, -65
  %or.cond5.i.i.i1551 = icmp ult i8 %11, 6
  br i1 %or.cond5.i.i.i1551, label %12, label %14

12:                                               ; preds = %10
  %13 = add nsw i8 %6, -55
  br label %php_json_hex_to_int.exit.i.i1554

14:                                               ; preds = %10
  %15 = add i8 %6, -97
  %or.cond8.i.i.i1552 = icmp ult i8 %15, 6
  %16 = add i8 %6, -87
  %spec.select.i.i.i1553 = select i1 %or.cond8.i.i.i1552, i8 %16, i8 -1
  br label %php_json_hex_to_int.exit.i.i1554

php_json_hex_to_int.exit.i.i1554:                 ; preds = %14, %12, %8
  %.0.i.i.i1555 = phi i8 [ %9, %8 ], [ %13, %12 ], [ %spec.select.i.i.i1553, %14 ]
  %.03.i.i1549.1 = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  %17 = load i8, ptr %.03.i.i1549.1, align 1, !tbaa !20 ; 6 uses
  %18 = add i8 %17, -48
  %or.cond.i.i.i1550.1 = icmp ult i8 %18, 10
  br i1 %or.cond.i.i.i1550.1, label %26, label %19

19:                                               ; preds = %php_json_hex_to_int.exit.i.i1554
  %20 = add i8 %17, -65
  %or.cond5.i.i.i1551.1 = icmp ult i8 %20, 6
  br i1 %or.cond5.i.i.i1551.1, label %24, label %21

21:                                               ; preds = %19
  %22 = add i8 %17, -97
  %or.cond8.i.i.i1552.1 = icmp ult i8 %22, 6
  %23 = add i8 %17, -87
  %spec.select.i.i.i1553.1 = select i1 %or.cond8.i.i.i1552.1, i8 %23, i8 -1
  br label %bb.ow

24:                                               ; preds = %19
  %25 = add nsw i8 %17, -55
  br label %bb.ow

26:                                               ; preds = %php_json_hex_to_int.exit.i.i1554
  %27 = add nsw i8 %17, -48
  br label %bb.ow

bb.ow:                                            ; preds = %26, %24, %21
  %.0.i.i.i1555.1 = phi i8 [ %27, %26 ], [ %25, %24 ], [ %spec.select.i.i.i1553.1, %21 ]
  %28 = shl i8 %.0.i.i.i1555.1, 4
  %29 = or i8 %28, %.0.i.i.i1555
  %i.ais = load ptr, ptr %i.aea, align 8, !tbaa !23 ; 2 uses
  %i.ait = ptrtoint ptr %5 to i64
  %i.aiu = ptrtoint ptr %i.ais to i64
  %reass.sub1621 = sub i64 %i.ait, %i.aiu
  %i.aiv = add i64 %reass.sub1621, -6             ; 3 uses
  %.not.i1558 = icmp eq i64 %i.aiv, 0
  %.pre1760 = load ptr, ptr %i.aeb, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1558, label %php_json_scanner_copy_string.exit1559, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1760, ptr align 1 %i.ais, i64 %i.aiv, i1 false)
  %i.aiw = load ptr, ptr %i.aeb, align 8, !tbaa !36
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %i.aiv
  br label %php_json_scanner_copy_string.exit1559

php_json_scanner_copy_string.exit1559:            ; preds = %bb.ow, %bb.ox
  %i.aiy = phi ptr [ %.pre1760, %bb.ow ], [ %i.aix, %bb.ox ] ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 1
  store ptr %i.aiz, ptr %i.aeb, align 8, !tbaa !36
  store i8 %29, ptr %i.aiy, align 1, !tbaa !20
  %i.aja = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.aja, ptr %i.aea, align 8, !tbaa !23
  %i.ajb = load i32, ptr %i.aec, align 8, !tbaa !25
  %.not1437 = icmp eq i32 %i.ajb, 0
  br i1 %.not1437, label %.backedge1627.backedge, label %.preheader.loopexit

bb.oy:                                            ; preds = %bb.oo, %bb.op
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aed, i64 6 ; 2 uses
  store ptr %i.ajc, ptr %0, align 8, !tbaa !12
  %.03.i.i1563 = getelementptr inbounds nuw i8, ptr %i.aed, i64 5
  %i.ajd = load i8, ptr %.03.i.i1563, align 1, !tbaa !20 ; 4 uses
  %i.aje = zext i8 %i.ajd to i32                  ; 3 uses
  %i.ajf = add i8 %i.ajd, -48
  %or.cond.i.i.i1564 = icmp ult i8 %i.ajf, 10
  br i1 %or.cond.i.i.i1564, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.ajg = add nsw i32 %i.aje, -48
  br label %php_json_hex_to_int.exit.i.i1568

bb.pa:                                            ; preds = %bb.oy
  %i.ajh = add i8 %i.ajd, -65
  %or.cond5.i.i.i1565 = icmp ult i8 %i.ajh, 6
  br i1 %or.cond5.i.i.i1565, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  %i.aji = add nsw i32 %i.aje, -55
  br label %php_json_hex_to_int.exit.i.i1568

bb.pc:                                            ; preds = %bb.pa
  %i.ajj = add i8 %i.ajd, -97
  %or.cond8.i.i.i1566 = icmp ult i8 %i.ajj, 6
  %i.ajk = add nsw i32 %i.aje, -87
  %spec.select.i.i.i1567 = select i1 %or.cond8.i.i.i1566, i32 %i.ajk, i32 -1
  br label %php_json_hex_to_int.exit.i.i1568

php_json_hex_to_int.exit.i.i1568:                 ; preds = %bb.pc, %bb.pb, %bb.oz
  %.0.i.i.i1569 = phi i32 [ %i.ajg, %bb.oz ], [ %i.aji, %bb.pb ], [ %spec.select.i.i.i1567, %bb.pc ]
  %.03.i.i1563.1 = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  %i.ajl = load i8, ptr %.03.i.i1563.1, align 1, !tbaa !20 ; 4 uses
  %i.ajm = zext i8 %i.ajl to i32                  ; 3 uses
  %i.ajn = add i8 %i.ajl, -48
  %or.cond.i.i.i1564.1 = icmp ult i8 %i.ajn, 10
  br i1 %or.cond.i.i.i1564.1, label %bb.pg, label %bb.pd

bb.pd:                                            ; preds = %php_json_hex_to_int.exit.i.i1568
  %i.ajo = add i8 %i.ajl, -65
  %or.cond5.i.i.i1565.1 = icmp ult i8 %i.ajo, 6
  br i1 %or.cond5.i.i.i1565.1, label %bb.pf, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.ajp = add i8 %i.ajl, -97
  %or.cond8.i.i.i1566.1 = icmp ult i8 %i.ajp, 6
  %i.ajq = add nsw i32 %i.ajm, -87
  %spec.select.i.i.i1567.1 = select i1 %or.cond8.i.i.i1566.1, i32 %i.ajq, i32 -1
  br label %php_json_hex_to_int.exit.i.i1568.1

bb.pf:                                            ; preds = %bb.pd
  %i.ajr = add nsw i32 %i.ajm, -55
  br label %php_json_hex_to_int.exit.i.i1568.1

bb.pg:                                            ; preds = %php_json_hex_to_int.exit.i.i1568
  %i.ajs = add nsw i32 %i.ajm, -48
  br label %php_json_hex_to_int.exit.i.i1568.1

php_json_hex_to_int.exit.i.i1568.1:               ; preds = %bb.pg, %bb.pf, %bb.pe
  %.0.i.i.i1569.1 = phi i32 [ %i.ajs, %bb.pg ], [ %i.ajr, %bb.pf ], [ %spec.select.i.i.i1567.1, %bb.pe ]
  %i.ajt = shl nsw i32 %.0.i.i.i1569.1, 4
  %i.aju = or i32 %i.ajt, %.0.i.i.i1569           ; 2 uses
  %.03.i.i1563.2 = getelementptr inbounds nuw i8, ptr %i.aed, i64 3
  %i.ajv = load i8, ptr %.03.i.i1563.2, align 1, !tbaa !20 ; 4 uses
  %i.ajw = zext i8 %i.ajv to i32                  ; 3 uses
  %i.ajx = add i8 %i.ajv, -48
  %or.cond.i.i.i1564.2 = icmp ult i8 %i.ajx, 10
  br i1 %or.cond.i.i.i1564.2, label %bb.pk, label %bb.ph

bb.ph:                                            ; preds = %php_json_hex_to_int.exit.i.i1568.1
  %i.ajy = add i8 %i.ajv, -65
  %or.cond5.i.i.i1565.2 = icmp ult i8 %i.ajy, 6
  br i1 %or.cond5.i.i.i1565.2, label %bb.pj, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.ajz = add i8 %i.ajv, -97
  %or.cond8.i.i.i1566.2 = icmp ult i8 %i.ajz, 6
  %i.aka = add nsw i32 %i.ajw, -87
  %spec.select.i.i.i1567.2 = select i1 %or.cond8.i.i.i1566.2, i32 %i.aka, i32 -1
  br label %php_json_hex_to_int.exit.i.i1568.2

bb.pj:                                            ; preds = %bb.ph
  %i.akb = add nsw i32 %i.ajw, -55
  br label %php_json_hex_to_int.exit.i.i1568.2

bb.pk:                                            ; preds = %php_json_hex_to_int.exit.i.i1568.1
  %i.akc = add nsw i32 %i.ajw, -48
  br label %php_json_hex_to_int.exit.i.i1568.2

php_json_hex_to_int.exit.i.i1568.2:               ; preds = %bb.pk, %bb.pj, %bb.pi
  %.0.i.i.i1569.2 = phi i32 [ %i.akc, %bb.pk ], [ %i.akb, %bb.pj ], [ %spec.select.i.i.i1567.2, %bb.pi ]
  %i.akd = shl nsw i32 %.0.i.i.i1569.2, 8
  %i.ake = or i32 %i.akd, %i.aju
  %i.akf = load ptr, ptr %i.aea, align 8, !tbaa !23 ; 2 uses
  %i.akg = ptrtoint ptr %i.ajc to i64
  %i.akh = ptrtoint ptr %i.akf to i64
  %reass.sub1620 = sub i64 %i.akg, %i.akh
  %i.aki = add i64 %reass.sub1620, -6             ; 3 uses
  %.not.i1572 = icmp eq i64 %i.aki, 0
  %.pre1759 = load ptr, ptr %i.aeb, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i1572, label %php_json_scanner_copy_string.exit1573, label %bb.pl

bb.pl:                                            ; preds = %php_json_hex_to_int.exit.i.i1568.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre1759, ptr align 1 %i.akf, i64 %i.aki, i1 false)
  %i.akj = load ptr, ptr %i.aeb, align 8, !tbaa !36
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 %i.aki
  br label %php_json_scanner_copy_string.exit1573

php_json_scanner_copy_string.exit1573:            ; preds = %php_json_hex_to_int.exit.i.i1568.2, %bb.pl
  %i.akl = phi ptr [ %.pre1759, %php_json_hex_to_int.exit.i.i1568.2 ], [ %i.akk, %bb.pl ] ; 2 uses
  %i.akm = lshr i32 %i.ake, 6
  %i.akn = trunc i32 %i.akm to i8
  %i.ako = or i8 %i.akn, -64
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akl, i64 1
  store ptr %i.akp, ptr %i.aeb, align 8, !tbaa !36
  store i8 %i.ako, ptr %i.akl, align 1, !tbaa !20
  %i.akq = trunc i32 %i.aju to i8
  %i.akr = and i8 %i.akq, 63
  %i.aks = or disjoint i8 %i.akr, -128
  %i.akt = load ptr, ptr %i.aeb, align 8, !tbaa !36 ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 1
  store ptr %i.aku, ptr %i.aeb, align 8, !tbaa !36
  store i8 %i.aks, ptr %i.akt, align 1, !tbaa !20
  %i.akv = load ptr, ptr %0, align 8, !tbaa !12   ; 3 uses
  store ptr %i.akv, ptr %i.aea, align 8, !tbaa !23
  %i.akw = load i32, ptr %i.aec, align 8, !tbaa !25
  %.not1436 = icmp eq i32 %i.akw, 0
  br i1 %.not1436, label %.backedge1627.backedge, label %.preheader.loopexit

bb.pm:                                            ; preds = %bb.or, %bb.os
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aed, i64 6 ; 2 uses
  store ptr %i.akx, ptr %0, align 8, !tbaa !12
  %.03.i.i1577 = getelementptr inbounds nuw i8, ptr %i.aed, i64 5
  %i.aky = load i8, ptr %.03.i.i1577, align 1, !tbaa !20 ; 4 uses
  %i.akz = zext i8 %i.aky to i32                  ; 3 uses
  %i.ala = add i8 %i.aky, -48
  %or.cond.i.i.i1578 = icmp ult i8 %i.ala, 10
  br i1 %or.cond.i.i.i1578, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.pm
  %i.alb = add nsw i32 %i.akz, -48
  br label %php_json_hex_to_int.exit.i.i1582

bb.po:                                            ; preds = %bb.pm
  %i.alc = add i8 %i.aky, -65
  %or.cond5.i.i.i1579 = icmp ult i8 %i.alc, 6
  br i1 %or.cond5.i.i.i1579, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  %i.ald = add nsw i32 %i.akz, -55
  br label %php_json_hex_to_int.exit.i.i1582

bb.pq:                                            ; preds = %bb.po
  %i.ale = add i8 %i.aky, -97
  %or.cond8.i.i.i1580 = icmp ult i8 %i.ale, 6
  %i.alf = add nsw i32 %i.akz, -87
  %spec.select.i.i.i1581 = select i1 %or.cond8.i.i.i1580, i32 %i.alf, i32 -1
  br label %php_json_hex_to_int.exit.i.i1582

php_json_hex_to_int.exit.i.i1582:                 ; preds = %bb.pq, %bb.pp, %bb.pn
  %.0.i.i.i1583 = phi i32 [ %i.alb, %bb.pn ], [ %i.ald, %bb.pp ], [ %spec.select.i.i.i1581, %bb.pq ]
  %.03.i.i1577.1 = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  %i.alg = load i8, ptr %.03.i.i1577.1, align 1, !tbaa !20 ; 4 uses
  %i.alh = zext i8 %i.alg to i32                  ; 3 uses
  %i.ali = add i8 %i.alg, -48
  %or.cond.i.i.i1578.1 = icmp ult i8 %i.ali, 10
  br i1 %or.cond.i.i.i1578.1, label %bb.pu, label %bb.pr

bb.pr:                                            ; preds = %php_json_hex_to_int.exit.i.i1582
  %i.alj = add i8 %i.alg, -65
  %or.cond5.i.i.i1579.1 = icmp ult i8 %i.alj, 6
  br i1 %or.cond5.i.i.i1579.1, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.alk = add i8 %i.alg, -97
  %or.cond8.i.i.i1580.1 = icmp ult i8 %i.alk, 6
  %i.all = add nsw i32 %i.alh, -87
  %spec.select.i.i.i1581.1 = select i1 %or.cond8.i.i.i1580.1, i32 %i.all, i32 -1
  br label %php_json_hex_to_int.exit.i.i1582.1

bb.pt:                                            ; preds = %bb.pr
  %i.alm = add nsw i32 %i.alh, -55
  br label %php_json_hex_to_int.exit.i.i1582.1

bb.pu:                                            ; preds = %php_json_hex_to_int.exit.i.i1582
  %i.aln = add nsw i32 %i.alh, -48
  br label %php_json_hex_to_int.exit.i.i1582.1

php_json_hex_to_int.exit.i.i1582.1:               ; preds = %bb.pu, %bb.pt, %bb.ps
  %.0.i.i.i1583.1 = phi i32 [ %i.aln, %bb.pu ], [ %i.alm, %bb.pt ], [ %spec.select.i.i.i1581.1, %bb.ps ]
end_hunk_2
