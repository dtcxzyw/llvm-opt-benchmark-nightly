inline.NumInlined: 56
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@split_pathtarget_at_srfs_extended:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 44 ; 2 uses
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader, %add_sp_item_to_pathtarget.exit209
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %add_sp_item_to_pathtarget.exit209 ], [ 0, %.lr.ph13.i.preheader ] ; 2 uses
  %i.dl = load ptr, ptr %i.df, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i
  %i.dn = load ptr, ptr %i.dm, align 8            ; 4 uses
  %i.do = load ptr, ptr %i.di, align 8            ; 3 uses
  %.not.i185 = icmp eq ptr %i.do, null
  br i1 %.not.i185, label %.critedge39.i187, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %.lr.ph13.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.ds = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph49.i197, label %.critedge39.i187

.lr.ph49.i197:                                    ; preds = %.lr.ph.i186, %bb.ah
  %i.du = phi i32 [ %i.ev, %bb.ah ], [ %i.ds, %.lr.ph.i186 ]
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i201, %bb.ah ], [ 0, %.lr.ph.i186 ] ; 4 uses
  %i.dv = load ptr, ptr %i.dq, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i198
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not37.i199 = icmp eq ptr %i.dy, null
  br i1 %.not37.i199, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph49.i197
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i198
  %i.ea = load i32, ptr %i.dz, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph49.i197
  %i.eb = phi i32 [ %i.ea, %bb.z ], [ 0, %.lr.ph49.i197 ] ; 2 uses
  %i.ec = load i32, ptr %i.dr, align 8            ; 2 uses
  %i.ed = icmp eq i32 %i.ec, %i.eb
  br i1 %i.ed, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = icmp eq i32 %i.ec, 0
  %i.ef = icmp eq i32 %i.eb, 0
  %or.cond.i200 = or i1 %i.ef, %i.ee
  br i1 %or.cond.i200, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eg = load ptr, ptr %i.dn, align 8
  %i.eh = call zeroext i1 @equal(ptr noundef %i.eg, ptr noundef %i.dx) #9
  br i1 %i.eh, label %.split.i204, label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %bb.ac
  %.pre.i203 = load i32, ptr %i.dp, align 4
  br label %bb.ah

.split.i204:                                      ; preds = %bb.ac
  %i.ei = load i32, ptr %i.dr, align 8            ; 2 uses
  %.not38.i205 = icmp eq i32 %i.ei, 0
  br i1 %.not38.i205, label %add_sp_item_to_pathtarget.exit209, label %bb.ad

bb.ad:                                            ; preds = %.split.i204
  %i.ej = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.el = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.el, null
  br i1 %.not.i.i206, label %list_length.exit.i207, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 2
  br label %list_length.exit.i207

