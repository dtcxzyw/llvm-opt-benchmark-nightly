Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/aes?download=true
inline.NumInlined: 33
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@mbedtls_internal_aes_decrypt:bb.a
  %i.or = xor i32 %i.oj, %i.oq
  %i.os = lshr i32 %i.li, 24
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !14
  %i.ow = zext i8 %i.ov to i32
  %i.ox = shl nuw i32 %i.ow, 24
  %i.oy = xor i32 %i.or, %i.ox                    ; 2 uses
  store i32 %i.oy, ptr %i.hm, align 4, !tbaa !10
  %i.oz = load i32, ptr %i.nu, align 4, !tbaa !10
  %i.pa = and i32 %i.li, 255
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !14
  %i.pe = zext i8 %i.pd to i32
  %i.pf = xor i32 %i.oz, %i.pe
  %i.pg = lshr i32 %i.kj, 8
  %i.ph = and i32 %i.pg, 255
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !14
  %i.pl = zext i8 %i.pk to i32
  %i.pm = shl nuw nsw i32 %i.pl, 8
  %i.pn = xor i32 %i.pf, %i.pm
  %i.po = lshr i32 %i.jk, 16
  %i.pp = and i32 %i.po, 255
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !14
  %i.pt = zext i8 %i.ps to i32
  %i.pu = shl nuw nsw i32 %i.pt, 16
  %i.pv = xor i32 %i.pn, %i.pu
  %i.pw = lshr i32 %i.il, 24
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !14
  %i.qa = zext i8 %i.pz to i32
  %i.qb = shl nuw i32 %i.qa, 24
  %i.qc = xor i32 %i.pv, %i.qb                    ; 2 uses
  store i32 %i.qc, ptr %i.hl, align 4, !tbaa !10
  store i32 %i.mo, ptr %2, align 1
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.nt, ptr %i.qd, align 1
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.oy, ptr %i.qe, align 1
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.qc, ptr %i.qf, align 1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %3, i64 noundef 32) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #10
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @mbedtls_internal_aes_decrypt(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.f ], [ %i.b, %bb.c ], [ 0, %bb.e ], [ -33, %bb.a ]
  ret i32 %.0
}

declare i32 @mbedtls_aesni_crypt_ecb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_cbc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %2, 15
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %.preheader66.preheader, label %mbedtls_xor_no_simd.exit

.preheader66.preheader:                           ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader66

.preheader66:                                     ; preds = %.preheader66.preheader, %mbedtls_xor_no_simd.exit53
  %.03883 = phi ptr [ %i.m, %mbedtls_xor_no_simd.exit53 ], [ %5, %.preheader66.preheader ] ; 6 uses
  %.03982 = phi ptr [ %i.l, %mbedtls_xor_no_simd.exit53 ], [ %4, %.preheader66.preheader ] ; 4 uses
  %.04281 = phi i64 [ %i.n, %mbedtls_xor_no_simd.exit53 ], [ %2, %.preheader66.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.03982, i64 16, i1 false)
  %i.f = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %mbedtls_aes_crypt_ecb.exit

bb.e:                                             ; preds = %.preheader66
  %i.g = tail call i32 @mbedtls_internal_aes_decrypt(ptr noundef %0, ptr noundef nonnull %.03982, ptr noundef %.03883) ; 0 uses
  br label %mbedtls_xor_no_simd.exit53

mbedtls_aes_crypt_ecb.exit:                       ; preds = %.preheader66
  %i.h = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %.03982, ptr noundef %.03883) #10 ; 2 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %mbedtls_xor_no_simd.exit53, label %.loopexit

mbedtls_xor_no_simd.exit53:                       ; preds = %mbedtls_aes_crypt_ecb.exit, %bb.e
  %.0.copyload.i54 = load i64, ptr %.03883, align 1
  %.0.copyload.i = load i64, ptr %3, align 1
  %i.i = xor i64 %.0.copyload.i, %.0.copyload.i54
  store i64 %i.i, ptr %.03883, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.03883, i64 8 ; 2 uses
  %.0.copyload.i54.1 = load i64, ptr %i.j, align 1
  %.0.copyload.i.1 = load i64, ptr %i.e, align 1
  %i.k = xor i64 %.0.copyload.i.1, %.0.copyload.i54.1
  store i64 %i.k, ptr %i.j, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.03982, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.03883, i64 16
  %i.n = add i64 %.04281, -16                     ; 2 uses
  %.not49 = icmp eq i64 %i.n, 0
  br i1 %.not49, label %.loopexit, label %.preheader66, !llvm.loop !31

