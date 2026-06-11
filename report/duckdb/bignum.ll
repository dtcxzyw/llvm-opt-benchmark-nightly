inline.NumInlined: 162
inline.NumDeleted: 17
begin_hunk_0_@_ZL35mbedtls_mpi_exp_mod_optionally_safeP11mbedtls_mpiPKS_S2_iS2_S0_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.af = load i16, ptr %i.o, align 2, !tbaa !7   ; 2 uses
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call i32 @mbedtls_mpi_lset(ptr noundef %0, i64 noundef 1)
  br label %mbedtls_mpi_cmp_int.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = load i16, ptr %i.a, align 2, !tbaa !7
  %i.aj = zext i16 %i.ai to i64
  %i.ak = zext i16 %i.af to i64
  %i.al = tail call noundef i64 @_Z38mbedtls_mpi_core_exp_mod_working_limbsmm(i64 noundef %i.aj, i64 noundef %i.ak) ; 4 uses
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 8) #13 ; 8 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 1, ptr %i.ao, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  store i16 0, ptr %i.ap, align 2, !tbaa !7
  store ptr null, ptr %6, align 8, !tbaa !15
  %i.aq = icmp eq ptr %5, null                    ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %5, align 8, !tbaa !15
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.at = call noundef i32 @_Z35mbedtls_mpi_core_get_mont_r2_unsafeP11mbedtls_mpiPKS_(ptr noundef nonnull %6, ptr noundef nonnull %4) ; 2 uses
  %.not85 = icmp eq i32 %i.at, 0
  br i1 %.not85, label %bb.r, label %.thread133

.thread133:                                       ; preds = %bb.n
  %i.au = shl i64 %i.al, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.am, i64 noundef %i.au)
  br label %bb.ad

.thread:                                          ; preds = %bb.m
  %i.av = call noundef i32 @_Z35mbedtls_mpi_core_get_mont_r2_unsafeP11mbedtls_mpiPKS_(ptr noundef nonnull %6, ptr noundef nonnull %4) ; 2 uses
  %.not85108 = icmp eq i32 %i.av, 0
  br i1 %.not85108, label %bb.o, label %.thread110

bb.o:                                             ; preds = %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !45
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.aw = load i16, ptr %i.a, align 2, !tbaa !7
  %i.ax = zext i16 %i.aw to i64
  %i.ay = tail call i32 @mbedtls_mpi_grow(ptr noundef nonnull %5, i64 noundef %i.ax) ; 2 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.q, label %.thread110

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !45
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.o
  %i.az = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not87 = icmp eq i32 %i.az, 0
  br i1 %.not87, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 1, ptr %i.ba, align 8, !tbaa !12
  %i.bb = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %0, ptr noundef nonnull %4)
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %4) ; 2 uses
  %.not88 = icmp eq i32 %i.bd, 0
  br i1 %.not88, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.be = load i16, ptr %i.a, align 2, !tbaa !7
  %i.bf = zext i16 %i.be to i64
  %i.bg = call i32 @mbedtls_mpi_grow(ptr noundef nonnull %0, i64 noundef %i.bf) ; 2 uses
  %.not89 = icmp eq i32 %i.bg, 0
  br i1 %.not89, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %4, align 8, !tbaa !15
  %i.bi = call noundef i64 @_Z29mbedtls_mpi_core_montmul_initPKm(ptr noundef %i.bh) ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !15
  %i.bl = load i16, ptr %i.a, align 2, !tbaa !7
  %i.bm = zext i16 %i.bl to i64
  %i.bn = load ptr, ptr %6, align 8, !tbaa !15
  call void @_Z28mbedtls_mpi_core_to_mont_repPmPKmS1_mmS1_S_(ptr noundef %i.bj, ptr noundef %i.bj, ptr noundef %i.bk, i64 noundef %i.bm, i64 noundef %i.bi, ptr noundef %i.bn, ptr noundef nonnull %i.am)
  %i.bo = icmp eq i32 %3, 707406378
  %i.bp = load ptr, ptr %0, align 8, !tbaa !15    ; 4 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.br = load i16, ptr %i.a, align 2, !tbaa !7
  %i.bs = zext i16 %i.br to i64                   ; 2 uses
  %i.bt = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bu = load i16, ptr %i.o, align 2, !tbaa !7
  %i.bv = zext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_Z31mbedtls_mpi_core_exp_mod_unsafePmPKmS1_mS1_mS1_S_(ptr noundef %i.bp, ptr noundef %i.bp, ptr noundef %i.bq, i64 noundef %i.bs, ptr noundef %i.bt, i64 noundef %i.bv, ptr noundef %i.bw, ptr noundef nonnull %i.am)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @_Z24mbedtls_mpi_core_exp_modPmPKmS1_mS1_mS1_S_(ptr noundef %i.bp, ptr noundef %i.bp, ptr noundef %i.bq, i64 noundef %i.bs, ptr noundef %i.bt, i64 noundef %i.bv, ptr noundef %i.bw, ptr noundef nonnull %i.am)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bx = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.by = load ptr, ptr %4, align 8, !tbaa !15
  %i.bz = load i16, ptr %i.a, align 2, !tbaa !7
  %i.ca = zext i16 %i.bz to i64
  call void @_Z30mbedtls_mpi_core_from_mont_repPmPKmS1_mmS_(ptr noundef %i.bx, ptr noundef %i.bx, ptr noundef %i.by, i64 noundef %i.ca, i64 noundef %i.bi, ptr noundef nonnull %i.am)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !12
  %i.cd = icmp eq i16 %i.cc, -1
  br i1 %i.cd, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ce = load ptr, ptr %2, align 8, !tbaa !15
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !13
  %i.cg = and i64 %i.cf, 1
  %.not90 = icmp eq i64 %i.cg, 0
  br i1 %.not90, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = load ptr, ptr %0, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !7
  %i.ck = zext i16 %i.cj to i64
  %i.cl = call noundef i64 @_Z30mbedtls_mpi_core_check_zero_ctPKmm(ptr noundef %i.ch, i64 noundef %i.ck)
  %i.cm = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !13
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = trunc i64 %i.cn to i16
  %i.cp = and i16 %i.co, 2
  %i.cq = sub nsw i16 1, %i.cp
  store i16 %i.cq, ptr %i.ba, align 8, !tbaa !12
  %i.cr = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %0, i32 noundef 1)
  br label %bb.ab

.thread110:                                       ; preds = %.thread, %bb.p
  %.073.ph = phi i32 [ %i.av, %.thread ], [ %i.ay, %bb.p ]
  %i.cs = shl i64 %i.al, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.am, i64 noundef %i.cs)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.z, %bb.u, %bb.t, %bb.r
  %.073 = phi i32 [ 0, %bb.z ], [ %i.az, %bb.r ], [ %i.bd, %bb.t ], [ %i.bg, %bb.u ], [ 0, %bb.y ], [ %i.cr, %bb.aa ] ; 2 uses
  %i.ct = shl i64 %i.al, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.am, i64 noundef %i.ct)
  br i1 %i.aq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread110, %bb.ab
  %.073113 = phi i32 [ %.073.ph, %.thread110 ], [ %.073, %bb.ab ] ; 2 uses
  %i.cu = load ptr, ptr %5, align 8, !tbaa !15
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ad, label %mbedtls_mpi_free.exit

