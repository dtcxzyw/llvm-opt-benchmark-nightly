inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@ruby_yyparse:bb.a
  br i1 %.not3092, label %bb.sg, label %bb.sj

bb.sg:                                            ; preds = %bb.sf
  %i.cet = load ptr, ptr %i.j, align 8, !tbaa !49 ; 2 uses
  %i.ceu = getelementptr i8, ptr %i.cet, i64 -2   ; 3 uses
  %i.cev = load ptr, ptr %i.l, align 8, !tbaa !50 ; 3 uses
  %i.cew = getelementptr i8, ptr %i.ceq, i64 12
  %i.cex = load i32, ptr %i.cew, align 4, !tbaa !144
  %i.cey = sext i32 %i.cex to i64
  %i.cez = getelementptr i8, ptr %i.cev, i64 %i.cey
  %i.cfa = getelementptr i8, ptr %i.cez, i64 4    ; 3 uses
  %i.cfb = icmp ult ptr %i.cfa, %i.ceu
  br i1 %i.cfb, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.sg
  %24 = ptrtoint ptr %i.cev to i64
  %25 = ptrtoint ptr %i.cet to i64
  %scevgep = getelementptr i8, ptr %i.cev, i64 -2
  %26 = sub i64 %25, %24
  %scevgep3786 = getelementptr i8, ptr %scevgep, i64 %26
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.sh
  %.029683751 = phi ptr [ %i.cfh, %bb.sh ], [ %i.cfa, %.lr.ph.preheader ] ; 3 uses
  %i.cfc = load i8, ptr %.029683751, align 1, !tbaa !15 ; 2 uses
  %i.cfd = sext i8 %i.cfc to i32
  %i.cfe = icmp ne i8 %i.cfc, 32
end_hunk_0
begin_hunk_1_@ruby_yyparse:bb.a
  br i1 %narrow.i.not, label %.critedge, label %bb.sh

bb.sh:                                            ; preds = %.lr.ph
  %i.cfh = getelementptr i8, ptr %.029683751, i64 1 ; 2 uses
  %i.cfi = icmp ult ptr %i.cfh, %i.ceu
  br i1 %i.cfi, label %.lr.ph, label %.critedge, !llvm.loop !145

.critedge:                                        ; preds = %.lr.ph, %bb.sh, %bb.sg
  %.02968.lcssa = phi ptr [ %i.cfa, %bb.sg ], [ %scevgep3786, %bb.sh ], [ %.029683751, %.lr.ph ]
  %i.cfj = icmp eq ptr %.02968.lcssa, %i.ceu
  br i1 %i.cfj, label %bb.si, label %bb.sj

end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
  %i.t = getelementptr i8, ptr %i.q, i64 %i.s     ; 4 uses
  %i.u = getelementptr i8, ptr %i.h, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !489  ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 13 uses
  %3 = sub nsw i64 0, %i.w                        ; 3 uses
  %i.x = getelementptr i8, ptr %i.h, i64 33
  %i.y = load i8, ptr %i.x, align 1, !tbaa !488
  %i.z = zext i8 %i.y to i32                      ; 6 uses
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  %i.ce = phi ptr [ %i.aj, %bb.g ], [ %i.aq, %bb.h ], [ %i.aj, %bb.f ], [ %i.aj, %bb.e ]
  %.011.i.ph.i = phi i32 [ 13, %bb.g ], [ 10, %bb.h ], [ 13, %bb.f ], [ %i.al, %bb.e ]
  %i.cf = getelementptr i8, ptr %0, i64 72        ; 8 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !50 ; 8 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 1
  %i.ci = icmp eq ptr %i.ce, %i.ch                ; 3 uses
  br i1 %i.ci, label %bb.l, label %whole_match_p.exit.thread.i
end_hunk_3
begin_hunk_4_@parser_yylex:bb.a