mbedtls_xor_no_simd.exit:                         ; preds = %bb.d, %bb.f
  %.077 = phi ptr [ %.176, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.176 = phi ptr [ %i.x, %bb.f ], [ %5, %bb.d ]  ; 9 uses
  %.14075 = phi ptr [ %i.w, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %.14374 = phi i64 [ %i.y, %bb.f ], [ %2, %bb.d ]
  %.0.copyload.i56 = load i64, ptr %.14075, align 1
  %.0.copyload.i55 = load i64, ptr %.077, align 1
  %i.o = xor i64 %.0.copyload.i55, %.0.copyload.i56
  store i64 %i.o, ptr %.176, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.14075, i64 8
  %.0.copyload.i56.1 = load i64, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.077, i64 8
  %.0.copyload.i55.1 = load i64, ptr %i.q, align 1
  %i.r = xor i64 %.0.copyload.i55.1, %.0.copyload.i56.1
  %i.s = getelementptr inbounds nuw i8, ptr %.176, i64 8
  store i64 %i.r, ptr %i.s, align 1
  %i.t = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i59 = icmp eq i32 %i.t, 0
  br i1 %.not.i59, label %mbedtls_aes_crypt_ecb.exit61.thread, label %mbedtls_aes_crypt_ecb.exit61

mbedtls_aes_crypt_ecb.exit61.thread:              ; preds = %mbedtls_xor_no_simd.exit
  %i.u = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %.176, ptr noundef nonnull %.176) ; 0 uses
  br label %bb.f

mbedtls_aes_crypt_ecb.exit61:                     ; preds = %mbedtls_xor_no_simd.exit
  %i.v = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %.176, ptr noundef nonnull %.176) #10 ; 2 uses
  %.not48 = icmp eq i32 %i.v, 0
  br i1 %.not48, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %mbedtls_aes_crypt_ecb.exit61.thread, %mbedtls_aes_crypt_ecb.exit61
  %i.w = getelementptr inbounds nuw i8, ptr %.14075, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.176, i64 16
  %i.y = add i64 %.14374, -16                     ; 2 uses
  %.not47 = icmp eq i64 %i.y, 0
  br i1 %.not47, label %bb.g, label %mbedtls_xor_no_simd.exit, !llvm.loop !32

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %.176, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_aes_crypt_ecb.exit61, %mbedtls_aes_crypt_ecb.exit, %mbedtls_xor_no_simd.exit53, %bb.g, %bb.c, %bb.b, %bb.a
  %.041 = phi i32 [ -34, %bb.c ], [ -33, %bb.a ], [ 0, %bb.b ], [ 0, %bb.g ], [ %i.h, %mbedtls_aes_crypt_ecb.exit ], [ 0, %mbedtls_xor_no_simd.exit53 ], [ %i.v, %mbedtls_aes_crypt_ecb.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_xts(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 27 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = lshr i64 %2, 4                           ; 2 uses
  %i.f = and i64 %2, 15                           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %2, -16777217
  %or.cond64 = icmp ult i64 %i.g, -16777201
  br i1 %or.cond64, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.i = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i93 = icmp eq i32 %i.i, 0
  br i1 %.not.i93, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_ecb.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.c
  %i.j = call i32 @mbedtls_internal_aes_encrypt(ptr noundef nonnull %i.h, ptr noundef %3, ptr noundef nonnull %i.a) ; 0 uses
  br label %.preheader111

mbedtls_aes_crypt_ecb.exit:                       ; preds = %bb.c
  %i.k = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.preheader111, label %.critedge

.preheader111:                                    ; preds = %mbedtls_aes_crypt_ecb.exit.thread, %mbedtls_aes_crypt_ecb.exit
  %.not60120 = icmp eq i64 %i.e, 0
  br i1 %.not60120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader111
  %i.l = icmp ne i64 %i.f, 0
  %i.m = icmp eq i32 %1, 0                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.0.copyload.i.pre.pre = load i64, ptr %i.a, align 16
  %.0.copyload.i.1.pre.pre = load i64, ptr %i.n, align 8
  %invariant.op = and i1 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %mbedtls_aes_crypt_ecb.exit97.thread
  %.0.copyload.i.1.pre = phi i64 [ %.0.copyload.i.1.pre.pre, %.lr.ph ], [ %i.au, %mbedtls_aes_crypt_ecb.exit97.thread ] ; 3 uses
  %.0.copyload.i.pre = phi i64 [ %.0.copyload.i.pre.pre, %.lr.ph ], [ %i.at, %mbedtls_aes_crypt_ecb.exit97.thread ] ; 3 uses
  %.in = phi i64 [ %i.e, %.lr.ph ], [ %i.p, %mbedtls_aes_crypt_ecb.exit97.thread ]
  %.053122 = phi ptr [ %5, %.lr.ph ], [ %i.av, %mbedtls_aes_crypt_ecb.exit97.thread ] ; 2 uses
  %.054121 = phi ptr [ %4, %.lr.ph ], [ %i.aw, %mbedtls_aes_crypt_ecb.exit97.thread ] ; 3 uses
  %i.p = add nsw i64 %.in, -1                     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  %spec.select.reass.reass = and i1 %i.q, %invariant.op
  br i1 %spec.select.reass.reass, label %bb.e, label %.preheader110, !prof !43

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.r = shl i64 %.0.copyload.i.pre, 1
  %i.s = lshr i64 %.0.copyload.i.1.pre, 60
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 8
  %i.v = xor i32 %i.u, 8
  %i.w = lshr i32 135, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = xor i64 %i.r, %i.x                       ; 2 uses
  %i.z = call i64 @llvm.fshl.i64(i64 %.0.copyload.i.1.pre, i64 %.0.copyload.i.pre, i64 1) ; 2 uses
  store i64 %i.y, ptr %i.a, align 16
  store i64 %i.z, ptr %i.n, align 8
  br label %.preheader110

.preheader110:                                    ; preds = %bb.e, %bb.d
  %.0.copyload.i.1 = phi i64 [ %i.z, %bb.e ], [ %.0.copyload.i.1.pre, %bb.d ]
  %.0.copyload.i = phi i64 [ %i.y, %bb.e ], [ %.0.copyload.i.pre, %bb.d ]
  %.0.copyload.i81 = load i64, ptr %.054121, align 1
  %i.aa = xor i64 %.0.copyload.i, %.0.copyload.i81
  store i64 %i.aa, ptr %i.c, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.054121, i64 8
  %.0.copyload.i81.1 = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.1, %.0.copyload.i81.1
  store i64 %i.ac, ptr %i.o, align 8
  %i.ad = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i95 = icmp eq i32 %i.ad, 0
  br i1 %.not.i95, label %bb.f, label %mbedtls_aes_crypt_ecb.exit97

bb.f:                                             ; preds = %.preheader110
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @mbedtls_internal_aes_decrypt(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_ecb.exit97.thread

bb.h:                                             ; preds = %bb.f
  %i.af = call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_ecb.exit97.thread

mbedtls_aes_crypt_ecb.exit97:                     ; preds = %.preheader110
  %i.ag = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not63 = icmp eq i32 %i.ag, 0
  br i1 %.not63, label %mbedtls_aes_crypt_ecb.exit97.thread, label %.critedge

mbedtls_aes_crypt_ecb.exit97.thread:              ; preds = %bb.g, %bb.h, %mbedtls_aes_crypt_ecb.exit97
  %i.ah = load <2 x i64>, ptr %i.c, align 16
  %i.ai = load <2 x i64>, ptr %i.a, align 16      ; 3 uses
  %i.aj = xor <2 x i64> %i.ai, %i.ah
  store <2 x i64> %i.aj, ptr %.053122, align 1
  %i.ak = extractelement <2 x i64> %i.ai, i64 0   ; 2 uses
  %i.al = shl i64 %i.ak, 1
  %i.am = extractelement <2 x i64> %i.ai, i64 1   ; 2 uses
  %i.an = lshr i64 %i.am, 60
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 8
  %i.aq = xor i32 %i.ap, 8
  %i.ar = lshr i32 135, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = xor i64 %i.al, %i.as                    ; 2 uses
  %i.au = call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.ak, i64 1) ; 2 uses
  store i64 %i.at, ptr %i.a, align 16
  store i64 %i.au, ptr %i.n, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.053122, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.054121, i64 16 ; 2 uses
  br i1 %i.q, label %._crit_edge, label %bb.d, !llvm.loop !33

._crit_edge:                                      ; preds = %mbedtls_aes_crypt_ecb.exit97.thread, %.preheader111
  %.054.lcssa = phi ptr [ %4, %.preheader111 ], [ %i.aw, %mbedtls_aes_crypt_ecb.exit97.thread ] ; 6 uses
  %.053.lcssa = phi ptr [ %5, %.preheader111 ], [ %i.av, %mbedtls_aes_crypt_ecb.exit97.thread ] ; 8 uses
  %.054.lcssa167 = ptrtoaddr ptr %.053.lcssa to i64
  %.not61 = icmp eq i64 %i.f, 0
  br i1 %.not61, label %.critedge, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds i8, ptr %.053.lcssa, i64 -16 ; 7 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.ay = icmp samesign ult i64 %i.f, 4
  br i1 %i.ay, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %2, 12
  br label %bb.k

.preheader108.unr-lcssa:                          ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader108, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader108.unr-lcssa, %bb.i
  %.0124.epil.init = phi i64 [ 0, %bb.i ], [ %i.bv, %.preheader108.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod217)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.0124.epil = phi i64 [ %.0124.epil.init, %.epil.preheader ], [ %i.bc, %bb.j ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0124.epil
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %.0124.epil
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !14
  %i.bc = add nuw nsw i64 %.0124.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader108, label %bb.j, !llvm.loop !34

.preheader108:                                    ; preds = %bb.j, %.preheader108.unr-lcssa
  %.0124.lcssa = phi i64 [ %i.br, %.preheader108.unr-lcssa ], [ %.0124.epil, %bb.j ] ; 2 uses
  %i.bd = icmp eq i32 %1, 0                       ; 3 uses
  %i.be = select i1 %i.bd, ptr %i.b, ptr %i.a     ; 8 uses
  %.not.i70125 = icmp samesign ult i64 %i.f, 8
  br i1 %.not.i70125, label %.preheader107, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.preheader108
  %.0.copyload.i85 = load i64, ptr %.054.lcssa, align 1
  %.0.copyload.i84 = load i64, ptr %i.be, align 16
  %i.bf = xor i64 %.0.copyload.i84, %.0.copyload.i85
  store i64 %i.bf, ptr %i.c, align 16
  br label %.preheader107

bb.k:                                             ; preds = %bb.k, %.new
  %.0124 = phi i64 [ 0, %.new ], [ %i.bv, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0124
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %.0124
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !14
  %i.bj = or disjoint i64 %.0124, 1               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !14
  %i.bn = or disjoint i64 %.0124, 2               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !14
  %i.br = or disjoint i64 %.0124, 3               ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !14
  %i.bv = add nuw nsw i64 %.0124, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader108.unr-lcssa, label %bb.k, !llvm.loop !35

.preheader107:                                    ; preds = %.lr.ph127.preheader, %.preheader108
  %.0.i69.lcssa = phi i64 [ 0, %.preheader108 ], [ 8, %.lr.ph127.preheader ] ; 4 uses
  %i.bw = icmp samesign ult i64 %.0.i69.lcssa, %i.f
  br i1 %i.bw, label %.lr.ph130.preheader, label %mbedtls_xor.exit72

.lr.ph130.preheader:                              ; preds = %.preheader107
  %xtraiter218 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol

.lr.ph130.prol:                                   ; preds = %.lr.ph130.preheader, %.lr.ph130.prol
  %.1.i71129.prol = phi i64 [ %i.cd, %.lr.ph130.prol ], [ %.0.i69.lcssa, %.lr.ph130.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph130.prol ], [ 0, %.lr.ph130.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %.1.i71129.prol
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.i71129.prol
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = xor i8 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i71129.prol
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !14
  %i.cd = add nuw nsw i64 %.1.i71129.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter218
  br i1 %prol.iter.cmp.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol, !llvm.loop !36

.lr.ph130.prol.loopexit:                          ; preds = %.lr.ph130.prol, %.lr.ph130.preheader
  %.1.i71129.unr = phi i64 [ %.0.i69.lcssa, %.lr.ph130.preheader ], [ %i.cd, %.lr.ph130.prol ]
  %i.ce = sub nsw i64 %.0.i69.lcssa, %i.f
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %mbedtls_xor.exit72, label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.prol.loopexit, %.lr.ph130
  %.1.i71129 = phi i64 [ %i.dh, %.lr.ph130 ], [ %.1.i71129.unr, %.lr.ph130.prol.loopexit ] ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %.1.i71129
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.i71129
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.ck = xor i8 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i71129
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !14
  %i.cm = add nuw nsw i64 %.1.i71129, 1           ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !14
  %i.cr = xor i8 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cm
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !14
  %i.ct = add nuw nsw i64 %.1.i71129, 2           ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ct
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %i.cy = xor i8 %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ct
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !14
  %i.da = add nuw nsw i64 %.1.i71129, 3           ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.da
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.df = xor i8 %i.de, %i.dc
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.da
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !14
  %i.dh = add nuw nsw i64 %.1.i71129, 4           ; 2 uses
  %exitcond146.not.3 = icmp eq i64 %i.dh, %i.f
  br i1 %exitcond146.not.3, label %mbedtls_xor.exit72, label %.lr.ph130, !llvm.loop !37

mbedtls_xor.exit72:                               ; preds = %.lr.ph130.prol.loopexit, %.lr.ph130, %.preheader107
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f ; 8 uses
  %i.dl = sub nsw i64 15, %.0124.lcssa            ; 3 uses
  %.not.i66131 = icmp ult i64 %i.dl, 8
  br i1 %.not.i66131, label %.preheader106, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %mbedtls_xor.exit72
  %i.dm = sub i64 7, %.0124.lcssa                 ; 2 uses
  %i.dn = lshr i64 %i.dm, 3
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %xtraiter220 = and i64 %i.do, 3                 ; 3 uses
  %i.dp = icmp ult i64 %i.dm, 24
  br i1 %i.dp, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter225 = and i64 %i.do, 4611686018427387900
  br label %.lr.ph133

.preheader106.loopexit.unr-lcssa:                 ; preds = %.lr.ph133
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %.preheader106, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %.preheader106.loopexit.unr-lcssa, %.lr.ph133.preheader
  %.epil.init = phi i64 [ 8, %.lr.ph133.preheader ], [ %i.fl, %.preheader106.loopexit.unr-lcssa ]
  %.0.i65132.epil.init = phi i64 [ 0, %.lr.ph133.preheader ], [ %i.fg, %.preheader106.loopexit.unr-lcssa ]
  %lcmp.mod224 = icmp ne i64 %xtraiter220, 0
  call void @llvm.assume(i1 %lcmp.mod224)
  br label %.lr.ph133.epil

.lr.ph133.epil:                                   ; preds = %.lr.ph133.epil, %.lr.ph133.epil.preheader
  %i.dq = phi i64 [ %i.dv, %.lr.ph133.epil ], [ %.epil.init, %.lr.ph133.epil.preheader ] ; 3 uses
  %.0.i65132.epil = phi i64 [ %i.dq, %.lr.ph133.epil ], [ %.0.i65132.epil.init, %.lr.ph133.epil.preheader ] ; 3 uses
  %epil.iter221 = phi i64 [ %epil.iter221.next, %.lr.ph133.epil ], [ 0, %.lr.ph133.epil.preheader ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.0.i65132.epil
  %.0.copyload.i87.epil = load i64, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.0.i65132.epil
  %.0.copyload.i86.epil = load i64, ptr %i.ds, align 1
  %i.dt = xor i64 %.0.copyload.i86.epil, %.0.copyload.i87.epil
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 %.0.i65132.epil
  store i64 %i.dt, ptr %i.du, align 1
  %i.dv = add nuw nsw i64 %i.dq, 8
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.preheader106, label %.lr.ph133.epil, !llvm.loop !38

.preheader106:                                    ; preds = %.preheader106.loopexit.unr-lcssa, %.lr.ph133.epil, %mbedtls_xor.exit72
  %.0.i65.lcssa = phi i64 [ 0, %mbedtls_xor.exit72 ], [ %i.fg, %.preheader106.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph133.epil ] ; 8 uses
  %i.dw = icmp ult i64 %.0.i65.lcssa, %i.dl
  br i1 %i.dw, label %iter.check198, label %mbedtls_xor.exit68

iter.check198:                                    ; preds = %.preheader106
  %i.dx = sub nuw nsw i64 16, %i.f
  %i.dy = or disjoint i64 %.0.i65.lcssa, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.dx, i64 %i.dy) ; 2 uses
  %i.dz = sub nsw i64 %umax, %.0.i65.lcssa        ; 6 uses
  %min.iters.check185 = icmp ult i64 %i.dz, 4
  %i.ea = sub i64 %i.d, %.054.lcssa167
  %diff.check182 = icmp ugt i64 %i.ea, -16
  %or.cond212 = select i1 %min.iters.check185, i1 true, i1 %diff.check182
  br i1 %or.cond212, label %.lr.ph136.preheader, label %vector.main.loop.iter.check186

vector.main.loop.iter.check186:                   ; preds = %iter.check198
  %min.iters.check187 = icmp ult i64 %i.dz, 16
  br i1 %min.iters.check187, label %vec.epilog.ph202, label %vector.ph188

vector.ph188:                                     ; preds = %vector.main.loop.iter.check186
  %i.eb = and i64 %i.dz, 12
  %n.vec189 = and i64 %i.dz, -16                  ; 4 uses
  %i.ec = add i64 %.0.i65.lcssa, %n.vec189
  br label %vector.body190

vector.body190:                                   ; preds = %vector.ph188, %vector.body190
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next194, %vector.body190 ] ; 2 uses
  %i.ed = add nuw i64 %.0.i65.lcssa, %index191    ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ed
  %wide.load192 = load <16 x i8>, ptr %i.ee, align 1, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ed
  %wide.load193 = load <16 x i8>, ptr %i.ef, align 1, !tbaa !14
  %i.eg = xor <16 x i8> %wide.load193, %wide.load192
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ed
  store <16 x i8> %i.eg, ptr %i.eh, align 1, !tbaa !14
  %index.next194 = add nuw i64 %index191, 16      ; 2 uses
  %i.ei = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.ei, label %middle.block195, label %vector.body190, !llvm.loop !39

middle.block195:                                  ; preds = %vector.body190
  %cmp.n196 = icmp eq i64 %i.dz, %n.vec189
  br i1 %cmp.n196, label %mbedtls_xor.exit68, label %vec.epilog.iter.check200

vec.epilog.iter.check200:                         ; preds = %middle.block195
  %min.epilog.iters.check201 = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check201, label %.lr.ph136.preheader, label %vec.epilog.ph202, !prof !44

vec.epilog.ph202:                                 ; preds = %vector.main.loop.iter.check186, %vec.epilog.iter.check200
  %vec.epilog.resume.val197 = phi i64 [ %n.vec189, %vec.epilog.iter.check200 ], [ 0, %vector.main.loop.iter.check186 ]
  %i.ej = and i64 %umax, 3                        ; 2 uses
  %n.vec203 = sub i64 %i.dz, %i.ej                ; 2 uses
  %i.ek = add i64 %.0.i65.lcssa, %n.vec203
  br label %vec.epilog.vector.body204

vec.epilog.vector.body204:                        ; preds = %vec.epilog.vector.body204, %vec.epilog.ph202
  %index205 = phi i64 [ %vec.epilog.resume.val197, %vec.epilog.ph202 ], [ %index.next208, %vec.epilog.vector.body204 ] ; 2 uses
  %i.el = add nuw i64 %.0.i65.lcssa, %index205    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.el
  %wide.load206 = load <4 x i8>, ptr %i.em, align 1, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.el
  %wide.load207 = load <4 x i8>, ptr %i.en, align 1, !tbaa !14
  %i.eo = xor <4 x i8> %wide.load207, %wide.load206
  %i.ep = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.el
  store <4 x i8> %i.eo, ptr %i.ep, align 1, !tbaa !14
  %index.next208 = add nuw i64 %index205, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next208, %n.vec203
  br i1 %i.eq, label %vec.epilog.middle.block209, label %vec.epilog.vector.body204, !llvm.loop !40

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body204
  %cmp.n210 = icmp eq i64 %i.ej, 0
  br i1 %cmp.n210, label %mbedtls_xor.exit68, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %iter.check198, %vec.epilog.iter.check200, %vec.epilog.middle.block209
  %.1.i67135.ph = phi i64 [ %.0.i65.lcssa, %iter.check198 ], [ %i.ec, %vec.epilog.iter.check200 ], [ %i.ek, %vec.epilog.middle.block209 ]
  br label %.lr.ph136

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %i.er = phi i64 [ 8, %.lr.ph133.preheader.new ], [ %i.fl, %.lr.ph133 ] ; 7 uses
  %.0.i65132 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %i.fg, %.lr.ph133 ] ; 3 uses
  %niter226 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter226.next.3, %.lr.ph133 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.0.i65132
  %.0.copyload.i87 = load i64, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.0.i65132
  %.0.copyload.i86 = load i64, ptr %i.et, align 1
  %i.eu = xor i64 %.0.copyload.i86, %.0.copyload.i87
  %i.ev = getelementptr inbounds nuw i8, ptr %i.di, i64 %.0.i65132
  store i64 %i.eu, ptr %i.ev, align 1
  %i.ew = add nuw nsw i64 %i.er, 8                ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.er
  %.0.copyload.i87.1 = load i64, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.er
  %.0.copyload.i86.1 = load i64, ptr %i.ey, align 1
  %i.ez = xor i64 %.0.copyload.i86.1, %.0.copyload.i87.1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.er
  store i64 %i.ez, ptr %i.fa, align 1
  %i.fb = add nuw nsw i64 %i.er, 16               ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ew
  %.0.copyload.i87.2 = load i64, ptr %i.fc, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ew
  %.0.copyload.i86.2 = load i64, ptr %i.fd, align 1
  %i.fe = xor i64 %.0.copyload.i86.2, %.0.copyload.i87.2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ew
  store i64 %i.fe, ptr %i.ff, align 1
  %i.fg = add nuw nsw i64 %i.er, 24               ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.fb
  %.0.copyload.i87.3 = load i64, ptr %i.fh, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fb
  %.0.copyload.i86.3 = load i64, ptr %i.fi, align 1
  %i.fj = xor i64 %.0.copyload.i86.3, %.0.copyload.i87.3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fb
  store i64 %i.fj, ptr %i.fk, align 1
  %i.fl = add nuw nsw i64 %i.er, 32               ; 2 uses
  %niter226.next.3 = add i64 %niter226, 4         ; 2 uses
  %niter226.ncmp.3 = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3, label %.preheader106.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !41

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %.lr.ph136
  %.1.i67135 = phi i64 [ %i.fs, %.lr.ph136 ], [ %.1.i67135.ph, %.lr.ph136.preheader ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.1.i67135
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !14
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.1.i67135
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !14
  %i.fq = xor i8 %i.fp, %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %i.di, i64 %.1.i67135
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !14
  %i.fs = add nuw nsw i64 %.1.i67135, 1           ; 2 uses
  %i.ft = icmp samesign ult i64 %i.fs, %i.dl
  br i1 %i.ft, label %.lr.ph136, label %mbedtls_xor.exit68, !llvm.loop !42

mbedtls_xor.exit68:                               ; preds = %.lr.ph136, %middle.block195, %vec.epilog.middle.block209, %.preheader106
  %i.fu = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i99 = icmp eq i32 %i.fu, 0
  br i1 %.not.i99, label %bb.l, label %mbedtls_aes_crypt_ecb.exit101

bb.l:                                             ; preds = %mbedtls_xor.exit68
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fv = call i32 @mbedtls_internal_aes_decrypt(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_ecb.exit101.thread

bb.n:                                             ; preds = %bb.l
  %i.fw = call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_ecb.exit101.thread

mbedtls_aes_crypt_ecb.exit101:                    ; preds = %mbedtls_xor.exit68
  %i.fx = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not62 = icmp eq i32 %i.fx, 0
  br i1 %.not62, label %mbedtls_aes_crypt_ecb.exit101.thread, label %.critedge

mbedtls_aes_crypt_ecb.exit101.thread:             ; preds = %bb.m, %bb.n, %mbedtls_aes_crypt_ecb.exit101
  %.0.copyload.i89 = load i64, ptr %i.c, align 16
  %.0.copyload.i88 = load i64, ptr %i.be, align 16
  %i.fy = xor i64 %.0.copyload.i88, %.0.copyload.i89
  store i64 %i.fy, ptr %i.ax, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i89.1 = load i64, ptr %i.fz, align 8
  %.sroa.sel.v.sroa.sel.v = select i1 %i.bd, ptr %i.b, ptr %i.a
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v, i64 8
  %.0.copyload.i88.1 = load i64, ptr %.sroa.sel.v.sroa.sel, align 8
  %i.ga = xor i64 %.0.copyload.i88.1, %.0.copyload.i89.1
  %i.gb = getelementptr inbounds i8, ptr %.053.lcssa, i64 -8
  store i64 %i.ga, ptr %i.gb, align 1
  br label %.critedge

.critedge:                                        ; preds = %mbedtls_aes_crypt_ecb.exit97, %mbedtls_aes_crypt_ecb.exit101.thread, %._crit_edge, %mbedtls_aes_crypt_ecb.exit101, %mbedtls_aes_crypt_ecb.exit, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %mbedtls_aes_crypt_ecb.exit101.thread ], [ -33, %bb.a ], [ -34, %bb.b ], [ %i.fx, %mbedtls_aes_crypt_ecb.exit101 ], [ %i.k, %mbedtls_aes_crypt_ecb.exit ], [ 0, %._crit_edge ], [ %i.ag, %mbedtls_aes_crypt_ecb.exit97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_cfb128(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !20     ; 5 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.loopexit58, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 0
  %.not4969 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %bb.c
  br i1 %.not4969, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not4969, label %.loopexit, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader, %bb.e
  %.in75 = phi i64 [ %i.d, %bb.e ], [ %2, %.preheader ]
  %.072 = phi i64 [ %i.p, %bb.e ], [ %i.a, %.preheader ] ; 3 uses
  %.03871 = phi ptr [ %i.n, %bb.e ], [ %6, %.preheader ] ; 2 uses
  %.04070 = phi ptr [ %i.i, %bb.e ], [ %5, %.preheader ] ; 2 uses
  %i.d = add i64 %.in75, -1                       ; 2 uses
  %i.e = icmp eq i64 %.072, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph73
  %i.f = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_ecb.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.d
  %i.g = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %4, ptr noundef %4) ; 0 uses
  br label %bb.e

mbedtls_aes_crypt_ecb.exit:                       ; preds = %bb.d
  %i.h = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %4, ptr noundef %4) #10 ; 2 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %bb.e, label %.loopexit58

bb.e:                                             ; preds = %mbedtls_aes_crypt_ecb.exit.thread, %mbedtls_aes_crypt_ecb.exit, %.lr.ph73
  %i.i = getelementptr inbounds nuw i8, ptr %.04070, i64 1
  %i.j = load i8, ptr %.04070, align 1, !tbaa !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %.072 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = xor i8 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %.03871, i64 1
  store i8 %i.m, ptr %.03871, align 1, !tbaa !14
  store i8 %i.j, ptr %i.k, align 1, !tbaa !14
  %i.o = add nuw nsw i64 %.072, 1
  %i.p = and i64 %i.o, 15                         ; 2 uses
  %.not49 = icmp eq i64 %i.d, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph73, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader59, %bb.g
  %.in = phi i64 [ %i.q, %bb.g ], [ %2, %.preheader59 ]
  %.168 = phi i64 [ %i.ac, %bb.g ], [ %i.a, %.preheader59 ] ; 3 uses
  %.13967 = phi ptr [ %i.aa, %bb.g ], [ %6, %.preheader59 ] ; 2 uses
  %.14166 = phi ptr [ %i.x, %bb.g ], [ %5, %.preheader59 ] ; 2 uses
  %i.q = add i64 %.in, -1                         ; 2 uses
  %i.r = icmp eq i64 %.168, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i51 = icmp eq i32 %i.s, 0
  br i1 %.not.i51, label %mbedtls_aes_crypt_ecb.exit53.thread, label %mbedtls_aes_crypt_ecb.exit53

mbedtls_aes_crypt_ecb.exit53.thread:              ; preds = %bb.f
  %i.t = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %4, ptr noundef %4) ; 0 uses
  br label %bb.g

mbedtls_aes_crypt_ecb.exit53:                     ; preds = %bb.f
  %i.u = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %4, ptr noundef %4) #10 ; 2 uses
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %bb.g, label %.loopexit58

bb.g:                                             ; preds = %mbedtls_aes_crypt_ecb.exit53.thread, %mbedtls_aes_crypt_ecb.exit53, %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %.168 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %.14166, i64 1
  %i.y = load i8, ptr %.14166, align 1, !tbaa !14
  %i.z = xor i8 %i.y, %i.w                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.13967, i64 1
  store i8 %i.z, ptr %.13967, align 1, !tbaa !14
  store i8 %i.z, ptr %i.v, align 1, !tbaa !14
  %i.ab = add nuw nsw i64 %.168, 1
  %i.ac = and i64 %i.ab, 15                       ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit:                                        ; preds = %bb.g, %bb.e, %.preheader59, %.preheader
  %.2 = phi i64 [ %i.p, %bb.e ], [ %i.a, %.preheader ], [ %i.a, %.preheader59 ], [ %i.ac, %bb.g ]
  store i64 %.2, ptr %3, align 8, !tbaa !20
  br label %.loopexit58

.loopexit58:                                      ; preds = %mbedtls_aes_crypt_ecb.exit53, %mbedtls_aes_crypt_ecb.exit, %.loopexit, %bb.b, %bb.a
  %.042 = phi i32 [ -33, %bb.b ], [ -33, %bb.a ], [ %i.h, %mbedtls_aes_crypt_ecb.exit ], [ 0, %.loopexit ], [ %i.u, %mbedtls_aes_crypt_ecb.exit53 ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_cfb8(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not26 = icmp eq i64 %2, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.a = add i64 %2, -1                           ; 2 uses
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 2 uses
  %trunc = trunc nuw i32 %1 to i1
  br i1 %trunc, label %.lr.ph.split.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.b
  %i.b = phi i64 [ %i.k, %bb.b ], [ %i.a, %.lr.ph ] ; 2 uses
  %.01828.us = phi ptr [ %i.j, %bb.b ], [ %5, %.lr.ph ] ; 2 uses
  %.01927.us = phi ptr [ %i.h, %bb.b ], [ %4, %.lr.ph ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  %i.c = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i.us = icmp eq i32 %i.c, 0
  br i1 %.not.i.us, label %mbedtls_aes_crypt_ecb.exit.thread.us, label %mbedtls_aes_crypt_ecb.exit.us

mbedtls_aes_crypt_ecb.exit.us:                    ; preds = %.lr.ph.split.us.split
  %i.d = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %3) #10 ; 2 uses
  %.not23.us = icmp eq i32 %i.d, 0
  br i1 %.not23.us, label %bb.b, label %.loopexit

mbedtls_aes_crypt_ecb.exit.thread.us:             ; preds = %.lr.ph.split.us.split
  %i.e = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %3) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %mbedtls_aes_crypt_ecb.exit.thread.us, %mbedtls_aes_crypt_ecb.exit.us
  %i.f = load i8, ptr %.01927.us, align 1, !tbaa !14 ; 2 uses
  %i.g = load i8, ptr %3, align 1, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %.01927.us, i64 1
  %i.i = xor i8 %i.f, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %.01828.us, i64 1
  store i8 %i.i, ptr %.01828.us, align 1, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.f, ptr %.sroa.4.1..sroa_idx, align 1
  %i.k = add i64 %i.b, -1
  %.not.us = icmp eq i64 %i.b, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !45

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.c
  %i.l = phi i64 [ %i.u, %bb.c ], [ %i.a, %.lr.ph ] ; 2 uses
  %.01828.us33 = phi ptr [ %i.t, %bb.c ], [ %5, %.lr.ph ] ; 2 uses
  %.01927.us34 = phi ptr [ %i.q, %bb.c ], [ %4, %.lr.ph ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  %i.m = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i.us35 = icmp eq i32 %i.m, 0
  br i1 %.not.i.us35, label %mbedtls_aes_crypt_ecb.exit.thread.us38, label %mbedtls_aes_crypt_ecb.exit.us36

mbedtls_aes_crypt_ecb.exit.us36:                  ; preds = %.lr.ph.split.split.us
  %i.n = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %3) #10 ; 2 uses
  %.not23.us37 = icmp eq i32 %i.n, 0
  br i1 %.not23.us37, label %bb.c, label %.loopexit

mbedtls_aes_crypt_ecb.exit.thread.us38:           ; preds = %.lr.ph.split.split.us
  %i.o = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %3) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %mbedtls_aes_crypt_ecb.exit.thread.us38, %mbedtls_aes_crypt_ecb.exit.us36
  %i.p = load i8, ptr %3, align 1, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.01927.us34, i64 1
  %i.r = load i8, ptr %.01927.us34, align 1, !tbaa !14
  %i.s = xor i8 %i.r, %i.p                        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01828.us33, i64 1
  store i8 %i.s, ptr %.01828.us33, align 1, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.s, ptr %.sroa.4.1..sroa_idx, align 1
  %i.u = add i64 %i.l, -1
  %.not.us39 = icmp eq i64 %i.l, 0
  br i1 %.not.us39, label %.loopexit, label %.lr.ph.split.split.us, !llvm.loop !45

.loopexit:                                        ; preds = %bb.b, %mbedtls_aes_crypt_ecb.exit.us, %bb.c, %mbedtls_aes_crypt_ecb.exit.us36, %.preheader, %bb.a
  %.020 = phi i32 [ -33, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ %i.n, %mbedtls_aes_crypt_ecb.exit.us36 ], [ %i.d, %mbedtls_aes_crypt_ecb.exit.us ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_ofb(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !20     ; 3 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not28 = icmp eq i64 %1, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.in = phi i64 [ %i.c, %bb.c ], [ %1, %.preheader ]
  %.031 = phi i64 [ %i.o, %bb.c ], [ %i.a, %.preheader ] ; 3 uses
  %.01730 = phi ptr [ %i.m, %bb.c ], [ %5, %.preheader ] ; 2 uses
  %.01829 = phi ptr [ %i.h, %bb.c ], [ %4, %.preheader ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = icmp eq i64 %.031, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_ecb.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.b
  %i.f = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %3, ptr noundef %3) ; 0 uses
  br label %bb.c

mbedtls_aes_crypt_ecb.exit:                       ; preds = %bb.b
  %i.g = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %3) #10 ; 2 uses
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %mbedtls_aes_crypt_ecb.exit.thread, %mbedtls_aes_crypt_ecb.exit, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01829, i64 1
  %i.i = load i8, ptr %.01829, align 1, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.031
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = xor i8 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01730, i64 1
  store i8 %i.l, ptr %.01730, align 1, !tbaa !14
  %i.n = add nuw nsw i64 %.031, 1
  %i.o = and i64 %i.n, 15                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.0.lcssa = phi i64 [ %i.a, %.preheader ], [ %i.o, %bb.c ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_aes_crypt_ecb.exit, %._crit_edge, %bb.a
  %.019 = phi i32 [ -33, %bb.a ], [ 0, %._crit_edge ], [ %i.g, %mbedtls_aes_crypt_ecb.exit ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_ctr(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !20     ; 3 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.loopexit, label %.preheader60

.preheader60:                                     ; preds = %bb.a
  %.not69 = icmp eq i64 %1, 0
  br i1 %.not69, label %._crit_edge68, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.i, -8
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %._crit_edge
  %.03266 = phi i64 [ %i.cl, %._crit_edge ], [ 0, %.lr.ph67.preheader ] ; 5 uses
  %.03665 = phi i64 [ 0, %._crit_edge ], [ %i.d, %.lr.ph67.preheader ] ; 4 uses
  %i.j = icmp eq i64 %.03665, 0
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph67
  %i.k = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i48 = icmp eq i32 %i.k, 0
  br i1 %.not.i48, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_ecb.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.b
  %i.l = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %.preheader89

mbedtls_aes_crypt_ecb.exit:                       ; preds = %bb.b
  %i.m = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %4) #10 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.preheader89, label %.loopexit

.preheader89:                                     ; preds = %mbedtls_aes_crypt_ecb.exit, %mbedtls_aes_crypt_ecb.exit.thread
  %.0.copyload.i.i = load i32, ptr %i.f, align 1
  %i.n = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  store i32 %i.p, ptr %i.f, align 1
  %i.q = icmp eq i32 %i.o, 0
  br i1 %i.q, label %bb.c, label %mbedtls_ctr_increment_counter.exit

bb.c:                                             ; preds = %.preheader89
  %.0.copyload.i.i.1 = load i32, ptr %i.g, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1)
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.g, align 1
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %bb.d, label %mbedtls_ctr_increment_counter.exit

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.2 = load i32, ptr %i.h, align 1
  %i.v = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2)
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  store i32 %i.x, ptr %i.h, align 1
  %i.y = icmp eq i32 %i.w, 0
  br i1 %i.y, label %bb.e, label %mbedtls_ctr_increment_counter.exit

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.3 = load i32, ptr %3, align 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.3)
  %i.aa = add i32 %i.z, 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %3, align 1
  br label %mbedtls_ctr_increment_counter.exit

bb.f:                                             ; preds = %.lr.ph67
  %i.ac = sub nuw nsw i64 16, %.03665
  br label %mbedtls_ctr_increment_counter.exit

mbedtls_ctr_increment_counter.exit:               ; preds = %.preheader89, %bb.c, %bb.d, %bb.e, %bb.f
  %.0 = phi i64 [ %i.ac, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ], [ 16, %.preheader89 ]
  %i.ad = sub nuw i64 %1, %.03266
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.ad) ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 %.03266 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 %.03266 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 %.03665 ; 8 uses
  %.not.i61 = icmp samesign ult i64 %spec.select, 8
  br i1 %.not.i61, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.1, %mbedtls_ctr_increment_counter.exit
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_ctr_increment_counter.exit ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 6 uses
  %i.ah = icmp samesign ult i64 %.0.i.lcssa, %spec.select
  br i1 %i.ah, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ai = sub nuw nsw i64 %spec.select, %.0.i.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph64.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = add i64 %.03266, %i.c
  %i.ak = add i64 %.03665, %i.a
  %i.al = sub i64 %i.ak, %i.aj
  %diff.check77 = icmp ugt i64 %i.al, -8
  %conflict.rdx = or i1 %diff.check, %diff.check77
  br i1 %conflict.rdx, label %.lr.ph64.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.am = and i64 %spec.select, 7                 ; 2 uses
  %n.vec82 = sub nsw i64 %i.ai, %i.am             ; 2 uses
  %i.an = add i64 %.0.i.lcssa, %n.vec82
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = add nuw i64 %.0.i.lcssa, %index83       ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ao
  %wide.load84 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %wide.load85 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !14
  %i.ar = xor <8 x i8> %wide.load85, %wide.load84
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ao
  store <8 x i8> %i.ar, ptr %i.as, align 1, !tbaa !14
  %index.next86 = add nuw i64 %index83, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next86, %n.vec82
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %i.am, 0
  br i1 %cmp.n87, label %._crit_edge, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i63.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck ], [ %.0.i.lcssa, %iter.check ], [ %i.an, %vec.epilog.middle.block ] ; 4 uses
  %i.au = sub i64 %spec.select, %.1.i63.ph
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol

