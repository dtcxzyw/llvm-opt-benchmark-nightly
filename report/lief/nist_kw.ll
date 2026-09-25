Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/nist_kw?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mbedtls_nist_kw_unwrap:bb.a
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %8, i8 0, i64 120, i1 false)
  store i64 0, ptr %6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.f = call i32 @psa_get_key_attributes(i32 noundef %0, ptr noundef nonnull %7) #5 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0                      ; 2 uses
  %.val.i = load i16, ptr %7, align 4
  %.not.i = icmp eq i16 %.val.i, 9216             ; 2 uses
  %spec.select.i = select i1 %.not.i, i32 0, i32 -135
  %.0.i = select i1 %i.g, i32 %spec.select.i, i32 %i.f
  call void @psa_reset_key_attributes(ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %.not = select i1 %i.g, i1 %.not.i, i1 false
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @psa_cipher_decrypt_setup(ptr noundef nonnull %8, i32 noundef %0, i32 noundef 71320576) #5 ; 2 uses
  %.not76 = icmp eq i32 %i.h, 0
  br i1 %.not76, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %3, -8                           ; 2 uses
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %1, label %bb.q [
    i32 0, label %bb.e
    i32 1, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %3, -24
  %or.cond = icmp ult i64 %i.k, 144115188075855849
  %i.l = and i64 %3, 7
  %.not84 = icmp eq i64 %i.l, 0
  %or.cond87 = and i1 %or.cond, %.not84
  br i1 %or.cond87, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.m = lshr exact i64 %3, 3
  %i.n = call fastcc i32 @unwrap(ptr noundef %2, i64 noundef %i.m, ptr noundef %i.a, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %8) ; 2 uses
  %.not85 = icmp eq i32 %i.n, 0
  br i1 %.not85, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV1, ptr noundef nonnull %i.a, i64 noundef 8) #5 ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !13
  %.not86 = icmp eq i32 %i.o, 0
  %spec.select = select i1 %.not86, i32 0, i32 -149
  br label %bb.q

bb.h:                                             ; preds = %bb.d
  %i.p = add i64 %3, -16
  %or.cond3 = icmp ult i64 %i.p, 4294967281
  %i.q = and i64 %3, 7
  %.not77 = icmp eq i64 %i.q, 0
  %or.cond88 = and i1 %or.cond3, %.not77
  br i1 %or.cond88, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.r = icmp eq i64 %3, 16
  br i1 %i.r, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.s = call i32 @psa_cipher_update(ptr noundef nonnull %8, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.d, i64 noundef 16, ptr noundef nonnull %6) #5 ; 2 uses
  %.not79 = icmp eq i32 %i.s, 0
  br i1 %.not79, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.t = load i64, ptr %6, align 8, !tbaa !9      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  %i.v = sub i64 16, %i.t
  %i.w = call i32 @psa_cipher_finish(ptr noundef nonnull %8, ptr noundef nonnull %i.u, i64 noundef %i.v, ptr noundef nonnull %i.c) #5 ; 2 uses
  %.not80 = icmp eq i32 %i.w, 0
  br i1 %.not80, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %.059.ph = phi i32 [ %i.w, %bb.k ], [ %i.s, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.x = load i64, ptr %i.d, align 16
  store i64 %i.x, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %4, align 1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.d, i64 noundef 16) #5
  store i64 8, ptr %6, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.aa = lshr exact i64 %3, 3
  %i.ab = call fastcc i32 @unwrap(ptr noundef %2, i64 noundef %i.aa, ptr noundef %i.a, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %8) ; 2 uses
  %.not78 = icmp eq i32 %i.ab, 0
  br i1 %.not78, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ac = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV2, ptr noundef nonnull %i.a, i64 noundef 4) #5 ; 2 uses
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !13
  %.not81 = icmp eq i32 %i.ac, 0
  %spec.select89.neg = select i1 %.not81, i64 0, i64 149
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.0.copyload.i = load i32, ptr %i.ad, align 4
  %i.ae = call i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sub nsw i64 %i.i, %i.af                 ; 2 uses
  %i.ah = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 7, i64 %i.ag) #5, !srcloc !14
  %i.ai = extractvalue { i64, i64, i64 } %i.ah, 1
  %i.aj = call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ai, i64 149, i64 range(i64 -2147483647, 2147483648) %spec.select89.neg) #5, !srcloc !15
  %i.ak = extractvalue { i64, i64, i64 } %i.aj, 2
  %i.al = trunc i64 %i.ak to i32
  %i.am = sub nsw i32 0, %i.al
  %i.an = and i64 %i.ag, 7                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i64 0, ptr %i.e, align 8
  %i.ao = load i64, ptr %6, align 8, !tbaa !9
  %i.ap = getelementptr i8, ptr %4, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %i.ar = sub nuw nsw i64 8, %i.an
  %i.as = call i32 @mbedtls_ct_memcmp_partial(ptr noundef %i.aq, ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef %i.ar, i64 noundef 0) #5 ; 2 uses
  store i32 %i.as, ptr %i.b, align 4, !tbaa !13
  %.not82 = icmp eq i32 %i.as, 0
  %.3 = select i1 %.not82, i32 %i.am, i32 -149    ; 2 uses
  %.not83 = icmp eq i32 %.3, 0
  br i1 %.not83, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 %i.af
  call void @llvm.memset.p0.i64(ptr align 1 %i.at, i8 0, i64 %i.an, i1 false)
  store i64 %i.af, ptr %6, align 8, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.g, %bb.d, %bb.p, %bb.h, %bb.e, %bb.c, %bb.m, %bb.f, %bb.b, %bb.a
  %.4 = phi i32 [ %.0.i, %bb.a ], [ %i.h, %bb.b ], [ %i.ab, %bb.m ], [ -138, %bb.c ], [ %i.n, %bb.f ], [ -135, %bb.e ], [ -134, %bb.d ], [ %spec.select, %bb.g ], [ -135, %bb.h ], [ %.3, %bb.p ], [ %.059.ph, %.thread ] ; 2 uses
  %i.au = icmp ne i32 %.4, 0
  %i.av = icmp ne ptr %4, null
  %or.cond5 = and i1 %i.av, %i.au
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aw = load i64, ptr %6, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %i.aw, i1 false)
  store i64 0, ptr %6, align 8, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ax = call i32 @psa_cipher_abort(ptr noundef nonnull %8) #5 ; 0 uses
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 4) #5
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.4
}