bb.ad:                                            ; preds = %.thread133, %bb.ac, %bb.ab
  %.073114 = phi i32 [ %.073113, %bb.ac ], [ %.073, %bb.ab ], [ %i.at, %.thread133 ] ; 2 uses
  %i.cw = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i = icmp eq ptr %i.cw, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i16, ptr %i.ap, align 2, !tbaa !7
  %i.cy = zext i16 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz)
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.073112 = phi i32 [ %.073113, %bb.ac ], [ %.073114, %bb.ad ], [ %.073114, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.a, %mbedtls_mpi_free.exit, %bb.k, %mbedtls_mpi_cmp_int.exit101.thread, %bb.h, %mbedtls_mpi_cmp_int.exit101, %mbedtls_mpi_cmp_int.exit, %bb.d, %bb.j
  %.2 = phi i32 [ -4, %mbedtls_mpi_cmp_int.exit101.thread ], [ -4, %mbedtls_mpi_cmp_int.exit ], [ -4, %mbedtls_mpi_cmp_int.exit101 ], [ %i.ah, %bb.j ], [ -4, %bb.d ], [ -4, %bb.h ], [ %.073112, %mbedtls_mpi_free.exit ], [ -16, %bb.k ], [ -4, %bb.a ], [ -4, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z26mbedtls_mpi_exp_mod_unsafeP11mbedtls_mpiPKS_S2_S2_S0_(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL35mbedtls_mpi_exp_mod_optionally_safeP11mbedtls_mpiPKS_S2_iS2_S0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 707406378, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -16, 1) i32 @mbedtls_mpi_gcd(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 13 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i16 1, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 4 uses
  store i16 0, ptr %i.b, align 2, !tbaa !7
  store ptr null, ptr %3, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i16 1, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 5 uses
  store i16 0, ptr %i.d, align 2, !tbaa !7
  store ptr null, ptr %4, align 8, !tbaa !15
  %i.e = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %3, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %mbedtls_mpi_shift_l.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %4, ptr noundef %2) ; 2 uses
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.c, label %mbedtls_mpi_shift_l.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %i.b, align 2, !tbaa !7    ; 3 uses
  %i.h = zext i16 %i.g to i64
  %.not12.i = icmp eq i16 %i.g, 0                 ; 2 uses
  br i1 %.not12.i, label %mbedtls_mpi_lsb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = load ptr, ptr %3, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %bb.f ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nuw nsw i64 %.011.i, 6
  %i.m = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.k, i1 true)
  %i.n = or disjoint i64 %i.m, %i.l
  br label %mbedtls_mpi_lsb.exit

bb.f:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %mbedtls_mpi_lsb.exit, label %bb.d, !llvm.loop !20

mbedtls_mpi_lsb.exit:                             ; preds = %bb.f, %bb.c, %bb.e
  %.08.i = phi i64 [ %i.n, %bb.e ], [ 0, %bb.c ], [ 0, %bb.f ]
  %i.p = load i16, ptr %i.d, align 2, !tbaa !7    ; 5 uses
  %i.q = zext i16 %i.p to i64
  %.not12.i27 = icmp eq i16 %i.p, 0
  br i1 %.not12.i27, label %mbedtls_mpi_shift_l.exit.thread.sink.split, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %mbedtls_mpi_lsb.exit
  %i.r = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i28
  %.011.i29 = phi i64 [ 0, %.lr.ph.i28 ], [ %i.u, %bb.h ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i29
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %.not.i30 = icmp eq i64 %i.t, 0
  br i1 %.not.i30, label %bb.h, label %mbedtls_mpi_lsb.exit33

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i64 %.011.i29, 1             ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %i.u, %i.q
  br i1 %exitcond.not.i32, label %mbedtls_mpi_get_bit.exit, label %bb.g, !llvm.loop !20

mbedtls_mpi_lsb.exit33:                           ; preds = %bb.g
  %i.v = shl nuw nsw i64 %.011.i29, 6
  %i.w = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.t, i1 true)
  %i.x = or disjoint i64 %i.w, %i.v               ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %mbedtls_mpi_get_bit.exit, label %bb.i

mbedtls_mpi_get_bit.exit:                         ; preds = %bb.h, %mbedtls_mpi_lsb.exit33
  %i.z = load i64, ptr %i.r, align 8, !tbaa !13
  %i.aa = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %mbedtls_mpi_shift_l.exit.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %mbedtls_mpi_get_bit.exit, %mbedtls_mpi_lsb.exit33
  %.08.i3164 = phi i64 [ 0, %mbedtls_mpi_get_bit.exit ], [ %i.x, %mbedtls_mpi_lsb.exit33 ]
  %spec.select = call i64 @llvm.umin.i64(i64 %.08.i3164, i64 %.08.i) ; 2 uses
  store i16 1, ptr %i.c, align 8, !tbaa !12
  store i16 1, ptr %i.a, align 8, !tbaa !12
  br i1 %.not12.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i.outer

.lr.ph.i.i.outer:                                 ; preds = %bb.i, %mbedtls_mpi_shift_r.exit55.sink.split
  %.ph = phi i16 [ %.ph155, %mbedtls_mpi_shift_r.exit55.sink.split ], [ %i.p, %bb.i ]
  %.ph179 = phi i16 [ %.ph156, %mbedtls_mpi_shift_r.exit55.sink.split ], [ %i.g, %bb.i ] ; 2 uses
  %.ph180 = phi i16 [ %.ph157, %mbedtls_mpi_shift_r.exit55.sink.split ], [ %i.p, %bb.i ]
  %5 = zext i16 %.ph179 to i64                    ; 4 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !15    ; 5 uses
  %6 = load i16, ptr %i.a, align 8                ; 5 uses
  %.not23 = icmp eq i16 %6, 0
  %7 = icmp sgt i16 %6, 0
  %8 = sext i16 %6 to i32
  %9 = sub nsw i32 0, %8
  %10 = sext i16 %6 to i32
  %11 = sext i16 %6 to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.outer, %bb.ab
  %i.ad = phi i16 [ 0, %bb.ab ], [ %.ph, %.lr.ph.i.i.outer ] ; 4 uses
  %i.ae = phi i16 [ 0, %bb.ab ], [ %.ph180, %.lr.ph.i.i.outer ] ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %5, %.lr.ph.i.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.ac, i64 %.03545.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13
  %.not39.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not39.i.i, label %bb.k, label %.lr.ph51.i.i

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i64 %.03545.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.j, !llvm.loop !27

.lr.ph51.i.i:                                     ; preds = %bb.j
  br i1 %.not23, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph51.i.i, %bb.m
  %.011.i37 = phi i64 [ %i.ao, %bb.m ], [ 0, %.lr.ph51.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.011.i37
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %.not.i38 = icmp eq i64 %i.ak, 0
  br i1 %.not.i38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i36
  %i.al = shl nuw nsw i64 %.011.i37, 6
  %i.am = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ak, i1 true)
  %i.an = or disjoint i64 %i.am, %i.al
  br label %mbedtls_mpi_lsb.exit41

bb.m:                                             ; preds = %.lr.ph.i36
  %i.ao = add nuw nsw i64 %.011.i37, 1            ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %i.ao, %5
  br i1 %exitcond.not.i40, label %mbedtls_mpi_lsb.exit41, label %.lr.ph.i36, !llvm.loop !20

mbedtls_mpi_lsb.exit41:                           ; preds = %bb.m, %bb.l
  %.08.i39 = phi i64 [ %i.an, %bb.l ], [ 0, %bb.m ]
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef nonnull %i.ac, i64 noundef %5, i64 noundef %.08.i39)
  %i.ap = zext i16 %i.ae to i64                   ; 3 uses
  %.not12.i43 = icmp eq i16 %i.ae, 0              ; 2 uses
  br i1 %.not12.i43, label %.lr.ph.i52.preheader, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %mbedtls_mpi_lsb.exit41
  %i.aq = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i44
  %.011.i45 = phi i64 [ 0, %.lr.ph.i44 ], [ %i.aw, %bb.p ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.011.i45
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %.not.i46 = icmp eq i64 %i.as, 0
  br i1 %.not.i46, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = shl nuw nsw i64 %.011.i45, 6
  %i.au = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.as, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at
  br label %mbedtls_mpi_lsb.exit49

bb.p:                                             ; preds = %bb.n
  %i.aw = add nuw nsw i64 %.011.i45, 1            ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %i.aw, %i.ap
  br i1 %exitcond.not.i48, label %mbedtls_mpi_lsb.exit49, label %bb.n, !llvm.loop !20

mbedtls_mpi_lsb.exit49:                           ; preds = %bb.p, %bb.o
  %.08.i47 = phi i64 [ %i.av, %bb.o ], [ 0, %bb.p ]
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef nonnull %i.aq, i64 noundef %i.ap, i64 noundef %.08.i47)
  br label %.lr.ph.i52.preheader