.lr.ph64.prol:                                    ; preds = %.lr.ph64.preheader, %.lr.ph64.prol
  %.1.i63.prol = phi i64 [ %i.bb, %.lr.ph64.prol ], [ %.1.i63.ph, %.lr.ph64.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph64.prol ], [ 0, %.lr.ph64.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %.1.i63.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i63.prol
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i63.prol
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !14
  %i.bb = add nuw nsw i64 %.1.i63.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol, !llvm.loop !47

.lr.ph64.prol.loopexit:                           ; preds = %.lr.ph64.prol, %.lr.ph64.preheader
  %.1.i63.unr = phi i64 [ %.1.i63.ph, %.lr.ph64.preheader ], [ %i.bb, %.lr.ph64.prol ]
  %i.bc = sub i64 %.1.i63.ph, %spec.select
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %._crit_edge, label %.lr.ph64

.lr.ph:                                           ; preds = %mbedtls_ctr_increment_counter.exit
  %.0.copyload.i47 = load i64, ptr %i.af, align 1
  %.0.copyload.i = load i64, ptr %i.ag, align 1
  %i.be = xor i64 %.0.copyload.i, %.0.copyload.i47
  store i64 %i.be, ptr %i.ae, align 1
  %.not.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i47.1 = load i64, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.bg, align 1
  %i.bh = xor i64 %.0.copyload.i.1, %.0.copyload.i47.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.bh, ptr %i.bi, align 1
  br label %.preheader

.lr.ph64:                                         ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64
  %.1.i63 = phi i64 [ %i.ck, %.lr.ph64 ], [ %.1.i63.unr, %.lr.ph64.prol.loopexit ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.1.i63
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i63
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i63
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !14
  %i.bp = add nuw nsw i64 %.1.i63, 1              ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bp
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !14
  %i.bw = add nuw nsw i64 %.1.i63, 2              ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bw
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = xor i8 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bw
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !14
  %i.cd = add nuw nsw i64 %.1.i63, 3              ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cd
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = xor i8 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !14
  %i.ck = add nuw nsw i64 %.1.i63, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ck, %spec.select
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph64, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64, %vec.epilog.middle.block, %.preheader
  %i.cl = add i64 %spec.select, %.03266           ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %1
  br i1 %i.cm, label %.lr.ph67, label %._crit_edge68.loopexit, !llvm.loop !49

._crit_edge68.loopexit:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !20
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit, %.preheader60
  %i.cn = phi i64 [ %.pre, %._crit_edge68.loopexit ], [ %i.d, %.preheader60 ]
  %i.co = add i64 %i.cn, %1
  %i.cp = and i64 %i.co, 15
  store i64 %i.cp, ptr %2, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_aes_crypt_ecb.exit, %._crit_edge68, %bb.a
  %.040 = phi i32 [ -33, %bb.a ], [ 0, %._crit_edge68 ], [ %i.m, %mbedtls_aes_crypt_ecb.exit ]
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 16 uses
  %i.c = alloca [64 x i8], align 16               ; 48 uses
  %i.d = alloca [16 x i8], align 16               ; 24 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 3 uses
  %1 = alloca %struct.mbedtls_aes_context, align 8 ; 26 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.mbedtls_aes_xts_context, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %1, i8 0, i64 288, i1 false)
  %i.j = icmp ne i32 %0, 0                        ; 19 uses
  br i1 %i.j, label %.sink.split, label %.backedge445.preheader

.sink.split:                                      ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.k = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not = icmp eq i32 %i.k, 0
  %str.1.str.2 = select i1 %.not, ptr @str.1, ptr @str.2
  %puts198 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.2) ; 0 uses
  br label %.backedge445.preheader

