inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 107
begin_hunk_0_@getToken:bb.a
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %.not241 = icmp eq i8 %i.ap, 61
  br i1 %.not241, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ad:                                            ; preds = %bb.ab
  store i32 67, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ae:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %.not240 = icmp eq i8 %i.ar, 124
  br i1 %.not240, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 75, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ag:                                            ; preds = %bb.ae
  store i32 83, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ah:                                            ; preds = %bb.a
  store i32 22, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ai:                                            ; preds = %bb.a
  store i32 74, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.aj:                                            ; preds = %bb.a
  store i32 87, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ak:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37  ; 2 uses
  %.not239307 = icmp eq i8 %i.at, 0
  br i1 %.not239307, label %.critedge253, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.ak, %bb.am
  %i.au = phi i8 [ %i.be, %bb.am ], [ %i.at, %bb.ak ]
  %.4308 = phi i32 [ %i.bb, %bb.am ], [ 1, %bb.ak ] ; 2 uses
  %i.av = icmp eq i8 %i.au, %i.a
  br i1 %i.av, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph309
  %i.aw = add nsw i32 %.4308, 1                   ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = icmp eq i8 %i.az, %i.a
  br i1 %i.ba, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %.lr.ph309
  %.5 = phi i32 [ %.4308, %.lr.ph309 ], [ %i.aw, %bb.al ]
  %i.bb = add nsw i32 %.5, 1                      ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37  ; 2 uses
  %.not239 = icmp eq i8 %i.be, 0
  br i1 %.not239, label %.critedge253, label %.lr.ph309, !llvm.loop !1266

bb.an:                                            ; preds = %bb.al
  store i32 88, ptr %1, align 4, !tbaa !4
  br label %.critedge4

.critedge253:                                     ; preds = %bb.am, %bb.ak
  %.4.lcssa = phi i32 [ 1, %bb.ak ], [ %i.bb, %bb.am ]
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ao:                                            ; preds = %bb.a
  %i.bf = tail call ptr @__ctype_b_loc() #46
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !168
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !170
  %i.bm = and i16 %i.bl, 2048
  %.not231 = icmp eq i16 %i.bm, 0
  br i1 %.not231, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 112, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.aq:                                            ; preds = %bb.ao, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i32 124, ptr %1, align 4, !tbaa !4
  %i.bn = tail call ptr @__ctype_b_loc() #46
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 5 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %bb.ar ], [ 0, %bb.aq ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv348
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !37  ; 3 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !170
  %i.bu = and i16 %i.bt, 2048
  %.not232 = icmp eq i16 %i.bu, 0
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1
  br i1 %.not232, label %bb.as, label %bb.ar, !llvm.loop !1267

bb.as:                                            ; preds = %bb.ar
  %i.bv = icmp eq i8 %i.bq, 46
  br i1 %i.bv, label %.preheader263, label %._crit_edge

.preheader263:                                    ; preds = %bb.as, %.preheader263
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %.preheader263 ], [ %indvars.iv348, %bb.as ]
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next353
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !170
  %i.cb = and i16 %i.ca, 2048
  %.not233 = icmp eq i16 %i.cb, 0
  br i1 %.not233, label %bb.at, label %.preheader263, !llvm.loop !1268

bb.at:                                            ; preds = %.preheader263
  store i32 125, ptr %1, align 4, !tbaa !4
  %sext = shl i64 %indvars.iv.next353, 32
  %.phi.trans.insert = ashr exact i64 %sext, 32   ; 2 uses
  %.phi.trans.insert378 = getelementptr inbounds i8, ptr %0, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert378, align 1, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.as, %bb.at
  %.pre-phi383 = phi i64 [ %.phi.trans.insert, %bb.at ], [ %indvars.iv348, %bb.as ] ; 4 uses
  %i.cc = phi i8 [ %.pre, %bb.at ], [ %i.bq, %bb.as ]
  %.8.in = phi i64 [ %indvars.iv.next353, %bb.at ], [ %indvars.iv348, %bb.as ]
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %.pre-phi383 ; 2 uses
  switch i8 %i.cc, label %.preheader474 [
    i8 101, label %bb.au
    i8 69, label %bb.au
  ]

bb.au:                                            ; preds = %._crit_edge, %._crit_edge
  %i.ce = getelementptr i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37  ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !170
  %i.cj = and i16 %i.ci, 2048
  %.not234 = icmp eq i16 %i.cj, 0
  br i1 %.not234, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  switch i8 %i.cf, label %.preheader474 [
    i8 43, label %bb.aw
    i8 45, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.ck = getelementptr i8, ptr %i.cd, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !37
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !170
  %i.cp = and i16 %i.co, 2048
  %.not235 = icmp eq i16 %i.cp, 0
  br i1 %.not235, label %.preheader474, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.cq = shl i64 %.8.in, 32
  %sext403 = add i64 %i.cq, 8589934592
  %i.cr = ashr exact i64 %sext403, 32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %bb.ay ], [ %i.cr, %bb.ax ] ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %indvars.iv356
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !37
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !170
  %i.cx = and i16 %i.cw, 2048
  %.not236 = icmp eq i16 %i.cx, 0
  %indvars.iv.next357 = add nsw i64 %indvars.iv356, 1
  br i1 %.not236, label %bb.az, label %bb.ay, !llvm.loop !1269

bb.az:                                            ; preds = %bb.ay
  store i32 125, ptr %1, align 4, !tbaa !4
  br label %.preheader474

.preheader474:                                    ; preds = %bb.av, %._crit_edge, %bb.az, %bb.aw
  %indvars.iv360.ph = phi i64 [ %.pre-phi383, %bb.aw ], [ %indvars.iv356, %bb.az ], [ %.pre-phi383, %._crit_edge ], [ %.pre-phi383, %bb.av ]
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader474, %.critedge2
  %indvars.iv360 = phi i64 [ %indvars.iv.next361, %.critedge2 ], [ %indvars.iv360.ph, %.preheader474 ] ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %indvars.iv360
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !37  ; 3 uses
  %i.da = zext nneg i8 %i.cz to i64
  %.not237 = icmp sgt i8 %i.cz, -1
  br i1 %.not237, label %bb.bb, label %.critedge2

bb.bb:                                            ; preds = %bb.ba
  %i.db = icmp samesign ugt i8 %i.cz, 31
  br i1 %i.db, label %bb.bc, label %.critedge4.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.dc = add nuw nsw i64 %i.da, 4294967264
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !37
  %.not238 = icmp eq i8 %i.df, 0
  br i1 %.not238, label %.critedge4.loopexit, label %.critedge2

.critedge2:                                       ; preds = %bb.ba, %bb.bc
  store i32 144, ptr %1, align 4, !tbaa !4
  %indvars.iv.next361 = add nsw i64 %indvars.iv360, 1
  br label %bb.ba, !llvm.loop !1270