list_length.exit.i207:                            ; preds = %bb.af, %bb.ae
  %i.eq = phi i64 [ %i.ep, %bb.af ], [ 0, %bb.ae ]
  %i.er = call ptr @palloc0(i64 noundef %i.eq) #9 ; 2 uses
  store ptr %i.er, ptr %i.dj, align 8
  %.pre54.i208 = load i32, ptr %i.dr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %list_length.exit.i207, %bb.ad
  %i.es = phi ptr [ %i.er, %list_length.exit.i207 ], [ %i.ej, %bb.ad ]
  %i.et = phi i32 [ %.pre54.i208, %list_length.exit.i207 ], [ %i.ei, %bb.ad ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i198
  store i32 %i.et, ptr %i.eu, align 4
  br label %add_sp_item_to_pathtarget.exit209

bb.ah:                                            ; preds = %._crit_edge.i202, %bb.ab
  %i.ev = phi i32 [ %.pre.i203, %._crit_edge.i202 ], [ %i.du, %bb.ab ] ; 2 uses
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i198, 1 ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next.i201, %i.ew
  br i1 %i.ex, label %.lr.ph49.i197, label %.critedge39.i187

.critedge39.i187:                                 ; preds = %bb.ah, %.lr.ph.i186, %.lr.ph13.i
  %i.ey = load ptr, ptr %i.dn, align 8
  %i.ez = call ptr @copyObjectImpl(ptr noundef %i.ey) #9
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.fb = load i32, ptr %i.fa, align 8            ; 2 uses
  %i.fc = load ptr, ptr %i.di, align 8
  %i.fd = call ptr @lappend(ptr noundef %i.fc, ptr noundef %i.ez) #9 ; 5 uses
  store ptr %i.fd, ptr %i.di, align 8
  %i.fe = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not.i41.i188 = icmp eq ptr %i.fe, null
  br i1 %.not.i41.i188, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.critedge39.i187
  %.not.i.i.i189 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i189, label %list_length.exit.i.i190, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fg = load i32, ptr %i.ff, align 4
  br label %list_length.exit.i.i190

list_length.exit.i.i190:                          ; preds = %bb.aj, %bb.ai
  %i.fh = phi i32 [ %i.fg, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = shl nsw i64 %i.fi, 2
  %i.fk = call ptr @repalloc(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #9
  br label %.sink.split.i.i191

bb.ak:                                            ; preds = %.critedge39.i187
  %.not19.i.i194 = icmp eq i32 %i.fb, 0
  br i1 %.not19.i.i194, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i20.i.i195 = icmp eq ptr %i.fd, null
  br i1 %.not.i20.i.i195, label %list_length.exit21.i.i196, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fm = load i32, ptr %i.fl, align 4
  br label %list_length.exit21.i.i196

list_length.exit21.i.i196:                        ; preds = %bb.am, %bb.al
  %i.fn = phi i32 [ %i.fm, %bb.am ], [ 0, %bb.al ] ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = shl nsw i64 %i.fo, 2
  %i.fq = call ptr @palloc0(i64 noundef %i.fp) #9
  br label %.sink.split.i.i191

.sink.split.i.i191:                               ; preds = %list_length.exit21.i.i196, %list_length.exit.i.i190
  %.sink.i.i192 = phi ptr [ %i.fq, %list_length.exit21.i.i196 ], [ %i.fk, %list_length.exit.i.i190 ] ; 2 uses
  %.sink26.i.i193 = phi i32 [ %i.fn, %list_length.exit21.i.i196 ], [ %i.fh, %list_length.exit.i.i190 ]
  store ptr %.sink.i.i192, ptr %i.dj, align 8
  %i.fr = add i32 %.sink26.i.i193, -1
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %.sink.i.i192, i64 %i.fs
  store i32 %i.fb, ptr %i.ft, align 4
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i.i191, %bb.ak
  %i.fu = load i32, ptr %i.dk, align 4
  %i.fv = icmp eq i32 %i.fu, 2
  br i1 %i.fv, label %bb.ao, label %add_sp_item_to_pathtarget.exit209

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.dk, align 4
  br label %add_sp_item_to_pathtarget.exit209

add_sp_item_to_pathtarget.exit209:                ; preds = %.split.i204, %bb.ag, %bb.an, %bb.ao
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fw = load i32, ptr %i.de, align 4
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next.i, %i.fx
  br i1 %i.fy, label %.lr.ph13.i, label %add_sp_items_to_pathtarget.exit

add_sp_items_to_pathtarget.exit:                  ; preds = %add_sp_item_to_pathtarget.exit209, %bb.y, %.lr.ph.i
  %i.fz = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 4      ; 3 uses
  %i.gb = getelementptr i8, ptr %i.fz, i64 16     ; 2 uses
  %.not142 = icmp eq ptr %i.fz, null
  br i1 %.not142, label %.critedge153, label %.lr.ph263

.lr.ph263:                                        ; preds = %add_sp_items_to_pathtarget.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %.val160 = load ptr, ptr %i.gb, align 8         ; 2 uses
  %.val159 = load i32, ptr %i.ga, align 4         ; 2 uses
  %i.gd = sext i32 %.val159 to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %.val160, i64 %i.gd
  %.not240 = icmp ult ptr %i.gc, %i.ge            ; 2 uses
  %..i165 = select i1 %.not240, ptr %i.gc, ptr null
  %i.gf = ptrtoint ptr %..i165 to i64
  %i.gg = ptrtoint ptr %.val160 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = lshr exact i64 %i.gh, 3
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = select i1 %.not240, i32 %i.gj, i32 %.val159 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dd, i64 44 ; 2 uses
  %i.go = load i32, ptr %i.ga, align 4
  %i.gp = icmp slt i32 %i.gk, %i.go
  br i1 %i.gp, label %.lr.ph337, label %.critedge153

.lr.ph337:                                        ; preds = %.lr.ph263
  %7 = sext i32 %i.gk to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph337, %add_sp_items_to_pathtarget.exit172
  %indvars.iv274336 = phi i64 [ %7, %.lr.ph337 ], [ %indvars.iv.next275, %add_sp_items_to_pathtarget.exit172 ] ; 2 uses
  %i.gq = load ptr, ptr %i.gb, align 8
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %indvars.iv274336
  %i.gs = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4 ; 2 uses
  %.not.i167 = icmp eq ptr %i.gs, null
  br i1 %.not.i167, label %add_sp_items_to_pathtarget.exit172, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %bb.ap
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gv = load i32, ptr %i.gt, align 4
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph13.i169, label %add_sp_items_to_pathtarget.exit172

.lr.ph13.i169:                                    ; preds = %.lr.ph.i168, %add_sp_item_to_pathtarget.exit234
  %indvars.iv.i170 = phi i64 [ %indvars.iv.next.i171, %add_sp_item_to_pathtarget.exit234 ], [ 0, %.lr.ph.i168 ] ; 2 uses
  %i.gx = load ptr, ptr %i.gu, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.i170
  %i.gz = load ptr, ptr %i.gy, align 8            ; 4 uses
  %i.ha = load ptr, ptr %i.gl, align 8            ; 3 uses
  %.not.i210 = icmp eq ptr %i.ha, null
  br i1 %.not.i210, label %.critedge39.i212, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.lr.ph13.i169
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 3 uses
  %i.he = load i32, ptr %i.hb, align 4            ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph49.i222, label %.critedge39.i212

.lr.ph49.i222:                                    ; preds = %.lr.ph.i211, %bb.ay
  %i.hg = phi i32 [ %i.ih, %bb.ay ], [ %i.he, %.lr.ph.i211 ]
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i226, %bb.ay ], [ 0, %.lr.ph.i211 ] ; 4 uses
  %i.hh = load ptr, ptr %i.hc, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i223
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not37.i224 = icmp eq ptr %i.hk, null
  br i1 %.not37.i224, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph49.i222
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.i223
  %i.hm = load i32, ptr %i.hl, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph49.i222
  %i.hn = phi i32 [ %i.hm, %bb.aq ], [ 0, %.lr.ph49.i222 ] ; 2 uses
  %i.ho = load i32, ptr %i.hd, align 8            ; 2 uses
  %i.hp = icmp eq i32 %i.ho, %i.hn
  br i1 %i.hp, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hq = icmp eq i32 %i.ho, 0
  %i.hr = icmp eq i32 %i.hn, 0
  %or.cond.i225 = or i1 %i.hr, %i.hq
  br i1 %or.cond.i225, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hs = load ptr, ptr %i.gz, align 8
  %i.ht = call zeroext i1 @equal(ptr noundef %i.hs, ptr noundef %i.hj) #9
  br i1 %i.ht, label %.split.i229, label %._crit_edge.i227

._crit_edge.i227:                                 ; preds = %bb.at
  %.pre.i228 = load i32, ptr %i.hb, align 4
  br label %bb.ay

.split.i229:                                      ; preds = %bb.at
  %i.hu = load i32, ptr %i.hd, align 8            ; 2 uses
  %.not38.i230 = icmp eq i32 %i.hu, 0
  br i1 %.not38.i230, label %add_sp_item_to_pathtarget.exit234, label %bb.au

bb.au:                                            ; preds = %.split.i229
  %i.hv = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hx = load ptr, ptr %i.gl, align 8            ; 2 uses
  %.not.i.i231 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i231, label %list_length.exit.i232, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = sext i32 %i.hz to i64
  %i.ib = shl nsw i64 %i.ia, 2
  br label %list_length.exit.i232

list_length.exit.i232:                            ; preds = %bb.aw, %bb.av
  %i.ic = phi i64 [ %i.ib, %bb.aw ], [ 0, %bb.av ]
  %i.id = call ptr @palloc0(i64 noundef %i.ic) #9 ; 2 uses
  store ptr %i.id, ptr %i.gm, align 8
  %.pre54.i233 = load i32, ptr %i.hd, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %list_length.exit.i232, %bb.au
  %i.ie = phi ptr [ %i.id, %list_length.exit.i232 ], [ %i.hv, %bb.au ]
  %i.if = phi i32 [ %.pre54.i233, %list_length.exit.i232 ], [ %i.hu, %bb.au ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i223
  store i32 %i.if, ptr %i.ig, align 4
  br label %add_sp_item_to_pathtarget.exit234

bb.ay:                                            ; preds = %._crit_edge.i227, %bb.as
  %i.ih = phi i32 [ %.pre.i228, %._crit_edge.i227 ], [ %i.hg, %bb.as ] ; 2 uses
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next.i226, %i.ii
  br i1 %i.ij, label %.lr.ph49.i222, label %.critedge39.i212

.critedge39.i212:                                 ; preds = %bb.ay, %.lr.ph.i211, %.lr.ph13.i169
  %i.ik = load ptr, ptr %i.gz, align 8
  %i.il = call ptr @copyObjectImpl(ptr noundef %i.ik) #9
  %i.im = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.in = load i32, ptr %i.im, align 8            ; 2 uses
  %i.io = load ptr, ptr %i.gl, align 8
  %i.ip = call ptr @lappend(ptr noundef %i.io, ptr noundef %i.il) #9 ; 5 uses
  store ptr %i.ip, ptr %i.gl, align 8
  %i.iq = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not.i41.i213 = icmp eq ptr %i.iq, null
  br i1 %.not.i41.i213, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.critedge39.i212
  %.not.i.i.i214 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i214, label %list_length.exit.i.i215, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.is = load i32, ptr %i.ir, align 4
  br label %list_length.exit.i.i215

list_length.exit.i.i215:                          ; preds = %bb.ba, %bb.az
  %i.it = phi i32 [ %i.is, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = shl nsw i64 %i.iu, 2
  %i.iw = call ptr @repalloc(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #9
  br label %.sink.split.i.i216

bb.bb:                                            ; preds = %.critedge39.i212
  %.not19.i.i219 = icmp eq i32 %i.in, 0
  br i1 %.not19.i.i219, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not.i20.i.i220 = icmp eq ptr %i.ip, null
  br i1 %.not.i20.i.i220, label %list_length.exit21.i.i221, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.iy = load i32, ptr %i.ix, align 4
  br label %list_length.exit21.i.i221

list_length.exit21.i.i221:                        ; preds = %bb.bd, %bb.bc
  %i.iz = phi i32 [ %i.iy, %bb.bd ], [ 0, %bb.bc ] ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = shl nsw i64 %i.ja, 2
  %i.jc = call ptr @palloc0(i64 noundef %i.jb) #9
  br label %.sink.split.i.i216

.sink.split.i.i216:                               ; preds = %list_length.exit21.i.i221, %list_length.exit.i.i215
  %.sink.i.i217 = phi ptr [ %i.jc, %list_length.exit21.i.i221 ], [ %i.iw, %list_length.exit.i.i215 ] ; 2 uses
  %.sink26.i.i218 = phi i32 [ %i.iz, %list_length.exit21.i.i221 ], [ %i.it, %list_length.exit.i.i215 ]
  store ptr %.sink.i.i217, ptr %i.gm, align 8
  %i.jd = add i32 %.sink26.i.i218, -1
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %.sink.i.i217, i64 %i.je
  store i32 %i.in, ptr %i.jf, align 4
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i.i216, %bb.bb
  %i.jg = load i32, ptr %i.gn, align 4
  %i.jh = icmp eq i32 %i.jg, 2
  br i1 %i.jh, label %bb.bf, label %add_sp_item_to_pathtarget.exit234

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gn, align 4
  br label %add_sp_item_to_pathtarget.exit234

add_sp_item_to_pathtarget.exit234:                ; preds = %.split.i229, %bb.ax, %bb.be, %bb.bf
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i170, 1 ; 2 uses
  %i.ji = load i32, ptr %i.gt, align 4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next.i171, %i.jj
  br i1 %i.jk, label %.lr.ph13.i169, label %add_sp_items_to_pathtarget.exit172

add_sp_items_to_pathtarget.exit172:               ; preds = %add_sp_item_to_pathtarget.exit234, %bb.ap, %.lr.ph.i168
  %indvars.iv.next275 = add nsw i64 %indvars.iv274336, 1 ; 2 uses
  %i.jl = load i32, ptr %i.ga, align 4
  %8 = sext i32 %i.jl to i64
  %i.jm = icmp slt i64 %indvars.iv.next275, %8
  br i1 %i.jm, label %bb.ap, label %.critedge153

.critedge153:                                     ; preds = %add_sp_items_to_pathtarget.exit172, %.lr.ph263, %add_sp_items_to_pathtarget.exit
  %i.jn = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 4      ; 3 uses
  %i.jp = getelementptr i8, ptr %i.jn, i64 16     ; 2 uses
  %.not144 = icmp eq ptr %i.jn, null
  br i1 %.not144, label %.critedge155, label %.lr.ph269

.lr.ph269:                                        ; preds = %.critedge153
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %.val158 = load ptr, ptr %i.jp, align 8         ; 2 uses
  %.val = load i32, ptr %i.jo, align 4            ; 2 uses
  %i.jr = sext i32 %.val to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %.val158, i64 %i.jr
  %.not241 = icmp ult ptr %i.jq, %i.js            ; 2 uses
  %..i173 = select i1 %.not241, ptr %i.jq, ptr null
  %i.jt = ptrtoint ptr %..i173 to i64
  %i.ju = ptrtoint ptr %.val158 to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = lshr exact i64 %i.jv, 3
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = select i1 %.not241, i32 %i.jx, i32 %.val ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dd, i64 44 ; 2 uses
  %i.kc = load i32, ptr %i.jo, align 4
  %i.kd = icmp slt i32 %i.jy, %i.kc
  br i1 %i.kd, label %.lr.ph341, label %.critedge155

.lr.ph341:                                        ; preds = %.lr.ph269
  %9 = sext i32 %i.jy to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph341, %.critedge157
  %indvars.iv280340 = phi i64 [ %9, %.lr.ph341 ], [ %indvars.iv.next281, %.critedge157 ] ; 2 uses
  %i.ke = load ptr, ptr %i.jp, align 8
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %indvars.iv280340
  %i.kg = load ptr, ptr %i.kf, align 8            ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4 ; 2 uses
  %.not146 = icmp eq ptr %i.kg, null
  br i1 %.not146, label %.critedge157, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.bg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kj = load i32, ptr %i.kh, align 4
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph339, label %.critedge157

.critedge155:                                     ; preds = %.critedge157, %.lr.ph269, %.critedge153
  %i.kl = call ptr @set_pathtarget_cost_width(ptr noundef %0, ptr noundef nonnull %i.dd) #9 ; 0 uses
  br label %bb.by

.lr.ph339:                                        ; preds = %.lr.ph266, %add_sp_item_to_pathtarget.exit
  %indvars.iv277338 = phi i64 [ %indvars.iv.next278.a, %add_sp_item_to_pathtarget.exit ], [ 0, %.lr.ph266 ] ; 2 uses
  %i.km = load ptr, ptr %i.ki, align 8
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv277338
  %i.ko = load ptr, ptr %i.kn, align 8            ; 5 uses
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = call zeroext i1 @list_member(ptr noundef %.0116, ptr noundef %i.kp) #9
  br i1 %i.kq, label %bb.bh, label %add_sp_item_to_pathtarget.exit

.critedge157:                                     ; preds = %add_sp_item_to_pathtarget.exit, %.lr.ph266, %bb.bg
  %indvars.iv.next281 = add nsw i64 %indvars.iv280340, 1 ; 2 uses
  %i.kr = load i32, ptr %i.jo, align 4
  %10 = sext i32 %i.kr to i64
  %i.ks = icmp slt i64 %indvars.iv.next281, %10
  br i1 %i.ks, label %bb.bg, label %.critedge155

bb.bh:                                            ; preds = %.lr.ph339
  %i.kt = load ptr, ptr %i.jz, align 8            ; 3 uses
  %.not.i180 = icmp eq ptr %i.kt, null
  br i1 %.not.i180, label %.critedge39.i, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.bh
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 3 uses
  %i.kx = load i32, ptr %i.ku, align 4            ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph49.i, label %.critedge39.i

.lr.ph49.i:                                       ; preds = %.lr.ph.i181, %bb.bq
  %i.kz = phi i32 [ %i.ma, %bb.bq ], [ %i.kx, %.lr.ph.i181 ]
  %indvars.iv.i182 = phi i64 [ %indvars.iv.next.i183, %bb.bq ], [ 0, %.lr.ph.i181 ] ; 4 uses
  %i.la = load ptr, ptr %i.kv, align 8
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv.i182
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = load ptr, ptr %i.ka, align 8            ; 2 uses
  %.not37.i = icmp eq ptr %i.ld, null
  br i1 %.not37.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph49.i
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i182
  %i.lf = load i32, ptr %i.le, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph49.i
  %i.lg = phi i32 [ %i.lf, %bb.bi ], [ 0, %.lr.ph49.i ] ; 2 uses
  %i.lh = load i32, ptr %i.kw, align 8            ; 2 uses
  %i.li = icmp eq i32 %i.lh, %i.lg
  br i1 %i.li, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lj = icmp eq i32 %i.lh, 0
  %i.lk = icmp eq i32 %i.lg, 0
  %or.cond.i = or i1 %i.lk, %i.lj
  br i1 %or.cond.i, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ll = load ptr, ptr %i.ko, align 8
  %i.lm = call zeroext i1 @equal(ptr noundef %i.ll, ptr noundef %i.lc) #9
  br i1 %i.lm, label %.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bl
  %.pre.i = load i32, ptr %i.ku, align 4
  br label %bb.bq

.split.i:                                         ; preds = %bb.bl
  %i.ln = load i32, ptr %i.kw, align 8            ; 2 uses
  %.not38.i = icmp eq i32 %i.ln, 0
  br i1 %.not38.i, label %add_sp_item_to_pathtarget.exit, label %bb.bm

bb.bm:                                            ; preds = %.split.i
  %i.lo = load ptr, ptr %i.ka, align 8            ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.lq = load ptr, ptr %i.jz, align 8            ; 2 uses
  %.not.i.i184 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i184, label %list_length.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4
  %i.lt = sext i32 %i.ls to i64
  %i.lu = shl nsw i64 %i.lt, 2
  br label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.bo, %bb.bn
  %i.lv = phi i64 [ %i.lu, %bb.bo ], [ 0, %bb.bn ]
  %i.lw = call ptr @palloc0(i64 noundef %i.lv) #9 ; 2 uses
  store ptr %i.lw, ptr %i.ka, align 8
  %.pre54.i = load i32, ptr %i.kw, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %list_length.exit.i, %bb.bm
  %i.lx = phi ptr [ %i.lw, %list_length.exit.i ], [ %i.lo, %bb.bm ]
  %i.ly = phi i32 [ %.pre54.i, %list_length.exit.i ], [ %i.ln, %bb.bm ]
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv.i182
  store i32 %i.ly, ptr %i.lz, align 4
  br label %add_sp_item_to_pathtarget.exit

bb.bq:                                            ; preds = %._crit_edge.i, %bb.bk
  %i.ma = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.kz, %bb.bk ] ; 2 uses
  %indvars.iv.next.i183 = add nuw nsw i64 %indvars.iv.i182, 1 ; 2 uses
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next.i183, %i.mb
  br i1 %i.mc, label %.lr.ph49.i, label %.critedge39.i

.critedge39.i:                                    ; preds = %bb.bq, %.lr.ph.i181, %bb.bh
  %i.md = load ptr, ptr %i.ko, align 8
  %i.me = call ptr @copyObjectImpl(ptr noundef %i.md) #9
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.mg = load i32, ptr %i.mf, align 8            ; 2 uses
  %i.mh = load ptr, ptr %i.jz, align 8
  %i.mi = call ptr @lappend(ptr noundef %i.mh, ptr noundef %i.me) #9 ; 5 uses
  store ptr %i.mi, ptr %i.jz, align 8
  %i.mj = load ptr, ptr %i.ka, align 8            ; 2 uses
  %.not.i41.i = icmp eq ptr %i.mj, null
  br i1 %.not.i41.i, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %.critedge39.i
  %.not.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i, label %list_length.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.ml = load i32, ptr %i.mk, align 4
  br label %list_length.exit.i.i

list_length.exit.i.i:                             ; preds = %bb.bs, %bb.br
  %i.mm = phi i32 [ %i.ml, %bb.bs ], [ 0, %bb.br ] ; 2 uses
  %i.mn = sext i32 %i.mm to i64
  %i.mo = shl nsw i64 %i.mn, 2
  %i.mp = call ptr @repalloc(ptr noundef nonnull %i.mj, i64 noundef %i.mo) #9
  br label %.sink.split.i.i

bb.bt:                                            ; preds = %.critedge39.i
  %.not19.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not19.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i20.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i20.i.i, label %list_length.exit21.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mr = load i32, ptr %i.mq, align 4
  br label %list_length.exit21.i.i

list_length.exit21.i.i:                           ; preds = %bb.bv, %bb.bu
  %i.ms = phi i32 [ %i.mr, %bb.bv ], [ 0, %bb.bu ] ; 2 uses
  %i.mt = sext i32 %i.ms to i64
  %i.mu = shl nsw i64 %i.mt, 2
  %i.mv = call ptr @palloc0(i64 noundef %i.mu) #9
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %list_length.exit21.i.i, %list_length.exit.i.i
  %.sink.i.i = phi ptr [ %i.mv, %list_length.exit21.i.i ], [ %i.mp, %list_length.exit.i.i ] ; 2 uses
  %.sink26.i.i = phi i32 [ %i.ms, %list_length.exit21.i.i ], [ %i.mm, %list_length.exit.i.i ]
  store ptr %.sink.i.i, ptr %i.ka, align 8
  %i.mw = add i32 %.sink26.i.i, -1
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.mx
  store i32 %i.mg, ptr %i.my, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split.i.i, %bb.bt
  %i.mz = load i32, ptr %i.kb, align 4
  %i.na = icmp eq i32 %i.mz, 2
  br i1 %i.na, label %bb.bx, label %add_sp_item_to_pathtarget.exit

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.kb, align 4
  br label %add_sp_item_to_pathtarget.exit

add_sp_item_to_pathtarget.exit:                   ; preds = %bb.bx, %bb.bw, %bb.bp, %.split.i, %.lr.ph339
  %indvars.iv.next278.a = add nuw nsw i64 %indvars.iv277338, 1 ; 2 uses
  %i.nb = load i32, ptr %i.kh, align 4
  %i.nc = sext i32 %i.nb to i64
  %i.nd = icmp slt i64 %indvars.iv.next278.a, %i.nc
  br i1 %i.nd, label %.lr.ph339, label %.critedge157

bb.by:                                            ; preds = %bb.x, %.critedge155
  %.0117 = phi ptr [ %i.dd, %.critedge155 ], [ %1, %bb.x ] ; 2 uses
  %i.ne = load ptr, ptr %3, align 8
  %i.nf = call ptr @lappend(ptr noundef %i.ne, ptr noundef %.0117) #9
  store ptr %i.nf, ptr %3, align 8
  %i.ng = load ptr, ptr %4, align 8
  %i.nh = icmp ne ptr %i.cw, null
  %i.ni = zext i1 %i.nh to i32
  %i.nj = call ptr @lappend_int(ptr noundef %i.ng, i32 noundef %i.ni) #9
  store ptr %i.nj, ptr %4, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %.0117, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1
  br label %.split, !llvm.loop !11

.critedge.sink.split:                             ; preds = %bb.b, %.critedge150.thread
  %.sink = phi ptr [ %i.ax, %.critedge150.thread ], [ %i.c, %bb.b ]
  store ptr %.sink, ptr %4, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.v, %.critedge.sink.split, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @split_pathtarget_at_srfs_grouping(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @split_pathtarget_at_srfs_extended(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true)
  ret void
}

end_hunk_0