.backedge445.preheader:                           ; preds = %.sink.split, %bb.a
  br label %.backedge445

.backedge445:                                     ; preds = %.backedge445.backedge, %.backedge445.preheader
  %.0156324 = phi i32 [ 0, %.backedge445.preheader ], [ %.0156324.be, %.backedge445.backedge ] ; 5 uses
  %i.l = lshr i32 %.0156324, 1                    ; 2 uses
  %i.m = shl nuw nsw i32 %i.l, 6
  %i.n = add nuw nsw i32 %i.m, 128                ; 4 uses
  %i.o = and i32 %.0156324, 1                     ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge445
  %i.p = icmp eq i32 %i.o, 0
  %i.q = select i1 %i.p, ptr @.str.4, ptr @.str.5
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.n, ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.backedge445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.s = icmp eq i32 %i.o, 0                      ; 2 uses
  %i.t = zext nneg i32 %i.l to i64
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = call i32 @mbedtls_aes_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef %i.n)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %aes_test_ecb_enc.sink = phi ptr [ @aes_test_ecb_enc, %bb.e ], [ @aes_test_ecb_dec, %bb.d ]
  %.1163 = phi i32 [ %i.v, %bb.e ], [ %i.u, %bb.d ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %aes_test_ecb_enc.sink, i64 %i.t
  %i.x = icmp eq i32 %.1163, -114
  %i.y = icmp eq i32 %i.n, 192
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not233 = icmp eq i32 %.1163, 0
  br i1 %.not233, label %.preheader308, label %mbedtls_aes_crypt_cfb128.exit

.preheader308:                                    ; preds = %bb.g
  br i1 %i.s, label %.preheader308.split.us, label %.preheader308.split

.preheader308.split.us:                           ; preds = %.preheader308, %mbedtls_aes_crypt_ecb.exit.thread.us
  %.0154321.us = phi i32 [ %i.ac, %mbedtls_aes_crypt_ecb.exit.thread.us ], [ 0, %.preheader308 ]
  %i.z = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i.us = icmp eq i32 %i.z, 0
  br i1 %.not.i.us, label %bb.h, label %mbedtls_aes_crypt_ecb.exit.us

mbedtls_aes_crypt_ecb.exit.us:                    ; preds = %.preheader308.split.us
  %i.aa = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not237.us = icmp eq i32 %i.aa, 0
  br i1 %.not237.us, label %mbedtls_aes_crypt_ecb.exit.thread.us, label %mbedtls_aes_crypt_cfb128.exit

bb.h:                                             ; preds = %.preheader308.split.us
  %i.ab = call i32 @mbedtls_internal_aes_decrypt(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_ecb.exit.thread.us

mbedtls_aes_crypt_ecb.exit.thread.us:             ; preds = %bb.h, %mbedtls_aes_crypt_ecb.exit.us
  %i.ac = add nuw nsw i32 %.0154321.us, 1         ; 2 uses
  %exitcond361.not = icmp eq i32 %i.ac, 10000
  br i1 %exitcond361.not, label %.split323.us, label %.preheader308.split.us, !llvm.loop !50

.preheader308.split:                              ; preds = %.preheader308, %mbedtls_aes_crypt_ecb.exit.thread
  %.0154321 = phi i32 [ %i.ag, %mbedtls_aes_crypt_ecb.exit.thread ], [ 0, %.preheader308 ]
  %i.ad = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.i, label %mbedtls_aes_crypt_ecb.exit

bb.i:                                             ; preds = %.preheader308.split
  %i.ae = call i32 @mbedtls_internal_aes_encrypt(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_ecb.exit.thread

mbedtls_aes_crypt_ecb.exit:                       ; preds = %.preheader308.split
  %i.af = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not237 = icmp eq i32 %i.af, 0
  br i1 %.not237, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_cfb128.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.i, %mbedtls_aes_crypt_ecb.exit
  %i.ag = add nuw nsw i32 %.0154321, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, 10000
  br i1 %exitcond.not, label %.split323.us, label %.preheader308.split, !llvm.loop !50

.split323.us:                                     ; preds = %mbedtls_aes_crypt_ecb.exit.thread, %mbedtls_aes_crypt_ecb.exit.thread.us
  %i.ah = load i128, ptr %i.c, align 16
  %i.ai = load i128, ptr %i.w, align 1
  %i.aj = icmp ne i128 %i.ah, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %.not235 = icmp eq i32 %i.ak, 0
  br i1 %.not235, label %bb.j, label %mbedtls_aes_crypt_cfb128.exit

bb.j:                                             ; preds = %.split323.us
  br i1 %i.j, label %.thread398, label %.thread

bb.k:                                             ; preds = %bb.f
  %puts239 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.al = add nuw nsw i32 %.0156324, 1            ; 2 uses
  %exitcond362.not = icmp eq i32 %i.al, 6
  br i1 %exitcond362.not, label %bb.l, label %.backedge445.backedge

.backedge445.backedge:                            ; preds = %bb.k, %.thread, %.thread398
  %.0156324.be = phi i32 [ %i.an, %.thread ], [ %i.am, %.thread398 ], [ %i.al, %bb.k ]
  br label %.backedge445, !llvm.loop !51

.thread398:                                       ; preds = %bb.j
  %puts236 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.am = add nuw nsw i32 %.0156324, 1            ; 2 uses
  %exitcond362.not399 = icmp eq i32 %i.am, 6
  br i1 %exitcond362.not399, label %.thread400, label %.backedge445.backedge

.thread:                                          ; preds = %bb.j
  %i.an = add nuw nsw i32 %.0156324, 1            ; 2 uses
  %exitcond362.not396 = icmp eq i32 %i.an, 6
  br i1 %exitcond362.not396, label %.thread397, label %.backedge445.backedge

bb.l:                                             ; preds = %bb.k
  br i1 %i.j, label %.thread400, label %.thread397

.thread400:                                       ; preds = %.thread398, %bb.l
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.thread397

.thread397:                                       ; preds = %.thread, %.thread400, %bb.l
  br label %.backedge439

.backedge439:                                     ; preds = %.backedge439.backedge, %.thread397
  %.1157329 = phi i32 [ 0, %.thread397 ], [ %.1157329.be, %.backedge439.backedge ] ; 5 uses
  %i.ao = lshr i32 %.1157329, 1                   ; 2 uses
  %i.ap = shl nuw nsw i32 %i.ao, 6
  %i.aq = add nuw nsw i32 %i.ap, 128              ; 4 uses
  %i.ar = and i32 %.1157329, 1                    ; 2 uses
  br i1 %i.j, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.backedge439
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = select i1 %i.as, ptr @.str.4, ptr @.str.5
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.aq, ptr noundef nonnull %i.at) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.backedge439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.av = icmp eq i32 %i.ar, 0                    ; 2 uses
  %i.aw = zext nneg i32 %i.ao to i64
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = call i32 @mbedtls_aes_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef %i.aq)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ay = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef %i.aq)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %aes_test_cbc_enc.sink = phi ptr [ @aes_test_cbc_enc, %bb.p ], [ @aes_test_cbc_dec, %bb.o ]
  %.5167 = phi i32 [ %i.ay, %bb.p ], [ %i.ax, %bb.o ] ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %aes_test_cbc_enc.sink, i64 %i.aw
  %i.ba = icmp eq i32 %.5167, -114
  %i.bb = icmp eq i32 %i.aq, 192
  %or.cond3 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not226 = icmp eq i32 %.5167, 0
  br i1 %.not226, label %.preheader, label %mbedtls_aes_crypt_cfb128.exit

