Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ssl_lib?download=true
inline.NumInlined: 300
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nss_keylog_int:bb.a
._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d
  %.136.lcssa = phi ptr [ %i.be, %bb.d ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %.lr.ph.epil.preheader ]
  store i8 0, ptr %.136.lcssa, align 1, !tbaa !216
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !349 ; 2 uses
  %.not = icmp eq ptr %i.cv, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !148
  tail call void %i.cv(ptr noundef %i.cx, ptr noundef nonnull %i.k) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.k, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 7006) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.037 = phi i32 [ 1, %bb.f ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl_log_secret(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = tail call fastcc i32 @nss_keylog_int(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef %2, i64 noundef %3)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl_cache_cipherlist(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val43 = load i64, ptr %i.a, align 8, !tbaa !337 ; 2 uses
  %i.b = icmp eq i64 %.val43, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #17
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7052, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #17
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 183, ptr noundef null) #17
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.c = select i1 %.not, i64 2, i64 3
  %i.d = urem i64 %.val43, %i.c
  %.not34 = icmp eq i64 %i.d, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #17
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7057, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #17
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 151, ptr noundef null) #17
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !294
  tail call void @CRYPTO_free(ptr noundef %i.f, ptr noundef nonnull @.str, i32 noundef 7061) #17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val41 = load i64, ptr %i.a, align 8, !tbaa !337 ; 3 uses
  %i.h = udiv i64 %.val41, 3
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !233
  %i.i = shl nuw i64 %i.h, 1
  %i.j = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.i, ptr noundef nonnull @.str, i32 noundef 7078) #17 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !294
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #17
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7081, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #17
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #17
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  store i64 0, ptr %i.g, align 8, !tbaa !295
  %.not3679 = icmp eq i64 %.val41, 0
  br i1 %.not3679, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.l
  %i.l = phi i64 [ %i.t, %bb.l ], [ 0, %bb.h ]    ; 2 uses
  %.082 = phi ptr [ %i.u, %bb.l ], [ %i.j, %bb.h ] ; 2 uses
  %.sroa.0.081 = phi ptr [ %.sroa.0.275, %bb.l ], [ %.sroa.0.0.copyload, %bb.h ] ; 3 uses
  %.sroa.11.080 = phi i64 [ %.sroa.11.273, %bb.l ], [ %.val41, %bb.h ] ; 2 uses
  %i.m = load i8, ptr %.sroa.0.081, align 1, !tbaa !216
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 1
  %i.o = icmp eq i8 %i.m, 0
  %i.p = icmp ult i64 %.sroa.11.080, 3            ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.p, label %PACKET_copy_bytes.exit.thread, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.p, label %PACKET_copy_bytes.exit.thread, label %bb.l

PACKET_copy_bytes.exit.thread:                    ; preds = %bb.j, %bb.i
  tail call void @ERR_new() #17
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7093, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #17
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 240, ptr noundef null) #17
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !294
  tail call void @CRYPTO_free(ptr noundef %i.q, ptr noundef nonnull @.str, i32 noundef 7094) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.r = load i16, ptr %i.n, align 1
  store i16 %i.r, ptr %.082, align 1
  %i.s = add i64 %i.l, 2                          ; 2 uses
  store i64 %i.s, ptr %i.g, align 8, !tbaa !295
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.t = phi i64 [ %i.l, %bb.j ], [ %i.s, %bb.k ]
  %.sroa.11.273 = add i64 %.sroa.11.080, -3       ; 2 uses
  %.sroa.0.275 = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 3
  %i.u = getelementptr inbounds nuw i8, ptr %.082, i64 2
  %.not36 = icmp eq i64 %.sroa.11.273, 0
  br i1 %.not36, label %.critedge, label %.lr.ph, !llvm.loop !528

bb.m:                                             ; preds = %bb.e
  tail call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 454) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %.val.i47 = load i64, ptr %i.a, align 8, !tbaa !337 ; 3 uses
  %i.v = icmp eq i64 %.val.i47, 0
  br i1 %i.v, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = load ptr, ptr %1, align 8, !tbaa !336
  %i.x = tail call ptr @CRYPTO_memdup(ptr noundef %i.w, i64 noundef %.val.i47, ptr noundef nonnull @.str.21, i32 noundef 463) #17 ; 2 uses
  store ptr %i.x, ptr %i.e, align 8, !tbaa !233
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %PACKET_memdup.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.val.i47, ptr %i.g, align 8, !tbaa !169
  br label %.critedge

