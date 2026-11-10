Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evdns?download=true
inline.NumInlined: 196
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@resolv_conf_parse_line:bb.a
  br i1 %.not, label %search_postfix_add.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(11) @.str.79) #21
  %.not31 = icmp ne i32 %i.c, 0
  %i.d = and i32 %2, 2
  %.not32 = icmp eq i32 %i.d, 0
  %or.cond = or i1 %.not32, %.not31
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %search_postfix_add.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @evdns_base_nameserver_ip_add(ptr noundef %0, ptr noundef nonnull %i.e) ; 0 uses
  br label %search_postfix_add.exit

bb.e:                                             ; preds = %bb.b
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(7) @.str.80) #21
  %.not34 = icmp ne i32 %i.g, 0
  %i.h = and i32 %2, 1
  %.not35 = icmp eq i32 %i.h, 0                   ; 2 uses
  %or.cond43 = or i1 %.not35, %.not34
  br i1 %or.cond43, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %search_postfix_add.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %search_state_decref.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8
  %.not10.i.i = icmp eq i32 %i.m, 0
  br i1 %.not10.i.i, label %bb.i, label %search_state_decref.exit.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not1112.i.i = icmp eq ptr %i.o, null
  br i1 %.not1112.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.o, %bb.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  call void @event_mm_free_(ptr noundef nonnull %.013.i.i) #19
  %.not11.i.i = icmp eq ptr %i.q, null
  br i1 %.not11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  call void @event_mm_free_(ptr noundef nonnull %i.k) #19
  br label %search_state_decref.exit.i

search_state_decref.exit.i:                       ; preds = %._crit_edge.i.i, %bb.h, %bb.g
  %i.r = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i2.i = icmp eq ptr %i.r, null             ; 2 uses
  br i1 %.not.i2.i, label %search_postfix_clear.exit, label %bb.j

bb.j:                                             ; preds = %search_state_decref.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 1, ptr %i.t, align 4
  br label %search_postfix_clear.exit

search_postfix_clear.exit:                        ; preds = %search_state_decref.exit.i, %bb.j
  store ptr %i.r, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %search_postfix_clear.exit
  %.0.i = phi ptr [ %i.i, %search_postfix_clear.exit ], [ %i.w, %bb.k ] ; 4 uses
  %i.u = load i8, ptr %.0.i, align 1
  %i.v = icmp eq i8 %i.u, 46
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %i.v, label %bb.k, label %bb.l, !llvm.loop !7

bb.l:                                             ; preds = %bb.k
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #21 ; 3 uses
  br i1 %.not.i2.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.y = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i.i45 = icmp eq ptr %i.y, null
  br i1 %.not.i.i45, label %.thread24.i, label %bb.n

.thread24.i:                                      ; preds = %bb.m
  store ptr null, ptr %i.j, align 8
  br label %search_postfix_add.exit

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 1, ptr %i.aa, align 4
  store ptr %i.y, ptr %i.j, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.l
  %i.ab = phi ptr [ %i.y, %bb.n ], [ %i.r, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = add i64 %i.x, 16
  %i.ag = call ptr @event_mm_malloc_(i64 noundef %i.af) #19 ; 5 uses
  %.not22.i = icmp eq ptr %i.ag, null
  br i1 %.not22.i, label %search_postfix_add.exit, label %bb.o

bb.o:                                             ; preds = %.thread.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %.0.i, i64 %i.x, i1 false)
  %i.ai = load ptr, ptr %i.j, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = trunc i64 %i.x to i32
  store i32 %i.am, ptr %i.ag, align 8
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ag, ptr %i.ao, align 8
  br label %search_postfix_add.exit