.preheader:                                       ; preds = %bb.r
  br i1 %i.av, label %.split.us, label %.split170

.split.us:                                        ; preds = %.preheader, %mbedtls_xor_no_simd.exit53.i.us
  %.1155325.us = phi i32 [ %i.bi, %mbedtls_xor_no_simd.exit53.i.us ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.bc = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i.i.us = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.us, label %bb.s, label %mbedtls_aes_crypt_ecb.exit.i.us

mbedtls_aes_crypt_ecb.exit.i.us:                  ; preds = %.split.us
  %i.bd = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not50.i.us = icmp eq i32 %i.bd, 0
  br i1 %.not50.i.us, label %mbedtls_xor_no_simd.exit53.i.us, label %mbedtls_aes_crypt_cbc.exit244

bb.s:                                             ; preds = %.split.us
  %i.be = call i32 @mbedtls_internal_aes_decrypt(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_xor_no_simd.exit53.i.us

mbedtls_xor_no_simd.exit53.i.us:                  ; preds = %bb.s, %mbedtls_aes_crypt_ecb.exit.i.us
  %i.bf = load <2 x i64>, ptr %i.c, align 16
  %i.bg = load <2 x i64>, ptr %i.d, align 16
  %i.bh = xor <2 x i64> %i.bg, %i.bf
  store <2 x i64> %i.bh, ptr %i.c, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = add nuw nsw i32 %.1155325.us, 1         ; 2 uses
  %exitcond364.not = icmp eq i32 %i.bi, 10000
  br i1 %exitcond364.not, label %.split328.us, label %.split.us, !llvm.loop !52

.split170:                                        ; preds = %.preheader, %mbedtls_aes_crypt_cbc.exit244.thread
  %.1155325 = phi i32 [ %i.bp, %mbedtls_aes_crypt_cbc.exit244.thread ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bj = load <2 x i64>, ptr %i.c, align 16
  %i.bk = load <2 x i64>, ptr %i.d, align 16
  %i.bl = xor <2 x i64> %i.bk, %i.bj
  store <2 x i64> %i.bl, ptr %i.c, align 16
  %i.bm = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i59.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i59.i, label %mbedtls_aes_crypt_ecb.exit61.thread.i, label %mbedtls_aes_crypt_ecb.exit61.i

mbedtls_aes_crypt_ecb.exit61.thread.i:            ; preds = %.split170
  %i.bn = call i32 @mbedtls_internal_aes_encrypt(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_cbc.exit244.thread

mbedtls_aes_crypt_ecb.exit61.i:                   ; preds = %.split170
  %i.bo = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not48.i = icmp eq i32 %i.bo, 0
  br i1 %.not48.i, label %mbedtls_aes_crypt_cbc.exit244.thread, label %mbedtls_aes_crypt_cfb128.exit

mbedtls_aes_crypt_cbc.exit244.thread:             ; preds = %mbedtls_aes_crypt_ecb.exit61.i, %mbedtls_aes_crypt_ecb.exit61.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.bp = add nuw nsw i32 %.1155325, 1            ; 2 uses
  %exitcond363.not = icmp eq i32 %i.bp, 10000
  br i1 %exitcond363.not, label %.split328.us, label %.split170, !llvm.loop !52

mbedtls_aes_crypt_cbc.exit244:                    ; preds = %mbedtls_aes_crypt_ecb.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %mbedtls_aes_crypt_cfb128.exit

.split328.us:                                     ; preds = %mbedtls_aes_crypt_cbc.exit244.thread, %mbedtls_xor_no_simd.exit53.i.us
  %i.bq = load i128, ptr %i.c, align 16
  %i.br = load i128, ptr %i.az, align 1
  %i.bs = icmp ne i128 %i.bq, %i.br
  %i.bt = zext i1 %i.bs to i32
  %.not228 = icmp eq i32 %i.bt, 0
  br i1 %.not228, label %bb.t, label %mbedtls_aes_crypt_cfb128.exit

bb.t:                                             ; preds = %.split328.us
  br i1 %i.j, label %.thread404, label %.thread401

bb.u:                                             ; preds = %bb.q
  %puts232 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.bu = add nuw nsw i32 %.1157329, 1            ; 2 uses
  %exitcond365.not = icmp eq i32 %i.bu, 6
  br i1 %exitcond365.not, label %bb.v, label %.backedge439.backedge

.backedge439.backedge:                            ; preds = %bb.u, %.thread401, %.thread404
  %.1157329.be = phi i32 [ %i.bu, %bb.u ], [ %i.bw, %.thread401 ], [ %i.bv, %.thread404 ]
  br label %.backedge439, !llvm.loop !53

.thread404:                                       ; preds = %bb.t
  %puts229 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.bv = add nuw nsw i32 %.1157329, 1            ; 2 uses
  %exitcond365.not405 = icmp eq i32 %i.bv, 6
  br i1 %exitcond365.not405, label %.thread406, label %.backedge439.backedge

.thread401:                                       ; preds = %bb.t
  %i.bw = add nuw nsw i32 %.1157329, 1            ; 2 uses
  %exitcond365.not402 = icmp eq i32 %i.bw, 6
  br i1 %exitcond365.not402, label %.thread403.preheader, label %.backedge439.backedge

bb.v:                                             ; preds = %bb.u
  br i1 %i.j, label %.thread406, label %.thread403.preheader

.thread406:                                       ; preds = %.thread404, %bb.v
  %putchar199 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.thread403.preheader

.thread403.preheader:                             ; preds = %.thread401, %.thread406, %bb.v
  br label %.thread403

.thread403:                                       ; preds = %.thread403.backedge, %.thread403.preheader
  %.2158333 = phi i32 [ 0, %.thread403.preheader ], [ %.2158333.be, %.thread403.backedge ] ; 5 uses
  %i.bx = lshr i32 %.2158333, 1                   ; 2 uses
  %i.by = shl nuw nsw i32 %i.bx, 6
  %i.bz = add nuw nsw i32 %i.by, 128              ; 4 uses
  %i.ca = and i32 %.2158333, 1                    ; 2 uses
  br i1 %i.j, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread403
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = select i1 %i.cb, ptr @.str.4, ptr @.str.5
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.bz, ptr noundef nonnull %i.cc) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @aes_test_ofb_iv, i64 16, i1 false)
  %i.ce = zext nneg i32 %i.bx to i64              ; 3 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr @aes_test_ofb_key, i64 %i.ce
  %i.cg = lshr exact i32 %i.bz, 3
  %i.ch = zext nneg i32 %i.cg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 16 dereferenceable(1) %i.cf, i64 %i.ch, i1 false)
  %i.ci = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef %i.bz) ; 3 uses
  %i.cj = icmp eq i32 %i.ci, -114
  %i.ck = icmp eq i32 %i.bz, 192
  %or.cond5 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond5, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not220 = icmp eq i32 %i.ci, 0
  br i1 %.not220, label %bb.z, label %mbedtls_aes_crypt_cfb128.exit

