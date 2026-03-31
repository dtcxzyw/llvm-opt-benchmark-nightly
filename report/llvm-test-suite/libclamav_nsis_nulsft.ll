begin_hunk_0
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40260
  br label %bb.k

bb.k:                                             ; preds = %select.unfold, %bb.j
  %i.af = load i32, ptr %i.q, align 8, !tbaa !35
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.m, label %bb.l
end_hunk_0
begin_hunk_1
bb.ak:                                            ; preds = %bb.aj
  %i.eb = load i8, ptr %i.y, align 1, !tbaa !42
  %.not33 = icmp eq i8 %i.eb, 0
  br i1 %.not33, label %select.unfold, label %.thread.thread.loopexit62

bb.al:                                            ; preds = %cli_nsis_unpack.exit
  %i.ec = load i32, ptr %i.q, align 8, !tbaa !35
end_hunk_1
begin_hunk_2
  %i.el = call i32 @close(i32 noundef %i.ek) #9   ; 0 uses
  %i.em = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !34
  %.not31 = icmp eq i8 %i.em, 0
  br i1 %.not31, label %bb.ap, label %select.unfold

bb.ap:                                            ; preds = %bb.ao
  %i.en = call i32 @unlink(ptr noundef nonnull %i.ae) #9 ; 0 uses
  br label %select.unfold

select.unfold:                                    ; preds = %bb.ak, %bb.ap, %bb.ao
  %.1 = phi i32 [ %.0, %bb.ao ], [ %.0, %bb.ap ], [ 0, %bb.ak ] ; 2 uses
  %5 = icmp eq i32 %.1, 0
  br i1 %5, label %bb.k, label %select.unfold.a, !llvm.loop !50

select.unfold.a:                                  ; preds = %cli_nsis_unpack.exit, %select.unfold
  %.138 = phi i32 [ %.1, %select.unfold ], [ %i.dx, %cli_nsis_unpack.exit ]
  %.1.fr = freeze i32 %.138                       ; 2 uses
  %6 = icmp eq i32 %.1.fr, 2
  br i1 %6, label %.thread.thread.loopexit62, label %.thread.thread

.thread.thread.loopexit62:                        ; preds = %bb.ak, %select.unfold.a
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread.thread41, %select.unfold.a, %.thread.thread.loopexit62
  %7 = phi i32 [ 0, %.thread.thread.loopexit62 ], [ %.1.fr, %select.unfold.a ], [ 1, %.thread.thread41 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 40258 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 2, !tbaa !51
  %.not.i.i35 = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i35, label %nsis_shutdown.exit.i, label %bb.aq

end_hunk_2
begin_hunk_3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  store i8 0, ptr %i.eo, align 2, !tbaa !51
  br label %nsis_shutdown.exit.i

nsis_shutdown.exit.i:                             ; preds = %bb.at, %.thread.thread
end_hunk_3
begin_hunk_4

bb.au:                                            ; preds = %nsis_shutdown.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 40248
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52 ; 2 uses
  %.not4.i = icmp eq ptr %i.ew, null
  br i1 %.not4.i, label %cli_nsis_free.exit, label %bb.av

end_hunk_4
begin_hunk_5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.e, %bb.ax, %bb.g, %bb.d
  %.019 = phi i32 [ -100, %bb.d ], [ -118, %bb.g ], [ %7, %bb.ax ], [ -118, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.019
}
end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40259 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !53
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_6
begin_hunk_7

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54   ; 3 uses
  %.not165 = icmp eq i32 %i.h, 0
  br i1 %.not165, label %bb.g, label %bb.e

end_hunk_7
begin_hunk_8

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !55 ; 3 uses
  %.not172 = icmp ne i64 %i.as, 0
  %i.at = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.au = icmp ult i64 %i.as, %i.at
end_hunk_8
begin_hunk_9
bb.ag:                                            ; preds = %bb.ae
  %i.by = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bc, ptr %i.ca, align 8, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  store ptr %i.b, ptr %i.cb, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 8192, ptr %i.cc, align 8, !tbaa !59
  %i.cd = ptrtoint ptr %i.b to i64                ; 3 uses
  br label %bb.ah

end_hunk_9
begin_hunk_10
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !58
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.cd
  %i.ci = trunc i64 %i.ch to i32                  ; 3 uses
end_hunk_10
begin_hunk_11
  br label %.critedge.thread213

bb.al:                                            ; preds = %bb.aj
  store ptr %i.b, ptr %i.cb, align 8, !tbaa !58
  store i32 8192, ptr %i.cc, align 8, !tbaa !59
  %i.cq = load ptr, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %.not180 = icmp eq ptr %i.cq, null
  br i1 %.not180, label %.backedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !55 ; 3 uses
  %.not181 = icmp ne i64 %i.cs, 0
  %i.ct = icmp ult i64 %i.cs, %i.cl
  %or.cond217 = and i1 %.not181, %i.ct
end_hunk_11
begin_hunk_12

.backedge:                                        ; preds = %bb.ao, %bb.al, %bb.am
  %.0132.be = phi i32 [ %i.cw, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.al ]
  br label %bb.ah, !llvm.loop !60

.thread:                                          ; preds = %bb.ao
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21) #9
end_hunk_12
begin_hunk_13

