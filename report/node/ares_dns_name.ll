inline.NumInlined: 15
inline.NumDeleted: 10
begin_hunk_0_@ares_dns_name_write:bb.a
bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.02738.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = icmp ugt i64 %i.w, %i.t
  br i1 %i.x, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = sub i64 %i.n, %i.t
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.y ; 2 uses
  %i.ab = call i32 @ares_streq(ptr noundef %i.z, ptr noundef nonnull %i.aa) #3
  %.not34.i = icmp eq i32 %i.ab, 0
  br i1 %.not34.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not35.i = icmp eq i64 %i.n, %i.t
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.aa, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %.not36.i = icmp eq i8 %i.ad, 46
  br i1 %.not36.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i
  %.1.i = phi ptr [ %.02738.i, %bb.g ], [ %.02738.i, %.lr.ph.i ], [ %.02738.i, %bb.h ], [ %i.r, %bb.k ], [ %.02738.i, %bb.j ] ; 6 uses
  %i.ae = call ptr @ares_llist_node_next(ptr noundef nonnull %.02639.i) #3 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %ares_nameoffset_find.exit, label %.lr.ph.i, !llvm.loop !21

ares_nameoffset_find.exit:                        ; preds = %bb.l
  %.not82 = icmp eq ptr %.1.i, null
  br i1 %.not82, label %.thread, label %bb.m

