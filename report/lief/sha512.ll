Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/sha512?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mbedtls_internal_sha512_process:.lr.ph
  %i.ma = add i64 %i.lz, %i.ix
  store i64 %i.ma, ptr %i.ly, align 8, !tbaa !11
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !11
  %i.md = add i64 %i.mc, %i.hu
  store i64 %i.md, ptr %i.mb, align 8, !tbaa !11
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %2, i64 noundef 720) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define hidden noundef i32 @mbedtls_sha512_finish(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 48)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 127                        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.e = and i64 %i.a, 127
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 -128, ptr %i.f, align 1, !tbaa !9
  %i.g = icmp samesign ult i32 %i.c, 112
  %i.h = and i64 %i.a, 127
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i32 111, %i.c
  %i.l = zext nneg i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.l, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = xor i32 %i.c, 127
  %i.n = zext nneg i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.n, i1 false)
  tail call fastcc void @mbedtls_internal_sha512_process(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  %.pre = load i64, ptr %0, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i64 [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.o, i64 3)
  %i.s = shl i64 %i.o, 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = tail call i64 @llvm.bswap.i64(i64 %i.r)
  store i64 %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = tail call i64 @llvm.bswap.i64(i64 %i.s)
  store i64 %i.w, ptr %i.v, align 8
  tail call fastcc void @mbedtls_internal_sha512_process(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = tail call i64 @llvm.bswap.i64(i64 %i.y)
  store i64 %i.z, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = tail call i64 @llvm.bswap.i64(i64 %i.ac)
  store i64 %i.ad, ptr %i.aa, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = tail call i64 @llvm.bswap.i64(i64 %i.ag)
  store i64 %i.ah, ptr %i.ae, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = tail call i64 @llvm.bswap.i64(i64 %i.ak)
  store i64 %i.al, ptr %i.ai, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = tail call i64 @llvm.bswap.i64(i64 %i.ao)
  store i64 %i.ap, ptr %i.am, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = tail call i64 @llvm.bswap.i64(i64 %i.as)
  store i64 %i.at, ptr %i.aq, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.av = load i32, ptr %i.au, align 8, !tbaa !13
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.e, label %mbedtls_sha512_free.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = tail call i64 @llvm.bswap.i64(i64 %i.ay)
  store i64 %i.az, ptr %i.aw, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = tail call i64 @llvm.bswap.i64(i64 %i.bc)
  store i64 %i.bd, ptr %i.ba, align 1
  br label %mbedtls_sha512_free.exit

mbedtls_sha512_free.exit:                         ; preds = %bb.d, %bb.e
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 216) #12
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_sha512(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.mbedtls_sha512_context, align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %or.cond = icmp ugt i32 %3, 1
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %3, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %4, i8 0, i64 216, i1 false)
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %bb.c ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %bb.b ]
  %i.c = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %bb.c ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %bb.b ]
  %i.d = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %bb.c ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %bb.b ]
  %i.e = phi <2 x i64> [ <i64 -2662702644619276377, i64 5167115440072839076>, %bb.c ], [ <i64 2270897969802886507, i64 6620516959819538809>, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x i64> %i.b, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <2 x i64> %i.c, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x i64> %i.d, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <2 x i64> %i.e, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 %3, ptr %i.j, align 8, !tbaa !13
  %i.k = icmp eq i64 %1, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %1, ptr %4, align 8, !tbaa !11
  %i.l = icmp ugt i64 %1, 127
  br i1 %i.l, label %.preheader.i, label %.thread62.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.0711.i.i = phi i64 [ %i.n, %.preheader.i ], [ %1, %bb.e ]
  %.0810.i.i = phi ptr [ %i.m, %.preheader.i ], [ %0, %bb.e ] ; 2 uses
  call fastcc void @mbedtls_internal_sha512_process(ptr noundef nonnull %4, ptr noundef %.0810.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 128
  %i.n = add i64 %.0711.i.i, -128                 ; 2 uses
  %i.o = icmp ugt i64 %i.n, 127
  br i1 %i.o, label %.preheader.i, label %bb.f, !llvm.loop !0

bb.f:                                             ; preds = %.preheader.i
  %i.p = and i64 %1, 127                          ; 2 uses
  %i.q = and i64 %1, -128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %.not52.i = icmp eq i64 %i.p, 0
  br i1 %.not52.i, label %bb.g, label %.thread62.i

.thread62.i:                                      ; preds = %bb.e, %bb.f
  %.1.lcssa.i17 = phi i64 [ %i.p, %bb.f ], [ %1, %bb.e ]
  %.140.lcssa.i16 = phi ptr [ %i.r, %bb.f ], [ %0, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 1 %.140.lcssa.i16, i64 %.1.lcssa.i17, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %.thread62.i
  %i.t = call i32 @mbedtls_sha512_finish(ptr noundef nonnull %4, ptr noundef %2) ; 0 uses
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %4, i64 noundef 216) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.08 = phi i32 [ 0, %bb.g ], [ -135, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mbedtls_sha512_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @mbedtls_sha512_common_self_test(i32 noundef %0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mbedtls_sha512_common_self_test(i32 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %2 = alloca %struct.mbedtls_sha512_context, align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.not = icmp eq i32 %1, 0                       ; 5 uses
  %i.b = select i1 %.not, ptr @sha512_test_sum, ptr @sha384_test_sum
  %i.c = tail call noalias dereferenceable_or_null(1024) ptr @calloc(i64 noundef 1024, i64 noundef 1) #13 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not47 = icmp eq i32 %0, 0
  br i1 %.not47, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, i8 0, i64 136, i1 false)
  %.not41 = icmp eq i32 %0, 0                     ; 5 uses
  %i.f = shl nuw nsw i32 %1, 7
  %i.g = sub nuw nsw i32 512, %i.f                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = shl nuw nsw i32 %1, 4
  %i.p = sub nuw nsw i32 64, %i.o
  %i.q = zext nneg i32 %i.p to i64                ; 3 uses
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.g, i32 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.s, align 8
  br i1 %.not, label %mbedtls_sha512_update.exit60, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %mbedtls_sha512_update.exit60

mbedtls_sha512_update.exit60:                     ; preds = %bb.g, %bb.f
  %i.t = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %bb.g ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %bb.f ]
  %i.u = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %bb.g ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %bb.f ]
  %i.v = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %bb.g ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %bb.f ]
  %i.w = phi <2 x i64> [ <i64 -2662702644619276377, i64 5167115440072839076>, %bb.g ], [ <i64 2270897969802886507, i64 6620516959819538809>, %bb.f ]
  store <2 x i64> %i.t, ptr %i.h, align 8, !tbaa !11
  store <2 x i64> %i.u, ptr %i.i, align 8, !tbaa !11
  store <2 x i64> %i.v, ptr %i.j, align 8, !tbaa !11
  store <2 x i64> %i.w, ptr %i.k, align 8, !tbaa !11
  store i32 %1, ptr %i.l, align 8, !tbaa !13
  store i64 3, ptr %2, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.m, ptr noundef nonnull align 16 dereferenceable(3) @sha_test_buf, i64 3, i1 false)
  %i.x = call i32 @mbedtls_sha512_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b, i64 %i.q)
  %.not45 = icmp eq i32 %bcmp, 0
  br i1 %.not45, label %bb.h, label %bb.w