declare i32 @psa_cipher_decrypt_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unwrap(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 2, 18014398509481985) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(address) %3, ptr noundef initializes((0, 8)) %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %4, align 8, !tbaa !9
  %i.d = icmp samesign ult i64 %1, 3
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = add nsw i64 %1, -1                       ; 2 uses
  %i.f = load i64, ptr %0, align 1
  store i64 %i.f, ptr %2, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %3, ptr nonnull align 1 %i.g, i64 %i.h, i1 false)
  %i.i = shl nuw nsw i64 %1, 3
  %i.j = getelementptr i8, ptr %3, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -16      ; 2 uses
  %i.l = mul nuw nsw i64 %i.e, 6
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.051 = phi ptr [ %i.k, %.lr.ph ], [ %.1, %bb.c ] ; 4 uses
  %.03650 = phi i64 [ %i.l, %.lr.ph ], [ %i.w, %bb.c ] ; 6 uses
  %6 = lshr i64 %.03650, 8
  %7 = insertelement <4 x i64> poison, i64 %.03650, i64 0
  %8 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> zeroinitializer
  %9 = lshr <4 x i64> %8, <i64 40, i64 32, i64 24, i64 16>
  %10 = lshr i64 %.03650, 48
  %11 = lshr i64 %.03650, 56
  %i.o = load <8 x i8>, ptr %2, align 1, !tbaa !10
  %12 = insertelement <2 x i64> poison, i64 %6, i64 0
  %13 = insertelement <2 x i64> %12, i64 %.03650, i64 1
  %14 = trunc <2 x i64> %13 to <2 x i8>
  %15 = trunc <4 x i64> %9 to <4 x i8>
  %16 = trunc i64 %10 to i8
  %17 = trunc nuw i64 %11 to i8
  %18 = insertelement <8 x i8> poison, i8 %17, i64 0
  %19 = insertelement <8 x i8> %18, i8 %16, i64 1
  %20 = shufflevector <4 x i8> %15, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <8 x i8> %19, <8 x i8> %20, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %22 = shufflevector <2 x i8> %14, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <8 x i8> %21, <8 x i8> %22, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.p = xor <8 x i8> %i.o, %23                   ; 2 uses
  store <8 x i8> %i.p, ptr %2, align 1, !tbaa !10
  store <8 x i8> %i.p, ptr %i.c, align 16
  %i.q = load i64, ptr %.051, align 1
  store i64 %i.q, ptr %i.m, align 8
  %i.r = call i32 @psa_cipher_update(ptr noundef nonnull %5, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull %4) #5 ; 2 uses
  %.not43 = icmp eq i32 %i.r, 0
  br i1 %.not43, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.b, align 16
  store i64 %i.s, ptr %2, align 1
  %i.t = load i64, ptr %i.n, align 8
  store i64 %i.t, ptr %.051, align 1
  %i.u = icmp eq ptr %.051, %3
  %i.v = getelementptr inbounds i8, ptr %.051, i64 -8
  %.1 = select i1 %i.u, ptr %i.k, ptr %i.v
  %i.w = add nsw i64 %.03650, -1                  ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.c
  %i.x = load i64, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.x
  %i.z = sub i64 16, %i.x
  %i.aa = call i32 @psa_cipher_finish(ptr noundef nonnull %5, ptr noundef nonnull %i.y, i64 noundef %i.z, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  store i64 %i.h, ptr %4, align 8, !tbaa !9
  br label %bb.e

.loopexit:                                        ; preds = %bb.b, %bb.a, %._crit_edge
  %.pre-phi = phi i64 [ 8, %bb.a ], [ %i.h, %._crit_edge ], [ %i.h, %bb.b ]
  %.037.ph = phi i32 [ -135, %bb.a ], [ %i.aa, %._crit_edge ], [ %i.r, %bb.b ]
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %.pre-phi, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %.03748 = phi i32 [ %.037.ph, %.loopexit ], [ 0, %bb.d ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 16) #5
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.03748
}

declare i32 @mbedtls_ct_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_ct_memcmp_partial(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @psa_get_key_attributes(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @psa_reset_key_attributes(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!5, !5, i64 0}
!14 = !{i64 857321, i64 857371, i64 857443, i64 857515, i64 857587, i64 857659, i64 857731, i64 857803, i64 857875}
!15 = !{i64 854089, i64 854139, i64 854211, i64 854283, i64 854355}
!16 = distinct !{!16, !11}
end_hunk_0
