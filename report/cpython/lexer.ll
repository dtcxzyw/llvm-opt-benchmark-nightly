inline.NumInlined: 86
inline.NumDeleted: 14
begin_hunk_0_@_PyTokenizer_Get:bb.a
  br label %bb.ep

bb.bb:                                            ; preds = %.backedge.i.i, %.lr.ph502.i.i
  %.2500.i.i = phi i32 [ 0, %.lr.ph502.i.i ], [ %.8630.i.i, %.backedge.i.i ] ; 15 uses
  %.0260499.i.i = phi i32 [ 0, %.lr.ph502.i.i ], [ %.2262629.i.i, %.backedge.i.i ]
  %.0263498.i.i = phi i32 [ undef, %.lr.ph502.i.i ], [ %.5268628.i.i, %.backedge.i.i ] ; 14 uses
  %.pre.i325.i.i = load ptr, ptr %i.i, align 8, !tbaa !11
  %.pre39.i326.i.i = load ptr, ptr %i.r, align 8, !tbaa !30
  br label %bb.bc
end_hunk_0
begin_hunk_1_@_PyTokenizer_Get:bb.a
  br label %tok_get.exit

bb.de:                                            ; preds = %bb.cf
  %.not294.i.i = icmp eq i32 %.2500.i.i, 0
  br i1 %.not294.i.i, label %.preheader.i, label %bb.df

bb.df:                                            ; preds = %bb.de
end_hunk_1
begin_hunk_2_@_PyTokenizer_Get:bb.a
  br label %.backedge.i.i

bb.en:                                            ; preds = %bb.ek, %tok_backup.exit376.i.i, %bb.ef
  %.5274.i.i = phi i32 [ %.0263498.i.i, %tok_backup.exit376.i.i ], [ %i.nj, %bb.ef ], [ %.0263498.i.i, %bb.ek ] ; 4 uses
  %.5.i.i = phi i32 [ 6, %tok_backup.exit376.i.i ], [ 1, %bb.ef ], [ 0, %bb.ek ]
  switch i8 %.0246.in.i.i, label %.backedge.i.i [
    i8 125, label %bb.eo
    i8 123, label %bb.eo
  ]

bb.eo:                                            ; preds = %bb.en, %bb.en
  switch i32 %.5.i.i, label %tok_get.exit [
    i32 0, label %.backedge.i.i
    i32 6, label %.backedge.i.i
  ]

.backedge.i.i:                                    ; preds = %bb.dq, %bb.dy, %bb.eo, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ec, %bb.ea, %bb.dw, %bb.du, %bb.ds, %bb.dp, %bb.cf, %bb.ce
  %.8630.i.i = phi i32 [ %.2500.i.i, %bb.eo ], [ %.2500.i.i, %bb.eo ], [ %.2500.i.i, %bb.ce ], [ %.2500.i.i, %bb.en ], [ %.2500.i.i, %bb.cf ], [ 1, %bb.el ], [ %.2500.i.i, %bb.em ], [ %.2500.i.i, %bb.dy ], [ %.2500.i.i, %bb.du ], [ %.2500.i.i, %bb.ds ], [ %.2500.i.i, %bb.dp ], [ %.2500.i.i, %bb.dw ], [ %.2500.i.i, %bb.ec ], [ %.2500.i.i, %bb.ea ], [ %.2500.i.i, %bb.dq ]
  %.2262629.i.i = phi i32 [ 0, %bb.eo ], [ 0, %bb.eo ], [ %i.hw, %bb.ce ], [ 0, %bb.en ], [ 0, %bb.cf ], [ 0, %bb.el ], [ 0, %bb.em ], [ 0, %bb.dy ], [ 0, %bb.du ], [ 0, %bb.ds ], [ 0, %bb.dp ], [ 0, %bb.dw ], [ 0, %bb.ec ], [ 0, %bb.ea ], [ 0, %bb.dq ] ; 4 uses
  %.5268628.i.i = phi i32 [ %.5274.i.i, %bb.eo ], [ %.5274.i.i, %bb.eo ], [ %.0263498.i.i, %bb.ce ], [ %.5274.i.i, %bb.en ], [ %.0263498.i.i, %bb.cf ], [ %.0263498.i.i, %bb.el ], [ %.0263498.i.i, %bb.em ], [ %.0263498.i.i, %bb.dy ], [ %.0263498.i.i, %bb.du ], [ %.0263498.i.i, %bb.ds ], [ %.0263498.i.i, %bb.dp ], [ %.0263498.i.i, %bb.dw ], [ %.0263498.i.i, %bb.ec ], [ %.0263498.i.i, %bb.ea ], [ %.0263498.i.i, %bb.dq ]
  %i.nu = load i32, ptr %i.ck, align 8, !tbaa !38
  %.not288.i.i = icmp eq i32 %.2262629.i.i, %i.nu
  br i1 %.not288.i.i, label %.preheader.i.i, label %bb.bb, !llvm.loop !48