.preheader264:                                    ; preds = %bb.a, %bb.bd
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %bb.bd ], [ 1, %bb.a ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv345
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !37  ; 2 uses
  %.not230 = icmp eq i8 %i.dh, 0
  br i1 %.not230, label %.critedge6, label %bb.bd

bb.bd:                                            ; preds = %.preheader264
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %.not229 = icmp eq i8 %i.dh, 93
  br i1 %.not229, label %.critedge6, label %.preheader264, !llvm.loop !1271

.critedge6:                                       ; preds = %bb.bd, %.preheader264
  %.12.lcssa.in = phi i64 [ %indvars.iv.next346, %bb.bd ], [ %indvars.iv345, %.preheader264 ]
  %i.di = phi i32 [ 23, %bb.bd ], [ 144, %.preheader264 ]
  %.12.lcssa = trunc i64 %.12.lcssa.in to i32
  store i32 %i.di, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.be:                                            ; preds = %bb.a
  store i32 128, ptr %1, align 4, !tbaa !4
  %i.dj = tail call ptr @__ctype_b_loc() #46
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !168
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %bb.bf ], [ 1, %bb.be ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv342
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !37
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !170
  %i.dq = and i16 %i.dp, 2048
  %.not228 = icmp eq i16 %i.dq, 0
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1
  br i1 %.not228, label %.critedge4.loopexit313, label %bb.bf, !llvm.loop !1272

bb.bg:                                            ; preds = %bb.bg, %.preheader268
  %indvars.iv335 = phi i64 [ %indvars.iv.next336, %bb.bg ], [ 1, %.preheader268 ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv335
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !37
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !170
  %i.dw = and i16 %i.dv, 2048
  %.not223 = icmp eq i16 %i.dw, 0
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1
  br i1 %.not223, label %bb.bh, label %bb.bg, !llvm.loop !1273

bb.bh:                                            ; preds = %bb.bg
  %i.dx = icmp samesign ugt i64 %indvars.iv335, 1
  br i1 %i.dx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.dy = trunc nuw nsw i64 %indvars.iv335 to i32
  store i32 127, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.bj:                                            ; preds = %bb.bh, %bb.a, %bb.a, %bb.a
  store i32 128, ptr %1, align 4, !tbaa !4
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !37  ; 2 uses
  %.not224293 = icmp eq i8 %i.ea, 0
  br i1 %.not224293, label %.thread257.thread407, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj, %bb.bt
  %i.eb = phi i8 [ %i.fi, %bb.bt ], [ %i.ea, %bb.bj ] ; 5 uses
  %.0295 = phi i32 [ %.1, %bb.bt ], [ 0, %bb.bj ] ; 6 uses
  %.15294 = phi i32 [ %i.ff, %bb.bt ], [ 1, %bb.bj ] ; 6 uses
  %.not225 = icmp sgt i8 %i.eb, -1
  br i1 %.not225, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.lr.ph
  %i.ec = icmp samesign ugt i8 %i.eb, 31
  br i1 %i.ec, label %bb.bl, label %.thread257

bb.bl:                                            ; preds = %bb.bk
  %i.ed = zext nneg i8 %i.eb to i64
  %i.ee = getelementptr i8, ptr @sqlite3IsAsciiIdChar, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 -32
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !37
  %.not226 = icmp eq i8 %i.eg, 0
  br i1 %.not226, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph
  %i.eh = add nsw i32 %.0295, 1
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bl
  %i.ei = icmp eq i8 %i.eb, 40
  %i.ej = icmp sgt i32 %.0295, 0
  %or.cond = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond, label %.preheader266, label %bb.br

.preheader266:                                    ; preds = %bb.bn
  %i.ek = sext i32 %.15294 to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader266, %bb.bp
  %indvars.iv339 = phi i64 [ %i.ek, %.preheader266 ], [ %indvars.iv.next340, %bb.bp ] ; 2 uses
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, 1 ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next340
  %i.em = load i8, ptr %i.el, align 1, !tbaa !37  ; 4 uses
  %cond = icmp eq i8 %i.em, 0
  br i1 %cond, label %.loopexit267, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.en = tail call ptr @__ctype_b_loc() #46
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !168
  %i.ep = zext i8 %i.em to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !170
  %i.es = and i16 %i.er, 8192
  %i.et = icmp eq i16 %i.es, 0
  %i.eu = icmp ne i8 %i.em, 41
  %or.cond17 = and i1 %i.eu, %i.et
  br i1 %or.cond17, label %bb.bo, label %.critedge9, !llvm.loop !1274

.critedge9:                                       ; preds = %bb.bp
  %i.ev = icmp eq i8 %i.em, 41
  br i1 %i.ev, label %bb.bq, label %.loopexit267

bb.bq:                                            ; preds = %.critedge9
  %i.ew = trunc nsw i64 %indvars.iv339 to i32
  %i.ex = add nsw i32 %i.ew, 2
  br label %.critedge4

.loopexit267:                                     ; preds = %bb.bo, %.critedge9
  %i.ey = trunc i64 %indvars.iv.next340 to i32
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.br:                                            ; preds = %bb.bn
  %i.ez = icmp eq i8 %i.eb, 58
  br i1 %i.ez, label %bb.bs, label %.thread257

bb.bs:                                            ; preds = %bb.br
  %i.fa = add nsw i32 %.15294, 1                  ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %0, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !37
  %i.fe = icmp eq i8 %i.fd, 58
  br i1 %i.fe, label %bb.bt, label %.thread257

bb.bt:                                            ; preds = %bb.bs, %bb.bm
  %.17 = phi i32 [ %.15294, %bb.bm ], [ %i.fa, %bb.bs ]
  %.1 = phi i32 [ %i.eh, %bb.bm ], [ %.0295, %bb.bs ] ; 2 uses
  %i.ff = add nsw i32 %.17, 1                     ; 3 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %0, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !37  ; 2 uses
  %.not224 = icmp eq i8 %i.fi, 0
  br i1 %.not224, label %.thread257, label %.lr.ph, !llvm.loop !1275

.thread257:                                       ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bk
  %.0289.ph = phi i32 [ %.0295, %bb.bk ], [ %.0295, %bb.br ], [ %.0295, %bb.bs ], [ %.1, %bb.bt ]
  %.18.ph = phi i32 [ %.15294, %bb.bk ], [ %.15294, %bb.br ], [ %.15294, %bb.bs ], [ %i.ff, %bb.bt ] ; 2 uses
  %i.fj = icmp eq i32 %.0289.ph, 0
  br i1 %i.fj, label %.thread257.thread407, label %.critedge4

.thread257.thread407:                             ; preds = %bb.bj, %.thread257
  %.18410 = phi i32 [ %.18.ph, %.thread257 ], [ 1, %bb.bj ]
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.bu:                                            ; preds = %bb.a, %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !37
  %i.fm = icmp eq i8 %i.fl, 39
  br i1 %i.fm, label %bb.bv, label %.thread260

.thread260:                                       ; preds = %bb.bu
  %i.fn = zext nneg i8 %i.a to i64
  br label %bb.cf

bb.bv:                                            ; preds = %bb.bu
  store i32 126, ptr %1, align 4, !tbaa !4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %bb.bv
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bz ], [ 2, %bb.bv ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !37  ; 3 uses
  switch i8 %i.fp, label %bb.bx [
    i8 39, label %bb.ca
    i8 0, label %bb.ca
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.fq = tail call ptr @__ctype_b_loc() #46
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !168
  %i.fs = zext i8 %i.fp to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !170
  %i.fv = and i16 %i.fu, 4096
  %.not = icmp eq i16 %i.fv, 0
  br i1 %.not, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.bw, !llvm.loop !1276

bb.ca:                                            ; preds = %bb.bw, %bb.bw
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fx = icmp ne i8 %i.fp, 0                     ; 2 uses
  %i.fy = and i32 %i.fw, 1
  %i.fz = icmp eq i32 %i.fy, 0
  %or.cond11 = and i1 %i.fz, %i.fx
  br i1 %or.cond11, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.ga = zext i1 %i.fx to i32
  %spec.select254 = add nuw nsw i32 %i.fw, %i.ga
  br label %.critedge4

bb.cd:                                            ; preds = %bb.a
  %i.gb = zext i8 %i.a to i64                     ; 2 uses
  %.not248 = icmp sgt i8 %i.a, -1
  br i1 %.not248, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.gc = icmp samesign ugt i8 %i.a, 31
  br i1 %i.gc, label %bb.cf, label %bb.cp

bb.cf:                                            ; preds = %.thread260, %bb.ce
  %i.gd = phi i64 [ %i.fn, %.thread260 ], [ %i.gb, %bb.ce ] ; 2 uses
  %i.ge = add nuw nsw i64 %i.gd, 4294967264
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !37
  %.not249 = icmp eq i8 %i.gh, 0
  br i1 %.not249, label %bb.cp, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %i.gi = phi i64 [ %i.gd, %bb.cf ], [ %i.gb, %bb.cd ]
  br label %bb.ch

bb.ch:                                            ; preds = %.critedge13, %bb.cg
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.critedge13 ], [ 1, %bb.cg ] ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv374
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !37  ; 3 uses
  %i.gl = zext nneg i8 %i.gk to i64
  %.not250 = icmp sgt i8 %i.gk, -1
  br i1 %.not250, label %bb.ci, label %.critedge13

bb.ci:                                            ; preds = %bb.ch
  %i.gm = icmp samesign ugt i8 %i.gk, 31
  br i1 %i.gm, label %bb.cj, label %.critedge15

bb.cj:                                            ; preds = %bb.ci
  %i.gn = add nuw nsw i64 %i.gl, 4294967264
  %i.go = and i64 %i.gn, 4294967295
  %i.gp = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !37
  %.not251 = icmp eq i8 %i.gq, 0
  br i1 %.not251, label %.critedge15, label %.critedge13

.critedge13:                                      ; preds = %bb.ch, %bb.cj
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  br label %bb.ch, !llvm.loop !1277

.critedge15:                                      ; preds = %bb.ci, %bb.cj
  %i.gr = trunc nuw nsw i64 %indvars.iv374 to i32 ; 3 uses
  %i.gs = icmp samesign ult i64 %indvars.iv374, 2
  br i1 %i.gs, label %keywordCode.exit, label %bb.ck

bb.ck:                                            ; preds = %.critedge15
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv374
  %i.gu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gi
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !37
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 2
  %i.gy = getelementptr i8, ptr %i.gt, i64 -1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !37
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !37
  %i.hd = zext i8 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 3
  %i.hf = xor i32 %i.gx, %i.he
  %i.hg = xor i32 %i.hf, %i.gr
  %i.hh = urem i32 %i.hg, 127
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @keywordCode.aHash, i64 %i.hi
  %.0.in.in23.i = load i8, ptr %i.hj, align 1, !tbaa !37 ; 2 uses
  %.not24.i = icmp eq i8 %.0.in.in23.i, 0
  br i1 %.not24.i, label %keywordCode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ck, %bb.co
  %.0.in.in25.i = phi i8 [ %.0.in.in.i, %bb.co ], [ %.0.in.in23.i, %bb.ck ]
  %.0.in.i = zext i8 %.0.in.in25.i to i64
  %.0.i = add nuw nsw i64 %.0.in.i, 4294967295
  %i.hk = and i64 %.0.i, 4294967295               ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr @keywordCode.aLen, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !37
  %i.hn = zext i8 %i.hm to i64
  %i.ho = icmp eq i64 %indvars.iv374, %i.hn
  br i1 %i.ho, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.lr.ph.i
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr @keywordCode.aOffset, i64 %i.hk
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !170
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @keywordCode.zText, i64 %i.hr
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cn, %bb.cl
  %.in.i.i = phi i32 [ %i.ht, %bb.cn ], [ %i.gr, %bb.cl ] ; 2 uses
  %.015.i.i = phi ptr [ %i.ie, %bb.cn ], [ %0, %bb.cl ] ; 3 uses
  %.01014.i.i = phi ptr [ %i.id, %bb.cn ], [ %i.hs, %bb.cl ] ; 2 uses
  %i.ht = add nsw i32 %.in.i.i, -1
  %i.hu = load i8, ptr %.01014.i.i, align 1, !tbaa !37 ; 2 uses
  %.not.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i, label %sqlite3StrNICmp.exit.loopexit.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !37  ; 2 uses
  %i.hy = load i8, ptr %.015.i.i, align 1, !tbaa !37
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !37  ; 2 uses
  %i.ic = icmp eq i8 %i.hx, %i.ib
  br i1 %i.ic, label %bb.cn, label %split.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.id = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.if = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.if, label %.lr.ph.i.i, label %sqlite3StrNICmp.exit.thread.i, !llvm.loop !585

split.i.i:                                        ; preds = %bb.cm
  %i.ig = zext i8 %i.hx to i32
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.loopexit.i:                  ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %.015.i.i, align 1, !tbaa !37
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i
  %.pre35.i = load i8, ptr %.phi.trans.insert34.i, align 1, !tbaa !37
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.i:                           ; preds = %sqlite3StrNICmp.exit.loopexit.i, %split.i.i
  %i.ih = phi i8 [ %i.ib, %split.i.i ], [ %.pre35.i, %sqlite3StrNICmp.exit.loopexit.i ]
  %i.ii = phi i32 [ %i.ig, %split.i.i ], [ 0, %sqlite3StrNICmp.exit.loopexit.i ]
  %i.ij = zext i8 %i.ih to i32
  %i.ik = icmp eq i32 %i.ii, %i.ij
  br i1 %i.ik, label %sqlite3StrNICmp.exit.thread.i, label %bb.co

sqlite3StrNICmp.exit.thread.i:                    ; preds = %sqlite3StrNICmp.exit.i, %bb.cn
  %i.il = getelementptr inbounds nuw i8, ptr @keywordCode.aCode, i64 %i.hk
  %i.im = load i8, ptr %i.il, align 1, !tbaa !37
  %i.in = zext i8 %i.im to i32
  br label %keywordCode.exit

bb.co:                                            ; preds = %sqlite3StrNICmp.exit.i, %.lr.ph.i
  %i.io = getelementptr inbounds nuw i8, ptr @keywordCode.aNext, i64 %i.hk
  %.0.in.in.i = load i8, ptr %i.io, align 1, !tbaa !37 ; 2 uses
  %.not.i = icmp eq i8 %.0.in.in.i, 0
  br i1 %.not.i, label %keywordCode.exit, label %.lr.ph.i, !llvm.loop !1278

keywordCode.exit:                                 ; preds = %bb.co, %.critedge15, %bb.ck, %sqlite3StrNICmp.exit.thread.i
  %.014.i = phi i32 [ 23, %.critedge15 ], [ %i.in, %sqlite3StrNICmp.exit.thread.i ], [ 23, %bb.ck ], [ 23, %bb.co ]
  store i32 %.014.i, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.cp:                                            ; preds = %bb.ce, %bb.cf
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

.critedge4.loopexit313:                           ; preds = %bb.bf
  %i.ip = trunc nuw nsw i64 %indvars.iv342 to i32
  br label %.critedge4

.critedge4.loopexit:                              ; preds = %bb.bb, %bb.bc
  %i.iq = trunc nsw i64 %indvars.iv360 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.loopexit267, %bb.bq, %.critedge4.loopexit313, %.thread257, %.thread257.thread407, %bb.an, %.critedge253, %bb.cp, %keywordCode.exit, %bb.cc, %bb.bi, %.critedge6, %bb.ap, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %.loopexit, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d
  %.1198 = phi i32 [ %i.gr, %keywordCode.exit ], [ 1, %bb.cp ], [ %i.l, %bb.d ], [ %i.r, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.p ], [ %i.af, %.loopexit ], [ 1, %bb.q ], [ %i.aj, %bb.r ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.v ], [ 1, %bb.w ], [ 2, %bb.y ], [ 2, %bb.z ], [ 1, %bb.aa ], [ 2, %bb.ac ], [ 2, %bb.ad ], [ 1, %bb.af ], [ 2, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ %spec.select254, %bb.cc ], [ %.4.lcssa, %.critedge253 ], [ 1, %bb.ap ], [ %.12.lcssa, %.critedge6 ], [ %.18410, %.thread257.thread407 ], [ %i.dy, %bb.bi ], [ %i.ey, %.loopexit267 ], [ %i.aw, %bb.an ], [ %.18.ph, %.thread257 ], [ %i.ip, %.critedge4.loopexit313 ], [ %i.ex, %bb.bq ], [ %i.iq, %.critedge4.loopexit ]
  ret i32 %.1198
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3Parser(ptr noundef nonnull initializes((8, 16)) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.DbFixer, align 8            ; 7 uses
  %6 = alloca %struct.DbFixer, align 8            ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %7 = alloca %struct.Token, align 8              ; 7 uses
  %8 = alloca %struct.DbFixer, align 8            ; 7 uses
  %9 = alloca %union.YYMINORTYPE, align 8         ; 4 uses
  %10 = alloca %struct.SelectDest, align 4        ; 4 uses
  %11 = alloca %union.YYMINORTYPE, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  %i.h = load i32, ptr %0, align 8, !tbaa !370    ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !370
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !1279
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !1280
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !377
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pr = phi i32 [ 0, %bb.b ], [ %i.h, %bb.a ]
  store ptr %2, ptr %11, align 8, !tbaa !72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx, align 8
  %i.m = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !1281
  %i.o = trunc i32 %1 to i8                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not = icmp eq i32 %1, 248
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.ajk, %bb.c
  %i.aa = phi i32 [ %i.exk, %bb.ajk ], [ %.pr, %bb.c ] ; 5 uses
  %i.ab = zext nneg i32 %i.aa to i64
end_hunk_0
begin_hunk_1_@sqlite3ValueFromExpr:bb.a
  %i.ag = getelementptr inbounds i8, ptr %.0.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37
  %i.ai = sext i8 %i.ah to i32
  %i.aj = icmp eq i32 %.023.i, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i
  store i8 0, ptr %i.ak, align 1, !tbaa !37
  br label %sqlite3Dequote.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %.sink.i = phi i8 [ %i.aa, %bb.l ], [ %i.ab, %bb.k ]
  %.122.i = phi i32 [ %i.ae, %bb.l ], [ %.02128.i, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.al, align 1, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.am = add nsw i32 %.122.i, 1                  ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %.0.i, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37  ; 2 uses
  %.not.i48 = icmp eq i8 %i.ap, 0
  br i1 %.not.i48, label %sqlite3Dequote.exit, label %bb.k, !llvm.loop !1308

sqlite3Dequote.exit:                              ; preds = %bb.n, %bb.h, %bb.j, %bb.m
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.0.i)
  %.249.i74 = trunc i64 %strlen.i to i32          ; 2 uses
  %i.aq = icmp eq ptr @sqlite3_free, inttoptr (i64 -1 to ptr)
  br i1 %i.aq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %sqlite3Dequote.exit
  %.0.i81 = add nsw i32 %.249.i74, 1              ; 2 uses
  %i.ar = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.s, i32 noundef %.0.i81, i32 noundef 0)
  %.not58.i82 = icmp eq i32 %i.ar, 0
  br i1 %.not58.i82, label %bb.p, label %sqlite3ValueSetStr.exit

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119
  %i.au = sext i32 %.0.i81 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.0.i, i64 %i.au, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %sqlite3Dequote.exit
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.s)
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.0.i, ptr %i.av, align 8, !tbaa !119
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @sqlite3_free, ptr %i.aw, align 8, !tbaa !122
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %.249.i74, ptr %i.ax, align 8, !tbaa !123
  store i16 98, ptr %i.t, align 4, !tbaa !124
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 39
  store i8 1, ptr %i.ay, align 1, !tbaa !125
  store i8 3, ptr %i.u, align 2, !tbaa !126
  br label %sqlite3ValueSetStr.exit

sqlite3ValueSetStr.exit:                          ; preds = %bb.r, %bb.o
  %i.az = and i8 %i.b, 124
  %or.cond7 = icmp eq i8 %i.az, 124
  %i.ba = icmp eq i8 %3, 98
  %or.cond10 = and i1 %i.ba, %or.cond7
  br i1 %or.cond10, label %bb.s, label %bb.v

bb.s:                                             ; preds = %sqlite3ValueSetStr.exit
  tail call fastcc void @applyNumericAffinity(ptr noundef nonnull %i.s)
  %i.bb = load i16, ptr %i.t, align 4, !tbaa !124 ; 2 uses
  %i.bc = and i16 %i.bb, 8
  %.not9.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not9.i.i, label %sqlite3ValueApplyAffinity.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !167 ; 3 uses
  %i.bf = tail call double @llvm.fabs.f64(double %i.be)
  %or.cond.i.i.i.i = fcmp ogt double %i.bf, f0x43E0000000000000
  %i.bg = fptosi double %i.be to i64
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 -9223372036854775808, i64 %i.bg ; 2 uses
  store i64 %.0.i.i.i.i, ptr %i.s, align 8, !tbaa !37
  %i.bh = sitofp i64 %.0.i.i.i.i to double
  %i.bi = fcmp oeq double %i.be, %i.bh
  br i1 %i.bi, label %bb.u, label %sqlite3ValueApplyAffinity.exit

bb.u:                                             ; preds = %bb.t
  %i.bj = or i16 %i.bb, 4
  store i16 %i.bj, ptr %i.t, align 4, !tbaa !124
  br label %sqlite3ValueApplyAffinity.exit

bb.v:                                             ; preds = %sqlite3ValueSetStr.exit
  switch i8 %3, label %bb.z [
    i8 97, label %bb.w
    i8 98, label %sqlite3ValueApplyAffinity.exit
  ]

bb.w:                                             ; preds = %bb.v
  %i.bk = load i16, ptr %i.t, align 4, !tbaa !124 ; 2 uses
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = and i32 %i.bl, 2
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = and i32 %i.bl, 12
  %.not10.i.i = icmp eq i32 %i.bo, 0
  %or.cond.i.i = or i1 %i.bn, %.not10.i.i
  br i1 %or.cond.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = zext i8 %2 to i32
  %i.bq = tail call fastcc i32 @sqlite3VdbeMemStringify(ptr noundef nonnull %i.s, i32 noundef %i.bp) ; 0 uses
  %.pre.i.i = load i16, ptr %i.t, align 4, !tbaa !124
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.br = phi i16 [ %.pre.i.i, %bb.x ], [ %i.bk, %bb.w ]
  %i.bs = and i16 %i.br, -13
  store i16 %i.bs, ptr %i.t, align 4, !tbaa !124
  br label %sqlite3ValueApplyAffinity.exit

bb.z:                                             ; preds = %bb.v
  tail call fastcc void @applyNumericAffinity(ptr noundef nonnull %i.s)
  %i.bt = load i16, ptr %i.t, align 4, !tbaa !124 ; 2 uses
  %i.bu = and i16 %i.bt, 8
  %.not9.i.i50 = icmp eq i16 %i.bu, 0
  br i1 %.not9.i.i50, label %sqlite3ValueApplyAffinity.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !167 ; 3 uses
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %or.cond.i.i.i.i51 = fcmp ogt double %i.bx, f0x43E0000000000000
  %i.by = fptosi double %i.bw to i64
  %.0.i.i.i.i52 = select i1 %or.cond.i.i.i.i51, i64 -9223372036854775808, i64 %i.by ; 2 uses
  store i64 %.0.i.i.i.i52, ptr %i.s, align 8, !tbaa !37
  %i.bz = sitofp i64 %.0.i.i.i.i52 to double
  %i.ca = fcmp oeq double %i.bw, %i.bz
  br i1 %i.ca, label %bb.ab, label %sqlite3ValueApplyAffinity.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cb = or i16 %i.bt, 4
  store i16 %i.cb, ptr %i.t, align 4, !tbaa !124
  br label %sqlite3ValueApplyAffinity.exit

bb.ac:                                            ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1198
  %i.ce = call fastcc i32 @sqlite3ValueFromExpr(ptr noundef %0, ptr noundef %i.cd, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %i.a)
  %i.cf = icmp eq i32 %i.ce, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !216 ; 5 uses
  br i1 %i.cf, label %bb.ad, label %sqlite3ValueApplyAffinity.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load i64, ptr %.pre, align 8, !tbaa !37
  %i.ch = sub nsw i64 0, %i.cg
  store i64 %i.ch, ptr %.pre, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !167
  %i.ck = fneg double %i.cj
  store double %i.ck, ptr %i.ci, align 8, !tbaa !167
  br label %sqlite3ValueApplyAffinity.exit

bb.ae:                                            ; preds = %bb.b
  %.not.i.i.i54 = icmp eq ptr %0, null            ; 2 uses
  br i1 %.not.i.i.i54, label %sqlite3DbMallocRaw.exit.i.i57, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !129
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.ag, label %sqlite3ValueNew.exit59

bb.ag:                                            ; preds = %bb.af
  %i.co = tail call ptr @sqlite3_malloc(i32 noundef 48) ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.cl, align 2, !tbaa !129
  br label %sqlite3ValueNew.exit59

sqlite3DbMallocRaw.exit.i.i57:                    ; preds = %bb.ae
  %i.cq = tail call ptr @sqlite3_malloc(i32 noundef 48) ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i58, label %sqlite3ValueNew.exit59, label %bb.ai

bb.ai:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i57, %bb.ag
  %.0.i11.i.i56 = phi ptr [ %i.cq, %sqlite3DbMallocRaw.exit.i.i57 ], [ %i.co, %bb.ag ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.0.i11.i.i56, i8 0, i64 48, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 36
  store i16 1, ptr %i.cr, align 4, !tbaa !124
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 38
  store i8 5, ptr %i.cs, align 2, !tbaa !126
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 16
  store ptr %0, ptr %i.ct, align 8, !tbaa !130
  br label %sqlite3ValueNew.exit59

sqlite3ValueNew.exit59:                           ; preds = %bb.af, %bb.ah, %sqlite3DbMallocRaw.exit.i.i57, %bb.ai
  %.0.i7.i9.i55 = phi ptr [ %.0.i11.i.i56, %bb.ai ], [ null, %sqlite3DbMallocRaw.exit.i.i57 ], [ null, %bb.ah ], [ null, %bb.af ] ; 14 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cw = load i32, ptr %i.cv, align 8            ; 4 uses
  %i.cx = lshr i32 %i.cw, 1                       ; 2 uses
  %i.cy = add nsw i32 %i.cx, -3
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !1197 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 2      ; 18 uses
  %i.db = sdiv i32 %i.cy, 2                       ; 2 uses
  %i.dc = add nsw i32 %i.db, 1                    ; 2 uses
  br i1 %.not.i.i.i54, label %sqlite3DbMallocRaw.exit.i, label %bb.aj

bb.aj:                                            ; preds = %sqlite3ValueNew.exit59
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !129
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.dg = tail call ptr @sqlite3_malloc(i32 noundef %i.dc) ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.al, label %.preheader.i

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.dd, align 2, !tbaa !129
  br label %bb.as

sqlite3DbMallocRaw.exit.i:                        ; preds = %sqlite3ValueNew.exit59
  %i.di = tail call ptr @sqlite3_malloc(i32 noundef %i.dc) ; 2 uses
  %.not.i65 = icmp eq ptr %i.di, null
  br i1 %.not.i65, label %bb.as, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak, %sqlite3DbMallocRaw.exit.i
  %.0.i32.i = phi ptr [ %i.di, %sqlite3DbMallocRaw.exit.i ], [ %i.dg, %bb.ak ] ; 8 uses
  %i.dj = icmp ugt i32 %i.cw, 9
  br i1 %i.dj, label %.lr.ph.preheader.i, label %bb.at

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.dk = add nsw i32 %i.cx, -4
  %5 = sext i32 %i.dk to i64                      ; 3 uses
  %i.dl = tail call i64 @llvm.smax.i64(i64 %5, i64 2)
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = lshr i64 %i.dm, 1
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cw, 262
  br i1 %min.iters.check, label %.lr.ph.i61.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %smax = tail call i64 @llvm.smax.i64(i64 %5, i64 2)
  %i.dp = add nsw i64 %smax, -1                   ; 2 uses
  %i.dq = lshr i64 %i.dp, 1
  %i.dr = getelementptr i8, ptr %.0.i32.i, i64 %i.dq
  %scevgep = getelementptr i8, ptr %i.dr, i64 1
  %i.ds = and i64 %i.dp, -2
  %i.dt = getelementptr i8, ptr %i.cz, i64 %i.ds
  %scevgep117 = getelementptr i8, ptr %i.dt, i64 4
  %bound0 = icmp ult ptr %.0.i32.i, %scevgep117
  %bound1 = icmp ult ptr %i.da, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i61.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, 9223372036854775792     ; 4 uses
  %i.du = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dv = shl nuw i64 %index, 1                   ; 16 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 14
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %i.er = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 22
  %i.et = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  %i.ez = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 30
  %i.fb = load i8, ptr %i.dw, align 1, !tbaa !37, !alias.scope !1638
  %i.fc = load i8, ptr %i.dy, align 1, !tbaa !37, !alias.scope !1638
  %i.fd = load i8, ptr %i.ea, align 1, !tbaa !37, !alias.scope !1638
  %i.fe = load i8, ptr %i.ec, align 1, !tbaa !37, !alias.scope !1638
  %i.ff = load i8, ptr %i.ee, align 1, !tbaa !37, !alias.scope !1638
  %i.fg = load i8, ptr %i.eg, align 1, !tbaa !37, !alias.scope !1638
  %i.fh = load i8, ptr %i.ei, align 1, !tbaa !37, !alias.scope !1638
  %i.fi = load i8, ptr %i.ek, align 1, !tbaa !37, !alias.scope !1638
  %i.fj = load i8, ptr %i.em, align 1, !tbaa !37, !alias.scope !1638
  %i.fk = load i8, ptr %i.eo, align 1, !tbaa !37, !alias.scope !1638
  %i.fl = load i8, ptr %i.eq, align 1, !tbaa !37, !alias.scope !1638
  %i.fm = load i8, ptr %i.es, align 1, !tbaa !37, !alias.scope !1638
  %i.fn = load i8, ptr %i.eu, align 1, !tbaa !37, !alias.scope !1638
  %i.fo = load i8, ptr %i.ew, align 1, !tbaa !37, !alias.scope !1638
  %i.fp = load i8, ptr %i.ey, align 1, !tbaa !37, !alias.scope !1638
  %i.fq = load i8, ptr %i.fa, align 1, !tbaa !37, !alias.scope !1638
  %i.fr = insertelement <16 x i8> poison, i8 %i.fb, i64 0
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 1
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 2
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 3
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 4
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 5
  %i.fx = insertelement <16 x i8> %i.fw, i8 %i.fh, i64 6
  %i.fy = insertelement <16 x i8> %i.fx, i8 %i.fi, i64 7
  %i.fz = insertelement <16 x i8> %i.fy, i8 %i.fj, i64 8
  %i.ga = insertelement <16 x i8> %i.fz, i8 %i.fk, i64 9
  %i.gb = insertelement <16 x i8> %i.ga, i8 %i.fl, i64 10
  %i.gc = insertelement <16 x i8> %i.gb, i8 %i.fm, i64 11
  %i.gd = insertelement <16 x i8> %i.gc, i8 %i.fn, i64 12
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fo, i64 13
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 14
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 15
  %i.gh = sext <16 x i8> %i.gg to <16 x i32>      ; 3 uses
  %i.gi = add nsw <16 x i32> %i.gh, splat (i32 -48) ; 2 uses
  %i.gj = icmp ugt <16 x i32> %i.gi, splat (i32 9)
  %i.gk = add nsw <16 x i32> %i.gh, splat (i32 -97)
  %i.gl = icmp ult <16 x i32> %i.gk, splat (i32 6)
  %predphi.v = select <16 x i1> %i.gl, <16 x i32> splat (i32 -87), <16 x i32> splat (i32 -55)
  %predphi = add nsw <16 x i32> %predphi.v, %i.gh
  %predphi118 = select <16 x i1> %i.gj, <16 x i32> %predphi, <16 x i32> %i.gi
  %i.gm = shl nsw <16 x i32> %predphi118, splat (i32 4)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dz, i64 5
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eb, i64 7
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ed, i64 9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ef, i64 11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eh, i64 13
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ej, i64 15
  %i.gv = getelementptr inbounds nuw i8, ptr %i.el, i64 17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.en, i64 19
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ep, i64 21
  %i.gy = getelementptr inbounds nuw i8, ptr %i.er, i64 23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 25
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ev, i64 27
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ex, i64 29
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ez, i64 31
  %i.hd = load i8, ptr %i.gn, align 1, !tbaa !37, !alias.scope !1638
  %i.he = load i8, ptr %i.go, align 1, !tbaa !37, !alias.scope !1638
  %i.hf = load i8, ptr %i.gp, align 1, !tbaa !37, !alias.scope !1638
  %i.hg = load i8, ptr %i.gq, align 1, !tbaa !37, !alias.scope !1638
  %i.hh = load i8, ptr %i.gr, align 1, !tbaa !37, !alias.scope !1638
  %i.hi = load i8, ptr %i.gs, align 1, !tbaa !37, !alias.scope !1638
  %i.hj = load i8, ptr %i.gt, align 1, !tbaa !37, !alias.scope !1638
  %i.hk = load i8, ptr %i.gu, align 1, !tbaa !37, !alias.scope !1638
  %i.hl = load i8, ptr %i.gv, align 1, !tbaa !37, !alias.scope !1638
  %i.hm = load i8, ptr %i.gw, align 1, !tbaa !37, !alias.scope !1638
  %i.hn = load i8, ptr %i.gx, align 1, !tbaa !37, !alias.scope !1638
  %i.ho = load i8, ptr %i.gy, align 1, !tbaa !37, !alias.scope !1638
  %i.hp = load i8, ptr %i.gz, align 1, !tbaa !37, !alias.scope !1638
  %i.hq = load i8, ptr %i.ha, align 1, !tbaa !37, !alias.scope !1638
  %i.hr = load i8, ptr %i.hb, align 1, !tbaa !37, !alias.scope !1638
  %i.hs = load i8, ptr %i.hc, align 1, !tbaa !37, !alias.scope !1638
  %i.ht = insertelement <16 x i8> poison, i8 %i.hd, i64 0
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 1
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 2
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 3
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 4
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 5
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 6
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 7
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 8
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 9
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 10
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 11
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 12
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 13
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 14
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 15
  %i.ij = sext <16 x i8> %i.ii to <16 x i32>      ; 3 uses
  %i.ik = add nsw <16 x i32> %i.ij, splat (i32 -48) ; 2 uses
  %i.il = icmp ugt <16 x i32> %i.ik, splat (i32 9)
  %i.im = add nsw <16 x i32> %i.ij, splat (i32 -97)
  %i.in = icmp ult <16 x i32> %i.im, splat (i32 6)
  %predphi119.v = select <16 x i1> %i.in, <16 x i32> splat (i32 169), <16 x i32> splat (i32 201)
  %predphi119 = add nsw <16 x i32> %predphi119.v, %i.ij
  %predphi120 = select <16 x i1> %i.il, <16 x i32> %predphi119, <16 x i32> %i.ik
  %i.io = or <16 x i32> %predphi120, %i.gm
  %i.ip = trunc <16 x i32> %i.io to <16 x i8>
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %index
  store <16 x i8> %i.ip, ptr %i.iq, align 1, !tbaa !37, !alias.scope !1641, !noalias !1638
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !1643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i62.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %i.du, %middle.block ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %hexToInt.exit20.i
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i64, %hexToInt.exit20.i ], [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.i62 ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !37
  %i.iu = sext i8 %i.it to i32                    ; 4 uses
  %i.iv = add nsw i32 %i.iu, -48                  ; 2 uses
  %or.cond.i.i63 = icmp ult i32 %i.iv, 10
  br i1 %or.cond.i.i63, label %hexToInt.exit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i61
  %i.iw = add nsw i32 %i.iu, -97
  %or.cond3.i.i = icmp ult i32 %i.iw, 6
  br i1 %or.cond3.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ix = add nsw i32 %i.iu, -87
  br label %hexToInt.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.iy = add nsw i32 %i.iu, -55
  br label %hexToInt.exit.i

hexToInt.exit.i:                                  ; preds = %bb.ao, %bb.an, %.lr.ph.i61
  %.0.i16.i = phi i32 [ %i.iy, %bb.ao ], [ %i.ix, %bb.an ], [ %i.iv, %.lr.ph.i61 ]
  %i.iz = shl nsw i32 %.0.i16.i, 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !37
  %i.jc = sext i8 %i.jb to i32                    ; 4 uses
  %i.jd = add nsw i32 %i.jc, -48                  ; 2 uses
  %or.cond.i17.i = icmp ult i32 %i.jd, 10
  br i1 %or.cond.i17.i, label %hexToInt.exit20.i, label %bb.ap

bb.ap:                                            ; preds = %hexToInt.exit.i
  %i.je = add nsw i32 %i.jc, -97
  %or.cond3.i18.i = icmp ult i32 %i.je, 6
  br i1 %or.cond3.i18.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jf = add nsw i32 %i.jc, -87
  br label %hexToInt.exit20.i

bb.ar:                                            ; preds = %bb.ap
  %i.jg = add nsw i32 %i.jc, -55
  br label %hexToInt.exit20.i

hexToInt.exit20.i:                                ; preds = %bb.ar, %bb.aq, %hexToInt.exit.i
  %.0.i19.i = phi i32 [ %i.jg, %bb.ar ], [ %i.jf, %bb.aq ], [ %i.jd, %hexToInt.exit.i ]
  %i.jh = or i32 %.0.i19.i, %i.iz
  %i.ji = trunc i32 %i.jh to i8
  %i.jj = lshr exact i64 %indvars.iv.i62, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %i.jj
  store i8 %i.ji, ptr %i.jk, align 1, !tbaa !37
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i62, 2 ; 3 uses
  %6 = icmp slt i64 %indvars.iv.next.i64, %5
  br i1 %6, label %.lr.ph.i61, label %._crit_edge.loopexit.i.loopexit, !llvm.loop !1644

._crit_edge.loopexit.i.loopexit:                  ; preds = %hexToInt.exit20.i
  %i.jl = lshr exact i64 %indvars.iv.next.i64, 1
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.loopexit, %middle.block
  %indvars.iv.next.i64.lcssa = phi i64 [ %n.vec, %middle.block ], [ %i.jl, %._crit_edge.loopexit.i.loopexit ]
  %i.jm = and i64 %indvars.iv.next.i64.lcssa, 2147483647
  br label %bb.at

bb.as:                                            ; preds = %sqlite3DbMallocRaw.exit.i, %bb.al, %bb.aj
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 36 ; 2 uses
  %i.jo = load i16, ptr %i.jn, align 4, !tbaa !124
  %i.jp = and i16 %i.jo, -32
  %i.jq = or disjoint i16 %i.jp, 1
  store i16 %i.jq, ptr %i.jn, align 4, !tbaa !124
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 38
  store i8 5, ptr %i.jr, align 2, !tbaa !126
  br label %sqlite3ValueApplyAffinity.exit

bb.at:                                            ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.jm, %._crit_edge.loopexit.i ]
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %.0.lcssa.i
  store i8 0, ptr %i.js, align 1, !tbaa !37
  %i.jt = icmp ugt i32 %i.cw, 3                   ; 2 uses
  br i1 %i.jt, label %bb.au, label %.preheader63.i

.preheader63.i:                                   ; preds = %bb.at, %.preheader63.i
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %.preheader63.i ], [ 0, %bb.at ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %indvars.iv.i69 ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !37
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !37
  %i.jy = or i8 %i.jx, %i.jv
  %.not55.i = icmp eq i8 %i.jy, 0
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 2
  br i1 %.not55.i, label %.loopexit.i, label %.preheader63.i, !llvm.loop !174

.loopexit.i:                                      ; preds = %.preheader63.i
  %.249.i = trunc i64 %indvars.iv.i69 to i32
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.i, %bb.at
  %.3.i = phi i32 [ %.249.i, %.loopexit.i ], [ %i.db, %bb.at ] ; 2 uses
  %.046.i = phi i16 [ 112, %.loopexit.i ], [ 80, %bb.at ]
  %i.jz = icmp eq ptr @sqlite3_free, inttoptr (i64 -1 to ptr)
  br i1 %i.jz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ka = select i1 %i.jt, i32 0, i32 2
  %.0.i68 = add nsw i32 %.3.i, %i.ka              ; 2 uses
  %i.kb = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef %.0.i7.i9.i55, i32 noundef %.0.i68, i32 noundef 0)
  %.not58.i = icmp eq i32 %i.kb, 0
  br i1 %.not58.i, label %bb.aw, label %sqlite3ValueApplyAffinity.exit

