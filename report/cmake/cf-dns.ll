Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cf-dns?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
begin_hunk_0_@cf_dns_connect:bb.a
  %i.dw = load i8, ptr %i.dv, align 4
  %i.dx = and i8 %i.dw, 1
  %.not92 = icmp eq i8 %i.dx, 0
  br i1 %.not92, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.dy = call i32 @Curl_conn_cf_connect(ptr noundef nonnull %i.du, ptr noundef %1, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = load i8, ptr %i.a, align 1, !range !111
  %i.eb = trunc nuw i8 %i.ea to i1
  %or.cond4 = select i1 %i.dz, i1 %i.eb, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %or.cond4, label %bb.at, label %bb.bj

bb.at:                                            ; preds = %cf_dns_ready_to_connect.exit.thread, %bb.ar, %bb.as
  %.not93 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not93, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 2049
  %i.ed = load i32, ptr %i.ec, align 1
  %i.ee = and i32 %i.ed, 134217728
  %.not94 = icmp eq i32 %i.ee, 0
  br i1 %.not94, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !78 ; 2 uses
  %.not95 = icmp eq ptr %i.eg, null
  br i1 %.not95, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !80
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ek = load ptr, ptr %0, align 8, !tbaa !81
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !83
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #5
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.at
  %i.eo = load i8, ptr %i.g, align 4
  %i.ep = and i8 %i.eo, 8
  %.not96 = icmp eq i8 %i.ep, 0
  br i1 %.not96, label %bb.bi, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eq = load ptr, ptr %i.c, align 8, !tbaa !91
  %.not97 = icmp eq ptr %i.eq, null
  br i1 %.not97, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.er = load i32, ptr %i.bi, align 8, !tbaa !90
  %.not98 = icmp eq i32 %i.er, 0
  br i1 %.not98, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not93, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 2049
  %i.et = load i32, ptr %i.es, align 1
  %i.eu = and i32 %i.et, 134217728
  %.not99 = icmp eq i32 %i.eu, 0
  br i1 %.not99, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !78 ; 2 uses
  %.not100 = icmp eq ptr %i.ew, null
  br i1 %.not100, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !80
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.fa = load ptr, ptr %0, align 8, !tbaa !81
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !83
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #5
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  store i8 1, ptr %2, align 1, !tbaa !106
  %i.fe = load i8, ptr %i.d, align 4
  %i.ff = or i8 %i.fe, 1
  store i8 %i.ff, ptr %i.d, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !92
  call void @Curl_resolv_destroy(ptr noundef %1, i32 noundef %i.fh) #5
  br label %bb.bj

bb.bj:                                            ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.bc, %bb.bd, %bb.bf, %bb.bg, %bb.bh, %cf_dns_ready_to_connect.exit, %bb.as, %bb.bi, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.bd ], [ 0, %bb.bi ], [ 0, %cf_dns_ready_to_connect.exit ], [ %i.dy, %bb.as ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bc ], [ 0, %bb.bf ], [ %.pre107, %bb.x ], [ %i.bk, %bb.w ], [ %i.bk, %bb.v ], [ %i.bk, %bb.t ], [ %i.bk, %bb.s ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @cf_dns_close(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -2
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112
  tail call void %i.h(ptr noundef nonnull %i.e, ptr noundef %1) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @Curl_cf_def_shutdown(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @cf_dns_adjust_pollset(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @Curl_resolv_pollset(ptr noundef %1, ptr noundef %2) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare zeroext i1 @Curl_cf_def_data_pending(ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_send(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) #1

declare i32 @Curl_cf_def_recv(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @cf_dns_cntrl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %cond = icmp eq i32 %2, 7
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @Curl_dns_entry_unlink(ptr noundef %1, ptr noundef nonnull %i.b) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret i32 0
}

declare zeroext i1 @Curl_cf_def_conn_is_alive(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_conn_keep_alive(ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_query(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_cf_dns_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !98
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 728
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = and i64 %i.f, 32
  %.not.i = icmp ne i64 %i.g, 0                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, 4
  %.not32.i = icmp eq i64 %i.h, 0                 ; 2 uses
  %.in.v.i = select i1 %.not32.i, i64 288, i64 232
  %.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in.v.i
  %i.i = load ptr, ptr %.in.i, align 8, !tbaa !113 ; 2 uses
  %.in34.in.v.i = select i1 %.not32.i, i64 304, i64 248
  %.in34.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in34.in.v.i
  %.not35.i = icmp eq ptr %i.i, null
  br i1 %.not35.i, label %.thread.i, label %.thread43.i

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.j = and i64 %i.f, 512
  %.not36.i = icmp eq i64 %i.j, 0
  %i.k = select i1 %.not36.i, i64 160, i64 200
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115  ; 2 uses
  %6 = lshr i64 %i.f, 9
  %i.n = and i64 %6, 2
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  %.in38.in.i = getelementptr inbounds nuw i8, ptr %7, i64 792
  %.not39.i = icmp eq ptr %i.m, null
  br i1 %.not39.i, label %cf_dns_conn_create.exit.thread, label %.thread43.i

.thread43.i:                                      ; preds = %.thread.i, %bb.c
  %.148.in.i = phi ptr [ %.in38.in.i, %.thread.i ], [ %.in34.in.i, %bb.c ]
  %.13047.i = phi ptr [ %i.m, %.thread.i ], [ %i.i, %bb.c ]
  %.148.i = load i16, ptr %.148.in.i, align 2, !tbaa !116
  %i.o = call fastcc i32 @cf_dns_create(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i8 noundef zeroext %3, ptr noundef nonnull %.13047.i, i16 noundef zeroext %.148.i, i8 noundef zeroext %4, i1 noundef zeroext %.not.i, i1 noundef zeroext false, ptr noundef %5)
  br label %cf_dns_conn_create.exit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %cf_dns_conn_create.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.r = load i16, ptr %i.q, align 4, !tbaa !95
  %i.s = call fastcc i32 @cf_dns_create(ptr noundef %i.a, ptr noundef %0, i8 noundef zeroext %3, ptr noundef nonnull %i.p, i16 noundef zeroext %i.r, i8 noundef zeroext %4, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %5)
  br label %cf_dns_conn_create.exit

cf_dns_conn_create.exit:                          ; preds = %.thread43.i, %bb.e
  %.0 = phi i32 [ %i.o, %.thread43.i ], [ %i.s, %bb.e ] ; 2 uses
  %.not17 = icmp eq i32 %.0, 0
  br i1 %.not17, label %bb.f, label %cf_dns_conn_create.exit.thread

bb.f:                                             ; preds = %cf_dns_conn_create.exit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void @Curl_conn_cf_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.t) #5
  br label %cf_dns_conn_create.exit.thread

cf_dns_conn_create.exit.thread:                   ; preds = %.thread.i, %bb.d, %cf_dns_conn_create.exit, %bb.f
  %.020 = phi i32 [ 0, %bb.f ], [ %.0, %cf_dns_conn_create.exit ], [ 2, %bb.d ], [ 2, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cf_dns_create(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i8 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, i16 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !98
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) #6 ; 3 uses
  %i.c = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !84
  %i.d = add i64 %i.b, 24
  %i.e = tail call ptr %i.c(i64 noundef 1, i64 noundef %i.d) #5, !inline_history !117 ; 11 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !98
  br label %cf_dns_ctx_destroy.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i16 %4, ptr %i.f, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  store i8 %2, ptr %i.g, align 2, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 19 ; 2 uses
  store i8 %5, ptr %i.h, align 1, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = select i1 %6, i8 16, i8 0
  %i.l = and i8 %i.j, -29
  %i.m = select i1 %7, i8 8, i8 0
  %i.n = or disjoint i8 %i.m, %i.k
  %i.o = or disjoint i8 %i.n, %i.l
  store i8 %i.o, ptr %i.i, align 4
  %i.p = tail call ptr @Curl_dns_entry_link(ptr noundef %1, ptr noundef %8) #5 ; 2 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !91
  %i.q = icmp ne ptr %i.p, null
  %i.r = zext i1 %i.q to i8
  %i.s = load i8, ptr %i.i, align 4
  %i.t = and i8 %i.s, -2
  %i.u = or disjoint i8 %i.t, %i.r
  store i8 %i.u, ptr %i.i, align 4
  %.not39.i = icmp eq i64 %i.b, 0
  br i1 %.not39.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %3, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not40.i = icmp eq ptr %1, null
  br i1 %.not40.i, label %cf_dns_ctx_create.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2049
  %i.x = load i32, ptr %i.w, align 1
  %i.y = and i32 %i.x, 134217728
  %.not41.i = icmp eq i32 %i.y, 0
  br i1 %.not41.i, label %cf_dns_ctx_create.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78  ; 2 uses
  %.not42.i = icmp eq ptr %i.aa, null
  br i1 %.not42.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !80
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.af = icmp sgt i32 %i.ae, 0
  %or.cond.i = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond.i, label %bb.i, label %cf_dns_ctx_create.exit

bb.h:                                             ; preds = %bb.f
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !80
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.i, label %cf_dns_ctx_create.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  %i.ah = load i16, ptr %i.f, align 8, !tbaa !87
  %i.ai = zext i16 %i.ah to i32
  %i.aj = load i8, ptr %i.h, align 1, !tbaa !89
  %i.ak = zext i8 %i.aj to i32
  %i.al = load i8, ptr %i.g, align 2, !tbaa !88
  %i.am = zext i8 %i.al to i32
  tail call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ag, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.am) #5
  br label %cf_dns_ctx_create.exit

cf_dns_ctx_create.exit:                           ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %i.an = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_dns, ptr noundef nonnull %i.e) #5 ; 2 uses
  %.not17 = icmp eq i32 %i.an, 0                  ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = select i1 %.not17, ptr %i.ao, ptr null
  store ptr %i.ap, ptr %0, align 8, !tbaa !98
  br i1 %.not17, label %cf_dns_ctx_destroy.exit, label %bb.j

bb.j:                                             ; preds = %cf_dns_ctx_create.exit
  call void @Curl_dns_entry_unlink(ptr noundef %1, ptr noundef nonnull %i.e) #5
  %i.aq = load ptr, ptr @Curl_cfree, align 8, !tbaa !84
  call void %i.aq(ptr noundef nonnull %i.e) #5, !inline_history !0
  br label %cf_dns_ctx_destroy.exit

cf_dns_ctx_destroy.exit:                          ; preds = %bb.j, %.thread, %cf_dns_ctx_create.exit
  %.023 = phi i32 [ 0, %cf_dns_ctx_create.exit ], [ 27, %.thread ], [ %i.an, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.023
}

declare void @Curl_conn_cf_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_cf_dns_insert_after(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, i16 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = call fastcc i32 @cf_dns_create(ptr noundef %i.a, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i16 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext false, i1 noundef zeroext %6, ptr noundef null) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void @Curl_conn_cf_insert_after(ptr noundef %0, ptr noundef %i.c) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.b
}

declare void @Curl_conn_cf_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Curl_conn_dns_result(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not11.i = icmp eq ptr %i.d, null
  br i1 %.not11.i, label %cf_dns_result.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.012.i = phi ptr [ %i.m, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.012.i, align 8, !tbaa !81
  %i.f = icmp eq ptr %i.e, @Curl_cft_dns
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  %.not8.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !90   ; 3 uses
  br i1 %.not8.i, label %bb.c, label %cf_dns_result.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not9.i, i32 81, i32 %i.k
  br label %cf_dns_result.exit

end_hunk_0
