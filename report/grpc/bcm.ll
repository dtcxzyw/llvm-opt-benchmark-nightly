Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 189
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 369
begin_hunk_0_@BN_BLINDING_convert:bb.a

_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread12: ; preds = %bb.g, %bb.h
  store i32 31, ptr %i.b, align 8, !tbaa !334
  br label %bb.i

_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  store i32 0, ptr %i.b, align 8, !tbaa !334
  br label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread

_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread: ; preds = %bb.h, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !332
  %i.y = tail call i32 @BN_mod_mul_montgomery(ptr noundef %0, ptr noundef %0, ptr noundef %i.x, ptr noundef %3, ptr noundef %4)
  br label %bb.i

bb.i:                                             ; preds = %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread12, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread
  %.0 = phi i32 [ 0, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16 ], [ %i.y, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread ], [ 0, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread12 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @BN_BLINDING_invert(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333
  %i.c = tail call i32 @BN_mod_mul_montgomery(ptr noundef %0, ptr noundef %0, ptr noundef %i.b, ptr noundef %2, ptr noundef %3)
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_add_PKCS1_type_1(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %1, 11
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str.35, i32 noundef 36) #36
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.c:                                             ; preds = %bb.a
  %i.b = add i64 %1, -11
  %i.c = icmp ugt i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %_ZL14OPENSSL_memsetPvim.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 118, ptr noundef nonnull @.str.35, i32 noundef 41) #36
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.d, align 1, !tbaa !80
  %i.e = add i64 %1, -3
  %i.f = sub nuw i64 %i.e, %3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 -1, i64 %i.f, i1 false)
  %i.h = xor i64 %3, -1
  %i.i = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !80
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.e