end_hunk_2
begin_hunk_3_@_PyTokenizer_Get:bb.a
  br i1 %exitcond.not.i.i, label %._crit_edge505.i.i, label %bb.ep, !llvm.loop !51

tok_get.exit:                                     ; preds = %bb.eo, %bb.b, %bb.aa, %bb.ab, %bb.az, %bb.bk, %bb.bq, %bb.bt, %tok_backup.exit334.i.i, %bb.cb, %bb.cc, %bb.cj, %bb.db, %bb.dd, %bb.df, %bb.dn, %._crit_edge505.i.i
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.ce, %bb.aa ], [ %i.eg, %bb.az ], [ %i.fm, %bb.bk ], [ %i.ob, %._crit_edge505.i.i ], [ %i.cg, %bb.ab ], [ %i.kf, %bb.dd ], [ %i.jz, %bb.db ], [ %i.hq, %bb.cb ], [ %i.ls, %bb.dn ], [ %i.kl, %bb.df ], [ %i.if, %bb.cj ], [ %i.hs, %bb.cc ], [ %i.gx, %tok_backup.exit334.i.i ], [ %i.gi, %bb.bt ], [ %i.fx, %bb.bq ], [ %.5274.i.i, %bb.eo ]
  %i.oj = getelementptr i8, ptr %0, i64 2756
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !44
  %.not = icmp eq i32 %i.ok, 0
