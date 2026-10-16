Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/sha256?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mbedtls_internal_sha256_process:.preheader148
  store i32 %i.yn, ptr %i.yo, align 4, !tbaa !10
  %i.yp = add i32 %i.xu, %i.rt
  %i.yq = add i32 %i.yp, %i.xn
  %i.yr = add i32 %i.yq, %i.xr
  %i.ys = add i32 %i.yr, %i.yn                    ; 3 uses
  %i.yt = tail call i32 @llvm.fshl.i32(i32 %i.xi, i32 %i.xi, i32 30)
  %i.yu = tail call i32 @llvm.fshl.i32(i32 %i.xi, i32 %i.xi, i32 19)
  %i.yv = xor i32 %i.yt, %i.yu
  %i.yw = tail call i32 @llvm.fshl.i32(i32 %i.xi, i32 %i.xi, i32 10)
  %i.yx = xor i32 %i.yv, %i.yw
  %i.yy = and i32 %i.xi, %i.vo
  %i.yz = or i32 %i.xi, %i.vo
  %i.za = and i32 %i.yz, %i.ts
  %i.zb = or i32 %i.za, %i.yy
  %i.zc = add i32 %i.yx, %i.zb                    ; 2 uses
  %i.zd = add i32 %i.ys, %i.tg                    ; 3 uses
  store i32 %i.zd, ptr %i.s, align 4, !tbaa !10
  %i.ze = add i32 %i.ys, %i.zc                    ; 2 uses
  store i32 %i.ze, ptr %i.b, align 4, !tbaa !10
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 8
  %i.zf = icmp samesign ult i64 %indvars.iv170, 56
  br i1 %i.zf, label %bb.b, label %.preheader, !llvm.loop !16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define hidden noundef i32 @mbedtls_sha256_finish(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 28)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %i.b, 63                         ; 5 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 -128, ptr %i.e, align 1, !tbaa !9
  %i.f = icmp samesign ult i32 %i.c, 56
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i32 55, %i.c
  %i.k = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.k, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = xor i32 %i.c, 63
  %i.m = zext nneg i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.m, i1 false)
  tail call fastcc void @mbedtls_internal_sha256_process(ptr noundef nonnull %0, ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.n, i32 3)
  %i.r = shl i32 %i.n, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.t, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.v, ptr %i.u, align 4
  tail call fastcc void @mbedtls_internal_sha256_process(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %1, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !10
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  store i32 %i.ac, ptr %i.z, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  store i32 %i.ag, ptr %i.ad, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  store i32 %i.ak, ptr %i.ah, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load i32, ptr %i.am, align 4, !tbaa !10
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  store i32 %i.ao, ptr %i.al, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.ap, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load i32, ptr %i.au, align 4, !tbaa !10
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  store i32 %i.aw, ptr %i.at, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.e, label %mbedtls_sha256_free.exit

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !10
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %i.az, align 1
  br label %mbedtls_sha256_free.exit

mbedtls_sha256_free.exit:                         ; preds = %bb.d, %bb.e
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 108) #12
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_sha256(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.mbedtls_sha256_context, align 4 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %or.cond = icmp ugt i32 %3, 1
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.b = icmp eq i32 %3, 0                        ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i64 72, i1 false)
  %i.c = select i1 %i.b, <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>
  %i.d = select i1 %i.b, <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <4 x i32> %i.c, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 88
  store <4 x i32> %i.d, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i32 %3, ptr %i.g, align 4, !tbaa !12
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %1 to i32
  store i32 %i.i, ptr %i.a, align 4, !tbaa !10
  %i.j = icmp ugt i64 %1, 63
  br i1 %i.j, label %.preheader.i, label %.thread63.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0711.i.i = phi i64 [ %i.l, %.preheader.i ], [ %1, %bb.c ]
  %.0810.i.i = phi ptr [ %i.k, %.preheader.i ], [ %0, %bb.c ] ; 2 uses
  call fastcc void @mbedtls_internal_sha256_process(ptr noundef nonnull %4, ptr noundef %.0810.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 64
  %i.l = add i64 %.0711.i.i, -64                  ; 2 uses
  %i.m = icmp ugt i64 %i.l, 63
  br i1 %i.m, label %.preheader.i, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %.preheader.i
  %i.n = and i64 %1, 63                           ; 2 uses
  %i.o = and i64 %1, -64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %.not53.i = icmp eq i64 %i.n, 0
  br i1 %.not53.i, label %bb.e, label %.thread63.i

.thread63.i:                                      ; preds = %bb.c, %bb.d
  %.1.lcssa.i17 = phi i64 [ %i.n, %bb.d ], [ %1, %bb.c ]
  %.141.lcssa.i16 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %4, ptr align 1 %.141.lcssa.i16, i64 %.1.lcssa.i17, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %.thread63.i
  %i.q = call i32 @mbedtls_sha256_finish(ptr noundef nonnull %4, ptr noundef %2) ; 0 uses
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %4, i64 noundef 108) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.08 = phi i32 [ 0, %bb.e ], [ -135, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mbedtls_sha256_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @mbedtls_sha256_common_self_test(i32 noundef %0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mbedtls_sha256_common_self_test(i32 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %2 = alloca %struct.mbedtls_sha256_context, align 4 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.not = icmp eq i32 %1, 0                       ; 7 uses
  %i.b = select i1 %.not, ptr @sha256_test_sum, ptr @sha224_test_sum ; 3 uses
  %i.c = tail call noalias dereferenceable_or_null(1024) ptr @calloc(i64 noundef 1024, i64 noundef 1) #13 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not47 = icmp eq i32 %0, 0
  br i1 %.not47, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %2, i8 0, i64 64, i1 false)
  %.not41 = icmp eq i32 %0, 0                     ; 5 uses
  %i.e = shl nuw nsw i32 %1, 5
  %i.f = sub nuw nsw i32 256, %i.e                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.l = shl nuw nsw i32 %1, 2
  %i.m = sub nuw nsw i32 32, %i.l
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  br i1 %.not41, label %mbedtls_sha256_update.exit60, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.f, i32 noundef 1) ; 0 uses
  br label %mbedtls_sha256_update.exit60

mbedtls_sha256_update.exit60:                     ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.h, align 4, !tbaa !10
  %i.p = select i1 %.not, <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>
  %i.q = select i1 %.not, <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>
  store <4 x i32> %i.p, ptr %i.i, align 4, !tbaa !10
  store <4 x i32> %i.q, ptr %i.j, align 4, !tbaa !10
  store i32 %1, ptr %i.k, align 4, !tbaa !12
  store i32 3, ptr %i.g, align 4, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %2, ptr noundef nonnull align 16 dereferenceable(3) @sha_test_buf, i64 3, i1 false)
  %i.r = call i32 @mbedtls_sha256_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b, i64 %i.n)
  %.not45 = icmp eq i32 %bcmp, 0
  br i1 %.not45, label %bb.f, label %bb.r

