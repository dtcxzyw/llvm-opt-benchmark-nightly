Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/multi?download=true
inline.NumInlined: 135
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Curl_multi_pollset:bb.a
  %i.eu = select i1 %.not133, ptr @.str.9, ptr @.str.10
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %i.ed, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.el, i32 noundef %i.en, ptr noundef nonnull %i.es, ptr noundef nonnull %i.eu, i64 noundef %i.cr) #13
  br label %bb.bi

bb.bd:                                            ; preds = %bb.an
  br i1 %.not140, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ev = load ptr, ptr %i.cj, align 8, !tbaa !105 ; 2 uses
  %.not141 = icmp eq ptr %i.ev, null
  br i1 %.not141, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !107
  %i.ey = icmp sgt i32 %i.ex, 0
  %i.ez = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.fa = icmp sgt i32 %i.ez, 0
  %or.cond16 = select i1 %i.ey, i1 %i.fa, i1 false
  br i1 %or.cond16, label %bb.bh, label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %.old14 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old15 = icmp sgt i32 %.old14, 0
  br i1 %.old15, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef %i.ct, i64 noundef %i.cr) #13
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bd, %bb.bf, %bb.bg, %bb.bh, %bb.ay, %bb.ba, %bb.bb, %bb.bc, %bb.at, %bb.av, %bb.aw, %bb.ax, %bb.ao, %bb.aq, %bb.ar, %bb.as
  %i.fb = load i64, ptr %i.cg, align 1
  %i.fc = and i64 %i.fb, 536870912
  %.not142 = icmp eq i64 %i.fc, 0
  br i1 %.not142, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fd = load ptr, ptr %i.cj, align 8, !tbaa !105 ; 2 uses
  %.not143 = icmp eq ptr %i.fd, null
  br i1 %.not143, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !107
  %i.fg = icmp sgt i32 %i.ff, 0
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_timer, i64 8), align 8
  %i.fi = icmp sgt i32 %i.fh, 0
  %or.cond19 = select i1 %i.fg, i1 %i.fi, i1 false
  br i1 %or.cond19, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %.old17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_timer, i64 8), align 8, !tbaa !107
  %.old18 = icmp sgt i32 %.old17, 0
  br i1 %.old18, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  tail call void @Curl_trc_easy_timers(ptr noundef nonnull %0) #13
  br label %bb.bn

bb.bn:                                            ; preds = %mstate_protocol_pollset.exit.thread, %bb.al, %bb.am, %bb.bm, %bb.bl, %bb.bk, %bb.bi, %mstate_protocol_pollset.exit, %bb.aj
  %.0104 = phi i32 [ 3, %mstate_protocol_pollset.exit ], [ 4, %bb.aj ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 0, %bb.bm ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %mstate_protocol_pollset.exit.thread ]
  ret i32 %.0104
}