bb.n:                                             ; preds = %bb.l
  %.val170.i = load ptr, ptr %i.ab, align 8, !tbaa !426 ; 6 uses
  %i.cm = ptrtoint ptr %.val170.i to i64          ; 3 uses
  %i.cn = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp slt i64 %i.co, %i.w
  br i1 %i.cp, label %whole_match_p.exit.thread.i, label %bb.o
end_hunk_4
begin_hunk_5_@parser_yylex:bb.a

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %i.cr, %bb.q ], [ %spec.select.i.i, %bb.r ] ; 2 uses
  %i.cy = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.cz = sub i64 %i.cy, %i.cn
  %i.da = icmp slt i64 %i.cz, %i.w
  br i1 %i.da, label %whole_match_p.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.o
  %.16.pre-phi.i.i = phi i64 [ %i.cy, %bb.s ], [ %i.cm, %bb.p ], [ %i.cm, %bb.o ]
  %.1.i.i = phi ptr [ %.0.i.i, %bb.s ], [ %.val170.i, %bb.p ], [ %.val170.i, %bb.o ]
  %i.db = getelementptr i8, ptr %.1.i.i, i64 %3   ; 3 uses
  %i.dc = tail call i32 @strncmp(ptr noundef readonly %i.t, ptr noundef %i.db, i64 noundef range(i64 0, 4294967296) %i.w) #37
  %.not.i173.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i173.i, label %bb.u, label %whole_match_p.exit.thread.i
