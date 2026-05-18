inline.NumInlined: 43
inline.NumDeleted: 17
begin_hunk_0_@SRP_create_verifier_ex:bb.a
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %.thread91, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i32 [ 20, %bb.i ], [ %i.ad, %bb.j ]
  %i.af = call ptr @BN_bin2bn(ptr noundef nonnull %i.d, i32 noundef %.sink, ptr noundef null) #6 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !38
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread91, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @SRP_create_verifier_BN_ex(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %.161, ptr noundef %.159, ptr noundef %6, ptr noundef %7)
  %.not81 = icmp eq i32 %i.ah, 0
  br i1 %.not81, label %.thread91, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !38  ; 3 uses
  %i.aj = call i32 @BN_bn2bin(ptr noundef %i.ai, ptr noundef nonnull %i.c) #6
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread91, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = call i32 @BN_num_bits(ptr noundef %i.ai) #6
  %i.am = add nsw i32 %i.al, 7
  %i.an = sdiv i32 %i.am, 8
  %i.ao = shl nsw i32 %i.an, 1                    ; 6 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ap, ptr noundef nonnull @.str, i32 noundef 670) #6 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.thread91, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = call i32 @BN_num_bits(ptr noundef %i.ai) #6
  %i.at = add nsw i32 %i.as, 7
  %i.au = sdiv i32 %i.at, 8
  %i.av = call fastcc i32 @t_tob64(ptr noundef %i.aq, ptr noundef %i.c, i32 noundef %i.au)
  %.not82 = icmp eq i32 %i.av, 0
  br i1 %.not82, label %.thread91, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %2, align 8, !tbaa !34
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ay = call noalias ptr @CRYPTO_malloc(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 678) #6 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread91, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = call fastcc i32 @t_tob64(ptr noundef %i.ay, ptr noundef %i.d, i32 noundef 20)
  %.not83 = icmp eq i32 %i.ba, 0
  br i1 %.not83, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @CRYPTO_free(ptr noundef nonnull %i.ay, ptr noundef nonnull @.str, i32 noundef 682) #6
  br label %.thread91

bb.t:                                             ; preds = %bb.r
  store ptr %i.ay, ptr %2, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  store ptr %i.aq, ptr %3, align 8, !tbaa !34
  br label %.thread91