declare void @Curl_pollset_reset(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_pollset_change(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_resolv_pollset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mstate_connecting_pollset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = tail call zeroext i1 @Curl_xfer_recv_is_paused(ptr noundef %0) #13
  br i1 %i.c, label %.thread22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @Curl_conn_get_first_socket(ptr noundef nonnull %0) #13 ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) #13 ; 2 uses
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.d, label %.thread22

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i32 @multi_adjust_pollset(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %.thread, label %.thread22

.thread:                                          ; preds = %bb.b, %bb.d
  %i.g = tail call i32 @Curl_conn_adjust_pollset(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %1) #13
  br label %.thread22

.thread22:                                        ; preds = %bb.c, %bb.d, %.thread, %bb.a
  %.015 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.d ], [ %i.g, %.thread ], [ %i.e, %bb.c ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mstate_domore_pollset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.k = load i32, ptr %i.j, align 4, !tbaa !141  ; 2 uses
  %or.cond = icmp ult i32 %i.k, 2
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41
  %i.p = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.o, i32 noundef 2, i32 noundef 0) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.p, %bb.d ]  ; 2 uses
  %.not20 = icmp eq i32 %.0, 0
  br i1 %.not20, label %.thread, label %.thread24

.thread:                                          ; preds = %bb.c, %bb.e
  %i.q = tail call fastcc i32 @multi_adjust_pollset(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.f, label %.thread24

bb.f:                                             ; preds = %.thread
  %i.r = tail call i32 @Curl_conn_adjust_pollset(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %1) #13
  br label %.thread24

.thread24:                                        ; preds = %bb.e, %bb.f, %.thread
  %.2 = phi i32 [ %i.q, %.thread ], [ %i.r, %bb.f ], [ %.0, %bb.e ]
  ret i32 %.2
}

declare i64 @Curl_llist_count(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_xfer_send_is_paused(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_xfer_recv_is_paused(ptr noundef) local_unnamed_addr #2

declare void @Curl_trc_easy_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 9) i32 @curl_multi_fdset(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.easy_pollset, align 8       ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 -1, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !38
  %i.d = icmp eq i32 %i.c, 764702
  br i1 %i.d, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 8
  %.not32 = icmp eq i16 %i.g, 0
  br i1 %.not32, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @Curl_pollset_init(ptr noundef nonnull %5) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = call zeroext i1 @Curl_uint32_bset_first(ptr noundef nonnull %i.h, ptr noundef nonnull %i.b) #13
  br i1 %i.i, label %.preheader, label %.loopexit38.a

.preheader:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.loopexit
  %.promoted = phi i32 [ -1, %.preheader ], [ %.promoted43, %.loopexit ] ; 4 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !41   ; 3 uses
  %i.o = call ptr @Curl_uint32_tbl_get(ptr noundef nonnull %i.j, i32 noundef %i.n) #13 ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.o, align 8, !tbaa !98
  %i.q = icmp eq i32 %i.p, -1059136595
  br i1 %i.q, label %Curl_multi_get_easy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !42   ; 4 uses
  %.not17.i = icmp eq ptr %i.r, null
  br i1 %.not17.i, label %Curl_multi_get_easy.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2187
  %i.t = load i64, ptr %i.s, align 1
  %i.u = and i64 %i.t, 536870912
  %.not18.i = icmp eq i64 %i.u, 0
  br i1 %.not18.i, label %Curl_multi_get_easy.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4504
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 2 uses
  %.not19.i = icmp eq ptr %i.w, null
  br i1 %.not19.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !107
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ab = icmp sgt i32 %i.aa, 0
  %or.cond.i = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %bb.l, label %Curl_multi_get_easy.exit.thread

bb.k:                                             ; preds = %bb.i
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.l, label %Curl_multi_get_easy.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.31, i32 noundef %i.n) #13
  br label %Curl_multi_get_easy.exit.thread

Curl_multi_get_easy.exit.thread:                  ; preds = %bb.g, %bb.h, %bb.j, %bb.k, %bb.l
  call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.j, i32 noundef %i.n) #13
  br label %.loopexit

Curl_multi_get_easy.exit:                         ; preds = %bb.f
  %i.ac = call i32 @Curl_multi_pollset(ptr noundef nonnull %i.o, ptr noundef nonnull %5) ; 0 uses
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !145 ; 2 uses
  %.not40 = icmp eq i32 %i.ad, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %Curl_multi_get_easy.exit
  %i.ae = load ptr, ptr %5, align 8, !tbaa !146
  %i.af = load ptr, ptr %i.l, align 8
  %wide.trip.count = zext i32 %i.ad to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.s
  %.promoted44 = phi i32 [ %.promoted, %.lr.ph ], [ %.promoted45, %bb.s ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.ag = phi i32 [ %.promoted, %.lr.ph ], [ %8, %bb.s ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !41 ; 9 uses
  %i.aj = icmp slt i32 %i.ai, 1024
  br i1 %i.aj, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !100 ; 2 uses
  %i.am = and i8 %i.al, 1
  %.not34 = icmp eq i8 %i.am, 0
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = srem i32 %i.ai, 64
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = sdiv i32 %i.ai, 64
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !114
  %i.au = or i64 %i.at, %i.ap
  store i64 %i.au, ptr %i.as, align 8, !tbaa !114
  %.pre = load i8, ptr %i.ak, align 1, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = phi i8 [ %.pre, %bb.o ], [ %i.al, %bb.n ]
  %i.aw = and i8 %i.av, 2
  %.not35 = icmp eq i8 %i.aw, 0
  br i1 %.not35, label %6, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = srem i32 %i.ai, 64
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = sdiv i32 %i.ai, 64
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !114
  %i.be = or i64 %i.bd, %i.az
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !114
  br label %6

6:                                                ; preds = %bb.q, %bb.p
  %7 = icmp sgt i32 %i.ai, %i.ag
  br i1 %7, label %bb.r, label %bb.s

bb.r:                                             ; preds = %6
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !41
  br label %bb.s

bb.s:                                             ; preds = %6, %bb.r, %bb.m
  %.promoted45 = phi i32 [ %.promoted44, %6 ], [ %i.ai, %bb.r ], [ %.promoted44, %bb.m ] ; 2 uses
  %8 = phi i32 [ %i.ag, %6 ], [ %i.ai, %bb.r ], [ %i.ag, %bb.m ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !185

.loopexit:                                        ; preds = %bb.s, %Curl_multi_get_easy.exit, %Curl_multi_get_easy.exit.thread
  %.promoted43 = phi i32 [ %.promoted, %Curl_multi_get_easy.exit.thread ], [ %.promoted, %Curl_multi_get_easy.exit ], [ %.promoted45, %bb.s ]
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !41
  %i.bg = call zeroext i1 @Curl_uint32_bset_next(ptr noundef nonnull %i.h, i32 noundef %i.bf, ptr noundef nonnull %i.b) #13
  br i1 %i.bg, label %bb.e, label %.loopexit38.a, !llvm.loop !186

.loopexit38.a:                                    ; preds = %.loopexit, %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42
  call void @Curl_cshutdn_setfds(ptr noundef nonnull %i.bh, ptr noundef %i.bj, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #13
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !41
  store i32 %i.bk, ptr %4, align 4, !tbaa !41
  call void @Curl_pollset_cleanup(ptr noundef nonnull %5) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.a, %bb.b, %.loopexit38.a
  %.027 = phi i32 [ 1, %bb.a ], [ 0, %.loopexit38.a ], [ 1, %bb.b ], [ 8, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.027
}

declare void @Curl_pollset_init(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_uint32_bset_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Curl_multi_get_easy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call ptr @Curl_uint32_tbl_get(ptr noundef nonnull %i.a, i32 noundef %1) #13 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !98
  %i.d = icmp eq i32 %i.c, -1059136595
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 4 uses
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2187
  %i.h = load i64, ptr %i.g, align 1
  %i.i = and i64 %i.h, 536870912
  %.not18 = icmp eq i64 %i.i, 0
  br i1 %.not18, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4504
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 2 uses
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !107
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.p = icmp sgt i32 %i.o, 0
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.31, i32 noundef %1) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  tail call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.a, i32 noundef %1) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %.0 = phi ptr [ null, %bb.i ], [ %i.b, %bb.b ]
  ret ptr %.0
}

declare zeroext i1 @Curl_uint32_bset_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_cshutdn_setfds(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_pollset_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 11) i32 @curl_multi_waitfds(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Curl_waitfds, align 8       ; 6 uses
  %5 = alloca %struct.easy_pollset, align 8       ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  %i.d = icmp ne ptr %3, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %0, align 8, !tbaa !38
  %i.f = icmp eq i32 %i.e, 764702
  br i1 %i.f, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, 8
  %.not34 = icmp eq i16 %i.i, 0
  br i1 %.not34, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @Curl_pollset_init(ptr noundef nonnull %5) #13
  call void @Curl_waitfds_init(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = call zeroext i1 @Curl_uint32_bset_first(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #13
  br i1 %i.k, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.p
  %.0 = phi i32 [ %.1, %bb.p ], [ 0, %.preheader ] ; 2 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %i.p = call ptr @Curl_uint32_tbl_get(ptr noundef nonnull %i.l, i32 noundef %i.o) #13 ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.p, align 8, !tbaa !98
  %i.r = icmp eq i32 %i.q, -1059136595
  br i1 %i.r, label %Curl_multi_get_easy.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !42   ; 4 uses
  %.not17.i = icmp eq ptr %i.s, null
  br i1 %.not17.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2187
  %i.u = load i64, ptr %i.t, align 1
  %i.v = and i64 %i.u, 536870912
  %.not18.i = icmp eq i64 %i.v, 0
  br i1 %.not18.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4504
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105  ; 2 uses
  %.not19.i = icmp eq ptr %i.x, null
  br i1 %.not19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !107
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ac = icmp sgt i32 %i.ab, 0
  %or.cond.i = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.31, i32 noundef %i.o) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.n
  call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.l, i32 noundef %i.o) #13
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !41
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.j, i32 noundef %i.ad) #13
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !41
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.n, i32 noundef %i.ae) #13
  br label %bb.p

Curl_multi_get_easy.exit:                         ; preds = %bb.h
  %i.af = call i32 @Curl_multi_pollset(ptr noundef nonnull %i.p, ptr noundef nonnull %5) ; 0 uses
  %i.ag = call i32 @Curl_waitfds_add_ps(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %i.ah = add i32 %i.ag, %.0
  br label %bb.p

bb.p:                                             ; preds = %Curl_multi_get_easy.exit, %bb.o
  %.1 = phi i32 [ %i.ah, %Curl_multi_get_easy.exit ], [ %.0, %bb.o ] ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !41
  %i.aj = call zeroext i1 @Curl_uint32_bset_next(ptr noundef nonnull %i.j, i32 noundef %i.ai, ptr noundef nonnull %i.a) #13
  br i1 %i.aj, label %bb.g, label %.loopexit, !llvm.loop !187

.loopexit:                                        ; preds = %bb.p, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ %.1, %bb.p ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = call i32 @Curl_cshutdn_add_waitfds(ptr noundef nonnull %i.ak, ptr noundef %i.am, ptr noundef nonnull %4) #13
  %i.ao = add i32 %i.an, %.2                      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !190
  %i.ar = icmp ne i32 %i.ao, %i.aq
  %or.cond3 = and i1 %i.b, %i.ar
  %spec.select = select i1 %or.cond3, i32 3, i32 0
  %.not36 = icmp eq ptr %3, null
  br i1 %.not36, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit
  store i32 %i.ao, ptr %3, align 4, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  call void @Curl_pollset_cleanup(ptr noundef nonnull %5) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.b, %bb.r
  %.030 = phi i32 [ 1, %bb.c ], [ %spec.select, %bb.r ], [ 10, %bb.b ], [ 1, %bb.d ], [ 8, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.030
}

declare void @Curl_waitfds_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_waitfds_add_ps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_cshutdn_add_waitfds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 13) i32 @curl_multi_wait(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @multi_wait(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 13) i32 @multi_wait(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.curltime, align 8           ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct.easy_pollset, align 8       ; 6 uses
  %8 = alloca [10 x %struct.pollfd], align 16     ; 3 uses
  %9 = alloca %struct.curl_pollfds, align 8       ; 11 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !38
  %i.e = icmp eq i32 %i.d, 764702
  br i1 %i.e, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 8
  %.not80 = icmp eq i16 %i.h, 0
  br i1 %.not80, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i32 %3, 0
  br i1 %i.i, label %bb.ac, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @Curl_pollset_init(ptr noundef nonnull %7) #13
  call void @Curl_pollfds_init(ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 10) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = call zeroext i1 @Curl_uint32_bset_first(ptr noundef nonnull %i.j, ptr noundef nonnull %i.c) #13
  br i1 %i.k, label %.preheader, label %.loopexit101

.preheader:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.o
  %i.o = load i32, ptr %i.c, align 4, !tbaa !41   ; 3 uses
  %i.p = call ptr @Curl_uint32_tbl_get(ptr noundef nonnull %i.l, i32 noundef %i.o) #13 ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.p, align 8, !tbaa !98
  %i.r = icmp eq i32 %i.q, -1059136595
  br i1 %i.r, label %Curl_multi_get_easy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !42   ; 4 uses
  %.not17.i = icmp eq ptr %i.s, null
  br i1 %.not17.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2187
  %i.u = load i64, ptr %i.t, align 1
  %i.v = and i64 %i.u, 536870912
  %.not18.i = icmp eq i64 %i.v, 0
  br i1 %.not18.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4504
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105  ; 2 uses
  %.not19.i = icmp eq ptr %i.x, null
  br i1 %.not19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !107
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ac = icmp sgt i32 %i.ab, 0
  %or.cond.i = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.31, i32 noundef %i.o) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.l, i32 noundef %i.o) #13
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !41
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.j, i32 noundef %i.ad) #13
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !41
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.n, i32 noundef %i.ae) #13
  br label %bb.o

