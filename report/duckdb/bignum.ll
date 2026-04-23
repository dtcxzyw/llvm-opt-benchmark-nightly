inline.NumInlined: 162
inline.NumDeleted: 17
begin_hunk_0_@mbedtls_mpi_safe_cond_assign:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !7    ; 4 uses
  %i.c = zext i16 %i.b to i64
  %i.d = icmp ugt i16 %i.b, 10000
  br i1 %i.d, label %mbedtls_mpi_grow.exit, label %bb.b

end_hunk_0
begin_hunk_1_@mbedtls_mpi_safe_cond_assign:bb.a
  %i.f = load i16, ptr %i.e, align 2, !tbaa !7    ; 2 uses
  %i.g = zext i16 %i.f to i64
  %i.h = icmp ugt i16 %i.b, %i.f
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 8) #14 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %mbedtls_mpi_grow.exit, label %bb.d

end_hunk_1
begin_hunk_2_@mbedtls_mpi_safe_cond_assign:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  store i16 %i.b, ptr %i.e, align 2, !tbaa !7
  store ptr %i.i, ptr %0, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.m = zext i8 %2 to i64
  %i.n = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !13
  %i.o = xor i64 %i.n, %i.m                       ; 2 uses
end_hunk_2
begin_hunk_3_@mbedtls_mpi_safe_cond_assign:bb.a
  %i.ah = trunc i64 %i.ag to i16
  %i.ai = add i16 %i.ah, -1
  store i16 %i.ai, ptr %i.v, align 8, !tbaa !12
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  %i.aj = load ptr, ptr %1, align 8, !tbaa !15
  %4 = load i16, ptr %i.a, align 2, !tbaa !7
  %5 = zext i16 %4 to i64
  tail call void @_Z28mbedtls_mpi_core_cond_assignPmPKmmm(ptr noundef %3, ptr noundef %i.aj, i64 noundef %5, i64 noundef %.neg.i)
  %i.ak = load i16, ptr %i.a, align 2, !tbaa !7   ; 3 uses
  %i.al = load i16, ptr %i.e, align 2, !tbaa !7   ; 2 uses
  %i.am = icmp ult i16 %i.ak, %i.al
end_hunk_3
begin_hunk_4_@mbedtls_mpi_safe_cond_swap:bb.a

bb.h:                                             ; preds = %.thread, %bb.g
  %i.v = phi i16 [ %i.j, %.thread ], [ %i.n, %bb.g ] ; 2 uses
  %.pre-phi47 = phi i64 [ %i.k, %.thread ], [ %i.o, %bb.g ]
  %i.w = load i16, ptr %i.i, align 2, !tbaa !7    ; 2 uses
  %i.x = zext i16 %i.w to i64
  %i.y = icmp ugt i16 %i.v, %i.w
  br i1 %i.y, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = tail call noalias ptr @calloc(i64 noundef %.pre-phi47, i64 noundef 8) #14 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %mbedtls_mpi_grow.exit, label %bb.j

end_hunk_4
begin_hunk_5_@mbedtls_mpi_safe_cond_swap:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  store i16 %i.v, ptr %i.i, align 2, !tbaa !7
  store ptr %i.z, ptr %1, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
end_hunk_5
begin_hunk_6_@mbedtls_mpi_safe_cond_swap:bb.a
  %i.bd = add i16 %i.bc, -1
  store i16 %i.bd, ptr %i.af, align 8, !tbaa !12
  %i.be = load ptr, ptr %0, align 8, !tbaa !15
  %3 = load ptr, ptr %1, align 8, !tbaa !15
  %4 = load i16, ptr %i.m, align 2, !tbaa !7
  %5 = zext i16 %4 to i64
  tail call void @_Z26mbedtls_mpi_core_cond_swapPmS_mm(ptr noundef %i.be, ptr noundef %3, i64 noundef %5, i64 noundef %.neg.i)
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.i, %bb.g, %bb.d, %bb.b, %bb.m, %bb.a
end_hunk_6