.loopexit:                                        ; preds = %bb.ah, %.thread
  %i.da = load i32, ptr %i.v, align 4, !tbaa !49
  %i.db = load ptr, ptr %i.cb, align 8, !tbaa !58
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.cd
  %i.de = trunc i64 %i.dd to i32
  %i.df = call i32 @cli_writen(i32 noundef %i.da, ptr noundef nonnull %i.b, i32 noundef %i.de) #9
  %i.dg = sext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.cb, align 8, !tbaa !58
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cd
  %.not178 = icmp eq i64 %i.dj, %i.dg
end_hunk_13
begin_hunk_14

bb.at:                                            ; preds = %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40248 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !52
  %.not183 = icmp eq ptr %i.dn, null
  br i1 %.not183, label %bb.au, label %._crit_edge

._crit_edge:                                      ; preds = %bb.at
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %bb.bd

bb.au:                                            ; preds = %bb.at
end_hunk_14
begin_hunk_15

bb.ax:                                            ; preds = %bb.au
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 8, ptr %i.dt, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i64 0, ptr %i.du, align 8, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1676
  store i32 0, ptr %i.dv, align 4, !tbaa !63
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 7448 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40232
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40224
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !65
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40216 ; 2 uses
  store ptr %i.dz, ptr %i.dz, align 8, !tbaa !66
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ax, %bb.aw, %bb.av
  %.sink.i = phi i8 [ 0, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.av ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40258
  store i8 %.sink.i, ptr %i.ea, align 2, !tbaa !51
  br label %bb.ay

nsis_init.exit:                                   ; preds = %bb.av
end_hunk_15
begin_hunk_16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !37
  %i.ef = zext i32 %i.ee to i64
  %i.eg = tail call ptr @cli_malloc(i64 noundef %i.ef) #9 ; 3 uses
  store ptr %i.eg, ptr %i.dm, align 8, !tbaa !52
  %.not185 = icmp eq ptr %i.eg, null
  br i1 %.not185, label %bb.az, label %bb.ba

end_hunk_16
begin_hunk_17
  br label %.critedge.thread213

bb.bc:                                            ; preds = %bb.ba
  %i.er = load ptr, ptr %i.dm, align 8, !tbaa !52
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.er, ptr %i.et, align 8, !tbaa !57
  store i32 %i.en, ptr %i.es, align 8, !tbaa !56
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge, %bb.bc
end_hunk_17
begin_hunk_18

bb.bf:                                            ; preds = %bb.bd
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 27 uses
  store ptr %i.b, ptr %i.ey, align 8, !tbaa !58
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 4, ptr %i.ez, align 8, !tbaa !59
  %i.fa = ptrtoint ptr %i.b to i64                ; 24 uses
  %i.fb = call fastcc i32 @nsis_decomp(ptr noundef %0)
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.bg, label %.loopexit220

bb.bg:                                            ; preds = %bb.bf
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, %i.fa
  %i.fg = icmp eq i64 %i.ff, 4
end_hunk_18
begin_hunk_19
  br i1 %i.fi, label %bb.bi, label %.loopexit220

bb.bi:                                            ; preds = %bb.bh
  %i.fj = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = sub i64 %i.fk, %i.fa
  %i.fm = icmp eq i64 %i.fl, 4
end_hunk_19
begin_hunk_20
  br i1 %i.fo, label %bb.bk, label %.loopexit220

bb.bk:                                            ; preds = %bb.bj
  %i.fp = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.fq, %i.fa
  %i.fs = icmp eq i64 %i.fr, 4
end_hunk_20
begin_hunk_21
  br i1 %i.fu, label %bb.bm, label %.loopexit220

bb.bm:                                            ; preds = %bb.bl
  %i.fv = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.fa
  %i.fy = icmp eq i64 %i.fx, 4
end_hunk_21
begin_hunk_22
  br i1 %i.ga, label %bb.bo, label %.loopexit220

bb.bo:                                            ; preds = %bb.bn
  %i.gb = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.fa
  %i.ge = icmp eq i64 %i.gd, 4
end_hunk_22
begin_hunk_23
  br i1 %i.gg, label %bb.bq, label %.loopexit220

bb.bq:                                            ; preds = %bb.bp
  %i.gh = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.fa
  %i.gk = icmp eq i64 %i.gj, 4
end_hunk_23
begin_hunk_24
  br i1 %i.gm, label %bb.bs, label %.loopexit220

bb.bs:                                            ; preds = %bb.br
  %i.gn = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = sub i64 %i.go, %i.fa
  %i.gq = icmp eq i64 %i.gp, 4
end_hunk_24
begin_hunk_25
  br i1 %i.gs, label %bb.bu, label %.loopexit220

bb.bu:                                            ; preds = %bb.bt
  %i.gt = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fa
  %i.gw = icmp eq i64 %i.gv, 4
end_hunk_25
begin_hunk_26
  br i1 %i.gy, label %bb.bw, label %.loopexit220

bb.bw:                                            ; preds = %bb.bv
  %i.gz = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.ha, %i.fa
  %i.hc = icmp eq i64 %i.hb, 4
end_hunk_26
begin_hunk_27
  br i1 %i.he, label %bb.by, label %.loopexit220

bb.by:                                            ; preds = %bb.bx
  %i.hf = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.fa
  %i.hi = icmp eq i64 %i.hh, 4
end_hunk_27
begin_hunk_28
  br i1 %i.hk, label %bb.ca, label %.loopexit220

bb.ca:                                            ; preds = %bb.bz
  %i.hl = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.fa
  %i.ho = icmp eq i64 %i.hn, 4
end_hunk_28
begin_hunk_29
  br i1 %i.hq, label %bb.cc, label %.loopexit220

bb.cc:                                            ; preds = %bb.cb
  %i.hr = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = sub i64 %i.hs, %i.fa
  %i.hu = icmp eq i64 %i.ht, 4
end_hunk_29
begin_hunk_30
  br i1 %i.hw, label %bb.ce, label %.loopexit220

bb.ce:                                            ; preds = %bb.cd
  %i.hx = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = sub i64 %i.hy, %i.fa
  %i.ia = icmp eq i64 %i.hz, 4
end_hunk_30
begin_hunk_31
  br i1 %i.ic, label %bb.cg, label %.loopexit220

bb.cg:                                            ; preds = %bb.cf
  %i.id = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = sub i64 %i.ie, %i.fa
  %i.ig = icmp eq i64 %i.if, 4
end_hunk_31
begin_hunk_32
  br i1 %i.ii, label %bb.ci, label %.loopexit220

bb.ci:                                            ; preds = %bb.ch
  %i.ij = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = sub i64 %i.ik, %i.fa
  %i.im = icmp eq i64 %i.il, 4
end_hunk_32
begin_hunk_33
  br i1 %i.io, label %bb.ck, label %.loopexit220

bb.ck:                                            ; preds = %bb.cj
  %i.ip = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = sub i64 %i.iq, %i.fa
  %i.is = icmp eq i64 %i.ir, 4
end_hunk_33
begin_hunk_34
  br i1 %i.iu, label %bb.cm, label %.loopexit220

bb.cm:                                            ; preds = %bb.cl
  %i.iv = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = sub i64 %i.iw, %i.fa
  %i.iy = icmp eq i64 %i.ix, 4
end_hunk_34
begin_hunk_35
  br i1 %i.ja, label %bb.co, label %.loopexit220

bb.co:                                            ; preds = %bb.cn
  %i.jb = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.fa
  %i.je = icmp eq i64 %i.jd, 4
end_hunk_35
begin_hunk_36
  br i1 %i.jg, label %bb.cq, label %.loopexit220

bb.cq:                                            ; preds = %bb.cp
  %i.jh = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = sub i64 %i.ji, %i.fa
  %i.jk = icmp eq i64 %i.jj, 4
end_hunk_36
begin_hunk_37
  br i1 %i.jm, label %bb.cs, label %.loopexit220

bb.cs:                                            ; preds = %bb.cr
  %i.jn = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.jo, %i.fa
  %i.jq = icmp eq i64 %i.jp, 4
end_hunk_37
begin_hunk_38
  br i1 %i.js, label %bb.cu, label %.loopexit220

bb.cu:                                            ; preds = %bb.ct
  %i.jt = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = sub i64 %i.ju, %i.fa
  %i.jw = icmp eq i64 %i.jv, 4
end_hunk_38
begin_hunk_39

bb.cw:                                            ; preds = %.critedge197
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !55 ; 3 uses
  %.not189 = icmp ne i64 %i.kb, 0
  %i.kc = zext i32 %.val to i64
  %i.kd = icmp ult i64 %i.kb, %i.kc
end_hunk_39
begin_hunk_40
  br label %.critedge.thread213

bb.cy:                                            ; preds = %bb.cw, %.critedge197
  store ptr %i.b, ptr %i.ey, align 8, !tbaa !58
  %i.kg = call i32 @llvm.umin.i32(i32 %.val, i32 8192)
  store i32 %i.kg, ptr %i.ez, align 8, !tbaa !59
  %.not190224 = icmp eq i32 %.val, 0
  br i1 %.not190224, label %.critedge.thread213, label %.lr.ph

end_hunk_40
begin_hunk_41
  ]

