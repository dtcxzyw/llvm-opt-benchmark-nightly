Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/urlmatch?download=true
inline.NumInlined: 30
inline.NumDeleted: 11
begin_hunk_0_@url_normalize_1:bb.a

strbuf_avail.exit.thread.i330:                    ; preds = %strbuf_avail.exit.i326, %bb.ap
  call void @strbuf_grow(ptr noundef nonnull %3, i64 noundef 1) #14
  %.pre.i332 = load i64, ptr %i.cs, align 8, !tbaa !20 ; 2 uses
  %.pre7.i333 = add i64 %.pre.i332, 1
  br label %strbuf_addch.exit334

strbuf_addch.exit334:                             ; preds = %strbuf_avail.exit.i326, %strbuf_avail.exit.thread.i330
  %.pre-phi.i329 = phi i64 [ %.pre7.i333, %strbuf_avail.exit.thread.i330 ], [ %.neg.i327, %strbuf_avail.exit.i326 ]
  %i.dg = phi i64 [ %.pre.i332, %strbuf_avail.exit.thread.i330 ], [ %i.df, %strbuf_avail.exit.i326 ]
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !21
  store i64 %.pre-phi.i329, ptr %i.cs, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 %spec.select.i324378, ptr %i.di, align 1, !tbaa !12
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !21
  %i.dk = load i64, ptr %i.cs, align 8, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  store i8 0, ptr %i.dl, align 1, !tbaa !12
  %exitcond.not = icmp eq ptr %i.cx, %.1207
  br i1 %exitcond.not, label %._crit_edge411.loopexit, label %bb.ap, !llvm.loop !39

._crit_edge411.loopexit:                          ; preds = %strbuf_addch.exit334
  %i.dm = add i64 %.0225, %i.co
  %i.dn = sub i64 %i.dm, %i.cn
  br label %._crit_edge411

._crit_edge411:                                   ; preds = %._crit_edge411.loopexit, %.preheader396
  %.2236.lcssa = phi ptr [ %.1235, %.preheader396 ], [ %i.cx, %._crit_edge411.loopexit ] ; 2 uses
  %.1226.lcssa = phi i64 [ %.0225, %.preheader396 ], [ %i.dn, %._crit_edge411.loopexit ] ; 2 uses
  %i.do = icmp ult ptr %.1207, %i.ao
  br i1 %i.do, label %bb.aq, label %bb.bg