end_hunk_3
begin_hunk_4_@tok_get_normal_mode:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !52
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.b
  %.01081.ph = phi i32 [ 0, %bb.b ], [ %.01091.ph.be, %bb.l ] ; 6 uses
  %.01078.ph = phi i32 [ 0, %bb.b ], [ %.01088.ph.be, %bb.l ] ; 5 uses
  %.01075.ph = phi i32 [ 0, %bb.b ], [ %.01075, %bb.l ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.n
  %.01075 = phi i32 [ %i.av, %bb.n ], [ %.01075.ph, %.outer ] ; 6 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !11
  %.pre39.i = load ptr, ptr %i.e, align 8, !tbaa !30
  br label %bb.d
end_hunk_4
begin_hunk_5_@tok_get_normal_mode:bb.a
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !11
  %i.ap = load i8, ptr %i.y, align 1, !tbaa !34   ; 4 uses
  switch i8 %i.ap, label %.split1125 [
    i8 32, label %.backedge
    i8 9, label %bb.m
    i8 12, label %bb.l
    i8 92, label %bb.n
  ]

.backedge:                                        ; preds = %tok_nextc.exit
  %3 = add i32 %.01081.ph, 1
  %4 = add i32 %.01078.ph, 1
  br label %bb.l

bb.l:                                             ; preds = %tok_nextc.exit, %.backedge, %bb.m
  %.01091.ph.be = phi i32 [ %i.at, %bb.m ], [ %3, %.backedge ], [ 0, %tok_nextc.exit ]
  %.01088.ph.be = phi i32 [ %i.au, %bb.m ], [ %4, %.backedge ], [ 0, %tok_nextc.exit ]
  br label %.outer

bb.m:                                             ; preds = %tok_nextc.exit
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %i.ar = sdiv i32 %.01081.ph, %i.aq
  %i.as = add i32 %i.ar, 1
  %i.at = mul i32 %i.as, %i.aq
  %i.au = add i32 %.01078.ph, 1
  br label %bb.l

bb.n:                                             ; preds = %tok_nextc.exit
  %.not1183 = icmp eq i32 %.01075, 0
  %i.av = select i1 %.not1183, i32 %.01081.ph, i32 %.01075
  %i.aw = tail call fastcc i32 @tok_continuation_line(ptr noundef nonnull %0)
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.o, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
end_hunk_5
begin_hunk_6_@tok_get_normal_mode:bb.a

bb.t:                                             ; preds = %.split, %.split, %.split
  %i.be = icmp eq i8 %i.ap, 10
  %i.bf = icmp eq i32 %.01081.ph, 0
  %or.cond11 = and i1 %i.bf, %i.be
  %.pre2329 = load ptr, ptr %i.k, align 8, !tbaa !55
  %.not1175 = icmp eq ptr %.pre2329, null         ; 2 uses
end_hunk_6
begin_hunk_7_@tok_get_normal_mode:bb.a
  br i1 %i.bh, label %.split.thread, label %.thread

.split.thread:                                    ; preds = %tok_nextc.exit.thread, %.split, %bb.u, %bb.w
  %.21080.ph = phi i32 [ %.01081.ph, %.split ], [ 0, %bb.w ], [ 0, %bb.u ], [ %.01081.ph, %tok_nextc.exit.thread ]
  %.21077.ph = phi i32 [ %.01078.ph, %.split ], [ 0, %bb.w ], [ %.01078.ph, %bb.u ], [ %.01078.ph, %tok_nextc.exit.thread ]
  %i.bi = load i32, ptr %i.m, align 8, !tbaa !56
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.x, label %.thread

bb.x:                                             ; preds = %.split.thread
  %.not1178 = icmp eq i32 %.01075, 0              ; 2 uses
  %i.bk = select i1 %.not1178, i32 %.21080.ph, i32 %.01075 ; 5 uses
  %i.bl = select i1 %.not1178, i32 %.21077.ph, i32 %.01075 ; 4 uses
  %i.bm = load i32, ptr %i.o, align 4, !tbaa !57  ; 4 uses
  %i.bn = sext i32 %i.bm to i64                   ; 3 uses
  %i.bo = getelementptr [4 x i8], ptr %i.n, i64 %i.bn
end_hunk_7
begin_hunk_8_@tok_get_normal_mode:bb.a
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.21064 = phi ptr [ %i.dj, %bb.am ], [ null, %bb.al ]
  %.21051 = phi ptr [ %i.dc, %bb.am ], [ null, %bb.al ]
  %i.dk = add nsw i32 %i.de, -1
  store i32 %i.dk, ptr %i.p, align 4, !tbaa !58
  %i.dl = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 5, ptr noundef %.21064, ptr noundef %.21051) #8
  br label %.thread1499

bb.ao:                                            ; preds = %.thread
end_hunk_8
begin_hunk_9_@tok_get_normal_mode:bb.a
  br i1 %i.gi, label %.preheader1616.1, label %.critedge21.thread

.preheader1616.1:                                 ; preds = %.loopexit1617, %.critedge23.1
  %.21071.1 = phi ptr [ %i.gk, %.critedge23.1 ], [ %i.gh, %.loopexit1617 ] ; 11 uses
  %.11066.1.in = phi i32 [ %.11109.1, %.critedge23.1 ], [ %i.gd, %.loopexit1617 ] ; 2 uses
  %i.gj = load i8, ptr %.21071.1, align 1, !tbaa !34
  switch i8 %i.gj, label %.loopexit1617.1 [
    i8 32, label %.critedge23.1
    i8 9, label %.critedge23.1
  ]

.critedge23.1:                                    ; preds = %.preheader1616.1, %.preheader1616.1
  %.11109.1 = add i32 %.11066.1.in, 1
  %i.gk = getelementptr i8, ptr %.21071.1, i64 1
  br label %.preheader1616.1, !llvm.loop !63

.loopexit1617.1:                                  ; preds = %.preheader1616.1
  %i.gl = icmp ult ptr %.21071.1, %.pre.i1290
  br i1 %i.gl, label %bb.bu, label %.critedge21.thread

