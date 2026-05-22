inline.NumInlined: 54
inline.NumDeleted: 14
begin_hunk_0_@pm_regexp_parse_item:bb.a

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cm = getelementptr i8, ptr %.val146.i100102, i64 1 ; 3 uses
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !18
  %exitcond.not = icmp eq ptr %i.cm, %.val4.i58
  br i1 %exitcond.not, label %pm_regexp_parse_group.exit.thread, label %.lr.ph, !llvm.loop !59

bb.ap:                                            ; preds = %.lr.ph
  %.val168.i = load i8, ptr %i.l, align 1, !tbaa !48
  %i.cn = icmp eq i8 %.val168.i, 3
  br i1 %i.cn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.co = getelementptr i8, ptr %0, i64 32
  store i8 1, ptr %i.co, align 8, !tbaa !20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cp = getelementptr i8, ptr %.val146.i100102, i64 1
  br label %.loopexit83.sink.split

.loopexit86:                                      ; preds = %.lr.ph, %bb.j
  %.promoted105 = phi ptr [ %i.r, %bb.j ], [ %.val146.i100102, %.lr.ph ] ; 2 uses
  %storemerge.i107 = getelementptr i8, ptr %.promoted105, i64 1 ; 3 uses
  store ptr %storemerge.i107, ptr %i.a, align 8, !tbaa !18
  %.not73108 = icmp ult ptr %storemerge.i107, %.val4.i58
  br i1 %.not73108, label %.lr.ph111, label %pm_regexp_parse_group.exit.thread

.lr.ph111:                                        ; preds = %.loopexit86, %pm_regexp_options_remove.exit
  %storemerge.i110 = phi ptr [ %storemerge.i, %pm_regexp_options_remove.exit ], [ %storemerge.i107, %.loopexit86 ] ; 3 uses
  %.pn.i106109 = phi ptr [ %storemerge.i110, %pm_regexp_options_remove.exit ], [ %.promoted105, %.loopexit86 ]
  %i.cq = load i8, ptr %storemerge.i110, align 1, !tbaa !48 ; 3 uses
  switch i8 %i.cq, label %bb.as [
    i8 41, label %bb.au
    i8 58, label %pm_regexp_char_accept.exit61.thread
  ]

bb.as:                                            ; preds = %.lr.ph111
  %i.cr = add i8 %i.cq, -97
  %or.cond.i = icmp ult i8 %i.cr, 24
  br i1 %or.cond.i, label %bb.at, label %pm_regexp_parse_group.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.cs = zext nneg i8 %i.cq to i64
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -97    ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !48
  switch i8 %i.cv, label %pm_regexp_parse_group.exit.thread [
    i8 4, label %pm_regexp_options_remove.exit
    i8 3, label %pm_regexp_options_remove.exit
    i8 1, label %pm_regexp_options_remove.exit
  ]

pm_regexp_options_remove.exit:                    ; preds = %bb.at, %bb.at, %bb.at
  store i8 4, ptr %i.cu, align 1, !tbaa !48
  %storemerge.i = getelementptr i8, ptr %storemerge.i110, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !18
  %exitcond151.not = icmp eq ptr %storemerge.i, %.val4.i58
  br i1 %exitcond151.not, label %pm_regexp_parse_group.exit.thread, label %.lr.ph111, !llvm.loop !60