bb.h:                                             ; preds = %mbedtls_sha512_update.exit60
  br i1 %.not41, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.g, i32 noundef 2) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8
  br i1 %.not, label %mbedtls_sha512_update.exit60.1, label %bb.j

bb.j:                                             ; preds = %.thread
  br label %mbedtls_sha512_update.exit60.1

mbedtls_sha512_update.exit60.1:                   ; preds = %bb.j, %.thread
  %3 = phi ptr [ getelementptr inbounds nuw (i8, ptr @sha384_test_sum, i64 64), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @sha512_test_sum, i64 64), %.thread ]
  %i.aa = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %bb.j ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %.thread ]
  %i.ab = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %bb.j ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %.thread ]
  %i.ac = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %bb.j ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %.thread ]
  %i.ad = phi <2 x i64> [ <i64 -2662702644619276377, i64 5167115440072839076>, %bb.j ], [ <i64 2270897969802886507, i64 6620516959819538809>, %.thread ]
  store <2 x i64> %i.aa, ptr %i.h, align 8, !tbaa !11
  store <2 x i64> %i.ab, ptr %i.i, align 8, !tbaa !11
  store <2 x i64> %i.ac, ptr %i.j, align 8, !tbaa !11
  store <2 x i64> %i.ad, ptr %i.k, align 8, !tbaa !11
  store i32 %1, ptr %i.l, align 8, !tbaa !13
  store i64 112, ptr %2, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 1 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @sha_test_buf, i64 113), i64 112, i1 false)
  %i.ae = call i32 @mbedtls_sha512_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %bcmp.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %3, i64 %i.q)
  %.not45.1 = icmp eq i32 %bcmp.1, 0
  br i1 %.not45.1, label %bb.k, label %bb.w

bb.k:                                             ; preds = %mbedtls_sha512_update.exit60.1
  br i1 %.not41, label %.thread72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %puts.1 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.g, i32 noundef 3) ; 0 uses
  br label %.thread72

.thread72:                                        ; preds = %bb.k, %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread72
  br label %bb.n