bb.aq:                                            ; preds = %._crit_edge411
  %i.dp = getelementptr inbounds nuw i8, ptr %.2236.lcssa, i64 1 ; 2 uses
  %i.dq = call i64 @strspn(ptr noundef nonnull %i.dp, ptr noundef nonnull @.str.15) #13
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %i.ao
  br i1 %i.ds, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -1 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.dv = icmp eq i8 %i.du, 48
  %spec.select = select i1 %i.dv, ptr %i.dt, ptr %i.dr
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3237 = phi ptr [ %i.dr, %bb.aq ], [ %spec.select, %bb.ar ] ; 10 uses
  %i.dw = icmp eq ptr %.3237, %i.ao
  %.pre439 = ptrtoint ptr %i.ao to i64            ; 2 uses
  br i1 %i.dw, label %._crit_edge436, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dx = ptrtoint ptr %.3237 to i64
  %i.dy = sub i64 %.pre439, %i.dx                 ; 5 uses
  switch i64 %i.dy, label %.tail.thread [
    i64 2, label %bb.au
    i64 3, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !21
  %i.eb = call zeroext i1 @starts_with(ptr noundef %i.ea, ptr noundef nonnull @.str.16) #14
  br i1 %i.eb, label %sub_0, label %.tail.thread

sub_0:                                            ; preds = %bb.au
  %i.ec = load i8, ptr %.3237, align 1
  %.not420 = icmp eq i8 %i.ec, 56
  br i1 %.not420, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.ed = getelementptr inbounds nuw i8, ptr %.3237, i64 1
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = icmp eq i8 %i.ee, 48
  br i1 %i.ef, label %._crit_edge436, label %.tail.thread

bb.av:                                            ; preds = %bb.at
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !21
  %i.ei = call zeroext i1 @starts_with(ptr noundef %i.eh, ptr noundef nonnull @.str.18) #14
  br i1 %i.ei, label %sub_0380, label %.tail.thread

sub_0380:                                         ; preds = %bb.av
  %i.ej = load i8, ptr %.3237, align 1
  %.not418 = icmp eq i8 %i.ej, 52
  br i1 %.not418, label %sub_1381, label %.tail.thread

sub_1381:                                         ; preds = %sub_0380
  %i.ek = getelementptr inbounds nuw i8, ptr %.3237, i64 1
  %i.el = load i8, ptr %i.ek, align 1
  %.not419 = icmp eq i8 %i.el, 52
  br i1 %.not419, label %.tail379, label %.tail.thread

.tail379:                                         ; preds = %sub_1381
  %i.em = getelementptr inbounds nuw i8, ptr %.3237, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = icmp eq i8 %i.en, 51
  br i1 %i.eo, label %._crit_edge436, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1381, %sub_0380, %sub_0, %bb.au, %.tail, %bb.at, %.tail379, %bb.av
  %i.ep = call i64 @strspn(ptr noundef nonnull %.3237, ptr noundef nonnull @.str.20) #13
  %i.eq = icmp ult i64 %i.ep, %i.dy
  br i1 %i.eq, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %.tail.thread
  %.not287 = icmp eq ptr %1, null
  br i1 %.not287, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.er = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i335 = icmp eq i32 %i.er, 0
  br i1 %.not4.i335, label %_.exit337, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.es = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #14
  br label %_.exit337

_.exit337:                                        ; preds = %bb.ax, %bb.ay
  %.0.i336 = phi ptr [ %i.es, %bb.ay ], [ @.str.21, %bb.ax ]
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i336, ptr %i.et, align 8, !tbaa !42
  br label %bb.az

bb.az:                                            ; preds = %_.exit337, %bb.aw
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.ba:                                            ; preds = %.tail.thread
  %i.eu = icmp slt i64 %i.dy, 6
  br i1 %i.eu, label %bb.bb, label %.critedge311

bb.bb:                                            ; preds = %bb.ba
  %i.ev = call i64 @__isoc23_strtoul(ptr noundef nonnull %.3237, ptr noundef null, i32 noundef 10) #14
  %i.ew = add i64 %i.ev, -65536
  %i.ex = icmp ult i64 %i.ew, -65535
  br i1 %i.ex, label %.critedge311, label %bb.bf

.critedge311:                                     ; preds = %bb.ba, %bb.bb
  %.not286 = icmp eq ptr %1, null
  br i1 %.not286, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.critedge311
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.ey = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i338 = icmp eq i32 %i.ey, 0
  br i1 %.not4.i338, label %_.exit340, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ez = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #14
  br label %_.exit340

_.exit340:                                        ; preds = %bb.bc, %bb.bd
  %.0.i339 = phi ptr [ %i.ez, %bb.bd ], [ @.str.21, %bb.bc ]
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i339, ptr %i.fa, align 8, !tbaa !42
  br label %bb.be

bb.be:                                            ; preds = %_.exit340, %.critedge311
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.bf:                                            ; preds = %bb.bb
  call fastcc void @strbuf_addch(ptr noundef %3, i32 noundef 58)
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !20
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.3237, i64 noundef %i.dy) #14
  br label %._crit_edge436

._crit_edge436:                                   ; preds = %bb.as, %bb.bf, %.tail, %.tail379
  %.1212 = phi i64 [ 0, %.tail379 ], [ %i.fc, %bb.bf ], [ 0, %.tail ], [ 0, %bb.as ]
  %.1209 = phi i64 [ 0, %.tail379 ], [ %i.dy, %bb.bf ], [ 0, %.tail ], [ 0, %bb.as ]
  %.neg288 = sub i64 %i.cn, %.pre439
  %i.fd = add i64 %.neg288, %.1226.lcssa
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge436, %._crit_edge411
  %.4238 = phi ptr [ %i.ao, %._crit_edge436 ], [ %.2236.lcssa, %._crit_edge411 ] ; 2 uses
  %.2227 = phi i64 [ %i.fd, %._crit_edge436 ], [ %.1226.lcssa, %._crit_edge411 ]
  %.2213 = phi i64 [ %.1212, %._crit_edge436 ], [ 0, %._crit_edge411 ]
  %.2210 = phi i64 [ %.1209, %._crit_edge436 ], [ 0, %._crit_edge411 ] ; 3 uses
  %.not289 = icmp eq i64 %.0215, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 4 uses
  br i1 %.not289, label %._crit_edge435, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not290 = icmp eq i64 %.2210, 0
  %.neg291 = xor i64 %.2210, -1
  %.neg292 = select i1 %.not290, i64 0, i64 %.neg291
  %i.fe = sub i64 %.neg292, %.0215
  %i.ff = add i64 %i.fe, %.pre
  br label %._crit_edge435