bb.bu:                                            ; preds = %.loopexit1617.1
  %i.gm = load i8, ptr %.21071.1, align 1, !tbaa !34
  %i.gn = icmp eq i8 %i.gm, 116
  br i1 %i.gn, label %.loopexit1617.2, label %.critedge21.thread

.loopexit1617.2:                                  ; preds = %bb.bu
  %i.go = getelementptr i8, ptr %.21071.1, i64 1  ; 4 uses
  %i.gp = icmp ult ptr %i.go, %.pre.i1290
  br i1 %i.gp, label %bb.bv, label %.critedge21.thread

end_hunk_9
begin_hunk_10_@tok_get_normal_mode:bb.a
  br i1 %i.gr, label %.loopexit1617.3, label %.critedge21.thread

.loopexit1617.3:                                  ; preds = %bb.bv
  %i.gs = getelementptr i8, ptr %.21071.1, i64 2  ; 4 uses
  %i.gt = icmp ult ptr %i.gs, %.pre.i1290
  br i1 %i.gt, label %bb.bw, label %.critedge21.thread

end_hunk_10
begin_hunk_11_@tok_get_normal_mode:bb.a
  br i1 %i.gv, label %.loopexit1617.4, label %.critedge21.thread

.loopexit1617.4:                                  ; preds = %bb.bw
  %i.gw = getelementptr i8, ptr %.21071.1, i64 3  ; 4 uses
  %i.gx = icmp ult ptr %i.gw, %.pre.i1290
  br i1 %i.gx, label %bb.bx, label %.critedge21.thread

end_hunk_11
begin_hunk_12_@tok_get_normal_mode:bb.a
  br i1 %i.gz, label %.loopexit1617.5, label %.critedge21.thread

.loopexit1617.5:                                  ; preds = %bb.bx
  %i.ha = getelementptr i8, ptr %.21071.1, i64 4  ; 4 uses
  %i.hb = icmp ult ptr %i.ha, %.pre.i1290
  br i1 %i.hb, label %bb.by, label %.critedge21.thread

end_hunk_12
begin_hunk_13_@tok_get_normal_mode:bb.a
  br i1 %i.hd, label %.loopexit1617.6, label %.critedge21.thread

.loopexit1617.6:                                  ; preds = %bb.by
  %i.he = getelementptr i8, ptr %.21071.1, i64 5  ; 3 uses
  %i.hf = icmp ult ptr %i.he, %.pre.i1290
  br i1 %i.hf, label %.preheader1616.preheader.7, label %.critedge21.thread

.preheader1616.preheader.7:                       ; preds = %.loopexit1617.6
  %i.hg = add i32 %.11066.1.in, 6
  br label %.preheader1616.7

.preheader1616.7:                                 ; preds = %.critedge23.7, %.preheader1616.preheader.7
  %.21071.7 = phi ptr [ %i.hi, %.critedge23.7 ], [ %i.he, %.preheader1616.preheader.7 ] ; 6 uses
  %.11066.7 = phi i32 [ %i.hj, %.critedge23.7 ], [ %i.hg, %.preheader1616.preheader.7 ] ; 3 uses
  %i.hh = load i8, ptr %.21071.7, align 1, !tbaa !34
  switch i8 %i.hh, label %.loopexit1617.7 [
    i8 32, label %.critedge23.7
    i8 9, label %.critedge23.7
  ]

.critedge23.7:                                    ; preds = %.preheader1616.7, %.preheader1616.7
  %i.hi = getelementptr i8, ptr %.21071.7, i64 1
  %i.hj = add i32 %.11066.7, 1
  br label %.preheader1616.7, !llvm.loop !63

.loopexit1617.7:                                  ; preds = %.preheader1616.7
  %i.hk = getelementptr i8, ptr %.21071.7, i64 6  ; 4 uses
  %i.hl = add i32 %.11066.7, 6
  %.not.i1298 = icmp eq i32 %.01020, -1
  br i1 %.not.i1298, label %tok_backup.exit1300, label %bb.bz

end_hunk_13
begin_hunk_14_@tok_get_normal_mode:bb.a
  br i1 %.not1189, label %.critedge1247, label %bb.ce

