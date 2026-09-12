Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssl_ciph?download=true
inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ssl_cipher_get_evp:bb.a
  br i1 %i.i, label %bb.e, label %SSL_COMP_get_compression_methods.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.g, i32 noundef %i.h) #12
  store ptr %i.j, ptr %6, align 8, !tbaa !147
  br label %SSL_COMP_get_compression_methods.exit.thread

SSL_COMP_get_compression_methods.exit.thread:     ; preds = %bb.c, %bb.d, %bb.e, %SSL_COMP_get_compression_methods.exit
  %i.k = icmp ne ptr %2, null
  %i.l = icmp ne ptr %3, null
  %or.cond.not = or i1 %i.k, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br i1 %or.cond.not, label %bb.f, label %.thread95

bb.f:                                             ; preds = %SSL_COMP_get_compression_methods.exit.thread, %bb.b
  %i.m = icmp eq ptr %2, null
  %i.n = icmp eq ptr %3, null
  %or.cond3 = or i1 %i.m, %i.n
  br i1 %or.cond3, label %.thread95, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @ssl_cipher_get_evp_cipher(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %2)
  %.not78 = icmp eq i32 %i.o, 0
  br i1 %.not78, label %.thread95, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @ssl_cipher_get_evp_md_mac(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5)
  %.not79 = icmp eq i32 %i.p, 0
  %i.q = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  br i1 %.not79, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @ssl_evp_cipher_free(ptr noundef %i.q) #12
  br label %.thread95

bb.j:                                             ; preds = %bb.h
  %.not80 = icmp eq ptr %i.q, null
  br i1 %.not80, label %.thread95, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %3, align 8, !tbaa !56
  %.not81 = icmp eq ptr %i.r, null
  br i1 %.not81, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.q) #12
  %i.t = and i64 %i.s, 2097152
  %.not82 = icmp eq i64 %i.t, 0
  br i1 %.not82, label %.thread95, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63   ; 4 uses
  %i.w = icmp eq i32 %i.v, 64
  %i.x = icmp eq ptr %4, null
  %or.cond5 = or i1 %i.x, %i.w
  br i1 %or.cond5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load i32, ptr %4, align 4, !tbaa !60
  %.not83 = icmp eq i32 %i.y, 0
  br i1 %.not83, label %.thread95, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not84 = icmp eq i32 %7, 0
  br i1 %.not84, label %bb.p, label %.thread95

