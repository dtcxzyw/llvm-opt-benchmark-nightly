Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/camellia?download=true
inline.NumInlined: 22
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 25
begin_hunk_0_@mbedtls_camellia_crypt_ecb:bb.a
  %.045 = phi i32 [ 0, %._crit_edge ], [ -135, %bb.a ]
  ret i32 %.045
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_camellia_crypt_cbc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 15
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 0
  %.not3758 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.c, label %.preheader44, label %.preheader47

.preheader47:                                     ; preds = %bb.c
  br i1 %.not3758, label %.loopexit, label %.preheader46.preheader

.preheader46.preheader:                           ; preds = %.preheader47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %mbedtls_xor.exit

.preheader44:                                     ; preds = %bb.c
  br i1 %.not3758, label %.loopexit, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.preheader44
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %mbedtls_xor.exit40

mbedtls_xor.exit40:                               ; preds = %mbedtls_xor.exit40, %.lr.ph62.preheader
  %.061 = phi ptr [ %i.k, %mbedtls_xor.exit40 ], [ %5, %.lr.ph62.preheader ] ; 5 uses
  %.03160 = phi ptr [ %i.j, %mbedtls_xor.exit40 ], [ %4, %.lr.ph62.preheader ] ; 3 uses
  %.03459 = phi i64 [ %i.l, %mbedtls_xor.exit40 ], [ %2, %.lr.ph62.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.03160, i64 16, i1 false)
  %i.f = tail call i32 @mbedtls_camellia_crypt_ecb(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %.03160, ptr noundef %.061) ; 0 uses
  %.0.copyload.i41 = load i64, ptr %.061, align 1
  %.0.copyload.i = load i64, ptr %3, align 1
  %i.g = xor i64 %.0.copyload.i, %.0.copyload.i41
  store i64 %i.g, ptr %.061, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.061, i64 8 ; 2 uses
  %.0.copyload.i41.1 = load i64, ptr %i.h, align 1
  %.0.copyload.i.1 = load i64, ptr %i.e, align 1
  %i.i = xor i64 %.0.copyload.i.1, %.0.copyload.i41.1
  store i64 %i.i, ptr %i.h, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.03160, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.061, i64 16
  %i.l = add i64 %.03459, -16                     ; 2 uses
  %.not37 = icmp eq i64 %i.l, 0
  br i1 %.not37, label %.loopexit, label %mbedtls_xor.exit40, !llvm.loop !17

mbedtls_xor.exit:                                 ; preds = %mbedtls_xor.exit, %.preheader46.preheader
  %.154 = phi ptr [ %i.s, %mbedtls_xor.exit ], [ %5, %.preheader46.preheader ] ; 6 uses
  %.13253 = phi ptr [ %i.r, %mbedtls_xor.exit ], [ %4, %.preheader46.preheader ] ; 3 uses
  %.13552 = phi i64 [ %i.t, %mbedtls_xor.exit ], [ %2, %.preheader46.preheader ]
  %.0.copyload.i43 = load i64, ptr %.13253, align 1
  %.0.copyload.i42 = load i64, ptr %3, align 1
  %i.m = xor i64 %.0.copyload.i42, %.0.copyload.i43
  store i64 %i.m, ptr %.154, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.13253, i64 8
  %.0.copyload.i43.1 = load i64, ptr %i.n, align 1
  %.0.copyload.i42.1 = load i64, ptr %i.d, align 1
  %i.o = xor i64 %.0.copyload.i42.1, %.0.copyload.i43.1
  %i.p = getelementptr inbounds nuw i8, ptr %.154, i64 8
  store i64 %i.o, ptr %i.p, align 1
  %i.q = tail call i32 @mbedtls_camellia_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %.154, ptr noundef nonnull %.154) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %.154, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.13253, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.154, i64 16
  %i.t = add i64 %.13552, -16                     ; 2 uses
  %.not36 = icmp eq i64 %i.t, 0
  br i1 %.not36, label %.loopexit, label %mbedtls_xor.exit, !llvm.loop !18