bb.cz:                                            ; preds = %.lr.ph
  %i.ki = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = sub i64 %i.kj, %i.fa                    ; 2 uses
  %i.kl = trunc i64 %i.kk to i32                  ; 3 uses
end_hunk_41
begin_hunk_42
  %i.ks = load i32, ptr %i.a, align 4, !tbaa !4
  %i.kt = sub i32 %i.ks, %i.kl                    ; 3 uses
  store i32 %i.kt, ptr %i.a, align 4, !tbaa !4
  store ptr %i.b, ptr %i.ey, align 8, !tbaa !58
  %i.ku = call i32 @llvm.umin.i32(i32 %i.kt, i32 8192)
  store i32 %i.ku, ptr %i.ez, align 8, !tbaa !59
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cz
end_hunk_42
begin_hunk_43

.loopexit219:                                     ; preds = %.lr.ph, %.critedge.thread
  %i.ky = load i32, ptr %i.v, align 4, !tbaa !49
  %i.kz = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = sub i64 %i.la, %i.fa
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = call i32 @cli_writen(i32 noundef %i.ky, ptr noundef nonnull %i.b, i32 noundef %i.lc) #9
  %i.le = sext i32 %i.ld to i64
  %i.lf = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = sub i64 %i.lg, %i.fa
  %.not194 = icmp eq i64 %i.lh, %i.le