bb.f:                                             ; preds = %mbedtls_sha256_update.exit60
  br i1 %.not41, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.f, i32 noundef 2) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.h, align 4, !tbaa !10
  %i.t = select i1 %.not, <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>
  %i.u = select i1 %.not, <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>
  store <4 x i32> %i.t, ptr %i.i, align 4, !tbaa !10
  store <4 x i32> %i.u, ptr %i.j, align 4, !tbaa !10
  store i32 %1, ptr %i.k, align 4, !tbaa !12
  store i32 56, ptr %i.g, align 4, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, ptr noundef nonnull align 1 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @sha_test_buf, i64 57), i64 56, i1 false)
  %i.v = call i32 @mbedtls_sha256_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %bcmp.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %3, i64 %i.n)
  %.not45.1 = icmp eq i32 %bcmp.1, 0
  br i1 %.not45.1, label %bb.h, label %bb.r

bb.h:                                             ; preds = %.thread
  br i1 %.not41, label %.thread73, label %bb.i

bb.i:                                             ; preds = %bb.h
  %puts.1 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.f, i32 noundef 3) ; 0 uses
  br label %.thread73

.thread73:                                        ; preds = %bb.h, %bb.i
  store i32 0, ptr %i.g, align 4, !tbaa !10
  store i32 0, ptr %i.h, align 4, !tbaa !10
  %i.x = select i1 %.not, <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>
  %i.y = select i1 %.not, <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>
  store <4 x i32> %i.x, ptr %i.i, align 4, !tbaa !10
  store <4 x i32> %i.y, ptr %i.j, align 4, !tbaa !10
  store i32 %1, ptr %i.k, align 4, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %i.c, i8 97, i64 1000, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %mbedtls_sha256_update.exit.2, %.thread73
  %.066.2 = phi i32 [ 0, %.thread73 ], [ %i.ar, %mbedtls_sha256_update.exit.2 ]
  %i.z = load i32, ptr %i.g, align 4, !tbaa !10   ; 3 uses
  %i.aa = and i32 %i.z, 63                        ; 3 uses
  %i.ab = sub nuw nsw i32 64, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.ad = add i32 %i.z, 1000
  store i32 %i.ad, ptr %i.g, align 4, !tbaa !10
  %i.ae = icmp ugt i32 %i.z, -1001
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.h, align 4, !tbaa !10
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.h, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i.2 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.2, label %.preheader.i.2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = zext nneg i32 %i.aa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.c, i64 %i.ac, i1 false)
  call fastcc void @mbedtls_internal_sha256_process(ptr noundef nonnull %2, ptr noundef nonnull %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  %i.ak = sub nuw nsw i64 1000, %i.ac
  br label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.m, %bb.l
  %.040.i.2 = phi ptr [ %i.aj, %bb.m ], [ %i.c, %bb.l ] ; 2 uses
  %.039.i.2 = phi i64 [ %i.ak, %bb.m ], [ 1000, %bb.l ] ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.i.2
  %.0711.i.i.2 = phi i64 [ %i.am, %bb.n ], [ %.039.i.2, %.preheader.i.2 ]
  %.0810.i.i.2 = phi ptr [ %i.al, %bb.n ], [ %.040.i.2, %.preheader.i.2 ] ; 2 uses
  call fastcc void @mbedtls_internal_sha256_process(ptr noundef nonnull %2, ptr noundef %.0810.i.i.2)
  %i.al = getelementptr inbounds nuw i8, ptr %.0810.i.i.2, i64 64
  %i.am = add nsw i64 %.0711.i.i.2, -64           ; 2 uses
  %i.an = icmp ugt i64 %i.am, 63
  br i1 %i.an, label %bb.n, label %bb.o, !llvm.loop !0

bb.o:                                             ; preds = %bb.n
  %i.ao = and i64 %.039.i.2, 63                   ; 2 uses
  %.not53.i.2 = icmp eq i64 %i.ao, 0
  br i1 %.not53.i.2, label %mbedtls_sha256_update.exit.2, label %.thread63.i.2

.thread63.i.2:                                    ; preds = %bb.o
  %i.ap = and i64 %.039.i.2, 960
  %i.aq = getelementptr inbounds nuw i8, ptr %.040.i.2, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 1 %i.aq, i64 %i.ao, i1 false)
  br label %mbedtls_sha256_update.exit.2

