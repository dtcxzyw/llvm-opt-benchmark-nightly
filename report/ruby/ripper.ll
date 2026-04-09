inline.NumInlined: 2066
inline.NumDeleted: 252
begin_hunk_0_@ripper_yyparse:bb.a
  br i1 %.not6492, label %bb.sg, label %bb.ajq

bb.sg:                                            ; preds = %bb.sf
  %i.duw = load ptr, ptr %i.k, align 8, !tbaa !41 ; 2 uses
  %i.dux = getelementptr inbounds i8, ptr %i.duw, i64 -2 ; 3 uses
  %i.duy = load ptr, ptr %i.n, align 8, !tbaa !44 ; 3 uses
  %i.duz = getelementptr inbounds nuw i8, ptr %i.dut, i64 12
  %i.dva = load i32, ptr %i.duz, align 4, !tbaa !137
  %i.dvb = sext i32 %i.dva to i64
  %i.dvc = getelementptr inbounds i8, ptr %i.duy, i64 %i.dvb
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dvc, i64 4 ; 3 uses
  %i.dve = icmp ult ptr %i.dvd, %i.dux
  br i1 %i.dve, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.sg
  %24 = ptrtoint ptr %i.duy to i64
  %25 = ptrtoint ptr %i.duw to i64
  %scevgep = getelementptr i8, ptr %i.duy, i64 -2
  %26 = sub i64 %25, %24
  %scevgep7704 = getelementptr i8, ptr %scevgep, i64 %26
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.sh
  %.063567663 = phi ptr [ %i.dvk, %bb.sh ], [ %i.dvd, %.lr.ph.preheader ] ; 3 uses
  %i.dvf = load i8, ptr %.063567663, align 1, !tbaa !10 ; 2 uses
  %i.dvg = sext i8 %i.dvf to i32
  %i.dvh = icmp ne i8 %i.dvf, 32
end_hunk_0
begin_hunk_1_@ripper_yyparse:bb.a
  br i1 %narrow.i.not, label %.critedge, label %bb.sh

bb.sh:                                            ; preds = %.lr.ph
  %i.dvk = getelementptr inbounds nuw i8, ptr %.063567663, i64 1 ; 2 uses
  %i.dvl = icmp ult ptr %i.dvk, %i.dux
  br i1 %i.dvl, label %.lr.ph, label %.critedge, !llvm.loop !138

.critedge:                                        ; preds = %.lr.ph, %bb.sh, %bb.sg
  %.06356.lcssa = phi ptr [ %i.dvd, %bb.sg ], [ %scevgep7704, %bb.sh ], [ %.063567663, %.lr.ph ]
  %i.dvm = icmp eq ptr %.06356.lcssa, %i.dux
  br i1 %i.dvm, label %bb.si, label %bb.ajq