end_hunk_43
begin_hunk_44
  br label %.critedge.thread213

bb.df:                                            ; preds = %.loopexit219
  store i8 1, ptr %i.c, align 1, !tbaa !53
  br label %.critedge.thread213

bb.dg:                                            ; preds = %.lr.ph
end_hunk_44
begin_hunk_45

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 8, ptr %i.f, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i64 0, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1676
  store i32 0, ptr %i.h, align 4, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7448 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40232
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40224
  store ptr %i.i, ptr %i.k, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40216 ; 2 uses
  store ptr %i.l, ptr %i.l, align 8, !tbaa !66
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %bb.c
  %.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40258
  store i8 %.sink, ptr %i.m, align 2, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b
end_hunk_45
begin_hunk_46

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 %i.d, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  store ptr %i.h, ptr %i.e, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i32 %i.j, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !70
  %i.o = tail call i32 @nsis_BZ2_bzDecompress(ptr noundef nonnull %i.e) #9 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.o, 4
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 -124
  %switch.selectcmp52 = icmp eq i32 %i.o, 0
  %switch.select53 = select i1 %switch.selectcmp52, i32 0, i32 %switch.select
  %i.p = load i32, ptr %i.f, align 8, !tbaa !67
  store i32 %i.p, ptr %i.c, align 8, !tbaa !56
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !68
  store ptr %i.q, ptr %i.g, align 8, !tbaa !57
  %i.r = load i32, ptr %i.k, align 8, !tbaa !69
  store i32 %i.r, ptr %i.i, align 8, !tbaa !59
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !70
  store ptr %i.s, ptr %i.l, align 8, !tbaa !58
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i32 %i.u, ptr %i.w, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !74
  %i.ag = tail call i32 @lzmaDecode(ptr noundef nonnull %i.v) #9 ; 2 uses
  %switch.selectcmp54 = icmp eq i32 %i.ag, 1
  %switch.select55 = select i1 %switch.selectcmp54, i32 2, i32 -124
  %switch.selectcmp56 = icmp eq i32 %i.ag, 0
  %switch.select57 = select i1 %switch.selectcmp56, i32 0, i32 %switch.select55
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !71
  store i32 %i.ah, ptr %i.t, align 8, !tbaa !56
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !72
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !57
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !73
  store i32 %i.aj, ptr %i.aa, align 8, !tbaa !59
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !74
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !58
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i32 %i.as, ptr %i.at, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !78
  %i.ax = tail call i32 @nsis_inflate(ptr noundef nonnull %i.an) #9 ; 2 uses
  %switch.selectcmp58 = icmp eq i32 %i.ax, 1
  %switch.select59 = select i1 %switch.selectcmp58, i32 2, i32 -124
  %switch.selectcmp60 = icmp eq i32 %i.ax, 0
  %switch.select61 = select i1 %switch.selectcmp60, i32 0, i32 %switch.select59
  %i.ay = load i32, ptr %i.ao, align 8, !tbaa !75
  store i32 %i.ay, ptr %i.al, align 8, !tbaa !56
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !76
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !57
  %i.ba = load i32, ptr %i.at, align 8, !tbaa !77
  store i32 %i.ba, ptr %i.ar, align 8, !tbaa !59
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !78
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
end_hunk_46
begin_hunk_47
define internal fastcc void @nsis_shutdown(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40258 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !51
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

end_hunk_47
begin_hunk_48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.a, align 2, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
end_hunk_48
begin_hunk_49
!47 = !{!9, !10, i64 0}
!48 = !{!25, !25, i64 0}
!49 = !{!24, !5, i64 4}
!50 = distinct !{!50, !44}
!51 = !{!24, !6, i64 40258}
!52 = !{!24, !25, i64 40248}
!53 = !{!24, !6, i64 40259}
!54 = !{!19, !5, i64 4}
!55 = !{!19, !21, i64 24}
!56 = !{!24, !5, i64 40}
!57 = !{!24, !25, i64 48}
!58 = !{!24, !25, i64 64}
!59 = !{!24, !5, i64 56}
!60 = distinct !{!60, !44}
!61 = !{!24, !5, i64 360}
!62 = !{!24, !21, i64 1680}
!63 = !{!24, !5, i64 1676}
!64 = !{!24, !25, i64 40232}
!65 = !{!24, !25, i64 40224}
!66 = !{!24, !25, i64 40216}
!67 = !{!24, !5, i64 80}
!68 = !{!24, !25, i64 72}
!69 = !{!24, !5, i64 104}
!70 = !{!24, !25, i64 96}
!71 = !{!24, !5, i64 184}
!72 = !{!24, !25, i64 176}
!73 = !{!24, !5, i64 200}
!74 = !{!24, !25, i64 192}
!75 = !{!24, !5, i64 328}
!76 = !{!24, !25, i64 320}
!77 = !{!24, !5, i64 352}
!78 = !{!24, !25, i64 344}
end_hunk_49