.lr.ph.i52.preheader:                             ; preds = %mbedtls_mpi_lsb.exit49, %mbedtls_mpi_lsb.exit41
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader, %bb.q
  %.03545.i = phi i64 [ %i.ba, %bb.q ], [ %5, %.lr.ph.i52.preheader ] ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ac, i64 %.03545.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !13
  %.not39.i = icmp eq i64 %i.az, 0
  br i1 %.not39.i, label %bb.q, label %._crit_edge.i

bb.q:                                             ; preds = %.lr.ph.i52
  %i.ba = add nsw i64 %.03545.i, -1               ; 2 uses
  %.not.i53 = icmp eq i64 %i.ba, 0
  br i1 %.not.i53, label %._crit_edge.i, label %.lr.ph.i52, !llvm.loop !27

._crit_edge.i:                                    ; preds = %bb.q, %.lr.ph.i52
  %.035.lcssa.i = phi i64 [ 0, %bb.q ], [ %.03545.i, %.lr.ph.i52 ] ; 5 uses
  br i1 %.not12.i43, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %._crit_edge.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph51.i
  %.049.i = phi i64 [ %i.ap, %.lr.ph51.i ], [ %i.bf, %bb.s ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %.049.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13
  %.not41.i = icmp eq i64 %i.be, 0
  br i1 %.not41.i, label %bb.s, label %._crit_edge52.i

bb.s:                                             ; preds = %bb.r
  %i.bf = add nsw i64 %.049.i, -1                 ; 2 uses
  %.not40.i = icmp eq i64 %i.bf, 0
  br i1 %.not40.i, label %._crit_edge52.i, label %bb.r, !llvm.loop !32

._crit_edge52.i:                                  ; preds = %bb.s, %bb.r, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.s ], [ %.049.i, %bb.r ] ; 3 uses
  %i.bg = or i64 %.0.lcssa.i, %.035.lcssa.i
  %or.cond.i = icmp eq i64 %i.bg, 0
  br i1 %or.cond.i, label %mbedtls_mpi_cmp_mpi.exit.thread, label %bb.t

bb.t:                                             ; preds = %._crit_edge52.i
  %i.bh = icmp ugt i64 %.035.lcssa.i, %.0.lcssa.i
  br i1 %i.bh, label %mbedtls_mpi_cmp_mpi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = icmp ugt i64 %.0.lcssa.i, %.035.lcssa.i
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = load i16, ptr %i.c, align 8, !tbaa !12
  %i.bk = sext i16 %i.bj to i32
  %i.bl = sub nsw i32 0, %i.bk
  br label %mbedtls_mpi_cmp_mpi.exit

bb.w:                                             ; preds = %bb.u
  %i.bm = load i16, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  br i1 %7, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bn = icmp slt i16 %i.bm, 0
  br i1 %i.bn, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.preheader.preheader.i

bb.y:                                             ; preds = %bb.w
  %i.bo = icmp sgt i16 %i.bm, 0
  br i1 %i.bo, label %mbedtls_mpi_cmp_mpi.exit.thread74, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.y, %bb.x
  %i.bp = load ptr, ptr %4, align 8
  %.not42.i176 = icmp eq i64 %.035.lcssa.i, 0
  br i1 %.not42.i176, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph

.preheader.i:                                     ; preds = %bb.z
  %.not42.i = icmp eq i64 %i.bq, 0
  br i1 %.not42.i, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph, !llvm.loop !33

.lr.ph:                                           ; preds = %.preheader.preheader.i, %.preheader.i
  %.1.i177 = phi i64 [ %i.bq, %.preheader.i ], [ %.035.lcssa.i, %.preheader.preheader.i ]
  %i.bq = add nsw i64 %.1.i177, -1                ; 4 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !13 ; 2 uses
  %i.bv = icmp ugt i64 %i.bs, %i.bu
  br i1 %i.bv, label %mbedtls_mpi_cmp_mpi.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.bw = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bw, label %mbedtls_mpi_cmp_mpi.exit, label %.preheader.i, !llvm.loop !33

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %bb.z, %.lr.ph, %bb.t, %bb.v
  %.036.i = phi i32 [ %10, %.lr.ph ], [ %11, %bb.t ], [ %i.bl, %bb.v ], [ %9, %bb.z ]
  %i.bx = icmp sgt i32 %.036.i, -1
  br i1 %i.bx, label %mbedtls_mpi_cmp_mpi.exit.thread, label %mbedtls_mpi_cmp_mpi.exit.thread74