.thread91:                                        ; preds = %bb.q, %bb.s, %bb.g, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.u
  %.063 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.n ], [ %.153, %bb.u ], [ null, %bb.g ], [ null, %bb.o ], [ null, %bb.l ], [ null, %bb.j ], [ null, %bb.s ], [ null, %bb.q ]
  %.062 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.u ], [ null, %bb.g ], [ %i.aq, %bb.o ], [ null, %bb.l ], [ null, %bb.j ], [ %i.aq, %bb.s ], [ %i.aq, %bb.q ]
  %.157 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %.056, %bb.i ], [ %.056, %bb.k ], [ %.056, %bb.m ], [ %.056, %bb.n ], [ %.056, %bb.u ], [ null, %bb.g ], [ %.056, %bb.o ], [ %.056, %bb.l ], [ %.056, %bb.j ], [ %.056, %bb.s ], [ %.056, %bb.q ]
  %.155 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ %.054, %bb.i ], [ %.054, %bb.k ], [ %.054, %bb.m ], [ %.054, %bb.n ], [ %.054, %bb.u ], [ null, %bb.g ], [ %.054, %bb.o ], [ %.054, %bb.l ], [ %.054, %bb.j ], [ %.054, %bb.s ], [ %.054, %bb.q ]
  %.051 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.m ], [ %i.ao, %bb.n ], [ %i.ao, %bb.u ], [ 0, %bb.g ], [ %i.ao, %bb.o ], [ 0, %bb.l ], [ 0, %bb.j ], [ %i.ao, %bb.s ], [ %i.ao, %bb.q ]
  call void @BN_free(ptr noundef %.157) #6
  call void @BN_free(ptr noundef %.155) #6
  %i.bb = sext i32 %.051 to i64
  call void @CRYPTO_clear_free(ptr noundef %.062, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 695) #6
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !38
  call void @BN_clear_free(ptr noundef %i.bc) #6
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !38
  call void @BN_clear_free(ptr noundef %i.bd) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.063
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @t_fromb64(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !5
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.034 = phi ptr [ %1, %bb.a ], [ %i.d, %.critedge ] ; 4 uses
  %i.c = load i8, ptr %.034, align 1, !tbaa !35
  switch i8 %i.c, label %bb.c [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 10, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.034, i64 1
  br label %bb.b, !llvm.loop !49

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.034) #7 ; 4 uses
  %i.f = sub i64 0, %i.e
  %i.g = and i64 %i.f, 3                          ; 7 uses
  %i.h = icmp ugt i64 %i.e, 2147483647
  %i.i = add nuw nsw i64 %i.g, %i.e
  %i.j = icmp ugt i64 %i.i, 3335
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @EVP_ENCODE_CTX_new() #6   ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i64 %i.g, 3
  br i1 %i.m, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @EVP_DecodeInit(ptr noundef nonnull %i.k) #6
  tail call void @evp_encode_ctx_set_flags(ptr noundef nonnull %i.k, i32 noundef 2) #6
  %.not = icmp eq i64 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = trunc nuw nsw i64 %i.g to i32
  %i.o = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %i.k, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3, i32 noundef %i.n) #6
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = trunc nuw nsw i64 %i.e to i32
  %i.r = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %i.k, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %.034, i32 noundef %i.q) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr %i.b, align 4, !tbaa !5
  %i.u = load i32, ptr %i.a, align 4, !tbaa !5
  %i.v = add nsw i32 %i.u, %i.t                   ; 2 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = call i32 @EVP_DecodeFinal(ptr noundef nonnull %i.k, ptr noundef nonnull %i.x, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.z = load i32, ptr %i.b, align 4, !tbaa !5
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ab = add nsw i32 %i.aa, %i.z                 ; 4 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !5
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = trunc nuw nsw i64 %i.g to i32           ; 2 uses
  %.not40 = icmp sgt i32 %i.ab, %i.ac
  br i1 %.not40, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = sub nuw nsw i64 %i.ae, %i.g
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.ag = sub nuw nsw i32 %i.ab, %i.ac
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.h, %bb.g, %bb.e, %bb.k
  %.sink = phi i32 [ %i.ag, %bb.k ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.j ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !5
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.i
  call void @EVP_ENCODE_CTX_free(ptr noundef nonnull %i.k) #6
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !5
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.c, %bb.l
  %.0 = phi i32 [ %i.ah, %bb.l ], [ -1, %bb.c ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SRP_create_verifier_BN_ex(ptr noundef %0, ptr noundef %1, ptr noundef captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2500 x i8], align 16             ; 4 uses
  %i.b = tail call ptr @BN_CTX_new_ex(ptr noundef %6) #6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %8 = insertelement <7 x ptr> poison, ptr %0, i64 0
  %9 = insertelement <7 x ptr> %8, ptr %1, i64 1
  %10 = insertelement <7 x ptr> %9, ptr %3, i64 2
  %11 = insertelement <7 x ptr> %10, ptr %4, i64 3
  %12 = insertelement <7 x ptr> %11, ptr %5, i64 4
  %13 = insertelement <7 x ptr> %12, ptr %2, i64 5
  %14 = insertelement <7 x ptr> %13, ptr %i.b, i64 6
  %.fr = freeze <7 x ptr> %14
  %15 = icmp eq <7 x ptr> %.fr, splat (ptr null)  ; 2 uses
  %16 = bitcast <7 x i1> %15 to i7
  %.not72 = icmp eq i7 %16, 0
  br i1 %.not72, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @RAND_bytes_ex(ptr noundef %6, ptr noundef nonnull %i.a, i64 noundef 20, i32 noundef 0) #6
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @BN_bin2bn(ptr noundef nonnull %i.a, i32 noundef 20, ptr noundef null) #6 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.046 = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.b ] ; 6 uses
  %i.i = call ptr @SRP_Calc_x_ex(ptr noundef nonnull %.046, ptr noundef %0, ptr noundef %1, ptr noundef %6, ptr noundef %7) #6 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = call ptr @BN_new() #6                    ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call i32 @BN_mod_exp(ptr noundef nonnull %i.k, ptr noundef nonnull %5, ptr noundef nonnull %i.i, ptr noundef nonnull %4, ptr noundef nonnull %i.b) #6
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @BN_clear_free(ptr noundef nonnull %i.k) #6
  br label %.thread

bb.i:                                             ; preds = %bb.g
  store ptr %.046, ptr %2, align 8, !tbaa !38
  store ptr %i.k, ptr %3, align 8, !tbaa !38
  br label %.thread

bb.j:                                             ; preds = %bb.a
  %17 = extractelement <7 x i1> %15, i64 5
  br i1 %17, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %bb.c, %bb.d, %bb.e, %bb.f, %bb.j
  %.065 = phi i32 [ 0, %bb.j ], [ 0, %bb.h ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.164 = phi ptr [ null, %bb.j ], [ %.046, %bb.h ], [ %.046, %bb.i ], [ %.046, %bb.f ], [ %.046, %bb.e ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.04762 = phi ptr [ null, %bb.j ], [ %i.i, %bb.h ], [ %i.i, %bb.i ], [ %i.i, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !38
  %.not58 = icmp eq ptr %i.n, %.164
  br i1 %.not58, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  call void @BN_clear_free(ptr noundef %.164) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread, %bb.j
  %.066 = phi i32 [ %.065, %bb.k ], [ %.065, %.thread ], [ 0, %bb.j ]
  %.04763 = phi ptr [ %.04762, %bb.k ], [ %.04762, %.thread ], [ null, %bb.j ]
  call void @BN_clear_free(ptr noundef %.04763) #6
  call void @BN_CTX_free(ptr noundef %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.066
}

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @t_tob64(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 -268435455, 268435456) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = tail call ptr @EVP_ENCODE_CTX_new() #6   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i16 0, ptr %i.c, align 2
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @EVP_EncodeInit(ptr noundef nonnull %i.d) #6
  tail call void @evp_encode_ctx_set_flags(ptr noundef nonnull %i.d, i32 noundef 3) #6
  %i.f = srem i32 %2, 3                           ; 2 uses
  %i.g = sub nsw i32 3, %i.f                      ; 2 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @EVP_EncodeUpdate(ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %i.g) #6
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %.sink.split, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !5
  %i.j = sext i32 %.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %i.j, %._crit_edge ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = call i32 @EVP_EncodeUpdate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %1, i32 noundef %2) #6
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.b, align 4, !tbaa !5
  %i.o = load i32, ptr %i.a, align 4, !tbaa !5
  %i.p = add nsw i32 %i.o, %i.n                   ; 2 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !5
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  call void @EVP_EncodeFinal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.r, ptr noundef nonnull %i.b) #6
  %i.s = load i32, ptr %i.b, align 4, !tbaa !5
  %i.t = load i32, ptr %i.a, align 4, !tbaa !5
  %i.u = add nsw i32 %i.t, %i.s                   ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !5
  br i1 %.not, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.w = sext i32 %i.u to i64
  %i.x = sub nsw i64 %i.w, %i.h                   ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.v, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  store i8 0, ptr %i.y, align 1, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.0.ph = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ]
  call void @EVP_ENCODE_CTX_free(ptr noundef nonnull %i.d) #6
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @SRP_create_verifier(ptr noundef %0, ptr noundef %1, ptr noundef captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SRP_create_verifier_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, ptr noundef null)
  ret ptr %i.a
}

declare ptr @BN_CTX_new_ex(ptr noundef) local_unnamed_addr #1

declare ptr @SRP_Calc_x_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BN_new() local_unnamed_addr #1

declare i32 @BN_mod_exp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SRP_create_verifier_BN(ptr noundef %0, ptr noundef %1, ptr noundef captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SRP_create_verifier_BN_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @BN_dup(ptr noundef) local_unnamed_addr #1

declare ptr @EVP_ENCODE_CTX_new() local_unnamed_addr #1

declare void @EVP_DecodeInit(ptr noundef) local_unnamed_addr #1

declare void @evp_encode_ctx_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_DecodeUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_DecodeFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @EVP_ENCODE_CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @EVP_EncodeInit(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_EncodeUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_EncodeFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !13, i64 8}
!10 = !{!"SRP_user_pwd_st", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !11, i64 40}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS9bignum_st", !12, i64 0}
!14 = !{!10, !13, i64 16}
!15 = !{!10, !11, i64 0}
!16 = !{!10, !11, i64 40}
!17 = !{!10, !13, i64 32}
!18 = !{!10, !13, i64 24}
!19 = !{!20, !21, i64 0}
!20 = !{!"SRP_VBASE_st", !21, i64 0, !22, i64 8, !11, i64 16, !13, i64 24, !13, i64 32}
!21 = !{!"p1 _ZTS21stack_st_SRP_user_pwd", !12, i64 0}
!22 = !{!"p1 _ZTS21stack_st_SRP_gN_cache", !12, i64 0}
!23 = !{!20, !22, i64 8}
end_hunk_0