end_hunk_5
begin_hunk_6_@parser_yylex:bb.a
  %.not35.i.i = icmp ne i32 %i.aa, 0
  %i.dd = icmp ult ptr %i.cg, %i.db
  %or.cond.i.i = and i1 %.not35.i.i, %i.dd
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i, label %whole_match_p.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %4 = add i64 %i.cn, %i.w
  %5 = sub i64 %.16.pre-phi.i.i, %4
  %scevgep.i.i = getelementptr i8, ptr %i.cg, i64 %5 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.preheader.i.i
  %.0263.i.i = phi ptr [ %i.dj, %bb.v ], [ %i.cg, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.de = load i8, ptr %.0263.i.i, align 1, !tbaa !15 ; 2 uses
  %i.df = sext i8 %i.de to i32
  %i.dg = icmp ne i8 %i.de, 32
end_hunk_6
begin_hunk_7_@parser_yylex:bb.a
  br i1 %narrow.i.not.i.i, label %whole_match_p.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dj = getelementptr i8, ptr %.0263.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.dj, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %whole_match_p.exit.i, label %.lr.ph.i.i, !llvm.loop !565

whole_match_p.exit.i:                             ; preds = %bb.v, %.lr.ph.i.i, %bb.u
  %.127.i.i = phi ptr [ %i.cg, %bb.u ], [ %.0263.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %bb.v ]
  %.not.i = icmp eq ptr %.127.i.i, %i.db
  br i1 %.not.i, label %bb.w, label %whole_match_p.exit.thread.i

end_hunk_7
begin_hunk_8_@parser_yylex:bb.a
  %i.ex = getelementptr i8, ptr %0, i64 56
  %i.ey = getelementptr i8, ptr %0, i64 148       ; 3 uses
  %i.ez = getelementptr i8, ptr %0, i64 152       ; 3 uses
  %.not35.i207.i = icmp ne i32 %i.aa, 0
  %.pre317.i = load ptr, ptr %i.ab, align 8, !tbaa !426
  br label %.backedge.i
end_hunk_8
begin_hunk_9_@parser_yylex:bb.a
  br label %nextc0.exit.i

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.val167.i = load ptr, ptr %i.cf, align 8, !tbaa !50 ; 7 uses
  %i.ic = ptrtoint ptr %.val168.pre.i to i64      ; 3 uses
  %i.id = ptrtoint ptr %.val167.i to i64          ; 3 uses
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = icmp slt i64 %i.ie, %i.w
  br i1 %i.if, label %.backedge.i.backedge, label %bb.bb
end_hunk_9
begin_hunk_10_@parser_yylex:bb.a

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0.i214.i = phi ptr [ %i.ih, %bb.bd ], [ %spec.select.i215.i, %bb.be ] ; 2 uses
  %i.io = ptrtoint ptr %.0.i214.i to i64          ; 2 uses
  %i.ip = sub i64 %i.io, %i.id
  %i.iq = icmp slt i64 %i.ip, %i.w
  br i1 %i.iq, label %.backedge.i.backedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc, %bb.bb
  %.16.pre-phi.i204.i = phi i64 [ %i.io, %bb.bf ], [ %i.ic, %bb.bc ], [ %i.ic, %bb.bb ]
  %.1.i204.i = phi ptr [ %.0.i214.i, %bb.bf ], [ %.val168.pre.i, %bb.bc ], [ %.val168.pre.i, %bb.bb ]
  %i.ir = getelementptr i8, ptr %.1.i204.i, i64 %3 ; 3 uses
  %i.is = tail call i32 @strncmp(ptr noundef readonly %i.t, ptr noundef %i.ir, i64 noundef range(i64 0, 4294967296) %i.w) #37
  %.not.i205.i = icmp eq i32 %i.is, 0
  br i1 %.not.i205.i, label %bb.bh, label %.backedge.i.backedge
end_hunk_10
begin_hunk_11_@parser_yylex:bb.a
bb.bh:                                            ; preds = %bb.bg
  %i.it = icmp ult ptr %.val167.i, %i.ir
  %or.cond.i208.i = and i1 %.not35.i207.i, %i.it
  br i1 %or.cond.i208.i, label %.lr.ph.preheader.i212.i, label %.critedge.i209.i

.lr.ph.preheader.i212.i:                          ; preds = %bb.bh
  %6 = add i64 %i.id, %i.w
  %7 = sub i64 %.16.pre-phi.i204.i, %6
  %scevgep.i213.i = getelementptr i8, ptr %.val167.i, i64 %7 ; 2 uses
  br label %.lr.ph.i211.i

.lr.ph.i211.i:                                    ; preds = %bb.bi, %.lr.ph.preheader.i212.i
  %.0263.i212.i = phi ptr [ %i.iz, %bb.bi ], [ %.val167.i, %.lr.ph.preheader.i212.i ] ; 3 uses
  %i.iu = load i8, ptr %.0263.i212.i, align 1, !tbaa !15 ; 2 uses
  %i.iv = sext i8 %i.iu to i32
  %i.iw = icmp ne i8 %i.iu, 32
end_hunk_11
begin_hunk_12_@parser_yylex:bb.a
  br i1 %narrow.i.not.i213.i, label %.critedge.i209.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i211.i
  %i.iz = getelementptr i8, ptr %.0263.i212.i, i64 1 ; 2 uses
  %exitcond.not.i217.i = icmp eq ptr %i.iz, %scevgep.i213.i
  br i1 %exitcond.not.i217.i, label %.critedge.i209.i, label %.lr.ph.i211.i, !llvm.loop !565

.critedge.i209.i:                                 ; preds = %bb.bi, %.lr.ph.i211.i, %bb.bh
  %.127.i210.i = phi ptr [ %.val167.i, %bb.bh ], [ %.0263.i212.i, %.lr.ph.i211.i ], [ %scevgep.i213.i, %bb.bi ]
  %.not306.i = icmp eq ptr %.127.i210.i, %i.ir
  br i1 %.not306.i, label %.loopexit290.i, label %.backedge.i.backedge

end_hunk_12
begin_hunk_13_@parser_yylex:bb.a
  %.1141.i = phi i1 [ false, %newtok.exit.i ], [ false, %bb.cj ], [ false, %bb.ck ], [ false, %bb.ci ], [ false, %bb.ch ], [ true, %.critedge.i225.i ]
  %i.mb = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.mc = getelementptr i8, ptr %0, i64 148
  %.not35.i256.i = icmp ne i32 %i.aa, 0
  br i1 %.1141.i, label %pushback.exit.i, label %.backedge292.i

end_hunk_13
begin_hunk_14_@parser_yylex:bb.a
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %bb.de
  %.val.i = load ptr, ptr %i.cf, align 8, !tbaa !50 ; 7 uses
  %i.pv = ptrtoint ptr %.val166.pre.i to i64      ; 3 uses
  %i.pw = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = icmp slt i64 %i.px, %i.w
  br i1 %i.py, label %.backedge292.i, label %bb.dj
end_hunk_14
begin_hunk_15_@parser_yylex:bb.a

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.0.i263.i = phi ptr [ %i.qa, %bb.dl ], [ %spec.select.i264.i, %bb.dm ] ; 2 uses
  %i.qh = ptrtoint ptr %.0.i263.i to i64          ; 2 uses
  %i.qi = sub i64 %i.qh, %i.pw
  %i.qj = icmp slt i64 %i.qi, %i.w
  br i1 %i.qj, label %.backedge292.i, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dk, %bb.dj
  %.16.pre-phi.i257.i = phi i64 [ %i.qh, %bb.dn ], [ %i.pv, %bb.dk ], [ %i.pv, %bb.dj ]
  %.1.i253.i = phi ptr [ %.0.i263.i, %bb.dn ], [ %.val166.pre.i, %bb.dk ], [ %.val166.pre.i, %bb.dj ]
  %i.qk = getelementptr i8, ptr %.1.i253.i, i64 %3 ; 3 uses
  %i.ql = tail call i32 @strncmp(ptr noundef readonly %i.t, ptr noundef %i.qk, i64 noundef range(i64 0, 4294967296) %i.w) #37
  %.not.i254.i = icmp eq i32 %i.ql, 0
  br i1 %.not.i254.i, label %bb.dp, label %.backedge292.i
end_hunk_15
begin_hunk_16_@parser_yylex:bb.a
bb.dp:                                            ; preds = %bb.do
  %i.qm = icmp ult ptr %.val.i, %i.qk
  %or.cond.i257.i = and i1 %.not35.i256.i, %i.qm
  br i1 %or.cond.i257.i, label %.lr.ph.preheader.i265.i, label %.critedge.i258.i

.lr.ph.preheader.i265.i:                          ; preds = %bb.dp
  %8 = add i64 %i.pw, %i.w
  %9 = sub i64 %.16.pre-phi.i257.i, %8
  %scevgep.i266.i = getelementptr i8, ptr %.val.i, i64 %9 ; 2 uses
  br label %.lr.ph.i260.i

.lr.ph.i260.i:                                    ; preds = %bb.dq, %.lr.ph.preheader.i265.i
  %.0263.i261.i = phi ptr [ %i.qs, %bb.dq ], [ %.val.i, %.lr.ph.preheader.i265.i ] ; 3 uses
  %i.qn = load i8, ptr %.0263.i261.i, align 1, !tbaa !15 ; 2 uses
  %i.qo = sext i8 %i.qn to i32
  %i.qp = icmp ne i8 %i.qn, 32
end_hunk_16
begin_hunk_17_@parser_yylex:bb.a
  br i1 %narrow.i.not.i262.i, label %.critedge.i258.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i260.i
  %i.qs = getelementptr i8, ptr %.0263.i261.i, i64 1 ; 2 uses
  %exitcond.not.i270.i = icmp eq ptr %i.qs, %scevgep.i266.i
  br i1 %exitcond.not.i270.i, label %.critedge.i258.i, label %.lr.ph.i260.i, !llvm.loop !565

.critedge.i258.i:                                 ; preds = %bb.dq, %.lr.ph.i260.i, %bb.dp
  %.127.i259.i = phi ptr [ %.val.i, %bb.dp ], [ %.0263.i261.i, %.lr.ph.i260.i ], [ %scevgep.i266.i, %bb.dq ]
  %.not305.i = icmp eq ptr %.127.i259.i, %i.qk
  br i1 %.not305.i, label %bb.dr, label %.backedge292.i

end_hunk_17
begin_hunk_18_@parser_yylex:bb.a

bb.kg:                                            ; preds = %comment_at_top.exit
  %i.ayg = load ptr, ptr %i.aia, align 8, !tbaa !188 ; 2 uses
  %i.ayh = load ptr, ptr %i.aie, align 8, !tbaa !426 ; 4 uses
  %i.ayi = ptrtoint ptr %i.ayh to i64             ; 3 uses
  %i.ayj = ptrtoint ptr %i.ayg to i64
  %i.ayk = sub i64 %i.ayi, %i.ayj
end_hunk_18
begin_hunk_19_@parser_yylex:bb.a
  %scevgep.i = getelementptr i8, ptr %.2.i9492868, i64 %i.ayi
  %.2.lcssa7375.i = ptrtoint ptr %.2.i9492868 to i64
  %i.azm = sub i64 0, %.2.lcssa7375.i
  %scevgep76.i = getelementptr i8, ptr %scevgep.i, i64 %i.azm ; 2 uses
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kq
end_hunk_19
begin_hunk_20_@parser_yylex:bb.a

bb.ku:                                            ; preds = %bb.kt, %bb.ks, %bb.ks
  %i.azv = getelementptr i8, ptr %.4.i, i64 1     ; 2 uses
  %exitcond.not.i954 = icmp eq ptr %i.azv, %scevgep76.i
  br i1 %exitcond.not.i954, label %.critedge.i952, label %bb.ks, !llvm.loop !597

.critedge.i952:                                   ; preds = %bb.ku, %bb.kt
  %.5.i953 = phi ptr [ %scevgep76.i, %bb.ku ], [ %.4.i, %bb.kt ] ; 2 uses
end_hunk_20
begin_hunk_21_@parse_atmark:bb.a
; Function Attrs: nofree norecurse nounwind sspstrong memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @whole_match_p(ptr %.72.val, ptr %.88.val, ptr noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef range(i32 0, 33) %2) unnamed_addr #26 {
bb.a:
  %i.a = ptrtoint ptr %.88.val to i64             ; 3 uses
  %i.b = ptrtoint ptr %.72.val to i64             ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, %1
  br i1 %i.d, label %bb.j, label %bb.b
end_hunk_21
begin_hunk_22_@whole_match_p:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.m = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.n = sub i64 %i.m, %i.b
  %i.o = icmp slt i64 %i.n, %1
  br i1 %i.o, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %.16.pre-phi = phi i64 [ %i.m, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %.1 = phi ptr [ %.0, %bb.f ], [ %.88.val, %bb.c ], [ %.88.val, %bb.b ]
  %i.p = sub nsw i64 0, %1
  %i.q = getelementptr i8, ptr %.1, i64 %i.p      ; 3 uses
  %i.r = tail call i32 @strncmp(ptr noundef %0, ptr noundef %i.q, i64 noundef %1) #37
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.j
end_hunk_22
begin_hunk_23_@whole_match_p:bb.a
  %.not35 = icmp ne i32 %2, 0
  %i.s = icmp ult ptr %.72.val, %i.q
  %or.cond = and i1 %.not35, %i.s
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.h
  %3 = add i64 %1, %i.b
  %4 = sub i64 %.16.pre-phi, %3
  %scevgep = getelementptr i8, ptr %.72.val, i64 %4 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.0263 = phi ptr [ %i.y, %bb.i ], [ %.72.val, %.lr.ph.preheader ] ; 3 uses
  %i.t = load i8, ptr %.0263, align 1, !tbaa !15  ; 2 uses
  %i.u = sext i8 %i.t to i32
  %i.v = icmp ne i8 %i.t, 32
end_hunk_23
begin_hunk_24_@whole_match_p:bb.a
  br i1 %narrow.i.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %.0263, i64 1      ; 2 uses
  %exitcond.not = icmp eq ptr %i.y, %scevgep
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !565

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.h
  %.127 = phi ptr [ %.72.val, %bb.h ], [ %.0263, %.lr.ph ], [ %scevgep, %bb.i ]
  %i.z = icmp eq ptr %.127, %i.q
  %i.aa = zext i1 %i.z to i32
  br label %bb.j
end_hunk_24