bb.e:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.l = sub i64 0, %3
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.e, %_ZL14OPENSSL_memsetPvim.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %_ZL14OPENSSL_memsetPvim.exit ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_check_PKCS1_type_1(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %4, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 116, ptr noundef nonnull @.str.35, i32 noundef 59) #36
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !80
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !80
  %.not29 = icmp eq i8 %i.d, 1
  br i1 %.not29, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %.not35 = icmp eq i64 %4, 2
  br i1 %.not35, label %._crit_edge.thread, label %.lr.ph

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str.35, i32 noundef 65) #36
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.032 = phi i64 [ %i.g, %bb.g ], [ 2, %.preheader ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.032
  %i.f = load i8, ptr %i.e, align 1, !tbaa !80
  switch i8 %i.f, label %bb.f [
    i8 0, label %._crit_edge
    i8 -1, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.35, i32 noundef 77) #36
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.032, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %4
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !1389

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = icmp eq i64 %.032, %4
  br i1 %i.h, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.g, %.preheader, %._crit_edge
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 131, ptr noundef nonnull @.str.35, i32 noundef 83) #36
  br label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.i = icmp ult i64 %.032, 10
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.35, i32 noundef 88) #36
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.j = add nuw i64 %.032, 1                     ; 3 uses
  %i.k = sub nuw i64 %4, %i.j                     ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str.35, i32 noundef 96) #36
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.m = icmp eq i64 %4, %i.j
  br i1 %i.m, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 1 %i.n, i64 %i.k, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.l, %bb.m
  store i64 %i.k, ptr %1, align 8, !tbaa !96
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %._crit_edge.thread, %bb.i, %bb.k, %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.e, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %._crit_edge.thread ], [ 0, %bb.i ], [ 0, %bb.k ], [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_add_none(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i64 %3, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.35, i32 noundef 108) #36
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %3, %1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 116, ptr noundef nonnull @.str.35, i32 noundef 113) #36
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @PKCS1_MGF1(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.env_md_ctx_st, align 8      ; 20 uses
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !199
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.not49 = icmp eq i64 %1, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02452 = phi i32 [ 0, %.lr.ph ], [ %i.am, %bb.e ] ; 2 uses
  %.02751 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %bb.e ] ; 3 uses
  %.03050 = phi i64 [ %1, %.lr.ph ], [ %i.al, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %6 = call i32 @llvm.bswap.i32(i32 %.02452)
  store i32 %6, ptr %i.a, align 4, !tbaa !80
  %i.h = load ptr, ptr %5, align 8, !tbaa !206    ; 2 uses
  %.not.i = icmp eq ptr %i.h, %4
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 4, !tbaa !200
  %i.j = zext i32 %i.i to i64
  %i.k = call ptr @OPENSSL_malloc(i64 noundef %i.j) #36 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit.sink.split, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !205
  call void @OPENSSL_free(ptr noundef %i.m) #36
  store ptr %i.k, ptr %i.g, align 8, !tbaa !205
  store ptr %4, ptr %5, align 8, !tbaa !206
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.b
  %i.n = phi ptr [ %4, %.thread.i ], [ %i.h, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  call void %i.p(ptr noundef nonnull %5) #36, !inline_history !208
  %i.q = load ptr, ptr %5, align 8, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209
  call void %i.s(ptr noundef nonnull %5, ptr noundef %2, i64 noundef %3) #36, !inline_history !210
  %i.t = load ptr, ptr %5, align 8, !tbaa !206
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !209
  call void %i.v(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef 4) #36, !inline_history !210
  %.not35 = icmp ult i64 %.03050, %i.e
  br i1 %.not35, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.w = load ptr, ptr %5, align 8, !tbaa !206
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211
  call void %i.y(ptr noundef nonnull %5, ptr noundef nonnull %i.b) #36, !inline_history !212
  %.pre.i36 = load ptr, ptr %5, align 8, !tbaa !206
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i36, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !200
  %i.ac = zext i32 %i.ab to i64
  call void @OPENSSL_cleanse(ptr noundef %i.z, i64 noundef %i.ac) #36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02751, ptr nonnull readonly align 16 %i.b, i64 %.03050, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %5, align 8, !tbaa !206
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !211
  call void %i.af(ptr noundef nonnull %5, ptr noundef %.02751) #36, !inline_history !212
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !206
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !200
  %i.aj = zext i32 %i.ai to i64
  call void @OPENSSL_cleanse(ptr noundef %i.ag, i64 noundef %i.aj) #36
  %i.ak = getelementptr inbounds nuw i8, ptr %.02751, i64 %i.e
  %i.al = sub nuw i64 %.03050, %i.e               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.am = add i32 %.02452, 1
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1390

.loopexit.sink.split:                             ; preds = %bb.c, %.thread
  %.025.ph = phi i32 [ 1, %.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit.sink.split, %bb.a
  %.025 = phi i32 [ %.025.ph, %.loopexit.sink.split ], [ 1, %bb.a ], [ 1, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !205
  call void @OPENSSL_free(ptr noundef %i.ao) #36
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !213 ; 2 uses
  %.not.i37 = icmp eq ptr %i.aq, null
  br i1 %.not.i37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !215
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !216
  call void %i.ar(ptr noundef %i.at) #36, !inline_history !217
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret i32 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @RSA_verify_PKCS1_PSS_mgf1(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.env_md_ctx_st, align 8      ; 17 uses
  %i.a = alloca [64 x i8], align 16               ; 2 uses
  %i.b = icmp eq ptr %3, null
  %spec.select = select i1 %i.b, ptr %2, ptr %3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !199  ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 6 uses
  switch i32 %5, label %bb.c [
    i32 -1, label %bb.b
    i32 -2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %5, -2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 138, ptr noundef nonnull @.str.35, i32 noundef 194) #36
  br label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.069 = phi i32 [ %i.d, %bb.b ], [ %5, %bb.c ], [ %5, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !339  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !113  ; 7 uses
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  br i1 %i.k, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !112  ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.r, %bb.g ] ; 4 uses
  %i.m = zext nneg i32 %.05.i.i to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !96
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bn_minimal_width.exit.thread7.i

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %.05.i.i, -1
  %i.s = icmp sgt i32 %.05.i.i, 1
  br i1 %i.s, label %bb.f, label %BN_num_bits.exit, !llvm.loop !10

bn_minimal_width.exit.i:                          ; preds = %bb.e
  %i.t = icmp eq i32 %i.j, 0
  br i1 %i.t, label %RSA_size.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !112
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.f, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.u = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.l, %bb.f ] ; 2 uses
  %.0.lcssa.i9.i = phi i32 [ %i.j, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.f ]
  %i.v = sext i32 %.0.lcssa.i9.i to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !96   ; 3 uses
  %.not95 = icmp eq i64 %i.y, 0
  %i.z = lshr i64 %i.y, 32                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  %i.aa = select i1 %.not.i.i, i64 %i.y, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.aa, 16                      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not52.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ac, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not53.i.i, i64 %i.ac, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ae, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.af, 0              ; 2 uses
  %i.ag = select i1 %.not54.i.i, i32 0, i32 4
  %i.ah = select i1 %.not54.i.i, i64 %i.ae, i64 %i.af ; 2 uses
  %i.ai = lshr i64 %i.ah, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.ai, 0              ; 2 uses
  %i.aj = select i1 %.not55.i.i, i32 0, i32 2
  %i.ak = select i1 %.not55.i.i, i64 %i.ah, i64 %i.ai
  %i.al = icmp samesign ugt i64 %i.ak, 1
  %.neg.i.i = zext i1 %i.al to i32
  %i.am = sext i1 %.not95 to i32
  %i.an = add nsw i32 %i.ag, %i.am
  %i.ao = add nsw i32 %i.an, %i.aj
  %i.ap = add nsw i32 %i.ao, %.neg.i.i
  %i.aq = and i32 %i.ap, 7
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.g, %bn_minimal_width.exit.thread7.i
  %i.ar = phi ptr [ %i.u, %bn_minimal_width.exit.thread7.i ], [ %i.l, %bb.g ] ; 2 uses
  %.0.i = phi i32 [ %i.aq, %bn_minimal_width.exit.thread7.i ], [ 7, %bb.g ] ; 3 uses
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %BN_num_bits.exit, %bb.h
  %.05.i.i.i.i = phi i32 [ %i.ax, %bb.h ], [ %i.j, %BN_num_bits.exit ] ; 4 uses
  %i.as = zext nneg i32 %.05.i.i.i.i to i64
end_hunk_0