bb.m:                                             ; preds = %ares_nameoffset_find.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %.not83 = icmp eq i64 %i.ag, %i.l
  br i1 %.not83, label %.thread123, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg = xor i64 %i.ag, -1
  %i.ah = add i64 %i.l, %.neg                     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ah
  store i8 0, ptr %i.ai, align 1, !tbaa !20
  %.pre = load i64, ptr %i.af, align 8, !tbaa !15
  %i.aj = icmp eq i64 %.pre, %i.l
  br i1 %i.aj, label %.thread123, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c, %ares_nameoffset_find.exit, %bb.n
  %i.ak = phi i1 [ false, %bb.n ], [ true, %ares_nameoffset_find.exit ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  %.057106 = phi ptr [ %.1.i, %bb.n ], [ null, %ares_nameoffset_find.exit ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  %.058105 = phi i64 [ %i.ah, %bb.n ], [ %i.l, %ares_nameoffset_find.exit ], [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.al = call ptr @ares_buf_create() #3          ; 10 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %ares_split_dns_name.exit.thread, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.an = load i8, ptr %i.e, align 16, !tbaa !20
  %.not.i97 = icmp eq i8 %i.an, 0
  br i1 %.not.i97, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = call i64 @ares_strlen(ptr noundef nonnull %i.e) #3
  %i.ap = call i32 @ares_buf_append(ptr noundef nonnull %i.al, ptr noundef nonnull %i.e, i64 noundef %i.ao) #3 ; 2 uses
  %.not87.i = icmp eq i32 %i.ap, 0
  br i1 %.not87.i, label %bb.q, label %ares_split_dns_name.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.aq = call i32 @ares_array_insert_last(ptr noundef nonnull %i.c, ptr noundef nonnull %i.j) #3
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %bb.r, label %ares_dns_labels_add.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ar = call ptr @ares_buf_create() #3          ; 3 uses
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !23
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !26
  %i.at = icmp eq ptr %i.ar, null
  br i1 %i.at, label %bb.s, label %ares_dns_labels_add.exit.i

bb.s:                                             ; preds = %bb.r
  %i.au = call i32 @ares_array_remove_last(ptr noundef nonnull %i.j) #3 ; 0 uses
  br label %ares_dns_labels_add.exit.thread.i

ares_dns_labels_add.exit.thread.i:                ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  br label %ares_split_dns_name.exit.thread

ares_dns_labels_add.exit.i:                       ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  %i.av = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %i.al, ptr noundef nonnull %i.d, i64 noundef 1) #3
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.lr.ph.i:                                   ; preds = %ares_dns_labels_add.exit.i
  %.not60.i.i = icmp eq i32 %2, 0                 ; 3 uses
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %ares_dns_labels_add.exit96.i, %.lr.ph.lr.ph.i
  %.073.ph108.i = phi ptr [ %i.ar, %.lr.ph.lr.ph.i ], [ %i.az, %ares_dns_labels_add.exit96.i ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.backedge.i, %.lr.ph.i98
  %i.ax = load i8, ptr %i.d, align 1, !tbaa !20   ; 5 uses
  switch i8 %i.ax, label %bb.ah [
    i8 46, label %bb.u
    i8 92, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.ay = call i32 @ares_array_insert_last(ptr noundef nonnull %i.b, ptr noundef nonnull %i.j) #3
  %.not.i94.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i94.i, label %bb.v, label %ares_dns_labels_add.exit96.thread.i

bb.v:                                             ; preds = %bb.u
  %i.az = call ptr @ares_buf_create() #3          ; 3 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !23
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !26
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %bb.w, label %ares_dns_labels_add.exit96.i

bb.w:                                             ; preds = %bb.v
  %i.bc = call i32 @ares_array_remove_last(ptr noundef nonnull %i.j) #3 ; 0 uses
  br label %ares_dns_labels_add.exit96.thread.i

ares_dns_labels_add.exit96.thread.i:              ; preds = %bb.u, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %ares_split_dns_name.exit.thread

ares_dns_labels_add.exit96.i:                     ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  %i.bd = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %i.al, ptr noundef nonnull %i.d, i64 noundef 1) #3
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i98, label %.outer._crit_edge.i, !llvm.loop !28

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.bf = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i64 noundef 1) #3
  %.not.i97.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i97.i, label %bb.y, label %ares_parse_dns_name_escape.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.bg = load i8, ptr %i.a, align 1, !tbaa !20
  %.fr80.i.i = freeze i8 %i.bg                    ; 10 uses
  %i.bh = add i8 %.fr80.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.bh, 10
  br i1 %or.cond.i.i, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.bi = zext nneg i8 %.fr80.i.i to i32
  %i.bj = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i64 noundef 1) #3
  %.not62.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not62.i.i, label %bb.aa, label %ares_parse_dns_name_escape.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.bk = load i8, ptr %i.a, align 1, !tbaa !20   ; 2 uses
  %i.bl = add i8 %i.bk, -48
  %or.cond5.i.i = icmp ult i8 %i.bl, 10
  br i1 %or.cond5.i.i, label %bb.ab, label %ares_parse_dns_name_escape.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.bm = zext nneg i8 %i.bk to i32
  %i.bn = mul nuw nsw i32 %i.bi, 10
  %i.bo = add nsw i32 %i.bn, -528
  %i.bp = add nsw i32 %i.bo, %i.bm
  %.0.fr.i.i = freeze i32 %i.bp
  %i.bq = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i64 noundef 1) #3
  %.not62.1.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not62.1.i.i, label %bb.ac, label %ares_parse_dns_name_escape.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.br = load i8, ptr %i.a, align 1, !tbaa !20
  %.fr81.i.i = freeze i8 %i.br                    ; 2 uses
  %i.bs = add i8 %.fr81.i.i, -48
  %or.cond5.1.i.i = icmp ult i8 %i.bs, 10
  br i1 %or.cond5.1.i.i, label %bb.ad, label %ares_parse_dns_name_escape.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.bt = zext nneg i8 %.fr81.i.i to i32
  %i.bu = mul i32 %.0.fr.i.i, 10
  %i.bv = add i32 %i.bu, -48
  %i.bw = add i32 %i.bv, %i.bt                    ; 5 uses
  %i.bx = icmp ugt i32 %i.bw, 255
  br i1 %i.bx, label %ares_parse_dns_name_escape.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = add nsw i32 %i.bw, -97
  %or.cond63.i.i = icmp ult i32 %i.by, 26
  %or.cond73.i.i = select i1 %.not60.i.i, i1 true, i1 %or.cond63.i.i
  %i.bz = add nsw i32 %i.bw, -65
  %or.cond64.i.i = icmp ult i32 %i.bz, 26
  %or.cond74.i.i = select i1 %or.cond73.i.i, i1 true, i1 %or.cond64.i.i
  %i.ca = add nsw i32 %i.bw, -48
  %or.cond65.i.i = icmp ult i32 %i.ca, 10
  %or.cond75.i.i = or i1 %or.cond65.i.i, %or.cond74.i.i
  %.pre.i.i = trunc nuw i32 %i.bw to i8           ; 7 uses
  br i1 %or.cond75.i.i, label %ares_parse_dns_name_escape.exit.i, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.ae
  switch i8 %.pre.i.i, label %ares_parse_dns_name_escape.exit.thread.i [
    i8 95, label %ares_parse_dns_name_escape.exit.i
    i8 47, label %ares_parse_dns_name_escape.exit.i
    i8 46, label %ares_parse_dns_name_escape.exit.i
    i8 45, label %ares_parse_dns_name_escape.exit.i
    i8 42, label %ares_parse_dns_name_escape.exit.i
  ]