bb.p:                                             ; preds = %bb.e
  %i.ap = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(7) @.str.81) #21
  %.not37 = icmp ne i32 %i.ap, 0
  %or.cond44 = or i1 %.not35, %.not37
  br i1 %or.cond44, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 9 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 5 uses
  %.not.i.i46 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i46, label %search_state_decref.exit.i48, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8
  %.not10.i.i47 = icmp eq i32 %i.at, 0
  br i1 %.not10.i.i47, label %bb.s, label %search_state_decref.exit.i48

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not1112.i.i50 = icmp eq ptr %i.av, null
  br i1 %.not1112.i.i50, label %._crit_edge.i.i54, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %bb.s, %.lr.ph.i.i51
  %.013.i.i52 = phi ptr [ %i.ax, %.lr.ph.i.i51 ], [ %i.av, %bb.s ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i52, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  call void @event_mm_free_(ptr noundef nonnull %.013.i.i52) #19
  %.not11.i.i53 = icmp eq ptr %i.ax, null
  br i1 %.not11.i.i53, label %._crit_edge.i.i54, label %.lr.ph.i.i51, !llvm.loop !5

._crit_edge.i.i54:                                ; preds = %.lr.ph.i.i51, %bb.s
  call void @event_mm_free_(ptr noundef nonnull %i.ar) #19
  br label %search_state_decref.exit.i48

search_state_decref.exit.i48:                     ; preds = %._crit_edge.i.i54, %bb.r, %bb.q
  %i.ay = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 5 uses
  %.not.i2.i49 = icmp eq ptr %i.ay, null
  br i1 %.not.i2.i49, label %search_postfix_clear.exit55, label %bb.t

bb.t:                                             ; preds = %search_state_decref.exit.i48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 1, ptr %i.ba, align 4
  br label %search_postfix_clear.exit55

search_postfix_clear.exit55:                      ; preds = %search_state_decref.exit.i48, %bb.t
  store ptr %i.ay, ptr %i.aq, align 8
  %i.bb = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not3965 = icmp eq ptr %i.bb, null
  br i1 %.not3965, label %._crit_edge, label %.preheader64

.preheader64:                                     ; preds = %search_postfix_clear.exit55, %.preheader64.backedge
  %.0.i56 = phi ptr [ %.0.i56.be, %.preheader64.backedge ], [ %i.bb, %search_postfix_clear.exit55 ] ; 4 uses
  %i.bc = load i8, ptr %.0.i56, align 1
  %i.bd = icmp eq i8 %i.bc, 46
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i56, i64 1
  br i1 %i.bd, label %.preheader64.backedge, label %bb.u

.preheader64.backedge:                            ; preds = %.preheader64, %search_postfix_add.exit62
  %.0.i56.be = phi ptr [ %i.be, %.preheader64 ], [ %i.by, %search_postfix_add.exit62 ]
  br label %.preheader64

bb.u:                                             ; preds = %.preheader64
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i56) #21 ; 3 uses
  %i.bg = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i57 = icmp eq ptr %i.bg, null
  br i1 %.not.i57, label %bb.v, label %.thread.i58

bb.v:                                             ; preds = %bb.u
  %i.bh = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i.i60 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i60, label %.thread24.i61, label %bb.w

.thread24.i61:                                    ; preds = %bb.v
  store ptr null, ptr %i.aq, align 8
  br label %search_postfix_add.exit62

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 1, ptr %i.bj, align 4
  store ptr %i.bh, ptr %i.aq, align 8
  br label %.thread.i58

.thread.i58:                                      ; preds = %bb.w, %bb.u
  %i.bk = phi ptr [ %i.bh, %bb.w ], [ %i.bg, %bb.u ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8
  %i.bo = add i64 %i.bf, 16
  %i.bp = call ptr @event_mm_malloc_(i64 noundef %i.bo) #19 ; 5 uses
  %.not22.i59 = icmp eq ptr %i.bp, null
  br i1 %.not22.i59, label %search_postfix_add.exit62, label %bb.x

bb.x:                                             ; preds = %.thread.i58
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %.0.i56, i64 %i.bf, i1 false)
  %i.br = load ptr, ptr %i.aq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = trunc i64 %i.bf to i32
  store i32 %i.bv, ptr %i.bp, align 8
  %i.bw = load ptr, ptr %i.aq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bp, ptr %i.bx, align 8
  br label %search_postfix_add.exit62

search_postfix_add.exit62:                        ; preds = %.thread24.i61, %.thread.i58, %bb.x
  %i.by = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not39 = icmp eq ptr %i.by, null
  br i1 %.not39, label %._crit_edge, label %.preheader64.backedge