bb.z:                                             ; preds = %bb.y
  %i.cl = icmp eq i32 %i.ca, 0
  br i1 %i.cl, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr @aes_test_cfb128_ct, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.cm, i64 64, i1 false)
  br label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %bb.ac, %bb.aa
  %.in75.i = phi i64 [ %i.cn, %bb.ac ], [ 64, %bb.aa ]
  %.072.i = phi i64 [ %i.cy, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %.03871.i = phi ptr [ %i.cs, %bb.ac ], [ %i.c, %bb.aa ] ; 3 uses
  %i.cn = add nsw i64 %.in75.i, -1                ; 2 uses
  %i.co = icmp eq i64 %.072.i, 0
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph73.i
  %i.cp = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i.i246 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i246, label %mbedtls_aes_crypt_ecb.exit.thread.i, label %mbedtls_aes_crypt_ecb.exit.i247

mbedtls_aes_crypt_ecb.exit.thread.i:              ; preds = %bb.ab
  %i.cq = call i32 @mbedtls_internal_aes_encrypt(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.ac

mbedtls_aes_crypt_ecb.exit.i247:                  ; preds = %bb.ab
  %i.cr = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #10 ; 2 uses
  %.not50.i248 = icmp eq i32 %i.cr, 0
  br i1 %.not50.i248, label %bb.ac, label %mbedtls_aes_crypt_cfb128.exit

bb.ac:                                            ; preds = %mbedtls_aes_crypt_ecb.exit.i247, %mbedtls_aes_crypt_ecb.exit.thread.i, %.lr.ph73.i
  %i.cs = getelementptr i8, ptr %.03871.i, i64 1
  %i.ct = load i8, ptr %.03871.i, align 1, !tbaa !14 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 %.072.i ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cw = xor i8 %i.cv, %i.ct
  store i8 %i.cw, ptr %.03871.i, align 1, !tbaa !14
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !14
  %i.cx = add nuw nsw i64 %.072.i, 1
  %i.cy = and i64 %i.cx, 15                       ; 2 uses
  %.not49.i245 = icmp eq i64 %i.cn, 0
  br i1 %.not49.i245, label %.loopexit.i, label %.lr.ph73.i, !llvm.loop !0

bb.ad:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) @aes_test_cfb128_pt, i64 64, i1 false)
  %i.cz = getelementptr inbounds nuw [64 x i8], ptr @aes_test_cfb128_ct, i64 %i.ce
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %bb.ad
  %.in.i = phi i64 [ %i.da, %bb.af ], [ 64, %bb.ad ]
  %.168.i = phi i64 [ %i.dl, %bb.af ], [ 0, %bb.ad ] ; 3 uses
  %.13967.i = phi ptr [ %i.dh, %bb.af ], [ %i.c, %bb.ad ] ; 3 uses
  %i.da = add nsw i64 %.in.i, -1                  ; 2 uses
  %i.db = icmp eq i64 %.168.i, 0
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i
  %i.dc = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i51.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i51.i, label %mbedtls_aes_crypt_ecb.exit53.thread.i, label %mbedtls_aes_crypt_ecb.exit53.i

