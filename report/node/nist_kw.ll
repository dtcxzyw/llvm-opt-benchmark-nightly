inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@mbedtls_nist_kw_wrap:bb.a
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %.thread
  %.3100 = phi i32 [ %.3.ph, %.thread ], [ 0, %.loopexit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 16) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.l
  %.0 = phi i32 [ -24832, %bb.e ], [ -24832, %bb.b ], [ %.3100, %bb.l ], [ -24832, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

declare i32 @mbedtls_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mbedtls_nist_kw_unwrap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef captures(none) initializes((0, 8)) %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %5, align 8, !tbaa !8
  %i.f = add i64 %3, -8                           ; 2 uses
  %i.g = icmp ult i64 %6, %i.f
  br i1 %i.g, label %.thread81, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %.thread85 [
    i32 0, label %bb.c
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %3, -24
  %or.cond = icmp ult i64 %i.h, 144115188075855849
  %i.i = and i64 %3, 7
  %.not70 = icmp eq i64 %i.i, 0
  %or.cond74 = and i1 %or.cond, %.not70
  br i1 %or.cond74, label %bb.d, label %.thread81

bb.d:                                             ; preds = %bb.c
  %i.j = lshr exact i64 %3, 3
  %i.k = call fastcc i32 @unwrap(ptr noundef %0, ptr noundef %2, i64 noundef %i.j, ptr noundef %i.b, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %.not71 = icmp eq i32 %i.k, 0
  br i1 %.not71, label %bb.e, label %.thread85

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV1, ptr noundef nonnull %i.b, i64 noundef 8) #9 ; 2 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !4
  %.not72 = icmp eq i32 %i.l, 0
  br i1 %.not72, label %.thread90, label %.thread85

bb.f:                                             ; preds = %bb.b
  %i.m = add i64 %3, -16
  %or.cond3 = icmp ult i64 %i.m, 4294967281
  %i.n = and i64 %3, 7
  %.not = icmp eq i64 %i.n, 0
  %or.cond75 = and i1 %or.cond3, %.not
  br i1 %or.cond75, label %bb.g, label %.thread81

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i64 %3, 16
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.p = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not66 = icmp eq i32 %i.p, 0
  br i1 %.not66, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.q = load i64, ptr %i.d, align 16
  store i64 %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %4, align 1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.d, i64 noundef 16) #9
  store i64 8, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread85

bb.j:                                             ; preds = %bb.g
  %i.t = lshr exact i64 %3, 3
  %i.u = call fastcc i32 @unwrap(ptr noundef %0, ptr noundef %2, i64 noundef %i.t, ptr noundef %i.b, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %.not65 = icmp eq i32 %i.u, 0
  br i1 %.not65, label %bb.k, label %.thread85

bb.k:                                             ; preds = %.thread, %bb.j
  %i.v = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV2, ptr noundef nonnull %i.b, i64 noundef 4) #9 ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !4
  %.not67 = icmp eq i32 %i.v, 0
  %spec.select76.neg = select i1 %.not67, i64 0, i64 25344
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.0.copyload.i = load i32, ptr %i.w, align 4
  %i.x = call i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = sub nsw i64 %i.f, %i.y                   ; 2 uses
  %i.aa = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 7, i64 %i.z) #9, !srcloc !13
  %i.ab = extractvalue { i64, i64, i64 } %i.aa, 1
  %i.ac = call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab, i64 25344, i64 range(i64 -2147483647, 2147483648) %spec.select76.neg) #9, !srcloc !14
  %i.ad = extractvalue { i64, i64, i64 } %i.ac, 2
  %i.ae = trunc i64 %i.ad to i32
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = and i64 %i.z, 7                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i64 0, ptr %i.e, align 8
  %i.ah = load i64, ptr %5, align 8, !tbaa !8
  %i.ai = getelementptr i8, ptr %4, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = sub nuw nsw i64 8, %i.ag
  %i.al = call i32 @mbedtls_ct_memcmp_partial(ptr noundef %i.aj, ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef %i.ak, i64 noundef 0) #9 ; 2 uses
  store i32 %i.al, ptr %i.c, align 4, !tbaa !4
  %.not68 = icmp eq i32 %i.al, 0
  %.257 = select i1 %.not68, i32 %i.af, i32 -25344 ; 2 uses
  %.not69 = icmp eq i32 %.257, 0
  br i1 %.not69, label %.thread93, label %bb.l

.thread93:                                        ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.ag, i1 false)
  store i64 %i.y, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.thread90

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.thread85

.thread85:                                        ; preds = %bb.j, %bb.i, %bb.e, %bb.b, %bb.d, %bb.l
  %.488 = phi i32 [ %.257, %bb.l ], [ %i.k, %bb.d ], [ -25344, %bb.e ], [ -24704, %bb.b ], [ %i.u, %bb.j ], [ %i.p, %bb.i ]
  %i.an = load i64, ptr %5, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.an, i1 false)
  store i64 0, ptr %5, align 8, !tbaa !8
  br label %.thread90

.thread90:                                        ; preds = %bb.e, %.thread93, %.thread85
  %.489 = phi i32 [ %.488, %.thread85 ], [ 0, %.thread93 ], [ 0, %bb.e ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 4) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 8) #9
  br label %.thread81

