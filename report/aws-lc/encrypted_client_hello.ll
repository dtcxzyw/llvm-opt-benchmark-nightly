Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/encrypted_client_hello?download=true
inline.NumInlined: 524
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SSL_marshal_ech_config:bb.a
  %i.i = call i32 @CBB_add_u8(ptr noundef nonnull %7, i8 noundef zeroext %2) #10
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = call ptr @EVP_HPKE_KEY_kem(ptr noundef %3) #10
  %i.k = call zeroext i16 @EVP_HPKE_KEM_id(ptr noundef %i.j) #10
  %i.l = call i32 @CBB_add_u16(ptr noundef nonnull %7, i16 noundef zeroext %i.k) #10
  %.not13 = icmp eq i32 %i.l, 0
  br i1 %.not13, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = call i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %.not14 = icmp eq i32 %i.m, 0
  br i1 %.not14, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = call i32 @CBB_reserve(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 32) #10
  %.not15 = icmp eq i32 %i.n, 0
  br i1 %.not15, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.p = call i32 @EVP_HPKE_KEY_public_key(ptr noundef %3, ptr noundef %i.o, ptr noundef nonnull %i.b, i64 noundef 32) #10
  %.not16 = icmp eq i32 %i.p, 0
  br i1 %.not16, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = load i64, ptr %i.b, align 8, !tbaa !80
  %i.r = call i32 @CBB_did_write(ptr noundef nonnull %8, i64 noundef %i.q) #10
  %.not17 = icmp eq i32 %i.r, 0
  br i1 %.not17, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = call i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %.not18 = icmp eq i32 %i.s, 0
  br i1 %.not18, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = call i32 @CBB_add_u16(ptr noundef nonnull %8, i16 noundef zeroext 1) #10
  %.not19 = icmp eq i32 %i.t, 0
  br i1 %.not19, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = call i32 @CBB_add_u16(ptr noundef nonnull %8, i16 noundef zeroext 1) #10
  %.not20 = icmp eq i32 %i.u, 0
  br i1 %.not20, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = call i32 @CBB_add_u16(ptr noundef nonnull %8, i16 noundef zeroext 1) #10
  %.not21 = icmp eq i32 %i.v, 0
  br i1 %.not21, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = call i32 @CBB_add_u16(ptr noundef nonnull %8, i16 noundef zeroext 3) #10
  %.not22 = icmp eq i32 %i.w, 0
  br i1 %.not22, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.x = trunc nuw i64 %5 to i8
  %i.y = call i32 @CBB_add_u8(ptr noundef nonnull %7, i8 noundef zeroext %i.x) #10
  %.not23 = icmp eq i32 %i.y, 0
  br i1 %.not23, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = call i32 @CBB_add_u8_length_prefixed(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aa = call i32 @CBB_add_bytes(ptr noundef nonnull %8, ptr noundef nonnull %4, i64 noundef %i.c) #10
  %.not25 = icmp eq i32 %i.aa, 0
  br i1 %.not25, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ab = call i32 @CBB_add_u16(ptr noundef nonnull %7, i16 noundef zeroext 0) #10
  %.not26 = icmp eq i32 %i.ab, 0
  br i1 %.not26, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ac = call i32 @CBB_finish(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1) #10
  %.not27 = icmp eq i32 %i.ac, 0
  br i1 %.not27, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 996) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.0 = phi i32 [ 0, %bb.x ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.d ], [ %.0, %bb.y ], [ 0, %bb.b ]
  ret i32 %.1
}