bb.ce:                                            ; preds = %tok_backup.exit1300
  %i.hu = load i32, ptr %.21071.7, align 1
  %i.hv = xor i32 %i.hu, 1869506409
  %i.hw = getelementptr i8, ptr %.21071.7, i64 4
  %i.hx = load i16, ptr %i.hw, align 1
  %i.hy = zext i16 %i.hx to i32
  %i.hz = xor i32 %i.hy, 25970
end_hunk_14
begin_hunk_15_@tok_get_normal_mode:bb.a

.critedge1247:                                    ; preds = %bb.ce, %tok_backup.exit1300, %bb.cg, %bb.ch
  %i.jg = load i32, ptr %i.i, align 4, !tbaa !28
  %i.jh = tail call i32 @_PyLexer_type_comment_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 57, i32 noundef %.11066.7, i32 noundef %i.jg, ptr noundef nonnull %.21071.7, ptr noundef nonnull %i.ht) #8
  br label %.thread1499

.critedge21.thread:                               ; preds = %bb.bs, %bb.bt, %.loopexit1617, %.loopexit1617.1, %bb.bu, %.loopexit1617.2, %bb.bv, %.loopexit1617.3, %bb.bw, %.loopexit1617.4, %bb.bx, %.loopexit1617.5, %bb.by, %.loopexit1617.6, %bb.br
  %.41099 = phi ptr [ %.01095, %bb.br ], [ %i.gc, %bb.bt ], [ %i.gc, %bb.bs ], [ %i.gh, %.loopexit1617 ], [ %i.he, %.loopexit1617.6 ], [ %.21071.1, %.loopexit1617.1 ], [ %.21071.1, %bb.bu ], [ %i.go, %.loopexit1617.2 ], [ %i.go, %bb.bv ], [ %i.gs, %.loopexit1617.3 ], [ %i.gs, %bb.bw ], [ %i.gw, %.loopexit1617.4 ], [ %i.gw, %bb.bx ], [ %i.ha, %.loopexit1617.5 ], [ %i.ha, %bb.by ]
  br i1 %.not1185, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %.critedge21.thread
end_hunk_15
begin_hunk_16_@tok_get_normal_mode:bb.a
  %.01114 = phi i32 [ %.11115, %tok_nextc.exit1319 ], [ 0, %.preheader3334 ] ; 5 uses
  %.01112 = phi i32 [ %.11113, %tok_nextc.exit1319 ], [ 0, %.preheader3334 ] ; 5 uses
  %.21022 = phi i32 [ %.0.i1315, %tok_nextc.exit1319 ], [ %.11021, %.preheader3334 ] ; 2 uses
  %.not1220 = icmp eq i32 %.01122, 0
  %i.kf = and i32 %.21022, -33                    ; 5 uses
  %or.cond33 = icmp eq i32 %i.kf, 66
  %or.cond = and i1 %.not1220, %or.cond33
end_hunk_16
begin_hunk_17_@tok_get_normal_mode:bb.a
  br i1 %or.cond1250, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.not1222 = icmp eq i32 %.01120.a, 0
  %or.cond37 = icmp eq i32 %i.kf, 82
  %or.cond1251 = and i1 %.not1222, %or.cond37
  br i1 %or.cond1251, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.not1223 = icmp eq i32 %.01114, 0
  %or.cond39 = icmp eq i32 %i.kf, 70
  %or.cond1252 = and i1 %.not1223, %or.cond39
  br i1 %or.cond1252, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.not1224 = icmp eq i32 %.01112, 0
  %or.cond41 = icmp eq i32 %i.kf, 84
  %or.cond1253 = and i1 %.not1224, %or.cond41
  br i1 %or.cond1253, label %bb.dk, label %.preheader

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df
  %.11123 = phi i32 [ %.01122, %bb.di ], [ %.01122, %bb.dh ], [ %.01122, %bb.dg ], [ 1, %bb.df ], [ %.01122, %bb.dj ] ; 2 uses
  %.11121 = phi i32 [ %.01120.a, %bb.di ], [ 1, %bb.dh ], [ %.01120.a, %bb.dg ], [ %.01120.a, %bb.df ], [ %.01120.a, %bb.dj ] ; 2 uses
  %.11119 = phi i32 [ %.01118, %bb.di ], [ %.01118, %bb.dh ], [ 1, %bb.dg ], [ %.01118, %bb.df ], [ %.01118, %bb.dj ] ; 2 uses
  %.11115 = phi i32 [ 1, %bb.di ], [ %.01114, %bb.dh ], [ %.01114, %bb.dg ], [ %.01114, %bb.df ], [ %.01114, %bb.dj ] ; 3 uses
  %.11113 = phi i32 [ %.01112, %bb.di ], [ %.01112, %bb.dh ], [ %.01112, %bb.dg ], [ %.01112, %bb.df ], [ 1, %bb.dj ] ; 3 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.ds, %bb.dk
