inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@ossl_cipher_generic_block_final:bb.a

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.ac

bb.k:                                             ; preds = %bb.i
  %.not58 = icmp eq i64 %i.n, %i.b
  br i1 %.not58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 107, ptr noundef null) #5
  br label %bb.ac

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.p = icmp ult i64 %3, %i.b
  br i1 %i.p, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = tail call i32 %i.t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.u, i64 noundef %i.b) #5
  %.not59 = icmp eq i32 %i.v, 0
  br i1 %.not59, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.w, align 8, !tbaa !22
  store i64 %i.b, ptr %2, align 8, !tbaa !18
  br label %bb.ac

bb.r:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %.not52 = icmp eq i64 %i.y, %i.b
  br i1 %.not52, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = and i8 %i.e, 1
  %.not56 = icmp eq i8 %i.aa, 0
  %or.cond = and i1 %.not56, %i.z
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 465, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 107, ptr noundef null) #5
  br label %bb.ac

bb.v:                                             ; preds = %bb.r
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ag = tail call i32 %i.ae(ptr noundef nonnull %0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.af, i64 noundef %i.b) #5
  %.not53 = icmp eq i32 %i.ag, 0
  br i1 %.not53, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 470, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.ah = load i8, ptr %i.d, align 4
  %i.ai = and i8 %i.ah, 1
  %.not54 = icmp eq i8 %i.ai, 0
  br i1 %.not54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = tail call i32 @ossl_cipher_unpadblock(ptr noundef nonnull %i.af, ptr noundef nonnull %i.x, i64 noundef %i.b) #5
  %.not55 = icmp eq i32 %i.aj, 0
  br i1 %.not55, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !22  ; 2 uses
  %i.al = icmp ult i64 %3, %i.ak
  br i1 %i.al, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 480, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.af, i64 %i.ak, i1 false)
  %i.am = load i64, ptr %i.x, align 8, !tbaa !22
  store i64 %i.am, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %i.x, align 8, !tbaa !22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.a, %bb.ab, %bb.aa, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.n ], [ 1, %bb.q ], [ 0, %bb.p ], [ 1, %bb.j ], [ 0, %bb.l ], [ 0, %bb.u ], [ 1, %bb.t ], [ 0, %bb.aa ], [ 1, %bb.ab ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.c ], [ 0, %bb.y ]
  ret i32 %.0
}

declare i32 @ossl_prov_is_running() local_unnamed_addr #3

declare void @ossl_cipher_padblock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_cipher_unpadblock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_stream_update(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 496, ptr noundef nonnull @__func__.ossl_cipher_generic_stream_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %3, %5
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 506, ptr noundef nonnull @__func__.ossl_cipher_generic_stream_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i64 noundef %5) #5
  %.not41 = icmp eq i32 %i.j, 0
  br i1 %.not41, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 511, ptr noundef nonnull @__func__.ossl_cipher_generic_stream_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  store i64 %5, ptr %2, align 8, !tbaa !18
  %i.k = load i8, ptr %i.a, align 4
  %i.l = and i8 %i.k, 2
  %.not42 = icmp eq i8 %i.l, 0
  br i1 %.not42, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %.not43 = icmp eq i32 %i.n, 0
  br i1 %.not43, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !46
  %.not44 = icmp eq i32 %i.p, 0
  br i1 %.not44, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %1, i64 %5
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !34
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %.not45.not = icmp ugt i64 %5, %i.t
  br i1 %.not45.not, label %bb.m, label %bb.r, !prof !47

bb.m:                                             ; preds = %bb.l
  %.neg = xor i64 %i.t, -1
  %6 = add i64 %5, %.neg                          ; 2 uses
  store i64 %6, ptr %2, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.u = phi i64 [ %6, %bb.m ], [ %5, %bb.k ]     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48   ; 2 uses
  %.not46 = icmp ult i64 %i.u, %i.w
  br i1 %.not46, label %bb.r, label %bb.o, !prof !45