declare i32 @CBB_reserve(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBB_did_write(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define ptr @SSL_ECH_KEYS_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 32) #10 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN4bssl3NewI15ssl_ech_keys_stJEEEPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !230
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br label %_ZN4bssl3NewI15ssl_ech_keys_stJEEEPT_DpOT0_.exit

_ZN4bssl3NewI15ssl_ech_keys_stJEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @SSL_ECH_KEYS_up_ref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %0) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @SSL_ECH_KEYS_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4bssl10RefCountedI15ssl_ech_keys_stE14DecRefInternalEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4bssl10RefCountedI15ssl_ech_keys_stE14DecRefInternalEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull %0) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZN15ssl_ech_keys_stD2Ev.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i
  %i.e = phi i64 [ %i.k, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i ], [ %i.d, %bb.b ]
  %.05.i.i.i.i.i = phi i64 [ %i.l, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196  ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i, label %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i.i.i

_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  tail call void @EVP_HPKE_KEY_cleanup(ptr noundef nonnull align 8 dereferenceable(72) %i.i) #10
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !150
  tail call void @OPENSSL_free(ptr noundef %i.j) #10
  tail call void @OPENSSL_free(ptr noundef nonnull %i.h) #10
  %.pre.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.l = add nuw i64 %.05.i.i.i.i.i, 1            ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %_ZN15ssl_ech_keys_stD2Ev.exit, !llvm.loop !0

_ZN15ssl_ech_keys_stD2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i, %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !194
  tail call void @OPENSSL_free(ptr noundef %i.n) #10
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #10
  br label %bb.c

bb.c:                                             ; preds = %_ZN15ssl_ech_keys_stD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @SSL_ECH_KEYS_add(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 152) #10, !noalias !236 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i8 0, i64 152, i1 false), !noalias !236
  tail call void @EVP_HPKE_KEY_zero(ptr noundef nonnull align 8 dereferenceable(72) %i.c) #10, !noalias !236
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %i.d, align 8, !tbaa !156, !noalias !236
  %i.e = icmp ne i32 %1, 0
  %i.f = tail call noundef zeroext i1 @_ZN4bssl15ECHServerConfig4InitENS_4SpanIKhEEPK15evp_hpke_key_stb(ptr noundef nonnull align 8 dereferenceable(145) %i.a, ptr %2, i64 %3, ptr noundef %4, i1 noundef zeroext %i.e)
  br i1 %i.f, label %bb.c, label %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i6

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = tail call noundef zeroext i1 @_ZN4bssl13GrowableArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE9MaybeGrowEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 2 uses
  br i1 %i.h, label %bb.d, label %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.g, align 8, !tbaa !198  ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !196  ; 4 uses
  store ptr %i.a, ptr %i.l, align 8, !tbaa !196
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN4bssl13GrowableArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4PushES5_.exit.thread, label %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i.i

_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  tail call void @EVP_HPKE_KEY_cleanup(ptr noundef nonnull align 8 dereferenceable(72) %i.n) #10
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !150
  tail call void @OPENSSL_free(ptr noundef %i.o) #10
  tail call void @OPENSSL_free(ptr noundef nonnull %i.m) #10
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !198
  br label %_ZN4bssl13GrowableArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4PushES5_.exit.thread

_ZN4bssl13GrowableArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4PushES5_.exit.thread: ; preds = %bb.d, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i.i
  %i.p = phi i64 [ %i.j, %bb.d ], [ %.pre.i, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i.i ]
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.g, align 8, !tbaa !198
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit

_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i: ; preds = %bb.c
  tail call void @EVP_HPKE_KEY_cleanup(ptr noundef nonnull align 8 dereferenceable(72) %i.c) #10
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !150
  tail call void @OPENSSL_free(ptr noundef %i.r) #10
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #10
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit: ; preds = %_ZN4bssl13GrowableArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4PushES5_.exit.thread, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i
  %. = zext i1 %i.h to i32
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit7

_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i6: ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 1021) #10
  tail call void @EVP_HPKE_KEY_cleanup(ptr noundef nonnull align 8 dereferenceable(72) %i.c) #10
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !150
  tail call void @OPENSSL_free(ptr noundef %i.s) #10
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #10
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit7