bb.aw:                                            ; preds = %bb.av
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !119
  %i.ke = sext i32 %.0.i68 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kd, ptr nonnull align 1 %.0.i32.i, i64 %i.ke, i1 false)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef %.0.i7.i9.i55)
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 24
  store ptr %.0.i32.i, ptr %i.kf, align 8, !tbaa !119
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 40
  store ptr @sqlite3_free, ptr %i.kg, align 8, !tbaa !122
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 32
  store i32 %.3.i, ptr %i.kh, align 8, !tbaa !123
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 36
  store i16 %.046.i, ptr %i.ki, align 4, !tbaa !124
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 39
  store i8 1, ptr %i.kj, align 1, !tbaa !125
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 38
  store i8 4, ptr %i.kk, align 2, !tbaa !126
  br label %sqlite3ValueApplyAffinity.exit

bb.az:                                            ; preds = %bb.g, %bb.f, %sqlite3DbMallocRaw.exit.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.kl, align 2, !tbaa !129
  %i.km = icmp eq ptr %.0.i, null
  br i1 %i.km, label %sqlite3ValueApplyAffinity.exit, label %sqlite3ValueFree.exit.sink.split

sqlite3_free.exit.i:                              ; preds = %sqlite3ValueNew.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.kn, align 2, !tbaa !129
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.s)
  br label %sqlite3ValueFree.exit.sink.split

