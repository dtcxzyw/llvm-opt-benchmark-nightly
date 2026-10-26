Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/inflate?download=true
inline.NumInlined: 31
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@zng_inflate:bb.a
  %i.ou = zext i8 %i.ot to i64
  %i.ov = shl nuw nsw i64 %i.ou, %i.bz
  %i.ow = add i64 %i.ov, %.0920                   ; 3 uses
  %indvars.iv.next2791 = add nuw nsw i64 %i.bz, 8 ; 2 uses
  %i.ox = icmp ult i32 %.0909, 24
  br i1 %i.ox, label %.lr.ph2096.1, label %._crit_edge2097

.lr.ph2096.1:                                     ; preds = %bb.dl
  %i.oy = icmp eq i32 %i.or, 0
  br i1 %i.oy, label %.loopexit1260.loopexit2326, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph2096.1
  %i.oz = add i32 %.0983, -2                      ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.01048, i64 2 ; 3 uses
  %i.pb = load i8, ptr %i.os, align 1, !tbaa !55
  %i.pc = zext i8 %i.pb to i64
  %i.pd = shl nuw nsw i64 %i.pc, %indvars.iv.next2791
  %i.pe = add i64 %i.pd, %i.ow                    ; 3 uses
  %indvars.iv.next2791.1 = add nuw nsw i64 %i.bz, 16 ; 2 uses
  %i.pf = icmp ult i32 %.0909, 16
  br i1 %i.pf, label %.lr.ph2096.2, label %._crit_edge2097

.lr.ph2096.2:                                     ; preds = %bb.dm
  %i.pg = icmp eq i32 %i.oz, 0
  br i1 %i.pg, label %.loopexit1260.loopexit2326, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph2096.2
  %i.ph = add i32 %.0983, -3                      ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.01048, i64 3 ; 3 uses
  %i.pj = load i8, ptr %i.pa, align 1, !tbaa !55
  %i.pk = zext i8 %i.pj to i64
  %i.pl = shl nuw nsw i64 %i.pk, %indvars.iv.next2791.1
  %i.pm = add i64 %i.pl, %i.pe                    ; 3 uses
  %indvars.iv.next2791.2 = add nuw nsw i64 %i.bz, 24 ; 2 uses
  %i.pn = icmp ult i32 %.0909, 8
  br i1 %i.pn, label %.lr.ph2096.3, label %._crit_edge2097

.lr.ph2096.3:                                     ; preds = %bb.dn
  %i.po = icmp eq i32 %i.ph, 0
  br i1 %i.po, label %.loopexit1260.loopexit2326, label %bb.do

bb.do:                                            ; preds = %.lr.ph2096.3
  %i.pp = add i32 %.0983, -4
  %i.pq = getelementptr inbounds nuw i8, ptr %.01048, i64 4
  %i.pr = load i8, ptr %i.pi, align 1, !tbaa !55
  %i.ps = zext i8 %i.pr to i64
  %i.pt = shl nuw nsw i64 %i.ps, %indvars.iv.next2791.2
  %i.pu = add i64 %i.pt, %i.pm
  br label %._crit_edge2097

._crit_edge2097:                                  ; preds = %bb.dl, %bb.dm, %bb.dn, %bb.do, %.preheader1283
  %.201068.lcssa = phi ptr [ %.01048, %.preheader1283 ], [ %i.os, %bb.dl ], [ %i.pa, %bb.dm ], [ %i.pi, %bb.dn ], [ %i.pq, %bb.do ]
  %.201003.lcssa = phi i32 [ %.0983, %.preheader1283 ], [ %i.or, %bb.dl ], [ %i.oz, %bb.dm ], [ %i.ph, %bb.dn ], [ %i.pp, %bb.do ]
  %.16936.lcssa = phi i64 [ %.0920, %.preheader1283 ], [ %i.ow, %bb.dl ], [ %i.pe, %bb.dm ], [ %i.pm, %bb.dn ], [ %i.pu, %bb.do ]
  %i.pv = trunc i64 %.16936.lcssa to i32
  %i.pw = call i32 @llvm.bswap.i32(i32 %i.pv)     ; 2 uses
  %i.px = zext i32 %i.pw to i64
  store i64 %i.px, ptr %i.ao, align 32, !tbaa !28
  store i32 %i.pw, ptr %i.ap, align 4, !tbaa !27
  store i32 16190, ptr %i.p, align 8, !tbaa !23
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge2097, %bb.l
  %.211069 = phi ptr [ %.201068.lcssa, %._crit_edge2097 ], [ %.01048, %bb.l ] ; 2 uses
  %.211004 = phi i32 [ %.201003.lcssa, %._crit_edge2097 ], [ %.0983, %bb.l ] ; 2 uses
  %.17937 = phi i64 [ 0, %._crit_edge2097 ], [ %.0920, %bb.l ] ; 2 uses
  %.17 = phi i32 [ 0, %._crit_edge2097 ], [ %.0909, %bb.l ] ; 2 uses
  %i.py = load i32, ptr %i.bo, align 4, !tbaa !30
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store ptr %.01045, ptr %i.s, align 8, !tbaa !89
  store i32 %.0981, ptr %i.ab, align 8, !tbaa !90
  store ptr %.211069, ptr %0, align 8, !tbaa !58
  store i32 %.211004, ptr %i.ad, align 8, !tbaa !59
  store i64 %.17937, ptr %i.af, align 8, !tbaa !33
  store i32 %.17, ptr %i.ah, align 32, !tbaa !34
  br label %inf_chksum.exit

bb.dr:                                            ; preds = %bb.dp
  store i64 1, ptr %i.ao, align 32, !tbaa !28
  store i32 1, ptr %i.ap, align 4, !tbaa !27
  store i32 16191, ptr %i.p, align 8, !tbaa !23
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.l
  %.221070 = phi ptr [ %.211069, %bb.dr ], [ %.01048, %bb.l ] ; 2 uses
  %.221005 = phi i32 [ %.211004, %bb.dr ], [ %.0983, %bb.l ] ; 2 uses
  %.18938 = phi i64 [ %.17937, %bb.dr ], [ %.0920, %bb.l ] ; 2 uses
  %.18 = phi i32 [ %.17, %bb.dr ], [ %.0909, %bb.l ] ; 2 uses
  br i1 %or.cond3, label %.loopexit1260, label %bb.dt

bb.dt:                                            ; preds = %bb.l, %bb.ds
  %.231071 = phi ptr [ %.221070, %bb.ds ], [ %.01048, %bb.l ] ; 5 uses
  %.231006 = phi i32 [ %.221005, %bb.ds ], [ %.0983, %bb.l ] ; 4 uses
  %.19939 = phi i64 [ %.18938, %bb.ds ], [ %.0920, %bb.l ] ; 4 uses
  %.19 = phi i32 [ %.18, %bb.ds ], [ %.0909, %bb.l ] ; 7 uses
  %i.qa = load i32, ptr %i.bq, align 4, !tbaa !29
  %.not1198 = icmp eq i32 %i.qa, 0
  br i1 %.not1198, label %.preheader1281, label %bb.du

.preheader1281:                                   ; preds = %bb.dt
  %i.qb = icmp ult i32 %.19, 3
  br i1 %i.qb, label %.lr.ph2105, label %bb.dv

.lr.ph2105:                                       ; preds = %.preheader1281
  %i.qc = icmp eq i32 %.231006, 0
  br i1 %i.qc, label %.loopexit1260, label %._crit_edge2106

bb.du:                                            ; preds = %bb.dt
  %i.qd = and i32 %.19, 7
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = lshr i64 %.19939, %i.qe
  %i.qg = and i32 %.19, -8
  store i32 16206, ptr %i.p, align 8, !tbaa !23
  br label %.thread

._crit_edge2106:                                  ; preds = %.lr.ph2105
  %i.qh = or disjoint i32 %.19, 8
  %i.qi = add i32 %.231006, -1
  %i.qj = getelementptr inbounds nuw i8, ptr %.231071, i64 1
  %i.qk = load i8, ptr %.231071, align 1, !tbaa !55
  %i.ql = zext i8 %i.qk to i64
  %i.qm = zext nneg i32 %.19 to i64
  %i.qn = shl nuw nsw i64 %i.ql, %i.qm
  %i.qo = add i64 %i.qn, %.19939
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge2106, %.preheader1281
  %.241072.lcssa = phi ptr [ %i.qj, %._crit_edge2106 ], [ %.231071, %.preheader1281 ] ; 2 uses
  %.241007.lcssa = phi i32 [ %i.qi, %._crit_edge2106 ], [ %.231006, %.preheader1281 ] ; 2 uses
  %.20940.lcssa = phi i64 [ %i.qo, %._crit_edge2106 ], [ %.19939, %.preheader1281 ] ; 4 uses
  %.20.lcssa = phi i32 [ %i.qh, %._crit_edge2106 ], [ %.19, %.preheader1281 ] ; 2 uses
  %i.qp = trunc i64 %.20940.lcssa to i32
  %i.qq = and i32 %i.qp, 1
  store i32 %i.qq, ptr %i.bq, align 4, !tbaa !29
  %i.qr = lshr i64 %.20940.lcssa, 1
  %i.qs = and i64 %i.qr, 3
  switch i64 %i.qs, label %default.unreachable2894 [
    i64 0, label %bb.dw
    i64 1, label %bb.dx
    i64 2, label %bb.dz
    i64 3, label %bb.ea
  ]

bb.dw:                                            ; preds = %bb.dv
  store i32 16193, ptr %i.p, align 8, !tbaa !23
  br label %bb.eb

bb.dx:                                            ; preds = %bb.dv
  store i32 9, ptr %i.ba, align 4, !tbaa !56
  store <2 x ptr> <ptr @lenfix, ptr @distfix>, ptr %i.az, align 8, !tbaa !106
  store i32 5, ptr %i.be, align 8, !tbaa !57
  store i32 16199, ptr %i.p, align 8, !tbaa !23
  br i1 %i.bf, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.qt = lshr i64 %.20940.lcssa, 3
  %i.qu = add i32 %.20.lcssa, -3
  br label %.loopexit1260

bb.dz:                                            ; preds = %bb.dv
  store i32 16196, ptr %i.p, align 8, !tbaa !23
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dv
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.6, ptr %i.aq, align 8, !tbaa !51
  br label %bb.eb

default.unreachable2894:                          ; preds = %bb.dv
  unreachable

bb.eb:                                            ; preds = %bb.dw, %bb.dz, %bb.ea, %bb.dx
  %i.qv = lshr i64 %.20940.lcssa, 3
  %i.qw = add i32 %.20.lcssa, -3
  br label %.thread

bb.ec:                                            ; preds = %bb.l
  %i.qx = and i32 %.0909, 7
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = lshr i64 %.0920, %i.qy                  ; 3 uses
  %i.ra = and i32 %.0909, -8
  %i.rb = icmp ult i32 %.0909, 32
  br i1 %i.rb, label %.lr.ph2086.preheader, label %._crit_edge2087

.lr.ph2086.preheader:                             ; preds = %bb.ec
  %i.rc = and i32 %.0909, 24                      ; 4 uses
  %i.rd = zext nneg i32 %i.rc to i64              ; 5 uses
  %i.re = icmp eq i32 %.0983, 0
  br i1 %i.re, label %.loopexit1260.loopexit2327, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph2086.preheader
  %i.rf = add i32 %.0983, -1                      ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.01048, i64 1 ; 3 uses
  %i.rh = load i8, ptr %.01048, align 1, !tbaa !55
  %i.ri = zext i8 %i.rh to i64
  %i.rj = shl nuw nsw i64 %i.ri, %i.rd
  %i.rk = add i64 %i.rj, %i.qz                    ; 3 uses
  %indvars.iv.next2789 = add nuw nsw i64 %i.rd, 8 ; 2 uses
  %.not = icmp eq i32 %i.rc, 24
  br i1 %.not, label %._crit_edge2087.loopexit, label %.lr.ph2086.1

.lr.ph2086.1:                                     ; preds = %bb.ed
  %i.rl = icmp eq i32 %i.rf, 0
  br i1 %i.rl, label %.loopexit1260.loopexit2327, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph2086.1
  %i.rm = add i32 %.0983, -2                      ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.01048, i64 2 ; 3 uses
  %i.ro = load i8, ptr %i.rg, align 1, !tbaa !55
  %i.rp = zext i8 %i.ro to i64
  %i.rq = shl nuw nsw i64 %i.rp, %indvars.iv.next2789
  %i.rr = add i64 %i.rq, %i.rk                    ; 3 uses
  %indvars.iv.next2789.1 = add nuw nsw i64 %i.rd, 16 ; 3 uses
  %i.rs = icmp samesign ult i32 %i.rc, 16
  br i1 %i.rs, label %.lr.ph2086.2, label %._crit_edge2087.loopexit

.lr.ph2086.2:                                     ; preds = %bb.ee
  %i.rt = icmp eq i32 %i.rm, 0
  br i1 %i.rt, label %.loopexit1260.loopexit2327, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph2086.2
  %i.ru = add i32 %.0983, -3                      ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.01048, i64 3 ; 3 uses
  %i.rw = load i8, ptr %i.rn, align 1, !tbaa !55
  %i.rx = zext i8 %i.rw to i64
  %i.ry = shl nuw nsw i64 %i.rx, %indvars.iv.next2789.1
  %i.rz = add i64 %i.ry, %i.rr                    ; 3 uses
  %indvars.iv.next2789.2 = add nuw nsw i64 %i.rd, 24 ; 3 uses
  %i.sa = icmp eq i32 %i.rc, 0
  br i1 %i.sa, label %.lr.ph2086.3, label %._crit_edge2087.loopexit

.lr.ph2086.3:                                     ; preds = %bb.ef
  %i.sb = icmp eq i32 %i.ru, 0
  br i1 %i.sb, label %.loopexit1260.loopexit2327, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph2086.3
  %i.sc = add i32 %.0983, -4
  %i.sd = getelementptr inbounds nuw i8, ptr %.01048, i64 4
  %i.se = load i8, ptr %i.rv, align 1, !tbaa !55
  %i.sf = zext i8 %i.se to i64
  %i.sg = shl nuw nsw i64 %i.sf, %indvars.iv.next2789.2
  %i.sh = add i64 %i.sg, %i.rz
  br label %._crit_edge2087.loopexit

._crit_edge2087.loopexit:                         ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ed
  %.lcssa4059 = phi i32 [ %i.rf, %bb.ed ], [ %i.rm, %bb.ee ], [ %i.ru, %bb.ef ], [ %i.sc, %bb.eg ]
  %.lcssa4058 = phi ptr [ %i.rg, %bb.ed ], [ %i.rn, %bb.ee ], [ %i.rv, %bb.ef ], [ %i.sd, %bb.eg ]
  %.lcssa4057 = phi i64 [ %i.rk, %bb.ed ], [ %i.rr, %bb.ee ], [ %i.rz, %bb.ef ], [ %i.sh, %bb.eg ]
  %indvars.iv.next2789.lcssa = phi i64 [ 32, %bb.ed ], [ %indvars.iv.next2789.1, %bb.ee ], [ %indvars.iv.next2789.2, %bb.ef ], [ 32, %bb.eg ]
  %i.si = trunc nuw nsw i64 %indvars.iv.next2789.lcssa to i32
  br label %._crit_edge2087

._crit_edge2087:                                  ; preds = %._crit_edge2087.loopexit, %bb.ec
  %.251073.lcssa = phi ptr [ %.01048, %bb.ec ], [ %.lcssa4058, %._crit_edge2087.loopexit ] ; 3 uses
  %.251008.lcssa = phi i32 [ %.0983, %bb.ec ], [ %.lcssa4059, %._crit_edge2087.loopexit ] ; 3 uses
  %.21941.lcssa = phi i64 [ %i.qz, %bb.ec ], [ %.lcssa4057, %._crit_edge2087.loopexit ] ; 4 uses
  %.21.lcssa = phi i32 [ %i.ra, %bb.ec ], [ %i.si, %._crit_edge2087.loopexit ]
  %i.sj = and i64 %.21941.lcssa, 65535
  %i.sk = lshr i64 %.21941.lcssa, 16
  %i.sl = xor i64 %i.sk, %i.sj
  %.not1196 = icmp eq i64 %i.sl, 65535
  br i1 %.not1196, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %._crit_edge2087
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.7, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.ei:                                            ; preds = %._crit_edge2087
  %i.sm = trunc i64 %.21941.lcssa to i32
  %i.sn = and i32 %i.sm, 65535
  store i32 %i.sn, ptr %i.ar, align 4, !tbaa !62
  store i32 16194, ptr %i.p, align 8, !tbaa !23
  br i1 %i.bf, label %.loopexit1260, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.l
  %.261074 = phi ptr [ %.251073.lcssa, %bb.ei ], [ %.01048, %bb.l ]
  %.261009 = phi i32 [ %.251008.lcssa, %bb.ei ], [ %.0983, %bb.l ]
  %.22942 = phi i64 [ 0, %bb.ei ], [ %.0920, %bb.l ]
  %.22 = phi i32 [ 0, %bb.ei ], [ %.0909, %bb.l ]
  store i32 16195, ptr %i.p, align 8, !tbaa !23
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.l
  %.271075 = phi ptr [ %.261074, %bb.ej ], [ %.01048, %bb.l ] ; 4 uses
  %.271010 = phi i32 [ %.261009, %bb.ej ], [ %.0983, %bb.l ] ; 4 uses
  %.23943 = phi i64 [ %.22942, %bb.ej ], [ %.0920, %bb.l ] ; 3 uses
  %.23 = phi i32 [ %.22, %bb.ej ], [ %.0909, %bb.l ] ; 3 uses
  %i.so = load i32, ptr %i.ar, align 4, !tbaa !62 ; 2 uses
  %.not1197 = icmp eq i32 %i.so, 0
  br i1 %.not1197, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.sp = call i32 @llvm.umin.i32(i32 %i.so, i32 %.271010)
  %i.sq = call i32 @llvm.umin.i32(i32 %i.sp, i32 %.0981) ; 5 uses
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.loopexit1260, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ss = zext i32 %i.sq to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01045, ptr align 1 %.271075, i64 %i.ss, i1 false)
  %i.st = sub nuw i32 %.271010, %i.sq
  %i.su = getelementptr inbounds nuw i8, ptr %.271075, i64 %i.ss
  %i.sv = sub nuw i32 %.0981, %i.sq
  %i.sw = getelementptr inbounds nuw i8, ptr %.01045, i64 %i.ss
  %i.sx = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.sy = sub i32 %i.sx, %i.sq
  store i32 %i.sy, ptr %i.ar, align 4, !tbaa !62
  br label %.thread

bb.en:                                            ; preds = %bb.ek
  store i32 16191, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.eo:                                            ; preds = %.lr.ph1750.preheader
  %i.sz = add i32 %.0983, -1                      ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.01048, i64 1 ; 3 uses
  %i.tb = load i8, ptr %.01048, align 1, !tbaa !55
  %i.tc = zext i8 %i.tb to i64
  %i.td = shl nuw nsw i64 %i.tc, %i.bw
  %i.te = add i64 %i.td, %.0920                   ; 3 uses
  %indvars.iv.next2748 = add nuw nsw i64 %i.bw, 8 ; 3 uses
  %i.tf = icmp ult i32 %.0909, 6
  br i1 %i.tf, label %.lr.ph1750.1, label %._crit_edge1751.loopexit

.lr.ph1750.1:                                     ; preds = %bb.eo
  %i.tg = icmp eq i32 %i.sz, 0
  br i1 %i.tg, label %.loopexit1260.loopexit2335, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1750.1
  %i.th = add i32 %.0983, -2
  %i.ti = getelementptr inbounds nuw i8, ptr %.01048, i64 2
  %i.tj = load i8, ptr %i.ta, align 1, !tbaa !55
  %i.tk = zext i8 %i.tj to i64
  %i.tl = shl nuw nsw i64 %i.tk, %indvars.iv.next2748
  %i.tm = add i64 %i.tl, %i.te
  %indvars.iv.next2748.1 = or disjoint i64 %i.bw, 16
  br label %._crit_edge1751.loopexit

._crit_edge1751.loopexit:                         ; preds = %bb.ep, %bb.eo
  %.lcssa3927 = phi i32 [ %i.sz, %bb.eo ], [ %i.th, %bb.ep ]
  %.lcssa3926 = phi ptr [ %i.ta, %bb.eo ], [ %i.ti, %bb.ep ]
  %.lcssa3925 = phi i64 [ %i.te, %bb.eo ], [ %i.tm, %bb.ep ]
  %indvars.iv.next2748.lcssa = phi i64 [ %indvars.iv.next2748, %bb.eo ], [ %indvars.iv.next2748.1, %bb.ep ]
  %i.tn = trunc nuw nsw i64 %indvars.iv.next2748.lcssa to i32
  br label %._crit_edge1751