mbedtls_mpi_cmp_mpi.exit.thread:                  ; preds = %.preheader.preheader.i, %bb.x, %._crit_edge52.i, %mbedtls_mpi_cmp_mpi.exit, %.preheader.i
  %i.by = call i32 @mbedtls_mpi_sub_abs(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 2 uses
  %.not26 = icmp eq i32 %i.by, 0
  br i1 %.not26, label %bb.aa, label %mbedtls_mpi_shift_l.exit.thread

bb.aa:                                            ; preds = %mbedtls_mpi_cmp_mpi.exit.thread
  %i.bz = load i16, ptr %i.b, align 2, !tbaa !7   ; 3 uses
  %.not.i54 = icmp eq i16 %i.bz, 0
  br i1 %.not.i54, label %mbedtls_mpi_cmp_int.exit.thread, label %mbedtls_mpi_shift_r.exit55.sink.split

mbedtls_mpi_cmp_mpi.exit.thread74:                ; preds = %bb.y, %mbedtls_mpi_cmp_mpi.exit
  %i.ca = call i32 @mbedtls_mpi_sub_abs(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %3) ; 2 uses
  %.not25 = icmp eq i32 %i.ca, 0
  br i1 %.not25, label %bb.ab, label %mbedtls_mpi_shift_l.exit.thread

bb.ab:                                            ; preds = %mbedtls_mpi_cmp_mpi.exit.thread74
  %i.cb = load i16, ptr %i.d, align 2, !tbaa !7   ; 4 uses
  %.not.i56 = icmp eq i16 %i.cb, 0
  br i1 %.not.i56, label %.lr.ph.i.i, label %mbedtls_mpi_shift_r.exit55.sink.split, !llvm.loop !48

mbedtls_mpi_shift_r.exit55.sink.split:            ; preds = %bb.ab, %bb.aa
  %.sink160 = phi ptr [ %3, %bb.aa ], [ %4, %bb.ab ]
  %.sink159 = phi i16 [ %i.bz, %bb.aa ], [ %i.cb, %bb.ab ]
  %.ph155 = phi i16 [ %i.ad, %bb.aa ], [ %i.cb, %bb.ab ]
  %.ph156 = phi i16 [ %i.bz, %bb.aa ], [ %.ph179, %bb.ab ]
  %.ph157 = phi i16 [ %i.ae, %bb.aa ], [ %i.cb, %bb.ab ]
  %12 = load ptr, ptr %.sink160, align 8, !tbaa !15
  %13 = zext i16 %.sink159 to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %12, i64 noundef %13, i64 noundef 1)
  br label %.lr.ph.i.i.outer, !llvm.loop !48

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %.lr.ph51.i.i, %bb.aa, %bb.k, %bb.i
  %14 = phi i16 [ %i.ad, %bb.k ], [ %i.p, %bb.i ], [ %i.ad, %bb.aa ], [ %i.ad, %.lr.ph51.i.i ]
  %i.cc = load ptr, ptr %4, align 8, !tbaa !15    ; 6 uses
  %i.cd = zext i16 %14 to i64                     ; 6 uses
  %i.ce = call noundef i64 @_Z23mbedtls_mpi_core_bitlenPKmm(ptr noundef %i.cc, i64 noundef %i.cd)
  %i.cf = add i64 %i.ce, %spec.select             ; 3 uses
  %i.cg = shl nuw nsw i64 %i.cd, 6
  %i.ch = icmp ult i64 %i.cg, %i.cf
  br i1 %i.ch, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %mbedtls_mpi_cmp_int.exit.thread
  %i.ci = lshr i64 %i.cf, 6
  %i.cj = and i64 %i.cf, 63
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i64
  %i.cm = add nuw nsw i64 %i.ci, %i.cl            ; 5 uses
  %i.cn = icmp samesign ugt i64 %i.cm, 10000
  br i1 %i.cn, label %mbedtls_mpi_shift_l.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = icmp samesign ugt i64 %i.cm, %i.cd
  br i1 %i.co, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cp = call noalias ptr @calloc(i64 noundef %i.cm, i64 noundef 8) #13 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %mbedtls_mpi_shift_l.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i59 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i59, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = shl nuw nsw i64 %i.cd, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr nonnull align 8 %i.cc, i64 %i.cr, i1 false)
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.cc, i64 noundef %i.cr)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cs = trunc nuw nsw i64 %i.cm to i16
  store i16 %i.cs, ptr %i.d, align 2, !tbaa !7
  store ptr %i.cp, ptr %4, align 8, !tbaa !15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad, %mbedtls_mpi_cmp_int.exit.thread
  %i.ct = phi ptr [ %i.cc, %bb.ad ], [ %i.cp, %bb.ah ], [ %i.cc, %mbedtls_mpi_cmp_int.exit.thread ]
  %.pre-phi.i = phi i64 [ %i.cd, %bb.ad ], [ %i.cm, %bb.ah ], [ %i.cd, %mbedtls_mpi_cmp_int.exit.thread ]
  call void @_Z24mbedtls_mpi_core_shift_lPmmm(ptr noundef %i.ct, i64 noundef %.pre-phi.i, i64 noundef %spec.select)
  br label %mbedtls_mpi_shift_l.exit.thread.sink.split

mbedtls_mpi_shift_l.exit.thread.sink.split:       ; preds = %mbedtls_mpi_get_bit.exit, %mbedtls_mpi_lsb.exit, %bb.ai
  %.sink = phi ptr [ %4, %bb.ai ], [ %1, %mbedtls_mpi_lsb.exit ], [ %1, %mbedtls_mpi_get_bit.exit ]
  %i.cu = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef %.sink)
  br label %mbedtls_mpi_shift_l.exit.thread

mbedtls_mpi_shift_l.exit.thread:                  ; preds = %mbedtls_mpi_cmp_mpi.exit.thread74, %mbedtls_mpi_cmp_mpi.exit.thread, %mbedtls_mpi_shift_l.exit.thread.sink.split, %bb.ac, %bb.ae, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %i.f, %bb.b ], [ -16, %bb.ac ], [ %i.cu, %mbedtls_mpi_shift_l.exit.thread.sink.split ], [ -16, %bb.ae ], [ %i.ca, %mbedtls_mpi_cmp_mpi.exit.thread74 ], [ %i.by, %mbedtls_mpi_cmp_mpi.exit.thread ]
  %15 = load ptr, ptr %3, align 8, !tbaa !15      ; 2 uses
  %.not.i60 = icmp eq ptr %15, null
  br i1 %.not.i60, label %mbedtls_mpi_free.exit, label %bb.aj

bb.aj:                                            ; preds = %mbedtls_mpi_shift_l.exit.thread
  %i.cv = load i16, ptr %i.b, align 2, !tbaa !7
  %i.cw = zext i16 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %15, i64 noundef %i.cx)
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_shift_l.exit.thread, %bb.aj
  %i.cy = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not.i61 = icmp eq ptr %i.cy, null
  br i1 %.not.i61, label %mbedtls_mpi_free.exit62, label %bb.ak

bb.ak:                                            ; preds = %mbedtls_mpi_free.exit
  %i.cz = load i16, ptr %i.d, align 2, !tbaa !7
  %i.da = zext i16 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.cy, i64 noundef %i.db)
  br label %mbedtls_mpi_free.exit62

mbedtls_mpi_free.exit62:                          ; preds = %mbedtls_mpi_free.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_mpi_fill_random(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 5 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !7
  %i.k = zext i16 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.h, i64 noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !15
  br label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !7
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %i.r = icmp eq i64 %i.e, %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !12
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.not.i11.i = icmp eq ptr %i.s, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = shl nuw nsw i64 %i.q, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.s, i64 noundef %i.v)
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.w, align 8, !tbaa !12
  store i16 0, ptr %i.o, align 2, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.x = icmp samesign ugt i64 %i.e, 10000
  br i1 %i.x, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.j

