inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@mbedtls_rsa_private:bb.a
  %or.cond = and i1 %i.bm, %i.bn
  %i.bo = add nsw i32 %.038, -17152
  %spec.select = select i1 %or.cond, i32 %i.bo, i32 %.038
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.b, %bb.a
  %.0 = phi i32 [ -16512, %bb.b ], [ -16512, %bb.a ], [ %spec.select, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret i32 %.0
}

declare i32 @mbedtls_mpi_mod_mpi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_mpi_sub_int(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_mpi_fill_random(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_mpi_add_mpi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_mpi_exp_mod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_mpi_sub_mpi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL11rsa_unblindP11mbedtls_mpiS0_PKS_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !20
  %i.b = tail call noundef i64 @_Z29mbedtls_mpi_core_montmul_initPKm(ptr noundef %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !21
  %i.e = zext i16 %i.d to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @mbedtls_mpi_init(ptr noundef nonnull %3)
  call void @mbedtls_mpi_init(ptr noundef nonnull %4)
  %i.f = call noundef i32 @_Z35mbedtls_mpi_core_get_mont_r2_unsafeP11mbedtls_mpiPKS_(ptr noundef nonnull %3, ptr noundef nonnull %2) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 %i.e, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = call i32 @mbedtls_mpi_grow(ptr noundef nonnull %4, i64 noundef %i.h) ; 2 uses
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @mbedtls_mpi_grow(ptr noundef nonnull %0, i64 noundef %i.e) ; 2 uses
  %.not26 = icmp eq i32 %i.j, 0
  br i1 %.not26, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @mbedtls_mpi_grow(ptr noundef %1, i64 noundef %i.e) ; 2 uses
  %.not27 = icmp eq i32 %i.k, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !20
  %i.n = load ptr, ptr %3, align 8, !tbaa !20
  %i.o = load ptr, ptr %4, align 8, !tbaa !20
  call void @_Z28mbedtls_mpi_core_to_mont_repPmPKmS1_mmS1_S_(ptr noundef %i.l, ptr noundef %i.l, ptr noundef %i.m, i64 noundef %i.e, i64 noundef %i.b, ptr noundef %i.n, ptr noundef %i.o)
  %i.p = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !20
  %i.r = load ptr, ptr %2, align 8, !tbaa !20
  %i.s = load ptr, ptr %4, align 8, !tbaa !20
  call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %i.p, ptr noundef %i.p, ptr noundef %i.q, i64 noundef %i.e, ptr noundef %i.r, i64 noundef %i.e, i64 noundef %i.b, ptr noundef %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.f, %bb.a ], [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ 0, %bb.e ]
  call void @mbedtls_mpi_free(ptr noundef nonnull %3)
  call void @mbedtls_mpi_free(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -2147483648, 2147466624) i32 @mbedtls_rsa_rsaes_pkcs1_v15_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = icmp ugt i64 %3, -12
  %i.d = add nuw i64 %3, 11
  %i.e = icmp ult i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %5, align 1, !tbaa !22
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1
  %reass.sub = sub i64 %i.b, %3                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  store i8 2, ptr %i.g, align 1, !tbaa !22
  %.not52 = icmp eq i64 %reass.sub, 3
  br i1 %.not52, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.i = add i64 %reass.sub, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %i.j = phi i64 [ %i.u, %bb.f ], [ %i.i, %.preheader.preheader ] ; 2 uses
  %.03553 = phi ptr [ %i.t, %bb.f ], [ %i.h, %.preheader.preheader ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.0 = phi i32 [ %i.n, %bb.e ], [ 100, %.preheader ] ; 2 uses
  %i.k = tail call noundef i32 %1(ptr noundef %2, ptr noundef nonnull %.03553, i64 noundef 1) ; 3 uses
  %i.l = load i8, ptr %.03553, align 1, !tbaa !22
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %.0, -1                      ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp eq i32 %i.k, 0
  %or.cond3 = and i1 %i.o, %i.p
  br i1 %or.cond3, label %bb.d, label %.critedge, !llvm.loop !23

.critedge:                                        ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.n, %bb.e ], [ %.0, %bb.d ]
  %i.q = icmp ne i32 %.1, 0
  %i.r = icmp eq i32 %i.k, 0
  %or.cond.not = and i1 %i.r, %i.q
  br i1 %or.cond.not, label %bb.f, label %.thread

.thread:                                          ; preds = %.critedge
  %i.s = add nsw i32 %i.k, -17536
  br label %bb.i

bb.f:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %.03553, i64 1 ; 2 uses
  %i.u = add i64 %i.j, -1
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.035.lcssa = phi ptr [ %i.h, %bb.c ], [ %i.t, %bb.f ] ; 2 uses
  store i8 0, ptr %.035.lcssa, align 1, !tbaa !22
  %.not45 = icmp eq i64 %3, 0
  br i1 %.not45, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %4, i64 %3, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.w = tail call i32 @mbedtls_rsa_public(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %5)
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.b, %bb.a, %bb.h
  %.2 = phi i32 [ %i.w, %bb.h ], [ -16512, %bb.a ], [ %i.s, %.thread ], [ -16512, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden range(i32 -2147483648, 2147466624) i32 @mbedtls_rsa_pkcs1_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %bb.b, label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = icmp ugt i64 %3, -12
  %i.f = add nuw i64 %3, 11
  %i.g = icmp ult i64 %i.d, %i.f
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.i, label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %5, align 1, !tbaa !22
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  %reass.sub.i = sub i64 %i.d, %3
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 2, ptr %i.i, align 1, !tbaa !22
  %6 = add i64 %reass.sub.i, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.d
  %i.k = phi i64 [ %i.v, %bb.g ], [ %6, %bb.d ]   ; 2 uses
  %.03553.i = phi ptr [ %i.u, %bb.g ], [ %i.j, %bb.d ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i
  %.0.i = phi i32 [ %i.o, %bb.f ], [ 100, %.preheader.i ] ; 2 uses
  %i.l = tail call noundef i32 %1(ptr noundef %2, ptr noundef nonnull %.03553.i, i64 noundef 1), !inline_history !25 ; 3 uses
  %i.m = load i8, ptr %.03553.i, align 1, !tbaa !22
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %.0.i, -1                    ; 3 uses
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp eq i32 %i.l, 0
  %or.cond3.i = and i1 %i.p, %i.q
  br i1 %or.cond3.i, label %bb.e, label %.critedge.i, !llvm.loop !23

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ %i.o, %bb.f ], [ %.0.i, %bb.e ]
  %i.r = icmp ne i32 %.1.i, 0
  %i.s = icmp eq i32 %i.l, 0
  %or.cond.not.i = and i1 %i.s, %i.r
  br i1 %or.cond.not.i, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %.critedge.i
  %i.t = add nsw i32 %i.l, -17536
  br label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit

bb.g:                                             ; preds = %.critedge.i
  %i.u = getelementptr inbounds nuw i8, ptr %.03553.i, i64 1 ; 2 uses
  %i.v = add i64 %i.k, -1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.g
  store i8 0, ptr %i.u, align 1, !tbaa !22
  %.not45.i = icmp eq i64 %3, 0
  br i1 %.not45.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03553.i, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %4, i64 %3, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.x = tail call i32 @mbedtls_rsa_public(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %5)
  br label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit

mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit:         ; preds = %bb.i, %.thread.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -16640, %bb.a ], [ %i.x, %bb.i ], [ -16512, %bb.b ], [ %i.t, %.thread.i ], [ -16512, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -2147483648, 2147466496) i32 @mbedtls_rsa_rsaes_pkcs1_v15_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %.not = icmp ne i32 %i.e, 0
  %i.f = add i64 %i.c, -1025
  %or.cond = icmp ult i64 %i.f, -1009
  %or.cond19 = select i1 %.not, i1 true, i1 %or.cond
  br i1 %or.cond19, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @mbedtls_rsa_private(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %i.a) ; 2 uses
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.a, align 16, !tbaa !22
  %i.i = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22
  %i.l = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.m = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.n = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.o = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.057.i = phi i64 [ 2, %bb.c ], [ %i.ag, %bb.d ] ; 2 uses
  %.04956.i = phi i64 [ %i.o, %bb.c ], [ %i.ac, %bb.d ]
  %.05055.i = phi i64 [ 0, %bb.c ], [ %i.af, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.057.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = zext i8 %i.q to i64
  %i.s = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.t = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.u = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.v = xor i64 %i.s, %i.r
  %i.w = xor i64 %i.v, %i.t
  %i.x = xor i64 %i.w, %i.u                       ; 2 uses
  %i.y = sub i64 0, %i.x
  %i.z = lshr i64 %i.x, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = or i64 %i.aa, %i.y
  %isnotneg.i.i = icmp sgt i64 %i.ab, -1
  %i.ac = select i1 %isnotneg.i.i, i64 -1, i64 %.04956.i ; 3 uses
  %i.ad = and i64 %i.ac, 1
  %i.ae = xor i64 %i.ad, 1
  %i.af = add i64 %i.ae, %.05055.i                ; 3 uses
  %i.ag = add nuw nsw i64 %.057.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.c
  br i1 %exitcond.not.i, label %bb.e, label %bb.d, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i64 %i.c, -11                   ; 2 uses
  %i.ai = call i64 @llvm.umin.i64(i64 %6, i64 %i.ah) ; 7 uses
  %i.aj = zext i8 %i.h to i64
  %i.ak = xor i64 %i.i, %i.aj                     ; 2 uses
  %i.al = sub i64 0, %i.ak
  %i.am = lshr i64 %i.ak, 1
  %i.an = sub nsw i64 0, %i.am
  %i.ao = xor i8 %i.k, 2
  %i.ap = zext i8 %i.ao to i64
  %i.aq = xor i64 %i.l, %i.ap
  %i.ar = xor i64 %i.aq, %i.m
  %i.as = xor i64 %i.ar, %i.n                     ; 2 uses
  %i.at = sub i64 0, %i.as
  %i.au = lshr i64 %i.as, 1
  %i.av = sub nsw i64 0, %i.au
  %i.aw = or i64 %i.an, %i.al
  %i.ax = or i64 %i.aw, %i.at
  %.neg.i.i54.i = or i64 %i.ax, %i.av
  %i.ay = ashr i64 %.neg.i.i54.i, 63
  %i.az = xor i64 %i.ac, -1
  %i.ba = or i64 %i.ay, %i.az
  %i.bb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.bc = xor i64 %i.bb, %i.af                    ; 2 uses
  %i.bd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 3 uses
  %i.be = xor i64 %i.bd, 8
  %i.bf = xor i64 %i.bc, %i.bd
  %i.bg = lshr i64 %i.bf, 63
  %i.bh = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 2 uses
  %i.bi = xor i64 %i.bg, %i.bh
  %i.bj = sub i64 0, %i.bi
  %i.bk = lshr i64 %i.bh, 1
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = or i64 %i.bj, %i.bl
  %.neg.i.i.i.i = ashr i64 %i.bm, 63              ; 2 uses
  %i.bn = sub i64 %i.bc, %i.be
  %i.bo = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.bp = xor i64 %i.bo, %.neg.i.i.i.i
  %i.bq = xor i64 %i.bp, -1
  %i.br = and i64 %.neg.i.i.i.i, %i.bd
  %i.bs = and i64 %i.bn, %i.bq
  %i.bt = or i64 %i.bs, %i.br
  %i.bu = lshr i64 %i.bt, 63
  %i.bv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 2 uses
  %i.bw = xor i64 %i.bu, %i.bv
  %i.bx = sub i64 0, %i.bw
  %i.by = lshr i64 %i.bv, 1
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = or i64 %i.bx, %i.bz
  %.neg.i10.i.i.i = ashr i64 %i.ca, 63
  %i.cb = or i64 %i.ba, %.neg.i10.i.i.i           ; 5 uses
  %i.cc = add nuw nsw i64 %i.c, 4294967293
  %i.cd = sub i64 %i.cc, %i.af
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.cg = xor i64 %i.cf, %i.cb
  %i.ch = xor i64 %i.cg, -1
  %i.ci = and i64 %i.cb, %i.ai
  %i.cj = and i64 %i.ce, %i.ch
  %i.ck = or i64 %i.cj, %i.ci                     ; 2 uses
  %i.cl = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.cm = xor i64 %i.cl, %i.ai                    ; 2 uses
  %i.cn = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 3 uses
  %i.co = xor i64 %i.ck, %i.cn
  %i.cp = xor i64 %i.cm, %i.cn
  %i.cq = lshr i64 %i.cp, 63
  %i.cr = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 2 uses
  %i.cs = xor i64 %i.cq, %i.cr
  %i.ct = sub i64 0, %i.cs
  %i.cu = lshr i64 %i.cr, 1
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = or i64 %i.ct, %i.cv
  %.neg.i.i.i52.i = ashr i64 %i.cw, 63            ; 2 uses
  %i.cx = sub i64 %i.cm, %i.co
  %i.cy = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.cz = xor i64 %i.cy, %.neg.i.i.i52.i
  %i.da = xor i64 %i.cz, -1
  %i.db = and i64 %.neg.i.i.i52.i, %i.cn
  %i.dc = and i64 %i.cx, %i.da
  %i.dd = or i64 %i.dc, %i.db
  %i.de = lshr i64 %i.dd, 63
  %i.df = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 2 uses
  %i.dg = xor i64 %i.de, %i.df
  %i.dh = sub i64 0, %i.dg
  %i.di = lshr i64 %i.df, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = or i64 %i.dh, %i.dj
  %.neg.i10.i.i53.i = ashr i64 %i.dk, 63          ; 4 uses
  %i.dl = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.dm = or i64 %.neg.i10.i.i53.i, %i.cb
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  call void @_Z21mbedtls_ct_zeroize_ifmPvm(i64 noundef %i.dm, ptr noundef nonnull %i.dn, i64 noundef %i.ah)
  %i.do = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.dp = xor i64 %i.do, %.neg.i10.i.i53.i
  %i.dq = xor i64 %i.dp, -1
  %i.dr = and i64 %.neg.i10.i.i53.i, %i.ai
  %i.ds = and i64 %i.ck, %i.dq
  %i.dt = or i64 %i.ds, %i.dr                     ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.dv = sub nsw i64 0, %i.ai
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 %i.dv ; 2 uses
  %i.dx = sub nsw i64 %i.ai, %i.dt
  call void @_Z23mbedtls_ct_memmove_leftPvmm(ptr noundef nonnull %i.dw, i64 noundef %i.ai, i64 noundef %i.dx)
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %i.dw, i64 %i.ai, i1 false)
  br label %_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit

_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit: ; preds = %bb.e, %bb.f
  %i.dy = xor i64 %i.cb, %i.dl
  %i.dz = and i64 %i.dy, 17408
  %i.ea = xor i64 %i.dz, 17408
  %i.eb = and i64 %.neg.i10.i.i53.i, %i.ea
  %i.ec = and i64 %i.cb, 16640
  %i.ed = or i64 %i.eb, %i.ec
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = sub nsw i32 0, %i.ee
  store i64 %i.dt, ptr %3, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit
  %.015 = phi i32 [ %i.g, %bb.b ], [ %i.ef, %_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 1024)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.0 = phi i32 [ %.015, %bb.g ], [ -16512, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
end_hunk_0