bb.p:                                             ; preds = %bb.o
  %i.z = load i32, ptr %1, align 8, !tbaa !149
  %i.aa = add i32 %i.z, -1024
  %or.cond = icmp ult i32 %i.aa, -255
  br i1 %or.cond, label %.thread95, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !62
  switch i32 %i.ac, label %.thread95 [
    i32 4, label %bb.r
    i32 64, label %bb.s
    i32 128, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.ad = icmp eq i32 %i.v, 1
  br i1 %i.ad, label %bb.w, label %.thread95

bb.s:                                             ; preds = %bb.q
  switch i32 %i.v, label %.thread95 [
    i32 2, label %bb.w
    i32 16, label %bb.u
  ]

bb.t:                                             ; preds = %bb.q
  switch i32 %i.v, label %.thread95 [
    i32 2, label %bb.w
    i32 16, label %bb.v
  ]

bb.u:                                             ; preds = %bb.s
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.u, %bb.v
  %.str.6.sink = phi ptr [ @.str.5, %bb.r ], [ @.str.8, %bb.u ], [ @.str.9, %bb.v ], [ @.str.6, %bb.s ], [ @.str.7, %bb.t ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = call ptr @ssl_evp_cipher_fetch(ptr noundef %i.ae, ptr noundef nonnull %.str.6.sink, ptr noundef %i.ag) #12 ; 2 uses
  %.not86 = icmp eq ptr %i.ah, null
  br i1 %.not86, label %.thread95, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ai = load ptr, ptr %2, align 8, !tbaa !52
  call void @ssl_evp_cipher_free(ptr noundef %i.ai) #12
  %i.aj = load ptr, ptr %3, align 8, !tbaa !56
  call void @ssl_evp_md_free(ptr noundef %i.aj) #12
  store ptr %i.ah, ptr %2, align 8, !tbaa !52
  store ptr null, ptr %3, align 8, !tbaa !56
  br label %.thread95

.thread95:                                        ; preds = %bb.t, %bb.s, %bb.q, %bb.r, %bb.j, %bb.l, %bb.n, %bb.p, %bb.o, %bb.x, %bb.w, %bb.g, %bb.f, %bb.a, %SSL_COMP_get_compression_methods.exit.thread, %bb.i
  %.2 = phi i32 [ 1, %SSL_COMP_get_compression_methods.exit.thread ], [ 0, %bb.a ], [ 0, %bb.g ], [ 1, %bb.p ], [ 0, %bb.i ], [ 0, %bb.f ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.o ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %bb.j ], [ 1, %bb.t ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.s ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define ptr @SSL_COMP_get_compression_methods() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OSSL_LIB_CTX_get_data(ptr noundef null, i32 noundef 21) #12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @OPENSSL_sk_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ssl_evp_cipher_free(ptr noundef) local_unnamed_addr #2

declare i64 @EVP_CIPHER_get_flags(ptr noundef) local_unnamed_addr #2

declare void @ssl_evp_md_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ssl_md(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %1, 255                          ; 2 uses
  %i.b = icmp samesign ugt i32 %i.a, 14
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @ssl_handshake_md(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = tail call i64 @ssl_get_algorithm2(ptr noundef %0) #12
  %i.d = and i64 %i.c, 255                        ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 14
  br i1 %i.e, label %ssl_md.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1440
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  br label %ssl_md.exit

ssl_md.exit:                                      ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

declare i64 @ssl_get_algorithm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ssl_prf_md(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = tail call i64 @ssl_get_algorithm2(ptr noundef %0) #12
  %1 = trunc i64 %i.c to i32
  %2 = lshr i32 %1, 8
  %3 = and i32 %2, 255                            ; 2 uses
  %i.d = icmp samesign ugt i32 %3, 14
  br i1 %i.d, label %ssl_md.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1440
  %4 = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %4
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  br label %ssl_md.exit

ssl_md.exit:                                      ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SSL_CTX_set_ciphersuites(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = tail call fastcc i32 @set_ciphersuites(ptr noundef nonnull %i.a, ptr noundef %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.g = tail call fastcc i32 @update_cipher_list(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @set_ciphersuites(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_sk_new_null() #12
  %i.b = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.a, ptr noundef nonnull @sk_SSL_CIPHER_freefunc_thunk) #12 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !111
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @CONF_parse_list(ptr noundef nonnull %1, i32 noundef 58, i32 noundef 1, ptr noundef nonnull @ciphersuite_cb, ptr noundef nonnull %i.b) #12
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #12
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.10, i32 noundef 1277, ptr noundef nonnull @__func__.set_ciphersuites) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 185, ptr noundef null) #12
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.b) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_sk_free(ptr noundef %i.i) #12
  store ptr %i.b, ptr %0, align 8, !tbaa !112
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @update_cipher_list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !112
  %i.b = tail call ptr @OPENSSL_sk_dup(ptr noundef %i.a) #12 ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %.split23.preheader

.split23.preheader:                               ; preds = %bb.a
  %i.d = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #12
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split23.preheader, %.split
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.b, i32 noundef 0) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !113
  %i.i = icmp eq i32 %i.h, 772
  br i1 %i.i, label %.split, label %.critedge

.split:                                           ; preds = %.lr.ph
  %i.j = tail call ptr @OPENSSL_sk_delete(ptr noundef nonnull %i.b, i32 noundef 0) #12 ; 0 uses
  %i.k = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #12
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.critedge, !llvm.loop !152

.critedge:                                        ; preds = %.lr.ph, %.split, %.split23.preheader
  %i.m = tail call i32 @OPENSSL_sk_num(ptr noundef %3) #12 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph29, label %._crit_edge

.lr.ph29:                                         ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1764
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph29, %bb.e
  %.028.in = phi i32 [ %i.m, %.lr.ph29 ], [ %.028, %bb.e ] ; 2 uses
  %.028 = add nsw i32 %.028.in, -1                ; 2 uses
  %i.q = tail call ptr @OPENSSL_sk_value(ptr noundef %3, i32 noundef %.028) #12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !62
  %i.t = load i32, ptr %i.o, align 8, !tbaa !46
  %i.u = and i32 %i.t, %i.s
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !114
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @ssl_cipher_table_mac, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !53
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !55
  %i.ad = and i32 %i.ac, %i.ab
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = tail call i32 @OPENSSL_sk_unshift(ptr noundef nonnull %i.b, ptr noundef nonnull %i.q) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = icmp samesign ugt i32 %.028.in, 1
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.e, %.critedge
  %i.ah = tail call ptr @OPENSSL_sk_dup(ptr noundef nonnull %i.b) #12 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.b) #12
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.aj = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @OPENSSL_sk_free(ptr noundef %i.aj) #12
  store ptr %i.ah, ptr %2, align 8, !tbaa !112
  %i.ak = tail call ptr @OPENSSL_sk_set_cmp_func(ptr noundef nonnull %i.ah, ptr noundef nonnull @ssl_cipher_ptr_id_cmp) #12 ; 0 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @OPENSSL_sk_sort(ptr noundef %i.al) #12
  %i.am = load ptr, ptr %1, align 8, !tbaa !112
  tail call void @OPENSSL_sk_free(ptr noundef %i.am) #12
  store ptr %i.b, ptr %1, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f
  %.022 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.a ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SSL_set_ciphersuites(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread26, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #12 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread26

.thread26:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1392 ; 2 uses
  %i.i = tail call fastcc i32 @set_ciphersuites(ptr noundef nonnull %i.h, ptr noundef %1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1376 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !155
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread26
  %i.m = tail call ptr @SSL_get_ciphers(ptr noundef nonnull %0) #12 ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
end_hunk_0
