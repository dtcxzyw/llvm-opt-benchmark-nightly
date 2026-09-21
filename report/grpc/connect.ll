Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/connect?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@_ZL9conn_ctrlP6bio_stilPv:bb.a
  br label %_ZL17conn_close_socketP6bio_st.exit

_ZL17conn_close_socketP6bio_st.exit:              ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !26
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !24
  %.not38 = icmp eq i32 %i.h, 2
  br i1 %.not38, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call fastcc noundef i32 @_ZL10conn_stateP6bio_stPN12_GLOBAL__N_114bio_connect_stE(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.j = sext i32 %i.i to i64
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %3, null
  br i1 %.not37, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.k, align 8, !tbaa !27
  switch i64 %2, label %bb.r [
    i64 0, label %bb.h
    i64 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  tail call void @OPENSSL_free(ptr noundef %i.m) #8
  %i.n = tail call ptr @OPENSSL_strdup(ptr noundef nonnull %3) #8 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !28
  %i.o = icmp ne ptr %i.n, null
  %spec.select = zext i1 %i.o to i64
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  tail call void @OPENSSL_free(ptr noundef %i.q) #8
  %i.r = tail call ptr @OPENSSL_strdup(ptr noundef nonnull %3) #8 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !29
  %i.s = icmp ne ptr %i.r, null
  %spec.select39 = zext i1 %i.s to i64
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.t = trunc i64 %2 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.t, ptr %i.u, align 8, !tbaa !30
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not36 = icmp eq ptr %3, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 2 uses
  br i1 %.not36, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %.pre, ptr %3, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %i.x = sext i32 %.pre to i64
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aa = sext i32 %i.z to i64
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.ab = trunc i64 %2 to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !31
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  store ptr %i.ae, ptr %3, align 8, !tbaa !33
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.h, %bb.k, %bb.g, %bb.d, %bb.a, %._crit_edge, %bb.f, %bb.e, %bb.q, %bb.p, %bb.o, %bb.n, %bb.j, %_ZL17conn_close_socketP6bio_st.exit
  %.0 = phi i64 [ 0, %bb.q ], [ 0, %_ZL17conn_close_socketP6bio_st.exit ], [ %i.j, %bb.e ], [ 1, %bb.p ], [ 1, %bb.d ], [ 1, %bb.a ], [ %spec.select, %bb.h ], [ -1, %bb.k ], [ %spec.select39, %bb.i ], [ 1, %bb.f ], [ 1, %bb.j ], [ %i.x, %._crit_edge ], [ 0, %bb.g ], [ %i.aa, %bb.n ], [ 1, %bb.o ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL8conn_newP6bio_st(ptr nofree noundef writeonly captures(none) initializes((16, 20), (24, 28), (32, 36), (40, 48)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !26
  %i.d = tail call ptr @OPENSSL_zalloc(i64 noundef 176) #8 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZL15BIO_CONNECT_newv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !24
  br label %_ZL15BIO_CONNECT_newv.exit

_ZL15BIO_CONNECT_newv.exit:                       ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.f, align 8, !tbaa !19
  %i.g = icmp ne ptr %i.d, null
  %i.h = zext i1 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL9conn_freeP6bio_st(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZL17conn_close_socketP6bio_st.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %_ZL17conn_close_socketP6bio_st.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @shutdown(i32 noundef %i.d, i32 noundef 2) #8 ; 0 uses
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %.pre.i, %bb.d ], [ %i.d, %bb.c ]
  %i.l = tail call noundef i32 @close(i32 noundef %i.k) #8 ; 0 uses
  store i32 -1, ptr %i.c, align 8, !tbaa !25
  br label %_ZL17conn_close_socketP6bio_st.exit

_ZL17conn_close_socketP6bio_st.exit:              ; preds = %bb.e, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZL16BIO_CONNECT_freePN12_GLOBAL__N_114bio_connect_stE.exit, label %bb.f

bb.f:                                             ; preds = %_ZL17conn_close_socketP6bio_st.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  tail call void @OPENSSL_free(ptr noundef %i.q) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  tail call void @OPENSSL_free(ptr noundef %i.s) #8
  tail call void @OPENSSL_free(ptr noundef nonnull %i.n) #8
  br label %_ZL16BIO_CONNECT_freePN12_GLOBAL__N_114bio_connect_stE.exit

_ZL16BIO_CONNECT_freePN12_GLOBAL__N_114bio_connect_stE.exit: ; preds = %_ZL17conn_close_socketP6bio_st.exit, %bb.f
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i64 0, 2) i64 @_ZL18conn_callback_ctrlP6bio_stiPFlS0_iPKcillE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #5 {
bb.a:
  %cond = icmp eq i32 %1, 14
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %2, ptr %i.c, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL10conn_stateP6bio_stPN12_GLOBAL__N_114bio_connect_stE(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.062 = phi i32 [ -1, %bb.a ], [ %.062.be, %.backedge ] ; 7 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.j, label %.loopexit.loopexit [
    i32 0, label %bb.c
    i32 1, label %bb.ac
    i32 2, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !28   ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 108, ptr noundef nonnull @.str.2, i32 noundef 141) #8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.k, align 1, !tbaa !35
  %i.p = icmp eq i8 %i.o, 91
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 93) #9 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit88, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  switch i8 %i.x, label %.loopexit88 [
    i8 58, label %bb.i
    i8 0, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %i.z = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 58) #9 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ac = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ab, i32 noundef 58) #9
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #9
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = ptrtoint ptr %i.k to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h
  %.238.i = phi ptr [ %i.k, %bb.l ], [ %i.s, %bb.i ], [ %i.k, %bb.m ], [ %i.s, %bb.h ]
  %.3.i = phi ptr [ null, %bb.l ], [ %i.y, %bb.i ], [ %i.ab, %bb.m ], [ null, %bb.h ] ; 2 uses
  %.2.i = phi i64 [ %i.ad, %bb.l ], [ %i.v, %bb.i ], [ %i.ag, %bb.m ], [ %i.v, %bb.h ]
  %i.ah = call ptr @OPENSSL_strndup(ptr noundef nonnull %.238.i, i64 noundef %.2.i) #8 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit88, label %bb.o

bb.o:                                             ; preds = %bb.n
  %2 = icmp eq ptr %.3.i, null
  br i1 %2, label %.loopexit88, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = call ptr @OPENSSL_strdup(ptr noundef nonnull %.3.i) #8 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  call void @OPENSSL_free(ptr noundef nonnull %i.ah) #8
  br label %.loopexit88

.thread:                                          ; preds = %bb.p
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !29
  call void @OPENSSL_free(ptr noundef %i.al) #8
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !29
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !28
  call void @OPENSSL_free(ptr noundef %i.am) #8
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !28
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !29
  br label %bb.r

.loopexit88:                                      ; preds = %bb.o, %bb.n, %bb.g, %bb.h, %bb.q
  %.18590 = phi ptr [ null, %bb.q ], [ null, %bb.h ], [ null, %bb.n ], [ %i.ah, %bb.o ], [ null, %bb.g ]
  call void @OPENSSL_free(ptr noundef %.18590) #8
  call void @OPENSSL_free(ptr noundef null) #8
  call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.2, i32 noundef 151) #8
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !28
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %i.an) #8
  br label %.loopexit

bb.r:                                             ; preds = %.thread, %bb.e
  %i.ao = phi ptr [ %.pre, %.thread ], [ %i.m, %bb.e ]
  %i.ap = phi ptr [ %i.ah, %.thread ], [ %i.k, %bb.e ]
  %i.aq = call i32 @bio_ip_and_port_to_socket_and_addr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ap, ptr noundef %i.ao) #8
  %.not72 = icmp eq i32 %i.aq, 0
  br i1 %.not72, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str.2, i32 noundef 165) #8
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !29
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %i.ar, ptr noundef nonnull @.str.4, ptr noundef %i.as) #8
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.at = load i32, ptr %i.i, align 8, !tbaa !30
  %.not73 = icmp eq i32 %i.at, 0
  br i1 %.not73, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load i32, ptr %i.d, align 8, !tbaa !25
  %i.av = call i32 @bio_socket_nbio(i32 noundef %i.au, i32 noundef 1) #8
  %.not74 = icmp eq i32 %i.av, 0
  br i1 %.not74, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.2, i32 noundef 172) #8
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !29
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %i.aw, ptr noundef nonnull @.str.4, ptr noundef %i.ax) #8
  br label %.loopexit