PACKET_memdup.exit:                               ; preds = %bb.n
  tail call void @ERR_new() #17
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7104, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #17
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.h, %bb.m, %bb.o, %bb.g, %PACKET_copy_bytes.exit.thread, %PACKET_memdup.exit, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %PACKET_memdup.exit ], [ 1, %bb.m ], [ 0, %bb.g ], [ 0, %PACKET_copy_bytes.exit.thread ], [ 1, %bb.o ], [ 1, %bb.h ], [ 1, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SSL_bytes_to_cipher_list(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.PACKET, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #17 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread16

.thread16:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]
  %i.h = icmp slt i64 %2, 0
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %.thread16
  store ptr %1, ptr %6, align 8, !tbaa !336
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.i, align 8, !tbaa !337
  %i.j = call i32 @ossl_bytes_to_cipher_list(ptr noundef nonnull %i.g, ptr noundef nonnull %6, ptr noundef %4, ptr noundef %5, i32 noundef %3, i32 noundef 0)
  br label %.thread

.thread:                                          ; preds = %.thread16, %bb.c, %bb.a, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %.thread16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_bytes_to_cipher_list(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not81.not = icmp ne i32 %4, 0                 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %.val62 = load i64, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  %i.c = icmp eq i64 %.val62, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not60 = icmp eq i32 %5, 0
  tail call void @ERR_new() #17
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7141, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 47, i32 noundef 183, ptr noundef null) #17
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7143, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 183, ptr noundef null) #17
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.d = select i1 %.not81.not, i64 3, i64 2      ; 10 uses
  %i.e = urem i64 %.val62, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not59 = icmp eq i32 %5, 0
  tail call void @ERR_new() #17
  br i1 %.not59, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7150, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 151, ptr noundef null) #17
  br label %bb.af

bb.h:                                             ; preds = %bb.f
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7152, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 151, ptr noundef null) #17
  br label %bb.af

bb.i:                                             ; preds = %bb.e
  %i.f = tail call ptr @OPENSSL_sk_new_null() #17 ; 6 uses
  %i.g = tail call ptr @OPENSSL_sk_new_null() #17 ; 6 uses
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.val.i.i67 = load i64, ptr %i.b, align 8, !tbaa !337 ; 4 uses
  %i.j = icmp ult i64 %.val.i.i67, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not81.not to i64
  %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  br i1 %.not81.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge.us
  %.val.i.i68.us = phi i64 [ %.val.i.i.us, %.backedge.us ], [ %.val.i.i67, %.lr.ph ]
  %i.k = load ptr, ptr %1, align 8, !tbaa !336    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(2) %i.k, i64 range(i64 2, 4) %i.d, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.d
  store ptr %i.l, ptr %1, align 8, !tbaa !336
  %6 = sub nuw i64 %.val.i.i68.us, %i.d
  store i64 %6, ptr %i.b, align 8, !tbaa !337
  %i.m = call ptr @ssl_get_cipher_by_char(ptr noundef %0, ptr noundef nonnull %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, i32 noundef 1) #17 ; 5 uses
  %.not52.us = icmp eq ptr %i.m, null
  br i1 %.not52.us, label %.backedge.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.n = load i32, ptr %i.m, align 8, !tbaa !530
  %.not53.us = icmp eq i32 %i.n, 0
  br i1 %.not53.us, label %.thread.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = call i32 @OPENSSL_sk_push(ptr noundef %i.f, ptr noundef nonnull %i.m) #17
  %.not54.us = icmp eq i32 %i.o, 0
  br i1 %.not54.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.pr.us = load i32, ptr %i.m, align 8, !tbaa !530
  %.not55.us = icmp eq i32 %.pr.us, 0
  br i1 %.not55.us, label %.thread.us, label %.backedge.us

.thread.us:                                       ; preds = %bb.l, %bb.j
  %i.p = call i32 @OPENSSL_sk_push(ptr noundef %i.g, ptr noundef nonnull %i.m) #17
  %.not56.us = icmp eq i32 %i.p, 0
  br i1 %.not56.us, label %.split.us, label %.backedge.us

.backedge.us:                                     ; preds = %.thread.us, %bb.l, %.lr.ph.split.us
  %.val.i.i.us = load i64, ptr %i.b, align 8, !tbaa !337 ; 3 uses
  %i.q = icmp ult i64 %.val.i.i.us, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !529

bb.m:                                             ; preds = %bb.i
  %.not58 = icmp eq i32 %5, 0
  tail call void @ERR_new() #17
  br i1 %.not58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7160, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #17
  br label %bb.ae

bb.o:                                             ; preds = %bb.m
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7162, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524303, ptr noundef null) #17
  br label %bb.ae

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %.val.i.i68 = phi i64 [ %.val.i.i, %.backedge ], [ %.val.i.i67, %.lr.ph ]
  %i.r = load ptr, ptr %1, align 8, !tbaa !336    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(2) %i.r, i64 range(i64 2, 4) %i.d, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.d
  store ptr %i.s, ptr %1, align 8, !tbaa !336
  %7 = sub nuw i64 %.val.i.i68, %i.d
  store i64 %7, ptr %i.b, align 8, !tbaa !337
  %i.t = load i8, ptr %i.a, align 1
  %.not69 = icmp eq i8 %i.t, 0
  br i1 %.not69, label %bb.p, label %.backedge