._crit_edge:                                      ; preds = %search_postfix_add.exit62, %search_postfix_clear.exit55
  %i.bz = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not12.i = icmp eq ptr %i.cb, null
  br i1 %.not12.i, label %search_reverse.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.014.i = phi ptr [ %.01113.i, %.lr.ph.i ], [ null, %._crit_edge ]
  %.01113.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %i.cb, %._crit_edge ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01113.i, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  store ptr %.014.i, ptr %i.cc, align 8
  %.not.i63 = icmp eq ptr %i.cd, null
  br i1 %.not.i63, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !61

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.aq, align 8
  br label %search_reverse.exit

search_reverse.exit:                              ; preds = %._crit_edge, %._crit_edge.loopexit.i
  %i.ce = phi ptr [ %i.bz, %._crit_edge ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %._crit_edge ], [ %.01113.i, %._crit_edge.loopexit.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %.0.lcssa.i, ptr %i.cf, align 8
  br label %search_postfix_add.exit

bb.y:                                             ; preds = %bb.p
  %i.cg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(8) @.str.82) #21
  %.not40 = icmp eq i32 %i.cg, 0
  br i1 %.not40, label %.preheader, label %search_postfix_add.exit

.preheader:                                       ; preds = %bb.y
  %i.ch = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not4166 = icmp eq ptr %i.ch, null
  br i1 %.not4166, label %search_postfix_add.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ci = phi ptr [ %i.cn, %.lr.ph ], [ %i.ch, %.preheader ] ; 2 uses
  %i.cj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ci, i32 noundef 58) #21 ; 2 uses
  %.not42 = icmp eq ptr %i.cj, null
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = select i1 %.not42, ptr @.str.83, ptr %i.ck
  %i.cm = call fastcc i32 @evdns_base_set_option_impl(ptr noundef %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cl, i32 noundef %2) ; 0 uses
  %i.cn = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not41 = icmp eq ptr %i.cn, null
  br i1 %.not41, label %search_postfix_add.exit, label %.lr.ph, !llvm.loop !62

search_postfix_add.exit:                          ; preds = %.lr.ph, %.preheader, %bb.o, %.thread.i, %.thread24.i, %search_reverse.exit, %bb.y, %bb.d, %bb.c, %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @search_set_from_hostname(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %search_state_decref.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8
  %.not10.i.i = icmp eq i32 %i.e, 0
  br i1 %.not10.i.i, label %bb.c, label %search_state_decref.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not1112.i.i = icmp eq ptr %i.g, null
  br i1 %.not1112.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  tail call void @event_mm_free_(ptr noundef nonnull %.013.i.i) #19
  %.not11.i.i = icmp eq ptr %i.i, null
  br i1 %.not11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  tail call void @event_mm_free_(ptr noundef nonnull %i.c) #19
  br label %search_state_decref.exit.i

search_state_decref.exit.i:                       ; preds = %._crit_edge.i.i, %bb.b, %bb.a
  %i.j = tail call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 5 uses
  %.not.i2.i = icmp eq ptr %i.j, null
  br i1 %.not.i2.i, label %search_postfix_clear.exit, label %bb.d

bb.d:                                             ; preds = %search_state_decref.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 1, ptr %i.l, align 4
  br label %search_postfix_clear.exit

search_postfix_clear.exit:                        ; preds = %search_state_decref.exit.i, %bb.d
  store ptr %i.j, ptr %i.b, align 8
  %i.m = call i32 @gethostname(ptr noundef nonnull %i.a, i64 noundef 65) #19
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %search_postfix_add.exit

bb.e:                                             ; preds = %search_postfix_clear.exit
  %i.n = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 46) #21 ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %search_postfix_add.exit, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader
  %.0.i = phi ptr [ %i.q, %.preheader ], [ %i.n, %bb.e ] ; 4 uses
  %i.o = load i8, ptr %.0.i, align 1
  %i.p = icmp eq i8 %i.o, 46
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %i.p, label %.preheader, label %bb.f, !llvm.loop !7