bb.w:                                             ; preds = %bb.u, %bb.t
  store i32 1, ptr %i.a, align 4, !tbaa !11
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !25
  %i.az = call i32 @setsockopt(i32 noundef %i.ay, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %i.a, i32 noundef 4) #8 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @ERR_put_error(i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 183) #8
  call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.2, i32 noundef 184) #8
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !29
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %i.bb, ptr noundef nonnull @.str.4, ptr noundef %i.bc) #8
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  call void @BIO_clear_retry_flags(ptr noundef nonnull %0) #8
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !25
  %i.be = load i32, ptr %i.h, align 8, !tbaa !36
  %i.bf = call i32 @connect(i32 noundef %i.bd, ptr noundef nonnull %i.g, i32 noundef %i.be) #8 ; 5 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.bh = call i32 @bio_socket_should_retry(i32 noundef %i.bf) #8
  %.not76 = icmp eq i32 %i.bh, 0
  br i1 %.not76, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @BIO_set_flags(ptr noundef nonnull %0, i32 noundef 12) #8
  store i32 1, ptr %1, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.bi, align 4, !tbaa !37
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  call void @ERR_put_error(i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 197) #8
  call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.2, i32 noundef 198) #8
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.bk = load ptr, ptr %i.f, align 8, !tbaa !29
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %i.bj, ptr noundef nonnull @.str.4, ptr noundef %i.bk) #8
  br label %.loopexit