bb.af:                                            ; preds = %bb.y
  %i.cb = and i8 %.fr80.i.i, -33
  %i.cc = add i8 %i.cb, -65
  %i.cd = icmp ult i8 %i.cc, 26
  %or.cond72.i.i = or i1 %.not60.i.i, %i.cd
  br i1 %or.cond72.i.i, label %ares_parse_dns_name_escape.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  switch i8 %.fr80.i.i, label %ares_parse_dns_name_escape.exit.thread.i [
    i8 95, label %ares_parse_dns_name_escape.exit.i
    i8 47, label %ares_parse_dns_name_escape.exit.i
    i8 46, label %ares_parse_dns_name_escape.exit.i
    i8 45, label %ares_parse_dns_name_escape.exit.i
    i8 42, label %ares_parse_dns_name_escape.exit.i
  ]

ares_parse_dns_name_escape.exit.thread.i:         ; preds = %bb.ag, %switch.early.test.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %ares_split_dns_name.exit.thread

ares_parse_dns_name_escape.exit.i:                ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.af, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.ae
  %.pre-phi.sink.i.i = phi i8 [ %.pre.i.i, %bb.ae ], [ %.pre.i.i, %switch.early.test.i.i ], [ %.pre.i.i, %switch.early.test.i.i ], [ %.pre.i.i, %switch.early.test.i.i ], [ %.pre.i.i, %switch.early.test.i.i ], [ %.pre.i.i, %switch.early.test.i.i ], [ %.fr80.i.i, %bb.ag ], [ %.fr80.i.i, %bb.ag ], [ %.fr80.i.i, %bb.ag ], [ %.fr80.i.i, %bb.ag ], [ %.fr80.i.i, %bb.ag ], [ %.fr80.i.i, %bb.af ]
  %i.ce = call i32 @ares_buf_append_byte(ptr noundef nonnull %.073.ph108.i, i8 noundef zeroext %.pre-phi.sink.i.i) #3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %.not91.i = icmp eq i32 %i.ce, 0
  br i1 %.not91.i, label %.backedge.i, label %ares_split_dns_name.exit.thread

.backedge.i:                                      ; preds = %bb.ai, %ares_parse_dns_name_escape.exit.i
  %i.cf = call i32 @ares_buf_fetch_bytes(ptr noundef nonnull %i.al, ptr noundef nonnull %i.d, i64 noundef 1) #3
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.t, label %.outer._crit_edge.i, !llvm.loop !28

bb.ah:                                            ; preds = %bb.t
  %i.ch = and i8 %i.ax, -33
  %i.ci = add i8 %i.ch, -65
  %i.cj = icmp ult i8 %i.ci, 26
  %i.ck = add i8 %i.ax, -48
  %or.cond10.i = icmp ult i8 %i.ck, 10
  %i.cl = or i1 %or.cond10.i, %i.cj
  %or.cond93.i = or i1 %.not60.i.i, %i.cl
  br i1 %or.cond93.i, label %bb.ai, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.ah
  switch i8 %i.ax, label %ares_split_dns_name.exit.thread [
    i8 95, label %bb.ai
    i8 47, label %bb.ai
    i8 45, label %bb.ai
    i8 42, label %bb.ai
  ]