end_hunk_17
begin_hunk_18_@tok_get_normal_mode:bb.a

bb.du:                                            ; preds = %tok_nextc.exit1319, %tok_nextc.exit1319
  %i.kz = icmp ne i32 %.11119, 0                  ; 4 uses
  %i.la = icmp ne i32 %.11123, 0                  ; 3 uses
  %or.cond.i = and i1 %i.la, %i.kz
  br i1 %or.cond.i, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.lb = icmp ne i32 %.11121, 0
  %or.cond3.i = and i1 %i.lb, %i.kz
  br i1 %or.cond3.i, label %bb.eb, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.lc = icmp ne i32 %.11115, 0                  ; 3 uses
  %or.cond5.i = and i1 %i.kz, %i.lc
  br i1 %or.cond5.i, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ld = icmp ne i32 %.11113, 0                  ; 3 uses
  %or.cond7.i = and i1 %i.kz, %i.ld
  br i1 %or.cond7.i, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %or.cond9.i = and i1 %i.la, %i.lc
  br i1 %or.cond9.i, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %or.cond11.i = and i1 %i.la, %i.ld
  br i1 %or.cond11.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %or.cond13.i = and i1 %i.lc, %i.ld
  br i1 %or.cond13.i, label %bb.eb, label %maybe_raise_syntax_error_for_string_prefixes.exit

bb.eb:                                            ; preds = %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea
end_hunk_18
begin_hunk_19_@tok_get_normal_mode:bb.a
  br label %.thread1499

maybe_raise_syntax_error_for_string_prefixes.exit: ; preds = %bb.ea
  %i.lq = or i32 %.11115, %.11113
  %or.cond45.not = icmp eq i32 %i.lq, 0
  br i1 %or.cond45.not, label %bb.mz, label %.thread1523

end_hunk_19
begin_hunk_20_@tok_get_normal_mode:bb.a
bb.ns:                                            ; preds = %tok_nextc.exit1437, %tok_nextc.exit1429
  %.pre39.i14422393 = phi ptr [ %.pre39.i14422394, %tok_nextc.exit1437 ], [ %.pre39.i1431, %tok_nextc.exit1429 ] ; 3 uses
  %i.ait = phi ptr [ %i.air, %tok_nextc.exit1437 ], [ %.pre.i1430, %tok_nextc.exit1429 ] ; 2 uses
  %.24 = phi i32 [ %.0.i1433, %tok_nextc.exit1437 ], [ %.0.i1425, %tok_nextc.exit1429 ] ; 3 uses
  %i.aiu = phi i1 [ %not., %tok_nextc.exit1437 ], [ true, %tok_nextc.exit1429 ]
  %i.aiv = phi i1 [ %i.ais, %tok_nextc.exit1437 ], [ false, %tok_nextc.exit1429 ]
  %.01107 = phi i32 [ %.1264, %tok_nextc.exit1437 ], [ 1, %tok_nextc.exit1429 ] ; 3 uses
  %.01104 = phi i32 [ %.1265, %tok_nextc.exit1437 ], [ 0, %tok_nextc.exit1429 ] ; 2 uses
  %.not1237 = icmp eq i32 %.24, %.23
  %.not.i1438 = icmp eq i32 %.24, -1
  %or.cond1607 = or i1 %.not1237, %.not.i1438
end_hunk_20