._crit_edge1751:                                  ; preds = %._crit_edge1751.loopexit, %.preheader1297
  %.281076.lcssa = phi ptr [ %.01048, %.preheader1297 ], [ %.lcssa3926, %._crit_edge1751.loopexit ] ; 2 uses
  %.281011.lcssa = phi i32 [ %.0983, %.preheader1297 ], [ %.lcssa3927, %._crit_edge1751.loopexit ] ; 2 uses
  %.24944.lcssa = phi i64 [ %.0920, %.preheader1297 ], [ %.lcssa3925, %._crit_edge1751.loopexit ] ; 2 uses
  %.24.lcssa = phi i32 [ %.0909, %.preheader1297 ], [ %i.tn, %._crit_edge1751.loopexit ]
  %i.to = trunc i64 %.24944.lcssa to i32          ; 3 uses
  %i.tp = and i32 %i.to, 31                       ; 2 uses
  %i.tq = add nuw nsw i32 %i.tp, 257
  store i32 %i.tq, ptr %i.as, align 4, !tbaa !107
  %i.tr = lshr i32 %i.to, 5
  %i.ts = and i32 %i.tr, 31                       ; 2 uses
  %i.tt = add nuw nsw i32 %i.ts, 1
  store i32 %i.tt, ptr %i.at, align 16, !tbaa !108
  %i.tu = lshr i32 %i.to, 10
  %i.tv = and i32 %i.tu, 15
  %i.tw = add nuw nsw i32 %i.tv, 4                ; 2 uses
  store i32 %i.tw, ptr %i.au, align 8, !tbaa !109
  %i.tx = lshr i64 %.24944.lcssa, 14              ; 2 uses
  %i.ty = add i32 %.24.lcssa, -14                 ; 2 uses
  %i.tz = icmp samesign ugt i32 %i.tp, 29
  %i.ua = icmp samesign ugt i32 %i.ts, 29
  %or.cond1258 = select i1 %i.tz, i1 true, i1 %i.ua
  br i1 %or.cond1258, label %bb.eq, label %.split.thread

bb.eq:                                            ; preds = %._crit_edge1751
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.8, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

.split.thread:                                    ; preds = %._crit_edge1751
  store i32 0, ptr %i.av, align 4, !tbaa !92
  store i32 16197, ptr %i.p, align 8, !tbaa !23
  br label %.preheader1267.preheader

.split:                                           ; preds = %bb.l
  %.pre2817 = load i32, ptr %i.au, align 8, !tbaa !109 ; 2 uses
  %.promoted.pre = load i32, ptr %i.av, align 4, !tbaa !92 ; 3 uses
  %i.ub = icmp ult i32 %.promoted.pre, %.pre2817
  br i1 %i.ub, label %.preheader1267.preheader, label %.preheader1296

.preheader1267.preheader:                         ; preds = %.split.thread, %.split
  %.252944 = phi i32 [ %i.ty, %.split.thread ], [ %.0909, %.split ]
  %.259452943 = phi i64 [ %i.tx, %.split.thread ], [ %.0920, %.split ]
  %.2910122942 = phi i32 [ %.281011.lcssa, %.split.thread ], [ %.0983, %.split ]
  %.2910772941 = phi ptr [ %.281076.lcssa, %.split.thread ], [ %.01048, %.split ]
  %i.uc = phi i32 [ %i.tw, %.split.thread ], [ %.pre2817, %.split ] ; 2 uses
  %.promoted2940 = phi i32 [ 0, %.split.thread ], [ %.promoted.pre, %.split ]
  %i.ud = zext i32 %.promoted2940 to i64
  br label %.preheader1267

.preheader1296:                                   ; preds = %bb.er, %.split
  %.301078.lcssa = phi ptr [ %.01048, %.split ], [ %.311079.lcssa, %bb.er ] ; 2 uses
  %.301013.lcssa = phi i32 [ %.0983, %.split ], [ %.311014.lcssa, %bb.er ] ; 2 uses
  %.26946.lcssa = phi i64 [ %.0920, %.split ], [ %i.ux, %bb.er ] ; 2 uses
  %.26.lcssa = phi i32 [ %.0909, %.split ], [ %i.uy, %bb.er ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted.pre, %.split ], [ %i.uc, %bb.er ] ; 2 uses
  %i.ue = icmp ult i32 %.lcssa, 19
  br i1 %i.ue, label %.lr.ph1916.preheader, label %bb.es

.lr.ph1916.preheader:                             ; preds = %.preheader1296
  %i.uf = zext nneg i32 %.lcssa to i64
  br label %.lr.ph1916

.preheader1267:                                   ; preds = %.preheader1267.preheader, %bb.er
  %indvars.iv2750 = phi i64 [ %i.ud, %.preheader1267.preheader ], [ %indvars.iv.next2751, %bb.er ] ; 2 uses
  %.261909 = phi i32 [ %.252944, %.preheader1267.preheader ], [ %i.uy, %bb.er ] ; 5 uses
  %.269461908 = phi i64 [ %.259452943, %.preheader1267.preheader ], [ %i.ux, %bb.er ] ; 3 uses
  %.3010131907 = phi i32 [ %.2910122942, %.preheader1267.preheader ], [ %.311014.lcssa, %bb.er ] ; 3 uses
  %.3010781906 = phi ptr [ %.2910772941, %.preheader1267.preheader ], [ %.311079.lcssa, %bb.er ] ; 4 uses
  %i.ug = icmp ult i32 %.261909, 3
  br i1 %i.ug, label %.lr.ph1760, label %bb.er

.lr.ph1760:                                       ; preds = %.preheader1267
  %i.uh = icmp eq i32 %.3010131907, 0
  br i1 %i.uh, label %.loopexit1260, label %._crit_edge1761

._crit_edge1761:                                  ; preds = %.lr.ph1760
  %i.ui = or disjoint i32 %.261909, 8
  %i.uj = add i32 %.3010131907, -1
  %i.uk = getelementptr inbounds nuw i8, ptr %.3010781906, i64 1
  %i.ul = load i8, ptr %.3010781906, align 1, !tbaa !55
  %i.um = zext i8 %i.ul to i64
  %i.un = zext nneg i32 %.261909 to i64
  %i.uo = shl nuw nsw i64 %i.um, %i.un
  %i.up = add i64 %i.uo, %.269461908
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge1761, %.preheader1267
  %.311079.lcssa = phi ptr [ %i.uk, %._crit_edge1761 ], [ %.3010781906, %.preheader1267 ] ; 2 uses
  %.311014.lcssa = phi i32 [ %i.uj, %._crit_edge1761 ], [ %.3010131907, %.preheader1267 ] ; 2 uses
  %.27947.lcssa = phi i64 [ %i.up, %._crit_edge1761 ], [ %.269461908, %.preheader1267 ] ; 2 uses
  %.27.lcssa = phi i32 [ %i.ui, %._crit_edge1761 ], [ %.261909, %.preheader1267 ]
  %i.uq = trunc i64 %.27947.lcssa to i16
  %i.ur = and i16 %i.uq, 7
  %indvars.iv.next2751 = add nuw nsw i64 %indvars.iv2750, 1 ; 2 uses
  %i.us = trunc i64 %indvars.iv.next2751 to i32   ; 2 uses
  store i32 %i.us, ptr %i.av, align 4, !tbaa !92
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr @zng_inflate.order, i64 %indvars.iv2750
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !111
  %i.uv = zext i16 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.uv
  store i16 %i.ur, ptr %i.uw, align 2, !tbaa !111
  %i.ux = lshr i64 %.27947.lcssa, 3               ; 2 uses
  %i.uy = add i32 %.27.lcssa, -3                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.uc, %i.us
  br i1 %exitcond.not, label %.preheader1296, label %.preheader1267, !llvm.loop !77

.lr.ph1916:                                       ; preds = %.lr.ph1916.preheader, %.lr.ph1916
  %indvars.iv2753 = phi i64 [ %i.uf, %.lr.ph1916.preheader ], [ %indvars.iv.next2754, %.lr.ph1916 ] ; 2 uses
  %indvars.iv.next2754 = add nuw nsw i64 %indvars.iv2753, 1 ; 2 uses
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr @zng_inflate.order, i64 %indvars.iv2753
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !111
  %i.vb = zext i16 %i.va to i64
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.vb
  store i16 0, ptr %i.vc, align 2, !tbaa !111
  %i.vd = and i64 %indvars.iv.next2754, 4294967295
  %exitcond2757.not = icmp eq i64 %i.vd, 19
  br i1 %exitcond2757.not, label %._crit_edge1917, label %.lr.ph1916, !llvm.loop !78

._crit_edge1917:                                  ; preds = %.lr.ph1916
  store i32 19, ptr %i.av, align 4, !tbaa !92
  br label %bb.es

bb.es:                                            ; preds = %._crit_edge1917, %.preheader1296
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !35
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !37
  store i32 7, ptr %i.ba, align 4, !tbaa !56
  %i.ve = call i32 @zng_inflate_table(i32 noundef 0, ptr noundef nonnull %i.aw, i32 noundef 19, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb) #14 ; 2 uses
  %.not1175 = icmp eq i32 %i.ve, 0
  br i1 %.not1175, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.9, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.eu:                                            ; preds = %bb.es
  store i32 0, ptr %i.av, align 4, !tbaa !92
  store i32 16198, ptr %i.p, align 8, !tbaa !23
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge2819, %bb.eu
  %.promoted1971 = phi i32 [ 0, %bb.eu ], [ %.promoted1971.pre, %._crit_edge2819 ] ; 2 uses
  %.321080 = phi ptr [ %.301078.lcssa, %bb.eu ], [ %.01048, %._crit_edge2819 ] ; 2 uses
  %.321015 = phi i32 [ %.301013.lcssa, %bb.eu ], [ %.0983, %._crit_edge2819 ] ; 2 uses
  %.28948 = phi i64 [ %.26946.lcssa, %bb.eu ], [ %.0920, %._crit_edge2819 ] ; 2 uses
  %.28 = phi i32 [ %.26.lcssa, %bb.eu ], [ %.0909, %._crit_edge2819 ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.eu ], [ %.0894, %._crit_edge2819 ] ; 7 uses
  %i.vf = load i32, ptr %i.as, align 4, !tbaa !107 ; 2 uses
  %i.vg = load i32, ptr %i.at, align 16, !tbaa !108
  %i.vh = add i32 %i.vg, %i.vf                    ; 3 uses
  %i.vi = icmp ult i32 %.promoted1971, %i.vh
  br i1 %i.vi, label %.preheader1265.lr.ph, label %._crit_edge1979

.preheader1265.lr.ph:                             ; preds = %bb.ev
  %i.vj = load ptr, ptr %i.az, align 8, !tbaa !37 ; 3 uses
  %i.vk = load i32, ptr %i.ba, align 4, !tbaa !56
  %notmask = shl nsw i32 -1, %i.vk
  %i.vl = xor i32 %notmask, -1
  %i.vm = zext nneg i32 %i.vl to i64              ; 2 uses
  br label %.preheader1265

.preheader1265:                                   ; preds = %.preheader1265.lr.ph, %bb.fg
  %.291978 = phi i32 [ %.28, %.preheader1265.lr.ph ], [ %.35, %bb.fg ] ; 4 uses
  %.299491977 = phi i64 [ %.28948, %.preheader1265.lr.ph ], [ %.35955, %bb.fg ] ; 4 uses
  %.3310161976 = phi i32 [ %.321015, %.preheader1265.lr.ph ], [ %.391022, %bb.fg ] ; 4 uses
  %.3310811975 = phi ptr [ %.321080, %.preheader1265.lr.ph ], [ %.391087, %bb.fg ] ; 3 uses
  %.lcssa196919721974 = phi i32 [ %.promoted1971, %.preheader1265.lr.ph ], [ %.lcssa19691973, %bb.fg ] ; 11 uses
  %i.vn = and i64 %.299491977, %i.vm              ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vn
  %.sroa.1868.0..sroa_idx1921 = getelementptr inbounds nuw i8, ptr %i.vo, i64 1
  %.sroa.1868.0.copyload1922 = load i8, ptr %.sroa.1868.0..sroa_idx1921, align 1, !tbaa !55 ; 2 uses
  %i.vp = zext i8 %.sroa.1868.0.copyload1922 to i32 ; 2 uses
  %.not11761923 = icmp ult i32 %.291978, %i.vp
  br i1 %.not11761923, label %.lr.ph1928.preheader, label %._crit_edge1929

.lr.ph1928.preheader:                             ; preds = %.preheader1265
  %i.vq = icmp eq i32 %.3310161976, 0
  br i1 %i.vq, label %.loopexit1260.loopexit2945, label %.lr.ph3749

.lr.ph3749:                                       ; preds = %.lr.ph1928.preheader
  %i.vr = zext nneg i32 %.291978 to i64
  br label %bb.ew

.lr.ph1928:                                       ; preds = %bb.ew
  %i.vs = icmp eq i32 %i.vt, 0
  br i1 %i.vs, label %.loopexit1260.loopexit2945, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph3749, %.lr.ph1928
  %.34108219243748 = phi ptr [ %.3310811975, %.lr.ph3749 ], [ %i.vu, %.lr.ph1928 ] ; 2 uses
  %.34101719253747 = phi i32 [ %.3310161976, %.lr.ph3749 ], [ %i.vt, %.lr.ph1928 ]
  %.3095019263746 = phi i64 [ %.299491977, %.lr.ph3749 ], [ %i.vy, %.lr.ph1928 ]
  %indvars.iv27583745 = phi i64 [ %i.vr, %.lr.ph3749 ], [ %indvars.iv.next2759, %.lr.ph1928 ] ; 2 uses
  %i.vt = add i32 %.34101719253747, -1            ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.34108219243748, i64 1 ; 2 uses
  %i.vv = load i8, ptr %.34108219243748, align 1, !tbaa !55
  %i.vw = zext i8 %i.vv to i64
  %i.vx = shl i64 %i.vw, %indvars.iv27583745
  %i.vy = add i64 %i.vx, %.3095019263746          ; 4 uses
  %indvars.iv.next2759 = add nuw nsw i64 %indvars.iv27583745, 8 ; 3 uses
  %i.vz = and i64 %i.vy, %i.vm                    ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vz
  %.sroa.1868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  %.sroa.1868.0.copyload = load i8, ptr %.sroa.1868.0..sroa_idx, align 1, !tbaa !55 ; 3 uses
  %i.wb = zext i8 %.sroa.1868.0.copyload to i64
  %.not1176 = icmp samesign ult i64 %indvars.iv.next2759, %i.wb
  br i1 %.not1176, label %.lr.ph1928, label %._crit_edge1929.loopexit

._crit_edge1929.loopexit:                         ; preds = %bb.ew
  %i.wc = zext i8 %.sroa.1868.0.copyload to i32
  %i.wd = trunc nuw nsw i64 %indvars.iv.next2759 to i32
  br label %._crit_edge1929

._crit_edge1929:                                  ; preds = %._crit_edge1929.loopexit, %.preheader1265
  %i.we = phi i64 [ %i.vn, %.preheader1265 ], [ %i.vz, %._crit_edge1929.loopexit ]
  %.lcssa1919 = phi i32 [ %i.vp, %.preheader1265 ], [ %i.wc, %._crit_edge1929.loopexit ] ; 7 uses
  %.341082.lcssa = phi ptr [ %.3310811975, %.preheader1265 ], [ %i.vu, %._crit_edge1929.loopexit ] ; 7 uses
  %.341017.lcssa = phi i32 [ %.3310161976, %.preheader1265 ], [ %i.vt, %._crit_edge1929.loopexit ] ; 7 uses
  %.30950.lcssa = phi i64 [ %.299491977, %.preheader1265 ], [ %i.vy, %._crit_edge1929.loopexit ] ; 7 uses
  %.30.lcssa = phi i32 [ %.291978, %.preheader1265 ], [ %i.wd, %._crit_edge1929.loopexit ] ; 10 uses
  %.sroa.1868.0.copyload.lcssa = phi i8 [ %.sroa.1868.0.copyload1922, %.preheader1265 ], [ %.sroa.1868.0.copyload, %._crit_edge1929.loopexit ] ; 4 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.we
  %.sroa.42.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.wf, i64 2
  %.sroa.42.0.copyload.le = load i16, ptr %.sroa.42.0..sroa_idx.le, align 2, !tbaa !111 ; 3 uses
  %i.wg = icmp ult i16 %.sroa.42.0.copyload.le, 16
  br i1 %i.wg, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %._crit_edge1929
  %i.wh = zext nneg i8 %.sroa.1868.0.copyload.lcssa to i64
  %i.wi = lshr i64 %.30950.lcssa, %i.wh
  %i.wj = sub nuw i32 %.30.lcssa, %.lcssa1919
  %i.wk = add i32 %.lcssa196919721974, 1          ; 2 uses
  store i32 %i.wk, ptr %i.av, align 4, !tbaa !92
  %i.wl = zext i32 %.lcssa196919721974 to i64
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.wl
  store i16 %.sroa.42.0.copyload.le, ptr %i.wm, align 2, !tbaa !111
  br label %bb.fg

bb.ey:                                            ; preds = %._crit_edge1929
  switch i16 %.sroa.42.0.copyload.le, label %.preheader1259 [
    i16 16, label %.preheader1261
    i16 17, label %.preheader1263
  ]

.preheader1263:                                   ; preds = %bb.ey
  %i.wn = add nuw nsw i32 %.lcssa1919, 3          ; 2 uses
  %i.wo = icmp ult i32 %.30.lcssa, %i.wn
  br i1 %i.wo, label %.lr.ph1942.preheader, label %._crit_edge1943

.lr.ph1942.preheader:                             ; preds = %.preheader1263
  %i.wp = zext nneg i32 %.30.lcssa to i64
  %i.wq = zext nneg i32 %i.wn to i64
  br label %.lr.ph1942

.preheader1261:                                   ; preds = %bb.ey
  %i.wr = add nuw nsw i32 %.lcssa1919, 2          ; 2 uses
  %i.ws = icmp ult i32 %.30.lcssa, %i.wr
  br i1 %i.ws, label %.lr.ph1952.preheader, label %._crit_edge1953

.lr.ph1952.preheader:                             ; preds = %.preheader1261
  %i.wt = zext nneg i32 %.30.lcssa to i64
  %i.wu = zext nneg i32 %i.wr to i64
  br label %.lr.ph1952

.preheader1259:                                   ; preds = %bb.ey
  %i.wv = add nuw nsw i32 %.lcssa1919, 7          ; 2 uses
  %i.ww = icmp ult i32 %.30.lcssa, %i.wv
  br i1 %i.ww, label %.lr.ph1962.preheader, label %._crit_edge1963

.lr.ph1962.preheader:                             ; preds = %.preheader1259
  %i.wx = zext nneg i32 %.30.lcssa to i64
  %i.wy = zext nneg i32 %i.wv to i64
  br label %.lr.ph1962

.lr.ph1952:                                       ; preds = %.lr.ph1952.preheader, %bb.ez
  %indvars.iv2764 = phi i64 [ %i.wt, %.lr.ph1952.preheader ], [ %indvars.iv.next2765, %bb.ez ] ; 3 uses
  %.319511950 = phi i64 [ %.30950.lcssa, %.lr.ph1952.preheader ], [ %i.xf, %bb.ez ] ; 2 uses
  %.3510181949 = phi i32 [ %.341017.lcssa, %.lr.ph1952.preheader ], [ %i.xa, %bb.ez ] ; 2 uses
  %.3510831948 = phi ptr [ %.341082.lcssa, %.lr.ph1952.preheader ], [ %i.xb, %bb.ez ] ; 3 uses
  %i.wz = icmp eq i32 %.3510181949, 0
  br i1 %i.wz, label %.loopexit1260.loopexit2317, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph1952
  %i.xa = add i32 %.3510181949, -1                ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.3510831948, i64 1 ; 2 uses
  %i.xc = load i8, ptr %.3510831948, align 1, !tbaa !55
  %i.xd = zext i8 %i.xc to i64
  %i.xe = shl i64 %i.xd, %indvars.iv2764
  %i.xf = add i64 %i.xe, %.319511950              ; 2 uses
  %indvars.iv.next2765 = add nuw nsw i64 %indvars.iv2764, 8 ; 3 uses
  %i.xg = icmp samesign ult i64 %indvars.iv.next2765, %i.wu
  br i1 %i.xg, label %.lr.ph1952, label %._crit_edge1953.loopexit, !llvm.loop !79

