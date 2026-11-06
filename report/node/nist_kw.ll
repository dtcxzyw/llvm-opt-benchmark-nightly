Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/nist_kw?download=true
inline.NumInlined: 14
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mbedtls_nist_kw_wrap:bb.a
bb.l:                                             ; preds = %.loopexit, %.thread
  %.399 = phi i32 [ %.3.ph, %.thread ], [ 0, %.loopexit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 16) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.l
  %.073 = phi i32 [ -24832, %bb.e ], [ -24832, %bb.b ], [ %.399, %bb.l ], [ -24832, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

declare i32 @mbedtls_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mbedtls_nist_kw_unwrap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, i64 noundef %6) local_unnamed_addr #2 !guid !35 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %5, align 8, !tbaa !27
  %i.f = add i64 %3, -8                           ; 2 uses
  %i.g = icmp ult i64 %6, %i.f
  br i1 %i.g, label %.thread82, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %.thread86 [
    i32 0, label %bb.c
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %3, -24
  %or.cond = icmp ult i64 %i.h, 144115188075855849
  %i.i = and i64 %3, 7
  %.not71 = icmp eq i64 %i.i, 0
  %or.cond75 = and i1 %or.cond, %.not71
  br i1 %or.cond75, label %bb.d, label %.thread82

bb.d:                                             ; preds = %bb.c
  %i.j = lshr exact i64 %3, 3
  %i.k = call fastcc i32 @unwrap(ptr noundef %0, ptr noundef %2, i64 noundef %i.j, ptr noundef %i.b, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %.not72 = icmp eq i32 %i.k, 0
  br i1 %.not72, label %bb.e, label %.thread86

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV1, ptr noundef nonnull %i.b, i64 noundef 8) #9 ; 2 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !7
  %.not73 = icmp eq i32 %i.l, 0
  br i1 %.not73, label %.thread91, label %.thread86

bb.f:                                             ; preds = %bb.b
  %i.m = add i64 %3, -16
  %or.cond3 = icmp ult i64 %i.m, 4294967281
  %i.n = and i64 %3, 7
  %.not = icmp eq i64 %i.n, 0
  %or.cond76 = and i1 %or.cond3, %.not
  br i1 %or.cond76, label %bb.g, label %.thread82

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i64 %3, 16
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.p = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not67 = icmp eq i32 %i.p, 0
  br i1 %.not67, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.q = load i64, ptr %i.d, align 16
  store i64 %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %4, align 1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.d, i64 noundef 16) #9
  store i64 8, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread86

bb.j:                                             ; preds = %bb.g
  %i.t = lshr exact i64 %3, 3
  %i.u = call fastcc i32 @unwrap(ptr noundef %0, ptr noundef %2, i64 noundef %i.t, ptr noundef %i.b, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %.not66 = icmp eq i32 %i.u, 0
  br i1 %.not66, label %bb.k, label %.thread86

bb.k:                                             ; preds = %.thread, %bb.j
  %i.v = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV2, ptr noundef nonnull %i.b, i64 noundef 4) #9 ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !7
  %.not68 = icmp eq i32 %i.v, 0
  %spec.select77.neg = select i1 %.not68, i64 0, i64 25344
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.0.copyload.i = load i32, ptr %i.w, align 4
  %i.x = call i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = sub nsw i64 %i.f, %i.y                   ; 2 uses
  %i.aa = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 7, i64 %i.z) #9, !srcloc !36
  %i.ab = extractvalue { i64, i64, i64 } %i.aa, 1
  %i.ac = call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab, i64 25344, i64 range(i64 -2147483647, 2147483648) %spec.select77.neg) #9, !srcloc !37
  %i.ad = extractvalue { i64, i64, i64 } %i.ac, 2
  %i.ae = trunc i64 %i.ad to i32
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = and i64 %i.z, 7                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i64 0, ptr %i.e, align 8
  %i.ah = load i64, ptr %5, align 8, !tbaa !27
  %i.ai = getelementptr i8, ptr %4, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = sub nuw nsw i64 8, %i.ag
  %i.al = call i32 @mbedtls_ct_memcmp_partial(ptr noundef %i.aj, ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef %i.ak, i64 noundef 0) #9 ; 2 uses
  store i32 %i.al, ptr %i.c, align 4, !tbaa !7
  %.not69 = icmp eq i32 %i.al, 0
  %.255 = select i1 %.not69, i32 %i.af, i32 -25344 ; 2 uses
  %.not70 = icmp eq i32 %.255, 0
  br i1 %.not70, label %.thread94, label %bb.l

.thread94:                                        ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.ag, i1 false)
  store i64 %i.y, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.thread91

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.thread86