sqlite3ValueFree.exit.sink.split:                 ; preds = %bb.az, %sqlite3_free.exit.i
  %.0.i.sink = phi ptr [ %i.s, %sqlite3_free.exit.i ], [ %.0.i, %bb.az ]
  %i.ko = getelementptr inbounds i8, ptr %.0.i.sink, i64 -8 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !28
  %sext.i = shl i64 %i.kp, 32
  %i.kq = ashr exact i64 %sext.i, 32
  %i.kr = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ks = sub nsw i64 %i.kr, %i.kq
  store i64 %i.ks, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ko) #43
  br label %sqlite3ValueApplyAffinity.exit

sqlite3ValueApplyAffinity.exit:                   ; preds = %bb.az, %sqlite3ValueFree.exit.sink.split, %bb.ac, %bb.ad, %bb.b, %bb.s, %bb.t, %bb.u, %bb.v, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.as, %bb.av, %bb.ay, %bb.a
  %.sink = phi ptr [ %.pre, %bb.ac ], [ null, %bb.a ], [ %.0.i7.i9.i55, %bb.ay ], [ %.0.i7.i9.i55, %bb.av ], [ %.0.i7.i9.i55, %bb.as ], [ %i.s, %bb.ab ], [ %i.s, %bb.aa ], [ %i.s, %bb.z ], [ %i.s, %bb.y ], [ %i.s, %bb.v ], [ %i.s, %bb.u ], [ %i.s, %bb.t ], [ %i.s, %bb.s ], [ null, %bb.b ], [ %.pre, %bb.ad ], [ null, %sqlite3ValueFree.exit.sink.split ], [ null, %bb.az ]
  %.0 = phi i32 [ 0, %bb.ac ], [ 0, %bb.a ], [ 0, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.as ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.b ], [ 0, %bb.ad ], [ 7, %sqlite3ValueFree.exit.sink.split ], [ 7, %bb.az ]
  store ptr %.sink, ptr %4, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3HexToBlob(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -3, 2147483645) %2) unnamed_addr #5 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = add nsw i32 %i.a, 1                      ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %sqlite3DbMallocRaw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !129
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %sqlite3DbMallocRaw.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @sqlite3_malloc(i32 noundef %i.b) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.c, align 2, !tbaa !129
  br label %sqlite3DbMallocRaw.exit.thread