.loopexit:                                        ; preds = %mbedtls_xor.exit, %mbedtls_xor.exit40, %.preheader47, %.preheader44, %bb.b, %bb.a
  %.033 = phi i32 [ -38, %bb.b ], [ -135, %bb.a ], [ 0, %.preheader44 ], [ 0, %.preheader47 ], [ 0, %mbedtls_xor.exit40 ], [ 0, %mbedtls_xor.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_camellia_crypt_cfb128(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #7 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !19     ; 5 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 0
  %.not4249 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.c
  br i1 %.not4249, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not4249, label %.loopexit, label %.lr.ph53

.lr.ph53:                                         ; preds = %.preheader, %bb.e
  %.in55 = phi i64 [ %i.d, %bb.e ], [ %2, %.preheader ]
  %.052 = phi i64 [ %i.n, %bb.e ], [ %i.a, %.preheader ] ; 3 uses
  %.03451 = phi ptr [ %i.l, %bb.e ], [ %6, %.preheader ] ; 2 uses
  %.03650 = phi ptr [ %i.g, %bb.e ], [ %5, %.preheader ] ; 2 uses
  %i.d = add i64 %.in55, -1                       ; 2 uses
  %i.e = icmp eq i64 %.052, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph53
  %i.f = tail call i32 @mbedtls_camellia_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %4, ptr noundef %4) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph53
  %i.g = getelementptr inbounds nuw i8, ptr %.03650, i64 1
  %i.h = load i8, ptr %.03650, align 1, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.052 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10
  %i.k = xor i8 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %.03451, i64 1
  store i8 %i.k, ptr %.03451, align 1, !tbaa !10
  store i8 %i.h, ptr %i.i, align 1, !tbaa !10
  %i.m = add nuw nsw i64 %.052, 1
  %i.n = and i64 %i.m, 15                         ; 2 uses
  %.not42 = icmp eq i64 %i.d, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph53, !llvm.loop !21

.lr.ph:                                           ; preds = %.preheader43, %bb.g
  %.in = phi i64 [ %i.o, %bb.g ], [ %2, %.preheader43 ]
  %.148 = phi i64 [ %i.y, %bb.g ], [ %i.a, %.preheader43 ] ; 3 uses
  %.13547 = phi ptr [ %i.w, %bb.g ], [ %6, %.preheader43 ] ; 2 uses
  %.13746 = phi ptr [ %i.t, %bb.g ], [ %5, %.preheader43 ] ; 2 uses
  %i.o = add i64 %.in, -1                         ; 2 uses
  %i.p = icmp eq i64 %.148, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.q = tail call i32 @mbedtls_camellia_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %4, ptr noundef %4) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %.148 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %.13746, i64 1
  %i.u = load i8, ptr %.13746, align 1, !tbaa !10
  %i.v = xor i8 %i.u, %i.s                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.13547, i64 1
  store i8 %i.v, ptr %.13547, align 1, !tbaa !10
  store i8 %i.v, ptr %i.r, align 1, !tbaa !10
  %i.x = add nuw nsw i64 %.148, 1
  %i.y = and i64 %i.x, 15                         ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %bb.g, %bb.e, %.preheader43, %.preheader
  %.2 = phi i64 [ %i.n, %bb.e ], [ %i.a, %.preheader ], [ %i.a, %.preheader43 ], [ %i.y, %bb.g ]
  store i64 %.2, ptr %3, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.038 = phi i32 [ 0, %.loopexit ], [ -135, %bb.a ], [ -135, %bb.b ]
  ret i32 %.038
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_camellia_crypt_ctr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !19     ; 3 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not27 = icmp eq i64 %1, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.in = phi i64 [ %i.c, %.loopexit ], [ %1, %.preheader ]
  %.030 = phi i64 [ %i.r, %.loopexit ], [ %i.a, %.preheader ] ; 3 uses
  %.02029 = phi ptr [ %i.p, %.loopexit ], [ %6, %.preheader ] ; 2 uses
  %.02128 = phi ptr [ %i.k, %.loopexit ], [ %5, %.preheader ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = icmp eq i64 %.030, 0
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call i32 @mbedtls_camellia_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 16, %bb.b ] ; 3 uses
  %i.f = getelementptr i8, ptr %3, i64 %indvars.iv
  %i.g = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %i.i = add i8 %i.h, 1                           ; 2 uses
  store i8 %i.i, ptr %i.g, align 1, !tbaa !10
  %.not25 = icmp eq i8 %i.i, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.j = icmp samesign ugt i64 %indvars.iv, 1
  %or.cond = and i1 %.not25, %i.j
  br i1 %or.cond, label %bb.c, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %bb.c, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.02128, i64 1
  %i.l = load i8, ptr %.02128, align 1, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %.030
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = xor i8 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %.02029, i64 1
  store i8 %i.o, ptr %.02029, align 1, !tbaa !10
  %i.q = add nuw nsw i64 %.030, 1
  %i.r = and i64 %i.q, 15                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.0.lcssa = phi i64 [ %i.a, %.preheader ], [ %i.r, %.loopexit ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.022 = phi i32 [ 0, %._crit_edge ], [ -135, %bb.a ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mbedtls_camellia_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.mbedtls_camellia_context, align 4 ; 7 uses
  %2 = alloca %struct.mbedtls_camellia_context, align 4 ; 13 uses
  %i.a = alloca [32 x i8], align 16               ; 15 uses
  %i.b = alloca [64 x i8], align 16               ; 41 uses
  %i.c = alloca [16 x i8], align 16               ; 25 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %3 = alloca %struct.mbedtls_camellia_context, align 4 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %3, i8 0, i64 276, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not98 = icmp eq i32 %0, 0                     ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  br label %.backedge190

.backedge190:                                     ; preds = %.backedge190.backedge, %bb.a
  %.076149 = phi i32 [ 0, %bb.a ], [ %.076149.be, %.backedge190.backedge ] ; 4 uses
  %i.i = lshr i32 %.076149, 1                     ; 3 uses
  %i.j = and i32 %.076149, 1                      ; 2 uses
  %.pre = shl nuw nsw i32 %i.i, 6
  %.pre171 = add nuw nsw i32 %.pre, 128           ; 5 uses
  br i1 %.not98, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.backedge190
  %i.k = icmp eq i32 %i.j, 0
  %i.l = select i1 %i.k, ptr @.str.1, ptr @.str.2
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre171, ptr noundef nonnull %i.l) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.backedge190, %bb.b
  %i.n = zext nneg i32 %i.i to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr @camellia_test_ecb_key, i64 %i.n ; 3 uses
  %i.p = shl nuw nsw i32 %i.i, 3
  %i.q = add nuw nsw i32 %i.p, 16
  %i.r = zext nneg i32 %i.q to i64                ; 3 uses
  %i.s = icmp eq i32 %i.j, 0
  %i.t = getelementptr inbounds nuw [32 x i8], ptr @camellia_test_ecb_cipher, i64 %i.n ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 16 dereferenceable(1) %i.o, i64 %i.r, i1 false)
  br i1 %i.s, label %.split.us.preheader, label %.split80.preheader

