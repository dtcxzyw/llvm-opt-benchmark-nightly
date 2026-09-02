Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/lms?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@mbedtls_lms_public_free:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 60) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_lms_import_public_key(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i22 = load i32, ptr %1, align 1
  %.not = icmp eq i32 %.0.copyload.i22, 100663296
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 6, ptr %i.b, align 4, !tbaa !10
  %.not20 = icmp eq i64 %2, 56
  br i1 %.not20, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i = load i32, ptr %i.c, align 1
  %.not21 = icmp eq i32 %.0.copyload.i, 67108864
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.d, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.h, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %.2 = phi i32 [ -135, %bb.a ], [ -135, %bb.c ], [ -135, %bb.b ], [ 0, %bb.e ], [ -135, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -138, 1) i32 @mbedtls_lms_export_public_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.c = icmp eq i32 %i.b, 6
  %i.d = select i1 %i.c, i64 56, i64 24
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i8, ptr %i.f, align 4, !tbaa !12
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.b)
  store i32 %i.h, ptr %1, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %i.i, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4, !tbaa !10
  %i.q = icmp eq i32 %i.p, 6
  %i.r = select i1 %i.q, i64 32, i64 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 4 %i.o, i64 %i.r, i1 false)
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.a, align 4, !tbaa !10
  %i.t = icmp eq i32 %i.s, 6
  %i.u = select i1 %i.t, i64 56, i64 24
  store i64 %i.u, ptr %3, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -138, %bb.a ], [ -135, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_lms_verify(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.psa_hash_operation_s, align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 7 uses
  %6 = alloca %struct.mbedtls_lmots_parameters_t, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 4, !tbaa !12
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %.not69 = icmp eq i32 %i.h, 6
  br i1 %.not69, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %.not70 = icmp eq i32 %i.j, 4
  br i1 %.not70, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not71 = icmp eq i64 %4, 1452
  br i1 %.not71, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.0.copyload.i81 = load i32, ptr %i.k, align 1
  %.not72 = icmp eq i32 %.0.copyload.i81, 67108864
  br i1 %.not72, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1128
  %.0.copyload.i80 = load i32, ptr %i.l, align 1
  %.not73 = icmp eq i32 %.0.copyload.i80, 100663296
  br i1 %.not73, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %.0.copyload.i = load i32, ptr %3, align 1      ; 2 uses
  %i.m = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 3 uses
  %.not74 = icmp ult i32 %i.m, 1024
  br i1 %.not74, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.0.copyload.i, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 4, ptr %i.o, align 4, !tbaa !18
  %i.p = call i32 @mbedtls_lmots_calculate_public_key_candidate(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.k, i64 noundef 1124, ptr noundef nonnull %i.c, i64 noundef 32, ptr noundef null) #8
  %.not75 = icmp eq i32 %i.p, 0
  br i1 %.not75, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %i.g, align 4, !tbaa !10
  %i.r = icmp eq i32 %i.q, 6
  %i.s = select i1 %i.r, i32 1024, i32 1
  %i.t = add nuw nsw i32 %i.s, %i.m
  %i.u = call fastcc i32 @create_merkle_leaf_value(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %i.t, ptr noundef %i.d)
  %.not76 = icmp eq i32 %i.u, 0
  br i1 %.not76, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.g, align 4, !tbaa !10
  %i.w = icmp eq i32 %i.v, 6
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.x = or disjoint i32 %i.m, 1024
  br label %.lr.ph

bb.k:                                             ; preds = %create_merkle_internal_value.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.y = load i32, ptr %i.g, align 4, !tbaa !10
  %i.z = icmp eq i32 %i.y, 6                      ; 2 uses
  %i.aa = icmp samesign ult i64 %indvars.iv, 9
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.06484 = phi i32 [ %i.x, %.lr.ph.preheader ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ac = lshr i32 %.06484, 1                     ; 2 uses
  %7 = trunc i32 %.06484 to i1                    ; 2 uses
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !11
  %i.ae = icmp eq i32 %i.ad, 4
  %i.af = select i1 %i.ae, i64 1132, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.af
  %i.ah = shl nuw nsw i64 %indvars.iv, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah ; 2 uses
  %.95 = select i1 %7, ptr %i.ai, ptr %i.d
  %.96 = select i1 %7, ptr %i.d, ptr %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %5, i8 0, i64 232, i1 false)
  %i.aj = call i32 @psa_hash_setup(ptr noundef nonnull %5, i32 noundef 33554441) #8 ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.l, label %create_merkle_internal_value.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ak = call i32 @psa_hash_update(ptr noundef nonnull %5, ptr noundef nonnull %0, i64 noundef 16) #8 ; 2 uses
  %.not20.i = icmp eq i32 %i.ak, 0
  br i1 %.not20.i, label %bb.m, label %create_merkle_internal_value.exit

bb.m:                                             ; preds = %bb.l
  %i.al = call i32 @llvm.bswap.i32(i32 range(i32 0, -2147483648) %i.ac)
  store i32 %i.al, ptr %i.b, align 4
  %i.am = call i32 @psa_hash_update(ptr noundef nonnull %5, ptr noundef nonnull %i.b, i64 noundef 4) #8 ; 2 uses
  %.not21.i = icmp eq i32 %i.am, 0
  br i1 %.not21.i, label %bb.n, label %create_merkle_internal_value.exit

bb.n:                                             ; preds = %bb.m
  %i.an = call i32 @psa_hash_update(ptr noundef nonnull %5, ptr noundef nonnull @D_INTR_CONSTANT_BYTES, i64 noundef 2) #8 ; 2 uses
  %.not22.i = icmp eq i32 %i.an, 0
  br i1 %.not22.i, label %bb.o, label %create_merkle_internal_value.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !13
  %i.ap = icmp eq i32 %i.ao, 6
  %i.aq = select i1 %i.ap, i64 32, i64 0
  %i.ar = call i32 @psa_hash_update(ptr noundef nonnull %5, ptr noundef nonnull %.95, i64 noundef %i.aq) #8 ; 2 uses
  %.not23.i = icmp eq i32 %i.ar, 0
  br i1 %.not23.i, label %bb.p, label %create_merkle_internal_value.exit

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr %i.g, align 4, !tbaa !13
  %i.at = icmp eq i32 %i.as, 6
  %i.au = select i1 %i.at, i64 32, i64 0
  %i.av = call i32 @psa_hash_update(ptr noundef nonnull %5, ptr noundef nonnull %.96, i64 noundef %i.au) #8 ; 2 uses
  %.not24.i = icmp eq i32 %i.av, 0
  br i1 %.not24.i, label %bb.q, label %create_merkle_internal_value.exit

bb.q:                                             ; preds = %bb.p
  %i.aw = load i32, ptr %i.g, align 4, !tbaa !13
  %i.ax = icmp eq i32 %i.aw, 6
  %i.ay = select i1 %i.ax, i64 32, i64 0
  %i.az = call i32 @psa_hash_finish(ptr noundef nonnull %5, ptr noundef nonnull %i.d, i64 noundef %i.ay, ptr noundef nonnull %i.a) #8
  br label %create_merkle_internal_value.exit

create_merkle_internal_value.exit:                ; preds = %.lr.ph, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i32 [ %i.aj, %.lr.ph ], [ %i.ak, %bb.l ], [ %i.am, %bb.m ], [ %i.an, %bb.n ], [ %i.ar, %bb.o ], [ %i.av, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = call i32 @psa_hash_abort(ptr noundef nonnull %5) #8 ; 0 uses
  %i.bb = call i32 @psa_status_to_mbedtls(i32 noundef %.0.i, ptr noundef nonnull @psa_to_lms_errors, i64 noundef 3, ptr noundef nonnull @psa_generic_status_to_mbedtls) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.not79 = icmp eq i32 %i.bb, 0
  br i1 %.not79, label %bb.k, label %.loopexit

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.bc = select i1 %i.z, i64 32, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.lcssa = phi i64 [ 0, %bb.j ], [ %i.bc, %._crit_edge.loopexit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %bcmp = call i32 @bcmp(ptr nonnull %i.d, ptr nonnull %i.bd, i64 %.lcssa)
  %.not77 = icmp eq i32 %bcmp, 0
  %. = select i1 %.not77, i32 0, i32 -21
  br label %.loopexit

.loopexit:                                        ; preds = %create_merkle_internal_value.exit, %._crit_edge, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.066 = phi i32 [ -135, %bb.a ], [ -135, %bb.b ], [ -135, %bb.c ], [ %., %._crit_edge ], [ -21, %bb.d ], [ -21, %bb.i ], [ -21, %bb.e ], [ -21, %bb.f ], [ -21, %bb.g ], [ -21, %bb.h ], [ -21, %create_merkle_internal_value.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %.066
}

declare i32 @mbedtls_lmots_calculate_public_key_candidate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @create_merkle_leaf_value(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.psa_hash_operation_s, align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = icmp eq i32 %i.d, 6
  %i.f = select i1 %i.e, i64 32, i64 0
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %3, i8 0, i64 %i.f, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %4, i8 0, i64 232, i1 false)
  %i.g = call i32 @psa_hash_setup(ptr noundef nonnull %4, i32 noundef 33554441) #8 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @psa_hash_update(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef 16) #8 ; 2 uses
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @llvm.bswap.i32(i32 %2)
  store i32 %i.i, ptr %i.b, align 4
  %i.j = call i32 @psa_hash_update(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef 4) #8 ; 2 uses
  %.not19 = icmp eq i32 %i.j, 0
  br i1 %.not19, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @psa_hash_update(ptr noundef nonnull %4, ptr noundef nonnull @D_LEAF_CONSTANT_BYTES, i64 noundef 2) #8 ; 2 uses
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20
  %i.n = icmp eq i32 %i.m, 4
  %i.o = select i1 %i.n, i64 32, i64 0
  %i.p = call i32 @psa_hash_update(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef %i.o) #8 ; 2 uses
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.c, align 4, !tbaa !13
  %i.r = icmp eq i32 %i.q, 6
  %i.s = select i1 %i.r, i64 32, i64 0
  %i.t = call i32 @psa_hash_finish(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef %i.s, ptr noundef nonnull %i.a) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.a ], [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.p, %bb.e ], [ %i.t, %bb.f ]
  %i.u = call i32 @psa_hash_abort(ptr noundef nonnull %4) #8 ; 0 uses
  %i.v = call i32 @psa_status_to_mbedtls(i32 noundef %.0, ptr noundef nonnull @psa_to_lms_errors, i64 noundef 3, ptr noundef nonnull @psa_generic_status_to_mbedtls) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %i.v
}

declare i32 @psa_hash_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @psa_hash_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @psa_hash_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @psa_hash_abort(ptr noundef) local_unnamed_addr #3

declare i32 @psa_status_to_mbedtls(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @psa_generic_status_to_mbedtls(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }

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
!8 = !{!"", !4, i64 0, !5, i64 16, !5, i64 20}
!9 = !{!"", !8, i64 0, !4, i64 24, !4, i64 56}
!10 = !{!9, !5, i64 20}
!11 = !{!9, !5, i64 16}
!12 = !{!9, !4, i64 56}
!13 = !{!8, !5, i64 20}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !19}
!17 = !{!"", !4, i64 0, !4, i64 16, !5, i64 20}
!18 = !{!17, !5, i64 20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!8, !5, i64 16}
end_hunk_0