bb.j:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.y = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.e, i64 noundef 8) #13 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = trunc nuw nsw i64 %i.e to i16
  store i16 %i.aa, ptr %i.o, align 2, !tbaa !7
  store ptr %i.y, ptr %0, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.ab = load ptr, ptr %0, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !7
  %i.ae = zext i16 %i.ad to i64
  %i.af = tail call noundef i32 @_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_(ptr noundef %i.ab, i64 noundef %i.ae, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit: ; preds = %bb.b, %bb.e, %bb.j, %mbedtls_mpi_free.exit12.i, %bb.l
  %.0 = phi i32 [ -16, %bb.j ], [ %i.af, %bb.l ], [ -16, %mbedtls_mpi_free.exit12.i ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

declare noundef i32 @_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_mpi_random(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !7    ; 6 uses
  %.not44.i.i = icmp eq i16 %i.c, 0               ; 2 uses
  br i1 %.not44.i.i, label %.lr.ph51.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = zext i16 %i.c to i64
  %i.e = load ptr, ptr %2, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.03545.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %.not39.i.i = icmp eq i64 %i.h, 0
  br i1 %.not39.i.i, label %bb.d, label %.lr.ph51.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.lr.ph51.i.i, label %bb.c, !llvm.loop !27

.lr.ph51.i.i:                                     ; preds = %bb.d, %bb.c, %bb.b
  %.035.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %.03545.i.i, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %.not41.i.i = icmp ne i64 %1, 0
  %spec.select.i = zext i1 %.not41.i.i to i64     ; 3 uses
  %i.j = or i64 %.035.lcssa.i.i, %spec.select.i
  %or.cond.i.i = icmp eq i64 %i.j, 0
  br i1 %or.cond.i.i, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph51.i.i
  %i.k = icmp ugt i64 %.035.lcssa.i.i, %spec.select.i
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !12
  %i.n = sext i16 %i.m to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.g:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i64 %.035.lcssa.i.i, %spec.select.i
  br i1 %i.o, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i16, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %or.cond = icmp slt i16 %i.q, 0
  %i.r = icmp eq i64 %.035.lcssa.i.i, 0
  %or.cond33 = or i1 %or.cond, %i.r
  br i1 %or.cond33, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %2, align 8, !tbaa !15
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %i.u = icmp ugt i64 %i.t, %1
  br i1 %i.u, label %bb.j, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

bb.j:                                             ; preds = %bb.i
  %i.v = zext nneg i16 %i.q to i32
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.f, %bb.j
  %.036.i.i = phi i32 [ %i.v, %bb.j ], [ %i.n, %bb.f ]
  %i.w = icmp slt i32 %.036.i.i, 1
  br i1 %i.w, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %mbedtls_mpi_cmp_int.exit.thread17

mbedtls_mpi_cmp_int.exit.thread17:                ; preds = %mbedtls_mpi_cmp_int.exit
  %i.x = zext i16 %i.c to i64                     ; 2 uses
  br i1 %.not44.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread17
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !15  ; 2 uses
  %.not.i.i15 = icmp eq ptr %.pre23, null
  br i1 %.not.i.i15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load i16, ptr %i.y, align 2, !tbaa !7
  %i.aa = zext i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %.pre23, i64 noundef %i.ab)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ad, align 2, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !15
  br label %bb.t

bb.n:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !7  ; 2 uses
  %i.ag = zext i16 %i.af to i64
  %i.ah = icmp eq i16 %i.c, %i.af
  %i.ai = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.ak, align 8, !tbaa !12
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %.not.i11.i = icmp eq ptr %i.ai, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = shl nuw nsw i64 %i.ag, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ai, i64 noundef %i.al)
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.q, %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.am, align 8, !tbaa !12
  store i16 0, ptr %i.ae, align 2, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.an = icmp ugt i16 %i.c, 10000
  br i1 %i.an, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.r

bb.r:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.ao = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.x, i64 noundef 8) #13 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 %i.c, ptr %i.ae, align 2, !tbaa !7
  store ptr %i.ao, ptr %0, align 8, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.o, %bb.s
  %i.aq = phi ptr [ null, %bb.m ], [ %.pre, %bb.o ], [ %i.ao, %bb.s ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.at = load i16, ptr %i.as, align 2, !tbaa !7
  %i.au = zext i16 %i.at to i64
  %i.av = tail call noundef i32 @_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_(ptr noundef %i.aq, i64 noundef %1, ptr noundef %i.ar, i64 noundef %i.au, ptr noundef %3, ptr noundef %4)
  br label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit: ; preds = %bb.i, %bb.g, %bb.h, %.lr.ph51.i.i, %bb.r, %mbedtls_mpi_free.exit12.i, %bb.t, %mbedtls_mpi_cmp_int.exit, %bb.a
  %.1 = phi i32 [ -4, %mbedtls_mpi_cmp_int.exit ], [ -4, %bb.a ], [ %i.av, %bb.t ], [ -16, %bb.r ], [ -16, %mbedtls_mpi_free.exit12.i ], [ -4, %bb.h ], [ -4, %.lr.ph51.i.i ], [ -4, %bb.g ], [ -4, %bb.i ]
  ret i32 %.1
}