.split80.preheader:                               ; preds = %._crit_edge
  %i.u = call i32 @mbedtls_camellia_setkey_enc(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef %.pre171) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.v = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @camellia_test_ecb_plain, ptr noundef nonnull %i.b) ; 0 uses
  %i.w = load i128, ptr %i.b, align 16
  %i.x = load i128, ptr %i.c, align 16
  %i.y = icmp ne i128 %i.w, %i.x
  %i.z = zext i1 %i.y to i32
  %.not101 = icmp eq i32 %i.z, 0
  br i1 %.not101, label %.split80.1, label %.split148.us

.split.us.preheader:                              ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %2, i8 0, i64 276, i1 false)
  %i.aa = call i32 @mbedtls_camellia_setkey_enc(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.a, i32 noundef %.pre171)
  %.not.i.us = icmp eq i32 %i.aa, 0
  br i1 %.not.i.us, label %.prol.preheader, label %mbedtls_camellia_setkey_dec.exit.us

.split.us.1:                                      ; preds = %mbedtls_camellia_setkey_dec.exit.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 16 dereferenceable(1) %i.ab, i64 %i.r, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %2, i8 0, i64 276, i1 false)
  %i.ac = call i32 @mbedtls_camellia_setkey_enc(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.a, i32 noundef %.pre171)
  %.not.i.us.1 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.us.1, label %.prol.preheader203, label %mbedtls_camellia_setkey_dec.exit.us.1

.prol.preheader203:                               ; preds = %.split.us.1
  %i.ad = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  store i32 %i.ad, ptr %3, align 4, !tbaa !8
  %i.ae = icmp eq i32 %i.ad, 4
  %i.af = select i1 %i.ae, i32 8, i32 0           ; 2 uses
  %i.ag = shl nuw nsw i32 %i.af, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah ; 2 uses
  %i.aj = load <4 x i32>, ptr %i.ai, align 4, !tbaa !11
  store <4 x i32> %i.aj, ptr %i.f, align 4, !tbaa !11
  %i.ak = or disjoint i32 %i.af, 22
  %i.al = zext nneg i32 %i.ak to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.prol.preheader203
  %.pn195.prol = phi ptr [ %i.ai, %.prol.preheader203 ], [ %.039.i.us.1.prol, %bb.c ]
  %.03237.i.us.1.prol = phi ptr [ %i.h, %.prol.preheader203 ], [ %i.am, %bb.c ] ; 2 uses
  %.03336.i.us.1.prol = phi i64 [ %i.al, %.prol.preheader203 ], [ %i.ao, %bb.c ]
  %prol.iter208 = phi i64 [ 0, %.prol.preheader203 ], [ %prol.iter208.next, %bb.c ]
  %.039.i.us.1.prol = getelementptr inbounds i8, ptr %.pn195.prol, i64 -8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03237.i.us.1.prol, i64 8 ; 2 uses
  %i.an = load <2 x i32>, ptr %.039.i.us.1.prol, align 4, !tbaa !11
  store <2 x i32> %i.an, ptr %.03237.i.us.1.prol, align 4, !tbaa !11
  %i.ao = add nsw i64 %.03336.i.us.1.prol, -1     ; 2 uses
  %prol.iter208.next = add i64 %prol.iter208, 1   ; 2 uses
  %prol.iter208.cmp.not = icmp eq i64 %prol.iter208.next, 6
  br i1 %prol.iter208.cmp.not, label %.new205, label %bb.c, !llvm.loop !25