._crit_edge1953.loopexit:                         ; preds = %bb.ez
  %i.xh = trunc nuw nsw i64 %indvars.iv.next2765 to i32
  br label %._crit_edge1953

._crit_edge1953:                                  ; preds = %._crit_edge1953.loopexit, %.preheader1261
  %.351083.lcssa = phi ptr [ %.341082.lcssa, %.preheader1261 ], [ %i.xb, %._crit_edge1953.loopexit ] ; 2 uses
  %.351018.lcssa = phi i32 [ %.341017.lcssa, %.preheader1261 ], [ %i.xa, %._crit_edge1953.loopexit ] ; 2 uses
  %.31951.lcssa = phi i64 [ %.30950.lcssa, %.preheader1261 ], [ %i.xf, %._crit_edge1953.loopexit ]
  %.31.lcssa = phi i32 [ %.30.lcssa, %.preheader1261 ], [ %i.xh, %._crit_edge1953.loopexit ]
  %i.xi = zext nneg i8 %.sroa.1868.0.copyload.lcssa to i64
  %i.xj = lshr i64 %.31951.lcssa, %i.xi           ; 3 uses
  %i.xk = sub nuw i32 %.31.lcssa, %.lcssa1919     ; 2 uses
  %i.xl = icmp eq i32 %.lcssa196919721974, 0
  br i1 %i.xl, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %._crit_edge1953
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.10, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.fb:                                            ; preds = %._crit_edge1953
  %i.xm = add i32 %.lcssa196919721974, -1
  %i.xn = zext i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.xn
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !111
  %i.xq = trunc i64 %i.xj to i32
  %i.xr = and i32 %i.xq, 3
  %i.xs = add nuw nsw i32 %i.xr, 3
  %i.xt = lshr i64 %i.xj, 2
  %i.xu = add i32 %i.xk, -2
  br label %bb.fe

.lr.ph1942:                                       ; preds = %.lr.ph1942.preheader, %bb.fc
  %indvars.iv2761 = phi i64 [ %i.wp, %.lr.ph1942.preheader ], [ %indvars.iv.next2762, %bb.fc ] ; 3 uses
  %.329521940 = phi i64 [ %.30950.lcssa, %.lr.ph1942.preheader ], [ %i.yb, %bb.fc ] ; 2 uses
  %.3610191939 = phi i32 [ %.341017.lcssa, %.lr.ph1942.preheader ], [ %i.xw, %bb.fc ] ; 2 uses
  %.3610841938 = phi ptr [ %.341082.lcssa, %.lr.ph1942.preheader ], [ %i.xx, %bb.fc ] ; 3 uses
  %i.xv = icmp eq i32 %.3610191939, 0
  br i1 %i.xv, label %.loopexit1260.loopexit2318, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph1942
  %i.xw = add i32 %.3610191939, -1                ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.3610841938, i64 1 ; 2 uses
  %i.xy = load i8, ptr %.3610841938, align 1, !tbaa !55
  %i.xz = zext i8 %i.xy to i64
  %i.ya = shl i64 %i.xz, %indvars.iv2761
  %i.yb = add i64 %i.ya, %.329521940              ; 2 uses
  %indvars.iv.next2762 = add nuw nsw i64 %indvars.iv2761, 8 ; 3 uses
  %i.yc = icmp samesign ult i64 %indvars.iv.next2762, %i.wq
  br i1 %i.yc, label %.lr.ph1942, label %._crit_edge1943.loopexit, !llvm.loop !80

._crit_edge1943.loopexit:                         ; preds = %bb.fc
  %i.yd = trunc nuw nsw i64 %indvars.iv.next2762 to i32
  br label %._crit_edge1943

._crit_edge1943:                                  ; preds = %._crit_edge1943.loopexit, %.preheader1263
  %.361084.lcssa = phi ptr [ %.341082.lcssa, %.preheader1263 ], [ %i.xx, %._crit_edge1943.loopexit ]
  %.361019.lcssa = phi i32 [ %.341017.lcssa, %.preheader1263 ], [ %i.xw, %._crit_edge1943.loopexit ]
  %.32952.lcssa = phi i64 [ %.30950.lcssa, %.preheader1263 ], [ %i.yb, %._crit_edge1943.loopexit ]
  %.32.lcssa = phi i32 [ %.30.lcssa, %.preheader1263 ], [ %i.yd, %._crit_edge1943.loopexit ]
  %i.ye = zext nneg i8 %.sroa.1868.0.copyload.lcssa to i64
  %i.yf = lshr i64 %.32952.lcssa, %i.ye           ; 2 uses
  %i.yg = trunc i64 %i.yf to i32
  %i.yh = and i32 %i.yg, 7
  %i.yi = add nuw nsw i32 %i.yh, 3
  %i.yj = lshr i64 %i.yf, 3
  %reass.sub = sub i32 %.32.lcssa, %.lcssa1919
  %i.yk = add i32 %reass.sub, -3
  br label %bb.fe

.lr.ph1962:                                       ; preds = %.lr.ph1962.preheader, %bb.fd
  %indvars.iv2767 = phi i64 [ %i.wx, %.lr.ph1962.preheader ], [ %indvars.iv.next2768, %bb.fd ] ; 3 uses
  %.339531960 = phi i64 [ %.30950.lcssa, %.lr.ph1962.preheader ], [ %i.yr, %bb.fd ] ; 2 uses
  %.3710201959 = phi i32 [ %.341017.lcssa, %.lr.ph1962.preheader ], [ %i.ym, %bb.fd ] ; 2 uses
  %.3710851958 = phi ptr [ %.341082.lcssa, %.lr.ph1962.preheader ], [ %i.yn, %bb.fd ] ; 3 uses
  %i.yl = icmp eq i32 %.3710201959, 0
  br i1 %i.yl, label %.loopexit1260.loopexit, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph1962
  %i.ym = add i32 %.3710201959, -1                ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.3710851958, i64 1 ; 2 uses
  %i.yo = load i8, ptr %.3710851958, align 1, !tbaa !55
  %i.yp = zext i8 %i.yo to i64
  %i.yq = shl i64 %i.yp, %indvars.iv2767
  %i.yr = add i64 %i.yq, %.339531960              ; 2 uses
  %indvars.iv.next2768 = add nuw nsw i64 %indvars.iv2767, 8 ; 3 uses
  %i.ys = icmp samesign ult i64 %indvars.iv.next2768, %i.wy
  br i1 %i.ys, label %.lr.ph1962, label %._crit_edge1963.loopexit, !llvm.loop !81

._crit_edge1963.loopexit:                         ; preds = %bb.fd
  %i.yt = trunc nuw nsw i64 %indvars.iv.next2768 to i32
  br label %._crit_edge1963

._crit_edge1963:                                  ; preds = %._crit_edge1963.loopexit, %.preheader1259
  %.371085.lcssa = phi ptr [ %.341082.lcssa, %.preheader1259 ], [ %i.yn, %._crit_edge1963.loopexit ]
  %.371020.lcssa = phi i32 [ %.341017.lcssa, %.preheader1259 ], [ %i.ym, %._crit_edge1963.loopexit ]
  %.33953.lcssa = phi i64 [ %.30950.lcssa, %.preheader1259 ], [ %i.yr, %._crit_edge1963.loopexit ]
  %.33.lcssa = phi i32 [ %.30.lcssa, %.preheader1259 ], [ %i.yt, %._crit_edge1963.loopexit ]
  %i.yu = zext nneg i8 %.sroa.1868.0.copyload.lcssa to i64
  %i.yv = lshr i64 %.33953.lcssa, %i.yu           ; 2 uses
  %i.yw = trunc i64 %i.yv to i32
  %i.yx = and i32 %i.yw, 127
  %i.yy = add nuw nsw i32 %i.yx, 11
  %i.yz = lshr i64 %i.yv, 7
  %reass.sub2316 = sub i32 %.33.lcssa, %.lcssa1919
  %i.za = add i32 %reass.sub2316, -7
  br label %bb.fe

bb.fe:                                            ; preds = %._crit_edge1943, %._crit_edge1963, %bb.fb
  %.381086 = phi ptr [ %.351083.lcssa, %bb.fb ], [ %.361084.lcssa, %._crit_edge1943 ], [ %.371085.lcssa, %._crit_edge1963 ] ; 2 uses
  %.381021 = phi i32 [ %.351018.lcssa, %bb.fb ], [ %.361019.lcssa, %._crit_edge1943 ], [ %.371020.lcssa, %._crit_edge1963 ] ; 2 uses
  %.34954 = phi i64 [ %i.xt, %bb.fb ], [ %i.yj, %._crit_edge1943 ], [ %i.yz, %._crit_edge1963 ] ; 2 uses
  %.34 = phi i32 [ %i.xu, %bb.fb ], [ %i.yk, %._crit_edge1943 ], [ %i.za, %._crit_edge1963 ] ; 2 uses
  %.3899 = phi i32 [ %i.xs, %bb.fb ], [ %i.yi, %._crit_edge1943 ], [ %i.yy, %._crit_edge1963 ] ; 12 uses
  %.0895 = phi i16 [ %i.xp, %bb.fb ], [ 0, %._crit_edge1943 ], [ 0, %._crit_edge1963 ] ; 7 uses
  %i.zb = add i32 %.3899, %.lcssa196919721974
  %i.zc = icmp ugt i32 %i.zb, %i.vh
  br i1 %i.zc, label %bb.ff, label %iter.check

iter.check:                                       ; preds = %bb.fe
  %min.iters.check = icmp samesign ult i32 %.3899, 4
  %i.zd = sub nsw i32 0, %.3899
  %i.ze = icmp ugt i32 %.lcssa196919721974, %i.zd
  %or.cond3900 = select i1 %min.iters.check, i1 true, i1 %i.ze
  br i1 %or.cond3900, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3891 = icmp samesign ult i32 %.3899, 16
  br i1 %min.iters.check3891, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zf = and i32 %.3899, 12
  %n.vec = and i32 %.3899, -16                    ; 4 uses
  %i.zg = and i32 %.3899, 15
  %i.zh = add i32 %.lcssa196919721974, %n.vec     ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.0895, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zi = add i32 %.lcssa196919721974, %index
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.zj ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.zk, align 2, !tbaa !111
  store <8 x i16> %broadcast.splat, ptr %i.zl, align 2, !tbaa !111
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.zm = icmp eq i32 %index.next, %n.vec
  br i1 %i.zm, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.3899, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.zf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3892 = and i32 %.3899, -4                 ; 3 uses
  %i.zn = and i32 %.3899, 3
  %i.zo = add i32 %.lcssa196919721974, %n.vec3892 ; 2 uses
  %broadcast.splatinsert3893 = insertelement <4 x i16> poison, i16 %.0895, i64 0
  %broadcast.splat3894 = shufflevector <4 x i16> %broadcast.splatinsert3893, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3895 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3896, %vec.epilog.vector.body ] ; 2 uses
  %i.zp = add i32 %.lcssa196919721974, %index3895
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.zq
  store <4 x i16> %broadcast.splat3894, ptr %i.zr, align 2, !tbaa !111
  %index.next3896 = add nuw i32 %index3895, 4     ; 2 uses
  %i.zs = icmp eq i32 %index.next3896, %n.vec3892
  br i1 %i.zs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3897 = icmp eq i32 %.3899, %n.vec3892
  br i1 %cmp.n3897, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.49001970.ph = phi i32 [ %.3899, %iter.check ], [ %i.zg, %vec.epilog.iter.check ], [ %i.zn, %vec.epilog.middle.block ] ; 4 uses
  %.ph = phi i32 [ %.lcssa196919721974, %iter.check ], [ %i.zh, %vec.epilog.iter.check ], [ %i.zo, %vec.epilog.middle.block ] ; 2 uses
  %i.zt = add nsw i32 %.49001970.ph, -1
  %xtraiter = and i32 %.49001970.ph, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.49001970.prol = phi i32 [ %i.zv, %.preheader.prol ], [ %.49001970.ph, %.preheader.preheader ]
  %i.zu = phi i32 [ %i.zw, %.preheader.prol ], [ %.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.zv = add i32 %.49001970.prol, -1             ; 2 uses
  %i.zw = add i32 %i.zu, 1                        ; 3 uses
  %i.zx = zext i32 %i.zu to i64
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.zx
  store i16 %.0895, ptr %i.zy, align 2, !tbaa !111
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !84

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa3962.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.zw, %.preheader.prol ]
  %.49001970.unr = phi i32 [ %.49001970.ph, %.preheader.preheader ], [ %i.zv, %.preheader.prol ]
  %.unr = phi i32 [ %.ph, %.preheader.preheader ], [ %i.zw, %.preheader.prol ]
  %i.zz = icmp ult i32 %i.zt, 3
  br i1 %i.zz, label %.loopexit, label %.preheader

bb.ff:                                            ; preds = %bb.fe
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.10, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.49001970 = phi i32 [ %i.aak, %.preheader ], [ %.49001970.unr, %.preheader.prol.loopexit ]
  %i.aaa = phi i32 [ %i.aal, %.preheader ], [ %.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.aab = add i32 %i.aaa, 1
  %i.aac = zext i32 %i.aaa to i64
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.aac
  store i16 %.0895, ptr %i.aad, align 2, !tbaa !111
  %i.aae = add i32 %i.aaa, 2
  %i.aaf = zext i32 %i.aab to i64
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.aaf
  store i16 %.0895, ptr %i.aag, align 2, !tbaa !111
  %i.aah = add i32 %i.aaa, 3
  %i.aai = zext i32 %i.aae to i64
  %i.aaj = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.aai
  store i16 %.0895, ptr %i.aaj, align 2, !tbaa !111
  %i.aak = add i32 %.49001970, -4                 ; 2 uses
  %i.aal = add i32 %i.aaa, 4                      ; 2 uses
  %i.aam = zext i32 %i.aah to i64
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.aam
  store i16 %.0895, ptr %i.aan, align 2, !tbaa !111
  %.not1177.3 = icmp eq i32 %i.aak, 0
  br i1 %.not1177.3, label %.loopexit, label %.preheader, !llvm.loop !85

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %vec.epilog.middle.block, %middle.block
  %.lcssa3401 = phi i32 [ %i.zo, %vec.epilog.middle.block ], [ %i.zh, %middle.block ], [ %.lcssa3962.unr, %.preheader.prol.loopexit ], [ %i.aal, %.preheader ] ; 2 uses
  store i32 %.lcssa3401, ptr %i.av, align 4, !tbaa !92
  br label %bb.fg

bb.fg:                                            ; preds = %.loopexit, %bb.ex
  %.lcssa19691973 = phi i32 [ %i.wk, %bb.ex ], [ %.lcssa3401, %.loopexit ] ; 2 uses
  %.391087 = phi ptr [ %.341082.lcssa, %bb.ex ], [ %.381086, %.loopexit ] ; 2 uses
  %.391022 = phi i32 [ %.341017.lcssa, %bb.ex ], [ %.381021, %.loopexit ] ; 2 uses
  %.35955 = phi i64 [ %i.wi, %bb.ex ], [ %.34954, %.loopexit ] ; 2 uses
  %.35 = phi i32 [ %i.wj, %bb.ex ], [ %.34, %.loopexit ] ; 2 uses
  %i.aao = icmp ult i32 %.lcssa19691973, %i.vh
  br i1 %i.aao, label %.preheader1265, label %._crit_edge1979, !llvm.loop !86

._crit_edge1979:                                  ; preds = %bb.fg, %bb.ev
  %.331081.lcssa = phi ptr [ %.321080, %bb.ev ], [ %.391087, %bb.fg ] ; 5 uses
  %.331016.lcssa = phi i32 [ %.321015, %bb.ev ], [ %.391022, %bb.fg ] ; 5 uses
  %.29949.lcssa = phi i64 [ %.28948, %bb.ev ], [ %.35955, %bb.fg ] ; 5 uses
  %.29.lcssa = phi i32 [ %.28, %bb.ev ], [ %.35, %bb.fg ] ; 5 uses
  %i.aap = load i16, ptr %i.bc, align 4, !tbaa !111
  %i.aaq = icmp eq i16 %i.aap, 0
  br i1 %i.aaq, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %._crit_edge1979
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.11, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.fi:                                            ; preds = %._crit_edge1979
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !35
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !37
  store i32 10, ptr %i.ba, align 4, !tbaa !56
  %i.aar = call i32 @zng_inflate_table(i32 noundef 1, ptr noundef nonnull %i.aw, i32 noundef %i.vf, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb) #14 ; 2 uses
  %.not1178 = icmp eq i32 %i.aar, 0
  br i1 %.not1178, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.12, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.fk:                                            ; preds = %bb.fi
  %i.aas = load ptr, ptr %i.ay, align 8, !tbaa !35
  store ptr %i.aas, ptr %i.bd, align 16, !tbaa !36
  store i32 9, ptr %i.be, align 8, !tbaa !57
  %i.aat = load i32, ptr %i.as, align 4, !tbaa !107
  %i.aau = zext i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.aau
  %i.aaw = load i32, ptr %i.at, align 16, !tbaa !108
  %i.aax = call i32 @zng_inflate_table(i32 noundef 2, ptr noundef nonnull %i.aav, i32 noundef %i.aaw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bb) #14 ; 2 uses
  %.not1179 = icmp eq i32 %i.aax, 0
  br i1 %.not1179, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.13, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.fm:                                            ; preds = %bb.fk
  store i32 16199, ptr %i.p, align 8, !tbaa !23
  br i1 %i.bf, label %.loopexit1260, label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.l
  %.411089 = phi ptr [ %.331081.lcssa, %bb.fm ], [ %.01048, %bb.l ]
  %.411024 = phi i32 [ %.331016.lcssa, %bb.fm ], [ %.0983, %bb.l ]
  %.37957 = phi i64 [ %.29949.lcssa, %bb.fm ], [ %.0920, %bb.l ]
  %.37 = phi i32 [ %.29.lcssa, %bb.fm ], [ %.0909, %bb.l ]
  %.2 = phi i32 [ 0, %bb.fm ], [ %.0894, %bb.l ]
  store i32 16200, ptr %i.p, align 8, !tbaa !23
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.l
  %.421090 = phi ptr [ %.411089, %bb.fn ], [ %.01048, %bb.l ] ; 4 uses
  %.421025 = phi i32 [ %.411024, %bb.fn ], [ %.0983, %bb.l ] ; 6 uses
  %.38958 = phi i64 [ %.37957, %bb.fn ], [ %.0920, %bb.l ] ; 5 uses
  %.38 = phi i32 [ %.37, %bb.fn ], [ %.0909, %bb.l ] ; 5 uses
  %.3 = phi i32 [ %.2, %bb.fn ], [ %.0894, %bb.l ] ; 8 uses
  %i.aay = icmp ugt i32 %.421025, 14
  %i.aaz = icmp ugt i32 %.0981, 259
  %or.cond5 = select i1 %i.aay, i1 %i.aaz, i1 false
  br i1 %or.cond5, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  store ptr %.01045, ptr %i.s, align 8, !tbaa !89
  store i32 %.0981, ptr %i.ab, align 8, !tbaa !90
  store ptr %.421090, ptr %0, align 8, !tbaa !58
  store i32 %.421025, ptr %i.ad, align 8, !tbaa !59
  store i64 %.38958, ptr %i.af, align 8, !tbaa !33
  store i32 %.38, ptr %i.ah, align 32, !tbaa !34
  %i.aba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 80), align 8, !tbaa !113
  call void %i.aba(ptr noundef nonnull %0, i32 noundef %.0903) #14
  %i.abb = load ptr, ptr %i.s, align 8, !tbaa !89 ; 2 uses
  %i.abc = load i32, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  %i.abd = load ptr, ptr %0, align 8, !tbaa !58   ; 2 uses
  %i.abe = load i32, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.abf = load i64, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %i.abg = load i32, ptr %i.ah, align 32, !tbaa !34 ; 2 uses
  %i.abh = load i32, ptr %i.p, align 8, !tbaa !23
  %i.abi = icmp eq i32 %i.abh, 16191
  br i1 %i.abi, label %bb.fq, label %.thread

bb.fq:                                            ; preds = %bb.fp
  store i32 -1, ptr %i.bg, align 8, !tbaa !38
  br label %.thread

bb.fr:                                            ; preds = %bb.fo
  store i32 0, ptr %i.bg, align 8, !tbaa !38
  %i.abj = load ptr, ptr %i.az, align 8, !tbaa !37 ; 3 uses
  %i.abk = load i32, ptr %i.ba, align 4, !tbaa !56
  %notmask1180 = shl nsw i32 -1, %i.abk
  %i.abl = xor i32 %notmask1180, -1
  %i.abm = zext nneg i32 %i.abl to i64            ; 2 uses
  %i.abn = and i64 %.38958, %i.abm
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.abn ; 2 uses
  %.sroa.1868.0..sroa_idx691986 = getelementptr inbounds nuw i8, ptr %i.abo, i64 1
  %.sroa.1868.0.copyload701987 = load i8, ptr %.sroa.1868.0..sroa_idx691986, align 1, !tbaa !55 ; 2 uses
  %i.abp = zext i8 %.sroa.1868.0.copyload701987 to i32 ; 2 uses
  %.not11811988 = icmp ult i32 %.38, %i.abp
  br i1 %.not11811988, label %.lr.ph1994.preheader, label %._crit_edge1995