._crit_edge435:                                   ; preds = %bb.bg, %bb.bh
  %.0214 = phi i64 [ %i.ff, %bb.bh ], [ 0, %bb.bg ]
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.pre ; 3 uses
  call fastcc void @strbuf_addch(ptr noundef %3, i32 noundef 47)
  %i.fk = load i8, ptr %.4238, align 1, !tbaa !12
  %i.fl = icmp eq i8 %i.fk, 47                    ; 2 uses
  %.5239.idx = zext i1 %i.fl to i64
  %.5239 = getelementptr inbounds nuw i8, ptr %.4238, i64 %.5239.idx ; 3 uses
  %i.fm = load i64, ptr %i.fg, align 8, !tbaa !20
  %i.fn = call i64 @strcspn(ptr noundef nonnull %.5239, ptr noundef nonnull @.str.4) #13 ; 3 uses
  %i.fo = call fastcc i32 @append_normalized_escapes(ptr noundef %3, ptr noundef nonnull %.5239, i64 noundef %i.fn)
  %.not293414 = icmp eq i32 %i.fo, 0
  br i1 %.not293414, label %._crit_edge416, label %sub_0384.lr.ph

sub_0384.lr.ph:                                   ; preds = %._crit_edge435
  %i.fp = getelementptr inbounds nuw i8, ptr %.5239, i64 %i.fn
  %i.fq = sext i1 %i.fl to i64
  %.3 = add i64 %.2227, %i.fq
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  br label %sub_0384

._crit_edge416:                                   ; preds = %.thread360, %._crit_edge435
  %.not294 = icmp eq ptr %1, null
  br i1 %.not294, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge416
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.fs = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i341 = icmp eq i32 %i.fs, 0
  br i1 %.not4.i341, label %_.exit343, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ft = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #14
  br label %_.exit343

_.exit343:                                        ; preds = %bb.bi, %bb.bj
  %.0.i342 = phi ptr [ %i.ft, %bb.bj ], [ @.str.7, %bb.bi ]
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i342, ptr %i.fu, align 8, !tbaa !42
  br label %bb.bk

bb.bk:                                            ; preds = %_.exit343, %._crit_edge416
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

sub_0384:                                         ; preds = %sub_0384.lr.ph, %.thread360
  %i.fv = phi ptr [ %i.fp, %sub_0384.lr.ph ], [ %i.hh, %.thread360 ] ; 5 uses
  %i.fw = phi i64 [ %i.fn, %sub_0384.lr.ph ], [ %i.hg, %.thread360 ] ; 3 uses
  %i.fx = phi i64 [ %i.fm, %sub_0384.lr.ph ], [ %i.hf, %.thread360 ]
  %.4415 = phi i64 [ %.3, %sub_0384.lr.ph ], [ %.5, %.thread360 ] ; 3 uses
  %i.fy = load ptr, ptr %i.fh, align 8, !tbaa !21 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx ; 5 uses
  %i.ga = load i8, ptr %i.fz, align 1
  %.not421 = icmp eq i8 %i.ga, 46
  br i1 %.not421, label %.tail383, label %.thread354

.tail383:                                         ; preds = %sub_0384
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.bl, label %sub_1389

bb.bl:                                            ; preds = %.tail383
  %i.ge = icmp eq ptr %i.fz, %i.fr
  %i.gf = load i64, ptr %i.fg, align 8, !tbaa !20 ; 2 uses
  br i1 %i.ge, label %.thread356, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gg = add i64 %i.gf, -2
  br label %.thread354.sink.split

sub_1389:                                         ; preds = %.tail383
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gi = load i8, ptr %i.gh, align 1
  %.not423 = icmp eq i8 %i.gi, 46
  br i1 %.not423, label %.tail387, label %.thread354

.tail387:                                         ; preds = %sub_1389
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = icmp eq i8 %i.gk, 0
  br i1 %i.gl, label %bb.bn, label %.thread354

bb.bn:                                            ; preds = %.tail387
  %i.gm = load i64, ptr %i.fg, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -3 ; 2 uses
  %.not299 = icmp eq ptr %i.go, %i.fj
  br i1 %.not299, label %bb.bo, label %.preheader

bb.bo:                                            ; preds = %bb.bn
  %.not298 = icmp eq ptr %1, null
  br i1 %.not298, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.gp = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i344 = icmp eq i32 %i.gp, 0
  br i1 %.not4.i344, label %_.exit346, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #14
  br label %_.exit346

_.exit346:                                        ; preds = %bb.bp, %bb.bq
  %.0.i345 = phi ptr [ %i.gq, %bb.bq ], [ @.str.24, %bb.bp ]
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i345, ptr %i.gr, align 8, !tbaa !42
  br label %bb.bs