Curl_multi_get_easy.exit:                         ; preds = %bb.g
  %i.af = call i32 @Curl_multi_pollset(ptr noundef nonnull %i.p, ptr noundef nonnull %7) ; 0 uses
  %i.ag = call i32 @Curl_pollfds_add_ps(ptr noundef nonnull %9, ptr noundef nonnull %7) #13
  %.not82 = icmp eq i32 %i.ag, 0
  br i1 %.not82, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %Curl_multi_get_easy.exit, %bb.n
  %.0.i98 = phi ptr [ %i.p, %Curl_multi_get_easy.exit ], [ null, %bb.n ]
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !41
  %i.ai = call zeroext i1 @Curl_uint32_bset_next(ptr noundef nonnull %i.j, i32 noundef %i.ah, ptr noundef nonnull %i.c) #13
  br i1 %i.ai, label %bb.f, label %.loopexit101, !llvm.loop !191

.loopexit101:                                     ; preds = %bb.o, %bb.e
  %.070 = phi ptr [ null, %bb.e ], [ %.0.i98, %bb.o ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.am = call i32 @Curl_cshutdn_add_pollfds(ptr noundef nonnull %i.aj, ptr noundef %i.al, ptr noundef nonnull %9) #13
  %.not83 = icmp eq i32 %i.am, 0
  br i1 %.not83, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.loopexit101
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8            ; 3 uses
  %i.ap = or i32 %i.ao, %2
  %i.aq = icmp ne i32 %i.ap, 0
  %or.cond4 = select i1 %5, i1 true, i1 %i.aq
  br i1 %or.cond4, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !41
  %i.at = call i32 @Curl_pollfds_add_sock(ptr noundef nonnull %9, i32 noundef %i.as, i16 noundef signext 1) #13
  %.not84 = icmp eq i32 %i.at, 0
  br i1 %.not84, label %._crit_edge105, label %.loopexit

._crit_edge105:                                   ; preds = %bb.q
  %.pre = load i32, ptr %i.an, align 8, !tbaa !149
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge105, %bb.p
  %i.au = phi i32 [ %.pre, %._crit_edge105 ], [ %i.ao, %bb.p ]
  %.066 = phi i32 [ %i.ao, %._crit_edge105 ], [ -1, %bb.p ] ; 2 uses
  %i.av = zext i32 %2 to i64
  %.not103 = icmp eq i32 %2, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.aw = add nuw nsw i64 %.071102, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.av
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !192

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.071102 = phi i64 [ %i.aw, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.071102 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !193
  %.2 = and i16 %i.az, 7
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !194
  %i.bb = call i32 @Curl_pollfds_add_sock(ptr noundef nonnull %9, i32 noundef %i.ba, i16 noundef signext %.2) #13
  %.not92 = icmp eq i32 %i.bb, 0
  br i1 %.not92, label %bb.s, label %.loopexit

._crit_edge:                                      ; preds = %bb.s, %bb.r
  call fastcc void @multi_timeout(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %i.a)
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !114 ; 4 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  %i.be = zext nneg i32 %3 to i64
  %i.bf = icmp slt i64 %i.bc, %i.be
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  %i.bg = trunc nuw nsw i64 %i.bc to i32
  %.073 = select i1 %or.cond, i32 %i.bg, i32 %3   ; 2 uses
  %.not85 = icmp eq ptr %.070, null
  br i1 %.not85, label %bb.y, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %.070, i64 2187
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = and i64 %i.bi, 536870912
  %.not86 = icmp eq i64 %i.bj, 0
  br i1 %.not86, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %.070, i64 4504
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !105 ; 2 uses
  %.not87 = icmp eq ptr %i.bl, null
  br i1 %.not87, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !107
  %i.bo = icmp sgt i32 %i.bn, 0
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.bq = icmp sgt i32 %i.bp, 0
  %or.cond6 = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond6, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old5 = icmp sgt i32 %.old, 0
  br i1 %.old5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.br = load i32, ptr %i.an, align 8, !tbaa !149
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %.070, ptr noundef nonnull @.str.41, i32 noundef %i.br, i32 noundef %.073, i64 noundef %i.bc) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.v, %bb.w, %bb.x, %._crit_edge
  %i.bs = call fastcc i32 @multi_posix_poll(ptr noundef %9, i32 noundef %i.au, ptr noundef %1, i32 noundef %2, i32 noundef %.073, i1 noundef zeroext %5, ptr noundef %i.b) ; 3 uses
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !41  ; 4 uses
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = icmp sgt i32 %.066, -1
  %or.cond9 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond9, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.bw = load ptr, ptr %9, align 8, !tbaa !151
  %i.bx = zext nneg i32 %.066 to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !153
  %i.cb = and i16 %i.ca, 1
  %.not88 = icmp eq i16 %i.cb, 0
  br i1 %.not88, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.cd = call i32 @Curl_wakeup_consume(ptr noundef nonnull %i.cc, i1 noundef zeroext true) #13 ; 0 uses
  %i.ce = add nsw i32 %i.bt, -1
  br label %.loopexit

.loopexit:                                        ; preds = %Curl_multi_get_easy.exit, %.lr.ph, %bb.q, %.loopexit101, %bb.y, %bb.aa, %bb.z
  %i.cf = phi i32 [ %i.bt, %bb.y ], [ 0, %.lr.ph ], [ 0, %.loopexit101 ], [ 0, %bb.q ], [ %i.ce, %bb.aa ], [ %i.bt, %bb.z ], [ 0, %Curl_multi_get_easy.exit ]
  %.269 = phi i32 [ %i.bs, %bb.y ], [ 3, %.lr.ph ], [ 3, %.loopexit101 ], [ 3, %bb.q ], [ %i.bs, %bb.aa ], [ %i.bs, %bb.z ], [ 3, %Curl_multi_get_easy.exit ] ; 2 uses
  call void @Curl_pollset_cleanup(ptr noundef nonnull %7) #13
  call void @Curl_pollfds_cleanup(ptr noundef nonnull %9) #13
  %.not93 = icmp eq ptr %4, null
  br i1 %.not93, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  store i32 %i.cf, ptr %4, align 4, !tbaa !41
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.ab, %bb.d, %bb.c, %bb.a, %bb.b
  %.072 = phi i32 [ 1, %bb.a ], [ 8, %bb.c ], [ 10, %bb.d ], [ %.269, %.loopexit ], [ 1, %bb.b ], [ %.269, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret i32 %.072
}

; Function Attrs: nounwind uwtable
define range(i32 0, 13) i32 @curl_multi_poll(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @multi_wait(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 10) i32 @curl_multi_wakeup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !38
  %i.b = icmp eq i32 %i.a, 764702
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.d = tail call i32 @Curl_wakeup_signal(ptr noundef nonnull %i.c) #13
  %.not7 = icmp eq i32 %i.d, 0
  %spec.select = select i1 %.not7, i32 0, i32 9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.05 = phi i32 [ %spec.select, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.05
}

declare i32 @Curl_wakeup_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Curl_multi_connchanged(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = or i16 %i.b, 4
  store i16 %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 12) i32 @Curl_multi_add_perform(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 8
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @curl_multi_add_handle(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @Curl_init_do(ptr noundef %1, ptr noundef null) #13
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !97
  %i.h = icmp eq i32 %i.g, 11
  br i1 %i.h, label %mstate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.j = load i64, ptr %i.i, align 1
  %i.k = and i64 %i.j, 536870912
  %.not19.i = icmp eq i64 %i.k, 0
  br i1 %.not19.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.not20.i = icmp eq ptr %i.m, null
  br i1 %.not20.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !107
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.r = icmp sgt i32 %i.q, 0
  %or.cond.i = select i1 %i.p, i1 %i.r, i1 false
end_hunk_0
begin_hunk_1_@multi_mark_expired_as_dirty:bb.a
bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.aj = call zeroext i1 @Curl_uint32_bset_add(ptr noundef nonnull %i.ai, i32 noundef %i.ah) #13 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %bb.m, %bb.l, %.lr.ph
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.al = call ptr @Curl_splaygetbest(ptr noundef %1, ptr noundef %i.ak, ptr noundef nonnull %i.a) #13
  store ptr %i.al, ptr %i.b, align 8, !tbaa !139
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !155 ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @multi_run_dirty(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %2, align 4, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = call zeroext i1 @Curl_uint32_bset_first(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %select.unfold
  %.032 = phi i32 [ %.2.ph, %select.unfold ], [ 0, %.preheader ]
  %i.g = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %i.h = call ptr @Curl_uint32_tbl_get(ptr noundef nonnull %i.d, i32 noundef %i.g) #13 ; 7 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !98
  %i.j = icmp eq i32 %i.i, -1059136595
  br i1 %i.j, label %Curl_multi_get_easy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !42   ; 4 uses
  %.not17.i = icmp eq ptr %i.k, null
  br i1 %.not17.i, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2187
  %i.m = load i64, ptr %i.l, align 1
  %i.n = and i64 %i.m, 536870912
  %.not18.i = icmp eq i64 %i.n, 0
  br i1 %.not18.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4504
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105  ; 2 uses
  %.not19.i = icmp eq ptr %i.p, null
  br i1 %.not19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !107
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.u = icmp sgt i32 %i.t, 0
  %or.cond.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.q

bb.h:                                             ; preds = %bb.f
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h, %bb.g
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.31, i32 noundef %i.g) #13
  br label %bb.q

Curl_multi_get_easy.exit:                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2187
  %i.w = load i64, ptr %i.v, align 1
  %i.x = and i64 %i.w, 536870912
  %.not44 = icmp eq i64 %i.x, 0
  br i1 %.not44, label %bb.n, label %bb.j

bb.j:                                             ; preds = %Curl_multi_get_easy.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4504
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105  ; 2 uses
  %.not45 = icmp eq ptr %i.z, null
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !107
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ae = icmp sgt i32 %i.ad, 0
  %or.cond = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.60) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %Curl_multi_get_easy.exit
  %i.af = load i32, ptr %i.a, align 4, !tbaa !41
  %i.ag = call zeroext i1 @Curl_uint32_bset_contains(ptr noundef nonnull %i.e, i32 noundef %i.af) #13
  br i1 %i.ag, label %bb.o, label %select.unfold.sink.split

bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr %2, align 4, !tbaa !41
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %2, align 4, !tbaa !41
  %i.aj = call fastcc i32 @multi_runsingle(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef %1) ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %select.unfold

bb.p:                                             ; preds = %bb.o
  %i.al = call i32 @Curl_multi_ev_assess_xfer(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #13 ; 2 uses
  %.not46 = icmp eq i32 %i.al, 0
  br i1 %.not46, label %select.unfold, label %.loopexit

bb.q:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.d, i32 noundef %i.g) #13
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !42  ; 4 uses
  %.not41 = icmp eq ptr %i.am, null
  br i1 %.not41, label %select.unfold.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2187
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = and i64 %i.ao, 536870912
  %.not42 = icmp eq i64 %i.ap, 0
  br i1 %.not42, label %select.unfold.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4504
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105 ; 2 uses
  %.not43 = icmp eq ptr %i.ar, null
  br i1 %.not43, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !107
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.aw = icmp sgt i32 %i.av, 0
  %or.cond4 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond4, label %bb.v, label %select.unfold.sink.split

bb.u:                                             ; preds = %bb.s
  %.old2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old3 = icmp sgt i32 %.old2, 0
  br i1 %.old3, label %bb.v, label %select.unfold.sink.split

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !41
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.61, i32 noundef %i.ax) #13
  br label %select.unfold.sink.split

select.unfold.sink.split:                         ; preds = %bb.q, %bb.r, %bb.t, %bb.u, %bb.v, %bb.n
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !41
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.b, i32 noundef %i.ay) #13
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.sink.split, %bb.p, %bb.o
  %.2.ph = phi i32 [ %i.aj, %bb.o ], [ 0, %bb.p ], [ %.032, %select.unfold.sink.split ] ; 2 uses
  %i.az = load i32, ptr %i.a, align 4, !tbaa !41
  %i.ba = call zeroext i1 @Curl_uint32_bset_next(ptr noundef nonnull %i.b, i32 noundef %i.az, ptr noundef nonnull %i.a) #13
  br i1 %i.ba, label %bb.b, label %.loopexit, !llvm.loop !256

.loopexit:                                        ; preds = %bb.p, %select.unfold, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ %i.al, %bb.p ], [ %.2.ph, %select.unfold ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.3
}

declare ptr @Curl_splay(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @curlx_timediff_ceil_ms(i64, i32, i64, i32) local_unnamed_addr #2

declare void @Curl_llist_insert_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !109}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"any p2 pointer", !10, i64 0}
!14 = !{!"uint32_tbl", !13, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24}
!15 = !{!"p1 long", !10, i64 0}
!16 = !{!"uint32_bset", !15, i64 0, !7, i64 8, !7, i64 12}
!17 = !{!"p1 _ZTS15Curl_llist_node", !10, i64 0}
!18 = !{!"Curl_llist", !17, i64 0, !17, i64 8, !10, i64 16, !12, i64 24}
!19 = !{!"p1 _ZTS9Curl_easy", !10, i64 0}
!20 = !{!"p2 _ZTS17Curl_hash_element", !13, i64 0}
!21 = !{!"Curl_hash", !20, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !12, i64 40}
!22 = !{!"Curl_dnscache", !21, i64 0}
!23 = !{!"p1 _ZTS15Curl_ssl_scache", !10, i64 0}
!24 = !{!"p1 _ZTS10curl_thrdq", !10, i64 0}
!25 = !{!"p1 _ZTS10psl_ctx_st", !10, i64 0}
!26 = !{!"PslCache", !25, i64 0, !12, i64 8, !7, i64 16}
!27 = !{!"curltime", !12, i64 0, !7, i64 8}
!28 = !{!"p1 _ZTS9Curl_tree", !10, i64 0}
!29 = !{!"p1 omnipotent char", !10, i64 0}
!30 = !{!"curl_multi_ev", !21, i64 0}
!31 = !{!"p1 _ZTS11mntfy_chunk", !10, i64 0}
!32 = !{!"curl_multi_ntfy", !10, i64 0, !10, i64 8, !16, i64 16, !31, i64 32, !31, i64 40, !7, i64 48, !7, i64 52}
!33 = !{!"p1 _ZTS10Curl_multi", !10, i64 0}
!34 = !{!"cshutdn", !18, i64 0, !33, i64 32, !7, i64 40}
!35 = !{!"p1 _ZTS10Curl_share", !10, i64 0}
!36 = !{!"cpool", !21, i64 0, !12, i64 48, !12, i64 56, !12, i64 64, !27, i64 72, !19, i64 88, !35, i64 96, !7, i64 104, !7, i64 104}
!37 = !{!"Curl_multi", !7, i64 0, !7, i64 4, !7, i64 8, !12, i64 16, !14, i64 24, !16, i64 56, !16, i64 72, !16, i64 88, !16, i64 104, !18, i64 120, !19, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !22, i64 192, !23, i64 240, !24, i64 248, !26, i64 256, !27, i64 280, !28, i64 296, !29, i64 304, !12, i64 312, !29, i64 320, !12, i64 328, !29, i64 336, !12, i64 344, !30, i64 352, !32, i64 400, !21, i64 456, !34, i64 504, !36, i64 552, !12, i64 664, !12, i64 672, !10, i64 680, !10, i64 688, !12, i64 696, !27, i64 704, !6, i64 720, !7, i64 728, !7, i64 732, !7, i64 736, !7, i64 740, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 745, !7, i64 745, !7, i64 745}
!38 = !{!37, !7, i64 0}
!39 = !{!37, !7, i64 728}
!40 = !{!37, !12, i64 696}
!41 = !{!7, !7, i64 0}
!42 = !{!37, !19, i64 152}
!43 = !{!"p1 _ZTS11connectdata", !10, i64 0}
!44 = !{!"p1 _ZTS10Curl_llist", !10, i64 0}
!45 = !{!"Curl_llist_node", !44, i64 0, !10, i64 8, !17, i64 16, !17, i64 24}
!46 = !{!"CURLMsg", !7, i64 0, !10, i64 8, !6, i64 16}
!47 = !{!"Curl_message", !45, i64 0, !46, i64 32}
!48 = !{!"p1 _ZTS8PslCache", !10, i64 0}
!49 = !{!"p1 _ZTS12Curl_cwriter", !10, i64 0}
!50 = !{!"p1 _ZTS12Curl_creader", !10, i64 0}
!51 = !{!"p1 _ZTS9buf_chunk", !10, i64 0}
!52 = !{!"p1 _ZTS9bufc_pool", !10, i64 0}
!53 = !{!"bufq", !51, i64 0, !51, i64 8, !51, i64 16, !52, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !7, i64 56}
!54 = !{!"SingleRequest", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !27, i64 40, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !6, i64 76, !6, i64 77, !7, i64 80, !49, i64 88, !50, i64 96, !53, i64 104, !12, i64 168, !12, i64 176, !29, i64 184, !29, i64 192, !6, i64 200, !29, i64 208, !29, i64 216, !29, i64 224, !6, i64 232, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235}
!55 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!56 = !{!"p1 _ZTS10curl_slist", !10, i64 0}
!57 = !{!"p1 _ZTS13curl_httppost", !10, i64 0}
!58 = !{!"p1 _ZTS13curl_mimepart", !10, i64 0}
!59 = !{!"p1 _ZTS9curl_blob", !10, i64 0}
!60 = !{!"ssl_primary_config", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !59, i64 104, !59, i64 112, !59, i64 120, !59, i64 128, !29, i64 136, !29, i64 144, !29, i64 152, !7, i64 160, !6, i64 164, !6, i64 165, !7, i64 166, !7, i64 166, !7, i64 166, !7, i64 166, !7, i64 166}
!61 = !{!"ssl_config_data", !60, i64 0, !12, i64 168, !10, i64 176, !10, i64 184, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 193, !7, i64 193, !7, i64 193}
!62 = !{!"short", !6, i64 0}
!63 = !{!"ssl_general_config", !7, i64 0}
!64 = !{!"p1 _ZTS8Curl_URL", !10, i64 0}
!65 = !{!"UserDefined", !55, i64 0, !10, i64 8, !29, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 52, !10, i64 56, !10, i64 64, !12, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !56, i64 320, !57, i64 328, !58, i64 336, !56, i64 344, !56, i64 352, !56, i64 360, !12, i64 368, !61, i64 376, !61, i64 576, !56, i64 776, !62, i64 784, !6, i64 786, !6, i64 787, !63, i64 788, !12, i64 792, !7, i64 800, !7, i64 804, !10, i64 808, !56, i64 816, !12, i64 824, !12, i64 832, !6, i64 840, !6, i64 841, !6, i64 842, !56, i64 848, !56, i64 856, !56, i64 864, !7, i64 872, !6, i64 880, !6, i64 1480, !7, i64 1544, !12, i64 1552, !12, i64 1560, !10, i64 1568, !7, i64 1576, !10, i64 1584, !10, i64 1592, !10, i64 1600, !10, i64 1608, !10, i64 1616, !12, i64 1624, !12, i64 1632, !12, i64 1640, !12, i64 1648, !12, i64 1656, !7, i64 1664, !7, i64 1668, !7, i64 1672, !10, i64 1680, !10, i64 1688, !12, i64 1696, !64, i64 1704, !10, i64 1712, !10, i64 1720, !56, i64 1728, !7, i64 1736, !62, i64 1740, !62, i64 1742, !62, i64 1744, !62, i64 1746, !62, i64 1748, !62, i64 1750, !62, i64 1752, !6, i64 1754, !6, i64 1755, !6, i64 1756, !6, i64 1757, !6, i64 1758, !6, i64 1759, !6, i64 1760, !6, i64 1761, !6, i64 1762, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1770, !7, i64 1770, !7, i64 1770}
!66 = !{!"p1 _ZTS10CookieInfo", !10, i64 0}
!67 = !{!"p1 _ZTS4hsts", !10, i64 0}
!68 = !{!"p1 _ZTS10altsvcinfo", !10, i64 0}
!69 = !{!"Curl_rlimit", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !27, i64 56, !7, i64 72}
!70 = !{!"pgrs_dir", !12, i64 0, !12, i64 8, !12, i64 16, !69, i64 24}
!71 = !{!"Progress", !27, i64 0, !12, i64 16, !70, i64 24, !70, i64 128, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !27, i64 328, !27, i64 344, !27, i64 360, !27, i64 376, !27, i64 392, !6, i64 408, !6, i64 456, !7, i64 552, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556}
!72 = !{!"dynbuf", !29, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!73 = !{!"p1 _ZTS9Curl_peer", !10, i64 0}
!74 = !{!"p1 _ZTS10Curl_creds", !10, i64 0}
!75 = !{!"digestdata", !74, i64 0, !73, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !7, i64 64, !6, i64 68, !7, i64 69, !7, i64 69}
!76 = !{!"auth", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 12}
!77 = !{!"p1 _ZTS17Curl_resolv_async", !10, i64 0}
!78 = !{!"Curl_tree", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !27, i64 32, !10, i64 48}
!79 = !{!"urlpieces", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56}
!80 = !{!"bufref", !10, i64 0, !29, i64 8, !12, i64 16}
!81 = !{!"p1 _ZTS17Curl_header_store", !10, i64 0}
!82 = !{!"p1 _ZTS13curl_trc_feat", !10, i64 0}
!83 = !{!"store_netrc", !72, i64 0, !29, i64 32, !7, i64 40}
!84 = !{!"dynamically_allocated_data", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40}
!85 = !{!"http_negotiation", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !7, i64 4, !7, i64 4, !7, i64 4, !7, i64 4}
!86 = !{!"UrlState", !27, i64 0, !12, i64 16, !12, i64 24, !72, i64 32, !56, i64 64, !12, i64 72, !73, i64 80, !73, i64 88, !7, i64 96, !7, i64 100, !10, i64 104, !29, i64 112, !75, i64 120, !75, i64 192, !76, i64 264, !76, i64 280, !77, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !29, i64 336, !7, i64 344, !27, i64 352, !78, i64 368, !18, i64 424, !6, i64 456, !29, i64 1296, !29, i64 1304, !12, i64 1312, !7, i64 1320, !7, i64 1324, !7, i64 1328, !6, i64 1332, !12, i64 1368, !10, i64 1376, !10, i64 1384, !64, i64 1392, !79, i64 1400, !80, i64 1464, !80, i64 1488, !56, i64 1512, !58, i64 1520, !58, i64 1528, !12, i64 1536, !72, i64 1544, !18, i64 1576, !6, i64 1608, !81, i64 1704, !56, i64 1712, !82, i64 1720, !83, i64 1728, !74, i64 1776, !84, i64 1784, !85, i64 1832, !62, i64 1840, !6, i64 1842, !6, i64 1843, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846}
!87 = !{!"p1 _ZTS12WildcardData", !10, i64 0}
!88 = !{!"ip_quadruple", !6, i64 0, !6, i64 46, !62, i64 92, !62, i64 94, !6, i64 96}
!89 = !{!"p2 _ZTS10curl_slist", !13, i64 0}
!90 = !{!"curl_certinfo", !7, i64 0, !89, i64 8}
!91 = !{!"PureInfo", !7, i64 0, !7, i64 4, !7, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !29, i64 56, !29, i64 64, !12, i64 72, !7, i64 80, !88, i64 84, !29, i64 184, !7, i64 192, !90, i64 200, !7, i64 216, !7, i64 220, !7, i64 220}
!92 = !{!"curl_tlssessioninfo", !7, i64 0, !10, i64 8}
!93 = !{!"Curl_easy", !7, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !10, i64 24, !43, i64 32, !7, i64 40, !7, i64 44, !47, i64 48, !33, i64 104, !33, i64 112, !35, i64 120, !21, i64 128, !48, i64 176, !54, i64 184, !65, i64 424, !66, i64 2200, !67, i64 2208, !68, i64 2216, !71, i64 2224, !86, i64 2784, !87, i64 4632, !91, i64 4640, !92, i64 4864}
!94 = !{!93, !33, i64 104}
!95 = !{!93, !7, i64 16}
!96 = !{!37, !23, i64 240}
!97 = !{!93, !7, i64 40}
!98 = !{!93, !7, i64 0}
!99 = !{!93, !33, i64 112}
!100 = !{!6, !6, i64 0}
!101 = !{!93, !48, i64 176}
!102 = !{!37, !7, i64 4}
!103 = !{!37, !12, i64 16}
!104 = !{!93, !12, i64 2048}
!105 = !{!93, !82, i64 4504}
!106 = !{!"curl_trc_feat", !29, i64 0, !7, i64 8}
!107 = !{!106, !7, i64 8}
!108 = !{!93, !43, i64 32}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!37, !29, i64 304}
!111 = !{!37, !29, i64 320}
!112 = !{!37, !29, i64 336}
!113 = !{!37, !10, i64 680}
!114 = !{!12, !12, i64 0}
!115 = !{i64 0, i64 8, !114, i64 8, i64 4, !41}
!116 = !{!37, !10, i64 688}
!117 = !{!93, !7, i64 44}
!118 = !{!37, !7, i64 8}
!119 = !{!37, !10, i64 160}
!120 = !{!"proxy_info", !73, i64 0, !74, i64 8, !6, i64 16}
!121 = !{!"", !6, i64 0, !12, i64 32}
!122 = !{!"ConnectBits", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 3}
!123 = !{!"p1 _ZTS11Curl_scheme", !10, i64 0}
!124 = !{!"connectdata", !45, i64 0, !45, i64 32, !10, i64 64, !10, i64 72, !12, i64 80, !29, i64 88, !21, i64 96, !73, i64 144, !73, i64 152, !73, i64 160, !73, i64 168, !120, i64 176, !120, i64 200, !74, i64 224, !73, i64 232, !29, i64 240, !27, i64 248, !27, i64 264, !6, i64 280, !6, i64 288, !6, i64 304, !6, i64 320, !7, i64 336, !7, i64 340, !121, i64 344, !60, i64 384, !60, i64 552, !122, i64 720, !123, i64 728, !123, i64 736, !27, i64 744, !33, i64 760, !29, i64 768, !7, i64 776, !7, i64 780, !62, i64 784, !62, i64 786, !6, i64 788, !6, i64 789, !6, i64 790, !6, i64 791}
!125 = !{!124, !7, i64 776}
!126 = !{!124, !33, i64 760}
!127 = !{!93, !12, i64 2800}
!128 = !{!47, !10, i64 40}
!129 = !{!93, !7, i64 20}
!130 = !{!93, !29, i64 376}
!131 = !{!93, !29, i64 368}
!132 = !{!124, !123, i64 728}
!133 = !{!"p1 _ZTS13Curl_protocol", !10, i64 0}
!134 = !{!"Curl_scheme", !29, i64 0, !133, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !62, i64 36}
!135 = !{!134, !133, i64 8}
!136 = !{!"Curl_protocol", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!137 = !{!27, !12, i64 0}
!138 = !{!27, !7, i64 8}
!139 = !{!37, !28, i64 296}
!140 = !{!136, !10, i64 120}
!141 = !{!124, !7, i64 340}
!142 = !{!124, !7, i64 336}
!143 = !{!"p1 int", !10, i64 0}
!144 = !{!"easy_pollset", !143, i64 0, !29, i64 8, !7, i64 16, !7, i64 20, !6, i64 24, !6, i64 32}
!145 = !{!144, !7, i64 16}
!146 = !{!144, !143, i64 0}
!147 = !{!"p1 _ZTS6pollfd", !10, i64 0}
!148 = !{!"curl_pollfds", !147, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!149 = !{!148, !7, i64 8}
!150 = !{!"curl_waitfd", !7, i64 0, !62, i64 4, !62, i64 6}
!151 = !{!148, !147, i64 0}
!152 = !{!"pollfd", !7, i64 0, !62, i64 4, !62, i64 6}
!153 = !{!152, !62, i64 6}
!154 = !{!93, !6, i64 384}
!155 = !{!28, !28, i64 0}
!156 = !{!37, !10, i64 400}
!157 = !{!"time_node", !45, i64 0, !27, i64 32, !7, i64 48}
!158 = !{!157, !7, i64 48}
!159 = !{!29, !29, i64 0}
!160 = !{!134, !7, i64 32}
!161 = !{!"_Bool", !6, i64 0}
!162 = !{!161, !161, i64 0}
!163 = !{!93, !29, i64 440}
!164 = !{!93, !7, i64 2880}
!165 = !{!93, !35, i64 120}
!166 = !{!"Curl_share", !7, i64 0, !7, i64 4, !7, i64 8, !6, i64 16, !7, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !19, i64 88, !36, i64 96, !22, i64 208, !66, i64 256, !26, i64 264, !67, i64 288, !23, i64 296}
!167 = !{!166, !7, i64 4}
!168 = !{!93, !12, i64 2072}
!169 = distinct !{!169, !109}
!170 = !{!19, !19, i64 0}
!171 = distinct !{!171, !109}
!172 = !{!136, !10, i64 16}
!173 = !{!93, !12, i64 8}
!174 = distinct !{!174, !109}
!175 = distinct !{!175, !109}
!176 = !{!37, !7, i64 736}
!177 = distinct !{null}
end_hunk_1