.lr.ph1994.preheader:                             ; preds = %bb.fr
  %i.abq = icmp eq i32 %.421025, 0
  br i1 %i.abq, label %.loopexit1260.loopexit2951, label %.lr.ph3769

.lr.ph3769:                                       ; preds = %.lr.ph1994.preheader
  %i.abr = zext nneg i32 %.38 to i64
  br label %bb.fs

.lr.ph1994:                                       ; preds = %bb.fs
  %i.abs = icmp eq i32 %i.abt, 0
  br i1 %i.abs, label %.loopexit1260.loopexit2951, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph3769, %.lr.ph1994
  %.43109119893768 = phi ptr [ %.421090, %.lr.ph3769 ], [ %i.abu, %.lr.ph1994 ] ; 2 uses
  %.43102619903767 = phi i32 [ %.421025, %.lr.ph3769 ], [ %i.abt, %.lr.ph1994 ]
  %.3995919913766 = phi i64 [ %.38958, %.lr.ph3769 ], [ %i.aby, %.lr.ph1994 ]
  %indvars.iv27703765 = phi i64 [ %i.abr, %.lr.ph3769 ], [ %indvars.iv.next2771, %.lr.ph1994 ] ; 2 uses
  %i.abt = add i32 %.43102619903767, -1           ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.43109119893768, i64 1 ; 2 uses
  %i.abv = load i8, ptr %.43109119893768, align 1, !tbaa !55
  %i.abw = zext i8 %i.abv to i64
  %i.abx = shl i64 %i.abw, %indvars.iv27703765
  %i.aby = add i64 %i.abx, %.3995919913766        ; 4 uses
  %indvars.iv.next2771 = add nuw nsw i64 %indvars.iv27703765, 8 ; 3 uses
  %i.abz = and i64 %i.aby, %i.abm
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.abz ; 2 uses
  %.sroa.1868.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.aca, i64 1
  %.sroa.1868.0.copyload70 = load i8, ptr %.sroa.1868.0..sroa_idx69, align 1, !tbaa !55 ; 3 uses
  %i.acb = zext i8 %.sroa.1868.0.copyload70 to i64
  %.not1181 = icmp samesign ult i64 %indvars.iv.next2771, %i.acb
  br i1 %.not1181, label %.lr.ph1994, label %._crit_edge1995.loopexit

._crit_edge1995.loopexit:                         ; preds = %bb.fs
  %i.acc = zext i8 %.sroa.1868.0.copyload70 to i32
  %i.acd = trunc nuw nsw i64 %indvars.iv.next2771 to i32
  br label %._crit_edge1995

._crit_edge1995:                                  ; preds = %._crit_edge1995.loopexit, %bb.fr
  %.lcssa1985 = phi ptr [ %i.abo, %bb.fr ], [ %i.aca, %._crit_edge1995.loopexit ] ; 2 uses
  %.431091.lcssa = phi ptr [ %.421090, %bb.fr ], [ %i.abu, %._crit_edge1995.loopexit ] ; 4 uses
  %.431026.lcssa = phi i32 [ %.421025, %bb.fr ], [ %i.abt, %._crit_edge1995.loopexit ] ; 5 uses
  %.39959.lcssa = phi i64 [ %.38958, %bb.fr ], [ %i.aby, %._crit_edge1995.loopexit ] ; 5 uses
  %.39.lcssa = phi i32 [ %.38, %bb.fr ], [ %i.acd, %._crit_edge1995.loopexit ] ; 5 uses
  %.sroa.1868.0.copyload70.lcssa = phi i8 [ %.sroa.1868.0.copyload701987, %bb.fr ], [ %.sroa.1868.0.copyload70, %._crit_edge1995.loopexit ] ; 2 uses
  %.lcssa1395 = phi i32 [ %i.abp, %bb.fr ], [ %i.acc, %._crit_edge1995.loopexit ] ; 5 uses
  %.sroa.42.0..sroa_idx98.le = getelementptr inbounds nuw i8, ptr %.lcssa1985, i64 2
  %.sroa.42.0.copyload99.le = load i16, ptr %.sroa.42.0..sroa_idx98.le, align 2, !tbaa !111 ; 2 uses
  %.sroa.055.0.copyload64 = load i8, ptr %.lcssa1985, align 2, !tbaa !55 ; 3 uses
  %i.ace = add i8 %.sroa.055.0.copyload64, -1
  %or.cond1248 = icmp ult i8 %i.ace, 15
  br i1 %or.cond1248, label %.preheader1293, label %bb.fu

.preheader1293:                                   ; preds = %._crit_edge1995
  %i.acf = zext nneg i8 %.sroa.055.0.copyload64 to i32
  %i.acg = zext i16 %.sroa.42.0.copyload99.le to i64
  %i.ach = add nuw nsw i32 %.lcssa1395, %i.acf
  %notmask1183 = shl nsw i32 -1, %i.ach
  %i.aci = xor i32 %notmask1183, -1
  %i.acj = zext nneg i32 %i.aci to i64            ; 2 uses
  %i.ack = zext i8 %.sroa.1868.0.copyload70.lcssa to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.acg ; 2 uses
  %i.acl = and i64 %.39959.lcssa, %i.acj
  %i.acm = lshr i64 %i.acl, %i.ack
  %gep2005 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.acm ; 2 uses
  %.sroa.1868.0..sroa_idx712006 = getelementptr inbounds nuw i8, ptr %gep2005, i64 1
  %.sroa.1868.0.copyload722007 = load i8, ptr %.sroa.1868.0..sroa_idx712006, align 1, !tbaa !55 ; 2 uses
  %i.acn = zext i8 %.sroa.1868.0.copyload722007 to i32
  %i.aco = add nuw nsw i32 %.lcssa1395, %i.acn
  %.not11842008 = icmp ugt i32 %i.aco, %.39.lcssa
  br i1 %.not11842008, label %.lr.ph2013.preheader, label %._crit_edge2014

.lr.ph2013.preheader:                             ; preds = %.preheader1293
  %i.acp = icmp eq i32 %.431026.lcssa, 0
  br i1 %i.acp, label %.loopexit1260.loopexit2950, label %.lr.ph3790

.lr.ph3790:                                       ; preds = %.lr.ph2013.preheader
  %i.acq = zext nneg i32 %.39.lcssa to i64
  br label %bb.ft

.lr.ph2013:                                       ; preds = %bb.ft
  %i.acr = icmp eq i32 %i.acs, 0
  br i1 %i.acr, label %.loopexit1260.loopexit2950, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph3790, %.lr.ph2013
  %.44109220093789 = phi ptr [ %.431091.lcssa, %.lr.ph3790 ], [ %i.act, %.lr.ph2013 ] ; 2 uses
  %.44102720103788 = phi i32 [ %.431026.lcssa, %.lr.ph3790 ], [ %i.acs, %.lr.ph2013 ]
  %.4096020113787 = phi i64 [ %.39959.lcssa, %.lr.ph3790 ], [ %i.acx, %.lr.ph2013 ]
  %indvars.iv27743786 = phi i64 [ %i.acq, %.lr.ph3790 ], [ %indvars.iv.next2775, %.lr.ph2013 ] ; 2 uses
  %i.acs = add i32 %.44102720103788, -1           ; 3 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.44109220093789, i64 1 ; 2 uses
  %i.acu = load i8, ptr %.44109220093789, align 1, !tbaa !55
  %i.acv = zext i8 %i.acu to i64
  %i.acw = shl i64 %i.acv, %indvars.iv27743786
  %i.acx = add i64 %i.acw, %.4096020113787        ; 4 uses
  %indvars.iv.next2775 = add nuw nsw i64 %indvars.iv27743786, 8 ; 3 uses
  %i.acy = and i64 %i.acx, %i.acj
  %i.acz = lshr i64 %i.acy, %i.ack
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.acz ; 2 uses
  %.sroa.1868.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %.sroa.1868.0.copyload72 = load i8, ptr %.sroa.1868.0..sroa_idx71, align 1, !tbaa !55 ; 2 uses
  %i.ada = zext i8 %.sroa.1868.0.copyload72 to i32
  %i.adb = add nuw nsw i32 %.lcssa1395, %i.ada
  %i.adc = zext nneg i32 %i.adb to i64
  %.not1184 = icmp samesign ult i64 %indvars.iv.next2775, %i.adc
  br i1 %.not1184, label %.lr.ph2013, label %._crit_edge2014.loopexit

._crit_edge2014.loopexit:                         ; preds = %bb.ft
  %i.add = trunc nuw nsw i64 %indvars.iv.next2775 to i32
  br label %._crit_edge2014

._crit_edge2014:                                  ; preds = %._crit_edge2014.loopexit, %.preheader1293
  %.441092.lcssa = phi ptr [ %.431091.lcssa, %.preheader1293 ], [ %i.act, %._crit_edge2014.loopexit ]
  %.441027.lcssa = phi i32 [ %.431026.lcssa, %.preheader1293 ], [ %i.acs, %._crit_edge2014.loopexit ]
  %.40960.lcssa = phi i64 [ %.39959.lcssa, %.preheader1293 ], [ %i.acx, %._crit_edge2014.loopexit ]
  %.40.lcssa = phi i32 [ %.39.lcssa, %.preheader1293 ], [ %i.add, %._crit_edge2014.loopexit ]
  %.lcssa1408 = phi ptr [ %gep2005, %.preheader1293 ], [ %gep, %._crit_edge2014.loopexit ] ; 2 uses
  %.sroa.1868.0.copyload72.lcssa = phi i8 [ %.sroa.1868.0.copyload722007, %.preheader1293 ], [ %.sroa.1868.0.copyload72, %._crit_edge2014.loopexit ]
  %.sroa.42.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %.lcssa1408, i64 2
  %.sroa.42.0.copyload101 = load i16, ptr %.sroa.42.0..sroa_idx100, align 2, !tbaa !111
  %.sroa.055.0.copyload65 = load i8, ptr %.lcssa1408, align 2, !tbaa !55
  %i.ade = lshr i64 %.40960.lcssa, %i.ack
  %i.adf = sub nuw i32 %.40.lcssa, %.lcssa1395
  br label %bb.fu

bb.fu:                                            ; preds = %._crit_edge1995, %._crit_edge2014
  %i.adg = phi i32 [ %.lcssa1395, %._crit_edge2014 ], [ 0, %._crit_edge1995 ]
  %.451093 = phi ptr [ %.441092.lcssa, %._crit_edge2014 ], [ %.431091.lcssa, %._crit_edge1995 ] ; 4 uses
  %.451028 = phi i32 [ %.441027.lcssa, %._crit_edge2014 ], [ %.431026.lcssa, %._crit_edge1995 ] ; 4 uses
  %.41961 = phi i64 [ %i.ade, %._crit_edge2014 ], [ %.39959.lcssa, %._crit_edge1995 ]
  %.41 = phi i32 [ %i.adf, %._crit_edge2014 ], [ %.39.lcssa, %._crit_edge1995 ]
  %.sroa.42.0 = phi i16 [ %.sroa.42.0.copyload101, %._crit_edge2014 ], [ %.sroa.42.0.copyload99.le, %._crit_edge1995 ]
  %.sroa.1868.0 = phi i8 [ %.sroa.1868.0.copyload72.lcssa, %._crit_edge2014 ], [ %.sroa.1868.0.copyload70.lcssa, %._crit_edge1995 ] ; 2 uses
  %.sroa.055.0 = phi i8 [ %.sroa.055.0.copyload65, %._crit_edge2014 ], [ %.sroa.055.0.copyload64, %._crit_edge1995 ] ; 2 uses
  %i.adh = zext i8 %.sroa.1868.0 to i32           ; 2 uses
  %i.adi = zext nneg i8 %.sroa.1868.0 to i64
  %i.adj = lshr i64 %.41961, %i.adi               ; 4 uses
  %i.adk = sub i32 %.41, %i.adh                   ; 4 uses
  %i.adl = add nuw nsw i32 %i.adg, %i.adh
  store i32 %i.adl, ptr %i.bg, align 8, !tbaa !38
  %i.adm = zext i16 %.sroa.42.0 to i32
  store i32 %i.adm, ptr %i.ar, align 4, !tbaa !62
  %i.adn = zext i8 %.sroa.055.0 to i32            ; 3 uses
  %i.ado = icmp eq i8 %.sroa.055.0, 0
  br i1 %i.ado, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 16205, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.fw:                                            ; preds = %bb.fu
  %i.adp = and i32 %i.adn, 32
  %.not1185 = icmp eq i32 %i.adp, 0
  br i1 %.not1185, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  store i32 -1, ptr %i.bg, align 8, !tbaa !38
  store i32 16191, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.fy:                                            ; preds = %bb.fw
  %i.adq = and i32 %i.adn, 64
  %.not1186 = icmp eq i32 %i.adq, 0
  br i1 %.not1186, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.14, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.ga:                                            ; preds = %bb.fy
  %i.adr = and i32 %i.adn, 15                     ; 2 uses
  store i32 %i.adr, ptr %i.bh, align 4, !tbaa !91
  store i32 16201, ptr %i.p, align 8, !tbaa !23
  br label %bb.gb

bb.gb:                                            ; preds = %._crit_edge2822, %bb.ga
  %i.ads = phi i32 [ %i.adr, %bb.ga ], [ %.pre2823, %._crit_edge2822 ] ; 7 uses
  %.461094 = phi ptr [ %.451093, %bb.ga ], [ %.01048, %._crit_edge2822 ] ; 4 uses
  %.461029 = phi i32 [ %.451028, %bb.ga ], [ %.0983, %._crit_edge2822 ] ; 5 uses
  %.42962 = phi i64 [ %i.adj, %bb.ga ], [ %.0920, %._crit_edge2822 ] ; 4 uses
  %.42 = phi i32 [ %i.adk, %bb.ga ], [ %.0909, %._crit_edge2822 ] ; 5 uses
  %.4 = phi i32 [ %.3, %bb.ga ], [ %.0894, %._crit_edge2822 ] ; 2 uses
  %.not1187 = icmp eq i32 %i.ads, 0
  br i1 %.not1187, label %._crit_edge2824, label %.preheader1291

._crit_edge2824:                                  ; preds = %bb.gb
  %.pre2825 = load i32, ptr %i.ar, align 4, !tbaa !62
  br label %bb.gc

.preheader1291:                                   ; preds = %bb.gb
  %i.adt = icmp ult i32 %.42, %i.ads
  br i1 %i.adt, label %.lr.ph2026.preheader, label %._crit_edge2027

.lr.ph2026.preheader:                             ; preds = %.preheader1291
  %i.adu = icmp eq i32 %.461029, 0
  br i1 %i.adu, label %.loopexit1260.loopexit2949, label %.lr.ph3811

.lr.ph2026:                                       ; preds = %.lr.ph3811
  %i.adv = icmp eq i32 %i.adw, 0
  br i1 %i.adv, label %.loopexit1260.loopexit2949, label %.lr.ph3811, !llvm.loop !87

.lr.ph3811:                                       ; preds = %.lr.ph2026.preheader, %.lr.ph2026
  %.47109520223810 = phi ptr [ %i.adx, %.lr.ph2026 ], [ %.461094, %.lr.ph2026.preheader ] ; 2 uses
  %.47103020233809 = phi i32 [ %i.adw, %.lr.ph2026 ], [ %.461029, %.lr.ph2026.preheader ]
  %.4396320243808 = phi i64 [ %i.aec, %.lr.ph2026 ], [ %.42962, %.lr.ph2026.preheader ]
  %.4320253807 = phi i32 [ %i.aed, %.lr.ph2026 ], [ %.42, %.lr.ph2026.preheader ] ; 2 uses
  %i.adw = add i32 %.47103020233809, -1           ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.47109520223810, i64 1 ; 2 uses
  %i.ady = load i8, ptr %.47109520223810, align 1, !tbaa !55
  %i.adz = zext i8 %i.ady to i64
  %i.aea = zext nneg i32 %.4320253807 to i64
  %i.aeb = shl i64 %i.adz, %i.aea
  %i.aec = add i64 %i.aeb, %.4396320243808        ; 3 uses
  %i.aed = add i32 %.4320253807, 8                ; 3 uses
  %i.aee = icmp ult i32 %i.aed, %i.ads
  br i1 %i.aee, label %.lr.ph2026, label %._crit_edge2027, !llvm.loop !87

._crit_edge2027:                                  ; preds = %.lr.ph3811, %.preheader1291
  %.471095.lcssa = phi ptr [ %.461094, %.preheader1291 ], [ %i.adx, %.lr.ph3811 ]
  %.471030.lcssa = phi i32 [ %.461029, %.preheader1291 ], [ %i.adw, %.lr.ph3811 ]
  %.43963.lcssa = phi i64 [ %.42962, %.preheader1291 ], [ %i.aec, %.lr.ph3811 ] ; 2 uses
  %.43.lcssa = phi i32 [ %.42, %.preheader1291 ], [ %i.aed, %.lr.ph3811 ]
  %notmask1188 = shl nsw i32 -1, %i.ads
  %i.aef = xor i32 %notmask1188, -1
  %i.aeg = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.aeh = trunc i64 %.43963.lcssa to i32
  %i.aei = and i32 %i.aeh, %i.aef
  %i.aej = add i32 %i.aeg, %i.aei                 ; 2 uses
  store i32 %i.aej, ptr %i.ar, align 4, !tbaa !62
  %i.aek = zext nneg i32 %i.ads to i64
  %i.ael = lshr i64 %.43963.lcssa, %i.aek
  %i.aem = sub nuw i32 %.43.lcssa, %i.ads
  %i.aen = load i32, ptr %i.bg, align 8, !tbaa !38
  %i.aeo = add i32 %i.aen, %i.ads
  store i32 %i.aeo, ptr %i.bg, align 8, !tbaa !38
  br label %bb.gc

bb.gc:                                            ; preds = %._crit_edge2824, %._crit_edge2027
  %i.aep = phi i32 [ %i.aej, %._crit_edge2027 ], [ %.pre2825, %._crit_edge2824 ]
  %.481096 = phi ptr [ %.471095.lcssa, %._crit_edge2027 ], [ %.461094, %._crit_edge2824 ]
  %.481031 = phi i32 [ %.471030.lcssa, %._crit_edge2027 ], [ %.461029, %._crit_edge2824 ]
  %.44964 = phi i64 [ %i.ael, %._crit_edge2027 ], [ %.42962, %._crit_edge2824 ]
  %.44 = phi i32 [ %i.aem, %._crit_edge2027 ], [ %.42, %._crit_edge2824 ]
  store i32 %i.aep, ptr %i.bi, align 4, !tbaa !67
  store i32 16202, ptr %i.p, align 8, !tbaa !23
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.l
  %.491097 = phi ptr [ %.481096, %bb.gc ], [ %.01048, %bb.l ] ; 3 uses
  %.491032 = phi i32 [ %.481031, %bb.gc ], [ %.0983, %bb.l ] ; 4 uses
  %.45965 = phi i64 [ %.44964, %bb.gc ], [ %.0920, %bb.l ] ; 4 uses
  %.45 = phi i32 [ %.44, %bb.gc ], [ %.0909, %bb.l ] ; 4 uses
  %.5 = phi i32 [ %.4, %bb.gc ], [ %.0894, %bb.l ] ; 4 uses
  %i.aeq = load ptr, ptr %i.bd, align 16, !tbaa !36 ; 3 uses
  %i.aer = load i32, ptr %i.be, align 8, !tbaa !57
  %notmask1189 = shl nsw i32 -1, %i.aer
  %i.aes = xor i32 %notmask1189, -1
  %i.aet = zext nneg i32 %i.aes to i64            ; 2 uses
  %i.aeu = and i64 %.45965, %i.aet
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %i.aeu ; 2 uses
  %.sroa.1868.0..sroa_idx732033 = getelementptr inbounds nuw i8, ptr %i.aev, i64 1
  %.sroa.1868.0.copyload742034 = load i8, ptr %.sroa.1868.0..sroa_idx732033, align 1, !tbaa !55 ; 2 uses
  %i.aew = zext i8 %.sroa.1868.0.copyload742034 to i32 ; 2 uses
  %.not11902035 = icmp ult i32 %.45, %i.aew
  br i1 %.not11902035, label %.lr.ph2041.preheader, label %._crit_edge2042