.new205:                                          ; preds = %bb.c, %.new205
  %.pn195 = phi ptr [ %.039.i.us.1.7, %.new205 ], [ %.039.i.us.1.prol, %bb.c ] ; 9 uses
  %.03237.i.us.1 = phi ptr [ %i.bd, %.new205 ], [ %i.am, %bb.c ] ; 9 uses
  %.03336.i.us.1 = phi i64 [ %i.bf, %.new205 ], [ %i.ao, %bb.c ]
  %.039.i.us.1 = getelementptr inbounds i8, ptr %.pn195, i64 -8
  %i.ap = getelementptr inbounds nuw i8, ptr %.03237.i.us.1, i64 8
  %i.aq = load <2 x i32>, ptr %.039.i.us.1, align 4, !tbaa !11
  store <2 x i32> %i.aq, ptr %.03237.i.us.1, align 4, !tbaa !11
  %.039.i.us.1.1 = getelementptr inbounds i8, ptr %.pn195, i64 -16
  %i.ar = getelementptr inbounds nuw i8, ptr %.03237.i.us.1, i64 16
  %i.as = load <2 x i32>, ptr %.039.i.us.1.1, align 4, !tbaa !11
  store <2 x i32> %i.as, ptr %i.ap, align 4, !tbaa !11
  %.039.i.us.1.2 = getelementptr inbounds i8, ptr %.pn195, i64 -24
  %i.at = getelementptr inbounds nuw i8, ptr %.03237.i.us.1, i64 24
  %i.au = load <2 x i32>, ptr %.039.i.us.1.2, align 4, !tbaa !11
  store <2 x i32> %i.au, ptr %i.ar, align 4, !tbaa !11
  %.039.i.us.1.3 = getelementptr inbounds i8, ptr %.pn195, i64 -32
  %i.av = getelementptr inbounds nuw i8, ptr %.03237.i.us.1, i64 32
  %i.aw = load <2 x i32>, ptr %.039.i.us.1.3, align 4, !tbaa !11
  store <2 x i32> %i.aw, ptr %i.at, align 4, !tbaa !11
  %.039.i.us.1.4 = getelementptr inbounds i8, ptr %.pn195, i64 -40
  %i.ax = getelementptr inbounds nuw i8, ptr %.03237.i.us.1, i64 40
  %i.ay = load <2 x i32>, ptr %.039.i.us.1.4, align 4, !tbaa !11
  store <2 x i32> %i.ay, ptr %i.av, align 4, !tbaa !11
  %.039.i.us.1.5 = getelementptr inbounds i8, ptr %.pn195, i64 -48
  %i.az = getelementptr inbounds nuw i8, ptr %.03237.i.us.1, i64 48
  %i.ba = load <2 x i32>, ptr %.039.i.us.1.5, align 4, !tbaa !11
  store <2 x i32> %i.ba, ptr %i.ax, align 4, !tbaa !11
  %.039.i.us.1.6 = getelementptr inbounds i8, ptr %.pn195, i64 -56
  %i.bb = getelementptr inbounds nuw i8, ptr %.03237.i.us.1, i64 56
  %i.bc = load <2 x i32>, ptr %.039.i.us.1.6, align 4, !tbaa !11
  store <2 x i32> %i.bc, ptr %i.az, align 4, !tbaa !11
  %.039.i.us.1.7 = getelementptr inbounds i8, ptr %.pn195, i64 -64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.03237.i.us.1, i64 64 ; 2 uses
  %i.be = load <2 x i32>, ptr %.039.i.us.1.7, align 4, !tbaa !11
  store <2 x i32> %i.be, ptr %i.bb, align 4, !tbaa !11
  %i.bf = add nsw i64 %.03336.i.us.1, -8          ; 2 uses
  %.not34.i.us.1.7 = icmp eq i64 %i.bf, 0
  br i1 %.not34.i.us.1.7, label %.unr-lcssa209, label %.new205, !llvm.loop !14

.unr-lcssa209:                                    ; preds = %.new205
  %.039.i.us.1.6.le = getelementptr inbounds i8, ptr %.pn195, i64 -56
  %i.bg = getelementptr inbounds i8, ptr %.039.i.us.1.6.le, i64 -24
  %i.bh = load <4 x i32>, ptr %i.bg, align 4, !tbaa !11
  store <4 x i32> %i.bh, ptr %i.bd, align 4, !tbaa !11
  br label %mbedtls_camellia_setkey_dec.exit.us.1

mbedtls_camellia_setkey_dec.exit.us.1:            ; preds = %.unr-lcssa209, %.split.us.1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %2, i64 noundef 276) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @camellia_test_ecb_plain, i64 16), i64 16, i1 false)
  %i.bj = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.b) ; 0 uses
  %i.bk = load i128, ptr %i.b, align 16
  %i.bl = load i128, ptr %i.c, align 16
  %i.bm = icmp ne i128 %i.bk, %i.bl
  %i.bn = zext i1 %i.bm to i32
  %.not101.us.1 = icmp eq i32 %i.bn, 0
  br i1 %.not101.us.1, label %.split146.us, label %.split148.us