declare noundef i32 @_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden range(i32 -16, 1) i32 @mbedtls_mpi_inv_mod(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 10 uses
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 13 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 14 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 14 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 9 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 12 uses
  %10 = alloca %struct.mbedtls_mpi, align 8       ; 21 uses
  %11 = alloca %struct.mbedtls_mpi, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !7    ; 2 uses
  %.not44.i.i = icmp eq i16 %i.b, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.c, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.03545.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %.not39.i.i = icmp eq i64 %i.g, 0
  br i1 %.not39.i.i, label %bb.c, label %.lr.ph51.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.b, !llvm.loop !27

.lr.ph51.i.i:                                     ; preds = %bb.b
  %i.i = icmp ugt i64 %.03545.i.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph51.i.i
  %i.l = sext i16 %i.k to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.e:                                             ; preds = %.lr.ph51.i.i
  %or.cond = icmp slt i16 %i.k, 0
  br i1 %or.cond, label %mbedtls_mpi_cmp_int.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.e
  %i.m = load i64, ptr %i.d, align 8, !tbaa !13
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %mbedtls_mpi_cmp_int.exit.thread

bb.f:                                             ; preds = %.preheader.i.i.preheader
  %i.o = zext nneg i16 %i.k to i32
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.d, %bb.f
  %.036.i.i = phi i32 [ %i.o, %bb.f ], [ %i.l, %bb.d ]
  %i.p = icmp slt i32 %.036.i.i, 1
  br i1 %i.p, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.g

bb.g:                                             ; preds = %mbedtls_mpi_cmp_int.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.r, align 2, !tbaa !7
  store ptr null, ptr %4, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 1, ptr %i.s, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 3 uses
  store i16 0, ptr %i.t, align 2, !tbaa !7
  store ptr null, ptr %5, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 3 uses
  store i16 0, ptr %i.v, align 2, !tbaa !7
  store ptr null, ptr %6, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 1, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 3 uses
  store i16 0, ptr %i.x, align 2, !tbaa !7
  store ptr null, ptr %7, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 1, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  store i16 0, ptr %i.z, align 2, !tbaa !7
  store ptr null, ptr %3, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 1, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 2 uses
  store i16 0, ptr %i.ab, align 2, !tbaa !7
  store ptr null, ptr %8, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 1, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 3 uses
  store i16 0, ptr %i.ad, align 2, !tbaa !7
  store ptr null, ptr %9, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 1, ptr %i.ae, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 10 ; 3 uses
  store i16 0, ptr %i.af, align 2, !tbaa !7
  store ptr null, ptr %10, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i16 1, ptr %i.ag, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 10 ; 3 uses
  store i16 0, ptr %i.ah, align 2, !tbaa !7
  store ptr null, ptr %11, align 8, !tbaa !15
  %i.ai = call i32 @mbedtls_mpi_gcd(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.h, label %mbedtls_mpi_cmp_int.exit77.thread

bb.h:                                             ; preds = %bb.g
  %i.aj = load i16, ptr %i.z, align 2, !tbaa !7   ; 2 uses
  %.not44.i.i66 = icmp eq i16 %i.aj, 0
  br i1 %.not44.i.i66, label %mbedtls_mpi_cmp_int.exit77.thread, label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %bb.h
  %i.ak = zext i16 %i.aj to i64
  %i.al = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i67
  %.03545.i.i68 = phi i64 [ %i.ak, %.lr.ph.i.i67 ], [ %i.ap, %bb.j ] ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %.03545.i.i68
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %.not39.i.i69 = icmp eq i64 %i.ao, 0
  br i1 %.not39.i.i69, label %bb.j, label %.lr.ph51.i.i70

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i64 %.03545.i.i68, -1           ; 2 uses
  %.not.i.i76 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i76, label %mbedtls_mpi_cmp_int.exit77.thread, label %bb.i, !llvm.loop !27

.lr.ph51.i.i70:                                   ; preds = %bb.i
  %i.aq = icmp ugt i64 %.03545.i.i68, 1
  %i.ar = load i16, ptr %i.y, align 8, !tbaa !12  ; 4 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph51.i.i70
  %i.as = sext i16 %i.ar to i32
  br label %mbedtls_mpi_cmp_int.exit77

bb.l:                                             ; preds = %.lr.ph51.i.i70
  %or.cond118 = icmp slt i16 %i.ar, 0
  br i1 %or.cond118, label %mbedtls_mpi_cmp_int.exit77.thread, label %.preheader.i.i73.preheader

.preheader.i.i73.preheader:                       ; preds = %bb.l
  %i.at = load i64, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.au = icmp ugt i64 %i.at, 1
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.i.i73.preheader
  %i.av = zext nneg i16 %i.ar to i32
  br label %mbedtls_mpi_cmp_int.exit77

bb.n:                                             ; preds = %.preheader.i.i73.preheader
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %bb.o, label %mbedtls_mpi_cmp_int.exit77.thread115

bb.o:                                             ; preds = %bb.n
  %i.ax = zext nneg i16 %i.ar to i32
  %i.ay = sub nsw i32 0, %i.ax
  br label %mbedtls_mpi_cmp_int.exit77

mbedtls_mpi_cmp_int.exit77:                       ; preds = %bb.k, %bb.m, %bb.o
  %.036.i.i75 = phi i32 [ %i.ay, %bb.o ], [ %i.as, %bb.k ], [ %i.av, %bb.m ]
  %.not40 = icmp eq i32 %.036.i.i75, 0
  br i1 %.not40, label %mbedtls_mpi_cmp_int.exit77.thread115, label %mbedtls_mpi_cmp_int.exit77.thread

mbedtls_mpi_cmp_int.exit77.thread115:             ; preds = %bb.n, %mbedtls_mpi_cmp_int.exit77
  %i.az = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %.not41 = icmp eq i32 %i.az, 0
  br i1 %.not41, label %bb.p, label %mbedtls_mpi_cmp_int.exit77.thread

bb.p:                                             ; preds = %mbedtls_mpi_cmp_int.exit77.thread115
  %i.ba = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %5, ptr noundef nonnull %4) ; 2 uses
  %.not42 = icmp eq i32 %i.ba, 0
  br i1 %.not42, label %bb.q, label %mbedtls_mpi_cmp_int.exit77.thread

bb.q:                                             ; preds = %bb.p
  %i.bb = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %8, ptr noundef nonnull %2) ; 2 uses
  %.not43 = icmp eq i32 %i.bb, 0
  br i1 %.not43, label %bb.r, label %mbedtls_mpi_cmp_int.exit77.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %9, ptr noundef nonnull %2) ; 2 uses
  %.not44 = icmp eq i32 %i.bc, 0
  br i1 %.not44, label %bb.s, label %mbedtls_mpi_cmp_int.exit77.thread

bb.s:                                             ; preds = %bb.r
  %i.bd = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %6, i64 noundef 1) ; 2 uses
  %.not45 = icmp eq i32 %i.bd, 0
  br i1 %.not45, label %bb.t, label %mbedtls_mpi_cmp_int.exit77.thread

bb.t:                                             ; preds = %bb.s
  %i.be = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %7, i64 noundef 0) ; 2 uses
  %.not46 = icmp eq i32 %i.be, 0
  br i1 %.not46, label %bb.u, label %mbedtls_mpi_cmp_int.exit77.thread

bb.u:                                             ; preds = %bb.t
  %i.bf = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %10, i64 noundef 0) ; 2 uses
  %.not47 = icmp eq i32 %i.bf, 0
  br i1 %.not47, label %bb.v, label %mbedtls_mpi_cmp_int.exit77.thread

bb.v:                                             ; preds = %bb.u
  %i.bg = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %11, i64 noundef 1) ; 2 uses
  %.not48 = icmp eq i32 %i.bg, 0
  br i1 %.not48, label %.preheader125, label %mbedtls_mpi_cmp_int.exit77.thread

.preheader125:                                    ; preds = %bb.v, %bb.as
  %12 = load ptr, ptr %5, align 8, !tbaa !15      ; 3 uses
  %i.bh = load i64, ptr %12, align 8, !tbaa !13
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %.preheader121

.lr.ph:                                           ; preds = %.preheader125
  %i.bk = load i16, ptr %i.t, align 2, !tbaa !7   ; 2 uses
  %.not.i = icmp eq i16 %i.bk, 0
  %i.bl = zext i16 %i.bk to i64
  br label %bb.w

.preheader121:                                    ; preds = %mbedtls_mpi_shift_r.exit81, %.preheader125
  %i.bm = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !13
  %i.bo = and i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph133, label %._crit_edge

.lr.ph133:                                        ; preds = %.preheader121
  %i.bq = load i16, ptr %i.ad, align 2, !tbaa !7  ; 2 uses
  %.not.i82 = icmp eq i16 %i.bq, 0
  %i.br = zext i16 %i.bq to i64
  br label %bb.ae

bb.w:                                             ; preds = %.lr.ph, %mbedtls_mpi_shift_r.exit81
  br i1 %.not.i, label %mbedtls_mpi_shift_r.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef nonnull %12, i64 noundef %i.bl, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit

mbedtls_mpi_shift_r.exit:                         ; preds = %bb.w, %bb.x
  %i.bs = load ptr, ptr %6, align 8, !tbaa !15
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !13
  %i.bu = and i64 %i.bt, 1
  %.not62 = icmp eq i64 %i.bu, 0
  br i1 %.not62, label %bb.y, label %bb.z