.preheader:                                       ; preds = %bb.bn, %.preheader
  %.0 = phi ptr [ %i.gs, %.preheader ], [ %i.go, %bb.bn ]
  %i.gs = getelementptr inbounds i8, ptr %.0, i64 -1 ; 4 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !12
  %.not297 = icmp eq i8 %i.gt, 47
  br i1 %.not297, label %bb.br, label %.preheader, !llvm.loop !40

bb.br:                                            ; preds = %.preheader
  %4 = icmp eq ptr %i.gs, %i.fj
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.fy to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  br i1 %4, label %.thread354.thread, label %.thread354.sink.split

bb.bs:                                            ; preds = %bb.bo, %_.exit346
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

.thread354.sink.split:                            ; preds = %bb.br, %bb.bm
  %.sink = phi i64 [ %i.gg, %bb.bm ], [ %i.gw, %bb.br ]
  call fastcc void @strbuf_setlen(ptr noundef %3, i64 noundef %.sink)
  br label %.thread354

.thread354:                                       ; preds = %.thread354.sink.split, %sub_0384, %sub_1389, %.tail387
  %i.gx = sub i64 %.4415, %i.fw                   ; 2 uses
  %i.gy = load i8, ptr %i.fv, align 1, !tbaa !12  ; 2 uses
  %.not300 = icmp eq i8 %i.gy, 47
  br i1 %.not300, label %bb.bt, label %bb.bu

.thread354.thread:                                ; preds = %bb.br
  %i.gz = add i64 %i.gw, 1
  call fastcc void @strbuf_setlen(ptr noundef %3, i64 noundef %i.gz)
  %i.ha = sub i64 %.4415, %i.fw                   ; 2 uses
  %i.hb = load i8, ptr %i.fv, align 1, !tbaa !12  ; 2 uses
  %.not300470 = icmp eq i8 %i.hb, 47
  br i1 %.not300470, label %.thread360, label %bb.bu

.thread356:                                       ; preds = %bb.bl
  %i.hc = add i64 %i.gf, -1
  call fastcc void @strbuf_setlen(ptr noundef %3, i64 noundef %i.hc)
  %i.hd = sub i64 %.4415, %i.fw                   ; 2 uses
  %i.he = load i8, ptr %i.fv, align 1, !tbaa !12  ; 2 uses
  %.not300358 = icmp eq i8 %i.he, 47
  br i1 %.not300358, label %.thread360, label %bb.bu

bb.bt:                                            ; preds = %.thread354
  call fastcc void @strbuf_addch(ptr noundef %3, i32 noundef 47)
  br label %.thread360

.thread360:                                       ; preds = %.thread354.thread, %.thread356, %bb.bt
  %.5.in = phi i64 [ %i.gx, %bb.bt ], [ %i.hd, %.thread356 ], [ %i.ha, %.thread354.thread ]
  %.5 = add i64 %.5.in, -1
  %.7241 = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 3 uses
  %i.hf = load i64, ptr %i.fg, align 8, !tbaa !20
  %i.hg = call i64 @strcspn(ptr noundef nonnull %.7241, ptr noundef nonnull @.str.4) #13 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.7241, i64 %i.hg
  %i.hi = call fastcc i32 @append_normalized_escapes(ptr noundef %3, ptr noundef nonnull %.7241, i64 noundef %i.hg)
  %.not293 = icmp eq i32 %i.hi, 0
  br i1 %.not293, label %._crit_edge416, label %sub_0384

bb.bu:                                            ; preds = %.thread354.thread, %.thread356, %.thread354
  %i.hj = phi i8 [ %i.he, %.thread356 ], [ %i.gy, %.thread354 ], [ %i.hb, %.thread354.thread ]
  %.5.ph = phi i64 [ %i.hd, %.thread356 ], [ %i.gx, %.thread354 ], [ %i.ha, %.thread354.thread ]
  %i.hk = load i64, ptr %i.fg, align 8, !tbaa !20
  %i.hl = sub i64 %i.hk, %.pre
  %.not302 = icmp eq i8 %i.hj, 0
  br i1 %.not302, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hm = call fastcc i32 @append_normalized_escapes(ptr noundef %3, ptr noundef nonnull %i.fv, i64 noundef %.5.ph)
  %.not303 = icmp eq i32 %i.hm, 0
  br i1 %.not303, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %.not304 = icmp eq ptr %1, null
  br i1 %.not304, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.hn = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i347 = icmp eq i32 %i.hn, 0
  br i1 %.not4.i347, label %_.exit349, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ho = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #14
  br label %_.exit349