.prol.preheader:                                  ; preds = %.split.us.preheader
  %i.bo = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  store i32 %i.bo, ptr %3, align 4, !tbaa !8
  %i.bp = icmp eq i32 %i.bo, 4
  %i.bq = select i1 %i.bp, i32 8, i32 0           ; 2 uses
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bs ; 2 uses
  %i.bu = load <4 x i32>, ptr %i.bt, align 4, !tbaa !11
end_hunk_0
begin_hunk_1_@mbedtls_camellia_self_test:bb.a
  %i.ep = load <2 x i32>, ptr %.039.i105.1, align 4, !tbaa !11
  store <2 x i32> %i.ep, ptr %i.em, align 4, !tbaa !11
  %.039.i105.2 = getelementptr inbounds i8, ptr %.pn196, i64 -24
  %i.eq = getelementptr inbounds nuw i8, ptr %.03237.i107, i64 24
  %i.er = load <2 x i32>, ptr %.039.i105.2, align 4, !tbaa !11
  store <2 x i32> %i.er, ptr %i.eo, align 4, !tbaa !11
  %.039.i105.3 = getelementptr inbounds i8, ptr %.pn196, i64 -32
  %i.es = getelementptr inbounds nuw i8, ptr %.03237.i107, i64 32
  %i.et = load <2 x i32>, ptr %.039.i105.3, align 4, !tbaa !11
  store <2 x i32> %i.et, ptr %i.eq, align 4, !tbaa !11
  %.039.i105.4 = getelementptr inbounds i8, ptr %.pn196, i64 -40
  %i.eu = getelementptr inbounds nuw i8, ptr %.03237.i107, i64 40
  %i.ev = load <2 x i32>, ptr %.039.i105.4, align 4, !tbaa !11
  store <2 x i32> %i.ev, ptr %i.es, align 4, !tbaa !11
  %.039.i105.5 = getelementptr inbounds i8, ptr %.pn196, i64 -48
  %i.ew = getelementptr inbounds nuw i8, ptr %.03237.i107, i64 48
  %i.ex = load <2 x i32>, ptr %.039.i105.5, align 4, !tbaa !11
  store <2 x i32> %i.ex, ptr %i.eu, align 4, !tbaa !11
  %.039.i105.6 = getelementptr inbounds i8, ptr %.pn196, i64 -56
  %i.ey = getelementptr inbounds nuw i8, ptr %.03237.i107, i64 56
  %i.ez = load <2 x i32>, ptr %.039.i105.6, align 4, !tbaa !11
  store <2 x i32> %i.ez, ptr %i.ew, align 4, !tbaa !11
  %.039.i105.7 = getelementptr inbounds i8, ptr %.pn196, i64 -64 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.03237.i107, i64 64 ; 2 uses
  %i.fb = load <2 x i32>, ptr %.039.i105.7, align 4, !tbaa !11
  store <2 x i32> %i.fb, ptr %i.ey, align 4, !tbaa !11
  %i.fc = add nsw i64 %.03336.i108, -8            ; 2 uses
  %.not34.i110.7 = icmp eq i64 %i.fc, 0
  br i1 %.not34.i110.7, label %.unr-lcssa216, label %.new212, !llvm.loop !14

.unr-lcssa216:                                    ; preds = %.new212
  %.039.i105.6.le = getelementptr inbounds i8, ptr %.pn196, i64 -56
  %i.fd = getelementptr inbounds i8, ptr %.039.i105.6.le, i64 -24
  %i.fe = load <4 x i32>, ptr %i.fd, align 4, !tbaa !11
  store <4 x i32> %i.fe, ptr %i.fa, align 4, !tbaa !11
  br label %.split82.us.preheader

.split84.preheader:                               ; preds = %bb.i
  %i.ff = call i32 @mbedtls_camellia_setkey_enc(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef %i.dy) ; 0 uses
  %i.fg = getelementptr inbounds nuw [48 x i8], ptr @camellia_test_cbc_cipher, i64 %i.dr ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.fg, i64 16, i1 false)
  store i64 -7955251216295083925, ptr %i.b, align 16
  store i64 2673342122562958561, ptr %i.dj, align 8
  %i.fh = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull readonly %3, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 0 uses
  %i.fi = load i128, ptr %i.b, align 16
  %i.fj = load i128, ptr %i.c, align 16
  %i.fk = icmp ne i128 %i.fi, %i.fj
  %i.fl = zext i1 %i.fk to i32
  %.not96 = icmp eq i32 %i.fl, 0
  br i1 %.not96, label %.split84.1, label %.split155.us