bb.y:                                             ; preds = %mbedtls_mpi_shift_r.exit
  %i.bv = load ptr, ptr %7, align 8, !tbaa !15
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.bx = and i64 %i.bw, 1
  %.not63 = icmp eq i64 %i.bx, 0
  br i1 %.not63, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %mbedtls_mpi_shift_r.exit, %bb.y
  %i.by = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %6, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %8, i32 noundef 1) ; 2 uses
  %.not64 = icmp eq i32 %i.by, 0
  br i1 %.not64, label %bb.aa, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aa:                                            ; preds = %bb.z
  %i.bz = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %7, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %4, i32 noundef -1) ; 2 uses
  %.not65 = icmp eq i32 %i.bz, 0
  br i1 %.not65, label %bb.ab, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %i.ca = load i16, ptr %i.v, align 2, !tbaa !7   ; 2 uses
  %.not.i78 = icmp eq i16 %i.ca, 0
  br i1 %.not.i78, label %mbedtls_mpi_shift_r.exit79, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %6, align 8, !tbaa !15
  %i.cc = zext i16 %i.ca to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cb, i64 noundef %i.cc, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit79

mbedtls_mpi_shift_r.exit79:                       ; preds = %bb.ab, %bb.ac
  %i.cd = load i16, ptr %i.x, align 2, !tbaa !7   ; 2 uses
  %.not.i80 = icmp eq i16 %i.cd, 0
  br i1 %.not.i80, label %mbedtls_mpi_shift_r.exit81, label %bb.ad

bb.ad:                                            ; preds = %mbedtls_mpi_shift_r.exit79
  %i.ce = load ptr, ptr %7, align 8, !tbaa !15
  %i.cf = zext i16 %i.cd to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.ce, i64 noundef %i.cf, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit81

mbedtls_mpi_shift_r.exit81:                       ; preds = %mbedtls_mpi_shift_r.exit79, %bb.ad
  %i.cg = load i64, ptr %12, align 8, !tbaa !13
  %i.ch = and i64 %i.cg, 1
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.w, label %.preheader121

bb.ae:                                            ; preds = %.lr.ph133, %mbedtls_mpi_shift_r.exit87
  br i1 %.not.i82, label %mbedtls_mpi_shift_r.exit83, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef nonnull %i.bm, i64 noundef %i.br, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit83

mbedtls_mpi_shift_r.exit83:                       ; preds = %bb.ae, %bb.af
  %i.cj = load ptr, ptr %10, align 8, !tbaa !15
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13
  %i.cl = and i64 %i.ck, 1
  %.not58 = icmp eq i64 %i.cl, 0
  br i1 %.not58, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %mbedtls_mpi_shift_r.exit83
  %i.cm = load ptr, ptr %11, align 8, !tbaa !15
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !13
  %i.co = and i64 %i.cn, 1
  %.not59 = icmp eq i64 %i.co, 0
  br i1 %.not59, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %mbedtls_mpi_shift_r.exit83, %bb.ag
  %i.cp = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %8, i32 noundef 1) ; 2 uses
  %.not60 = icmp eq i32 %i.cp, 0
  br i1 %.not60, label %bb.ai, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cq = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %11, ptr noundef nonnull readonly %11, ptr noundef nonnull readonly %4, i32 noundef -1) ; 2 uses
  %.not61 = icmp eq i32 %i.cq, 0
  br i1 %.not61, label %bb.aj, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %i.cr = load i16, ptr %i.af, align 2, !tbaa !7  ; 2 uses
  %.not.i84 = icmp eq i16 %i.cr, 0
  br i1 %.not.i84, label %mbedtls_mpi_shift_r.exit85, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = load ptr, ptr %10, align 8, !tbaa !15
  %i.ct = zext i16 %i.cr to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cs, i64 noundef %i.ct, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit85

mbedtls_mpi_shift_r.exit85:                       ; preds = %bb.aj, %bb.ak
  %i.cu = load i16, ptr %i.ah, align 2, !tbaa !7  ; 2 uses
  %.not.i86 = icmp eq i16 %i.cu, 0
  br i1 %.not.i86, label %mbedtls_mpi_shift_r.exit87, label %bb.al

bb.al:                                            ; preds = %mbedtls_mpi_shift_r.exit85
  %i.cv = load ptr, ptr %11, align 8, !tbaa !15
  %i.cw = zext i16 %i.cu to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cv, i64 noundef %i.cw, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit87

mbedtls_mpi_shift_r.exit87:                       ; preds = %mbedtls_mpi_shift_r.exit85, %bb.al
  %i.cx = load i64, ptr %i.bm, align 8, !tbaa !13
  %i.cy = and i64 %i.cx, 1
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.ae, label %._crit_edge

._crit_edge:                                      ; preds = %mbedtls_mpi_shift_r.exit87, %.preheader121
  %i.da = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %5, ptr noundef nonnull %9)
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %._crit_edge
  %i.dc = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %5, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %9, i32 noundef -1) ; 2 uses
  %.not52 = icmp eq i32 %i.dc, 0
  br i1 %.not52, label %bb.an, label %mbedtls_mpi_cmp_int.exit77.thread

bb.an:                                            ; preds = %bb.am
  %i.dd = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %6, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %10, i32 noundef -1) ; 2 uses
  %.not53 = icmp eq i32 %i.dd, 0
  br i1 %.not53, label %bb.ao, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ao:                                            ; preds = %bb.an
  %i.de = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %7, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %11, i32 noundef -1) ; 2 uses
  %.not54 = icmp eq i32 %i.de, 0
  br i1 %.not54, label %bb.as, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ap:                                            ; preds = %._crit_edge
  %i.df = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %9, ptr noundef nonnull readonly %9, ptr noundef nonnull readonly %5, i32 noundef -1) ; 2 uses
  %.not49 = icmp eq i32 %i.df, 0
  br i1 %.not49, label %bb.aq, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aq:                                            ; preds = %bb.ap
  %i.dg = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %6, i32 noundef -1) ; 2 uses
  %.not50 = icmp eq i32 %i.dg, 0
  br i1 %.not50, label %bb.ar, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ar:                                            ; preds = %bb.aq
  %i.dh = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %11, ptr noundef nonnull readonly %11, ptr noundef nonnull readonly %7, i32 noundef -1) ; 2 uses
  %.not51 = icmp eq i32 %i.dh, 0
  br i1 %.not51, label %bb.as, label %mbedtls_mpi_cmp_int.exit77.thread

bb.as:                                            ; preds = %bb.ao, %bb.ar
  %i.di = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %5, i64 noundef 0)
  %.not55 = icmp eq i32 %i.di, 0
  br i1 %.not55, label %.preheader119, label %.preheader125, !llvm.loop !49

.preheader119:                                    ; preds = %bb.as, %bb.at
  %i.dj = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %10, i64 noundef 0)
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.at, label %.preheader

bb.at:                                            ; preds = %.preheader119
  %i.dl = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %2, i32 noundef 1) ; 2 uses
  %.not57 = icmp eq i32 %i.dl, 0
  br i1 %.not57, label %.preheader119, label %mbedtls_mpi_cmp_int.exit77.thread, !llvm.loop !50

.preheader:                                       ; preds = %.preheader119, %bb.au
  %i.dm = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %10, ptr noundef nonnull %2)
  %i.dn = icmp sgt i32 %i.dm, -1
  br i1 %i.dn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.preheader
  %i.do = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %2, i32 noundef -1) ; 2 uses
  %.not56 = icmp eq i32 %i.do, 0
  br i1 %.not56, label %.preheader, label %mbedtls_mpi_cmp_int.exit77.thread, !llvm.loop !51

bb.av:                                            ; preds = %.preheader
  %i.dp = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef nonnull %10)
  br label %mbedtls_mpi_cmp_int.exit77.thread