_.exit349:                                        ; preds = %bb.bx, %bb.by
  %.0.i348 = phi ptr [ %i.ho, %bb.by ], [ @.str.7, %bb.bx ]
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i348, ptr %i.hp, align 8, !tbaa !42
  br label %bb.bz

bb.bz:                                            ; preds = %_.exit349, %bb.bw
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.ca:                                            ; preds = %bb.bv, %bb.bu
  %i.hq = call ptr @strbuf_detach(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #14 ; 3 uses
  %.not305 = icmp eq ptr %1, null
  br i1 %.not305, label %.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store ptr %i.hq, ptr %1, align 8, !tbaa !17
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.hr, align 8, !tbaa !42
  %i.hs = load i64, ptr %i.a, align 8, !tbaa !43
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !23
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.hu, align 8, !tbaa !24
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.0222, ptr %i.hv, align 8, !tbaa !25
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.1221, ptr %i.hw, align 8, !tbaa !26
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %.1219, ptr %i.hx, align 8, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %.1217, ptr %i.hy, align 8, !tbaa !45
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %.0215, ptr %i.hz, align 8, !tbaa !27
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.0214, ptr %i.ia, align 8, !tbaa !28
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %.2213, ptr %i.ib, align 8, !tbaa !29
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %.2210, ptr %i.ic, align 8, !tbaa !30
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %.pre, ptr %i.id, align 8, !tbaa !31
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.hl, ptr %i.ie, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %bb.bs, %bb.bk, %bb.be, %bb.az, %bb.ca, %bb.cb, %bb.g, %_.exit, %bb.bz, %bb.ao, %bb.aj, %bb.ab, %bb.q
  %.7 = phi ptr [ null, %bb.q ], [ null, %bb.ao ], [ null, %bb.be ], [ null, %bb.g ], [ null, %bb.bz ], [ %i.hq, %bb.ca ], [ null, %bb.aj ], [ null, %bb.ab ], [ null, %_.exit ], [ %i.hq, %bb.cb ], [ null, %bb.az ], [ null, %bb.bk ], [ null, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @url_parse(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 10 uses
  %3 = alloca %struct.url_info, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %.not = icmp eq ptr %1, null                    ; 3 uses
  %i.a = select i1 %.not, ptr %3, ptr %1
  %i.b = tail call i32 @is_url(ptr noundef %0) #14
  %.not70 = icmp eq i32 %i.b, 0
  br i1 %.not70, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @url_decode(ptr noundef %0) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @xstrdup(ptr noundef %0) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.064 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 4 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.064) #13
  %i.f = add i64 %i.e, 7
  call void @strbuf_init(ptr noundef nonnull %2, i64 noundef %i.f) #14
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.064) #13
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull %.064, i64 noundef %i.g) #14
  call void @free(ptr noundef %.064) #14
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str) #13 ; 4 uses
  %.not71 = icmp eq ptr %i.j, null
  br i1 %.not71, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  store i8 0, ptr %i.j, align 1, !tbaa !12
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.m = call i32 @url_get_scheme(ptr noundef %i.l) #14
  store i8 %i.k, ptr %i.j, align 1, !tbaa !12
  %i.n = add i32 %i.m, -5
  %i.o = icmp ult i32 %i.n, -2
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.p = call i32 @url_is_local_not_ssh(ptr noundef nonnull %i.i) #14
  %.not72 = icmp eq i32 %i.p, 0
  br i1 %.not72, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @strbuf_insert(ptr noundef nonnull %2, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 6) #14
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6 ; 2 uses
  %i.s = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 64) #13 ; 2 uses
  %.not73 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = select i1 %.not73, ptr %i.r, ptr %i.t    ; 7 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = load i8, ptr %i.u, align 1, !tbaa !12
  %i.x = icmp eq i8 %i.w, 91
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.u, i32 noundef 93) #13
  %.fr93 = freeze ptr %i.y                        ; 6 uses
  %i.z = icmp ne ptr %.fr93, null                 ; 2 uses
  %.05988 = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 4 uses
  %i.aa = icmp ult ptr %.05988, %.fr93
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %bb.h
  %.fr93105 = ptrtoaddr ptr %.fr93 to i64
  %i.ac = xor i64 %i.v, -1
  %i.ad = add i64 %i.ac, %.fr93105                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  %i.ae = getelementptr i8, ptr %.05988, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi106 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %next.gep = getelementptr i8, ptr %.05988, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !12
end_hunk_0