sqlite3DbMallocRaw.exit:                          ; preds = %bb.a
  %i.h = tail call ptr @sqlite3_malloc(i32 noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %sqlite3DbMallocRaw.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %sqlite3DbMallocRaw.exit
  %.0.i32 = phi ptr [ %i.h, %sqlite3DbMallocRaw.exit ], [ %i.f, %bb.c ] ; 3 uses
  %i.i = icmp sgt i32 %2, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = add nsw i32 %2, -1
  %i.k = sext i32 %i.j to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %hexToInt.exit20
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %hexToInt.exit20 ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32                      ; 4 uses
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.o, 10
  br i1 %or.cond.i, label %hexToInt.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.p = add nsw i32 %i.n, -97
  %or.cond3.i = icmp ult i32 %i.p, 6
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.n, -87
  br label %hexToInt.exit

bb.g:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.n, -55
  br label %hexToInt.exit

hexToInt.exit:                                    ; preds = %.lr.ph, %bb.f, %bb.g
  %.0.i16 = phi i32 [ %i.r, %bb.g ], [ %i.q, %bb.f ], [ %i.o, %.lr.ph ]
  %i.s = shl nsw i32 %.0.i16, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37
  %i.v = sext i8 %i.u to i32                      ; 4 uses
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %or.cond.i17 = icmp ult i32 %i.w, 10
  br i1 %or.cond.i17, label %hexToInt.exit20, label %bb.h

bb.h:                                             ; preds = %hexToInt.exit
  %i.x = add nsw i32 %i.v, -97
  %or.cond3.i18 = icmp ult i32 %i.x, 6
  br i1 %or.cond3.i18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.v, -87
  br label %hexToInt.exit20

bb.j:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.v, -55
  br label %hexToInt.exit20

hexToInt.exit20:                                  ; preds = %hexToInt.exit, %bb.i, %bb.j
  %.0.i19 = phi i32 [ %i.z, %bb.j ], [ %i.y, %bb.i ], [ %i.w, %hexToInt.exit ]
  %i.aa = or i32 %.0.i19, %i.s
end_hunk_1
begin_hunk_2_@sqlite3CodeSubselect:bb.a
  br i1 %.not.i.i172, label %sqlite3VdbeAddOp2.exit171.sink.split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not23.i.i173 = icmp eq i32 %i.my, 0
  %i.mz = shl nsw i32 %i.my, 1
  %spec.select.i.i174 = select i1 %.not23.i.i173, i32 42, i32 %i.mz ; 4 uses
  %i.na = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 42 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 2, !tbaa !129
  %i.ne = icmp eq i8 %i.nd, 0
  br i1 %i.ne, label %bb.bu, label %resizeOpArray.exit.i.i175

bb.bu:                                            ; preds = %bb.bt
  %i.nf = mul i32 %spec.select.i.i174, 24
  %i.ng = load ptr, ptr %i.nb, align 8, !tbaa !136
  %i.nh = tail call ptr @sqlite3_realloc(ptr noundef %i.ng, i32 noundef %i.nf) ; 3 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i180, label %bb.bv, label %sqlite3DbRealloc.exit.i.i.i181

bb.bv:                                            ; preds = %bb.bu
  store i8 1, ptr %i.nc, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i175

sqlite3DbRealloc.exit.i.i.i181:                   ; preds = %bb.bu
  store i32 %spec.select.i.i174, ptr %i.mc, align 4, !tbaa !147
  store ptr %i.nh, ptr %i.nb, align 8, !tbaa !136
  %i.ni = icmp sgt i32 %spec.select.i.i174, %i.my
  br i1 %i.ni, label %bb.bw, label %resizeOpArray.exit.i.i175

bb.bw:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i181
  %i.nj = sext i32 %i.my to i64
  %i.nk = getelementptr inbounds [24 x i8], ptr %i.nh, i64 %i.nj
  %i.nl = sub nsw i32 %spec.select.i.i174, %i.my
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = mul nuw nsw i64 %i.nm, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nk, i8 0, i64 %i.nn, i1 false)
  br label %resizeOpArray.exit.i.i175