mbedtls_mpi_cmp_int.exit77.thread:                ; preds = %bb.j, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.aa, %bb.z, %bb.ai, %bb.ah, %bb.at, %bb.au, %bb.l, %bb.h, %mbedtls_mpi_cmp_int.exit77, %bb.av, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %mbedtls_mpi_cmp_int.exit77.thread115, %bb.g
  %.0 = phi i32 [ %i.ai, %bb.g ], [ %i.by, %bb.z ], [ %i.az, %mbedtls_mpi_cmp_int.exit77.thread115 ], [ %i.ba, %bb.p ], [ %i.bb, %bb.q ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ], [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bg, %bb.v ], [ -14, %bb.l ], [ %i.do, %bb.au ], [ -14, %bb.h ], [ %i.dh, %bb.ar ], [ -14, %mbedtls_mpi_cmp_int.exit77 ], [ %i.dp, %bb.av ], [ %i.dl, %bb.at ], [ %i.cp, %bb.ah ], [ %i.cq, %bb.ai ], [ %i.bz, %bb.aa ], [ %i.dd, %bb.an ], [ %i.dc, %bb.am ], [ %i.df, %bb.ap ], [ %i.de, %bb.ao ], [ %i.dg, %bb.aq ], [ -14, %bb.j ] ; 2 uses
  %i.dq = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not.i88 = icmp eq ptr %i.dq, null
  br i1 %.not.i88, label %mbedtls_mpi_free.exit, label %bb.aw

bb.aw:                                            ; preds = %mbedtls_mpi_cmp_int.exit77.thread
  %i.dr = load i16, ptr %i.r, align 2, !tbaa !7
  %i.ds = zext i16 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.dq, i64 noundef %i.dt)
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_cmp_int.exit77.thread, %bb.aw
  %i.du = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %.not.i89 = icmp eq ptr %i.du, null
  br i1 %.not.i89, label %mbedtls_mpi_free.exit90, label %bb.ax

bb.ax:                                            ; preds = %mbedtls_mpi_free.exit
  %i.dv = load i16, ptr %i.t, align 2, !tbaa !7
  %i.dw = zext i16 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.du, i64 noundef %i.dx)
  br label %mbedtls_mpi_free.exit90

mbedtls_mpi_free.exit90:                          ; preds = %mbedtls_mpi_free.exit, %bb.ax
  %i.dy = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i91 = icmp eq ptr %i.dy, null
  br i1 %.not.i91, label %mbedtls_mpi_free.exit92, label %bb.ay

bb.ay:                                            ; preds = %mbedtls_mpi_free.exit90
  %i.dz = load i16, ptr %i.v, align 2, !tbaa !7
  %i.ea = zext i16 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.dy, i64 noundef %i.eb)
  br label %mbedtls_mpi_free.exit92

mbedtls_mpi_free.exit92:                          ; preds = %mbedtls_mpi_free.exit90, %bb.ay
  %i.ec = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %.not.i93 = icmp eq ptr %i.ec, null
  br i1 %.not.i93, label %mbedtls_mpi_free.exit94, label %bb.az

bb.az:                                            ; preds = %mbedtls_mpi_free.exit92
  %i.ed = load i16, ptr %i.x, align 2, !tbaa !7
  %i.ee = zext i16 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef)
  br label %mbedtls_mpi_free.exit94

mbedtls_mpi_free.exit94:                          ; preds = %mbedtls_mpi_free.exit92, %bb.az
  %i.eg = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %.not.i95 = icmp eq ptr %i.eg, null
  br i1 %.not.i95, label %mbedtls_mpi_free.exit96, label %bb.ba

bb.ba:                                            ; preds = %mbedtls_mpi_free.exit94
  %i.eh = load i16, ptr %i.z, align 2, !tbaa !7
  %i.ei = zext i16 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.eg, i64 noundef %i.ej)
  br label %mbedtls_mpi_free.exit96

mbedtls_mpi_free.exit96:                          ; preds = %mbedtls_mpi_free.exit94, %bb.ba
  %i.ek = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %.not.i97 = icmp eq ptr %i.ek, null
  br i1 %.not.i97, label %mbedtls_mpi_free.exit98, label %bb.bb

bb.bb:                                            ; preds = %mbedtls_mpi_free.exit96
  %i.el = load i16, ptr %i.ab, align 2, !tbaa !7
  %i.em = zext i16 %i.el to i64
  %i.en = shl nuw nsw i64 %i.em, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ek, i64 noundef %i.en)
  br label %mbedtls_mpi_free.exit98

mbedtls_mpi_free.exit98:                          ; preds = %mbedtls_mpi_free.exit96, %bb.bb
  %i.eo = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %.not.i99 = icmp eq ptr %i.eo, null
  br i1 %.not.i99, label %mbedtls_mpi_free.exit100, label %bb.bc

bb.bc:                                            ; preds = %mbedtls_mpi_free.exit98
  %i.ep = load i16, ptr %i.ad, align 2, !tbaa !7
  %i.eq = zext i16 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.eq, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.eo, i64 noundef %i.er)
  br label %mbedtls_mpi_free.exit100

mbedtls_mpi_free.exit100:                         ; preds = %mbedtls_mpi_free.exit98, %bb.bc
  %i.es = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %.not.i101 = icmp eq ptr %i.es, null
  br i1 %.not.i101, label %mbedtls_mpi_free.exit102, label %bb.bd

bb.bd:                                            ; preds = %mbedtls_mpi_free.exit100
  %i.et = load i16, ptr %i.af, align 2, !tbaa !7
  %i.eu = zext i16 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.es, i64 noundef %i.ev)
  br label %mbedtls_mpi_free.exit102

mbedtls_mpi_free.exit102:                         ; preds = %mbedtls_mpi_free.exit100, %bb.bd
  %i.ew = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %.not.i103 = icmp eq ptr %i.ew, null
  br i1 %.not.i103, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.be

bb.be:                                            ; preds = %mbedtls_mpi_free.exit102
  %i.ex = load i16, ptr %i.ah, align 2, !tbaa !7
  %i.ey = zext i16 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ew, i64 noundef %i.ez)
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.be, %mbedtls_mpi_free.exit102, %.preheader.i.i.preheader, %bb.e, %bb.a, %mbedtls_mpi_cmp_int.exit
  %.012 = phi i32 [ -4, %.preheader.i.i.preheader ], [ -4, %mbedtls_mpi_cmp_int.exit ], [ -4, %bb.e ], [ -4, %bb.a ], [ %.0, %bb.be ], [ %.0, %mbedtls_mpi_free.exit102 ], [ -4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef i64 @_Z38mbedtls_mpi_core_exp_mod_working_limbsmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_Z35mbedtls_mpi_core_get_mont_r2_unsafeP11mbedtls_mpiPKS_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i64 @_Z29mbedtls_mpi_core_montmul_initPKm(ptr noundef) local_unnamed_addr #2

declare void @_Z28mbedtls_mpi_core_to_mont_repPmPKmS1_mmS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z31mbedtls_mpi_core_exp_mod_unsafePmPKmS1_mS1_mS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z24mbedtls_mpi_core_exp_modPmPKmS1_mS1_mS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z30mbedtls_mpi_core_from_mont_repPmPKmS1_mmS_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i64 @_Z30mbedtls_mpi_core_check_zero_ctPKmm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(read) }
end_hunk_0