.lr.ph2041.preheader:                             ; preds = %bb.gd
  %i.aex = icmp eq i32 %.491032, 0
  br i1 %i.aex, label %.loopexit1260.loopexit2948, label %.lr.ph3832

.lr.ph3832:                                       ; preds = %.lr.ph2041.preheader
  %i.aey = zext nneg i32 %.45 to i64
  br label %bb.ge

.lr.ph2041:                                       ; preds = %bb.ge
  %i.aez = icmp eq i32 %i.afa, 0
  br i1 %i.aez, label %.loopexit1260.loopexit2948, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph3832, %.lr.ph2041
  %.50109820363831 = phi ptr [ %.491097, %.lr.ph3832 ], [ %i.afb, %.lr.ph2041 ] ; 2 uses
  %.50103320373830 = phi i32 [ %.491032, %.lr.ph3832 ], [ %i.afa, %.lr.ph2041 ]
  %.4696620383829 = phi i64 [ %.45965, %.lr.ph3832 ], [ %i.aff, %.lr.ph2041 ]
  %indvars.iv27793828 = phi i64 [ %i.aey, %.lr.ph3832 ], [ %indvars.iv.next2780, %.lr.ph2041 ] ; 2 uses
  %i.afa = add i32 %.50103320373830, -1           ; 3 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.50109820363831, i64 1 ; 2 uses
  %i.afc = load i8, ptr %.50109820363831, align 1, !tbaa !55
  %i.afd = zext i8 %i.afc to i64
  %i.afe = shl i64 %i.afd, %indvars.iv27793828
  %i.aff = add i64 %i.afe, %.4696620383829        ; 4 uses
  %indvars.iv.next2780 = add nuw nsw i64 %indvars.iv27793828, 8 ; 3 uses
  %i.afg = and i64 %i.aff, %i.aet
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %i.afg ; 2 uses
  %.sroa.1868.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.afh, i64 1
  %.sroa.1868.0.copyload74 = load i8, ptr %.sroa.1868.0..sroa_idx73, align 1, !tbaa !55 ; 3 uses
  %i.afi = zext i8 %.sroa.1868.0.copyload74 to i64
  %.not1190 = icmp samesign ult i64 %indvars.iv.next2780, %i.afi
  br i1 %.not1190, label %.lr.ph2041, label %._crit_edge2042.loopexit

._crit_edge2042.loopexit:                         ; preds = %bb.ge
  %i.afj = zext i8 %.sroa.1868.0.copyload74 to i32
  %i.afk = trunc nuw nsw i64 %indvars.iv.next2780 to i32
  br label %._crit_edge2042

._crit_edge2042:                                  ; preds = %._crit_edge2042.loopexit, %bb.gd
  %.lcssa2032 = phi ptr [ %i.aev, %bb.gd ], [ %i.afh, %._crit_edge2042.loopexit ] ; 2 uses
  %.501098.lcssa = phi ptr [ %.491097, %bb.gd ], [ %i.afb, %._crit_edge2042.loopexit ] ; 4 uses
  %.501033.lcssa = phi i32 [ %.491032, %bb.gd ], [ %i.afa, %._crit_edge2042.loopexit ] ; 5 uses
  %.46966.lcssa = phi i64 [ %.45965, %bb.gd ], [ %i.aff, %._crit_edge2042.loopexit ] ; 5 uses
  %.46.lcssa = phi i32 [ %.45, %bb.gd ], [ %i.afk, %._crit_edge2042.loopexit ] ; 5 uses
  %.sroa.1868.0.copyload74.lcssa = phi i8 [ %.sroa.1868.0.copyload742034, %bb.gd ], [ %.sroa.1868.0.copyload74, %._crit_edge2042.loopexit ] ; 2 uses
  %.lcssa1420 = phi i32 [ %i.aew, %bb.gd ], [ %i.afj, %._crit_edge2042.loopexit ] ; 5 uses
  %.sroa.42.0..sroa_idx102.le = getelementptr inbounds nuw i8, ptr %.lcssa2032, i64 2
  %.sroa.42.0.copyload103.le = load i16, ptr %.sroa.42.0..sroa_idx102.le, align 2, !tbaa !111 ; 2 uses
  %.sroa.055.0.copyload66 = load i8, ptr %.lcssa2032, align 2, !tbaa !55 ; 3 uses
  %i.afl = icmp ult i8 %.sroa.055.0.copyload66, 16
  br i1 %i.afl, label %.preheader1288, label %._crit_edge2042._crit_edge

._crit_edge2042._crit_edge:                       ; preds = %._crit_edge2042
  %.pre2826 = load i32, ptr %i.bg, align 8, !tbaa !38
  br label %bb.gg

.preheader1288:                                   ; preds = %._crit_edge2042
  %i.afm = zext nneg i8 %.sroa.055.0.copyload66 to i32
  %i.afn = zext i16 %.sroa.42.0.copyload103.le to i64
  %i.afo = add nuw nsw i32 %.lcssa1420, %i.afm
  %notmask1191 = shl nsw i32 -1, %i.afo
  %i.afp = xor i32 %notmask1191, -1
  %i.afq = zext nneg i32 %i.afp to i64            ; 2 uses
  %i.afr = zext i8 %.sroa.1868.0.copyload74.lcssa to i64 ; 3 uses
  %invariant.gep2052 = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %i.afn ; 2 uses
  %i.afs = and i64 %.46966.lcssa, %i.afq
  %i.aft = lshr i64 %i.afs, %i.afr
  %gep20532054 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2052, i64 %i.aft ; 2 uses
  %.sroa.1868.0..sroa_idx752055 = getelementptr inbounds nuw i8, ptr %gep20532054, i64 1
  %.sroa.1868.0.copyload762056 = load i8, ptr %.sroa.1868.0..sroa_idx752055, align 1, !tbaa !55 ; 2 uses
  %i.afu = zext i8 %.sroa.1868.0.copyload762056 to i32
  %i.afv = add nuw nsw i32 %.lcssa1420, %i.afu
  %.not11922057 = icmp ugt i32 %i.afv, %.46.lcssa
  br i1 %.not11922057, label %.lr.ph2062.preheader, label %._crit_edge2063

.lr.ph2062.preheader:                             ; preds = %.preheader1288
  %i.afw = icmp eq i32 %.501033.lcssa, 0
  br i1 %i.afw, label %.loopexit1260.loopexit2947, label %.lr.ph3853

.lr.ph3853:                                       ; preds = %.lr.ph2062.preheader
  %i.afx = zext nneg i32 %.46.lcssa to i64
  br label %bb.gf

.lr.ph2062:                                       ; preds = %bb.gf
  %i.afy = icmp eq i32 %i.afz, 0
  br i1 %i.afy, label %.loopexit1260.loopexit2947, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph3853, %.lr.ph2062
  %.51109920583852 = phi ptr [ %.501098.lcssa, %.lr.ph3853 ], [ %i.aga, %.lr.ph2062 ] ; 2 uses
  %.51103420593851 = phi i32 [ %.501033.lcssa, %.lr.ph3853 ], [ %i.afz, %.lr.ph2062 ]
  %.4796720603850 = phi i64 [ %.46966.lcssa, %.lr.ph3853 ], [ %i.age, %.lr.ph2062 ]
  %indvars.iv27833849 = phi i64 [ %i.afx, %.lr.ph3853 ], [ %indvars.iv.next2784, %.lr.ph2062 ] ; 2 uses
  %i.afz = add i32 %.51103420593851, -1           ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.51109920583852, i64 1 ; 2 uses
  %i.agb = load i8, ptr %.51109920583852, align 1, !tbaa !55
  %i.agc = zext i8 %i.agb to i64
  %i.agd = shl i64 %i.agc, %indvars.iv27833849
  %i.age = add i64 %i.agd, %.4796720603850        ; 4 uses
  %indvars.iv.next2784 = add nuw nsw i64 %indvars.iv27833849, 8 ; 3 uses
  %i.agf = and i64 %i.age, %i.afq
  %i.agg = lshr i64 %i.agf, %i.afr
  %gep2053 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2052, i64 %i.agg ; 2 uses
  %.sroa.1868.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %gep2053, i64 1
  %.sroa.1868.0.copyload76 = load i8, ptr %.sroa.1868.0..sroa_idx75, align 1, !tbaa !55 ; 2 uses
  %i.agh = zext i8 %.sroa.1868.0.copyload76 to i32
  %i.agi = add nuw nsw i32 %.lcssa1420, %i.agh
  %i.agj = zext nneg i32 %i.agi to i64
  %.not1192 = icmp samesign ult i64 %indvars.iv.next2784, %i.agj
  br i1 %.not1192, label %.lr.ph2062, label %._crit_edge2063.loopexit

._crit_edge2063.loopexit:                         ; preds = %bb.gf
  %i.agk = trunc nuw nsw i64 %indvars.iv.next2784 to i32
  br label %._crit_edge2063

._crit_edge2063:                                  ; preds = %._crit_edge2063.loopexit, %.preheader1288
  %.511099.lcssa = phi ptr [ %.501098.lcssa, %.preheader1288 ], [ %i.aga, %._crit_edge2063.loopexit ]
  %.511034.lcssa = phi i32 [ %.501033.lcssa, %.preheader1288 ], [ %i.afz, %._crit_edge2063.loopexit ]
  %.47967.lcssa = phi i64 [ %.46966.lcssa, %.preheader1288 ], [ %i.age, %._crit_edge2063.loopexit ]
  %.47.lcssa = phi i32 [ %.46.lcssa, %.preheader1288 ], [ %i.agk, %._crit_edge2063.loopexit ]
  %.lcssa1433 = phi ptr [ %gep20532054, %.preheader1288 ], [ %gep2053, %._crit_edge2063.loopexit ] ; 2 uses
  %.sroa.1868.0.copyload76.lcssa = phi i8 [ %.sroa.1868.0.copyload762056, %.preheader1288 ], [ %.sroa.1868.0.copyload76, %._crit_edge2063.loopexit ]
  %.sroa.42.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %.lcssa1433, i64 2
  %.sroa.42.0.copyload105 = load i16, ptr %.sroa.42.0..sroa_idx104, align 2, !tbaa !111
  %.sroa.055.0.copyload67 = load i8, ptr %.lcssa1433, align 2, !tbaa !55
  %i.agl = lshr i64 %.47967.lcssa, %i.afr
  %i.agm = sub nuw i32 %.47.lcssa, %.lcssa1420
  %i.agn = load i32, ptr %i.bg, align 8, !tbaa !38
  %i.ago = add nsw i32 %i.agn, %.lcssa1420
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge2042._crit_edge, %._crit_edge2063
  %i.agp = phi i32 [ %i.ago, %._crit_edge2063 ], [ %.pre2826, %._crit_edge2042._crit_edge ]
  %.521100 = phi ptr [ %.511099.lcssa, %._crit_edge2063 ], [ %.501098.lcssa, %._crit_edge2042._crit_edge ] ; 2 uses
  %.521035 = phi i32 [ %.511034.lcssa, %._crit_edge2063 ], [ %.501033.lcssa, %._crit_edge2042._crit_edge ] ; 2 uses
  %.48968 = phi i64 [ %i.agl, %._crit_edge2063 ], [ %.46966.lcssa, %._crit_edge2042._crit_edge ]
  %.48 = phi i32 [ %i.agm, %._crit_edge2063 ], [ %.46.lcssa, %._crit_edge2042._crit_edge ]
  %.sroa.42.1 = phi i16 [ %.sroa.42.0.copyload105, %._crit_edge2063 ], [ %.sroa.42.0.copyload103.le, %._crit_edge2042._crit_edge ]
  %.sroa.1868.1 = phi i8 [ %.sroa.1868.0.copyload76.lcssa, %._crit_edge2063 ], [ %.sroa.1868.0.copyload74.lcssa, %._crit_edge2042._crit_edge ] ; 2 uses
  %.sroa.055.1 = phi i8 [ %.sroa.055.0.copyload67, %._crit_edge2063 ], [ %.sroa.055.0.copyload66, %._crit_edge2042._crit_edge ]
  %i.agq = zext i8 %.sroa.1868.1 to i32           ; 2 uses
  %i.agr = zext nneg i8 %.sroa.1868.1 to i64
  %i.ags = lshr i64 %.48968, %i.agr               ; 2 uses
  %i.agt = sub i32 %.48, %i.agq                   ; 2 uses
  %i.agu = add nsw i32 %i.agp, %i.agq
  store i32 %i.agu, ptr %i.bg, align 8, !tbaa !38
  %i.agv = zext i8 %.sroa.055.1 to i32            ; 2 uses
  %i.agw = and i32 %i.agv, 64
  %.not1193 = icmp eq i32 %i.agw, 0
  br i1 %.not1193, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.15, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.gi:                                            ; preds = %bb.gg
  %i.agx = zext i16 %.sroa.42.1 to i32
  store i32 %i.agx, ptr %i.bj, align 64, !tbaa !114
  %i.agy = and i32 %i.agv, 15                     ; 2 uses
  store i32 %i.agy, ptr %i.bh, align 4, !tbaa !91
  store i32 16203, ptr %i.p, align 8, !tbaa !23
  br label %bb.gj

bb.gj:                                            ; preds = %._crit_edge2827, %bb.gi
  %i.agz = phi i32 [ %i.agy, %bb.gi ], [ %.pre2828, %._crit_edge2827 ] ; 7 uses
  %.531101 = phi ptr [ %.521100, %bb.gi ], [ %.01048, %._crit_edge2827 ] ; 4 uses
  %.531036 = phi i32 [ %.521035, %bb.gi ], [ %.0983, %._crit_edge2827 ] ; 5 uses
  %.49969 = phi i64 [ %i.ags, %bb.gi ], [ %.0920, %._crit_edge2827 ] ; 4 uses
  %.49 = phi i32 [ %i.agt, %bb.gi ], [ %.0909, %._crit_edge2827 ] ; 5 uses
  %.6 = phi i32 [ %.5, %bb.gi ], [ %.0894, %._crit_edge2827 ] ; 2 uses
  %.not1194 = icmp eq i32 %i.agz, 0
  br i1 %.not1194, label %bb.gk, label %.preheader1286

.preheader1286:                                   ; preds = %bb.gj
  %i.aha = icmp ult i32 %.49, %i.agz
  br i1 %i.aha, label %.lr.ph2075.preheader, label %._crit_edge2076

.lr.ph2075.preheader:                             ; preds = %.preheader1286
  %i.ahb = icmp eq i32 %.531036, 0
  br i1 %i.ahb, label %.loopexit1260.loopexit2946, label %.lr.ph3874

.lr.ph2075:                                       ; preds = %.lr.ph3874
  %i.ahc = icmp eq i32 %i.ahd, 0
  br i1 %i.ahc, label %.loopexit1260.loopexit2946, label %.lr.ph3874, !llvm.loop !88

.lr.ph3874:                                       ; preds = %.lr.ph2075.preheader, %.lr.ph2075
  %.54110220713873 = phi ptr [ %i.ahe, %.lr.ph2075 ], [ %.531101, %.lr.ph2075.preheader ] ; 2 uses
  %.54103720723872 = phi i32 [ %i.ahd, %.lr.ph2075 ], [ %.531036, %.lr.ph2075.preheader ]
  %.5097020733871 = phi i64 [ %i.ahj, %.lr.ph2075 ], [ %.49969, %.lr.ph2075.preheader ]
  %.5020743870 = phi i32 [ %i.ahk, %.lr.ph2075 ], [ %.49, %.lr.ph2075.preheader ] ; 2 uses
  %i.ahd = add i32 %.54103720723872, -1           ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.54110220713873, i64 1 ; 2 uses
  %i.ahf = load i8, ptr %.54110220713873, align 1, !tbaa !55
  %i.ahg = zext i8 %i.ahf to i64
  %i.ahh = zext nneg i32 %.5020743870 to i64
  %i.ahi = shl i64 %i.ahg, %i.ahh
  %i.ahj = add i64 %i.ahi, %.5097020733871        ; 3 uses
  %i.ahk = add i32 %.5020743870, 8                ; 3 uses
  %i.ahl = icmp ult i32 %i.ahk, %i.agz
  br i1 %i.ahl, label %.lr.ph2075, label %._crit_edge2076, !llvm.loop !88

._crit_edge2076:                                  ; preds = %.lr.ph3874, %.preheader1286
  %.541102.lcssa = phi ptr [ %.531101, %.preheader1286 ], [ %i.ahe, %.lr.ph3874 ]
  %.541037.lcssa = phi i32 [ %.531036, %.preheader1286 ], [ %i.ahd, %.lr.ph3874 ]
  %.50970.lcssa = phi i64 [ %.49969, %.preheader1286 ], [ %i.ahj, %.lr.ph3874 ] ; 2 uses
  %.50.lcssa = phi i32 [ %.49, %.preheader1286 ], [ %i.ahk, %.lr.ph3874 ]
  %notmask1195 = shl nsw i32 -1, %i.agz
  %i.ahm = xor i32 %notmask1195, -1
  %i.ahn = load i32, ptr %i.bj, align 64, !tbaa !114
  %i.aho = trunc i64 %.50970.lcssa to i32
  %i.ahp = and i32 %i.aho, %i.ahm
  %i.ahq = add i32 %i.ahn, %i.ahp
  store i32 %i.ahq, ptr %i.bj, align 64, !tbaa !114
  %i.ahr = zext nneg i32 %i.agz to i64
  %i.ahs = lshr i64 %.50970.lcssa, %i.ahr
  %i.aht = sub nuw i32 %.50.lcssa, %i.agz
  %i.ahu = load i32, ptr %i.bg, align 8, !tbaa !38
  %i.ahv = add i32 %i.ahu, %i.agz
  store i32 %i.ahv, ptr %i.bg, align 8, !tbaa !38
  br label %bb.gk

bb.gk:                                            ; preds = %._crit_edge2076, %bb.gj
  %.551103 = phi ptr [ %.541102.lcssa, %._crit_edge2076 ], [ %.531101, %bb.gj ]
  %.551038 = phi i32 [ %.541037.lcssa, %._crit_edge2076 ], [ %.531036, %bb.gj ]
  %.51971 = phi i64 [ %i.ahs, %._crit_edge2076 ], [ %.49969, %bb.gj ]
  %.51 = phi i32 [ %i.aht, %._crit_edge2076 ], [ %.49, %bb.gj ]
  store i32 16204, ptr %i.p, align 8, !tbaa !23
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.l
  %.561104 = phi ptr [ %.551103, %bb.gk ], [ %.01048, %bb.l ] ; 4 uses
  %.561039 = phi i32 [ %.551038, %bb.gk ], [ %.0983, %bb.l ] ; 4 uses
  %.52972 = phi i64 [ %.51971, %bb.gk ], [ %.0920, %bb.l ] ; 4 uses
  %.52 = phi i32 [ %.51, %bb.gk ], [ %.0909, %bb.l ] ; 4 uses
  %.7 = phi i32 [ %.6, %bb.gk ], [ %.0894, %bb.l ] ; 4 uses
  %i.ahw = icmp eq i32 %.0981, 0
  br i1 %i.ahw, label %.loopexit1260, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ahx = sub i32 %.0903, %.0981                 ; 2 uses
  %i.ahy = load i32, ptr %i.bj, align 64, !tbaa !114 ; 3 uses
  %i.ahz = icmp ugt i32 %i.ahy, %i.ahx
  br i1 %i.ahz, label %bb.gn, label %bb.gt