.thread81:                                        ; preds = %bb.f, %bb.c, %bb.a, %.thread90
  %.1 = phi i32 [ -24832, %bb.c ], [ -24832, %bb.a ], [ %.489, %.thread90 ], [ -24832, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unwrap(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef range(i64 2, 18014398509481985) %2, ptr noundef nonnull captures(none) %3, ptr noundef captures(address) %4, ptr noundef writeonly captures(none) initializes((0, 8)) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %5, align 8, !tbaa !8
  %i.d = icmp samesign ult i64 %2, 3
  br i1 %i.d, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  %i.f = load i64, ptr %1, align 1
  store i64 %i.f, ptr %3, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %4, ptr nonnull align 1 %i.g, i64 %i.h, i1 false)
  %i.i = shl nuw nsw i64 %2, 3
  %i.j = getelementptr i8, ptr %4, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -16      ; 2 uses
  %i.l = mul nuw nsw i64 %i.e, 6
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.046 = phi ptr [ %i.k, %.lr.ph ], [ %.1, %bb.c ] ; 4 uses
  %.03245 = phi i64 [ %i.l, %.lr.ph ], [ %i.ad, %bb.c ] ; 9 uses
  %6 = lshr i64 %.03245, 8
  %i.o = lshr i64 %.03245, 16
  %7 = lshr i64 %.03245, 24
  %8 = lshr i64 %.03245, 32
  %9 = lshr i64 %.03245, 40
  %i.p = lshr i64 %.03245, 48
  %i.q = lshr i64 %.03245, 56
  %i.r = load <8 x i8>, ptr %3, align 1, !tbaa !10
  %10 = trunc i64 %.03245 to i8
  %11 = trunc i64 %6 to i8
  %12 = trunc i64 %i.o to i8
  %13 = trunc i64 %7 to i8
  %14 = trunc i64 %8 to i8
  %15 = trunc i64 %9 to i8
  %i.s = trunc i64 %i.p to i8
  %i.t = trunc nuw i64 %i.q to i8
  %16 = insertelement <8 x i8> poison, i8 %i.t, i64 0
  %17 = insertelement <8 x i8> %16, i8 %i.s, i64 1
  %i.u = insertelement <8 x i8> %17, i8 %15, i64 2
  %i.v = insertelement <8 x i8> %i.u, i8 %14, i64 3
  %18 = insertelement <8 x i8> %i.v, i8 %13, i64 4
  %19 = insertelement <8 x i8> %18, i8 %12, i64 5
  %20 = insertelement <8 x i8> %19, i8 %11, i64 6
  %21 = insertelement <8 x i8> %20, i8 %10, i64 7
  %i.w = xor <8 x i8> %i.r, %21                   ; 2 uses
  store <8 x i8> %i.w, ptr %3, align 1, !tbaa !10
  store <8 x i8> %i.w, ptr %i.c, align 16
  %i.x = load i64, ptr %.046, align 1
  store i64 %i.x, ptr %i.m, align 8
  %i.y = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.b, align 16
  store i64 %i.z, ptr %3, align 1
  %i.aa = load i64, ptr %i.n, align 8
  store i64 %i.aa, ptr %.046, align 1
  %i.ab = icmp eq ptr %.046, %4
  %i.ac = getelementptr inbounds i8, ptr %.046, i64 -8
  %.1 = select i1 %i.ab, ptr %i.k, ptr %i.ac
  %i.ad = add nsw i64 %.03245, -1                 ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !15

.thread:                                          ; preds = %bb.c
  store i64 %i.h, ptr %5, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 16) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.033 = phi i32 [ %i.y, %bb.e ], [ -24832, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.033
}

declare i32 @mbedtls_ct_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @mbedtls_ct_memcmp_partial(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mbedtls_nist_kw_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.mbedtls_nist_kw_context, align 8 ; 21 uses
  %i.c = alloca [48 x i8], align 16               ; 13 uses
  %i.d = alloca i64, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %.not71 = icmp eq i32 %0, 0                     ; 13 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.w
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.w ] ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr @key_len, i64 %indvars.iv
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  %.pre135 = shl i32 %.pre, 3                     ; 5 uses
  br i1 %.not71, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre135) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw [32 x i8], ptr @kw_key, i64 %indvars.iv ; 2 uses
  %i.g = call ptr @mbedtls_cipher_info_from_values(i32 noundef 2, i32 noundef %.pre135, i32 noundef 1) #9 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %mbedtls_nist_kw_setkey.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load i32, ptr %i.i, align 8
  %i.j = and i32 %.val.i, 31
  %.not.i = icmp eq i32 %i.j, 16
  br i1 %.not.i, label %bb.e, label %mbedtls_nist_kw_setkey.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  %i.k = call i32 @mbedtls_cipher_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.g) #9 ; 2 uses
  %.not18.i = icmp eq i32 %i.k, 0
  br i1 %.not18.i, label %mbedtls_nist_kw_setkey.exit, label %mbedtls_nist_kw_setkey.exit.thread