resizeOpArray.exit.i.i175:                        ; preds = %bb.bw, %sqlite3DbRealloc.exit.i.i.i181, %bb.bv, %bb.bt
  %i.no = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 42
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !129
  %.not24.i.i176 = icmp eq i8 %i.nq, 0
  br i1 %.not24.i.i176, label %sqlite3VdbeAddOp2.exit171.sink.split.sink.split, label %sqlite3VdbeAddOp2.exit171

sqlite3VdbeAddOp2.exit171.sink.split.sink.split:  ; preds = %resizeOpArray.exit.i.i175, %resizeOpArray.exit.i.i164
  %.sink260.ph = phi i32 [ %i.md, %resizeOpArray.exit.i.i164 ], [ %i.mx, %resizeOpArray.exit.i.i175 ]
  %.sink.ph = phi i8 [ 112, %resizeOpArray.exit.i.i164 ], [ 46, %resizeOpArray.exit.i.i175 ]
  %.pre.i.i179 = load i32, ptr %i.mb, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit171.sink.split

sqlite3VdbeAddOp2.exit171.sink.split:             ; preds = %sqlite3VdbeAddOp2.exit171.sink.split.sink.split, %bb.bs, %bb.bn
  %.sink263 = phi i32 [ %i.md, %bb.bn ], [ %i.mx, %bb.bs ], [ %.pre.i.i179, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %.sink260 = phi i32 [ %i.md, %bb.bn ], [ %i.mx, %bb.bs ], [ %.sink260.ph, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %.sink = phi i8 [ 112, %bb.bn ], [ 46, %bb.bs ], [ %.sink.ph, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %i.nr = add nsw i32 %.sink263, 1
  store i32 %i.nr, ptr %i.mb, align 8, !tbaa !135
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !136
  %i.nu = sext i32 %.sink260 to i64
  %i.nv = getelementptr inbounds [24 x i8], ptr %i.nt, i64 %i.nu ; 6 uses
  store i8 %.sink, ptr %i.nv, align 8, !tbaa !137
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 0, ptr %i.nw, align 4, !tbaa !141
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 %i.lw, ptr %i.nx, align 8, !tbaa !140
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  store i32 0, ptr %i.ny, align 4, !tbaa !190
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store ptr null, ptr %i.nz, align 8, !tbaa !37
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  store i8 0, ptr %i.oa, align 1, !tbaa !191
  %i.ob = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.ob, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit171

sqlite3VdbeAddOp2.exit171:                        ; preds = %sqlite3VdbeAddOp2.exit171.sink.split, %resizeOpArray.exit.i.i175, %resizeOpArray.exit.i.i164
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lt, i64 80 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !1221
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.od)
  %.val = load ptr, ptr %0, align 8, !tbaa !244   ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i187, label %sqlite3DbMallocRaw.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %sqlite3VdbeAddOp2.exit171
  %i.oe = getelementptr inbounds nuw i8, ptr %.val, i64 42 ; 2 uses
  %i.of = load i8, ptr %i.oe, align 2, !tbaa !129
  %i.og = icmp eq i8 %i.of, 0
  br i1 %i.og, label %bb.by, label %sqlite3Expr.exit

bb.by:                                            ; preds = %bb.bx
  %i.oh = tail call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i8 1, ptr %i.oe, align 2, !tbaa !129
  br label %sqlite3Expr.exit

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %sqlite3VdbeAddOp2.exit171
  %i.oj = tail call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i189, label %sqlite3Expr.exit, label %bb.ca

bb.ca:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i, %bb.by
  %.0.i11.i.i = phi ptr [ %i.oj, %sqlite3DbMallocRaw.exit.i.i ], [ %i.oh, %bb.by ] ; 8 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.ok, i8 0, i64 119, i1 false)
  store i8 124, ptr %.0.i11.i.i, align 8, !tbaa !1311
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.om, align 8, !tbaa !1312
  %i.on = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 56
  %i.oo = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull align 8 dereferenceable(16) @sqlite3CodeSubselect.one, i64 16, i1 false), !tbaa.struct !1313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(16) @sqlite3CodeSubselect.one, i64 16, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 112
  store i32 1, ptr %i.op, align 8, !tbaa !1314
  br label %sqlite3Expr.exit

