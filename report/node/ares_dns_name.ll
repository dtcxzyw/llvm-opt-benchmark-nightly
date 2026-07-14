inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ares_dns_name_parse:bb.a
bb.aa:                                            ; preds = %.split.us.us.split
  %i.bj = zext i8 %i.bw to i64
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = and i64 %i.bk, 16128
  %i.bm = load i8, ptr %i.c, align 1, !tbaa !20
  %i.bn = zext i8 %i.bm to i64
  %i.bo = or disjoint i64 %i.bl, %i.bn            ; 2 uses
  %.not63.us = icmp ugt i64 %.1.us.us, %i.bo
  br i1 %.not63.us, label %bb.ab, label %.thread72

bb.ab:                                            ; preds = %bb.aa
  %i.bp = icmp eq i64 %.044.ph.us, 0
  br i1 %i.bp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bq = call i64 @ares_buf_get_position(ptr noundef nonnull %0) #3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.145.us = phi i64 [ %i.bq, %bb.ac ], [ %.044.ph.us, %bb.ab ]
  %i.br = call i32 @ares_buf_set_position(ptr noundef nonnull %0, i64 noundef %i.bo) #3
  %.not64.us = icmp eq i32 %i.br, 0
  br i1 %.not64.us, label %.outer.us, label %.thread72