bb.gn:                                            ; preds = %bb.gm
  %i.aia = sub nuw i32 %i.ahy, %i.ahx             ; 5 uses
  %i.aib = load i32, ptr %i.bk, align 8, !tbaa !40
  %i.aic = icmp ugt i32 %i.aia, %i.aib
  br i1 %i.aic, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.16, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.gp:                                            ; preds = %bb.gn
  %i.aid = load i32, ptr %i.bl, align 4, !tbaa !41 ; 3 uses
  %i.aie = icmp ugt i32 %i.aia, %i.aid
  br i1 %i.aie, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aif = sub nuw i32 %i.aia, %i.aid             ; 2 uses
  %i.aig = load i32, ptr %i.bn, align 64, !tbaa !39
  %i.aih = sub i32 %i.aig, %i.aif
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.aii = sub nuw i32 %i.aid, %i.aia
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.sink3351 = phi i32 [ %i.aii, %bb.gr ], [ %i.aih, %bb.gq ]
  %.5901 = phi i32 [ %i.aia, %bb.gr ], [ %i.aif, %bb.gq ]
  %.sink = load ptr, ptr %i.bm, align 16, !tbaa !53
  %i.aij = zext i32 %.sink3351 to i64
  %i.aik = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.aij
  %i.ail = load i32, ptr %i.ar, align 4, !tbaa !62
  %..5901 = call i32 @llvm.umin.i32(i32 %.5901, i32 %i.ail)
  %i.aim = call i32 @llvm.umin.i32(i32 %..5901, i32 %.0981) ; 2 uses
  %i.ain = zext i32 %i.aim to i64
  %i.aio = zext i32 %.0981 to i64
  %i.aip = getelementptr inbounds nuw i8, ptr %.01045, i64 %i.aio
  %i.aiq = call fastcc ptr @chunkcopy_safe(ptr noundef %.01045, ptr noundef %i.aik, i64 noundef %i.ain, ptr noundef nonnull %i.aip)
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gm
  %i.air = load i32, ptr %i.ar, align 4, !tbaa !62
  %.0981. = call i32 @llvm.umin.i32(i32 %i.air, i32 %.0981) ; 2 uses
  %i.ais = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 24), align 8, !tbaa !115
  %i.ait = zext i32 %i.ahy to i64
  %i.aiu = sub nsw i64 0, %i.ait
  %i.aiv = getelementptr inbounds i8, ptr %.01045, i64 %i.aiu
  %i.aiw = call ptr %i.ais(ptr noundef %.01045, ptr noundef %i.aiv, i32 noundef %.0981., i32 noundef %.0981) #14
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.11046 = phi ptr [ %i.aiq, %bb.gs ], [ %i.aiw, %bb.gt ] ; 2 uses
  %.6902 = phi i32 [ %i.aim, %bb.gs ], [ %.0981., %bb.gt ] ; 3 uses
  %i.aix = sub i32 %.0981, %.6902                 ; 2 uses
  %i.aiy = load i32, ptr %i.ar, align 4, !tbaa !62 ; 2 uses
  %i.aiz = sub i32 %i.aiy, %.6902
  store i32 %i.aiz, ptr %i.ar, align 4, !tbaa !62
  %i.aja = icmp eq i32 %i.aiy, %.6902
  br i1 %i.aja, label %bb.gv, label %.thread

bb.gv:                                            ; preds = %bb.gu
  store i32 16200, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.gw:                                            ; preds = %bb.l
  %i.ajb = icmp eq i32 %.0981, 0
  br i1 %i.ajb, label %.loopexit1260, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ajc = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.ajd = trunc i32 %i.ajc to i8
  %i.aje = getelementptr inbounds nuw i8, ptr %.01045, i64 1
  store i8 %i.ajd, ptr %.01045, align 1, !tbaa !55
  %i.ajf = add i32 %.0981, -1
  store i32 16200, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.gy:                                            ; preds = %bb.l
  %i.ajg = load i32, ptr %i.aj, align 16, !tbaa !26 ; 2 uses
  %.not1164 = icmp eq i32 %i.ajg, 0
  br i1 %.not1164, label %bb.hk, label %.preheader1301

.preheader1301:                                   ; preds = %bb.gy
  %i.ajh = icmp ult i32 %.0909, 32
  br i1 %i.ajh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader1301
  %i.aji = zext nneg i32 %.0909 to i64            ; 6 uses
  %i.ajj = icmp eq i32 %.0983, 0
  br i1 %i.ajj, label %.loopexit1260.loopexit2337, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph.preheader
  %i.ajk = add i32 %.0983, -1                     ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.01048, i64 1 ; 3 uses
  %i.ajm = load i8, ptr %.01048, align 1, !tbaa !55
  %i.ajn = zext i8 %i.ajm to i64
  %i.ajo = shl nuw nsw i64 %i.ajn, %i.aji
  %i.ajp = add i64 %i.ajo, %.0920                 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.aji, 8    ; 3 uses
  %i.ajq = icmp ult i32 %.0909, 24
  br i1 %i.ajq, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %bb.gz
  %i.ajr = icmp eq i32 %i.ajk, 0
  br i1 %i.ajr, label %.loopexit1260.loopexit2337, label %bb.ha

bb.ha:                                            ; preds = %.lr.ph.1
  %i.ajs = add i32 %.0983, -2                     ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.01048, i64 2 ; 3 uses
  %i.aju = load i8, ptr %i.ajl, align 1, !tbaa !55
  %i.ajv = zext i8 %i.aju to i64
  %i.ajw = shl nuw nsw i64 %i.ajv, %indvars.iv.next
  %i.ajx = add i64 %i.ajw, %i.ajp                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.aji, 16 ; 3 uses
  %i.ajy = icmp ult i32 %.0909, 16
  br i1 %i.ajy, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %bb.ha
  %i.ajz = icmp eq i32 %i.ajs, 0
  br i1 %i.ajz, label %.loopexit1260.loopexit2337, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph.2
end_hunk_0
begin_hunk_1_@zng_inflate:bb.a
  br i1 %i.aln, label %.lr.ph1740.preheader, label %._crit_edge1741

.lr.ph1740.preheader:                             ; preds = %.preheader1299
  %i.alo = zext nneg i32 %.55 to i64              ; 6 uses
  %i.alp = icmp eq i32 %.591042, 0
  br i1 %i.alp, label %.loopexit1260.loopexit2336, label %bb.hn

bb.hn:                                            ; preds = %.lr.ph1740.preheader
  %i.alq = add i32 %.591042, -1                   ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.591107, i64 1 ; 3 uses
  %i.als = load i8, ptr %.591107, align 1, !tbaa !55
  %i.alt = zext i8 %i.als to i64
  %i.alu = shl nuw nsw i64 %i.alt, %i.alo
  %i.alv = add i64 %i.alu, %.55975                ; 3 uses
  %indvars.iv.next2745 = add nuw nsw i64 %i.alo, 8 ; 3 uses
  %i.alw = icmp ult i32 %.55, 24
  br i1 %i.alw, label %.lr.ph1740.1, label %._crit_edge1741.loopexit

.lr.ph1740.1:                                     ; preds = %bb.hn
  %i.alx = icmp eq i32 %i.alq, 0
  br i1 %i.alx, label %.loopexit1260.loopexit2336, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph1740.1
  %i.aly = add i32 %.591042, -2                   ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.591107, i64 2 ; 3 uses
  %i.ama = load i8, ptr %i.alr, align 1, !tbaa !55
  %i.amb = zext i8 %i.ama to i64
  %i.amc = shl nuw nsw i64 %i.amb, %indvars.iv.next2745
  %i.amd = add i64 %i.amc, %i.alv                 ; 3 uses
  %indvars.iv.next2745.1 = add nuw nsw i64 %i.alo, 16 ; 3 uses
  %i.ame = icmp ult i32 %.55, 16
  br i1 %i.ame, label %.lr.ph1740.2, label %._crit_edge1741.loopexit

.lr.ph1740.2:                                     ; preds = %bb.ho
  %i.amf = icmp eq i32 %i.aly, 0
  br i1 %i.amf, label %.loopexit1260.loopexit2336, label %bb.hp

bb.hp:                                            ; preds = %.lr.ph1740.2
  %i.amg = add i32 %.591042, -3                   ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.591107, i64 3 ; 3 uses
  %i.ami = load i8, ptr %i.alz, align 1, !tbaa !55
  %i.amj = zext i8 %i.ami to i64
  %i.amk = shl nuw nsw i64 %i.amj, %indvars.iv.next2745.1
  %i.aml = add i64 %i.amk, %i.amd                 ; 3 uses
  %indvars.iv.next2745.2 = add nuw nsw i64 %i.alo, 24 ; 3 uses
  %i.amm = icmp ult i32 %.55, 8
  br i1 %i.amm, label %.lr.ph1740.3, label %._crit_edge1741.loopexit

.lr.ph1740.3:                                     ; preds = %bb.hp
  %i.amn = icmp eq i32 %i.amg, 0
  br i1 %i.amn, label %.loopexit1260.loopexit2336, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph1740.3
  %i.amo = add i32 %.591042, -4
  %i.amp = getelementptr inbounds nuw i8, ptr %.591107, i64 4
  %i.amq = load i8, ptr %i.amh, align 1, !tbaa !55
  %i.amr = zext i8 %i.amq to i64
  %i.ams = shl nuw nsw i64 %i.amr, %indvars.iv.next2745.2
  %i.amt = add i64 %i.ams, %i.aml
  %indvars.iv.next2745.3 = or disjoint i64 %i.alo, 32
  br label %._crit_edge1741.loopexit

._crit_edge1741.loopexit:                         ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.hn
  %.lcssa3921 = phi i32 [ %i.alq, %bb.hn ], [ %i.aly, %bb.ho ], [ %i.amg, %bb.hp ], [ %i.amo, %bb.hq ]
  %.lcssa3920 = phi ptr [ %i.alr, %bb.hn ], [ %i.alz, %bb.ho ], [ %i.amh, %bb.hp ], [ %i.amp, %bb.hq ]
  %.lcssa3919 = phi i64 [ %i.alv, %bb.hn ], [ %i.amd, %bb.ho ], [ %i.aml, %bb.hp ], [ %i.amt, %bb.hq ]
  %indvars.iv.next2745.lcssa = phi i64 [ %indvars.iv.next2745, %bb.hn ], [ %indvars.iv.next2745.1, %bb.ho ], [ %indvars.iv.next2745.2, %bb.hp ], [ %indvars.iv.next2745.3, %bb.hq ]
  %i.amu = trunc nuw nsw i64 %indvars.iv.next2745.lcssa to i32
  br label %._crit_edge1741

._crit_edge1741:                                  ; preds = %._crit_edge1741.loopexit, %.preheader1299
  %.601108.lcssa = phi ptr [ %.591107, %.preheader1299 ], [ %.lcssa3920, %._crit_edge1741.loopexit ] ; 3 uses
  %.601043.lcssa = phi i32 [ %.591042, %.preheader1299 ], [ %.lcssa3921, %._crit_edge1741.loopexit ] ; 3 uses
  %.56976.lcssa = phi i64 [ %.55975, %.preheader1299 ], [ %.lcssa3919, %._crit_edge1741.loopexit ] ; 2 uses
  %.56.lcssa = phi i32 [ %.55, %.preheader1299 ], [ %i.amu, %._crit_edge1741.loopexit ]
  %i.amv = and i32 %i.all, 4
  %.not1173 = icmp eq i32 %i.amv, 0
  br i1 %.not1173, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %._crit_edge1741
  %i.amw = load i64, ptr %i.al, align 8, !tbaa !24
  %i.amx = and i64 %i.amw, 4294967295
  %.not1174 = icmp eq i64 %.56976.lcssa, %i.amx
  br i1 %.not1174, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.18, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.ht:                                            ; preds = %bb.hr, %._crit_edge1741, %bb.hm, %bb.hl
  %.611109 = phi ptr [ %.591107, %bb.hl ], [ %.591107, %bb.hm ], [ %.601108.lcssa, %._crit_edge1741 ], [ %.601108.lcssa, %bb.hr ]
  %.61 = phi i32 [ %.591042, %bb.hl ], [ %.591042, %bb.hm ], [ %.601043.lcssa, %._crit_edge1741 ], [ %.601043.lcssa, %bb.hr ]
  %.57977 = phi i64 [ %.55975, %bb.hl ], [ %.55975, %bb.hm ], [ 0, %._crit_edge1741 ], [ 0, %bb.hr ]
  %.57 = phi i32 [ %.55, %bb.hl ], [ %.55, %bb.hm ], [ 0, %._crit_edge1741 ], [ 0, %bb.hr ]
  store i32 16208, ptr %i.p, align 8, !tbaa !23
  br label %.loopexit1260

.thread:                                          ; preds = %bb.fa, %bb.ff, %bb.gu, %bb.gv, %bb.fp, %bb.fq, %bb.hs, %bb.hj, %bb.gx, %bb.go, %bb.gh, %bb.fz, %bb.fx, %bb.fv, %bb.fl, %bb.fj, %bb.fh, %bb.et, %bb.eq, %bb.en, %bb.em, %bb.eh, %bb.eb, %bb.du, %bb.dk, %bb.df, %bb.aj, %bb.ah, %bb.ae, %bb.ad, %bb.z, %bb.x, %bb.s, %bb.n
  %.631111 = phi ptr [ %.01048, %bb.n ], [ %.11049.lcssa, %bb.s ], [ %.11049.lcssa, %bb.x ], [ %.11049.lcssa, %bb.z ], [ %.11049.lcssa, %bb.ad ], [ %.11049.lcssa, %bb.ae ], [ %.21050.lcssa, %bb.ah ], [ %.21050.lcssa, %bb.aj ], [ %.181066.lcssa, %bb.df ], [ %.191067, %bb.dk ], [ %.231071, %bb.du ], [ %.241072.lcssa, %bb.eb ], [ %.251073.lcssa, %bb.eh ], [ %i.su, %bb.em ], [ %.271075, %bb.en ], [ %.281076.lcssa, %bb.eq ], [ %.301078.lcssa, %bb.et ], [ %.351083.lcssa, %bb.fa ], [ %.331081.lcssa, %bb.fh ], [ %.331081.lcssa, %bb.fj ], [ %.331081.lcssa, %bb.fl ], [ %i.abd, %bb.fq ], [ %i.abd, %bb.fp ], [ %.451093, %bb.fv ], [ %.451093, %bb.fx ], [ %.451093, %bb.fz ], [ %.521100, %bb.gh ], [ %.561104, %bb.go ], [ %.561104, %bb.gv ], [ %.561104, %bb.gu ], [ %.01048, %bb.gx ], [ %.571105.lcssa, %bb.hj ], [ %.601108.lcssa, %bb.hs ], [ %.381086, %bb.ff ]
  %.21047 = phi ptr [ %.01045, %bb.n ], [ %.01045, %bb.s ], [ %.01045, %bb.x ], [ %.01045, %bb.z ], [ %.01045, %bb.ad ], [ %.01045, %bb.ae ], [ %.01045, %bb.ah ], [ %.01045, %bb.aj ], [ %.01045, %bb.df ], [ %.01045, %bb.dk ], [ %.01045, %bb.du ], [ %.01045, %bb.eb ], [ %.01045, %bb.eh ], [ %i.sw, %bb.em ], [ %.01045, %bb.en ], [ %.01045, %bb.eq ], [ %.01045, %bb.et ], [ %.01045, %bb.fa ], [ %.01045, %bb.fh ], [ %.01045, %bb.fj ], [ %.01045, %bb.fl ], [ %i.abb, %bb.fq ], [ %i.abb, %bb.fp ], [ %.01045, %bb.fv ], [ %.01045, %bb.fx ], [ %.01045, %bb.fz ], [ %.01045, %bb.gh ], [ %.01045, %bb.go ], [ %.11046, %bb.gv ], [ %.11046, %bb.gu ], [ %i.aje, %bb.gx ], [ %.01045, %bb.hj ], [ %.01045, %bb.hs ], [ %.01045, %bb.ff ]
  %.63 = phi i32 [ %.0983, %bb.n ], [ %.1984.lcssa, %bb.s ], [ %.1984.lcssa, %bb.x ], [ %.1984.lcssa, %bb.z ], [ %.1984.lcssa, %bb.ad ], [ %.1984.lcssa, %bb.ae ], [ %.2985.lcssa, %bb.ah ], [ %.2985.lcssa, %bb.aj ], [ %.181001.lcssa, %bb.df ], [ %.191002, %bb.dk ], [ %.231006, %bb.du ], [ %.241007.lcssa, %bb.eb ], [ %.251008.lcssa, %bb.eh ], [ %i.st, %bb.em ], [ %.271010, %bb.en ], [ %.281011.lcssa, %bb.eq ], [ %.301013.lcssa, %bb.et ], [ %.351018.lcssa, %bb.fa ], [ %.331016.lcssa, %bb.fh ], [ %.331016.lcssa, %bb.fj ], [ %.331016.lcssa, %bb.fl ], [ %i.abe, %bb.fq ], [ %i.abe, %bb.fp ], [ %.451028, %bb.fv ], [ %.451028, %bb.fx ], [ %.451028, %bb.fz ], [ %.521035, %bb.gh ], [ %.561039, %bb.go ], [ %.561039, %bb.gv ], [ %.561039, %bb.gu ], [ %.0983, %bb.gx ], [ %.571040.lcssa, %bb.hj ], [ %.601043.lcssa, %bb.hs ], [ %.381021, %bb.ff ]
  %.1982 = phi i32 [ %.0981, %bb.n ], [ %.0981, %bb.s ], [ %.0981, %bb.x ], [ %.0981, %bb.z ], [ %.0981, %bb.ad ], [ %.0981, %bb.ae ], [ %.0981, %bb.ah ], [ %.0981, %bb.aj ], [ %.0981, %bb.df ], [ %.0981, %bb.dk ], [ %.0981, %bb.du ], [ %.0981, %bb.eb ], [ %.0981, %bb.eh ], [ %i.sv, %bb.em ], [ %.0981, %bb.en ], [ %.0981, %bb.eq ], [ %.0981, %bb.et ], [ %.0981, %bb.fa ], [ %.0981, %bb.fh ], [ %.0981, %bb.fj ], [ %.0981, %bb.fl ], [ %i.abc, %bb.fq ], [ %i.abc, %bb.fp ], [ %.0981, %bb.fv ], [ %.0981, %bb.fx ], [ %.0981, %bb.fz ], [ %.0981, %bb.gh ], [ %.0981, %bb.go ], [ %i.aix, %bb.gv ], [ %i.aix, %bb.gu ], [ %i.ajf, %bb.gx ], [ %.0981, %bb.hj ], [ %.0981, %bb.hs ], [ %.0981, %bb.ff ]
  %.59979 = phi i64 [ %.0920, %bb.n ], [ 0, %bb.s ], [ %.1921.lcssa, %bb.x ], [ %.1921.lcssa, %bb.z ], [ %i.do, %bb.ad ], [ 0, %bb.ae ], [ %.2922.lcssa, %bb.ah ], [ %.2922.lcssa, %bb.aj ], [ %.14934.lcssa, %bb.df ], [ %.15935, %bb.dk ], [ %i.qf, %bb.du ], [ %i.qv, %bb.eb ], [ %.21941.lcssa, %bb.eh ], [ %.23943, %bb.em ], [ %.23943, %bb.en ], [ %i.tx, %bb.eq ], [ %.26946.lcssa, %bb.et ], [ %i.xj, %bb.fa ], [ %.29949.lcssa, %bb.fh ], [ %.29949.lcssa, %bb.fj ], [ %.29949.lcssa, %bb.fl ], [ %i.abf, %bb.fq ], [ %i.abf, %bb.fp ], [ %i.adj, %bb.fv ], [ %i.adj, %bb.fx ], [ %i.adj, %bb.fz ], [ %i.ags, %bb.gh ], [ %.52972, %bb.go ], [ %.52972, %bb.gv ], [ %.52972, %bb.gu ], [ %.0920, %bb.gx ], [ %.53973.lcssa, %bb.hj ], [ %.56976.lcssa, %bb.hs ], [ %.34954, %bb.ff ]
  %.59 = phi i32 [ %.0909, %bb.n ], [ 0, %bb.s ], [ %.1910.lcssa, %bb.x ], [ %.1910.lcssa, %bb.z ], [ %i.dp, %bb.ad ], [ 0, %bb.ae ], [ %.2911.lcssa, %bb.ah ], [ %.2911.lcssa, %bb.aj ], [ %.14.lcssa, %bb.df ], [ %.15, %bb.dk ], [ %i.qg, %bb.du ], [ %i.qw, %bb.eb ], [ %.21.lcssa, %bb.eh ], [ %.23, %bb.em ], [ %.23, %bb.en ], [ %i.ty, %bb.eq ], [ %.26.lcssa, %bb.et ], [ %i.xk, %bb.fa ], [ %.29.lcssa, %bb.fh ], [ %.29.lcssa, %bb.fj ], [ %.29.lcssa, %bb.fl ], [ %i.abg, %bb.fq ], [ %i.abg, %bb.fp ], [ %i.adk, %bb.fv ], [ %i.adk, %bb.fx ], [ %i.adk, %bb.fz ], [ %i.agt, %bb.gh ], [ %.52, %bb.go ], [ %.52, %bb.gv ], [ %.52, %bb.gu ], [ %.0909, %bb.gx ], [ %.53.lcssa, %bb.hj ], [ %.56.lcssa, %bb.hs ], [ %.34, %bb.ff ]
  %.4907 = phi i32 [ %.0903, %bb.n ], [ %.0903, %bb.s ], [ %.0903, %bb.x ], [ %.0903, %bb.z ], [ %.0903, %bb.ad ], [ %.0903, %bb.ae ], [ %.0903, %bb.ah ], [ %.0903, %bb.aj ], [ %.0903, %bb.df ], [ %.0903, %bb.dk ], [ %.0903, %bb.du ], [ %.0903, %bb.eb ], [ %.0903, %bb.eh ], [ %.0903, %bb.em ], [ %.0903, %bb.en ], [ %.0903, %bb.eq ], [ %.0903, %bb.et ], [ %.0903, %bb.fa ], [ %.0903, %bb.fh ], [ %.0903, %bb.fj ], [ %.0903, %bb.fl ], [ %.0903, %bb.fq ], [ %.0903, %bb.fp ], [ %.0903, %bb.fv ], [ %.0903, %bb.fx ], [ %.0903, %bb.fz ], [ %.0903, %bb.gh ], [ %.0903, %bb.go ], [ %.0903, %bb.gv ], [ %.0903, %bb.gu ], [ %.0903, %bb.gx ], [ %.0981, %bb.hj ], [ %.2905, %bb.hs ], [ %.0903, %bb.ff ]
  %.8 = phi i32 [ %.0894, %bb.n ], [ %.0894, %bb.s ], [ %.0894, %bb.x ], [ %.0894, %bb.z ], [ %.0894, %bb.ad ], [ %.0894, %bb.ae ], [ %.0894, %bb.ah ], [ %.0894, %bb.aj ], [ %.0894, %bb.df ], [ %.0894, %bb.dk ], [ %.0894, %bb.du ], [ %.0894, %bb.eb ], [ %.0894, %bb.eh ], [ %.0894, %bb.em ], [ %.0894, %bb.en ], [ %.0894, %bb.eq ], [ %i.ve, %bb.et ], [ %.1, %bb.fa ], [ %.1, %bb.fh ], [ %i.aar, %bb.fj ], [ %i.aax, %bb.fl ], [ %.3, %bb.fq ], [ %.3, %bb.fp ], [ %.3, %bb.fv ], [ %.3, %bb.fx ], [ %.3, %bb.fz ], [ %.5, %bb.gh ], [ %.7, %bb.go ], [ %.7, %bb.gv ], [ %.7, %bb.gu ], [ %.0894, %bb.gx ], [ %.0894, %bb.hj ], [ %.0894, %bb.hs ], [ %.1, %bb.ff ]
  %.pre = load i32, ptr %i.p, align 8, !tbaa !23
  br label %bb.l