.split82.us.preheader:                            ; preds = %.unr-lcssa216, %bb.j
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 276) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.fm = getelementptr inbounds nuw [48 x i8], ptr @camellia_test_cbc_cipher, i64 %i.dr ; 4 uses
  %.sroa.0.0.copyload219 = load <2 x i64>, ptr %i.fm, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @camellia_test_cbc_plain, i64 16, i1 false)
  %i.fn = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull readonly %3, i32 noundef 0, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.b) ; 0 uses
  %i.fo = load <2 x i64>, ptr %i.b, align 16
  %i.fp = xor <2 x i64> %i.fo, <i64 506097522914230528, i64 1084818905618843912>
  store <2 x i64> %i.fp, ptr %i.b, align 16
  %i.fq = load i128, ptr %i.b, align 16
  %i.fr = load i128, ptr %i.c, align 16
  %i.fs = icmp ne i128 %i.fq, %i.fr
  %i.ft = zext i1 %i.fs to i32
  %.not96.us = icmp eq i32 %i.ft, 0
  br i1 %.not96.us, label %.split82.us.1, label %.split155.us

.split82.us.1:                                    ; preds = %.split82.us.preheader
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %.sroa.0.0.copyload223 = load <2 x i64>, ptr %i.fu, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @camellia_test_cbc_plain, i64 16), i64 16, i1 false)
  %i.fv = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull readonly %3, i32 noundef 0, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.b) ; 0 uses
  %i.fw = load <2 x i64>, ptr %i.b, align 16
  %i.fx = xor <2 x i64> %i.fw, %.sroa.0.0.copyload219
  store <2 x i64> %i.fx, ptr %i.b, align 16
  %i.fy = load i128, ptr %i.b, align 16
  %i.fz = load i128, ptr %i.c, align 16
  %i.ga = icmp ne i128 %i.fy, %i.fz
  %i.gb = zext i1 %i.ga to i32
  %.not96.us.1 = icmp eq i32 %i.gb, 0
  br i1 %.not96.us.1, label %.split82.us.2, label %.split155.us

.split82.us.2:                                    ; preds = %.split82.us.1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @camellia_test_cbc_plain, i64 32), i64 16, i1 false)
  %i.gd = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull readonly %3, i32 noundef 0, ptr noundef nonnull %i.gc, ptr noundef nonnull %i.b) ; 0 uses
  %i.ge = load <2 x i64>, ptr %i.b, align 16
  %i.gf = xor <2 x i64> %i.ge, %.sroa.0.0.copyload223
  store <2 x i64> %i.gf, ptr %i.b, align 16
  %i.gg = load i128, ptr %i.b, align 16
  %i.gh = load i128, ptr %i.c, align 16
  %i.gi = icmp ne i128 %i.gg, %i.gh
  %i.gj = zext i1 %i.gi to i32
  %.not96.us.2 = icmp eq i32 %i.gj, 0
  br i1 %.not96.us.2, label %.split153.us, label %.split155.us

.split84.1:                                       ; preds = %.split84.preheader
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.gl = load <2 x i64>, ptr %i.c, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.gk, i64 16, i1 false)
  %i.gm = xor <2 x i64> %i.gl, <i64 -7157342278945985106, i64 5876827277545682846>
  store <2 x i64> %i.gm, ptr %i.b, align 16
  %i.gn = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull readonly %3, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 0 uses
  %i.go = load i128, ptr %i.b, align 16
  %i.gp = load i128, ptr %i.c, align 16
  %i.gq = icmp ne i128 %i.go, %i.gp
  %i.gr = zext i1 %i.gq to i32
  %.not96.1 = icmp eq i32 %i.gr, 0
  br i1 %.not96.1, label %.split84.2, label %.split155.us

.split84.2:                                       ; preds = %.split84.1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.gt = load <2 x i64>, ptr %i.c, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.gs, i64 16, i1 false)
  %i.gu = xor <2 x i64> %i.gt, <i64 1289257249660520496, i64 -1201887043336930331>
  store <2 x i64> %i.gu, ptr %i.b, align 16
  %i.gv = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull readonly %3, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 0 uses
  %i.gw = load i128, ptr %i.b, align 16
  %i.gx = load i128, ptr %i.c, align 16
  %i.gy = icmp ne i128 %i.gw, %i.gx
  %i.gz = zext i1 %i.gy to i32
  %.not96.2 = icmp eq i32 %i.gz, 0
  br i1 %.not96.2, label %.split153.us, label %.split155.us

.split155.us:                                     ; preds = %.split84.preheader, %.split84.1, %.split84.2, %.split82.us.preheader, %.split82.us.1, %.split82.us.2
  br i1 %.not98, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.split155.us
  %puts97 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.loopexit

.split153.us:                                     ; preds = %.split84.2, %.split82.us.2
  br i1 %.not98, label %bb.m, label %.thread181