mbedtls_sha256_update.exit.2:                     ; preds = %.thread63.i.2, %bb.o
  %i.ar = add nuw nsw i32 %.066.2, 1              ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.ar, 1000
  br i1 %exitcond.2.not, label %mbedtls_sha256_update.exit60.2, label %bb.j, !llvm.loop !20

mbedtls_sha256_update.exit60.2:                   ; preds = %mbedtls_sha256_update.exit.2
  %i.as = call i32 @mbedtls_sha256_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %bcmp.2 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %4, i64 %i.n)
  %.not45.2 = icmp eq i32 %bcmp.2, 0
  br i1 %.not45.2, label %bb.p, label %bb.r

bb.p:                                             ; preds = %mbedtls_sha256_update.exit60.2
  br i1 %.not41, label %.thread74, label %bb.q

bb.q:                                             ; preds = %bb.p
  %puts.2 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.thread74

bb.r:                                             ; preds = %mbedtls_sha256_update.exit60.2, %.thread, %mbedtls_sha256_update.exit60
  br i1 %.not41, label %.thread74, label %bb.s

bb.s:                                             ; preds = %bb.r
  %puts46 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.thread74

.thread74:                                        ; preds = %bb.p, %bb.r, %bb.s, %bb.q
  %.4 = phi i32 [ 1, %bb.s ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %2, i64 noundef 108) #12
  call void @free(ptr noundef %i.c) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.c, %.thread74
  %.031 = phi i32 [ %.4, %.thread74 ], [ 1, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mbedtls_sha224_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @mbedtls_sha256_common_self_test(i32 noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"mbedtls_sha256_context", !5, i64 0, !5, i64 64, !5, i64 72, !6, i64 104}
!12 = !{!11, !6, i64 104}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 0, i64 64, !9, i64 64, i64 8, !9, i64 72, i64 32, !9, i64 104, i64 4, !10}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!"", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 264}
!18 = !{!17, !6, i64 0}
!19 = !{!17, !6, i64 4}
!20 = distinct !{!20, !13}
end_hunk_0