bb.p:                                             ; preds = %.lr.ph.split
  %i.u = call ptr @ssl_get_cipher_by_char(ptr noundef %0, ptr noundef nonnull %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, i32 noundef 1) #17 ; 5 uses
  %.not52 = icmp eq ptr %i.u, null
  br i1 %.not52, label %.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = load i32, ptr %i.u, align 8, !tbaa !530
  %.not53 = icmp eq i32 %i.v, 0
  br i1 %.not53, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = call i32 @OPENSSL_sk_push(ptr noundef %i.f, ptr noundef nonnull %i.u) #17
  %.not54 = icmp eq i32 %i.w, 0
  br i1 %.not54, label %.split.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.pr = load i32, ptr %i.u, align 8, !tbaa !530
  %.not55 = icmp eq i32 %.pr, 0
  br i1 %.not55, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.q, %bb.s
  %i.x = call i32 @OPENSSL_sk_push(ptr noundef %i.g, ptr noundef nonnull %i.u) #17
  %.not56 = icmp eq i32 %i.x, 0
  br i1 %.not56, label %.split.us, label %.backedge

.split.us:                                        ; preds = %bb.k, %.thread.us, %bb.r, %.thread
  %.not57 = icmp eq i32 %5, 0
  call void @ERR_new() #17
  br i1 %.not57, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.split.us
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7180, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #17
  br label %bb.ae

bb.u:                                             ; preds = %.split.us
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7182, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524303, ptr noundef null) #17
  br label %bb.ae

.backedge:                                        ; preds = %bb.p, %.thread, %bb.s, %.lr.ph.split
  %.val.i.i = load i64, ptr %i.b, align 8, !tbaa !337 ; 3 uses
  %i.y = icmp ult i64 %.val.i.i, %i.d
  br i1 %i.y, label %._crit_edge, label %.lr.ph.split, !llvm.loop !529

._crit_edge:                                      ; preds = %.backedge.us, %.backedge, %.preheader
  %.val = phi i64 [ %.val.i.i, %.backedge ], [ %.val.i.i67, %.preheader ], [ %.val.i.i.us, %.backedge.us ]
  %.not48 = icmp eq i64 %.val, 0
  br i1 %.not48, label %bb.y, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %.not51 = icmp eq i32 %5, 0
  call void @ERR_new() #17
  br i1 %.not51, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7189, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 271, ptr noundef null) #17
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7191, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #17
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 271, ptr noundef null) #17
  br label %bb.ae

bb.y:                                             ; preds = %._crit_edge
  %.not49 = icmp eq ptr %2, null
  br i1 %.not49, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.f, ptr %2, align 8, !tbaa !531
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @OPENSSL_sk_free(ptr noundef %i.f) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.g, ptr %3, align 8, !tbaa !531
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  call void @OPENSSL_sk_free(ptr noundef %i.g) #17
  br label %bb.af

bb.ae:                                            ; preds = %bb.w, %bb.x, %bb.t, %bb.u, %bb.n, %bb.o
  call void @OPENSSL_sk_free(ptr noundef %i.f) #17
  call void @OPENSSL_sk_free(ptr noundef %i.g) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.g, %bb.h, %bb.c, %bb.d, %bb.ae
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.ae ], [ 0, %bb.d ], [ 0, %bb.h ], [ 1, %bb.ad ], [ 1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare ptr @ssl_get_cipher_by_char(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SSL_CTX_set_max_early_data(ptr nofree noundef writeonly captures(none) initializes((1024, 1028)) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i32 %1, ptr %i.a, align 8, !tbaa !313
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SSL_CTX_get_max_early_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @SSL_set_max_early_data(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5440
  store i32 %1, ptr %i.d, align 8, !tbaa !322
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_get_max_early_data(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread10, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #17 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread10

.thread10:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5440
  %i.i = load i32, ptr %i.h, align 8, !tbaa !322
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread10
  %.0 = phi i32 [ %i.i, %.thread10 ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SSL_CTX_set_recv_max_early_data(ptr nofree noundef writeonly captures(none) initializes((1028, 1032)) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 %1, ptr %i.a, align 4, !tbaa !314
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SSL_CTX_get_recv_max_early_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.b = load i32, ptr %i.a, align 4, !tbaa !314
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @SSL_set_recv_max_early_data(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5444
  store i32 %1, ptr %i.d, align 4, !tbaa !350
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_get_recv_max_early_data(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread10, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #17 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread10

.thread10:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5444
  %i.i = load i32, ptr %i.h, align 4, !tbaa !350
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread10
  %.0 = phi i32 [ %i.i, %.thread10 ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ssl_get_max_send_fragment(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b
end_hunk_0