bb.n:                                             ; preds = %.thread72, %bb.m
  %i.ag = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %bb.m ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %.thread72 ]
  %i.ah = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %bb.m ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %.thread72 ]
  %i.ai = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %bb.m ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %.thread72 ]
  %i.aj = phi <2 x i64> [ <i64 -2662702644619276377, i64 5167115440072839076>, %bb.m ], [ <i64 2270897969802886507, i64 6620516959819538809>, %.thread72 ]
  store <2 x i64> %i.ag, ptr %i.h, align 8, !tbaa !11
  store <2 x i64> %i.ah, ptr %i.i, align 8, !tbaa !11
  store <2 x i64> %i.ai, ptr %i.j, align 8, !tbaa !11
  store <2 x i64> %i.aj, ptr %i.k, align 8, !tbaa !11
  store i32 %1, ptr %i.l, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %i.c, i8 97, i64 1000, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %mbedtls_sha512_update.exit.2, %bb.n
  %.066.2 = phi i32 [ 0, %bb.n ], [ %i.bd, %mbedtls_sha512_update.exit.2 ]
  %i.ak = load i64, ptr %2, align 8, !tbaa !11    ; 4 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 127                      ; 2 uses
  %i.an = sub nuw nsw i32 128, %i.am
  %i.ao = zext nneg i32 %i.an to i64              ; 3 uses
  %i.ap = add i64 %i.ak, 1000
  store i64 %i.ap, ptr %2, align 8, !tbaa !11
  %i.aq = icmp ugt i64 %i.ak, -1001
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !11
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.n, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not.i.2 = icmp eq i32 %i.am, 0
  br i1 %.not.i.2, label %.preheader.i.2, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = and i64 %i.ak, 127
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.c, i64 %i.ao, i1 false)
  call fastcc void @mbedtls_internal_sha512_process(ptr noundef nonnull %2, ptr noundef nonnull %i.m)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ao
  %i.aw = sub nuw nsw i64 1000, %i.ao
  br label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.r, %bb.q
  %.039.i.2 = phi ptr [ %i.av, %bb.r ], [ %i.c, %bb.q ] ; 2 uses
  %.038.i.2 = phi i64 [ %i.aw, %bb.r ], [ 1000, %bb.q ] ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.i.2
  %.0711.i.i.2 = phi i64 [ %i.ay, %bb.s ], [ %.038.i.2, %.preheader.i.2 ]
  %.0810.i.i.2 = phi ptr [ %i.ax, %bb.s ], [ %.039.i.2, %.preheader.i.2 ] ; 2 uses
  call fastcc void @mbedtls_internal_sha512_process(ptr noundef nonnull %2, ptr noundef %.0810.i.i.2)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0810.i.i.2, i64 128
  %i.ay = add nsw i64 %.0711.i.i.2, -128          ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 127
  br i1 %i.az, label %bb.s, label %bb.t, !llvm.loop !0

bb.t:                                             ; preds = %bb.s
  %i.ba = and i64 %.038.i.2, 127                  ; 2 uses
  %.not52.i.2 = icmp eq i64 %i.ba, 0
  br i1 %.not52.i.2, label %mbedtls_sha512_update.exit.2, label %.thread62.i.2

.thread62.i.2:                                    ; preds = %bb.t
  %i.bb = and i64 %.038.i.2, 896
  %i.bc = getelementptr inbounds nuw i8, ptr %.039.i.2, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 1 %i.bc, i64 %i.ba, i1 false)
  br label %mbedtls_sha512_update.exit.2

mbedtls_sha512_update.exit.2:                     ; preds = %.thread62.i.2, %bb.t
  %i.bd = add nuw nsw i32 %.066.2, 1              ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.bd, 1000
  br i1 %exitcond.2.not, label %mbedtls_sha512_update.exit60.2, label %bb.o, !llvm.loop !22

mbedtls_sha512_update.exit60.2:                   ; preds = %mbedtls_sha512_update.exit.2
  %i.be = call i32 @mbedtls_sha512_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %4 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @sha512_test_sum, i64 128), ptr getelementptr inbounds nuw (i8, ptr @sha384_test_sum, i64 128)
  %bcmp.2 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %4, i64 %i.q)
  %.not45.2 = icmp eq i32 %bcmp.2, 0
  br i1 %.not45.2, label %bb.u, label %bb.w

bb.u:                                             ; preds = %mbedtls_sha512_update.exit60.2
  br i1 %.not41, label %.thread73, label %bb.v

bb.v:                                             ; preds = %bb.u
  %puts.2 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.thread73

bb.w:                                             ; preds = %mbedtls_sha512_update.exit60.2, %mbedtls_sha512_update.exit60.1, %mbedtls_sha512_update.exit60
  br i1 %.not41, label %.thread73, label %bb.x

bb.x:                                             ; preds = %bb.w
  %puts46 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.thread73

.thread73:                                        ; preds = %bb.u, %bb.w, %bb.x, %bb.v
  %.4 = phi i32 [ 1, %bb.x ], [ 1, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %2, i64 noundef 216) #12
  call void @free(ptr noundef %i.c) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.c, %.thread73
  %.031 = phi i32 [ %.4, %.thread73 ], [ 1, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mbedtls_sha384_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @mbedtls_sha512_common_self_test(i32 noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

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

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"mbedtls_sha512_context", !5, i64 0, !5, i64 16, !5, i64 80, !6, i64 208}
!13 = !{!12, !6, i64 208}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!6, !6, i64 0}
!16 = !{i64 0, i64 16, !9, i64 16, i64 64, !9, i64 80, i64 128, !9, i64 208, i64 4, !15}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = !{!"", !10, i64 0, !10, i64 8, !5, i64 16, !5, i64 656}
!20 = !{!19, !10, i64 0}
!21 = !{!19, !10, i64 8}
!22 = distinct !{!22, !14}
end_hunk_0