sqlite3Expr.exit:                                 ; preds = %bb.bx, %bb.bz, %sqlite3DbMallocRaw.exit.i.i, %bb.ca
  %.0.i188 = phi ptr [ %.0.i11.i.i, %bb.ca ], [ null, %sqlite3DbMallocRaw.exit.i.i ], [ null, %bb.bz ], [ null, %bb.bx ]
  store ptr %.0.i188, ptr %i.oc, align 8, !tbaa !1221
  %i.oq = call fastcc i32 @sqlite3Select(ptr noundef nonnull %0, ptr noundef nonnull %i.lt, ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.not84 = icmp eq i32 %i.oq, 0
  br i1 %.not84, label %bb.cb, label %.critedge96

bb.cb:                                            ; preds = %sqlite3Expr.exit
  %i.or = load i32, ptr %i.lx, align 4, !tbaa !1410
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.or, ptr %i.os, align 4, !tbaa !1360
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %sqlite3VdbeChangeP4.exit, %sqlite3VdbeAddOp2.exit
  %.5 = phi i32 [ %.0, %sqlite3VdbeAddOp2.exit ], [ %.3, %sqlite3VdbeChangeP4.exit ], [ %.0, %bb.cb ] ; 4 uses
  %.not92 = icmp eq i32 %.5, 0
  br i1 %.not92, label %sqlite3VdbeJumpHere.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !135 ; 2 uses
  %i.ov = icmp sgt i32 %.5, 0
  %i.ow = icmp sge i32 %i.ou, %.5
  %or.cond.i = select i1 %i.ov, i1 %i.ow, i1 false
  br i1 %or.cond.i, label %bb.ce, label %sqlite3VdbeJumpHere.exit

bb.ce:                                            ; preds = %bb.cd
  %i.ox = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !136 ; 2 uses
  %.not.i.i183 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i183, label %sqlite3VdbeJumpHere.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oz = zext nneg i32 %.5 to i64
  %i.pa = getelementptr [24 x i8], ptr %i.oy, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 -16
  store i32 %i.ou, ptr %i.pb, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit

.critedge94:                                      ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %sqlite3VdbeJumpHere.exit

.critedge96:                                      ; preds = %sqlite3Expr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %.critedge96, %.critedge94, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3ExprCodeTarget(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.Expr, align 8               ; 6 uses
  %4 = alloca %struct.Expr, align 8               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !367  ; 98 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store i32 0, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  store i32 0, ptr %i.c, align 4, !tbaa !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %sqlite3ReleaseTempReg.exit468, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %1, align 8, !tbaa !1311    ; 5 uses
  %i.j = zext nneg i8 %i.i to i32
  switch i8 %i.i, label %sqlite3VdbeAddOp3.exitthread-pre-split [
    i8 -105, label %bb.d
    i8 -107, label %bb.h
    i8 124, label %bb.k
    i8 125, label %bb.l
    i8 88, label %bb.m
    i8 92, label %.thread
    i8 126, label %bb.s
    i8 -128, label %bb.t
    i8 127, label %bb.v
    i8 31, label %bb.w
    i8 71, label %bb.x
    i8 70, label %bb.x
    i8 69, label %bb.x
    i8 72, label %bb.x
    i8 67, label %bb.x
    i8 68, label %bb.x
    i8 61, label %bb.ah
    i8 60, label %bb.ah
    i8 78, label %bb.ah
    i8 80, label %bb.ah
    i8 79, label %bb.ah
    i8 82, label %bb.ah
    i8 74, label %bb.ah
    i8 75, label %bb.ah
    i8 81, label %bb.ah
    i8 76, label %bb.ah
    i8 77, label %bb.ah
    i8 83, label %bb.ah
    i8 85, label %bb.aw
    i8 87, label %bb.bd
    i8 16, label %bb.bd
    i8 65, label %bb.bj
    i8 66, label %bb.bj
    i8 -106, label %bb.ce
    i8 -104, label %bb.ch
    i8 -108, label %bb.ch
    i8 17, label %bb.dm
    i8 110, label %bb.dm
    i8 64, label %bb.do
    i8 63, label %bb.ed
    i8 86, label %bb.ek
    i8 -127, label %bb.el
    i8 48, label %bb.fi
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1836 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1473
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1312
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.l, align 8, !tbaa !1485
  %.not355 = icmp eq i8 %i.s, 0
  br i1 %.not355, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1799
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !1484
  %.not356 = icmp eq i8 %i.w, 0
  br i1 %.not356, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1472
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1474
  %i.ab = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %i.f, i32 noundef 2, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %2) ; 0 uses
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1330 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1360
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1837
  %i.aj = add nsw i32 %i.ai, %i.ag
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1581
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1360
  tail call fastcc void @sqlite3ExprCodeGetColumn(ptr noundef %i.f, ptr noundef %i.al, i32 noundef %i.an, i32 noundef %i.ad, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.k:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1197
  tail call fastcc void @codeInteger(ptr noundef %i.f, ptr noundef %i.ap, i32 noundef 0, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.l:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1197
  tail call fastcc void @codeReal(ptr noundef %i.f, ptr noundef %i.ar, i32 noundef 0, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.m:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8, !tbaa !244
  tail call fastcc void @sqlite3DequoteExpr(ptr noundef %i.as, ptr noundef nonnull %1)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1197
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.f, i32 noundef 88, i32 noundef 0, i32 noundef %2, i32 noundef 0, ptr noundef %i.au, i32 noundef %i.ax) ; 0 uses
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

.thread:                                          ; preds = %bb.b, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !135 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !147 ; 6 uses
  %.not.i.i643 = icmp sgt i32 %i.bc, %i.ba
  br i1 %.not.i.i643, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread
  %.not23.i.i644 = icmp eq i32 %i.bc, 0
  %i.bd = shl nsw i32 %i.bc, 1
  %spec.select.i.i645 = select i1 %.not23.i.i644, i32 42, i32 %i.bd ; 4 uses
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 42 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !129
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %resizeOpArray.exit.i.i646

bb.o:                                             ; preds = %bb.n
  %i.bj = mul i32 %spec.select.i.i645, 24
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !136
  %i.bl = tail call ptr @sqlite3_realloc(ptr noundef %i.bk, i32 noundef %i.bj) ; 3 uses
  %.not.i.i.i.i650 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i650, label %bb.p, label %sqlite3DbRealloc.exit.i.i.i651

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bg, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i646

sqlite3DbRealloc.exit.i.i.i651:                   ; preds = %bb.o
  store i32 %spec.select.i.i645, ptr %i.bb, align 4, !tbaa !147
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !136
  %i.bm = icmp sgt i32 %spec.select.i.i645, %i.bc
  br i1 %i.bm, label %bb.q, label %resizeOpArray.exit.i.i646

bb.q:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i651
  %i.bn = sext i32 %i.bc to i64
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = sub nsw i32 %spec.select.i.i645, %i.bc
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %i.bq, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bo, i8 0, i64 %i.br, i1 false)
  br label %resizeOpArray.exit.i.i646

resizeOpArray.exit.i.i646:                        ; preds = %bb.q, %sqlite3DbRealloc.exit.i.i.i651, %bb.p, %bb.n
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 42
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !129
  %.not24.i.i647 = icmp eq i8 %i.bu, 0
  br i1 %.not24.i.i647, label %resizeOpArray.exit._crit_edge.i.i648, label %sqlite3VdbeAddOp3.exitthread-pre-split

resizeOpArray.exit._crit_edge.i.i648:             ; preds = %resizeOpArray.exit.i.i646
  %.pre.i.i649 = load i32, ptr %i.az, align 8, !tbaa !135
  br label %bb.r

bb.r:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i648, %.thread
  %i.bv = phi i32 [ %.pre.i.i649, %resizeOpArray.exit._crit_edge.i.i648 ], [ %i.ba, %.thread ]
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.az, align 8, !tbaa !135
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !136
  %i.bz = sext i32 %i.ba to i64
  %i.ca = getelementptr inbounds [24 x i8], ptr %i.by, i64 %i.bz ; 6 uses
  store i8 112, ptr %i.ca, align 8, !tbaa !137
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 0, ptr %i.cb, align 4, !tbaa !141
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %2, ptr %i.cc, align 8, !tbaa !140
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !190
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr null, ptr %i.ce, align 8, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 0, ptr %i.cf, align 1, !tbaa !191
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 339
  store i8 0, ptr %i.cg, align 1, !tbaa !104
end_hunk_2
begin_hunk_3_@computeYMD_HMS:bb.a
  %i.m = add i32 %i.l, %i.k
  %i.n = add i32 %i.m, %.neg.i                    ; 2 uses
  %i.o = sitofp i32 %i.n to double
  %i.p = fadd double %i.o, -1.221000e+02
  %i.q = fdiv double %i.p, 3.652500e+02
  %i.r = fptosi double %i.q to i32                ; 2 uses
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul nnan double %i.s, 3.652500e+02
  %i.u = fptosi double %i.t to i32
  %i.v = sub nsw i32 %i.n, %i.u                   ; 2 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fdiv double %i.w, 3.060010e+01
  %i.y = fptosi double %i.x to i32                ; 3 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fmul nnan double %i.z, 3.060010e+01
  %i.ab = fptosi double %i.aa to i32
  %i.ac = sub nsw i32 %i.v, %i.ab
  %i.ad = icmp slt i32 %i.y, 14
  %.v.i = select i1 %i.ad, i32 -1, i32 -13
  %i.ae = add nsw i32 %.v.i, %i.y                 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 2
  %.v29.i = select i1 %i.af, i32 -4716, i32 -4715
  %i.ag = add nsw i32 %.v29.i, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink31.i = phi i32 [ %i.ag, %bb.c ], [ 2000, %bb.b ]
  %.sink30.i = phi i32 [ %i.ae, %bb.c ], [ 1, %bb.b ]
  %.sink.i = phi i32 [ %i.ac, %bb.c ], [ 1, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink31.i, ptr %i.ah, align 8, !tbaa !1967
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink30.i, ptr %i.ai, align 4, !tbaa !1968
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink.i, ptr %i.aj, align 8, !tbaa !1969
  store i8 1, ptr %i.a, align 8, !tbaa !1959
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %bb.a, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !1961
  %.not.i2 = icmp eq i8 %i.al, 0
  br i1 %.not.i2, label %bb.e, label %computeHMS.exit

bb.e:                                             ; preds = %computeYMD.exit
  tail call fastcc void @computeJD(ptr noundef nonnull %0)
  %i.am = load double, ptr %0, align 8, !tbaa !1960
  %i.an = fadd double %i.am, 5.000000e-01         ; 2 uses
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double 8.640000e+07, double 5.000000e-01)
  %i.as = fptosi double %i.ar to i32
  %i.at = sitofp i32 %i.as to double
  %i.au = fmul nnan double %i.at, 1.000000e-03    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = fptosi double %i.au to i32              ; 3 uses
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fsub double %i.au, %i.ax
  %i.az = sdiv i32 %i.aw, 3600                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !1962
  %.neg.i3 = mul nsw i32 %i.az, -3600
  %i.bb = add i32 %.neg.i3, %i.aw                 ; 2 uses
  %i.bc = sdiv i32 %i.bb, 60                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1963
  %.neg19.i = mul nsw i32 %i.bc, -60
  %i.be = add i32 %.neg19.i, %i.bb
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fadd double %i.ay, %i.bf
  store double %i.bg, ptr %i.av, align 8, !tbaa !1964
  store i8 1, ptr %i.ak, align 1, !tbaa !1961
  br label %computeHMS.exit

computeHMS.exit:                                  ; preds = %computeYMD.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @computeYMD(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1959
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1957
  %.not28 = icmp eq i8 %i.d, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !tbaa !1960
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 2 uses
  %i.h = sitofp i32 %i.g to double
  %i.i = fadd double %i.h, f0xC13C7DD040000000
  %i.j = fdiv double %i.i, f0x40E1D58800000000
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %.neg = sdiv i32 %i.k, -4
  %i.l = add i32 %i.g, 1525
  %i.m = add i32 %i.l, %i.k
  %i.n = add i32 %i.m, %.neg                      ; 2 uses
  %i.o = sitofp i32 %i.n to double
  %i.p = fadd double %i.o, -1.221000e+02
  %i.q = fdiv double %i.p, 3.652500e+02
  %i.r = fptosi double %i.q to i32                ; 2 uses
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul nnan double %i.s, 3.652500e+02
  %i.u = fptosi double %i.t to i32
  %i.v = sub nsw i32 %i.n, %i.u                   ; 2 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fdiv double %i.w, 3.060010e+01
  %i.y = fptosi double %i.x to i32                ; 3 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fmul nnan double %i.z, 3.060010e+01
  %i.ab = fptosi double %i.aa to i32
  %i.ac = sub nsw i32 %i.v, %i.ab
  %i.ad = icmp slt i32 %i.y, 14
  %.v = select i1 %i.ad, i32 -1, i32 -13
  %i.ae = add nsw i32 %.v, %i.y                   ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 2
  %.v29 = select i1 %i.af, i32 -4716, i32 -4715
  %i.ag = add nsw i32 %.v29, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink31 = phi i32 [ %i.ag, %bb.c ], [ 2000, %bb.b ]
  %.sink30 = phi i32 [ %i.ae, %bb.c ], [ 1, %bb.b ]
  %.sink = phi i32 [ %i.ac, %bb.c ], [ 1, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink31, ptr %i.ah, align 8, !tbaa !1967
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink30, ptr %i.ai, align 4, !tbaa !1968
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.aj, align 8, !tbaa !1969
  store i8 1, ptr %i.a, align 8, !tbaa !1959
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #32

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #41 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { nounwind }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind willreturn memory(none) }
attributes #47 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS11sqlite3_vfs", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"sqlite3_vfs", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16, !13, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!12, !9, i64 16}
!17 = distinct !{!17, !15}
!18 = !{!19, !21, i64 32}
!19 = !{!"", !20, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !21, i64 32, !20, i64 40, !20, i64 48}
!20 = !{!"long long", !6, i64 0}
!21 = !{!"p1 _ZTS13sqlite3_mutex", !10, i64 0}
!22 = !{!19, !20, i64 40}
!23 = !{!19, !20, i64 48}
!24 = !{!19, !10, i64 8}
!25 = !{!19, !10, i64 16}
!26 = !{!19, !20, i64 0}
!27 = distinct !{null}
!28 = !{!20, !20, i64 0}
!29 = !{!30, !13, i64 0}
!30 = !{!"StrAccum", !13, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 25, !6, i64 26}
!31 = !{!30, !13, i64 8}
!32 = !{!30, !5, i64 16}
!33 = !{!30, !5, i64 20}
!34 = !{!30, !6, i64 25}
!35 = !{!30, !6, i64 26}
!36 = !{!30, !6, i64 24}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = !{!43, !6, i64 3}
!43 = !{!"et_info", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5}
!44 = !{!45, !45, i64 0}
!45 = !{!"long", !6, i64 0}
!46 = !{!43, !6, i64 4}
!47 = !{!43, !6, i64 1}
!48 = distinct !{!48, !15}
!49 = !{!43, !6, i64 5}
!50 = distinct !{!50, !15}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !6, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15, !65, !66}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!"branch_weights", i32 8, i32 24}
!68 = distinct !{!68, !15, !65, !66}
!69 = distinct !{!69, !15, !65}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 int", !10, i64 0}
!72 = !{!13, !13, i64 0}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTS5Token", !10, i64 0}
!77 = !{!78, !13, i64 0}
!78 = !{!"Token", !13, i64 0, !5, i64 8, !5, i64 8}
!79 = !{!80, !80, i64 0}
!80 = !{!"p1 _ZTS7SrcList", !10, i64 0}
!81 = !{!82, !13, i64 0}
!82 = !{!"SrcList_item", !13, i64 0, !13, i64 8, !13, i64 16, !83, i64 24, !84, i64 32, !6, i64 40, !6, i64 41, !5, i64 44, !85, i64 48, !86, i64 56, !20, i64 64}
!83 = !{!"p1 _ZTS5Table", !10, i64 0}
!84 = !{!"p1 _ZTS6Select", !10, i64 0}
!85 = !{!"p1 _ZTS4Expr", !10, i64 0}
!86 = !{!"p1 _ZTS6IdList", !10, i64 0}
!87 = !{!82, !13, i64 8}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = !{!91, !13, i64 472}
!91 = !{!"Vdbe", !92, i64 0, !93, i64 8, !93, i64 16, !5, i64 24, !5, i64 28, !94, i64 32, !5, i64 40, !5, i64 44, !71, i64 48, !95, i64 56, !97, i64 64, !5, i64 72, !98, i64 80, !5, i64 88, !97, i64 96, !99, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !97, i64 128, !5, i64 136, !5, i64 140, !100, i64 144, !5, i64 168, !5, i64 172, !102, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !6, i64 204, !5, i64 304, !5, i64 308, !99, i64 312, !13, i64 320, !97, i64 328, !6, i64 336, !6, i64 337, !6, i64 338, !6, i64 339, !6, i64 340, !6, i64 341, !5, i64 344, !20, i64 352, !5, i64 360, !103, i64 368, !5, i64 464, !13, i64 472, !5, i64 480}
!92 = !{!"p1 _ZTS7sqlite3", !10, i64 0}
!93 = !{!"p1 _ZTS4Vdbe", !10, i64 0}
!94 = !{!"p1 _ZTS6VdbeOp", !10, i64 0}
!95 = !{!"p2 _ZTS3Mem", !96, i64 0}
!96 = !{!"any p2 pointer", !10, i64 0}
!97 = !{!"p1 _ZTS3Mem", !10, i64 0}
!98 = !{!"p2 _ZTS6Cursor", !96, i64 0}
!99 = !{!"p2 omnipotent char", !96, i64 0}
!100 = !{!"Fifo", !5, i64 0, !101, i64 8, !101, i64 16}
!101 = !{!"p1 _ZTS8FifoPage", !10, i64 0}
!102 = !{!"p1 _ZTS7Context", !10, i64 0}
!103 = !{!"BtreeMutexArray", !5, i64 0, !6, i64 8}
!104 = !{!91, !6, i64 339}
!105 = !{!91, !5, i64 116}
!106 = !{!91, !92, i64 0}
!107 = !{!91, !5, i64 184}
!108 = !{!91, !13, i64 320}
!109 = !{!110, !97, i64 240}
!110 = !{!"sqlite3", !9, i64 0, !5, i64 8, !111, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !5, i64 44, !112, i64 48, !20, i64 56, !20, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !21, i64 88, !113, i64 96, !5, i64 108, !96, i64 112, !93, i64 120, !5, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !97, i64 240, !13, i64 248, !13, i64 256, !6, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !5, i64 304, !114, i64 312, !83, i64 344, !117, i64 352, !5, i64 360, !114, i64 368, !114, i64 400, !118, i64 432, !5, i64 456, !6, i64 464, !6, i64 560}
!111 = !{!"p1 _ZTS2Db", !10, i64 0}
!112 = !{!"p1 _ZTS7CollSeq", !10, i64 0}
!113 = !{!"sqlite3InitInfo", !5, i64 0, !5, i64 4, !6, i64 8}
!114 = !{!"Hash", !6, i64 0, !6, i64 1, !5, i64 4, !5, i64 8, !115, i64 16, !116, i64 24}
!115 = !{!"p1 _ZTS8HashElem", !10, i64 0}
!116 = !{!"p1 _ZTS3_ht", !10, i64 0}
!117 = !{!"p2 _ZTS12sqlite3_vtab", !96, i64 0}
!118 = !{!"BusyHandler", !10, i64 0, !10, i64 8, !5, i64 16}
!119 = !{!120, !13, i64 24}
!120 = !{!"Mem", !6, i64 0, !52, i64 8, !92, i64 16, !13, i64 24, !5, i64 32, !121, i64 36, !6, i64 38, !6, i64 39, !10, i64 40}
!121 = !{!"short", !6, i64 0}
!122 = !{!120, !10, i64 40}
!123 = !{!120, !5, i64 32}
!124 = !{!120, !121, i64 36}
!125 = !{!120, !6, i64 39}
!126 = !{!120, !6, i64 38}
!127 = !{!91, !5, i64 188}
!128 = !{!110, !5, i64 32}
!129 = !{!110, !6, i64 42}
!130 = !{!120, !92, i64 16}
!131 = !{!91, !6, i64 338}
!132 = !{!110, !5, i64 36}
!133 = !{!91, !97, i64 128}
!134 = !{!91, !71, i64 48}
!135 = !{!91, !5, i64 24}
!136 = !{!91, !94, i64 32}
!137 = !{!138, !6, i64 0}
!138 = !{!"VdbeOp", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16}
!139 = !{!138, !6, i64 3}
!140 = !{!138, !5, i64 8}
!141 = !{!138, !5, i64 4}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15, !65, !66}
!144 = !{!"branch_weights", i32 8, i32 8}
end_hunk_3