mbedtls_aes_crypt_ecb.exit53.thread.i:            ; preds = %bb.ae
  %i.dd = call i32 @mbedtls_internal_aes_encrypt(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.af

mbedtls_aes_crypt_ecb.exit53.i:                   ; preds = %bb.ae
  %i.de = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #10 ; 2 uses
  %.not48.i252 = icmp eq i32 %i.de, 0
  br i1 %.not48.i252, label %bb.af, label %mbedtls_aes_crypt_cfb128.exit

bb.af:                                            ; preds = %mbedtls_aes_crypt_ecb.exit53.i, %mbedtls_aes_crypt_ecb.exit53.thread.i, %.lr.ph.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 %.168.i ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = getelementptr i8, ptr %.13967.i, i64 1
  %i.di = load i8, ptr %.13967.i, align 1, !tbaa !14
  %i.dj = xor i8 %i.di, %i.dg                     ; 2 uses
  store i8 %i.dj, ptr %.13967.i, align 1, !tbaa !14
  store i8 %i.dj, ptr %i.df, align 1, !tbaa !14
  %i.dk = add nuw nsw i64 %.168.i, 1
  %i.dl = and i64 %i.dk, 15                       ; 2 uses
  %.not.i249 = icmp eq i64 %i.da, 0
  br i1 %.not.i249, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.af, %bb.ac
  %storemerge = phi i64 [ %i.cy, %bb.ac ], [ %i.dl, %bb.af ] ; 2 uses
  %.2.ph = phi ptr [ @aes_test_cfb128_pt, %bb.ac ], [ %i.cz, %bb.af ]
  %bcmp222 = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.c, ptr noundef nonnull dereferenceable(64) %.2.ph, i64 64)
  %.not223 = icmp eq i32 %bcmp222, 0
  br i1 %.not223, label %bb.ag, label %mbedtls_aes_crypt_cfb128.exit

bb.ag:                                            ; preds = %.loopexit.i
  br i1 %i.j, label %.thread413, label %.thread407

bb.ah:                                            ; preds = %bb.x
  %puts225 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.dm = add nuw nsw i32 %.2158333, 1            ; 2 uses
  %exitcond366.not = icmp eq i32 %i.dm, 6
  br i1 %exitcond366.not, label %bb.ai, label %.thread403.backedge

.thread403.backedge:                              ; preds = %bb.ah, %.thread407, %.thread413
  %.2158333.be = phi i32 [ %i.dm, %bb.ah ], [ %i.do, %.thread407 ], [ %i.dn, %.thread413 ]
  br label %.thread403, !llvm.loop !54

.thread413:                                       ; preds = %bb.ag
  %puts224 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.dn = add nuw nsw i32 %.2158333, 1            ; 2 uses
  %exitcond366.not415 = icmp eq i32 %i.dn, 6
  br i1 %exitcond366.not415, label %.thread416, label %.thread403.backedge

.thread416:                                       ; preds = %.thread413
  store i64 %storemerge, ptr %i.f, align 8
  br label %bb.aj

.thread407:                                       ; preds = %bb.ag
  %i.do = add nuw nsw i32 %.2158333, 1            ; 2 uses
  %exitcond366.not409 = icmp eq i32 %i.do, 6
  br i1 %exitcond366.not409, label %.thread411, label %.thread403.backedge

.thread411:                                       ; preds = %.thread407
  store i64 %storemerge, ptr %i.f, align 8
  br label %.backedge432.preheader

bb.ai:                                            ; preds = %bb.ah
  store i64 0, ptr %i.f, align 8
  br i1 %i.j, label %bb.aj, label %.backedge432.preheader

bb.aj:                                            ; preds = %.thread416, %bb.ai
  %putchar200 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.backedge432.preheader

.backedge432.preheader:                           ; preds = %.thread411, %bb.aj, %bb.ai
  br label %.backedge432

.backedge432:                                     ; preds = %.backedge432.backedge, %.backedge432.preheader
  %.3159338 = phi i32 [ 0, %.backedge432.preheader ], [ %.3159338.be, %.backedge432.backedge ] ; 5 uses
  %i.dp = lshr i32 %.3159338, 1                   ; 2 uses
  %i.dq = shl nuw nsw i32 %i.dp, 6
  %i.dr = add nuw nsw i32 %i.dq, 128              ; 4 uses
  %i.ds = and i32 %.3159338, 1                    ; 2 uses
  br i1 %i.j, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.backedge432
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = select i1 %i.dt, ptr @.str.4, ptr @.str.5
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.dr, ptr noundef nonnull %i.du) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.backedge432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @aes_test_ofb_iv, i64 16, i1 false)
  %i.dw = zext nneg i32 %i.dp to i64              ; 3 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr @aes_test_ofb_key, i64 %i.dw
  %i.dy = lshr exact i32 %i.dr, 3
  %i.dz = zext nneg i32 %i.dy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 16 dereferenceable(1) %i.dx, i64 %i.dz, i1 false)
  %i.ea = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef %i.dr) ; 3 uses
  %i.eb = icmp eq i32 %i.ea, -114
  %i.ec = icmp eq i32 %i.dr, 192
  %or.cond7 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond7, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not214 = icmp eq i32 %i.ea, 0
  br i1 %.not214, label %bb.an, label %mbedtls_aes_crypt_cfb128.exit

bb.an:                                            ; preds = %bb.am
  %i.ed = icmp eq i32 %i.ds, 0
  br i1 %i.ed, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw [64 x i8], ptr @aes_test_ofb_ct, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.ee, i64 64, i1 false)
  br label %.preheader.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) @aes_test_ofb_pt, i64 64, i1 false)
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr @aes_test_ofb_ct, i64 %i.dw
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ao, %bb.ap
  %.3 = phi ptr [ @aes_test_ofb_pt, %bb.ao ], [ %i.ef, %bb.ap ]
  br label %.lr.ph.i254

.lr.ph.i254:                                      ; preds = %bb.ar, %.preheader.i
  %.in.i255 = phi i64 [ %i.eg, %bb.ar ], [ 64, %.preheader.i ]
  %.031.i = phi i64 [ %i.er, %bb.ar ], [ 0, %.preheader.i ] ; 3 uses
  %.01730.i = phi ptr [ %i.el, %bb.ar ], [ %i.c, %.preheader.i ] ; 3 uses
  %i.eg = add nsw i64 %.in.i255, -1               ; 2 uses
  %i.eh = icmp eq i64 %.031.i, 0
  br i1 %i.eh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i254
  %i.ei = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i.i258 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i258, label %mbedtls_aes_crypt_ecb.exit.thread.i260, label %mbedtls_aes_crypt_ecb.exit.i259

mbedtls_aes_crypt_ecb.exit.thread.i260:           ; preds = %bb.aq
  %i.ej = call i32 @mbedtls_internal_aes_encrypt(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.ar

mbedtls_aes_crypt_ecb.exit.i259:                  ; preds = %bb.aq
  %i.ek = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #10 ; 2 uses
  %.not24.i = icmp eq i32 %i.ek, 0
  br i1 %.not24.i, label %bb.ar, label %mbedtls_aes_crypt_cfb128.exit

bb.ar:                                            ; preds = %mbedtls_aes_crypt_ecb.exit.i259, %mbedtls_aes_crypt_ecb.exit.thread.i260, %.lr.ph.i254
  %i.el = getelementptr i8, ptr %.01730.i, i64 1
  %i.em = load i8, ptr %.01730.i, align 1, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 %.031.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !14
  %i.ep = xor i8 %i.eo, %i.em
  store i8 %i.ep, ptr %.01730.i, align 1, !tbaa !14
  %i.eq = add nuw nsw i64 %.031.i, 1
  %i.er = and i64 %i.eq, 15
  %.not.i256 = icmp eq i64 %i.eg, 0
  br i1 %.not.i256, label %bb.as, label %.lr.ph.i254, !llvm.loop !2

bb.as:                                            ; preds = %bb.ar
  %bcmp216 = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.c, ptr noundef nonnull dereferenceable(64) %.3, i64 64)
  %.not217 = icmp eq i32 %bcmp216, 0
  br i1 %.not217, label %bb.at, label %mbedtls_aes_crypt_cfb128.exit

bb.at:                                            ; preds = %bb.as
  br i1 %i.j, label %.thread424, label %.thread418

bb.au:                                            ; preds = %bb.al
  %puts219 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.es = add nuw nsw i32 %.3159338, 1            ; 2 uses
  %exitcond367.not = icmp eq i32 %i.es, 6
  br i1 %exitcond367.not, label %bb.av, label %.backedge432.backedge

.backedge432.backedge:                            ; preds = %bb.au, %.thread418, %.thread424
  %.3159338.be = phi i32 [ %i.es, %bb.au ], [ %i.eu, %.thread418 ], [ %i.et, %.thread424 ]
  br label %.backedge432, !llvm.loop !55

.thread424:                                       ; preds = %bb.at
  %puts218 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.et = add nuw nsw i32 %.3159338, 1            ; 2 uses
  %exitcond367.not426 = icmp eq i32 %i.et, 6
  br i1 %exitcond367.not426, label %.thread427, label %.backedge432.backedge

.thread418:                                       ; preds = %bb.at
  %i.eu = add nuw nsw i32 %.3159338, 1            ; 2 uses
  %exitcond367.not420 = icmp eq i32 %i.eu, 6
  br i1 %exitcond367.not420, label %.thread422.preheader, label %.backedge432.backedge