.loopexit1260.loopexit:                           ; preds = %.lr.ph1962
  %i.amy = trunc nuw nsw i64 %indvars.iv2767 to i32
  br label %.loopexit1260

.loopexit1260.loopexit2317:                       ; preds = %.lr.ph1952
  %i.amz = trunc nuw nsw i64 %indvars.iv2764 to i32
  br label %.loopexit1260

.loopexit1260.loopexit2318:                       ; preds = %.lr.ph1942
  %i.ana = trunc nuw nsw i64 %indvars.iv2761 to i32
  br label %.loopexit1260

.loopexit1260.loopexit2320:                       ; preds = %.lr.ph2309.1, %.lr.ph2309.preheader
  %indvars.iv2814.lcssa = phi i64 [ %i.ch, %.lr.ph2309.preheader ], [ %indvars.iv.next2815, %.lr.ph2309.1 ]
  %.19212307.lcssa = phi i64 [ %.0920, %.lr.ph2309.preheader ], [ %i.co, %.lr.ph2309.1 ]
  %.110492305.lcssa = phi ptr [ %.01048, %.lr.ph2309.preheader ], [ %i.ck, %.lr.ph2309.1 ]
  %i.anb = trunc nuw nsw i64 %indvars.iv2814.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2321:                       ; preds = %.lr.ph2299.1, %.lr.ph2299.preheader
  %indvars.iv2811.lcssa = phi i64 [ %i.nm, %.lr.ph2299.preheader ], [ %indvars.iv.next2812, %.lr.ph2299.1 ]
  %.149342297.lcssa = phi i64 [ %.13933, %.lr.ph2299.preheader ], [ %i.nt, %.lr.ph2299.1 ]
  %.1810662295.lcssa = phi ptr [ %.171065, %.lr.ph2299.preheader ], [ %i.np, %.lr.ph2299.1 ]
  %i.anc = trunc nuw nsw i64 %indvars.iv2811.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2322:                       ; preds = %.lr.ph2290.1, %.lr.ph2290.preheader
  %indvars.iv2802.lcssa = phi i64 [ %i.ij, %.lr.ph2290.preheader ], [ %indvars.iv.next2803, %.lr.ph2290.1 ]
  %.89282288.lcssa = phi i64 [ %.792729242932, %.lr.ph2290.preheader ], [ %i.iq, %.lr.ph2290.1 ]
  %.810562286.lcssa = phi ptr [ %.7105529202934, %.lr.ph2290.preheader ], [ %i.im, %.lr.ph2290.1 ]
  %i.and = trunc nuw nsw i64 %indvars.iv2802.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2323:                       ; preds = %.lr.ph2281.1, %.lr.ph2281.preheader
  %indvars.iv2799.lcssa = phi i64 [ %i.gx, %.lr.ph2281.preheader ], [ %indvars.iv.next2800, %.lr.ph2281.1 ]
  %.69262278.lcssa = phi i64 [ %.59252911, %.lr.ph2281.preheader ], [ %i.he, %.lr.ph2281.1 ]
  %.610542276.lcssa = phi ptr [ %.510532909, %.lr.ph2281.preheader ], [ %i.ha, %.lr.ph2281.1 ]
  %i.ane = trunc nuw nsw i64 %indvars.iv2799.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2324:                       ; preds = %.lr.ph2271.3, %.lr.ph2271.2, %.lr.ph2271.1, %.lr.ph2271.preheader
  %indvars.iv2796.lcssa = phi i64 [ %i.fe, %.lr.ph2271.preheader ], [ %indvars.iv.next2797, %.lr.ph2271.1 ], [ %indvars.iv.next2797.1, %.lr.ph2271.2 ], [ %indvars.iv.next2797.2, %.lr.ph2271.3 ]
  %.49242268.lcssa = phi i64 [ %.39232902, %.lr.ph2271.preheader ], [ %i.fl, %.lr.ph2271.1 ], [ %i.ft, %.lr.ph2271.2 ], [ %i.gb, %.lr.ph2271.3 ]
  %.410522266.lcssa = phi ptr [ %.310512900, %.lr.ph2271.preheader ], [ %i.fh, %.lr.ph2271.1 ], [ %i.fp, %.lr.ph2271.2 ], [ %i.fx, %.lr.ph2271.3 ]
  %i.anf = trunc nuw nsw i64 %indvars.iv2796.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2325:                       ; preds = %.lr.ph2260.1, %.lr.ph2260.preheader
  %indvars.iv2793.lcssa = phi i64 [ %i.cc, %.lr.ph2260.preheader ], [ %indvars.iv.next2794, %.lr.ph2260.1 ]
  %.29222258.lcssa = phi i64 [ %.0920, %.lr.ph2260.preheader ], [ %i.ef, %.lr.ph2260.1 ]
  %.210502256.lcssa = phi ptr [ %.01048, %.lr.ph2260.preheader ], [ %i.eb, %.lr.ph2260.1 ]
  %i.ang = trunc nuw nsw i64 %indvars.iv2793.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2326:                       ; preds = %.lr.ph2096.3, %.lr.ph2096.2, %.lr.ph2096.1, %.lr.ph2096.preheader
  %indvars.iv2790.lcssa = phi i64 [ %i.bz, %.lr.ph2096.preheader ], [ %indvars.iv.next2791, %.lr.ph2096.1 ], [ %indvars.iv.next2791.1, %.lr.ph2096.2 ], [ %indvars.iv.next2791.2, %.lr.ph2096.3 ]
  %.169362094.lcssa = phi i64 [ %.0920, %.lr.ph2096.preheader ], [ %i.ow, %.lr.ph2096.1 ], [ %i.pe, %.lr.ph2096.2 ], [ %i.pm, %.lr.ph2096.3 ]
  %.2010682092.lcssa = phi ptr [ %.01048, %.lr.ph2096.preheader ], [ %i.os, %.lr.ph2096.1 ], [ %i.pa, %.lr.ph2096.2 ], [ %i.pi, %.lr.ph2096.3 ]
  %i.anh = trunc nuw nsw i64 %indvars.iv2790.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2327:                       ; preds = %.lr.ph2086.3, %.lr.ph2086.2, %.lr.ph2086.1, %.lr.ph2086.preheader
  %indvars.iv2788.lcssa = phi i64 [ %i.rd, %.lr.ph2086.preheader ], [ %indvars.iv.next2789, %.lr.ph2086.1 ], [ %indvars.iv.next2789.1, %.lr.ph2086.2 ], [ %indvars.iv.next2789.2, %.lr.ph2086.3 ]
  %.219412083.lcssa = phi i64 [ %i.qz, %.lr.ph2086.preheader ], [ %i.rk, %.lr.ph2086.1 ], [ %i.rr, %.lr.ph2086.2 ], [ %i.rz, %.lr.ph2086.3 ]
  %.2510732081.lcssa = phi ptr [ %.01048, %.lr.ph2086.preheader ], [ %i.rg, %.lr.ph2086.1 ], [ %i.rn, %.lr.ph2086.2 ], [ %i.rv, %.lr.ph2086.3 ]
  %i.ani = trunc nuw nsw i64 %indvars.iv2788.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2335:                       ; preds = %.lr.ph1750.1, %.lr.ph1750.preheader
  %indvars.iv2747.lcssa = phi i64 [ %i.bw, %.lr.ph1750.preheader ], [ %indvars.iv.next2748, %.lr.ph1750.1 ]
  %.249441748.lcssa = phi i64 [ %.0920, %.lr.ph1750.preheader ], [ %i.te, %.lr.ph1750.1 ]
  %.2810761746.lcssa = phi ptr [ %.01048, %.lr.ph1750.preheader ], [ %i.ta, %.lr.ph1750.1 ]
  %i.anj = trunc nuw nsw i64 %indvars.iv2747.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2336:                       ; preds = %.lr.ph1740.3, %.lr.ph1740.2, %.lr.ph1740.1, %.lr.ph1740.preheader
  %indvars.iv2744.lcssa = phi i64 [ %i.alo, %.lr.ph1740.preheader ], [ %indvars.iv.next2745, %.lr.ph1740.1 ], [ %indvars.iv.next2745.1, %.lr.ph1740.2 ], [ %indvars.iv.next2745.2, %.lr.ph1740.3 ]
  %.569761738.lcssa = phi i64 [ %.55975, %.lr.ph1740.preheader ], [ %i.alv, %.lr.ph1740.1 ], [ %i.amd, %.lr.ph1740.2 ], [ %i.aml, %.lr.ph1740.3 ]
  %.6011081736.lcssa = phi ptr [ %.591107, %.lr.ph1740.preheader ], [ %i.alr, %.lr.ph1740.1 ], [ %i.alz, %.lr.ph1740.2 ], [ %i.amh, %.lr.ph1740.3 ]
  %i.ank = trunc nuw nsw i64 %indvars.iv2744.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2337:                       ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.aji, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.539731731.lcssa = phi i64 [ %.0920, %.lr.ph.preheader ], [ %i.ajp, %.lr.ph.1 ], [ %i.ajx, %.lr.ph.2 ], [ %i.akf, %.lr.ph.3 ]
  %.5711051729.lcssa = phi ptr [ %.01048, %.lr.ph.preheader ], [ %i.ajl, %.lr.ph.1 ], [ %i.ajt, %.lr.ph.2 ], [ %i.akb, %.lr.ph.3 ]
  %i.anl = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2945:                       ; preds = %.lr.ph1928.preheader, %.lr.ph1928
  %.33101619763980 = phi i32 [ %.3310161976, %.lr.ph1928 ], [ 0, %.lr.ph1928.preheader ] ; 2 uses
  %.309501926.lcssa = phi i64 [ %i.vy, %.lr.ph1928 ], [ %.299491977, %.lr.ph1928.preheader ]
  %i.anm = zext i32 %.33101619763980 to i64
  %i.ann = shl i32 %.33101619763980, 3
  %i.ano = add i32 %i.ann, %.291978
  %scevgep.le = getelementptr i8, ptr %.3310811975, i64 %i.anm
  br label %.loopexit1260

.loopexit1260.loopexit2946:                       ; preds = %.lr.ph2075.preheader, %.lr.ph2075
  %.5310364179 = phi i32 [ %.531036, %.lr.ph2075 ], [ 0, %.lr.ph2075.preheader ] ; 2 uses
  %.509702073.lcssa = phi i64 [ %i.ahj, %.lr.ph2075 ], [ %.49969, %.lr.ph2075.preheader ]
  %i.anp = shl i32 %.5310364179, 3
  %i.anq = add i32 %.49, %i.anp
  %i.anr = zext i32 %.5310364179 to i64
  %scevgep2787.le = getelementptr i8, ptr %.531101, i64 %i.anr
  br label %.loopexit1260

.loopexit1260.loopexit2947:                       ; preds = %.lr.ph2062.preheader, %.lr.ph2062
  %.501033.lcssa4170 = phi i32 [ %.501033.lcssa, %.lr.ph2062 ], [ 0, %.lr.ph2062.preheader ] ; 2 uses
  %.479672060.lcssa = phi i64 [ %i.age, %.lr.ph2062 ], [ %.46966.lcssa, %.lr.ph2062.preheader ]
  %i.ans = zext i32 %.501033.lcssa4170 to i64
  %i.ant = shl i32 %.501033.lcssa4170, 3
  %i.anu = add i32 %i.ant, %.46.lcssa
  %scevgep2785.le = getelementptr i8, ptr %.501098.lcssa, i64 %i.ans
  br label %.loopexit1260

.loopexit1260.loopexit2948:                       ; preds = %.lr.ph2041.preheader, %.lr.ph2041
  %.4910324161 = phi i32 [ %.491032, %.lr.ph2041 ], [ 0, %.lr.ph2041.preheader ] ; 2 uses
  %.469662038.lcssa = phi i64 [ %i.aff, %.lr.ph2041 ], [ %.45965, %.lr.ph2041.preheader ]
  %i.anv = zext i32 %.4910324161 to i64
  %i.anw = shl i32 %.4910324161, 3
  %i.anx = add i32 %i.anw, %.45
  %scevgep2781.le = getelementptr i8, ptr %.491097, i64 %i.anv
  br label %.loopexit1260

.loopexit1260.loopexit2949:                       ; preds = %.lr.ph2026.preheader, %.lr.ph2026
  %.4610294143 = phi i32 [ %.461029, %.lr.ph2026 ], [ 0, %.lr.ph2026.preheader ] ; 2 uses
  %.439632024.lcssa = phi i64 [ %i.aec, %.lr.ph2026 ], [ %.42962, %.lr.ph2026.preheader ]
  %i.any = shl i32 %.4610294143, 3
  %i.anz = add i32 %.42, %i.any
  %i.aoa = zext i32 %.4610294143 to i64
  %scevgep2778.le = getelementptr i8, ptr %.461094, i64 %i.aoa
  br label %.loopexit1260

.loopexit1260.loopexit2950:                       ; preds = %.lr.ph2013.preheader, %.lr.ph2013
  %.431026.lcssa4134 = phi i32 [ %.431026.lcssa, %.lr.ph2013 ], [ 0, %.lr.ph2013.preheader ] ; 2 uses
  %.409602011.lcssa = phi i64 [ %i.acx, %.lr.ph2013 ], [ %.39959.lcssa, %.lr.ph2013.preheader ]
  %i.aob = zext i32 %.431026.lcssa4134 to i64
  %i.aoc = shl i32 %.431026.lcssa4134, 3
  %i.aod = add i32 %i.aoc, %.39.lcssa
  %scevgep2776.le = getelementptr i8, ptr %.431091.lcssa, i64 %i.aob
  br label %.loopexit1260

.loopexit1260.loopexit2951:                       ; preds = %.lr.ph1994.preheader, %.lr.ph1994
  %.4210254125 = phi i32 [ %.421025, %.lr.ph1994 ], [ 0, %.lr.ph1994.preheader ] ; 2 uses
  %.399591991.lcssa = phi i64 [ %i.aby, %.lr.ph1994 ], [ %.38958, %.lr.ph1994.preheader ]
  %i.aoe = zext i32 %.4210254125 to i64
  %i.aof = shl i32 %.4210254125, 3
  %i.aog = add i32 %i.aof, %.38
  %scevgep2772.le = getelementptr i8, ptr %.421090, i64 %i.aoe
  br label %.loopexit1260

.loopexit1260.loopexit3903:                       ; preds = %bb.l
  br label %.loopexit1260