.thread86:                                        ; preds = %bb.j, %bb.i, %bb.e, %bb.b, %bb.d, %bb.l
  %.489 = phi i32 [ %.255, %bb.l ], [ %i.k, %bb.d ], [ -25344, %bb.e ], [ -24704, %bb.b ], [ %i.u, %bb.j ], [ %i.p, %bb.i ]
  %i.an = load i64, ptr %5, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.an, i1 false)
  store i64 0, ptr %5, align 8, !tbaa !27
  br label %.thread91

.thread91:                                        ; preds = %bb.e, %.thread94, %.thread86
  %.490 = phi i32 [ %.489, %.thread86 ], [ 0, %.thread94 ], [ 0, %bb.e ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 4) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 8) #9
  br label %.thread82

.thread82:                                        ; preds = %bb.f, %bb.c, %bb.a, %.thread91
  %.157 = phi i32 [ -24832, %bb.c ], [ -24832, %bb.a ], [ %.490, %.thread91 ], [ -24832, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.157
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unwrap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 2, 18014398509481985) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(address) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) unnamed_addr #2 !guid !39 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %5, align 8, !tbaa !27
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
  %.03245 = phi i64 [ %i.l, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %i.o = load <8 x i8>, ptr %3, align 1, !tbaa !28
  %6 = call i64 @llvm.bswap.i64(i64 %.03245)
  %7 = bitcast i64 %6 to <8 x i8>
  %i.p = xor <8 x i8> %i.o, %7                    ; 2 uses
  store <8 x i8> %i.p, ptr %3, align 1, !tbaa !28
  store <8 x i8> %i.p, ptr %i.c, align 16
  %i.q = load i64, ptr %.046, align 1
  store i64 %i.q, ptr %i.m, align 8
  %i.r = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not39 = icmp eq i32 %i.r, 0
  br i1 %.not39, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.b, align 16
  store i64 %i.s, ptr %3, align 1
  %i.t = load i64, ptr %i.n, align 8
  store i64 %i.t, ptr %.046, align 1
  %i.u = icmp eq ptr %.046, %4
  %i.v = getelementptr inbounds i8, ptr %.046, i64 -8
  %.1 = select i1 %i.u, ptr %i.k, ptr %i.v
  %i.w = add nsw i64 %.03245, -1                  ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !38

.thread:                                          ; preds = %bb.c
  store i64 %i.h, ptr %5, align 8, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 16) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.035 = phi i32 [ %i.r, %bb.e ], [ -24832, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.035
}

declare i32 @mbedtls_ct_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @mbedtls_ct_memcmp_partial(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mbedtls_nist_kw_self_test(i32 noundef %0) local_unnamed_addr #2 !guid !42 {
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
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !7
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
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27   ; 3 uses
  %i.q = call i32 @mbedtls_nist_kw_wrap(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.n, i64 noundef %i.p, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 48)
  %.not73 = icmp eq i32 %i.q, 0
  br i1 %.not73, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @kw_out_len, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 4 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !27
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
  %.not72.i = icmp eq i32 %i.af, 0
  br i1 %.not72.i, label %bb.r, label %.thread86.i

bb.r:                                             ; preds = %bb.q
  %i.ag = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV1, ptr noundef nonnull %i.a, i64 noundef 8) #9 ; 2 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !7
  %.not73.i = icmp eq i32 %i.ag, 0
  br i1 %.not73.i, label %.mbedtls_nist_kw_unwrap.exit_crit_edge, label %.thread86.i

.mbedtls_nist_kw_unwrap.exit_crit_edge:           ; preds = %bb.r
  %.pre131 = load i64, ptr %i.d, align 8
  br label %mbedtls_nist_kw_unwrap.exit

.thread86.i:                                      ; preds = %bb.r, %bb.q
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.ah, i1 false)
  store i64 0, ptr %i.d, align 8, !tbaa !27
  br label %mbedtls_nist_kw_unwrap.exit

mbedtls_nist_kw_unwrap.exit.thread:               ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit115

mbedtls_nist_kw_unwrap.exit:                      ; preds = %.mbedtls_nist_kw_unwrap.exit_crit_edge, %.thread86.i
  %i.ai = phi i64 [ 0, %.thread86.i ], [ %.pre131, %.mbedtls_nist_kw_unwrap.exit_crit_edge ]
  %.not78 = phi i1 [ false, %.thread86.i ], [ true, %.mbedtls_nist_kw_unwrap.exit_crit_edge ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 4) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not79 = icmp eq i64 %i.ai, %i.p
  %or.cond = select i1 %.not78, i1 %.not79, i1 false
  br i1 %or.cond, label %bb.s, label %.loopexit115