end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !504  ; 5 uses
  %i.x = zext i32 %i.w to i64                     ; 13 uses
  %4 = sub nsw i64 0, %i.x                        ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %i.z = load i8, ptr %i.y, align 1, !tbaa !505
  %i.aa = zext i8 %i.z to i32                     ; 7 uses
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  %i.fm = phi ptr [ %i.ak, %bb.g ], [ %i.ar, %bb.h ], [ %i.ak, %bb.f ], [ %i.ak, %bb.e ]
  %.011.i.ph.i = phi i32 [ 13, %bb.g ], [ 10, %bb.h ], [ 13, %bb.f ], [ %i.am, %bb.e ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !44 ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fq = icmp eq ptr %i.fm, %i.fp
  br i1 %i.fq, label %bb.z, label %whole_match_p.exit.thread.i
end_hunk_3
begin_hunk_4_@parser_yylex:bb.a

bb.ab:                                            ; preds = %bb.z
  %.val208.i = load ptr, ptr %i.ac, align 8, !tbaa !413 ; 6 uses
  %i.fu = ptrtoint ptr %.val208.i to i64          ; 3 uses
  %i.fv = ptrtoint ptr %i.fo to i64               ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = icmp slt i64 %i.fw, %i.x
  br i1 %i.fx, label %whole_match_p.exit.thread.i, label %bb.ac
end_hunk_4
begin_hunk_5_@parser_yylex:bb.a

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i225.i = phi ptr [ %i.fz, %bb.ae ], [ %spec.select.i.i, %bb.af ] ; 2 uses
  %i.gg = ptrtoint ptr %.0.i225.i to i64          ; 2 uses
  %i.gh = sub i64 %i.gg, %i.fv
  %i.gi = icmp slt i64 %i.gh, %i.x
  br i1 %i.gi, label %whole_match_p.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %.16.pre-phi.i.i = phi i64 [ %i.gg, %bb.ag ], [ %i.fu, %bb.ad ], [ %i.fu, %bb.ac ]
  %.1.i.i = phi ptr [ %.0.i225.i, %bb.ag ], [ %.val208.i, %bb.ad ], [ %.val208.i, %bb.ac ]
  %i.gj = getelementptr inbounds i8, ptr %.1.i.i, i64 %4 ; 3 uses
  %i.gk = tail call i32 @strncmp(ptr noundef readonly %i.u, ptr noundef %i.gj, i64 noundef range(i64 0, 4294967296) %i.x) #33
  %.not.i223.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i223.i, label %bb.ai, label %whole_match_p.exit.thread.i
end_hunk_5
begin_hunk_6_@parser_yylex:bb.a
  %.not35.i.i = icmp ne i32 %i.ab, 0
  %i.gl = icmp ult ptr %i.fo, %i.gj
  %or.cond.i.i = and i1 %.not35.i.i, %i.gl
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i, label %whole_match_p.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ai
  %5 = add i64 %i.fv, %i.x
  %6 = sub i64 %.16.pre-phi.i.i, %5
  %scevgep.i.i = getelementptr i8, ptr %i.fo, i64 %6 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.preheader.i.i
  %.0263.i.i = phi ptr [ %i.gr, %bb.aj ], [ %i.fo, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.gm = load i8, ptr %.0263.i.i, align 1, !tbaa !10 ; 2 uses
  %i.gn = sext i8 %i.gm to i32
  %i.go = icmp ne i8 %i.gm, 32
end_hunk_6
begin_hunk_7_@parser_yylex:bb.a
  br i1 %narrow.i.not.i.i, label %whole_match_p.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.0263.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.gr, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %whole_match_p.exit.i, label %.lr.ph.i.i, !llvm.loop !511

whole_match_p.exit.i:                             ; preds = %bb.aj, %.lr.ph.i.i, %bb.ai
  %.127.i.i = phi ptr [ %i.fo, %bb.ai ], [ %.0263.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %bb.aj ]
  %.not.i = icmp eq ptr %.127.i.i, %i.gj
  br i1 %.not.i, label %bb.ak, label %whole_match_p.exit.thread.i

end_hunk_7
begin_hunk_8_@parser_yylex:bb.a
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.not35.i258.i = icmp ne i32 %i.ab, 0
  %.pre360.i = load ptr, ptr %i.ac, align 8, !tbaa !413
  br label %.backedge.i
end_hunk_8
begin_hunk_9_@parser_yylex:bb.a
  br label %nextc0.exit.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.val205.i = load ptr, ptr %i.fn, align 8, !tbaa !44 ; 7 uses
  %i.li = ptrtoint ptr %.val206.pre.i to i64      ; 3 uses
  %i.lj = ptrtoint ptr %.val205.i to i64          ; 3 uses
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = icmp slt i64 %i.lk, %i.x
  br i1 %i.ll, label %.backedge.i.backedge, label %bb.bp
end_hunk_9
begin_hunk_10_@parser_yylex:bb.a

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0.i265.i = phi ptr [ %i.ln, %bb.br ], [ %spec.select.i266.i, %bb.bs ] ; 2 uses
  %i.lu = ptrtoint ptr %.0.i265.i to i64          ; 2 uses
  %i.lv = sub i64 %i.lu, %i.lj
  %i.lw = icmp slt i64 %i.lv, %i.x
  br i1 %i.lw, label %.backedge.i.backedge, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq, %bb.bp
  %.16.pre-phi.i255.i = phi i64 [ %i.lu, %bb.bt ], [ %i.li, %bb.bq ], [ %i.li, %bb.bp ]
  %.1.i255.i = phi ptr [ %.0.i265.i, %bb.bt ], [ %.val206.pre.i, %bb.bq ], [ %.val206.pre.i, %bb.bp ]
  %i.lx = getelementptr inbounds i8, ptr %.1.i255.i, i64 %4 ; 3 uses
  %i.ly = tail call i32 @strncmp(ptr noundef readonly %i.u, ptr noundef %i.lx, i64 noundef range(i64 0, 4294967296) %i.x) #33
  %.not.i256.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i256.i, label %bb.bv, label %.backedge.i.backedge
end_hunk_10
begin_hunk_11_@parser_yylex:bb.a
bb.bv:                                            ; preds = %bb.bu
  %i.lz = icmp ult ptr %.val205.i, %i.lx
  %or.cond.i259.i = and i1 %.not35.i258.i, %i.lz
  br i1 %or.cond.i259.i, label %.lr.ph.preheader.i263.i, label %.critedge.i260.i

.lr.ph.preheader.i263.i:                          ; preds = %bb.bv
  %7 = add i64 %i.lj, %i.x
  %8 = sub i64 %.16.pre-phi.i255.i, %7
  %scevgep.i264.i = getelementptr i8, ptr %.val205.i, i64 %8 ; 2 uses
  br label %.lr.ph.i262.i

.lr.ph.i262.i:                                    ; preds = %bb.bw, %.lr.ph.preheader.i263.i
  %.0263.i263.i = phi ptr [ %i.mf, %bb.bw ], [ %.val205.i, %.lr.ph.preheader.i263.i ] ; 3 uses
  %i.ma = load i8, ptr %.0263.i263.i, align 1, !tbaa !10 ; 2 uses
  %i.mb = sext i8 %i.ma to i32
  %i.mc = icmp ne i8 %i.ma, 32
end_hunk_11
begin_hunk_12_@parser_yylex:bb.a
  br i1 %narrow.i.not.i264.i, label %.critedge.i260.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i262.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.0263.i263.i, i64 1 ; 2 uses
  %exitcond.not.i268.i = icmp eq ptr %i.mf, %scevgep.i264.i
  br i1 %exitcond.not.i268.i, label %.critedge.i260.i, label %.lr.ph.i262.i, !llvm.loop !511

.critedge.i260.i:                                 ; preds = %bb.bw, %.lr.ph.i262.i, %bb.bv
  %.127.i261.i = phi ptr [ %.val205.i, %bb.bv ], [ %.0263.i263.i, %.lr.ph.i262.i ], [ %scevgep.i264.i, %bb.bw ]
  %.not349.i = icmp eq ptr %.127.i261.i, %i.lx
  br i1 %.not349.i, label %.loopexit333.i, label %.backedge.i.backedge

end_hunk_12
begin_hunk_13_@parser_yylex:bb.a
  %.1173.i = phi i1 [ false, %newtok.exit.i ], [ false, %bb.cm ], [ false, %bb.cn ], [ false, %bb.cl ], [ false, %bb.ck ], [ true, %.critedge.i271.i ]
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.not35.i303.i = icmp ne i32 %i.ab, 0
  br i1 %.1173.i, label %pushback.exit.i, label %.backedge335.i

end_hunk_13
begin_hunk_14_@parser_yylex:bb.a
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.val.i = load ptr, ptr %i.fn, align 8, !tbaa !44 ; 7 uses
  %i.rn = ptrtoint ptr %.val204.pre.i to i64      ; 3 uses
  %i.ro = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = icmp slt i64 %i.rp, %i.x
  br i1 %i.rq, label %.backedge335.i, label %bb.dk
end_hunk_14
begin_hunk_15_@parser_yylex:bb.a

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.0.i310.i = phi ptr [ %i.rs, %bb.dm ], [ %spec.select.i311.i, %bb.dn ] ; 2 uses
  %i.rz = ptrtoint ptr %.0.i310.i to i64          ; 2 uses
  %i.sa = sub i64 %i.rz, %i.ro
  %i.sb = icmp slt i64 %i.sa, %i.x
  br i1 %i.sb, label %.backedge335.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl, %bb.dk
  %.16.pre-phi.i304.i = phi i64 [ %i.rz, %bb.do ], [ %i.rn, %bb.dl ], [ %i.rn, %bb.dk ]
  %.1.i300.i = phi ptr [ %.0.i310.i, %bb.do ], [ %.val204.pre.i, %bb.dl ], [ %.val204.pre.i, %bb.dk ]
  %i.sc = getelementptr inbounds i8, ptr %.1.i300.i, i64 %4 ; 3 uses
  %i.sd = tail call i32 @strncmp(ptr noundef readonly %i.u, ptr noundef %i.sc, i64 noundef range(i64 0, 4294967296) %i.x) #33
  %.not.i301.i = icmp eq i32 %i.sd, 0
  br i1 %.not.i301.i, label %bb.dq, label %.backedge335.i
end_hunk_15
begin_hunk_16_@parser_yylex:bb.a
bb.dq:                                            ; preds = %bb.dp
  %i.se = icmp ult ptr %.val.i, %i.sc
  %or.cond.i304.i = and i1 %.not35.i303.i, %i.se
  br i1 %or.cond.i304.i, label %.lr.ph.preheader.i312.i, label %.critedge.i305.i

.lr.ph.preheader.i312.i:                          ; preds = %bb.dq
  %9 = add i64 %i.ro, %i.x
  %10 = sub i64 %.16.pre-phi.i304.i, %9
  %scevgep.i313.i = getelementptr i8, ptr %.val.i, i64 %10 ; 2 uses
  br label %.lr.ph.i307.i

.lr.ph.i307.i:                                    ; preds = %bb.dr, %.lr.ph.preheader.i312.i
  %.0263.i308.i = phi ptr [ %i.sk, %bb.dr ], [ %.val.i, %.lr.ph.preheader.i312.i ] ; 3 uses
  %i.sf = load i8, ptr %.0263.i308.i, align 1, !tbaa !10 ; 2 uses
  %i.sg = sext i8 %i.sf to i32
  %i.sh = icmp ne i8 %i.sf, 32
end_hunk_16
begin_hunk_17_@parser_yylex:bb.a
  br i1 %narrow.i.not.i309.i, label %.critedge.i305.i, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i307.i
  %i.sk = getelementptr inbounds nuw i8, ptr %.0263.i308.i, i64 1 ; 2 uses
  %exitcond.not.i317.i = icmp eq ptr %i.sk, %scevgep.i313.i
  br i1 %exitcond.not.i317.i, label %.critedge.i305.i, label %.lr.ph.i307.i, !llvm.loop !511

.critedge.i305.i:                                 ; preds = %bb.dr, %.lr.ph.i307.i, %bb.dq
  %.127.i306.i = phi ptr [ %.val.i, %bb.dq ], [ %.0263.i308.i, %.lr.ph.i307.i ], [ %scevgep.i313.i, %bb.dr ]
  %.not348.i = icmp eq ptr %.127.i306.i, %i.sc
  br i1 %.not348.i, label %bb.ds, label %.backedge335.i

end_hunk_17
begin_hunk_18_@parser_yylex:bb.a

bb.jh:                                            ; preds = %comment_at_top.exit
  %i.auz = load ptr, ptr %i.afm, align 8, !tbaa !48 ; 2 uses
  %i.ava = load ptr, ptr %i.afn, align 8, !tbaa !413 ; 4 uses
  %i.avb = ptrtoint ptr %i.ava to i64             ; 3 uses
  %i.avc = ptrtoint ptr %i.auz to i64
  %i.avd = sub i64 %i.avb, %i.avc
end_hunk_18
begin_hunk_19_@parser_yylex:bb.a
  %scevgep.i = getelementptr i8, ptr %.2.i9103070, i64 %i.avb
  %.2.lcssa7375.i = ptrtoint ptr %.2.i9103070 to i64
  %i.awf = sub i64 0, %.2.lcssa7375.i
  %scevgep76.i = getelementptr i8, ptr %scevgep.i, i64 %i.awf ; 2 uses
  br label %bb.jt

bb.js:                                            ; preds = %bb.jr
end_hunk_19
begin_hunk_20_@parser_yylex:bb.a

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.jt
  %i.awo = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %exitcond.not.i913 = icmp eq ptr %i.awo, %scevgep76.i
  br i1 %exitcond.not.i913, label %.critedge.i913, label %bb.jt, !llvm.loop !543

.critedge.i913:                                   ; preds = %bb.jv, %bb.ju
  %.5.i914 = phi ptr [ %scevgep76.i, %bb.jv ], [ %.4.i, %bb.ju ] ; 2 uses
end_hunk_20
begin_hunk_21_@parse_atmark:bb.a
; Function Attrs: nofree norecurse nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @whole_match_p(ptr %.72.val, ptr %.88.val, ptr noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef range(i32 0, 33) %2) unnamed_addr #21 {
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
  %i.q = getelementptr inbounds i8, ptr %.1, i64 %i.p ; 3 uses
  %i.r = tail call i32 @strncmp(ptr noundef %0, ptr noundef %i.q, i64 noundef %1) #33
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
  %i.t = load i8, ptr %.0263, align 1, !tbaa !10  ; 2 uses
  %i.u = sext i8 %i.t to i32
  %i.v = icmp ne i8 %i.t, 32
end_hunk_23
begin_hunk_24_@whole_match_p:bb.a
  br i1 %narrow.i.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.0263, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.y, %scevgep
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !511

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.h
  %.127 = phi ptr [ %.72.val, %bb.h ], [ %.0263, %.lr.ph ], [ %scevgep, %bb.i ]
  %i.z = icmp eq ptr %.127, %i.q
  %i.aa = zext i1 %i.z to i32
  br label %bb.j
end_hunk_24