bb.m:                                             ; preds = %.split153.us
  %i.ha = add nuw nsw i32 %.1156, 1               ; 2 uses
  %exitcond169.not = icmp eq i32 %i.ha, 6
  br i1 %exitcond169.not, label %.loopexit187.preheader, label %.backedge188.backedge

.backedge188.backedge:                            ; preds = %bb.m, %.thread181
  %.1156.be = phi i32 [ %i.ha, %bb.m ], [ %i.hb, %.thread181 ]
  br label %.backedge188, !llvm.loop !29

.thread181:                                       ; preds = %.split153.us
  %puts94 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.hb = add nuw nsw i32 %.1156, 1               ; 2 uses
  %exitcond169.not182 = icmp eq i32 %i.hb, 6
  br i1 %exitcond169.not182, label %bb.n, label %.backedge188.backedge

bb.n:                                             ; preds = %.thread181
  %putchar87 = call i32 @putchar(i32 10)          ; 0 uses
  br label %.loopexit187.preheader

.loopexit187.preheader:                           ; preds = %bb.m, %bb.n
  br label %.loopexit187

.loopexit187:                                     ; preds = %.loopexit187.backedge, %.loopexit187.preheader
  %.2157 = phi i32 [ 0, %.loopexit187.preheader ], [ %.2157.be, %.loopexit187.backedge ] ; 4 uses
  %i.hc = lshr i32 %.2157, 1
  %i.hd = and i32 %.2157, 1                       ; 2 uses
  br i1 %.not98, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit187
  %i.he = icmp eq i32 %i.hd, 0
  %i.hf = select i1 %i.he, ptr @.str.1, ptr @.str.2
  %i.hg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.hf) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit187
  %i.hh = zext nneg i32 %i.hc to i64              ; 7 uses
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr @camellia_test_ctr_nonce_counter, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.hi, i64 16, i1 false)
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr @camellia_test_ctr_key, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.hj, i64 16, i1 false)
  %i.hk = call i32 @mbedtls_camellia_setkey_enc(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef 128) ; 0 uses
  %i.hl = icmp eq i32 %i.hd, 0
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr @camellia_test_ctr_len, i64 %i.hh
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !11
  %i.ho = sext i32 %i.hn to i64                   ; 6 uses
  br i1 %i.hl, label %.preheader.i, label %.preheader.i114

.preheader.i:                                     ; preds = %bb.p
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr @camellia_test_ctr_ct, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.hp, i64 %i.ho, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.loopexit.i
  %.in.i = phi i64 [ %i.hq, %.loopexit.i ], [ %i.ho, %.preheader.i ]
  %.030.i = phi i64 [ %i.ie, %.loopexit.i ], [ 0, %.preheader.i ] ; 3 uses
  %.02029.i = phi ptr [ %i.hy, %.loopexit.i ], [ %i.b, %.preheader.i ] ; 3 uses
  %i.hq = add i64 %.in.i, -1                      ; 2 uses
  %i.hr = icmp eq i64 %.030.i, 0
  br i1 %i.hr, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.hs = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull readonly %3, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 16, %bb.q ] ; 3 uses
  %i.ht = getelementptr i8, ptr %i.d, i64 %indvars.iv.i
  %i.hu = getelementptr i8, ptr %i.ht, i64 -1     ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !10
  %i.hw = add i8 %i.hv, 1                         ; 2 uses
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !10
  %.not25.i = icmp eq i8 %i.hw, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.hx = icmp samesign ugt i64 %indvars.iv.i, 1
  %or.cond.i = and i1 %i.hx, %.not25.i
  br i1 %or.cond.i, label %bb.r, label %.loopexit.i, !llvm.loop !23

.loopexit.i:                                      ; preds = %bb.r, %.lr.ph.i
  %i.hy = getelementptr i8, ptr %.02029.i, i64 1
  %i.hz = load i8, ptr %.02029.i, align 1, !tbaa !10
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 %.030.i
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !10
  %i.ic = xor i8 %i.ib, %i.hz
  store i8 %i.ic, ptr %.02029.i, align 1, !tbaa !10
  %i.id = add nuw nsw i64 %.030.i, 1
  %i.ie = and i64 %i.id, 15
  %.not.i113 = icmp eq i64 %i.hq, 0
  br i1 %.not.i113, label %mbedtls_camellia_crypt_ctr.exit, label %.lr.ph.i, !llvm.loop !24

mbedtls_camellia_crypt_ctr.exit:                  ; preds = %.loopexit.i
  %i.if = getelementptr inbounds nuw [48 x i8], ptr @camellia_test_ctr_pt, i64 %i.hh
  %bcmp90 = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.if, i64 %i.ho)
  %.not91 = icmp eq i32 %bcmp90, 0
  br i1 %.not91, label %bb.y, label %bb.s

bb.s:                                             ; preds = %mbedtls_camellia_crypt_ctr.exit
  br i1 %.not98, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %puts93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.loopexit