bb.s:                                             ; preds = %mbedtls_nist_kw_unwrap.exit
  %bcmp80 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.n, i64 %i.p)
  %.not81 = icmp eq i32 %bcmp80, 0
  br i1 %.not81, label %bb.u, label %.loopexit115

.loopexit115:                                     ; preds = %bb.s, %mbedtls_nist_kw_unwrap.exit, %mbedtls_nist_kw_unwrap.exit.thread
  br i1 %.not71, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.loopexit115
  %puts83 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  br i1 %.not71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %puts82 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !40

.preheader:                                       ; preds = %bb.w, %bb.aq
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %bb.aq ], [ 0, %bb.w ] ; 7 uses
  %.phi.trans.insert133 = getelementptr inbounds nuw [4 x i8], ptr @key_len, i64 %indvars.iv127
  %.pre134 = load i32, ptr %.phi.trans.insert133, align 4, !tbaa !7
  %.pre136 = shl i32 %.pre134, 3                  ; 5 uses
  br i1 %.not71, label %._crit_edge132, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.pre136) ; 0 uses
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.preheader, %bb.x
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr @kwp_key, i64 %indvars.iv127 ; 2 uses
  %i.al = call ptr @mbedtls_cipher_info_from_values(i32 noundef 2, i32 noundef %.pre136, i32 noundef 1) #9 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %mbedtls_nist_kw_setkey.exit94.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge132
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %.val.i90 = load i32, ptr %i.an, align 8
  %i.ao = and i32 %.val.i90, 31
  %.not.i91 = icmp eq i32 %i.ao, 16
  br i1 %.not.i91, label %bb.z, label %mbedtls_nist_kw_setkey.exit94.thread

bb.z:                                             ; preds = %bb.y
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  %i.ap = call i32 @mbedtls_cipher_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.al) #9 ; 2 uses
  %.not18.i93 = icmp eq i32 %i.ap, 0
  br i1 %.not18.i93, label %mbedtls_nist_kw_setkey.exit94, label %mbedtls_nist_kw_setkey.exit94.thread

mbedtls_nist_kw_setkey.exit94:                    ; preds = %bb.z
  %i.aq = call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %1, ptr noundef nonnull %i.ak, i32 noundef %.pre136, i32 noundef 1) #9 ; 2 uses
  %.not62 = icmp eq i32 %i.aq, 0
  br i1 %.not62, label %bb.ab, label %mbedtls_nist_kw_setkey.exit94.thread

mbedtls_nist_kw_setkey.exit94.thread:             ; preds = %bb.y, %._crit_edge132, %bb.z, %mbedtls_nist_kw_setkey.exit94
  %.0.i92110 = phi i32 [ %i.aq, %mbedtls_nist_kw_setkey.exit94 ], [ -24832, %bb.y ], [ -24832, %._crit_edge132 ], [ %i.ap, %bb.z ] ; 2 uses
  br i1 %.not71, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %mbedtls_nist_kw_setkey.exit94.thread
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  br label %.loopexit

bb.ab:                                            ; preds = %mbedtls_nist_kw_setkey.exit94
  %i.as = getelementptr inbounds nuw [31 x i8], ptr @kwp_msg, i64 %indvars.iv127 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @kwp_msg_len, i64 %indvars.iv127
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27 ; 3 uses
  %i.av = call i32 @mbedtls_nist_kw_wrap(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.as, i64 noundef %i.au, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 48)
  %.not63 = icmp eq i32 %i.av, 0
  br i1 %.not63, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @kwp_out_len, i64 %indvars.iv127
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !27 ; 3 uses
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !27
  %.not64 = icmp eq i64 %i.ax, %i.ay
  br i1 %.not64, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.az = getelementptr inbounds nuw [48 x i8], ptr @kwp_res, i64 %indvars.iv127
  %bcmp = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.az, i64 %i.ax)
  %.not65 = icmp eq i32 %bcmp, 0
  br i1 %.not65, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not71, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ad
  %i.bb = call ptr @mbedtls_cipher_info_from_values(i32 noundef 2, i32 noundef %.pre136, i32 noundef 1) #9 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %mbedtls_nist_kw_setkey.exit99.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val.i95 = load i32, ptr %i.bd, align 8
  %i.be = and i32 %.val.i95, 31
  %.not.i96 = icmp eq i32 %i.be, 16
  br i1 %.not.i96, label %bb.ai, label %mbedtls_nist_kw_setkey.exit99.thread

bb.ai:                                            ; preds = %bb.ah
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  %i.bf = call i32 @mbedtls_cipher_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.bb) #9 ; 2 uses
  %.not18.i98 = icmp eq i32 %i.bf, 0
  br i1 %.not18.i98, label %mbedtls_nist_kw_setkey.exit99, label %mbedtls_nist_kw_setkey.exit99.thread