bb.ae:                                            ; preds = %ares_fetch_dnsname_into_buf.exit.loopexit.us.us, %.outer.us
  %.039.us.us = phi i64 [ %.1.us.us, %ares_fetch_dnsname_into_buf.exit.loopexit.us.us ], [ %.039.ph.us, %.outer.us ] ; 2 uses
  %i.bs = call i64 @ares_buf_get_position(ptr noundef nonnull %0) #3
  %i.bt = icmp ugt i64 %.039.us.us, %i.bs
  br i1 %i.bt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bu = call i64 @ares_buf_get_position(ptr noundef nonnull %0) #3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1.us.us = phi i64 [ %i.bu, %bb.af ], [ %.039.us.us, %bb.ae ] ; 3 uses
  %i.bv = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #3 ; 2 uses
  %.not.us.us = icmp eq i32 %i.bv, 0
  br i1 %.not.us.us, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.bw = load i8, ptr %i.c, align 1, !tbaa !20   ; 3 uses
  %trunc.us.us = and i8 %i.bw, -64
  switch i8 %trunc.us.us, label %.thread72 [
    i8 -64, label %.split.us.us.split
    i8 0, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %.split108.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.by = call i64 @ares_buf_len(ptr noundef null) #3
  %i.bz = icmp ne i64 %i.by, 0
  %or.cond.us.us = and i1 %i.f, %i.bz
  br i1 %or.cond.us.us, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ca = call i32 @ares_buf_append_byte(ptr noundef null, i8 noundef zeroext 46) #3 ; 2 uses
  %.not59.us.us = icmp eq i32 %i.ca, 0
  br i1 %.not59.us.us, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cb = load i8, ptr %i.c, align 1, !tbaa !20
  %i.cc = zext i8 %i.cb to i64                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.cd = call ptr @ares_buf_peek(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #3
  %i.ce = load i64, ptr %i.a, align 8
  %i.cf = freeze i64 %i.ce
  %i.cg = add nsw i64 %i.cc, -1
  %or.cond.not.i.us.us = icmp ult i64 %i.cg, %i.cf
  br i1 %or.cond.not.i.us.us, label %.lr.ph.split.us.split.i.us.us, label %ares_fetch_dnsname_into_buf.exit.thread

.lr.ph.split.us.split.i.us.us:                    ; preds = %bb.al, %select.unfold.us.i.us.us
  %.070105.us.i.us.us = phi i64 [ %i.cn, %select.unfold.us.i.us.us ], [ 0, %bb.al ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.070105.us.i.us.us
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20
  %.fr104.us.i.us.us = freeze i8 %i.ci            ; 3 uses
  %i.cj = and i8 %.fr104.us.i.us.us, -33
  %i.ck = add i8 %i.cj, -65
  %i.cl = icmp ult i8 %i.ck, 26
  %i.cm = add i8 %.fr104.us.i.us.us, -48
  %or.cond10.us.i.us.us = icmp ult i8 %i.cm, 10
  %or.cond.us.i.us.us = or i1 %or.cond10.us.i.us.us, %i.cl
  br i1 %or.cond.us.i.us.us, label %select.unfold.us.i.us.us, label %switch.early.test.us.i.us.us

switch.early.test.us.i.us.us:                     ; preds = %.lr.ph.split.us.split.i.us.us
  switch i8 %.fr104.us.i.us.us, label %ares_fetch_dnsname_into_buf.exit.thread [
    i8 95, label %select.unfold.us.i.us.us
    i8 47, label %select.unfold.us.i.us.us
    i8 46, label %select.unfold.us.i.us.us
    i8 45, label %select.unfold.us.i.us.us
    i8 42, label %select.unfold.us.i.us.us
  ]

select.unfold.us.i.us.us:                         ; preds = %switch.early.test.us.i.us.us, %switch.early.test.us.i.us.us, %switch.early.test.us.i.us.us, %switch.early.test.us.i.us.us, %switch.early.test.us.i.us.us, %.lr.ph.split.us.split.i.us.us
  %i.cn = add nuw nsw i64 %.070105.us.i.us.us, 1  ; 2 uses
  %exitcond110.not.i.us.us = icmp eq i64 %i.cn, %i.cc
  br i1 %exitcond110.not.i.us.us, label %ares_fetch_dnsname_into_buf.exit.loopexit.us.us, label %.lr.ph.split.us.split.i.us.us, !llvm.loop !33

ares_fetch_dnsname_into_buf.exit.loopexit.us.us:  ; preds = %select.unfold.us.i.us.us
  %i.co = call i32 @ares_buf_consume(ptr noundef nonnull %0, i64 noundef range(i64 0, 256) %i.cc) #3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %.not60.us.us = icmp eq i32 %i.co, 0
  br i1 %.not60.us.us, label %bb.ae, label %.thread

.split.us.us.split:                               ; preds = %bb.ah
  %i.cp = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #3 ; 2 uses
  %.not62.us = icmp eq i32 %i.cp, 0
  br i1 %.not62.us, label %bb.aa, label %.thread

.outer:                                           ; preds = %bb.d, %bb.at
  %.044.ph = phi i64 [ %.145, %bb.at ], [ 0, %bb.d ] ; 3 uses
  %.039.ph = phi i64 [ %.1, %bb.at ], [ %i.d, %bb.d ]
  br label %bb.am

bb.am:                                            ; preds = %.outer, %ares_fetch_dnsname_into_buf.exit.loopexit81
  %.039 = phi i64 [ %.1, %ares_fetch_dnsname_into_buf.exit.loopexit81 ], [ %.039.ph, %.outer ] ; 2 uses
  %i.cq = call i64 @ares_buf_get_position(ptr noundef nonnull %0) #3
  %i.cr = icmp ugt i64 %.039, %i.cq
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cs = call i64 @ares_buf_get_position(ptr noundef nonnull %0) #3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1 = phi i64 [ %i.cs, %bb.an ], [ %.039, %bb.am ] ; 3 uses
  %i.ct = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #3 ; 2 uses
  %.not = icmp eq i32 %i.ct, 0
  br i1 %.not, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.cu = load i8, ptr %i.c, align 1, !tbaa !20   ; 3 uses
  %trunc = and i8 %i.cu, -64
  switch i8 %trunc, label %.thread72 [
    i8 -64, label %.split
    i8 0, label %bb.au
  ]

.split:                                           ; preds = %bb.ap
  %i.cv = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #3 ; 2 uses
  %.not62 = icmp eq i32 %i.cv, 0
  br i1 %.not62, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %.split
  %i.cw = zext i8 %i.cu to i64
  %i.cx = shl nuw nsw i64 %i.cw, 8
  %i.cy = and i64 %i.cx, 16128
  %i.cz = load i8, ptr %i.c, align 1, !tbaa !20
  %i.da = zext i8 %i.cz to i64
  %i.db = or disjoint i64 %i.cy, %i.da            ; 2 uses
  %.not63 = icmp ugt i64 %.1, %i.db
  br i1 %.not63, label %bb.ar, label %.thread72

bb.ar:                                            ; preds = %bb.aq
  %i.dc = icmp eq i64 %.044.ph, 0
  br i1 %i.dc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dd = call i64 @ares_buf_get_position(ptr noundef nonnull %0) #3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.145 = phi i64 [ %i.dd, %bb.as ], [ %.044.ph, %bb.ar ]
  %i.de = call i32 @ares_buf_set_position(ptr noundef nonnull %0, i64 noundef %i.db) #3
  %.not64 = icmp eq i32 %i.de, 0
  br i1 %.not64, label %.outer, label %.thread72

bb.au:                                            ; preds = %bb.ap
  %i.df = icmp eq i8 %i.cu, 0
  br i1 %i.df, label %.split108.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dg = call i64 @ares_buf_len(ptr noundef nonnull %.040.fr) #3
  %i.dh = icmp ne i64 %i.dg, 0
  %or.cond = and i1 %i.f, %i.dh
  br i1 %or.cond, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.di = call i32 @ares_buf_append_byte(ptr noundef nonnull %.040.fr, i8 noundef zeroext 46) #3 ; 2 uses
  %.not59 = icmp eq i32 %i.di, 0
  br i1 %.not59, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dj = load i8, ptr %i.c, align 1, !tbaa !20
  %i.dk = zext i8 %i.dj to i64                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.dl = call ptr @ares_buf_peek(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #3
  %i.dm = load i64, ptr %i.a, align 8
  %i.dn = freeze i64 %i.dm
  %i.do = add nsw i64 %i.dk, -1
  %or.cond.not.i = icmp ult i64 %i.do, %i.dn
  br i1 %or.cond.not.i, label %.lr.ph.split.i, label %ares_fetch_dnsname_into_buf.exit.thread

.lr.ph.split.i:                                   ; preds = %bb.ax, %select.unfold.i
  %.070105.i = phi i64 [ %i.eg, %select.unfold.i ], [ 0, %bb.ax ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.070105.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %.fr104.i = freeze i8 %i.dq                     ; 9 uses
  %i.dr = and i8 %.fr104.i, -33
  %i.ds = add i8 %i.dr, -65
  %i.dt = icmp ult i8 %i.ds, 26
  %i.du = add i8 %.fr104.i, -48
  %or.cond10.i = icmp ult i8 %i.du, 10
  %i.dv = or i1 %or.cond10.i, %i.dt
  %or.cond.i = or i1 %.not.i, %i.dv
  br i1 %or.cond.i, label %bb.ay, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.split.i
  switch i8 %.fr104.i, label %ares_fetch_dnsname_into_buf.exit.thread [
    i8 46, label %is_reservedch.exit.i
    i8 42, label %is_reservedch.exit.thread.i
    i8 45, label %is_reservedch.exit.thread.i
    i8 47, label %is_reservedch.exit.thread.i
    i8 95, label %is_reservedch.exit.thread.i
  ]

bb.ay:                                            ; preds = %.lr.ph.split.i
  %i.dw = add i8 %.fr104.i, -32
  %or.cond28.i = icmp ult i8 %i.dw, 95
  br i1 %or.cond28.i, label %.thread.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i8 92, ptr %i.b, align 1, !tbaa !20
  %3 = udiv i8 %.fr104.i, 100
  %i.dx = or disjoint i8 %3, 48
  store i8 %i.dx, ptr %i.j, align 1, !tbaa !20
  %i.dy = urem i8 %.fr104.i, 100
  %i.dz = udiv i8 %i.dy, 10
  %i.ea = or disjoint i8 %i.dz, 48
  store i8 %i.ea, ptr %i.k, align 1, !tbaa !20
  %i.eb = urem i8 %.fr104.i, 10
  %i.ec = or disjoint i8 %i.eb, 48
  store i8 %i.ec, ptr %i.l, align 1, !tbaa !20
  %i.ed = call i32 @ares_buf_append(ptr noundef nonnull %.040.fr, ptr noundef nonnull %i.b, i64 noundef 4) #3 ; 2 uses
  %.not80.i = icmp eq i32 %i.ed, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br i1 %.not80.i, label %select.unfold.i, label %ares_fetch_dnsname_into_buf.exit.thread

.thread.i:                                        ; preds = %bb.ay
  switch i8 %.fr104.i, label %is_reservedch.exit.thread.i [
    i8 34, label %is_reservedch.exit.i
    i8 46, label %is_reservedch.exit.i
    i8 59, label %is_reservedch.exit.i
    i8 92, label %is_reservedch.exit.i
    i8 40, label %is_reservedch.exit.i
    i8 41, label %is_reservedch.exit.i
    i8 64, label %is_reservedch.exit.i
    i8 36, label %is_reservedch.exit.i
  ]

is_reservedch.exit.i:                             ; preds = %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %switch.early.test.i
  %i.ee = call i32 @ares_buf_append_byte(ptr noundef nonnull %.040.fr, i8 noundef zeroext 92) #3 ; 2 uses
  %.not82.i = icmp eq i32 %i.ee, 0
  br i1 %.not82.i, label %is_reservedch.exit.thread.i, label %ares_fetch_dnsname_into_buf.exit.thread

is_reservedch.exit.thread.i:                      ; preds = %is_reservedch.exit.i, %.thread.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %i.ef = call i32 @ares_buf_append_byte(ptr noundef nonnull %.040.fr, i8 noundef zeroext %.fr104.i) #3 ; 2 uses
  %.not83.i = icmp eq i32 %i.ef, 0
  br i1 %.not83.i, label %select.unfold.i, label %ares_fetch_dnsname_into_buf.exit.thread

select.unfold.i:                                  ; preds = %is_reservedch.exit.thread.i, %bb.az
  %i.eg = add nuw nsw i64 %.070105.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eg, %i.dk
  br i1 %exitcond.not.i, label %ares_fetch_dnsname_into_buf.exit.loopexit81, label %.lr.ph.split.i, !llvm.loop !33

ares_fetch_dnsname_into_buf.exit.thread:          ; preds = %bb.ax, %switch.early.test.i, %bb.az, %is_reservedch.exit.i, %is_reservedch.exit.thread.i, %bb.al, %switch.early.test.us.i.us.us, %bb.z, %bb.p
  %.2.i.ph = phi i32 [ %i.ef, %is_reservedch.exit.thread.i ], [ 10, %switch.early.test.us.i.us.us ], [ 10, %bb.p ], [ 10, %bb.al ], [ 10, %bb.z ], [ 10, %switch.early.test.i ], [ %i.ed, %bb.az ], [ %i.ee, %is_reservedch.exit.i ], [ 10, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %.thread

ares_fetch_dnsname_into_buf.exit.loopexit81:      ; preds = %select.unfold.i
  %i.eh = call i32 @ares_buf_consume(ptr noundef nonnull %0, i64 noundef range(i64 0, 256) %i.dk) #3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %.not60 = icmp eq i32 %i.eh, 0
  br i1 %.not60, label %bb.am, label %.thread

.split108.us:                                     ; preds = %bb.au, %bb.ai, %bb.y, %bb.m
  %.us-phi109 = phi i64 [ %.044.ph.us.us.us, %bb.m ], [ %.044.ph.us.us, %bb.y ], [ %.044.ph.us, %bb.ai ], [ %.044.ph, %bb.au ] ; 2 uses
  %.not61 = icmp eq i64 %.us-phi109, 0
  br i1 %.not61, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.split108.us
  %i.ei = call i32 @ares_buf_set_position(ptr noundef nonnull %0, i64 noundef %.us-phi109) #3 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.split108.us
  br i1 %i.f, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ej = call ptr @ares_buf_finish_str(ptr noundef %.040.fr, ptr noundef null) #3 ; 2 uses
  store ptr %i.ej, ptr %1, align 8, !tbaa !34
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.thread72, label %bb.bd

.thread:                                          ; preds = %.split, %bb.ao, %bb.aw, %ares_fetch_dnsname_into_buf.exit.loopexit81, %.split.us.us.split, %bb.ag, %bb.ak, %ares_fetch_dnsname_into_buf.exit.loopexit.us.us, %.split.us.us.split.us.us.split.us, %bb.w, %.lr.ph.i.us.us.us.us.us, %.split.us.us.split.us.us.split.us132, %.lr.ph.i.us.us.us.us.us130, %bb.o, %bb.k, %ares_fetch_dnsname_into_buf.exit.thread
  %.143 = phi i32 [ %.2.i.ph, %ares_fetch_dnsname_into_buf.exit.thread ], [ %i.ac, %bb.o ], [ %i.co, %ares_fetch_dnsname_into_buf.exit.loopexit.us.us ], [ %i.bi, %.split.us.us.split.us.us.split.us ], [ %i.cp, %.split.us.us.split ], [ %i.ax, %bb.w ], [ %i.ak, %.split.us.us.split.us.us.split.us132 ], [ %i.di, %bb.aw ], [ %i.aj, %.lr.ph.i.us.us.us.us.us130 ], [ %i.y, %bb.k ], [ %i.bh, %.lr.ph.i.us.us.us.us.us ], [ %i.bv, %bb.ag ], [ %i.ca, %bb.ak ], [ %i.ct, %bb.ao ], [ %i.eh, %ares_fetch_dnsname_into_buf.exit.loopexit81 ], [ %i.cv, %.split ]
  %.143.fr = freeze i32 %.143                     ; 2 uses
  %i.el = icmp eq i32 %.143.fr, 10
  %spec.select = select i1 %i.el, i32 8, i32 %.143.fr
  br label %.thread72

.thread72:                                        ; preds = %bb.at, %bb.aq, %bb.ap, %bb.ad, %bb.aa, %bb.ah, %bb.q, %bb.t, %bb.x, %bb.e, %bb.h, %bb.l, %.thread, %bb.bc, %bb.c
  %.14176 = phi ptr [ null, %bb.c ], [ %.040.fr, %.thread ], [ %.040.fr, %bb.bc ], [ null, %bb.x ], [ null, %bb.ah ], [ null, %bb.e ], [ null, %bb.l ], [ %.040.fr, %bb.ap ], [ null, %bb.ad ], [ null, %bb.q ], [ null, %bb.h ], [ null, %bb.t ], [ null, %bb.aa ], [ %.040.fr, %bb.aq ], [ %.040.fr, %bb.at ]
  %i.em = phi i32 [ 15, %bb.c ], [ %spec.select, %.thread ], [ 15, %bb.bc ], [ 8, %bb.x ], [ 8, %bb.ah ], [ 8, %bb.e ], [ 8, %bb.l ], [ 8, %bb.ap ], [ 8, %bb.ad ], [ 8, %bb.q ], [ 8, %bb.h ], [ 8, %bb.t ], [ 8, %bb.aa ], [ 8, %bb.aq ], [ 8, %bb.at ]
  call void @ares_buf_destroy(ptr noundef %.14176) #3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.a, %.thread72
  %.046 = phi i32 [ 2, %bb.a ], [ %i.em, %.thread72 ], [ 0, %bb.bc ], [ 0, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  ret i32 %.046
}

declare i64 @ares_buf_get_position(ptr noundef) local_unnamed_addr #2

declare ptr @ares_buf_create() local_unnamed_addr #2

declare i32 @ares_buf_fetch_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_buf_set_position(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ares_buf_finish_str(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ares_buf_destroy(ptr noundef) local_unnamed_addr #2

declare i64 @ares_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @ares_llist_node_first(ptr noundef) local_unnamed_addr #2

declare ptr @ares_llist_node_val(ptr noundef) local_unnamed_addr #2

declare i32 @ares_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ares_llist_node_next(ptr noundef) local_unnamed_addr #2

declare i32 @ares_array_insert_last(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ares_array_remove_last(ptr noundef) local_unnamed_addr #2

declare ptr @ares_array_last(ptr noundef) local_unnamed_addr #2

declare ptr @ares_array_at(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ares_llist_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ares_nameoffset_free(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @ares_free(ptr noundef %i.b) #3
  tail call void @ares_free(ptr noundef nonnull %0) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @ares_malloc_zero(i64 noundef) local_unnamed_addr #2

declare ptr @ares_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @ares_llist_insert_last(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ares_free(ptr noundef) local_unnamed_addr #2

declare i32 @ares_buf_consume(ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS10ares_llist", !14, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!16, !18, i64 8}
!16 = !{!"", !17, i64 0, !18, i64 8, !18, i64 16}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!16, !17, i64 0}
!20 = !{!10, !10, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !24, i64 0}
!24 = !{!"p2 _ZTS8ares_buf", !25, i64 0}
!25 = !{!"any p2 pointer", !14, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS8ares_buf", !14, i64 0}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = !{!18, !18, i64 0}
!32 = !{!16, !18, i64 16}
!33 = distinct !{!33, !22}
!34 = !{!17, !17, i64 0}
end_hunk_0