bb.f:                                             ; preds = %.preheader
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #21 ; 3 uses
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.t = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.t, null
  br i1 %.not.i.i7, label %.thread24.i, label %bb.h

.thread24.i:                                      ; preds = %bb.g
  store ptr null, ptr %i.b, align 8
  br label %search_postfix_add.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 1, ptr %i.v, align 4
  store ptr %i.t, ptr %i.b, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.f
  %i.w = phi ptr [ %i.t, %bb.h ], [ %i.s, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8
  %i.aa = add i64 %i.r, 16
  %i.ab = call ptr @event_mm_malloc_(i64 noundef %i.aa) #19 ; 5 uses
  %.not22.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i, label %search_postfix_add.exit, label %bb.i

bb.i:                                             ; preds = %.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %.0.i, i64 %i.r, i1 false)
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = trunc i64 %i.r to i32
  store i32 %i.ah, ptr %i.ab, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ab, ptr %i.aj, align 8
  br label %search_postfix_add.exit

search_postfix_add.exit:                          ; preds = %bb.i, %.thread.i, %.thread24.i, %bb.e, %search_postfix_clear.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @evdns_base_parse_hosts_line(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.sockaddr_storage, align 8   ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call ptr @strtok_r(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 128, ptr %i.b, align 4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 35
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %i.f = call i32 @evutil_parse_sockaddr_port(ptr noundef nonnull %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #19
  %i.g = icmp slt i32 %i.f, 0
  %i.h = load i32, ptr %i.b, align 4
  %i.i = icmp sgt i32 %i.h, 28
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load i16, ptr %2, align 8
  switch i16 %.val, label %.preheader [
    i16 2, label %sockaddr_getport.exit
    i16 10, label %sockaddr_getport.exit
  ]

sockaddr_getport.exit:                            ; preds = %bb.d, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val37 = load i16, ptr %i.j, align 2
  %.not32 = icmp eq i16 %.val37, 0
  br i1 %.not32, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.d, %sockaddr_getport.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.j
  %i.l = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 5 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 35) #21 ; 3 uses
  %.not34 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %.not34, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.m, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #21 ; 2 uses
  %i.p = add i64 %i.o, 56
  %i.q = call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef %i.p) #19 ; 8 uses
  %.not35 = icmp eq ptr %i.q, null
  br i1 %.not35, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.b, align 4              ; 2 uses
  %i.t = sext i32 %i.s to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %2, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.v = add i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 1 %i.l, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 %i.s, ptr %i.w, align 4
  store ptr null, ptr %i.q, align 8
  %i.x = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.q, ptr %i.x, align 8
  store ptr %i.q, ptr %i.k, align 8
  br i1 %.not34, label %bb.e, label %.thread, !llvm.loop !63

.thread:                                          ; preds = %bb.i, %bb.g, %bb.e, %bb.j, %sockaddr_getport.exit, %bb.c, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare ptr @evutil_new_addrinfo_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @evutil_addrinfo_append_(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @evutil_freeaddrinfo(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @free_getaddrinfo_request(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @evutil_freeaddrinfo(ptr noundef nonnull %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @event_mm_free_(ptr noundef nonnull %i.d) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = tail call i32 @event_del(ptr noundef nonnull %i.e) #19 ; 0 uses
  tail call void @event_mm_free_(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = distinct !{!4, !13}
!5 = distinct !{!5, !13}
!6 = distinct !{!6, !13}
!7 = distinct !{!7, !13}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{null, null}
!16 = distinct !{!16, !13}
!17 = !{ptr @evdns_add_server_port_with_base}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = !{ptr @evdns_base_count_nameservers}
!25 = distinct !{!25, !13}
!26 = !{ptr @evdns_base_resume}
!27 = distinct !{!27, !13}
!28 = !{ptr @evdns_base_nameserver_add}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = !{ptr @evdns_base_search_clear}
!32 = !{ptr @evdns_base_search_ndots_set}
!33 = !{ptr @evdns_base_set_option}
!34 = distinct !{null}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = !{ptr @evdns_base_resolve_ipv4}
!38 = !{ptr @evdns_base_resolve_ipv6}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = !{ptr @evdns_base_free}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{null}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{null}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
end_hunk_0