mbedtls_nist_kw_setkey.exit99:                    ; preds = %bb.ai
  %i.bg = call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %1, ptr noundef nonnull %i.ak, i32 noundef %.pre136, i32 noundef 0) #9 ; 2 uses
  %.not66 = icmp eq i32 %i.bg, 0
  br i1 %.not66, label %bb.ak, label %mbedtls_nist_kw_setkey.exit99.thread

mbedtls_nist_kw_setkey.exit99.thread:             ; preds = %bb.ah, %bb.ag, %bb.ai, %mbedtls_nist_kw_setkey.exit99
  %.0.i97113 = phi i32 [ %i.bg, %mbedtls_nist_kw_setkey.exit99 ], [ -24832, %bb.ah ], [ -24832, %bb.ag ], [ %i.bf, %bb.ai ] ; 2 uses
  br i1 %.not71, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %mbedtls_nist_kw_setkey.exit99.thread
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  br label %.loopexit

bb.ak:                                            ; preds = %mbedtls_nist_kw_setkey.exit99
  %i.bi = call i32 @mbedtls_nist_kw_unwrap(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef %i.ax, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 48)
  %.not67 = icmp eq i32 %i.bi, 0
  %i.bj = load i64, ptr %i.d, align 8
  %.not68 = icmp eq i64 %i.bj, %i.au
  %or.cond114 = select i1 %.not67, i1 %.not68, i1 false
  br i1 %or.cond114, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %bcmp69 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.as, i64 %i.au)
  %.not70 = icmp eq i32 %bcmp69, 0
  br i1 %.not70, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.not71, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  br label %.loopexit

bb.ao:                                            ; preds = %bb.al
  br i1 %.not71, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, 3
  br i1 %exitcond130.not, label %.loopexit, label %.preheader, !llvm.loop !41

.loopexit:                                        ; preds = %bb.aq, %bb.am, %bb.an, %bb.ae, %bb.af, %.loopexit115, %bb.t, %bb.j, %bb.k, %mbedtls_nist_kw_setkey.exit99.thread, %bb.aj, %mbedtls_nist_kw_setkey.exit94.thread, %bb.aa, %mbedtls_nist_kw_setkey.exit89.thread, %bb.o, %mbedtls_nist_kw_setkey.exit.thread, %bb.f
  %.2 = phi i32 [ %.0.i102, %bb.f ], [ %.0.i102, %mbedtls_nist_kw_setkey.exit.thread ], [ 1, %bb.am ], [ %.0.i87105, %bb.o ], [ %.0.i87105, %mbedtls_nist_kw_setkey.exit89.thread ], [ 1, %bb.j ], [ %.0.i92110, %bb.aa ], [ %.0.i92110, %mbedtls_nist_kw_setkey.exit94.thread ], [ 1, %.loopexit115 ], [ %.0.i97113, %bb.aj ], [ %.0.i97113, %mbedtls_nist_kw_setkey.exit99.thread ], [ 1, %bb.ae ], [ 1, %bb.k ], [ 1, %bb.t ], [ 1, %bb.af ], [ 1, %bb.an ], [ 0, %bb.aq ]
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 96) #9
  br i1 %.not71, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -7758462864267269436}
!9 = !{i64 3346448627915362440}
!10 = !{i64 7156231016561051873}
!11 = !{i64 2953236483057917991}
!12 = !{i64 5612012768514636043}
!13 = !{i64 -5557868777655120403}
!14 = !{i64 3804341813524520860}
!15 = !{i64 6115052313616862827}
!16 = !{i64 8521772297133043905}
!17 = !{i64 -8132304819012320341}
!18 = !{i64 3885535847013923980}
!19 = !{i64 -8217133869173122746}
!20 = !{i64 -7397742590579863977}
!21 = !{i64 593095702428093847}
!22 = !{i64 8301619506989477824}
!23 = !{i64 -1985738303778306210}
!24 = !{i64 -4197331515862461666}
!25 = !{i64 -3579757249140200628}
!26 = !{!"long", !5, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!5, !5, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i64 -6534326466121389533}
!31 = !{i64 -3178356725886059262}
!32 = !{i64 2329301262705425717}
!33 = distinct !{!33, !29}
!34 = !{i64 -1618282820352216089}
!35 = !{i64 -5525143556947356460}
!36 = !{i64 1048337, i64 1048387, i64 1048459, i64 1048531, i64 1048603, i64 1048675, i64 1048747, i64 1048819, i64 1048891}
!37 = !{i64 1045105, i64 1045155, i64 1045227, i64 1045299, i64 1045371}
!38 = distinct !{!38, !29}
!39 = !{i64 -8646495469081467205}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = !{i64 -6105000606081234914}
end_hunk_0