bb.av:                                            ; preds = %bb.au
  br i1 %i.j, label %.thread427, label %.thread422.preheader

.thread427:                                       ; preds = %.thread424, %bb.av
  %putchar201 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.thread422.preheader

.thread422.preheader:                             ; preds = %.thread418, %.thread427, %bb.av
  br label %.thread422

.thread422:                                       ; preds = %.thread422.backedge, %.thread422.preheader
  %.4160339 = phi i32 [ 0, %.thread422.preheader ], [ %.4160339.be, %.thread422.backedge ] ; 4 uses
  %i.ev = lshr i32 %.4160339, 1
  %i.ew = and i32 %.4160339, 1                    ; 2 uses
  br i1 %i.j, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread422
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = select i1 %i.ex, ptr @.str.4, ptr @.str.5
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %i.ey) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.thread422
  %i.fa = zext nneg i32 %i.ev to i64              ; 5 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr @aes_test_ctr_nonce_counter, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %i.fb, i64 16, i1 false)
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr @aes_test_ctr_key, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.fc, i64 16, i1 false)
  store i64 0, ptr %i.f, align 8, !tbaa !20
  %i.fd = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 128) ; 2 uses
  %.not209 = icmp eq i32 %i.fd, 0
  br i1 %.not209, label %bb.ay, label %mbedtls_aes_crypt_cfb128.exit

bb.ay:                                            ; preds = %bb.ax
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @aes_test_ctr_len, i64 %i.fa
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !10
  %i.fg = icmp eq i32 %i.ew, 0                    ; 2 uses
  %i.fh = sext i32 %i.ff to i64                   ; 3 uses
  %aes_test_ctr_ct.aes_test_ctr_pt = select i1 %i.fg, ptr @aes_test_ctr_ct, ptr @aes_test_ctr_pt
  %i.fi = getelementptr inbounds nuw [48 x i8], ptr %aes_test_ctr_ct.aes_test_ctr_pt, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 16 %i.fi, i64 %i.fh, i1 false)
  %i.fj = call i32 @mbedtls_aes_crypt_ctr(ptr noundef nonnull %1, i64 noundef %i.fh, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 2 uses
  %.not210 = icmp eq i32 %i.fj, 0
  br i1 %.not210, label %bb.az, label %mbedtls_aes_crypt_cfb128.exit

bb.az:                                            ; preds = %bb.ay
  %aes_test_ctr_pt.aes_test_ctr_ct = select i1 %i.fg, ptr @aes_test_ctr_pt, ptr @aes_test_ctr_ct
  %i.fk = getelementptr inbounds nuw [48 x i8], ptr %aes_test_ctr_pt.aes_test_ctr_ct, i64 %i.fa
  %bcmp211 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.fk, i64 %i.fh)
  %.not212 = icmp eq i32 %bcmp211, 0
  br i1 %.not212, label %bb.ba, label %mbedtls_aes_crypt_cfb128.exit

bb.ba:                                            ; preds = %bb.az
  br i1 %i.j, label %bb.bb, label %.thread429

bb.bb:                                            ; preds = %bb.ba
  %puts213 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.fl = add nuw nsw i32 %.4160339, 1            ; 2 uses
  %exitcond368.not = icmp eq i32 %i.fl, 6
  br i1 %exitcond368.not, label %bb.bc, label %.thread422.backedge

.thread422.backedge:                              ; preds = %bb.bb, %.thread429
  %.4160339.be = phi i32 [ %i.fm, %.thread429 ], [ %i.fl, %bb.bb ]
  br label %.thread422, !llvm.loop !56

.thread429:                                       ; preds = %bb.ba
  %i.fm = add nuw nsw i32 %.4160339, 1            ; 2 uses
  %exitcond368.not430 = icmp eq i32 %i.fm, 6
  br i1 %exitcond368.not430, label %.thread431, label %.thread422.backedge

bb.bc:                                            ; preds = %bb.bb
  %putchar202 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.thread431

.thread431:                                       ; preds = %.thread429, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %2, i8 0, i64 576, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %.thread431, %bb.bk
  %.5161340 = phi i32 [ 0, %.thread431 ], [ %i.gm, %bb.bk ] ; 3 uses
  %i.fn = lshr i32 %.5161340, 1
  %i.fo = and i32 %.5161340, 1                    ; 2 uses
  br i1 %i.j, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = select i1 %i.fp, ptr @.str.4, ptr @.str.5
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %i.fq) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fs = zext nneg i32 %i.fn to i64              ; 4 uses
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr @aes_test_xts_key, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.ft, i64 32, i1 false)
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr @aes_test_xts_data_unit, i64 %i.fs
  %i.fv = icmp eq i32 %i.fo, 0
  br i1 %i.fv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fw = call i32 @mbedtls_aes_xts_setkey_dec(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 256) ; 2 uses
  %.not205 = icmp eq i32 %i.fw, 0
  br i1 %.not205, label %.split177, label %.thread289

bb.bh:                                            ; preds = %bb.bf
  %i.fx = call i32 @mbedtls_aes_xts_setkey_enc(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 256) ; 2 uses
  %.not204 = icmp eq i32 %i.fx, 0
  br i1 %.not204, label %.split177, label %.thread289

.split177:                                        ; preds = %bb.bh, %bb.bg
  %aes_test_xts_pt32.sink = phi ptr [ @aes_test_xts_ct32, %bb.bg ], [ @aes_test_xts_pt32, %bb.bh ]
  %aes_test_xts_ct32.sink = phi ptr [ @aes_test_xts_pt32, %bb.bg ], [ @aes_test_xts_ct32, %bb.bh ]
  %.sink = phi i32 [ 0, %bb.bg ], [ 1, %bb.bh ]
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %aes_test_xts_pt32.sink, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.fy, i64 32, i1 false)
  %i.fz = call i32 @mbedtls_aes_crypt_xts(ptr noundef nonnull %2, i32 noundef %.sink, i64 noundef 32, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 2 uses
  %.not206 = icmp eq i32 %i.fz, 0
  br i1 %.not206, label %bb.bi, label %.thread289

bb.bi:                                            ; preds = %.split177
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %aes_test_xts_ct32.sink, i64 %i.fs ; 2 uses
  %i.gb = load i128, ptr %i.c, align 16
  %i.gc = load i128, ptr %i.ga, align 1
  %i.gd = xor i128 %i.gb, %i.gc
  %i.ge = getelementptr i8, ptr %i.c, i64 16
  %i.gf = getelementptr i8, ptr %i.ga, i64 16
  %i.gg = load i128, ptr %i.ge, align 16
  %i.gh = load i128, ptr %i.gf, align 1
  %i.gi = xor i128 %i.gg, %i.gh
  %i.gj = or i128 %i.gd, %i.gi
  %i.gk = icmp ne i128 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %.not207 = icmp eq i32 %i.gl, 0                 ; 2 uses
  %brmerge.not = and i1 %i.j, %.not207
  br i1 %brmerge.not, label %.thread280, label %bb.bj

.thread280:                                       ; preds = %bb.bi
  %puts208 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %bb.bk

.thread289:                                       ; preds = %.split177, %bb.bh, %bb.bg
  %.14.ph = phi i32 [ %i.fz, %.split177 ], [ %i.fx, %bb.bh ], [ %i.fw, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %mbedtls_aes_crypt_cfb128.exit

bb.bj:                                            ; preds = %bb.bi
  br i1 %.not207, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %.thread280, %bb.bj
  %i.gm = add nuw nsw i32 %.5161340, 1            ; 2 uses
  %exitcond369.not = icmp eq i32 %i.gm, 6
  br i1 %exitcond369.not, label %bb.bl, label %bb.bd, !llvm.loop !57

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.j, label %bb.bm, label %.thread285

bb.bm:                                            ; preds = %bb.bl
  %putchar203 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.thread285

.thread285:                                       ; preds = %bb.bl, %bb.bm
  call void @mbedtls_aes_xts_free(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %mbedtls_aes_crypt_cfb128.exit.thread293

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %mbedtls_aes_crypt_cfb128.exit

mbedtls_aes_crypt_cfb128.exit:                    ; preds = %.split323.us, %bb.g, %mbedtls_aes_crypt_ecb.exit, %mbedtls_aes_crypt_ecb.exit.us, %.split328.us, %bb.r, %mbedtls_aes_crypt_ecb.exit61.i, %.loopexit.i, %bb.y, %mbedtls_aes_crypt_ecb.exit53.i, %mbedtls_aes_crypt_ecb.exit.i247, %bb.as, %bb.am, %mbedtls_aes_crypt_ecb.exit.i259, %bb.az, %bb.ay, %bb.ax, %bb.bn, %.thread289, %mbedtls_aes_crypt_cbc.exit244
  %.16 = phi i32 [ %i.aa, %mbedtls_aes_crypt_ecb.exit.us ], [ %i.ek, %mbedtls_aes_crypt_ecb.exit.i259 ], [ %i.de, %mbedtls_aes_crypt_ecb.exit53.i ], [ %.14.ph, %.thread289 ], [ %i.bd, %mbedtls_aes_crypt_cbc.exit244 ], [ %i.fd, %bb.ax ], [ %i.ci, %bb.y ], [ 1, %bb.bn ], [ %i.bo, %mbedtls_aes_crypt_ecb.exit61.i ], [ %i.cr, %mbedtls_aes_crypt_ecb.exit.i247 ], [ 1, %.split328.us ], [ %i.af, %mbedtls_aes_crypt_ecb.exit ], [ %i.ea, %bb.am ], [ 1, %bb.az ], [ %i.fj, %bb.ay ], [ 1, %bb.as ], [ 1, %.loopexit.i ], [ %.5167, %bb.r ], [ %.1163, %bb.g ], [ 1, %.split323.us ] ; 2 uses
  br i1 %i.j, label %bb.bo, label %mbedtls_aes_crypt_cfb128.exit.thread293

bb.bo:                                            ; preds = %mbedtls_aes_crypt_cfb128.exit
  %puts238 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  br label %mbedtls_aes_crypt_cfb128.exit.thread293

mbedtls_aes_crypt_cfb128.exit.thread293:          ; preds = %.thread285, %bb.bo, %mbedtls_aes_crypt_cfb128.exit
  %.16296 = phi i32 [ %.16, %mbedtls_aes_crypt_cfb128.exit ], [ %.16, %bb.bo ], [ 0, %.thread285 ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 288) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.16296
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"mbedtls_aes_context", !9, i64 0, !11, i64 8, !8, i64 16}
!13 = !{!12, !9, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!12, !11, i64 8}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!11, !11, i64 0}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15, !17, !18}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !15, !17}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !15, !17, !18}
!40 = distinct !{!40, !15, !17, !18}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15, !17}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!"branch_weights", i32 4, i32 12}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15, !17, !18}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !15, !17}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
end_hunk_0