bb.ai:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.ah
  %i.cm = call i32 @ares_buf_append_byte(ptr noundef nonnull %.073.ph108.i, i8 noundef zeroext %i.ax) #3 ; 2 uses
  %.not90.i = icmp eq i32 %i.cm, 0
  br i1 %.not90.i, label %.backedge.i, label %ares_split_dns_name.exit.thread

.outer._crit_edge.i:                              ; preds = %ares_dns_labels_add.exit96.i, %.backedge.i, %ares_dns_labels_add.exit.i
  %i.cn = call ptr @ares_array_last(ptr noundef nonnull %i.j) #3 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %ares_dns_labels_get_last.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.outer._crit_edge.i
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !26
  br label %ares_dns_labels_get_last.exit.i

ares_dns_labels_get_last.exit.i:                  ; preds = %bb.aj, %.outer._crit_edge.i
  %.0.i98.i = phi ptr [ %i.cp, %bb.aj ], [ null, %.outer._crit_edge.i ]
  %i.cq = call i64 @ares_buf_len(ptr noundef %.0.i98.i) #3
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %ares_dns_labels_get_last.exit.i
  %i.cs = call i32 @ares_array_remove_last(ptr noundef nonnull %i.j) #3 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %ares_dns_labels_get_last.exit.i
  %i.ct = call i64 @ares_array_len(ptr noundef nonnull %i.j) #3
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.cv = call ptr @ares_array_last(ptr noundef nonnull %i.j) #3 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %ares_dns_labels_get_last.exit100.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !26
  br label %ares_dns_labels_get_last.exit100.i

ares_dns_labels_get_last.exit100.i:               ; preds = %bb.an, %bb.am
  %.0.i99.i = phi ptr [ %i.cx, %bb.an ], [ null, %bb.am ]
  %i.cy = call i64 @ares_buf_len(ptr noundef %.0.i99.i) #3
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %ares_dns_labels_get_last.exit100.i
  %i.da = call i32 @ares_array_remove_last(ptr noundef nonnull %i.j) #3 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %ares_dns_labels_get_last.exit100.i, %bb.al
  %i.db = call i64 @ares_array_len(ptr noundef nonnull %i.j) #3
  %.not114.i = icmp eq i64 %i.db, 0
  br i1 %.not114.i, label %._crit_edge113.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %bb.ap, %bb.ar
  %.070110.i = phi i64 [ %i.dh, %bb.ar ], [ 0, %bb.ap ]
  %.072109.i = phi i64 [ %i.di, %bb.ar ], [ 0, %bb.ap ] ; 2 uses
  %i.dc = call ptr @ares_array_at(ptr noundef nonnull %i.j, i64 noundef %.072109.i) #3 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %ares_dns_labels_get_at.exit.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph112.i
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !26
  br label %ares_dns_labels_get_at.exit.i

ares_dns_labels_get_at.exit.i:                    ; preds = %bb.aq, %.lr.ph112.i
  %.0.i101.i = phi ptr [ %i.de, %bb.aq ], [ null, %.lr.ph112.i ]
  %i.df = call i64 @ares_buf_len(ptr noundef %.0.i101.i) #3 ; 2 uses
  %i.dg = add i64 %i.df, -64
  %or.cond27.i = icmp ult i64 %i.dg, -63
  br i1 %or.cond27.i, label %ares_split_dns_name.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %ares_dns_labels_get_at.exit.i
  %i.dh = add i64 %i.df, %.070110.i               ; 2 uses
  %i.di = add nuw i64 %.072109.i, 1               ; 2 uses
  %i.dj = call i64 @ares_array_len(ptr noundef nonnull %i.j) #3
  %i.dk = icmp ult i64 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph112.i, label %._crit_edge113.loopexit.i, !llvm.loop !29