bb.ac:                                            ; preds = %bb.b
  %i.bl = load i32, ptr %i.d, align 8, !tbaa !25
  %i.bm = call i32 @bio_sock_error(i32 noundef %i.bl) #8 ; 2 uses
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !11
  %.not70 = icmp eq i32 %i.bm, 0
  br i1 %.not70, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = call i32 @bio_socket_should_retry(i32 noundef %.062) #8
  %.not71 = icmp eq i32 %i.bn, 0
  br i1 %.not71, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @BIO_set_flags(ptr noundef nonnull %0, i32 noundef 12) #8
  store i32 1, ptr %1, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.bo, align 4, !tbaa !37
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  call void @BIO_clear_retry_flags(ptr noundef nonnull %0) #8
  call void @ERR_put_error(i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 218) #8
  call void @ERR_put_error(i32 noundef 17, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str.2, i32 noundef 219) #8
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !29
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %i.bp, ptr noundef nonnull @.str.4, ptr noundef %i.bq) #8
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ac, %bb.y
  %.1 = phi i32 [ %i.bf, %bb.y ], [ %.062, %bb.ac ] ; 2 uses
  store i32 2, ptr %1, align 8, !tbaa !24
  br i1 %.not, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = call noundef i32 %i.c(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %.1) #8 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.loopexit89, label %.backedge

.backedge:                                        ; preds = %bb.ah, %bb.ag
  %.062.be = phi i32 [ %i.br, %bb.ah ], [ %.1, %bb.ag ]
  br label %bb.b, !llvm.loop !34

.loopexit.loopexit:                               ; preds = %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit, %.loopexit88, %bb.ae, %bb.af, %bb.aa, %bb.ab, %bb.x, %bb.v, %bb.s, %bb.d
  %.3 = phi i32 [ %.062, %.loopexit.loopexit ], [ %.062, %bb.d ], [ %i.az, %bb.x ], [ %i.bf, %bb.aa ], [ %i.bf, %bb.ab ], [ %.062, %bb.v ], [ %.062, %bb.s ], [ %.062, %.loopexit88 ], [ -1, %bb.ae ], [ 0, %bb.af ], [ 1, %bb.b ] ; 2 uses
  br i1 %.not, label %.loopexit89, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.bt = load i32, ptr %1, align 8, !tbaa !24
  %i.bu = call noundef i32 %i.c(ptr noundef %0, i32 noundef %i.bt, i32 noundef %.3) #8
  br label %.loopexit89

.loopexit89:                                      ; preds = %bb.ah, %bb.ai, %.loopexit
  %.4 = phi i32 [ %i.bu, %bb.ai ], [ %.3, %.loopexit ], [ 0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.4
}

declare void @bio_clear_socket_error() local_unnamed_addr #2

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_clear_retry_flags(ptr noundef) local_unnamed_addr #2

declare i32 @bio_socket_should_retry(i32 noundef) local_unnamed_addr #2

declare void @BIO_set_retry_write(ptr noundef) local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

declare i32 @bio_ip_and_port_to_socket_and_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bio_socket_nbio(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @bio_sock_error(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @OPENSSL_strndup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_strdup(ptr noundef) local_unnamed_addr #2

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_retry_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS13bio_method_st", !12, i64 0}
!14 = !{!"p1 _ZTS13stack_st_void", !12, i64 0}
!15 = !{!"_ZTS17crypto_ex_data_st", !14, i64 0}
!16 = !{!"p1 _ZTS6bio_st", !12, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTS6bio_st", !13, i64 0, !15, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !12, i64 40, !16, i64 48, !17, i64 56, !17, i64 64}
!19 = !{!18, !12, i64 40}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"short", !7, i64 0}
!22 = !{!"_ZTS16sockaddr_storage", !21, i64 0, !7, i64 2, !17, i64 120}
!23 = !{!"_ZTSN12_GLOBAL__N_114bio_connect_stE", !8, i64 0, !20, i64 8, !20, i64 16, !8, i64 24, !21, i64 28, !22, i64 32, !8, i64 160, !12, i64 168}
!24 = !{!23, !8, i64 0}
!25 = !{!18, !8, i64 32}
!26 = !{!18, !8, i64 24}
!27 = !{!18, !8, i64 16}
!28 = !{!23, !20, i64 8}
!29 = !{!23, !20, i64 16}
!30 = !{!23, !8, i64 24}
!31 = !{!18, !8, i64 20}
!32 = !{!23, !12, i64 168}
!33 = !{!12, !12, i64 0}
!34 = distinct !{!34, !38}
!35 = !{!7, !7, i64 0}
!36 = !{!23, !8, i64 160}
!37 = !{!18, !8, i64 28}
!38 = !{!"llvm.loop.mustprogress"}
end_hunk_0