.loopexit1260:                                    ; preds = %bb.bz, %bb.cc, %bb.ck, %bb.cp, %bb.cx, %bb.ds, %bb.ei, %bb.el, %bb.fm, %bb.gl, %bb.gw, %.lr.ph2105, %.lr.ph1760, %bb.l, %.loopexit1260.loopexit3903, %.loopexit1260.loopexit2951, %.loopexit1260.loopexit2950, %.loopexit1260.loopexit2949, %.loopexit1260.loopexit2948, %.loopexit1260.loopexit2947, %.loopexit1260.loopexit2946, %.loopexit1260.loopexit2945, %.loopexit1260.loopexit2337, %.loopexit1260.loopexit2336, %.loopexit1260.loopexit2335, %.loopexit1260.loopexit2327, %.loopexit1260.loopexit2326, %.loopexit1260.loopexit2325, %.loopexit1260.loopexit2324, %.loopexit1260.loopexit2323, %.loopexit1260.loopexit2322, %.loopexit1260.loopexit2321, %.loopexit1260.loopexit2320, %.loopexit1260.loopexit2318, %.loopexit1260.loopexit2317, %.loopexit1260.loopexit, %bb.ht, %bb.dy
  %.09812657 = phi i32 [ %.0981, %.loopexit1260.loopexit2318 ], [ %.0981, %.loopexit1260.loopexit2322 ], [ %.0981, %.loopexit1260.loopexit2321 ], [ %.0981, %.loopexit1260.loopexit2320 ], [ %.0981, %bb.l ], [ %.0981, %.loopexit1260.loopexit2327 ], [ %.0981, %.loopexit1260.loopexit2945 ], [ %.0981, %.loopexit1260.loopexit2946 ], [ %.0981, %.loopexit1260.loopexit2951 ], [ %.0981, %bb.ht ], [ %.0981, %.loopexit1260.loopexit2949 ], [ %.0981, %.loopexit1260.loopexit2324 ], [ %.0981, %.loopexit1260.loopexit ], [ %.0981, %.loopexit1260.loopexit2323 ], [ %.0981, %bb.dy ], [ %.0981, %.loopexit1260.loopexit2326 ], [ %.0981, %.loopexit1260.loopexit2335 ], [ %.0981, %.loopexit1260.loopexit2950 ], [ %.0981, %.loopexit1260.loopexit2947 ], [ %.0981, %.loopexit1260.loopexit2317 ], [ %.0981, %.loopexit1260.loopexit2337 ], [ %.0981, %.loopexit1260.loopexit2948 ], [ %.0981, %.lr.ph1760 ], [ %.0981, %.loopexit1260.loopexit2325 ], [ %.0981, %.loopexit1260.loopexit2336 ], [ %.0981, %bb.bz ], [ %.0981, %bb.cc ], [ %.0981, %bb.ck ], [ %.0981, %bb.cp ], [ %.0981, %bb.cx ], [ %.0981, %bb.ds ], [ %.0981, %bb.ei ], [ %.0981, %bb.el ], [ %.0981, %bb.fm ], [ 0, %bb.gl ], [ 0, %bb.gw ], [ %.0981, %.lr.ph2105 ], [ %.0981, %.loopexit1260.loopexit3903 ] ; 3 uses
  %.641112 = phi ptr [ %.3610841938, %.loopexit1260.loopexit2318 ], [ %.810562286.lcssa, %.loopexit1260.loopexit2322 ], [ %.1810662295.lcssa, %.loopexit1260.loopexit2321 ], [ %.110492305.lcssa, %.loopexit1260.loopexit2320 ], [ %.01048, %bb.l ], [ %.2510732081.lcssa, %.loopexit1260.loopexit2327 ], [ %scevgep.le, %.loopexit1260.loopexit2945 ], [ %scevgep2787.le, %.loopexit1260.loopexit2946 ], [ %scevgep2772.le, %.loopexit1260.loopexit2951 ], [ %.611109, %bb.ht ], [ %scevgep2778.le, %.loopexit1260.loopexit2949 ], [ %.410522266.lcssa, %.loopexit1260.loopexit2324 ], [ %.3710851958, %.loopexit1260.loopexit ], [ %.610542276.lcssa, %.loopexit1260.loopexit2323 ], [ %.241072.lcssa, %bb.dy ], [ %.2010682092.lcssa, %.loopexit1260.loopexit2326 ], [ %.2810761746.lcssa, %.loopexit1260.loopexit2335 ], [ %scevgep2776.le, %.loopexit1260.loopexit2950 ], [ %scevgep2785.le, %.loopexit1260.loopexit2947 ], [ %.3510831948, %.loopexit1260.loopexit2317 ], [ %.5711051729.lcssa, %.loopexit1260.loopexit2337 ], [ %scevgep2781.le, %.loopexit1260.loopexit2948 ], [ %.3010781906, %.lr.ph1760 ], [ %.210502256.lcssa, %.loopexit1260.loopexit2325 ], [ %.6011081736.lcssa, %.loopexit1260.loopexit2336 ], [ %.111059, %bb.bz ], [ %.131061, %bb.cc ], [ %i.lz, %bb.ck ], [ %.151063, %bb.cp ], [ %i.ng, %bb.cx ], [ %.221070, %bb.ds ], [ %.251073.lcssa, %bb.ei ], [ %.271075, %bb.el ], [ %.331081.lcssa, %bb.fm ], [ %.561104, %bb.gl ], [ %.01048, %bb.gw ], [ %.231071, %.lr.ph2105 ], [ %.01048, %.loopexit1260.loopexit3903 ]
  %.64 = phi i32 [ 0, %.loopexit1260.loopexit2318 ], [ 0, %.loopexit1260.loopexit2322 ], [ 0, %.loopexit1260.loopexit2321 ], [ 0, %.loopexit1260.loopexit2320 ], [ %.0983, %bb.l ], [ 0, %.loopexit1260.loopexit2327 ], [ 0, %.loopexit1260.loopexit2945 ], [ 0, %.loopexit1260.loopexit2946 ], [ 0, %.loopexit1260.loopexit2951 ], [ %.61, %bb.ht ], [ 0, %.loopexit1260.loopexit2949 ], [ 0, %.loopexit1260.loopexit2324 ], [ 0, %.loopexit1260.loopexit ], [ 0, %.loopexit1260.loopexit2323 ], [ %.241007.lcssa, %bb.dy ], [ 0, %.loopexit1260.loopexit2326 ], [ 0, %.loopexit1260.loopexit2335 ], [ 0, %.loopexit1260.loopexit2950 ], [ 0, %.loopexit1260.loopexit2947 ], [ 0, %.loopexit1260.loopexit2317 ], [ 0, %.loopexit1260.loopexit2337 ], [ 0, %.loopexit1260.loopexit2948 ], [ 0, %.lr.ph1760 ], [ 0, %.loopexit1260.loopexit2325 ], [ 0, %.loopexit1260.loopexit2336 ], [ %.11994, %bb.bz ], [ 0, %bb.cc ], [ %i.ly, %bb.ck ], [ 0, %bb.cp ], [ %i.nf, %bb.cx ], [ %.221005, %bb.ds ], [ %.251008.lcssa, %bb.ei ], [ %.271010, %bb.el ], [ %.331016.lcssa, %bb.fm ], [ %.561039, %bb.gl ], [ %.0983, %bb.gw ], [ 0, %.lr.ph2105 ], [ %.0983, %.loopexit1260.loopexit3903 ] ; 4 uses
  %.60980 = phi i64 [ %.329521940, %.loopexit1260.loopexit2318 ], [ %.89282288.lcssa, %.loopexit1260.loopexit2322 ], [ %.149342297.lcssa, %.loopexit1260.loopexit2321 ], [ %.19212307.lcssa, %.loopexit1260.loopexit2320 ], [ %.0920, %bb.l ], [ %.219412083.lcssa, %.loopexit1260.loopexit2327 ], [ %.309501926.lcssa, %.loopexit1260.loopexit2945 ], [ %.509702073.lcssa, %.loopexit1260.loopexit2946 ], [ %.399591991.lcssa, %.loopexit1260.loopexit2951 ], [ %.57977, %bb.ht ], [ %.439632024.lcssa, %.loopexit1260.loopexit2949 ], [ %.49242268.lcssa, %.loopexit1260.loopexit2324 ], [ %.339531960, %.loopexit1260.loopexit ], [ %.69262278.lcssa, %.loopexit1260.loopexit2323 ], [ %i.qt, %bb.dy ], [ %.169362094.lcssa, %.loopexit1260.loopexit2326 ], [ %.249441748.lcssa, %.loopexit1260.loopexit2335 ], [ %.409602011.lcssa, %.loopexit1260.loopexit2950 ], [ %.479672060.lcssa, %.loopexit1260.loopexit2947 ], [ %.319511950, %.loopexit1260.loopexit2317 ], [ %.539731731.lcssa, %.loopexit1260.loopexit2337 ], [ %.469662038.lcssa, %.loopexit1260.loopexit2948 ], [ %.269461908, %.lr.ph1760 ], [ %.29222258.lcssa, %.loopexit1260.loopexit2325 ], [ %.569761738.lcssa, %.loopexit1260.loopexit2336 ], [ %.10930, %bb.bz ], [ %.11931, %bb.cc ], [ %.11931, %bb.ck ], [ %.12932, %bb.cp ], [ %.12932, %bb.cx ], [ %.18938, %bb.ds ], [ 0, %bb.ei ], [ %.23943, %bb.el ], [ %.29949.lcssa, %bb.fm ], [ %.52972, %bb.gl ], [ %.0920, %bb.gw ], [ %.19939, %.lr.ph2105 ], [ %.0920, %.loopexit1260.loopexit3903 ]
  %.60 = phi i32 [ %i.ana, %.loopexit1260.loopexit2318 ], [ %i.and, %.loopexit1260.loopexit2322 ], [ %i.anc, %.loopexit1260.loopexit2321 ], [ %i.anb, %.loopexit1260.loopexit2320 ], [ %.0909, %bb.l ], [ %i.ani, %.loopexit1260.loopexit2327 ], [ %i.ano, %.loopexit1260.loopexit2945 ], [ %i.anq, %.loopexit1260.loopexit2946 ], [ %i.aog, %.loopexit1260.loopexit2951 ], [ %.57, %bb.ht ], [ %i.anz, %.loopexit1260.loopexit2949 ], [ %i.anf, %.loopexit1260.loopexit2324 ], [ %i.amy, %.loopexit1260.loopexit ], [ %i.ane, %.loopexit1260.loopexit2323 ], [ %i.qu, %bb.dy ], [ %i.anh, %.loopexit1260.loopexit2326 ], [ %i.anj, %.loopexit1260.loopexit2335 ], [ %i.aod, %.loopexit1260.loopexit2950 ], [ %i.anu, %.loopexit1260.loopexit2947 ], [ %i.amz, %.loopexit1260.loopexit2317 ], [ %i.anl, %.loopexit1260.loopexit2337 ], [ %i.anx, %.loopexit1260.loopexit2948 ], [ %.261909, %.lr.ph1760 ], [ %i.ang, %.loopexit1260.loopexit2325 ], [ %i.ank, %.loopexit1260.loopexit2336 ], [ %.10919, %bb.bz ], [ %.11, %bb.cc ], [ %.11, %bb.ck ], [ %.12, %bb.cp ], [ %.12, %bb.cx ], [ %.18, %bb.ds ], [ 0, %bb.ei ], [ %.23, %bb.el ], [ %.29.lcssa, %bb.fm ], [ %.52, %bb.gl ], [ %.0909, %bb.gw ], [ %.19, %.lr.ph2105 ], [ %.0909, %.loopexit1260.loopexit3903 ] ; 4 uses
  %.5908 = phi i32 [ %.0903, %.loopexit1260.loopexit2318 ], [ %.0903, %.loopexit1260.loopexit2322 ], [ %.0903, %.loopexit1260.loopexit2321 ], [ %.0903, %.loopexit1260.loopexit2320 ], [ %.0903, %bb.l ], [ %.0903, %.loopexit1260.loopexit2327 ], [ %.0903, %.loopexit1260.loopexit2945 ], [ %.0903, %.loopexit1260.loopexit2946 ], [ %.0903, %.loopexit1260.loopexit2951 ], [ %.2905, %bb.ht ], [ %.0903, %.loopexit1260.loopexit2949 ], [ %.0903, %.loopexit1260.loopexit2324 ], [ %.0903, %.loopexit1260.loopexit ], [ %.0903, %.loopexit1260.loopexit2323 ], [ %.0903, %bb.dy ], [ %.0903, %.loopexit1260.loopexit2326 ], [ %.0903, %.loopexit1260.loopexit2335 ], [ %.0903, %.loopexit1260.loopexit2950 ], [ %.0903, %.loopexit1260.loopexit2947 ], [ %.0903, %.loopexit1260.loopexit2317 ], [ %.0903, %.loopexit1260.loopexit2337 ], [ %.0903, %.loopexit1260.loopexit2948 ], [ %.0903, %.lr.ph1760 ], [ %.0903, %.loopexit1260.loopexit2325 ], [ %.2905, %.loopexit1260.loopexit2336 ], [ %.0903, %.lr.ph2105 ], [ %.0903, %bb.gw ], [ %.0903, %bb.gl ], [ %.0903, %bb.fm ], [ %.0903, %bb.el ], [ %.0903, %bb.ei ], [ %.0903, %bb.ds ], [ %.0903, %bb.cx ], [ %.0903, %bb.cp ], [ %.0903, %bb.ck ], [ %.0903, %bb.cc ], [ %.0903, %bb.bz ], [ %.0903, %.loopexit1260.loopexit3903 ] ; 4 uses
  %.9 = phi i32 [ %.1, %.loopexit1260.loopexit2318 ], [ %.0894, %.loopexit1260.loopexit2322 ], [ %.0894, %.loopexit1260.loopexit2321 ], [ %.0894, %.loopexit1260.loopexit2320 ], [ -3, %bb.l ], [ %.0894, %.loopexit1260.loopexit2327 ], [ %.1, %.loopexit1260.loopexit2945 ], [ %.6, %.loopexit1260.loopexit2946 ], [ %.3, %.loopexit1260.loopexit2951 ], [ 1, %bb.ht ], [ %.4, %.loopexit1260.loopexit2949 ], [ %.0894, %.loopexit1260.loopexit2324 ], [ %.1, %.loopexit1260.loopexit ], [ %.0894, %.loopexit1260.loopexit2323 ], [ %.0894, %bb.dy ], [ %.0894, %.loopexit1260.loopexit2326 ], [ %.0894, %.loopexit1260.loopexit2335 ], [ %.3, %.loopexit1260.loopexit2950 ], [ %.5, %.loopexit1260.loopexit2947 ], [ %.1, %.loopexit1260.loopexit2317 ], [ %.0894, %.loopexit1260.loopexit2337 ], [ %.5, %.loopexit1260.loopexit2948 ], [ %.0894, %.lr.ph1760 ], [ %.0894, %.loopexit1260.loopexit2325 ], [ %.0894, %.loopexit1260.loopexit2336 ], [ %.0894, %bb.bz ], [ %.0894, %bb.cc ], [ %.0894, %bb.ck ], [ %.0894, %bb.cp ], [ %.0894, %bb.cx ], [ %.0894, %bb.ds ], [ %.0894, %bb.ei ], [ %.0894, %bb.el ], [ 0, %bb.fm ], [ %.7, %bb.gl ], [ %.0894, %bb.gw ], [ %.0894, %.lr.ph2105 ], [ 1, %.loopexit1260.loopexit3903 ] ; 2 uses
  store ptr %.01045, ptr %i.s, align 8, !tbaa !89
  store i32 %.09812657, ptr %i.ab, align 8, !tbaa !90
  store ptr %.641112, ptr %0, align 8, !tbaa !58
  store i32 %.64, ptr %i.ad, align 8, !tbaa !59
  store i64 %.60980, ptr %i.af, align 8, !tbaa !33
  store i32 %.60, ptr %i.ah, align 32, !tbaa !34
  %i.aoh = sub i32 %.5908, %.09812657             ; 4 uses
  %i.aoi = load i32, ptr %i.bn, align 64, !tbaa !39
  %.not1245 = icmp eq i32 %i.aoi, 0
  br i1 %.not1245, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %.loopexit1260
  %.not1246 = icmp eq i32 %.5908, %.09812657
  %.pre2838 = load i32, ptr %i.p, align 8, !tbaa !23 ; 5 uses
  br i1 %.not1246, label %bb.hy, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aoj = icmp ult i32 %.pre2838, 16209
  br i1 %i.aoj, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.aok = icmp samesign ult i32 %.pre2838, 16206
  %i.aol = icmp ne i32 %1, 4
  %or.cond7 = or i1 %i.aol, %i.aok
  br i1 %or.cond7, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw, %.loopexit1260
  %i.aom = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.aon = and i32 %i.aom, 4
  call fastcc void @updatewindow(ptr noundef nonnull %0, ptr noundef %.01045, i32 noundef %i.aoh, i32 noundef %i.aon)
  %.pre2834 = load i32, ptr %i.ad, align 8, !tbaa !59
  %.pre2835 = load i32, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  %.pre2836 = load i32, ptr %i.ah, align 32, !tbaa !34
  %.pre2837 = load i32, ptr %i.p, align 8, !tbaa !23
  %.pre2841 = sub i32 %.5908, %.pre2835
  %i.aoo = icmp eq i32 %.5908, %.pre2835
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hw, %bb.hx, %bb.hv, %bb.hu
  %.pre-phi = phi i32 [ %i.aoh, %bb.hw ], [ %.pre2841, %bb.hx ], [ %i.aoh, %bb.hv ], [ 0, %bb.hu ]
  %i.aop = phi i32 [ %.pre2838, %bb.hw ], [ %.pre2837, %bb.hx ], [ %.pre2838, %bb.hv ], [ %.pre2838, %bb.hu ] ; 3 uses
  %i.aoq = phi i32 [ %.60, %bb.hw ], [ %.pre2836, %bb.hx ], [ %.60, %bb.hv ], [ %.60, %bb.hu ]
  %i.aor = phi i1 [ false, %bb.hw ], [ %i.aoo, %bb.hx ], [ false, %bb.hv ], [ true, %bb.hu ]
  %i.aos = phi i32 [ %.64, %bb.hw ], [ %.pre2834, %bb.hx ], [ %.64, %bb.hv ], [ %.64, %bb.hu ] ; 2 uses
  %i.aot = sub i32 %i.ae, %i.aos
  %i.aou = zext i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !25
  %i.aox = add i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aov, align 8, !tbaa !25
  %i.aoy = zext i32 %.pre-phi to i64              ; 2 uses
  %i.aoz = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.apa = add i64 %i.aoz, %i.aoy
  store i64 %i.apa, ptr %i.ak, align 8, !tbaa !68
  %i.apb = load i64, ptr %i.al, align 8, !tbaa !24
  %i.apc = add i64 %i.apb, %i.aoy
  store i64 %i.apc, ptr %i.al, align 8, !tbaa !24
  %i.apd = load i32, ptr %i.bq, align 4, !tbaa !29
  %.not1247 = icmp eq i32 %i.apd, 0
  %i.ape = select i1 %.not1247, i32 0, i32 64
  %i.apf = add nsw i32 %i.ape, %i.aoq
  %i.apg = icmp eq i32 %i.aop, 16191
  %i.aph = select i1 %i.apg, i32 128, i32 0
  %i.api = add nsw i32 %i.apf, %i.aph
  %i.apj = icmp eq i32 %i.aop, 16199
  %i.apk = icmp eq i32 %i.aop, 16194
  %i.apl = or i1 %i.apj, %i.apk
  %i.apm = select i1 %i.apl, i32 256, i32 0
  %i.apn = add nsw i32 %i.api, %i.apm
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.apn, ptr %i.apo, align 8, !tbaa !117
  %i.app = icmp eq i32 %i.ae, %i.aos
  %or.cond9 = select i1 %i.app, i1 %i.aor, i1 false
  %i.apq = icmp eq i32 %1, 4                      ; 2 uses
  %or.cond11 = or i1 %i.apq, %or.cond9
  %i.apr = icmp eq i32 %.9, 0
  %or.cond13 = select i1 %or.cond11, i1 %i.apr, i1 false
  br i1 %or.cond13, label %bb.hz, label %inf_chksum.exit

bb.hz:                                            ; preds = %bb.hy
  %i.aps = load i32, ptr %i.bn, align 64, !tbaa !39
  %i.apt = icmp eq i32 %i.aps, 0
  %or.cond15 = and i1 %i.apq, %i.apt
  br i1 %or.cond15, label %bb.ia, label %inf_chksum.exit

bb.ia:                                            ; preds = %bb.hz
  %i.apu = zext i32 %i.aoh to i64                 ; 3 uses
  %i.apv = sub nsw i64 0, %i.apu
  %i.apw = getelementptr inbounds i8, ptr %.01045, i64 %i.apv ; 2 uses
  %i.apx = load ptr, ptr %i.i, align 8, !tbaa !15 ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  %i.apz = load i32, ptr %i.apy, align 8, !tbaa !31
  %.not.i1249 = icmp eq i32 %i.apz, 0
  br i1 %.not.i1249, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.aqa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 48), align 8, !tbaa !69
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apx, i64 160
  call void %i.aqa(ptr noundef nonnull %i.aqb, ptr noundef %i.apw, i64 noundef %i.apu, i32 noundef 0) #14, !inline_history !70
  br label %inf_chksum.exit

bb.ic:                                            ; preds = %bb.ia
  %i.aqc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 8), align 8, !tbaa !71
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apx, i64 32 ; 2 uses
  %i.aqe = load i64, ptr %i.aqd, align 32, !tbaa !28
  %i.aqf = trunc i64 %i.aqe to i32
  %i.aqg = call i32 %i.aqc(i32 noundef %i.aqf, ptr noundef %i.apw, i64 noundef %i.apu) #14, !inline_history !70 ; 2 uses
  %i.aqh = zext i32 %i.aqg to i64
  store i64 %i.aqh, ptr %i.aqd, align 32, !tbaa !28
  store i32 %i.aqg, ptr %i.ap, align 4, !tbaa !27
  br label %inf_chksum.exit

inf_chksum.exit:                                  ; preds = %bb.l, %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.d, %bb.ic, %bb.ib, %bb.hy, %bb.hz, %inflateStateCheck.exit, %bb.g, %bb.i, %bb.dq
  %.0 = phi i32 [ 2, %bb.dq ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.e ], [ -2, %bb.i ], [ -2, %bb.g ], [ %.9, %bb.hy ], [ -5, %bb.ic ], [ -5, %bb.hz ], [ -5, %bb.ib ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @zng_crc32(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

declare hidden i32 @zng_inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @chunkcopy_safe(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, ptr noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.c) ; 5 uses
  %i.e = icmp uge ptr %1, %0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  %i.g = icmp ult ptr %1, %i.f
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  %i.i = icmp uge ptr %0, %1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.k = icmp ult ptr %0, %i.j
  %i.l = select i1 %i.i, i1 %i.k, i1 false
  %or.cond = select i1 %i.h, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %i.d, i1 false)
  br label %.loopexit73

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %.loopexit73, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.b
  %i.p = tail call i64 @llvm.abs.i64(i64 %i.o, i1 true)
  %.not87 = icmp eq i64 %i.d, 0
  br i1 %.not87, label %.loopexit73, label %.lr.ph92

.loopexit:                                        ; preds = %.lr.ph84.prol.loopexit, %.lr.ph84, %middle.block, %vec.epilog.middle.block, %bb.h
  %.469.lcssa = phi ptr [ %.368, %bb.h ], [ %i.be, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %.lcssa129.unr, %.lr.ph84.prol.loopexit ], [ %i.ck, %.lr.ph84 ] ; 2 uses
  %.4.lcssa = phi ptr [ %.364, %bb.h ], [ %i.bd, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %.lcssa130.unr, %.lr.ph84.prol.loopexit ], [ %i.ci, %.lr.ph84 ]
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.loopexit73, label %.lr.ph92, !llvm.loop !118

.lr.ph92:                                         ; preds = %bb.d, %.loopexit
  %.06090 = phi i64 [ %i.r, %.loopexit ], [ %i.d, %bb.d ] ; 2 uses
  %.06189 = phi ptr [ %.4.lcssa, %.loopexit ], [ %1, %bb.d ] ; 3 uses
  %.06588 = phi ptr [ %.469.lcssa, %.loopexit ], [ %0, %bb.d ] ; 3 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %.06090) ; 6 uses
  %i.r = sub i64 %.06090, %i.q                    ; 2 uses
  %i.s = icmp samesign ugt i64 %i.q, 15
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph92
  %i.t = add nsw i64 %i.q, -16                    ; 2 uses
  %i.u = lshr i64 %i.t, 4
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
end_hunk_1