._crit_edge113.loopexit.i:                        ; preds = %bb.ar
  %i.dl = add i64 %i.dh, -257
  br label %._crit_edge113.i

._crit_edge113.i:                                 ; preds = %._crit_edge113.loopexit.i, %bb.ap
  %.070.lcssa.i = phi i64 [ -257, %bb.ap ], [ %i.dl, %._crit_edge113.loopexit.i ]
  %i.dm = call i64 @ares_array_len(ptr noundef nonnull %i.j) #3
  %.not88.i = icmp eq i64 %i.dm, 0
  br i1 %.not88.i, label %ares_split_dns_name.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge113.i
  %i.dn = call i64 @ares_array_len(ptr noundef nonnull %i.j) #3
  %i.do = add i64 %i.dn, %.070.lcssa.i
  %i.dp = icmp ult i64 %i.do, -256
  br i1 %i.dp, label %ares_split_dns_name.exit.thread, label %ares_split_dns_name.exit

ares_split_dns_name.exit.thread:                  ; preds = %switch.early.test.i, %bb.ai, %ares_parse_dns_name_escape.exit.i, %ares_dns_labels_get_at.exit.i, %bb.p, %.thread, %ares_dns_labels_add.exit.thread.i, %bb.as, %ares_dns_labels_add.exit96.thread.i, %ares_parse_dns_name_escape.exit.thread.i
  %.4.i.ph = phi i32 [ 15, %ares_dns_labels_add.exit.thread.i ], [ 15, %.thread ], [ 8, %ares_dns_labels_get_at.exit.i ], [ 8, %ares_parse_dns_name_escape.exit.thread.i ], [ 15, %ares_dns_labels_add.exit96.thread.i ], [ 8, %bb.as ], [ %i.ap, %bb.p ], [ 8, %switch.early.test.i ], [ %i.cm, %bb.ai ], [ %i.ce, %ares_parse_dns_name_escape.exit.i ]
  call void @ares_buf_destroy(ptr noundef %i.al) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %ares_nameoffset_create.exit

ares_split_dns_name.exit:                         ; preds = %._crit_edge113.i, %bb.as
  call void @ares_buf_destroy(ptr noundef nonnull %i.al) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  %i.dq = call i64 @ares_array_len(ptr noundef nonnull %i.j) #3
  %.not138 = icmp eq i64 %i.dq, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

bb.at:                                            ; preds = %bb.av
  %i.dr = add nuw i64 %.059137, 1                 ; 2 uses
  %i.ds = call i64 @ares_array_len(ptr noundef nonnull %i.j) #3
  %i.dt = icmp ult i64 %i.dr, %i.ds
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !llvm.loop !30

.lr.ph:                                           ; preds = %ares_split_dns_name.exit, %bb.at
  %.059137 = phi i64 [ %i.dr, %bb.at ], [ 0, %ares_split_dns_name.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  store i64 0, ptr %i.f, align 8, !tbaa !31
  %i.du = call ptr @ares_array_at(ptr noundef nonnull %i.j, i64 noundef %.059137) #3 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %ares_dns_labels_get_at.exit, label %bb.au

bb.au:                                            ; preds = %.lr.ph
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !26
  br label %ares_dns_labels_get_at.exit

ares_dns_labels_get_at.exit:                      ; preds = %.lr.ph, %bb.au
  %.0.i99 = phi ptr [ %i.dw, %bb.au ], [ null, %.lr.ph ]
  %i.dx = call ptr @ares_buf_peek(ptr noundef %.0.i99, ptr noundef nonnull %i.f) #3
  %i.dy = load i64, ptr %i.f, align 8, !tbaa !31
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = call i32 @ares_buf_append_byte(ptr noundef %0, i8 noundef zeroext %i.dz) #3 ; 2 uses
  %.not87 = icmp eq i32 %i.ea, 0
  br i1 %.not87, label %bb.av, label %.thread110

.thread110:                                       ; preds = %ares_dns_labels_get_at.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  br label %ares_nameoffset_create.exit

end_hunk_0
