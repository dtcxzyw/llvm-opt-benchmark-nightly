Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/p_ossltest?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ossl_test_aes128cbchmacsha1_update:bb.a
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.h, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i8> <i8 16, i8 17, i8 18, i8 19>, ptr %i.i, align 1, !tbaa !8
  %i.j = add i64 %i.b, 20                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %5
  br i1 %i.k, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %fill_known_data.exit
  %reass.sub = sub i64 %5, %i.b
  %i.l = trunc i64 %reass.sub to i8
  %i.m = add i8 %i.l, -21
  %scevgep = getelementptr i8, ptr %1, i64 %i.j
  %i.n = add i64 %5, -20
  %i.o = sub i64 %i.n, %i.b
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %i.m, i64 %i.o, i1 false), !tbaa !8
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %4, i64 %5, i1 false)
  %.not63 = icmp eq i64 %i.b, -1
  br i1 %.not63, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29
  %i.r = icmp ugt i32 %i.q, 769
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = icmp ult i64 %5, 37
  br i1 %i.s, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add i64 %5, -16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.u = icmp ult i64 %5, 21
  br i1 %i.u, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.056 = phi i64 [ %i.t, %bb.h ], [ %5, %bb.i ]  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 %.056
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8     ; 3 uses
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = trunc i64 %.056 to i32
  %i.ab = add i32 %i.aa, -21
  %i.ac = icmp ult i32 %i.ab, %i.z
  br i1 %i.ac, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = zext i8 %i.y to i64
  %i.ae = xor i64 %i.ad, -1
  %i.af = add i64 %.056, %i.ae                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %.056
  br i1 %i.ag, label %.lr.ph71, label %._crit_edge

bb.l:                                             ; preds = %.lr.ph71
  %i.ah = add i64 %.270, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %.056
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph71, !llvm.loop !36