.preheader.i114:                                  ; preds = %bb.p
  %i.ig = getelementptr inbounds nuw [48 x i8], ptr @camellia_test_ctr_pt, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.ig, i64 %i.ho, i1 false)
  br label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.preheader.i114, %.loopexit.i121
  %.in.i117 = phi i64 [ %i.ih, %.loopexit.i121 ], [ %i.ho, %.preheader.i114 ]
  %.030.i118 = phi i64 [ %i.iv, %.loopexit.i121 ], [ 0, %.preheader.i114 ] ; 3 uses
  %.02029.i119 = phi ptr [ %i.ip, %.loopexit.i121 ], [ %i.b, %.preheader.i114 ] ; 3 uses
  %i.ih = add i64 %.in.i117, -1                   ; 2 uses
  %i.ii = icmp eq i64 %.030.i118, 0
  br i1 %i.ii, label %bb.u, label %.loopexit.i121

bb.u:                                             ; preds = %.lr.ph.i116
  %i.ij = call i32 @mbedtls_camellia_crypt_ecb(ptr noundef nonnull readonly %3, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.i126 = phi i64 [ %indvars.iv.next.i128, %bb.v ], [ 16, %bb.u ] ; 3 uses
  %i.ik = getelementptr i8, ptr %i.d, i64 %indvars.iv.i126
  %i.il = getelementptr i8, ptr %i.ik, i64 -1     ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !10
  %i.in = add i8 %i.im, 1                         ; 2 uses
  store i8 %i.in, ptr %i.il, align 1, !tbaa !10
  %.not25.i127 = icmp eq i8 %i.in, 0
  %indvars.iv.next.i128 = add nsw i64 %indvars.iv.i126, -1
  %i.io = icmp samesign ugt i64 %indvars.iv.i126, 1
  %or.cond.i128 = and i1 %i.io, %.not25.i127
  br i1 %or.cond.i128, label %bb.v, label %.loopexit.i121, !llvm.loop !23

.loopexit.i121:                                   ; preds = %bb.v, %.lr.ph.i116
  %i.ip = getelementptr i8, ptr %.02029.i119, i64 1
  %i.iq = load i8, ptr %.02029.i119, align 1, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %i.e, i64 %.030.i118
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !10
  %i.it = xor i8 %i.is, %i.iq
  store i8 %i.it, ptr %.02029.i119, align 1, !tbaa !10
  %i.iu = add nuw nsw i64 %.030.i118, 1
  %i.iv = and i64 %i.iu, 15
  %.not.i122 = icmp eq i64 %i.ih, 0
  br i1 %.not.i122, label %mbedtls_camellia_crypt_ctr.exit129, label %.lr.ph.i116, !llvm.loop !24

mbedtls_camellia_crypt_ctr.exit129:               ; preds = %.loopexit.i121
  %i.iw = getelementptr inbounds nuw [48 x i8], ptr @camellia_test_ctr_ct, i64 %i.hh
  %bcmp = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.iw, i64 %i.ho)
  %.not89 = icmp eq i32 %bcmp, 0
  br i1 %.not89, label %bb.y, label %bb.w

bb.w:                                             ; preds = %mbedtls_camellia_crypt_ctr.exit129
  br i1 %.not98, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.loopexit

bb.y:                                             ; preds = %mbedtls_camellia_crypt_ctr.exit129, %mbedtls_camellia_crypt_ctr.exit
  br i1 %.not98, label %bb.z, label %.thread184

bb.z:                                             ; preds = %bb.y
  %i.ix = add nuw nsw i32 %.2157, 1               ; 2 uses
  %exitcond170.not = icmp eq i32 %i.ix, 6
  br i1 %exitcond170.not, label %.loopexit, label %.loopexit187.backedge

.loopexit187.backedge:                            ; preds = %bb.z, %.thread184
  %.2157.be = phi i32 [ %i.ix, %bb.z ], [ %i.iy, %.thread184 ]
  br label %.loopexit187, !llvm.loop !30

.thread184:                                       ; preds = %bb.y
  %puts92 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.iy = add nuw nsw i32 %.2157, 1               ; 2 uses
  %exitcond170.not185 = icmp eq i32 %i.iy, 6
  br i1 %exitcond170.not185, label %bb.aa, label %.loopexit187.backedge

bb.aa:                                            ; preds = %.thread184
  %putchar88 = call i32 @putchar(i32 10)          ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.aa, %bb.w, %bb.x, %bb.s, %bb.t, %.split155.us, %bb.l, %.split148.us, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 1, %.split148.us ], [ 1, %bb.l ], [ 1, %.split155.us ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.x ], [ 1, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.z ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %3, i64 noundef 276) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"mbedtls_camellia_context", !5, i64 0, !6, i64 4}
!10 = !{!6, !6, i64 0}
!11 = !{!5, !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
end_hunk_1