_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit7: ; preds = %bb.a, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i6
  %.018 = phi i32 [ 0, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i6 ], [ 0, %bb.a ], [ %., %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit ]
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @SSL_ECH_KEYS_has_duplicate_config_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !194  ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not15.not = icmp eq i64 %i.e, 0
  br i1 %.not15.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01216 = phi ptr [ %i.n, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.01216, align 8, !tbaa !196
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.i = load i8, ptr %i.h, align 1, !tbaa !164
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !75, !range !157, !noundef !158
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.k, align 1, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %.01216, i64 8 ; 2 uses
  %.not.not = icmp eq ptr %i.n, %i.f
  br i1 %.not.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.not.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define i32 @SSL_ECH_KEYS_marshal_retry_configs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.bssl::internal::StackAllocated", align 8 ; 7 uses
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @CBB_zero(ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = call i32 @CBB_init(ptr noundef nonnull %3, i64 noundef 128) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !194  ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !198  ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not1923 = icmp eq i64 %i.f, 0
  br i1 %.not1923, label %.critedge22, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.critedge
  %.024 = phi ptr [ %i.p, %.critedge ], [ %i.e, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %.024, align 8, !tbaa !196 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load i8, ptr %i.i, align 8, !tbaa !156, !range !157, !noundef !158
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !150
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !151
  %i.o = call i32 @CBB_add_bytes(ptr noundef nonnull %4, ptr noundef %i.l, i64 noundef %i.n) #10
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.d, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %i.p, %i.g
  br i1 %.not19, label %.critedge22, label %.lr.ph

.critedge22:                                      ; preds = %.critedge, %bb.c
  %i.q = call i32 @CBB_finish(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b, %.critedge22
  %.3 = phi i32 [ %i.q, %.critedge22 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @SSL_CTX_set1_ech_keys(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !198  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not.not20 = icmp eq i64 %i.d, 0
  br i1 %.not.not20, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.01321, i64 8 ; 2 uses
  %.not.not = icmp eq ptr %i.f, %i.e
  br i1 %.not.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01321 = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.01321, align 8, !tbaa !196
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load i8, ptr %i.h, align 8, !tbaa !156, !range !157, !noundef !158
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 313, ptr noundef nonnull @.str, i32 noundef 1068) #10
  br label %_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEED2Ev.exit

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4bssl5UpRefEP15ssl_ech_keys_st.exit, label %.split4.i

.split4.i:                                        ; preds = %bb.c
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %1) #10, !noalias !243
  br label %_ZN4bssl5UpRefEP15ssl_ech_keys_st.exit

_ZN4bssl5UpRefEP15ssl_ech_keys_st.exit:           ; preds = %bb.c, %.split4.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @CRYPTO_MUTEX_lock_write(ptr noundef nonnull %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !240  ; 2 uses
  store ptr %1, ptr %i.l, align 8, !tbaa !240
  tail call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.k) #10
  %.not.i16 = icmp eq ptr %i.m, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEED2Ev.exit, label %_ZN4bssl8internal7DeleterclI15ssl_ech_keys_stEEvPT_.exit.i

_ZN4bssl8internal7DeleterclI15ssl_ech_keys_stEEvPT_.exit.i: ; preds = %_ZN4bssl5UpRefEP15ssl_ech_keys_st.exit
  tail call void @_ZN4bssl10RefCountedI15ssl_ech_keys_stE14DecRefInternalEv(ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  br label %_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZN4bssl8internal7DeleterclI15ssl_ech_keys_stEEvPT_.exit.i, %_ZN4bssl5UpRefEP15ssl_ech_keys_st.exit, %.critedge
  %.015 = phi i32 [ 0, %.critedge ], [ 1, %_ZN4bssl5UpRefEP15ssl_ech_keys_st.exit ], [ 1, %_ZN4bssl8internal7DeleterclI15ssl_ech_keys_stEEvPT_.exit.i ]
  ret i32 %.015
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @SSL_ech_accepted(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SSL_in_early_data(ptr noundef %0) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.c = load i8, ptr %i.b, align 4
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1552
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !163
  %i.k = icmp ne ptr %i.j, null
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 296
  %i.o = load i32, ptr %i.n, align 8, !tbaa !190
  %i.p = icmp eq i32 %i.o, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi i1 [ %i.p, %bb.d ], [ %i.k, %bb.c ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

declare i32 @SSL_in_early_data(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl21ssl_client_hello_initEPK6ssl_stP22ssl_early_callback_ctxNS_4SpanIKhEE(ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

declare i32 @OPENSSL_isxdigit(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare i32 @CBS_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @EVP_hpke_aes_128_gcm() local_unnamed_addr #2

declare ptr @EVP_hpke_aes_256_gcm() local_unnamed_addr #2

declare ptr @EVP_hpke_chacha20_poly1305() local_unnamed_addr #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

declare void @X25519_keypair(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBB_add_space(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @RAND_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @EVP_AEAD_max_overhead(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_HPKE_AEAD_aead(ptr noundef) local_unnamed_addr #2

declare void @CBB_zero(ptr noundef) local_unnamed_addr #2

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_refcount_inc(ptr noundef) local_unnamed_addr #2

declare i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef) local_unnamed_addr #2

declare void @EVP_HPKE_KEY_zero(ptr noundef) local_unnamed_addr #2

declare void @EVP_HPKE_KEY_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl13GrowableArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE9MaybeGrowEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.bssl::Array.118", align 8   ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !193  ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit.i, label %bb.b

_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !194
  tail call void @OPENSSL_free(ptr noundef %i.e) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = tail call ptr @OPENSSL_malloc(i64 noundef 128) #10 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !194
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4InitEm.exit, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit.i
  store i64 16, ptr %i.b, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i8 0, i64 128, i1 false), !tbaa !200
  br label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4InitEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !198
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4InitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.c, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str.1, i32 noundef 326) #10
  br label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4InitEm.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.k = shl nuw i64 %i.c, 1
  %i.l = call noundef zeroext i1 @_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.k) ; 2 uses
  br i1 %i.l, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.m = load i64, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre26 = load ptr, ptr %1, align 8, !tbaa !194
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEEaSEOS4_.exit
  %.not.i.i.i6 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i6, label %.thread, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %._crit_edge, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i12
  %i.n = phi i64 [ %i.t, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i12 ], [ %i.aj, %._crit_edge ]
  %.05.i.i.i8 = phi i64 [ %i.u, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i12 ], [ 0, %._crit_edge ] ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i.i.i8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !196  ; 4 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i9, label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i12, label %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i10

_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i10: ; preds = %.lr.ph.i.i.i7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  call void @EVP_HPKE_KEY_cleanup(ptr noundef nonnull align 8 dereferenceable(72) %i.r) #10
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !150
  call void @OPENSSL_free(ptr noundef %i.s) #10
  call void @OPENSSL_free(ptr noundef nonnull %i.q) #10
  %.pre.i.i.i11 = load i64, ptr %i.b, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i12

_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i12: ; preds = %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i10, %.lr.ph.i.i.i7
  %i.t = phi i64 [ %i.n, %.lr.ph.i.i.i7 ], [ %.pre.i.i.i11, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i10 ] ; 2 uses
  %i.u = add nuw i64 %.05.i.i.i8, 1               ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %.lr.ph.i.i.i7, label %.thread, !llvm.loop !0

.thread:                                          ; preds = %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i12, %._crit_edge, %.preheader
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !194
  call void @OPENSSL_free(ptr noundef %i.w) #10
  %i.x = load ptr, ptr %1, align 8, !tbaa !194
  store ptr %i.x, ptr %i.a, align 8, !tbaa !245
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !193
  store i64 %i.z, ptr %i.b, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEED2Ev.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEEaSEOS4_.exit
  %i.aa = phi i64 [ %i.aj, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEEaSEOS4_.exit ], [ %i.m, %.lr.ph.preheader ]
  %i.ab = phi ptr [ %i.ak, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEEaSEOS4_.exit ], [ %.pre26, %.lr.ph.preheader ] ; 2 uses
  %.024 = phi i64 [ %i.al, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEEaSEOS4_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.024 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.024 ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !196
  store ptr null, ptr %i.ad, align 8, !tbaa !196
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !196 ; 4 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !196
  %.not.i.i.i.i14 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i14, label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEEaSEOS4_.exit, label %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i15

_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i15: ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  call void @EVP_HPKE_KEY_cleanup(ptr noundef nonnull align 8 dereferenceable(72) %i.ah) #10
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !150
  call void @OPENSSL_free(ptr noundef %i.ai) #10
  call void @OPENSSL_free(ptr noundef nonnull %i.ag) #10
  %.pre = load ptr, ptr %1, align 8, !tbaa !194
  %.pre27 = load i64, ptr %i.b, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEEaSEOS4_.exit

_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEEaSEOS4_.exit: ; preds = %.lr.ph, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i15
  %i.aj = phi i64 [ %i.aa, %.lr.ph ], [ %.pre27, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i15 ] ; 4 uses
  %i.ak = phi ptr [ %i.ab, %.lr.ph ], [ %.pre, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i15 ]
  %i.al = add nuw i64 %.024, 1                    ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !244

bb.f:                                             ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre29 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !193 ; 2 uses
  %.pre32.pre = load ptr, ptr %1, align 8, !tbaa !194 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i.i.i16 = icmp eq i64 %.pre29, 0
  br i1 %.not.i.i.i16, label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEED2Ev.exit, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.f, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22
  %i.ao = phi ptr [ %i.au, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22 ], [ %.pre32.pre, %bb.f ] ; 2 uses
  %i.ap = phi i64 [ %i.av, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22 ], [ %.pre29, %bb.f ]
  %.05.i.i.i18 = phi i64 [ %i.aw, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22 ], [ 0, %bb.f ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.05.i.i.i18
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !196 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i19, label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22, label %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i20

_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  call void @EVP_HPKE_KEY_cleanup(ptr noundef nonnull align 8 dereferenceable(72) %i.as) #10
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !150
  call void @OPENSSL_free(ptr noundef %i.at) #10
  call void @OPENSSL_free(ptr noundef nonnull %i.ar) #10
  %.pre.i.i.i21 = load i64, ptr %i.an, align 8, !tbaa !193
  %.pre30 = load ptr, ptr %1, align 8, !tbaa !194
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22

_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22: ; preds = %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i20, %.lr.ph.i.i.i17
  %i.au = phi ptr [ %i.ao, %.lr.ph.i.i.i17 ], [ %.pre30, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i20 ] ; 2 uses
  %i.av = phi i64 [ %i.ap, %.lr.ph.i.i.i17 ], [ %.pre.i.i.i21, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i.i20 ] ; 2 uses
  %i.aw = add nuw i64 %.05.i.i.i18, 1             ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  br i1 %i.ax, label %.lr.ph.i.i.i17, label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEED2Ev.exit, !llvm.loop !0

_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22, %.thread, %bb.f
  %i.ay = phi ptr [ null, %.thread ], [ %.pre32.pre, %bb.f ], [ %i.au, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i.i22 ]
  call void @OPENSSL_free(ptr noundef %i.ay) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4InitEm.exit

_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4InitEm.exit: ; preds = %.loopexit.loopexit.i, %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit.i, %bb.b, %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEED2Ev.exit, %bb.d
  %.1 = phi i1 [ true, %bb.b ], [ %i.l, %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEED2Ev.exit ], [ false, %bb.d ], [ false, %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit.i ], [ true, %.loopexit.loopexit.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !193  ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i
  %i.c = phi i64 [ %i.i, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i ], [ %i.b, %bb.a ]
  %.05.i.i = phi i64 [ %i.j, %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !194
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.05.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i, label %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i

_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  tail call void @EVP_HPKE_KEY_cleanup(ptr noundef nonnull align 8 dereferenceable(72) %i.g) #10
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !150
  tail call void @OPENSSL_free(ptr noundef %i.h) #10
  tail call void @OPENSSL_free(ptr noundef nonnull %i.f) #10
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !193
  br label %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i

_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i: ; preds = %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i, %.lr.ph.i.i
  %i.i = phi i64 [ %i.c, %.lr.ph.i.i ], [ %.pre.i.i, %_ZN4bssl8internal7DeleterclINS_15ECHServerConfigEEEvPT_.exit.i.i.i ] ; 2 uses
  %i.j = add nuw i64 %.05.i.i, 1                  ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit, !llvm.loop !0

_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit: ; preds = %_ZNSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEED2Ev.exit.i.i, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !194
  tail call void @OPENSSL_free(ptr noundef %i.l) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.m = icmp eq i64 %1, 0
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit
  %i.n = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str.1, i32 noundef 211) #10
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %1, 3                        ; 2 uses
  %i.p = tail call ptr @OPENSSL_malloc(i64 noundef %i.o) #10 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !194
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.d
  store i64 %1, ptr %i.a, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !200
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit, %bb.c
  %.08 = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ true, %_ZN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEE5ResetEv.exit ], [ true, %.loopexit.loopexit ]
  ret i1 %.08
}

declare void @CRYPTO_MUTEX_lock_write(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_MUTEX_unlock_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTS6cbs_st", !10, i64 0, !11, i64 8}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!5, !5, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTS6ssl_st", !9, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"_ZTS22ssl_early_callback_ctx", !17, i64 0, !10, i64 8, !11, i64 16, !18, i64 24, !10, i64 32, !11, i64 40, !10, i64 48, !11, i64 56, !10, i64 64, !11, i64 72, !10, i64 80, !11, i64 88, !10, i64 96, !11, i64 104}
!20 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !9, i64 0}
!21 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !9, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !21, i64 0}
!23 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !22, i64 0}
!24 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !23, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !24, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !25, i64 0}
!27 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !26, i64 0}
!28 = !{!"p1 _ZTS6bio_st", !9, i64 0}
!29 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !28, i64 0}
!30 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !29, i64 0}
!31 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !30, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !32, i64 0}
!34 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !33, i64 0}
!35 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !9, i64 0}
!36 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !9, i64 0}
!37 = !{!"p1 _ZTS14ssl_session_st", !9, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !42, i64 0}
!44 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !9, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm0EP19stack_st_SSL_CIPHERLb0EE", !44, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !45, i64 0}
!47 = !{!"_ZTSSt5tupleIJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataI19stack_st_SSL_CIPHERN4bssl8internal7DeleterELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !49, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !10, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !51, i64 0}
!53 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !54, i64 0}
!56 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !55, i64 0}
!57 = !{!"p1 _ZTS10ssl_ctx_st", !9, i64 0}
!58 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !57, i64 0}
!59 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !58, i64 0}
!60 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !61, i64 0}
!63 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !62, i64 0}
!64 = !{!"p1 _ZTS13stack_st_void", !9, i64 0}
!65 = !{!"_ZTS17crypto_ex_data_st", !64, i64 0}
!66 = !{!"p1 _ZTS18ssl_quic_method_st", !9, i64 0}
!67 = !{!"_ZTS22ssl_renegotiate_mode_t", !5, i64 0}
!68 = !{!"bool", !5, i64 0}
!69 = !{!"_ZTS6ssl_st", !20, i64 0, !27, i64 8, !18, i64 16, !18, i64 18, !11, i64 24, !34, i64 32, !34, i64 40, !9, i64 48, !35, i64 56, !36, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !6, i64 104, !43, i64 112, !50, i64 120, !56, i64 128, !18, i64 136, !9, i64 144, !63, i64 152, !63, i64 160, !65, i64 168, !11, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !56, i64 200, !66, i64 208, !67, i64 216, !68, i64 220, !68, i64 220, !68, i64 220, !68, i64 220, !68, i64 220}
!70 = !{!69, !20, i64 0}
!71 = !{!"_ZTSN4bssl19SSL_PROTOCOL_METHODE", !68, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144}
!72 = !{!71, !9, i64 88}
!73 = !{!18, !18, i64 0}
!74 = !{!71, !9, i64 96}
!75 = !{!68, !68, i64 0}
!76 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!77 = !{!"_ZTSN4bssl4SpanIKhEE", !10, i64 0, !11, i64 8}
!78 = !{!77, !10, i64 0}
!79 = !{!77, !11, i64 8}
!80 = !{!11, !11, i64 0}
!81 = !{!"_ZTSN4bssl13ssl_hs_wait_tE", !5, i64 0}
!82 = !{!"p1 _ZTS17err_save_state_st", !9, i64 0}
!83 = !{!"_ZTSSt10_Head_baseILm0EP17err_save_state_stLb0EE", !82, i64 0}
!84 = !{!"_ZTSSt11_Tuple_implILm0EJP17err_save_state_stN4bssl8internal7DeleterEEE", !83, i64 0}
!85 = !{!"_ZTSSt5tupleIJP17err_save_state_stN4bssl8internal7DeleterEEE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_implI17err_save_state_stN4bssl8internal7DeleterEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_dataI17err_save_state_stN4bssl8internal7DeleterELb1ELb1EE", !86, i64 0}
!88 = !{!"_ZTSSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEE", !87, i64 0}
!89 = !{!"p1 _ZTS10buf_mem_st", !9, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EP10buf_mem_stLb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJP10buf_mem_stN4bssl8internal7DeleterEEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJP10buf_mem_stN4bssl8internal7DeleterEEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implI10buf_mem_stN4bssl8internal7DeleterEE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataI10buf_mem_stN4bssl8internal7DeleterELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE", !94, i64 0}
!96 = !{!"p1 _ZTS9env_md_st", !9, i64 0}
!97 = !{!"p1 _ZTS15evp_pkey_ctx_st", !9, i64 0}
!98 = !{!"p1 _ZTS15evp_md_pctx_ops", !9, i64 0}
!99 = !{!"_ZTS13env_md_ctx_st", !96, i64 0, !9, i64 8, !9, i64 16, !97, i64 24, !98, i64 32, !11, i64 40}
!100 = !{!"_ZTSN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEE", !99, i64 0}
!101 = !{!"_ZTSN4bssl13SSLTranscriptE", !95, i64 0, !100, i64 8}
!102 = !{!"_ZTSN4bssl5ArrayIhEE", !10, i64 0, !11, i64 8}
!103 = !{!"p1 short", !9, i64 0}
!104 = !{!"_ZTSN4bssl5ArrayItEE", !103, i64 0, !11, i64 8}
!105 = !{!"p1 _ZTS15evp_hpke_kem_st", !9, i64 0}
!106 = !{!"p1 _ZTS16evp_hpke_aead_st", !9, i64 0}
!107 = !{!"p1 _ZTS15evp_hpke_kdf_st", !9, i64 0}
!108 = !{!"p1 _ZTS11evp_aead_st", !9, i64 0}
!109 = !{!"_ZTS15evp_aead_ctx_st", !108, i64 0, !5, i64 8, !5, i64 576, !5, i64 577}
!110 = !{!"_ZTS15evp_hpke_ctx_st", !105, i64 0, !106, i64 8, !107, i64 16, !109, i64 24, !5, i64 608, !5, i64 632, !11, i64 696, !6, i64 704}
!111 = !{!"_ZTSN4bssl8internal14StackAllocatedI15evp_hpke_ctx_stvXadL_Z17EVP_HPKE_CTX_zeroEEXadL_Z20EVP_HPKE_CTX_cleanupEEEE", !110, i64 0}
!112 = !{!"p1 _ZTS22stack_st_CRYPTO_BUFFER", !9, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm0EP22stack_st_CRYPTO_BUFFERLb0EE", !112, i64 0}
!114 = !{!"_ZTSSt11_Tuple_implILm0EJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !113, i64 0}
!115 = !{!"_ZTSSt5tupleIJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_implI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !115, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterELb1ELb1EE", !116, i64 0}
!118 = !{!"_ZTSSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !117, i64 0}
!119 = !{!"p1 _ZTS11evp_pkey_st", !9, i64 0}
!120 = !{!"_ZTSSt10_Head_baseILm0EP11evp_pkey_stLb0EE", !119, i64 0}
!121 = !{!"_ZTSSt11_Tuple_implILm0EJP11evp_pkey_stN4bssl8internal7DeleterEEE", !120, i64 0}
!122 = !{!"_ZTSSt5tupleIJP11evp_pkey_stN4bssl8internal7DeleterEEE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_implI11evp_pkey_stN4bssl8internal7DeleterEE", !122, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_dataI11evp_pkey_stN4bssl8internal7DeleterELb1ELb1EE", !123, i64 0}
!125 = !{!"_ZTSSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE", !124, i64 0}
!126 = !{!"p1 _ZTS15ssl_ech_keys_st", !9, i64 0}
!127 = !{!"_ZTSSt10_Head_baseILm0EP15ssl_ech_keys_stLb0EE", !126, i64 0}
!128 = !{!"_ZTSSt11_Tuple_implILm0EJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !127, i64 0}
!129 = !{!"_ZTSSt5tupleIJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !128, i64 0}
!130 = !{!"_ZTSSt15__uniq_ptr_implI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !129, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_dataI15ssl_ech_keys_stN4bssl8internal7DeleterELb1ELb1EE", !130, i64 0}
!132 = !{!"_ZTSSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !131, i64 0}
!133 = !{!"p1 _ZTSN4bssl9ECHConfigE", !9, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl9ECHConfigELb0EE", !133, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !134, i64 0}
!136 = !{!"_ZTSSt5tupleIJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !135, i64 0}
!137 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl9ECHConfigENS0_8internal7DeleterEE", !136, i64 0}
!138 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl9ECHConfigENS0_8internal7DeleterELb1ELb1EE", !137, i64 0}
!139 = !{!"_ZTSSt10unique_ptrIN4bssl9ECHConfigENS0_8internal7DeleterEE", !138, i64 0}
!140 = !{!"p1 _ZTS13ssl_cipher_st", !9, i64 0}
!141 = !{!"p1 _ZTSN4bssl19SSL_HANDSHAKE_HINTSE", !9, i64 0}
!142 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl19SSL_HANDSHAKE_HINTSELb0EE", !141, i64 0}
!143 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !142, i64 0}
!144 = !{!"_ZTSSt5tupleIJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !143, i64 0}
!145 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !144, i64 0}
!146 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterELb1ELb1EE", !145, i64 0}
!147 = !{!"_ZTSSt10unique_ptrIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !146, i64 0}
!148 = !{!"_ZTSN4bssl13SSL_HANDSHAKEE", !17, i64 0, !21, i64 8, !81, i64 16, !6, i64 20, !6, i64 24, !18, i64 28, !18, i64 30, !18, i64 32, !11, i64 40, !5, i64 48, !5, i64 96, !5, i64 144, !5, i64 192, !5, i64 240, !5, i64 288, !5, i64 336, !5, i64 384, !6, i64 388, !5, i64 392, !88, i64 400, !5, i64 408, !101, i64 424, !101, i64 480, !5, i64 536, !102, i64 568, !102, i64 584, !102, i64 600, !102, i64 616, !102, i64 632, !102, i64 648, !102, i64 664, !104, i64 680, !104, i64 696, !104, i64 712, !102, i64 728, !18, i64 744, !111, i64 752, !102, i64 1464, !56, i64 1480, !118, i64 1488, !102, i64 1496, !125, i64 1512, !125, i64 1520, !43, i64 1528, !43, i64 1536, !132, i64 1544, !139, i64 1552, !140, i64 1560, !102, i64 1568, !147, i64 1584, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1595, !18, i64 1596, !18, i64 1598, !18, i64 1600, !5, i64 1602, !5, i64 1603, !5, i64 1635, !5, i64 1636}
!149 = !{!148, !17, i64 0}
!150 = !{!102, !10, i64 0}
!151 = !{!102, !11, i64 8}
!152 = !{!"_ZTSN4bssl9ECHConfigE", !102, i64 0, !77, i64 16, !77, i64 32, !77, i64 48, !18, i64 64, !5, i64 66, !5, i64 67}
!153 = !{!"_ZTS15evp_hpke_key_st", !105, i64 0, !5, i64 8, !5, i64 40}
!154 = !{!"_ZTSN4bssl8internal21StackAllocatedMovableI15evp_hpke_key_stvXadL_Z17EVP_HPKE_KEY_zeroEEXadL_Z20EVP_HPKE_KEY_cleanupEEXadL_Z17EVP_HPKE_KEY_moveEEEE", !153, i64 0}
!155 = !{!"_ZTSN4bssl15ECHServerConfigE", !152, i64 0, !154, i64 72, !68, i64 144}
!156 = !{!155, !68, i64 144}
!157 = !{i8 0, i8 2}
!158 = !{}
!159 = !{!10, !10, i64 0}
!160 = !{!148, !18, i64 32}
!161 = !{!148, !21, i64 8}
!162 = !{!21, !21, i64 0}
!163 = !{!133, !133, i64 0}
!164 = !{!152, !5, i64 67}
!165 = !{!69, !35, i64 56}
!166 = !{!"p1 _ZTSN4bssl13SSL_HANDSHAKEE", !9, i64 0}
!167 = !{!166, !166, i64 0}
!168 = !{!"_ZTSN4bssl9SSLBufferE", !10, i64 0, !68, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !5, i64 52, !6, i64 60}
!169 = !{!"_ZTSN4bssl4SpanIhEE", !10, i64 0, !11, i64 8}
!170 = !{!"_ZTSN4bssl14ssl_shutdown_tE", !5, i64 0}
!171 = !{!"_ZTS22ssl_encryption_level_t", !5, i64 0}
!172 = !{!"_ZTSN4bssl16ssl_ech_status_tE", !5, i64 0}
!173 = !{!"_ZTS23ssl_early_data_reason_t", !5, i64 0}
!174 = !{!"p1 _ZTSN4bssl14SSLAEADContextE", !9, i64 0}
!175 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl14SSLAEADContextELb0EE", !174, i64 0}
!176 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !175, i64 0}
!177 = !{!"_ZTSSt5tupleIJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !176, i64 0}
!178 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !177, i64 0}
!179 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl14SSLAEADContextENS0_8internal7DeleterELb1ELb1EE", !178, i64 0}
!180 = !{!"_ZTSSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !179, i64 0}
!181 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl13SSL_HANDSHAKEELb0EE", !166, i64 0}
!182 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEEE", !181, i64 0}
!183 = !{!"_ZTSSt5tupleIJPN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEEE", !182, i64 0}
!184 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEE", !183, i64 0}
!185 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterELb1ELb1EE", !184, i64 0}
!186 = !{!"_ZTSSt10unique_ptrIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEE", !185, i64 0}
!187 = !{!"p1 _ZTS18stack_st_X509_NAME", !9, i64 0}
!188 = !{!"p1 _ZTS26srtp_protection_profile_st", !9, i64 0}
!189 = !{!"_ZTSN4bssl10SSL3_STATEE", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 48, !168, i64 80, !168, i64 144, !169, i64 208, !11, i64 224, !77, i64 232, !5, i64 248, !170, i64 252, !170, i64 256, !88, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !171, i64 284, !171, i64 288, !18, i64 292, !5, i64 294, !5, i64 295, !172, i64 296, !68, i64 300, !68, i64 300, !68, i64 300, !68, i64 300, !68, i64 300, !68, i64 300, !68, i64 300, !68, i64 300, !68, i64 301, !68, i64 301, !68, i64 301, !68, i64 301, !68, i64 301, !68, i64 301, !68, i64 301, !95, i64 304, !95, i64 312, !95, i64 320, !6, i64 328, !6, i64 332, !173, i64 336, !180, i64 344, !180, i64 352, !186, i64 360, !187, i64 368, !102, i64 376, !5, i64 392, !5, i64 440, !5, i64 488, !5, i64 536, !5, i64 537, !5, i64 538, !5, i64 539, !5, i64 603, !5, i64 604, !5, i64 605, !5, i64 669, !43, i64 672, !102, i64 680, !102, i64 696, !56, i64 712, !5, i64 720, !102, i64 784, !188, i64 800}
!190 = !{!189, !172, i64 296}
!191 = !{!"p1 _ZTSSt10unique_ptrIN4bssl15ECHServerConfigENS0_8internal7DeleterEE", !9, i64 0}
!192 = !{!"_ZTSN4bssl5ArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEEE", !191, i64 0, !11, i64 8}
!193 = !{!192, !11, i64 8}
!194 = !{!192, !191, i64 0}
!195 = !{!"p1 _ZTSN4bssl15ECHServerConfigE", !9, i64 0}
!196 = !{!195, !195, i64 0}
!197 = !{!"_ZTSN4bssl13GrowableArrayISt10unique_ptrINS_15ECHServerConfigENS_8internal7DeleterEEEE", !11, i64 0, !192, i64 8}
!198 = !{!197, !11, i64 0}
!199 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl15ECHServerConfigELb0EE", !195, i64 0}
!200 = !{!199, !195, i64 0}
!201 = distinct !{!201, !16}
!202 = distinct !{!202, !16}
!203 = distinct !{!203, !16}
!204 = !{!19, !11, i64 104}
!205 = !{!19, !10, i64 48}
!206 = !{!19, !11, i64 56}
!207 = !{!19, !18, i64 24}
!208 = !{!19, !10, i64 32}
!209 = !{!19, !11, i64 40}
!210 = !{!19, !10, i64 64}
!211 = !{!19, !11, i64 72}
!212 = !{!19, !10, i64 80}
!213 = !{!19, !11, i64 88}
!214 = !{!19, !10, i64 96}
!215 = distinct !{!215, !16}
!216 = !{!19, !10, i64 8}
!217 = !{!19, !11, i64 16}
!218 = distinct !{!218, !16}
!219 = distinct !{!219, !16}
!220 = distinct !{!220, !16}
!221 = distinct !{!221, !16}
!222 = !{!155, !18, i64 64}
!223 = distinct !{!223, !16}
!224 = !{i64 0, i64 8, !159, i64 8, i64 8, !80}
!225 = distinct !{!225, !16}
!226 = distinct !{!226, !16}
!227 = distinct !{!227, !16}
!228 = !{!152, !5, i64 66}
!229 = !{!"_ZTSN4bssl10RefCountedI15ssl_ech_keys_stEE", !6, i64 0}
!230 = !{!229, !6, i64 0}
!234 = distinct !{!234, i1 false, !"_ZN4bssl10MakeUniqueINS_15ECHServerConfigEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!235 = distinct !{!235, !234, !"_ZN4bssl10MakeUniqueINS_15ECHServerConfigEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!236 = !{!235}
!240 = !{!126, !126, i64 0}
!241 = distinct !{!241, i1 false, !"_ZN4bssl5UpRefEP15ssl_ech_keys_st"}
!242 = distinct !{!242, !241, !"_ZN4bssl5UpRefEP15ssl_ech_keys_st: argument 0"}
!243 = !{!242}
!244 = distinct !{!244, !16}
!245 = !{!191, !191, i64 0}
end_hunk_0