.lr.ph71:                                         ; preds = %bb.k, %bb.l
  %.270 = phi i64 [ %i.ah, %bb.l ], [ %i.af, %bb.k ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %.270
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %.not64 = icmp eq i8 %i.aj, %i.y
  br i1 %.not64, label %bb.l, label %.critedge

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %i.ak = add nuw nsw i32 %i.z, 21
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %5, -16
  %i.an = sub i64 %i.am, %i.al
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %fill_known_data.exit, %.thread, %._crit_edge, %bb.e, %bb.d
  %.1 = phi i64 [ %5, %.thread ], [ %5, %bb.d ], [ %i.an, %._crit_edge ], [ %5, %bb.e ], [ %5, %fill_known_data.exit ], [ %5, %.lr.ph.preheader ]
  store i64 %.1, ptr %2, align 8, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph71, %bb.g, %bb.i, %bb.j, %bb.c, %.loopexit
  %.158 = phi i32 [ 1, %.loopexit ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %.lr.ph71 ]
  ret i32 %.158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ossl_test_aes128cbchmacsha1_final(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ossl_test_aes128cbchmacsha1_cipher(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree readnone captures(none) %4, i64 %5) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @ossl_test_aes128cbchmacsha1_get_params(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @ossl_cipher_generic_get_params(ptr noundef %0, i32 noundef 2, i64 noundef 9, i64 noundef 128, i64 noundef 128, i64 noundef 128) #10
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ossl_test_aes128cbchmacsha1_get_ctx_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.25) #10
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.26) #10
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.27) #10
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.28) #10
  %.not28 = icmp eq ptr %i.d, null
  br i1 %.not28, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.29) #10 ; 2 uses
  %.not29 = icmp eq ptr %i.e, null
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31
  %i.h = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.e, i64 noundef %i.g) #10
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.30) #10 ; 2 uses
  %.not31 = icmp eq ptr %i.i, null
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.i, i64 noundef 16) #10
  %.not32 = icmp eq i32 %i.j, 0
  br i1 %.not32, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.31) #10 ; 2 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.k, i64 noundef 16) #10
  %.not34 = icmp eq i32 %i.l, 0
  br i1 %.not34, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.32) #10
  %.not35 = icmp eq ptr %i.m, null
  br i1 %.not35, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.n = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.33) #10
  %.not36 = icmp eq ptr %i.n, null
  br i1 %.not36, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ 1338, %bb.k ], [ 1333, %bb.j ], [ 1328, %bb.h ], [ 1323, %bb.f ], [ 1316, %bb.d ], [ 1310, %bb.c ], [ 1304, %bb.b ], [ 1298, %bb.a ], [ 1343, %bb.l ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @__func__.ossl_test_aes128cbchmacsha1_get_ctx_params) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef null) #10
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.0 = phi i32 [ 1, %bb.l ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ossl_test_aes128cbchmacsha1_set_ctx_params(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.34) #10 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @OSSL_PARAM_get_octet_string_ptr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %.not20 = icmp eq i32 %i.d, 1
  br i1 %.not20, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 11 ; 2 uses
  %2 = load i8, ptr %i.f, align 1, !tbaa !8
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %6 = load i8, ptr %5, align 1, !tbaa !8
  %i.g = zext i8 %6 to i32
  %7 = or disjoint i32 %4, %i.g                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %8 = load i8, ptr %i.h, align 1, !tbaa !8
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %11 = load i8, ptr %i.i, align 1, !tbaa !8
  %12 = zext i8 %11 to i32
  %13 = or disjoint i32 %10, %12                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %13, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28
  %.not21 = icmp eq i32 %i.l, 0
  br i1 %.not21, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %7 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !27
  %i.o = icmp samesign ugt i32 %13, 769
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = icmp samesign ult i32 %7, 16
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %7, -16                      ; 3 uses
  %i.r = lshr i32 %i.q, 8
  %i.s = trunc nuw i32 %i.r to i8
  store i8 %i.s, ptr %i.f, align 1, !tbaa !8
  %i.t = trunc i32 %i.q to i8
  store i8 %i.t, ptr %5, align 1, !tbaa !8
  %i.u = add nuw nsw i32 %7, 20
  %i.v = and i32 %i.u, 131056
  %i.w = sub nsw i32 %i.v, %i.q
  %i.x = zext i32 %i.w to i64
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %i.y, align 8, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi i64 [ %i.x, %bb.f ], [ 20, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %i.z, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a, %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.a ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @ossl_test_aes128cbchmacsha1_gettable_params(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @ossl_test_aes128cbchmacsha1_gettable_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @ossl_cipher_generic_gettable_ctx_params(ptr noundef %0, ptr noundef %1) #10
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @ossl_test_aes128cbchmacsha1_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias ptr @drbg_ctr_new_wrapper(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 1478) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @drbg_ctr_free(ptr noundef %0) #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1490) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @drbg_ctr_instantiate_wrapper(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3, i64 %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @drbg_ctr_uninstantiate_wrapper(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal noundef i32 @drbg_ctr_generate_wrapper(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 %3, i32 %4, ptr nofree readnone captures(none) %5, i64 %6) #8 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %2, 32
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.a = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 6 uses
  %i.b = trunc i64 %n.vec to i8
  %i.c = or disjoint i8 %i.b, 1                   ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %step.add, ptr %i.e, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.a, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i8 [ %i.c, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %2, -4                       ; 5 uses
  %i.g = trunc i64 %n.vec11 to i8
  %i.h = or disjoint i8 %i.g, 1
  %i.i = getelementptr i8, ptr %1, i64 %n.vec11
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind13 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next16, %vec.epilog.vector.body ] ; 2 uses
  %next.gep14 = getelementptr i8, ptr %1, i64 %index12
  store <4 x i8> %vec.ind13, ptr %next.gep14, align 1, !tbaa !8
  %index.next15 = add nuw i64 %index12, 4         ; 2 uses
  %vec.ind.next16 = add <4 x i8> %vec.ind13, splat (i8 4)
  %i.j = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.j, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %2, %n.vec11
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.047.ph = phi i8 [ 1, %iter.check ], [ %i.c, %vec.epilog.iter.check ], [ %i.h, %vec.epilog.middle.block ]
  %.056.ph = phi ptr [ %1, %iter.check ], [ %i.d, %vec.epilog.iter.check ], [ %i.i, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.08 = phi i64 [ %i.m, %.lr.ph ], [ %.08.ph, %.lr.ph.preheader ]
  %.047 = phi i8 [ %i.k, %.lr.ph ], [ %.047.ph, %.lr.ph.preheader ] ; 2 uses
  %.056 = phi ptr [ %i.l, %.lr.ph ], [ %.056.ph, %.lr.ph.preheader ] ; 2 uses
  %i.k = add i8 %.047, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.056, i64 1
  store i8 %.047, ptr %.056, align 1, !tbaa !8
  %i.m = add nuw i64 %.08, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @drbg_ctr_reseed_wrapper(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree readnone captures(none) %4, i64 %5) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ossl_drbg_enable_locking(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ossl_drbg_lock(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ossl_drbg_unlock(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @drbg_ctr_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @drbg_ctr_set_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @drbg_ctr_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @drbg_ctr_get_ctx_params(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.37) #10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.a, i64 noundef 65536) #10
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1664, ptr noundef nonnull @__func__.drbg_ctr_get_ctx_params) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef null) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @drbg_ctr_verify_zeroization(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @ossl_drbg_get_seed(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 %5, ptr nofree readnone captures(none) %6, i64 %7) #1 {
bb.a:
  %i.a = sext i32 %2 to i64
  %spec.select = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.a)
  %.1 = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %4)
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ossl_drbg_clear_seed(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #1 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 64, !8, i64 88, i64 4, !11}
!13 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 4, !11, i64 28, i64 64, !8, i64 92, i64 4, !11}
!14 = !{i64 0, i64 32, !8, i64 32, i64 4, !11, i64 36, i64 4, !11, i64 40, i64 64, !8, i64 104, i64 4, !11, i64 108, i64 4, !11}
!15 = !{!"long long", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{i64 0, i64 64, !8, i64 64, i64 8, !16, i64 72, i64 8, !16, i64 80, i64 128, !8, i64 208, i64 4, !11, i64 212, i64 4, !11}
!18 = !{!"any pointer", !4, i64 0}
!19 = !{!"p1 _ZTS15ossl_lib_ctx_st", !18, i64 0}
!20 = !{!"p1 _ZTS17evp_cipher_ctx_st", !18, i64 0}
!21 = !{!"", !19, i64 0, !20, i64 8}
!22 = !{!21, !20, i64 8}
!23 = !{!21, !19, i64 0}
!24 = !{!"p1 omnipotent char", !18, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"", !19, i64 0, !5, i64 8, !9, i64 16, !5, i64 24, !9, i64 32}
!27 = !{!26, !9, i64 16}
!28 = !{!26, !5, i64 8}
!29 = !{!26, !5, i64 24}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!26, !9, i64 32}
!32 = !{!18, !18, i64 0}
!33 = !{!"p1 _ZTS16ossl_dispatch_st", !18, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!26, !19, i64 0}
!36 = distinct !{!36, !30}
!37 = distinct !{!37, !30, !40, !41}
!38 = distinct !{!38, !30, !40, !41}
!39 = distinct !{!39, !30, !41, !40}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"branch_weights", i32 4, i32 28}
end_hunk_0