bb.o:                                             ; preds = %bb.n
  %i.x = sub nuw i64 %i.u, %i.w                   ; 4 uses
  store i64 %i.x, ptr %2, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !44   ; 4 uses
  %.not47 = icmp eq i64 %i.z, 0
  br i1 %.not47, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ac = sub i64 0, %i.z
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !21
  %i.af = sub nuw i64 %i.x, %i.z
  store i64 %i.af, ptr %2, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.j, %bb.q, %bb.o, %bb.p, %bb.n, %bb.l, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.h ], [ 1, %bb.o ], [ 1, %bb.q ], [ 1, %bb.j ], [ 1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_stream_final(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 8
  %.not3 = icmp eq i8 %i.d, 0
  br i1 %.not3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 560, ptr noundef nonnull @__func__.ossl_cipher_generic_stream_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_cipher(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 8
  %.not12 = icmp eq i8 %i.d, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 578, ptr noundef nonnull @__func__.ossl_cipher_generic_cipher) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %3, %5
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__func__.ossl_cipher_generic_cipher) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i64 noundef %5) #5
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 588, ptr noundef nonnull @__func__.ossl_cipher_generic_cipher) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 %5, ptr %2, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_get_ctx_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.9) #5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.a, i64 noundef %i.c) #5
  %.not45 = icmp eq i32 %i.d, 0
  br i1 %.not45, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.10) #5 ; 2 uses
  %.not46 = icmp eq ptr %i.e, null
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i32
  %i.j = tail call i32 @OSSL_PARAM_set_uint(ptr noundef nonnull %i.e, i32 noundef %i.i) #5
  %.not47 = icmp eq i32 %i.j, 0
  br i1 %.not47, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.11) #5 ; 3 uses
  %.not48 = icmp eq ptr %i.k, null
  br i1 %.not48, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24
  %i.n = tail call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef nonnull %i.k, ptr noundef %0, i64 noundef %i.m) #5
  %.not49 = icmp eq i32 %i.n, 0
  br i1 %.not49, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.l, align 8, !tbaa !24
  %i.p = tail call i32 @OSSL_PARAM_set_octet_string(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i64 noundef %i.o) #5
  %.not50 = icmp eq i32 %i.p, 0
  br i1 %.not50, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.q = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.12) #5 ; 3 uses
  %.not51 = icmp eq ptr %i.q, null
  br i1 %.not51, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24
  %i.u = tail call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef %i.t) #5
  %.not52 = icmp eq i32 %i.u, 0
  br i1 %.not52, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.s, align 8, !tbaa !24
  %i.w = tail call i32 @OSSL_PARAM_set_octet_string(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef %i.v) #5
  %.not53 = icmp eq i32 %i.w, 0
  br i1 %.not53, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.x = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.13) #5 ; 2 uses
  %.not54 = icmp eq ptr %i.x, null
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19
  %i.aa = tail call i32 @OSSL_PARAM_set_uint(ptr noundef nonnull %i.x, i32 noundef %i.z) #5
  %.not55 = icmp eq i32 %i.aa, 0
  br i1 %.not55, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.7) #5 ; 2 uses
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.ab, i64 noundef %i.ad) #5
  %.not57 = icmp eq i32 %i.ae, 0
  br i1 %.not57, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.14) #5 ; 2 uses
  %.not58 = icmp eq ptr %i.af, null
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !44
  %i.ak = tail call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef nonnull %i.af, ptr noundef %i.ah, i64 noundef %i.aj) #5
  %.not59 = icmp eq i32 %i.ak, 0
  br i1 %.not59, label %.sink.split, label %bb.q

.sink.split:                                      ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.g, %bb.d, %bb.b
  %.sink = phi i32 [ 632, %bb.n ], [ 627, %bb.l ], [ 622, %bb.j ], [ 615, %bb.g ], [ 608, %bb.d ], [ 603, %bb.b ], [ 638, %bb.p ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef %.sink, ptr noundef nonnull @__func__.ossl_cipher_generic_get_ctx_params) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef null) #5
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o, %bb.p
  %.0 = phi i32 [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare i32 @OSSL_PARAM_set_octet_ptr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_octet_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_uint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_initiv(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp ne i64 %2, %i.b
  %i.d = icmp ugt i64 %2, 16
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 704, ptr noundef nonnull @__func__.ossl_cipher_generic_initiv) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 109, ptr noundef null) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = or i8 %i.f, 4
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 1 %1, i64 %2, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_cipher_generic_initkey(ptr nofree noundef captures(none) initializes((64, 68), (72, 96), (168, 176)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %5, 512
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = or i8 %i.c, 64
  store i8 %i.d, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.pre = load i8, ptr %.phi.trans.insert, align 4
  %i.e = lshr i64 %5, 3
  %i.f = trunc i64 %i.e to i8
  %i.g = and i8 %i.f, 32
  %i.h = or i8 %.pre, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.j = or i8 %i.h, 1
  store i8 %i.j, ptr %i.i, align 4
  %i.k = lshr i64 %1, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = lshr i64 %3, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.m, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %6, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %4, ptr %i.p, align 8, !tbaa !23
  %i.q = lshr i64 %2, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.q, ptr %i.r, align 8, !tbaa !32
  %.not19 = icmp eq ptr %7, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.s = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef nonnull %7) #5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.s, ptr %i.t, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"ossl_param_st", !11, i64 0, !6, i64 8, !12, i64 16, !13, i64 24, !13, i64 32}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !13, i64 72}
!15 = !{!"prov_cipher_ctx_st", !7, i64 0, !7, i64 16, !7, i64 32, !12, i64 48, !7, i64 56, !6, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !6, i64 104, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 112, !11, i64 120, !6, i64 128, !13, i64 136, !6, i64 144, !13, i64 152, !6, i64 160, !16, i64 168, !12, i64 176, !17, i64 184}
!16 = !{!"p1 _ZTS17prov_cipher_hw_st", !12, i64 0}
!17 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!15, !6, i64 160}
!20 = !{!15, !6, i64 128}
!21 = !{!15, !11, i64 120}
!22 = !{!15, !13, i64 96}
!23 = !{!15, !6, i64 64}
!24 = !{!15, !13, i64 80}
!25 = !{!15, !16, i64 168}
!26 = !{!27, !12, i64 0}
!27 = !{!"prov_cipher_hw_st", !12, i64 0, !12, i64 8, !12, i64 16}
!28 = !{!29, !11, i64 16}
!29 = !{!"prov_skey_st", !17, i64 0, !6, i64 8, !11, i64 16, !13, i64 24}
!30 = !{!29, !13, i64 24}
!31 = !{!11, !11, i64 0}
!32 = !{!15, !13, i64 88}
!33 = !{!15, !6, i64 112}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !36, !37, !38}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"branch_weights", i32 8, i32 24}
!40 = distinct !{!40, !36, !37, !38}
!41 = distinct !{!41, !36, !38, !37}
!42 = !{!27, !12, i64 8}
!43 = !{!15, !17, i64 184}
!44 = !{!15, !13, i64 136}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!15, !6, i64 144}
!47 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!48 = !{!15, !13, i64 152}
end_hunk_0