mbedtls_nist_kw_setkey.exit:                      ; preds = %bb.e
  %i.l = call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i32 noundef %.pre135, i32 noundef 1) #9 ; 2 uses
  %.not72 = icmp eq i32 %i.l, 0
  br i1 %.not72, label %bb.g, label %mbedtls_nist_kw_setkey.exit.thread

mbedtls_nist_kw_setkey.exit.thread:               ; preds = %bb.d, %._crit_edge, %bb.e, %mbedtls_nist_kw_setkey.exit
  %.0.i102 = phi i32 [ %i.l, %mbedtls_nist_kw_setkey.exit ], [ -24832, %bb.d ], [ -24832, %._crit_edge ], [ %i.k, %bb.e ] ; 2 uses
  br i1 %.not71, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %mbedtls_nist_kw_setkey.exit.thread
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %mbedtls_nist_kw_setkey.exit
  %i.n = getelementptr inbounds nuw [40 x i8], ptr @kw_msg, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @kw_msg_len, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !8    ; 3 uses
  %i.q = call i32 @mbedtls_nist_kw_wrap(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.n, i64 noundef %i.p, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 48)
  %.not73 = icmp eq i32 %i.q, 0
  br i1 %.not73, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @kw_out_len, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !8    ; 4 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !8
  %.not74 = icmp eq i64 %i.s, %i.t
  br i1 %.not74, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw [48 x i8], ptr @kw_res, i64 %indvars.iv
  %bcmp75 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.u, i64 %i.s)
  %.not76 = icmp eq i32 %bcmp75, 0
  br i1 %.not76, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not71, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.w = call ptr @mbedtls_cipher_info_from_values(i32 noundef 2, i32 noundef %.pre135, i32 noundef 1) #9 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %mbedtls_nist_kw_setkey.exit89.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val.i85 = load i32, ptr %i.y, align 8
  %i.z = and i32 %.val.i85, 31
  %.not.i86 = icmp eq i32 %i.z, 16
  br i1 %.not.i86, label %bb.n, label %mbedtls_nist_kw_setkey.exit89.thread

bb.n:                                             ; preds = %bb.m
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  %i.aa = call i32 @mbedtls_cipher_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.w) #9 ; 2 uses
  %.not18.i88 = icmp eq i32 %i.aa, 0
  br i1 %.not18.i88, label %mbedtls_nist_kw_setkey.exit89, label %mbedtls_nist_kw_setkey.exit89.thread

mbedtls_nist_kw_setkey.exit89:                    ; preds = %bb.n
  %i.ab = call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i32 noundef %.pre135, i32 noundef 0) #9 ; 2 uses
  %.not77 = icmp eq i32 %i.ab, 0
  br i1 %.not77, label %bb.p, label %mbedtls_nist_kw_setkey.exit89.thread

mbedtls_nist_kw_setkey.exit89.thread:             ; preds = %bb.m, %bb.l, %bb.n, %mbedtls_nist_kw_setkey.exit89
  %.0.i87105 = phi i32 [ %i.ab, %mbedtls_nist_kw_setkey.exit89 ], [ -24832, %bb.m ], [ -24832, %bb.l ], [ %i.aa, %bb.n ] ; 2 uses
  br i1 %.not71, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %mbedtls_nist_kw_setkey.exit89.thread
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %mbedtls_nist_kw_setkey.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ad = add i64 %i.s, -24
  %or.cond153 = icmp ult i64 %i.ad, 33
  br i1 %or.cond153, label %bb.q, label %mbedtls_nist_kw_unwrap.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ae = lshr exact i64 %i.s, 3
  %i.af = call fastcc i32 @unwrap(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.ae, ptr noundef %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not71.i = icmp eq i32 %i.af, 0
  br i1 %.not71.i, label %bb.r, label %.thread85.i

bb.r:                                             ; preds = %bb.q
  %i.ag = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV1, ptr noundef nonnull %i.a, i64 noundef 8) #9 ; 2 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !4
  %.not72.i = icmp eq i32 %i.ag, 0
  br i1 %.not72.i, label %.mbedtls_nist_kw_unwrap.exit_crit_edge, label %.thread85.i

.mbedtls_nist_kw_unwrap.exit_crit_edge:           ; preds = %bb.r
  %.pre131 = load i64, ptr %i.d, align 8
  br label %mbedtls_nist_kw_unwrap.exit

.thread85.i:                                      ; preds = %bb.r, %bb.q
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.ah, i1 false)
  store i64 0, ptr %i.d, align 8, !tbaa !8
  br label %mbedtls_nist_kw_unwrap.exit

mbedtls_nist_kw_unwrap.exit.thread:               ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit115

mbedtls_nist_kw_unwrap.exit:                      ; preds = %.mbedtls_nist_kw_unwrap.exit_crit_edge, %.thread85.i
  %i.ai = phi i64 [ 0, %.thread85.i ], [ %.pre131, %.mbedtls_nist_kw_unwrap.exit_crit_edge ]
  %.not78 = phi i1 [ false, %.thread85.i ], [ true, %.mbedtls_nist_kw_unwrap.exit_crit_edge ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 4) #9
end_hunk_0