bb.au:                                            ; preds = %.lr.ph111
  %.val167.i = load i8, ptr %i.l, align 1, !tbaa !48
  switch i8 %.val167.i, label %bb.aw [
    i8 3, label %.sink.split
    i8 4, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  br label %.sink.split

.sink.split:                                      ; preds = %bb.au, %bb.av
  %.sink = phi i8 [ 0, %bb.av ], [ 1, %bb.au ]
  %i.cw = getelementptr i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.cw, align 8, !tbaa !20
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.au
  %i.cx = getelementptr i8, ptr %.pn.i106109, i64 2
  br label %.loopexit83.sink.split

bb.ax:                                            ; preds = %bb.j
  %i.cy = getelementptr i8, ptr %i.b, i64 3       ; 2 uses
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !18
  %i.cz = getelementptr i8, ptr %0, i64 64
  %.val156.i = load ptr, ptr %i.cz, align 8, !tbaa !45
  %i.da = getelementptr i8, ptr %0, i64 72
  %.val157.i = load ptr, ptr %i.da, align 8, !tbaa !46
  tail call void %.val156.i(ptr noundef nonnull %i.r, ptr noundef %i.cy, ptr noundef nonnull @.str.6, ptr noundef %.val157.i) #5, !inline_history !52
  br label %pm_regexp_char_accept.exit61.thread

pm_regexp_char_accept.exit61.thread:              ; preds = %.lr.ph, %.lr.ph111, %bb.f, %bb.g, %bb.ai, %bb.aj, %bb.af, %bb.ag, %bb.ax, %bb.ak, %bb.ab, %bb.x
  %i.db = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !20, !range !38, !noundef !39 ; 2 uses
  %.val166.i = load i8, ptr %i.l, align 1, !tbaa !48
  switch i8 %.val166.i, label %bb.az [
    i8 3, label %.sink.split190
    i8 4, label %bb.ay
  ]

bb.ay:                                            ; preds = %pm_regexp_char_accept.exit61.thread
  br label %.sink.split190

.sink.split190:                                   ; preds = %pm_regexp_char_accept.exit61.thread, %bb.ay
  %.sink191.a = phi i8 [ 0, %bb.ay ], [ 1, %pm_regexp_char_accept.exit61.thread ]
  store i8 %.sink191.a, ptr %i.db, align 8, !tbaa !20
  br label %bb.az

bb.az:                                            ; preds = %.sink.split190, %pm_regexp_char_accept.exit61.thread
  %.val.i118 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %.val139.i119 = load ptr, ptr %i.o, align 8, !tbaa !19 ; 5 uses
  %.not76120 = icmp ult ptr %.val.i118, %.val139.i119
  br i1 %.not76120, label %.lr.ph123, label %.critedge8.i

.lr.ph123:                                        ; preds = %bb.az
  %i.dd = add i16 %1, 1                           ; 3 uses
  %i.de = icmp ugt i16 %i.dd, 4095
  %i.df = load i8, ptr %.val.i118, align 1, !tbaa !48
  %.not135.i.us = icmp eq i8 %i.df, 41            ; 2 uses
  br i1 %i.de, label %.lr.ph123.split.us, label %.lr.ph123.split

.lr.ph123.split.us:                               ; preds = %.lr.ph123
  br i1 %.not135.i.us, label %.critedge8.i, label %.split.us

.lr.ph123.split:                                  ; preds = %.lr.ph123
  br i1 %.not135.i.us, label %.critedge8.i, label %.lr.ph131

bb.ba:                                            ; preds = %pm_regexp_char_accept.exit
  %i.dg = load i8, ptr %.val.i, align 1, !tbaa !48
  %.not135.i = icmp eq i8 %i.dg, 41
  br i1 %.not135.i, label %.critedge8.i, label %.lr.ph131, !llvm.loop !61

.lr.ph131:                                        ; preds = %.lr.ph123.split, %bb.ba
  %i.dh = tail call fastcc zeroext i1 @pm_regexp_parse_item(ptr noundef nonnull %0, i16 noundef zeroext %i.dd), !inline_history !62
  br i1 %i.dh, label %.preheader, label %.loopexit

.split.us:                                        ; preds = %.lr.ph123.split.us
  %i.di = getelementptr i8, ptr %0, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !17
  %i.dk = getelementptr i8, ptr %0, i64 64
  %.val14.i = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.dl = getelementptr i8, ptr %0, i64 72
  %.val15.i = load ptr, ptr %i.dl, align 8, !tbaa !46
  tail call void %.val14.i(ptr noundef %i.dj, ptr noundef nonnull %.val139.i119, ptr noundef nonnull @.str, ptr noundef %.val15.i) #5, !inline_history !63
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph131, %bb.bc
  %.val.i53 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %.val13.i = load ptr, ptr %i.o, align 8, !tbaa !19 ; 4 uses
  %.not77 = icmp ult ptr %.val.i53, %.val13.i
  br i1 %.not77, label %bb.bb, label %pm_regexp_char_accept.exit

bb.bb:                                            ; preds = %.preheader
  %i.dm = load i8, ptr %.val.i53, align 1, !tbaa !48
  switch i8 %i.dm, label %bb.bc [
    i8 124, label %bb.bd
    i8 41, label %pm_regexp_char_accept.exit
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.dn = tail call fastcc zeroext i1 @pm_regexp_parse_item(ptr noundef nonnull %0, i16 noundef zeroext %i.dd), !inline_history !62
  br i1 %i.dn, label %.preheader, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %.lr.ph131, %bb.bc, %.split.us
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !20
  br label %pm_regexp_parse_group.exit.thread

bb.bd:                                            ; preds = %bb.bb
  %i.do = getelementptr i8, ptr %.val.i53, i64 1  ; 2 uses
  store ptr %i.do, ptr %i.a, align 8, !tbaa !18
  br label %pm_regexp_char_accept.exit

pm_regexp_char_accept.exit:                       ; preds = %.preheader, %bb.bb, %bb.bd
  %.val.i = phi ptr [ %i.do, %bb.bd ], [ %.val.i53, %bb.bb ], [ %.val.i53, %.preheader ] ; 4 uses
  %.not76 = icmp ult ptr %.val.i, %.val13.i
  br i1 %.not76, label %bb.ba, label %.critedge8.i, !llvm.loop !61

.critedge8.i:                                     ; preds = %pm_regexp_char_accept.exit, %bb.ba, %.lr.ph123.split.us, %.lr.ph123.split, %bb.az
  %i.dp = phi ptr [ %.val.i118, %bb.az ], [ %.val.i118, %.lr.ph123.split ], [ %.val.i118, %.lr.ph123.split.us ], [ %.val.i, %bb.ba ], [ %.val.i, %pm_regexp_char_accept.exit ] ; 4 uses
  %.val139.i.lcssa = phi ptr [ %.val139.i119, %bb.az ], [ %.val139.i119, %.lr.ph123.split ], [ %.val139.i119, %.lr.ph123.split.us ], [ %.val13.i, %bb.ba ], [ %.val13.i, %pm_regexp_char_accept.exit ]
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !20
  %.not.i47 = icmp ult ptr %i.dp, %.val139.i.lcssa
  br i1 %.not.i47, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge8.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !48
  %i.dr = icmp eq i8 %i.dq, 41
  br i1 %i.dr, label %pm_regexp_char_expect.exit, label %bb.bf

pm_regexp_char_expect.exit:                       ; preds = %bb.be
  %i.ds = getelementptr i8, ptr %i.dp, i64 1
  br label %.loopexit83.sink.split

bb.bf:                                            ; preds = %bb.be, %.critedge8.i
  %i.dt = getelementptr i8, ptr %0, i64 64
  %.val154.i = load ptr, ptr %i.dt, align 8, !tbaa !45
  %i.du = getelementptr i8, ptr %0, i64 72
  %.val155.i = load ptr, ptr %i.du, align 8, !tbaa !46
  tail call void %.val154.i(ptr noundef %i.h, ptr noundef %i.dp, ptr noundef nonnull @.str.4, ptr noundef %.val155.i) #5, !inline_history !52
  br label %pm_regexp_parse_group.exit.thread

pm_regexp_parse_group.exit.thread:                ; preds = %bb.ao, %bb.am, %bb.al, %bb.as, %bb.at, %pm_regexp_options_remove.exit, %bb.w, %bb.s, %bb.q, %.loopexit86, %bb.t, %bb.i, %bb.l, %bb.ak, %bb.z, %bb.ah, %bb.bf, %bb.ac, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.bt

.loopexit83.sink.split:                           ; preds = %pm_regexp_char_expect.exit, %bb.p, %bb.ar, %bb.aw
  %.sink192 = phi ptr [ %i.cx, %bb.aw ], [ %i.cp, %bb.ar ], [ %i.ak, %bb.p ], [ %i.ds, %pm_regexp_char_expect.exit ]
  store ptr %.sink192, ptr %i.a, align 8, !tbaa !18
  br label %.loopexit83

.loopexit83:                                      ; preds = %bb.v, %bb.u, %.loopexit83.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bg:                                            ; preds = %bb.a
  %i.dv = getelementptr i8, ptr %i.b, i64 1
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !18
  %i.dw = tail call fastcc zeroext i1 @pm_regexp_parse_lbracket(ptr noundef %0, i16 noundef zeroext %1)
  br i1 %i.dw, label %bb.bh, label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bi:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.dx = getelementptr i8, ptr %i.b, i64 1       ; 2 uses
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !18
  %i.dy = getelementptr i8, ptr %0, i64 64
  %.val43 = load ptr, ptr %i.dy, align 8, !tbaa !45
  %i.dz = getelementptr i8, ptr %0, i64 72
  %.val44 = load ptr, ptr %i.dz, align 8, !tbaa !46
  tail call void %.val43(ptr noundef nonnull %i.b, ptr noundef %i.dx, ptr noundef nonnull @.str.1, ptr noundef %.val44) #5, !inline_history !64
  br label %bb.bt

bb.bj:                                            ; preds = %bb.a
  %i.ea = getelementptr i8, ptr %i.b, i64 1       ; 2 uses
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !18
  %i.eb = getelementptr i8, ptr %0, i64 64
  %.val41 = load ptr, ptr %i.eb, align 8, !tbaa !45
  %i.ec = getelementptr i8, ptr %0, i64 72
  %.val42 = load ptr, ptr %i.ec, align 8, !tbaa !46
  tail call void %.val41(ptr noundef nonnull %i.b, ptr noundef %i.ea, ptr noundef nonnull @.str.2, ptr noundef %.val42) #5, !inline_history !64
  br label %bb.bt

bb.bk:                                            ; preds = %bb.a
  %i.ed = getelementptr i8, ptr %0, i64 32
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !20, !range !38, !noundef !39
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.eg = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.val11.i = load ptr, ptr %i.eg, align 8, !tbaa !19 ; 3 uses
  %.not.i = icmp ult ptr %i.b, %.val11.i
  br i1 %.not.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.eh = ptrtoint ptr %.val11.i to i64
  %i.ei = ptrtoint ptr %i.b to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = getelementptr i8, ptr %0, i64 33
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !40, !range !38, !noundef !39
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = getelementptr i8, ptr %0, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42
  %i.ep = tail call ptr @pm_memchr(ptr noundef nonnull %i.b, i32 noundef 10, i64 noundef %i.ej, i1 noundef zeroext %i.em, ptr noundef %i.eo) #5 ; 2 uses
  %.not12.i = icmp eq ptr %i.ep, null
  br i1 %.not12.i, label %._crit_edge, label %pm_regexp_char_find.exit

._crit_edge:                                      ; preds = %bb.bm
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !19
  br label %bb.bn

pm_regexp_char_find.exit:                         ; preds = %bb.bm
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !18
  br label %bb.bt

bb.bn:                                            ; preds = %._crit_edge, %bb.bl
  %i.er = phi ptr [ %.pre, %._crit_edge ], [ %.val11.i, %bb.bl ]
  store ptr %i.er, ptr %i.a, align 8, !tbaa !18
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bk, %bb.a
  %i.es = getelementptr i8, ptr %0, i64 33
  %i.et = load i8, ptr %i.es, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ev = getelementptr i8, ptr %0, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !19
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.b to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.b, i64 noundef %i.ez) #5
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.fb = getelementptr i8, ptr %0, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !42
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr i8, ptr %0, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !19
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.b to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = tail call i64 %i.fd(ptr noundef nonnull %i.b, i64 noundef %i.fi) #5
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0 = phi i64 [ %i.fj, %bb.bq ], [ %i.fa, %bb.bp ] ; 2 uses
  %.not79 = icmp eq i64 %.0, 0
  br i1 %.not79, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fk = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fl = getelementptr i8, ptr %i.fk, i64 %.0
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !18
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bt:                                            ; preds = %pm_regexp_char_find.exit, %pm_regexp_parse_group.exit.thread, %bb.bs, %bb.br, %bb.bn, %bb.bg, %bb.bh, %.loopexit83, %bb.bj, %bb.bi, %bb.e, %bb.b
  %.1 = phi i1 [ true, %pm_regexp_char_find.exit ], [ true, %bb.b ], [ true, %bb.e ], [ false, %bb.bg ], [ false, %pm_regexp_parse_group.exit.thread ], [ true, %bb.bi ], [ true, %bb.bj ], [ true, %.loopexit83 ], [ true, %bb.bh ], [ true, %bb.bn ], [ false, %bb.br ], [ true, %bb.bs ]
  ret i1 %.1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @pm_regexp_parse_quantifier(ptr noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !19 ; 4 uses
  %.val617 = ptrtoint ptr %.val6 to i64
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %.not11 = icmp ult ptr %.promoted, %.val6
  br i1 %.not11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %pm_regexp_parse_range_quantifier.exit
  %storemerge1012 = phi ptr [ %storemerge, %pm_regexp_parse_range_quantifier.exit ], [ %.promoted, %bb.a ] ; 5 uses
  %storemerge101218 = ptrtoint ptr %storemerge1012 to i64
  %i.c = load i8, ptr %storemerge1012, align 1, !tbaa !48
  switch i8 %i.c, label %._crit_edge [
    i8 42, label %bb.b
    i8 43, label %bb.b
    i8 63, label %bb.b
    i8 123, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.d = getelementptr i8, ptr %storemerge1012, i64 1
  br label %pm_regexp_parse_range_quantifier.exit

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %storemerge1012, i64 1 ; 10 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !18
  %.not35.i = icmp ult ptr %i.e, %.val6
  br i1 %.not35.i, label %.lr.ph.i.preheader, label %pm_regexp_parse_range_quantifier.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %storemerge1012, i64 %.val617
  %i.f = sub i64 0, %storemerge101218
  %scevgep19 = getelementptr i8, ptr %scevgep, i64 %i.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.k
  %.036.i = phi i32 [ %.1.i, %bb.k ], [ 0, %.lr.ph.i.preheader ]
  %i.g = phi ptr [ %i.m, %bb.k ], [ %i.e, %.lr.ph.i.preheader ] ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !48    ; 4 uses
  switch i32 %.036.i, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.h
    i32 2, label %bb.i
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %switch.tableidx = add i8 %i.h, -44             ; 3 uses
  %i.i = icmp ult i8 %switch.tableidx, 14
  br i1 %i.i, label %switch.hole_check, label %pm_regexp_parse_range_quantifier.exit

bb.e:                                             ; preds = %.lr.ph.i
  switch i8 %i.h, label %pm_regexp_parse_range_quantifier.exit [
    i8 48, label %bb.k
    i8 49, label %bb.k
    i8 50, label %bb.k
    i8 51, label %bb.k
    i8 52, label %bb.k
    i8 53, label %bb.k
    i8 54, label %bb.k
    i8 55, label %bb.k
    i8 56, label %bb.k
    i8 57, label %bb.k
    i8 44, label %bb.f
    i8 125, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
end_hunk_0
